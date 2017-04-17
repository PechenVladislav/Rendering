Shader "Unlit/Depth"
{
	SubShader
	{
		Tags { "Queue"="Transparent" }
		LOD 100

		ZTest On
		ZWrite Off
		Blend One One

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"
			
			float4 _OverDrawColor;

			struct appdata
			{
				float4 vertex : POSITION;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				float depth: TEXCOORD0;
			};

			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.depth = -mul(UNITY_MATRIX_MV, v.vertex).z * _ProjectionParams.w;
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				float invert = 1 - i.depth;
				fixed4 col = float4(invert, invert, invert, 1.0) * _OverDrawColor;

				return col;
			}
			ENDCG
		}
	}
}
