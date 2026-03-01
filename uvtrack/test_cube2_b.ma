//Maya ASCII 2024 scene
//Name: test_cube2_b.ma
//Last modified: Fri, Oct 17, 2025 08:40:44 AM
//Codeset: UTF-8
requires maya "2024";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Linux 5.14.0-570.41.1.el9_6.x86_64 #1 SMP PREEMPT_DYNAMIC Thu Sep 11 06:52:33 EDT 2025 x86_64";
fileInfo "UUID" "23E71080-0004-A6BA-68F1-665C00000497";
createNode transform -s -n "persp";
	rename -uid "4EC5E080-001A-42ED-68DC-560300000290";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 28 21 28 ;
	setAttr ".r" -type "double3" -27.938352729602379 44.999999999999972 -5.172681101354183e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4EC5E080-001A-42ED-68DC-560300000291";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 44.82186966202994;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4EC5E080-001A-42ED-68DC-560300000292";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4EC5E080-001A-42ED-68DC-560300000293";
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
	rename -uid "4EC5E080-001A-42ED-68DC-560300000294";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4EC5E080-001A-42ED-68DC-560300000295";
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
	rename -uid "4EC5E080-001A-42ED-68DC-560300000296";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "4EC5E080-001A-42ED-68DC-560300000297";
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
	rename -uid "4EC5E080-001A-42ED-68DC-56090000029F";
	setAttr ".ro" 2;
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "4EC5E080-001A-42ED-68DC-5609000002A0";
	addAttr -s false -ci true -sn "ilns" -ln "inLens" -dt "MMLensData";
	addAttr -s false -ci true -sn "olns" -ln "outLens" -dt "MMLensData";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dfg" yes;
createNode transform -n "pCube1";
	rename -uid "4EC5E080-001A-42ED-68DC-566D000002AA";
	setAttr ".t" -type "double3" 0 0 -15 ;
	setAttr ".s" -type "double3" 7.5 7.5 7.5 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "4EC5E080-001A-42ED-68DC-566D000002A9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "locator1" -p "pCube1";
	rename -uid "4EC5E080-001A-42ED-68DC-58AF000002CA";
	setAttr ".t" -type "double3" -0.5 0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape1" -p "locator1";
	rename -uid "4EC5E080-001A-42ED-68DC-58AF000002CB";
	setAttr -k off ".v";
createNode transform -n "locator2" -p "pCube1";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002D0";
	setAttr ".t" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape2" -p "locator2";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002D1";
	setAttr -k off ".v";
createNode transform -n "locator3" -p "pCube1";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002D6";
	setAttr ".t" -type "double3" -0.5 -0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape3" -p "locator3";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002D7";
	setAttr -k off ".v";
createNode transform -n "locator4" -p "pCube1";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002DC";
	setAttr ".t" -type "double3" 0.5 -0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape4" -p "locator4";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002DD";
	setAttr -k off ".v";
createNode transform -n "locator5" -p "pCube1";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002E2";
	setAttr ".t" -type "double3" -0.5 0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape5" -p "locator5";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002E3";
	setAttr -k off ".v";
createNode transform -n "locator6" -p "pCube1";
	rename -uid "4EC5E080-001A-42ED-68DC-58B2000002E8";
	setAttr ".t" -type "double3" 0.5 0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape6" -p "locator6";
	rename -uid "4EC5E080-001A-42ED-68DC-58B2000002E9";
	setAttr -k off ".v";
createNode transform -n "locator7" -p "pCube1";
	rename -uid "4EC5E080-001A-42ED-68DC-58B2000002EE";
	setAttr ".t" -type "double3" -0.5 -0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape7" -p "locator7";
	rename -uid "4EC5E080-001A-42ED-68DC-58B2000002EF";
	setAttr -k off ".v";
createNode transform -n "locator8" -p "pCube1";
	rename -uid "4EC5E080-001A-42ED-68DC-58B2000002F4";
	setAttr ".t" -type "double3" 0.5 -0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape8" -p "locator8";
	rename -uid "4EC5E080-001A-42ED-68DC-58B2000002F5";
	setAttr -k off ".v";
createNode transform -n "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-660300000471";
	setAttr ".t" -type "double3" 8.5837483441460574 0 -28.746995285310991 ;
	setAttr ".s" -type "double3" 7.5 7.5 7.5 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-660300000472";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "locator9" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-660300000473";
	setAttr ".t" -type "double3" -0.5 0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape9" -p "locator9";
	rename -uid "23E71080-0004-A6BA-68F1-660300000474";
	setAttr -k off ".v";
createNode transform -n "locator10" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-660300000475";
	setAttr ".t" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape10" -p "locator10";
	rename -uid "23E71080-0004-A6BA-68F1-660300000476";
	setAttr -k off ".v";
createNode transform -n "locator11" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-660300000477";
	setAttr ".t" -type "double3" -0.5 -0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape11" -p "locator11";
	rename -uid "23E71080-0004-A6BA-68F1-660300000478";
	setAttr -k off ".v";
createNode transform -n "locator12" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-660300000479";
	setAttr ".t" -type "double3" 0.5 -0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape12" -p "locator12";
	rename -uid "23E71080-0004-A6BA-68F1-66030000047A";
	setAttr -k off ".v";
createNode transform -n "locator13" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-66030000047B";
	setAttr ".t" -type "double3" -0.5 0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape13" -p "locator13";
	rename -uid "23E71080-0004-A6BA-68F1-66030000047C";
	setAttr -k off ".v";
createNode transform -n "locator14" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-66030000047D";
	setAttr ".t" -type "double3" 0.5 0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape14" -p "locator14";
	rename -uid "23E71080-0004-A6BA-68F1-66030000047E";
	setAttr -k off ".v";
createNode transform -n "locator15" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-66030000047F";
	setAttr ".t" -type "double3" -0.5 -0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape15" -p "locator15";
	rename -uid "23E71080-0004-A6BA-68F1-660300000480";
	setAttr -k off ".v";
createNode transform -n "locator16" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-660300000481";
	setAttr ".t" -type "double3" 0.5 -0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape16" -p "locator16";
	rename -uid "23E71080-0004-A6BA-68F1-660300000482";
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "23E71080-0004-A6BA-68F1-65E10000042C";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "23E71080-0004-A6BA-68F1-65E10000042D";
createNode displayLayer -n "defaultLayer";
	rename -uid "4EC5E080-001A-42ED-68DC-56030000029A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "23E71080-0004-A6BA-68F1-65E10000042F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4EC5E080-001A-42ED-68DC-56040000029C";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "23E71080-0004-A6BA-68F1-65E100000431";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "23E71080-0004-A6BA-68F1-65E100000432";
