Shader "Unlit/2 Alpha Blended Textures"
{
	Properties {
        _MainTex ("Base (RGB)", 2D) = "white" {}
        _BlendTex ("Alpha Blended (RGBA) ", 2D) = "white" {}
    }
    SubShader {
        Pass {
            // 绘制基础纹理
            SetTexture [_MainTex] {
                combine one -texture
            }
            // 混合：
            // lerp(previous, texture, texture.a)
            // lerp(_MainTex.rgb, _BlendTex.rgb, _BlendTex.a)
            // _BlendTex.a = 0 显示 _MainTex
            // _BlendTex.a = 1 显示 _BlendTex
            SetTexture [_BlendTex] {
                combine texture lerp (texture) previous
            }
        }
    }
}
