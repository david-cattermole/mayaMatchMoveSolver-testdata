//Maya ASCII 2022 scene
//Name: anamorphic_lens_grid_v001.ma
//Last modified: Sat, Apr 02, 2022 12:53:49 PM
//Codeset: 1252
requires maya "2022";
requires -nodeType "mmMarkerScale" -nodeType "mmLensDeformer" -nodeType "mmLensModel3deClassic"
		 -nodeType "mmLensModelToggle" -nodeType "mmMarkerShape" -nodeType "mmBundleShape"
		 -nodeType "mmMarkerGroupTransform" -nodeType "mmImagePlaneTransform" -nodeType "mmMarkerTransform"
		 -dataType "MMLensData" "mmSolver" "0.4.0.alpha4";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202102181415-29bfc1879c";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "413D6401-42A7-EED4-041C-CFA1884CD64C";
createNode transform -s -n "persp";
	rename -uid "59268050-47D0-555D-32B3-9EAB84819654";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.34915631451011153 0.92311449225831976 5.2568006587650524 ;
	setAttr ".r" -type "double3" -9.9383527296023733 -3.8000000000000926 9.9611332468638354e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8B69E053-451C-D3D0-4506-F897FA16B832";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 5.3486450306382984;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "1C8F2FF9-4ACE-0B67-4427-F19384456FE7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "75AA7FE3-4533-67BD-9E0F-4DA30205F4ED";
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
	rename -uid "ACD01A21-48D4-54D8-0E75-B49DFE42EB22";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "07CC87A2-4CC7-133F-3E18-3980C8570B65";
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
	rename -uid "F7A20C28-4D4A-6872-29E5-F3A0C17F2A7F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "964675A2-44F8-E584-8246-E8A5160652A1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "persp1";
	rename -uid "45513E82-490D-D2AF-FF47-0DB8A0300785";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_smoothness_weight" -at "double";
	setAttr ".t" -type "double3" 0 0 2 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -0.054687618338846278 2.2037007090520433 0.059497608428614505 ;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_stiffness_variance" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_stiffness_variance" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_stiffness_variance" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_stiffness_weight" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_stiffness_weight" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_stiffness_weight" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateX_smoothness_weight" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateY_smoothness_weight" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_rotateZ_smoothness_weight" 1;
createNode camera -n "perspShape1" -p "persp1";
	rename -uid "2F94C1F5-4242-ACB3-3632-77B491FB393D";
	addAttr -s false -ci true -sn "ilns" -ln "inLens" -dt "MMLensData";
	addAttr -s false -ci true -sn "olns" -ln "outLens" -dt "MMLensData";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_stiffness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_smoothness_weight" -at "double";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.4173200000000001 0.797244094488189 ;
	setAttr ".pze" yes;
	setAttr ".pn" -type "double2" 0.11513481129919607 -0.026108952696123316 ;
	setAttr ".zom" 1.3465581105489606;
	setAttr ".fl" 35.698379896624935;
	setAttr ".coi" 2.0745297056673295;
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_stiffness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_focalLength_smoothness_weight" 
		1;
createNode transform -n "bakedImagePlane1" -p "perspShape1";
	rename -uid "CF5F9275-4D04-C14C-2247-699E52834B6A";
createNode imagePlane -n "bakedImagePlane1Shape1" -p "bakedImagePlane1";
	rename -uid "119C967A-4908-00F1-3043-A99F133B2FD0";
	setAttr -k off ".v";
	setAttr ".fc" 99;
	setAttr ".imn" -type "string" "C:/Users/catte/OneDrive/C_Drive/Projects/MatchMove/tutorials4/grid_shots/grid_anamorphic_40mm.jpg";
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".f" 4;
	setAttr ".w" 10;
	setAttr ".h" 10;
	setAttr ".cs" -type "string" "sRGB";
createNode mmImagePlaneTransform -n "imagePlane1" -p "persp1";
	rename -uid "C4102BA4-4F17-AAED-118A-5C87E69B3B88";
	addAttr -ci true -sn "depth" -ln "depth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "meshResolution" -ln "meshResolution" -dv 32 -min 1 -max 256 
		-at "long";
	addAttr -ci true -sn "focalLength" -ln "focalLength" -dv 35 -min 0.1 -at "double";
	addAttr -ci true -sn "horizontalFilmAperture" -ln "horizontalFilmAperture" -dv 1.4173228346456694 
		-min 0.001 -at "double";
	addAttr -ci true -sn "verticalFilmAperture" -ln "verticalFilmAperture" -dv 0.94488188976377963 
		-min 0.001 -at "double";
	addAttr -ci true -sn "pixelAspect" -ln "pixelAspect" -dv 1 -min 0.001 -at "double";
	addAttr -ci true -sn "horizontalFilmOffset" -ln "horizontalFilmOffset" -min 0 -at "double";
	addAttr -ci true -sn "verticalFilmOffset" -ln "verticalFilmOffset" -min 0 -at "double";
	addAttr -ci true -sn "imageSequence" -ln "imageSequence" -dt "string";
	addAttr -ci true -sn "imageSequenceFrame" -ln "imageSequenceFrame" -min 0 -at "double";
	addAttr -ci true -sn "displayMode" -ln "displayMode" -min 0 -max 1 -en "Live:Baked" 
		-at "enum";
	addAttr -s false -ci true -sn "shaderFileNode" -ln "shaderFileNode" -at "message";
	addAttr -s false -ci true -sn "imagePlaneShapeNode" -ln "imagePlaneShapeNode" -at "message";
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
	setAttr -k on ".depth" 100;
	setAttr -k on ".meshResolution" 8;
	setAttr -k on ".focalLength";
	setAttr -k on ".horizontalFilmAperture";
	setAttr -k on ".verticalFilmAperture";
	setAttr -k on ".pixelAspect" 2;
	setAttr -k on ".horizontalFilmOffset";
	setAttr -k on ".verticalFilmOffset";
	setAttr ".imageSequence" -type "string" "C:/Users/catte/OneDrive/C_Drive/Projects/MatchMove/tutorials4/grid_shots/grid_anamorphic_40mm.jpg";
	setAttr -k on ".imageSequenceFrame";
	setAttr -k on ".displayMode";
