Shader "Unlit/VertexAnimation"
{
	Properties
	{
		_ColorA ("ColorA", Color) = (0, 0, 0, 0)
		_ColorB ("ColorB", Color) = (1, 1, 1, 1)
		_tintRange ("Tint Range", Range(0.1, 10)) = 0.5 
		_tintHeight ("Tint Height", Range(-10, 10)) = 0.5 

		_CenterOffset ("Center Offset", Vector) = (0, 0, 0, 0)
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

			fixed3 _ColorA;
			fixed3 _ColorB;
			half _tintRange;
			half _tintHeight;
			half2 _CenterOffset;
			half _tintAmount; 
			half _Speed; 
			half _Fading;
			half _Frequency; 
			half _Amplitude; 

			struct appdata
			{
				half4 vertex : POSITION;
			};

			struct v2f
			{
				half4 vertex : SV_POSITION;
				fixed4 vertColor :TEXCOORD1;
			};
			
			v2f vert (appdata v)
			{
				v2f o;

				half time = _Time.y * _Speed;

				half2 center = half2(v.vertex.x - _CenterOffset.x, v.vertex.z - _CenterOffset.y);
				half squareRadius = (center.x * center.x) + (center.y * center.y);

				half waveValueA = sin(squareRadius * _Frequency - time) * _Amplitude / (_Fading + squareRadius);

				v.vertex.xyz = half3(v.vertex.x, v.vertex.y + waveValueA, v.vertex.z);

				fixed3 col = lerp(_ColorA, _ColorB, saturate(v.vertex.y / _tintRange - _tintHeight));
				o.vertColor = fixed4(col.x, col.y, col.z, 1.0);
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