createNode animCurveTL -n "camera1_translateX";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 -10;
createNode animCurveTL -n "camera1_translateY";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A2";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 0;
createNode animCurveTL -n "camera1_translateZ";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 0;
createNode animCurveTA -n "camera1_rotateX";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A4";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 0;
createNode animCurveTA -n "camera1_rotateY";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 -45;
createNode animCurveTA -n "camera1_rotateZ";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 0;
createNode polyCube -n "polyCube1";
	rename -uid "4EC5E080-001A-42ED-68DC-566D000002A8";
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4EC5E080-001A-42ED-68DC-56E0000002BC";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlane2DisplayFilter\" 1 \n"
		+ "            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlane2DisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlane2DisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n"
		+ "            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2658\n            -height 1473\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlane2DisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n"
		+ "            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n"
		+ "            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                -pluginObjects \"mmImagePlane2DisplayFilter\" 1 \n                -pluginObjects \"mmLineDisplayFilter\" 1 \n                -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n                -pluginObjects \"mmBundleDisplayFilter\" 1 \n                -pluginObjects \"mmMarkerDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2658\\n    -height 1473\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmImagePlane2DisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmLineDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmSkyDomeDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmBundleDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmMarkerDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2658\\n    -height 1473\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmImagePlane2DisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmLineDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmSkyDomeDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmBundleDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmMarkerDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4EC5E080-001A-42ED-68DC-56E0000002BD";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 101 -ast 1 -aet 101 ";
	setAttr ".st" 6;
createNode script -n "MM_SOLVER_SCENE_DATA";
	rename -uid "C4A7D080-001A-BB27-68DC-9E8300000396";
	addAttr -ci true -sn "data" -ln "data" -dt "string";
	setAttr -l on ".data" -type "string" "{\"mmSolver_convertmarker_frameStart\": 1, \"mmSolver_convertmarker_frameEnd\": 101, \"mmSolver_convertmarker_deleteStaticAnimCurves\": true, \"mmSolver_convertmarker_bundlePositionMode\": \"source\"}";
createNode animCurveTL -n "locator1_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-458D00000317";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.32407472222351852 2 -0.32389407499348938 3 -0.32366812381096277 4 -0.3233976719341215 5 -0.32308355720474102
		 6 -0.32272665171186288 7 -0.32232786139822273 8 -0.32188812560942881 9 -0.3214084165860473 10 -0.32088973889892225 11 -0.3203331288282234 12 -0.31973965368688867 13 -0.31911041108929844 14 -0.31844652816618929
		 15 -0.31774916072698139 16 -0.31701949237086707 17 -0.31625873354816558 18 -0.31546812057361462 19 -0.31464891459342154 20 -0.31380240050805475 21 -0.31292988585288917 22 -0.31203269963897184 23 -0.31111219115629107
		 24 -0.31016972874206722 25 -0.30920669851668486 26 -0.30822450309000055 27 -0.30722456024085132 28 -0.30620830157266876 29 -0.30517717114818499 30 -0.30413262410627306 31 -0.30307612526401695 32 -0.30200914770714515
		 33 -0.3009331713719911 34 -0.29984968162215481 35 -0.29876016782304926 36 -0.29766612191749908 37 -0.29656903700554738 38 -0.29547040593158813 39 -0.29437171988190258 40 -0.29327446699561704 41 -0.29218013099204776
		 42 -0.29109018981730556 43 -0.29000611431296486 44 -0.28892936690949439 45 -0.2878614003470541 46 -0.28680365642614042 47 -0.28575756479045789 48 -0.28472454174425388 49 -0.28370598910623523 50 -0.28270329310204179
		 51 -0.28171782329710843 52 -0.28075093157161179 53 -0.27980395113903617 54 -0.27887819560975408 55 -0.27797495810085504 56 -0.27709551039331165 57 -0.27624110213740932 58 -0.27541296010721916 59 -0.27461228750473926
		 60 -0.27384026331417938 61 -0.27309804170671725 62 -0.27238675149590708 63 -0.27170749564378077 64 -0.27106135081755095 65 -0.27044936699667826 66 -0.26987256712995522 67 -0.26933194684211681 68 -0.2688284741893921
		 69 -0.26836308946328147 70 -0.26793670504175227 71 -0.26755020528693663 72 -0.26720444648834002 73 -0.26690025685045959 74 -0.26663843652366148 75 -0.26641975767706783 76 -0.26624496461216296 77 -0.26611477391575539
		 78 -0.26602987465088668 79 -0.26599092858423756 80 -0.26599857044853986 81 -0.26605340823846907 82 -0.26615602353848089 83 -0.26630697188101976 84 -0.26650678313352683 85 -0.26675596191266449 86 -0.26705498802416905
		 87 -0.26740431692675831 88 -0.26780438021851133 89 -0.26825558614417006 90 -0.26875832012181833 91 -0.26931294528741984 92 -0.26991980305571589 93 -0.27057921369602927 94 -0.27129147692152705 95 -0.27205687249055854
		 96 -0.27287566081869497 97 -0.27374808360016611 98 -0.27467436443739907 99 -0.27565470947744114 100 -0.27668930805406916 101 -0.27777833333444463;
createNode animCurveTL -n "locator1_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-458D00000318";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.48611208333527778 2 0.48736900647545123 3 0.48859409185613201 4 0.48978673985953158 5 0.49094636625539478
		 6 0.49207240297945409 7 0.49316429889792834 8 0.49422152055620128 9 0.49524355290982447 10 0.49622990003601342 11 0.497180085823828 12 0.49809365464126931 13 0.49897017197756099 14 0.49980922505893677
		 15 0.50061042343630735 16 0.50137339954324722 17 0.50209780922280922 18 0.5027833322217492 19 0.50342967265082583 20 0.50403655940993453 21 0.50460374657691442 22 0.50513101375898262 23 0.50561816640583723
		 24 0.50606503608358899 25 0.50647148070878933 26 0.50683738474193363 27 0.50716265933994076 28 0.50744724246722672 29 0.50769109896510911 30 0.50789422057940792 31 0.50805662594622092 32 0.50817836053598375
		 33 0.50825949655603919 34 0.50830013281206621 35 0.50830039452883491 36 0.50826043313086888 37 0.5081804259837146 38 0.50806057609662281 39 0.50790111178755581 40 0.50770228631153635 41 0.50746437745344908
		 42 0.50718768708650064 43 0.50687254069762844 44 0.50651928688123116 45 0.50612829680266591 46 0.50569996363302616 47 0.50523470195678066 48 0.50473294715389772 49 0.50419515475813981 50 0.50362179979324795
		 51 0.50301337608876384 52 0.50237039557727758 53 0.50169338757490078 54 0.50098289804677365 55 0.50023948885943259 56 0.49946373702185332 57 0.49865623391698599 58 0.4978175845255759 59 0.49694840664405615
		 60 0.49604933009826235 61 0.49512099595469405 62 0.49416405573101452 63 0.49317917060742911 64 0.49216701064055257 65 0.49112825398130955 66 0.49006358609837308 67 0.48897369900857812 68 0.48785929051569554
		 69 0.48672106345888311 70 0.48555972497206734 71 0.48437598575544227 72 0.48317055936020381 73 0.48194416148756414 74 0.48069750930302524 75 0.47943132076681272 76 0.47814631398130347 77 0.47684320655620693
		 78 0.47552271499218846 79 0.47418555408354957 80 0.47283243634051686 81 0.47146407143161073 82 0.47008116564650926 83 0.46868442137974764 84 0.46727453663553187 85 0.46585220455388732 86 0.46441811295829183
		 87 0.46297294392489541 88 0.46151737337336696 89 0.4600520706793545 90 0.45857769830849948 91 0.45709491147188863 92 0.45560435780279174 93 0.45410667705448016 94 0.45260250081888942 95 0.45109245226584394
		 96 0.44957714590253239 97 0.44805718735288946 98 0.4465331731565042 99 0.44500569058665773 100 0.44347531748705971 101 0.44194262212683644;