createNode mesh -n "imagePlane1Shape" -p "imagePlane1";
	rename -uid "DCBBF671-4F9E-ACF4-4DB1-8E87F6867B2E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "imagePlane1ShapeOrig" -p "imagePlane1";
	rename -uid "F2D3FDF7-4CF4-BB73-269A-FC93B9AAEF44";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mmMarkerGroupTransform -n "markerGroup1" -p "persp1";
	rename -uid "6EFE9998-418A-170B-C7F8-88BF098548C3";
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
createNode mmMarkerTransform -n "marker1_MKR" -p "markerGroup1";
	rename -uid "0C2994FE-4D3E-18A0-3D4B-FFAD9CFBD3D8";
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
	setAttr ".t" -type "double3" -0.3945944155858489 0.42954738296841399 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on -k on ".enable";
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker1_MKRShape" -p "marker1_MKR";
	rename -uid "48B0F4D8-4C71-3201-4B3F-EFB600CBE53F";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker2_MKR" -p "markerGroup1";
	rename -uid "6F62D6C4-4716-0C8E-9822-CD8653D56D57";
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
	setAttr ".t" -type "double3" -0.24686990339993031 0.45885601610201565 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on -k on ".enable";
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker2_MKRShape" -p "marker2_MKR";
	rename -uid "E2A5D192-4254-B377-D8F1-EA86975FF890";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker3_MKR" -p "markerGroup1";
	rename -uid "4EBFB1C2-4E15-9149-F58C-E89A0BEDD516";
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
	setAttr ".t" -type "double3" -0.074239862254320305 0.48434801699656177 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on -k on ".enable";
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker3_MKRShape" -p "marker3_MKR";
	rename -uid "6E2CD390-4E11-5215-BD5C-B88627F1DF4F";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker4_MKR" -p "markerGroup1";
	rename -uid "D8FAEF96-4F9D-6EF6-FE25-99A748152CFA";
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
	setAttr ".t" -type "double3" 0.10554582826508144 0.48568970125417865 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on -k on ".enable";
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker4_MKRShape" -p "marker4_MKR";
	rename -uid "4CE4C183-45CE-EDDE-3233-CE991CD02E95";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker5_MKR" -p "markerGroup1";
	rename -uid "B46B0D10-49FA-6EE6-F2DD-85B75DC3034C";
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
	setAttr ".t" -type "double3" 0.30411509839118761 0.47361454293571187 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on -k on ".enable";
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker5_MKRShape" -p "marker5_MKR";
	rename -uid "0ECD7468-4AD6-F997-3ED6-B794A7745879";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker6_MKR" -p "markerGroup1";
	rename -uid "B59250ED-4A4F-3C29-AE2E-0BBD936D6204";
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
	setAttr ".t" -type "double3" 0.49751442237203414 0.43952194369063285 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on -k on ".enable";
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker6_MKRShape" -p "marker6_MKR";
	rename -uid "B75B2F28-432A-C2B9-753C-C58A9CAF1262";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker7_MKR" -p "markerGroup1";
	rename -uid "A8203263-484D-AF81-8C81-AE8F973E01AE";
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
	setAttr ".t" -type "double3" -0.39522141507554603 -0.41681746026744088 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on -k on ".enable";
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker7_MKRShape" -p "marker7_MKR";
	rename -uid "BB6AA7A8-4BEF-655D-6973-AABEDE027E3B";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker8_MKR" -p "markerGroup1";
	rename -uid "0D6776C6-48AC-9315-5D48-97910B24BE09";
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
	setAttr ".t" -type "double3" -0.29239958351117507 -0.44181255750314902 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on -k on ".enable";
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker8_MKRShape" -p "marker8_MKR";
	rename -uid "69AEE45C-4FB4-1B07-17B8-CEA534B0D73D";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker9_MKR" -p "markerGroup1";
	rename -uid "A2EF92C5-4B5C-7FBA-837F-28A44F19245D";
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
	setAttr ".t" -type "double3" -0.16280123331025129 -0.46751801539424143 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on -k on ".enable";
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker9_MKRShape" -p "marker9_MKR";
	rename -uid "1F793BD8-41CE-657D-7F33-D0A9ABF79E99";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker10_MKR" -p "markerGroup1";
	rename -uid "97D08060-4E91-99AB-7F89-48B5D6A0E343";
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
	setAttr ".t" -type "double3" -0.03855818683663844 -0.46912460651243471 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on -k on ".enable";
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker10_MKRShape" -p "marker10_MKR";
	rename -uid "D096AFBD-40A4-DB5A-5A65-3685545812FA";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker11_MKR" -p "markerGroup1";
	rename -uid "E207A4AA-42EF-672F-5257-C79635361E66";
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
	setAttr ".t" -type "double3" 0.087826981127898787 -0.47555097098520788 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on -k on ".enable";
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker11_MKRShape" -p "marker11_MKR";
	rename -uid "398CD74B-42E4-CE31-CF8D-329076511AB5";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker12_MKR" -p "markerGroup1";
	rename -uid "902116BE-4791-4C7F-E63D-D59E376FAEC1";
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
	setAttr ".t" -type "double3" 0.21421214909243638 -0.47073119763062893 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on -k on ".enable";
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker12_MKRShape" -p "marker12_MKR";
	rename -uid "FE5ADC8E-4A1B-F9BA-8AC7-9F8FF101BAA0";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker13_MKR" -p "markerGroup1";
	rename -uid "FDF08BCE-46FE-66FA-E116-12A42F91C0F7";
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
	setAttr ".t" -type "double3" 0.36844489643899014 -0.45627187756688875 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on -k on ".enable";
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker13_MKRShape" -p "marker13_MKR";
	rename -uid "35B34221-4588-EDFA-B95F-10929A913E2B";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker14_MKR" -p "markerGroup1";
	rename -uid "98F8474C-4599-548E-FD8C-E496A6B2E689";
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
	setAttr ".t" -type "double3" 0.49458609177565066 -0.43107772555839657 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr -l on -k on ".enable";
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker14_MKRShape" -p "marker14_MKR";
	rename -uid "E9ADB12E-4CCD-BDBC-130A-0884B2ECB89D";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pPlane1";
	rename -uid "9B1C759A-43D1-9166-F34C-E4B11B4A0D5D";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 2 1 1 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "D55C58E5-467F-A5F3-4157-5496125A4935";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "bundle1_BND" -p "pPlane1";
	rename -uid "59A276DD-4FF1-B04A-9D7C-03AB76A848E7";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" -at "long";
	setAttr ".t" -type "double3" -0.5 0 -0.5 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		1;
