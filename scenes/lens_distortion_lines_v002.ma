//Maya ASCII 2022 scene
//Name: lens_distortion_lines_v002.ma
//Last modified: Sat, Aug 27, 2022 10:16:26 PM
//Codeset: 1252
requires maya "2022";
requires -nodeType "mmMarkerScale" -nodeType "mmLinePointIntersect" -nodeType "mmLensDeformer"
		 -nodeType "mmLensEvaluate" -nodeType "mmLensModel3de" -nodeType "mmLensModelToggle"
		 -nodeType "mmMarkerShape" -nodeType "mmBundleShape" -nodeType "mmImagePlaneShape"
		 -nodeType "mmLineShape" -nodeType "mmMarkerGroupTransform" -nodeType "mmImagePlaneTransform"
		 -nodeType "mmMarkerTransform" -dataType "MMLensData" "mmSolver" "0.4.0.alpha7";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "F35698F9-4FC2-9023-F2A1-36B823C7708D";
createNode transform -s -n "persp";
	rename -uid "04D12222-4DF0-0E18-E58D-D6ACFD03DA6A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 28 21 28 ;
	setAttr ".r" -type "double3" -27.938352729602379 44.999999999999972 -5.172681101354183e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "77F41764-4723-D9A9-3500-6EA594054C56";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 44.82186966202994;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "FB68BE94-4168-6940-E079-DDAF8CF7151D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4FC92E29-4D0A-AA19-01E6-55AAF3F474ED";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "05BF5B62-4F64-1FCC-B84D-D3ABECBEF5D8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "5198D00E-4512-8C75-C815-85B53F9B5080";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "BF70BE4F-4E1A-AE0C-3E63-4BAF450BBFAD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CFC25E01-42B8-C0DB-836E-9DB1719A9619";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "camera1";
	rename -uid "8D07E313-496F-2187-B648-3D801C6A0A41";
	setAttr ".ro" 2;
createNode camera -n "camera1Shape" -p "camera1";
	rename -uid "C058F0B8-4406-9768-1459-238C3E0156E2";
	addAttr -s false -ci true -sn "ilns" -ln "inLens" -dt "MMLensData";
	addAttr -s false -ci true -sn "olns" -ln "outLens" -dt "MMLensData";
	setAttr -k off ".v";
	setAttr ".cap" -type "double2" 1.4173228346456694 0.79724409448818911 ;
	setAttr ".fl" 24;
	setAttr ".dfg" yes;
	setAttr ".dgc" -type "float3" 0 0 0 ;
	setAttr ".dcf" yes;
createNode mmImagePlaneTransform -n "mmImagePlane1" -p "camera1";
	rename -uid "4944EBE0-4482-B8F3-8D43-B9AFA5F432F6";
	addAttr -ci true -sn "depth" -ln "depth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "focalLength" -ln "focalLength" -dv 35 -min 0.1 -at "double";
	addAttr -ci true -sn "horizontalFilmAperture" -ln "horizontalFilmAperture" -dv 1.4173228346456694 
		-min 0.001 -at "double";
	addAttr -ci true -sn "verticalFilmAperture" -ln "verticalFilmAperture" -dv 0.94488188976377963 
		-min 0.001 -at "double";
	addAttr -ci true -sn "pixelAspect" -ln "pixelAspect" -dv 1 -min 0.001 -at "double";
	addAttr -ci true -sn "horizontalFilmOffset" -ln "horizontalFilmOffset" -min 0 -at "double";
	addAttr -ci true -sn "verticalFilmOffset" -ln "verticalFilmOffset" -min 0 -at "double";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr -k on ".depth" 9000;
	setAttr -k on ".focalLength";
	setAttr -k on ".horizontalFilmAperture";
	setAttr -k on ".verticalFilmAperture";
	setAttr -k on ".pixelAspect";
	setAttr -k on ".horizontalFilmOffset";
	setAttr -k on ".verticalFilmOffset";
createNode mmImagePlaneShape -n "mmImagePlane1Shape" -p "mmImagePlane1";
	rename -uid "8E05B75C-4621-C502-BE4D-E29C765A9C36";
	addAttr -ci true -sn "exposure" -ln "exposure" -smn -5 -smx 5 -at "double";
	addAttr -ci true -sn "gamma" -ln "gamma" -dv 1 -min 0 -smx 3 -at "double";
	addAttr -ci true -uac -sn "colorGain" -ln "colorGain" -at "float3" -nc 3;
	addAttr -ci true -sn "colorGainR" -ln "colorGainR" -dv 1 -min 0 -at "float" -p "colorGain";
	addAttr -ci true -sn "colorGainG" -ln "colorGainG" -dv 1 -min 0 -at "float" -p "colorGain";
	addAttr -ci true -sn "colorGainB" -ln "colorGainB" -dv 1 -min 0 -at "float" -p "colorGain";
	addAttr -ci true -sn "alphaGain" -ln "alphaGain" -dv 1 -min 0 -smx 1 -at "double";
	addAttr -ci true -sn "imageUseAlphaChannel" -ln "imageUseAlphaChannel" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -uac -sn "imageDefaultColor" -ln "imageDefaultColor" -at "float3" 
		-nc 3;
	addAttr -ci true -sn "imageDefaultColorR" -ln "imageDefaultColorR" -min 0 -at "float" 
		-p "imageDefaultColor";
	addAttr -ci true -sn "imageDefaultColorG" -ln "imageDefaultColorG" -min 0 -at "float" 
		-p "imageDefaultColor";
	addAttr -ci true -sn "imageDefaultColorB" -ln "imageDefaultColorB" -min 0 -at "float" 
		-p "imageDefaultColor";
	addAttr -ci true -sn "imageLoadEnable" -ln "imageLoadEnable" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "imageSequenceSlot" -ln "imageSequenceSlot" -min 0 -max 3 -en 
		"main:alternate1:alternate2:alternate3" -at "enum";
	addAttr -ci true -sn "imageSequenceMain" -ln "imageSequenceMain" -nn "Image Sequence (Main)" 
		-dt "string";
	addAttr -ci true -sn "imageSequenceAlternate1" -ln "imageSequenceAlternate1" -nn "Image Sequence (Alt 1)" 
		-dt "string";
	addAttr -ci true -sn "imageSequenceAlternate2" -ln "imageSequenceAlternate2" -nn "Image Sequence (Alt 2)" 
		-dt "string";
	addAttr -ci true -sn "imageSequenceAlternate3" -ln "imageSequenceAlternate3" -nn "Image Sequence (Alt 3)" 
		-dt "string";
	addAttr -ci true -sn "imageSequenceFrame" -ln "imageSequenceFrame" -at "double";
	addAttr -ci true -sn "imageSequenceFirstFrame" -ln "imageSequenceFirstFrame" -nn "First Frame" 
		-at "long";
	addAttr -ci true -sn "imageSequenceFrameOutput" -ln "imageSequenceFrameOutput" -nn "Frame Output" 
		-at "double";
	addAttr -ci true -sn "imageSequenceStartFrame" -ln "imageSequenceStartFrame" -nn "Start Frame" 
		-at "long";
	addAttr -ci true -sn "imageSequenceEndFrame" -ln "imageSequenceEndFrame" -nn "End Frame" 
		-at "long";
	addAttr -ci true -sn "imageSequencePadding" -ln "imageSequencePadding" -nn "Padding" 
		-at "long";
	addAttr -ci true -sn "meshResolution" -ln "meshResolution" -dv 32 -min 1 -max 256 
		-at "long";
	addAttr -s false -ci true -sn "shaderFileNode" -ln "shaderFileNode" -at "message";
	addAttr -s false -ci true -sn "imagePlaneShapeNode" -ln "imagePlaneShapeNode" -at "message";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
	setAttr -l on ".imgwdth" 3888;
	setAttr -l on ".imghght" 2592;
	setAttr -k on ".exposure";
	setAttr -k on ".gamma";
	setAttr -k on ".colorGainR";
	setAttr -k on ".colorGainG";
	setAttr -k on ".colorGainB";
	setAttr -k on ".alphaGain";
	setAttr -k on ".imageUseAlphaChannel";
	setAttr ".imageDefaultColor" -type "float3" 0.30000001 0 0 ;
	setAttr -k on ".imageDefaultColorR";
	setAttr -k on ".imageDefaultColorG";
	setAttr -k on ".imageDefaultColorB";
	setAttr -k on ".imageLoadEnable";
	setAttr ".imageSequenceMain" -type "string" "G:\\My Drive\\Backup\\C_Drive\\Projects\\MatchMove\\tutorials4\\grid_shots\\EF24-105mm_shot05_24mm_classic.jpg";
	setAttr -k on ".imageSequenceFrame";
	setAttr -cb on ".imageSequenceFirstFrame";
	setAttr -k on ".imageSequenceFrameOutput";
	setAttr -l on ".imageSequenceStartFrame";
	setAttr -l on ".imageSequenceEndFrame";
	setAttr -l on ".imageSequencePadding";
	setAttr -k on ".meshResolution";
createNode mesh -n "mmImagePlane1MeshShapeOrig" -p "mmImagePlane1";
	rename -uid "54A7AB67-4ADE-55B7-6430-229DE1F8755D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "mmImagePlane1MeshShape" -p "mmImagePlane1";
	rename -uid "F205E0EE-439D-E90E-D4FD-BCBBC26F86A9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mmMarkerGroupTransform -n "markerGroup1" -p "camera1";
	rename -uid "2AF53641-4FB2-CE4E-A7CC-81B618DB70F9";
	addAttr -ci true -sn "depth" -ln "depth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "overscanX" -ln "overscanX" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "overscanY" -ln "overscanY" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on ".ro";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on ".rax";
	setAttr -l on ".ray";
	setAttr -l on ".raz";
	setAttr -k on ".depth" 2;
	setAttr -k on ".overscanX";
	setAttr -k on ".overscanY";
createNode transform -n "line1_LN" -p "markerGroup1";
	rename -uid "7AFE5FF0-4870-E203-1B84-2CA541231BD3";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
createNode mmLineShape -n "line1_LNShape" -p "line1_LN";
	rename -uid "4D217D8F-4A36-5F2D-0F54-B19C0419394B";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 1 ;
	setAttr ".uoc" 2;
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
	setAttr -s 9 ".objs";
	setAttr -s 9 ".tfmmtx";
