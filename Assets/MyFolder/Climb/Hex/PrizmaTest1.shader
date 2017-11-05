// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:35828,y:32565,varname:node_3138,prsc:2|emission-7827-OUT;n:type:ShaderForge.SFN_Multiply,id:388,x:33619,y:32858,varname:node_388,prsc:2|A-4252-OUT,B-9531-OUT;n:type:ShaderForge.SFN_Sin,id:1932,x:34182,y:32840,varname:node_1932,prsc:2|IN-4173-OUT;n:type:ShaderForge.SFN_Power,id:5276,x:33868,y:32858,varname:node_5276,prsc:2|VAL-388-OUT,EXP-3924-OUT;n:type:ShaderForge.SFN_Slider,id:3924,x:33587,y:33079,ptovrint:False,ptlb:TouchPow,ptin:_TouchPow,varname:_Pow,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.5,max:2;n:type:ShaderForge.SFN_Multiply,id:1121,x:34356,y:32723,varname:node_1121,prsc:2|A-4252-OUT,B-1932-OUT;n:type:ShaderForge.SFN_Slider,id:9531,x:33171,y:32985,ptovrint:False,ptlb:TouchFrequency,ptin:_TouchFrequency,varname:_Frequency,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:2,max:30;n:type:ShaderForge.SFN_Time,id:5659,x:33698,y:33223,varname:node_5659,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:6873,x:33698,y:33390,ptovrint:False,ptlb:TouchSpeed,ptin:_TouchSpeed,varname:_Speed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Multiply,id:2403,x:33981,y:33215,varname:node_2403,prsc:2|A-5659-T,B-6873-OUT;n:type:ShaderForge.SFN_Add,id:4173,x:34077,y:32977,varname:node_4173,prsc:2|A-5276-OUT,B-2403-OUT;n:type:ShaderForge.SFN_Tex2d,id:4274,x:34923,y:32835,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f6df8509372384f48bb3fa1a762ba9b3,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7768,x:34623,y:32575,varname:node_7768,prsc:2|A-771-OUT,B-1121-OUT;n:type:ShaderForge.SFN_Add,id:7827,x:35284,y:32748,varname:node_7827,prsc:2|A-2267-OUT,B-4274-RGB;n:type:ShaderForge.SFN_FragmentPosition,id:837,x:32150,y:32483,varname:node_837,prsc:2;n:type:ShaderForge.SFN_Distance,id:6240,x:32596,y:32516,varname:node_6240,prsc:2|A-7328-OUT,B-6077-XYZ;n:type:ShaderForge.SFN_OneMinus,id:1598,x:32742,y:32567,varname:node_1598,prsc:2|IN-6240-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7740,x:31967,y:32746,ptovrint:False,ptlb:TouchScale,ptin:_TouchScale,varname:node_7740,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:7328,x:32399,y:32468,varname:node_7328,prsc:2|A-837-XYZ,B-3093-OUT;n:type:ShaderForge.SFN_Clamp01,id:4252,x:32923,y:32549,varname:node_4252,prsc:2|IN-1598-OUT;n:type:ShaderForge.SFN_Divide,id:3093,x:32167,y:32655,varname:node_3093,prsc:2|A-4511-OUT,B-7740-OUT;n:type:ShaderForge.SFN_Vector1,id:4511,x:31967,y:32672,varname:node_4511,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2d,id:7846,x:34088,y:32058,ptovrint:False,ptlb:node_7846,ptin:_node_7846,varname:node_7846,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1671d183b5ec3244d82d0cb14a01a0ca,ntxv:3,isnm:False|UVIN-1591-OUT;n:type:ShaderForge.SFN_Color,id:6572,x:33969,y:32280,ptovrint:False,ptlb:node_6572,ptin:_node_6572,varname:node_6572,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6142467,c2:0.1881488,c3:0.8823529,c4:1;n:type:ShaderForge.SFN_Multiply,id:771,x:34232,y:32217,varname:node_771,prsc:2|A-7846-A,B-6572-RGB;n:type:ShaderForge.SFN_TexCoord,id:3795,x:33627,y:32063,varname:node_3795,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:1591,x:33824,y:32063,varname:node_1591,prsc:2|A-3795-UVOUT,B-7528-OUT;n:type:ShaderForge.SFN_Vector1,id:7528,x:33627,y:32234,varname:node_7528,prsc:2,v1:0.4;n:type:ShaderForge.SFN_Clamp01,id:2267,x:35083,y:32659,varname:node_2267,prsc:2|IN-7768-OUT;n:type:ShaderForge.SFN_Vector4Property,id:6077,x:32372,y:32674,ptovrint:False,ptlb:TouchPos,ptin:_TouchPos,varname:node_6077,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_FragmentPosition,id:284,x:31845,y:30865,varname:node_284,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9662,x:32241,y:31028,ptovrint:False,ptlb:WaveFreq,ptin:_WaveFreq,varname:node_9662,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Frac,id:1583,x:32655,y:30823,varname:node_1583,prsc:2|IN-8681-OUT;n:type:ShaderForge.SFN_Multiply,id:8681,x:32468,y:30813,varname:node_8681,prsc:2|A-5741-OUT,B-9662-OUT;n:type:ShaderForge.SFN_Vector1,id:5032,x:32294,y:31200,varname:node_5032,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:847,x:33816,y:30740,varname:node_847,prsc:2|A-3636-OUT,B-8101-OUT;n:type:ShaderForge.SFN_Multiply,id:5833,x:32696,y:31140,varname:node_5833,prsc:2|A-5741-OUT,B-6025-OUT;n:type:ShaderForge.SFN_Frac,id:5851,x:32869,y:31130,varname:node_5851,prsc:2|IN-5833-OUT;n:type:ShaderForge.SFN_Round,id:8101,x:33046,y:31129,varname:node_8101,prsc:2|IN-5851-OUT;n:type:ShaderForge.SFN_Sin,id:3636,x:33562,y:30617,varname:node_3636,prsc:2|IN-6117-OUT;n:type:ShaderForge.SFN_Multiply,id:6117,x:33372,y:30617,varname:node_6117,prsc:2|A-5613-OUT,B-6128-OUT;n:type:ShaderForge.SFN_Tau,id:5613,x:33219,y:30617,varname:node_5613,prsc:2;n:type:ShaderForge.SFN_Lerp,id:6128,x:33164,y:30773,varname:node_6128,prsc:2|A-889-OUT,B-5499-OUT,T-9480-OUT;n:type:ShaderForge.SFN_Vector1,id:889,x:32963,y:30705,varname:node_889,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5499,x:32963,y:30773,varname:node_5499,prsc:2,v1:1;n:type:ShaderForge.SFN_Power,id:9480,x:32952,y:30857,varname:node_9480,prsc:2|VAL-1583-OUT,EXP-9489-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9489,x:32767,y:30988,ptovrint:False,ptlb:WavePow,ptin:_WavePow,varname:node_9489,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Clamp01,id:378,x:34056,y:30766,varname:node_378,prsc:2|IN-847-OUT;n:type:ShaderForge.SFN_Time,id:2784,x:31636,y:30995,varname:node_2784,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:314,x:31636,y:31143,ptovrint:False,ptlb:WaveSpeed,ptin:_WaveSpeed,varname:node_314,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.3;n:type:ShaderForge.SFN_Multiply,id:3662,x:31819,y:31064,varname:node_3662,prsc:2|A-2784-T,B-314-OUT;n:type:ShaderForge.SFN_Subtract,id:5741,x:32089,y:30907,varname:node_5741,prsc:2|A-284-Y,B-3662-OUT;n:type:ShaderForge.SFN_Multiply,id:6025,x:32473,y:31156,varname:node_6025,prsc:2|A-9662-OUT,B-5032-OUT;n:type:ShaderForge.SFN_Multiply,id:4478,x:34611,y:30974,varname:node_4478,prsc:2|A-378-OUT;n:type:ShaderForge.SFN_Add,id:7440,x:34780,y:31064,varname:node_7440,prsc:2|A-4478-OUT;n:type:ShaderForge.SFN_Multiply,id:7173,x:33812,y:31125,varname:node_7173,prsc:2|A-378-OUT,B-2946-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2946,x:33606,y:31216,ptovrint:False,ptlb:UVOffset,ptin:_UVOffset,varname:node_2946,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.003;n:type:ShaderForge.SFN_Add,id:2058,x:33967,y:31290,varname:node_2058,prsc:2|A-2165-OUT;n:type:ShaderForge.SFN_Append,id:2165,x:34027,y:31100,varname:node_2165,prsc:2|A-8381-OUT,B-7173-OUT;n:type:ShaderForge.SFN_Vector1,id:8381,x:33793,y:31047,varname:node_8381,prsc:2,v1:0;proporder:3924-9531-6873-4274-7740-7846-6572-6077-9662-9489-314-2946;pass:END;sub:END;*/

