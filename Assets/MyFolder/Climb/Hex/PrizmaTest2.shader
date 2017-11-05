// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33130,y:31875,varname:node_3138,prsc:2|emission-5395-A;n:type:ShaderForge.SFN_Tex2d,id:4274,x:34923,y:32835,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d4940c862b9d0f349b3eec6e0da05578,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:7827,x:35276,y:32740,varname:node_7827,prsc:2|A-1218-OUT,B-4274-RGB;n:type:ShaderForge.SFN_Tex2d,id:7846,x:34008,y:32057,ptovrint:False,ptlb:node_7846,ptin:_node_7846,varname:node_7846,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1671d183b5ec3244d82d0cb14a01a0ca,ntxv:0,isnm:False|UVIN-1591-OUT;n:type:ShaderForge.SFN_Color,id:6572,x:33969,y:32280,ptovrint:False,ptlb:node_6572,ptin:_node_6572,varname:node_6572,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6142467,c2:0.1881488,c3:0.8823529,c4:1;n:type:ShaderForge.SFN_Multiply,id:771,x:34232,y:32217,varname:node_771,prsc:2|A-7846-A,B-6572-RGB;n:type:ShaderForge.SFN_TexCoord,id:3795,x:33627,y:32063,varname:node_3795,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:1591,x:33824,y:32063,varname:node_1591,prsc:2|A-3795-UVOUT,B-7528-OUT;n:type:ShaderForge.SFN_Vector1,id:7528,x:33627,y:32234,varname:node_7528,prsc:2,v1:0.4;n:type:ShaderForge.SFN_Multiply,id:1218,x:34586,y:32528,varname:node_1218,prsc:2|A-771-OUT,B-182-A;n:type:ShaderForge.SFN_Tex2d,id:182,x:33549,y:32523,ptovrint:False,ptlb:node_182,ptin:_node_182,varname:node_182,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ba88ecc97f59add44832fd2059bafea2,ntxv:0,isnm:False|UVIN-8567-OUT;n:type:ShaderForge.SFN_TexCoord,id:3047,x:32874,y:32373,varname:node_3047,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:5681,x:33066,y:32532,varname:node_5681,prsc:2|A-3047-UVOUT,B-352-OUT;n:type:ShaderForge.SFN_Slider,id:352,x:32412,y:32540,ptovrint:False,ptlb:Scale,ptin:_Scale,varname:node_352,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:10,cur:1.341881,max:0;n:type:ShaderForge.SFN_Subtract,id:6945,x:33043,y:32757,varname:node_6945,prsc:2|A-1346-OUT,B-2644-OUT;n:type:ShaderForge.SFN_Subtract,id:8567,x:33325,y:32540,varname:node_8567,prsc:2|A-5681-OUT,B-6945-OUT;n:type:ShaderForge.SFN_Vector1,id:2644,x:32834,y:32956,varname:node_2644,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:1346,x:32834,y:32757,varname:node_1346,prsc:2|A-352-OUT,B-2644-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5848,x:31637,y:31969,varname:node_5848,prsc:2;n:type:ShaderForge.SFN_Vector4Property,id:9850,x:31185,y:32192,ptovrint:False,ptlb:Pos,ptin:_Pos,varname:node_9850,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Tex2d,id:5395,x:32805,y:32119,ptovrint:False,ptlb:node_182_copy,ptin:_node_182_copy,varname:_node_182_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ba88ecc97f59add44832fd2059bafea2,ntxv:0,isnm:False|UVIN-8958-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:4293,x:31637,y:32163,varname:node_4293,prsc:2;n:type:ShaderForge.SFN_Append,id:9461,x:32382,y:32228,varname:node_9461,prsc:2|A-5680-OUT,B-5316-OUT;n:type:ShaderForge.SFN_Subtract,id:5775,x:31858,y:32064,varname:node_5775,prsc:2|A-5848-X,B-9850-X;n:type:ShaderForge.SFN_Subtract,id:2136,x:31840,y:32260,varname:node_2136,prsc:2|A-4293-Y,B-9850-Y;n:type:ShaderForge.SFN_Subtract,id:1209,x:31722,y:32520,varname:node_1209,prsc:2|A-5231-Z,B-9850-Z;n:type:ShaderForge.SFN_FragmentPosition,id:5231,x:31597,y:32316,varname:node_5231,prsc:2;n:type:ShaderForge.SFN_Add,id:8958,x:32659,y:32261,varname:node_8958,prsc:2|A-9461-OUT,B-2936-OUT;n:type:ShaderForge.SFN_Dot,id:4879,x:31712,y:31755,varname:node_4879,prsc:2,dt:0|A-5864-OUT,B-4793-OUT;n:type:ShaderForge.SFN_Append,id:2936,x:32226,y:32485,varname:node_2936,prsc:2|A-6770-OUT,B-8864-OUT;n:type:ShaderForge.SFN_Vector3,id:4793,x:31356,y:31852,varname:node_4793,prsc:2,v1:1,v2:0,v3:0;n:type:ShaderForge.SFN_NormalVector,id:5864,x:31356,y:31689,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:5156,x:31910,y:31765,varname:node_5156,prsc:2|IN-4879-OUT;n:type:ShaderForge.SFN_Multiply,id:6770,x:32077,y:32451,varname:node_6770,prsc:2|A-1209-OUT,B-8809-OUT;n:type:ShaderForge.SFN_Multiply,id:8864,x:32059,y:32617,varname:node_8864,prsc:2|A-1209-OUT,B-9397-OUT;n:type:ShaderForge.SFN_Dot,id:904,x:31738,y:31491,varname:node_904,prsc:2,dt:0|A-4525-OUT,B-3392-OUT;n:type:ShaderForge.SFN_Vector3,id:3392,x:31382,y:31588,varname:node_3392,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_NormalVector,id:4525,x:31382,y:31425,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:5269,x:31938,y:31501,varname:node_5269,prsc:2|IN-904-OUT;n:type:ShaderForge.SFN_Abs,id:5608,x:31944,y:31237,varname:node_5608,prsc:2|IN-9974-OUT;n:type:ShaderForge.SFN_Dot,id:9974,x:31744,y:31227,varname:node_9974,prsc:2,dt:0|A-576-OUT,B-7423-OUT;n:type:ShaderForge.SFN_Vector3,id:7423,x:31388,y:31324,varname:node_7423,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_NormalVector,id:576,x:31388,y:31161,prsc:2,pt:False;n:type:ShaderForge.SFN_Set,id:7968,x:32121,y:31237,varname:z,prsc:2|IN-5608-OUT;n:type:ShaderForge.SFN_Set,id:2389,x:32152,y:31501,varname:y,prsc:2|IN-5269-OUT;n:type:ShaderForge.SFN_Set,id:7611,x:32150,y:31780,varname:x,prsc:2|IN-5156-OUT;n:type:ShaderForge.SFN_Get,id:8809,x:31900,y:32487,varname:node_8809,prsc:2|IN-7611-OUT;n:type:ShaderForge.SFN_Get,id:9397,x:31861,y:32641,varname:node_9397,prsc:2|IN-2389-OUT;n:type:ShaderForge.SFN_Multiply,id:5680,x:32250,y:32048,varname:node_5680,prsc:2|A-5775-OUT,B-8963-OUT;n:type:ShaderForge.SFN_Multiply,id:5316,x:32226,y:32271,varname:node_5316,prsc:2|A-2136-OUT,B-7281-OUT;n:type:ShaderForge.SFN_Get,id:8963,x:31975,y:31959,varname:node_8963,prsc:2|IN-7968-OUT;n:type:ShaderForge.SFN_Get,id:7281,x:31918,y:32336,varname:node_7281,prsc:2|IN-7968-OUT;n:type:ShaderForge.SFN_Get,id:8263,x:31975,y:32029,varname:node_8263,prsc:2;proporder:4274-7846-6572-182-352-9850-5395;pass:END;sub:END;*/