createNode mmBundleShape -n "bundle1_BNDShape" -p "bundle1_BND";
	rename -uid "D4ACA338-420B-4D1A-0495-3BB7128B70C2";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle2_BND" -p "pPlane1";
	rename -uid "7500E2A1-4781-92FD-C67A-819323E1B430";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" -at "long";
	setAttr ".t" -type "double3" -0.29009534947786114 0 -0.5 ;
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		1;
createNode mmBundleShape -n "bundle2_BNDShape" -p "bundle2_BND";
	rename -uid "A409E7D9-4C8E-FC53-7BED-1082BB23490F";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle3_BND" -p "pPlane1";
	rename -uid "2FFEE855-4154-E0F4-DDFB-D0B88DD1F2B1";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" -at "long";
	setAttr ".t" -type "double3" -0.1132469354236236 0 -0.5 ;
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		1;
createNode mmBundleShape -n "bundle3_BNDShape" -p "bundle3_BND";
	rename -uid "ADDD7FAB-4E11-B6A0-11E3-3BA7F6EF0DDB";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle4_BND" -p "pPlane1";
	rename -uid "0E676388-47D0-4FA0-BF2A-2A9DEC424C83";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" -at "long";
	setAttr ".t" -type "double3" 0.068033826604331063 0 -0.5 ;
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		1;
createNode mmBundleShape -n "bundle4_BNDShape" -p "bundle4_BND";
	rename -uid "8E84BA4B-4BA7-A3BE-FB51-948D6C6D47D5";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle5_BND" -p "pPlane1";
	rename -uid "DF1BE9AA-4636-D1C5-55CF-998654F6C1D2";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" -at "long";
	setAttr ".t" -type "double3" 0.265145350187169 0 -0.5 ;
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		1;
createNode mmBundleShape -n "bundle5_BNDShape" -p "bundle5_BND";
	rename -uid "300B3880-4C97-A003-568A-5FB2C9F0F045";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle6_BND" -p "pPlane1";
	rename -uid "DF9B529D-419B-9F78-7DC0-52867670191B";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" -at "long";
	setAttr ".t" -type "double3" 0.5 0 -0.5 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		1;
createNode mmBundleShape -n "bundle6_BNDShape" -p "bundle6_BND";
	rename -uid "5579C061-4C2D-C914-CB72-0A925D947B74";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle7_BND" -p "pPlane1";
	rename -uid "2AE0FBED-4E26-A93F-15E8-BC8122C4463A";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" -at "long";
	setAttr ".t" -type "double3" -0.5 0 0.5 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		1;
createNode mmBundleShape -n "bundle7_BNDShape" -p "bundle7_BND";
	rename -uid "58371550-4400-8B04-73A8-EFB262F53DE0";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle8_BND" -p "pPlane1";
	rename -uid "3A608323-4544-6077-0595-A68A0497A11B";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" -at "long";
	setAttr ".t" -type "double3" -0.33681424441043867 0 0.5 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		1;
createNode mmBundleShape -n "bundle8_BNDShape" -p "bundle8_BND";
	rename -uid "AB757085-407A-8F0B-E0C1-2F99B5DD3C79";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle9_BND" -p "pPlane1";
	rename -uid "BB419FC5-4A29-AF1E-17B6-28985E4857A2";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" -at "long";
	setAttr ".t" -type "double3" -0.20307967161447754 0 0.5 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		1;
createNode mmBundleShape -n "bundle9_BNDShape" -p "bundle9_BND";
	rename -uid "986796C4-45E3-97EF-E77F-5793C2631CFD";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle10_BND" -p "pPlane1";
	rename -uid "1739FE7E-44AC-163D-29EB-74A980C8E84C";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" -at "long";
	setAttr ".t" -type "double3" -0.076632524597545451 0 0.5 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		1;
createNode mmBundleShape -n "bundle10_BNDShape" -p "bundle10_BND";
	rename -uid "F35B7E15-4C52-34BC-B94F-EE8A1F8B7C8D";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle11_BND" -p "pPlane1";
	rename -uid "2C0C9973-4BC3-82B6-0E8E-278BEFB9CF7E";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" -at "long";
	setAttr ".t" -type "double3" 0.05086685868314008 0 0.5 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		1;
createNode mmBundleShape -n "bundle11_BNDShape" -p "bundle11_BND";
	rename -uid "07C170C5-4096-541F-CB8A-BF937C1A9A5A";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle12_BND" -p "pPlane1";
	rename -uid "E7343449-442C-6F2C-63CE-3B8EA8AE946A";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" -at "long";
	setAttr ".t" -type "double3" 0.17691471819903909 0 0.5 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		1;
createNode mmBundleShape -n "bundle12_BNDShape" -p "bundle12_BND";
	rename -uid "67121A26-471F-D5E1-228C-F493B24FB076";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle13_BND" -p "pPlane1";
	rename -uid "73832253-463E-9848-5BAD-978DE3940D5A";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" -at "long";
	setAttr ".t" -type "double3" 0.32892755614851515 0 0.5 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		1;
createNode mmBundleShape -n "bundle13_BNDShape" -p "bundle13_BND";
	rename -uid "09EE2A46-4627-7074-D2E3-229C76656677";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle14_BND" -p "pPlane1";
	rename -uid "030CEB4A-4268-CA87-1974-3FB5E429BBCE";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_used_hint" -at "long";
	setAttr ".t" -type "double3" 0.5 0 0.5 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateX_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateY_smoothness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_translateZ_smoothness_weight" 
		1;
createNode mmBundleShape -n "bundle14_BNDShape" -p "bundle14_BND";
	rename -uid "C4B0E498-452C-7B0F-EB8E-BAB13978A237";
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
	rename -uid "E7DDA379-4166-77BE-4521-CC90706D2057";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "400922EE-4066-29DF-D53E-A9BCEC633862";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "3984314A-42E5-DA25-CEE4-40937B1026EB";
createNode displayLayerManager -n "layerManager";
	rename -uid "A38A9AAE-4816-DB01-3B52-E2A51C042BE1";
createNode displayLayer -n "defaultLayer";
	rename -uid "64F3A7AB-467B-422A-BA98-6F83C76C30F2";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5A7DEBA9-4959-C5EC-E757-EFB367E77C9E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "5A4934EA-48EE-D19A-F44C-C8A7F1C27CF4";
	setAttr ".g" yes;
createNode mmLensModelToggle -n "lensDistortionToggle1";
	rename -uid "67FBDF98-4E7C-F1C5-2F89-9894987A977F";
createNode polyPlane -n "polyPlane1";
	rename -uid "0BB0B89F-48F1-A7F6-8531-FE99E5F9999D";
	setAttr ".ax" -type "double3" 0 0 1 ;
createNode mmLensDeformer -n "mmLensDeformer1";
	rename -uid "BB1E9823-4FC3-6770-44CA-D59EEE615243";
createNode mmMarkerScale -n "mmMarkerScale1";
	rename -uid "E2617B19-46F4-0C11-B1F0-31A9DD7FC580";
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "18F91D01-4762-0AE1-322F-13B915E3A171";
	setAttr ".i2" -type "float3" 1 1 -1 ;
createNode timeToUnitConversion -n "timeToUnitConversion1";
	rename -uid "2A7F54A9-47FA-631A-B7D9-349547008495";
	setAttr ".cf" 0.004;
