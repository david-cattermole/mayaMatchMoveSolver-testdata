//Maya ASCII 2023 scene
//Name: robotArm_v002.ma
//Last modified: Sun, Sep 03, 2023 10:32:20 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "mmMarkerScale" -nodeType "mmLensModelToggle" -nodeType "mmMarkerShape"
		 -nodeType "mmBundleShape" -nodeType "mmMarkerGroupTransform" -nodeType "mmMarkerTransform"
		 -dataType "MMLensData" "mmSolver" "0.4.6";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "623476A5-4299-0C11-0793-A8BFFDF971BC";
createNode transform -s -n "persp";
	rename -uid "E105280F-48C3-3205-CE8F-C485F509216C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.4751733504659033 24.099608995153233 25.555834726413835 ;
	setAttr ".r" -type "double3" -89.73835273009135 -1068.9999999991528 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "42B99A0F-447D-9007-611D-438E66675C18";
	setAttr -k off ".v" no;
	setAttr ".zom" 5.5900596361470161;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 6.6296069348491669;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 4.4693966654060349 17.470071186742238 25.526116258092209 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E8DC3B63-4C6C-3DED-2C21-05A218A03EC8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.0089538107758797003 1000.1001138894977 -0.041050906543760923 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8BD31421-4629-AA21-60B0-22BE8BD0721B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.11259233897056;
	setAttr ".ow" 1.0526315789473684;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0.0089538107758797003 0.98752155052711543 -0.041050906543982774 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "4A1B0AC4-45F5-48ED-6745-E9B7B2AB2510";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3CA5F7FF-4A10-221F-B10E-D1A725E2E64C";
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
	rename -uid "90D99FC5-4CC7-1917-FD36-2DB01E997F25";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "FCE7FD80-4377-6C26-1012-6C9C9982BE4F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "camera_GRP";
	rename -uid "F179242C-4CED-6C04-193D-FABDA55FEEF3";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "trackCamera" -p "camera_GRP";
	rename -uid "5DB8F827-45B7-32DF-32FF-1FB8D7306DD1";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_used_hint" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_used_hint" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_smoothness_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_smoothness_variance" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_stiffness_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_stiffness_variance" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_min_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_max_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_min_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_max_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_used_hint" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_used_hint" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_smoothness_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_smoothness_variance" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_stiffness_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_stiffness_variance" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_min_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_max_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_min_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_max_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_used_hint" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_used_hint" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_smoothness_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_smoothness_variance" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_stiffness_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_stiffness_variance" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_min_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_max_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_min_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_max_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_used_hint" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_used_hint" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_smoothness_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_smoothness_variance" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_stiffness_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_stiffness_variance" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_min_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_max_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_min_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_max_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_used_hint" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_used_hint" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_smoothness_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_smoothness_variance" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_stiffness_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_stiffness_variance" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_min_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_max_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_min_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_max_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_stiffness_weight" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_stiffness_weight" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_stiffness_weight" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_stiffness_weight" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_stiffness_weight" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_smoothness_weight" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_smoothness_weight" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_smoothness_weight" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_smoothness_weight" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_smoothness_weight" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_previous_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_mean_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_variance_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_previous_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_mean_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_variance_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_previous_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_mean_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_variance_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_previous_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_mean_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_variance_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_previous_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_mean_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_variance_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_used_hint" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_used_hint" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_smoothness_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_smoothness_variance" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_stiffness_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_stiffness_variance" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_min_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_max_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_min_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_max_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_used_hint" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_used_hint" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_smoothness_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_smoothness_variance" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_stiffness_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_stiffness_variance" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_min_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_max_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_min_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_max_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_used_hint" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_used_hint" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_smoothness_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_smoothness_variance" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_stiffness_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_stiffness_variance" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_min_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_max_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_min_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_max_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_used_hint" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_used_hint" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_smoothness_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_smoothness_variance" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_stiffness_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_stiffness_variance" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_min_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_max_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_min_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_max_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_used_hint" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_used_hint" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_smoothness_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_smoothness_variance" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_stiffness_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_stiffness_variance" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_min_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_max_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_min_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_max_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_stiffness_weight" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_stiffness_weight" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_stiffness_weight" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_stiffness_weight" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_stiffness_weight" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_smoothness_weight" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_smoothness_weight" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_smoothness_weight" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_smoothness_weight" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_smoothness_weight" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_previous_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_mean_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_variance_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_previous_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_mean_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_variance_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_previous_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_mean_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_variance_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_previous_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_mean_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_variance_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_previous_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_mean_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_variance_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_used_hint" 
		-ln "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_used_hint" -at "double";
	addAttr -ci true -h true -sn "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_smoothness_enable" 
		-ln "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_smoothness_variance" 
		-ln "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_stiffness_enable" 
		-ln "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_stiffness_variance" 
		-ln "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_min_enable" 
		-ln "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_max_enable" 
		-ln "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_min_value" 
		-ln "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_max_value" 
		-ln "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_stiffness_weight" 
		-ln "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_smoothness_weight" 
		-ln "aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_smoothness_weight" -at "double";
	setAttr ".ro" 2;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 2.3006501649766469e-15 -2.3006501649766469e-15 ;
	setAttr ".rpt" -type "double3" -1.5644006636821697e-16 -9.5766541556743209e-17 -8.6816499926460673e-17 ;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_used_hint" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_smoothness_variance" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_stiffness_variance" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_min_value" -1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_max_value" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_used_hint" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_smoothness_variance" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_stiffness_variance" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_min_value" -1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_max_value" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_used_hint" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_smoothness_variance" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_stiffness_variance" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_min_value" -1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_max_value" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_used_hint" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_smoothness_variance" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_stiffness_variance" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_min_value" -1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_max_value" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_used_hint" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_smoothness_variance" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_stiffness_variance" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_min_value" -1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_max_value" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_stiffness_weight" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_stiffness_weight" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_stiffness_weight" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_stiffness_weight" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_smoothness_weight" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_smoothness_weight" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_smoothness_weight" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_smoothness_weight" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_smoothness_weight" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_previous_value" -4.0625976467450187;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_mean_value" -4.0625976467450187;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateX_variance_value" 1.9999990000009999;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_previous_value" 14.804214493632513;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_mean_value" 14.804214493632513;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_rotateY_variance_value" 1.9999990000009999;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_previous_value" 0.41873157489546764;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_mean_value" 0.4187315748954677;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateX_variance_value" 1.9999990000009999;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_previous_value" 1.669359924554827;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_mean_value" 1.669359924554827;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateY_variance_value" 1.9999990000009999;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_previous_value" 2.4785449286609396;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_mean_value" 2.4785449286609396;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_translateZ_variance_value" 1.9999990000009999;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_used_hint" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_smoothness_variance" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_stiffness_variance" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_min_value" -1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_max_value" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_used_hint" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_smoothness_variance" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_stiffness_variance" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_min_value" -1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_max_value" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_used_hint" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_smoothness_variance" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_stiffness_variance" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_min_value" -1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_max_value" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_used_hint" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_smoothness_variance" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_stiffness_variance" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_min_value" -1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_max_value" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_used_hint" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_smoothness_variance" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_stiffness_variance" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_min_value" -1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_max_value" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_stiffness_weight" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_stiffness_weight" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_stiffness_weight" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_stiffness_weight" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_smoothness_weight" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_smoothness_weight" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_smoothness_weight" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_smoothness_weight" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_smoothness_weight" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_previous_value" 0.42772630069214046;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_mean_value" 0.42774203252026666;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateX_variance_value" 1.6180339887498949;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_previous_value" 1.6786296761644615;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_mean_value" 1.678621774385302;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateY_variance_value" 1.6180339887498949;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_previous_value" 2.488588685033974;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_mean_value" 2.4885886856498556;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_translateZ_variance_value" 1.6180339887498949;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_previous_value" -1.699291485334129;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_mean_value" -1.6995602837743931;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateX_variance_value" 1.6180339887498949;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_previous_value" 9.813538860073777;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_mean_value" 9.813962130987111;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_rotateY_variance_value" 1.6180339887498949;
	setAttr ".aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_used_hint" 1;
	setAttr ".aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_smoothness_variance" 
		1;
	setAttr ".aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_stiffness_variance" 
		1;
	setAttr ".aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_min_value" -1;
	setAttr ".aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_max_value" 1;
	setAttr ".aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_0D640BD4_47FF_2258_D9A0_2596B8B85D51_translateZ_smoothness_weight" 
		1;
createNode camera -n "trackCameraShape" -p "trackCamera";
	rename -uid "872B36E0-4B69-8051-DCC4-88A446A5951E";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_used_hint" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_used_hint" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_smoothness_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_smoothness_variance" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_stiffness_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_stiffness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_stiffness_variance" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_min_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_max_enable" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_min_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_max_value" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_stiffness_weight" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_smoothness_weight" 
		-ln "aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_used_hint" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_used_hint" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_smoothness_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_smoothness_variance" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_stiffness_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_stiffness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_stiffness_variance" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_min_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_max_enable" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_min_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_max_value" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_stiffness_weight" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_smoothness_weight" 
		-ln "aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_smoothness_weight" -at "double";
	addAttr -s false -ci true -sn "ilns" -ln "inLens" -dt "MMLensData";
	addAttr -s false -ci true -sn "olns" -ln "outLens" -dt "MMLensData";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.797244094488189 ;
	setAttr -l on ".hfa";
	setAttr -l on ".vfa";
	setAttr -l on ".ovr";
	setAttr ".pze" yes;
	setAttr ".pn" -type "double2" 0.0257582200605719 0.080511768825638513 ;
	setAttr ".zom" 0.76612782484310549;
	setAttr ".fl" 26.081549752278498;
	setAttr ".sa" 180;
	setAttr ".coi" 10.750607576360803;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".tp" -type "double3" -0.90275422090091861 1.3811700787163346 -0.25601393595456745 ;
	setAttr -l on ".dgm";
	setAttr -l on ".dfg" yes;
	setAttr -l on ".dr";
	setAttr ".dgc" -type "float3" 0 0 0 ;
	setAttr ".dcf" yes;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_used_hint" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_smoothness_variance" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_stiffness_variance" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_min_value" -1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_max_value" 1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_stiffness_weight" 
		1;
	setAttr ".aux_DE6372D8_4166_9A3C_DDF0_68A87A756F62_focalLength_smoothness_weight" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_used_hint" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_smoothness_variance" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_stiffness_variance" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_min_value" -1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_max_value" 1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_stiffness_weight" 
		1;
	setAttr ".aux_A6155DAC_4A6B_B8D5_0F2B_588A869BE036_focalLength_smoothness_weight" 
		1;
createNode transform -n "imagePlane1" -p "trackCameraShape";
	rename -uid "974614D1-4877-7FDB-91FF-FCB8AFF0A2DA";
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "EACF3283-4C96-4C97-5D63-4C9F1D438992";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".fc" 400;
	setAttr ".imn" -type "string" "C:/Users/catte/dev/mayaMatchMoveSolver/tests/data/scenes/undistortedPlate/undistortedPlate/robotArm_undistort.1387.png";
	setAttr ".ufe" yes;
	setAttr ".cov" -type "short2" 1920 1080 ;
	setAttr ".s" -type "double2" 1.41732 0.94488 ;
	setAttr ".w" 19.199999999999996;
	setAttr ".h" 10.799999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode mmMarkerGroupTransform -n "markerGroup1" -p "trackCamera";
	rename -uid "692F4C99-4C10-D3F0-AE5B-62A393351BE1";
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
	setAttr -k on ".depth";
	setAttr -k on ".overscanX";
	setAttr -k on ".overscanY";
createNode mmMarkerTransform -n "marker_04_MKR" -p "markerGroup1";
	rename -uid "EABE9C04-4C7A-6948-516C-4481603DEC9A";
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
	setAttr ".t" -type "double3" 0.099626540164644006 -0.030723276181058912 -1 ;
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
	rename -uid "25C6D25B-4C52-8506-35E7-BEBF02994861";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_06_MKR" -p "markerGroup1";
	rename -uid "9584BC49-4A36-6BE2-A77F-BD8B32EA55F7";
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
	setAttr ".t" -type "double3" -0.027420760264384642 -0.042449165929725557 -1 ;
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
	rename -uid "7067B198-40C5-28A8-479D-4FB5521CB8BC";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_18_MKR" -p "markerGroup1";
	rename -uid "48E72B0E-4AB6-3EF2-AC1D-BE8FF9710896";
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
	setAttr ".t" -type "double3" -0.053158456736823068 -0.10379030026818924 -1 ;
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
	setAttr -l on ".markerName" -type "string" "18";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_18_MKRShape" -p "marker_18_MKR";
	rename -uid "3B0C5300-4CF5-9E94-B34B-2C9D845588CB";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_19_MKR" -p "markerGroup1";
	rename -uid "EDBDFEF0-4A60-7CC3-B460-F99E4F9863A1";
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
	setAttr ".t" -type "double3" -0.062409154857453117 -0.1093351989429571 -1 ;
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
	setAttr -l on ".markerName" -type "string" "19";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_19_MKRShape" -p "marker_19_MKR";
	rename -uid "DC692865-4C15-2AB5-6FC0-8C861F525A68";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_23_MKR" -p "markerGroup1";
	rename -uid "C2FF84A1-4D1B-F780-6C44-A58EE159060A";
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
	setAttr ".t" -type "double3" -0.0250340357805071 -0.13554828098712224 -1 ;
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
	setAttr -l on ".markerName" -type "string" "23";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_23_MKRShape" -p "marker_23_MKR";
	rename -uid "7B73FA9F-48A9-F76E-7D91-31A107F2160B";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker_24_MKR" -p "markerGroup1";
	rename -uid "12FEC430-4E63-6372-036C-F8ADCA6ECC28";
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
	setAttr ".t" -type "double3" 0.10574850089514809 -0.044228330059797316 -1 ;
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
	setAttr -l on ".markerName" -type "string" "24";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "marker_24_MKRShape" -p "marker_24_MKR";
	rename -uid "D15016E5-464A-C7C5-2F3F-5B9B3E0FCB9B";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "robotArm_rig:rig_GRP";
	rename -uid "697F7E75-469F-A536-0285-4E9F59A9E8D3";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode transform -n "robotArm_rig:root_CTRL" -p "robotArm_rig:rig_GRP";
	rename -uid "29B8DF0B-4433-7257-0B9A-B6BBB0D0BB64";
	addAttr -ci true -sn "transparent" -ln "transparent" -dv 1 -min 0 -max 1 -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_stiffness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_max_value" -at "double";
	setAttr ".t" -type "double3" 0.016975161187170684 10.2114900305248 -0.95435595104567028 ;
	setAttr -k on ".transparent" 0;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_transparent_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_smoothness_variance" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_stiffness_variance" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleZ_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_smoothness_variance" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_stiffness_variance" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleY_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_smoothness_variance" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_stiffness_variance" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_scaleX_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_stiffness_variance" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateZ_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_stiffness_variance" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_stiffness_variance" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateX_max_value" 1;
createNode locator -n "robotArm_rig:root_CTRLShape" -p "robotArm_rig:root_CTRL";
	rename -uid "EFB57004-4E90-F20D-BCEA-17830D2168C3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 5 0 5 ;
createNode transform -n "robotArm_rig:first_CTRL" -p "robotArm_rig:root_CTRL";
	rename -uid "32B10D4B-4422-8D84-865F-02A71077CC4D";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_smoothness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_stiffness_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_min_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_max_enable" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_max_value" -at "double";
	setAttr ".t" -type "double3" 0 3.3570001125335693 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_stiffness_variance" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_rotateY_max_value" 1;
createNode locator -n "robotArm_rig:first_CTRLShape" -p "robotArm_rig:first_CTRL";
	rename -uid "544EBC24-4CB8-7E45-2D14-E8A958ACB0E0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 3 0 3 ;
createNode transform -n "robotArm_rig:second_CTRL" -p "robotArm_rig:first_CTRL";
	rename -uid "B8CBEFF4-40FF-9800-E54B-6B8771B0FDBE";
	setAttr ".t" -type "double3" 1.5 2.1349999904632568 -1.7199997901916504 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode locator -n "robotArm_rig:second_CTRLShape" -p "robotArm_rig:second_CTRL";
	rename -uid "9672A575-41C3-22B3-C689-8BA6A989D2C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 3 3 0 ;
createNode transform -n "robotArm_rig:third_CTRL" -p "robotArm_rig:second_CTRL";
	rename -uid "75CC456E-440E-F3C2-EE74-04BD5EA9FDF6";
	setAttr ".t" -type "double3" -0.00056878513432367939 8.2579998970031738 0.064999818801879883 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode locator -n "robotArm_rig:third_CTRLShape" -p "robotArm_rig:third_CTRL";
	rename -uid "9EB6E002-4954-E4B3-B5A6-A6A3320D19DB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".los" -type "double3" 2.5 2.5 0 ;
createNode transform -n "robotArm_rig:fourth_CTRL" -p "robotArm_rig:third_CTRL";
	rename -uid "8033CF86-4592-A259-9BD8-65827A79F3D8";
	setAttr ".t" -type "double3" 0.0027508437633514404 1.3104967359732704 1.6549999713897705 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode locator -n "robotArm_rig:fourth_CTRLShape" -p "robotArm_rig:fourth_CTRL";
	rename -uid "815374AD-4E57-EDE6-7B14-498D119B29DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 2 0 2 ;
createNode transform -n "robotArm_rig:fifth_CTRL" -p "robotArm_rig:fourth_CTRL";
	rename -uid "12B31CBE-4932-6109-D958-8AA91A18176E";
	setAttr ".t" -type "double3" 0 7.939356398182003 -1.7763568394002505e-15 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode locator -n "robotArm_rig:fifth_CTRLShape" -p "robotArm_rig:fifth_CTRL";
	rename -uid "C26B01A8-4621-17B3-5ECF-71B5FBC530A9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 1 0 1 ;
createNode transform -n "robotArm_rig:sixth_CTRL" -p "robotArm_rig:fifth_CTRL";
	rename -uid "347EA763-4707-8574-2E0C-249409826E34";
	setAttr ".t" -type "double3" -0.002182058629027761 1.0301456451416016 -0.00032132340129287229 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode locator -n "robotArm_rig:sixth_CTRLShape" -p "robotArm_rig:sixth_CTRL";
	rename -uid "6A29C0EF-47C6-21C0-6A4C-7A947858AF4D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 22;
	setAttr ".los" -type "double3" 1 0 1 ;
createNode transform -n "bundle_24_BND" -p "robotArm_rig:first_CTRL";
	rename -uid "B0EB75E8-4F07-779A-F60F-B1BC6FAB8584";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" -at "double";
	setAttr ".t" -type "double3" 3.175481727213552 2.0729480172551984 -1.8531886223766298 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" 1;
createNode mmBundleShape -n "bundle_24_BNDShape" -p "bundle_24_BND";
	rename -uid "CCC1D53F-4F9A-719F-7741-A48997EE94BC";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "bundle_24_BNDLocatorShape" -p "bundle_24_BND";
	rename -uid "7F5E276E-4863-43CD-CF28-E8BED45BDD83";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_23_BND" -p "robotArm_rig:first_CTRL";
	rename -uid "B261F125-4F80-F8E4-29F1-2F9CD91056DD";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" -at "double";
	setAttr ".t" -type "double3" 0.49083708531339887 0.22423409090215607 1.5610351238353535 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" 1;
createNode mmBundleShape -n "bundle_23_BNDShape" -p "bundle_23_BND";
	rename -uid "161692F4-46B4-B1AC-23CA-FBB5DEFB7E13";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "bundle_23_BNDLocatorShape" -p "bundle_23_BND";
	rename -uid "1B80BDD1-4D72-230B-D4C6-67AF0F5F6EE4";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_19_BND" -p "robotArm_rig:first_CTRL";
	rename -uid "F249AD7C-4530-F44B-0DD4-E0B82DCFC962";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" -at "double";
	setAttr ".t" -type "double3" -1.6576690230973716 0.92232692694895491 1.5872192683009467 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" 1;
createNode mmBundleShape -n "bundle_19_BNDShape" -p "bundle_19_BND";
	rename -uid "A5E634E0-45D3-B018-08EA-A4B7F507D819";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "bundle_19_BNDLocatorShape" -p "bundle_19_BND";
	rename -uid "A3309325-4863-9A81-E874-C09FA1314590";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_06_BND" -p "robotArm_rig:first_CTRL";
	rename -uid "2857750E-4B6B-5C2B-2282-52840ADA71E3";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" -at "double";
	setAttr ".t" -type "double3" 0.88754666999999998 2.2665782399999999 1.906494047916818 ;
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
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" 1;
createNode mmBundleShape -n "bundle_06_BNDShape" -p "bundle_06_BND";
	rename -uid "A6B41228-409D-313F-954F-99886C87D032";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "bundle_06_BNDLocatorShape" -p "bundle_06_BND";
	rename -uid "CA318C35-43D5-3974-E0DC-11A340DD1347";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_04_BND" -p "robotArm_rig:first_CTRL";
	rename -uid "32A4B048-4B18-4CE8-A50E-F5AA316FCB6B";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" -at "double";
	setAttr ".t" -type "double3" 3.1228605834611542 2.4192513982125075 -1.5545233170253097 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" 1;
createNode mmBundleShape -n "bundle_04_BNDShape" -p "bundle_04_BND";
	rename -uid "FC36E1EF-4F6D-2F9C-E5F8-A080C7BA9967";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "bundle_04_BNDLocatorShape" -p "bundle_04_BND";
	rename -uid "E8440B97-4255-ADB9-4E8A-2DB26340DD66";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle_18_BND" -p "robotArm_rig:first_CTRL";
	rename -uid "ED853A04-47E6-4409-9F2D-6E9AC100AF19";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_enable" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" 
		-ln "aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" -at "double";
	setAttr ".t" -type "double3" -1.6714325225216704 0.91620815253489241 -1.3230895329235135 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateZ_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateY_max_value" 1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_smoothness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_stiffness_variance" 
		1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_min_value" -1;
	setAttr ".aux_FFDAB67C_4573_A506_E162_65A099236D5B_translateX_max_value" 1;
createNode mmBundleShape -n "bundle_18_BNDShape" -p "bundle_18_BND";
	rename -uid "CF0EFAEA-40F1-B189-73FB-EB84B589591C";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "bundle_18_BNDLocatorShape" -p "bundle_18_BND";
	rename -uid "8286D608-48B4-B831-94E9-C59B3A20C07F";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BBA03161-4775-AAF8-8060-AEA7D1E8C47B";
	setAttr -s 26 ".lnk";
	setAttr -s 26 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D02608F5-4A45-9C22-A512-729EDCEC3176";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "00D082AA-4FBC-E976-E3FC-228E0EA47BD0";
createNode displayLayerManager -n "layerManager";
	rename -uid "816303A9-4E98-94B0-AD0C-529251017977";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
	rename -uid "AD953B50-4EF8-4506-FAFD-3BAB41461ED1";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "021E10CF-4B22-4263-C8EB-059BE0CEECBD";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8B0AAC2A-4448-A010-4904-FCA2B81F917F";
	setAttr ".g" yes;