createNode animCurveTU -n "locator1_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-458D00000319";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator2_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-458D00000338";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.32407472222351852 2 0.32420929710571345 3 0.32429706633008593 4 0.32433733183822988 5 0.32432943093391153
		 6 0.32427273633878895 7 0.32416665619416252 8 0.32401063400979457 9 0.32380414856095519 10 0.32354671373496791 11 0.32323787832863493 12 0.32287722579802125 13 0.32246437396217131 14 0.32199897466241367
		 15 0.32148071337897943 16 0.3209093088067374 17 0.32028451239189637 18 0.31960610783158105 19 0.31887391053823011 20 0.31808776707079622 21 0.31724755453475184 22 0.316353179952932 23 0.31540457960924217
		 24 0.3144017183672736 25 0.31334458896586326 26 0.31223321129361636 27 0.31106763164440832 28 0.30984792195584299 29 0.30857417903263284 30 0.30724652375681805 31 0.30586510028671632 32 0.3044300752464405
		 33 0.3029416369077832 34 0.30139999436621401 35 0.29980537671267649 36 0.29815803220282322 37 0.29645822742525807 38 0.29470624647030441 39 0.29290239010073871 40 0.2910469749258815 41 0.28914033258035343
		 42 0.28718280890875225 43 0.28517476315742418 44 0.28311656717444822 45 0.28100860461886978 46 0.27885127018016509 47 0.2766449688088386 48 0.27439011495899557 49 0.2720871318436634 50 0.26973645070356889
		 51 0.26733851009001741 52 0.26489375516245528 53 0.26240263700123512 54 0.25986561193604807 55 0.2572831408904257 56 0.25465568874265943 57 0.25198372370343358 58 0.24926771671041725 59 0.2465081408400025
		 60 0.2437054707363433 61 0.24086018205778936 62 0.23797275094077897 63 0.23504365348120504 64 0.23207336523323063 65 0.22906236072550523 66 0.2260111129946768 67 0.22292009313608951 68 0.21978976987150101
		 69 0.21662060913364678 70 0.21341307366743356 71 0.21016762264754418 72 0.20688471131218211 73 0.2035647906126985 74 0.20020830687879676 75 0.19681570149901528 76 0.1933874106161555 77 0.18992386483732626
		 78 0.18642548895825128 79 0.1828927017014792 80 0.17932591546813303 81 0.17572553610282038 82 0.17209196267132199 83 0.16842558725067391 84 0.16472679473125307 85 0.16099596263046878 86 0.15723346091767088
		 87 0.15343965184987229 88 0.14961488981789439 89 0.14575952120253755 90 0.1418738842403835 91 0.13795830889883565 92 0.13401311676001548 93 0.13003862091311857 94 0.12603512585486143 95 0.12200292739763008
		 96 0.11794231258496946 97 0.1138535596140372 98 0.10973693776466831 99 0.10559270733469028 100 0.10142111958114253 101 0.097222416667055445;
createNode animCurveTL -n "locator2_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-458D00000339";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.48611208333527778 2 0.48482393665039791 3 0.48350519443185225 4 0.48215649767784452 5 0.48077849955815766
		 6 0.47937186459390468 7 0.47793726783441826 8 0.47647539403305039 9 0.47498693682361393 10 0.47347259789916118 11 0.47193308619473529 12 0.47036911707569184 13 0.46878141153312003 14 0.46717069538784051
		 15 0.46553769850439064 16 0.46388315401634017 17 0.46220779756421626 18 0.46051236654724059 19 0.45879759939001208 20 0.45706423482519321 21 0.45531301119318313 22 0.45354466575968466 23 0.45175993405199766
		 24 0.44995954921479009 25 0.44814424138603171 26 0.44631473709368819 27 0.44447175867370992 28 0.44261602370976982 29 0.44074824449513506 30 0.43886912751698826 31 0.43697937296344502 32 0.43507967425344563
		 33 0.43317071758964143 34 0.43125318153432812 35 0.42932773660842183 36 0.42739504491342006 37 0.42545575977623007 38 0.42351052541670198 39 0.42155997663765188 40 0.4196047385371191 41 0.41764542624255196
		 42 0.41568264466658855 43 0.41371698828405101 44 0.41174904092974485 45 0.40977937561662303 46 0.40780855437384633 47 0.40583712810424577 48 0.40386563646067064 49 0.40189460774068864 50 0.39992455879908195
		 51 0.3979559949775755 52 0.39598941005121513 53 0.39402528619080579 54 0.39206409394081565 55 0.39010629221213911 56 0.38815232828911417 57 0.38620263785018705 58 0.38425764500161175 59 0.38231776232358394
		 60 0.38038339092819973 61 0.37845492052864516 62 0.37653272951902383 63 0.37461718506423569 64 0.37270864319933206 65 0.37080744893778095 66 0.36891393638808478 67 0.36702842887820897 68 0.36515123908728397
		 69 0.36328266918406737 70 0.3614230109716543 71 0.35957254603794886 72 0.35773154591141587 73 0.35590027222165133 74 0.3540789768643241 75 0.35226790217005699 76 0.35046728107682856 77 0.34867733730549721
		 78 0.34689828553806046 79 0.34513033159827922 80 0.34337367263431462 81 0.34162849730303713 82 0.33989498595568635 83 0.33817331082457258 84 0.33646363621052755 85 0.3347661186708264 86 0.33308090720731798
		 87 0.33140814345451486 88 0.32974796186740529 89 0.32810048990876939 90 0.32646584823579028 91 0.32484415088576379 92 0.32323550546072655 93 0.32164001331083136 94 0.32005776971631172 95 0.31848886406788979
		 96 0.31693338004549199 97 0.31539139579514597 98 0.31386298410394819 99 0.31234821257299461 100 0.31084714378818079 101 0.30935983548878554;
