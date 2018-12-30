// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "L02/Hello02"
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
		[NoScaleOffset]_Texture0("Texture 0", 2D) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" }
		Cull Back
		CGPROGRAM
		#pragma target 3.0
		#pragma surface surf Standard keepalpha addshadow fullforwardshadows 
		struct Input
		{
			half filler;
		};

		uniform sampler2D _Texture1;
		uniform sampler2D _Texture0;
		uniform float4 _color2;
		uniform float _Float2;
		uniform int _Int0;
		uniform float4 _color1;
		uniform sampler2D _Texture2;
		uniform float _Float1;
		uniform sampler2D _Texture3;
		uniform float _Float0;
		uniform float _Float3;

		void surf( Input i , inout SurfaceOutputStandard o )
		{
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=15600
44;182;1311;651;616.0654;46.11465;1;True;True
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
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;0,0;Float;False;True;2;Float;ASEMaterialInspector;0;0;Standard;L02/Hello02;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;0;0;False;-1;0;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
ASEEND*/
//CHKSM=0CC26DCDB8A7A994104AE98DFC9CC6EB4AF3CE94