createNode mmMarkerTransform -n "marker1_MKR" -p "line1_LN";
	rename -uid "7570B701-4FA2-ADE2-E263-CA90999FF4FC";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" -0.48065327728896645 -0.48304772391493928 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 1.8721913420549796;
	setAttr -l on -k on ".maximumDeviation" 1.8721913420549796;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker1_MKRShape" -p "marker1_MKR";
	rename -uid "9FC1C300-4E5B-E747-FBA2-AFA686C08FD3";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle1_BND" -p "line1_LN";
	rename -uid "5069ADCE-4DE2-2418-D77C-ABBB346C5608";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle1_BNDShape" -p "bundle1_BND";
	rename -uid "0E681EEF-473D-3063-9A00-40A46DF2EA13";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker2_MKR" -p "line1_LN";
	rename -uid "F6A40A77-4CB1-8F8D-16CF-1F86FB4D9E86";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" -0.48306172758636934 0.47692254363378922 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 6.9613539342782094;
	setAttr -l on -k on ".maximumDeviation" 6.9613539342782094;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker2_MKRShape" -p "marker2_MKR";
	rename -uid "97AAAD03-4B7B-2A4E-F5DB-758B1AE0138F";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle2_BND" -p "line1_LN";
	rename -uid "DD2F9AFE-4C9F-3313-B5FA-E59D0869D9DF";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle2_BNDShape" -p "bundle2_BND";
	rename -uid "2A847BEC-4354-5D4F-9B05-36BCFA0D5958";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker3_MKR" -p "line1_LN";
	rename -uid "DB97F0C5-4B70-3FB6-D88C-238E6F9E9E13";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" -0.48557371318660453 -0.0029288441763503504 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 3.1924642696175933;
	setAttr -l on -k on ".maximumDeviation" 3.1924642696175933;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker3_MKRShape" -p "marker3_MKR";
	rename -uid "E7E87803-4E0F-448B-1F60-199AFE37EE6A";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle3_BND" -p "line1_LN";
	rename -uid "3B321303-4610-D1F3-1EB8-52B0735BA069";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle3_BNDShape" -p "bundle3_BND";
	rename -uid "0F4F7457-401A-892B-8B6B-779277587011";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker4_MKR" -p "line1_LN";
	rename -uid "5844D82B-4CF8-4480-E635-6F8BD0D34A77";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" -0.48524322231941508 0.23817209027846917 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 0.001327196693649501;
	setAttr -l on -k on ".maximumDeviation" 0.001327196693649501;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker4_MKRShape" -p "marker4_MKR";
	rename -uid "8BBC2EAB-468A-79A3-DC6D-BBB14D199416";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle4_BND" -p "line1_LN";
	rename -uid "A7C7173F-4C94-CFC7-5BFF-88A2A6E6EE49";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle4_BNDShape" -p "bundle4_BND";
	rename -uid "B9BFEEB1-42B0-01EA-6CC7-20844ECBA093";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker5_MKR" -p "line1_LN";
	rename -uid "F46790C7-4FA1-328B-4888-E08C48396E5A";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" -0.48399422377104589 -0.24441981740764285 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 2.4787734665919472;
	setAttr -l on -k on ".maximumDeviation" 2.4787734665919472;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker5_MKRShape" -p "marker5_MKR";
	rename -uid "17BECFA1-4B63-5284-7732-A8BC72997B5C";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle5_BND" -p "line1_LN";
	rename -uid "A3434FF7-4067-8D3D-0E54-0B95A9CC0C90";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle5_BNDShape" -p "bundle5_BND";
	rename -uid "E0B042F7-4B07-80DE-F82C-929048F6F095";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker6_MKR" -p "line1_LN";
	rename -uid "385361FA-405A-4615-00A7-9785C66BCD7B";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" -0.48247473256427942 -0.36422586025447795 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 0.61763264939664864;
	setAttr -l on -k on ".maximumDeviation" 0.61763264939664864;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker6_MKRShape" -p "marker6_MKR";
	rename -uid "3B5CB8EA-47FD-FA51-E330-3E86AC73DC60";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle6_BND" -p "line1_LN";
	rename -uid "715511DB-43B9-2F43-A159-169FFD37756F";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle6_BNDShape" -p "bundle6_BND";
	rename -uid "181A9CF0-4AF0-DE64-9B53-DA9CA50BC41C";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker7_MKR" -p "line1_LN";
	rename -uid "6B8B7EDA-4524-1D14-0877-07BC94C00C10";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" -0.48506076887499261 -0.12412168496762091 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 3.4071638110949993;
	setAttr -l on -k on ".maximumDeviation" 3.4071638110949993;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker7_MKRShape" -p "marker7_MKR";
	rename -uid "7B3861E4-4E87-8A43-87AC-11A85F252485";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle7_BND" -p "line1_LN";
	rename -uid "8B2E34B7-4E88-8E0D-998C-F8917B2ECE64";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle7_BNDShape" -p "bundle7_BND";
	rename -uid "AADEAE47-4255-260B-D594-A58C189C59E3";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker8_MKR" -p "line1_LN";
	rename -uid "D6C217A2-4C0E-DA51-52AF-F1B959F65759";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" -0.48568526814917751 0.11766635846862182 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 2.1619763351068149;
	setAttr -l on -k on ".maximumDeviation" 2.1619763351068149;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker8_MKRShape" -p "marker8_MKR";
	rename -uid "168A3557-4C43-3BE1-ADBF-B0B1C80C1946";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle8_BND" -p "line1_LN";
	rename -uid "18427ACD-425A-2CE3-E86F-B1B043442C9D";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle8_BNDShape" -p "bundle8_BND";
	rename -uid "5C791D39-40E7-6AE2-EB1A-D3B108D2E2F4";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker9_MKR" -p "line1_LN";
	rename -uid "34E8399B-4BF9-7A01-8327-8DB1AB6635EE";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" -0.48437894800430209 0.35808414196687838 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 3.0231380587813952;
	setAttr -l on -k on ".maximumDeviation" 3.0231380587813952;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker9_MKRShape" -p "marker9_MKR";
	rename -uid "574DB36A-4C82-6222-0061-3BA1618F2BE7";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle9_BND" -p "line1_LN";
	rename -uid "002EF104-44D6-53AA-AF7E-4A8618CF4051";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle9_BNDShape" -p "bundle9_BND";
	rename -uid "8CE0F059-44D5-F998-BD18-A184BAE37045";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "line2_LN" -p "markerGroup1";
	rename -uid "B7308E44-4E92-83B1-3C62-FF9603D31E74";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
createNode mmLineShape -n "line2_LNShape" -p "line2_LN";
	rename -uid "8DC49B8C-4643-9EB7-62F1-0EA9866B33C8";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 1 ;
	setAttr ".uoc" 2;
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
	setAttr -s 9 ".objs";
	setAttr -s 9 ".tfmmtx";
createNode mmMarkerTransform -n "marker10_MKR" -p "line2_LN";
	rename -uid "50905179-4485-5507-4393-4FA8725AC897";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" -0.49610819970106296 -0.48260369024583138 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 10.017899136870859;
	setAttr -l on -k on ".maximumDeviation" 10.017899136870859;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker10_MKRShape" -p "marker10_MKR";
	rename -uid "B420C0C4-4573-DF3B-0FDF-488E53EFEBD4";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle10_BND" -p "line2_LN";
	rename -uid "DD2C528E-402D-06DA-CC54-4B9F36FEAB41";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle10_BNDShape" -p "bundle10_BND";
	rename -uid "2E5D46F9-4D32-D4B3-1461-90AAC0D9BD09";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker11_MKR" -p "line2_LN";
	rename -uid "4263AD10-4C80-90AA-7140-018DE037ED30";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" 0.49489299824892302 -0.47744547913857904 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 2.305121053005422;
	setAttr -l on -k on ".maximumDeviation" 2.305121053005422;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker11_MKRShape" -p "marker11_MKR";
	rename -uid "FA655B5A-4FC1-4C4A-2FD2-8ABD6AD3325D";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle11_BND" -p "line2_LN";
	rename -uid "AC1C2914-4A59-118B-42CB-6B85275851D5";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle11_BNDShape" -p "bundle11_BND";
	rename -uid "D2F37A53-489D-8A32-6A0A-22BBDD907CAE";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker12_MKR" -p "line2_LN";
	rename -uid "28CBE201-4E6A-3C65-8C5C-96B69B2E62F4";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" 0.0001943545052349162 -0.48940736698484399 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 4.6594024664619402;
	setAttr -l on -k on ".maximumDeviation" 4.6594024664619402;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker12_MKRShape" -p "marker12_MKR";
	rename -uid "FF09923A-4235-86A8-3119-1E967FF18241";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle12_BND" -p "line2_LN";
	rename -uid "759135FF-4073-5882-FBCB-FCA8BD4FC7CA";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle12_BNDShape" -p "bundle12_BND";
	rename -uid "E9796C00-44EA-894C-DDFA-AB94C1C67E54";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker13_MKR" -p "line2_LN";
	rename -uid "53FAE89F-47F2-DA0B-F93B-CEBC22FD2C28";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" -0.2436569332321806 -0.48799626443280691 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 0.32647857092227639;
	setAttr -l on -k on ".maximumDeviation" 0.32647857092227639;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker13_MKRShape" -p "marker13_MKR";
	rename -uid "F5F50413-4CC0-0E35-2008-E6B633F657C3";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle13_BND" -p "line2_LN";
	rename -uid "694D3424-475D-87AE-58E1-4DB36F256A33";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle13_BNDShape" -p "bundle13_BND";
	rename -uid "97F44376-42D5-AC77-D97D-598329F4BE7C";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker14_MKR" -p "line2_LN";
	rename -uid "2454D028-4808-BA7F-420C-73AA59B2B568";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" 0.2433108743451852 -0.48565604717727678 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 3.6875547718211839;
	setAttr -l on -k on ".maximumDeviation" 3.6875547718211839;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker14_MKRShape" -p "marker14_MKR";
	rename -uid "8314B290-481B-7244-D24E-9BAFE91D9DC8";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle14_BND" -p "line2_LN";
	rename -uid "7CD6B034-4EC9-9326-DB2C-C196A646CF17";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle14_BNDShape" -p "bundle14_BND";
	rename -uid "65D61070-4F72-54E0-3F0D-61893A334977";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker15_MKR" -p "line2_LN";
	rename -uid "97FA701B-45C3-0266-611B-D9BC1E727973";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" -0.37107113822421534 -0.48579451310607197 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 4.6188143431540665;
	setAttr -l on -k on ".maximumDeviation" 4.6188143431540665;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker15_MKRShape" -p "marker15_MKR";
	rename -uid "A0E8634D-45F3-0CCE-A668-7C876F34A4CC";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle15_BND" -p "line2_LN";
	rename -uid "74CB2A99-43F5-9F6E-CCCC-73A420E17E41";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle15_BNDShape" -p "bundle15_BND";
	rename -uid "B789478B-4FB1-06EA-2734-ECAA1A61C730";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker16_MKR" -p "line2_LN";
	rename -uid "9A0419A6-4750-2CA6-89E1-90AAF83862EF";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" -0.11410020904230882 -0.48956385027820143 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 3.2647608606760397;
	setAttr -l on -k on ".maximumDeviation" 3.2647608606760397;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker16_MKRShape" -p "marker16_MKR";
	rename -uid "15893C41-4413-DBA2-72D4-30B3CA68802B";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle16_BND" -p "line2_LN";
	rename -uid "134FE9AC-4AE8-34FB-5D25-81A74BA86A32";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle16_BNDShape" -p "bundle16_BND";
	rename -uid "DF41A521-4CF7-251A-D0FA-9CA98526D249";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker17_MKR" -p "line2_LN";
	rename -uid "60F8D422-4C60-1DE3-F8B8-C5835A96DE5B";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" 0.13042318226169688 -0.48788605978957594 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 4.7012031536839354;
	setAttr -l on -k on ".maximumDeviation" 4.7012031536839354;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker17_MKRShape" -p "marker17_MKR";
	rename -uid "983D113F-49B6-F6DF-28D1-41BC2F2DCDE7";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle17_BND" -p "line2_LN";
	rename -uid "D1708322-45A9-01F3-22E9-6BBC5C44B6AD";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle17_BNDShape" -p "bundle17_BND";
	rename -uid "BC014407-4A25-C459-622D-C7AD0D5FA99D";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker18_MKR" -p "line2_LN";
	rename -uid "965DCF37-4A21-ACB3-7459-0FB31C10F270";
	addAttr -ci true -k true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -k true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -k true -sn "averageDeviation" -ln "averageDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviation" -ln "maximumDeviation" -dv -1 -min 
		-1 -at "double";
	addAttr -ci true -k true -sn "maximumDeviationFrame" -ln "maximumDeviationFrame" 
		-dv -1 -min -1 -at "long";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	addAttr -ci true -k true -sn "markerUsedHint" -ln "markerUsedHint" -at "long";
	setAttr ".t" -type "double3" 0.37049720008683362 -0.48176337478303721 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -k on ".enable";
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 0.95539185131028226;
	setAttr -l on -k on ".maximumDeviation" 0.95539185131028226;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker18_MKRShape" -p "marker18_MKR";
	rename -uid "5C214609-485B-0263-A438-71B974467FB5";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle18_BND" -p "line2_LN";
	rename -uid "C6BE6655-4296-B49F-CA88-7B84B420E933";
	setAttr ".v" no;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle18_BNDShape" -p "bundle18_BND";
	rename -uid "E7C92A28-4BC1-175B-B73C-6EB243C7C0E7";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6E65537B-447D-73A5-035F-CF8A581F1442";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F0EF36FE-4B6A-6CF7-8770-7EA779E96FFD";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5D681D18-4AEA-82FC-2808-729CFDBF5C78";
createNode displayLayerManager -n "layerManager";
	rename -uid "7BD34C6F-4D90-2A39-BE96-779F3C13431C";
createNode displayLayer -n "defaultLayer";
	rename -uid "E92B017C-49EF-F0B1-4E9E-38BD525C4C6D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5D30F050-4C2C-F26F-4805-74A1E2F4AAF7";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2653B8FD-41A5-706E-52AD-34B4751239CA";
	setAttr ".g" yes;