createNode animCurveTU -n "locator2_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-458D0000033A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator3_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-458D00000359";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.32407472222351852 2 -0.32389407499348938 3 -0.32366812381096277 4 -0.3233976719341215 5 -0.32308355720474102
		 6 -0.32272665171186288 7 -0.32232786139822273 8 -0.32188812560942881 9 -0.3214084165860473 10 -0.32088973889892225 11 -0.3203331288282234 12 -0.31973965368688867 13 -0.31911041108929844 14 -0.31844652816618929
		 15 -0.31774916072698139 16 -0.31701949237086707 17 -0.31625873354816558 18 -0.31546812057361462 19 -0.31464891459342154 20 -0.31380240050805475 21 -0.31292988585288917 22 -0.31203269963897184 23 -0.31111219115629107
		 24 -0.31016972874206722 25 -0.30920669851668486 26 -0.30822450309000055 27 -0.30722456024085132 28 -0.30620830157266876 29 -0.30517717114818499 30 -0.30413262410627306 31 -0.30307612526401695 32 -0.30200914770714515
		 33 -0.3009331713719911 34 -0.29984968162215481 35 -0.29876016782304926 36 -0.29766612191749908 37 -0.29656903700554738 38 -0.29547040593158813 39 -0.29437171988190258 40 -0.29327446699561704 41 -0.29218013099204776
		 42 -0.29109018981730556 43 -0.29000611431296486 44 -0.28892936690949439 45 -0.2878614003470541 46 -0.28680365642614042 47 -0.28575756479045789 48 -0.28472454174425388 49 -0.28370598910623523 50 -0.28270329310204179
		 51 -0.28171782329710843 52 -0.28075093157161179 53 -0.27980395113903617 54 -0.27887819560975408 55 -0.27797495810085504 56 -0.27709551039331165 57 -0.27624110213740932 58 -0.27541296010721916 59 -0.27461228750473926
		 60 -0.27384026331417938 61 -0.27309804170671725 62 -0.27238675149590708 63 -0.27170749564378077 64 -0.27106135081755095 65 -0.27044936699667826 66 -0.26987256712995522 67 -0.26933194684211681 68 -0.2688284741893921
		 69 -0.26836308946328147 70 -0.26793670504175227 71 -0.26755020528693663 72 -0.26720444648834002 73 -0.26690025685045959 74 -0.26663843652366148 75 -0.26641975767706783 76 -0.26624496461216296 77 -0.26611477391575539
		 78 -0.26602987465088668 79 -0.26599092858423756 80 -0.26599857044853986 81 -0.26605340823846907 82 -0.26615602353848089 83 -0.26630697188101976 84 -0.26650678313352683 85 -0.26675596191266449 86 -0.26705498802416905
		 87 -0.26740431692675831 88 -0.26780438021851133 89 -0.26825558614417006 90 -0.26875832012181833 91 -0.26931294528741984 92 -0.26991980305571589 93 -0.27057921369602927 94 -0.27129147692152705 95 -0.27205687249055854
		 96 -0.27287566081869497 97 -0.27374808360016611 98 -0.27467436443739907 99 -0.27565470947744114 100 -0.27668930805406916 101 -0.27777833333444463;
createNode animCurveTL -n "locator3_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-458D0000035A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.48611208333527778 2 -0.48736900647545128 3 -0.48859409185613206 4 -0.48978673985953158 5 -0.49094636625539473
		 6 -0.49207240297945409 7 -0.49316429889792829 8 -0.49422152055620128 9 -0.49524355290982452 10 -0.49622990003601342 11 -0.497180085823828 12 -0.49809365464126931 13 -0.49897017197756105 14 -0.49980922505893682
		 15 -0.50061042343630724 16 -0.50137339954324722 17 -0.50209780922280922 18 -0.5027833322217492 19 -0.50342967265082583 20 -0.50403655940993441 21 -0.50460374657691442 22 -0.50513101375898262 23 -0.50561816640583723
		 24 -0.50606503608358899 25 -0.50647148070878933 26 -0.50683738474193363 27 -0.50716265933994076 28 -0.50744724246722661 29 -0.50769109896510911 30 -0.50789422057940792 31 -0.50805662594622092 32 -0.50817836053598375
		 33 -0.50825949655603908 34 -0.50830013281206621 35 -0.50830039452883491 36 -0.50826043313086888 37 -0.5081804259837146 38 -0.50806057609662281 39 -0.50790111178755581 40 -0.50770228631153647 41 -0.50746437745344919
		 42 -0.50718768708650053 43 -0.50687254069762844 44 -0.50651928688123116 45 -0.50612829680266591 46 -0.50569996363302616 47 -0.50523470195678066 48 -0.5047329471538976 49 -0.50419515475813992 50 -0.50362179979324806
		 51 -0.50301337608876373 52 -0.5023703955772777 53 -0.50169338757490078 54 -0.50098289804677365 55 -0.50023948885943248 56 -0.49946373702185337 57 -0.49865623391698594 58 -0.4978175845255759 59 -0.49694840664405621
		 60 -0.49604933009826235 61 -0.49512099595469411 62 -0.49416405573101446 63 -0.49317917060742916 64 -0.49216701064055257 65 -0.4911282539813096 66 -0.49006358609837308 67 -0.48897369900857812 68 -0.48785929051569554
		 69 -0.48672106345888311 70 -0.48555972497206734 71 -0.48437598575544227 72 -0.48317055936020381 73 -0.48194416148756414 74 -0.48069750930302529 75 -0.47943132076681272 76 -0.47814631398130347 77 -0.47684320655620693
		 78 -0.47552271499218846 79 -0.47418555408354951 80 -0.47283243634051686 81 -0.47146407143161079 82 -0.47008116564650926 83 -0.46868442137974758 84 -0.46727453663553187 85 -0.46585220455388732 86 -0.46441811295829177
		 87 -0.46297294392489541 88 -0.46151737337336696 89 -0.4600520706793545 90 -0.45857769830849943 91 -0.45709491147188863 92 -0.45560435780279168 93 -0.45410667705448016 94 -0.45260250081888947 95 -0.45109245226584394
		 96 -0.44957714590253245 97 -0.44805718735288946 98 -0.4465331731565042 99 -0.44500569058665773 100 -0.44347531748705971 101 -0.44194262212683644;
createNode animCurveTU -n "locator3_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-458D0000035B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator4_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-458D0000037A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.32407472222351852 2 0.32420929710571345 3 0.32429706633008593 4 0.32433733183822988 5 0.32432943093391153
		 6 0.32427273633878895 7 0.32416665619416252 8 0.32401063400979457 9 0.32380414856095519 10 0.32354671373496791 11 0.32323787832863493 12 0.32287722579802125 13 0.32246437396217131 14 0.32199897466241367
		 15 0.32148071337897943 16 0.3209093088067374 17 0.32028451239189637 18 0.31960610783158105 19 0.31887391053823011 20 0.31808776707079622 21 0.31724755453475184 22 0.316353179952932 23 0.31540457960924217
		 24 0.3144017183672736 25 0.31334458896586326 26 0.31223321129361636 27 0.31106763164440832 28 0.30984792195584299 29 0.30857417903263284 30 0.30724652375681805 31 0.30586510028671632 32 0.3044300752464405
		 33 0.3029416369077832 34 0.30139999436621401 35 0.29980537671267649 36 0.29815803220282322 37 0.29645822742525807 38 0.29470624647030441 39 0.29290239010073871 40 0.2910469749258815 41 0.28914033258035343
		 42 0.28718280890875225 43 0.28517476315742418 44 0.28311656717444822 45 0.28100860461886978 46 0.27885127018016509 47 0.2766449688088386 48 0.27439011495899557 49 0.2720871318436634 50 0.26973645070356889
		 51 0.26733851009001741 52 0.26489375516245528 53 0.26240263700123512 54 0.25986561193604807 55 0.2572831408904257 56 0.25465568874265943 57 0.25198372370343358 58 0.24926771671041725 59 0.2465081408400025
		 60 0.2437054707363433 61 0.24086018205778936 62 0.23797275094077897 63 0.23504365348120504 64 0.23207336523323063 65 0.22906236072550523 66 0.2260111129946768 67 0.22292009313608951 68 0.21978976987150101
		 69 0.21662060913364678 70 0.21341307366743356 71 0.21016762264754418 72 0.20688471131218211 73 0.2035647906126985 74 0.20020830687879676 75 0.19681570149901528 76 0.1933874106161555 77 0.18992386483732626
		 78 0.18642548895825128 79 0.1828927017014792 80 0.17932591546813303 81 0.17572553610282038 82 0.17209196267132199 83 0.16842558725067391 84 0.16472679473125307 85 0.16099596263046878 86 0.15723346091767088
		 87 0.15343965184987229 88 0.14961488981789439 89 0.14575952120253755 90 0.1418738842403835 91 0.13795830889883565 92 0.13401311676001548 93 0.13003862091311857 94 0.12603512585486143 95 0.12200292739763008
		 96 0.11794231258496946 97 0.1138535596140372 98 0.10973693776466831 99 0.10559270733469028 100 0.10142111958114253 101 0.097222416667055445;
