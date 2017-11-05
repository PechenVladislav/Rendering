Shader "Hidden/FourColorShader"
{
    Properties
	{
        _MainTex ("Texture", 2D) = "white" {
            }
	}
	SubShader
	{
        Tags {
            "RenderType"="Opaque" }
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
            }
;
            struct v2f
			{
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
            }
;
            sampler2D _MainTex;
            float4 _MainTex_ST;
            float3 _TexelSize;
			float4 _ColorA;
			float4 _ColorB;
			float _Steps;

            v2f vert (appdata v)
			{
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                return o;
            }

			
			fixed4 frag (v2f i) : SV_Target
			{
                if(_TexelSize.z > 0.9)
				{
                    i.uv = round(i.uv / _TexelSize) * _TexelSize;
                }

				fixed4 col = tex2D(_MainTex, i.uv);
                col = col.r * 0.3 + col.g * 0.59 + col.b * 0.11;

				float steps = 1.0 / _Steps;
				float t = floor(col.r / steps) / (_Steps - 1);
				
				fixed4 fcol = lerp(_ColorA, _ColorB, t);

                return fcol;
            }

			ENDCG
		}
	}
}
