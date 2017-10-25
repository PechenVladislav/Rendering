// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34597,y:32689,varname:node_3138,prsc:2|emission-9330-RGB;n:type:ShaderForge.SFN_ViewVector,id:7882,x:32358,y:32609,varname:node_7882,prsc:2;n:type:ShaderForge.SFN_Transform,id:4635,x:32592,y:32592,varname:node_4635,prsc:2,tffrom:0,tfto:2|IN-7882-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8918,x:32592,y:33011,ptovrint:False,ptlb:Depth,ptin:_Depth,varname:node_8918,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_ValueProperty,id:5742,x:32592,y:33095,ptovrint:False,ptlb:Quality,ptin:_Quality,varname:node_5742,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_TexCoord,id:2447,x:32602,y:33182,varname:node_2447,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Code,id:8842,x:32980,y:32861,varname:node_8842,prsc:2,code:dgBpAGUAdwBEAGkAcgAgAD0AIABuAG8AcgBtAGEAbABpAHoAZQAoAHYAaQBlAHcARABpAHIAKQA7AAoACgBmAGwAbwBhAHQAMwAgAHAAIAA9ACAAZgBsAG8AYQB0ADMAKAB1AHYALAAgADAAKQA7AAoAZgBsAG8AYQB0ADMAIABuAGUAdwBWAGkAZQB3ACAAPQAgAG4AbwByAG0AYQBsAGkAegBlACgAdgBpAGUAdwBEAGkAcgAgACoAIAAtADEAKQA7AAoAbgBlAHcAVgBpAGUAdwAuAHoAIAA9ACAAYQBiAHMAKABuAGUAdwBWAGkAZQB3AC4AegApADsACgAKAGYAbABvAGEAdAAgAGQAZQBwAHQAaABCAGkAYQBzACAAPQAgADEAIAAtACAAbgBlAHcAVgBpAGUAdwAuAHoAOwAKAGQAZQBwAHQAaABCAGkAYQBzACAAKgA9ACAAZABlAHAAdABoAEIAaQBhAHMAOwAKAGQAZQBwAHQAaABCAGkAYQBzACAAKgA9ACAAZABlAHAAdABoAEIAaQBhAHMAOwAKAGQAZQBwAHQAaABCAGkAYQBzACAAPQAgADEAIAAtACAAZABlAHAAdABoAEIAaQBhAHMAIAAqACAAZABlAHAAdABoAEIAaQBhAHMAOwAKAAoAbgBlAHcAVgBpAGUAdwAuAHgAeQAgACoAPQAgAGQAZQBwAHQAaABCAGkAYQBzADsACgBuAGUAdwBWAGkAZQB3AC4AeAB5ACAAKgA9ACAAZABlAHAAdABoADsACgAKAGMAbwBuAHMAdAAgAGkAbgB0ACAAYgBpAG4AYQByAHkAUwBlAGEAcgBjAGgAUwB0AGUAcABzACAAPQAgADEAMAA7AAoACgBuAGUAdwBWAGkAZQB3ACAALwA9ACAAbgBlAHcAVgBpAGUAdwAuAHoAIAAqACAAbABpAG4AZQBhAHIAUwBlAGEAcgBjAGgAUwB0AGUAcABzADsACgAKAGkAbgB0ACAAaQA7AAoAZgBvAHIAKABpACAAPQAgADAAOwAgAGkAIAA8ACAAbABpAG4AZQBhAHIAUwBlAGEAcgBjAGgAUwB0AGUAcABzADsAIABpACsAKwApAAoAewAKACAAIAAgAGYAbABvAGEAdAAgAHQAZQB4ACAAPQAgAHQAZQB4ADIARAAoAGgAZQBpAGcAaAB0AE0AYQBwACwAIABwAC4AeAB5ACkALgByADsACgAgACAAIABpAGYAKABwAC4AegAgADwAIAB0AGUAeAApACAAcAAgACsAPQAgAG4AZQB3AFYAaQBlAHcAOwAKAH0ACgAKAGYAbwByACgAaQAgAD0AIAAwADsAIABpACAAPAAgAGIAaQBuAGEAcgB5AFMAZQBhAHIAYwBoAFMAdABlAHAAcwA7ACAAaQArACsAKQAKAHsACgAgACAAIABuAGUAdwBWAGkAZQB3ACAAKgA9ACAAMAAuADUAOwAKACAAIAAgAGYAbABvAGEAdAAgAHQAZQB4ACAAPQAgAHQAZQB4ADIARAAoAGgAZQBpAGcAaAB0AE0AYQBwACwAIABwAC4AeAB5ACkALgByADsACgAgACAAIABpAGYAKABwAC4AegAgADwAIAB0AGUAeAApACAAcAAgACsAPQAgAG4AZQB3AFYAaQBlAHcAOwAKACAAIAAgAGUAbABzAGUAIABwACAALQA9ACAAbgBlAHcAVgBpAGUAdwA7AAkACgB9AAoAcgBlAHQAdQByAG4AIABwADsACgA=,output:2,fname:Relief,width:938,height:562,input:2,input:12,input:0,input:0,input:1,input_1_label:viewDir,input_2_label:heightMap,input_3_label:depth,input_4_label:linearSearchSteps,input_5_label:uv|A-4635-XYZ,B-5250-TEX,C-8918-OUT,D-5742-OUT,E-2447-UVOUT;n:type:ShaderForge.SFN_Tex2dAsset,id:5250,x:32592,y:32805,ptovrint:False,ptlb:node_5250,ptin:_node_5250,varname:node_5250,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:14b321a815e9e37409f6cb137e795aaf,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ComponentMask,id:8688,x:34039,y:32837,varname:node_8688,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8842-OUT;n:type:ShaderForge.SFN_Tex2d,id:9330,x:34263,y:32815,ptovrint:False,ptlb:node_9330,ptin:_node_9330,varname:node_9330,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:14b321a815e9e37409f6cb137e795aaf,ntxv:0,isnm:False|UVIN-8688-OUT;proporder:8918-5742-5250-9330;pass:END;sub:END;*/