createNode animCurveTL -n "locator4_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-458D0000037B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.48611208333527778 2 -0.48482393665039791 3 -0.48350519443185225 4 -0.48215649767784458 5 -0.4807784995581576
		 6 -0.47937186459390463 7 -0.47793726783441831 8 -0.47647539403305034 9 -0.47498693682361393 10 -0.47347259789916113 11 -0.47193308619473523 12 -0.4703691170756919 13 -0.46878141153312003 14 -0.46717069538784051
		 15 -0.46553769850439058 16 -0.46388315401634012 17 -0.46220779756421626 18 -0.46051236654724065 19 -0.45879759939001208 20 -0.45706423482519326 21 -0.45531301119318313 22 -0.45354466575968461 23 -0.45175993405199766
		 24 -0.44995954921479009 25 -0.44814424138603171 26 -0.44631473709368819 27 -0.44447175867370992 28 -0.44261602370976982 29 -0.44074824449513506 30 -0.43886912751698831 31 -0.43697937296344497 32 -0.43507967425344563
		 33 -0.43317071758964143 34 -0.43125318153432807 35 -0.42932773660842177 36 -0.42739504491342012 37 -0.42545575977623012 38 -0.42351052541670198 39 -0.42155997663765193 40 -0.4196047385371191 41 -0.41764542624255191
		 42 -0.41568264466658855 43 -0.41371698828405107 44 -0.41174904092974485 45 -0.40977937561662309 46 -0.40780855437384633 47 -0.40583712810424577 48 -0.40386563646067064 49 -0.40189460774068858 50 -0.39992455879908195
		 51 -0.3979559949775755 52 -0.39598941005121507 53 -0.39402528619080573 54 -0.39206409394081565 55 -0.39010629221213911 56 -0.38815232828911422 57 -0.38620263785018699 58 -0.38425764500161169 59 -0.38231776232358394
		 60 -0.38038339092819967 61 -0.3784549205286451 62 -0.37653272951902383 63 -0.37461718506423575 64 -0.37270864319933206 65 -0.37080744893778095 66 -0.36891393638808478 67 -0.36702842887820897 68 -0.36515123908728397
		 69 -0.36328266918406732 70 -0.36142301097165425 71 -0.3595725460379488 72 -0.35773154591141593 73 -0.35590027222165138 74 -0.3540789768643241 75 -0.35226790217005693 76 -0.35046728107682851 77 -0.34867733730549716
		 78 -0.34689828553806051 79 -0.34513033159827927 80 -0.34337367263431456 81 -0.34162849730303713 82 -0.33989498595568635 83 -0.33817331082457264 84 -0.33646363621052761 85 -0.33476611867082634 86 -0.33308090720731803
		 87 -0.33140814345451486 88 -0.32974796186740524 89 -0.32810048990876939 90 -0.32646584823579028 91 -0.32484415088576379 92 -0.3232355054607266 93 -0.32164001331083136 94 -0.32005776971631172 95 -0.31848886406788984
		 96 -0.31693338004549199 97 -0.31539139579514597 98 -0.31386298410394825 99 -0.31234821257299467 100 -0.31084714378818074 101 -0.30935983548878554;
createNode animCurveTU -n "locator4_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-458D0000037C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator5_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-458D0000039B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.19444483333411111 2 -0.19719712808691336 3 -0.19994204464817372 4 -0.20267983939019746 5 -0.20541077221290116
		 6 -0.20813510653887218 7 -0.21085310930599421 8 -0.21356505095765926 9 -0.21627120543059303 10 -0.21897185014032183 11 -0.22166726596431552 12 -0.22435773722283975 13 -0.22704355165756257 14 -0.22972500040795568
		 15 -0.23240237798553803 16 -0.23507598224601656 17 -0.23774611435937343 18 -0.24041307877796414 19 -0.24307718320268229 20 -0.24573873854726186 21 -0.24839805890078198 22 -0.25105546148844776 23 -0.25371126663072163
		 24 -0.25636579770088502 25 -0.25901938108110911 26 -0.26167234611712215 27 -0.26432502507155825 28 -0.26697775307607746 29 -0.26963086808235204 30 -0.27228471081201089 31 -0.27493962470564048 32 -0.27759595587094366
		 33 -0.28025405303015472 34 -0.28291426746681619 35 -0.28557695297202307 36 -0.28824246579024065 37 -0.29091116456480187 38 -0.29358341028320045 39 -0.29625956622228555 40 -0.29893999789346809 41 -0.30162507298806002
		 42 -0.3043151613228503 43 -0.3070106347860404 44 -0.30971186728364503 45 -0.31241923468648308 46 -0.31513311477786288 47 -0.31785388720208774 48 -0.32058193341388552 49 -0.3233176366288848 50 -0.32606138177524979
		 51 -0.32881355544658136 52 -0.33157454585620716 53 -0.33434474279296184 54 -0.33712453757857713 55 -0.33991432302678254 56 -0.3427144934042346 57 -0.34552544439337285 58 -0.34834757305731356 59 -0.35118127780688357
		 60 -0.35402695836989606 61 -0.35688501576277215 62 -0.35975585226460216 63 -0.36263987139374776 64 -0.36553747788708169 65 -0.36844907768195229 66 -0.37137507790097268 67 -0.37431588683971595 68 -0.37727191395741139
		 69 -0.38024356987072216 70 -0.38323126635069099 71 -0.38623541632293262 72 -0.38925643387115771 73 -0.39229473424409889 74 -0.39535073386592323 75 -0.39842485035019493 76 -0.40151750251746982 77 -0.40462911041658706
		 78 -0.4077600953497254 79 -0.41091087990129521 80 -0.41408188797072965 81 -0.41727354480923423 82 -0.42048627706056746 83 -0.42372051280590356 84 -0.42697668161284352 85 -0.43025521458863009 86 -0.43355654443762931
		 87 -0.43688110552312981 88 -0.4402293339335217 89 -0.44360166755290709 90 -0.44699854613620327 91 -0.45042041138879135 92 -0.45386770705076024 93 -0.45734087898581754 94 -0.46084037527490368 95 -0.46436664631458446
		 96 -0.46792014492026429 97 -0.47150132643429254 98 -0.4751106488390095 99 -0.47874857287480171 100 -0.4824155621632284 101 -0.48611208333527794;
