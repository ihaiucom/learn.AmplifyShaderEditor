// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "L02/Hello03"
{
	Properties
	{
		[HideInInspector]_color2("color2", Color) = (0,0,0,0)
		_color1("color1", Color) = (0,0,0,0)
		[Gamma]_Float0("Float 0", Range( 0 , 1)) = 0
		[Enum(MyEnum_0,0,MyEnum_1,1)]_Float3("Float 3", Float) = 0
		[IntRange]_Float2("Float 2", Range( 0 , 10)) = 0
		[Enum(UnityEngine.Rendering.CullMode)]_Int0("Int 0", Int) = 0
		[Toggle]_Float1("Float 1", Range( 0 , 10)) = 0
		[HDR][Normal]_Texture2("Texture 2", 2D) = "white" {}
		[PerRendererData]_Texture3("Texture 3", 2D) = "white" {}
		[Normal]_Texture1("Texture 1", 2D) = "white" {}
		_Texture0("Texture 0", 2D) = "white" {}
	}
	
	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 100
		CGINCLUDE
		#pragma target 3.0
		ENDCG
		Blend Off
		Cull Back
		ColorMask RGBA
		ZWrite On
		ZTest LEqual
		Offset 0 , 0
		
		

		Pass
		{
			Name "Unlit"
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			

			struct appdata
			{
				float4 vertex : POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				
			};
			
			struct v2f
			{
				float4 vertex : SV_POSITION;
				UNITY_VERTEX_OUTPUT_STEREO
				
			};

			uniform sampler2D _Texture1;
			uniform sampler2D _Texture0;
			uniform float4 _color2;
			uniform float _Float2;
			uniform float4 _color1;
			uniform sampler2D _Texture2;
			uniform float _Float1;
			uniform sampler2D _Texture3;
			uniform float _Float0;
			uniform float _Float3;
			uniform int _Int0;
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				
				
				v.vertex.xyz +=  float3(0,0,0) ;
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}
			
			fixed4 frag (v2f i ) : SV_Target
			{
				fixed4 finalColor;
				
				
				finalColor = fixed4(1,1,1,1);
				return finalColor;
			}
			ENDCG
		}
	}
	CustomEditor "ASEMaterialInspector"
	
	
}
/*ASEBEGIN
Version=15600
44;182;1311;651;616.0162;46.10205;1;True;True
Node;AmplifyShaderEditor.TexturePropertyNode;8;122.2596,-240.8609;Float;True;Property;_Texture1;Texture 1;9;1;[Normal];Create;True;0;0;True;0;None;9a4a55d8d2e54394d97426434477cdcf;False;white;Auto;Texture2D;0;1;SAMPLER2D;0
Node;AmplifyShaderEditor.TexturePropertyNode;7;-103.363,-240.861;Float;True;Property;_Texture0;Texture 0;10;0;Create;True;0;0;True;0;None;None;False;white;Auto;Texture2D;0;1;SAMPLER2D;0
Node;AmplifyShaderEditor.ColorNode;3;-357.3245,-21.94012;Float;False;Property;_color2;color2;0;1;[HideInInspector];Create;True;0;0;True;0;0,0,0,0;1,1,1,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;12;-144.8615,329.87;Float;False;Property;_Float2;Float 2;4;1;[IntRange];Create;True;0;0;True;0;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1;-362.9092,-198.4172;Float;False;Property;_color1;color1;1;0;Create;True;0;0;True;0;0,0,0,0;1,1,1,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;9;362.5649,-236.3261;Float;True;Property;_Texture2;Texture 2;7;2;[HDR];[Normal];Create;True;0;0;True;0;None;9a4a55d8d2e54394d97426434477cdcf;False;white;Auto;Texture2D;0;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;11;-154.8954,240.9987;Float;False;Property;_Float1;Float 1;6;1;[Toggle];Create;True;0;0;True;0;0;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;6;-299.9449,329.897;Float;False;Constant;_Vector0;Vector 0;3;0;Create;True;0;0;False;0;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TexturePropertyNode;10;355.3978,-62.88377;Float;True;Property;_Texture3;Texture 3;8;1;[PerRendererData];Create;True;0;0;True;0;None;9a4a55d8d2e54394d97426434477cdcf;False;white;Auto;Texture2D;0;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;4;-357.5582,142.2505;Float;False;Property;_Float0;Float 0;2;1;[Gamma];Create;True;0;0;True;0;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;13;-127.6607,410.141;Float;False;Property;_Float3;Float 3;3;1;[Enum];Create;True;2;MyEnum_0;0;MyEnum_1;1;0;True;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;5;-317.5821,237.1907;Float;False;Property;_Int0;Int 0;5;1;[Enum];Create;True;0;1;UnityEngine.Rendering.CullMode;True;0;0;0;0;1;INT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;14;0,0;Float;False;True;2;Float;ASEMaterialInspector;0;1;L02/Hello03;0770190933193b94aaa3065e307002fa;0;0;Unlit;2;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;True;0;False;-1;True;True;True;True;True;0;False;-1;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;RenderType=Opaque;True;2;0;False;False;False;False;False;False;False;False;False;False;0;;0;0;Standard;0;2;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0,0,0;False;0
ASEEND*/
//CHKSM=BB0FE818B6304AC6F732C38D34EB23B3651D9307