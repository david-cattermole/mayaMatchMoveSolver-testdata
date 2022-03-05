//Maya ASCII 2020 scene
//Name: stA.ma
//Last modified: Mon, Feb 21, 2022 01:40:24 PM
//Codeset: 949
requires maya "2020";
requires -nodeType "mmMarkerScale" -nodeType "mmLensModelToggle" -nodeType "mmMarkerShape"
		 -nodeType "mmBundleShape" -nodeType "mmMarkerGroupTransform" -nodeType "mmMarkerTransform"
		 -dataType "MMLensData" "mmSolver" "0.4.0.alpha3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "202011110415-b1e20b88e2";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19044)\n";
fileInfo "UUID" "657A5923-42D8-0E58-B056-9799D1144117";
createNode transform -s -n "persp";
	rename -uid "81458B6E-472A-9518-1D4E-4B91E2C102AE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 28 21 28 ;
	setAttr ".r" -type "double3" -27.938352729602379 44.999999999999972 -5.172681101354183e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E7D0EB93-4575-C680-5F34-C48837AC7D34";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 44.82186966202994;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "36802E13-4B9B-AF6E-7216-FD9AFE61AFF2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "EDC0D680-4B06-E7A1-AD6F-74A6427B335B";
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
	rename -uid "019A8A3B-4395-165D-6861-53ACE774DBC5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "ED459B43-4832-BB5A-8715-64A59D461823";
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
	rename -uid "ADD3B1D5-4537-C3CD-84A8-D699E0FAA60A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5BF2A640-4893-B59C-BFC0-E0B2C2EEA8C4";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Scene";
	rename -uid "59605DD8-49A0-220A-B2FC-13B957D25E19";
	setAttr ".ro" 2;
createNode transform -n "stA_1_1" -p "Scene";
	rename -uid "FD8977A2-4BF7-7E4D-1B1E-D4A1BDC5DA6D";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_used_hint" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_smoothness_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_smoothness_variance" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_stiffness_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_stiffness_variance" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_min_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_max_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_min_value" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_max_value" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_used_hint" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_smoothness_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_smoothness_variance" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_stiffness_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_stiffness_variance" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_min_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_max_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_min_value" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_max_value" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_used_hint" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_smoothness_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_smoothness_variance" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_stiffness_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_stiffness_variance" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_min_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_max_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_min_value" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_max_value" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_used_hint" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_smoothness_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_smoothness_variance" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_stiffness_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_stiffness_variance" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_min_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_max_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_min_value" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_max_value" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_used_hint" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_smoothness_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_smoothness_variance" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_stiffness_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_stiffness_variance" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_min_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_max_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_min_value" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_max_value" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_used_hint" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_smoothness_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_smoothness_variance" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_stiffness_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_stiffness_variance" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_min_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_max_enable" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_min_value" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_max_value" 
		-ln "aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_max_value" -at "double";
	setAttr ".ro" 2;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_smoothness_variance" 
		1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_stiffness_variance" 1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_min_value" -1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateX_max_value" 1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_smoothness_variance" 
		1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_stiffness_variance" 1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_min_value" -1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateY_max_value" 1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_smoothness_variance" 
		1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_stiffness_variance" 1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_min_value" -1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_rotateZ_max_value" 1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_smoothness_variance" 
		1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_stiffness_variance" 
		1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_min_value" -1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateX_max_value" 1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_smoothness_variance" 
		1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_stiffness_variance" 
		1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_min_value" -1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateY_max_value" 1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_smoothness_variance" 
		1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_stiffness_variance" 
		1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_min_value" -1;
	setAttr ".aux_58E69EAC_4BC0_218F_A2CD_6B9155E4E249_translateZ_max_value" 1;
createNode camera -n "stA_1_1Shape1" -p "stA_1_1";
	rename -uid "CDEA1FFE-4BCA-283F-59E5-068271B2DFB5";
	addAttr -s false -ci true -sn "ilns" -ln "inLens" -dt "MMLensData";
	addAttr -s false -ci true -sn "olns" -ln "outLens" -dt "MMLensData";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 0.87582530444564 0.58267716535433101 ;
	setAttr ".ff" 3;
	setAttr ".ncp" 0.01;
	setAttr ".sa" 180;
	setAttr ".imn" -type "string" "stA_1_1";
	setAttr ".den" -type "string" "stA_1_1_depth";
	setAttr ".man" -type "string" "stA_1_1_mask";
createNode transform -n "imagePlane1" -p "stA_1_1Shape1";
	rename -uid "3AAA8CA9-4F19-A4FC-251F-EE8E085FBDB6";
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "37B2E951-4D2B-4CC8-A36A-B1B42F475DE5";
	setAttr -k off ".v";
	setAttr ".fc" 101;
	setAttr ".imn" -type "string" "c:/Users/thisu/Downloads/tutorials4/stA/stA.0000.jpg";
	setAttr ".ufe" yes;
	setAttr ".fo" -1;
	setAttr ".cov" -type "short2" 1936 1288 ;
	setAttr ".f" 4;
	setAttr ".dic" yes;
	setAttr ".d" 4500;
	setAttr ".s" -type "double2" 0.87582530444564 0.58267716535433101 ;
	setAttr ".w" 10;
	setAttr ".h" 10;
	setAttr ".cs" -type "string" "sRGB";
createNode mmMarkerGroupTransform -n "markerGroup1" -p "stA_1_1";
	rename -uid "698DCD23-44C7-2EDC-6853-A6BE09C46BC8";
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
createNode mmMarkerTransform -n "marker_01_MKR" -p "markerGroup1";
	rename -uid "54170492-4357-FB5C-DEF1-66810F49DFCE";
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
	setAttr ".t" -type "double3" 0.34864986654119756 -0.037690170832632874 -1 ;
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
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName" -type "string" "01";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_01_MKRShape" -p "marker_01_MKR";
	rename -uid "9B894371-46C7-2F1D-9CC6-5FAE54410EE9";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_02_MKR" -p "markerGroup1";
	rename -uid "7C8D6EFF-4B0D-B61E-7FA0-D8B90C36C639";
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
	setAttr ".t" -type "double3" -0.17802311720040814 -0.11038338175796486 -1 ;
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
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName" -type "string" "02";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_02_MKRShape" -p "marker_02_MKR";
	rename -uid "9E9D6D9F-4BEF-F6C1-58E9-F8B45F80E111";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_03_MKR" -p "markerGroup1";
	rename -uid "E1892443-429F-24E3-7981-2AB53666079E";
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
	setAttr ".t" -type "double3" 0.017281123092361184 -0.012089477243869995 -1 ;
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
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName" -type "string" "03";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_03_MKRShape" -p "marker_03_MKR";
	rename -uid "353E2BC9-47EF-A449-A54B-7FA2C1F12074";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_04_MKR" -p "markerGroup1";
	rename -uid "6128EFFD-475F-9F77-EDCA-F0B1428F546C";
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
	setAttr ".t" -type "double3" -0.34479667854307017 -0.14473092410828337 -1 ;
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
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName" -type "string" "04";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_04_MKRShape" -p "marker_04_MKR";
	rename -uid "F0F08966-4254-B93D-C527-E197318B1751";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_05_MKR" -p "markerGroup1";
	rename -uid "3A613BF0-42DC-C973-CC30-5AA60209B635";
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
	setAttr ".t" -type "double3" 0.11115048566092867 -0.25936185040253856 -1 ;
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
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName" -type "string" "05";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_05_MKRShape" -p "marker_05_MKR";
	rename -uid "E7564684-474A-8AB6-16A5-E8A15440CD09";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_06_MKR" -p "markerGroup1";
	rename -uid "088C9BA0-498F-7EDB-3762-9CABF33838F9";
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
	setAttr ".t" -type "double3" 0.27264222727232945 -0.18447243832928079 -1 ;
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
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName" -type "string" "06";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_06_MKRShape" -p "marker_06_MKR";
	rename -uid "938EC573-41CB-4FD9-0A44-85A196A79334";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_07_MKR" -p "markerGroup1";
	rename -uid "6740C166-49E2-046E-FA2F-C8AA9DBB0018";
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
	setAttr ".t" -type "double3" 0.41492777558317095 0.24102884665430091 -1 ;
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
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName" -type "string" "07";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_07_MKRShape" -p "marker_07_MKR";
	rename -uid "AD6DA6B7-4DA4-1D87-EC73-799A5588CB5B";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_08_MKR" -p "markerGroup1";
	rename -uid "E90F3786-42B5-5208-C210-D2A8F60308C2";
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
	setAttr ".t" -type "double3" -0.1510288448141493 0.22154590140954156 -1 ;
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
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName" -type "string" "08";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_08_MKRShape" -p "marker_08_MKR";
	rename -uid "20F1576B-4B98-3AFB-660D-18A0272173D9";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_09_MKR" -p "markerGroup1";
	rename -uid "D6CA296D-4383-BB59-D3A6-F6B13DAACE2F";
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
	setAttr ".t" -type "double3" 0.48380024250737519 0.21900151440599946 -1 ;
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
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName" -type "string" "09";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_09_MKRShape" -p "marker_09_MKR";
	rename -uid "852C659B-4646-6EA0-ED86-ECB3B6DC26B4";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_10_MKR" -p "markerGroup1";
	rename -uid "FFE1208A-492D-B28A-CE2F-568F5F97A77C";
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
	setAttr ".t" -type "double3" 0.38751676528094714 -0.3803555308874037 -1 ;
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
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName" -type "string" "10";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_10_MKRShape" -p "marker_10_MKR";
	rename -uid "BA2A2DD9-4D9D-E7BB-24DB-918AC2FE21BE";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_11_MKR" -p "markerGroup1";
	rename -uid "CB2B911E-412D-9EB0-457D-C991A6840BB0";
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
	setAttr ".t" -type "double3" 0.4907366314493723 -0.36130938132746365 -1 ;
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
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName" -type "string" "11";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_11_MKRShape" -p "marker_11_MKR";
	rename -uid "A9A7AAB3-469A-7D6C-DBEF-7587D7475A3E";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_12_MKR" -p "markerGroup1";
	rename -uid "8FBED77E-4D65-FC91-CA3A-CB86B42EE2A5";
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
	setAttr ".t" -type "double3" -0.37677026795495566 -0.31776930089644678 -1 ;
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
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName" -type "string" "12";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_12_MKRShape" -p "marker_12_MKR";
	rename -uid "C81382D3-4AA0-3A18-641D-8E82F983B18A";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_13_MKR" -p "markerGroup1";
	rename -uid "A9F9095B-4109-7834-4463-7A9BF5AD0486";
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
	setAttr ".t" -type "double3" 0.065837941512844389 0.47492528846975157 -1 ;
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
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName" -type "string" "13";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_13_MKRShape" -p "marker_13_MKR";
	rename -uid "AA098DB4-4E43-DEE2-D0E7-9BA8432518B3";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_14_MKR" -p "markerGroup1";
	rename -uid "A5BD53A2-4BCB-0E5B-3137-2C9E1CECA66F";
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
	setAttr ".t" -type "double3" 0.48139269071158042 0.46267734398397753 -1 ;
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
	setAttr -l on -k on ".weight";
	setAttr -l on -k on ".deviation";
	setAttr -l on -k on ".averageDeviation";
	setAttr -l on -k on ".maximumDeviation";
	setAttr -l on -k on ".maximumDeviationFrame";
	setAttr -l on ".markerName" -type "string" "14";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_14_MKRShape" -p "marker_14_MKR";
	rename -uid "4CA6B22D-42FD-6CC3-8827-E99C747C593F";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "cameraPGroup_pgroup_1_1" -p "Scene";
	rename -uid "B39D9230-4F4A-B2C0-ED84-52AA3DAA336C";
	setAttr ".v" no;
	setAttr ".ro" 2;
createNode transform -n "p01" -p "cameraPGroup_pgroup_1_1";
	rename -uid "47C49F76-4B38-4553-0CA5-F4AD172A1160";
	setAttr ".t" -type "double3" 201.12629589266717 80.766251925883566 -75.818918019767963 ;
createNode locator -n "p01Shape" -p "p01";
	rename -uid "F593C5FD-432B-BE85-D783-8D93061B9D2B";
	setAttr -k off ".v";
createNode transform -n "p02" -p "cameraPGroup_pgroup_1_1";
	rename -uid "06C88345-4659-9A15-3DA5-55849E8593F5";
	setAttr ".t" -type "double3" 98.994201852896424 73.012626402853485 127.37151117184422 ;
createNode locator -n "p02Shape" -p "p02";
	rename -uid "F7107160-4738-4A6F-F448-2CBA05F71F54";
	setAttr -k off ".v";
createNode transform -n "p03" -p "cameraPGroup_pgroup_1_1";
	rename -uid "3349A6B5-4DA6-E0D6-9DB7-0BB27E6D1DDF";
	setAttr ".t" -type "double3" 25.750873553444663 80.889531938381438 -71.770555535357829 ;
createNode locator -n "p03Shape" -p "p03";
	rename -uid "C1FD0E7D-400E-F6ED-9613-45965AB3DCDF";
	setAttr -k off ".v";
createNode transform -n "p04" -p "cameraPGroup_pgroup_1_1";
	rename -uid "BC46609F-4792-C322-8965-779B0F0237CA";
	setAttr ".t" -type "double3" 76.294315964981479 68.512724364149221 182.81382837550873 ;
createNode locator -n "p04Shape" -p "p04";
	rename -uid "77F9275C-4FF9-1A4C-0021-E3A897621DAC";
	setAttr -k off ".v";
createNode transform -n "p05" -p "cameraPGroup_pgroup_1_1";
	rename -uid "80AA2EC0-4279-DFA4-4EF9-5A8CB941E5A2";
	setAttr ".t" -type "double3" 249.94396630546746 68.248546288554422 188.33725383809642 ;
createNode locator -n "p05Shape" -p "p05";
	rename -uid "4FCD25A3-4F67-8559-D3B3-7083A8DDB4FF";
	setAttr -k off ".v";
createNode transform -n "p06" -p "cameraPGroup_pgroup_1_1";
	rename -uid "90C2121A-4224-31B5-37FD-689C71CB0C9D";
	setAttr ".t" -type "double3" 250.65165830335457 68.609774566200684 111.31690776302767 ;
createNode locator -n "p06Shape" -p "p06";
	rename -uid "AC0900F7-4FB4-68DF-1755-8C96AA554446";
	setAttr -k off ".v";
createNode transform -n "p07" -p "cameraPGroup_pgroup_1_1";
	rename -uid "F3979C1B-45A2-A573-7468-F1AA8C0D6488";
	setAttr ".t" -type "double3" 230.68729674934036 156.37655467905734 -70.030304189523946 ;
createNode locator -n "p07Shape" -p "p07";
	rename -uid "EB655C38-4282-5341-ACD9-03982C416DCB";
	setAttr -k off ".v";
createNode transform -n "p08" -p "cameraPGroup_pgroup_1_1";
	rename -uid "BB71DC35-445A-DC3C-397A-54A6340E8301";
	setAttr ".t" -type "double3" -56.497170072566888 164.42783263469721 -41.250377387923443 ;
createNode locator -n "p08Shape" -p "p08";
	rename -uid "58399143-4CD3-5C85-277D-9E9BDDE5BA09";
	setAttr -k off ".v";
createNode transform -n "p09" -p "cameraPGroup_pgroup_1_1";
	rename -uid "F57E6577-4ABA-3DC8-6CDB-31A21E96215B";
	setAttr ".t" -type "double3" 307.41075378449239 160.80367853839988 -37.941466630782877 ;
createNode locator -n "p09Shape" -p "p09";
	rename -uid "161ABABA-4B40-F7A3-C556-64B4F11264A5";
	setAttr -k off ".v";