createNode animCurveTL -n "locator5_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-458D0000039C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.29166725000116667 2 0.29212288430609878 3 0.29257343367813204 4 0.29301881879193159 5 0.29345896230340762
		 6 0.29389378890236095 7 0.29432322536431643 8 0.29474720060148552 9 0.29516564571280046 10 0.29557849403296166 11 0.29598568118044399 12 0.29638714510440445 13 0.2967828261304406 14 0.29717266700514311
		 15 0.29755661293939339 16 0.29793461165035784 17 0.29830661340212528 18 0.29867257104494849 19 0.29903244005303731 20 0.29938617856086613 21 0.29973374739795222 22 0.30007511012206567 23 0.30041023305083603
		 24 0.30073908529171889 25 0.30106163877029091 26 0.30137786825684487 27 0.30168775139125481 28 0.30199126870608617 29 0.30228840364793208 30 0.30257914259695018 31 0.30286347488458798 32 0.30314139280947794
		 33 0.30341289165149354 34 0.303677969683954 35 0.30393662818397416 36 0.3041888714409543 37 0.30443470676320694 38 0.30467414448272767 39 0.30490719795810795 40 0.30513388357560411 41 0.30535422074836549
		 42 0.30556823191384153 43 0.3057759425293779 44 0.30597738106602179 45 0.30617257900055939 46 0.30636157080580495 47 0.30654439393917032 48 0.30672108882954174 49 0.30689169886249745 50 0.30705627036389549
		 51 0.30721485258187042 52 0.30736749766727589 53 0.30751426065261278 54 0.30765519942948538 55 0.30779037472462967 56 0.3079198500745598 57 0.30804369179888036 58 0.3081619689723154 59 0.30827475339550303
		 60 0.30838211956461137 61 0.30848414463982832 62 0.30858090841278119 63 0.30867249327294388 64 0.30875898417308933 65 0.30884046859384651 66 0.30891703650742164 67 0.30898878034054633 68 0.30905579493671287
		 69 0.3091181775177605 70 0.30917602764487384 71 0.30922944717906065 72 0.30927854024116841 73 0.30932341317150858 74 0.30936417448914821 75 0.30940093485093911 76 0.3094338070103434 77 0.30946290577612445
		 78 0.30948834797096536 79 0.30951025239007901 80 0.30952873975987638 81 0.30954393269675129 82 0.30955595566605054 83 0.30956493494128767 84 0.30957099856366432 85 0.30957427630195933 86 0.30957489961284801
		 87 0.30957300160170931 88 0.30956871698398059 89 0.30956218204711949 90 0.30955353461322876 91 0.30954291400240141 92 0.30953046099684045 93 0.30951631780581057 94 0.30950062803147094 95 0.30948353663564743
		 96 0.30946518990758942 97 0.30944573543276799 98 0.30942532206276074 99 0.30940409988627304 100 0.30938222020134454 101 0.30935983548878554;
createNode animCurveTU -n "locator5_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-458D0000039D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator6_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-458D000003BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.19444483333411111 2 0.19168490754756029 3 0.18891710141517226 4 0.18614116915251777 5 0.18335686849788113
		 6 0.18056396070482461 7 0.17776221053226049 8 0.17495138623203554 9 0.17213125953403141 10 0.16930160562879104 11 0.16646220314768345 12 0.16361283414062056 13 0.16075328405134548 14 0.15788334169031193
		 15 0.15500279920517768 16 0.1521114520489405 17 0.1492090989457413 18 0.14629554185436833 19 0.14337058592949425 20 0.14043403948068067 21 0.13748571392918896 22 0.13452542376263388 23 0.13155298648752367
		 24 0.12856822257972667 25 0.12557095543290897 26 0.12256101130498964 27 0.11953821926265795 28 0.1165024111240015 29 0.11345342139929382 30 0.11039108722999003 31 0.10731524832598172 32 0.10422574690116149
		 33 0.10112242760734769 34 0.098005137466622316 35 0.094873725802132935 36 0.091728044167410538 37 0.088567946274256015 38 0.085393287919247607 39 0.082203926908917202 40 0.078999722983654541 41 0.07578053774038096
		 42 0.072546234554050071 43 0.069296678498022013 44 0.066031736263360785 45 0.062751276077103069 46 0.059455167619546501 47 0.056143281940600698 48 0.052815491375251988 49 0.049471669458179379 50 0.046111690837568942
		 51 0.042735431188167583 52 0.039342767123614397 53 0.035933576108090781 54 0.032507736367324735 55 0.02906512679898654 56 0.025605626882508781 57 0.022129116588362696 58 0.01863547628682527 59 0.015124586656260375
		 60 0.011596328590945948 61 0.0080505831084695112 62 0.0044872312567186823 63 0.00090615402048577209 64 -0.0026927677722945464 65 -0.0063096535446519608 66 -0.0099446230650222511 67 -0.013597796542004492 68 -0.017269294719425621
		 69 -0.020959238971700545 70 -0.024667751399482962 71 -0.028394954925594684 72 -0.032140973391239946 73 -0.035905931652492118 74 -0.039689955677064293 75 -0.043493172641355382 76 -0.047315711027786422 77 -0.051157700722427979
		 78 -0.055019273112929645 79 -0.058900561186763678 80 -0.062801699629793539 81 -0.066722824925185886 82 -0.070664075452680941 83 -0.074625591588244333 84 -0.078607515804117789 85 -0.082609992769297202 86 -0.086633169450461955
		 87 -0.09067719521338452 88 -0.094742221924851766 89 -0.098828404055127661 90 -0.10293589878099824 91 -0.1070648660894315 92 -0.11121546888189027 93 -0.11538787307934822 94 -0.11958224772804071 95 -0.12379876510600979
		 96 -0.12803760083047971 97 -0.1322989339661248 98 -0.13658294713427377 99 -0.140889826623113 100 -0.14521976249894275 101 -0.14957294871854721;
createNode animCurveTL -n "locator6_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-458D000003BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.29166725000116667 2 0.29120661201651687 3 0.29074105347908585 4 0.29027065933484142 5 0.28979551629348588
		 6 0.289315712772648 7 0.28883133884162449 8 0.28834248616473068 9 0.2878492479443221 10 0.28735171886354649 11 0.28684999502888708 12 0.2863441739125554 13 0.28583435429479387 14 0.28532063620614689
		 15 0.28480312086975523 16 0.28428191064373576 17 0.28375710896369677 18 0.28322882028544849 19 0.28269715002796092 20 0.282162204516621 21 0.28162409092684348 22 0.28108291722808398 23 0.28053879212830446
		 24 0.27999182501893816 25 0.27944212592040196 26 0.27888980542819963 27 0.27833497465966128 28 0.27777774520135989 29 0.27721822905724669 30 0.27665653859754147 31 0.27609278650841995 32 0.27552708574253004
		 33 0.27495954947037249 34 0.27439029103257839 35 0.27381942389311431 36 0.27324706159344436 37 0.27267331770767533 38 0.2720983057987133 39 0.27152213937545211 40 0.27094493185102009 41 0.27036679650210227
		 42 0.26978784642935949 43 0.26920819451896127 44 0.26862795340524714 45 0.26804723543453313 46 0.26746615263007367 47 0.26688481665819141 48 0.26630333879558399 49 0.2657218298978179 50 0.26514040036901254
		 51 0.2645591601327234 52 0.26397821860402704 53 0.26339768466280911 54 0.26281766662825978 55 0.26223827223457441 56 0.26165960860785931 57 0.26108178224423906 58 0.26050489898916618 59 0.25992906401792237
		 60 0.25935438181731185 61 0.25878095616853658 62 0.25820889013124848 63 0.25763828602876826 64 0.2570692454344643 65 0.25650186915927931 66 0.25593625724039626 67 0.25537250893103081 68 0.25481072269133964
		 69 0.25425099618043157 70 0.253693426249468 71 0.25313810893583999 72 0.25258513945840821 73 0.25203461221378953 74 0.25148662077367856 75 0.25094125788318555 76 0.25039861546017828 77 0.24985878459561028
		 78 0.24932185555482167 79 0.24878791777979381 80 0.24825705989234437 81 0.24772936969824522 82 0.24720493419224798 83 0.24668383956399909 84 0.24616617120483142 85 0.24565201371541256 86 0.24514145091423745
		 87 0.24463456584694732 88 0.24413144079645877 89 0.24363215729389021 90 0.24313679613026773 91 0.2426454373689968 92 0.24215816035908466 93 0.24167504374909943 94 0.24119616550185141 95 0.24072160290978328
		 96 0.24025143261105586 97 0.23978573060631658 98 0.23932457227613846 99 0.23886803239911725 100 0.23841618517061558 101 0.23796910422214268;