Shader "Shader Forge/PrizmaTests" {
    Properties {
        _TouchPow ("TouchPow", Range(0, 2)) = 1.5
        _TouchFrequency ("TouchFrequency", Range(1, 30)) = 2
        _TouchSpeed ("TouchSpeed", Float ) = 3
        _MainTex ("MainTex", 2D) = "white" {}
        _TouchScale ("TouchScale", Float ) = 0.5
        _node_7846 ("node_7846", 2D) = "bump" {}
        _node_6572 ("node_6572", Color) = (0.6142467,0.1881488,0.8823529,1)
        _TouchPos ("TouchPos", Vector) = (0,0,0,0)
        _WaveFreq ("WaveFreq", Float ) = 2
        _WavePow ("WavePow", Float ) = 4
        _WaveSpeed ("WaveSpeed", Float ) = 0.3
        _UVOffset ("UVOffset", Float ) = 0.003
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _TouchPow;
            uniform float _TouchFrequency;
            uniform float _TouchSpeed;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _TouchScale;
            uniform sampler2D _node_7846; uniform float4 _node_7846_ST;
            uniform float4 _node_6572;
            uniform float4 _TouchPos;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float2 node_1591 = (i.uv0*0.4);
                float4 _node_7846_var = tex2D(_node_7846,TRANSFORM_TEX(node_1591, _node_7846));
                float node_4252 = saturate((1.0 - distance((i.posWorld.rgb*(1.0/_TouchScale)),_TouchPos.rgb)));
                float4 node_5659 = _Time;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = (saturate(((_node_7846_var.a*_node_6572.rgb)*(node_4252*sin((pow((node_4252*_TouchFrequency),_TouchPow)+(node_5659.g*_TouchSpeed))))))+_MainTex_var.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