createNode mmLensModelToggle -n "lensDistortionToggle1";
	rename -uid "81019AB2-46F9-778B-B843-198688F90A75";
createNode polyPlane -n "polyPlane1";
	rename -uid "0EF97884-41DE-973D-1E0F-5B9842CE6E2C";
	setAttr ".ax" -type "double3" 0 0 1 ;
createNode mmLensDeformer -n "mmLensDeformer1";
	rename -uid "96760D23-4D24-64A2-A133-A8A4F8F8BE5F";
createNode mmMarkerScale -n "mmMarkerScale1";
	rename -uid "348F07B5-4993-5BBC-9DFC-EC81FD57FDF4";
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "32640DB0-4699-D877-A005-1FA89B32522F";
	setAttr ".i2" -type "float3" 1 1 -1 ;
createNode place2dTexture -n "mmImagePlane1Shader_place2dTexture";
	rename -uid "F2008D53-4F2C-8C42-AA6A-848A4C6CDD98";
createNode file -n "mmImagePlane1Shader_file";
	rename -uid "00BDE70F-44D4-105B-B1D7-B3BF7EF7DA43";
	setAttr ".ftn" -type "string" "G:/My Drive/Backup/C_Drive/Projects/MatchMove/tutorials4/grid_shots/EF24-105mm_shot05_24mm_classic.jpg";
	setAttr -l on ".io";
	setAttr ".sce" 0;
	setAttr ".ece" 0;
	setAttr ".ft" 0;
	setAttr ".cs" -type "string" "sRGB";
createNode gammaCorrect -n "mmImagePlane1Shader_colorGamma";
	rename -uid "1AD49428-4B2F-5B99-4D96-3985BEFEBE4A";
createNode blendColors -n "mmImagePlane1Shader_alphaChannelBlend";
	rename -uid "4530950A-483F-BCB8-A255-699E184405B4";
createNode reverse -n "mmImagePlane1Shader_imageLoadInvertBoolean";
	rename -uid "7B051463-42CE-E1D3-2B93-F8A5535043E2";
createNode reverse -n "mmImagePlane1Shader_alphaChannelReverse";
	rename -uid "590D7AA3-4F0C-2925-2573-8DB3B15B65C9";
createNode surfaceShader -n "mmImagePlane1Shader";
	rename -uid "56EF421B-494C-C292-3620-F790B5064564";
createNode shadingEngine -n "mmImagePlane1ShaderSG";
	rename -uid "E01F82BF-4A47-2BC7-F283-A6B0A75848A4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "7BA57377-46D5-07EF-C0E6-A8BC04BF4B4A";
createNode mmLensEvaluate -n "mmLensEvaluate1";
	rename -uid "2A98D086-4D2C-BC15-6F62-228EBEA949A0";
createNode timeToUnitConversion -n "timeToUnitConversion1";
	rename -uid "0F125619-4DED-634F-CA02-F1B3D5D71383";
	setAttr ".cf" 0.004;
createNode expression -n "expression1";
	rename -uid "A7CAF0FE-4BBC-63D8-573A-71A47F34D827";
	setAttr -k on ".nds";
	setAttr -s 3 ".in";
	setAttr -s 3 ".in";
	setAttr ".ixp" -type "string" "int $start_frame = .I[0];\nint $first_frame = .I[1];\nint $user_frame = .I[2];\n.O[0] = ($start_frame - $first_frame) + $user_frame;";
createNode mmLinePointIntersect -n "mmLinePointIntersect1";
	rename -uid "00CDE8E2-446D-DDC7-B1FA-42AE52B15A5E";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmLinePointIntersect -n "mmLinePointIntersect2";
	rename -uid "A8C370B2-40B5-BCC7-30C9-098EBFE38948";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmMarkerScale -n "mmMarkerScale2";
	rename -uid "64C513B8-4237-88DF-7F9B-559F67ADC3B1";
	setAttr ".ovrscnmd" 1;
createNode script -n "mmSolver_data_node";
	rename -uid "97FB5DE0-4447-EE43-06E2-F2AC8FA93185";
	addAttr -ci true -sn "mmSolver_data" -ln "mmSolver_data" -dt "string";
	setAttr -l on ".mmSolver_data" -type "string" "{\"active_collection_uid\": \"A99FE17A-43F8-55F3-2B56-A5935501B544\", \"display_object_weight\": true, \"display_object_frame_deviation\": false, \"display_object_average_deviation\": true, \"display_object_maximum_deviation\": false, \"display_attribute_state\": true, \"display_attribute_min_max\": true, \"display_attribute_stiffness\": false, \"display_attribute_smoothness\": false}";
createNode mmLensModel3de -n "lens1";
	rename -uid "872ECB9B-42D4-8311-1C11-2B963B955F39";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_used_hint" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_used_hint" 
		-at "long";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_min_enable" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_min_enable" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_max_enable" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_max_enable" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_min_value" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_min_value" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_max_value" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_max_value" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_used_hint" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_used_hint" 
		-at "long";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_min_enable" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_min_enable" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_max_enable" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_max_enable" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_min_value" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_min_value" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_max_value" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_max_value" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_stiffness_enable" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_stiffness_enable" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_stiffness_weight" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_stiffness_weight" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_stiffness_enable" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_stiffness_enable" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_stiffness_weight" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_stiffness_weight" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_smoothness_enable" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_smoothness_enable" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_smoothness_weight" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_smoothness_weight" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_smoothness_enable" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_smoothness_enable" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_smoothness_weight" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_smoothness_weight" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_previous_value" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_previous_value" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_mean_value" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_mean_value" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_variance_value" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_variance_value" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_previous_value" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_previous_value" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_mean_value" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_mean_value" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_variance_value" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_variance_value" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_smoothness_variance" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_smoothness_variance" 
		-at "double";
	addAttr -ci true -h true -sn "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_smoothness_variance" 
		-ln "aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_smoothness_variance" 
		-at "double";
	setAttr -av ".tdeRadialDeg4_degree2_distortion" 0;
	setAttr -av ".tdeRadialDeg4_degree4_distortion" 0;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_min_value" 
		-1;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_max_value" 
		1;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_min_value" 
		-1;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_max_value" 
		1;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_stiffness_weight" 
		1;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_stiffness_weight" 
		1;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_smoothness_weight" 
		1;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_smoothness_weight" 
		1;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_previous_value" 
		-0.020751195760674249;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_mean_value" 
		-0.020751195760674249;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_variance_value" 
		1.9999990000009999;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_previous_value" 
		0.027018953664290569;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_mean_value" 
		0.027018953664290569;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_variance_value" 
		1.9999990000009999;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree2_distortion_smoothness_variance" 
		1;
	setAttr ".aux_A99FE17A_43F8_55F3_2B56_A5935501B544_tdeRadialDeg4_degree4_distortion_smoothness_variance" 
		1;
createNode mmLinePointIntersect -n "mmLinePointIntersect3";
	rename -uid "A3304DD6-4876-AB11-B9B9-B299D238B3B6";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode objectSet -n "collection1";
	rename -uid "A99FE17A-43F8-55F3-2B56-A5935501B544";
	addAttr -ci true -sn "solver_list" -ln "solver_list" -dt "string";
	addAttr -ci true -sn "solver_results" -ln "solver_results" -dt "string";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -sn "object_toggle_camera" -ln "object_toggle_camera" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "object_toggle_line" -ln "object_toggle_line" -dv 1 -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "object_toggle_marker" -ln "object_toggle_marker" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "object_toggle_bundle" -ln "object_toggle_bundle" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "attribute_toggle_animated" -ln "attribute_toggle_animated" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "attribute_toggle_static" -ln "attribute_toggle_static" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "attribute_toggle_locked" -ln "attribute_toggle_locked" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "solver_tab" -ln "solver_tab" -dt "string";
	addAttr -ci true -sn "solver_range_type" -ln "solver_range_type" -dv 1 -min 0 -max 
		255 -at "byte";
	addAttr -ci true -sn "solver_increment_by_frame" -ln "solver_increment_by_frame" 
		-dv 1 -at "long";
	addAttr -ci true -sn "solver_scene_graph" -ln "solver_scene_graph" -dv 1 -at "long";
	addAttr -ci true -sn "solver_eval_complex_node_graphs" -ln "solver_eval_complex_node_graphs" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "solver_solve_focal_length" -ln "solver_solve_focal_length" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "solver_solve_lens_distortion" -ln "solver_solve_lens_distortion" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "solver_eval_object_relationships" -ln "solver_eval_object_relationships" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "solve_timestamp" -ln "solve_timestamp" -dt "string";
	addAttr -ci true -sn "solve_duration" -ln "solve_duration" -dt "string";
	setAttr ".ihi" 0;
	setAttr -s 20 ".dsm";
	setAttr -s 2 ".dnsm";
	setAttr -l on ".solver_list" -type "string" "[{\"enabled\": true, \"name\": \"6a9cae62-3586-456b-8708-fc90f17f8d5c\", \"use_single_frame\": true, \"single_frame\": 1, \"scene_graph_mode\": 1, \"eval_object_relationships\": false, \"eval_complex_node_graphs\": false, \"solve_focal_length\": true, \"solve_lens_distortion\": true}]";
	setAttr -l on ".solver_results" -type "string" (
		"[[\"success=1\", \"reason_num=1\", \"error_final=21.1831\", \"error_final_average=3.78135\", \"error_final_maximum=13.7171\", \"error_final_minimum=0.591245\", \"iteration_num=4\", \"iteration_function_num=4\", \"iteration_jacobian_num=6\", \"user_interrupted=0\", \"timer_solve=1.3e-05\", \"timer_function=0\", \"timer_jacobian=0\", \"timer_parameter=0\", \"timer_error=0\", \"ticks_solve=47096886\", \"ticks_function=0\", \"ticks_jacobian=0\", \"ticks_parameter=0\", \"ticks_error=0\", \"solve_parameter_list=-0.0207512#0.027019#\", \"solve_error_list=0.952638#4.4498#0.0979229#4.53361#1.36124#0.0953116#0.873741#0.4282#1.90457#3.77886#1.15404#0.00397228#1.90792#4.41765#0.394823#0.440097#1.55983#0.452583#2.10964#0.688652#2.98689#3.93185#5.5045#12.5642#1.62362#0.440557#1.42845#0.615623#1.84846#2.73286#1.14851#9.85518#4.73035#0.532882#0.986042#1.89366#\", \"error_per_marker_per_frame=|camera1|markerGroup1|line2_LN|marker17_MKR#1#4.55063\", \"error_per_marker_per_frame=|camera1|markerGroup1|line2_LN|marker12_MKR#1#4.53467\", \"error_per_marker_per_frame=|camera1|markerGroup1|line2_LN|marker18_MKR#1#1.36457\", \"error_per_marker_per_frame=|camera1|markerGroup1|line1_LN|marker4_MKR#1#0.973025\", \"error_per_marker_per_frame=|camera1|markerGroup1|line1_LN|marker1_MKR#1#4.23169\", \"error_per_marker_per_frame=|camera1|markerGroup1|line1_LN|marker3_MKR#1#1.15405\", \"error_per_marker_per_frame=|camera1|markerGroup1|line2_LN|marker13_MKR#1#4.81204\", \"error_per_marker_per_frame=|camera1|markerGroup1|line1_LN|marker8_MKR#1#0.591245\", \"error_per_marker_per_frame=|camera1|markerGroup1|line1_LN|marker5_MKR#1#1.62416\", \"error_per_marker_per_frame=|camera1|markerGroup1|line1_LN|marker9_MKR#1#2.21919\", \"error_per_marker_per_frame=|camera1|markerGroup1|line1_LN|marker2_MKR#1#4.93771\", \"error_per_marker_per_frame=|camera1|markerGroup1|line2_LN|marker10_MKR#1#13.7171\", \"error_per_marker_per_frame=|camera1|markerGroup1|line1_LN|marker7_MKR#1#1.68233\", \"error_per_marker_per_frame=|camera1|markerGroup1|line1_LN|marker6_MKR#1#1.55546\", \"error_per_marker_per_frame=|camera1|markerGroup1|line2_LN|marker14_MKR#1#3.29929\", \"error_per_marker_per_frame=|camera1|markerGroup1|line2_LN|marker15_MKR#1#9.92188\", \"error_per_marker_per_frame=|camera1|markerGroup1|line2_LN|marker11_MKR#1#4.76027\", \"error_per_marker_per_frame=|camera1|markerGroup1|line2_LN|marker16_MKR#1#2.135\", \"error_per_frame=1#3.78135\"]]");
	setAttr -k on ".deviation";
	setAttr -l on ".object_toggle_camera";
	setAttr -l on ".object_toggle_line";
	setAttr -l on ".object_toggle_marker";
	setAttr -l on ".object_toggle_bundle";
	setAttr -l on ".attribute_toggle_animated";
	setAttr -l on ".attribute_toggle_static";
	setAttr -l on ".attribute_toggle_locked";
	setAttr -l on ".solver_tab" -type "string" "basic";
	setAttr -l on ".solver_range_type" 0;
	setAttr -l on ".solver_increment_by_frame";
	setAttr -l on ".solver_scene_graph";
	setAttr -l on ".solver_eval_complex_node_graphs";
	setAttr -l on ".solver_solve_focal_length";
	setAttr -l on ".solver_solve_lens_distortion";
	setAttr -l on ".solver_eval_object_relationships";
	setAttr -l on ".solve_timestamp" -type "string" "[1661602487.7517464]";
	setAttr -l on ".solve_duration" -type "string" "[0.43781518936157227]";