createNode script -n "mmSolver_data_node";
	rename -uid "B57BC7F7-4CAD-6379-0F61-E3820B68F1E0";
	addAttr -ci true -sn "mmSolver_data" -ln "mmSolver_data" -dt "string";
	setAttr -l on ".mmSolver_data" -type "string" "{\"display_attribute_smoothness\": true, \"display_attribute_stiffness\": true, \"display_object_maximum_deviation\": false, \"display_object_frame_deviation\": true, \"display_attribute_state\": true, \"display_object_average_deviation\": true, \"active_collection_uid\": \"FFDAB67C-4573-A506-E162-65A099236D5B\", \"display_object_weight\": true, \"display_attribute_min_max\": true}";
createNode useBackground -n "useBackground1";
	rename -uid "4E8E98A4-44B3-0E8A-5D3B-509B32D4D74B";
createNode shadingEngine -n "useBackground1SG";
	rename -uid "C8D18716-408F-7ED9-6AAE-BD9CE558701B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "0CDAE435-4CE2-B81E-7CB7-07B29D1C91F8";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9674E070-40AE-0E61-401A-218517D83E9A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 0\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 0\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n"
		+ "            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlaneDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlaneDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlaneDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|camera_GRP|trackCamera\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1262\n            -height 854\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlaneDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"{}\" \n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                -pluginObjects \"mmLineDisplayFilter\" 1 \n                -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n                -pluginObjects \"mmBundleDisplayFilter\" 1 \n"
		+ "                -pluginObjects \"mmMarkerDisplayFilter\" 1 \n                -pluginObjects \"mmImagePlaneDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera_GRP|trackCamera\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1262\\n    -height 854\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmLineDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmSkyDomeDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmBundleDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmMarkerDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmImagePlaneDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera_GRP|trackCamera\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1262\\n    -height 854\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmLineDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmSkyDomeDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmBundleDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmMarkerDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmImagePlaneDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "ADFFDE88-4EBD-0B1F-41D9-5BBA5769CC94";
	setAttr ".b" -type "string" "playbackOptions -min 1001 -max 1387 -ast 1001 -aet 1387 ";
	setAttr ".st" 6;
createNode animLayer -n "BaseAnimation";
	rename -uid "48D2D1F1-4E99-C5B3-0719-5E8426E8D1F0";
	setAttr ".ovrd" yes;
createNode animCurveTL -n "trackCamera_translateX";
	rename -uid "DC1254F3-476B-E32E-A173-8AA38A5B5E67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 387 ".ktv";
	setAttr ".ktv[0:249]"  1001 4.4234227455139941 1002 4.4247491439289011 1003 4.4260890409568523
		 1004 4.4275410670283266 1005 4.4289455528050388 1006 4.4304880164371481 1007 4.4317750355821426
		 1008 4.4329547306848456 1009 4.4337940613817466 1010 4.434811806560667 1011 4.4355360211684927
		 1012 4.4362878799859811 1013 4.4369892746241124 1014 4.4374845049519394 1015 4.4378202906816284
		 1016 4.4381375231622826 1017 4.4383633769435411 1018 4.4386927270476848 1019 4.439013434958988
		 1020 4.4391527591827282 1021 4.439245489217833 1022 4.439476429742804 1023 4.4396361298304354
		 1024 4.4399086614244059 1025 4.4401799049379349 1026 4.4406048552362813 1027 4.4410179240990573
		 1028 4.4415390067604203 1029 4.4422280036602784 1030 4.4427983627332504 1031 4.4434553256531037
		 1032 4.4440482628601004 1033 4.4447918554775487 1034 4.445283101598668 1035 4.4460055960649933
		 1036 4.4466824790134529 1037 4.4475514634686251 1038 4.4485463312340618 1039 4.4501342641348156
		 1040 4.4519137504658879 1041 4.4540297399938442 1042 4.4562790322059707 1043 4.458654937456755
		 1044 4.4614707658581212 1045 4.4639011773727892 1046 4.4661177283928257 1047 4.4684761346146127
		 1048 4.4703257911703949 1049 4.4721135747705034 1050 4.4737485090715312 1051 4.4753753758096311
		 1052 4.4768340981391681 1053 4.478039900760689 1054 4.4792590823194001 1055 4.4805133413667457
		 1056 4.4820928655608769 1057 4.4836535090000416 1058 4.4850463019936022 1059 4.487094831030662
		 1060 4.4896982325962496 1061 4.4931211105428819 1062 4.497469409594669 1063 4.5023493152116387
		 1064 4.5068841065874112 1065 4.5103719334883392 1066 4.513341357972366 1067 4.5158764903433655
		 1068 4.5182090148698633 1069 4.5204097710481319 1070 4.5227601441007161 1071 4.524822370135869
		 1072 4.5266567948801422 1073 4.5281207080461945 1074 4.529472038901365 1075 4.5307807330185828
		 1076 4.5320886376101397 1077 4.5332546796643403 1078 4.5345794582443348 1079 4.5360991844364298
		 1080 4.5384887190298162 1081 4.5415602234737662 1082 4.5457954150751947 1083 4.551502917138337
		 1084 4.5569493527168969 1085 4.5626352578265612 1086 4.5691552244521434 1087 4.5768617914606038
		 1088 4.5860312013096056 1089 4.5964144426213602 1090 4.6083131278359124 1091 4.620695244583902
		 1092 4.6329254876815309 1093 4.6454460607404613 1094 4.6589698542926099 1095 4.6734823499772116
		 1096 4.6881282529276822 1097 4.7040937665611322 1098 4.7208966799906396 1099 4.738339215179888
		 1100 4.7558567095575448 1101 4.7745023250502268 1102 4.793602083421872 1103 4.8126338040153378
		 1104 4.8299405249861396 1105 4.845474493546269 1106 4.8595765311775319 1107 4.8718666941502624
		 1108 4.8823709512161102 1109 4.8911053017008319 1110 4.8986447330809968 1111 4.9041502866344082
		 1112 4.9079526270942342 1113 4.9099082513189058 1114 4.9107340859017565 1115 4.9111047784986024
		 1116 4.9108455132325162 1117 4.9107508097746555 1118 4.9103323229785047 1119 4.9102378798678297
		 1120 4.9097340181132214 1121 4.9091186862653187 1122 4.9077311093048603 1123 4.9048385270769153
		 1124 4.8979936993878965 1125 4.8864854427205495 1126 4.8723807922740479 1127 4.8552250431050439
		 1128 4.836486693416485 1129 4.8179855450334514 1130 4.7995000370538881 1131 4.7809706997231078
		 1132 4.7628171789136324 1133 4.7443237840173547 1134 4.725920592383857 1135 4.7071106448597888
		 1136 4.688081028986943 1137 4.6698492188737859 1138 4.652030601023144 1139 4.6347857480255552
		 1140 4.6184754379511732 1141 4.60276623067762 1142 4.5875388333584084 1143 4.5726820756262603
		 1144 4.558762879372777 1145 4.5459231678657179 1146 4.5345627980309642 1147 4.5240635269439435
		 1148 4.5131798285685649 1149 4.5025626807625523 1150 4.4927528333245936 1151 4.483363848757155
		 1152 4.4742459344942258 1153 4.4654586595950576 1154 4.457175153675391 1155 4.4494205843004515
		 1156 4.4422776327422993 1157 4.4357096299827727 1158 4.4292838503944569 1159 4.4231154090948008
		 1160 4.4172287051238097 1161 4.4114464998854253 1162 4.4063781777548376 1163 4.4017275142689067
		 1164 4.3972248018040645 1165 4.393108422706459 1166 4.3892351501721425 1167 4.3856358992270357
		 1168 4.3824714396729805 1169 4.3791693821559914 1170 4.3760660078486344 1171 4.3734169604937652
		 1172 4.3710942526612158 1173 4.3690311737386862 1174 4.3666719139547014 1175 4.3642577630364574
		 1176 4.362305515871034 1177 4.3608921935111056 1178 4.3596128140762982 1179 4.3586747373573553
		 1180 4.3580807483946815 1181 4.3574061546684568 1182 4.3574061546684568 1183 4.3569665467952596
		 1184 4.3569665467952596 1185 4.3569665467952596 1186 4.3568089203191684 1187 4.3568480838415962
		 1188 4.3570413419564877 1189 4.3571081088885721 1190 4.3571081088885721 1191 4.3571081088885721
		 1192 4.3579438187321466 1193 4.3585405728489048 1194 4.3591456455014193 1195 4.3598011123263012
		 1196 4.3602874425745215 1197 4.361271003704041 1198 4.3630220890139348 1199 4.3664416369557451
		 1200 4.3725099558537872 1201 4.381167184169235 1202 4.3919926093637649 1203 4.4040165213372182
		 1204 4.4161606166358398 1205 4.4279851676640494 1206 4.4404013051032303 1207 4.4528977324588981
		 1208 4.4647489657951311 1209 4.4770061784146282 1210 4.4899705440092061 1211 4.5041394397842094
		 1212 4.5202287169919169 1213 4.5380824998961895 1214 4.5590404820982249 1215 4.5817012520745442
		 1216 4.6051966095336114 1217 4.6289515397797087 1218 4.6526025128687323 1219 4.6760631025485369
		 1220 4.697897585942699 1221 4.7177828679963252 1222 4.7347717442898922 1223 4.7498141415376436
		 1224 4.7629527544791159 1225 4.7741243681662242 1226 4.7834276149201385 1227 4.7910977577242875
		 1228 4.796899374203246 1229 4.8005613483710459 1230 4.8014695209650693 1231 4.8011236964621542
		 1232 4.799767680364023 1233 4.7973444211702301 1234 4.7950289558848276 1235 4.7934401424106765
		 1236 4.7915170787326122 1237 4.7886419244625538 1238 4.7853103566242474 1239 4.7812647629414471
		 1240 4.7760829130322984 1241 4.7703472232751292 1242 4.7642182016749972 1243 4.7571332592937914
		 1244 4.749265620957722 1245 4.7408172093882692 1246 4.7314136099614261 1247 4.7221638214820914
		 1248 4.713492809247688 1249 4.7052355187122377 1250 4.6976853305705202;
	setAttr ".ktv[250:386]" 1251 4.6908797048203521 1252 4.6844554569822368 1253 4.6787448797616076
		 1254 4.6738714161105435 1255 4.6689880504414916 1256 4.6647628405759258 1257 4.661507907998069
		 1258 4.6586745181128153 1259 4.6561046241065673 1260 4.6539183848182768 1261 4.651677236111599
		 1262 4.6495620795260448 1263 4.6480222298149938 1264 4.6466527270595872 1265 4.6452397145896676
		 1266 4.6440879118740721 1267 4.6427664197375762 1268 4.6418510011779848 1269 4.641136247041648
		 1270 4.6402766254376333 1271 4.6395207089680879 1272 4.6390416583183587 1273 4.638655306316136
		 1274 4.6382508615224918 1275 4.637528938024543 1276 4.6369336376954129 1277 4.6365108051216932
		 1278 4.6360991883855114 1279 4.6355650053784689 1280 4.6351507836025956 1281 4.6348376531431619
		 1282 4.6344799724736783 1283 4.6342626541439831 1284 4.6338506744659496 1285 4.6336146885052454
		 1286 4.6334522502746021 1287 4.6331922608386291 1288 4.63310703244926 1289 4.6329449452931772
		 1290 4.6324733799070046 1291 4.6324971989272123 1292 4.6322415768590997 1293 4.6319453723534867
		 1294 4.6316435354976022 1295 4.631587597602195 1296 4.6313152750534554 1297 4.6311906713329245
		 1298 4.6310995514476403 1299 4.6309054807956356 1300 4.6309518318716734 1301 4.6307622206271439
		 1302 4.6309007260859616 1303 4.6307373679806236 1304 4.6304853776460071 1305 4.6305883895421518
		 1306 4.6306525108367982 1307 4.6306165030962543 1308 4.6305549993014452 1309 4.6304065278833892
		 1310 4.6304825980077826 1311 4.6304421237136646 1312 4.6303963077087573 1313 4.6303274178095242
		 1314 4.6302095858629944 1315 4.6300789962910622 1316 4.6306196199178284 1317 4.6311107094023498
		 1318 4.6314104278457604 1319 4.6313504299872852 1320 4.6312762760272896 1321 4.6314879398488689
		 1322 4.6314212982136915 1323 4.6316062747007898 1324 4.6313424716638369 1325 4.6312877472341114
		 1326 4.6311085440793391 1327 4.6310001325343411 1328 4.6309984239263704 1329 4.631041513980918
		 1330 4.6307574802110079 1331 4.6306284711371219 1332 4.6306369446016893 1333 4.6304686747464894
		 1334 4.6304492907882135 1335 4.6303839107379261 1336 4.6309089126653369 1337 4.6306590274121389
		 1338 4.6305691345186597 1339 4.6304863407905907 1340 4.6305302261704959 1341 4.630607623255905
		 1342 4.6307190827861682 1343 4.6308105968207611 1344 4.6306952947847533 1345 4.6304991097514012
		 1346 4.6302230963530517 1347 4.6299657615997951 1348 4.6298826914487048 1349 4.6299037371251828
		 1350 4.6296240117551948 1351 4.6296240117551948 1352 4.6293035468860992 1353 4.6293317150952964
		 1354 4.6293317150952964 1355 4.6293234437119573 1356 4.6293234437119573 1357 4.6293234437119573
		 1358 4.6293234437119573 1359 4.6290623234927395 1360 4.6289661287061614 1361 4.6289661287061614
		 1362 4.628937398094517 1363 4.628937398094517 1364 4.628937398094517 1365 4.628937398094517
		 1366 4.6286504483345023 1367 4.628756242339839 1368 4.628756242339839 1369 4.6285808716879693
		 1370 4.6283804246408291 1371 4.6283804246408291 1372 4.6283804246408291 1373 4.62805831327183
		 1374 4.62805831327183 1375 4.6280211785116609 1376 4.6280260705967455 1377 4.6277612639487806
		 1378 4.6277612639487806 1379 4.6277612639487806 1380 4.6273741906050905 1381 4.6273741906050905
		 1382 4.6273741906050905 1383 4.6273741906050905 1384 4.6270547247861389 1385 4.6268468020048648
		 1386 4.6268468020048648 1387 4.6268468020048648;
createNode animCurveTL -n "trackCamera_translateY";
	rename -uid "49ED0ABE-488F-DE21-0710-06991A969333";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 387 ".ktv";
	setAttr ".ktv[0:249]"  1001 17.259265074986079 1002 17.259422938576535 1003 17.259418128179266
		 1004 17.259379604945515 1005 17.25935013100549 1006 17.259360478285224 1007 17.259422078685766
		 1008 17.259442815208121 1009 17.259478924127063 1010 17.259328714561594 1011 17.259299911371464
		 1012 17.259336847411873 1013 17.259313046869099 1014 17.259303578812663 1015 17.259222323085805
		 1016 17.259251275342912 1017 17.259287739066892 1018 17.259220730860704 1019 17.259216724695133
		 1020 17.259301887210299 1021 17.259330230001638 1022 17.259321501632549 1023 17.259357652778565
		 1024 17.259334785186876 1025 17.25934099403975 1026 17.259206014904724 1027 17.259225494010973
		 1028 17.259255102776436 1029 17.259253210751091 1030 17.259313200947851 1031 17.259408500240813
		 1032 17.259499041008752 1033 17.259484968280049 1034 17.259665990043231 1035 17.259863445357023
		 1036 17.260076615193807 1037 17.260422881736471 1038 17.261227404737493 1039 17.262573593427359
		 1040 17.264539076541794 1041 17.266913303826492 1042 17.269605090000365 1043 17.272777350653801
		 1044 17.276149539549138 1045 17.279793507780621 1046 17.283549315121185 1047 17.287308308417305
		 1048 17.291280241880422 1049 17.295051307095871 1050 17.298663822406517 1051 17.301879041817156
		 1052 17.304476288171792 1053 17.306335320833817 1054 17.307401691948417 1055 17.307937017321873
		 1056 17.308280590451965 1057 17.308440622418676 1058 17.308579044190346 1059 17.308685952174148
		 1060 17.308799742847182 1061 17.308788764613904 1062 17.308813869700185 1063 17.308869184111316
		 1064 17.308995232265008 1065 17.309128704063522 1066 17.309256435259346 1067 17.309586899022889
		 1068 17.310018141913943 1069 17.310500810416421 1070 17.310937243285796 1071 17.31172802967815
		 1072 17.312874025779148 1073 17.31398980199808 1074 17.315262864717276 1075 17.3164782600394
		 1076 17.31790351471712 1077 17.320014348709247 1078 17.322363717671109 1079 17.324880102213172
		 1080 17.327642064513523 1081 17.330488530939675 1082 17.333000228526991 1083 17.335110241112805
		 1084 17.337123415296002 1085 17.33879466352208 1086 17.340369164372746 1087 17.342058010323022
		 1088 17.343342665474708 1089 17.343724991376561 1090 17.343588294089439 1091 17.343562657308173
		 1092 17.343494839041057 1093 17.343579258878258 1094 17.343521539007234 1095 17.343437034841674
		 1096 17.343364932373433 1097 17.343512211246001 1098 17.343360132601234 1099 17.343173411090323
		 1100 17.342866865785552 1101 17.342650712098884 1102 17.342317056156386 1103 17.34171462206471
		 1104 17.340942762712388 1105 17.339714831081377 1106 17.338059060202813 1107 17.336099726535092
		 1108 17.333975837759699 1109 17.332191972651348 1110 17.331416888100367 1111 17.331599021978587
		 1112 17.331986771295572 1113 17.332083866653463 1114 17.33231714911506 1115 17.332859972552718
		 1116 17.33369359608421 1117 17.334520804323329 1118 17.335436302096717 1119 17.336448001361454
		 1120 17.33751514048431 1121 17.33853113541716 1122 17.339377579853949 1123 17.340090374243768
		 1124 17.339927112637074 1125 17.339010519850056 1126 17.337999356746728 1127 17.33615845494279
		 1128 17.333391691044103 1129 17.330136332738448 1130 17.326373729795272 1131 17.322425462924528
		 1132 17.318571986111525 1133 17.314910597260013 1134 17.311669217944168 1135 17.309331310074395
		 1136 17.307294166988605 1137 17.305651948187023 1138 17.304123636923947 1139 17.30307145304862
		 1140 17.302502251575593 1141 17.302059013002886 1142 17.301853395559057 1143 17.301972359822098
		 1144 17.302225211099643 1145 17.302595147621609 1146 17.302737792921622 1147 17.303102414892049
		 1148 17.304061014469433 1149 17.304942053654493 1150 17.306076167908277 1151 17.306905305558402
		 1152 17.307736702333731 1153 17.308663791961347 1154 17.309808541694057 1155 17.311458229713125
		 1156 17.313356247884943 1157 17.315637059101697 1158 17.317972764167447 1159 17.320328795209605
		 1160 17.322522651069704 1161 17.324741958600651 1162 17.326606488073523 1163 17.32798833619664
		 1164 17.329060974726339 1165 17.330322011653671 1166 17.332134108448518 1167 17.334283798650919
		 1168 17.336591360460297 1169 17.339093514024221 1170 17.341695017179248 1171 17.344599387821724
		 1172 17.34743838483546 1173 17.350234512532261 1174 17.352742426263884 1175 17.35497367030753
		 1176 17.356893530736574 1177 17.358428289701884 1178 17.359664888670892 1179 17.360385764315875
		 1180 17.360624397906083 1181 17.36065132837054 1182 17.36065132837054 1183 17.360636517767972
		 1184 17.360636517767972 1185 17.360636517767972 1186 17.360401096398533 1187 17.360347770886591
		 1188 17.360464786362634 1189 17.360360947821754 1190 17.360360947821754 1191 17.360360947821754
		 1192 17.360445624994519 1193 17.360459397954926 1194 17.360569686522012 1195 17.360477823009592
		 1196 17.360570119799199 1197 17.360656113772208 1198 17.360840681121417 1199 17.361500609964011
		 1200 17.362817536854966 1201 17.364795885655756 1202 17.36739407357992 1203 17.370533651441878
		 1204 17.373398477069532 1205 17.376362476468888 1206 17.379363601911511 1207 17.382612176365367
		 1208 17.385748844424235 1209 17.388511119467225 1210 17.39099154487203 1211 17.393165516692797
		 1212 17.395110014503402 1213 17.397039309974478 1214 17.398896644628493 1215 17.400759245052445
		 1216 17.402250992955906 1217 17.403608472773318 1218 17.404771495573467 1219 17.405812308484077
		 1220 17.406167108197618 1221 17.406121512304804 1222 17.405974585769375 1223 17.405769425665621
		 1224 17.405614175262219 1225 17.405307707384203 1226 17.404883416280672 1227 17.404331855906001
		 1228 17.403753922421085 1229 17.403159225637392 1230 17.402236266079527 1231 17.401105473345307
		 1232 17.399793270168068 1233 17.397040612573576 1234 17.393789594570503 1235 17.390756213256179
		 1236 17.388363796709115 1237 17.386578708543098 1238 17.385621947401944 1239 17.385102340229075
		 1240 17.385126105909002 1241 17.385203967193398 1242 17.385280195561098 1243 17.385292127263419
		 1244 17.385386379665945 1245 17.385375648191147 1246 17.385236081919178 1247 17.385130308100308
		 1248 17.384926220682502 1249 17.384746666600854 1250 17.384684511918199;
	setAttr ".ktv[250:386]" 1251 17.38457148876093 1252 17.384366896161232 1253 17.384182192278274
		 1254 17.383987480416238 1255 17.383792233233617 1256 17.383633355005831 1257 17.383496537071391
		 1258 17.383222099638616 1259 17.382994129934403 1260 17.382659485893797 1261 17.382160811779535
		 1262 17.381466535259019 1263 17.380992387166597 1264 17.380395832009395 1265 17.37977609460949
		 1266 17.378928830898278 1267 17.377769586127823 1268 17.37638104132629 1269 17.375040525493418
		 1270 17.373540358117257 1271 17.371861600713519 1272 17.370110584112652 1273 17.368406696737363
		 1274 17.366739076815715 1275 17.364873893180476 1276 17.362857561684951 1277 17.360781413106452
		 1278 17.358573396692947 1279 17.35645397069532 1280 17.354459645495059 1281 17.352657600016137
		 1282 17.350978831652924 1283 17.349340148578637 1284 17.347762776353871 1285 17.346257106899291
		 1286 17.344696309804014 1287 17.34320541988788 1288 17.341895888876671 1289 17.340671082432014
		 1290 17.339615004988872 1291 17.338366805333418 1292 17.337445697905078 1293 17.336518609359
		 1294 17.335655970849889 1295 17.334713035472355 1296 17.333813026250361 1297 17.332953675680464
		 1298 17.332034522774709 1299 17.331115539862221 1300 17.329971375807421 1301 17.328902220687411
		 1302 17.327841160720759 1303 17.326847387361099 1304 17.325768428868738 1305 17.324432905447814
		 1306 17.323330993087811 1307 17.322295873715866 1308 17.321304666128633 1309 17.320201139431891
		 1310 17.31901879686076 1311 17.317993556984828 1312 17.317173472754551 1313 17.316507810028163
		 1314 17.316518529489983 1315 17.31705968829429 1316 17.317276833287629 1317 17.317461783986463
		 1318 17.318139142245371 1319 17.318855376461684 1320 17.319804071739821 1321 17.320984357206108
		 1322 17.322372069853095 1323 17.323682649945862 1324 17.325054888193218 1325 17.326637446853923
		 1326 17.328704069025864 1327 17.330737003111388 1328 17.332564383014375 1329 17.33403184195528
		 1330 17.335682262258114 1331 17.337052197316208 1332 17.338330940712517 1333 17.339966689370925
		 1334 17.342140069987284 1335 17.344628582016032 1336 17.347373125070501 1337 17.349939504415907
		 1338 17.352336192058466 1339 17.354563620336119 1340 17.356684865500483 1341 17.358431851822637
		 1342 17.359789029530681 1343 17.360585609752505 1344 17.361088850818447 1345 17.361354975725387
		 1346 17.361252347835535 1347 17.360981110084154 1348 17.360967178211173 1349 17.360998597622718
		 1350 17.361006528176731 1351 17.361006528176731 1352 17.360989740350703 1353 17.36102108484101
		 1354 17.36102108484101 1355 17.361046343356431 1356 17.361046343356431 1357 17.361046343356431
		 1358 17.361046343356431 1359 17.361012440648928 1360 17.361021440745432 1361 17.361021440745432
		 1362 17.361113801960848 1363 17.361113801960848 1364 17.361113801960848 1365 17.361113801960848
		 1366 17.361133022233876 1367 17.361177307481324 1368 17.361177307481324 1369 17.361278216912247
		 1370 17.361393369819027 1371 17.361393369819027 1372 17.361393369819027 1373 17.361183083752316
		 1374 17.361183083752316 1375 17.361207553615859 1376 17.361218563595891 1377 17.361183215516874
		 1378 17.361183215516874 1379 17.361183215516874 1380 17.361072041687951 1381 17.361072041687951
		 1382 17.361072041687951 1383 17.361072041687951 1384 17.361022300722581 1385 17.361018372691664
		 1386 17.361018372691664 1387 17.361018372691664;
