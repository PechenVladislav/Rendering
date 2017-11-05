Shader "Unlit/Fluid"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
        _RampTex ("Ramp Texure", 2D) = "white" {}
	}
	SubShader
	{
		Tags { "RenderType"="Opaque" "PreviewType" = "Plane"}
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
            sampler1D _RampTex;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				fixed col1 = tex2D(_MainTex, i.uv + _Time.xx / 7).r;
				fixed col2 = tex2D(_MainTex, i.uv - _Time.xx / 7).g;
                fixed col3 = tex2D(_MainTex, i.uv + float2(_Time.x, -_Time.x) / 7).r;
				fixed col4 = tex2D(_MainTex, i.uv + float2(-_Time.x, _Time.x) / 7).g;
                float3 ramp = tex1D(_RampTex, clamp((col1 + col2 + col3 + col4) / 2 - 0.5, 0.02, 0.98));

				return float4(ramp, 1);
			}
			ENDCG
		}
	}
}