createNode animCurveTU -n "lens1_tdeRadialDeg4_degree2_distortion";
	rename -uid "7819A561-45A0-3E51-919B-FD8D84DE35D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "lens1_tdeRadialDeg4_degree4_distortion";
	rename -uid "27F01D9E-44FD-21D8-B82A-F5BEC622294A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "marker1_MKR_deviation";
	rename -uid "923B5069-47CB-0947-CA87-E5AEF5545CD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 1.8721913420549796 2 -1;
createNode animCurveTU -n "marker2_MKR_deviation";
	rename -uid "473D6871-4FCD-F868-3156-5EA82159D881";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 6.9613539342782094 2 -1;
createNode animCurveTU -n "marker3_MKR_deviation";
	rename -uid "A85CF809-47CD-3779-EB16-35896249226E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 3.1924642696175933 2 -1;
createNode animCurveTU -n "collection1_deviation";
	rename -uid "89630EEF-470F-1D1C-2CB4-008B7F2E33D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.78135;
createNode mmLinePointIntersect -n "mmLinePointIntersect4";
	rename -uid "56A9FC06-4138-0382-DCD1-65B14B3691E7";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmLinePointIntersect -n "mmLinePointIntersect5";
	rename -uid "25B6BCDF-4BBE-D7CE-E77E-4EAF7A7E0A40";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmLinePointIntersect -n "mmLinePointIntersect6";
	rename -uid "26C7DC13-470C-7939-7E37-2BAA4BF6A8CC";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmLinePointIntersect -n "mmLinePointIntersect7";
	rename -uid "26EAEB9C-42DE-522F-5239-3E8406EA64D2";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmLinePointIntersect -n "mmLinePointIntersect8";
	rename -uid "6D74FAD9-4E1B-2808-2AEB-808645C5F39F";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmLinePointIntersect -n "mmLinePointIntersect9";
	rename -uid "4E07AB2D-4DEB-1E5F-E851-8DB795825602";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode animCurveTU -n "marker4_MKR_deviation";
	rename -uid "9CFFBE2C-445C-5C42-D12C-19A341887823";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 0.001327196693649501 2 -1;
createNode animCurveTU -n "marker5_MKR_deviation";
	rename -uid "F5ACBBD4-47C7-5B83-455D-4CBFB89D6C2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 2.4787734665919472 2 -1;
createNode animCurveTU -n "marker6_MKR_deviation";
	rename -uid "F809E9EA-49F5-FC60-1EBE-888E3EE97140";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 0.61763264939664864 2 -1;
createNode animCurveTU -n "marker7_MKR_deviation";
	rename -uid "81D98726-448D-C839-E79B-9F94FC1E52C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 3.4071638110949993 2 -1;
createNode animCurveTU -n "marker8_MKR_deviation";
	rename -uid "E8AF6BCA-44CA-7DF9-8A77-EA82497CFECE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 2.1619763351068149 2 -1;
createNode animCurveTU -n "marker9_MKR_deviation";
	rename -uid "6145BB50-4D4B-FA9B-1BE7-4A97892F8144";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 3.0231380587813952 2 -1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "534BDB75-4F18-C17C-6EF6-2A8AED0D747B";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n"
		+ "            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlaneDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlaneDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n"
		+ "            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlaneDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1210\n            -height 849\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlaneDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                -pluginObjects \"mmLineDisplayFilter\" 1 \n                -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n                -pluginObjects \"mmBundleDisplayFilter\" 1 \n                -pluginObjects \"mmMarkerDisplayFilter\" 1 \n                -pluginObjects \"mmImagePlaneDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1210\\n    -height 849\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmLineDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmSkyDomeDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmBundleDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmMarkerDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmImagePlaneDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1210\\n    -height 849\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmLineDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmSkyDomeDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmBundleDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmMarkerDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmImagePlaneDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8ACE75D7-4552-6580-AD8A-CCB7E5ED9566";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode mmLinePointIntersect -n "mmLinePointIntersect10";
	rename -uid "96799CB7-42F6-7F64-B579-3288FE249AA7";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmLinePointIntersect -n "mmLinePointIntersect11";
	rename -uid "A96296C2-41E3-8BAF-26E9-EB983A3546DA";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmLinePointIntersect -n "mmLinePointIntersect12";
	rename -uid "DA7FFD44-48F6-EF50-92E6-90AEF5A98994";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmLinePointIntersect -n "mmLinePointIntersect13";
	rename -uid "7000868C-4C4F-9D6C-7211-BEA42CF2A5EA";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmLinePointIntersect -n "mmLinePointIntersect14";
	rename -uid "EDB61E71-4C9E-CB91-9F5D-E6BCD37F97E2";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmLinePointIntersect -n "mmLinePointIntersect15";
	rename -uid "C58015D4-4591-1AE2-C2B4-8BBF7CEBF445";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmLinePointIntersect -n "mmLinePointIntersect16";
	rename -uid "4F83F781-4A14-A051-290D-229B1FA15E95";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmLinePointIntersect -n "mmLinePointIntersect17";
	rename -uid "F1F3B3A5-4642-707D-83F5-DB96FD0CE14D";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode mmLinePointIntersect -n "mmLinePointIntersect18";
	rename -uid "2322BDBC-4408-C8A9-338C-30B42D8DC3B0";
	setAttr ".lnpntaz" -1;
	setAttr ".lnpntbz" -1;
createNode animCurveTU -n "marker10_MKR_deviation";
	rename -uid "D97FD742-4B86-4FF2-1E9C-E284DDDF8746";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 10.017899136870859 2 -1;
createNode animCurveTU -n "marker11_MKR_deviation";
	rename -uid "3E3D7A4B-4A84-CD7E-C08E-BB9CF3ED9019";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 2.305121053005422 2 -1;
createNode animCurveTU -n "marker12_MKR_deviation";
	rename -uid "BEFAF787-4BFB-F6E1-099C-86A9E1715699";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 4.6594024664619402 2 -1;
createNode animCurveTU -n "marker13_MKR_deviation";
	rename -uid "200986F0-4C70-51B4-2A8C-1CB863B183D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 0.32647857092227639 2 -1;
createNode animCurveTU -n "marker14_MKR_deviation";
	rename -uid "0366BCF2-4AEC-DFDF-E4EE-71A2E71E0181";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 3.6875547718211839 2 -1;
createNode animCurveTU -n "marker15_MKR_deviation";
	rename -uid "351BBEBB-4143-534F-B779-B6BEE37A6667";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 4.6188143431540665 2 -1;
createNode animCurveTU -n "marker16_MKR_deviation";
	rename -uid "4CE26982-4372-5581-ACB7-8BB198A913FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 3.2647608606760397 2 -1;
createNode animCurveTU -n "marker17_MKR_deviation";
	rename -uid "60AB4342-483B-A5B0-FD2E-D68E9DDE84EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 4.7012031536839354 2 -1;
