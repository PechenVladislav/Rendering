Shader "Custom/SimpleLighting"
{
	
	Properties
	{
		_Tint ("Tint", Color) = (1, 1, 1, 1)
		_MainTex ("Albedo", 2D) = "white" {}
		[Gamma] _Metallic ("Metallic", Range(0, 1)) = 0
		_Smoothness ("Smotheness", Range(0, 1)) = 0.5
	}

    SubShader
	{
        Pass
		{
			Tags {
				"LightMode" = "ForwardBase"
			}

			CGPROGRAM

            #pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0

			//#include "UnityCG.cginc"
			//#include "UnityStandardBRDF.cginc"
			//#include "UnityStandardUtils.cginc"
			#include "UnityPBSLighting.cginc"

			float4 _Tint;
			sampler2D _MainTex;
			float4 _MainTex_ST;
			float _Metallic;
			float _Smoothness;

			struct Interpolators
			{
				float4 position : SV_POSITION;
				float2 uv : TEXCOORD0;
				float3 normal : TEXCOORD1;
				float3 worldPos : TEXCOORD2;
			};

			struct VertexData
			{
				float4 position : POSITION;
				float2 uv : TEXCOORD0;
				float3 normal : NORMAL;
			};

			Interpolators vert(VertexData v)
			{
				Interpolators i;
				i.position = mul(UNITY_MATRIX_MVP, v.position);
				i.worldPos = mul(unity_ObjectToWorld, v.position);
				i.uv = v.uv * _MainTex_ST.xy + _MainTex_ST.zw; //TRANSFORM_TEX(v.uv, _MainTex);
				i.normal = UnityObjectToWorldNormal(v.normal); //normalize(mul(transpose((float3x3)unity_WorldToObject), v.normal));
				return i;
			}

			float4 frag(Interpolators i) : SV_TARGET
			{
				i.normal = normalize(i.normal);
				float3 lightDir = _WorldSpaceLightPos0.xyz;
				float3 viewDir = normalize(_WorldSpaceCameraPos - i.worldPos);
				float3 halfVec = normalize(lightDir + viewDir);
				float3 lightColor = _LightColor0.rgb;

				float3 albedo = tex2D(_MainTex, i.uv) * _Tint;
				float3 specTint;// = albedo * _Metallic;
				float oneMinusReflectivity;
				albedo = DiffuseAndSpecularFromMetallic(albedo, _Metallic, specTint, oneMinusReflectivity);
				float3 diffuse = albedo * lightColor * DotClamped(lightDir, i.normal);
				float3 spec = specTint * lightColor * pow(DotClamped(halfVec, i.normal), _Smoothness * 100);

				UnityLight light;
				light.color = lightColor;
				light.dir = lightDir;
				light.ndotl = DotClamped(i.normal, lightDir);

				UnityIndirect indirectLight;
				indirectLight.diffuse = 0;
				indirectLight.specular = 0;

				return UNITY_BRDF_PBS(albedo, specTint, oneMinusReflectivity, _Smoothness,
					i.normal, viewDir,
					light, indirectLight);
			}

			ENDCG
		}
	}
}
