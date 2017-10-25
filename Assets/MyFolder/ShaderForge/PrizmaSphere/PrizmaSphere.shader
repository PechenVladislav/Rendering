// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:35341,y:33374,varname:node_3138,prsc:2|emission-8679-OUT,alpha-1773-OUT;n:type:ShaderForge.SFN_TexCoord,id:4411,x:32383,y:32602,varname:node_4411,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:2345,x:32644,y:32633,varname:node_2345,prsc:2|A-4411-UVOUT,B-2934-OUT;n:type:ShaderForge.SFN_Vector1,id:2934,x:32365,y:32777,varname:node_2934,prsc:2,v1:0.333;n:type:ShaderForge.SFN_RemapRange,id:9676,x:33265,y:32682,varname:node_9676,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7350-R;n:type:ShaderForge.SFN_Panner,id:7083,x:32829,y:32662,varname:node_7083,prsc:2,spu:1,spv:1|UVIN-2345-OUT;n:type:ShaderForge.SFN_Tex2d,id:7350,x:33023,y:32696,ptovrint:False,ptlb:node_7350,ptin:_node_7350,varname:_node_7350,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d8294ca2f80944642a5af4737b29b513,ntxv:0,isnm:False|UVIN-7083-UVOUT;n:type:ShaderForge.SFN_Multiply,id:7153,x:33460,y:32735,varname:node_7153,prsc:2|A-9676-OUT,B-7287-OUT;n:type:ShaderForge.SFN_Vector1,id:7287,x:33303,y:32844,varname:node_7287,prsc:2,v1:0.1;n:type:ShaderForge.SFN_TexCoord,id:9925,x:32262,y:32959,varname:node_9925,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:7456,x:32488,y:32959,varname:node_7456,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9925-UVOUT;n:type:ShaderForge.SFN_Length,id:3611,x:32675,y:33112,varname:node_3611,prsc:2|IN-7456-OUT;n:type:ShaderForge.SFN_Set,id:7851,x:32859,y:33196,varname:cir,prsc:2|IN-3611-OUT;n:type:ShaderForge.SFN_ArcTan2,id:8611,x:33004,y:32957,varname:node_8611,prsc:2,attp:2|A-5785-G,B-5785-R;n:type:ShaderForge.SFN_ComponentMask,id:5785,x:32736,y:32940,varname:node_5785,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7456-OUT;n:type:ShaderForge.SFN_Add,id:2556,x:33732,y:32843,varname:node_2556,prsc:2|A-7153-OUT,B-8611-OUT;n:type:ShaderForge.SFN_Time,id:3580,x:32610,y:33350,varname:node_3580,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:595,x:32624,y:33518,ptovrint:False,ptlb:speed,ptin:_speed,varname:_speed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:35,x:32965,y:33439,varname:node_35,prsc:2|A-3580-T,B-595-OUT;n:type:ShaderForge.SFN_Multiply,id:7934,x:33074,y:33160,varname:node_7934,prsc:2|A-3611-OUT,B-7674-OUT;n:type:ShaderForge.SFN_Vector1,id:7674,x:32837,y:33279,varname:node_7674,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Add,id:4896,x:33365,y:33238,varname:node_4896,prsc:2|A-7934-OUT,B-35-OUT;n:type:ShaderForge.SFN_Append,id:4532,x:34003,y:33095,varname:node_4532,prsc:2|A-4896-OUT,B-2556-OUT;n:type:ShaderForge.SFN_Tex2d,id:449,x:34379,y:33129,ptovrint:False,ptlb:node_449,ptin:_node_449,varname:_node_449,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ebe4a3a4b5a73e549b0a5fd41d68055b,ntxv:0,isnm:False|UVIN-4532-OUT;n:type:ShaderForge.SFN_Get,id:5381,x:32695,y:33656,varname:node_5381,prsc:2|IN-7851-OUT;n:type:ShaderForge.SFN_Power,id:2002,x:32991,y:33677,varname:node_2002,prsc:2|VAL-5381-OUT,EXP-8798-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8798,x:32649,y:33778,ptovrint:False,ptlb:CircleThick,ptin:_CircleThick,varname:_CircleThick,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:6;n:type:ShaderForge.SFN_ValueProperty,id:3304,x:32848,y:33898,ptovrint:False,ptlb:GlowVal,ptin:_GlowVal,varname:_GlowVal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:2706,x:33206,y:33817,varname:node_2706,prsc:2|A-2002-OUT,B-3304-OUT;n:type:ShaderForge.SFN_Multiply,id:882,x:33339,y:33635,varname:node_882,prsc:2|A-449-R,B-2002-OUT;n:type:ShaderForge.SFN_Add,id:8859,x:33604,y:33653,varname:node_8859,prsc:2|A-449-G,B-2706-OUT,C-882-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2354,x:32577,y:34312,ptovrint:False,ptlb:CenterGlow,ptin:_CenterGlow,varname:_CenterGlow,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Get,id:2978,x:32556,y:34212,varname:node_2978,prsc:2|IN-7851-OUT;n:type:ShaderForge.SFN_Multiply,id:1916,x:32807,y:34256,varname:node_1916,prsc:2|A-2978-OUT,B-2354-OUT;n:type:ShaderForge.SFN_Clamp01,id:6167,x:33027,y:34256,varname:node_6167,prsc:2|IN-1916-OUT;n:type:ShaderForge.SFN_OneMinus,id:6009,x:33231,y:34396,varname:node_6009,prsc:2|IN-6167-OUT;n:type:ShaderForge.SFN_Multiply,id:6471,x:33423,y:34308,varname:node_6471,prsc:2|A-6167-OUT,B-6009-OUT;n:type:ShaderForge.SFN_Multiply,id:3848,x:33841,y:33734,varname:node_3848,prsc:2|A-8859-OUT,B-6167-OUT;n:type:ShaderForge.SFN_Get,id:9552,x:32555,y:34020,varname:node_9552,prsc:2|IN-7851-OUT;n:type:ShaderForge.SFN_Floor,id:6478,x:32822,y:34024,varname:node_6478,prsc:2|IN-9552-OUT;n:type:ShaderForge.SFN_OneMinus,id:7515,x:33058,y:34008,varname:node_7515,prsc:2|IN-6478-OUT;n:type:ShaderForge.SFN_Power,id:5635,x:34113,y:33745,varname:node_5635,prsc:2|VAL-3848-OUT,EXP-9980-OUT;n:type:ShaderForge.SFN_Vector1,id:9980,x:33889,y:33937,varname:node_9980,prsc:2,v1:1.5;n:type:ShaderForge.SFN_Add,id:6513,x:34372,y:33744,varname:node_6513,prsc:2|A-5635-OUT,B-6471-OUT,C-6049-OUT;n:type:ShaderForge.SFN_Multiply,id:5988,x:34695,y:33738,varname:node_5988,prsc:2|A-6513-OUT,B-7515-OUT,C-8386-OUT;n:type:ShaderForge.SFN_Vector1,id:8386,x:34493,y:33890,varname:node_8386,prsc:2,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:7507,x:32155,y:34756,ptovrint:False,ptlb:CenterSize,ptin:_CenterSize,varname:_CenterSize,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_TexCoord,id:6317,x:32329,y:34525,varname:node_6317,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:5249,x:32589,y:34599,varname:node_5249,prsc:2|A-6317-UVOUT,B-7507-OUT;n:type:ShaderForge.SFN_Multiply,id:9755,x:32369,y:34813,varname:node_9755,prsc:2|A-7507-OUT,B-6846-OUT;n:type:ShaderForge.SFN_Vector1,id:6846,x:32155,y:34975,varname:node_6846,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Subtract,id:1149,x:32526,y:34922,varname:node_1149,prsc:2|A-9755-OUT,B-6846-OUT;n:type:ShaderForge.SFN_Negate,id:7971,x:32746,y:34827,varname:node_7971,prsc:2|IN-1149-OUT;n:type:ShaderForge.SFN_Add,id:2929,x:32813,y:34635,varname:node_2929,prsc:2|A-5249-OUT,B-7971-OUT;n:type:ShaderForge.SFN_Tex2d,id:1775,x:33105,y:34718,ptovrint:False,ptlb:node_1775,ptin:_node_1775,varname:_node_1775,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2b6cc03bb88ca7249aa2342f0336dcd3,ntxv:0,isnm:False|UVIN-2929-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8202,x:33344,y:34718,varname:node_8202,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1775-RGB;n:type:ShaderForge.SFN_RemapRange,id:2391,x:33537,y:34700,varname:node_2391,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-8202-OUT;n:type:ShaderForge.SFN_TexCoord,id:680,x:32706,y:35108,varname:node_680,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:7755,x:33001,y:35009,varname:node_7755,prsc:2,spu:0.5,spv:1|UVIN-680-UVOUT;n:type:ShaderForge.SFN_Panner,id:8962,x:33001,y:35191,varname:node_8962,prsc:2,spu:1,spv:0.2|UVIN-680-UVOUT;n:type:ShaderForge.SFN_Add,id:3817,x:33362,y:34994,varname:node_3817,prsc:2|A-2391-OUT,B-7755-UVOUT;n:type:ShaderForge.SFN_Add,id:5590,x:33342,y:35211,varname:node_5590,prsc:2|A-2391-OUT,B-8962-UVOUT;n:type:ShaderForge.SFN_Vector1,id:5613,x:33511,y:35123,varname:node_5613,prsc:2,v1:0.15;n:type:ShaderForge.SFN_Multiply,id:5959,x:33670,y:34995,varname:node_5959,prsc:2|A-3817-OUT,B-5613-OUT;n:type:ShaderForge.SFN_Multiply,id:9875,x:33706,y:35201,varname:node_9875,prsc:2|A-5613-OUT,B-5590-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4933,x:33986,y:35053,ptovrint:False,ptlb:noise,ptin:_noise,varname:node_4933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ba38235cb02433444971448418b72592,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1288,x:34316,y:35173,varname:node_1288,prsc:2,tex:ba38235cb02433444971448418b72592,ntxv:0,isnm:False|UVIN-9875-OUT,TEX-4933-TEX;n:type:ShaderForge.SFN_Tex2d,id:7997,x:34286,y:34986,varname:node_7997,prsc:2,tex:ba38235cb02433444971448418b72592,ntxv:0,isnm:False|UVIN-5959-OUT,TEX-4933-TEX;n:type:ShaderForge.SFN_Multiply,id:5592,x:34534,y:34986,varname:node_5592,prsc:2|A-7997-R,B-7997-R,C-7997-R;n:type:ShaderForge.SFN_Multiply,id:2783,x:34554,y:35173,varname:node_2783,prsc:2|A-1288-R,B-1288-R,C-1288-R;n:type:ShaderForge.SFN_Add,id:7751,x:34794,y:35069,varname:node_7751,prsc:2|A-5592-OUT,B-2783-OUT;n:type:ShaderForge.SFN_Clamp01,id:659,x:35013,y:35069,varname:node_659,prsc:2|IN-7751-OUT;n:type:ShaderForge.SFN_Multiply,id:6049,x:35216,y:35069,varname:node_6049,prsc:2|A-1775-B,B-659-OUT,C-2936-OUT;n:type:ShaderForge.SFN_Vector1,id:2936,x:35013,y:35223,varname:node_2936,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:1773,x:34728,y:33562,varname:node_1773,prsc:2|IN-5988-OUT;n:type:ShaderForge.SFN_Color,id:5551,x:34728,y:33131,ptovrint:False,ptlb:node_5551,ptin:_node_5551,varname:node_5551,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.2588235,c3:0.8588236,c4:1;n:type:ShaderForge.SFN_Color,id:7181,x:34728,y:33299,ptovrint:False,ptlb:node_71sad81,ptin:_node_71sad81,varname:node_7181,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.02043687,c2:0.880941,c3:0.9264706,c4:1;n:type:ShaderForge.SFN_Lerp,id:8679,x:34966,y:33206,varname:node_8679,prsc:2|A-5551-RGB,B-7181-RGB,T-1773-OUT;n:type:ShaderForge.SFN_Clamp01,id:5019,x:33158,y:32787,varname:node_5019,prsc:2;proporder:7350-595-449-8798-3304-2354-7507-1775-4933-5551-7181;pass:END;sub:END;*/