createNode expression -n "expression1";
	rename -uid "343A2A5E-4C12-B9F1-61BE-609CD7863979";
	setAttr -k on ".nds";
	setAttr -s 2 ".out";
	setAttr ".ixp" -type "string" "if (.I[0] == 0)\n{\n    .O[0] = 0;\n    .O[1] = 1;\n} else {\n    .O[0] = 1;\n    .O[1] = 0;\n}";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "F7FE9181-4DBE-8722-9D52-89A16B09E643";
createNode file -n "file1";
	rename -uid "071C1505-4A4C-9BCF-387E-E5AE75F6B884";
	setAttr ".ftn" -type "string" "C:/Users/catte/OneDrive/C_Drive/Projects/MatchMove/tutorials4/grid_shots/grid_anamorphic_40mm.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode surfaceShader -n "surfaceShader1";
	rename -uid "55DDD900-4FBA-71CF-0DFF-FC80998E292C";
createNode shadingEngine -n "set1";
	rename -uid "DB3D244A-48E5-C8C7-7E60-CFACA5D1C159";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "44CAEEB1-4F19-21A4-D8E7-F5BCE301181E";
createNode expression -n "expression2";
	rename -uid "3D355016-42FB-C5F9-71E2-E9B2E7493291";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode mmMarkerScale -n "mmMarkerScale2";
	rename -uid "29A6B97A-4791-620C-631E-7F812EEA609F";
	setAttr ".ovrscnmd" 1;
createNode script -n "mmSolver_data_node";
	rename -uid "89D32344-478C-D1CB-57D2-E1A9BDF13652";
	addAttr -ci true -sn "mmSolver_data" -ln "mmSolver_data" -dt "string";
	setAttr -l on ".mmSolver_data" -type "string" "{\"active_collection_uid\": \"EA4B4B54-4A34-4B7B-4C03-DC9A6224E961\", \"display_object_weight\": true, \"display_object_frame_deviation\": true, \"display_object_average_deviation\": true, \"display_object_maximum_deviation\": false, \"display_attribute_state\": true, \"display_attribute_min_max\": true, \"display_attribute_stiffness\": true, \"display_attribute_smoothness\": true}";
createNode polyPlane -n "polyPlane2";
	rename -uid "495A874D-4497-6A78-4DEA-FC9CF7F692B1";
	setAttr ".cuv" 2;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9156DDB9-400F-85E7-F2DA-239BCDBB1745";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n"
		+ "            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n"
		+ "            -captureSequenceNumber -1\n            -width 1062\n            -height 854\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n"
		+ "            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1319\n            -height 607\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n"
		+ "                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n"
		+ "            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                -pluginObjects \"mmLineDisplayFilter\" 1 \n                -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n                -pluginObjects \"mmBundleDisplayFilter\" 1 \n                -pluginObjects \"mmMarkerDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1062\\n    -height 854\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmLineDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmSkyDomeDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmBundleDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmMarkerDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1062\\n    -height 854\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmLineDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmSkyDomeDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmBundleDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmMarkerDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DB56B3AF-458A-BB70-8AB2-CA9D69A6B815";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 2 -ast 1 -aet 2 ";
	setAttr ".st" 6;
createNode surfaceShader -n "surfaceShader2";
	rename -uid "4BF87F41-4325-B743-39E1-E7A03F66DEDF";
	setAttr ".ot" -type "float3" 0.87349397 0.87349397 0.87349397 ;
createNode shadingEngine -n "surfaceShader2SG";
	rename -uid "6E8B6347-47EE-8846-A657-9CB614B30AFE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "174D1AFA-4A27-7BB3-FE30-7C9BF0352778";
createNode checker -n "checker1";
	rename -uid "06DBBFC8-42CB-0F70-EA26-D1AAD9259F66";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "533E69F4-428D-D9A1-3DBE-8AA3B9A504CF";
	setAttr ".re" -type "float2" 8 4 ;