createNode animCurveTU -n "locator6_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-458D000003BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator7_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-458D000003DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.19444483333411111 2 -0.19719712808691336 3 -0.19994204464817372 4 -0.20267983939019746 5 -0.20541077221290116
		 6 -0.20813510653887218 7 -0.21085310930599421 8 -0.21356505095765926 9 -0.21627120543059303 10 -0.21897185014032183 11 -0.22166726596431552 12 -0.22435773722283975 13 -0.22704355165756257 14 -0.22972500040795568
		 15 -0.23240237798553803 16 -0.23507598224601656 17 -0.23774611435937343 18 -0.24041307877796414 19 -0.24307718320268229 20 -0.24573873854726186 21 -0.24839805890078198 22 -0.25105546148844776 23 -0.25371126663072163
		 24 -0.25636579770088502 25 -0.25901938108110911 26 -0.26167234611712215 27 -0.26432502507155825 28 -0.26697775307607746 29 -0.26963086808235204 30 -0.27228471081201089 31 -0.27493962470564048 32 -0.27759595587094366
		 33 -0.28025405303015472 34 -0.28291426746681619 35 -0.28557695297202307 36 -0.28824246579024065 37 -0.29091116456480187 38 -0.29358341028320045 39 -0.29625956622228555 40 -0.29893999789346809 41 -0.30162507298806002
		 42 -0.3043151613228503 43 -0.3070106347860404 44 -0.30971186728364503 45 -0.31241923468648308 46 -0.31513311477786288 47 -0.31785388720208774 48 -0.32058193341388552 49 -0.3233176366288848 50 -0.32606138177524979
		 51 -0.32881355544658136 52 -0.33157454585620716 53 -0.33434474279296184 54 -0.33712453757857713 55 -0.33991432302678254 56 -0.3427144934042346 57 -0.34552544439337285 58 -0.34834757305731356 59 -0.35118127780688357
		 60 -0.35402695836989606 61 -0.35688501576277215 62 -0.35975585226460216 63 -0.36263987139374776 64 -0.36553747788708169 65 -0.36844907768195229 66 -0.37137507790097268 67 -0.37431588683971595 68 -0.37727191395741139
		 69 -0.38024356987072216 70 -0.38323126635069099 71 -0.38623541632293262 72 -0.38925643387115771 73 -0.39229473424409889 74 -0.39535073386592323 75 -0.39842485035019493 76 -0.40151750251746982 77 -0.40462911041658706
		 78 -0.4077600953497254 79 -0.41091087990129521 80 -0.41408188797072965 81 -0.41727354480923423 82 -0.42048627706056746 83 -0.42372051280590356 84 -0.42697668161284352 85 -0.43025521458863009 86 -0.43355654443762931
		 87 -0.43688110552312981 88 -0.4402293339335217 89 -0.44360166755290709 90 -0.44699854613620327 91 -0.45042041138879135 92 -0.45386770705076024 93 -0.45734087898581754 94 -0.46084037527490368 95 -0.46436664631458446
		 96 -0.46792014492026429 97 -0.47150132643429254 98 -0.4751106488390095 99 -0.47874857287480171 100 -0.4824155621632284 101 -0.48611208333527794;
createNode animCurveTL -n "locator7_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-458D000003DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.29166725000116667 2 -0.29212288430609884 3 -0.29257343367813204 4 -0.29301881879193153 5 -0.29345896230340757
		 6 -0.2938937889023609 7 -0.29432322536431638 8 -0.29474720060148557 9 -0.29516564571280052 10 -0.29557849403296166 11 -0.29598568118044394 12 -0.29638714510440445 13 -0.2967828261304406 14 -0.29717266700514311
		 15 -0.29755661293939345 16 -0.29793461165035784 17 -0.29830661340212528 18 -0.29867257104494849 19 -0.29903244005303725 20 -0.29938617856086613 21 -0.29973374739795217 22 -0.30007511012206567 23 -0.30041023305083608
		 24 -0.30073908529171883 25 -0.30106163877029085 26 -0.30137786825684493 27 -0.30168775139125475 28 -0.30199126870608611 29 -0.30228840364793202 30 -0.30257914259695018 31 -0.30286347488458798 32 -0.30314139280947794
		 33 -0.30341289165149349 34 -0.30367796968395394 35 -0.30393662818397416 36 -0.3041888714409543 37 -0.304434706763207 38 -0.30467414448272762 39 -0.30490719795810795 40 -0.30513388357560406 41 -0.30535422074836555
		 42 -0.30556823191384158 43 -0.3057759425293779 44 -0.30597738106602179 45 -0.30617257900055944 46 -0.30636157080580501 47 -0.30654439393917027 48 -0.3067210888295418 49 -0.30689169886249745 50 -0.30705627036389549
		 51 -0.30721485258187042 52 -0.30736749766727589 53 -0.30751426065261278 54 -0.30765519942948544 55 -0.30779037472462967 56 -0.3079198500745598 57 -0.30804369179888036 58 -0.3081619689723154 59 -0.30827475339550303
		 60 -0.30838211956461137 61 -0.30848414463982832 62 -0.30858090841278119 63 -0.30867249327294394 64 -0.30875898417308939 65 -0.30884046859384651 66 -0.30891703650742164 67 -0.30898878034054633 68 -0.30905579493671287
		 69 -0.3091181775177605 70 -0.30917602764487384 71 -0.30922944717906059 72 -0.30927854024116846 73 -0.30932341317150852 74 -0.30936417448914821 75 -0.30940093485093911 76 -0.3094338070103434 77 -0.30946290577612445
		 78 -0.30948834797096531 79 -0.30951025239007901 80 -0.30952873975987638 81 -0.30954393269675134 82 -0.3095559556660506 83 -0.30956493494128767 84 -0.30957099856366432 85 -0.30957427630195933 86 -0.30957489961284806
		 87 -0.30957300160170925 88 -0.30956871698398059 89 -0.30956218204711944 90 -0.30955353461322871 91 -0.30954291400240141 92 -0.30953046099684045 93 -0.30951631780581057 94 -0.30950062803147099 95 -0.30948353663564743
		 96 -0.30946518990758942 97 -0.30944573543276799 98 -0.30942532206276074 99 -0.30940409988627304 100 -0.30938222020134459 101 -0.30935983548878554;