Shader "Shader Forge/HeightExperiment" {
    Properties {
        _Depth ("Depth", Float ) = 0.2
        _Quality ("Quality", Float ) = 20
        _node_5250 ("node_5250", 2D) = "white" {}
        _node_9330 ("node_9330", 2D) = "white" {}
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
            uniform float _Depth;
            uniform float _Quality;
            float3 Relief( float3 viewDir , sampler2D heightMap , float depth , float linearSearchSteps , float2 uv ){
            viewDir = normalize(viewDir);
            
            float3 p = float3(uv, 0);
            float3 newView = normalize(viewDir * -1);
            newView.z = abs(newView.z);
            
            float depthBias = 1 - newView.z;
            depthBias *= depthBias;
            depthBias *= depthBias;
            depthBias = 1 - depthBias * depthBias;
            
            newView.xy *= depthBias;
            newView.xy *= depth;
            
            const int binarySearchSteps = 10;
            
            newView /= newView.z * linearSearchSteps;
            
            int i;
            for(i = 0; i < linearSearchSteps; i++)
            {
               float tex = tex2D(heightMap, p.xy).r;
               if(p.z < tex) p += newView;
            }
            
            for(i = 0; i < binarySearchSteps; i++)
            {
               newView *= 0.5;
               float tex = tex2D(heightMap, p.xy).r;
               if(p.z < tex) p += newView;
               else p -= newView;	
            }
            return p;
            
            }
            
            uniform sampler2D _node_5250; uniform float4 _node_5250_ST;
            uniform sampler2D _node_9330; uniform float4 _node_9330_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float2 node_8688 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _node_5250 , _Depth , _Quality , i.uv0 ).rg;
                float4 _node_9330_var = tex2D(_node_9330,TRANSFORM_TEX(node_8688, _node_9330));
                float3 emissive = _node_9330_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