createNode animCurveTU -n "marker18_MKR_deviation";
	rename -uid "075D3315-46A8-D18E-0CA4-CCAC38A15120";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 1 0.95539185131028226 2 -1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "1BBAA37B-44EA-F251-99BD-8F9E1EBB4DC8";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -785.71425449280639 -547.61902585862265 ;
	setAttr ".tgi[0].vh" -type "double2" 785.71425449280639 547.61902585862265 ;
	setAttr -s 144 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -2192.857177734375;
	setAttr ".tgi[0].ni[0].y" 2607.142822265625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -1644.2857666015625;
	setAttr ".tgi[0].ni[1].y" 3120;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -1337.142822265625;
	setAttr ".tgi[0].ni[2].y" 3120;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 1092.857177734375;
	setAttr ".tgi[0].ni[3].y" -2814.28564453125;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1092.857177734375;
	setAttr ".tgi[0].ni[4].y" -2554.28564453125;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -1030;
	setAttr ".tgi[0].ni[5].y" 2840;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -415.71429443359375;
	setAttr ".tgi[0].ni[6].y" 3067.142822265625;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -722.85711669921875;
	setAttr ".tgi[0].ni[7].y" 3160;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[8].y" -2808.571533203125;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[9].y" -2910;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[10].y" 1064.2857666015625;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1092.857177734375;
	setAttr ".tgi[0].ni[11].y" 2151.428466796875;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 660;
	setAttr ".tgi[0].ni[12].y" -1322.857177734375;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[13].y" -672.85711669921875;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 660;
	setAttr ".tgi[0].ni[14].y" 2241.428466796875;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 202.85714721679688;
	setAttr ".tgi[0].ni[15].y" 1424.2857666015625;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 1852.857177734375;
	setAttr ".tgi[0].ni[16].y" 2977.142822265625;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1092.857177734375;
	setAttr ".tgi[0].ni[17].y" 1891.4285888671875;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 1962.857177734375;
	setAttr ".tgi[0].ni[18].y" -927.14288330078125;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 660;
	setAttr ".tgi[0].ni[19].y" -1221.4285888671875;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[20].y" -3011.428466796875;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -104.28571319580078;
	setAttr ".tgi[0].ni[21].y" 2354.28564453125;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 1092.857177734375;
	setAttr ".tgi[0].ni[22].y" -1051.4285888671875;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[23].y" -1137.142822265625;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 202.85714721679688;
	setAttr ".tgi[0].ni[24].y" -240;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" -415.71429443359375;
	setAttr ".tgi[0].ni[25].y" 2578.571533203125;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[26].y" 487.14285278320312;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[27].y" -542.85711669921875;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 1852.857177734375;
	setAttr ".tgi[0].ni[28].y" 3078.571533203125;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 660;
	setAttr ".tgi[0].ni[29].y" 2082.857177734375;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 202.85714721679688;
	setAttr ".tgi[0].ni[30].y" 588.5714111328125;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[31].y" 2982.857177734375;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[32].y" -412.85714721679688;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" -485.71429443359375;
	setAttr ".tgi[0].ni[33].y" -82.857139587402344;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 1655.7142333984375;
	setAttr ".tgi[0].ni[34].y" -282.85714721679688;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 202.85714721679688;
	setAttr ".tgi[0].ni[35].y" 252.85714721679688;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[36].y" 747.14288330078125;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" -104.28571319580078;
	setAttr ".tgi[0].ni[37].y" 2570;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 1092.857177734375;
	setAttr ".tgi[0].ni[38].y" -1152.857177734375;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[39].y" 588.5714111328125;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" -1644.2857666015625;
	setAttr ".tgi[0].ni[40].y" 3294.28564453125;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 1852.857177734375;
	setAttr ".tgi[0].ni[41].y" 162.85714721679688;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 1962.857177734375;
	setAttr ".tgi[0].ni[42].y" -797.14288330078125;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 1092.857177734375;
	setAttr ".tgi[0].ni[43].y" -2712.857177734375;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" -415.71429443359375;
	setAttr ".tgi[0].ni[44].y" 2477.142822265625;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 660;
	setAttr ".tgi[0].ni[45].y" 1867.142822265625;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 1852.857177734375;
	setAttr ".tgi[0].ni[46].y" -1018.5714111328125;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 1092.857177734375;
	setAttr ".tgi[0].ni[47].y" 1992.857177734375;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 660;
	setAttr ".tgi[0].ni[48].y" 187.14285278320312;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[49].y" 284.28570556640625;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 660;
	setAttr ".tgi[0].ni[50].y" 961.4285888671875;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 1092.857177734375;
	setAttr ".tgi[0].ni[51].y" -848.5714111328125;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" -2040;
	setAttr ".tgi[0].ni[52].y" 3242.857177734375;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 1092.857177734375;
	setAttr ".tgi[0].ni[53].y" 1041.4285888671875;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 660;
	setAttr ".tgi[0].ni[54].y" 802.85711669921875;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 1092.857177734375;
	setAttr ".tgi[0].ni[55].y" 1358.5714111328125;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 2007.142822265625;
	setAttr ".tgi[0].ni[56].y" -2124.28564453125;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 221.42857360839844;
	setAttr ".tgi[0].ni[57].y" -307.14285278320312;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 1852.857177734375;
	setAttr ".tgi[0].ni[58].y" -160;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 1092.857177734375;
	setAttr ".tgi[0].ni[59].y" 940;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" -415.71429443359375;
	setAttr ".tgi[0].ni[60].y" 2794.28564453125;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[61].y" 182.85714721679688;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 1092.857177734375;
	setAttr ".tgi[0].ni[62].y" 90;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 1092.857177734375;
	setAttr ".tgi[0].ni[63].y" 1257.142822265625;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 221.42857360839844;
	setAttr ".tgi[0].ni[64].y" -177.14285278320312;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 2007.142822265625;
	setAttr ".tgi[0].ni[65].y" -1994.2857666015625;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 1852.857177734375;
	setAttr ".tgi[0].ni[66].y" -1040;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" -2040;
	setAttr ".tgi[0].ni[67].y" 3344.28564453125;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 2007.142822265625;
	setAttr ".tgi[0].ni[68].y" -1864.2857666015625;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 2007.142822265625;
	setAttr ".tgi[0].ni[69].y" -1734.2857666015625;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[70].y" 385.71429443359375;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 2007.142822265625;
	setAttr ".tgi[0].ni[71].y" -1604.2857666015625;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 1092.857177734375;
	setAttr ".tgi[0].ni[72].y" -11.428571701049805;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" -377.14285278320312;
	setAttr ".tgi[0].ni[73].y" 202.85714721679688;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[74].y" -98.571426391601562;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[75].y" -821.4285888671875;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 221.42857360839844;
	setAttr ".tgi[0].ni[76].y" -47.142856597900391;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 1852.857177734375;
	setAttr ".tgi[0].ni[77].y" -888.5714111328125;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[78].y" 21.428571701049805;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 1092.857177734375;
	setAttr ".tgi[0].ni[79].y" 1675.7142333984375;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[80].y" -200;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[81].y" 848.5714111328125;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 1852.857177734375;
	setAttr ".tgi[0].ni[82].y" -910;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 1092.857177734375;
	setAttr ".tgi[0].ni[83].y" 407.14285278320312;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 1092.857177734375;
	setAttr ".tgi[0].ni[84].y" 622.85711669921875;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 1092.857177734375;
	setAttr ".tgi[0].ni[85].y" 1574.2857666015625;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 2007.142822265625;
	setAttr ".tgi[0].ni[86].y" -1474.2857666015625;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 660;
	setAttr ".tgi[0].ni[87].y" 28.571428298950195;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 2007.142822265625;
	setAttr ".tgi[0].ni[88].y" -1344.2857666015625;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 1092.857177734375;
	setAttr ".tgi[0].ni[89].y" 305.71429443359375;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 660;
	setAttr ".tgi[0].ni[90].y" -130;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 2007.142822265625;
	setAttr ".tgi[0].ni[91].y" -1214.2857666015625;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 1092.857177734375;
	setAttr ".tgi[0].ni[92].y" 724.28570556640625;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 1092.857177734375;
	setAttr ".tgi[0].ni[93].y" -227.14285278320312;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" -397.14285278320312;
	setAttr ".tgi[0].ni[94].y" 332.85714721679688;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 221.42857360839844;
	setAttr ".tgi[0].ni[95].y" 82.857139587402344;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[96].y" -1024.2857666015625;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 1092.857177734375;
	setAttr ".tgi[0].ni[97].y" -328.57144165039062;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 660;
	setAttr ".tgi[0].ni[98].y" -802.85711669921875;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 1852.857177734375;
	setAttr ".tgi[0].ni[99].y" -3281.428466796875;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 660;
	setAttr ".tgi[0].ni[100].y" -904.28570556640625;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 1092.857177734375;
	setAttr ".tgi[0].ni[101].y" -2972.857177734375;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 2007.142822265625;
	setAttr ".tgi[0].ni[102].y" -2418.571533203125;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 1092.857177734375;
	setAttr ".tgi[0].ni[103].y" -588.5714111328125;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 1092.857177734375;
	setAttr ".tgi[0].ni[104].y" -2294.28564453125;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[105].y" -922.85711669921875;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 1852.857177734375;
	setAttr ".tgi[0].ni[106].y" -3151.428466796875;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 1092.857177734375;
	setAttr ".tgi[0].ni[107].y" -1514.2857666015625;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 1092.857177734375;
	setAttr ".tgi[0].ni[108].y" -2034.2857666015625;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 2007.142822265625;
	setAttr ".tgi[0].ni[109].y" -2744.28564453125;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 660;
	setAttr ".tgi[0].ni[110].y" -1062.857177734375;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 1852.857177734375;
	setAttr ".tgi[0].ni[111].y" -3021.428466796875;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[112].y" -3277.142822265625;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 1092.857177734375;
	setAttr ".tgi[0].ni[113].y" -1254.2857666015625;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[114].y" -1238.5714111328125;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 660;
	setAttr ".tgi[0].ni[115].y" -1481.4285888671875;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 660;
	setAttr ".tgi[0].ni[116].y" -1798.5714111328125;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 2007.142822265625;
	setAttr ".tgi[0].ni[117].y" -2288.571533203125;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 2007.142822265625;
	setAttr ".tgi[0].ni[118].y" -2614.28564453125;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 1092.857177734375;
	setAttr ".tgi[0].ni[119].y" -1774.2857666015625;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 2007.142822265625;
	setAttr ".tgi[0].ni[120].y" -2484.28564453125;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[121].y" -1358.5714111328125;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 660;
	setAttr ".tgi[0].ni[122].y" -1640;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 1852.857177734375;
	setAttr ".tgi[0].ni[123].y" -2891.428466796875;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[124].y" -1561.4285888671875;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 660;
	setAttr ".tgi[0].ni[125].y" -1957.142822265625;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[126].y" -1974.2857666015625;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 1852.857177734375;
	setAttr ".tgi[0].ni[127].y" -2761.428466796875;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 2007.142822265625;
	setAttr ".tgi[0].ni[128].y" -2354.28564453125;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 1852.857177734375;
	setAttr ".tgi[0].ni[129].y" -2631.428466796875;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 1852.857177734375;
	setAttr ".tgi[0].ni[130].y" -2501.428466796875;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" -104.28571319580078;
	setAttr ".tgi[0].ni[131].y" 2252.857177734375;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 1511.4285888671875;
	setAttr ".tgi[0].ni[132].y" -1460;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 660;
	setAttr ".tgi[0].ni[133].y" -2115.71435546875;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 1852.857177734375;
	setAttr ".tgi[0].ni[134].y" -2371.428466796875;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 1092.857177734375;
	setAttr ".tgi[0].ni[135].y" -950;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 1092.857177734375;
	setAttr ".tgi[0].ni[136].y" -487.14285278320312;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" -415.71429443359375;
	setAttr ".tgi[0].ni[137].y" 2252.857177734375;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 1092.857177734375;
	setAttr ".tgi[0].ni[138].y" -1672.857177734375;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 1092.857177734375;
	setAttr ".tgi[0].ni[139].y" -2452.857177734375;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 1092.857177734375;
	setAttr ".tgi[0].ni[140].y" -1412.857177734375;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 1092.857177734375;
	setAttr ".tgi[0].ni[141].y" -747.14288330078125;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 1092.857177734375;
	setAttr ".tgi[0].ni[142].y" -1932.857177734375;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 1092.857177734375;
	setAttr ".tgi[0].ni[143].y" -2192.857177734375;
	setAttr ".tgi[0].ni[143].nvs" 18304;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 5 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".wsn" -type "string" "ACEScg";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "lens1.olns" "camera1Shape.ilns";
connectAttr "lensDistortionToggle1.olns" "camera1Shape.olns";
connectAttr "camera1Shape.fl" "mmImagePlane1.focalLength";
connectAttr "camera1Shape.hfa" "mmImagePlane1.horizontalFilmAperture";
connectAttr "camera1Shape.vfa" "mmImagePlane1.verticalFilmAperture";
connectAttr "mmImagePlane1Shape.imgpxasp" "mmImagePlane1.pixelAspect";
connectAttr "camera1Shape.hfo" "mmImagePlane1.horizontalFilmOffset";
connectAttr "camera1Shape.vfo" "mmImagePlane1.verticalFilmOffset";
connectAttr "mmMarkerScale1.os" "mmImagePlane1.s";
connectAttr "mmMarkerScale1.otx" "mmImagePlane1.tx" -l on;
connectAttr "mmMarkerScale1.oty" "mmImagePlane1.ty" -l on;
connectAttr "multiplyDivide1.oz" "mmImagePlane1.tz" -l on;
connectAttr "mmLensEvaluate1.outHash" "mmImagePlane1Shape.lnshshcur";
connectAttr "timeToUnitConversion1.o" "mmImagePlane1Shape.imageSequenceFrame";
connectAttr "expression1.out[0]" "mmImagePlane1Shape.imageSequenceFrameOutput" -l
		 on;
connectAttr "mmImagePlane1MeshShape.o" "mmImagePlane1Shape.geond";
connectAttr "mmImagePlane1Shader.oc" "mmImagePlane1Shape.shdnd";
connectAttr "camera1Shape.msg" "mmImagePlane1Shape.camnd";
connectAttr "mmImagePlane1.horizontalFilmAperture" "mmImagePlane1Shape.camwdthin"
		;
