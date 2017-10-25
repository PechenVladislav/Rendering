// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:35152,y:32412,varname:node_3138,prsc:2|emission-105-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4139,x:31599,y:32562,ptovrint:False,ptlb:hatcingAngle,ptin:_hatcingAngle,varname:node_4139,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:45;n:type:ShaderForge.SFN_Vector1,id:5126,x:31583,y:32373,varname:node_5126,prsc:2,v1:90;n:type:ShaderForge.SFN_Add,id:2911,x:31858,y:32388,varname:node_2911,prsc:2|A-5126-OUT,B-4139-OUT;n:type:ShaderForge.SFN_Tau,id:6640,x:31599,y:32707,varname:node_6640,prsc:2;n:type:ShaderForge.SFN_Vector1,id:6046,x:31582,y:32832,varname:node_6046,prsc:2,v1:360;n:type:ShaderForge.SFN_Divide,id:5841,x:31798,y:32750,cmnt:1 degree in radians,varname:node_5841,prsc:2|A-6640-OUT,B-6046-OUT;n:type:ShaderForge.SFN_Multiply,id:5870,x:32161,y:32382,varname:node_5870,prsc:2|A-2911-OUT,B-5841-OUT;n:type:ShaderForge.SFN_Multiply,id:1321,x:32139,y:32766,varname:node_1321,prsc:2|A-4139-OUT,B-5841-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9225,x:32139,y:32578,varname:node_9225,prsc:2,sctp:1;n:type:ShaderForge.SFN_RemapRange,id:2686,x:32335,y:32571,varname:node_2686,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-9225-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2432,x:32649,y:32558,varname:node_2432,prsc:2|A-2686-OUT,B-7471-OUT;n:type:ShaderForge.SFN_Vector1,id:7471,x:32456,y:32641,varname:node_7471,prsc:2,v1:120;n:type:ShaderForge.SFN_Rotator,id:6486,x:32865,y:32692,varname:node_6486,prsc:2|UVIN-2432-OUT,ANG-1321-OUT;n:type:ShaderForge.SFN_Frac,id:1151,x:33075,y:32692,varname:node_1151,prsc:2|IN-6486-UVOUT;n:type:ShaderForge.SFN_Rotator,id:7646,x:32876,y:32389,varname:node_7646,prsc:2|UVIN-2432-OUT,ANG-5870-OUT;n:type:ShaderForge.SFN_Frac,id:4503,x:33081,y:32401,varname:node_4503,prsc:2|IN-7646-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:4484,x:33281,y:32692,varname:node_4484,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1151-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3052,x:33281,y:32401,varname:node_3052,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4503-OUT;n:type:ShaderForge.SFN_NormalVector,id:4059,x:32867,y:33209,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:4483,x:32851,y:33051,varname:node_4483,prsc:2;n:type:ShaderForge.SFN_Dot,id:6543,x:33088,y:33142,varname:node_6543,prsc:2,dt:0|A-4483-OUT,B-4059-OUT;n:type:ShaderForge.SFN_Multiply,id:8327,x:33351,y:33131,varname:node_8327,prsc:2|A-6543-OUT,B-2140-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:2140,x:33088,y:33308,varname:node_2140,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:402,x:33564,y:33113,varname:node_402,prsc:2,frmn:1,frmx:0,tomn:-1,tomx:1|IN-8327-OUT;n:type:ShaderForge.SFN_RemapRange,id:7946,x:33495,y:32239,varname:node_7946,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3052-OUT;n:type:ShaderForge.SFN_RemapRange,id:4066,x:33488,y:32412,varname:node_4066,prsc:2,frmn:1,frmx:0,tomn:-1,tomx:1|IN-3052-OUT;n:type:ShaderForge.SFN_RemapRange,id:6050,x:33488,y:32640,varname:node_6050,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4484-OUT;n:type:ShaderForge.SFN_RemapRange,id:5401,x:33488,y:32803,varname:node_5401,prsc:2,frmn:1,frmx:0,tomn:-1,tomx:1|IN-4484-OUT;n:type:ShaderForge.SFN_Clamp01,id:6196,x:33680,y:32239,varname:node_6196,prsc:2|IN-7946-OUT;n:type:ShaderForge.SFN_Clamp01,id:3993,x:33680,y:32640,varname:node_3993,prsc:2|IN-6050-OUT;n:type:ShaderForge.SFN_Clamp01,id:8140,x:33680,y:32803,varname:node_8140,prsc:2|IN-5401-OUT;n:type:ShaderForge.SFN_Add,id:5042,x:33873,y:32731,varname:node_5042,prsc:2|A-3993-OUT,B-8140-OUT;n:type:ShaderForge.SFN_Clamp01,id:3577,x:33680,y:32412,varname:node_3577,prsc:2|IN-4066-OUT;n:type:ShaderForge.SFN_Add,id:5646,x:33863,y:32347,varname:node_5646,prsc:2|A-6196-OUT,B-3577-OUT;n:type:ShaderForge.SFN_Subtract,id:308,x:34122,y:32346,varname:node_308,prsc:2|A-5646-OUT,B-402-OUT;n:type:ShaderForge.SFN_Subtract,id:8770,x:34116,y:32731,varname:node_8770,prsc:2|A-5042-OUT,B-402-OUT;n:type:ShaderForge.SFN_Clamp01,id:7532,x:34331,y:32346,varname:node_7532,prsc:2|IN-308-OUT;n:type:ShaderForge.SFN_Clamp01,id:8219,x:34341,y:32731,varname:node_8219,prsc:2|IN-8770-OUT;n:type:ShaderForge.SFN_Round,id:858,x:34526,y:32346,varname:node_858,prsc:2|IN-7532-OUT;n:type:ShaderForge.SFN_Round,id:8165,x:34533,y:32731,varname:node_8165,prsc:2|IN-8219-OUT;n:type:ShaderForge.SFN_Multiply,id:105,x:34821,y:32534,varname:node_105,prsc:2|A-858-OUT,B-8165-OUT;proporder:4139;pass:END;sub:END;*/

