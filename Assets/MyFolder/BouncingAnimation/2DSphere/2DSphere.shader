﻿Shader "Unlit/2DSphere"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		[NoScaleOffset]_DisplTex ("Displacement Tex", 2D) = "white" {}
		_Speed("Movement Speed(XY)", Vector) = (1, 1, 0, 0)
		}
	SubShader
	{
		Tags { "RenderType"="Transparent" "Queue" = "Transparent"}
		Blend SrcAlpha OneMinusSrcAlpha
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
			sampler2D _DisplTex;
			float4 _MainTex_ST;
			float2 _Speed;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				fixed4 displ = tex2D(_DisplTex, i.uv);
				fixed4 col = tex2D(_MainTex, i.uv + float2(_Time.x, _Time.x) * _Speed + (displ - i.uv));
				return col * displ.a;
			}
			ENDCG
		}
	}
}
