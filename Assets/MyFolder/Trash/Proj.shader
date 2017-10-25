// Upgrade NOTE: replaced '_Projector' with 'unity_Projector'

Shader "Unlit/Proj"
{
	Properties
	{
		_ShadowTex ("Projector Image", 2D) = "white" {}
	}
	SubShader
	{
		//Tags { "RenderType"="Opaque" }
		//LOD 100

		Pass
		{
			Blend Zero OneMinusSrcColor
			ZWrite Off
			Offset -1,-1

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			sampler2D _ShadowTex;
			float4 _ShadowTex_ST;
			float4x4 unity_Projector;

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
				float4 posProj : TEXCOORD1;
			};
			
			v2f vert (appdata v)
			{
				v2f o;
				o.posProj = mul(unity_Projector, v.vertex);
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _ShadowTex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				if(i.posProj.w > 0.0)
				{
					return tex2D(_ShadowTex, i.posProj.xy / i.posProj.w);
				}
				else
				{
					return float4(0, 0, 0, 0);
				}
			}
			ENDCG
		}
	}
}
