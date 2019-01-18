Shader "Custom/Solid" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
	}
	SubShader
     {
		Tags { "RenderType"="Opaque" }
		LOD 200

        
        Pass 
        { 
            // 注意：传材质球的变量要用方括号[]
            Color [_Color]
        }
	}
	FallBack "Diffuse"
}
