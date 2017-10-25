// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34776,y:32723,varname:node_3138,prsc:2|emission-7138-OUT;n:type:ShaderForge.SFN_TexCoord,id:8899,x:32184,y:32773,varname:node_8899,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector1,id:5564,x:32196,y:33010,varname:node_5564,prsc:2,v1:10;n:type:ShaderForge.SFN_Multiply,id:6254,x:32435,y:32830,varname:node_6254,prsc:2|A-8899-UVOUT,B-5564-OUT;n:type:ShaderForge.SFN_Floor,id:5138,x:32625,y:32815,varname:node_5138,prsc:2|IN-6254-OUT;n:type:ShaderForge.SFN_Noise,id:5087,x:32878,y:32703,varname:node_5087,prsc:2|XY-5138-OUT;n:type:ShaderForge.SFN_Noise,id:1287,x:33016,y:32869,varname:node_1287,prsc:2|XY-5335-OUT;n:type:ShaderForge.SFN_Noise,id:5075,x:33203,y:33072,varname:node_5075,prsc:2|XY-1681-OUT;n:type:ShaderForge.SFN_Add,id:5335,x:32823,y:32910,varname:node_5335,prsc:2|A-5138-OUT,B-5564-OUT;n:type:ShaderForge.SFN_Add,id:1681,x:33016,y:33072,varname:node_1681,prsc:2|A-5335-OUT,B-5564-OUT;n:type:ShaderForge.SFN_Frac,id:7525,x:32663,y:33353,varname:node_7525,prsc:2|IN-6254-OUT;n:type:ShaderForge.SFN_RemapRange,id:3926,x:32906,y:33353,varname:node_3926,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7525-OUT;n:type:ShaderForge.SFN_Multiply,id:8463,x:33144,y:33371,varname:node_8463,prsc:2|A-3926-OUT,B-7347-OUT;n:type:ShaderForge.SFN_Vector1,id:7347,x:32878,y:33579,varname:node_7347,prsc:2,v1:8;n:type:ShaderForge.SFN_Round,id:4460,x:33338,y:33360,varname:node_4460,prsc:2|IN-8463-OUT;n:type:ShaderForge.SFN_Append,id:6994,x:33350,y:32893,varname:node_6994,prsc:2|A-5087-OUT,B-1287-OUT;n:type:ShaderForge.SFN_Append,id:9934,x:33525,y:32988,varname:node_9934,prsc:2|A-6994-OUT,B-5075-OUT;n:type:ShaderForge.SFN_Power,id:8169,x:33751,y:32977,varname:node_8169,prsc:2|VAL-9934-OUT,EXP-3218-OUT;n:type:ShaderForge.SFN_Vector1,id:3218,x:33574,y:33139,varname:node_3218,prsc:2,v1:2;n:type:ShaderForge.SFN_Divide,id:9450,x:33547,y:33408,varname:node_9450,prsc:2|A-4460-OUT,B-7347-OUT;n:type:ShaderForge.SFN_Rotator,id:9558,x:33794,y:33394,varname:node_9558,prsc:2|UVIN-9450-OUT,PIV-7686-OUT;n:type:ShaderForge.SFN_Vector2,id:7686,x:33587,y:33574,varname:node_7686,prsc:2,v1:0,v2:0;n:type:ShaderForge.SFN_Multiply,id:1300,x:34033,y:33379,varname:node_1300,prsc:2|A-9558-UVOUT,B-5727-OUT;n:type:ShaderForge.SFN_Vector2,id:5727,x:33823,y:33542,varname:node_5727,prsc:2,v1:1,v2:3;n:type:ShaderForge.SFN_Length,id:1621,x:34244,y:33321,varname:node_1621,prsc:2|IN-1300-OUT;n:type:ShaderForge.SFN_Clamp01,id:413,x:34476,y:33225,varname:node_413,prsc:2|IN-1621-OUT;n:type:ShaderForge.SFN_Floor,id:827,x:34317,y:33104,varname:node_827,prsc:2|IN-413-OUT;n:type:ShaderForge.SFN_OneMinus,id:4922,x:34251,y:32963,varname:node_4922,prsc:2|IN-827-OUT;n:type:ShaderForge.SFN_Multiply,id:7138,x:34460,y:32863,varname:node_7138,prsc:2|A-8169-OUT,B-4922-OUT;pass:END;sub:END;*/

Shader "Shader Forge/NoiseTest" {
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float node_5564 = 10.0;
                float2 node_6254 = (i.uv0*node_5564);
                float2 node_5138 = floor(node_6254);
                float2 node_5087_skew = node_5138 + 0.2127+node_5138.x*0.3713*node_5138.y;
                float2 node_5087_rnd = 4.789*sin(489.123*(node_5087_skew));
                float node_5087 = frac(node_5087_rnd.x*node_5087_rnd.y*(1+node_5087_skew.x));
                float2 node_5335 = (node_5138+node_5564);
                float2 node_1287_skew = node_5335 + 0.2127+node_5335.x*0.3713*node_5335.y;
                float2 node_1287_rnd = 4.789*sin(489.123*(node_1287_skew));
                float node_1287 = frac(node_1287_rnd.x*node_1287_rnd.y*(1+node_1287_skew.x));
                float2 node_1681 = (node_5335+node_5564);
                float2 node_5075_skew = node_1681 + 0.2127+node_1681.x*0.3713*node_1681.y;
                float2 node_5075_rnd = 4.789*sin(489.123*(node_5075_skew));
                float node_5075 = frac(node_5075_rnd.x*node_5075_rnd.y*(1+node_5075_skew.x));
                float4 node_82 = _Time;
                float node_9558_ang = node_82.g;
                float node_9558_spd = 1.0;
                float node_9558_cos = cos(node_9558_spd*node_9558_ang);
                float node_9558_sin = sin(node_9558_spd*node_9558_ang);
                float2 node_9558_piv = float2(0,0);
                float2 node_3926 = (frac(node_6254)*2.0+-1.0);
                float node_7347 = 8.0;
                float2 node_9558 = (mul((round((node_3926*node_7347))/node_7347)-node_9558_piv,float2x2( node_9558_cos, -node_9558_sin, node_9558_sin, node_9558_cos))+node_9558_piv);
                float3 emissive = (pow(float3(float2(node_5087,node_1287),node_5075),2.0)*(1.0 - floor(saturate(length((node_9558*float2(1,3)))))));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