createNode animCurveTL -n "trackCamera_translateZ";
	rename -uid "5082B2B7-4D3A-E90C-FAD4-45A2A57FA037";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 387 ".ktv";
	setAttr ".ktv[0:249]"  1001 25.608037399978191 1002 25.607671619657989 1003 25.607314572675264
		 1004 25.606930876041087 1005 25.606560037720321 1006 25.606150690956103 1007 25.605806139374771
		 1008 25.605493477996792 1009 25.605269866275606 1010 25.60501291433398 1011 25.604824785648166
		 1012 25.604624956325804 1013 25.60444289829573 1014 25.604313956883473 1015 25.604231911919594
		 1016 25.60414692339662 1017 25.604085314598976 1018 25.604004061006769 1019 25.603920627120409
		 1020 25.603878213664895 1021 25.603852005411998 1022 25.603792390041772 1023 25.60374817884383
		 1024 25.603678767728386 1025 25.603607656532937 1026 25.60350660064924 1027 25.603397727478189
		 1028 25.603260129951408 1029 25.603081287635426 1030 25.602929015540344 1031 25.602751933523749
		 1032 25.60259194804603 1033 25.602400585191802 1034 25.60226078685767 1035 25.602060262069383
		 1036 25.601870618276941 1037 25.601622338830239 1038 25.601309835015737 1039 25.600808130576929
		 1040 25.600216517367183 1041 25.599514300641886 1042 25.598761191996111 1043 25.597949596466417
		 1044 25.597020955884872 1045 25.596179643441651 1046 25.595392642196938 1047 25.594577945641152
		 1048 25.593884776094335 1049 25.593226015119587 1050 25.592620661521337 1051 25.592045051272727
		 1052 25.591548508942168 1053 25.591155793484866 1054 25.590802760562863 1055 25.590469623016393
		 1056 25.590068185862968 1057 25.589681833216616 1058 25.589338126085764 1059 25.588839038709462
		 1060 25.588208424635084 1061 25.587391826613839 1062 25.586359464457733 1063 25.585208838783235
		 1064 25.584144617273523 1065 25.583330028233618 1066 25.582639765237339 1067 25.582042090507802
		 1068 25.581488128931532 1069 25.580963772268131 1070 25.580410051801795 1071 25.579905771496122
		 1072 25.57943696363359 1073 25.579054350910194 1074 25.578690590437592 1075 25.578340482945585
		 1076 25.577981880857038 1077 25.57762414755301 1078 25.577222767187141 1079 25.576773885967057
		 1080 25.576126899372351 1081 25.575332962882655 1082 25.574308106036106 1083 25.572994088184785
		 1084 25.57175429778788 1085 25.570491494338235 1086 25.569074226354985 1087 25.567429158164739
		 1088 25.565531723955559 1089 25.563464681177699 1090 25.561170903947666 1091 25.558840181264689
		 1092 25.556600116621421 1093 25.554363282165134 1094 25.55202315204626 1095 25.549593888932691
		 1096 25.547226707308834 1097 25.544734774314541 1098 25.542232340915056 1099 25.539753459920313
		 1100 25.537388713561839 1101 25.534999770179301 1102 25.532697745027868 1103 25.530555518024425
		 1104 25.528738299767816 1105 25.527226753179498 1106 25.52595688140438 1107 25.524934064452211
		 1108 25.524125322915552 1109 25.52348728791663 1110 25.522929479702338 1111 25.522505201113976
		 1112 25.522208240554182 1113 25.522061893405542 1114 25.521992662892423 1115 25.521943810751104
		 1116 25.52192868278771 1117 25.521902234793121 1118 25.52189591907721 1119 25.521862761371747
		 1120 25.521857484474236 1121 25.52186281446717 1122 25.521931609927037 1123 25.522117967927894
		 1124 25.52264220275126 1125 25.523588896147967 1126 25.524814989727879 1127 25.526434564859898
		 1128 25.528365889401638 1129 25.530431308217949 1130 25.532654230899077 1131 25.535029744783682
		 1132 25.537492621520862 1133 25.540127930934677 1134 25.542869452118421 1135 25.545764946621407
		 1136 25.548822285156639 1137 25.551871934782902 1138 25.554977544128072 1139 25.558082411976898
		 1140 25.561106607793377 1141 25.564115141221944 1142 25.567114650948611 1143 25.570114632463259
		 1144 25.572999161063382 1145 25.575722771228925 1146 25.578198705981436 1147 25.580521656792627
		 1148 25.582946764405591 1149 25.585362705550615 1150 25.587619868753929 1151 25.589831302445901
		 1152 25.592012843634404 1153 25.594141826769498 1154 25.596164755803226 1155 25.598055796853323
		 1156 25.599802074016367 1157 25.601401713304984 1158 25.602981189236694 1159 25.604510379777999
		 1160 25.605989197904126 1161 25.607454904702696 1162 25.608756451195777 1163 25.60997597795258
		 1164 25.611177727964243 1165 25.612272185438005 1166 25.613282516241863 1167 25.61420880769694
		 1168 25.61501221144513 1169 25.615853572177247 1170 25.616641094187763 1171 25.617292891193415
		 1172 25.617858909233544 1173 25.618356534499743 1174 25.618955211739625 1175 25.619584044572168
		 1176 25.620092038605833 1177 25.620457067393595 1178 25.620793867870738 1179 25.621047467898098
		 1180 25.621215147442239 1181 25.621413408049975 1182 25.621413408049975 1183 25.621543724517775
		 1184 25.621543724517775 1185 25.621543724517775 1186 25.621597674846146 1187 25.621587772741357
		 1188 25.621526998643859 1189 25.621510528162947 1190 25.621510528162947 1191 25.621510528162947
		 1192 25.621261139731299 1193 25.621084708360769 1194 25.620902960781951 1195 25.620712868670115
		 1196 25.620566927314474 1197 25.62027523951177 1198 25.619755995827536 1199 25.618736607507046
		 1200 25.616936062885891 1201 25.614393146802783 1202 25.611257432413364 1203 25.60782975976754
		 1204 25.604442482013603 1205 25.601203446104773 1206 25.597872529455838 1207 25.594584309074023
		 1208 25.591529228403282 1209 25.588445029291158 1210 25.585262691550117 1211 25.581876951336639
		 1212 25.578144268732803 1213 25.574132498381637 1214 25.569598106142461 1215 25.5649004537519
		 1216 25.560257302270927 1217 25.555792082568733 1218 25.551574466833976 1219 25.547613332821882
		 1220 25.544131338926952 1221 25.541129021895756 1222 25.538688884887652 1223 25.536624004211795
		 1224 25.534892766202585 1225 25.533476134465019 1226 25.532335886266431 1227 25.531423940734985
		 1228 25.53075164353989 1229 25.530337271328747 1230 25.530246211816461 1231 25.530302042790414
		 1232 25.530477100795785 1233 25.530799936459161 1234 25.531124022746262 1235 25.531364768351448
		 1236 25.531636944237405 1237 25.532013862089531 1238 25.532433078591644 1239 25.532935021970303
		 1240 25.533573021687545 1241 25.53429037321774 1242 25.535071280980222 1243 25.535993884120511
		 1244 25.537039776955041 1245 25.538192229511605 1246 25.539510598413774 1247 25.540840692466553
		 1248 25.542120368339535 1249 25.543366270166214 1250 25.544526924866059;
	setAttr ".ktv[250:386]" 1251 25.545593652047707 1252 25.546619512968281 1253 25.547545229154764
		 1254 25.548346287480452 1255 25.549158461194299 1256 25.549868626266768 1257 25.550420873795424
		 1258 25.550908402011821 1259 25.55135293064502 1260 25.551736261385045 1261 25.552134677084581
		 1262 25.55251761298738 1263 25.552796931944666 1264 25.553050196905456 1265 25.553312538326825
		 1266 25.55353504731643 1267 25.553795783575541 1268 25.553991297687745 1269 25.55415106836017
		 1270 25.554341567799469 1271 25.554519410914025 1272 25.554651105999636 1273 25.554766238993661
		 1274 25.554884776153813 1275 25.555066958137019 1276 25.555232471400295 1277 25.555370575481142
		 1278 25.555512532614216 1279 25.555675648642726 1280 25.555814920693948 1281 25.555931140238272
		 1282 25.556052473794711 1283 25.556148239732032 1284 25.556278029289604 1285 25.556374475968362
		 1286 25.556460557018131 1287 25.556562628720577 1288 25.556627131885477 1289 25.556702969011031
		 1290 25.556828905191765 1291 25.556873113926336 1292 25.556955615138779 1293 25.557046070184452
		 1294 25.557135328180237 1295 25.5571835320298 1296 25.557269609875767 1297 25.557327522143936
		 1298 25.557382131192437 1299 25.557455775208208 1300 25.557495593003893 1301 25.557575600207336
		 1302 25.55759605571059 1303 25.557668892469284 1304 25.557761997939373 1305 25.557802397927972
		 1306 25.557840052284675 1307 25.557893360116587 1308 25.557949714201161 1309 25.558027463666207
		 1310 25.558068504402264 1311 25.558123901042446 1312 25.558170953983385 1313 25.558215110609279
		 1314 25.558236052156797 1315 25.558234118183428 1316 25.558125426682924 1317 25.558027393303949
		 1318 25.55794103039775 1319 25.557918371070819 1320 25.557887700850802 1321 25.557794839113313
		 1322 25.557743643612778 1323 25.557650975048386 1324 25.557637715134121 1325 25.557578037049154
		 1326 25.557521144967328 1327 25.557454477594501 1328 25.557378526764197 1329 25.557310396736327
		 1330 25.557295200249918 1331 25.557263998199087 1332 25.557212095064415 1333 25.557179202782958
		 1334 25.557099972081218 1335 25.557019364645058 1336 25.556824685272893 1337 25.556779969738081
		 1338 25.556714450583556 1339 25.5566554254493 1340 25.556578687739492 1341 25.556509302409683
		 1342 25.556446889236401 1343 25.556405850544529 1344 25.556411513276647 1345 25.556439132840975
		 1346 25.556492438715964 1347 25.556547487720511 1348 25.556563035112948 1349 25.556558249983162
		 1350 25.556608957630871 1351 25.556608957630871 1352 25.556667873629245 1353 25.556661787603829
		 1354 25.556661787603829 1355 25.556662529876423 1356 25.556662529876423 1357 25.556662529876423
		 1358 25.556662529876423 1359 25.556711176935135 1360 25.556728453522148 1361 25.556728453522148
		 1362 25.556730897043558 1363 25.556730897043558 1364 25.556730897043558 1365 25.556730897043558
		 1366 25.556782690572685 1367 25.556762036231621 1368 25.556762036231621 1369 25.556791003025186
		 1370 25.556824137269388 1371 25.556824137269388 1372 25.556824137269388 1373 25.556889359176026
		 1374 25.556889359176026 1375 25.556895408113629 1376 25.556894180651515 1377 25.556943679464673
		 1378 25.556943679464673 1379 25.556943679464673 1380 25.5570178869879 1381 25.5570178869879
		 1382 25.5570178869879 1383 25.5570178869879 1384 25.55707790783411 1385 25.557116131878711
		 1386 25.557116131878711 1387 25.557116131878711;
createNode animCurveTA -n "trackCamera_rotateX";
	rename -uid "7D7F3DEE-45C9-C596-8D4A-55BF239B7F2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 387 ".ktv";
	setAttr ".ktv[0:249]"  1001 -3.9368448189480345 1002 -3.9333840095422365
		 1003 -3.9334894666304123 1004 -3.9343340019462421 1005 -3.9349801524141337 1006 -3.9347533113023578
		 1007 -3.9334028607029072 1008 -3.9329482594590162 1009 -3.9321566538603157 1010 -3.9354496605457672
		 1011 -3.936081107156947 1012 -3.935271365772564 1013 -3.9357931401942152 1014 -3.9360007065460603
		 1015 -3.9377820621012956 1016 -3.9371473462289921 1017 -3.9363479583141201 1018 -3.9378169682208877
		 1019 -3.9379047948133983 1020 -3.9360377912196998 1021 -3.9354164378682368 1022 -3.9356077881103557
		 1023 -3.9348152542501706 1024 -3.9353165754956145 1025 -3.935180460132865 1026 -3.9381395840558699
		 1027 -3.9377125463737426 1028 -3.9370634380296652 1029 -3.9371049165908989 1030 -3.9357897623562548
		 1031 -3.9337005374611582 1032 -3.9317156374890989 1033 -3.9320241496804469 1034 -3.9280556728163458
		 1035 -3.9237269504852157 1036 -3.9190537510492098 1037 -3.9114628049056259 1038 -3.8938261055119527
		 1039 -3.8643158727152849 1040 -3.8212317303006129 1041 -3.7691906424529451 1042 -3.7101926918920305
		 1043 -3.6406688639098141 1044 -3.5667692560288118 1045 -3.4869204325430667 1046 -3.4046280169529801
		 1047 -3.3222728347350903 1048 -3.235259842894382 1049 -3.1526541789841613 1050 -3.0735277246100674
		 1051 -3.0031083501297133 1052 -2.9462270722888229 1053 -2.9055149119751564 1054 -2.8821624242369892
		 1055 -2.8704395013793387 1056 -2.8629157642953409 1057 -2.8594113207296927 1058 -2.8563801144334184
		 1059 -2.8540390130905915 1060 -2.8515471979065992 1061 -2.8517876016309116 1062 -2.8512378451010849
		 1063 -2.850026559264339 1064 -2.8472663368049815 1065 -2.8443435574030715 1066 -2.8415464932560353
		 1067 -2.834310012583217 1068 -2.8248667431303742 1069 -2.8142974571263246 1070 -2.8047407034458756
		 1071 -2.7874247207340654 1072 -2.7623311030045548 1073 -2.7378997127114992 1074 -2.7100249354966812
		 1075 -2.6834134333969328 1076 -2.6522077254507015 1077 -2.6059928190791215 1078 -2.55455738705666
		 1079 -2.4994677171322879 1080 -2.4390044229447727 1081 -2.3766940558394385 1082 -2.3217142598756464
		 1083 -2.2755288016650232 1084 -2.2314643908471248 1085 -2.1948850688283477 1086 -2.1604241169170568
		 1087 -2.1234613733611853 1088 -2.0953455007195352 1089 -2.0869780405938609 1090 -2.0899697477599943
		 1091 -2.0905308256758981 1092 -2.0920150742786041 1093 -2.0901674893103257 1094 -2.0914307273092763
		 1095 -2.0932801593508557 1096 -2.0948581734042477 1097 -2.0916348717007582 1098 -2.0949632199059387
		 1099 -2.09904976129951 1100 -2.1057587601617902 1101 -2.1104894806680941 1102 -2.1177918734432555
		 1103 -2.1309768310899777 1104 -2.1478700190172075 1105 -2.1747453524057532 1106 -2.2109854209449562
		 1107 -2.2538707513994076 1108 -2.3003592443812955 1109 -2.3394063383241797 1110 -2.3563725324631841
		 1111 -2.3523856989065157 1112 -2.3438980682971633 1113 -2.3417727095444434 1114 -2.336666310501935
		 1115 -2.3247843357003695 1116 -2.3065371719324634 1117 -2.2884306637061522 1118 -2.2683918793521793
		 1119 -2.2462477207719798 1120 -2.2228904536436911 1121 -2.2006529609235486 1122 -2.1821267419978789
		 1123 -2.1665259129038619 1124 -2.1700991821616697 1125 -2.1901605949878995 1126 -2.2122921745515214
		 1127 -2.2525853026965592 1128 -2.3131455363598574 1129 -2.3844036710825618 1130 -2.4667697374391091
		 1131 -2.5532056078603218 1132 -2.6375719301315761 1133 -2.7177380627511454 1134 -2.7887125223806515
		 1135 -2.8399068839435206 1136 -2.8845170942366307 1137 -2.9204803604179688 1138 -2.953950177746147
		 1139 -2.9769934531009299 1140 -2.9894594086290565 1141 -2.9991667766095764 1142 -3.0036700334888473
		 1143 -3.0010645779830232 1144 -2.995526862010025 1145 -2.9874249032216746 1146 -2.9843008525764994
		 1147 -2.976315368668343 1148 -2.9553216227713563 1149 -2.936026833342908 1150 -2.9111901811974672
		 1151 -2.8930327423708024 1152 -2.8748261225211995 1153 -2.8545242833220734 1154 -2.829456516669556
		 1155 -2.7933325472560542 1156 -2.7517721532802351 1157 -2.7018317576055861 1158 -2.6506915406838472
		 1159 -2.599108427602578 1160 -2.5510778858469512 1161 -2.5024919504248295 1162 -2.461674346185192
		 1163 -2.4314242350169479 1164 -2.4079435155340434 1165 -2.3803391560364857 1166 -2.3406729482554747
		 1167 -2.2936183849535641 1168 -2.2431098919929617 1169 -2.1883440953184858 1170 -2.1314059082761814
		 1171 -2.0678414519642834 1172 -2.0057102107266478 1173 -1.9445194679455482 1174 -1.8896379183316285
		 1175 -1.8408122873005384 1176 -1.7988016403054401 1177 -1.7652185327618766 1178 -1.7381601092735066
		 1179 -1.7223865745642688 1180 -1.7171650436886821 1181 -1.716575780301357 1182 -1.716575780301357
		 1183 -1.7168998499157113 1184 -1.7168998499157113 1185 -1.7168998499157113 1186 -1.7220510935221705
		 1187 -1.7232179084043677 1188 -1.7206574951237608 1189 -1.7229295839788443 1190 -1.7229295839788443
		 1191 -1.7229295839788443 1192 -1.7210767643991294 1193 -1.7207753986890573 1194 -1.718362179765677
		 1195 -1.7203722407264195 1196 -1.7183526992540139 1197 -1.7164710713205968 1198 -1.712432572687592
		 1199 -1.6979928090033272 1200 -1.6691777312511842 1201 -1.6258911732093637 1202 -1.569043851564685
		 1203 -1.5003531888760342 1204 -1.4376757007430039 1205 -1.3728302702176074 1206 -1.3071743995653835
		 1207 -1.2361069985378206 1208 -1.167489522480881 1209 -1.1070636252921973 1210 -1.0528043556407731
		 1211 -1.0052495318059853 1212 -0.96271495420967301 1213 -0.92051344199336316 1214 -0.87988647663689723
		 1215 -0.83914477317489677 1216 -0.80651524182945888 1217 -0.77682283158947285 1218 -0.75138398235105819
		 1219 -0.72861836118744128 1220 -0.72085788066965528 1221 -0.7218551919992251 1222 -0.725068892998878
		 1223 -0.72955633149780286 1224 -0.73295210501544328 1225 -0.73965544785056525 1226 -0.74893594365636063
		 1227 -0.76100022259220124 1228 -0.7736413967235779 1229 -0.78664927482691505 1230 -0.80683736672750705
		 1231 -0.83157157497436085 1232 -0.86027402918858709 1233 -0.92048494904236333 1234 -0.99159819006422611
		 1235 -1.0579521900074811 1236 -1.1102863392422386 1237 -1.1493357717963564 1238 -1.1702654774715611
		 1239 -1.1816322514441153 1240 -1.1811123593952857 1241 -1.1794090861623114 1242 -1.1777415352007083
		 1243 -1.1774805206283656 1244 -1.175418682373732 1245 -1.1756534409308885 1246 -1.1787065530666549
		 1247 -1.1810204333231711 1248 -1.185485001473751 1249 -1.1894128901087697 1250 -1.1907725746289088;
	setAttr ".ktv[250:386]" 1251 -1.1932450503563266 1252 -1.1977206895810462 1253 -1.2017612522849408
		 1254 -1.2060207549583315 1255 -1.2102919749602274 1256 -1.213767594041087 1257 -1.2167606258669248
		 1258 -1.222764234565717 1259 -1.227751322830329 1260 -1.2350720465095735 1261 -1.245981154357422
		 1262 -1.2611693800573678 1263 -1.2715420534079813 1264 -1.2845926170917927 1265 -1.2981503986747502
		 1266 -1.3166858127675605 1267 -1.342046596056377 1268 -1.3724241198364118 1269 -1.4017512684666849
		 1270 -1.4345716312631132 1271 -1.471299709826777 1272 -1.5096093293065544 1273 -1.5468884798535771
		 1274 -1.5833747732207262 1275 -1.6241843764648241 1276 -1.6683019728174013 1277 -1.7137294089213815
		 1278 -1.7620433793049393 1279 -1.8084200666996253 1280 -1.8520604152307125 1281 -1.8914941720305487
		 1282 -1.9282310894320736 1283 -1.9640915749465078 1284 -1.9986110777363675 1285 -2.0315621008178937
		 1286 -2.0657202818048295 1287 -2.098349223814072 1288 -2.1270095881900519 1289 -2.1538161544989958
		 1290 -2.1769302340296703 1291 -2.2042496974722829 1292 -2.2244103837031761 1293 -2.2447022595546828
		 1294 -2.2635837225115507 1295 -2.2842230076691425 1296 -2.303922987348642 1297 -2.3227332586430962
		 1298 -2.3428528168507214 1299 -2.3629689430127314 1300 -2.3880145915641173 1301 -2.4114187138263214
		 1302 -2.4346460288151102 1303 -2.4564007578197788 1304 -2.4800206790011434 1305 -2.5092577523934665
		 1306 -2.5333811402909987 1307 -2.5560426858208984 1308 -2.5777432593238796 1309 -2.601903277987391
		 1310 -2.6277893627784028 1311 -2.6502362919026785 1312 -2.668191770700107 1313 -2.6827664333811687
		 1314 -2.6825317297566471 1315 -2.6706830653063776 1316 -2.6659287108756202 1317 -2.6618792597918195
		 1318 -2.6470487770163742 1319 -2.6313673140342049 1320 -2.610596577040956 1321 -2.5847558827836146
		 1322 -2.5543745339567763 1323 -2.5256825168123065 1324 -2.4956413208843178 1325 -2.4609966183801961
		 1326 -2.4157563564958768 1327 -2.3712550282977576 1328 -2.3312545439687762 1329 -2.2991333837296763
		 1330 -2.2630082515918861 1331 -2.2330231892253218 1332 -2.2050346771890195 1333 -2.1692329745101797
		 1334 -2.1216654060754694 1335 -2.0672025269109335 1336 -2.0071383891168471 1337 -1.9509753496455482
		 1338 -1.8985275638877424 1339 -1.8497851840756472 1340 -1.8033676341165177 1341 -1.7651405882786009
		 1342 -1.7354437643377927 1343 -1.7180137645639213 1344 -1.7070024112244999 1345 -1.7011793917244482
		 1346 -1.7034249675172102 1347 -1.7093598671191319 1348 -1.7096647081717191 1349 -1.7089772251932807
		 1350 -1.7088036980837298 1351 -1.7088036980837298 1352 -1.7091710296811569 1353 -1.7084851862180708
		 1354 -1.7084851862180708 1355 -1.7079325091148692 1356 -1.7079325091148692 1357 -1.7079325091148692
		 1358 -1.7079325091148692 1359 -1.7086743282908439 1360 -1.7084773987353388 1361 -1.7084773987353388
		 1362 -1.7064564601162144 1363 -1.7064564601162144 1364 -1.7064564601162144 1365 -1.7064564601162144
		 1366 -1.7060359051549185 1367 -1.7050669088367882 1368 -1.7050669088367882 1369 -1.7028589323211891
		 1370 -1.7003393006106087 1371 -1.7003393006106087 1372 -1.7003393006106087 1373 -1.7049405194847524
		 1374 -1.7049405194847524 1375 -1.7044050997180344 1376 -1.7041641927861542 1377 -1.7049376363726767
		 1378 -1.7049376363726767 1379 -1.7049376363726767 1380 -1.7073702086366325 1381 -1.7073702086366325
		 1382 -1.7073702086366325 1383 -1.7073702086366325 1384 -1.7084585817250384 1385 -1.7085445302870963
		 1386 -1.7085445302870963 1387 -1.7085445302870963;