createNode transform -n "p10" -p "cameraPGroup_pgroup_1_1";
	rename -uid "184763D5-4C37-574B-180C-FEB88E74CAAA";
	setAttr ".t" -type "double3" 235.78023684301149 -0.240240081794525 -27.363919775941746 ;
createNode locator -n "p10Shape" -p "p10";
	rename -uid "CEA6F266-4996-2EE0-8117-519660EBEDC9";
	setAttr -k off ".v";
createNode transform -n "p11" -p "cameraPGroup_pgroup_1_1";
	rename -uid "F7F2AC1B-4743-F5D0-5933-AB99A6CD524C";
	setAttr ".t" -type "double3" 285.8287386484634 -0.46279080907862602 46.668976605037841 ;
createNode locator -n "p11Shape" -p "p11";
	rename -uid "6521BA03-4C28-7999-3B27-91840E036A47";
	setAttr -k off ".v";
createNode transform -n "p12" -p "cameraPGroup_pgroup_1_1";
	rename -uid "781C6A81-4DE4-FD42-3069-A78D2336CD28";
	setAttr ".t" -type "double3" -54.64601360576421 -0.46279080907859799 103.87419508079996 ;
createNode locator -n "p12Shape" -p "p12";
	rename -uid "E4F2E316-4600-0DCB-B6AD-6FA21DCB04F7";
	setAttr -k off ".v";
createNode transform -n "p13" -p "cameraPGroup_pgroup_1_1";
	rename -uid "BBA997DD-41E8-979A-FFC6-C0927867E9B9";
	setAttr ".t" -type "double3" 55.498745425937543 244.09151118388519 -80.694366641628903 ;
createNode locator -n "p13Shape" -p "p13";
	rename -uid "BC2D098F-4F5D-3B29-462B-B68628000C74";
	setAttr -k off ".v";
createNode transform -n "p14" -p "cameraPGroup_pgroup_1_1";
	rename -uid "B0943068-4444-8696-2738-BFBE9E2EB810";
	setAttr ".t" -type "double3" 335.97953879964177 236.54856762458886 -20.359752871099523 ;
createNode locator -n "p14Shape" -p "p14";
	rename -uid "B1C9F1B4-4A7B-FBF3-5E3F-C9A4A9068A0A";
	setAttr -k off ".v";
createNode transform -n "test_Mesh" -p "Scene";
	rename -uid "EE0D1DFA-4592-B5E1-CFF7-5A9585024D37";
createNode mesh -n "test_MeshShape" -p "test_Mesh";
	rename -uid "4DCB56AF-4219-D867-E491-C594B1369991";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 70 ".vt[0:69]"  201.126297 80.76625061 -75.81891632 199.126297 90.76625061 -75.81891632
		 201.126297 88.76625061 -77.24748993 203.126297 90.76625061 -76.81891632 201.126297 80.76625061 -75.81891632
		 98.99420166 73.012626648 127.37151337 96.99420166 83.012626648 127.37151337 98.99420166 81.012626648 125.94293976
		 100.99420166 83.012626648 126.37151337 98.99420166 73.012626648 127.37151337 25.75087357 80.889534 -71.77055359
		 23.75087357 90.889534 -71.77055359 25.75087357 88.889534 -73.1991272 27.75087357 90.889534 -72.77055359
		 25.75087357 80.889534 -71.77055359 76.29431915 68.51272583 182.81382751 74.29431915 78.51272583 182.81382751
		 76.29431915 76.51272583 181.38525391 78.29431915 78.51272583 181.81382751 76.29431915 68.51272583 182.81382751
		 249.94396973 68.24854279 188.33724976 247.94396973 78.24854279 188.33724976 249.94396973 76.24854279 186.90867615
		 251.94396973 78.24854279 187.33724976 249.94396973 68.24854279 188.33724976 250.6516571 68.60977173 111.31690979
		 248.6516571 78.60977173 111.31690979 250.6516571 76.60977173 109.88833618 252.6516571 78.60977173 110.31690979
		 250.6516571 68.60977173 111.31690979 230.68730164 156.3765564 -70.030303955 228.68730164 166.3765564 -70.030303955
		 230.68730164 164.3765564 -71.45887756 232.68730164 166.3765564 -71.030303955 230.68730164 156.3765564 -70.030303955
		 -56.49716949 164.42782593 -41.25037766 -58.49716949 174.42782593 -41.25037766 -56.49716949 172.42782593 -42.67894745
		 -54.49716949 174.42782593 -42.25037766 -56.49716949 164.42782593 -41.25037766 307.4107666 160.80368042 -37.94146729
		 305.4107666 170.80368042 -37.94146729 307.4107666 168.80368042 -39.37003708 309.4107666 170.80368042 -38.94146729
		 307.4107666 160.80368042 -37.94146729 235.78024292 -0.24024008 -27.36392021 233.78024292 9.7597599 -27.36392021
		 235.78024292 7.7597599 -28.79249191 237.78024292 9.7597599 -28.36392021 235.78024292 -0.24024008 -27.36392021
		 285.82873535 -0.46279082 46.66897583 283.82873535 9.53720951 46.66897583 285.82873535 7.53720903 45.24040604
		 287.82873535 9.53720951 45.66897583 285.82873535 -0.46279082 46.66897583 -54.64601517 -0.46279082 103.87419128
		 -56.64601517 9.53720951 103.87419128 -54.64601517 7.53720903 102.44562531 -52.64601517 9.53720951 102.87419128
		 -54.64601517 -0.46279082 103.87419128 55.49874496 244.091506958 -80.69436646 53.49874496 254.091506958 -80.69436646
		 55.49874496 252.091506958 -82.12294006 57.49874496 254.091506958 -81.69436646 55.49874496 244.091506958 -80.69436646
		 335.97955322 236.54856873 -20.35975266 333.97955322 246.54856873 -20.35975266 335.97955322 244.54856873 -21.78832436
		 337.97955322 246.54856873 -21.35975266 335.97955322 236.54856873 -20.35975266;
	setAttr -s 70 ".ed[0:69]"  0 1 0 1 2 0 2 3 0 3 4 0 4 0 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 5 0 10 11 0 11 12 0 12 13 0 13 14 0 14 10 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 15 0 20 21 0 21 22 0 22 23 0 23 24 0 24 20 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 25 0 30 31 0 31 32 0 32 33 0 33 34 0 34 30 0 35 36 0 36 37 0 37 38 0 38 39 0 39 35 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 40 0 45 46 0 46 47 0 47 48 0 48 49 0 49 45 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 50 0 55 56 0 56 57 0 57 58 0 58 59 0 59 55 0 60 61 0 61 62 0
		 62 63 0 63 64 0 64 60 0 65 66 0 66 67 0 67 68 0 68 69 0 69 65 0;
	setAttr ".n[0]" -type "float3"  1e+20 1e+20 1e+20;
	setAttr -s 14 -ch 70 ".fc[0:13]" -type "polyFaces" 
		f 5 0 1 2 3 4
		f 5 5 6 7 8 9
		f 5 10 11 12 13 14
		f 5 15 16 17 18 19
		f 5 20 21 22 23 24
		f 5 25 26 27 28 29
		f 5 30 31 32 33 34
		f 5 35 36 37 38 39
		f 5 40 41 42 43 44
		f 5 45 46 47 48 49
		f 5 50 51 52 53 54
		f 5 55 56 57 58 59
		f 5 60 61 62 63 64
		f 5 65 66 67 68 69;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "bundle_01_BND";
	rename -uid "F93D29E6-4C3C-DE4C-1EF8-DD88612FA76C";
	setAttr ".t" -type "double3" 201.12629589266717 80.766251925883566 -75.818918019767963 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle_01_BNDShape" -p "bundle_01_BND";
	rename -uid "411F94F3-46F3-B667-C359-88B37533D3E2";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_02_BND";
	rename -uid "92EC61E6-4E4D-EEA4-2129-3EB61066CACE";
	setAttr ".t" -type "double3" 98.994201852896424 73.012626402853485 127.37151117184422 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle_02_BNDShape" -p "bundle_02_BND";
	rename -uid "04D8BF0D-4073-1631-3DE2-E09FFDA7FA68";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_03_BND";
	rename -uid "218E3C3A-4F1C-4CF2-B24A-26833A61AA71";
	setAttr ".t" -type "double3" 25.750873553444663 80.889531938381438 -71.770555535357829 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle_03_BNDShape" -p "bundle_03_BND";
	rename -uid "ECBB02EA-4E8F-8A96-3BDF-66980DAD56D8";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_04_BND";
	rename -uid "6E95AF61-4F13-AD29-3D88-CE86021570E9";
	setAttr ".t" -type "double3" 76.294315964981479 68.512724364149221 182.81382837550873 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle_04_BNDShape" -p "bundle_04_BND";
	rename -uid "C463A795-4676-A3AA-6072-52A4E774643E";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_05_BND";
	rename -uid "DCD22FD4-4F3B-8466-2976-D1A9595B6F51";
	setAttr ".t" -type "double3" 249.94396630546746 68.248546288554422 188.33725383809642 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle_05_BNDShape" -p "bundle_05_BND";
	rename -uid "F00AB5DD-4ACB-9EE6-3EDF-59B5D9560266";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_06_BND";
	rename -uid "2C606197-4757-1E48-ABB3-F9B7131F1CC4";
	setAttr ".t" -type "double3" 250.65165830335457 68.609774566200684 111.31690776302767 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle_06_BNDShape" -p "bundle_06_BND";
	rename -uid "5659DCDE-4633-362F-463E-2CB8E48388CE";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_07_BND";
	rename -uid "2BA20D9F-4914-CFB2-4F2C-44B3EF5A1878";
	setAttr ".t" -type "double3" 230.68729674934036 156.37655467905734 -70.030304189523946 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle_07_BNDShape" -p "bundle_07_BND";
	rename -uid "7C615D12-4EC1-F1FF-8100-5EB81F34105E";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_08_BND";
	rename -uid "FD3E43E9-4429-56DA-8FB8-93B3D40424E5";
	setAttr ".t" -type "double3" -56.497170072566888 164.42783263469721 -41.250377387923443 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle_08_BNDShape" -p "bundle_08_BND";
	rename -uid "C61CCF30-415C-32BD-57DD-94AF54CFDA83";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_09_BND";
	rename -uid "5ABD97A6-44E0-521A-A3DD-84859666B7A7";
	setAttr ".t" -type "double3" 307.41075378449239 160.80367853839988 -37.941466630782877 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle_09_BNDShape" -p "bundle_09_BND";
	rename -uid "3A9A929F-4EB0-D0F9-69DE-FA996795FBC5";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_10_BND";
	rename -uid "7CB960F2-4831-4C53-C457-FBAC92AF06F6";
	setAttr ".t" -type "double3" 235.78023684301149 -0.240240081794525 -27.363919775941746 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle_10_BNDShape" -p "bundle_10_BND";
	rename -uid "2458E65B-4946-032D-2723-B0AF8AC66683";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_11_BND";
	rename -uid "4BC427EC-4E84-FBF4-FD32-E690960D6BB3";
	setAttr ".t" -type "double3" 285.8287386484634 -0.46279080907862602 46.668976605037841 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle_11_BNDShape" -p "bundle_11_BND";
	rename -uid "6B5A419E-4DCF-2D27-5AF9-9098DA4477BA";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_12_BND";
	rename -uid "4CF5D98F-407A-5AF8-06B9-2CB0D29FC196";
	setAttr ".t" -type "double3" -54.64601360576421 -0.46279080907859799 103.87419508079996 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle_12_BNDShape" -p "bundle_12_BND";
	rename -uid "6233E07D-49B8-7B34-92C6-E9AC08F63EB1";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_13_BND";
	rename -uid "1012E206-455E-D069-F471-CD81582561FC";
	setAttr ".t" -type "double3" 55.498745425937543 244.09151118388519 -80.694366641628903 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle_13_BNDShape" -p "bundle_13_BND";
	rename -uid "7E14AE2A-41E4-1D63-9B80-B981920D38EF";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_14_BND";
	rename -uid "E3F31F1C-4EE7-E059-8063-8E90E4063F2F";
	setAttr ".t" -type "double3" 335.97953879964177 236.54856762458886 -20.359752871099523 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "bundle_14_BNDShape" -p "bundle_14_BND";
	rename -uid "8DE99D91-4253-D6C1-0D59-E0A50F5995CC";
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
	rename -uid "972DE6AA-4B9A-8F11-734E-A5A9A1A4D824";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "BE928DDF-41EE-57A8-542B-139AC6C1B197";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "CD44C18C-41B3-1905-B6E7-E39CAAC426E2";
createNode displayLayerManager -n "layerManager";
	rename -uid "9E2F44C8-46A6-C016-0F66-2B9A038D3A8D";
createNode displayLayer -n "defaultLayer";
	rename -uid "BD446D16-4F3B-5885-0F93-80B9114D295B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "60E49978-4C36-8A86-396B-91A738226F8D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7320ED4D-437C-ECFF-FB87-F3AC19DD09FA";
	setAttr ".g" yes;
createNode timeToUnitConversion -n "timeToUnitConversion1";
	rename -uid "E6ED299D-4582-B545-237A-69B0BF781117";
	setAttr ".cf" 0.004;
createNode animCurveTL -n "stA_1_1_translateX";
	rename -uid "E34C2FE2-46B6-51BA-6BDA-3B8C96A8E888";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 373.89409609108986 2 372.76638531520393
		 3 371.43966132899686 4 369.79788508785896 5 367.81748024909524 6 365.56203209015757
		 7 363.11138839692461 8 360.5370002738992 9 357.89927534779531 10 355.22081163500081
		 11 352.52843439379006 12 349.82886807780221 13 347.09986295242146 14 344.35378965318404
		 15 341.57067918358871 16 338.71358336142032 17 335.78209636672256 18 332.77891502881499
		 19 329.71360397526502 20 326.59264411580637 21 323.40284856224622 22 320.14320695475493
		 23 316.83159977983127 24 313.49708157829406 25 310.1812598163379 26 306.91139406246145
		 27 303.68210035557286 28 300.45426618090443 29 297.16339477683783 30 293.76146679224632
		 31 290.24016207348632 32 286.6163424206411 33 282.91813297235797 34 279.16979073471566
		 35 275.39681441077522 36 271.63778357835355 37 267.91416468316646 38 264.21605800938943
		 39 260.52566775513003 40 256.83477458805254 41 253.15051452153375 42 249.46694625067414
		 43 245.75179149011009 44 241.99066025773379 45 238.19860230695181 46 234.3851979118075
		 47 230.55571094876646 48 226.70041021945849 49 222.79486320739025 50 218.83188123640181
		 51 214.76242508619396 52 210.52706208387517 53 206.13804412289824 54 201.64030680206668
		 55 197.07774645494158 56 192.48412581437213 57 187.84991250776025 58 183.13311364105596
		 59 178.30135996813169 60 173.41081931679383 61 168.58897984055673 62 163.89868895116746
		 63 159.32869620544048 64 154.85320720557201 65 150.43727814243252 66 146.03163987012036
		 67 141.58634431637083 68 137.0626670280848 69 132.45470427189352 70 127.80139328796665
		 71 123.13865494889968 72 118.45033892191442 73 113.67392719182446 74 108.78760209983858
		 75 103.83705999206153 76 98.811882384343605 77 93.663750626217777 78 88.40731086399947
		 79 83.112018297584399 80 77.864580072486064 81 72.693120301499434 82 67.557134045932685
		 83 62.416800429338295 84 57.222227069259098 85 51.933322652138408 86 46.565250244631009
		 87 41.134125419239368 88 35.590430069637698 89 29.867194731565061 90 24.041870609781011
		 91 18.31752569090985 92 12.797012435003618 93 7.4360327066967971 94 2.1672797329932769
		 95 -3.0534560172279162;
