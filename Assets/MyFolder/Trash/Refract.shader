Shader "Unlit/Refract"
{
	Properties
	{
		_CubeTex ("Texture", Cube) = "" {}
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
				float3 normal : NORMAL;
			};

			struct v2f
			{
				float3 normalDir : TEXCOORD0;
				float3 viewDir :TECOORD1;
				float4 vertex : SV_POSITION;
			};

			uniform samplerCUBE _CubeTex;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.normalDir = normalize(mul(v.vertex, unity_WorldToObject));
				o.viewDir = normalize(mul(unity_ObjectToWorld, v.vertex) - _WorldSpaceCameraPos);
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				float refractiveIndex = 1.5;
				float3 refractedDir = refract(normalize(i.viewDir), normalize(i.normalDir), 1/refractiveIndex);
				fixed4 col = texCUBE(_CubeTex, refractedDir);
				return col;
			}
			ENDCG
		}
	}
}