createNode animCurveTA -n "trackCamera_rotateY";
	rename -uid "0F601AE6-4CD8-3272-D68D-0EAC85A81CFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 387 ".ktv";
	setAttr ".ktv[0:249]"  1001 14.980110413727585 1002 14.949947577644989 1003 14.919548344675322
		 1004 14.886623349203322 1005 14.854777949166142 1006 14.819792339141781 1007 14.790583886163381
		 1008 14.763828848280085 1009 14.744786699538984 1010 14.721775926698339 1011 14.705372231499604
		 1012 14.688317238183794 1013 14.672431198398399 1014 14.661212407040496 1015 14.653635470674411
		 1016 14.646435708844296 1017 14.641303740427515 1018 14.633867652504161 1019 14.626602790285483
		 1020 14.623412600822297 1021 14.621300497502538 1022 14.616071685445013 1023 14.612439339453481
		 1024 14.606274050384286 1025 14.600126685607677 1026 14.590552940902151 1027 14.581188070309363
		 1028 14.569372978019704 1029 14.553767655899076 1030 14.540826149047724 1031 14.525910357452195
		 1032 14.512447394495835 1033 14.495614690289582 1034 14.484420999747085 1035 14.467986039710949
		 1036 14.45257905508344 1037 14.432773469930964 1038 14.409945081327249 1039 14.373494293658533
		 1040 14.332490000010777 1041 14.283744037245578 1042 14.23189781421174 1043 14.177054398623985
		 1044 14.112244853167651 1045 14.056102948806087 1046 14.004805066134727 1047 13.950353740866591
		 1048 13.907369519422321 1049 13.865889199617786 1050 13.827945906937657 1051 13.790335200065774
		 1052 13.756717870473665 1053 13.729024058014193 1054 13.701253449952151 1055 13.672840605864678
		 1056 13.637153755105832 1057 13.601946931497539 1058 13.570532480608103 1059 13.524361201310441
		 1060 13.465702766067224 1061 13.388644293055451 1062 13.290777458188977 1063 13.180985967286933
		 1064 13.078984573428382 1065 13.000552514712515 1066 12.933794321111094 1067 12.876759317914273
		 1068 12.824263532199675 1069 12.774725967668211 1070 12.721851966711197 1071 12.675372249331074
		 1072 12.633931136470002 1073 12.600820879636579 1074 12.570207800447186 1075 12.540572317457524
		 1076 12.510914725575844 1077 12.484295256824133 1078 12.454078259484275 1079 12.419472153025714
		 1080 12.365341056099682 1081 12.295944079695548 1082 12.20058882587715 1083 12.072404170311223
		 1084 11.950155121576435 1085 11.82268076364883 1086 11.676652194446765 1087 11.504188699498323
		 1088 11.299258556471759 1089 11.067555176710529 1090 10.802350054350761 1091 10.526599935478076
		 1092 10.254479899463028 1093 9.9761198714714414 1094 9.675743844153649 1095 9.3537084077247634
		 1096 9.0290121587788814 1097 8.6753645504085721 1098 8.3035644709849521 1099 7.9179848984810048
		 1100 7.531121829682041 1101 7.1197089014859873 1102 6.6986655553301473 1103 6.2795035709603395
		 1104 5.8986400122497118 1105 5.5570483952796055 1106 5.2471491418343215 1107 4.9772205649854362
		 1108 4.746626145222308 1109 4.5549366108056102 1110 4.3894527476446736 1111 4.2685812712246047
		 1112 4.1850972873751839 1113 4.1421702449287681 1114 4.1240310625464778 1115 4.1158610377491982
		 1116 4.1214976491598314 1117 4.1235236031370812 1118 4.1326498948942056 1119 4.1346593810508727
		 1120 4.1456506599142875 1121 4.1590917714381135 1122 4.1894908546877945 1123 4.2529288819507149
		 1124 4.4031787725597935 1125 4.6559091756673343 1126 4.9657846000857777 1127 5.3429516657997169
		 1128 5.755272145850844 1129 6.1627590886256556 1130 6.5703213759641796 1131 6.9792709645291415
		 1132 7.3803398497613069 1133 7.7893270749170815 1134 8.1967236373371808 1135 8.6134594640752855
		 1136 9.0355169941465672 1137 9.4403227138396382 1138 9.8364278070426963 1139 10.220168863148784
		 1140 10.583465764180735 1141 10.933765893608122 1142 11.2736722404136 1143 11.605620261876345
		 1144 11.916943051360322 1145 12.204401781650535 1146 12.459043965289371 1147 12.69454606762255
		 1148 12.938746956146275 1149 13.177204773588924 1150 13.39764651654672 1151 13.608882076040119
		 1152 13.814187379397833 1153 14.012179896557448 1154 14.19889905132654 1155 14.373671574315884
		 1156 14.534672616575069 1157 14.682669631565885 1158 14.827530199220936 1159 14.966650532092558
		 1160 15.099516280912384 1161 15.230088570668739 1162 15.344628900102345 1163 15.449871009036762
		 1164 15.551883574269034 1165 15.645115400099021 1166 15.732721782896419 1167 15.814050707746018
		 1168 15.885484617303188 1169 15.96003739070988 1170 16.030079795670524 1171 16.08973998550281
		 1172 16.142013156765721 1173 16.188408631516964 1174 16.241641763449124 1175 16.296209484444432
		 1176 16.340331200373583 1177 16.372254814170187 1178 16.401191293732822 1179 16.422448921922637
		 1180 16.435952999088446 1181 16.451337999677556 1182 16.451337999677556 1183 16.461370759966798
		 1184 16.461370759966798 1185 16.461370759966798 1186 16.465012922956419 1187 16.464129716412845
		 1188 16.459697545007021 1189 16.458194374848262 1190 16.458194374848262 1191 16.458194374848262
		 1192 16.439111461677992 1193 16.425495180447683 1194 16.411671437021422 1195 16.396738362943953
		 1196 16.38562834805537 1197 16.363180737857022 1198 16.323216595667599 1199 16.245141486392757
		 1200 16.106644416710537 1201 15.909224301818654 1202 15.662636703067038 1203 15.389091515500397
		 1204 15.113262191169929 1205 14.845042921914066 1206 14.563813113029651 1207 14.281133437578205
		 1208 14.01340477328602 1209 13.73691753147857 1210 13.44490468500055 1211 13.126240166261164
		 1212 12.764951017590931 1213 12.364678400604475 1214 11.895639932817826 1215 11.38942827714552
		 1216 10.865565196096638 1217 10.336867718776148 1218 9.8113860338347578 1219 9.2909696657575793
		 1220 8.8073512176650297 1221 8.3674731992302416 1222 7.9920640765417916 1223 7.6599579088133378
		 1224 7.370094203871929 1225 7.1237816152840887 1226 6.9187694215046891 1227 6.7498187747341944
		 1228 6.622070565906883 1229 6.5414607609871016 1230 6.5214984771918214 1231 6.5291525897932212
		 1232 6.5590565270110348 1233 6.6125224093306798 1234 6.6636511829769836 1235 6.6987825191947055
		 1236 6.7412572693293242 1237 6.8046857626464297 1238 6.878139237790319 1239 6.9673177360277805
		 1240 7.0815305604514771 1241 7.2079805539700326 1242 7.3431412835179879 1243 7.4994381118041353
		 1244 7.6730624553822526 1245 7.8595890593994682 1246 8.067311475144713 1247 8.2717388340725471
		 1248 8.463478471996174 1249 8.6461579643724953 1250 8.8132647299907561;
	setAttr ".ktv[250:386]" 1251 8.9639612307820542 1252 9.1062777101197483 1253 9.2328324391339311
		 1254 9.3408745733632195 1255 9.4491702575106089 1256 9.5428974038541039 1257 9.6151199371349314
		 1258 9.6780140693024936 1259 9.7350680885219241 1260 9.7836239460273848 1261 9.8334199577031871
		 1262 9.8804428675924783 1263 9.9146782516467606 1264 9.9451448516174068 1265 9.9765836086218211
		 1266 10.002243753905992 1267 10.031705496040258 1268 10.052171352062835 1269 10.068178553279504
		 1270 10.087424305103536 1271 10.104388323681858 1272 10.115212266969126 1273 10.123976309374585
		 1274 10.13314344536122 1275 10.14939396841554 1276 10.162853698711723 1277 10.172493682282532
		 1278 10.181907467499556 1279 10.194043334674426 1280 10.203503843656359 1281 10.210698236020516
		 1282 10.218872256506632 1283 10.223924403811786 1284 10.233301331154109 1285 10.238758679070099
		 1286 10.24259194664962 1287 10.248588565279167 1288 10.250675301554052 1289 10.254461580880388
		 1290 10.265108508661342 1291 10.264767950317045 1292 10.270595133607575 1293 10.277327548121873
		 1294 10.284176772287035 1295 10.285569866978051 1296 10.29177131041097 1297 10.294681367576572
		 1298 10.296857441398688 1299 10.301325325446896 1300 10.300482916945036 1301 10.304879872581692
		 1302 10.301976878969626 1303 10.305780486974093 1304 10.311572604164716 1305 10.309512197153881
		 1306 10.308278615315894 1307 10.309263043656127 1308 10.310808621545174 1309 10.314311389895863
		 1310 10.312833698750021 1311 10.313922681250249 1312 10.315094057356481 1313 10.316751149199149
		 1314 10.319371495634073 1315 10.32217690376604 1316 10.310105214385988 1317 10.299142401454976
		 1318 10.292347895569307 1319 10.293551722507743 1320 10.295029116613065 1321 10.290106345480249
		 1322 10.2913416407713 1323 10.286994776635302 1324 10.292625245954719 1325 10.293570529152653
		 1326 10.297207704818346 1327 10.299281731644607 1328 10.299021290205848 1329 10.297826681681395
		 1330 10.303884055464597 1331 10.306540074627033 1332 10.306154355371733 1333 10.309649024023827
		 1334 10.30975607441936 1335 10.310848112921747 1336 10.298781660917234 1337 10.30398704758386
		 1338 10.305666000826344 1339 10.307217436938519 1340 10.305972189234419 1341 10.304034326712058
		 1342 10.301390518854173 1343 10.299259804149749 1344 10.301764208301424 1345 10.306095757716305
		 1346 10.312246375877102 1347 10.318001745432968 1348 10.319850928487334 1349 10.31937912427702
		 1350 10.325599498180395 1351 10.325599498180395 1352 10.332729043345166 1353 10.332098809623632
		 1354 10.332098809623632 1355 10.332279772527727 1356 10.332279772527727 1357 10.332279772527727
		 1358 10.332279772527727 1359 10.338091563348256 1360 10.340230054096136 1361 10.340230054096136
		 1362 10.340858090030668 1363 10.340858090030668 1364 10.340858090030668 1365 10.340858090030668
		 1366 10.347238225573678 1367 10.344879842062417 1368 10.344879842062417 1369 10.348768526006891
		 1370 10.353213345292604 1371 10.353213345292604 1372 10.353213345292604 1373 10.360403116465648
		 1374 10.360403116465648 1375 10.361226209075369 1376 10.361116081479826 1377 10.367010570121634
		 1378 10.367010570121634 1379 10.367010570121634 1380 10.375633980713074 1381 10.375633980713074
		 1382 10.375633980713074 1383 10.375633980713074 1384 10.382746381817576 1385 10.387372143061619
		 1386 10.387372143061619 1387 10.387372143061619;
createNode animCurveTA -n "trackCamera_rotateZ";
	rename -uid "71D9D80F-4801-A49E-55F6-F689B2496082";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 387 ".ktv";
	setAttr ".ktv[0:249]"  1001 -0.41209954520093295 1002 -0.41183474477156667
		 1003 -0.41264228371545608 1004 -0.4121995360767976 1005 -0.41164055199629923 1006 -0.41002714033720694
		 1007 -0.41298636133541239 1008 -0.41018787148669933 1009 -0.41122040771489171 1010 -0.41169440540369279
		 1011 -0.41015435643379233 1012 -0.41204444037725824 1013 -0.41199359658065737 1014 -0.40988694316257701
		 1015 -0.40954338666511969 1016 -0.4133240589781626 1017 -0.41233323881687228 1018 -0.41235843995701837
		 1019 -0.41147687286246554 1020 -0.41108927495003 1021 -0.41329943550334708 1022 -0.41140679691045545
		 1023 -0.41317802238137441 1024 -0.41281384480555605 1025 -0.41129973599794234 1026 -0.41205237962168373
		 1027 -0.41373947380543596 1028 -0.41200645375755512 1029 -0.41363655902733787 1030 -0.41429093591034571
		 1031 -0.41349461873573817 1032 -0.41258256763006795 1033 -0.41142083282346636 1034 -0.41285032678314365
		 1035 -0.41365501747486683 1036 -0.41369488173512414 1037 -0.41377355106578761 1038 -0.41669558759969122
		 1039 -0.41511551869166452 1040 -0.4146042424361 1041 -0.41524454824303847 1042 -0.41409114975653127
		 1043 -0.41471582530329076 1044 -0.41333910457820028 1045 -0.41174367725500433 1046 -0.41087049338682424
		 1047 -0.40840470632315368 1048 -0.40938892814790512 1049 -0.4075518072146444 1050 -0.40712021288186417
		 1051 -0.40498281878700654 1052 -0.40187682975607691 1053 -0.40228170758012932 1054 -0.39867480307890613
		 1055 -0.39319586114623983 1056 -0.38350718913471871 1057 -0.37994951330460885 1058 -0.3766602857352831
		 1059 -0.37723565961061983 1060 -0.3800862547390691 1061 -0.38131608992188126 1062 -0.38260964708354267
		 1063 -0.38276169323279491 1064 -0.38364288945962283 1065 -0.38282539240799401 1066 -0.38210352727077262
		 1067 -0.38185704113129798 1068 -0.38251567837068079 1069 -0.38301044406432572 1070 -0.38523872720378538
		 1071 -0.39044336440974847 1072 -0.38576226986822348 1073 -0.38772284597348355 1074 -0.38940753005385909
		 1075 -0.38986724596855971 1076 -0.39114179865561116 1077 -0.39336576512022359 1078 -0.39267859209059053
		 1079 -0.39427972616596252 1080 -0.39507329643731709 1081 -0.3951263937329948 1082 -0.3930481643907921
		 1083 -0.39040020991654989 1084 -0.39473539472078384 1085 -0.39329418162617513 1086 -0.38903047367523352
		 1087 -0.39245435708306908 1088 -0.39087256699110734 1089 -0.39020308008889443 1090 -0.38919897826792749
		 1091 -0.3857275413893152 1092 -0.38976395491727056 1093 -0.39009686969478824 1094 -0.38727721416478345
		 1095 -0.38647743019413483 1096 -0.38555196350154153 1097 -0.38573128296894688 1098 -0.38346482259646647
		 1099 -0.38374398546403649 1100 -0.37941094445687906 1101 -0.38138742415839066 1102 -0.38228647780124558
		 1103 -0.38342465259472569 1104 -0.38300133237760331 1105 -0.37815662360657154 1106 -0.37190897234290937
		 1107 -0.37671878075343584 1108 -0.37722242499853553 1109 -0.38686602525041208 1110 -0.3861596798182067
		 1111 -0.38959471992780031 1112 -0.38971087213968858 1113 -0.38788122915224121 1114 -0.39004074401873512
		 1115 -0.39051227325808219 1116 -0.3926808704192129 1117 -0.3936303283703646 1118 -0.39116551567974506
		 1119 -0.39275444919695685 1120 -0.38955400090179781 1121 -0.39035576429739655 1122 -0.39131341097021261
		 1123 -0.38598314754278834 1124 -0.38289292550871384 1125 -0.379418893281184 1126 -0.3739177489200648
		 1127 -0.37729154869043646 1128 -0.37572035687486588 1129 -0.37123434341822303 1130 -0.37617356967768967
		 1131 -0.3782879672413067 1132 -0.37479804569988995 1133 -0.37798399225391616 1134 -0.38316583678675964
		 1135 -0.38047928719163421 1136 -0.38421881404093494 1137 -0.38388557328948941 1138 -0.38710498398199833
		 1139 -0.3875550697238167 1140 -0.38881325936842059 1141 -0.38907282627735706 1142 -0.38965028504804905
		 1143 -0.39087488729137576 1144 -0.3929777744471048 1145 -0.3953704187724168 1146 -0.39354170532521937
		 1147 -0.39483718511007831 1148 -0.39750686928908902 1149 -0.39741154647379123 1150 -0.39561227708003283
		 1151 -0.39428086928421668 1152 -0.39882959727305045 1153 -0.39717143302260771 1154 -0.39862154490845131
		 1155 -0.39674987587022742 1156 -0.39480916530203625 1157 -0.39775039796677386 1158 -0.39846569705218771
		 1159 -0.39541143379352806 1160 -0.39454489207986349 1161 -0.39550227136180555 1162 -0.39302853996838372
		 1163 -0.38971401163450964 1164 -0.39403383717029788 1165 -0.39132528262325728 1166 -0.39194119174186443
		 1167 -0.39368116869542408 1168 -0.38809013287755101 1169 -0.39021485565939473 1170 -0.38961753418181022
		 1171 -0.38829481317901571 1172 -0.38447243390180563 1173 -0.38301613139878982 1174 -0.38424339722473511
		 1175 -0.38112386288241895 1176 -0.38006741140566264 1177 -0.38182498087741162 1178 -0.3805348720926533
		 1179 -0.38024757368765383 1180 -0.3772020477414923 1181 -0.37630607019292522 1182 -0.37630607019292522
		 1183 -0.37432453980659502 1184 -0.37432453980659502 1185 -0.37432453980659502 1186 -0.36902906635060667
		 1187 -0.36956176435688909 1188 -0.3685752896248003 1189 -0.37105267965546462 1190 -0.37105267965546462
		 1191 -0.37105267965546462 1192 -0.37258630058363412 1193 -0.3751267060318349 1194 -0.37355315971103664
		 1195 -0.37370237792060851 1196 -0.37297172678023549 1197 -0.37286569154326754 1198 -0.37472743324838192
		 1199 -0.37472741796762005 1200 -0.37329272781903516 1201 -0.37363727615314696 1202 -0.37218479797087428
		 1203 -0.3682169734655642 1204 -0.36987957904813229 1205 -0.37163082577905054 1206 -0.36688046219416043
		 1207 -0.36593030624021622 1208 -0.36109877585300881 1209 -0.35680812754850377 1210 -0.35626103822949085
		 1211 -0.35698584440632447 1212 -0.35308954545388366 1213 -0.35329373918392576 1214 -0.35260255518267125
		 1215 -0.35260321217805413 1216 -0.35590149674351279 1217 -0.35638201185850094 1218 -0.35990398820689506
		 1219 -0.3613954520349692 1220 -0.35888685489425087 1221 -0.36042059360374828 1222 -0.36129557444832044
		 1223 -0.35954573101304227 1224 -0.35881478261700345 1225 -0.36015491555298229 1226 -0.35960350325842622
		 1227 -0.35732740601059765 1228 -0.3604602786667217 1229 -0.35349640416012568 1230 -0.35186409809796293
		 1231 -0.35403855422828279 1232 -0.3499697532599273 1233 -0.35628459499002979 1234 -0.36206638016466242
		 1235 -0.35273154012770624 1236 -0.35659067913462711 1237 -0.35759581233031668 1238 -0.36179172778685154
		 1239 -0.36050063638708729 1240 -0.3634493486288759 1241 -0.36613998937241443 1242 -0.36463631660575391
		 1243 -0.36523634599359467 1244 -0.36359082222384231 1245 -0.3620788204100906 1246 -0.36090508487762835
		 1247 -0.36022926829616625 1248 -0.35652165550260495 1249 -0.35922545799621797 1250 -0.3570104212448087;
	setAttr ".ktv[250:386]" 1251 -0.35524821365021353 1252 -0.35827341058382001
		 1253 -0.35712606402751162 1254 -0.35688614529368579 1255 -0.35777531121800593 1256 -0.36111049332589534
		 1257 -0.35580715960009041 1258 -0.35746609114119199 1259 -0.36140261914681499 1260 -0.35823278529665126
		 1261 -0.35745190583736541 1262 -0.36160402112722029 1263 -0.35838726509098184 1264 -0.35648576845494651
		 1265 -0.35993904553242861 1266 -0.3591170310605773 1267 -0.36069022557870778 1268 -0.36008643178962629
		 1269 -0.36165771143214476 1270 -0.35981467451460974 1271 -0.36172120280201508 1272 -0.36102212188279631
		 1273 -0.36239420700690039 1274 -0.36103934684729272 1275 -0.36533096616119515 1276 -0.36569185804796595
		 1277 -0.36336471814405513 1278 -0.36446126931724582 1279 -0.36479399638443549 1280 -0.36545549073190414
		 1281 -0.36645250780401406 1282 -0.36556614406885068 1283 -0.36541287729119215 1284 -0.36664703963975798
		 1285 -0.36735856116399757 1286 -0.36773491912987372 1287 -0.36963710510252829 1288 -0.36814558831139266
		 1289 -0.36767961774347624 1290 -0.3715421118073447 1291 -0.36939643537596234 1292 -0.36794841588329125
		 1293 -0.3717249583363017 1294 -0.37373065497700969 1295 -0.37086946987153691 1296 -0.37478488300371282
		 1297 -0.37506150756746598 1298 -0.37354145354777291 1299 -0.37476460981747556 1300 -0.37510428887566233
		 1301 -0.37502588240283785 1302 -0.37820089720582961 1303 -0.37610715713481169 1304 -0.37740320729625459
		 1305 -0.37714065325155904 1306 -0.37769003196632422 1307 -0.37898506602732523 1308 -0.37812808535750286
		 1309 -0.37828067924152786 1310 -0.38124362477043455 1311 -0.37989165316361106 1312 -0.37905469948890447
		 1313 -0.37994461735019031 1314 -0.37934838900326889 1315 -0.38189293164100541 1316 -0.3856471375672752
		 1317 -0.38340434256423495 1318 -0.38194232850912546 1319 -0.38457172074913537 1320 -0.38514009383902709
		 1321 -0.38251840783596125 1322 -0.38517823200868451 1323 -0.38381604156597793 1324 -0.383956902974604
		 1325 -0.38450420053044432 1326 -0.37941959784950535 1327 -0.38306901476454452 1328 -0.38273555209627769
		 1329 -0.37830275122581841 1330 -0.38437886495523849 1331 -0.38187723215276026 1332 -0.37970201495318201
		 1333 -0.38006400498369425 1334 -0.38078343903015394 1335 -0.3801373913497636 1336 -0.3804691256723346
		 1337 -0.37558027301866997 1338 -0.37920971702578865 1339 -0.374499589901575 1340 -0.37096745252563373
		 1341 -0.37400692296620364 1342 -0.3714224772721777 1343 -0.3706834491968608 1344 -0.36994338573339403
		 1345 -0.37192362963889919 1346 -0.36727674395445015 1347 -0.36362910435161672 1348 -0.3675459131562217
		 1349 -0.36637918589343627 1350 -0.3672694457342236 1351 -0.3672694457342236 1352 -0.36567284779300624
		 1353 -0.36578031570917413 1354 -0.36578031570917413 1355 -0.36765640999601512 1356 -0.36765640999601512
		 1357 -0.36765640999601512 1358 -0.36765640999601512 1359 -0.36601886125509947 1360 -0.36426075150615156
		 1361 -0.36426075150615156 1362 -0.36587283127425951 1363 -0.36587283127425951 1364 -0.36587283127425951
		 1365 -0.36587283127425951 1366 -0.36850137077863104 1367 -0.36764921675234136 1368 -0.36764921675234136
		 1369 -0.3677136672992562 1370 -0.36836644718744083 1371 -0.36836644718744083 1372 -0.36836644718744083
		 1373 -0.36733855020224848 1374 -0.36733855020224848 1375 -0.36649233430136979 1376 -0.36760260205773104
		 1377 -0.36743506204118148 1378 -0.36743506204118148 1379 -0.36743506204118148 1380 -0.36552447165041707
		 1381 -0.36552447165041707 1382 -0.36552447165041707 1383 -0.36552447165041707 1384 -0.36531948421026056
		 1385 -0.36594214091365901 1386 -0.36594214091365901 1387 -0.36594214091365901;