createNode animCurveTL -n "stA_1_1_translateY";
	rename -uid "5C709C52-4CC3-1BC7-FDC4-6E8F6BF2C158";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 116.69184666416608 2 116.67381867578442
		 3 116.6424976742362 4 116.58135623272163 5 116.48037413962273 6 116.35872080424407
		 7 116.25639044752675 8 116.19049554345486 9 116.14814596239103 10 116.11404024364998
		 11 116.08033631872132 12 116.04331961883844 13 116.00205555900217 14 115.95493778575516
		 15 115.90116819578792 16 115.84659075683909 17 115.80033248606131 18 115.76561459202287
		 19 115.73759164134766 20 115.7085037455591 21 115.6735189485026 22 115.63236077242034
		 23 115.587794088404 24 115.54444661541091 25 115.50752357646896 26 115.48014073932796
		 27 115.45966622873796 28 115.43776101167322 29 115.40697603831912 30 115.36799863594659
		 31 115.32808232901576 32 115.29331158802614 33 115.26548968198634 34 115.2451249951059
		 35 115.23436310371568 36 115.23551688730744 37 115.24972467272734 38 115.2776200536035
		 39 115.31831941740592 40 115.36453442494066 41 115.40022227371826 42 115.41596544282135
		 43 115.41814666029022 44 115.41591781418316 45 115.41074619769122 46 115.39508629372666
		 47 115.36094935128911 48 115.3165406836405 49 115.28345662699778 50 115.28199355532388
		 51 115.33092244327366 52 115.43943193262031 53 115.56561069401019 54 115.62919984241812
		 55 115.60661173139347 56 115.54023216177239 57 115.46030375722212 58 115.36231792844954
		 59 115.23455915101516 60 115.09579139104744 61 114.99281488377748 62 114.94045355270242
		 63 114.90501516863348 64 114.82640361448219 65 114.65696304173078 66 114.42864647237845
		 67 114.23446233102439 68 114.12158531681881 69 114.06601223517661 70 114.03376741562238
		 71 114.00918268703376 72 113.97261632839911 73 113.90263946925235 74 113.80527085468867
		 75 113.71210303978559 76 113.64974776016825 77 113.62527291995427 78 113.64560839117701
		 79 113.71549363553588 80 113.81453655645315 81 113.91615154627709 82 114.00766596073493
		 83 114.07806624145118 84 114.10402158905325 85 114.06297393456379 86 113.98096228605523
		 87 113.92295177635958 88 113.91580121061439 89 113.93337306305264 90 113.948513997692
		 91 113.96296836874177 92 113.98950733163193 93 114.02868424702804 94 114.07116160054784
		 95 114.1106726909621;
createNode animCurveTL -n "stA_1_1_translateZ";
	rename -uid "537FBE63-4D57-9322-DB87-6FB6167B3CAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 386.89747413729293 2 388.0622627963026
		 3 389.40300309066373 4 391.00570630260586 5 392.88248162370996 6 395.02738708532371
		 7 397.45410287348369 8 400.115332412481 9 402.89979799623063 10 405.72317200030324
		 11 408.51623486550318 12 411.25576481041281 13 413.96842874641084 14 416.65598978313955
		 15 419.34588303968241 16 422.07880442642198 17 424.86342326155176 18 427.69635336898386
		 19 430.56480976931601 20 433.45704461764058 21 436.36783445784749 22 439.2948054297824
		 23 442.22901168026124 24 445.14614780777089 25 448.02716150688019 26 450.85339390412565
		 27 453.61590299990155 28 456.33334766149665 29 459.02500352711655 30 461.7171984002506
		 31 464.43983658264244 32 467.18993935899573 33 469.94391791003619 34 472.68361174587864
		 35 475.40129186537854 36 478.0966476529685 37 480.7528163941754 38 483.35357655733276
		 39 485.91074763560476 40 488.41206697667809 41 490.81974909876402 42 493.13766233378357
		 43 495.41456981735644 44 497.69061462886975 45 499.95354846505887 46 502.15356518750457
		 47 504.26474744075767 48 506.29858357436444 49 508.28521067395388 50 510.28495987652235
		 51 512.37014294691551 52 514.58328434443081 53 516.85470187915359 54 519.01421751566011
		 55 520.95631597309648 56 522.66871358135199 57 524.18462936171625 58 525.62975682586261
		 59 527.12204506082469 60 528.62121427687111 61 530.02451465878369 62 531.25737786380103
		 63 532.29141296474188 64 533.08902284951319 65 533.57875919856531 66 533.85215691587689
		 67 534.14408023139276 68 534.55598136904769 69 535.03953817233094 70 535.51435871502338
		 71 535.90681730059885 72 536.14414460264129 73 536.14814206737458 74 535.95975794163951
		 75 535.74703222303106 76 535.5858053099937 77 535.42759930375848 78 535.23643361056691
		 79 535.00796296805845 80 534.75102944436298 81 534.45298623158681 82 534.05463187990506
		 83 533.52839183762205 84 532.81574467211658 85 531.83055629354749 86 530.63830169838559
		 87 529.28001048634496 88 527.57436714083769 89 525.27570021694407 90 522.50591673880297
		 91 519.80969509281579 92 517.50177781416585 93 515.45808589135061 94 513.51374400327506
		 95 511.59226431456602;
createNode animCurveTA -n "stA_1_1_rotateX";
	rename -uid "3FB8BA69-4B1E-6A3B-2C25-C582CE4D0F70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 -2.983227516509789 2 -3.01097144828042
		 3 -3.036922339226428 4 -3.1162266788754169 5 -3.1498529838769951 6 -3.1280879319673329
		 7 -3.0808253545425108 8 -3.0796007224971982 9 -3.0507969040289709 10 -3.0318470692913988
		 11 -2.9858045123226882 12 -2.9735587807738981 13 -2.9818022618542614 14 -2.9937067193043996
		 15 -3.0136527964763551 16 -3.026020037845202 17 -3.002967918147176 18 -2.9974834138651292
		 19 -2.9783563249347629 20 -2.9444708326283688 21 -2.9311193515221148 22 -2.9211393380464572
		 23 -2.9091470199335951 24 -2.9114786777933919 25 -2.8797018765429141 26 -2.8608150781505901
		 27 -2.8320154410650109 28 -2.768727149150628 29 -2.7427289342016579 30 -2.7728447486865049
		 31 -2.7987441864518989 32 -2.7927136407147599 33 -2.783199219823385 34 -2.7651909337508971
		 35 -2.8003553825782892 36 -2.769369834705345 37 -2.6735074416652438 38 -2.6259713961747631
		 39 -2.603623710402823 40 -2.5596019519331619 41 -2.532788674792851 42 -2.5393575095099949
		 43 -2.5419114311281499 44 -2.5313112390977541 45 -2.4953868792081835 46 -2.433944268093065
		 47 -2.4427005499338619 48 -2.436446294721796 49 -2.473873038461635 50 -2.502773337999769
		 51 -2.5020224552115282 52 -2.5252980181283462 53 -2.4846377854103499 54 -2.434704911780508
		 55 -2.360031495732716 56 -2.3170044703664252 57 -2.3606125061341889 58 -2.426696258184613
		 59 -2.4791983698594748 60 -2.4187552057277379 61 -2.400270830944113 62 -2.3234093689127508
		 63 -2.278857483526803 64 -2.1966119036640661 65 -2.1374091584537509 66 -2.0939121575018329
		 67 -2.1238400845952552 68 -2.1033423970824332 69 -2.0549396062289218 70 -2.0508233215828708
		 71 -2.056379248999967 72 -2.0443587293602179 73 -2.0178062383645212 74 -2.030571096865208
		 75 -2.0632472209263262 76 -2.0940432463494081 77 -2.0734877011362611 78 -2.0557872283021981
		 79 -2.0767241657152442 80 -2.0729739035219348 81 -2.0156404059194495 82 -2.0000325994991468
		 83 -1.9632286790118998 84 -1.9639444119895841 85 -1.9927429668855428 86 -2.029747151143674
		 87 -2.0634034339352891 88 -2.027876740649448 89 -1.9921699480851522 90 -2.0102072324632529
		 91 -2.0453774716879431 92 -2.1157818296448561 93 -2.1288768609215358 94 -2.078795296599719
		 95 -2.0058240647025891;
createNode animCurveTA -n "stA_1_1_rotateY";
	rename -uid "8822A16E-484E-5C73-F5D7-6B83A4CAD1EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 37.663380320644293 2 37.531542839256424
		 3 37.381416951800681 4 37.193927611013208 5 36.944146334463142 6 36.67155179282949
		 7 36.359883650931287 8 36.019053995817011 9 35.657528343793757 10 35.271206970659456
		 11 34.908259972389978 12 34.602637920607606 13 34.244727956248333 14 33.92828448156834
		 15 33.522234162630397 16 33.179867102113626 17 32.802083416539155 18 32.394672549002586
		 19 31.934852314561997 20 31.483967493313841 21 31.030249906054902 22 30.594539103213442
		 23 30.092376392757014 24 29.609614597998252 25 29.161142365100641 26 28.733407629440396
		 27 28.237569309366659 28 27.79513145751347 29 27.384026430464882 30 26.919957547148382
		 31 26.451911342962308 32 25.972227774275005 33 25.430496139453385 34 24.938799393204402
		 35 24.440482638376981 36 23.895623475770392 37 23.408429690727548 38 22.938803293030531
		 39 22.435728493933983 40 21.887951370874251 41 21.347000722837919 42 20.775500857051199
		 43 20.246237300361347 44 19.727605879592037 45 19.165041520264705 46 18.645618197361145
		 47 18.125407911604139 48 17.569051910563687 49 17.012877739159595 50 16.449464331646524
		 51 15.781548338946891 52 15.140103051463754 53 14.278104563056447 54 13.290351495679168
		 55 12.212777552610603 56 11.145514231292077 57 10.097158325888646 58 9.0502358113171582
		 59 7.9429982552155156 60 6.7898343500603344 61 5.6971633513953313 62 4.6190795594767708
		 63 3.5791251468543752 64 2.5406733509133792 65 1.5089597833223301 66 0.50282562454936697
		 67 -0.54035970814762002 68 -1.588307445024397 69 -2.6500472665348682 70 -3.697592313244221
		 71 -4.8144068996136236 72 -5.9538507282654196 73 -7.0018746769593392 74 -8.1266505740064989
		 75 -9.2812503710804783 76 -10.484145893664063 77 -11.62797780988206 78 -12.857491746767408
		 79 -14.082774468457739 80 -15.279988635887095 81 -16.452297246917038 82 -17.575965175582077
		 83 -18.722716440488636 84 -19.916301556843109 85 -21.116044573882181 86 -22.308713145415425
		 87 -23.59387958812604 88 -24.867126598593579 89 -26.170460913968384 90 -27.562929631157164
		 91 -28.912133405575478 92 -30.204012487322856 93 -31.529271506131092 94 -32.843946481710461
		 95 -34.123084485036721;
createNode animCurveTA -n "stA_1_1_rotateZ";
	rename -uid "4940F015-4276-80F6-EC2B-259D7306B453";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 -0.38318045619506702 2 -0.36009499742287199
		 3 -0.36994372052438002 4 -0.373719411091261 5 -0.35432744997615501 6 -0.33849103935645602
		 7 -0.33502560003536902 8 -0.34472696417191101 9 -0.35482394385196397 10 -0.34553502780438899
		 11 -0.29212208186871602 12 -0.24926876994661304 13 -0.232241918271924 14 -0.18781513561534599
		 15 -0.184667937951321 16 -0.143082606919261 17 -0.062346811906257994 18 -0.023413761370378001
		 19 -0.009933921806976 20 0.0051704857356319996 21 -0.032796267864164001 22 -0.042991459952125
		 23 -0.097463107241249999 24 -0.13727892336500699 25 -0.196171032541887 26 -0.227137964601244
		 27 -0.30519450282302302 28 -0.38790303164722501 29 -0.41543321167483299 30 -0.474291733960019
		 31 -0.51172333807428905 32 -0.490159901239621 33 -0.48833611437465008 34 -0.48579899298505808
		 35 -0.43154477383274797 36 -0.43211832462454097 37 -0.43473830519144102 38 -0.43899385889276799
		 39 -0.42091920606733602 40 -0.38306018784430107 41 -0.367058047171823 42 -0.41453946379837098
		 43 -0.43498052466912202 44 -0.42197809084996801 45 -0.46774649157917897 46 -0.47534256214582898
		 47 -0.51543426261104497 48 -0.55699206391288303 49 -0.53869117168578395 50 -0.530900198806177
		 51 -0.55104745955644996 52 -0.57808776641561199 53 -0.55591493031333705 54 -0.50308078290303204
		 55 -0.44680372160446408 56 -0.44754162036474898 57 -0.38051392534505002 58 -0.33594319274284901
		 59 -0.29080762214276901 60 -0.27491032968454104 61 -0.23393219221997202 62 -0.174137164408564
		 63 -0.17594474707983401 64 -0.139402499397488 65 -0.168288381420518 66 -0.21433746035569903
		 67 -0.22242994388953799 68 -0.238149780919926 69 -0.25070503190618698 70 -0.28468652072732398
		 71 -0.32108361316940598 72 -0.33349474299902199 73 -0.34044673876523801 74 -0.34654759785502898
		 75 -0.33978773697610398 76 -0.32988904997889901 77 -0.33332052174383103 78 -0.36040060222473508
		 79 -0.33590124895020201 80 -0.32521563803868597 81 -0.32249852880450403 82 -0.30291629150495908
		 83 -0.30211081120532202 84 -0.34058178293275698 85 -0.33686436323468899 86 -0.32730271146262502
		 87 -0.32936706815668199 88 -0.31446216853106501 89 -0.27786482218423803 90 -0.23855680948340099
		 91 -0.22091040859976499 92 -0.20330340227242399 93 -0.17758705014262199 94 -0.189527524458589
		 95 -0.20393747906250401;
createNode animCurveTU -n "stA_1_1Shape1_focalLength";
	rename -uid "6DA374E8-45ED-B699-832E-7CB5F8911F13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 25 2 25 3 25 4 25 5 25 6 25 7 25 8 25
		 9 25 10 25 11 25 12 25 13 25 14 25 15 25 16 25 17 25 18 25 19 25 20 25 21 25 22 25
		 23 25 24 25 25 25 26 25 27 25 28 25 29 25 30 25 31 25 32 25 33 25 34 25 35 25 36 25
		 37 25 38 25 39 25 40 25 41 25 42 25 43 25 44 25 45 25 46 25 47 25 48 25 49 25 50 25
		 51 25 52 25 53 25 54 25 55 25 56 25 57 25 58 25 59 25 60 25 61 25 62 25 63 25 64 25
		 65 25 66 25 67 25 68 25 69 25 70 25 71 25 72 25 73 25 74 25 75 25 76 25 77 25 78 25
		 79 25 80 25 81 25 82 25 83 25 84 25 85 25 86 25 87 25 88 25 89 25 90 25 91 25 92 25
		 93 25 94 25 95 25;
createNode mmLensModelToggle -n "lensDistortionToggle1";
	rename -uid "AFCE77C8-4AE3-A081-8D70-978CD538906C";
createNode script -n "mmSolver_data_node";
	rename -uid "84AB95D5-48AD-ADF2-7781-E5BBA0EEB2BA";
	addAttr -ci true -sn "mmSolver_data" -ln "mmSolver_data" -dt "string";
	setAttr -l on ".mmSolver_data" -type "string" "{\"display_attribute_smoothness\": true, \"display_attribute_stiffness\": true, \"display_object_maximum_deviation\": false, \"display_object_frame_deviation\": true, \"display_attribute_state\": true, \"display_object_average_deviation\": true, \"active_collection_uid\": \"58E69EAC-4BC0-218F-A2CD-6B9155E4E249\", \"display_object_weight\": true, \"display_attribute_min_max\": true}";