connectAttr "mmImagePlane1.verticalFilmAperture" "mmImagePlane1Shape.camhghtin";
connectAttr "mmImagePlane1Shader_file.msg" "mmImagePlane1Shape.shaderFileNode";
connectAttr "polyPlane1.out" "mmImagePlane1MeshShapeOrig.i";
connectAttr "mmLensDeformer1.og[0]" "mmImagePlane1MeshShape.i";
connectAttr "mmMarkerScale2.os" "markerGroup1.s";
connectAttr "mmMarkerScale2.ot" "markerGroup1.t";
connectAttr "line1_LN.enable" "line1_LN.lodv";
connectAttr "marker1_MKR.msg" "line1_LNShape.objs" -na;
connectAttr "marker6_MKR.msg" "line1_LNShape.objs" -na;
connectAttr "marker5_MKR.msg" "line1_LNShape.objs" -na;
connectAttr "marker7_MKR.msg" "line1_LNShape.objs" -na;
connectAttr "marker3_MKR.msg" "line1_LNShape.objs" -na;
connectAttr "marker8_MKR.msg" "line1_LNShape.objs" -na;
connectAttr "marker4_MKR.msg" "line1_LNShape.objs" -na;
connectAttr "marker9_MKR.msg" "line1_LNShape.objs" -na;
connectAttr "marker2_MKR.msg" "line1_LNShape.objs" -na;
connectAttr "marker1_MKR.wm" "line1_LNShape.tfmmtx[0]";
connectAttr "marker6_MKR.wm" "line1_LNShape.tfmmtx[1]";
connectAttr "marker5_MKR.wm" "line1_LNShape.tfmmtx[2]";
connectAttr "marker7_MKR.wm" "line1_LNShape.tfmmtx[3]";
connectAttr "marker3_MKR.wm" "line1_LNShape.tfmmtx[4]";
connectAttr "marker8_MKR.wm" "line1_LNShape.tfmmtx[5]";
connectAttr "marker4_MKR.wm" "line1_LNShape.tfmmtx[6]";
connectAttr "marker9_MKR.wm" "line1_LNShape.tfmmtx[7]";
connectAttr "marker2_MKR.wm" "line1_LNShape.tfmmtx[8]";
connectAttr "line1_LNShape.pim" "line1_LNShape.tfmpinvm";
connectAttr "marker1_MKR_deviation.o" "marker1_MKR.deviation" -l on;
connectAttr "marker1_MKR.enable" "marker1_MKR.lodv";
connectAttr "bundle1_BND.msg" "marker1_MKR.bundle";
connectAttr "camera1Shape.olns" "marker1_MKR.ilns";
connectAttr "mmLinePointIntersect1.opntx" "bundle1_BND.tx";
connectAttr "mmLinePointIntersect1.opnty" "bundle1_BND.ty";
connectAttr "mmLinePointIntersect1.opntz" "bundle1_BND.tz";
connectAttr "marker2_MKR_deviation.o" "marker2_MKR.deviation" -l on;
connectAttr "marker2_MKR.enable" "marker2_MKR.lodv";
connectAttr "bundle2_BND.msg" "marker2_MKR.bundle";
connectAttr "camera1Shape.olns" "marker2_MKR.ilns";
connectAttr "mmLinePointIntersect2.opntx" "bundle2_BND.tx";
connectAttr "mmLinePointIntersect2.opnty" "bundle2_BND.ty";
connectAttr "mmLinePointIntersect2.opntz" "bundle2_BND.tz";
connectAttr "marker3_MKR_deviation.o" "marker3_MKR.deviation" -l on;
connectAttr "marker3_MKR.enable" "marker3_MKR.lodv";
connectAttr "bundle3_BND.msg" "marker3_MKR.bundle";
connectAttr "camera1Shape.olns" "marker3_MKR.ilns";
connectAttr "mmLinePointIntersect3.opntx" "bundle3_BND.tx";
connectAttr "mmLinePointIntersect3.opnty" "bundle3_BND.ty";
connectAttr "mmLinePointIntersect3.opntz" "bundle3_BND.tz";
connectAttr "marker4_MKR_deviation.o" "marker4_MKR.deviation" -l on;
connectAttr "marker4_MKR.enable" "marker4_MKR.lodv";
connectAttr "bundle4_BND.msg" "marker4_MKR.bundle";
connectAttr "camera1Shape.olns" "marker4_MKR.ilns";
connectAttr "mmLinePointIntersect4.opntx" "bundle4_BND.tx";
connectAttr "mmLinePointIntersect4.opnty" "bundle4_BND.ty";
connectAttr "mmLinePointIntersect4.opntz" "bundle4_BND.tz";
connectAttr "marker5_MKR_deviation.o" "marker5_MKR.deviation" -l on;
connectAttr "marker5_MKR.enable" "marker5_MKR.lodv";
connectAttr "bundle5_BND.msg" "marker5_MKR.bundle";
connectAttr "camera1Shape.olns" "marker5_MKR.ilns";
connectAttr "mmLinePointIntersect5.opntx" "bundle5_BND.tx";
connectAttr "mmLinePointIntersect5.opnty" "bundle5_BND.ty";
connectAttr "mmLinePointIntersect5.opntz" "bundle5_BND.tz";
connectAttr "marker6_MKR_deviation.o" "marker6_MKR.deviation" -l on;
connectAttr "marker6_MKR.enable" "marker6_MKR.lodv";
connectAttr "bundle6_BND.msg" "marker6_MKR.bundle";
connectAttr "camera1Shape.olns" "marker6_MKR.ilns";
connectAttr "mmLinePointIntersect6.opntx" "bundle6_BND.tx";
connectAttr "mmLinePointIntersect6.opnty" "bundle6_BND.ty";
connectAttr "mmLinePointIntersect6.opntz" "bundle6_BND.tz";
connectAttr "marker7_MKR_deviation.o" "marker7_MKR.deviation" -l on;
connectAttr "marker7_MKR.enable" "marker7_MKR.lodv";
connectAttr "bundle7_BND.msg" "marker7_MKR.bundle";
connectAttr "camera1Shape.olns" "marker7_MKR.ilns";
connectAttr "mmLinePointIntersect7.opntx" "bundle7_BND.tx";
connectAttr "mmLinePointIntersect7.opnty" "bundle7_BND.ty";
connectAttr "mmLinePointIntersect7.opntz" "bundle7_BND.tz";
connectAttr "marker8_MKR_deviation.o" "marker8_MKR.deviation" -l on;
connectAttr "marker8_MKR.enable" "marker8_MKR.lodv";
connectAttr "bundle8_BND.msg" "marker8_MKR.bundle";
connectAttr "camera1Shape.olns" "marker8_MKR.ilns";
connectAttr "mmLinePointIntersect8.opntx" "bundle8_BND.tx";
connectAttr "mmLinePointIntersect8.opnty" "bundle8_BND.ty";
connectAttr "mmLinePointIntersect8.opntz" "bundle8_BND.tz";
connectAttr "marker9_MKR_deviation.o" "marker9_MKR.deviation" -l on;
connectAttr "marker9_MKR.enable" "marker9_MKR.lodv";
connectAttr "bundle9_BND.msg" "marker9_MKR.bundle";
connectAttr "camera1Shape.olns" "marker9_MKR.ilns";
connectAttr "mmLinePointIntersect9.opntx" "bundle9_BND.tx";
connectAttr "mmLinePointIntersect9.opnty" "bundle9_BND.ty";
connectAttr "mmLinePointIntersect9.opntz" "bundle9_BND.tz";
connectAttr "line2_LN.enable" "line2_LN.lodv";
connectAttr "marker10_MKR.msg" "line2_LNShape.objs" -na;
connectAttr "marker15_MKR.msg" "line2_LNShape.objs" -na;
connectAttr "marker13_MKR.msg" "line2_LNShape.objs" -na;
connectAttr "marker16_MKR.msg" "line2_LNShape.objs" -na;
connectAttr "marker12_MKR.msg" "line2_LNShape.objs" -na;
connectAttr "marker17_MKR.msg" "line2_LNShape.objs" -na;
connectAttr "marker14_MKR.msg" "line2_LNShape.objs" -na;
connectAttr "marker18_MKR.msg" "line2_LNShape.objs" -na;
connectAttr "marker11_MKR.msg" "line2_LNShape.objs" -na;
connectAttr "marker10_MKR.wm" "line2_LNShape.tfmmtx[0]";
connectAttr "marker15_MKR.wm" "line2_LNShape.tfmmtx[1]";
connectAttr "marker13_MKR.wm" "line2_LNShape.tfmmtx[2]";
connectAttr "marker16_MKR.wm" "line2_LNShape.tfmmtx[3]";
connectAttr "marker12_MKR.wm" "line2_LNShape.tfmmtx[4]";
connectAttr "marker17_MKR.wm" "line2_LNShape.tfmmtx[5]";
connectAttr "marker14_MKR.wm" "line2_LNShape.tfmmtx[6]";
connectAttr "marker18_MKR.wm" "line2_LNShape.tfmmtx[7]";
connectAttr "marker11_MKR.wm" "line2_LNShape.tfmmtx[8]";
connectAttr "line2_LNShape.pim" "line2_LNShape.tfmpinvm";
connectAttr "marker10_MKR_deviation.o" "marker10_MKR.deviation" -l on;
connectAttr "marker10_MKR.enable" "marker10_MKR.lodv";
connectAttr "bundle10_BND.msg" "marker10_MKR.bundle";
connectAttr "mmLinePointIntersect10.opntx" "bundle10_BND.tx";
connectAttr "mmLinePointIntersect10.opnty" "bundle10_BND.ty";
connectAttr "mmLinePointIntersect10.opntz" "bundle10_BND.tz";
connectAttr "marker11_MKR_deviation.o" "marker11_MKR.deviation" -l on;
connectAttr "marker11_MKR.enable" "marker11_MKR.lodv";
connectAttr "bundle11_BND.msg" "marker11_MKR.bundle";
connectAttr "mmLinePointIntersect11.opntx" "bundle11_BND.tx";
connectAttr "mmLinePointIntersect11.opnty" "bundle11_BND.ty";
connectAttr "mmLinePointIntersect11.opntz" "bundle11_BND.tz";
connectAttr "marker12_MKR_deviation.o" "marker12_MKR.deviation" -l on;
connectAttr "marker12_MKR.enable" "marker12_MKR.lodv";
connectAttr "bundle12_BND.msg" "marker12_MKR.bundle";
connectAttr "camera1Shape.olns" "marker12_MKR.ilns";
connectAttr "mmLinePointIntersect12.opntx" "bundle12_BND.tx";
connectAttr "mmLinePointIntersect12.opnty" "bundle12_BND.ty";
connectAttr "mmLinePointIntersect12.opntz" "bundle12_BND.tz";
connectAttr "marker13_MKR_deviation.o" "marker13_MKR.deviation" -l on;
connectAttr "marker13_MKR.enable" "marker13_MKR.lodv";
connectAttr "bundle13_BND.msg" "marker13_MKR.bundle";
connectAttr "camera1Shape.olns" "marker13_MKR.ilns";
connectAttr "mmLinePointIntersect13.opntx" "bundle13_BND.tx";
connectAttr "mmLinePointIntersect13.opnty" "bundle13_BND.ty";
connectAttr "mmLinePointIntersect13.opntz" "bundle13_BND.tz";
connectAttr "marker14_MKR_deviation.o" "marker14_MKR.deviation" -l on;
connectAttr "marker14_MKR.enable" "marker14_MKR.lodv";
connectAttr "bundle14_BND.msg" "marker14_MKR.bundle";
connectAttr "camera1Shape.olns" "marker14_MKR.ilns";
connectAttr "mmLinePointIntersect14.opntx" "bundle14_BND.tx";
connectAttr "mmLinePointIntersect14.opnty" "bundle14_BND.ty";
connectAttr "mmLinePointIntersect14.opntz" "bundle14_BND.tz";
connectAttr "marker15_MKR_deviation.o" "marker15_MKR.deviation" -l on;
connectAttr "marker15_MKR.enable" "marker15_MKR.lodv";
connectAttr "bundle15_BND.msg" "marker15_MKR.bundle";
connectAttr "camera1Shape.olns" "marker15_MKR.ilns";
connectAttr "mmLinePointIntersect15.opntx" "bundle15_BND.tx";
connectAttr "mmLinePointIntersect15.opnty" "bundle15_BND.ty";
connectAttr "mmLinePointIntersect15.opntz" "bundle15_BND.tz";
connectAttr "marker16_MKR_deviation.o" "marker16_MKR.deviation" -l on;
connectAttr "marker16_MKR.enable" "marker16_MKR.lodv";
connectAttr "bundle16_BND.msg" "marker16_MKR.bundle";
connectAttr "camera1Shape.olns" "marker16_MKR.ilns";
connectAttr "mmLinePointIntersect16.opntx" "bundle16_BND.tx";
connectAttr "mmLinePointIntersect16.opnty" "bundle16_BND.ty";
connectAttr "mmLinePointIntersect16.opntz" "bundle16_BND.tz";
connectAttr "marker17_MKR_deviation.o" "marker17_MKR.deviation" -l on;
connectAttr "marker17_MKR.enable" "marker17_MKR.lodv";
connectAttr "bundle17_BND.msg" "marker17_MKR.bundle";
connectAttr "camera1Shape.olns" "marker17_MKR.ilns";
connectAttr "mmLinePointIntersect17.opntx" "bundle17_BND.tx";
connectAttr "mmLinePointIntersect17.opnty" "bundle17_BND.ty";
connectAttr "mmLinePointIntersect17.opntz" "bundle17_BND.tz";
connectAttr "marker18_MKR_deviation.o" "marker18_MKR.deviation" -l on;
connectAttr "marker18_MKR.enable" "marker18_MKR.lodv";
connectAttr "bundle18_BND.msg" "marker18_MKR.bundle";
connectAttr "camera1Shape.olns" "marker18_MKR.ilns";
connectAttr "mmLinePointIntersect18.opntx" "bundle18_BND.tx";
connectAttr "mmLinePointIntersect18.opnty" "bundle18_BND.ty";
connectAttr "mmLinePointIntersect18.opntz" "bundle18_BND.tz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mmImagePlane1ShaderSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mmImagePlane1ShaderSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "camera1Shape.ilns" "lensDistortionToggle1.ilns";
connectAttr "mmImagePlane1Shape.meshResolution" "polyPlane1.sw";
connectAttr "mmImagePlane1Shape.meshResolution" "polyPlane1.sh";
connectAttr "mmImagePlane1MeshShapeOrig.w" "mmLensDeformer1.ip[0].ig";
connectAttr "camera1Shape.olns" "mmLensDeformer1.ilns";
connectAttr "mmImagePlane1.focalLength" "mmLensDeformer1.fl";
connectAttr "mmImagePlane1.horizontalFilmAperture" "mmLensDeformer1.fbkw";
connectAttr "mmImagePlane1.verticalFilmAperture" "mmLensDeformer1.fbkh";
connectAttr "mmImagePlane1.pixelAspect" "mmLensDeformer1.pxasp";
connectAttr "mmImagePlane1.horizontalFilmOffset" "mmLensDeformer1.lcox";
connectAttr "mmImagePlane1.verticalFilmOffset" "mmLensDeformer1.lcoy";
connectAttr "mmImagePlane1.depth" "mmMarkerScale1.dpt";
connectAttr "mmImagePlane1.focalLength" "mmMarkerScale1.fl";
connectAttr "mmImagePlane1.horizontalFilmAperture" "mmMarkerScale1.hfa";
connectAttr "mmImagePlane1.verticalFilmAperture" "mmMarkerScale1.vfa";
connectAttr "mmImagePlane1.horizontalFilmOffset" "mmMarkerScale1.hfo";
connectAttr "mmImagePlane1.verticalFilmOffset" "mmMarkerScale1.vfo";
connectAttr "mmMarkerScale1.dpt" "multiplyDivide1.i1z";
connectAttr ":defaultColorMgtGlobals.cme" "mmImagePlane1Shader_file.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "mmImagePlane1Shader_file.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "mmImagePlane1Shader_file.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "mmImagePlane1Shader_file.ws";
connectAttr "mmImagePlane1Shader_imageLoadInvertBoolean.ox" "mmImagePlane1Shader_file.dfl"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.c" "mmImagePlane1Shader_file.c";
connectAttr "mmImagePlane1Shader_place2dTexture.tf" "mmImagePlane1Shader_file.tf"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.rf" "mmImagePlane1Shader_file.rf"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.mu" "mmImagePlane1Shader_file.mu"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.mv" "mmImagePlane1Shader_file.mv"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.s" "mmImagePlane1Shader_file.s";
connectAttr "mmImagePlane1Shader_place2dTexture.wu" "mmImagePlane1Shader_file.wu"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.wv" "mmImagePlane1Shader_file.wv"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.re" "mmImagePlane1Shader_file.re"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.of" "mmImagePlane1Shader_file.of"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.r" "mmImagePlane1Shader_file.ro"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.n" "mmImagePlane1Shader_file.n";
connectAttr "mmImagePlane1Shader_place2dTexture.vt1" "mmImagePlane1Shader_file.vt1"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.vt2" "mmImagePlane1Shader_file.vt2"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.vt3" "mmImagePlane1Shader_file.vt3"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.vc1" "mmImagePlane1Shader_file.vc1"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.o" "mmImagePlane1Shader_file.uv"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.ofs" "mmImagePlane1Shader_file.fs"
		;