createNode objectSet -n "collection1";
	rename -uid "EA4B4B54-4A34-4B7B-4C03-DC9A6224E961";
	addAttr -ci true -sn "solver_list" -ln "solver_list" -dt "string";
	addAttr -ci true -sn "solver_results" -ln "solver_results" -dt "string";
	addAttr -ci true -k true -sn "deviation" -ln "deviation" -dv -1 -min -1 -at "double";
	addAttr -ci true -sn "solver_step_list" -ln "solver_step_list" -dt "string";
	addAttr -ci true -sn "override_current_frame" -ln "override_current_frame" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "object_toggle_camera" -ln "object_toggle_camera" -dv 1 -min 
		0 -max 1 -at "bool";
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
	addAttr -ci true -sn "solver_scene_graph" -ln "solver_scene_graph" -at "long";
	addAttr -ci true -sn "solver_eval_complex_node_graphs" -ln "solver_eval_complex_node_graphs" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "solver_eval_object_relationships" -ln "solver_eval_object_relationships" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "solver_frames" -ln "solver_frames" -dt "string";
	addAttr -ci true -sn "solve_timestamp" -ln "solve_timestamp" -dt "string";
	addAttr -ci true -sn "solve_duration" -ln "solve_duration" -dt "string";
	addAttr -ci true -sn "solver_user_frames" -ln "solver_user_frames" -dt "string";
	addAttr -ci true -sn "solver_root_frames" -ln "solver_root_frames" -dt "string";
	addAttr -ci true -sn "solver_use_per_marker_frames" -ln "solver_use_per_marker_frames" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "solver_use_span_frames" -ln "solver_use_span_frames" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "solver_per_marker_frames" -ln "solver_per_marker_frames" -dv 
		2 -at "long";
	addAttr -ci true -sn "solver_span_frames" -ln "solver_span_frames" -dv 10 -at "long";
	addAttr -ci true -sn "solver_global_solve" -ln "solver_global_solve" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "solver_only_root_frames" -ln "solver_only_root_frames" -min 
		0 -max 1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 14 ".dsm";
	setAttr -s 47 ".dnsm";
	setAttr -l on ".solver_list" -type "string" "[{\"enabled\": true, \"name\": \"c7368efe-fb96-4193-bdc8-42b1679cac41\", \"use_single_frame\": true, \"single_frame\": 0, \"global_solve\": false, \"only_root_frames\": false, \"scene_graph_mode\": 0, \"eval_object_relationships\": false, \"eval_complex_node_graphs\": false}]";
	setAttr -l on ".solver_results" -type "string" (
		"[[\"success=1\", \"reason_num=1\", \"error_final=290.901\", \"error_final_average=71.6615\", \"error_final_maximum=113.67\", \"error_final_minimum=18.0527\", \"iteration_num=4\", \"iteration_function_num=4\", \"iteration_jacobian_num=45\", \"user_interrupted=0\", \"timer_solve=9.1e-05\", \"timer_function=0\", \"timer_jacobian=0\", \"timer_parameter=0\", \"timer_error=0\", \"ticks_solve=319432649\", \"ticks_function=0\", \"ticks_jacobian=0\", \"ticks_parameter=0\", \"ticks_error=0\", \"solve_parameter_list=-1.53435#0#359.945#362.204#360.059#-0.113247#-0.290095#0.0680338#0.265145#0.176915#-0.20308#-0.336814#-0.0766325#0.0508669#0.328928#\", \"solve_error_list=96.9339#22.607#111.109#11.9554#0.417562#22.0566#101.301#36.337#1.3063#85.6647#0.834612#54.7313#1.35012#88.5394#1.247#65.656#0.656331#41.7416#110.401#27.0618#0.369368#18.0489#1.21405#64.1331#1.37045#72.3946#1.091#57.6323#\", \"error_per_marker_per_frame=|persp1|markerGroup1|marker6_MKR#0#99.5352\", \"error_per_marker_per_frame=|persp1|markerGroup1|marker1_MKR#0#111.75\", \"error_per_marker_per_frame=|persp1|markerGroup1|marker13_MKR#0#22.0605\", \"error_per_marker_per_frame=|persp1|markerGroup1|marker14_MKR#0#107.621\", \"error_per_marker_per_frame=|persp1|markerGroup1|marker4_MKR#0#85.6746\", \"error_per_marker_per_frame=|persp1|markerGroup1|marker5_MKR#0#54.7377\", \"error_per_marker_per_frame=|persp1|markerGroup1|marker3_MKR#0#88.5497\", \"error_per_marker_per_frame=|persp1|markerGroup1|marker9_MKR#0#65.6678\", \"error_per_marker_per_frame=|persp1|markerGroup1|marker2_MKR#0#41.7467\", \"error_per_marker_per_frame=|persp1|markerGroup1|marker7_MKR#0#113.67\", \"error_per_marker_per_frame=|persp1|markerGroup1|marker8_MKR#0#18.0527\", \"error_per_marker_per_frame=|persp1|markerGroup1|marker10_MKR#0#64.1446\", \"error_per_marker_per_frame=|persp1|markerGroup1|marker11_MKR#0#72.4076\", \"error_per_marker_per_frame=|persp1|markerGroup1|marker12_MKR#0#57.6426\", \"error_per_frame=0#71.6615\"]]");
	setAttr -k on ".deviation";
	setAttr -l on ".solver_step_list" -type "string" "[{\"name\": \"c549d5fe-55b8-4505-9507-8311219f7e7a\", \"enabled\": true, \"frame_list\": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120], \"strategy\": \"two_frames_fwd\", \"use_anim_attrs\": true, \"use_static_attrs\": false}]";
	setAttr -l on ".override_current_frame";
	setAttr -l on ".object_toggle_camera";
	setAttr -l on ".object_toggle_marker";
	setAttr -l on ".object_toggle_bundle";
	setAttr -l on ".attribute_toggle_animated";
	setAttr -l on ".attribute_toggle_static";
	setAttr -l on ".attribute_toggle_locked";
	setAttr -l on ".solver_tab" -type "string" "standard";
	setAttr -l on ".solver_range_type" 0;
	setAttr -l on ".solver_increment_by_frame";
	setAttr -l on ".solver_scene_graph";
	setAttr -l on ".solver_eval_complex_node_graphs";
	setAttr -l on ".solver_eval_object_relationships";
	setAttr -l on ".solver_frames";
	setAttr -l on ".solve_timestamp" -type "string" "[1648864405.3109496]";
	setAttr -l on ".solve_duration" -type "string" "[0.5095229148864746]";
	setAttr -l on ".solver_user_frames" -type "string" "1";
	setAttr -l on ".solver_root_frames" -type "string" "0-1";
	setAttr -l on ".solver_use_per_marker_frames";
	setAttr -l on ".solver_use_span_frames";
	setAttr -l on ".solver_per_marker_frames";
	setAttr -l on ".solver_span_frames";
	setAttr -l on ".solver_global_solve";
	setAttr -l on ".solver_only_root_frames";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "65EA4D9A-4CBD-9B0D-48E5-4B80B8470C16";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -711.90473361620946 -463.09521969348742 ;
	setAttr ".tgi[0].vh" -type "double2" 685.71425846644922 485.71426641373489 ;
	setAttr -s 88 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -692.85711669921875;
	setAttr ".tgi[0].ni[0].y" 1232.857177734375;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1150;
	setAttr ".tgi[0].ni[1].y" -277.14285278320312;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 381.42855834960938;
	setAttr ".tgi[0].ni[2].y" -198.57142639160156;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 228.57142639160156;
	setAttr ".tgi[0].ni[3].y" 605.71429443359375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 1150;
	setAttr ".tgi[0].ni[4].y" 1522.857177734375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -78.571426391601562;
	setAttr ".tgi[0].ni[5].y" 792.85711669921875;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 535.71429443359375;
	setAttr ".tgi[0].ni[6].y" 1135.7142333984375;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 1150;
	setAttr ".tgi[0].ni[7].y" -1174.2857666015625;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -1054.2857666015625;
	setAttr ".tgi[0].ni[8].y" 1220;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -78.571426391601562;
	setAttr ".tgi[0].ni[9].y" 1145.7142333984375;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 1150;
	setAttr ".tgi[0].ni[10].y" -408.57144165039062;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 1150;
	setAttr ".tgi[0].ni[11].y" 1140;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 842.85711669921875;
	setAttr ".tgi[0].ni[12].y" 1241.4285888671875;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" -385.71429443359375;
	setAttr ".tgi[0].ni[13].y" 1102.857177734375;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" -1361.4285888671875;
	setAttr ".tgi[0].ni[14].y" 1321.4285888671875;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 842.85711669921875;
	setAttr ".tgi[0].ni[15].y" 1140;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 1150;
	setAttr ".tgi[0].ni[16].y" 1421.4285888671875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 1150;
	setAttr ".tgi[0].ni[17].y" 1292.857177734375;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 842.85711669921875;
	setAttr ".tgi[0].ni[18].y" 1342.857177734375;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" -1054.2857666015625;
	setAttr ".tgi[0].ni[19].y" 1321.4285888671875;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 228.57142639160156;
	setAttr ".tgi[0].ni[20].y" 1205.7142333984375;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 842.85711669921875;
	setAttr ".tgi[0].ni[21].y" 302.85714721679688;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 535.71429443359375;
	setAttr ".tgi[0].ni[22].y" 452.85714721679688;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 842.85711669921875;
	setAttr ".tgi[0].ni[23].y" -1124.2857666015625;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 1150;
	setAttr ".tgi[0].ni[24].y" -278.57144165039062;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 842.85711669921875;
	setAttr ".tgi[0].ni[25].y" 880;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 1302.857177734375;
	setAttr ".tgi[0].ni[26].y" -624.28570556640625;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 1150;
	setAttr ".tgi[0].ni[27].y" -878.5714111328125;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 842.85711669921875;
	setAttr ".tgi[0].ni[28].y" -331.42855834960938;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 1302.857177734375;
	setAttr ".tgi[0].ni[29].y" -494.28570556640625;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 842.85711669921875;
	setAttr ".tgi[0].ni[30].y" -807.14288330078125;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" -30;
	setAttr ".tgi[0].ni[31].y" 18.571428298950195;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 1302.857177734375;
	setAttr ".tgi[0].ni[32].y" -721.4285888671875;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 842.85711669921875;
	setAttr ".tgi[0].ni[33].y" -172.85714721679688;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 842.85711669921875;
	setAttr ".tgi[0].ni[34].y" -490;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 1150;
	setAttr ".tgi[0].ni[35].y" -1037.142822265625;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 1150;
	setAttr ".tgi[0].ni[36].y" -540;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 1150;
	setAttr ".tgi[0].ni[37].y" -1117.142822265625;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 47.142856597900391;
	setAttr ".tgi[0].ni[38].y" 102.85713958740234;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 1150;
	setAttr ".tgi[0].ni[39].y" -800;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 842.85711669921875;
	setAttr ".tgi[0].ni[40].y" 562.85711669921875;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 1150;
	setAttr ".tgi[0].ni[41].y" -670;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 1150;
	setAttr ".tgi[0].ni[42].y" 671.4285888671875;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 842.85711669921875;
	setAttr ".tgi[0].ni[43].y" -648.5714111328125;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 1150;
	setAttr ".tgi[0].ni[44].y" -381.42855834960938;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" -182.85714721679688;
	setAttr ".tgi[0].ni[45].y" -244.28572082519531;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 1302.857177734375;
	setAttr ".tgi[0].ni[46].y" -650;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 1302.857177734375;
	setAttr ".tgi[0].ni[47].y" -592.85711669921875;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 842.85711669921875;
	setAttr ".tgi[0].ni[48].y" -965.71429443359375;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 842.85711669921875;
	setAttr ".tgi[0].ni[49].y" 721.4285888671875;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 1302.857177734375;
	setAttr ".tgi[0].ni[50].y" -591.4285888671875;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 1150;
	setAttr ".tgi[0].ni[51].y" 830;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 1302.857177734375;
	setAttr ".tgi[0].ni[52].y" -462.85714721679688;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 1150;
	setAttr ".tgi[0].ni[53].y" -958.5714111328125;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 1150;
	setAttr ".tgi[0].ni[54].y" -1015.7142944335938;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 842.85711669921875;
	setAttr ".tgi[0].ni[55].y" 1038.5714111328125;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 1302.857177734375;
	setAttr ".tgi[0].ni[56].y" -520;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 1150;
	setAttr ".tgi[0].ni[57].y" -748.5714111328125;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 1150;
	setAttr ".tgi[0].ni[58].y" -857.14288330078125;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 1150;
	setAttr ".tgi[0].ni[59].y" 988.5714111328125;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 1150;
	setAttr ".tgi[0].ni[60].y" -698.5714111328125;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" -260;
	setAttr ".tgi[0].ni[61].y" 102.85713958740234;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 1150;
	setAttr ".tgi[0].ni[62].y" -828.5714111328125;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" 1150;
	setAttr ".tgi[0].ni[63].y" -987.14288330078125;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 842.85711669921875;
	setAttr ".tgi[0].ni[64].y" 404.28570556640625;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 1150;
	setAttr ".tgi[0].ni[65].y" -1195.7142333984375;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 1150;
	setAttr ".tgi[0].ni[66].y" -907.14288330078125;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 1150;
	setAttr ".tgi[0].ni[67].y" 302.85714721679688;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 1150;
	setAttr ".tgi[0].ni[68].y" 512.85711669921875;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 1150;
	setAttr ".tgi[0].ni[69].y" -1065.7142333984375;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" -172.85714721679688;
	setAttr ".tgi[0].ni[70].y" 288.57144165039062;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" 1150;
	setAttr ".tgi[0].ni[71].y" -1354.2857666015625;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 1150;
	setAttr ".tgi[0].ni[72].y" -1275.7142333984375;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 1150;
	setAttr ".tgi[0].ni[73].y" -64.285713195800781;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 1150;
	setAttr ".tgi[0].ni[74].y" -222.85714721679688;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 1150;
	setAttr ".tgi[0].ni[75].y" -1224.2857666015625;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" -581.4285888671875;
	setAttr ".tgi[0].ni[76].y" -131.42857360839844;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 1150;
	setAttr ".tgi[0].ni[77].y" -1434.2857666015625;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" 842.85711669921875;
	setAttr ".tgi[0].ni[78].y" -14.285714149475098;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 842.85711669921875;
	setAttr ".tgi[0].ni[79].y" 144.28572082519531;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" -192.85714721679688;
	setAttr ".tgi[0].ni[80].y" 418.57144165039062;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 1150;
	setAttr ".tgi[0].ni[81].y" 94.285713195800781;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 1150;
	setAttr ".tgi[0].ni[82].y" -1304.2857666015625;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 1150;
	setAttr ".tgi[0].ni[83].y" -1145.7142333984375;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 354.28570556640625;
	setAttr ".tgi[0].ni[84].y" 154.28572082519531;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" -567.14288330078125;
	setAttr ".tgi[0].ni[85].y" 204.28572082519531;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 47.142856597900391;
	setAttr ".tgi[0].ni[86].y" 204.28572082519531;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" -260;
	setAttr ".tgi[0].ni[87].y" 204.28572082519531;
	setAttr ".tgi[0].ni[87].nvs" 18304;