createNode expression -n "expression1";
	rename -uid "63AA8A37-4E01-A101-7E41-D89636CEB308";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]=frame";
createNode mmLensModelToggle -n "lensDistortionToggle1";
	rename -uid "F21F766E-41DB-D69C-8F4C-AD8FC86E4F96";
createNode mmMarkerScale -n "mmMarkerScale1";
	rename -uid "58950F39-4BC5-052A-8912-AA9F45069A14";
	setAttr ".ovrscnmd" 1;
createNode objectSet -n "collection1";
	rename -uid "FFDAB67C-4573-A506-E162-65A099236D5B";
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
	addAttr -ci true -sn "solver_scene_graph" -ln "solver_scene_graph" -at "long";
	addAttr -ci true -sn "solver_eval_complex_node_graphs" -ln "solver_eval_complex_node_graphs" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "solver_solve_focal_length" -ln "solver_solve_focal_length" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "solver_solve_lens_distortion" -ln "solver_solve_lens_distortion" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "solver_eval_object_relationships" -ln "solver_eval_object_relationships" 
		-min 0 -max 1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr -s 22 ".dnsm";
	setAttr -l on ".solver_list";
	setAttr -l on ".solver_results";
	setAttr -l on -k on ".deviation";
	setAttr -l on ".object_toggle_camera";
	setAttr -l on ".object_toggle_line";
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
	setAttr -l on ".solver_solve_focal_length";
	setAttr -l on ".solver_solve_lens_distortion";
	setAttr -l on ".solver_eval_object_relationships";
createNode animCurveTL -n "marker_04_MKR_translateX";
	rename -uid "6A765AC1-4C0A-077F-73C1-43BDA5C233B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 96 ".ktv[0:95]"  1110 -0.023063418438786176 1111 -0.028535750941293236
		 1112 -0.033023251383876517 1113 -0.036544085854903596 1114 -0.038992181664751158
		 1115 -0.040752116338812316 1116 -0.041707187326844308 1117 -0.042035976756725213
		 1118 -0.04182529906220861 1119 -0.041647487168397945 1120 -0.041473131170212008 1121 -0.041317877086571586
		 1122 -0.041369585645887386 1123 -0.04140819650551486 1124 -0.040617411529866088 1125 -0.038325775614074298
		 1126 -0.035869068667861714 1127 -0.032454909784190689 1128 -0.028459917716468053
		 1129 -0.024665051535753046 1130 -0.021039030978760476 1131 -0.017612329127811355
		 1132 -0.014117255903729864 1133 -0.010444331041611798 1134 -0.0065125460032844917
		 1135 -0.0020013989473917082 1136 0.0028046269704762317 1137 0.0076969692395171263
		 1138 0.012854691290208331 1139 0.017911008640848602 1140 0.023032919480752367 1141 0.027972431578439649
		 1142 0.032759966278697483 1143 0.037548481600121697 1144 0.041883016447974653 1145 0.045964127440803249
		 1146 0.049581788836886354 1147 0.052903561214025507 1148 0.056391418425543849 1149 0.059775689874109861
		 1150 0.06286221739032416 1151 0.065831638821959859 1152 0.06871727377232506 1153 0.071540560069719872
		 1154 0.074225495614312464 1155 0.076694975109496077 1156 0.078986763519980241 1157 0.081079969090118831
		 1158 0.083146293519107406 1159 0.085183889973350913 1160 0.087067968522144601 1161 0.088926345487736369
		 1162 0.090534059578733617 1163 0.092080719128730393 1164 0.093609208701586843 1165 0.094939938448012628
		 1166 0.096233592348169861 1167 0.097414327872221596 1168 0.09844137873223624 1169 0.099626540164644006
		 1170 0.10060943829129954 1171 0.10149339653964251 1172 0.10231010203937341 1173 0.10302271089228265
		 1174 0.1037894273492781 1175 0.10460158850350032 1176 0.10520179282672937 1177 0.1057068217139342
		 1178 0.10613793827730345 1179 0.10643433913337508 1180 0.10689028681444612 1181 0.10761192322226287
		 1182 0.10867344633589282 1183 0.11013368163102411 1184 0.11205383392023893 1185 0.11433695763107843
		 1186 0.11680259589629338 1187 0.11924536083250437 1188 0.12147513011905464 1189 0.12356251067078483
		 1190 0.12565099354470477 1191 0.12767613864066796 1192 0.12953961816521264 1193 0.13108449048859783
		 1194 0.13234727985187522 1195 0.13300984608152611 1196 0.13325744244361271 1197 0.13299479862840669
		 1198 0.1322763811945209 1199 0.13096862756184546 1200 0.12905552498671324 1201 0.1265744184195714
		 1202 0.12396065927633126 1203 0.12142460143030487 1204 0.12006868298457629 1205 0.11993566460167737;
createNode animCurveTL -n "marker_04_MKR_translateY";
	rename -uid "E6452F65-4289-C783-9553-2FA12E25EE16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 96 ".ktv[0:95]"  1110 -0.025264807863475458 1111 -0.025335266161405967
		 1112 -0.025843147385119225 1113 -0.026102130257806333 1114 -0.026405657096562285
		 1115 -0.026824373155544479 1116 -0.027438009964223187 1117 -0.027951516768295881
		 1118 -0.028303553486925426 1119 -0.029087735016897764 1120 -0.029871582072588221
		 1121 -0.030398548487185206 1122 -0.031091748848722789 1123 -0.031647237534164929
		 1124 -0.031696673077452775 1125 -0.031198366654684562 1126 -0.030905756272217311
		 1127 -0.030145281654596512 1128 -0.028667373706574517 1129 -0.026753889550202581
		 1130 -0.024686445565750725 1131 -0.022397373457665348 1132 -0.020212167596538211
		 1133 -0.018209784222570913 1134 -0.016387741082818152 1135 -0.015056852253406472
		 1136 -0.01387377841931775 1137 -0.012780672440692364 1138 -0.012016943807722391 1139 -0.011193962738699326
		 1140 -0.011078246384256585 1141 -0.010538730345772074 1142 -0.010548741024991704
		 1143 -0.010679018952412744 1144 -0.010493959771216588 1145 -0.010825275788029831
		 1146 -0.010840591363194207 1147 -0.010739226815878133 1148 -0.011430676831496178
		 1149 -0.011885304901741223 1150 -0.012419277115844229 1151 -0.012824080524469983
		 1152 -0.013221937856901345 1153 -0.013816451378326322 1154 -0.014484365770800034
		 1155 -0.015452838018048975 1156 -0.016419639790485108 1157 -0.017701349838876501
		 1158 -0.019108834127356478 1159 -0.020337010085042795 1160 -0.021454125704428728
		 1161 -0.02248046328516351 1162 -0.023657313555392689 1163 -0.024356308480919631 1164 -0.024903771706703604
		 1165 -0.025654950758171091 1166 -0.026614273635448271 1167 -0.02798734521066204 1168 -0.029392764425066609
		 1169 -0.030723276181058912 1170 -0.032370270933517187 1171 -0.03395810226205348 1172 -0.035433783349617054
		 1173 -0.036975949770843952 1174 -0.038354992522043885 1175 -0.039775333831863768
		 1176 -0.040835135040481307 1177 -0.041548191221012554 1178 -0.042256734626065218
		 1179 -0.042759636570769588 1180 -0.042836636900230762 1181 -0.043021074417058436
		 1182 -0.042802767881164605 1183 -0.042812384618482746 1184 -0.042618468228949657
		 1185 -0.042849589022421086 1186 -0.042671408697168345 1187 -0.042595898789500708
		 1188 -0.042376348832866451 1189 -0.042475426056375554 1190 -0.042289330661196667
		 1191 -0.042204531488600872 1192 -0.042157576569679889 1193 -0.041896243920790777
		 1194 -0.041789819685861929 1195 -0.041851268118823948 1196 -0.041868685698550734
		 1197 -0.041831153595249804 1198 -0.041918408213757974 1199 -0.042469399053511381
		 1200 -0.042930638386218523 1201 -0.044204520746952192 1202 -0.045315783608568971
		 1203 -0.047231375368246842 1204 -0.048545097836030671 1205 -0.049963732924683091;
createNode animCurveTU -n "marker_04_MKR_enable";
	rename -uid "CD1AC1DD-4AD3-8D04-FBEC-41A246B9E918";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1109 0 1110 1 1205 1 1206 0;
createNode animCurveTL -n "marker_06_MKR_translateX";
	rename -uid "ECD16C49-4F7B-EA69-1BDB-73B809E3F04F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  1086 0.083508810058584237 1087 0.080970458327467743
		 1088 0.076786799582247878 1089 0.070538903727353053 1090 0.062831858770739157 1091 0.054390085575557023
		 1092 0.045067215741319333 1093 0.035100444665611574 1094 0.023827731204498992 1095 0.011412874313415755
		 1096 -0.001353725602397049 1097 -0.015062126053673075 1098 -0.028778789859497445
		 1099 -0.042094888797287677 1100 -0.054805460122996419 1101 -0.066907238602834096
		 1102 -0.078401980017243744 1103 -0.089136135896656754 1104 -0.098544734882589913
		 1208 0.0088425331827051146 1209 0.008892536123659478 1210 0.0099347675923799894 1211 0.012098598150125373
		 1212 0.01473858914003312 1213 0.017068125115417554 1214 0.019288483550973345 1215 0.021269533582765954
		 1216 0.023021755200350658 1217 0.024416832292523449 1218 0.025247792187708784 1219 0.02548866227494484
		 1220 0.025385074217211478 1221 0.02496532069576507 1222 0.024568824584788929 1223 0.023463501609330861
		 1224 0.021661605839192077 1225 0.019300667883177414 1226 0.016773301645522043;
createNode animCurveTL -n "marker_06_MKR_translateY";
	rename -uid "EA9B489F-4D82-E2D3-6F0C-B0B750AC3B38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  1086 -0.025018923545265248 1087 -0.026696404447766386
		 1088 -0.028339569387152319 1089 -0.029714558239857691 1090 -0.030486079611508843
		 1091 -0.031259776761142333 1092 -0.031886459952830848 1093 -0.032596486122028145
		 1094 -0.033104236784838925 1095 -0.033490483237894497 1096 -0.033667151843871979
		 1097 -0.03395844522362973 1098 -0.033830875685489592 1099 -0.033592944745628683 1100 -0.03326754617337685
		 1101 -0.032899594871950211 1102 -0.03242206065400155 1103 -0.031743220000489347 1104 -0.030806520302523677
		 1208 -0.052929818586609056 1209 -0.054796595048903718 1210 -0.056532506164104157
		 1211 -0.05863294540149655 1212 -0.06045227745134002 1213 -0.06207949039402777 1214 -0.063565868102207768
		 1215 -0.064906900827948588 1216 -0.065897261315071343 1217 -0.066633790397163717
		 1218 -0.066960774740433493 1219 -0.067039470372522059 1220 -0.066629750660228138
		 1221 -0.065831276297565633 1222 -0.06496415570899855 1223 -0.063983814244138126 1224 -0.062783236836041034
		 1225 -0.061312719246617409 1226 -0.060160632255795321;
createNode animCurveTU -n "marker_06_MKR_enable";
	rename -uid "2D811EB3-441F-3CDC-0F8C-6B9352443174";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1085 0 1086 1 1104 1 1105 0 1207 0 1208 1
		 1226 1 1227 0;
createNode animCurveTL -n "marker_18_MKR_translateX";
	rename -uid "DB97E95F-4917-D30A-7614-3A8A8F7F3B4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 262 ".ktv";
	setAttr ".ktv[0:249]"  1001 0.1037742073361454 1002 0.10301187920526966 1003 0.1026928049121365
		 1004 0.10219662574020194 1005 0.10179332813101694 1006 0.10122907821098748 1007 0.10079674551730822
		 1008 0.10046633930324411 1009 0.10014433648344023 1010 0.099843826936824365 1011 0.099604582609840064
		 1012 0.099572698087244005 1013 0.09920642186759232 1014 0.099014132281798894 1015 0.098919477720367466
		 1016 0.098860461641080977 1017 0.098589716419376194 1018 0.098771610468963988 1019 0.098613499836553542
		 1020 0.098409912348589201 1021 0.09845175312682708 1022 0.098406152816299608 1023 0.098366673070928501
		 1024 0.098420024169840081 1025 0.098283290832848813 1026 0.098203704118445589 1027 0.098141857014731437
		 1028 0.098039581922611974 1029 0.097980379553475716 1030 0.098006606924865514 1031 0.098013147223309005
		 1032 0.09815656344549184 1033 0.098129149383963665 1034 0.098017056495708688 1035 0.098001461840712567
		 1036 0.097995038880005492 1037 0.097808044851890208 1038 0.097634485771546209 1039 0.097140041013877632
		 1040 0.096619607858305145 1041 0.095895608404672816 1042 0.095221034608789501 1043 0.094461123412128867
		 1044 0.093563711438937269 1045 0.092676708673935404 1046 0.092050524815468937 1047 0.09147653017956614
		 1048 0.09095006673209538 1049 0.090734572171976668 1050 0.090801485451173836 1051 0.090762423621851052
		 1052 0.090691440237442023 1053 0.090756359060810587 1054 0.090504850916418689 1055 0.089950329873387691
		 1056 0.089290850201905969 1057 0.088280458899727687 1058 0.087029601605423168 1059 0.085707323770627286
		 1060 0.083784713086616613 1061 0.081880395595600342 1062 0.079749551066791824 1063 0.077521625428849439
		 1064 0.075760005773712336 1065 0.074517435079745176 1066 0.073337423133900237 1067 0.072558954994670466
		 1068 0.071556205793358307 1069 0.070682373185471992 1070 0.06923815534674671 1071 0.067824855333725731
		 1072 0.065860810057220109 1073 0.063414000402641335 1074 0.059825720484851796 1075 0.055537143163696179
		 1076 0.050954432859808163 1077 0.044475618818215601 1078 0.036977157092281998 1079 0.028930532174667123
		 1080 0.020607198477507915 1081 0.012387319385404716 1082 0.003586438639034073 1083 -0.0053853852509567202
		 1084 -0.01343794355406086 1085 -0.019816858808969329 1086 -0.026442481402696671 1087 -0.031945830032588385
		 1088 -0.036841759424713849 1089 -0.041282519840262655 1090 -0.044291639617338729
		 1091 -0.046661855882258685 1092 -0.047930908252606319 1093 -0.048595108722628733
		 1219 -0.058540665114557799 1220 -0.069026971919562308 1221 -0.077270860422348098
		 1222 -0.084114867059730702 1223 -0.089310240235913607 1224 -0.092360501693676156
		 1225 -0.093427859210677089 1226 -0.092694559708761337 1227 -0.090379299494142251
		 1228 -0.086755448949583758 1229 -0.081966417287845927 1230 -0.076890572220844722
		 1231 -0.071521942936777327 1232 -0.066735341945733662 1233 -0.062221477278975978
		 1234 -0.058902200915882941 1235 -0.056594307821513201 1236 -0.054978976147202596
		 1237 -0.053602683037468624 1238 -0.052404804065503241 1239 -0.051301407846268299
		 1240 -0.049996961550146435 1241 -0.048553917742879482 1242 -0.046855198062599634
		 1243 -0.044929738554207566 1244 -0.042619558696570692 1245 -0.040153041867796779
		 1246 -0.037500211990131538 1247 -0.034503955080923965 1248 -0.03209841487194709 1249 -0.029596187830644549
		 1250 -0.027246607452935279 1251 -0.025229545116222607 1252 -0.023242291877164201
		 1253 -0.021452889096369721 1254 -0.019964522350048641 1255 -0.01858004272129582 1256 -0.017207218195267882
		 1257 -0.016119491826199095 1258 -0.015213475244213293 1259 -0.01454206746593556 1260 -0.013961970505382615
		 1261 -0.013346904302009799 1262 -0.012671571096635914 1263 -0.011955480036869082
		 1264 -0.011581035829052067 1265 -0.01119636186536227 1266 -0.010990218306308475 1267 -0.010563625799021759
		 1268 -0.010392924325304864 1269 -0.010189295434159362 1270 -0.0098790564959684857
		 1271 -0.0096076409226480974 1272 -0.0094651881097634893 1273 -0.0093042592347075681
		 1274 -0.00897206597829181 1275 -0.008860653679652386 1276 -0.0086758608024326556
		 1277 -0.0086589140491217798 1278 -0.0084236617656638924 1279 -0.0081163392765977727
		 1280 -0.0080027411919239011 1281 -0.0078782417992127596 1282 -0.0078319950551327677
		 1283 -0.0078298039237351125 1284 -0.0077586341482540622 1285 -0.0076455222990761684
		 1286 -0.0074781600756506084 1287 -0.0073338184116227834 1288 -0.0073369942882413608
		 1289 -0.0072209691963284195 1290 -0.0070690790771558709 1291 -0.0070480766169825904
		 1292 -0.0069233265888479223 1293 -0.0067956070605844077 1294 -0.0067984719087637036
		 1295 -0.006753075691822763 1296 -0.0066075726780857602 1297 -0.0065099494452002249
		 1298 -0.0066451664954987888 1299 -0.006476906151013595 1300 -0.0064400897086471787
		 1301 -0.006373583413141426 1302 -0.0065641671806734858 1303 -0.006525922802431583
		 1304 -0.006084397558954624 1305 -0.0060258610285712777 1306 -0.0060741896993083411
		 1307 -0.0059582061207584802 1308 -0.0056354114639080022 1309 -0.0053509251614891062
		 1310 -0.0051957512700961939 1311 -0.0047411829231286395 1312 -0.0044475136267841942
		 1313 -0.0040954131706522068 1314 -0.004025919759545693 1315 -0.0038228201658196403
		 1316 -0.0039455153675133636 1317 -0.0040313361019917449 1318 -0.0040012376199266009
		 1319 -0.0038706915513758156 1320 -0.0039438508089856272 1321 -0.0039242352342052644
		 1322 -0.0039686926790301058 1323 -0.0039951195769812875 1324 -0.0039911676106756389
		 1325 -0.0039871504029702076 1326 -0.0039411484911804906 1327 -0.0039152832016651207
		 1328 -0.003817211771691309 1329 -0.0038404038254856165 1330 -0.0038460733880154585
		 1331 -0.0037491547037790673 1332 -0.0037678268935931736 1333 -0.0036904109505470628
		 1334 -0.0037505927070776712 1335 -0.0036844804388391772 1336 -0.0038378976236991824
		 1337 -0.0038940849539591538 1338 -0.0037164096126613422 1339 -0.0037616891929875274
		 1340 -0.0038804295460684313 1341 -0.0038519010543814347 1342 -0.0038510250852260008
		 1343 -0.0037540751650511073 1344 -0.0037824179911229439 1345 -0.0036717851821689296
		 1346 -0.0035898000071051817 1347 -0.0035459042228935811 1348 -0.0035001465466212855
		 1349 -0.0033948237970963246 1350 -0.0035040689109352985 1351 -0.0034432212800487028
		 1352 -0.0033405741352443008 1353 -0.00345489224056722 1354 -0.0034955816938604944
		 1355 -0.0034061161867863787 1356 -0.0032703955314380972 1357 -0.0034549142977948755
		 1358 -0.0032545143931007048 1359 -0.0032572830613775694 1360 -0.003128980841162976
		 1361 -0.0033525383827814892 1362 -0.0031848383994873553 1363 -0.0032365566147493641
		 1364 -0.0031821248670054203 1365 -0.0031158397282302075 1366 -0.0031182801780902381
		 1367 -0.0030840340654254561 1368 -0.003115865103520632 1369 -0.0031534268778709018
		 1370 -0.0030116054593637975 1371 -0.0030334291903590382 1372 -0.0030466559098463186
		 1373 -0.0030157497160418489 1374 -0.0029083624508246531 1375 -0.0029256468911335043;
	setAttr ".ktv[250:261]" 1376 -0.0028313536341595946 1377 -0.0025778552547449651
		 1378 -0.0027287625099824409 1379 -0.0026333873797002028 1380 -0.002774219094437036
		 1381 -0.0026447147296587148 1382 -0.0027193535304855243 1383 -0.0027650208614501404
		 1384 -0.0027284253311334328 1385 -0.0025698479050034195 1386 -0.0025997066476411979
		 1387 -0.0026338168512110016;
