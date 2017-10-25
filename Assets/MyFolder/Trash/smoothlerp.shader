Shader "Unlit/smoothlerp"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
        _ColorA ("Color A", Color) = (1, 1, 1, 1)
        _ColorB ("Color B", Color) = (1, 1, 1, 1)
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
            float4 _ColorA;
            float4 _ColorB;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				//return 1 - abs(i.uv.x * 2 - 1);
				// sample the texture
				fixed4 col = tex2D(_MainTex, i.uv);

				float st = step(0.5, i.uv.x);
				//return 1 - saturate(round(abs(frac(i.uv.y * 100) * 2)));
				//return smoothstep(-0.5, 1, i.uv.x);
				return smoothstep(_ColorA, _ColorB, i.uv.x);// + lerp(float4(0,0,0,1), float4(1, 1, 1, 1), i.uv.x * 2 - 1) * st;
			}
			ENDCG
		}
	}
}
