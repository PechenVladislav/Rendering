Shader "Unlit/Matrices"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		rotX("rotX", float) = 0
		rotY("rotY", float) = 0
		rotZ("rotZ", float) = 0
	}
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100
		//Cull Off

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
				float3 normal : NORMAL;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float3 normal : NORMAL;
				float4 vertex : SV_POSITION;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			float rotX;
			float rotY;
			float rotZ;
			
			v2f vert (appdata v)
			{
				v2f o;
				//o.vertex = UnityObjectToClipPos(v.vertex);

				matrix mat  = (cos(0)*cos(0)                      ,-cos(0)*sin(0)                      ,sin(0)        ,0,
								cos(0)*sin(0) + sin(0)*sin(0)*cos(0),cos(0)*cos(0) - sin(0)*sin(0)*sin(0),-sin(0)*cos(0),0,
								sin(0)*sin(0) - cos(0)*sin(0)*cos(0),sin(0)*cos(0) + cos(0)*sin(0)*sin(0),cos(0)*cos(0) ,0,
								0                                   ,0                                   ,0             ,1);

				//o.vertex = mul(mul(UNITY_MATRIX_VP, 
				//mul(matrix(cos(rotY)*cos(rotZ)								  ,-cos(rotY)*sin(rotZ)							      ,sin(rotY)           ,0,
				//	   cos(rotX)*sin(rotZ) + sin(rotX)*sin(rotY)*cos(rotZ),cos(rotX)*cos(rotZ) - sin(rotX)*sin(rotY)*sin(rotZ),-sin(rotX)*cos(rotY),0,
				//	   sin(rotX)*sin(rotZ) - cos(rotX)*sin(rotY)*cos(rotZ),sin(rotX)*cos(rotZ) + cos(rotX)*sin(rotY)*sin(rotZ),cos(rotX)*cos(rotY) ,4,
				//	   0												  ,0												  ,0                   ,1), 
				//	   float4x4(3, 0, 0, 0,
				//				0, 2, 0, 0,
				//				0, 0, 1, 0,
				//				0, 0, 0, 1)
				//				)), v.vertex);
				o.vertex = mul(mul(mul(matrix(rotX/ 1.6, 0, 0, 2,
											  0, -rotX, 0, 2,
											  0, 0, 0, 2,
											  0, 0, 1, 0), UNITY_MATRIX_V), UNITY_MATRIX_M), v.vertex);
				//o.vertex = mul(, o.vertex);
				o.normal = UnityObjectToWorldNormal(v.normal);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{

				return dot(i.normal, _WorldSpaceLightPos0) * 0.5 + 0.5;
			}
			ENDCG
		}
	}
}
