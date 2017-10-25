// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced '_World2Object' with 'unity_WorldToObject'

Shader "MyShaders/xgmSkin" 
{
  Properties 
  {
    _xgmTex("Texture",2D) = "white" {} 
    _Color ("LogoColor",Color) = (0,0,0,0)
    _SpecColor("Specular Color",Color) = (0,0,0,0) // цвет блика
    _Shininess ("Shinines",Float) = 10 // коэффициент блеска материала
  }

SubShader
 {
   Pass
   {
     Tags{"LightMode"="ForwardBase"} // базовый проход
     Cull Off 

     CGPROGRAM 
     #pragma vertex vert // говорим имя у вертексного шейдера 
     #pragma fragment frag  // говорим имя пиксельного шейдера
     uniform sampler2D _xgmTex;
     uniform float4 _Color;
     uniform float4 _SpecColor;
     uniform float _Shininess;
      struct vertexInput 
      {
        float4 vertex:POSITION;
        float2 uv:TEXCOORD0;
        float3 norm:NORMAL;
      };
      struct vertexOutput
      {
       float4 position:SV_POSITION;
       float2 uv:TEXCOORD0;
       float3 worldNormal:TEXCOORD1;
       float3 worldPos:TEXCOORD2;
      };
      vertexOutput vert(vertexInput v) 
      {
        vertexOutput o; // возвращаемая структура 
        o.position = UnityObjectToClipPos(v.vertex); // переводим координаты из пространства модели в проекционное 
        o.uv = v.uv; // просто передаем uv координаты
        o.worldNormal = mul(v.norm, unity_WorldToObject);
        o.worldPos = mul(unity_ObjectToWorld,v.vertex); // переводим координаты из пространства модели в мировое 
        return o;
      }
 fixed4 frag(vertexOutput v):SV_Target
      {
        fixed4 col = tex2D(_xgmTex,v.uv); // берем цвет из текстуры по UV координатам
        float3 n = normalize(v.worldNormal); // нормализуем вектор нормали 
        float3 viewDir = normalize(_WorldSpaceCameraPos-v.worldPos); // вектор взгляда
        float3 l; // направление света 
        float atten; // коэффициент затенения
        if(_WorldSpaceLightPos0.w == 0)  // Directional light
        {
         l = normalize(_WorldSpaceLightPos0.xyz);
         atten = 1.0; // нет затенения
        }else{                                                  // point/spot light
         l = _WorldSpaceLightPos0.xyz - v.worldPos.xyz;
         atten = 1/length(l);
         l = normalize(l);
        }
        float3 dif = atten*col* max(0.0,dot(n,l)); // рассчитываем цвет освещенного пикселя
        float3 spec = float3(0,0,0);
        if(dot(l,n)>0.0)
        {
         float3 refl = reflect(-l,n);
         spec = atten * _SpecColor * col * pow(max(0.0,dot(refl,viewDir)),_Shininess);
        }
       
        return fixed4(dif+spec,1.0); 
      } 
     ENDCG  

   }

  } 
  Fallback "Diffuse"
 } 