Shader "Shader Forge/PrizmaSphere" {
    Properties {
        _node_7350 ("node_7350", 2D) = "white" {}
        _speed ("speed", Float ) = 0.5
        _node_449 ("node_449", 2D) = "white" {}
        _CircleThick ("CircleThick", Float ) = 6
        _GlowVal ("GlowVal", Float ) = 0.5
        _CenterGlow ("CenterGlow", Float ) = 2
        _CenterSize ("CenterSize", Float ) = 3
        _node_1775 ("node_1775", 2D) = "white" {}
        _noise ("noise", 2D) = "white" {}
        _node_5551 ("node_5551", Color) = (0,0.2588235,0.8588236,1)
        _node_71sad81 ("node_71sad81", Color) = (0.02043687,0.880941,0.9264706,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_7350; uniform float4 _node_7350_ST;
            uniform float _speed;
            uniform sampler2D _node_449; uniform float4 _node_449_ST;
            uniform float _CircleThick;
            uniform float _GlowVal;
            uniform float _CenterGlow;
            uniform float _CenterSize;
            uniform sampler2D _node_1775; uniform float4 _node_1775_ST;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float4 _node_5551;
            uniform float4 _node_71sad81;
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
                float2 node_7456 = (i.uv0*2.0+-1.0);
                float node_3611 = length(node_7456);
                float4 node_3580 = _Time;
                float4 node_3018 = _Time;
                float2 node_7083 = ((i.uv0*0.333)+node_3018.g*float2(1,1));
                float4 _node_7350_var = tex2D(_node_7350,TRANSFORM_TEX(node_7083, _node_7350));
                float2 node_5785 = node_7456.rg;
                float2 node_4532 = float2(((node_3611*0.01)+(node_3580.g*_speed)),(((_node_7350_var.r*2.0+-1.0)*0.1)+((atan2(node_5785.g,node_5785.r)/6.28318530718)+0.5)));
                float4 _node_449_var = tex2D(_node_449,TRANSFORM_TEX(node_4532, _node_449));
                float cir = node_3611;
                float node_2002 = pow(cir,_CircleThick);
                float node_6167 = saturate((cir*_CenterGlow));
                float node_6846 = 0.5;
                float2 node_2929 = ((i.uv0*_CenterSize)+(-1*((_CenterSize*node_6846)-node_6846)));
                float4 _node_1775_var = tex2D(_node_1775,TRANSFORM_TEX(node_2929, _node_1775));
                float2 node_2391 = (_node_1775_var.rgb.rg*2.0+-1.0);
                float node_5613 = 0.15;
                float2 node_5959 = ((node_2391+(i.uv0+node_3018.g*float2(0.5,1)))*node_5613);
                float4 node_7997 = tex2D(_noise,TRANSFORM_TEX(node_5959, _noise));
                float2 node_9875 = (node_5613*(node_2391+(i.uv0+node_3018.g*float2(1,0.2))));
                float4 node_1288 = tex2D(_noise,TRANSFORM_TEX(node_9875, _noise));
                float node_1773 = saturate(((pow(((_node_449_var.g+(node_2002*_GlowVal)+(_node_449_var.r*node_2002))*node_6167),1.5)+(node_6167*(1.0 - node_6167))+(_node_1775_var.b*saturate(((node_7997.r*node_7997.r*node_7997.r)+(node_1288.r*node_1288.r*node_1288.r)))*0.5))*(1.0 - floor(cir))*2.0));
                float3 emissive = lerp(_node_5551.rgb,_node_71sad81.rgb,node_1773);
                float3 finalColor = emissive;
                return fixed4(finalColor,node_1773);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