Shader "Shader Forge/DitheringSim2" {
    Properties {
        _hatcingAngle ("hatcingAngle", Float ) = 45
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
            uniform float _hatcingAngle;
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
                float node_5841 = (6.28318530718/360.0); // 1 degree in radians
                float node_7646_ang = ((90.0+_hatcingAngle)*node_5841);
                float node_7646_spd = 1.0;
                float node_7646_cos = cos(node_7646_spd*node_7646_ang);
                float node_7646_sin = sin(node_7646_spd*node_7646_ang);
                float2 node_7646_piv = float2(0.5,0.5);
                float2 node_2432 = ((float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg*0.5+0.5)*120.0);
                float2 node_7646 = (mul(node_2432-node_7646_piv,float2x2( node_7646_cos, -node_7646_sin, node_7646_sin, node_7646_cos))+node_7646_piv);
                float node_3052 = frac(node_7646).r;
                float node_7946 = (node_3052*2.0+-1.0);
                float node_4066 = (node_3052*-2.0+1.0);
                float node_402 = ((dot(lightDirection,i.normalDir)*attenuation)*-2.0+1.0);
                float node_1321 = (_hatcingAngle*node_5841);
                float node_6486_ang = node_1321;
                float node_6486_spd = 1.0;
                float node_6486_cos = cos(node_6486_spd*node_6486_ang);
                float node_6486_sin = sin(node_6486_spd*node_6486_ang);
                float2 node_6486_piv = float2(0.5,0.5);
                float2 node_6486 = (mul(node_2432-node_6486_piv,float2x2( node_6486_cos, -node_6486_sin, node_6486_sin, node_6486_cos))+node_6486_piv);
                float node_4484 = frac(node_6486).r;
                float node_6050 = (node_4484*2.0+-1.0);
                float node_5401 = (node_4484*-2.0+1.0);
                float node_105 = (round(saturate(((saturate(node_7946)+saturate(node_4066))-node_402)))*round(saturate(((saturate(node_6050)+saturate(node_5401))-node_402))));
                float3 emissive = float3(node_105,node_105,node_105);
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
            uniform float _hatcingAngle;
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
