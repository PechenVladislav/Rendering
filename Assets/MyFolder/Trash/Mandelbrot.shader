Shader "Unlit/Mandelbrot"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_Pan ("Pan", Vector) = (0, 0, 0, 0)
		_Zoom ("Zoom", Float) = 1
		_Aspect ("Aspect", Float) = 1
		_Iterations ("Iterations", Int) = 64
	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				UNITY_FOG_COORDS(1)
				float4 vertex : SV_POSITION;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;

			float2 _Pan;
			float _Zoom;
			float _Aspect;
			int _Iterations;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
			float2 c = (i.uv - 0.5) * _Zoom * float2(1, _Aspect) - _Pan;

        float2 v = 0;

        float m = 0;


        const float r = 5;


        for (int n = 0; n < _Iterations; n++)

        {

            v = float2(v.x * v.x - v.y * v.y, v.x * v.y * 2) + c;


            if (dot(v, v) < (r*r - 1))

                m++;


            v = clamp(v, -r, r);

        }


        if (m == _Iterations)

            return 0;

        else

            return float4(sin(m/4), sin(m/5), sin(m/7), 1) / 4 + 0.75;
			}
			ENDCG
		}
	}
}
