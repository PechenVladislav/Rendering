// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34008,y:32691,varname:node_3138,prsc:2|emission-8420-OUT;n:type:ShaderForge.SFN_ScreenPos,id:7370,x:32445,y:32834,varname:node_7370,prsc:2,sctp:1;n:type:ShaderForge.SFN_RemapRange,id:761,x:32659,y:32826,varname:node_761,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-7370-UVOUT;n:type:ShaderForge.SFN_Multiply,id:688,x:32851,y:32826,varname:node_688,prsc:2|A-761-OUT,B-4975-OUT;n:type:ShaderForge.SFN_Vector1,id:4975,x:32637,y:33002,varname:node_4975,prsc:2,v1:50;n:type:ShaderForge.SFN_Frac,id:391,x:33043,y:32810,varname:node_391,prsc:2|IN-688-OUT;n:type:ShaderForge.SFN_RemapRange,id:8115,x:33245,y:32793,varname:node_8115,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-391-OUT;n:type:ShaderForge.SFN_Length,id:812,x:33439,y:32793,varname:node_812,prsc:2|IN-8115-OUT;n:type:ShaderForge.SFN_LightVector,id:4401,x:32437,y:33139,varname:node_4401,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:244,x:32437,y:33299,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:3397,x:32689,y:33195,varname:node_3397,prsc:2,dt:1|A-4401-OUT,B-244-OUT;n:type:ShaderForge.SFN_Multiply,id:8617,x:32918,y:33195,varname:node_8617,prsc:2|A-3397-OUT,B-6703-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:6703,x:32689,y:33387,varname:node_6703,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:5945,x:33156,y:33155,varname:node_5945,prsc:2,frmn:1,frmx:0,tomn:-0.5,tomx:2|IN-8617-OUT;n:type:ShaderForge.SFN_Power,id:1991,x:33623,y:32858,varname:node_1991,prsc:2|VAL-812-OUT,EXP-5945-OUT;n:type:ShaderForge.SFN_Round,id:8420,x:33809,y:32822,varname:node_8420,prsc:2|IN-1991-OUT;pass:END;sub:END;*/

Shader "Shader Forge/DitheringSim1" {
    Properties {
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
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float node_8420 = round(pow(length((frac(((float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg*0.5+0.5)*50.0))*1.0+-0.5)),((max(0,dot(lightDirection,i.normalDir))*attenuation)*-2.5+2.0)));
                float3 emissive = float3(node_8420,node_8420,node_8420);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