createNode animCurveTU -n "locator7_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-458D000003DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator8_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-458D000003FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.19444483333411111 2 0.19168490754756029 3 0.18891710141517226 4 0.18614116915251777 5 0.18335686849788113
		 6 0.18056396070482461 7 0.17776221053226049 8 0.17495138623203554 9 0.17213125953403141 10 0.16930160562879104 11 0.16646220314768345 12 0.16361283414062056 13 0.16075328405134548 14 0.15788334169031193
		 15 0.15500279920517768 16 0.1521114520489405 17 0.1492090989457413 18 0.14629554185436833 19 0.14337058592949425 20 0.14043403948068067 21 0.13748571392918896 22 0.13452542376263388 23 0.13155298648752367
		 24 0.12856822257972667 25 0.12557095543290897 26 0.12256101130498964 27 0.11953821926265795 28 0.1165024111240015 29 0.11345342139929382 30 0.11039108722999003 31 0.10731524832598172 32 0.10422574690116149
		 33 0.10112242760734769 34 0.098005137466622316 35 0.094873725802132935 36 0.091728044167410538 37 0.088567946274256015 38 0.085393287919247607 39 0.082203926908917202 40 0.078999722983654541 41 0.07578053774038096
		 42 0.072546234554050071 43 0.069296678498022013 44 0.066031736263360785 45 0.062751276077103069 46 0.059455167619546501 47 0.056143281940600698 48 0.052815491375251988 49 0.049471669458179379 50 0.046111690837568942
		 51 0.042735431188167583 52 0.039342767123614397 53 0.035933576108090781 54 0.032507736367324735 55 0.02906512679898654 56 0.025605626882508781 57 0.022129116588362696 58 0.01863547628682527 59 0.015124586656260375
		 60 0.011596328590945948 61 0.0080505831084695112 62 0.0044872312567186823 63 0.00090615402048577209 64 -0.0026927677722945464 65 -0.0063096535446519608 66 -0.0099446230650222511 67 -0.013597796542004492 68 -0.017269294719425621
		 69 -0.020959238971700545 70 -0.024667751399482962 71 -0.028394954925594684 72 -0.032140973391239946 73 -0.035905931652492118 74 -0.039689955677064293 75 -0.043493172641355382 76 -0.047315711027786422 77 -0.051157700722427979
		 78 -0.055019273112929645 79 -0.058900561186763678 80 -0.062801699629793539 81 -0.066722824925185886 82 -0.070664075452680941 83 -0.074625591588244333 84 -0.078607515804117789 85 -0.082609992769297202 86 -0.086633169450461955
		 87 -0.09067719521338452 88 -0.094742221924851766 89 -0.098828404055127661 90 -0.10293589878099824 91 -0.1070648660894315 92 -0.11121546888189027 93 -0.11538787307934822 94 -0.11958224772804071 95 -0.12379876510600979
		 96 -0.12803760083047971 97 -0.1322989339661248 98 -0.13658294713427377 99 -0.140889826623113 100 -0.14521976249894275 101 -0.14957294871854721;
createNode animCurveTL -n "locator8_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-458D000003FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.29166725000116667 2 -0.29120661201651682 3 -0.29074105347908585 4 -0.29027065933484147 5 -0.28979551629348588
		 6 -0.28931571277264806 7 -0.28883133884162449 8 -0.28834248616473068 9 -0.2878492479443221 10 -0.28735171886354649 11 -0.28684999502888708 12 -0.2863441739125554 13 -0.28583435429479387 14 -0.28532063620614684
		 15 -0.28480312086975523 16 -0.28428191064373576 17 -0.28375710896369677 18 -0.28322882028544855 19 -0.28269715002796098 20 -0.28216220451662094 21 -0.28162409092684343 22 -0.28108291722808398 23 -0.28053879212830446
		 24 -0.27999182501893821 25 -0.27944212592040196 26 -0.27888980542819958 27 -0.27833497465966123 28 -0.27777774520135995 29 -0.27721822905724675 30 -0.27665653859754147 31 -0.2760927865084199 32 -0.2755270857425301
		 33 -0.27495954947037254 34 -0.27439029103257839 35 -0.27381942389311431 36 -0.27324706159344431 37 -0.27267331770767533 38 -0.2720983057987133 39 -0.27152213937545211 40 -0.27094493185102009 41 -0.27036679650210227
		 42 -0.26978784642935943 43 -0.26920819451896122 44 -0.26862795340524714 45 -0.26804723543453318 46 -0.26746615263007373 47 -0.26688481665819141 48 -0.26630333879558399 49 -0.2657218298978179 50 -0.26514040036901249
		 51 -0.2645591601327234 52 -0.26397821860402704 53 -0.26339768466280911 54 -0.26281766662825984 55 -0.26223827223457447 56 -0.26165960860785925 57 -0.261081782244239 58 -0.26050489898916618 59 -0.25992906401792232
		 60 -0.2593543818173118 61 -0.25878095616853658 62 -0.25820889013124854 63 -0.25763828602876832 64 -0.2570692454344643 65 -0.25650186915927936 66 -0.25593625724039631 67 -0.25537250893103081 68 -0.25481072269133964
		 69 -0.25425099618043162 70 -0.253693426249468 71 -0.25313810893583999 72 -0.25258513945840821 73 -0.25203461221378959 74 -0.25148662077367862 75 -0.25094125788318555 76 -0.25039861546017822 77 -0.24985878459561028
		 78 -0.24932185555482167 79 -0.24878791777979381 80 -0.24825705989234431 81 -0.24772936969824527 82 -0.24720493419224793 83 -0.24668383956399909 84 -0.24616617120483142 85 -0.24565201371541251 86 -0.24514145091423745
		 87 -0.24463456584694732 88 -0.24413144079645877 89 -0.24363215729389021 90 -0.24313679613026773 91 -0.24264543736899685 92 -0.24215816035908466 93 -0.24167504374909943 94 -0.24119616550185141 95 -0.24072160290978328
		 96 -0.2402514326110558 97 -0.23978573060631658 98 -0.23932457227613846 99 -0.2388680323991173 100 -0.23841618517061558 101 -0.23796910422214268;
createNode animCurveTU -n "locator8_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-458D00000400";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTU -n "locator8_MKR_weight";
	rename -uid "E39FE080-002A-E4CF-68E4-458D00000401";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "locator7_MKR_weight";
	rename -uid "E39FE080-002A-E4CF-68E4-458D000003E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "locator6_MKR_weight";
	rename -uid "E39FE080-002A-E4CF-68E4-458D000003BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "locator5_MKR_weight";
	rename -uid "E39FE080-002A-E4CF-68E4-458D0000039E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "locator4_MKR_weight";
	rename -uid "E39FE080-002A-E4CF-68E4-458D0000037D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "locator3_MKR_weight";
	rename -uid "E39FE080-002A-E4CF-68E4-458D0000035C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "locator2_MKR_weight";
	rename -uid "E39FE080-002A-E4CF-68E4-458D0000033B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "locator1_MKR_weight";
	rename -uid "E39FE080-002A-E4CF-68E4-458D0000031A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
select -ne :time1;
	setAttr ".o" 96;
	setAttr ".unw" 96;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "camera1_translateX.o" "camera1.tx";
connectAttr "camera1_translateY.o" "camera1.ty";
connectAttr "camera1_translateZ.o" "camera1.tz";
connectAttr "camera1_rotateX.o" "camera1.rx";
connectAttr "camera1_rotateY.o" "camera1.ry";
connectAttr "camera1_rotateZ.o" "camera1.rz";
connectAttr "polyCube1.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
// End of test_cube2_b.ma
