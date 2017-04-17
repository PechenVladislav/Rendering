Shader "Custom/WireFrame"
{
	Properties
	{
		_LineColor("Line Color", Color) = (1,1,1,1)
		_GridColor("Grid Color", Color) = (1,1,1,0)
		_LineWidth("Line Width", float) = 0.01
		_DottedLine("Dotted Line", Range(0, 50)) = 25
	}

	SubShader
	{
		Pass
		{
			Cull Off
			ZWrite Off
			Tags { "RenderType" = "TransparentCutout" "Queue" = "AlphaTest" "IgnoreProjector" = "True"}
			Blend SrcAlpha OneMinusSrcAlpha

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			uniform float4 _LineColor;
			uniform float4 _GridColor;
			uniform float _LineWidth;
			uniform float _DottedLine;

			// vertex input: position, uv1, uv2
			struct appdata
			{
				float4 vertex : POSITION;
				float4 uv : TEXCOORD0;
				float4 color : COLOR;
			};

			struct v2f
			{
				float4 pos : POSITION;
				float4 uv : TEXCOORD0;
				float4 color : COLOR;

			};

			v2f vert(appdata v)
			{
				v2f o;
				o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
				o.uv = v.uv;
				o.color = v.color;
				return o;
			}

			fixed4 frag(v2f i) : COLOR
			{
				fixed4 dashedLine;

				float lx = step(_LineWidth, i.uv.x);
				float ly = step(_LineWidth, i.uv.y);
				float hx = step(i.uv.x, 1 - _LineWidth);
				float hy = step(i.uv.y, 1 - _LineWidth);

				//float dashX = ceil(sin(i.uv.y * _DottedLine * 3.14159));
				//float dashY = ceil(sin(i.uv.x * _DottedLine * 3.14159));

				float dashX = step(fmod(i.uv.y * (_DottedLine * 2 - 1), 2.0), 1.0);
				float dashY = step(fmod(i.uv.x * (_DottedLine * 2 - 1), 2.0), 1.0);

				dashedLine = lerp(_GridColor, _LineColor, (1 - lx * hx) * dashX + (1 - ly * hy) * dashY);

				return dashedLine;
			}
			ENDCG
		}
	}
	Fallback "Vertex Colored", 1
}