Shader "Shader Forge/PrizmaTests" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _node_7846 ("node_7846", 2D) = "white" {}
        _node_6572 ("node_6572", Color) = (0.6142467,0.1881488,0.8823529,1)
        _node_182 ("node_182", 2D) = "white" {}
        _Scale ("Scale", Range(10, 0)) = 1.341881
        _Pos ("Pos", Vector) = (0,0,0,0)
        _node_182_copy ("node_182_copy", 2D) = "white" {}
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
            uniform float4 _Pos;
            uniform sampler2D _node_182_copy; uniform float4 _node_182_copy_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float z = abs(dot(i.normalDir,float3(0,0,1)));
                float node_1209 = (i.posWorld.b-_Pos.b);
                float node_4879 = dot(i.normalDir,float3(1,0,0));
                float x = abs(node_4879);
                float y = abs(dot(i.normalDir,float3(0,1,0)));
                float2 node_8958 = (float2(((i.posWorld.r-_Pos.r)*z),((i.posWorld.g-_Pos.g)*z))+float2((node_1209*x),(node_1209*y)));
                float4 _node_182_copy_var = tex2D(_node_182_copy,TRANSFORM_TEX(node_8958, _node_182_copy));
                float3 emissive = float3(_node_182_copy_var.a,_node_182_copy_var.a,_node_182_copy_var.a);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
