Shader "Unlit/SimpleDissolve"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		[NoScaleOffset]_DissolveTex("Dissolve Texture", 2D) = "white" {}
		_AlphaCuroff("Alpha Cutoff", Range(-0.5, 1.5)) = 0
		_EdgeWidth("Edge Width", Range(0, 0.5)) = 0.1
		[HDR]_EdgeTint("Edge Color", Color) = (1, 1, 1, 1)
		_EdgeRamp("Edge Ramp Tex", 2D) = "white" {}
	}
	SubShader
	{
		Tags { "RenderType"="TransparentCutout" "Queue" = "AlphaTest"}
		Blend One Zero
		LOD 100

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			sampler2D _DissolveTex;
			float _AlphaCuroff;
			float _EdgeWidth;
			float3 _EdgeTint;
			sampler1D _EdgeRamp;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);

				//o.vertex = mul(UNITY_MATRIX_P, mul(UNITY_MATRIX_MV, float4(0, 0, 0, 1)) + float4(v.vertex.x, v.vertex.y, 0, 0));
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				float dissolve = saturate(tex2D(_DissolveTex, i.uv).r);
				fixed4 col = tex2D(_MainTex, i.uv);
				clip(dissolve - _AlphaCuroff);
				
				float edge = step(dissolve - _EdgeWidth, _AlphaCuroff);

				float3 edgeTex = tex1D(_EdgeRamp, 1 - (dissolve - _AlphaCuroff) / _EdgeWidth) * _EdgeTint;
				col.rgb =  col.rgb * (1 - edge) + edgeTex * edge;

				return col;
			}
			ENDCG
		}
	}
}
