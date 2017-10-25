Shader "Unlit/HologramGlitch"
{
	Properties
	{
        _TintColor("Tint Color", Color) = (1, 1, 1, 1)
        _RimColor("Rim Color", Color) = (1, 1, 1, 1)
		_MainTex ("Texture", 2D) = "white" {}
        _GlitchTime("Glitch Over Time", Range(0.01, 3.0)) = 1
        _WorldScale("Line Amount", Range(1, 200)) = 20
	}
	SubShader
	{
		Tags { "RenderType"="Transparent" "Queue" = "Transparent" "IgnoreProjectors" = "True" "PreviewType" = "Sphere"}
        Blend SrcAlpha OneMinusSrcAlpha
        ColorMask RGB
        Cull Back
		LOD 100

        Pass
        {
            ZWrite On
            ColorMask 0
        }

		Pass
		{
            ZWrite Off

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
                fixed4 color : COLOR;
                float3 normal : NORMAL;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
                fixed4 color : COLOR;
                float3 wNormal : TEXCOORD1;
                float3 wPos : TEXCOORD2;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
            float4 _TintColor;
            float4 _RimColor;
            float _GlitchTime;
            float _WorldScale;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);

                float gTime = step(0.99, sin(_Time.w));//move to script
                float gPos = v.vertex.y + _SinTime.y;
                float gPosC = step(0, gPos) * step(gPos, 0.2);
                o.vertex.xz += gPosC * gTime * 0.1 * _SinTime.z;

                o.color = v.color;
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);

                o.wPos = mul(unity_ObjectToWorld, v.vertex).xyz;
                o.wNormal = normalize(mul(float4(v.normal, 0), unity_WorldToObject).xyz);

				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				fixed4 tex = tex2D(_MainTex, i.uv) * _TintColor;

                float3 viewDir = normalize(_WorldSpaceCameraPos.xyz - i.wPos.xyz);
                float rim = 1 - saturate(dot(viewDir, i.wNormal));

                float smallLines = frac(i.wPos.y * _WorldScale + _Time.y);
                float scallines = step(smallLines, 0.5);

                float bigLines = frac(i.wPos.y - _Time.x * 4);

                float4 col = tex + (bigLines * 0.4 * _TintColor) + (rim * _RimColor);
                col.a = 0.1 + (rim + scallines + bigLines);

				return col;
			}
			ENDCG
		}
	}
}