createNode animCurveTL -n "marker_18_MKR_translateY";
	rename -uid "4E19CAEA-4610-91D4-B47D-21A37E311E74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 262 ".ktv";
	setAttr ".ktv[0:249]"  1001 -0.055483843215309969 1002 -0.055456593655515141
		 1003 -0.055298770594209512 1004 -0.05537010164420797 1005 -0.055354340879196773 1006 -0.055440576612277193
		 1007 -0.055398258036169379 1008 -0.05529635199865518 1009 -0.0553670145358654 1010 -0.055214519877271828
		 1011 -0.055212384588621211 1012 -0.055116499075122005 1013 -0.055197496717842465
		 1014 -0.055184413849786007 1015 -0.055160131886277441 1016 -0.055084312820626813
		 1017 -0.055181055533976175 1018 -0.055036327262967311 1019 -0.055149352478687241
		 1020 -0.055149036574951238 1021 -0.055171076429422206 1022 -0.055076437651697951
		 1023 -0.055214879169247444 1024 -0.055077839534510009 1025 -0.055067815748934268
		 1026 -0.054974145457704404 1027 -0.055000207516037569 1028 -0.055036848879591704
		 1029 -0.054929037155264981 1030 -0.054919893803846764 1031 -0.054980640308456341
		 1032 -0.054939062482517453 1033 -0.05491734270880394 1034 -0.055066148996766373 1035 -0.055074465138162443
		 1036 -0.055143950212755866 1037 -0.055285571781888088 1038 -0.055748787824016099
		 1039 -0.056539873174586086 1040 -0.057622376236077744 1041 -0.058993157671971219
		 1042 -0.060343806702626512 1043 -0.062197209278032906 1044 -0.064070607970099669
		 1045 -0.066067920884015918 1046 -0.068106836608848476 1047 -0.070140677338891233
		 1048 -0.072397361946994865 1049 -0.074351975953609095 1050 -0.076248854207748684
		 1051 -0.077780605626723787 1052 -0.079071133566656016 1053 -0.079961974229625088
		 1054 -0.080578337676335987 1055 -0.080892729790857432 1056 -0.080936357005623683
		 1057 -0.08124857387812412 1058 -0.081349901876146491 1059 -0.081673425595686966 1060 -0.081940749152472625
		 1061 -0.082087209955001739 1062 -0.082292143944166063 1063 -0.082418287789839173
		 1064 -0.082576202710894275 1065 -0.082617280967745843 1066 -0.082762986212631562
		 1067 -0.082869273472261362 1068 -0.083023641059647213 1069 -0.083178829909426322
		 1070 -0.083572101599706461 1071 -0.084250227692783342 1072 -0.085212379339587252
		 1073 -0.086347189818003767 1074 -0.087126438412936658 1075 -0.08808720408818066 1076 -0.089062430158391215
		 1077 -0.090552453995258186 1078 -0.092146783408916799 1079 -0.093547166827396944
		 1080 -0.094898088011664494 1081 -0.096016568344841069 1082 -0.096303063555090884
		 1083 -0.096509422534953648 1084 -0.096564556164527804 1085 -0.096470229417695452
		 1086 -0.096419130815442677 1087 -0.095680623082489369 1088 -0.093816790924767635
		 1089 -0.093130296561011294 1090 -0.091135522319887863 1091 -0.08985301473822338 1092 -0.088557342897817415
		 1093 -0.087279756959358079 1219 -0.12032846555868754 1220 -0.12257741584713955 1221 -0.12416494812572298
		 1222 -0.12526908906712986 1223 -0.12700046295051409 1224 -0.12884898440027992 1225 -0.13056438203641069
		 1226 -0.13269668990646283 1227 -0.1337884494022949 1228 -0.13465515855562976 1229 -0.13561262640037802
		 1230 -0.13575892878380685 1231 -0.13556777925679597 1232 -0.13546247389791544 1233 -0.13411640638880828
		 1234 -0.13212107320321553 1235 -0.13033501175590723 1236 -0.12892077442248634 1237 -0.1279858969339096
		 1238 -0.1274604697836188 1239 -0.12699555574736165 1240 -0.1270194442002856 1241 -0.12695074593662697
		 1242 -0.12692027981910603 1243 -0.12683623308355541 1244 -0.12676040391484167 1245 -0.12648982013565852
		 1246 -0.12642929680584269 1247 -0.12631838405347434 1248 -0.12603593895875859 1249 -0.1259945506591077
		 1250 -0.1259117074994921 1251 -0.12580328077911651 1252 -0.12560970446153896 1253 -0.12542896780772772
		 1254 -0.12534775795945124 1255 -0.12529410739021357 1256 -0.12513552026550517 1257 -0.12490367961165594
		 1258 -0.12476385099702969 1259 -0.1245819438540039 1260 -0.12433176425244874 1261 -0.12405895173199272
		 1262 -0.12380020308259437 1263 -0.12342521648552007 1264 -0.1231200009276413 1265 -0.12269190036692001
		 1266 -0.122147582607737 1267 -0.1214750257080342 1268 -0.12059916823361616 1269 -0.11999722563533338
		 1270 -0.11914350108808403 1271 -0.11833675849617015 1272 -0.11735689408487943 1273 -0.11625946941178655
		 1274 -0.11530232630355292 1275 -0.11419953608271899 1276 -0.11317526610396639 1277 -0.11201522171425887
		 1278 -0.1109006058441116 1279 -0.10969743970899393 1280 -0.10862865640540376 1281 -0.10759465588081485
		 1282 -0.10655419202108574 1283 -0.10577440146189476 1284 -0.10481509933715927 1285 -0.1039670855311387
		 1286 -0.10323966883649532 1287 -0.10233338048180513 1288 -0.10162469642111083 1289 -0.10094957974863616
		 1290 -0.10043632037320144 1291 -0.099863174057187865 1292 -0.099347224456163341 1293 -0.098818855114963022
		 1294 -0.098213943451356478 1295 -0.097637393130071803 1296 -0.09716278929749067 1297 -0.096810233300533732
		 1298 -0.096255677722728639 1299 -0.095678653074508679 1300 -0.095201792405666563
		 1301 -0.094522739800080025 1302 -0.09391639937397861 1303 -0.093448317439780326 1304 -0.092889657481840415
		 1305 -0.092105548532033565 1306 -0.091406724390314331 1307 -0.090835495569760505
		 1308 -0.090305100643503333 1309 -0.089838723245939833 1310 -0.089128676096160042
		 1311 -0.088569621273825672 1312 -0.088086554043027065 1313 -0.0879864425121476 1314 -0.087736882907271052
		 1315 -0.088016367346955782 1316 -0.088205767817285341 1317 -0.088303359817700433
		 1318 -0.088724461370557894 1319 -0.089005192085269191 1320 -0.089618534052071652
		 1321 -0.090172880457994986 1322 -0.090982217292260248 1323 -0.091797041360021925
		 1324 -0.092529790502499765 1325 -0.093339230413815755 1326 -0.094502937970889767
		 1327 -0.095733738567139459 1328 -0.096528615013874997 1329 -0.097525731804197269
		 1330 -0.09836853983631394 1331 -0.099182107682154186 1332 -0.099865791944579896 1333 -0.10085244578707719
		 1334 -0.10188935020795448 1335 -0.10322627896300485 1336 -0.10488666760929355 1337 -0.10622804172442879
		 1338 -0.10760899289106596 1339 -0.10890211473732597 1340 -0.11015557080665184 1341 -0.11103091641924473
		 1342 -0.11183774483098241 1343 -0.11227140526532209 1344 -0.11250232534394417 1345 -0.11267411807800687
		 1346 -0.11264938112650918 1347 -0.11252752990439346 1348 -0.1125149397016264 1349 -0.11258417611804178
		 1350 -0.11247586965780049 1351 -0.11245780735291316 1352 -0.1124791491213144 1353 -0.1124959000354584
		 1354 -0.1126036621374028 1355 -0.11267926617908886 1356 -0.11258405445157332 1357 -0.11252260239267992
		 1358 -0.11261167952980528 1359 -0.11258840689523819 1360 -0.11270007225108009 1361 -0.11264085709263161
		 1362 -0.11265159281411347 1363 -0.11278053583343878 1364 -0.1127411936686461 1365 -0.11273133279102782
		 1366 -0.11280074772789705 1367 -0.1127362783321999 1368 -0.11282254577096557 1369 -0.11290954676036441
		 1370 -0.11296927576846716 1371 -0.11299559031670947 1372 -0.11302679551195105 1373 -0.11288565056267058
		 1374 -0.11286438048280312 1375 -0.11293756770757019;
	setAttr ".ktv[250:261]" 1376 -0.11290214056062287 1377 -0.11305817123607531
		 1378 -0.11295238236079985 1379 -0.11294506702732193 1380 -0.1129040237628659 1381 -0.11285022142000933
		 1382 -0.11296902709719009 1383 -0.11295383792351882 1384 -0.11289047322106227 1385 -0.11301800437642101
		 1386 -0.113013953660277 1387 -0.11295274258391813;
createNode animCurveTU -n "marker_18_MKR_enable";
	rename -uid "B93D216B-48D5-0E4C-74E0-89877CE936BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1000 0 1001 1 1093 1 1094 0 1218 0 1219 1
		 1387 1 1388 0;
createNode animCurveTL -n "marker_19_MKR_translateX";
	rename -uid "59551DA8-4EA6-4C9D-B44B-9593C314B82A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 272 ".ktv";
	setAttr ".ktv[0:249]"  1001 0.12926267306742878 1002 0.12883313278258524
		 1003 0.12842684886896272 1004 0.12797597815971429 1005 0.12755508029373175 1006 0.12704437663037238
		 1007 0.12662717224952946 1008 0.12629125857561785 1009 0.12603270691247259 1010 0.12567924070047432
		 1011 0.1254160352050272 1012 0.12519642145308529 1013 0.12500168664944711 1014 0.12477568210015355
		 1015 0.12466991782698877 1016 0.12458710354889435 1017 0.12454084780201469 1018 0.12444817636981043
		 1019 0.12435743935379262 1020 0.12432836515462764 1021 0.12423343639381579 1022 0.12418311129147463
		 1023 0.12413985281240658 1024 0.1239829204093652 1025 0.12390804358514251 1026 0.12376667528110941
		 1027 0.12362204273218969 1028 0.1233710509575644 1029 0.12306282989913975 1030 0.12276219997846549
		 1031 0.12240638070907905 1032 0.12208936574431239 1033 0.12168508851172555 1034 0.12143947937783406
		 1035 0.12116811728665156 1036 0.12084617021415633 1037 0.1203904681101251 1038 0.12003404916414184
		 1039 0.11942677805880431 1040 0.11882549660854558 1041 0.11815658628034176 1042 0.11738090497813225
		 1043 0.11658200374812355 1044 0.11564424431646603 1045 0.1148549940708552 1046 0.11412668670656034
		 1047 0.11325561982415178 1048 0.11256124115193711 1049 0.11172373114510536 1050 0.11089205670319768
		 1051 0.10994080365935621 1052 0.10907671424313659 1053 0.10840900029418044 1054 0.10785468768015716
		 1055 0.10746636145531685 1056 0.10730264585556082 1057 0.10729039254000872 1058 0.10736767120821322
		 1059 0.10725181689870189 1060 0.10700457118147677 1061 0.1064536229826728 1062 0.10546943040329326
		 1063 0.10425205938504067 1064 0.1030302856530132 1065 0.1019712826523278 1066 0.10111448842985105
		 1067 0.10029953381782564 1068 0.099557464278333119 1069 0.098890613925633586 1070 0.098245997519541994
		 1071 0.09785436116971391 1072 0.097822747179170499 1073 0.097965922064880973 1074 0.098306233739185012
		 1075 0.098999917513952318 1076 0.099712452389981054 1077 0.099876032352114397 1078 0.099411115813652029
		 1079 0.098050678318860163 1080 0.095273182408843637 1081 0.090945242994824538 1082 0.085651340088476413
		 1083 0.078839767786032744 1084 0.070991252552310757 1085 0.062468810804033548 1086 0.052479359262651126
		 1087 0.041952879142437727 1088 0.029544250582979492 1089 0.016658768060932916 1090 0.0033703087734624493
		 1091 -0.0094958218810731743 1092 -0.021832337058402262 1093 -0.035713869252186614
		 1094 -0.047600713306942988 1095 -0.058236851025792458 1096 -0.067825139094622455
		 1097 -0.076710643838855841 1098 -0.084688797058616205 1099 -0.091765778756325578
		 1100 -0.097586898787221654 1216 -0.042667664343677469 1217 -0.045179423639157446
		 1218 -0.046673487178578943 1219 -0.046118970636913337 1220 -0.044097585423422847
		 1221 -0.040647185000678876 1222 -0.036083982146671634 1223 -0.030961261683914443
		 1224 -0.025325612173601408 1225 -0.019410748533839228 1226 -0.013358637251503269
		 1227 -0.0075436778766311829 1228 -0.0020684462958357464 1229 0.0025668460530614556
		 1230 0.0068064947306847312 1231 0.010608503494657362 1232 0.013290745403189974 1233 0.015253753449944951
		 1234 0.01689931636811326 1235 0.017996161292238022 1236 0.018808986760145752 1237 0.019822485747509555
		 1238 0.020854536938748058 1239 0.022085453627416318 1240 0.023654896947228665 1241 0.025360033798133563
		 1242 0.027180312799318318 1243 0.029308981653354493 1244 0.031697535168529467 1245 0.034263551136954562
		 1246 0.03719104461444056 1247 0.039994834301002924 1248 0.042665078073540919 1249 0.045211641542361791
		 1250 0.047542028876162656 1251 0.049671774147102776 1252 0.051658662230738672 1253 0.053400973884258573
		 1254 0.054903085333201873 1255 0.056467400726426864 1256 0.057777983537079414 1257 0.058770304565376685
		 1258 0.059647745150518738 1259 0.060454442710560219 1260 0.061111733406770452 1261 0.061833294097606073
		 1262 0.062492151869506185 1263 0.06293260272087764 1264 0.063368695349604209 1265 0.063797266990613277
		 1266 0.064151372000476048 1267 0.064556728141817343 1268 0.064858937487034529 1269 0.06508801275903997
		 1270 0.065354007921191393 1271 0.065581842780976674 1272 0.065738117495742987 1273 0.06582614546166321
		 1274 0.065953237906099416 1275 0.066189107196070629 1276 0.066353417595215847 1277 0.066480575216163795
		 1278 0.066603123500044048 1279 0.066803025766876134 1280 0.066903735069612891 1281 0.067018395867339375
		 1282 0.06709759926791159 1283 0.067190180715757997 1284 0.06730353849902948 1285 0.067390042563922892
		 1286 0.067439135405232276 1287 0.067515346664365761 1288 0.067523408849223587 1289 0.067573213799036691
		 1290 0.067713477435213498 1291 0.067725694783292711 1292 0.067796091884085863 1293 0.067912882410828823
		 1294 0.067983626432806643 1295 0.067976990040956919 1296 0.068115883075407835 1297 0.068119338619152203
		 1298 0.068178496282251699 1299 0.068199777453960442 1300 0.068166717722308645 1301 0.068249849209550684
		 1302 0.068172815751135984 1303 0.068222461394032874 1304 0.068310174589795158 1305 0.068286191657119688
		 1306 0.068283803553269573 1307 0.068307673879260067 1308 0.068394718079272221 1309 0.068506765971431238
		 1310 0.068523103281337594 1311 0.068597978642034985 1312 0.068645902590497965 1313 0.068724751569360976
		 1314 0.068781857933257862 1315 0.068823576023574029 1316 0.068691923587294035 1317 0.068529767244670414
		 1318 0.068425741631449655 1319 0.068388686823134148 1320 0.068430497642695709 1321 0.068318561197373784
		 1322 0.068341945111145552 1323 0.068323459217760063 1324 0.06834866893491609 1325 0.06837123796340161
		 1326 0.068426790476077692 1327 0.068452866772008902 1328 0.068432309312870365 1329 0.068407489776563413
		 1330 0.068478165667697377 1331 0.068494858621640065 1332 0.068490772507662556 1333 0.068530343266053784
		 1334 0.068487963750034964 1335 0.068528907355104862 1336 0.068346970652477634 1337 0.068408723333151844
		 1338 0.068419602730125595 1339 0.068391469270643768 1340 0.068319651212348509 1341 0.068352236008898837
		 1342 0.068332568443088104 1343 0.068289431469509609 1344 0.068350629375654393 1345 0.068385528223644632
		 1346 0.068447176381737584 1347 0.068527001380563224 1348 0.06856996363474277 1349 0.068540888458651472
		 1350 0.068632328459196423 1351 0.068663535944369358 1352 0.068691000110247313 1353 0.068672705854425531
		 1354 0.068630946022300132 1355 0.068662651243599049 1356 0.068645606800033732 1357 0.068612202516128207
		 1358 0.068629633640862608 1359 0.068726204987276107 1360 0.068753657187438311 1361 0.068658764697739461
		 1362 0.06874530864493833 1363 0.06872010099276582 1364 0.068745633663806149 1365 0.068763564203569438;
	setAttr ".ktv[250:271]" 1366 0.068819602342622965 1367 0.068747576308747615
		 1368 0.068742900710053068 1369 0.068801046262264243 1370 0.068867551950376749 1371 0.068826985238111371
		 1372 0.068838116856304143 1373 0.068920885958493328 1374 0.068927513256345052 1375 0.068933697908604374
		 1376 0.068931989016212114 1377 0.069015708651800067 1378 0.069001356986521656 1379 0.069021987726555101
		 1380 0.06913018957079109 1381 0.069131758425702849 1382 0.069078950553801532 1383 0.069079966644165158
		 1384 0.06916770292765928 1385 0.069205674552532015 1386 0.069175325582256253 1387 0.06920904361628577;