createNode mmLensModel3deClassic -n "lens1";
	rename -uid "33113E35-4420-37AA-6EEB-03A9FD19E52A";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_used_hint" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_smoothness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_smoothness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_stiffness_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_stiffness_variance" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_min_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_max_enable" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_min_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_max_value" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_stiffness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_smoothness_weight" 
		-ln "aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_smoothness_weight" -at "double";
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_smoothness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_stiffness_variance" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_min_value" -1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_max_value" 1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_stiffness_weight" 
		1;
	setAttr ".aux_EA4B4B54_4A34_4B7B_4C03_DC9A6224E961_distortion_smoothness_weight" 
		1;
createNode animCurveTU -n "collection1_deviation";
	rename -uid "539CC43E-412A-BC8B-85F1-62BCFFBAED7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 71.6615 1 999.9;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "lens1.olns" "perspShape1.ilns";
connectAttr "lensDistortionToggle1.olns" "perspShape1.olns";
connectAttr "bakedImagePlane1Shape1.msg" "perspShape1.ip" -na;
connectAttr ":defaultColorMgtGlobals.cme" "bakedImagePlane1Shape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "bakedImagePlane1Shape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "bakedImagePlane1Shape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "bakedImagePlane1Shape1.ws";
connectAttr "expression1.out[0]" "bakedImagePlane1Shape1.lodv";
connectAttr "imagePlane1.depth" "bakedImagePlane1Shape1.d";
connectAttr "imagePlane1.imageSequenceFrame" "bakedImagePlane1Shape1.fe";
connectAttr "perspShape1.hfa" "bakedImagePlane1Shape1.sx";
connectAttr "perspShape1.vfa" "bakedImagePlane1Shape1.sy";
connectAttr "perspShape1.hfo" "bakedImagePlane1Shape1.ox";
connectAttr "perspShape1.vfo" "bakedImagePlane1Shape1.oy";
connectAttr "perspShape1.fl" "imagePlane1.focalLength";
connectAttr "perspShape1.hfa" "imagePlane1.horizontalFilmAperture";
connectAttr "perspShape1.vfa" "imagePlane1.verticalFilmAperture";
connectAttr "perspShape1.hfo" "imagePlane1.horizontalFilmOffset";
connectAttr "perspShape1.vfo" "imagePlane1.verticalFilmOffset";
connectAttr "timeToUnitConversion1.o" "imagePlane1.imageSequenceFrame";
connectAttr "mmMarkerScale1.os" "imagePlane1.s";
connectAttr "mmMarkerScale1.otx" "imagePlane1.tx" -l on;
connectAttr "mmMarkerScale1.oty" "imagePlane1.ty" -l on;
connectAttr "multiplyDivide1.oz" "imagePlane1.tz" -l on;
connectAttr "file1.msg" "imagePlane1.shaderFileNode";
connectAttr "bakedImagePlane1Shape1.msg" "imagePlane1.imagePlaneShapeNode";
connectAttr "mmLensDeformer1.og[0]" "imagePlane1Shape.i";
connectAttr "expression1.out[1]" "imagePlane1Shape.lodv";
connectAttr "polyPlane1.out" "imagePlane1ShapeOrig.i";
connectAttr "mmMarkerScale2.os" "markerGroup1.s";
connectAttr "mmMarkerScale2.ot" "markerGroup1.t";
connectAttr "marker1_MKR.enable" "marker1_MKR.lodv";
connectAttr "bundle1_BND.msg" "marker1_MKR.bundle";
connectAttr "perspShape1.olns" "marker1_MKR.ilns";
connectAttr "marker2_MKR.enable" "marker2_MKR.lodv";
connectAttr "bundle2_BND.msg" "marker2_MKR.bundle";
connectAttr "perspShape1.olns" "marker2_MKR.ilns";
connectAttr "marker3_MKR.enable" "marker3_MKR.lodv";
connectAttr "bundle3_BND.msg" "marker3_MKR.bundle";
connectAttr "perspShape1.olns" "marker3_MKR.ilns";
connectAttr "marker4_MKR.enable" "marker4_MKR.lodv";
connectAttr "bundle4_BND.msg" "marker4_MKR.bundle";
connectAttr "perspShape1.olns" "marker4_MKR.ilns";
connectAttr "marker5_MKR.enable" "marker5_MKR.lodv";
connectAttr "bundle5_BND.msg" "marker5_MKR.bundle";
connectAttr "perspShape1.olns" "marker5_MKR.ilns";
connectAttr "marker6_MKR.enable" "marker6_MKR.lodv";
connectAttr "bundle6_BND.msg" "marker6_MKR.bundle";
connectAttr "perspShape1.olns" "marker6_MKR.ilns";
connectAttr "marker7_MKR.enable" "marker7_MKR.lodv";
connectAttr "bundle7_BND.msg" "marker7_MKR.bundle";
connectAttr "perspShape1.olns" "marker7_MKR.ilns";
connectAttr "marker8_MKR.enable" "marker8_MKR.lodv";
connectAttr "bundle8_BND.msg" "marker8_MKR.bundle";
connectAttr "perspShape1.olns" "marker8_MKR.ilns";
connectAttr "marker9_MKR.enable" "marker9_MKR.lodv";
connectAttr "bundle9_BND.msg" "marker9_MKR.bundle";
connectAttr "perspShape1.olns" "marker9_MKR.ilns";
connectAttr "marker10_MKR.enable" "marker10_MKR.lodv";
connectAttr "bundle10_BND.msg" "marker10_MKR.bundle";
connectAttr "perspShape1.olns" "marker10_MKR.ilns";
connectAttr "marker11_MKR.enable" "marker11_MKR.lodv";
connectAttr "bundle11_BND.msg" "marker11_MKR.bundle";
connectAttr "perspShape1.olns" "marker11_MKR.ilns";
connectAttr "marker12_MKR.enable" "marker12_MKR.lodv";
connectAttr "bundle12_BND.msg" "marker12_MKR.bundle";
connectAttr "perspShape1.olns" "marker12_MKR.ilns";
connectAttr "marker13_MKR.enable" "marker13_MKR.lodv";
connectAttr "bundle13_BND.msg" "marker13_MKR.bundle";
connectAttr "perspShape1.olns" "marker13_MKR.ilns";
connectAttr "marker14_MKR.enable" "marker14_MKR.lodv";
connectAttr "bundle14_BND.msg" "marker14_MKR.bundle";
connectAttr "perspShape1.olns" "marker14_MKR.ilns";
connectAttr "polyPlane2.out" "pPlaneShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShader2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShader2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "perspShape1.ilns" "lensDistortionToggle1.ilns";
connectAttr "imagePlane1.meshResolution" "polyPlane1.sw";
connectAttr "imagePlane1.meshResolution" "polyPlane1.sh";
connectAttr "imagePlane1ShapeOrig.w" "mmLensDeformer1.ip[0].ig";
connectAttr "imagePlane1.focalLength" "mmLensDeformer1.fl";
connectAttr "imagePlane1.horizontalFilmAperture" "mmLensDeformer1.fbkw";
connectAttr "imagePlane1.verticalFilmAperture" "mmLensDeformer1.fbkh";
connectAttr "imagePlane1.pixelAspect" "mmLensDeformer1.pxasp";
connectAttr "imagePlane1.horizontalFilmOffset" "mmLensDeformer1.lcox";
connectAttr "imagePlane1.verticalFilmOffset" "mmLensDeformer1.lcoy";
connectAttr "perspShape1.olns" "mmLensDeformer1.ilns";
connectAttr "imagePlane1.depth" "mmMarkerScale1.dpt";
connectAttr "imagePlane1.focalLength" "mmMarkerScale1.fl";
connectAttr "imagePlane1.horizontalFilmAperture" "mmMarkerScale1.hfa";
connectAttr "imagePlane1.verticalFilmAperture" "mmMarkerScale1.vfa";
connectAttr "imagePlane1.horizontalFilmOffset" "mmMarkerScale1.hfo";
connectAttr "imagePlane1.verticalFilmOffset" "mmMarkerScale1.vfo";
connectAttr "mmMarkerScale1.dpt" "multiplyDivide1.i1z";
connectAttr ":time1.o" "timeToUnitConversion1.i";
connectAttr "imagePlane1.displayMode" "expression1.in[0]";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "expression2.out[0]" "file1.fe";
connectAttr "file1.oc" "surfaceShader1.oc";
connectAttr "surfaceShader1.oc" "set1.ss";
connectAttr "imagePlane1Shape.iog" "set1.dsm" -na;
connectAttr "set1.msg" "materialInfo1.sg";
connectAttr "surfaceShader1.msg" "materialInfo1.m";
connectAttr "surfaceShader1.msg" "materialInfo1.t" -na;
connectAttr "imagePlane1.imageSequenceFrame" "expression2.in[0]";
connectAttr "file1.msg" "expression2.obm";
connectAttr "markerGroup1.depth" "mmMarkerScale2.dpt";
connectAttr "markerGroup1.overscanX" "mmMarkerScale2.ovrscninvx";
connectAttr "markerGroup1.overscanY" "mmMarkerScale2.ovrscninvy";
connectAttr "perspShape1.fl" "mmMarkerScale2.fl";
connectAttr "perspShape1.cap" "mmMarkerScale2.cap";
connectAttr "perspShape1.fio" "mmMarkerScale2.fio";
connectAttr "checker1.oc" "surfaceShader2.oc";
connectAttr "surfaceShader2.oc" "surfaceShader2SG.ss";
connectAttr "pPlaneShape1.iog" "surfaceShader2SG.dsm" -na;
connectAttr "surfaceShader2SG.msg" "materialInfo2.sg";
connectAttr "surfaceShader2.msg" "materialInfo2.m";
connectAttr "surfaceShader2.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture2.o" "checker1.uv";
connectAttr "place2dTexture2.ofs" "checker1.fs";
connectAttr "collection1_deviation.o" "collection1.deviation" -l on;
connectAttr "bundle14_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle14_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle14_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle13_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle13_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle13_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle12_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle12_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle12_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle11_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle11_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle11_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle10_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle10_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle10_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle9_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle9_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle9_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle8_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle8_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle8_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle7_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle7_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle7_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle6_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle6_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle6_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle5_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle5_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle5_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle4_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle4_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle4_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle3_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle3_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle3_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle2_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle2_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle2_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle1_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle1_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle1_BND.tx" "collection1.dnsm" -na;
connectAttr "lens1.distortion" "collection1.dnsm" -na;
connectAttr "persp1.rz" "collection1.dnsm" -na;
connectAttr "persp1.ry" "collection1.dnsm" -na;
connectAttr "persp1.rx" "collection1.dnsm" -na;
connectAttr "perspShape1.fl" "collection1.dnsm" -na;
connectAttr "marker12_MKR.iog" "collection1.dsm" -na;
connectAttr "marker10_MKR.iog" "collection1.dsm" -na;
connectAttr "marker5_MKR.iog" "collection1.dsm" -na;
connectAttr "marker3_MKR.iog" "collection1.dsm" -na;
connectAttr "marker8_MKR.iog" "collection1.dsm" -na;
connectAttr "marker7_MKR.iog" "collection1.dsm" -na;
connectAttr "marker6_MKR.iog" "collection1.dsm" -na;
connectAttr "marker13_MKR.iog" "collection1.dsm" -na;
connectAttr "marker14_MKR.iog" "collection1.dsm" -na;
connectAttr "marker11_MKR.iog" "collection1.dsm" -na;
connectAttr "marker4_MKR.iog" "collection1.dsm" -na;
connectAttr "marker1_MKR.iog" "collection1.dsm" -na;
connectAttr "marker2_MKR.iog" "collection1.dsm" -na;
connectAttr "marker9_MKR.iog" "collection1.dsm" -na;
connectAttr "imagePlane1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "bakedImagePlane1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "persp1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "perspShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "lensDistortionToggle1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "bakedImagePlane1Shape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "mmLensDeformer1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "marker1_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "timeToUnitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "polyPlane1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "marker1_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "markerGroup1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "imagePlane1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "expression1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "place2dTexture1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "mmMarkerScale2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "expression2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn";
connectAttr "set1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "surfaceShader1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "file1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn";
connectAttr "imagePlane1ShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "multiplyDivide1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "mmMarkerScale1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn";
connectAttr "bundle1_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn";
connectAttr "bundle1_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "bundle5_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn";
connectAttr "marker3_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "marker7_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "bundle10_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "bundle3_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "bundle4_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "pPlane1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn";
connectAttr "marker5_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "bundle12_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn";
connectAttr "bundle9_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn";
connectAttr "marker9_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "marker9_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn";
connectAttr "bundle10_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "pPlaneShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn";
connectAttr "bundle6_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "bundle8_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn";
connectAttr "marker6_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "marker6_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn";
connectAttr "bundle7_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn";
connectAttr "marker10_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn";
connectAttr "mmSolver_data_node.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn"
		;
