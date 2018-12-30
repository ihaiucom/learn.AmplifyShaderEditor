// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "L02/Hello"
{
	Properties
	{
		_colorA("colorA", Color) = (1,0,0,0)
		_colorB("colorB", Color) = (0,1,0.4206896,0)
		_colorLerp("colorLerp", Range( 0 , 1)) = 0.5
		_somoothness("somoothness", Range( 0 , 1)) = 0
		_specular("specular", Range( 0 , 1)) = 0.5211372
		_normalTexture("normalTexture", 2D) = "white" {}
		_MyColorB("MyColorB", Color) = (1,0,0.2275863,0)
		_MyColorA("MyColorA", Color) = (1,1,1,0)
		_MyFloatB("MyFloatB", Range( 0 , 100)) = 0
		_MyInitB("MyInitB", Int) = 1
		_MyInitA("MyInitA", Int) = 1
		_MyFloatA("MyFloatA", Float) = 0
		_MyVector2("MyVector2", Vector) = (1,2,0,0)
		_MyVector3("MyVector3", Vector) = (1,2,3,0)
		_MyVector4("MyVector4", Vector) = (1,2,3,4)
		_MyTextureSample2DA("MyTextureSample2DA", 2D) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull Back
		CGPROGRAM
		#pragma target 3.0
		#pragma surface surf StandardSpecular keepalpha addshadow fullforwardshadows exclude_path:deferred 
		struct Input
		{
			float2 uv_texcoord;
		};

		uniform float3 _MyVector3;
		uniform float4 _MyVector4;
		uniform half4 _MyColorB;
		uniform float2 _MyVector2;
		uniform sampler2D _normalTexture;
		uniform float4 _normalTexture_ST;
		uniform float4 _colorA;
		uniform float4 _colorB;
		uniform float _colorLerp;
		uniform float4 _MyColorA;
		uniform sampler2D _MyTextureSample2DA;
		uniform float4 _MyTextureSample2DA_ST;
		uniform half _MyFloatA;
		uniform float _MyFloatB;
		uniform int _MyInitA;
		uniform int _MyInitB;
		uniform float _specular;
		uniform float _somoothness;

		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			float2 uv_normalTexture = i.uv_texcoord * _normalTexture_ST.xy + _normalTexture_ST.zw;
			o.Normal = tex2D( _normalTexture, uv_normalTexture ).rgb;
			float4 lerpResult17 = lerp( _colorA , _colorB , _colorLerp);
			float4 albedoOut34 = lerpResult17;
			o.Albedo = albedoOut34.rgb;
			float2 uv_MyTextureSample2DA = i.uv_texcoord * _MyTextureSample2DA_ST.xy + _MyTextureSample2DA_ST.zw;
			float4 lerpResult38 = lerp( _MyColorA , ( tex2D( _MyTextureSample2DA, uv_MyTextureSample2DA ) + float4( 0,0,0,0 ) ) , ( ( _MyFloatA + _MyFloatB ) + ( _MyInitA + _MyInitB + ( 6.28318548202515 * UNITY_PI ) ) ));
			o.Emission = lerpResult38.rgb;
			float3 temp_cast_3 = (_specular).xxx;
			o.Specular = temp_cast_3;
			o.Smoothness = _somoothness;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
	CustomEditor "ASEMaterialInspector"
}
/*ASEBEGIN
Version=15600
103;236;1021;419;1490.637;1575.065;1.730808;True;True
Node;AmplifyShaderEditor.TauNode;50;-611.7743,-329.4091;Float;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;36;-1566,-400;Float;False;909.2446;518.5357;Comment;5;18;12;19;17;34;albedoComment;1,0.2689656,0,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;39;-624.5059,-753.0444;Half;False;Property;_MyFloatA;MyFloatA;11;0;Create;True;0;0;False;0;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;44;-686.191,-655.2604;Float;False;Property;_MyFloatB;MyFloatB;8;0;Create;True;0;0;False;0;0;0;0;100;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;42;-607.55,-560.452;Float;False;Property;_MyInitA;MyInitA;10;0;Create;True;0;0;False;0;1;0;0;1;INT;0
Node;AmplifyShaderEditor.PiNode;49;-552.54,-411.2849;Float;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;47;-612.6014,-481.8485;Float;False;Property;_MyInitB;MyInitB;9;0;Create;True;0;0;True;0;1;0;0;1;INT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;43;-379.1232,-689.5443;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;46;-427.9048,-562.5771;Float;False;3;3;0;INT;0;False;1;INT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;56;-921.5149,-1387.95;Float;True;Property;_MyTextureSample2DA;MyTextureSample2DA;15;0;Create;True;0;0;True;0;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;12;-1486,-352;Float;False;Property;_colorA;colorA;0;0;Create;True;0;0;False;0;1,0,0,0;1,0,0,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;19;-1502,0;Float;False;Property;_colorLerp;colorLerp;2;0;Create;True;0;0;False;0;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;18;-1486,-176;Float;False;Property;_colorB;colorB;1;0;Create;True;0;0;False;0;0,1,0.4206896,0;0,1,0.4206896,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;45;-192.7565,-664.2048;Float;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;37;-214.9429,-1040.197;Float;False;Property;_MyColorA;MyColorA;7;0;Create;True;0;0;False;0;1,1,1,0;1,1,1,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;58;-437.5187,-1085.2;Float;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;17;-1214,-272;Float;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector3Node;53;-872.5316,-664.8364;Float;False;Property;_MyVector3;MyVector3;13;0;Create;True;0;0;True;0;1,2,3;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;25;-244.6998,322.0346;Float;False;Property;_specular;specular;4;0;Create;True;0;0;False;0;0.5211372;0.43;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GlobalArrayNode;41;-313.1147,-462.3401;Float;False;MyGlobalArray;0;1;0;False;2;0;INT;0;False;1;INT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;28;-123.3119,390.8335;Float;True;Property;_normalTexture;normalTexture;5;0;Create;True;0;0;False;0;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;34;-878,-272;Float;False;albedoOut;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;24;-220.1108,394.4544;Float;False;Property;_somoothness;somoothness;3;0;Create;True;0;0;False;0;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;33;-303.1826,-148.3674;Float;False;34;albedoOut;0;1;COLOR;0
Node;AmplifyShaderEditor.Vector4Node;54;-873.1354,-509.0085;Float;False;Property;_MyVector4;MyVector4;14;0;Create;True;0;0;True;0;1,2,3,4;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;52;-883.7051,-917.7697;Float;False;Property;_MyVector2;MyVector2;12;0;Create;True;0;0;True;0;1,2;1,2;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TemplateShaderPropertyNode;51;-562.9133,-244.8917;Float;False;0;0;;Shader;0;5;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Matrix3X3Node;48;-380.2992,-357.1406;Float;False;Constant;_Matrix0;Matrix 0;12;0;Create;True;0;0;False;0;1,0,0,0,1,0,0,0,1;0;1;FLOAT3x3;0
Node;AmplifyShaderEditor.LerpOp;38;57.12463,-622.5536;Float;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;40;-214.1682,-872.465;Half;False;Property;_MyColorB;MyColorB;6;0;Create;True;0;0;True;0;1,0,0.2275863,0;1,1,1,0;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;16;167.58,-106.6498;Float;False;True;2;Float;ASEMaterialInspector;0;0;StandardSpecular;L02/Hello;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;Back;0;False;-1;0;False;-1;False;0;False;-1;0;False;-1;False;0;Opaque;0.5;True;True;0;False;Opaque;AA;Geometry;ForwardOnly;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;True;0;False;-1;False;100;False;-1;127;False;-1;127;False;-1;3;False;-1;2;False;-1;1;False;-1;2;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;3;15;10;25;True;0.5;True;0;1;False;-1;0;False;-1;0;4;False;-1;2;False;-1;1;False;-1;5;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;0;;-1;-1;-1;-1;0;False;0;0;False;-1;-1;0;False;-1;0;0;0;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;49;0;50;0
WireConnection;43;0;39;0
WireConnection;43;1;44;0
WireConnection;46;0;42;0
WireConnection;46;1;47;0
WireConnection;46;2;49;0
WireConnection;45;0;43;0
WireConnection;45;1;46;0
WireConnection;58;0;56;0
WireConnection;17;0;12;0
WireConnection;17;1;18;0
WireConnection;17;2;19;0
WireConnection;34;0;17;0
WireConnection;38;0;37;0
WireConnection;38;1;58;0
WireConnection;38;2;45;0
WireConnection;16;0;33;0
WireConnection;16;1;28;0
WireConnection;16;2;38;0
WireConnection;16;3;25;0
WireConnection;16;4;24;0
ASEEND*/
//CHKSM=B74ECCC2EC458C3073BB5819D93FB6AF9046EB63