connectAttr "mmImagePlane1Shape.exposure" "mmImagePlane1Shader_file.exp";
connectAttr "mmImagePlane1Shape.colorGain" "mmImagePlane1Shader_file.cg";
connectAttr "mmImagePlane1Shape.alphaGain" "mmImagePlane1Shader_file.ag";
connectAttr "mmImagePlane1Shape.imageDefaultColor" "mmImagePlane1Shader_file.dc"
		;
connectAttr "mmImagePlane1Shape.imageSequenceFrameOutput" "mmImagePlane1Shader_file.fe"
		 -l on;
connectAttr "mmImagePlane1Shader_file.oc" "mmImagePlane1Shader_colorGamma.v";
connectAttr "mmImagePlane1Shape.gamma" "mmImagePlane1Shader_colorGamma.gx";
connectAttr "mmImagePlane1Shape.gamma" "mmImagePlane1Shader_colorGamma.gy";
connectAttr "mmImagePlane1Shape.gamma" "mmImagePlane1Shader_colorGamma.gz";
connectAttr "mmImagePlane1Shader_alphaChannelReverse.o" "mmImagePlane1Shader_alphaChannelBlend.c2"
		;
connectAttr "mmImagePlane1Shader_file.ot" "mmImagePlane1Shader_alphaChannelBlend.c1"
		;
connectAttr "mmImagePlane1Shape.imageUseAlphaChannel" "mmImagePlane1Shader_alphaChannelBlend.b"
		;
connectAttr "mmImagePlane1Shape.imageLoadEnable" "mmImagePlane1Shader_imageLoadInvertBoolean.ix"
		;
connectAttr "mmImagePlane1Shape.alphaGain" "mmImagePlane1Shader_alphaChannelReverse.ix"
		;
connectAttr "mmImagePlane1Shape.alphaGain" "mmImagePlane1Shader_alphaChannelReverse.iy"
		;
connectAttr "mmImagePlane1Shape.alphaGain" "mmImagePlane1Shader_alphaChannelReverse.iz"
		;
connectAttr "mmImagePlane1Shader_colorGamma.o" "mmImagePlane1Shader.oc";
connectAttr "mmImagePlane1Shader_alphaChannelBlend.op" "mmImagePlane1Shader.ot";
connectAttr "mmImagePlane1Shader.oc" "mmImagePlane1ShaderSG.ss";
connectAttr "mmImagePlane1MeshShape.iog" "mmImagePlane1ShaderSG.dsm" -na;
connectAttr "mmImagePlane1ShaderSG.msg" "materialInfo1.sg";
connectAttr "mmImagePlane1Shader.msg" "materialInfo1.m";
connectAttr "mmImagePlane1Shader.msg" "materialInfo1.t" -na;
connectAttr "camera1Shape.olns" "mmLensEvaluate1.ilns";
connectAttr ":time1.o" "timeToUnitConversion1.i";
connectAttr "mmImagePlane1Shape.imageSequenceStartFrame" "expression1.in[0]";
connectAttr "mmImagePlane1Shape.imageSequenceFirstFrame" "expression1.in[1]";
connectAttr "mmImagePlane1Shape.imageSequenceFrame" "expression1.in[2]";
connectAttr "line1_LNShape.opax" "mmLinePointIntersect1.lnpntax";
connectAttr "line1_LNShape.opay" "mmLinePointIntersect1.lnpntay";
connectAttr "line1_LNShape.opbx" "mmLinePointIntersect1.lnpntbx";
connectAttr "line1_LNShape.opby" "mmLinePointIntersect1.lnpntby";
connectAttr "marker1_MKR.tx" "mmLinePointIntersect1.inpntx";
connectAttr "marker1_MKR.ty" "mmLinePointIntersect1.inpnty";
connectAttr "marker1_MKR.tz" "mmLinePointIntersect1.inpntz";
connectAttr "line1_LNShape.opax" "mmLinePointIntersect2.lnpntax";
connectAttr "line1_LNShape.opay" "mmLinePointIntersect2.lnpntay";
connectAttr "line1_LNShape.opbx" "mmLinePointIntersect2.lnpntbx";
connectAttr "line1_LNShape.opby" "mmLinePointIntersect2.lnpntby";
connectAttr "marker2_MKR.tx" "mmLinePointIntersect2.inpntx";
connectAttr "marker2_MKR.ty" "mmLinePointIntersect2.inpnty";
connectAttr "marker2_MKR.tz" "mmLinePointIntersect2.inpntz";
connectAttr "markerGroup1.depth" "mmMarkerScale2.dpt";
connectAttr "markerGroup1.overscanX" "mmMarkerScale2.ovrscninvx";
connectAttr "markerGroup1.overscanY" "mmMarkerScale2.ovrscninvy";
connectAttr "camera1Shape.fl" "mmMarkerScale2.fl";
connectAttr "camera1Shape.cap" "mmMarkerScale2.cap";
connectAttr "camera1Shape.fio" "mmMarkerScale2.fio";
connectAttr "lens1_tdeRadialDeg4_degree2_distortion.o" "lens1.tdeRadialDeg4_degree2_distortion"
		;
connectAttr "lens1_tdeRadialDeg4_degree4_distortion.o" "lens1.tdeRadialDeg4_degree4_distortion"
		;