createNode mmMarkerScale -n "mmMarkerScale1";
	rename -uid "E2047DBC-4934-C9D1-0F11-F889898878E7";
	setAttr ".ovrscnmd" 1;
createNode objectSet -n "collection1";
	rename -uid "58E69EAC-4BC0-218F-A2CD-6B9155E4E249";
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
	setAttr ".ihi" 0;
	setAttr -s 14 ".dsm";
	setAttr -s 6 ".dnsm";
	setAttr -l on ".solver_list" -type "string" "[]";
	setAttr -l on ".solver_results";
	setAttr -l on -k on ".deviation";
	setAttr -l on ".solver_step_list" -type "string" "[{\"name\": \"02f40503-8f10-4b66-9792-84575b1dc84e\", \"frame_list\": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95], \"use_static_attrs\": false, \"enabled\": true, \"use_anim_attrs\": true, \"strategy\": \"two_frames_fwd\"}]";
	setAttr -l on ".override_current_frame";
	setAttr -l on ".object_toggle_camera";
	setAttr -l on ".object_toggle_marker";
	setAttr -l on ".object_toggle_bundle";
	setAttr -l on ".attribute_toggle_animated";
	setAttr -l on ".attribute_toggle_static";
	setAttr -l on ".attribute_toggle_locked";
	setAttr -l on ".solver_tab" -type "string" "basic";
	setAttr -l on ".solver_range_type";
	setAttr -l on ".solver_increment_by_frame";
	setAttr -l on ".solver_scene_graph";
	setAttr -l on ".solver_eval_complex_node_graphs";
	setAttr -l on ".solver_eval_object_relationships";
createNode animCurveTL -n "marker_01_MKR_translateX";
	rename -uid "8E7F2316-457D-5D2D-50B0-42A5E86E5353";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  1 0.34864986654119756 2 0.34967451962007989
		 3 0.35073183216176906 4 0.35180961814456235 5 0.35253393343818029 6 0.35376106322854473
		 7 0.35452948959406938 8 0.35519409784709921 9 0.35562467196456427 10 0.35561754061851236
		 11 0.35607063199926181 12 0.35777717452859326 13 0.35828200915190667 14 0.35961585306364918
		 15 0.35918255355312989 16 0.35995450622606273 17 0.36023907995894366 18 0.36009443550417974
		 19 0.35890786300053157 20 0.35799430009795064 21 0.3571595292227463 22 0.35679626638390649
		 23 0.35498897881377534 24 0.35363102515555411 25 0.35282652351188037 26 0.35229343607024355
		 27 0.35023248046832023 28 0.34916518543361552 29 0.34881290632991468 30 0.34757875670803218
		 31 0.34634864580407743 32 0.34498982970429537 33 0.34250281863131404 34 0.34108918409859612
		 35 0.33950001227613369 36 0.33681104326529998 37 0.33518981027914774 38 0.33392757729581224
		 39 0.33192660331693302 79 -0.063161033466632932 80 -0.077420096064584665 81 -0.091450711991579392
		 82 -0.10450696191419623 83 -0.11806830512927868 84 -0.13241573383931804 85 -0.14668030399091753
		 86 -0.16027819150406486 87 -0.17574706993915873 88 -0.19057469993881793 89 -0.20520910111105212
		 90 -0.22031966958845461 91 -0.2356242324957985 92 -0.25062706878831581 93 -0.2669137982960984
		 94 -0.28335659047651207 95 -0.29918590555492219;
createNode animCurveTL -n "marker_01_MKR_translateY";
	rename -uid "393E21E1-47B0-DB7B-B74A-039345BF85C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  1 -0.037690170832632874 2 -0.036719001104219662
		 3 -0.035496529340060035 4 -0.032671217163490585 5 -0.031230956110795127 6 -0.031224746920587076
		 7 -0.031958920491857667 8 -0.031289376415875758 9 -0.031493692681092422 10 -0.031565358197539473
		 11 -0.032911173762810497 12 -0.033048683894211561 13 -0.032418353666527733 14 -0.031926513320563454
		 15 -0.030659077608836793 16 -0.030035378541598878 17 -0.030958813316920186 18 -0.030868604100777908
		 19 -0.030970568869392368 20 -0.031494640729673173 21 -0.030934925126086588 22 -0.03048569783606353
		 23 -0.029703231263266849 24 -0.028674282354412772 25 -0.028483595731903399 26 -0.028209696929935857
		 27 -0.027747051315591686 28 -0.028320367478005426 29 -0.028307927558420598 30 -0.026304395134832959
		 31 -0.024614420973117557 32 -0.024461566231507359 33 -0.024201265366252722 34 -0.024244492737864443
		 35 -0.023255976255336708 36 -0.023665980539011144 37 -0.026105260540686515 38 -0.027142675407427042
		 39 -0.027698572729690119 79 -0.027672107047196914 80 -0.028216575737273486 81 -0.030331553705489123
		 82 -0.031181095571691797 83 -0.032624283238956109 84 -0.032950510324115001 85 -0.03216821452274482
		 86 -0.030804991941015269 87 -0.029907525152316095 88 -0.031204361462227548 89 -0.032576257721875113
		 90 -0.033364005340048519 91 -0.032883608296028877 92 -0.031271345147220575 93 -0.031294488320270653
		 94 -0.033416998841453605 95 -0.036259146982278445;
createNode animCurveTU -n "marker_01_MKR_enable";
	rename -uid "F5A54A4F-472F-22FD-6252-C0BC2D22C6BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 1 39 1 40 0 78 0 79 1 95 1 96 0;
createNode animCurveTL -n "marker_02_MKR_translateX";
	rename -uid "4D288327-455E-1E5A-5CD4-46BF55D2A4BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 -0.17802311720040814 2 -0.17584835758112444
		 3 -0.17315880538532719 4 -0.16995918764640328 5 -0.16654244817978781 6 -0.1620291781196026
		 7 -0.15767954068586815 8 -0.15318933313258637 9 -0.1487587653814772 10 -0.14463088472402247
		 11 -0.14023934727745685 12 -0.13483222520434496 13 -0.13037458269409263 14 -0.12512151148352446
		 15 -0.12161264231659052 16 -0.11672716513302184 17 -0.11223426723211705 18 -0.1080998447709971
		 19 -0.10472696206260573 20 -0.10100235226066584 21 -0.097198373294083429 22 -0.092856826822086735
		 23 -0.089652911916769273 24 -0.086085647560919354 25 -0.08195548064656244 26 -0.077656087374102456
		 27 -0.075011309975424323 28 -0.071339394930246769 29 -0.06706678907261443 30 -0.063638155719247025
		 31 -0.05984537086945052 32 -0.056115250687112317 33 -0.053504263615935688 34 -0.049766687163574574
		 35 -0.046293060864810942 36 -0.043790065712325299 37 -0.04026228248836905 38 -0.036720693650453218
		 39 -0.033972726811846043 40 -0.032069613529889851 41 -0.030357792271965667 42 -0.029323063645804615
		 43 -0.027509882400372221 44 -0.025352018774197738 45 -0.023938456842458766 46 -0.021838505073642045
		 47 -0.019800836138821554 48 -0.018529043138758361 49 -0.017260833854340962 50 -0.016063634139480476
		 51 -0.016644269232254483 52 -0.016252822871600126 53 -0.01945078190423366 54 -0.025678728851647736
		 55 -0.03338296420269099 56 -0.041056883828491431 57 -0.048467915068055367 58 -0.05568174270274695
		 59 -0.063936116923260844 60 -0.072520158754626585 61 -0.08062806951258511 62 -0.088777383593881432
		 63 -0.096432765738835635 64 -0.10455607344821832 65 -0.11260341950931463 66 -0.11984295489827113
		 67 -0.12821592151005612 68 -0.13627913478927783 69 -0.14455559691676784 70 -0.15234231262562326
		 71 -0.16152179360983587 72 -0.17126845757902437 73 -0.17888325029442648 74 -0.18750592427534796
		 75 -0.19685514848090657 76 -0.20708056032167788 77 -0.21551566777293513 78 -0.22555792519473705
		 79 -0.23527346263881366 80 -0.24483793453526198 81 -0.25407390945927527 82 -0.2623989307691415
		 83 -0.27120081818062769 84 -0.28069422248712683 85 -0.29001131805151048 86 -0.29864629480339777
		 87 -0.30916435827309485 88 -0.31886859315130245 89 -0.32836896253757641 90 -0.33822826950860074
		 91 -0.3481805920324107 92 -0.35778091602525786 93 -0.36873328655313997 94 -0.37976143444145877
		 95 -0.39030361847545691;
createNode animCurveTL -n "marker_02_MKR_translateY";
	rename -uid "190DE033-422A-DAA9-2A5B-0F9ACC9F434A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 -0.11038338175796486 2 -0.10950211947745392
		 3 -0.10853401985508504 4 -0.10579884735082079 5 -0.10423995553433657 6 -0.10451623057266191
		 7 -0.10518319219979877 8 -0.10477547849121965 9 -0.10520783784215976 10 -0.10551742860510421
		 11 -0.10625625538041694 12 -0.10597406973422091 13 -0.10524693383146794 14 -0.10435820194514872
		 15 -0.10327951267956914 16 -0.10233008882312616 17 -0.10226995825609364 18 -0.10192362591947107
		 19 -0.10211741051818801 20 -0.10289080327739297 21 -0.10276714966199008 22 -0.10265738412613601
		 23 -0.10265719992564509 24 -0.10222438197956696 25 -0.10262925442752557 26 -0.10286721121183673
		 27 -0.10354356653781643 28 -0.10512670337337621 29 -0.10546328649709102 30 -0.10406759957201184
		 31 -0.10302597002458069 32 -0.10246183821558491 33 -0.10220551069181566 34 -0.10245421808134408
		 35 -0.10074989699841014 36 -0.10125479608477506 37 -0.10386408468201513 38 -0.10500184082380143
		 39 -0.10528671531715927 40 -0.10649652611584021 41 -0.10698833709142735 42 -0.1066217681186718
		 43 -0.10619298386260662 44 -0.10602086920689685 45 -0.10677196778020331 46 -0.10819224094094676
		 47 -0.10750629778846632 48 -0.10709460573897062 49 -0.1055806780113791 50 -0.10426956122163644
		 51 -0.1042242300836006 52 -0.10350677811021824 53 -0.10516648050971628 54 -0.1066605908765062
		 55 -0.10821737794857289 56 -0.10904016096889962 57 -0.10724799948836472 58 -0.10478655662171921
		 59 -0.10262799826942981 60 -0.10317603370243389 61 -0.10335282653524436 62 -0.10531342027190049
		 63 -0.10640906846296411 64 -0.10857131628711425 65 -0.10995066397309672 66 -0.11006606328712115
		 67 -0.10877692806146549 68 -0.10911264523029368 69 -0.11039902276835667 70 -0.110666399792542
		 71 -0.11062462207943624 72 -0.11114491076497585 73 -0.11210773272173424 74 -0.11193009935514181
		 75 -0.11088430316649289 76 -0.10985521208960292 77 -0.11089677576692031 78 -0.11180924122902164
		 79 -0.11178979657028071 80 -0.11277978060129151 81 -0.11527158810208216 82 -0.11628062729762151
		 83 -0.11797544365570101 84 -0.11882654946059645 85 -0.11849055592070679 86 -0.117257786270827
		 87 -0.11675926511933304 88 -0.11841228595167658 89 -0.12019667823690261 90 -0.12147990624308636
		 91 -0.121596833210811 92 -0.12043289715193489 93 -0.12091955914075558 94 -0.12349768792112548
		 95 -0.12664028779348774;
createNode animCurveTU -n "marker_02_MKR_enable";
	rename -uid "FE8BC236-4CCC-5AC6-BAF1-0F99132432E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 95 1 96 0;
createNode animCurveTL -n "marker_03_MKR_translateX";
	rename -uid "86547C67-47E4-D56B-6D8D-B49381FC783C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 70 ".ktv[0:69]"  16 0.017281123092361184 17 0.017430507900541015
		 18 0.017229809868597235 19 0.016059278472440819 20 0.015191134884128599 21 0.014359004045365165
		 22 0.013970113677576945 23 0.012317286445286291 24 0.011029092610656321 25 0.010392313621261029
		 26 0.0099245389671507311 27 0.0081027324890421415 28 0.0072452884647167259 29 0.0070402374693131486
		 30 0.0059736145847060218 31 0.0049123859887379995 32 0.0038238210993838395 33 0.0016590747096373315
		 34 0.0004891180120966121 35 -0.0008671111968925338 36 -0.0031191281222069378 37 -0.0043841632570140732
		 38 -0.0053498223550748625 39 -0.0070487827944908377 40 -0.0095911377515206508 41 -0.012214609603029281
		 42 -0.015507169532235909 43 -0.018017755746686959 44 -0.020293021401911693 45 -0.023394219369121505
		 46 -0.025640620675071835 47 -0.027920298438163793 48 -0.031029383603076943 49 -0.034070008271435415
		 50 -0.037099499913782308 51 -0.041933530975900413 52 -0.045894827557602602 53 -0.053622344832338964
		 54 -0.064335688710470018 55 -0.076477830012265657 56 -0.088799574235187306 57 -0.10087978243591
		 58 -0.11282190476479548 59 -0.12578747843774857 60 -0.13905426405059207 61 -0.15189007321774622
		 62 -0.16471810682306726 63 -0.1770670579714626 64 -0.18962811440917765 65 -0.20217691079752692
		 66 -0.21385411589546388 67 -0.22668378013078472 68 -0.23950329436035905 69 -0.25249806917836032
		 70 -0.26526115550950347 71 -0.27944596998146121 72 -0.29405620726642767 73 -0.30658870465778076
		 74 -0.32006778455168261 75 -0.33456804861989703 76 -0.35008631496580112 77 -0.36435279853752656
		 78 -0.38039966422083926 79 -0.39607607484994606 80 -0.41151175402572687 81 -0.42658590635319105
		 82 -0.44076376623885322 83 -0.4556299194374705 84 -0.47139131721608601 85 -0.4871981716387645;
createNode animCurveTL -n "marker_03_MKR_translateY";
	rename -uid "2BB5EED2-463B-8729-69F7-389B0442A320";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 70 ".ktv[0:69]"  16 -0.012089477243869995 17 -0.012511747064940515
		 18 -0.012429835355646568 19 -0.012772667282497263 20 -0.013508089956533131 21 -0.013645063031165972
		 22 -0.013646881629861607 23 -0.013677919635428748 24 -0.013325554177212706 25 -0.014013640301787089
		 26 -0.014290901021683955 27 -0.014891309297436872 28 -0.0165756629397526 29 -0.017108740106099141
		 30 -0.015974946101352527 31 -0.014922248508412506 32 -0.014880987004904977 33 -0.014958796733420043
		 34 -0.01525528483904004 35 -0.014055750488970509 36 -0.014850760666219875 37 -0.017602822514531158
		 38 -0.018996275920496852 39 -0.019677520843192908 40 -0.021027750066526019 41 -0.0218367291652517
		 42 -0.021637232730789713 43 -0.021472329576545435 44 -0.021712436533893875 45 -0.022669362962262907
		 46 -0.024356537773023657 47 -0.023964037716229236 48 -0.02388589188091067 49 -0.02258020635758845
		 50 -0.021648419859297163 51 -0.021855809825553463 52 -0.02157821953215433 53 -0.023604347999242159
		 54 -0.025139885972758458 55 -0.027045960158581128 56 -0.028289310525859035 57 -0.02670096066990113
		 58 -0.024426472542800615 59 -0.022421219511952972 60 -0.023383071749321638 61 -0.0235996935955054
		 62 -0.025656922478647592 63 -0.027057874729393971 64 -0.029297191658824884 65 -0.030991322252144626
		 66 -0.031490119903032021 67 -0.030336808753714029 68 -0.030969861322022951 69 -0.032664465142001442
		 70 -0.033227620935116386 71 -0.03362799178287551 72 -0.034409951619159274 73 -0.035485745123590873
		 74 -0.035695514070143208 75 -0.034995385311520966 76 -0.034403633764404418 77 -0.035454283666770281
		 78 -0.036794078908883809 79 -0.037023084846865228 80 -0.037975133922125315 81 -0.040611479694036001
		 82 -0.041929410614881091 83 -0.043952069244183656 84 -0.045282823963113283 85 -0.045089782579334825;