createNode animCurveTL -n "marker_19_MKR_translateY";
	rename -uid "B4DAEBD0-4171-E070-7B74-D18658773C77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 272 ".ktv";
	setAttr ".ktv[0:249]"  1001 -0.041261758095489709 1002 -0.04112677501908929
		 1003 -0.041118855900012796 1004 -0.041140850138339846 1005 -0.041161972314031459
		 1006 -0.041091727297229375 1007 -0.041063180790685605 1008 -0.041195203731091257
		 1009 -0.041172658134582207 1010 -0.041044450571258051 1011 -0.040984800095801577
		 1012 -0.041011940156625015 1013 -0.041130005177082152 1014 -0.041176286108762838
		 1015 -0.041027414877525592 1016 -0.041013107515558256 1017 -0.041070427926025499
		 1018 -0.041103833586339289 1019 -0.041039414361483839 1020 -0.041099061647781709
		 1021 -0.04103423640025744 1022 -0.041042516190795519 1023 -0.041128806656224093 1024 -0.040939054960860088
		 1025 -0.041023536822881623 1026 -0.040887617901601947 1027 -0.040934366935441946
		 1028 -0.04084114872913891 1029 -0.040729699815083453 1030 -0.040721892762917822 1031 -0.040751800728482446
		 1032 -0.040638463417257964 1033 -0.040533728112764178 1034 -0.040588657637233128
		 1035 -0.040693462281915393 1036 -0.040679820521817955 1037 -0.040707581447878394
		 1038 -0.041141037771058431 1039 -0.041814100516580133 1040 -0.042932654769877343
		 1041 -0.044212457369042335 1042 -0.045610774780672658 1043 -0.047291658976024442
		 1044 -0.049117700130408892 1045 -0.051085554955035584 1046 -0.053186153023722038
		 1047 -0.055069043774842064 1048 -0.057165676129177834 1049 -0.059005311627491286
		 1050 -0.060828158597054371 1051 -0.062267444599554689 1052 -0.063447838852499883
		 1053 -0.064244980268356788 1054 -0.064701416523785082 1055 -0.064900428061660242
		 1056 -0.065295761495224258 1057 -0.06561433607917222 1058 -0.066020311234506079 1059 -0.066431525927729274
		 1060 -0.06680417133290717 1061 -0.067213052132618967 1062 -0.067498640335004412 1063 -0.06774216738276273
		 1064 -0.067987159863999003 1065 -0.068006188737793627 1066 -0.068217571287386702
		 1067 -0.068394738283669654 1068 -0.068516286832621676 1069 -0.068774595025628771
		 1070 -0.069230575357270896 1071 -0.06939781692583219 1072 -0.069995725177310897 1073 -0.070854372616493189
		 1074 -0.072023660881971652 1075 -0.073816912809384516 1076 -0.07583597302970263 1077 -0.077919269591479268
		 1078 -0.080119295034548732 1079 -0.08261162535559935 1080 -0.085349489944713086 1081 -0.089158330237971206
		 1082 -0.092583178410122702 1083 -0.095360048687637144 1084 -0.097743229044902791
		 1085 -0.10053077281938483 1086 -0.10145789520067883 1087 -0.10348672268018549 1088 -0.10446585596686569
		 1089 -0.10459294047335516 1090 -0.10447447829858819 1091 -0.10402590500006947 1092 -0.10344412777158007
		 1093 -0.10095333944987561 1094 -0.099665591853930147 1095 -0.098541236506418994 1096 -0.096598628662597996
		 1097 -0.095222681267190523 1098 -0.0937705068425016 1099 -0.092621843576812857 1100 -0.091935072347451907
		 1216 -0.12755677701417906 1217 -0.13004631194926164 1218 -0.13325042243703705 1219 -0.13622137264363032
		 1220 -0.13838518824885487 1221 -0.1401785328020167 1222 -0.14094579727903378 1223 -0.14113738412443799
		 1224 -0.14074551292205117 1225 -0.13978927591973339 1226 -0.13841649781117427 1227 -0.13664781093551476
		 1228 -0.13510597455236134 1229 -0.13317867499912467 1230 -0.13123151071883321 1231 -0.13006647803216798
		 1232 -0.12882353814055891 1233 -0.12689926285436287 1234 -0.12439187566123477 1235 -0.12219603788293726
		 1236 -0.120728452636165 1237 -0.11961740970867202 1238 -0.11901344698642685 1239 -0.11880314491504607
		 1240 -0.11888487137702219 1241 -0.11905263972853819 1242 -0.1191540503469673 1243 -0.11913526296768795
		 1244 -0.11917573128043463 1245 -0.11915540950100778 1246 -0.11914099808493767 1247 -0.11904107033143729
		 1248 -0.11893036998246959 1249 -0.11883492854240046 1250 -0.11880969398407593 1251 -0.11882787932944394
		 1252 -0.1187107259987259 1253 -0.11857677449220094 1254 -0.11853011717283413 1255 -0.11843474846245439
		 1256 -0.11840178081232161 1257 -0.11830850204629123 1258 -0.11809600799637471 1259 -0.11804240427733231
		 1260 -0.11782262272538374 1261 -0.11752720481971823 1262 -0.11717426971878647 1263 -0.11688674228991941
		 1264 -0.11659084987522872 1265 -0.11621425084926401 1266 -0.11575953097234376 1267 -0.11515408367930119
		 1268 -0.11443065108657929 1269 -0.11367379197048955 1270 -0.11284198035353116 1271 -0.11190447438982198
		 1272 -0.11095972661881087 1273 -0.10999403078378528 1274 -0.10904962048798489 1275 -0.10805309044820488
		 1276 -0.10696231852459481 1277 -0.105762264850503 1278 -0.10459835367909281 1279 -0.10344793768369637
		 1280 -0.10231926984825612 1281 -0.10134132373843735 1282 -0.10040099720982992 1283 -0.099545969651338828
		 1284 -0.098699881410980128 1285 -0.097860636688846203 1286 -0.097007309608792947
		 1287 -0.096153923053878376 1288 -0.09543065221676339 1289 -0.094767225014788015 1290 -0.094143973366001721
		 1291 -0.093566488314587914 1292 -0.093046445851829196 1293 -0.09251192526655122 1294 -0.092026406735826405
		 1295 -0.091522431932764658 1296 -0.091085622554365142 1297 -0.090604494585522943
		 1298 -0.090136596750278575 1299 -0.089569465997554165 1300 -0.08894750178328209 1301 -0.08841255634530476
		 1302 -0.087791607267880767 1303 -0.087218579586249345 1304 -0.086630485448288608
		 1305 -0.085891954424345496 1306 -0.085286369138493912 1307 -0.084616141525196642
		 1308 -0.084079755117367205 1309 -0.083415351371728619 1310 -0.082648685809119715
		 1311 -0.081990956154570804 1312 -0.081412023797437505 1313 -0.081020469128318173
		 1314 -0.080926620275590833 1315 -0.081111254185819992 1316 -0.081238169787797021
		 1317 -0.081311314312040917 1318 -0.081698131052167666 1319 -0.08204747315445815 1320 -0.082597485759227873
		 1321 -0.083187579505083431 1322 -0.083963434603729792 1323 -0.084739550057026047
		 1324 -0.085426585591034332 1325 -0.086287223489309173 1326 -0.087433283838811882
		 1327 -0.088583981482713292 1328 -0.089546546141598626 1329 -0.090329767268012007
		 1330 -0.091261244964245147 1331 -0.091994283485286488 1332 -0.092673515703635134
		 1333 -0.093547627376961817 1334 -0.094635298270952906 1335 -0.096086313774671195
		 1336 -0.097579632626333179 1337 -0.098989479569595251 1338 -0.1002470964738198 1339 -0.10140590975480956
		 1340 -0.10254928854719236 1341 -0.10358171138783739 1342 -0.10429734022814241 1343 -0.1047742287354419
		 1344 -0.10510711927737315 1345 -0.10521542513650278 1346 -0.10516611383153646 1347 -0.10505704979900404
		 1348 -0.10502186468808994 1349 -0.10503490811137878 1350 -0.10507353647961326 1351 -0.10493775624796897
		 1352 -0.10497787874000547 1353 -0.10498748223588622 1354 -0.10503123472724907 1355 -0.10501542771079542
		 1356 -0.10491858705773105 1357 -0.10488280928920563 1358 -0.10492939863663847 1359 -0.10496243847441245
		 1360 -0.10496871413156367 1361 -0.10492087877381095 1362 -0.10502419915523764 1363 -0.10493468785886001
		 1364 -0.10496775517283957 1365 -0.10492521079281603;
	setAttr ".ktv[250:271]" 1366 -0.10501387537588103 1367 -0.1049635439421866
		 1368 -0.10504735874141508 1369 -0.10508228481575138 1370 -0.10510186786830789 1371 -0.10514317421105301
		 1372 -0.10504292421739836 1373 -0.10498634089861264 1374 -0.10493971062001084 1375 -0.10500912458614531
		 1376 -0.10501136382370457 1377 -0.10500489843994704 1378 -0.10495410991684628 1379 -0.10492228408073823
		 1380 -0.10490111918640321 1381 -0.10488789366170048 1382 -0.10491286730351829 1383 -0.10489029095767055
		 1384 -0.10485170329113691 1385 -0.10478098951995007 1386 -0.10479756540614765 1387 -0.10478411909804985;
createNode animCurveTU -n "marker_19_MKR_enable";
	rename -uid "ECDBB8D6-4A19-E139-4544-67B56161D62D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1000 0 1001 1 1100 1 1101 0 1215 0 1216 1
		 1387 1 1388 0;
createNode animCurveTL -n "marker_23_MKR_translateX";
	rename -uid "1D4D5787-48AD-BF35-65A5-3BA0C75BC3B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1087 0.065324730315635349 1088 0.060385446897264883
		 1089 0.053725445097031477 1090 0.04625941871280248 1091 0.037905895803622136 1092 0.028997334746493242
		 1093 0.019607044904490611 1094 0.0092070223468907475 1095 -0.0014123648829730273
		 1096 -0.012938782977708285 1097 -0.023493667542509422 1098 -0.034579262525369969
		 1099 -0.045310205013042004 1100 -0.05546768344930425 1101 -0.065435461232829062 1102 -0.074900434780737768
		 1103 -0.083868212356808192 1104 -0.091621876992398099 1105 -0.098363458022288519
		 1106 -0.10397773053298737 1107 -0.10899610004929899 1108 -0.11410388059171367 1207 0.018616787969684911
		 1208 0.017028797573307886 1209 0.015691377966836173 1210 0.014586005357972942 1211 0.01459295881769096
		 1212 0.014461139143696844 1213 0.014474715411585404 1214 0.013976556760431413 1215 0.013300177225382348
		 1216 0.012550909389587805 1217 0.01175157244268088 1218 0.011010559302833123 1219 0.010033057925839417
		 1220 0.009058544984170247 1221 0.0082601313751954342 1222 0.0076994355318280583 1223 0.0069040344092760053
		 1224 0.0057821497558786517 1225 0.0044170787886784746;
createNode animCurveTL -n "marker_23_MKR_translateY";
	rename -uid "41693016-451B-AB54-6210-5383E6831EBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  1087 -0.12620026286942881 1088 -0.12773613885377039
		 1089 -0.12951272418391152 1090 -0.13008794632841264 1091 -0.13104310271099129 1092 -0.13199458184684476
		 1093 -0.13303432493248135 1094 -0.13351546505757039 1095 -0.13371125172298653 1096 -0.13299221891573981
		 1097 -0.13291626279992025 1098 -0.13262149616915014 1099 -0.13229938681120046 1100 -0.131600623912977
		 1101 -0.13210527771756125 1102 -0.13138772458349518 1103 -0.13062004878036099 1104 -0.12962822614015496
		 1105 -0.1286245378583703 1106 -0.12771334299274262 1107 -0.1272137732148188 1108 -0.12426803393691821
		 1207 -0.14622568007204212 1208 -0.14822118079949148 1209 -0.1509745584494529 1210 -0.15328718623264614
		 1211 -0.15686779944510626 1212 -0.15904021905510274 1213 -0.16100150611076064 1214 -0.16265461830037276
		 1215 -0.1642845777793942 1216 -0.16539541600058372 1217 -0.16627999665164472 1218 -0.16676899852268451
		 1219 -0.16687846783334498 1220 -0.16639157761897044 1221 -0.16542051216288406 1222 -0.16423321481895131
		 1223 -0.16292288438880176 1224 -0.16100497391747226 1225 -0.15917543722378219;
createNode animCurveTU -n "marker_23_MKR_enable";
	rename -uid "79083417-4F40-F320-8E5E-87AE378FD164";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1086 0 1087 1 1108 1 1109 0 1206 0 1207 1
		 1225 1 1226 0;
createNode animCurveTL -n "marker_24_MKR_translateX";
	rename -uid "793B791F-407D-1E5C-3406-15AA2AB53FDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 97 ".ktv[0:96]"  1110 -0.018233325405498102 1111 -0.023526611135568143
		 1112 -0.027722735514103036 1113 -0.030893247914716759 1114 -0.033118659736402156
		 1115 -0.034649711127591465 1116 -0.0354530848542573 1117 -0.035809006775676944 1118 -0.03565915334213654
		 1119 -0.035463954239237594 1120 -0.035197009810806645 1121 -0.03514875935693762 1122 -0.035235044720209552
		 1123 -0.035248473004635794 1124 -0.034419562992583641 1125 -0.032457965699818014
		 1126 -0.029783117470164544 1127 -0.02623310636055709 1128 -0.022251258814885155 1129 -0.018429993741824691
		 1130 -0.015016106661795481 1131 -0.011590216723533331 1132 -0.0081380099840094311
		 1133 -0.0045059282133745882 1134 -0.00062551691572476642 1135 0.0037746376347593813
		 1136 0.0085956070925606864 1137 0.013488684986074473 1138 0.01858506430027318 1139 0.023733477454268459
		 1140 0.028769319714407549 1141 0.033753114528963346 1142 0.038527195857766761 1143 0.043297409517239482
		 1144 0.047681131403009447 1145 0.051796177393920062 1146 0.055432599311429964 1147 0.058931673180573352
		 1148 0.062367461906356558 1149 0.065779989459943455 1150 0.068894260898390347 1151 0.071893407247573538
		 1152 0.074773016894813082 1153 0.077610603394675404 1154 0.080301216998507785 1155 0.082716783048929488
		 1156 0.085098719304447679 1157 0.087213260154845207 1158 0.089265116846518167 1159 0.091309319572417835
		 1160 0.093182886069788307 1161 0.095074024881848684 1162 0.096677283272855075 1163 0.098212726111047588
		 1164 0.099690449825713401 1165 0.10104678737134176 1166 0.10231755901096551 1167 0.10357474880981177
		 1168 0.1046371906901773 1169 0.10574850089514809 1170 0.1067923467171924 1171 0.10765826181162907
		 1172 0.1084292808857299 1173 0.10914247666035271 1174 0.10992709899829634 1175 0.11071850053421572
		 1176 0.1113638802986292 1177 0.11181296859222178 1178 0.11225338288789821 1179 0.11264984019813418
		 1180 0.1130626186243856 1181 0.11380533685514338 1182 0.11486385300461777 1183 0.11630487944660628
		 1184 0.11825084572735123 1185 0.12054116872407616 1186 0.12302973778292203 1187 0.12546431895735732
		 1188 0.12762456227791164 1189 0.12952822379695594 1190 0.1315132029532885 1191 0.13341700587672811
		 1192 0.13531007627689962 1193 0.13702210826925976 1194 0.13838484280267349 1195 0.13920954389705498
		 1196 0.13950647890605528 1197 0.13926028874501351 1198 0.13852198200467192 1199 0.13717979349853116
		 1200 0.13521002414367922 1201 0.13271455434558654 1202 0.13009287737179309 1203 0.12761792947561268
		 1204 0.12607212333916895 1205 0.12576083123530146 1206 0.12676345138272738;
createNode animCurveTL -n "marker_24_MKR_translateY";
	rename -uid "FD912DA3-4187-3161-9384-69BAB67644AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 97 ".ktv[0:96]"  1110 -0.038433478287881573 1111 -0.038944736998989149
		 1112 -0.039689301119260445 1113 -0.040373018002954952 1114 -0.040946820530271877
		 1115 -0.041547846444307146 1116 -0.042116760724035085 1117 -0.042629189795223899
		 1118 -0.042139544353385239 1119 -0.042708020018924098 1120 -0.04320493865321251 1121 -0.043849780613250899
		 1122 -0.044404595474088038 1123 -0.044993056207853155 1124 -0.045039762281577134
		 1125 -0.044503066484084086 1126 -0.044166982107277042 1127 -0.042941657104227982
		 1128 -0.041208360262393218 1129 -0.039346561056788076 1130 -0.037625603098256577
		 1131 -0.035375975974647311 1132 -0.033097370495467293 1133 -0.031074445772230064
		 1134 -0.029303941340199202 1135 -0.02802208608618606 1136 -0.026757688621315834 1137 -0.025872329313804787
		 1138 -0.025127523529282658 1139 -0.024273279592883557 1140 -0.023942392485078123
		 1141 -0.023682991027442535 1142 -0.023496823013735679 1143 -0.023393699287579617
		 1144 -0.023633178620869 1145 -0.023736966227458967 1146 -0.023721888962539628 1147 -0.024343134751661333
		 1148 -0.024848237735016765 1149 -0.025242902171103865 1150 -0.025854411146251643
		 1151 -0.026210776804828806 1152 -0.026965639978824951 1153 -0.027334523475229078
		 1154 -0.028036501237651557 1155 -0.028948832967464033 1156 -0.029998836220624492
		 1157 -0.031256673695452042 1158 -0.03247790549712376 1159 -0.033922519331865741 1160 -0.035123948648146552
		 1161 -0.036193040407786536 1162 -0.037171946800464428 1163 -0.037938054738308302
		 1164 -0.038843500098826977 1165 -0.039217867245291804 1166 -0.040435103173618259
		 1167 -0.041457093705020709 1168 -0.04261765445116461 1169 -0.044228330059797316 1170 -0.045338127602535916
		 1171 -0.046831042639246645 1172 -0.048492125571168887 1173 -0.049996920624446883
		 1174 -0.051476493020460479 1175 -0.052660024289751695 1176 -0.053825276588643112
		 1177 -0.054472581941739373 1178 -0.055384144318178841 1179 -0.055740300400995313
		 1180 -0.055904048851952881 1181 -0.056024186484363081 1182 -0.05590644886453483 1183 -0.055942830545120115
		 1184 -0.055995068697110739 1185 -0.055890515106701788 1186 -0.055919831583971125
		 1187 -0.055895727650832505 1188 -0.055851977013995746 1189 -0.055679050327773538
		 1190 -0.055324109100542307 1191 -0.055486499775395159 1192 -0.055369716483149589
		 1193 -0.055277834067698928 1194 -0.054919649127985415 1195 -0.054589578000170225
		 1196 -0.054754773582550542 1197 -0.054706789653202192 1198 -0.054835919291311042
		 1199 -0.055373250169408084 1200 -0.055997421004690795 1201 -0.057198036126746177
		 1202 -0.058395716221181782 1203 -0.060082873715774088 1204 -0.061214674088480248
		 1205 -0.062600747089955222 1206 -0.065002840555203723;
createNode animCurveTU -n "marker_24_MKR_enable";
	rename -uid "8BAC93D6-4775-D71E-CA17-D18B0998121B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1109 0 1110 1 1206 1 1207 0;
createNode animCurveTA -n "first_CTRL_rotateY";
	rename -uid "0E1E51D2-4BA8-E20A-8D65-8AB7ECC91796";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1001 -189.33700180384534 1060 -192.85387176815991
		 1081 -244.23798390341855 1096 -368.33995593402642 1113 -441.36298028852372 1119 -443.79260691313658
		 1139 -460.88298247506339 1177 -459.50753123489062 1197 -443.25230274500137 1212 -405.91636485754225
		 1225 -287.59190549261405 1237 -230.20511886948458 1387 -229.6287706440242;
createNode animCurveTA -n "second_CTRL_rotateZ";
	rename -uid "F3FD4280-4B6F-EAA9-6FE7-4D87E2D2B45B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1001 -51.256857825764236 1019 -50.110923156382057
		 1056 -18.512175515161001 1081 -15.413145550132349 1111 -18.4907659939825 1144 -34.749258633604256
		 1177 -36.565286931574818 1235 -16.878175903358816 1250 -51.464808626534541 1257 -48.997527795533259
		 1297 -53.855116282456628 1318 -12.314074898493132 1387 -12.314074898493132;
createNode animCurveTA -n "third_CTRL_rotateZ";
	rename -uid "44D1C858-43BE-49F0-B740-24B0668EAA0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1001 -71.26720001352885 1031 -83.744319866211924
		 1056 -128.01264172752127 1065 -145.64157199401959 1113 -150.02249791021129 1139 -131.15984513484602
		 1177 -132.07388070866574 1217 -147.80843687463275 1250 -106.3368966771143 1295 -93.200388112618697
		 1319 -148.55415235425923 1387 -148.55415235425923;
createNode animCurveTA -n "fourth_CTRL_rotateY";
	rename -uid "57ED45F4-4A2D-BDD3-7C21-19BC17C998B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1001 -36.684602435505234 1025 -6.8269580390708642
		 1056 -16.623014192904936 1065 -10.320150207714756 1099 -8.7401340666717147 1130 78.903445941132318
		 1174 73.980583104970151 1212 -1.761190275588391 1249 6.2620458790112989;
createNode useBackground -n "useBackground2";
	rename -uid "6242D9F6-48DE-F4D6-F07E-1EB521356400";
createNode shadingEngine -n "useBackground2SG";
	rename -uid "E0CFB396-4590-E526-7436-FCA35EA26C4C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "9776577C-4C71-F913-84CB-0E9D731AAEB1";
createNode shapeEditorManager -n "robotArm_rig:shapeEditorManager";
	rename -uid "B575880E-4D21-4315-C5FC-21A4A3565983";
createNode poseInterpolatorManager -n "robotArm_rig:poseInterpolatorManager";
	rename -uid "0DD68DD5-495F-2D04-DF53-579E6F23434E";
createNode renderLayerManager -n "robotArm_rig:renderLayerManager";
	rename -uid "1115D2D6-4170-774C-2C95-619D8F474B1E";
createNode renderLayer -n "robotArm_rig:defaultRenderLayer";
	rename -uid "5BE7BA26-4A4D-7ADC-DE3B-62A43EF76E4B";
	setAttr ".g" yes;
createNode shadingEngine -n "robotArm_rig:RX160_HB_170:color_ff8000";
	rename -uid "55ED7168-4CF6-D749-F1C5-648D9BEA7B9F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160_HB_170:materialInfo1";
	rename -uid "32ABBF83-4758-69C6-72BC-80B41F219B4F";
createNode lambert -n "robotArm_rig:RX160_HB_170:color_ff8001";
	rename -uid "142293DE-4FC9-F769-1642-0080AACA8B00";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160_HB_171:color_ff8000";
	rename -uid "E78FF035-4F78-95FA-21E3-F588778C8D00";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160_HB_171:materialInfo1";
	rename -uid "7269C33F-4077-1B26-8AD2-7DA2B12155FD";
createNode lambert -n "robotArm_rig:RX160_HB_171:color_ff8001";
	rename -uid "1DDE3FC7-4E60-323D-C238-8684780BA808";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160_HB_172:color_ff8000";
	rename -uid "90BCD4F1-4570-6182-8893-3F88F36C67F0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160_HB_172:materialInfo1";
	rename -uid "66C3C2A6-4EB3-8F42-3A84-05B531D7D811";
createNode lambert -n "robotArm_rig:RX160_HB_172:color_ff8001";
	rename -uid "168E053E-4FA9-4D6C-0398-7AA636F51E37";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160_HB_173:color_ff8000";
	rename -uid "2FB7A72C-42AA-B845-4DA2-73B6782445BC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160_HB_173:materialInfo1";
	rename -uid "32EE28DE-4B0B-7D8A-EF98-43B1F09B5921";
createNode lambert -n "robotArm_rig:RX160_HB_173:color_ff8001";
	rename -uid "3DF7833A-4D94-1093-7592-15A79A9979FC";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160_HB_174:color_ff8000";
	rename -uid "255648D9-4ACB-7BC2-A80A-0785405854F1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160_HB_174:materialInfo1";
	rename -uid "974AD98F-473F-ADDC-671E-2E93D5D69C1A";
createNode lambert -n "robotArm_rig:RX160_HB_174:color_ff8001";
	rename -uid "DC290958-4BBB-50D4-EB50-EAB973EAACB5";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160_HB_168:color_ff8000";
	rename -uid "409F33E6-49DC-0310-D764-F2B01E074137";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160_HB_168:materialInfo1";
	rename -uid "0405CBDC-476D-783F-4918-FCA97574E540";
createNode lambert -n "robotArm_rig:RX160_HB_168:color_ff8001";
	rename -uid "672FFE0E-4E29-CDB1-BD88-7FBA1F0BECB4";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160_HB_169:color_ff8000";
	rename -uid "3C8E07A5-4010-8B27-D1E2-37AD7D47E0F8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160_HB_169:materialInfo1";
	rename -uid "125DA589-491B-0254-FB68-4D8D809A2ED2";
createNode lambert -n "robotArm_rig:RX160_HB_169:color_ff8001";
	rename -uid "55163504-4119-9A51-E076-EFA4F2866D26";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160L_HB_173:color_ff8000";
	rename -uid "DBDBE1DC-46A0-B1B4-FDE9-5FB1B1798014";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160L_HB_173:materialInfo1";
	rename -uid "28110EBA-4BA4-28DB-9887-629B0CC57F76";
createNode lambert -n "robotArm_rig:RX160L_HB_173:color_ff8001";
	rename -uid "E8C4CDFB-46B9-767F-5654-00B6C6652AFD";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160L_HB_174:color_ff8000";
	rename -uid "FF02BA67-43F2-DD62-684F-25B5B2629874";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160L_HB_174:materialInfo1";
	rename -uid "0F2AA70E-41F8-5CC3-F2B5-4E9F0798F678";
createNode lambert -n "robotArm_rig:RX160L_HB_174:color_ff8001";
	rename -uid "894A53D3-4FC4-85C6-617E-94BFDF15BADE";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160L_HB_175:color_ff8000";
	rename -uid "58FEB68B-4D7E-A63B-F239-39A0F3F2D46E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160L_HB_175:materialInfo1";
	rename -uid "3E454A1F-4D94-A2F1-FE18-AD90510AEDC1";
createNode lambert -n "robotArm_rig:RX160L_HB_175:color_ff8001";
	rename -uid "E7C49058-4300-6AB7-91E0-3795D71A7B1C";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode renderLayerManager -n "robotArm_rig:pasted__renderLayerManager";
	rename -uid "8F80D2A9-4711-5893-1648-3183217F5DDB";
createNode renderLayer -n "robotArm_rig:pasted__defaultRenderLayer";
	rename -uid "68176FAE-4D41-C63E-FB8A-9399628E6698";
	setAttr ".g" yes;
createNode shadingEngine -n "robotArm_rig:RX160_HB_177:color_ff8000";
	rename -uid "11731F0A-4B39-A6DE-56BD-39B81749F886";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160_HB_177:materialInfo1";
	rename -uid "09F27659-4493-E155-058D-F894C2028A62";
createNode lambert -n "robotArm_rig:RX160_HB_177:color_ff8001";
	rename -uid "7EBA40FF-44BF-4386-BD64-FA9C20718E1B";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160_HB_178:color_ff8000";
	rename -uid "B944337A-4C7C-529B-2D95-4BBCEF7B42EF";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160_HB_178:materialInfo1";
	rename -uid "B4113200-4151-F8B6-FCEB-AEA80A46F7AF";