connectAttr "line1_LNShape.opax" "mmLinePointIntersect3.lnpntax";
connectAttr "line1_LNShape.opay" "mmLinePointIntersect3.lnpntay";
connectAttr "line1_LNShape.opbx" "mmLinePointIntersect3.lnpntbx";
connectAttr "line1_LNShape.opby" "mmLinePointIntersect3.lnpntby";
connectAttr "marker3_MKR.tx" "mmLinePointIntersect3.inpntx";
connectAttr "marker3_MKR.ty" "mmLinePointIntersect3.inpnty";
connectAttr "marker3_MKR.tz" "mmLinePointIntersect3.inpntz";
connectAttr "collection1_deviation.o" "collection1.deviation" -l on;
connectAttr "line1_LN.iog" "collection1.dsm" -na;
connectAttr "marker1_MKR.iog" "collection1.dsm" -na;
connectAttr "marker3_MKR.iog" "collection1.dsm" -na;
connectAttr "marker2_MKR.iog" "collection1.dsm" -na;
connectAttr "marker4_MKR.iog" "collection1.dsm" -na;
connectAttr "marker5_MKR.iog" "collection1.dsm" -na;
connectAttr "marker9_MKR.iog" "collection1.dsm" -na;
connectAttr "marker8_MKR.iog" "collection1.dsm" -na;
connectAttr "marker7_MKR.iog" "collection1.dsm" -na;
connectAttr "marker6_MKR.iog" "collection1.dsm" -na;
connectAttr "marker11_MKR.iog" "collection1.dsm" -na;
connectAttr "marker10_MKR.iog" "collection1.dsm" -na;
connectAttr "line2_LN.iog" "collection1.dsm" -na;
connectAttr "marker12_MKR.iog" "collection1.dsm" -na;
connectAttr "marker14_MKR.iog" "collection1.dsm" -na;
connectAttr "marker13_MKR.iog" "collection1.dsm" -na;
connectAttr "marker18_MKR.iog" "collection1.dsm" -na;
connectAttr "marker17_MKR.iog" "collection1.dsm" -na;
connectAttr "marker16_MKR.iog" "collection1.dsm" -na;
connectAttr "marker15_MKR.iog" "collection1.dsm" -na;
connectAttr "lens1.tdeRadialDeg4_degree4_distortion" "collection1.dnsm" -na;
connectAttr "lens1.tdeRadialDeg4_degree2_distortion" "collection1.dnsm" -na;
connectAttr "line1_LNShape.opax" "mmLinePointIntersect4.lnpntax";
connectAttr "line1_LNShape.opay" "mmLinePointIntersect4.lnpntay";
connectAttr "line1_LNShape.opbx" "mmLinePointIntersect4.lnpntbx";
connectAttr "line1_LNShape.opby" "mmLinePointIntersect4.lnpntby";
connectAttr "marker4_MKR.tx" "mmLinePointIntersect4.inpntx";
connectAttr "marker4_MKR.ty" "mmLinePointIntersect4.inpnty";
connectAttr "marker4_MKR.tz" "mmLinePointIntersect4.inpntz";
connectAttr "line1_LNShape.opax" "mmLinePointIntersect5.lnpntax";
connectAttr "line1_LNShape.opay" "mmLinePointIntersect5.lnpntay";
connectAttr "line1_LNShape.opbx" "mmLinePointIntersect5.lnpntbx";
connectAttr "line1_LNShape.opby" "mmLinePointIntersect5.lnpntby";
connectAttr "marker5_MKR.tx" "mmLinePointIntersect5.inpntx";
connectAttr "marker5_MKR.ty" "mmLinePointIntersect5.inpnty";
connectAttr "marker5_MKR.tz" "mmLinePointIntersect5.inpntz";
connectAttr "line1_LNShape.opax" "mmLinePointIntersect6.lnpntax";
connectAttr "line1_LNShape.opay" "mmLinePointIntersect6.lnpntay";
connectAttr "line1_LNShape.opbx" "mmLinePointIntersect6.lnpntbx";
connectAttr "line1_LNShape.opby" "mmLinePointIntersect6.lnpntby";
connectAttr "marker6_MKR.tx" "mmLinePointIntersect6.inpntx";
connectAttr "marker6_MKR.ty" "mmLinePointIntersect6.inpnty";
connectAttr "marker6_MKR.tz" "mmLinePointIntersect6.inpntz";
connectAttr "line1_LNShape.opax" "mmLinePointIntersect7.lnpntax";
connectAttr "line1_LNShape.opay" "mmLinePointIntersect7.lnpntay";
connectAttr "line1_LNShape.opbx" "mmLinePointIntersect7.lnpntbx";
connectAttr "line1_LNShape.opby" "mmLinePointIntersect7.lnpntby";
connectAttr "marker7_MKR.tx" "mmLinePointIntersect7.inpntx";
connectAttr "marker7_MKR.ty" "mmLinePointIntersect7.inpnty";
connectAttr "marker7_MKR.tz" "mmLinePointIntersect7.inpntz";
connectAttr "line1_LNShape.opax" "mmLinePointIntersect8.lnpntax";
connectAttr "line1_LNShape.opay" "mmLinePointIntersect8.lnpntay";
connectAttr "line1_LNShape.opbx" "mmLinePointIntersect8.lnpntbx";
connectAttr "line1_LNShape.opby" "mmLinePointIntersect8.lnpntby";
connectAttr "marker8_MKR.tx" "mmLinePointIntersect8.inpntx";
connectAttr "marker8_MKR.ty" "mmLinePointIntersect8.inpnty";
connectAttr "marker8_MKR.tz" "mmLinePointIntersect8.inpntz";
connectAttr "line1_LNShape.opax" "mmLinePointIntersect9.lnpntax";
connectAttr "line1_LNShape.opay" "mmLinePointIntersect9.lnpntay";
connectAttr "line1_LNShape.opbx" "mmLinePointIntersect9.lnpntbx";
connectAttr "line1_LNShape.opby" "mmLinePointIntersect9.lnpntby";
connectAttr "marker9_MKR.tx" "mmLinePointIntersect9.inpntx";
connectAttr "marker9_MKR.ty" "mmLinePointIntersect9.inpnty";
connectAttr "marker9_MKR.tz" "mmLinePointIntersect9.inpntz";
connectAttr "line2_LNShape.opax" "mmLinePointIntersect10.lnpntax";
connectAttr "line2_LNShape.opay" "mmLinePointIntersect10.lnpntay";
connectAttr "line2_LNShape.opbx" "mmLinePointIntersect10.lnpntbx";
connectAttr "line2_LNShape.opby" "mmLinePointIntersect10.lnpntby";
connectAttr "marker10_MKR.tx" "mmLinePointIntersect10.inpntx";
connectAttr "marker10_MKR.ty" "mmLinePointIntersect10.inpnty";
connectAttr "marker10_MKR.tz" "mmLinePointIntersect10.inpntz";
connectAttr "line2_LNShape.opax" "mmLinePointIntersect11.lnpntax";
connectAttr "line2_LNShape.opay" "mmLinePointIntersect11.lnpntay";
connectAttr "line2_LNShape.opbx" "mmLinePointIntersect11.lnpntbx";
connectAttr "line2_LNShape.opby" "mmLinePointIntersect11.lnpntby";
connectAttr "marker11_MKR.tx" "mmLinePointIntersect11.inpntx";
connectAttr "marker11_MKR.ty" "mmLinePointIntersect11.inpnty";
connectAttr "marker11_MKR.tz" "mmLinePointIntersect11.inpntz";
connectAttr "line2_LNShape.opax" "mmLinePointIntersect12.lnpntax";
connectAttr "line2_LNShape.opay" "mmLinePointIntersect12.lnpntay";
connectAttr "line2_LNShape.opbx" "mmLinePointIntersect12.lnpntbx";
connectAttr "line2_LNShape.opby" "mmLinePointIntersect12.lnpntby";
connectAttr "marker12_MKR.tx" "mmLinePointIntersect12.inpntx";
connectAttr "marker12_MKR.ty" "mmLinePointIntersect12.inpnty";
connectAttr "marker12_MKR.tz" "mmLinePointIntersect12.inpntz";
connectAttr "line2_LNShape.opax" "mmLinePointIntersect13.lnpntax";
connectAttr "line2_LNShape.opay" "mmLinePointIntersect13.lnpntay";
connectAttr "line2_LNShape.opbx" "mmLinePointIntersect13.lnpntbx";
connectAttr "line2_LNShape.opby" "mmLinePointIntersect13.lnpntby";
connectAttr "marker13_MKR.tx" "mmLinePointIntersect13.inpntx";
connectAttr "marker13_MKR.ty" "mmLinePointIntersect13.inpnty";
connectAttr "marker13_MKR.tz" "mmLinePointIntersect13.inpntz";
connectAttr "line2_LNShape.opax" "mmLinePointIntersect14.lnpntax";
connectAttr "line2_LNShape.opay" "mmLinePointIntersect14.lnpntay";
connectAttr "line2_LNShape.opbx" "mmLinePointIntersect14.lnpntbx";
connectAttr "line2_LNShape.opby" "mmLinePointIntersect14.lnpntby";
connectAttr "marker14_MKR.tx" "mmLinePointIntersect14.inpntx";
connectAttr "marker14_MKR.ty" "mmLinePointIntersect14.inpnty";
connectAttr "marker14_MKR.tz" "mmLinePointIntersect14.inpntz";
connectAttr "line2_LNShape.opax" "mmLinePointIntersect15.lnpntax";
connectAttr "line2_LNShape.opay" "mmLinePointIntersect15.lnpntay";
connectAttr "line2_LNShape.opbx" "mmLinePointIntersect15.lnpntbx";
connectAttr "line2_LNShape.opby" "mmLinePointIntersect15.lnpntby";
connectAttr "marker15_MKR.tx" "mmLinePointIntersect15.inpntx";
connectAttr "marker15_MKR.ty" "mmLinePointIntersect15.inpnty";
connectAttr "marker15_MKR.tz" "mmLinePointIntersect15.inpntz";
connectAttr "line2_LNShape.opax" "mmLinePointIntersect16.lnpntax";
connectAttr "line2_LNShape.opay" "mmLinePointIntersect16.lnpntay";
connectAttr "line2_LNShape.opbx" "mmLinePointIntersect16.lnpntbx";
connectAttr "line2_LNShape.opby" "mmLinePointIntersect16.lnpntby";
connectAttr "marker16_MKR.tx" "mmLinePointIntersect16.inpntx";
connectAttr "marker16_MKR.ty" "mmLinePointIntersect16.inpnty";
connectAttr "marker16_MKR.tz" "mmLinePointIntersect16.inpntz";
connectAttr "line2_LNShape.opax" "mmLinePointIntersect17.lnpntax";
connectAttr "line2_LNShape.opay" "mmLinePointIntersect17.lnpntay";
connectAttr "line2_LNShape.opbx" "mmLinePointIntersect17.lnpntbx";
connectAttr "line2_LNShape.opby" "mmLinePointIntersect17.lnpntby";
connectAttr "marker17_MKR.tx" "mmLinePointIntersect17.inpntx";
connectAttr "marker17_MKR.ty" "mmLinePointIntersect17.inpnty";
connectAttr "marker17_MKR.tz" "mmLinePointIntersect17.inpntz";
connectAttr "line2_LNShape.opax" "mmLinePointIntersect18.lnpntax";
connectAttr "line2_LNShape.opay" "mmLinePointIntersect18.lnpntay";
connectAttr "line2_LNShape.opbx" "mmLinePointIntersect18.lnpntbx";
connectAttr "line2_LNShape.opby" "mmLinePointIntersect18.lnpntby";
connectAttr "marker18_MKR.tx" "mmLinePointIntersect18.inpntx";
connectAttr "marker18_MKR.ty" "mmLinePointIntersect18.inpnty";
connectAttr "marker18_MKR.tz" "mmLinePointIntersect18.inpntz";
connectAttr "camera1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "lensDistortionToggle1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "camera1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "mmMarkerScale1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "polyPlane1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "mmImagePlane1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "mmImagePlane1MeshShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "mmLensDeformer1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "mmImagePlane1MeshShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "bundle3_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "line1_LN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "bundle1_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "mmImagePlane1Shader_alphaChannelReverse.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "marker1_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "mmLinePointIntersect1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "line1_LNShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "markerGroup1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "bundle2_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "marker3_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "mmImagePlane1Shader_file.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "multiplyDivide1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "mmImagePlane1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "mmImagePlane1Shader_colorGamma.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "mmImagePlane1Shader.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "line2_LNShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn";
connectAttr "mmLensEvaluate1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "marker2_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn";
connectAttr "bundle2_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "expression1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "mmLinePointIntersect2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "mmImagePlane1Shader_imageLoadInvertBoolean.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "mmMarkerScale2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn";
connectAttr "bundle1_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "mmSolver_data_node.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "marker2_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "mmImagePlane1Shader_place2dTexture.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "line2_LN.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn";
connectAttr "marker3_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn";
connectAttr "mmImagePlane1Shader_alphaChannelBlend.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn"
		;
connectAttr "marker1_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn";
connectAttr "lens1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn";
connectAttr "mmImagePlane1ShaderSG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "bundle3_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "mmLinePointIntersect3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "timeToUnitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "mmLinePointIntersect7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "bundle5_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "marker1_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "mmLinePointIntersect6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn"
		;
connectAttr "marker5_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn";
connectAttr "mmLinePointIntersect5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "bundle10_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn";
connectAttr "lens1_tdeRadialDeg4_degree4_distortion.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "marker5_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "mmLinePointIntersect4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "marker7_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "marker9_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "marker10_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "collection1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn";
connectAttr "bundle4_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn";
connectAttr "marker3_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "marker4_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn";
connectAttr "marker8_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "bundle5_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn";
connectAttr "bundle11_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "bundle6_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "marker4_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "lens1_tdeRadialDeg4_degree2_distortion.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "marker6_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "bundle7_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "marker7_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn";
connectAttr "marker7_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "bundle9_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn";
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "marker8_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn";
connectAttr "marker11_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn";
connectAttr "marker11_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn"
		;
connectAttr "marker5_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "marker6_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn";
connectAttr "marker2_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "marker9_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn";
connectAttr "collection1_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn"
		;
connectAttr "bundle4_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "marker6_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "bundle6_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn";
connectAttr "bundle7_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn";
connectAttr "marker8_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "mmLinePointIntersect8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "bundle9_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "bundle8_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn";
connectAttr "mmLinePointIntersect9.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "bundle8_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "marker4_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "marker9_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "bundle10_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "marker10_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn";
connectAttr "bundle11_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn";
connectAttr "mmLinePointIntersect11.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "bundle15_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "mmLinePointIntersect16.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "mmLinePointIntersect12.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "bundle12_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "bundle16_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn";
connectAttr "bundle14_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn";
connectAttr "marker16_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn";
connectAttr "marker16_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "bundle13_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn";
connectAttr "bundle18_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn";
connectAttr "marker13_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "mmLinePointIntersect10.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "bundle16_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "bundle12_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn";
connectAttr "bundle15_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn";
connectAttr "marker15_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn";
connectAttr "mmLinePointIntersect15.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn"
		;
connectAttr "mmLinePointIntersect17.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "marker12_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn"
		;
connectAttr "marker14_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "bundle17_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn";
connectAttr "bundle13_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "marker13_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn";
connectAttr "mmLinePointIntersect13.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "bundle18_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn"
		;
connectAttr "marker18_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn";
connectAttr "mmLinePointIntersect18.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "marker14_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn";
connectAttr "marker15_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "bundle14_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "marker17_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn"
		;
connectAttr "marker18_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn"
		;
connectAttr "marker12_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn";
connectAttr "marker17_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn";
connectAttr "mmLinePointIntersect14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "bundle17_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "marker10_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "marker11_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "marker12_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "marker13_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "marker14_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "marker15_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "marker16_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "marker17_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "marker18_MKR_deviation.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "mmImagePlane1ShaderSG.pa" ":renderPartition.st" -na;
connectAttr "mmImagePlane1Shader.msg" ":defaultShaderList1.s" -na;
connectAttr "mmImagePlane1Shader_place2dTexture.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "mmImagePlane1Shader_colorGamma.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "mmImagePlane1Shader_alphaChannelBlend.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "mmImagePlane1Shader_imageLoadInvertBoolean.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "mmImagePlane1Shader_alphaChannelReverse.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "mmImagePlane1Shader_file.msg" ":defaultTextureList1.tx" -na;
// End of lens_distortion_lines_v002.ma