createNode animCurveTU -n "marker_03_MKR_enable";
	rename -uid "60F293A0-4318-02A9-67A7-4CAB508F05F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 0 16 1 85 1 86 0;
createNode animCurveTL -n "marker_04_MKR_translateX";
	rename -uid "7ACC59DF-4F00-76FC-0F95-4EA6D2D2192D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 90 ".ktv[0:89]"  6 -0.34479667854307017 7 -0.33966803906180332
		 8 -0.33439662921936147 9 -0.32904279442791973 10 -0.32411695152840081 11 -0.31880151174147309
		 12 -0.31253552623009551 13 -0.30714671926148807 14 -0.30097820992426649 15 -0.29666103793378917
		 16 -0.29079506899987084 17 -0.28518797262759171 18 -0.28001517924109071 19 -0.27555433139939928
		 20 -0.27068073717443292 21 -0.26567049380624874 22 -0.26002322080863083 23 -0.25548745752270841
		 24 -0.25066181032983637 25 -0.24506475431432112 26 -0.239445510094008 27 -0.23545572802701115
		 28 -0.23042466611674783 29 -0.22470232479644481 30 -0.21984836043355671 31 -0.21460628352088096
		 32 -0.20933106354785974 33 -0.20513962130173991 34 -0.19989384964338763 35 -0.19482891421026538
		 36 -0.1906558547758691 37 -0.18543686071542126 38 -0.18024634622909225 39 -0.17593123933245225
		 40 -0.17237581967653026 41 -0.16905886246850976 42 -0.16649582888481829 43 -0.16306908480804438
		 44 -0.15918172675392245 45 -0.15606593727663853 46 -0.15220004971061096 47 -0.14850692346865058
		 48 -0.14550715123168123 49 -0.14257035141086161 50 -0.13970678989477342 51 -0.13850179047021405
		 52 -0.13634208853950963 53 -0.1375773233042048 54 -0.14207982913627137 55 -0.14792084569128677
		 56 -0.1536990296240916 57 -0.15937901105699942 58 -0.16476533456344289 59 -0.17116184731368089
		 60 -0.17791475162501375 61 -0.18415438960131969 62 -0.1903611865084236 63 -0.19615720314756807
		 64 -0.20233824095953412 65 -0.20885610065989396 66 -0.21431001716028669 67 -0.22091898284857081
		 68 -0.22716296401391362 69 -0.23342094202520908 70 -0.23919460538359621 71 -0.24652805053293303
		 72 -0.25441023256631068 73 -0.26021458356610383 74 -0.2668632712648491 75 -0.27435117705247236
		 76 -0.28239425644557437 77 -0.28879179965867907 78 -0.29644765363787662 79 -0.30396404395061849
		 80 -0.31133107244361879 81 -0.31831591129388737 82 -0.32449797422457777 83 -0.33108552534954983
		 84 -0.33829585368984794 85 -0.34524316158248092 86 -0.35143767167717677 87 -0.35954030194906894
		 88 -0.36672301472945734 89 -0.37375259872895628 90 -0.38102868547578517 91 -0.38829545030478013
		 92 -0.39506675205093233 93 -0.40332622903004334 94 -0.41159251147086839 95 -0.41939228606537737;
createNode animCurveTL -n "marker_04_MKR_translateY";
	rename -uid "7A6CE788-4997-3FEE-E619-29A110704280";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 90 ".ktv[0:89]"  6 -0.14473092410828337 7 -0.1456767865134263
		 8 -0.14543105647203541 9 -0.14609097073403332 10 -0.14629788370448599 11 -0.14700114565710293
		 12 -0.14678859183137799 13 -0.14615076849077541 14 -0.14516262133101154 15 -0.14434524540066695
		 16 -0.14321573205563598 17 -0.14301523615732142 18 -0.1426958046221386 19 -0.14298680033490208
		 20 -0.143671468314092 21 -0.14413496177504365 22 -0.14423196601307231 23 -0.14460904618305775
		 24 -0.14446658250670674 25 -0.14544484113339035 26 -0.1458528463795209 27 -0.14695441504591367
		 28 -0.14906802558502275 29 -0.14962400397356845 30 -0.14868666933045022 31 -0.1476456228654438
		 32 -0.14731851310274846 33 -0.14727498812388135 34 -0.14740323242760256 35 -0.14579099800420564
		 36 -0.14644953017419071 37 -0.14905697123204781 38 -0.15030339082749961 39 -0.15079721990804279
		 40 -0.15185398044631515 41 -0.15251291532687844 42 -0.15241097977463935 43 -0.15221599350945397
		 44 -0.15213875576091679 45 -0.15308756138437735 46 -0.15459953067695925 47 -0.15408908690337919
		 48 -0.15396874834626317 49 -0.15241510776998679 50 -0.15132733560744505 51 -0.15140213392399487
		 52 -0.1509396138656362 53 -0.15267530997945139 54 -0.15409475966799652 55 -0.15591306973296698
		 56 -0.15707905952855067 57 -0.15539953694389197 58 -0.15303782219809864 59 -0.15104194419034506
		 60 -0.1520196222352389 61 -0.15222940224975734 62 -0.15422752383168337 63 -0.15566399263319047
		 64 -0.15789552301940296 65 -0.15964769493010322 66 -0.16014747809830931 67 -0.15899764173803566
		 68 -0.15961217912186204 69 -0.16130672214353947 70 -0.16186059924435348 71 -0.16223987752311531
		 72 -0.16309425984204845 73 -0.16409628638297846 74 -0.16424881742150477 75 -0.16356110946462438
		 76 -0.16301041892557838 77 -0.16402530123690012 78 -0.16534290780735833 79 -0.16567617783811783
		 80 -0.1667225593623991 81 -0.16941257135407928 82 -0.17077464353083571 83 -0.17287205111620008
		 84 -0.17413050995538404 85 -0.1739041073936532 86 -0.17304782314689265 87 -0.17296924865590302
		 88 -0.17492979758481497 89 -0.17692516125652769 90 -0.17848766985865921 91 -0.1788373528425074
		 92 -0.17801961342366707 93 -0.17883933754458864 94 -0.18183403087358513 95 -0.18553538990860441;
createNode animCurveTU -n "marker_04_MKR_enable";
	rename -uid "B1994815-4B75-8314-445C-D7B6E27F6CFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  5 0 6 1 95 1 96 0;
createNode animCurveTL -n "marker_05_MKR_translateX";
	rename -uid "175D0233-4891-DE41-4682-3AADAA6256FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 0.11115048566092867 2 0.1153411893312043
		 3 0.12101745610984138 4 0.12826333594097361 5 0.1361287472646866 6 0.14599325836081622
		 7 0.1559557028139904 8 0.16628262563358409 9 0.17662467460940268 10 0.18636838179399007
		 11 0.19622711104540913 12 0.20691924475865786 13 0.21663853503917885 14 0.22691045869130955
		 15 0.23531792629545556 16 0.24544304385944604 17 0.25515724225853187 18 0.26431364153017645
		 19 0.27269568984977743 20 0.28115374063347587 21 0.28982869842645909 22 0.29899621396325671
		 23 0.30691237261463455 24 0.31511296635056374 25 0.32352810893766726 26 0.33200204106511189
		 27 0.3383316230855915 28 0.34558759501286596 29 0.35347723026135347 30 0.36051248694900118
		 31 0.36790073696714565 32 0.37510094981682751 33 0.38094231755534014 34 0.3879121840697225
		 35 0.39452157884119354 36 0.39977189073925512 37 0.4059477006580986 38 0.41203009899384069
		 39 0.41702386511572609 40 0.42089003979925788 41 0.42450839639529181 42 0.42736598576402085
		 43 0.43106866862249493 44 0.43490035369509494 45 0.43771678253196067 46 0.44137239005686857
		 47 0.44480538829657024 48 0.44738494588490918 49 0.4498468480381328 50 0.45219617907500986
		 51 0.45242750187470426 52 0.45367701650488546 53 0.45075863257589377 54 0.44460403388976655
		 55 0.43677294902390851 56 0.42904563137468155 57 0.4217625865123088 58 0.4146247533280687
		 59 0.40648660926534497 60 0.39773200807495057 61 0.38954130926897368 62 0.38114234509016842
		 63 0.37329135006395298 64 0.36506570430134599 65 0.3567769831644263 66 0.34949800426718303
		 67 0.34104873714856299 68 0.33274270954223839 69 0.324398121927997 70 0.31656131328970027
		 71 0.30716593264022185 72 0.2971937666508091 73 0.28934041960683943 74 0.28078783484781933
		 75 0.27135131350582364 76 0.26112490506133523 77 0.25251368038069177 78 0.24237414318294181
		 79 0.23253516025310128 80 0.22291836407945453 81 0.21346415756221393 82 0.20509883981414123
		 83 0.19626096579165386 84 0.18667338716906445 85 0.17740222230228786 86 0.16877848337325152
		 87 0.15835970854071735 88 0.14861303718601282 89 0.13905682118062535 90 0.12923801428143011
		 91 0.11943604839542998 92 0.1099392208941784 93 0.099093285161725331 94 0.088142475878298154
		 95 0.077645727660258235;
createNode animCurveTL -n "marker_05_MKR_translateY";
	rename -uid "C700C40E-4F60-CEAE-2276-F5A88EF0D0A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 -0.25936185040253856 2 -0.25804740982713037
		 3 -0.25655267293514622 4 -0.25313924857364678 5 -0.25086825713560068 6 -0.24994164304097877
		 7 -0.24960051405315414 8 -0.24788904608487755 9 -0.24694786150723913 10 -0.24571152231294174
		 11 -0.24564290244730447 12 -0.24466002577270241 13 -0.24277304255798243 14 -0.24095353900685418
		 15 -0.23862534172070915 16 -0.23660865045559726 17 -0.23603600669342867 18 -0.23470802808963476
		 19 -0.23353244369226855 20 -0.23271487355697473 21 -0.23091460091205879 22 -0.22913727159438524
		 23 -0.22687719916083837 24 -0.22439055340976638 25 -0.22274857148502658 26 -0.2210805851693064
		 27 -0.21921542542255196 28 -0.21838640921010316 29 -0.21692861066143748 30 -0.21335385362536535
		 31 -0.21009571781181829 32 -0.20836050036925663 33 -0.20649391311617549 34 -0.20498284271220196
		 35 -0.20252513305931386 36 -0.20141605695591036 37 -0.20232469822645505 38 -0.20197465185436053
		 39 -0.20109976867483165 40 -0.20116551743285588 41 -0.2004179526706471 42 -0.19786051506569663
		 43 -0.19573182868694139 44 -0.19434477544239437 45 -0.19292362274013614 46 -0.19275848464715106
		 47 -0.19012845511986509 48 -0.18764741050289629 49 -0.18486091876488542 50 -0.18237994354930892
		 51 -0.18039047143855158 52 -0.17781226040800024 53 -0.17786223638892634 54 -0.17793791490643651
		 55 -0.17799362281505343 56 -0.17674942991349329 57 -0.17378620474793677 58 -0.16989899238064748
		 59 -0.1662310350090162 60 -0.16507419206614332 61 -0.163629409753689 62 -0.16432070569294471
		 63 -0.16366497690763893 64 -0.16446479369995681 65 -0.16371512561784318 66 -0.16202506582044351
		 67 -0.15881533480133669 68 -0.15735024713233436 69 -0.15690785073259944 70 -0.15513385992295836
		 71 -0.15305432421515902 72 -0.15172423593621354 73 -0.15082412334115697 74 -0.14875259419277304
		 75 -0.14615736182365574 76 -0.14372972377142951 77 -0.14293036625017974 78 -0.14198335624423686
		 79 -0.14058806331726154 80 -0.13990828950609702 81 -0.1407911938455535 82 -0.14052198967159391
		 83 -0.14076216590266377 84 -0.13957155352116929 85 -0.13754495899420222 86 -0.13523002230765407
		 87 -0.13299874661778777 88 -0.13304047836806521 89 -0.13317576082878901 90 -0.13260337927843474
		 91 -0.13074222117703571 92 -0.12793983438152129 93 -0.12694523452521866 94 -0.1277841002879993
		 95 -0.12923899440430148;
createNode animCurveTU -n "marker_05_MKR_enable";
	rename -uid "D031CC58-4118-C069-025A-C698935BEEB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 95 1 96 0;
createNode animCurveTL -n "marker_06_MKR_translateX";
	rename -uid "1A59F858-48D5-06E8-D3F9-2E8D0F28AA4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 0.27264222727232945 2 0.27536256222050148
		 3 0.27904849022550537 4 0.28355021957597348 5 0.28813082005287161 6 0.29392717766235066
		 7 0.29969355876945225 8 0.3056903414915676 9 0.31147901431944669 10 0.31666002663112447
		 11 0.32223319673650197 12 0.32875873805740807 13 0.33428953769867775 14 0.34049701679430844
		 15 0.34486790507311871 16 0.35065362783452736 17 0.35583062338557669 18 0.36057647744854882
		 19 0.36440950912330283 20 0.36850560506306906 21 0.37273680858502556 22 0.37744057779219753
		 23 0.38084546952065723 24 0.38446086475201702 25 0.38856713978636137 26 0.3928710827941142
		 27 0.39519085699021483 28 0.39855852393223656 29 0.40262165848499099 30 0.40575756762649084
		 31 0.4091192857505519 32 0.41226794081108298 33 0.4141678801567541 34 0.41721009819858856
		 35 0.41993596172015968 36 0.42145599315130422 37 0.42393379745231008 38 0.42658319732316852
		 39 0.42820678421065062 40 0.42883371819131577 41 0.42929940784730791 42 0.42901829562799687
		 43 0.42966566202123835 44 0.43037547029570922 45 0.43020751787723999 46 0.43084813388931786
		 47 0.43144283222617175 48 0.43109480062338867 49 0.43085303384129647 50 0.43045723002566272
		 51 0.42803603425635972 52 0.42664015441894065 53 0.42103283433582772 54 0.41232541536154832
		 55 0.40202712788674022 56 0.39173467911479887 57 0.38195696742753016 58 0.37237842999961068
		 59 0.36175583343112239 60 0.35071090237375879 61 0.34025218529372714 62 0.32961949846023375
		 63 0.31963115397572195 64 0.30937345460844357 65 0.29910812707860457 66 0.28991579952686775
		 67 0.2795812595303877 68 0.2694148589324229 69 0.25911400682222308 70 0.24921316511585223
		 71 0.23790089497206446 72 0.22621358864148389 73 0.21655512455806492 74 0.20620562889421368
		 75 0.19496023628297665 76 0.18288731800261637 77 0.17236566828229027 78 0.16022892346146989
		 79 0.14854333983472479 80 0.13705403889760381 81 0.12591196986075215 82 0.11581254677837172
		 83 0.10517696997850934 84 0.093843691158742915 85 0.082710011555449769 86 0.072294110956954483
		 87 0.060096513246191141 88 0.048580653295214327 89 0.037213039562104311 90 0.025589272353823356
		 91 0.01397004007245517 92 0.0025711487007582523 93 -0.010043138165133858 94 -0.022795557623610407
		 95 -0.034971465059671192;
