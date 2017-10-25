// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:37503,y:32829,varname:node_3138,prsc:2|emission-215-OUT;n:type:ShaderForge.SFN_TexCoord,id:2390,x:32171,y:32979,varname:node_2390,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:1456,x:32354,y:32979,varname:node_1456,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2390-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:1608,x:32531,y:32979,varname:node_1608,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1456-OUT;n:type:ShaderForge.SFN_ArcTan2,id:4199,x:32772,y:32961,varname:node_4199,prsc:2,attp:2|A-1608-G,B-1608-R;n:type:ShaderForge.SFN_Slider,id:9400,x:32131,y:32655,ptovrint:False,ptlb:MaskSpeed,ptin:_MaskSpeed,varname:node_9400,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.15,max:1;n:type:ShaderForge.SFN_Time,id:6369,x:32209,y:32766,varname:node_6369,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6415,x:32523,y:32722,varname:node_6415,prsc:2|A-9400-OUT,B-6369-T;n:type:ShaderForge.SFN_Frac,id:6717,x:32753,y:32722,varname:node_6717,prsc:2|IN-6415-OUT;n:type:ShaderForge.SFN_Frac,id:6019,x:33241,y:32849,varname:node_6019,prsc:2|IN-1236-OUT;n:type:ShaderForge.SFN_Add,id:1236,x:33027,y:32849,varname:node_1236,prsc:2|A-6717-OUT,B-4199-OUT;n:type:ShaderForge.SFN_Slider,id:5345,x:33027,y:32750,ptovrint:False,ptlb:MaskNumSides,ptin:_MaskNumSides,varname:node_5345,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:4;n:type:ShaderForge.SFN_Round,id:2074,x:33407,y:32700,varname:node_2074,prsc:2|IN-5345-OUT;n:type:ShaderForge.SFN_Multiply,id:4456,x:33611,y:32829,varname:node_4456,prsc:2|A-2074-OUT,B-6019-OUT;n:type:ShaderForge.SFN_Frac,id:3118,x:33824,y:32829,varname:node_3118,prsc:2|IN-4456-OUT;n:type:ShaderForge.SFN_Slider,id:2993,x:33628,y:32738,ptovrint:False,ptlb:MaskDefinition,ptin:_MaskDefinition,varname:node_2993,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:4.452991,max:8;n:type:ShaderForge.SFN_Negate,id:2965,x:33746,y:32561,varname:node_2965,prsc:2|IN-2993-OUT;n:type:ShaderForge.SFN_Vector1,id:1169,x:33746,y:32428,varname:node_1169,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3335,x:33746,y:32493,varname:node_3335,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:309,x:34083,y:32755,varname:node_309,prsc:2|IN-3118-OUT,IMIN-1169-OUT,IMAX-3335-OUT,OMIN-2965-OUT,OMAX-2993-OUT;n:type:ShaderForge.SFN_ArcTan2,id:5293,x:33936,y:33031,varname:node_5293,prsc:2,attp:0|A-1608-G,B-1608-R;n:type:ShaderForge.SFN_Length,id:7243,x:33936,y:33208,varname:node_7243,prsc:2|IN-1608-OUT;n:type:ShaderForge.SFN_Abs,id:1646,x:34283,y:32755,varname:node_1646,prsc:2|IN-309-OUT;n:type:ShaderForge.SFN_OneMinus,id:5050,x:34452,y:32755,varname:node_5050,prsc:2|IN-1646-OUT;n:type:ShaderForge.SFN_Clamp01,id:9019,x:34639,y:32755,varname:node_9019,prsc:2|IN-5050-OUT;n:type:ShaderForge.SFN_Power,id:3150,x:34855,y:32755,varname:node_3150,prsc:2|VAL-9019-OUT,EXP-180-OUT;n:type:ShaderForge.SFN_Vector1,id:180,x:34666,y:32890,varname:node_180,prsc:2,v1:0.83;n:type:ShaderForge.SFN_Slider,id:4108,x:34172,y:32998,ptovrint:False,ptlb:WaveLength,ptin:_WaveLength,varname:node_4108,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:7.420444,max:30;n:type:ShaderForge.SFN_Round,id:3919,x:34529,y:33018,varname:node_3919,prsc:2|IN-4108-OUT;n:type:ShaderForge.SFN_Multiply,id:652,x:34790,y:33151,varname:node_652,prsc:2|A-3919-OUT,B-5293-OUT;n:type:ShaderForge.SFN_Slider,id:5357,x:34206,y:33401,ptovrint:False,ptlb:LinesFluctSpeed,ptin:_LinesFluctSpeed,varname:node_5357,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:-0.5648366,max:1;n:type:ShaderForge.SFN_Time,id:1932,x:34363,y:33256,varname:node_1932,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9344,x:34555,y:33305,varname:node_9344,prsc:2|A-1932-T,B-5357-OUT;n:type:ShaderForge.SFN_Sin,id:3535,x:35211,y:33196,varname:node_3535,prsc:2|IN-9061-OUT;n:type:ShaderForge.SFN_Slider,id:2678,x:35002,y:33092,ptovrint:False,ptlb:Amplitude,ptin:_Amplitude,varname:node_2678,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.07692282,max:1;n:type:ShaderForge.SFN_Add,id:9061,x:35002,y:33196,varname:node_9061,prsc:2|A-652-OUT,B-9344-OUT;n:type:ShaderForge.SFN_RemapRange,id:1218,x:35539,y:33334,varname:node_1218,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7243-OUT;n:type:ShaderForge.SFN_Multiply,id:855,x:35538,y:33113,varname:node_855,prsc:2|A-3150-OUT,B-3535-OUT,C-2678-OUT;n:type:ShaderForge.SFN_Multiply,id:3067,x:35533,y:32995,varname:node_3067,prsc:2|A-3150-OUT,B-3535-OUT,C-669-OUT;n:type:ShaderForge.SFN_Negate,id:669,x:35501,y:32788,varname:node_669,prsc:2|IN-2678-OUT;n:type:ShaderForge.SFN_Add,id:5205,x:35800,y:33000,varname:node_5205,prsc:2|A-3067-OUT,B-1218-OUT;n:type:ShaderForge.SFN_Add,id:5333,x:35800,y:33127,varname:node_5333,prsc:2|A-855-OUT,B-1218-OUT;n:type:ShaderForge.SFN_Abs,id:3402,x:36003,y:33000,varname:node_3402,prsc:2|IN-5205-OUT;n:type:ShaderForge.SFN_Abs,id:5193,x:36003,y:33127,varname:node_5193,prsc:2|IN-5333-OUT;n:type:ShaderForge.SFN_Slider,id:5642,x:35748,y:32892,ptovrint:False,ptlb:Thickness,ptin:_Thickness,varname:node_5642,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.01692308,max:0.1;n:type:ShaderForge.SFN_Divide,id:2402,x:36260,y:32983,varname:node_2402,prsc:2|A-5642-OUT,B-3402-OUT;n:type:ShaderForge.SFN_Divide,id:305,x:36271,y:33136,varname:node_305,prsc:2|A-5642-OUT,B-5193-OUT;n:type:ShaderForge.SFN_Slider,id:7445,x:36110,y:32751,ptovrint:False,ptlb:Sharpness,ptin:_Sharpness,varname:node_7445,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:3.094017,max:8;n:type:ShaderForge.SFN_Power,id:5120,x:36520,y:32967,varname:node_5120,prsc:2|VAL-2402-OUT,EXP-7445-OUT;n:type:ShaderForge.SFN_Power,id:14,x:36520,y:33126,varname:node_14,prsc:2|VAL-305-OUT,EXP-7445-OUT;n:type:ShaderForge.SFN_Color,id:5470,x:36700,y:32806,ptovrint:False,ptlb:Line1Col,ptin:_Line1Col,varname:node_5470,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.8344827,c4:1;n:type:ShaderForge.SFN_Color,id:1828,x:36695,y:33275,ptovrint:False,ptlb:Line2Col,ptin:_Line2Col,varname:node_1828,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.8,c4:1;n:type:ShaderForge.SFN_Multiply,id:1813,x:36906,y:32965,varname:node_1813,prsc:2|A-5470-RGB,B-5120-OUT;n:type:ShaderForge.SFN_Multiply,id:9230,x:36906,y:33133,varname:node_9230,prsc:2|A-1828-RGB,B-14-OUT;n:type:ShaderForge.SFN_Add,id:215,x:37126,y:33057,varname:node_215,prsc:2|A-1813-OUT,B-9230-OUT;proporder:9400-5345-2993-4108-5357-2678-5642-7445-5470-1828;pass:END;sub:END;*/

