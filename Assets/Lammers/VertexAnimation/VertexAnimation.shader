Shader "Unlit/VertexAnimation"
{
	Properties
	{
		_ColorOffset ("Color Offset", Vector) = (0, 0, 0, 0)
		_ColorDivider ("Color Factor", Vector) = (0, 0, 0, 0)
		_CenterOffset ("Center Offset", Vector) = (0, 0, 0, 0)
		_tintAmount ("Tint Amount", Range(0,1)) = 0.5 
		_Speed ("Wave Speed", Range(0.1, 10)) = 5
		_Fading ("Fading", Range(0.2, 10)) = 2 
		_Frequency ("Wave Frequency", Range(0, 10)) = 2 
		_Amplitude ("Wave Amplitude", Range(0, 20)) = 1 
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

			float3 _ColorOffset;
			float3 _ColorDivider;
			float2 _CenterOffset;
			float _tintAmount; 
			float _Speed; 
			float _Fading;
			float _Frequency; 
			float _Amplitude; 

			struct appdata
			{
				float4 vertex : POSITION;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				float4 vertColor :TEXCOORD1;
			};
			
			v2f vert (appdata v)
			{
				v2f o;

				float time = _Time.y * _Speed;

				float2 center = float2(v.vertex.x - _CenterOffset.x, v.vertex.z - _CenterOffset.y);
				float squareRadius = (center.x * center.x) + (center.y * center.y);

				float waveValueA = sin(squareRadius * _Frequency - time) * _Amplitude / (_Fading + squareRadius);

				v.vertex.xyz = float3(v.vertex.x, v.vertex.y + waveValueA, v.vertex.z);

				o.vertColor = float4(v.vertex.y / _ColorDivider.x + _ColorOffset.x,
				v.vertex.y / _ColorDivider.y + _ColorOffset.y, v.vertex.y / _ColorDivider.z + _ColorOffset.z, 1.0);
				o.vertex = UnityObjectToClipPos(v.vertex); //mul(UNITY_MATRIX_MVP, float4(pos, 1.0))
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				fixed4 col = i.vertColor;

				return col;
			}
			ENDCG
		}
	}
}