createNode animCurveTL -n "marker_06_MKR_translateY";
	rename -uid "074FC3BA-4930-B3BC-3BBD-62B0BD9C576D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 -0.18447243832928079 2 -0.18328584561147898
		 3 -0.18182421415971178 4 -0.17853649078837253 5 -0.17651849288279597 6 -0.1758368193458561
		 7 -0.17585553343020283 8 -0.17442112301267265 9 -0.17381931072181356 10 -0.173053826403268
		 11 -0.17351904682115377 12 -0.17295829228719301 13 -0.1715288723472001 14 -0.17026783423029002
		 15 -0.16825623831852632 16 -0.16686168305240368 17 -0.1669580332650713 18 -0.16606049316698868
		 19 -0.16530938692497682 20 -0.16500346947709005 21 -0.1635096873366173 22 -0.16219151845640289
		 23 -0.16038637225074187 24 -0.15835206747051017 25 -0.15712914221165841 26 -0.15596492172232373
		 27 -0.15445652397586412 28 -0.15403611775697806 29 -0.15309109414498412 30 -0.15003506304813319
		 31 -0.14734680013795254 32 -0.1462472077868604 33 -0.14494220327847251 34 -0.14402443408126259
		 35 -0.14220006105216132 36 -0.14168885926591812 37 -0.14317447939952521 38 -0.14331955331219431
		 39 -0.14301376730150156 40 -0.14364750022089107 41 -0.14344318532663097 42 -0.14141659794806055
		 43 -0.13985357891083106 44 -0.13904476113780001 45 -0.13821731127008025 46 -0.13865776335125596
		 47 -0.13657447161313685 48 -0.13469333794923249 49 -0.13245332155317785 50 -0.1304737789233556
		 51 -0.12911840160053317 52 -0.12714696369195816 53 -0.12789432197334477 54 -0.12855841176877275
		 55 -0.12928557435300997 56 -0.12876889720171913 57 -0.12641225760110048 58 -0.12313119714729076
		 59 -0.12009635375186073 60 -0.11959205938944539 61 -0.11874654046053551 62 -0.1200248281535532
		 63 -0.12000406439796912 64 -0.12136922618276003 65 -0.12119381669325485 66 -0.12014517227793597
		 67 -0.11754468116072858 68 -0.11668304822475034 69 -0.11685268849321212 70 -0.11568547146461206
		 71 -0.11427595785683614 72 -0.11352540012960227 73 -0.11316825369830935 74 -0.1117214664148054
		 75 -0.10968246973987805 76 -0.10780275245120641 77 -0.10758192510168135 78 -0.10728151583562123
		 79 -0.1064441360309436 80 -0.10625620650413287 81 -0.10767549300588714 82 -0.10792211741553787
		 83 -0.10865209282490634 84 -0.10805665580573531 85 -0.10656448187345358 86 -0.10467119175309031
		 87 -0.10299754837117647 88 -0.10355664346230392 89 -0.10421352154466207 90 -0.10420410593346546
		 91 -0.10290863937685923 92 -0.1006233165457569 93 -0.10010442096668792 94 -0.10146055950731314
		 95 -0.10351596193240387;
createNode animCurveTU -n "marker_06_MKR_enable";
	rename -uid "65ABF4AD-4D10-F00A-304F-75A2A6D1EA76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 95 1 96 0;
createNode animCurveTL -n "marker_07_MKR_translateX";
	rename -uid "1D2A9516-4C4B-6CA4-CE9F-6183BC455B12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 0.41492777558317095 2 0.41603612670447943
		 3 0.41712126819080431 4 0.41833109471061691 5 0.41922194729835494 6 0.42040506944196554
		 7 0.42122283897215773 8 0.4218786391122552 9 0.42220728024712983 10 0.42221353869011535
		 11 0.4227985897259755 12 0.42459479154874069 13 0.4251357453952066 14 0.42664713708485935
		 15 0.42616527520326852 16 0.42706273320713073 17 0.42754849180416787 18 0.42747421925505968
		 19 0.42621592346355086 20 0.42520563813353796 21 0.42412435826976835 22 0.42362682148479214
		 23 0.42149452203267734 24 0.41991865793129923 25 0.41880954081265576 26 0.41805168978088247
		 27 0.41552553675894699 28 0.41404299489657559 29 0.41350652331666693 30 0.41194088857007649
		 31 0.41054084524885182 32 0.40908574911589457 33 0.40640938580340469 34 0.40485273822863044
		 35 0.40331525733860674 36 0.40035903727532762 37 0.39850413596365231 38 0.39703887774627489
		 39 0.39480751349328569 40 0.3916802520145104 41 0.38839727376090716 42 0.38434443560831366
		 43 0.38120590776587759 44 0.37830462521850139 45 0.37433933807019637 46 0.3713679124693775
		 47 0.36837267100904647 48 0.36443532182889216 49 0.36086204064963645 50 0.35726067192574951
		 51 0.35151692832890058 52 0.34673732246904709 53 0.33796273539744981 54 0.32626578747365309
		 55 0.31304534001225282 56 0.2996264978731723 57 0.28689313500263924 58 0.27436563715608209
		 59 0.26082311964211413 60 0.24682477614952281 61 0.23350011030760687 62 0.2201412539908304
		 63 0.20724247683542096 64 0.19428464357255992 65 0.18136998185330899 66 0.16941908165228181
		 67 0.15646795560380555 68 0.14346510689135128 69 0.1303556120679269 70 0.11752079508782365
		 71 0.10336764737672022 72 0.088925785475795771 73 0.076612559939543967 74 0.063461075873207151
		 75 0.049456539920398779 76 0.03455437027563113 77 0.020985079769972437 78 0.0056939350692529755
		 79 -0.0090520596234511808 80 -0.023470976724415338 81 -0.037554113436161218 82 -0.050603083026294848
		 83 -0.0641972401314303 84 -0.078676105293701559 85 -0.092927782595163932 86 -0.10644215883799091
		 87 -0.12197782174902444 88 -0.13679634870354407 89 -0.15137923523417007 90 -0.16646210926947863
		 91 -0.18178402249604464 92 -0.19668472993738195 93 -0.21283290148157769 94 -0.22917284514741693
		 95 -0.24491763243480824;
createNode animCurveTL -n "marker_07_MKR_translateY";
	rename -uid "5C6019D0-4A54-E570-DCEB-2F86498662C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  1 0.24102884665430091 2 0.24175376847079444
		 3 0.24261055640388984 4 0.24490499181108227 5 0.24568566575634432 6 0.24475834997233181
		 7 0.2430402691748258 8 0.24273588699462068 9 0.24136037347562156 10 0.24017725164331993
		 11 0.23769496011784141 12 0.23648707720862594 13 0.23607083025264508 14 0.23557036731087455
		 15 0.23576788599395637 16 0.23526816479662904 17 0.23325745387044394 18 0.23221576070704342
		 19 0.23088069306852488 20 0.2290565951952328 21 0.22854972983449051 22 0.22778353726134482
		 23 0.22735132779986122 24 0.22742937001692143 25 0.22649163226357871 26 0.22568644645903735
		 27 0.22496680374297062 28 0.22344501357098068 29 0.22253811554518987 30 0.22344634490756066
		 31 0.22418955280575492 32 0.2231321301070468 33 0.22217583646247852 34 0.22096371754590738
		 35 0.22074898988281666 36 0.21911519769137022 37 0.21548533653611779 38 0.21340918316243074
		 39 0.21188059512048274 40 0.20926426914020047 41 0.20753974769411898 42 0.20758476151950167
		 43 0.20728458463738153 44 0.20614297055521469 45 0.20479446591250583 46 0.20253685565343826
		 47 0.20271541556959338 48 0.20263325097521045 49 0.2030751514203557 50 0.20332646950450017
		 51 0.2026867319453457 52 0.20269742051381223 53 0.19973566449162317 54 0.19683608362288163
		 55 0.1937433114259528 56 0.19195736288647214 57 0.19218229591616964 58 0.19357721698721031
		 59 0.19468100349912887 60 0.19320093055748633 61 0.19213755811478128 62 0.18893727139589322
		 63 0.18711468913437024 64 0.18416114979976639 65 0.18247602592486845 66 0.18195746253295197
		 67 0.18303594946716595 68 0.1824837640727891 69 0.1807846087805105 70 0.18047341850603138
		 71 0.18018882217435173 72 0.17959030960903843 73 0.17872290643644251 74 0.17889486959481571
		 75 0.17978527643251008 76 0.18043855253091956 77 0.17959890262511935 78 0.17874831698321969
		 79 0.17872556696265685 80 0.17805756243620474 81 0.17574968506096089 82 0.17486312525708891
		 83 0.17330040050626205 84 0.17311192922888141 85 0.17398989542973153 86 0.17546740140684269
		 87 0.17668216506708556 88 0.17555646331884134 89 0.17444782668337289 90 0.17399330812272651
		 91 0.1749309866216765 92 0.17705800364470159 93 0.17768849826779809 94 0.17611823990909015
		 95 0.17382255884693298;
createNode animCurveTU -n "marker_07_MKR_enable";
	rename -uid "F523B59E-4C27-1F98-76C1-9390FDA339E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 95 1 96 0;
createNode animCurveTL -n "marker_08_MKR_translateX";
	rename -uid "470BB6E1-40B5-CF42-EA11-B3B6F6C47218";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 73 ".ktv[0:72]"  1 -0.1510288448141493 2 -0.15032413356308189
		 3 -0.14969076963478611 4 -0.14914486122392873 5 -0.14896151407204972 6 -0.14827345819651011
		 7 -0.14790977217221585 8 -0.14777426813287098 9 -0.1478472150203376 10 -0.1481771589066444
		 11 -0.14801448970629583 12 -0.1466314034414522 13 -0.14652946824618229 14 -0.14550478198731392
		 15 -0.14631067815896154 16 -0.14574440773548919 17 -0.14556618435158003 18 -0.14575884751424029
		 19 -0.14703749141296252 20 -0.14808790654277465 21 -0.1491237152095084 22 -0.14970192459584591
		 23 -0.15161032831408439 24 -0.15315941578316716 25 -0.15406137297768435 26 -0.15466622129684593
		 27 -0.15679621803305027 28 -0.15792620863119972 29 -0.15828287132194829 30 -0.15967764280468982
		 31 -0.16084255950902437 32 -0.16197415334246629 33 -0.16421834130687712 34 -0.16540348874789784
		 35 -0.16675371630832325 36 -0.16901858728908159 37 -0.17018765467840741 38 -0.17123751264843279
		 39 -0.17295713874272889 40 -0.17534086086829415 41 -0.17795773092650535 42 -0.18151721602900855
		 43 -0.18408636310004506 44 -0.18633889360293687 45 -0.18948708942041276 46 -0.19171664654719983
		 47 -0.1941522471375412 48 -0.19740033853527306 49 -0.2004647915955064 50 -0.20352967579351622
		 51 -0.20855027788864405 52 -0.21259847659485032 53 -0.2204333364667399 54 -0.23114410785235329
		 55 -0.2434934061007536 56 -0.2561137150793053 57 -0.26841620359430574 58 -0.28072913474361227
		 59 -0.29410275168463718 60 -0.30787324159264073 61 -0.32108834724596225 62 -0.33420034557091122
		 63 -0.34713652836083214 64 -0.36011218167911491 65 -0.37345657638958329 66 -0.38579715663103853
		 67 -0.39939736657448394 68 -0.41307161476183457 69 -0.42698236175634718 70 -0.44070971318576968
		 71 -0.45599974117966019 72 -0.47167172850814648 73 -0.48522191360421224;
createNode animCurveTL -n "marker_08_MKR_translateY";
	rename -uid "11080108-42B0-57C9-79B0-5AB25AA51356";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 73 ".ktv[0:72]"  1 0.22154590140954156 2 0.2224702223850259
		 3 0.22321544314907438 4 0.22579362176797535 5 0.22728856281314536 6 0.22689341461308266
		 7 0.22570030037740085 8 0.22584190578127405 9 0.22498654193731138 10 0.22450214964636095
		 11 0.22344574820136776 12 0.2232709153797936 13 0.22369835264006288 14 0.22437090159030315
		 15 0.22514504382151068 16 0.2258666695643391 17 0.22565641245181423 18 0.22561600427747641
		 19 0.2251464569065037 20 0.22430463718648985 21 0.22372274646501555 22 0.22351941027172495
		 23 0.22300312289095636 24 0.22305884744842663 25 0.22186658311185026 26 0.22124740588322267
		 27 0.22001712337603907 28 0.21777781509023364 29 0.21694286134723106 30 0.21770716563204839
		 31 0.21840220670318122 32 0.21835741101918527 33 0.2180737545655822 34 0.21755202336269996
		 35 0.21898641077587211 36 0.21790253915785063 37 0.2149113708957493 38 0.21341749753599393
		 39 0.21259632979487109 40 0.21126688825844298 41 0.21035495394553705 42 0.21029724873264621
		 43 0.21029616292244502 44 0.2100155433828268 45 0.2086424785281743 46 0.20679278909642484
		 47 0.20699301396859271 48 0.20678311472903554 49 0.20814421374743919 50 0.20899521777023411
		 51 0.20872011669035573 52 0.20884157728010555 53 0.20699922210109079 54 0.20577599563844284
		 55 0.20417036640151354 56 0.20317755470341348 57 0.2053977908872191 58 0.20828862384359714
		 59 0.21093328053240756 60 0.21046795792489181 61 0.210917078866384 62 0.20958490051941103
		 63 0.20872307069061624 64 0.20723772103980698 65 0.20617590420253828 66 0.20618897765633482
		 67 0.20807028536046612 68 0.20821094032910004 69 0.20748174626896521 70 0.20774714659766558
		 71 0.20823202130991003 72 0.20842558470703632 73 0.20836549747264832;
createNode animCurveTU -n "marker_08_MKR_enable";
	rename -uid "6268C675-41C3-4190-5FD9-66A4AD73A679";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 73 1 74 0;
createNode animCurveTL -n "marker_09_MKR_translateX";
	rename -uid "4189BFE9-416E-EEE0-BD29-DEBA63DE0435";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  55 0.48380024250737519 56 0.46906894303869751
		 57 0.45523072704951995 58 0.441554149660488 59 0.42698931100131432 60 0.41189000500671447
		 61 0.3975212183119522 62 0.38317369659758271 63 0.36928934463237439 64 0.35542546566588962
		 65 0.34168369671601029 66 0.3290131598791538 67 0.31541783115758992 68 0.30165662899916812
		 69 0.28782664313860606 70 0.27438839432639095 71 0.25960787806408048 72 0.24461482486056174
		 73 0.23175121841044888 74 0.21816028614553373 75 0.20375191446000385 76 0.18838013619726457
		 77 0.174377968935854 78 0.15873750926274721 79 0.14367547016561377 80 0.12898915558558122
		 81 0.11458742709365655 82 0.10128948256380554 83 0.087481819286459261 84 0.07286464682928484
		 85 0.058526729980499903 86 0.044948188130249811 87 0.029442014678870976 88 0.014578685471865582
		 89 -3.0510052630272622e-05 90 -0.015034237496894476 91 -0.030194257037788885 92 -0.044955980304073384
		 93 -0.060884386170979465 94 -0.076989555411815236 95 -0.09251793901384503;