Shader "Shader Forge/SinCircle" {
    Properties {
        _MaskSpeed ("MaskSpeed", Range(-1, 1)) = 0.15
        _MaskNumSides ("MaskNumSides", Range(1, 4)) = 1
        _MaskDefinition ("MaskDefinition", Range(1, 8)) = 4.452991
        _WaveLength ("WaveLength", Range(0, 30)) = 7.420444
        _LinesFluctSpeed ("LinesFluctSpeed", Range(-1, 1)) = -0.5648366
        _Amplitude ("Amplitude", Range(0, 1)) = 0.07692282
        _Thickness ("Thickness", Range(0.01, 0.1)) = 0.01692308
        _Sharpness ("Sharpness", Range(1, 8)) = 3.094017
        _Line1Col ("Line1Col", Color) = (0,1,0.8344827,1)
        _Line2Col ("Line2Col", Color) = (0,1,0.8,1)
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
            uniform float _MaskSpeed;
            uniform float _MaskNumSides;
            uniform float _MaskDefinition;
            uniform float _WaveLength;
            uniform float _LinesFluctSpeed;
            uniform float _Amplitude;
            uniform float _Thickness;
            uniform float _Sharpness;
            uniform float4 _Line1Col;
            uniform float4 _Line2Col;
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
                float4 node_6369 = _Time;
                float2 node_1608 = (i.uv0*2.0+-1.0).rg;
                float node_1169 = 0.0;
                float node_2965 = (-1*_MaskDefinition);
                float node_3150 = pow(saturate((1.0 - abs((node_2965 + ( (frac((round(_MaskNumSides)*frac((frac((_MaskSpeed*node_6369.g))+((atan2(node_1608.g,node_1608.r)/6.28318530718)+0.5))))) - node_1169) * (_MaskDefinition - node_2965) ) / (1.0 - node_1169))))),0.83);
                float4 node_1932 = _Time;
                float node_3535 = sin(((round(_WaveLength)*atan2(node_1608.g,node_1608.r))+(node_1932.g*_LinesFluctSpeed)));
                float node_1218 = (length(node_1608)*2.0+-1.0);
                float3 emissive = ((_Line1Col.rgb*pow((_Thickness/abs(((node_3150*node_3535*(-1*_Amplitude))+node_1218))),_Sharpness))+(_Line2Col.rgb*pow((_Thickness/abs(((node_3150*node_3535*_Amplitude)+node_1218))),_Sharpness)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
