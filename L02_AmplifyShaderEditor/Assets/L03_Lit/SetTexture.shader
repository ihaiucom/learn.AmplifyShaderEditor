Shader "Unlit/SetTexture"
{
	 Properties {
        // 漫反射颜色：这是对象的基色。
        _Color ("Main Color", Color) = (1,1,1,0)
        // 镜面反射颜色：物体镜面反射高光的颜色。
        _SpecColor ("Spec Color", Color) = (1,1,1,1)
        // 光泽度数：高光的锐度，介于0和1之间。在0处，你会得到一个巨大的亮点，看起来很像漫反射光，1点你会得到一个微小的斑点。
        _Shininess ("Shininess", Range (0.01, 1)) = 0.7
        // 自发光颜色：物体未被任何光线击中时的颜色。
        _Emission ("Emmisive Color", Color) = (0,0,0,0)


        _MainTex ("Base (RGB)", 2D) = "white" {}
    }
    SubShader {
        Pass {
            Material {
                // 漫反射颜色：这是对象的基色。
                Diffuse [_Color]
                // 环境颜色：这是对象在照明窗口中设置的环境光照射时所具有的颜色。
                Ambient [_Color]
                // 镜面反射颜色：物体镜面反射高光的颜色。
                Specular [_SpecColor]
                // 光泽度数：高光的锐度，介于0和1之间。在0处，你会得到一个巨大的亮点，看起来很像漫反射光，1点你会得到一个微小的斑点。
                Shininess [_Shininess]
                // 自发光颜色：物体未被任何光线击中时的颜色。
                Emission [_Emission]
            }
            // 光照开关
            Lighting On
            // 高光开关
            SeparateSpecular On

            SetTexture [_MainTex] {
                Combine texture * primary DOUBLE, texture * primary
            }

        }
    }
}