createNode animCurveTL -n "marker_09_MKR_translateY";
	rename -uid "87003EE6-4211-C693-1815-9F8B26B8209B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  55 0.21900151440599946 56 0.2166166213691334
		 57 0.21622631571555007 58 0.21683648578445169 59 0.21735719744506832 60 0.2152997357467632
		 61 0.21364111518628082 62 0.20986333244631061 63 0.20762646960934861 64 0.20412763912890575
		 65 0.20233275926606642 66 0.20156912324567278 67 0.20241432200804266 68 0.20144910989903397
		 69 0.19938785078049326 70 0.1988094289323985 71 0.19856103547787296 72 0.19768535010743482
		 73 0.19638389679696355 74 0.1965333514324249 75 0.19710341016697364 76 0.19744377998081664
		 77 0.19625079285547276 78 0.19523835771755926 79 0.19470812961296946 80 0.19378119614696121
		 81 0.19112745722766389 82 0.18996976388026943 83 0.18815477907572231 84 0.18784811383872846
		 85 0.18846890019027185 86 0.18964801397407072 87 0.19044016159478772 88 0.18907077676453166
		 89 0.18771130689436755 90 0.18713963918030974 91 0.1878406214078665 92 0.18968057389367232
		 93 0.18986841558443002 94 0.18812975841843349 95 0.18571218472802731;
createNode animCurveTU -n "marker_09_MKR_enable";
	rename -uid "0CA273AA-4675-7ABD-569D-719F8672E866";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  54 0 55 1 95 1 96 0;
createNode animCurveTL -n "marker_10_MKR_translateX";
	rename -uid "0A27904C-4DD1-E1AD-0817-7E81760905DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 67 ".ktv[0:66]"  1 0.38751676528094714 2 0.38882057827380812
		 3 0.3903428406356203 4 0.39192255669613374 5 0.39323757343228694 6 0.39525492558299014
		 7 0.39681513730296714 8 0.39837825503520086 9 0.39975661402801155 10 0.40058797610633945
		 11 0.40170198530828549 12 0.40410163549891354 13 0.40540073368656049 14 0.4073256634282636
		 15 0.40770451420705078 16 0.40909577503862837 17 0.40990605463741669 18 0.4104265908684509
		 19 0.40997036096204753 20 0.40981887811188922 21 0.40997600243648746 22 0.41039728434176115
		 23 0.40957418125071987 24 0.4091536296672208 25 0.40937786470232729 26 0.40966029952240235
		 27 0.4085682968959008 28 0.40850785330764083 29 0.40891630956125136 30 0.40855893628439854
		 31 0.4080729119937061 32 0.40733234752352476 33 0.40546222538954957 34 0.40469274497328456
		 35 0.40353856287562584 36 0.40152932985919232 37 0.40058426391674595 38 0.39992423206522987
		 39 0.3982946570944218 40 0.39577086081284107 41 0.39313229528198645 42 0.39006376345079508
		 43 0.38769602244517576 44 0.38543582916462726 45 0.38245396298208323 46 0.38025720545186914
		 47 0.37816327796203097 54 0.34078863830911055 55 0.3282111978615202 56 0.3155184396785945
		 57 0.30307850894568722 58 0.29099412959915327 59 0.27783249027266976 60 0.26453790839878411
		 61 0.25170394430096588 62 0.23877032076844984 63 0.22660385927211479 64 0.21408202186520153
		 65 0.20200815792119298 66 0.19083716823835806 67 0.17853370880064301 68 0.16627229347766548
		 69 0.15390898461836233 70 0.14186661148879776 71 0.12855805402092257 72 0.11486715817847737
		 73 0.10325989801201618;
createNode animCurveTL -n "marker_10_MKR_translateY";
	rename -uid "64C1E1B0-4EB4-C19C-32F8-8E9CB6DFD022";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 67 ".ktv[0:66]"  1 -0.3803555308874037 2 -0.37900810317956185
		 3 -0.37720816394076773 4 -0.37361815589770953 5 -0.37121379383608499 6 -0.37001602610304773
		 7 -0.36944026553821246 8 -0.36740026321262376 9 -0.36608606982445524 10 -0.36470469986957588
		 11 -0.36463526662576762 12 -0.36366813209494442 13 -0.36167633481579697 14 -0.35995017705030152
		 15 -0.3572921326828834 16 -0.35532899976740484 17 -0.35491656035466901 18 -0.35343451048260521
		 19 -0.35195450979266296 20 -0.35096243099288582 21 -0.34876685605383062 22 -0.34674671185906636
		 23 -0.34411745205336552 24 -0.34140724349990048 25 -0.33957024227703958 26 -0.33776971823416713
		 27 -0.33554218813034453 28 -0.33451851615603834 29 -0.33303499889216831 30 -0.32940936624733175
		 31 -0.32617071350988824 32 -0.3244819806818845 33 -0.32255505339990825 34 -0.32101605835821201
		 35 -0.31855676306652503 36 -0.31742211058463043 37 -0.31834478411101341 38 -0.3179482397088661
		 39 -0.31702028757277789 40 -0.31706245381950438 41 -0.31623282321004564 42 -0.3136887573068281
		 43 -0.31162280360902428 44 -0.31028730852997277 45 -0.30898811792912356 46 -0.30891493119278668
		 47 -0.30641780444259453 54 -0.29473243391773207 55 -0.2947217430032647 56 -0.29359753116388121
		 57 -0.29054938211384873 58 -0.28667881983209714 59 -0.28299881587684744 60 -0.28199953430038993
		 61 -0.28063238317539174 62 -0.28134235395359936 63 -0.28095436202390267 64 -0.28186280378773521
		 65 -0.28156394628969239 66 -0.28034192522070367 67 -0.27753905649177962 68 -0.27648547014155062
		 69 -0.2765953979748077 70 -0.27537118646279135 71 -0.2738842202908216 72 -0.27315210381517463
		 73 -0.27276227254110025;
createNode animCurveTU -n "marker_10_MKR_enable";
	rename -uid "B93A6203-44B1-1CB4-D109-93B860069D0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 1 47 1 48 0 53 0 54 1 73 1 74 0;
createNode animCurveTL -n "marker_11_MKR_translateX";
	rename -uid "21A9F33D-487C-8864-5A57-9DB3056B0EE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  53 0.4907366314493723 54 0.47949934229235636
		 55 0.46680520965038452 56 0.45420877130184434 57 0.44179300855458314 58 0.42965964053707328
		 59 0.41671809994120412 60 0.40338786633669277 61 0.39071439472928027 62 0.37794895677870033
		 63 0.3658658831570748 64 0.35359063784751643 65 0.34159338549974605 66 0.33064660646100008
		 67 0.31859941516329304 68 0.30658515231809158 69 0.29446931341002824 70 0.28283765078506451
		 71 0.26978157842136896 72 0.25632019590724897 73 0.24506870615279375 74 0.23314568095992416
		 75 0.22019107454472897 76 0.20636132958823927 77 0.19399984682877602 82 0.12864002478769221
		 83 0.11641987438159129 84 0.10357555937120277 85 0.090766631236405271 86 0.078614777697676108
		 87 0.064795978447182989 88 0.051554464335575312 89 0.038596930620134584 90 0.025275786635708175
		 91 0.011918849242186225 92 -0.0010747056444165848 93 -0.015439427554506557 94 -0.029775530430531771
		 95 -0.04354291846578473;
createNode animCurveTL -n "marker_11_MKR_translateY";
	rename -uid "F95591E6-4AF7-CCF3-9F8B-F286A7D8542E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  53 -0.36130938132746365 54 -0.36003819366516732
		 55 -0.35866703378334047 56 -0.35608073303667198 57 -0.35188189829376337 58 -0.34672997159128
		 59 -0.34190333119231614 60 -0.33950818852763232 61 -0.33699529241605197 62 -0.33670360979214919
		 63 -0.33500388162173445 64 -0.33492097486398109 65 -0.33332078227238826 66 -0.33096713937577271
		 67 -0.32701778806992715 68 -0.32486907261454273 69 -0.32378118107435067 70 -0.32136676331276148
		 71 -0.31866715474684859 72 -0.31675174376920778 73 -0.31537646811454467 74 -0.31291596703682145
		 75 -0.30991005563738377 76 -0.30705468798185942 77 -0.30595467084558925 82 -0.30222399349252627
		 83 -0.30230420156882021 84 -0.30113278416529721 85 -0.29907183598821951 86 -0.29671629748493433
		 87 -0.2945658717911992 88 -0.29470454346315555 89 -0.29499137376079315 90 -0.29465062842874012
		 91 -0.29306886093952311 92 -0.29055572685762321 93 -0.28979547478118839 94 -0.29101482361746445
		 95 -0.29294502026278113;
createNode animCurveTU -n "marker_11_MKR_enable";
	rename -uid "B26EF293-4597-46E3-3139-8997DC1D5728";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  52 0 53 1 77 1 78 0 81 0 82 1 95 1 96 0;
createNode animCurveTL -n "marker_12_MKR_translateX";
	rename -uid "8632298F-4818-DDB0-2E26-C0A38861032A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 65 ".ktv[0:64]"  1 -0.37677026795495566 2 -0.37560413042656954
		 3 -0.37422751939600618 4 -0.372868635697853 5 -0.37178052705155362 6 -0.36995943920496338
		 7 -0.36836674277310821 8 -0.36686976700594826 9 -0.36547284880967718 10 -0.36452574976170804
		 11 -0.36318260782645317 12 -0.36072538140914356 13 -0.35934348815343853 14 -0.35701644910172659
		 15 -0.35639798727201233 16 -0.35465645623054309 17 -0.35336657911882163 18 -0.35232332984614034
		 19 -0.35212344266000811 20 -0.35158337284336472 21 -0.35070363681278727 22 -0.34952001131286559
		 23 -0.3493343890695273 24 -0.34887643273170832 25 -0.34762430943554301 26 -0.34630244436375379
		 27 -0.34623726328338622 28 -0.34511353447712267 29 -0.3435436486066637 30 -0.34264881648396905
		 31 -0.34185921228725369 32 -0.34104294502322235 33 -0.34141971239378188 34 -0.34071379488401488
		 35 -0.34021857594306332 36 -0.34060512792061504 37 -0.33988456225085234 38 -0.33887776978310236
		 39 -0.33876216107411417 40 -0.33958187431335929 41 -0.34035385021538733 42 -0.34173558647859714
		 43 -0.34229024327891677 44 -0.34254124484427417 45 -0.34351676530972336 46 -0.34377304412076337
		 47 -0.34393385687553057 48 -0.34486586463131685 49 -0.34600532441060472 50 -0.34706873396118887
		 51 -0.34988696002185743 52 -0.35176034765769471 53 -0.35754491827621959 54 -0.36671669286765496
		 55 -0.37737135929625887 56 -0.38802188547553162 57 -0.39875258039047146 58 -0.40916332393500154
		 59 -0.42071055998092832 60 -0.43259681536277594 61 -0.44408222682154869 62 -0.45576001373010178
		 63 -0.46670042669190326 64 -0.47817442528776949 65 -0.48957062719646122;
createNode animCurveTL -n "marker_12_MKR_translateY";
	rename -uid "C1DAD7A1-4B24-EE26-9FDC-8EACD0BACDA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 65 ".ktv[0:64]"  1 -0.31776930089644678 2 -0.31693519012950122
		 3 -0.31631953215556519 4 -0.31393270417648733 5 -0.31262018905017175 6 -0.3131301913147676
		 7 -0.3143234426078757 8 -0.31442601997970737 9 -0.31539020642196536 10 -0.31595792478617502
		 11 -0.31693783876084891 12 -0.31698647222262655 13 -0.31666177970129761 14 -0.31584094450736222
		 15 -0.31540709523628441 16 -0.31455509172555218 17 -0.31455399198654566 18 -0.31454313145442403
		 19 -0.31521464639179708 20 -0.31630964108075899 21 -0.31724327644699052 22 -0.31780788590378006
		 23 -0.31882210727402638 24 -0.31926841728308336 25 -0.32091488203770235 26 -0.32185157859269398
		 27 -0.32369979128837134 28 -0.32653598179150545 29 -0.32766136651023547 30 -0.32749182984530989
		 31 -0.32722472883377646 32 -0.32732265865219234 33 -0.3279135030672396 34 -0.32868226699296216
		 35 -0.32746805049808814 36 -0.32876976031440408 37 -0.33194067451718806 38 -0.33383679238440789
		 39 -0.33482274012151614 40 -0.33637219277082275 41 -0.33758523246758299 42 -0.33840082785891362
		 43 -0.33905286417568148 44 -0.33959174224586464 45 -0.34153687843274966 46 -0.34378650085350193
		 47 -0.34422892663970905 48 -0.34517501330887379 49 -0.34437764430920126 50 -0.34407483883316636
		 51 -0.34520532627825717 52 -0.34592256003672461 53 -0.34872682051235326 54 -0.35133799885775918
		 55 -0.35455041773848417 56 -0.35753705627992716 57 -0.35728666471243797 58 -0.3565259061073992
		 59 -0.35626949576149347 60 -0.35926826111030896 61 -0.36134962411610633 62 -0.36504486239544021
		 63 -0.36859492769777258 64 -0.37276897373962103 65 -0.37699205391963092;
createNode animCurveTU -n "marker_12_MKR_enable";
	rename -uid "5212CF58-43CE-6E94-F7D0-4CAF2F7558F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 65 1 66 0;
createNode animCurveTL -n "marker_13_MKR_translateX";
	rename -uid "426069BC-4B92-F4D5-4B49-53BAE61287EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 89 ".ktv[0:88]"  1 0.065837941512844389 2 0.066688547878951288
		 3 0.067423217454506856 4 0.068208334776439616 5 0.068739169206074813 6 0.069710857038674079
		 7 0.070253127035000196 8 0.070606740368695964 9 0.070792236652300722 10 0.070673990004535781
		 11 0.07125694478738831 12 0.072924292802271307 13 0.073298397796365378 14 0.074686601774073158
		 15 0.074103730421127501 16 0.074961457829287759 17 0.075614388623374995 18 0.075645058000606724
		 19 0.074512206011929427 20 0.073733833968524731 21 0.072677674003859938 22 0.072280295342369349
		 23 0.070292314520311483 24 0.068789621989068461 25 0.067790476406580535 26 0.067162225449843627
		 27 0.064832492866885527 28 0.063491664270099113 29 0.06312139617308421 30 0.061662267078138822
		 31 0.060441028938106101 32 0.059454093665027075 33 0.057234689591446286 34 0.056095322473315723
		 35 0.055005723798643213 36 0.05271019859254833 37 0.051392198571282077 38 0.050343374811162689
		 39 0.048668715447474309 40 0.046314154407635422 41 0.043699169984404374 42 0.040075633453399262
		 43 0.03742192060944094 44 0.035157677107641838 45 0.031760147913488024 46 0.029451826870050768
		 47 0.026863007948731643 48 0.023455992017646476 49 0.02048254291097007 50 0.017401320740257797
		 51 0.012336022212832032 52 0.00816979693430675 53 0.00044176532863360318 54 -0.010029035391705299
		 55 -0.022048799649335649 56 -0.034423828371011322 57 -0.046189889624269231 58 -0.057927352882291394
		 59 -0.070691775201128126 60 -0.083953976432453559 61 -0.096540376197391753 62 -0.10901986377832196
		 63 -0.12134460187723861 64 -0.13366973152720663 65 -0.14628369201298386 66 -0.15802667997139713
		 67 -0.17082239457718074 68 -0.18362491151808952 69 -0.1965662640025399 70 -0.20938715362324395
		 71 -0.22363578237424597 72 -0.23819101589322011 73 -0.2505687466931168 74 -0.26408627279025232
		 75 -0.27845813303878597 76 -0.29374698304356117 77 -0.30776764079994134 78 -0.3236239133946513
		 79 -0.33898105562266523 80 -0.35404445316063521 81 -0.3687462644064099 82 -0.38261615362471391
		 83 -0.39710005180733193 84 -0.4127520929939944 85 -0.42821327901383155 86 -0.44299144541025093
		 87 -0.4601864740290213 88 -0.47647294933309958 89 -0.49263719607700868;
