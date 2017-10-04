Shader "Unlit/DissolveLayers"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_ColorTint("Color Tint", Color) = (1, 1, 1, 1)
		_SecondTint("Second Tint", Color) = (1, 1, 1, 1)
		_ThirdTint("Third Tint", Color) = (1, 1, 1, 1)
		[NoScaleOffset]_DissolveTex("Dissolve Texture", 2D) = "white" {}
		_AlphaCuroff("Alpha Cutoff", Range(-0.5, 2.5)) = 0
		_EdgeWidth("Edge Width", Range(0, 0.5)) = 0.1
		[HDR]_EdgeTint("Edge Color", Color) = (1, 1, 1, 1)
		_EdgeRamp("Edge Ramp Tex", 2D) = "white" {}
		_SecondSphereOffset("Second Sphere Offset", Range(0, 0.2)) = 0.1
	}
	SubShader
	{
		Tags { "RenderType"="TransparentCutout" "Queue" = "AlphaTest"}
		Blend One Zero
		Cull Back
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
			float4 _MainTex_ST;
			sampler2D _DissolveTex;
			float _AlphaCuroff;
			float _EdgeWidth;
			float3 _EdgeTint;
			sampler1D _EdgeRamp;
			float4 _ColorTint;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);

				//o.vertex = mul(UNITY_MATRIX_P, mul(UNITY_MATRIX_MV, float4(0, 0, 0, 1)) + float4(v.vertex.x, v.vertex.y, 0, 0));
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				float dissolve = saturate(tex2D(_DissolveTex, i.uv).r);
				fixed4 col = tex2D(_MainTex, i.uv) * _ColorTint;
				clip(dissolve - _AlphaCuroff);
				
				float edge = step(dissolve - _EdgeWidth, _AlphaCuroff);

				float3 edgeTex = tex1D(_EdgeRamp, 1 - (dissolve - _AlphaCuroff) / _EdgeWidth) * _EdgeTint;
				col.rgb =  col.rgb * (1 - edge) + edgeTex * edge;

				return col;
			}
			ENDCG
		}

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
				float3 normal : NORMAL;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			sampler2D _DissolveTex;
			float _AlphaCuroff;
			float _EdgeWidth;
			float3 _EdgeTint;
			sampler1D _EdgeRamp;
			float _SecondSphereOffset;
			float4 _SecondTint;
			
			v2f vert (appdata v)
			{
				v2f o;

				v.vertex.xyz -= v.normal * _SecondSphereOffset;

				o.vertex = UnityObjectToClipPos(v.vertex);

				//o.vertex = mul(UNITY_MATRIX_P, mul(UNITY_MATRIX_MV, float4(0, 0, 0, 1)) + float4(v.vertex.x, v.vertex.y, 0, 0));
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				float dissolve = saturate(tex2D(_DissolveTex, i.uv + 0.5).r);
				fixed4 col = tex2D(_MainTex, i.uv) * _SecondTint;
				float cutoff = _AlphaCuroff - 0.5;
				clip(dissolve - cutoff);
				
				float edge = step(dissolve - _EdgeWidth, cutoff);

				float3 edgeTex = tex1D(_EdgeRamp, 1 - (dissolve - cutoff) / _EdgeWidth) * _EdgeTint;
				col.rgb =  col.rgb * (1 - edge) + edgeTex * edge;

				return col;
			}
			ENDCG
		}

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
				float3 normal : NORMAL;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			sampler2D _DissolveTex;
			float _AlphaCuroff;
			float _EdgeWidth;
			float3 _EdgeTint;
			sampler1D _EdgeRamp;
			float _SecondSphereOffset;
			float4 _ThirdTint;
			
			v2f vert (appdata v)
			{
				v2f o;

				v.vertex.xyz -= v.normal * _SecondSphereOffset * 2;

				o.vertex = UnityObjectToClipPos(v.vertex);

				//o.vertex = mul(UNITY_MATRIX_P, mul(UNITY_MATRIX_MV, float4(0, 0, 0, 1)) + float4(v.vertex.x, v.vertex.y, 0, 0));
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				float dissolve = saturate(tex2D(_DissolveTex, i.uv + 0.5).r);
				fixed4 col = tex2D(_MainTex, i.uv) * _ThirdTint;
				float cutoff = _AlphaCuroff - 1;
				clip(dissolve - cutoff);
				
				float edge = step(dissolve - _EdgeWidth, cutoff);

				float3 edgeTex = tex1D(_EdgeRamp, 1 - (dissolve - cutoff) / _EdgeWidth) * _EdgeTint;
				col.rgb =  col.rgb * (1 - edge) + edgeTex * edge;

				return col;
			}
			ENDCG
		}
	}
}
