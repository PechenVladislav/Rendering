Shader "Unlit/2DFlame"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
        _DisplacementTex("Displacement Tex", 2D) = "black" {}
        _RampTex("Ramp Texture", 2D) = "white" {}
        _NonUniformDistrib("Non Uniform Distrib Tex", 2D) = "white" {}
        _DisplStrength("Displacement Strength", Float) = 0
        _DistribStrength("Distribution Strength", Float) = 1
        _DistribTilingScale("Distribution Tiling Scale", Float) = 1
        _YSpeed("YSpeed", Float) = 0
	}
	SubShader
	{
		Tags { "RenderType"="Transparent" "Queue" = "Transparent"}
		LOD 100

		Pass
		{
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off

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
                float4 uv2 : TEXCOORD1;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			sampler2D _DisplacementTex;
            float4 _DisplacementTex_ST;
            sampler1D _RampTex;
            sampler2D _NonUniformDistrib;
            float4 _NonUniformDistrib_ST;
            float _DisplStrength;
            float _YSpeed;
            float _DistribStrength;
            float _DistribTilingScale;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                o.uv2.xy = v.uv;
                o.uv2.zw = TRANSFORM_TEX(v.uv, _NonUniformDistrib);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
                float distrib = tex2D(_NonUniformDistrib, i.uv2.zw).r;                

                float displ = tex2D(_DisplacementTex, float2(i.uv2.x * distrib * _DistribTilingScale + (1 -  distrib * _DistribTilingScale) / 2, i.uv2.y *  distrib * _DistribTilingScale)
                * _DisplacementTex_ST.xy + _DisplacementTex_ST.zw + float2(0, _YSpeed) * _Time.y).r * pow(distrib, _DistribStrength);


				fixed4 col = tex2D(_MainTex, i.uv + float2(0, displ) * _DisplStrength);
                float3 rampCol = tex1D(_RampTex, col.a).rgb;

                float alpha = step(0.07, col.a);

				return float4(col.rgb * rampCol, alpha);
			}
			ENDCG
		}
	}
}