createNode animCurveTL -n "marker_13_MKR_translateY";
	rename -uid "82D85B9B-4F83-C2E3-3C68-1895181DC259";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 89 ".ktv[0:88]"  1 0.47492528846975157 2 0.47569782310865005
		 3 0.47642062566980758 4 0.47887448263261934 5 0.47983027007822909 6 0.47892453884845965
		 7 0.47710660471974842 8 0.47671429891627604 9 0.47528478690135323 10 0.47406097264717328
		 11 0.47188111374315778 12 0.47104230521306156 13 0.47079397494294284 14 0.47067574893487973
		 15 0.47085184780886513 16 0.4708176759360273 17 0.46941271762183878 18 0.46863359632512736
		 19 0.46737090961969419 20 0.46566791830972754 21 0.4646491843787024 22 0.46378549551038106
		 23 0.46281050228835063 24 0.46236335869177125 25 0.46077324573329759 26 0.45966967441017947
		 27 0.45822380122443584 28 0.45571779025250214 29 0.45429928500949235 30 0.45476608284737718
		 31 0.4551581350849665 32 0.45423272383463298 33 0.45318792132379493 34 0.45204848289731114
		 35 0.45240449363676305 36 0.45062578393402786 37 0.44686919289297811 38 0.44467862046021656
		 39 0.4430798895682071 40 0.44075372474808272 41 0.43911110545469689 42 0.43868760961878794
		 43 0.43820035906685828 44 0.43718797879040094 45 0.43549960575634383 46 0.43291196026877921
		 47 0.43279314874936237 48 0.43228904995245854 49 0.43301476067388511 50 0.43339228592416046
		 51 0.43258015398378946 52 0.43238830858700561 53 0.42963845510661447 54 0.42740414156730555
		 55 0.42485623410705975 56 0.42323787025902293 57 0.42466195864615153 58 0.42682188985797009
		 59 0.42889167522356608 60 0.42791474677154351 61 0.42772894607724221 62 0.42560447768076159
		 63 0.42432186932468718 64 0.4222091964321496 65 0.42089277708987871 66 0.42092935498332329
		 67 0.42281154411311206 68 0.42275347812101649 69 0.42175964120589582 70 0.42208073605357521
		 71 0.42264716015986303 72 0.42302865768878517 73 0.42289044928251096 74 0.4240928198323296
		 75 0.42624552818411465 76 0.42837370052129531 77 0.4289771580977666 78 0.42952035236804031
		 79 0.43127938477613281 80 0.43232037796273437 81 0.43160537971371571 82 0.43235483682677123
		 83 0.43263215341552719 84 0.43386781041529199 85 0.43683760170363684 86 0.44060309364700001
		 87 0.44399003457219555 88 0.44512002377462501 89 0.44638089177666074;
createNode animCurveTU -n "marker_13_MKR_enable";
	rename -uid "D9A4A0E8-4105-9DB7-27B4-B2B6A5AF7A96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 89 1 90 0;
createNode animCurveTL -n "marker_14_MKR_translateX";
	rename -uid "D2A8FDF1-4DDE-A0F4-204E-629C09077143";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  60 0.48139269071158042 61 0.46651329801849117
		 62 0.45161401140131396 63 0.43712636569329766 64 0.42274523194460223 65 0.4084116735550305
		 66 0.39525506887470163 67 0.38118175680833899 68 0.3669666098295925 69 0.35265210426523297
		 70 0.33879223706193584 71 0.32352243915116985 72 0.30806656445743363 73 0.29490682374471588
		 74 0.28091519154662736 75 0.26621836766430551 76 0.25063725152241312 77 0.23636266461790101
		 78 0.22040346982753312 79 0.20516123305452127 80 0.19026080612445639 81 0.17569070396184738
		 82 0.1621988474849303 83 0.14826967885636 84 0.13340458277298406 85 0.11894461980489968
		 86 0.10533657003398245 87 0.089675734530583417 88 0.074728846289866202 89 0.060019299082145205
		 90 0.044931179158120838 91 0.029685785811779275 92 0.014929386335214567 93 -0.00098438403728995372
		 94 -0.017134506680624495 95 -0.032719829485320817;
createNode animCurveTL -n "marker_14_MKR_translateY";
	rename -uid "11B10B26-419F-BB17-922A-A3B681AAB5B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  60 0.46267734398397753 61 0.45866574757857537
		 62 0.45242144714422783 63 0.44798017993237527 64 0.44232996700545468 65 0.4386461713855685
		 66 0.43627051373035819 67 0.4354361371148725 68 0.4326828952249212 69 0.42900076722605285
		 70 0.42678390624734985 71 0.42492645589620626 72 0.42247484903362331 73 0.41988818244793846
		 74 0.41864828205334714 75 0.41792257874976546 76 0.41697124860904222 77 0.41443324216956934
		 78 0.41204221244273564 79 0.41035451769326781 80 0.40810530948571178 81 0.40444400903873845
		 82 0.40220143709058054 83 0.39957807844351945 84 0.39832839212135673 85 0.39817014429537201
		 86 0.39846058682834062 87 0.39868712278373442 88 0.39666909419768526 89 0.39461868278584433
		 90 0.39340599366442708 91 0.39369491498294795 92 0.39517359345317882 93 0.39487552401904991
		 94 0.39268170015955395 95 0.38987332208411285;
createNode animCurveTU -n "marker_14_MKR_enable";
	rename -uid "A29B3630-47B2-C7C0-0EA8-188A613C0455";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  59 0 60 1 95 1 96 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "EF2FC42B-46C7-8FCC-CFC7-B2A4A8DE5641";
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
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 708\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n"
		+ "            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"stA_1_1Shape1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n"
		+ "            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 708\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n"
		+ "            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -autoExpandAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"stA_1_1Shape1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmLineDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmSkyDomeDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmBundleDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmMarkerDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"stA_1_1Shape1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 708\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmLineDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmSkyDomeDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmBundleDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmMarkerDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4A4B2024-4750-7D47-BB57-C2AA93337D96";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 95 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "stA_1_1_translateX.o" "stA_1_1.tx";
connectAttr "stA_1_1_translateY.o" "stA_1_1.ty";
connectAttr "stA_1_1_translateZ.o" "stA_1_1.tz";
connectAttr "stA_1_1_rotateX.o" "stA_1_1.rx";
connectAttr "stA_1_1_rotateY.o" "stA_1_1.ry";
connectAttr "stA_1_1_rotateZ.o" "stA_1_1.rz";
connectAttr "imagePlaneShape1.msg" "stA_1_1Shape1.ip" -na;
connectAttr "stA_1_1Shape1_focalLength.o" "stA_1_1Shape1.fl";
connectAttr "lensDistortionToggle1.olns" "stA_1_1Shape1.olns";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr "timeToUnitConversion1.o" "imagePlaneShape1.fe";
connectAttr "mmMarkerScale1.ot" "markerGroup1.t";
connectAttr "mmMarkerScale1.os" "markerGroup1.s";
connectAttr "marker_01_MKR_translateX.o" "marker_01_MKR.tx" -l on;
connectAttr "marker_01_MKR_translateY.o" "marker_01_MKR.ty" -l on;
connectAttr "marker_01_MKR_enable.o" "marker_01_MKR.enable" -l on;
connectAttr "marker_01_MKR.enable" "marker_01_MKR.lodv";
connectAttr "bundle_01_BND.msg" "marker_01_MKR.bundle";
connectAttr "stA_1_1Shape1.olns" "marker_01_MKR.ilns";
connectAttr "marker_02_MKR_translateX.o" "marker_02_MKR.tx" -l on;
connectAttr "marker_02_MKR_translateY.o" "marker_02_MKR.ty" -l on;
connectAttr "marker_02_MKR_enable.o" "marker_02_MKR.enable" -l on;
connectAttr "marker_02_MKR.enable" "marker_02_MKR.lodv";
connectAttr "bundle_02_BND.msg" "marker_02_MKR.bundle";
connectAttr "stA_1_1Shape1.olns" "marker_02_MKR.ilns";
connectAttr "marker_03_MKR_translateX.o" "marker_03_MKR.tx" -l on;
connectAttr "marker_03_MKR_translateY.o" "marker_03_MKR.ty" -l on;
connectAttr "marker_03_MKR_enable.o" "marker_03_MKR.enable" -l on;
connectAttr "marker_03_MKR.enable" "marker_03_MKR.lodv";
connectAttr "bundle_03_BND.msg" "marker_03_MKR.bundle";
connectAttr "stA_1_1Shape1.olns" "marker_03_MKR.ilns";
connectAttr "marker_04_MKR_translateX.o" "marker_04_MKR.tx" -l on;
connectAttr "marker_04_MKR_translateY.o" "marker_04_MKR.ty" -l on;
connectAttr "marker_04_MKR_enable.o" "marker_04_MKR.enable" -l on;
connectAttr "marker_04_MKR.enable" "marker_04_MKR.lodv";
connectAttr "bundle_04_BND.msg" "marker_04_MKR.bundle";
connectAttr "stA_1_1Shape1.olns" "marker_04_MKR.ilns";
connectAttr "marker_05_MKR_translateX.o" "marker_05_MKR.tx" -l on;
connectAttr "marker_05_MKR_translateY.o" "marker_05_MKR.ty" -l on;
connectAttr "marker_05_MKR_enable.o" "marker_05_MKR.enable" -l on;
connectAttr "marker_05_MKR.enable" "marker_05_MKR.lodv";
connectAttr "bundle_05_BND.msg" "marker_05_MKR.bundle";
connectAttr "stA_1_1Shape1.olns" "marker_05_MKR.ilns";
connectAttr "marker_06_MKR_translateX.o" "marker_06_MKR.tx" -l on;
connectAttr "marker_06_MKR_translateY.o" "marker_06_MKR.ty" -l on;
connectAttr "marker_06_MKR_enable.o" "marker_06_MKR.enable" -l on;
connectAttr "marker_06_MKR.enable" "marker_06_MKR.lodv";
connectAttr "bundle_06_BND.msg" "marker_06_MKR.bundle";
connectAttr "stA_1_1Shape1.olns" "marker_06_MKR.ilns";
connectAttr "marker_07_MKR_translateX.o" "marker_07_MKR.tx" -l on;
connectAttr "marker_07_MKR_translateY.o" "marker_07_MKR.ty" -l on;
connectAttr "marker_07_MKR_enable.o" "marker_07_MKR.enable" -l on;
connectAttr "marker_07_MKR.enable" "marker_07_MKR.lodv";
connectAttr "bundle_07_BND.msg" "marker_07_MKR.bundle";
connectAttr "stA_1_1Shape1.olns" "marker_07_MKR.ilns";
connectAttr "marker_08_MKR_translateX.o" "marker_08_MKR.tx" -l on;
connectAttr "marker_08_MKR_translateY.o" "marker_08_MKR.ty" -l on;
connectAttr "marker_08_MKR_enable.o" "marker_08_MKR.enable" -l on;
connectAttr "marker_08_MKR.enable" "marker_08_MKR.lodv";
connectAttr "bundle_08_BND.msg" "marker_08_MKR.bundle";
connectAttr "stA_1_1Shape1.olns" "marker_08_MKR.ilns";
connectAttr "marker_09_MKR_translateX.o" "marker_09_MKR.tx" -l on;
connectAttr "marker_09_MKR_translateY.o" "marker_09_MKR.ty" -l on;
connectAttr "marker_09_MKR_enable.o" "marker_09_MKR.enable" -l on;
connectAttr "marker_09_MKR.enable" "marker_09_MKR.lodv";
connectAttr "bundle_09_BND.msg" "marker_09_MKR.bundle";
connectAttr "stA_1_1Shape1.olns" "marker_09_MKR.ilns";
connectAttr "marker_10_MKR_translateX.o" "marker_10_MKR.tx" -l on;
connectAttr "marker_10_MKR_translateY.o" "marker_10_MKR.ty" -l on;
connectAttr "marker_10_MKR_enable.o" "marker_10_MKR.enable" -l on;
connectAttr "marker_10_MKR.enable" "marker_10_MKR.lodv";
connectAttr "bundle_10_BND.msg" "marker_10_MKR.bundle";
connectAttr "stA_1_1Shape1.olns" "marker_10_MKR.ilns";
connectAttr "marker_11_MKR_translateX.o" "marker_11_MKR.tx" -l on;
connectAttr "marker_11_MKR_translateY.o" "marker_11_MKR.ty" -l on;
connectAttr "marker_11_MKR_enable.o" "marker_11_MKR.enable" -l on;
connectAttr "marker_11_MKR.enable" "marker_11_MKR.lodv";
connectAttr "bundle_11_BND.msg" "marker_11_MKR.bundle";
connectAttr "stA_1_1Shape1.olns" "marker_11_MKR.ilns";
connectAttr "marker_12_MKR_translateX.o" "marker_12_MKR.tx" -l on;
connectAttr "marker_12_MKR_translateY.o" "marker_12_MKR.ty" -l on;
connectAttr "marker_12_MKR_enable.o" "marker_12_MKR.enable" -l on;
connectAttr "marker_12_MKR.enable" "marker_12_MKR.lodv";
connectAttr "bundle_12_BND.msg" "marker_12_MKR.bundle";
connectAttr "stA_1_1Shape1.olns" "marker_12_MKR.ilns";
connectAttr "marker_13_MKR_translateX.o" "marker_13_MKR.tx" -l on;
connectAttr "marker_13_MKR_translateY.o" "marker_13_MKR.ty" -l on;
connectAttr "marker_13_MKR_enable.o" "marker_13_MKR.enable" -l on;
connectAttr "marker_13_MKR.enable" "marker_13_MKR.lodv";
connectAttr "bundle_13_BND.msg" "marker_13_MKR.bundle";
connectAttr "stA_1_1Shape1.olns" "marker_13_MKR.ilns";
connectAttr "marker_14_MKR_translateX.o" "marker_14_MKR.tx" -l on;
connectAttr "marker_14_MKR_translateY.o" "marker_14_MKR.ty" -l on;
connectAttr "marker_14_MKR_enable.o" "marker_14_MKR.enable" -l on;
connectAttr "marker_14_MKR.enable" "marker_14_MKR.lodv";
connectAttr "bundle_14_BND.msg" "marker_14_MKR.bundle";
connectAttr "stA_1_1Shape1.olns" "marker_14_MKR.ilns";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":time1.o" "timeToUnitConversion1.i";
connectAttr "stA_1_1Shape1.ilns" "lensDistortionToggle1.ilns";
connectAttr "markerGroup1.depth" "mmMarkerScale1.dpt";
connectAttr "markerGroup1.overscanX" "mmMarkerScale1.ovrscninvx";
connectAttr "markerGroup1.overscanY" "mmMarkerScale1.ovrscninvy";
connectAttr "stA_1_1Shape1.fl" "mmMarkerScale1.fl";
connectAttr "stA_1_1Shape1.cap" "mmMarkerScale1.cap";
connectAttr "stA_1_1Shape1.fio" "mmMarkerScale1.fio";
connectAttr "marker_14_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_13_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_12_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_11_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_10_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_09_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_08_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_07_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_06_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_05_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_04_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_03_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_02_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_01_MKR.iog" "collection1.dsm" -na;
connectAttr "stA_1_1.rz" "collection1.dnsm" -na;
connectAttr "stA_1_1.ry" "collection1.dnsm" -na;
connectAttr "stA_1_1.rx" "collection1.dnsm" -na;
connectAttr "stA_1_1.tz" "collection1.dnsm" -na;
connectAttr "stA_1_1.ty" "collection1.dnsm" -na;
connectAttr "stA_1_1.tx" "collection1.dnsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "test_MeshShape.iog" ":initialShadingGroup.dsm" -na;
// End of tst.stA.v2.ma