createNode lambert -n "robotArm_rig:RX160_HB_178:color_ff8001";
	rename -uid "6ACAD08B-4F1D-5722-ABEE-8BB0347B5234";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160_HB_179:color_ff8000";
	rename -uid "51DA32D1-443B-F1D4-6924-2F9866710D84";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160_HB_179:materialInfo1";
	rename -uid "68899998-4A17-98C5-ACEE-EDA8A5FDABF8";
createNode lambert -n "robotArm_rig:RX160_HB_179:color_ff8001";
	rename -uid "C561EE2D-4CF9-962D-8A54-DB8B56FE4B51";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160_HB_180:color_ff8000";
	rename -uid "D7068638-4222-C1CE-0784-828BA6239655";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160_HB_180:materialInfo1";
	rename -uid "D7A16926-4E76-26D7-CBF7-0D979318D3A2";
createNode lambert -n "robotArm_rig:RX160_HB_180:color_ff8001";
	rename -uid "D17CBB68-4572-6931-0892-98B0D8CBF011";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160_HB_181:color_ff8000";
	rename -uid "A4B3E335-49A5-F535-3980-F08C095690DE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160_HB_181:materialInfo1";
	rename -uid "424AF3FA-42C1-19CA-E837-AAAB29467052";
createNode lambert -n "robotArm_rig:RX160_HB_181:color_ff8001";
	rename -uid "77AF6720-4315-8AB6-611D-72BCB8AA1360";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160_HB_175:color_ff8000";
	rename -uid "93333CAF-4440-D56B-011C-DEA150E0A332";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160_HB_175:materialInfo1";
	rename -uid "4EAC7643-4AA8-EC88-0EF8-47A179510254";
createNode lambert -n "robotArm_rig:RX160_HB_175:color_ff8001";
	rename -uid "D8A0E6AF-470F-3B06-C18D-DDA6DFBB6623";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160_HB_176:color_ff8000";
	rename -uid "F2B9FCB4-4B6B-5B36-0E16-6AAE23732618";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160_HB_176:materialInfo1";
	rename -uid "647E5D38-4E52-C32B-9FF2-E7A5294763D8";
createNode lambert -n "robotArm_rig:RX160_HB_176:color_ff8001";
	rename -uid "E680A7A1-4890-5435-8F5C-5AB116910688";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160L_HB_176:color_ff8000";
	rename -uid "76C6FF56-461E-3F1A-A2CE-CFBC1FE71074";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160L_HB_176:materialInfo1";
	rename -uid "34A18F8F-44CD-39A7-136E-E1AB0A67EB66";
createNode lambert -n "robotArm_rig:RX160L_HB_176:color_ff8001";
	rename -uid "EF6437FC-4C38-431B-3FEF-3997C1754254";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160L_HB_177:color_ff8000";
	rename -uid "CA03B4FC-43F2-5451-D57F-2E86F16F182F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160L_HB_177:materialInfo1";
	rename -uid "EE917BE0-41A0-D5C4-E829-E084CD0BBC97";
createNode lambert -n "robotArm_rig:RX160L_HB_177:color_ff8001";
	rename -uid "4434850A-486B-F23D-D416-51B21CE07734";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:RX160L_HB_178:color_ff8000";
	rename -uid "ADB2EA0F-4E09-1942-E7E5-048097A868EB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:RX160L_HB_178:materialInfo1";
	rename -uid "E327AE9C-4D0F-36C1-FE9B-E389BB59D39E";
createNode lambert -n "robotArm_rig:RX160L_HB_178:color_ff8001";
	rename -uid "35D33281-45B1-5579-B676-DFB266805FC2";
	setAttr ".c" -type "float3" 1 0.50196081 0 ;
	setAttr ".it" -type "float3" 1 1 1 ;
	setAttr ".ambc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
createNode shadingEngine -n "robotArm_rig:texturedFacets";
	rename -uid "9A489B69-4631-6925-1AB0-F1B7D82751C9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:materialInfo1";
	rename -uid "25970F6B-4895-3C54-E00F-25B082EB8A57";
createNode checker -n "robotArm_rig:defaultPolygonTexture";
	rename -uid "E16997CB-4E96-3339-E36B-7C8C76677281";
createNode lambert -n "robotArm_rig:defaultPolygonShader";
	rename -uid "E512C5AF-41E1-743B-AB9A-7696B68B58F7";
createNode lambert -n "robotArm_rig:robot_SHD";
	rename -uid "3FF2FA1C-4083-79E2-CAEF-80A610C1C3FF";
	setAttr ".dc" 1;
createNode shadingEngine -n "robotArm_rig:lambert2SG";
	rename -uid "4B1D54BA-4060-9BCA-4AEB-7CAFBDA62DC3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "robotArm_rig:materialInfo2";
	rename -uid "B852291C-4DC8-5B08-F57B-EFB14BFC676F";
createNode checker -n "robotArm_rig:checker1";
	rename -uid "2E00A43F-4A1A-DC28-A2BA-43945AC06F5C";
	setAttr ".cg" -type "float3" 0.71084338 0.71084338 0.71084338 ;
	setAttr ".c1" -type "float3" 0.66867471 0.66867471 0.66867471 ;
	setAttr ".c2" -type "float3" 0.33132529 0.33132529 0.33132529 ;
createNode place2dTexture -n "robotArm_rig:place2dTexture1";
	rename -uid "B98EFACE-4632-15D4-88E1-0B8A469D29AB";
	setAttr ".re" -type "float2" 8 8 ;
select -ne :time1;
	setAttr ".o" 1169;
	setAttr ".unw" 1169;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 26 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 29 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :standardSurface1;
	setAttr ".b" 0.80000001192092896;
	setAttr ".bc" -type "float3" 1 1 1 ;
	setAttr ".s" 0.20000000298023224;
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
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya-legacy/config.ocio";
	setAttr ".vtn" -type "string" "sRGB gamma (legacy)";
	setAttr ".vn" -type "string" "sRGB gamma";
	setAttr ".dn" -type "string" "legacy";
	setAttr ".wsn" -type "string" "scene-linear Rec 709/sRGB";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "sRGB gamma (legacy)";
	setAttr ".potn" -type "string" "sRGB gamma (legacy)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "trackCamera_translateY.o" "trackCamera.ty";
connectAttr "trackCamera_translateX.o" "trackCamera.tx";
connectAttr "trackCamera_translateZ.o" "trackCamera.tz";
connectAttr "trackCamera_rotateZ.o" "trackCamera.rz";
connectAttr "trackCamera_rotateY.o" "trackCamera.ry";
connectAttr "trackCamera_rotateX.o" "trackCamera.rx";
connectAttr "imagePlaneShape1.msg" "trackCameraShape.ip" -na;
connectAttr "lensDistortionToggle1.olns" "trackCameraShape.olns";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr "expression1.out[0]" "imagePlaneShape1.fe";
connectAttr "mmMarkerScale1.ot" "markerGroup1.t";
connectAttr "mmMarkerScale1.os" "markerGroup1.s";
connectAttr "marker_04_MKR_translateX.o" "marker_04_MKR.tx" -l on;
connectAttr "marker_04_MKR_translateY.o" "marker_04_MKR.ty" -l on;
connectAttr "marker_04_MKR_enable.o" "marker_04_MKR.enable" -l on;
connectAttr "marker_04_MKR.enable" "marker_04_MKR.lodv";
connectAttr "bundle_04_BND.msg" "marker_04_MKR.bundle";
connectAttr "trackCameraShape.olns" "marker_04_MKR.ilns";
connectAttr "marker_06_MKR_translateX.o" "marker_06_MKR.tx" -l on;
connectAttr "marker_06_MKR_translateY.o" "marker_06_MKR.ty" -l on;
connectAttr "marker_06_MKR_enable.o" "marker_06_MKR.enable" -l on;
connectAttr "marker_06_MKR.enable" "marker_06_MKR.lodv";
connectAttr "bundle_06_BND.msg" "marker_06_MKR.bundle";
connectAttr "trackCameraShape.olns" "marker_06_MKR.ilns";
connectAttr "marker_18_MKR_translateX.o" "marker_18_MKR.tx" -l on;
connectAttr "marker_18_MKR_translateY.o" "marker_18_MKR.ty" -l on;
connectAttr "marker_18_MKR_enable.o" "marker_18_MKR.enable" -l on;
connectAttr "marker_18_MKR.enable" "marker_18_MKR.lodv";
connectAttr "bundle_18_BND.msg" "marker_18_MKR.bundle";
connectAttr "trackCameraShape.olns" "marker_18_MKR.ilns";
connectAttr "marker_19_MKR_translateX.o" "marker_19_MKR.tx" -l on;
connectAttr "marker_19_MKR_translateY.o" "marker_19_MKR.ty" -l on;
connectAttr "marker_19_MKR_enable.o" "marker_19_MKR.enable" -l on;
connectAttr "marker_19_MKR.enable" "marker_19_MKR.lodv";
connectAttr "bundle_19_BND.msg" "marker_19_MKR.bundle";
connectAttr "trackCameraShape.olns" "marker_19_MKR.ilns";
connectAttr "marker_23_MKR_translateX.o" "marker_23_MKR.tx" -l on;
connectAttr "marker_23_MKR_translateY.o" "marker_23_MKR.ty" -l on;
connectAttr "marker_23_MKR_enable.o" "marker_23_MKR.enable" -l on;
connectAttr "marker_23_MKR.enable" "marker_23_MKR.lodv";
connectAttr "bundle_23_BND.msg" "marker_23_MKR.bundle";
connectAttr "trackCameraShape.olns" "marker_23_MKR.ilns";
connectAttr "marker_24_MKR_translateX.o" "marker_24_MKR.tx" -l on;
connectAttr "marker_24_MKR_translateY.o" "marker_24_MKR.ty" -l on;
connectAttr "marker_24_MKR_enable.o" "marker_24_MKR.enable" -l on;
connectAttr "marker_24_MKR.enable" "marker_24_MKR.lodv";
connectAttr "bundle_24_BND.msg" "marker_24_MKR.bundle";
connectAttr "trackCameraShape.olns" "marker_24_MKR.ilns";
connectAttr "first_CTRL_rotateY.o" "robotArm_rig:first_CTRL.ry";
connectAttr "second_CTRL_rotateZ.o" "robotArm_rig:second_CTRL.rz";
connectAttr "third_CTRL_rotateZ.o" "robotArm_rig:third_CTRL.rz";
connectAttr "fourth_CTRL_rotateY.o" "robotArm_rig:fourth_CTRL.ry";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "useBackground1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "useBackground2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160_HB_170:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160_HB_171:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160_HB_172:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160_HB_173:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160_HB_174:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160_HB_168:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160_HB_169:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160L_HB_173:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160L_HB_174:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160L_HB_175:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160_HB_177:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160_HB_178:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160_HB_179:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160_HB_180:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160_HB_181:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160_HB_175:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160_HB_176:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160L_HB_176:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160L_HB_177:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:RX160L_HB_178:color_ff8000.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:texturedFacets.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "robotArm_rig:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "useBackground1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "useBackground2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160_HB_170:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160_HB_171:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160_HB_172:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160_HB_173:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160_HB_174:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160_HB_168:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160_HB_169:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160L_HB_173:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160L_HB_174:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160L_HB_175:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160_HB_177:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160_HB_178:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160_HB_179:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160_HB_180:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160_HB_181:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160_HB_175:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160_HB_176:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160L_HB_176:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160L_HB_177:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:RX160L_HB_178:color_ff8000.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:texturedFacets.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "robotArm_rig:lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "useBackground1.oc" "useBackground1SG.ss";
connectAttr "useBackground1SG.msg" "materialInfo1.sg";
connectAttr "useBackground1.msg" "materialInfo1.m";
connectAttr "useBackground1.msg" "materialInfo1.t" -na;
connectAttr ":time1.o" "expression1.tim";
connectAttr "trackCameraShape.ilns" "lensDistortionToggle1.ilns";
connectAttr "markerGroup1.depth" "mmMarkerScale1.dpt";
connectAttr "markerGroup1.overscanX" "mmMarkerScale1.ovrscninvx";
connectAttr "markerGroup1.overscanY" "mmMarkerScale1.ovrscninvy";
connectAttr "trackCameraShape.fl" "mmMarkerScale1.fl";
connectAttr "trackCameraShape.cap" "mmMarkerScale1.cap";
connectAttr "trackCameraShape.fio" "mmMarkerScale1.fio";
connectAttr "robotArm_rig:root_CTRL.tx" "collection1.dnsm" -na;
connectAttr "robotArm_rig:root_CTRL.ty" "collection1.dnsm" -na;
connectAttr "robotArm_rig:root_CTRL.tz" "collection1.dnsm" -na;
connectAttr "robotArm_rig:first_CTRL.ry" "collection1.dnsm" -na;
connectAttr "bundle_24_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle_24_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle_24_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle_23_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle_23_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle_23_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle_19_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle_19_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle_19_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle_18_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle_18_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle_18_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle_06_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle_06_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle_06_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle_04_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle_04_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle_04_BND.tx" "collection1.dnsm" -na;
connectAttr "marker_24_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_23_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_19_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_18_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_06_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_04_MKR.iog" "collection1.dsm" -na;
connectAttr "useBackground2.oc" "useBackground2SG.ss";
connectAttr "useBackground2SG.msg" "materialInfo2.sg";
connectAttr "useBackground2.msg" "materialInfo2.m";
connectAttr "useBackground2.msg" "materialInfo2.t" -na;
connectAttr "robotArm_rig:renderLayerManager.rlmi[0]" "robotArm_rig:defaultRenderLayer.rlid"
		;
connectAttr "robotArm_rig:RX160_HB_170:color_ff8001.oc" "robotArm_rig:RX160_HB_170:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160_HB_170:color_ff8000.msg" "robotArm_rig:RX160_HB_170:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160_HB_170:color_ff8001.msg" "robotArm_rig:RX160_HB_170:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160_HB_171:color_ff8001.oc" "robotArm_rig:RX160_HB_171:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160_HB_171:color_ff8000.msg" "robotArm_rig:RX160_HB_171:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160_HB_171:color_ff8001.msg" "robotArm_rig:RX160_HB_171:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160_HB_172:color_ff8001.oc" "robotArm_rig:RX160_HB_172:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160_HB_172:color_ff8000.msg" "robotArm_rig:RX160_HB_172:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160_HB_172:color_ff8001.msg" "robotArm_rig:RX160_HB_172:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160_HB_173:color_ff8001.oc" "robotArm_rig:RX160_HB_173:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160_HB_173:color_ff8000.msg" "robotArm_rig:RX160_HB_173:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160_HB_173:color_ff8001.msg" "robotArm_rig:RX160_HB_173:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160_HB_174:color_ff8001.oc" "robotArm_rig:RX160_HB_174:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160_HB_174:color_ff8000.msg" "robotArm_rig:RX160_HB_174:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160_HB_174:color_ff8001.msg" "robotArm_rig:RX160_HB_174:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160_HB_168:color_ff8001.oc" "robotArm_rig:RX160_HB_168:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160_HB_168:color_ff8000.msg" "robotArm_rig:RX160_HB_168:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160_HB_168:color_ff8001.msg" "robotArm_rig:RX160_HB_168:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160_HB_169:color_ff8001.oc" "robotArm_rig:RX160_HB_169:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160_HB_169:color_ff8000.msg" "robotArm_rig:RX160_HB_169:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160_HB_169:color_ff8001.msg" "robotArm_rig:RX160_HB_169:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160L_HB_173:color_ff8001.oc" "robotArm_rig:RX160L_HB_173:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160L_HB_173:color_ff8000.msg" "robotArm_rig:RX160L_HB_173:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160L_HB_173:color_ff8001.msg" "robotArm_rig:RX160L_HB_173:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160L_HB_174:color_ff8001.oc" "robotArm_rig:RX160L_HB_174:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160L_HB_174:color_ff8000.msg" "robotArm_rig:RX160L_HB_174:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160L_HB_174:color_ff8001.msg" "robotArm_rig:RX160L_HB_174:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160L_HB_175:color_ff8001.oc" "robotArm_rig:RX160L_HB_175:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160L_HB_175:color_ff8000.msg" "robotArm_rig:RX160L_HB_175:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160L_HB_175:color_ff8001.msg" "robotArm_rig:RX160L_HB_175:materialInfo1.m"
		;
connectAttr "robotArm_rig:pasted__renderLayerManager.rlmi[0]" "robotArm_rig:pasted__defaultRenderLayer.rlid"
		;
connectAttr "robotArm_rig:RX160_HB_177:color_ff8001.oc" "robotArm_rig:RX160_HB_177:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160_HB_177:color_ff8000.msg" "robotArm_rig:RX160_HB_177:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160_HB_177:color_ff8001.msg" "robotArm_rig:RX160_HB_177:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160_HB_178:color_ff8001.oc" "robotArm_rig:RX160_HB_178:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160_HB_178:color_ff8000.msg" "robotArm_rig:RX160_HB_178:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160_HB_178:color_ff8001.msg" "robotArm_rig:RX160_HB_178:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160_HB_179:color_ff8001.oc" "robotArm_rig:RX160_HB_179:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160_HB_179:color_ff8000.msg" "robotArm_rig:RX160_HB_179:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160_HB_179:color_ff8001.msg" "robotArm_rig:RX160_HB_179:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160_HB_180:color_ff8001.oc" "robotArm_rig:RX160_HB_180:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160_HB_180:color_ff8000.msg" "robotArm_rig:RX160_HB_180:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160_HB_180:color_ff8001.msg" "robotArm_rig:RX160_HB_180:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160_HB_181:color_ff8001.oc" "robotArm_rig:RX160_HB_181:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160_HB_181:color_ff8000.msg" "robotArm_rig:RX160_HB_181:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160_HB_181:color_ff8001.msg" "robotArm_rig:RX160_HB_181:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160_HB_175:color_ff8001.oc" "robotArm_rig:RX160_HB_175:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160_HB_175:color_ff8000.msg" "robotArm_rig:RX160_HB_175:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160_HB_175:color_ff8001.msg" "robotArm_rig:RX160_HB_175:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160_HB_176:color_ff8001.oc" "robotArm_rig:RX160_HB_176:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160_HB_176:color_ff8000.msg" "robotArm_rig:RX160_HB_176:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160_HB_176:color_ff8001.msg" "robotArm_rig:RX160_HB_176:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160L_HB_176:color_ff8001.oc" "robotArm_rig:RX160L_HB_176:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160L_HB_176:color_ff8000.msg" "robotArm_rig:RX160L_HB_176:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160L_HB_176:color_ff8001.msg" "robotArm_rig:RX160L_HB_176:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160L_HB_177:color_ff8001.oc" "robotArm_rig:RX160L_HB_177:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160L_HB_177:color_ff8000.msg" "robotArm_rig:RX160L_HB_177:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160L_HB_177:color_ff8001.msg" "robotArm_rig:RX160L_HB_177:materialInfo1.m"
		;
connectAttr "robotArm_rig:RX160L_HB_178:color_ff8001.oc" "robotArm_rig:RX160L_HB_178:color_ff8000.ss"
		;
connectAttr "robotArm_rig:RX160L_HB_178:color_ff8000.msg" "robotArm_rig:RX160L_HB_178:materialInfo1.sg"
		;
connectAttr "robotArm_rig:RX160L_HB_178:color_ff8001.msg" "robotArm_rig:RX160L_HB_178:materialInfo1.m"
		;
connectAttr "robotArm_rig:defaultPolygonShader.oc" "robotArm_rig:texturedFacets.ss"
		;
connectAttr "robotArm_rig:texturedFacets.msg" "robotArm_rig:materialInfo1.sg";
connectAttr "robotArm_rig:defaultPolygonShader.msg" "robotArm_rig:materialInfo1.m"
		;
connectAttr "robotArm_rig:defaultPolygonTexture.msg" "robotArm_rig:materialInfo1.t"
		 -na;
connectAttr "robotArm_rig:defaultPolygonTexture.oc" "robotArm_rig:defaultPolygonShader.c"
		;
connectAttr "robotArm_rig:checker1.oc" "robotArm_rig:robot_SHD.c";
connectAttr "robotArm_rig:root_CTRL.transparent" "robotArm_rig:robot_SHD.itr";
connectAttr "robotArm_rig:root_CTRL.transparent" "robotArm_rig:robot_SHD.itg";
connectAttr "robotArm_rig:root_CTRL.transparent" "robotArm_rig:robot_SHD.itb";
connectAttr "robotArm_rig:robot_SHD.oc" "robotArm_rig:lambert2SG.ss";
connectAttr "robotArm_rig:lambert2SG.msg" "robotArm_rig:materialInfo2.sg";
connectAttr "robotArm_rig:robot_SHD.msg" "robotArm_rig:materialInfo2.m";
connectAttr "robotArm_rig:checker1.msg" "robotArm_rig:materialInfo2.t" -na;
connectAttr "robotArm_rig:place2dTexture1.o" "robotArm_rig:checker1.uv";
connectAttr "robotArm_rig:place2dTexture1.ofs" "robotArm_rig:checker1.fs";
connectAttr "useBackground1SG.pa" ":renderPartition.st" -na;
connectAttr "useBackground2SG.pa" ":renderPartition.st" -na;
connectAttr "robotArm_rig:RX160_HB_170:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160_HB_171:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160_HB_172:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160_HB_173:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160_HB_174:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160_HB_168:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160_HB_169:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160L_HB_173:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160L_HB_174:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160L_HB_175:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160_HB_177:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160_HB_178:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160_HB_179:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160_HB_180:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160_HB_181:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160_HB_175:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160_HB_176:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160L_HB_176:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160L_HB_177:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:RX160L_HB_178:color_ff8000.pa" ":renderPartition.st" -na
		;
connectAttr "robotArm_rig:texturedFacets.pa" ":renderPartition.st" -na;
connectAttr "robotArm_rig:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "useBackground1.msg" ":defaultShaderList1.s" -na;
connectAttr "useBackground2.msg" ":defaultShaderList1.s" -na;
connectAttr "robotArm_rig:RX160_HB_170:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160_HB_171:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160_HB_172:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160_HB_173:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160_HB_174:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160_HB_168:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160_HB_169:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160L_HB_173:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160L_HB_174:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160L_HB_175:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160_HB_177:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160_HB_178:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160_HB_179:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160_HB_180:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160_HB_181:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160_HB_175:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160_HB_176:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160L_HB_176:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160L_HB_177:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:RX160L_HB_178:color_ff8001.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "robotArm_rig:defaultPolygonShader.msg" ":defaultShaderList1.s" -na;
connectAttr "robotArm_rig:robot_SHD.msg" ":defaultShaderList1.s" -na;
connectAttr "robotArm_rig:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "robotArm_rig:defaultRenderLayer.msg" ":defaultRenderingList1.r" -na
		;
connectAttr "robotArm_rig:pasted__defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "robotArm_rig:defaultPolygonTexture.msg" ":defaultTextureList1.tx" -na
		;
connectAttr "robotArm_rig:checker1.msg" ":defaultTextureList1.tx" -na;
// End of robotArm_v002.ma