connectAttr "bundle4_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "marker2_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "bundle3_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "bundle6_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn";
connectAttr "bundle5_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "marker5_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn";
connectAttr "bundle2_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "marker8_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "marker3_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn";
connectAttr "bundle2_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn";
connectAttr "marker4_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "bundle7_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "marker4_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn";
connectAttr "marker2_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn";
connectAttr "marker7_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn";
connectAttr "polyPlane2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn";
connectAttr "bundle8_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "marker10_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn"
		;
connectAttr "bundle11_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn";
connectAttr "bundle11_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "bundle9_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "marker11_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn";
connectAttr "marker8_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn";
connectAttr "marker11_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn"
		;
connectAttr "uiConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn"
		;
connectAttr "marker13_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "bundle12_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "marker14_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn";
connectAttr "marker12_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn";
connectAttr "bundle13_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "collection1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn";
connectAttr "marker14_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "bundle14_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn";
connectAttr "bundle13_BND.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn";
connectAttr "sceneConfigurationScriptNode.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "marker13_MKR.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn";
connectAttr "bundle14_BNDShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "marker12_MKRShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "surfaceShader2SG.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "place2dTexture2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "surfaceShader2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn";
connectAttr "checker1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn";
connectAttr "set1.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader2SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
// End of anamorphic_lens_grid_v001.ma
