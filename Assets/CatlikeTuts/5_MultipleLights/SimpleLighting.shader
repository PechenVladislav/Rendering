Shader "Custom/SimpleLighting"
{
	
	Properties
	{
		_Tint ("Tint", Color) = (1, 1, 1, 1)
		_MainTex ("Albedo", 2D) = "white" {}
		[Gamma] _Metallic ("Metallic", Range(0, 1)) = 0
		_Smoothness ("Smotheness", Range(0, 1)) = 0.5
	}

    SubShader
	{
        Pass
		{
			Tags {
				"LightMode" = "ForwardBase"
			}

			CGPROGRAM

            #pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0

			#pragma multi_compile _ VERTEXLIGHT_ON

			#include "MyLighting.cginc"

			ENDCG
		}

		Pass
		{
			Tags {
				"LightMode" = "ForwardAdd"
			}

			Blend One One
			ZWrite Off

			CGPROGRAM

            #pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0

			#pragma multi_compile_fwdadd

			#include "MyLighting.cginc"

			ENDCG
		}
	}
}
