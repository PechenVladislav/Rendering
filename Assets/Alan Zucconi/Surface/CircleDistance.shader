Shader "Custom/CircleDistance" {
	Properties {
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Center ("Center", Vector) = (0, 0, 0, 0)
		_Radius ("Radius", Float) = 0.0
		_Color ("Color", Color) = (1,1,1,1)
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		//LOD 200
		
		CGPROGRAM
		// Physically based Standard lighting model, and enable shadows on all light types
		#pragma surface surf Standard fullforwardshadows

		// Use shader model 3.0 target, to get nicer looking lighting
		//#pragma target 3.0

		sampler2D _MainTex;
		fixed4 _Color;
		float3 _Center;
		float _Radius;

		struct Input {
			float2 uv_MainTex;
			float3 worldPos;
		};

		void surf (Input IN, inout SurfaceOutputStandard o) {
			float d = distance(_Center, IN.worldPos);
			float dN = 1 - saturate(d / _Radius);
			dN = step(0.0001, dN) * step(dN, 0.05);
			// Albedo comes from a texture
			o.Albedo = tex2D (_MainTex, IN.uv_MainTex).rgb * (1 - dN) + _Color * dN;
		}
		ENDCG
	}
	FallBack "Diffuse"
}
