//Maya ASCII 2024 scene
//Name: test_cube2_d_marker_bundles.ma
//Last modified: Fri, Oct 17, 2025 08:46:37 AM
//Codeset: UTF-8
requires maya "2024";
requires -nodeType "mmMarkerScale" -nodeType "mmLensModelToggle" -nodeType "mmMarkerShape"
		 -nodeType "mmBundleShape" -nodeType "mmMarkerGroupTransform" -nodeType "mmMarkerTransform"
		 -dataType "MMLensData" "mmSolver" "0.6.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Linux 5.14.0-570.41.1.el9_6.x86_64 #1 SMP PREEMPT_DYNAMIC Thu Sep 11 06:52:33 EDT 2025 x86_64";
fileInfo "UUID" "23E71080-0004-A6BA-68F1-67BD00000CD9";
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
createNode mmMarkerGroupTransform -n "markerGroup1" -p "camera1";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000A79";
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
createNode mmMarkerTransform -n "pCube1_locator1_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000A8E";
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
	setAttr ".t" -type "double3" -0.17556773046590823 0.26106471736508186 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube1|locator1";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube1_locator1_MKRShape" -p "pCube1_locator1_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000A93";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator2_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AAF";
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
	setAttr ".t" -type "double3" 0.15333277458813321 0.31798980477828143 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube1|locator2";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube1_locator2_MKRShape" -p "pCube1_locator2_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AB4";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator3_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AD0";
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
	setAttr ".t" -type "double3" -0.17556773046590823 -0.26106471736508186 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube1|locator3";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube1_locator3_MKRShape" -p "pCube1_locator3_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AD5";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator4_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AF1";
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
	setAttr ".t" -type "double3" 0.15333277458813321 -0.31798980477828137 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube1|locator4";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube1_locator4_MKRShape" -p "pCube1_locator4_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AF6";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator5_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B12";
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
	setAttr ".t" -type "double3" -0.001163749044783835 0.19927633073387341 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube1|locator5";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube1_locator5_MKRShape" -p "pCube1_locator5_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B17";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator6_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B33";
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
	setAttr ".t" -type "double3" 0.26517608197618026 0.23081657388109278 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube1|locator6";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube1_locator6_MKRShape" -p "pCube1_locator6_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B38";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator7_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B54";
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
	setAttr ".t" -type "double3" -0.001163749044783835 -0.19927633073387335 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube1|locator7";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube1_locator7_MKRShape" -p "pCube1_locator7_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B59";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator8_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B75";
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
	setAttr ".t" -type "double3" 0.26517608197618026 -0.23081657388109283 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube1|locator8";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube1_locator8_MKRShape" -p "pCube1_locator8_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B7A";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator9_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B96";
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
	setAttr ".t" -type "double3" 0.39203291018350417 0.059973391635062656 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube2|locator9";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube2_locator9_MKRShape" -p "pCube2_locator9_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B9B";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator10_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BB7";
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
	setAttr ".t" -type "double3" 0.48106790904529695 0.062545547840929916 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube2|locator10";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube2_locator10_MKRShape" -p "pCube2_locator10_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BBC";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator11_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BD8";
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
	setAttr ".t" -type "double3" 0.39203291018350417 -0.059973391635062656 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube2|locator11";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube2_locator11_MKRShape" -p "pCube2_locator11_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BDD";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator12_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BF9";
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
	setAttr ".t" -type "double3" 0.48106790904529695 -0.062545547840929916 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube2|locator12";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube2_locator12_MKRShape" -p "pCube2_locator12_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BFE";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator13_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C1A";
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
	setAttr ".t" -type "double3" 0.40328898783798239 0.055985553327711046 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube2|locator13";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube2_locator13_MKRShape" -p "pCube2_locator13_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C1F";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator14_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C3B";
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
	setAttr ".t" -type "double3" 0.48661676214420668 0.058220644869958482 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube2|locator14";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube2_locator14_MKRShape" -p "pCube2_locator14_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C40";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator15_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C5C";
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
	setAttr ".t" -type "double3" 0.40328898783798239 -0.055985553327711102 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube2|locator15";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube2_locator15_MKRShape" -p "pCube2_locator15_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C61";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator16_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C7D";
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
	setAttr ".t" -type "double3" 0.48661676214420668 -0.058220644869958427 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|pCube2|locator16";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "pCube2_locator16_MKRShape" -p "pCube2_locator16_MKR";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C82";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1";
	rename -uid "4EC5E080-001A-42ED-68DC-566D000002AA";
	setAttr ".t" -type "double3" 0 0 -20 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-674100000A2A";
	setAttr ".t" -type "double3" 0 0 -101.10448170977782 ;
	setAttr ".s" -type "double3" 7.5 7.5 7.5 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A2B";
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
	rename -uid "23E71080-0004-A6BA-68F1-674100000A2C";
	setAttr ".t" -type "double3" -0.5 0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape9" -p "locator9";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A2D";
	setAttr -k off ".v";
createNode transform -n "locator10" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A2E";
	setAttr ".t" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape10" -p "locator10";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A2F";
	setAttr -k off ".v";
createNode transform -n "locator11" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A30";
	setAttr ".t" -type "double3" -0.5 -0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape11" -p "locator11";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A31";
	setAttr -k off ".v";
createNode transform -n "locator12" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A32";
	setAttr ".t" -type "double3" 0.5 -0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape12" -p "locator12";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A33";
	setAttr -k off ".v";
createNode transform -n "locator13" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A34";
	setAttr ".t" -type "double3" -0.5 0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape13" -p "locator13";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A35";
	setAttr -k off ".v";
createNode transform -n "locator14" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A36";
	setAttr ".t" -type "double3" 0.5 0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape14" -p "locator14";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A37";
	setAttr -k off ".v";
createNode transform -n "locator15" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A38";
	setAttr ".t" -type "double3" -0.5 -0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape15" -p "locator15";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A39";
	setAttr -k off ".v";
createNode transform -n "locator16" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A3A";
	setAttr ".t" -type "double3" 0.5 -0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape16" -p "locator16";
	rename -uid "23E71080-0004-A6BA-68F1-674100000A3B";
	setAttr -k off ".v";
createNode transform -n "pCube1_locator1_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000A7F";
	setAttr ".t" -type "double3" -3.75 3.75 -16.25 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube1_locator1_BNDShape" -p "pCube1_locator1_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000A84";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator1_BNDLocatorShape" -p "pCube1_locator1_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000A89";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator2_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AA0";
	setAttr ".t" -type "double3" 3.75 3.75 -16.25 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube1_locator2_BNDShape" -p "pCube1_locator2_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AA5";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator2_BNDLocatorShape" -p "pCube1_locator2_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AAA";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator3_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AC1";
	setAttr ".t" -type "double3" -3.75 -3.75 -16.25 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube1_locator3_BNDShape" -p "pCube1_locator3_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AC6";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator3_BNDLocatorShape" -p "pCube1_locator3_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000ACB";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator4_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AE2";
	setAttr ".t" -type "double3" 3.75 -3.75 -16.25 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube1_locator4_BNDShape" -p "pCube1_locator4_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AE7";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator4_BNDLocatorShape" -p "pCube1_locator4_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AEC";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator5_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B03";
	setAttr ".t" -type "double3" -3.75 3.75 -23.75 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube1_locator5_BNDShape" -p "pCube1_locator5_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B08";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator5_BNDLocatorShape" -p "pCube1_locator5_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B0D";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator6_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B24";
	setAttr ".t" -type "double3" 3.75 3.75 -23.75 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube1_locator6_BNDShape" -p "pCube1_locator6_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B29";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator6_BNDLocatorShape" -p "pCube1_locator6_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B2E";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator7_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B45";
	setAttr ".t" -type "double3" -3.75 -3.75 -23.75 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube1_locator7_BNDShape" -p "pCube1_locator7_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B4A";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator7_BNDLocatorShape" -p "pCube1_locator7_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B4F";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator8_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B66";
	setAttr ".t" -type "double3" 3.75 -3.75 -23.75 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube1_locator8_BNDShape" -p "pCube1_locator8_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B6B";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator8_BNDLocatorShape" -p "pCube1_locator8_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B70";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator9_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B87";
	setAttr ".t" -type "double3" -3.75 3.75 -97.354481709777815 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube2_locator9_BNDShape" -p "pCube2_locator9_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B8C";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator9_BNDLocatorShape" -p "pCube2_locator9_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B91";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator10_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BA8";
	setAttr ".t" -type "double3" 3.75 3.75 -97.354481709777815 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube2_locator10_BNDShape" -p "pCube2_locator10_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BAD";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator10_BNDLocatorShape" -p "pCube2_locator10_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BB2";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator11_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BC9";
	setAttr ".t" -type "double3" -3.75 -3.75 -97.354481709777815 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube2_locator11_BNDShape" -p "pCube2_locator11_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BCE";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator11_BNDLocatorShape" -p "pCube2_locator11_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BD3";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator12_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BEA";
	setAttr ".t" -type "double3" 3.75 -3.75 -97.354481709777815 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube2_locator12_BNDShape" -p "pCube2_locator12_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BEF";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator12_BNDLocatorShape" -p "pCube2_locator12_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BF4";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator13_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C0B";
	setAttr ".t" -type "double3" -3.75 3.75 -104.85448170977782 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube2_locator13_BNDShape" -p "pCube2_locator13_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C10";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator13_BNDLocatorShape" -p "pCube2_locator13_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C15";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator14_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C2C";
	setAttr ".t" -type "double3" 3.75 3.75 -104.85448170977782 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube2_locator14_BNDShape" -p "pCube2_locator14_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C31";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator14_BNDLocatorShape" -p "pCube2_locator14_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C36";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator15_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C4D";
	setAttr ".t" -type "double3" -3.75 -3.75 -104.85448170977782 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube2_locator15_BNDShape" -p "pCube2_locator15_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C52";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator15_BNDLocatorShape" -p "pCube2_locator15_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C57";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator16_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C6E";
	setAttr ".t" -type "double3" 3.75 -3.75 -104.85448170977782 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode mmBundleShape -n "pCube2_locator16_BNDShape" -p "pCube2_locator16_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C73";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator16_BNDLocatorShape" -p "pCube2_locator16_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C78";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "23E71080-0004-A6BA-68F1-673C00000A19";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "23E71080-0004-A6BA-68F1-673C00000A1A";
createNode displayLayer -n "defaultLayer";
	rename -uid "4EC5E080-001A-42ED-68DC-56030000029A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "23E71080-0004-A6BA-68F1-673C00000A1C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4EC5E080-001A-42ED-68DC-56040000029C";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "23E71080-0004-A6BA-68F1-673C00000A1E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "23E71080-0004-A6BA-68F1-673C00000A1F";
createNode animCurveTL -n "camera1_translateX";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 10;
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
	setAttr -s 2 ".ktv[0:1]"  1 0 101 29.999999999999996;
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
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2658\\n    -height 1473\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmImagePlane2DisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmLineDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmSkyDomeDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmBundleDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmMarkerDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2658\\n    -height 1473\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmImagePlane2DisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmLineDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmSkyDomeDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmBundleDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmMarkerDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
createNode mmLensModelToggle -n "lensDistortionToggle1";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000A78";
createNode mmMarkerScale -n "mmMarkerScale1";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000A7E";
	setAttr ".ovrscnmd" 1;
createNode animCurveTL -n "pCube1_locator1_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000A9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.22435942307782053 2 -0.22497265362238394 3 -0.22556957179322074 4 -0.2261498307041756 5 -0.22671308983349908
		 6 -0.22725901512723878 7 -0.2277872790972445 8 -0.2282975609137427 9 -0.22878954649243455 10 -0.22926292857608876 11 -0.22971740681060016 12 -0.23015268781549891 13 -0.23056848524889551 14 -0.23096451986686434
		 15 -0.2313405195772632 16 -0.23169621948800501 17 -0.23203136194979623 18 -0.23234569659337023 19 -0.23263898036124453 20 -0.23291097753404172 21 -0.23316145975141922 22 -0.23339020602765703 23 -0.23359700276196199
		 24 -0.23378164374355126 25 -0.23394393015158255 26 -0.23408367055000534 27 -0.23420068087741208 28 -0.2342947844319736 29 -0.2343658118515467 30 -0.23441360108904674 31 -0.23443799738318466 32 -0.23443885322466623
		 33 -0.23441602831796227 34 -0.23436938953875508 35 -0.23429881088717552 36 -0.23420417343694416 37 -0.23408536528053314 38 -0.23394228147047147 39 -0.2337748239569129 40 -0.23358290152159245 41 -0.2333664297082978
		 42 -0.2331253307499811 43 -0.23285953349264221 44 -0.23256897331611198 45 -0.23225359205186591 46 -0.23191333789800084 47 -0.2315481653315048 48 -0.23115803501795157 49 -0.23074291371875499 50 -0.23030277419610823
		 51 -0.22983759511574642 52 -0.2293473609476564 53 -0.2288320618648676 54 -0.22829169364045171 55 -0.22772625754285558 56 -0.22713576022969956 57 -0.22652021364015829 58 -0.225879634886055 59 -0.22521404614178292
		 60 -0.22452347453318044 61 -0.22380795202547099 62 -0.22306751531038871 63 -0.22230220569259795 64 -0.221512068975522 65 -0.22069715534668533 66 -0.21985751926267894 67 -0.21899321933384874 68 -0.21810431820881104
		 69 -0.21719088245889068 70 -0.21625298246257763 71 -0.21529069229009579 72 -0.21430408958817204 73 -0.21329325546509326 74 -0.21225827437613465 75 -0.21119923400944124 76 -0.21011622517243933 77 -0.20900934167885288
		 78 -0.20787868023639977 79 -0.20672434033523229 80 -0.20554642413719248 81 -0.20434503636594337 82 -0.20312028419803518 83 -0.20187227715496892 84 -0.2006011269963045 85 -0.19930694761387235 86 -0.19798985492713173
		 87 -0.19664996677972602 88 -0.1952874028372743 89 -0.19390228448644398 90 -0.19249473473533807 91 -0.19106487811523676 92 -0.18961284058372119 93 -0.18813874942921616 94 -0.18664273317696956 95 -0.18512492149650495
		 96 -0.18358544511056352 97 -0.18202443570555527 98 -0.18044202584354241 99 -0.17883834887576783 100 -0.17721353885774282 101 -0.17556773046590823;
createNode animCurveTL -n "pCube1_locator1_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000A9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.3365391346167308 2 0.33612676995627955 3 0.3357030264727916 4 0.33526800645125499 5 0.33482181500456654
		 6 0.33436456000580561 7 0.33389635201911028 8 0.33341730422924032 9 0.33292753236990413 10 0.33242715465093653 11 0.33191629168440739 12 0.33139506640974714 13 0.33086360401797199 14 0.33032203187509257
		 15 0.32977047944479188 16 0.32920907821045375 17 0.32863796159662728 18 0.32805726489000919 19 0.32746712516002896 20 0.32686768117911491 21 0.32625907334272464 22 0.3256414435892212 23 0.3250149353196703
		 24 0.32437969331763916 25 0.32373586366907392 26 0.32308359368232886 27 0.32242303180842224 28 0.32175432756159239 29 0.32107763144022072 30 0.32039309484819589 31 0.31970087001678116 32 0.31900110992705288
		 33 0.31829396823297307 34 0.31757959918515632 35 0.31685815755539104 36 0.31612979856197221 37 0.31539467779589925 38 0.31465295114799374 39 0.31390477473698597 40 0.31315030483861905 41 0.31238969781581705
		 42 0.3116231100499598 43 0.31085069787330721 44 0.31007261750261073 45 0.30928902497395028 46 0.30850007607883012 47 0.30770592630156535 48 0.30690673075799069 49 0.30610264413551846 50 0.30529382063456922
		 51 0.30448041391140235 52 0.30366257702236188 53 0.3028404623695633 54 0.30201422164803016 55 0.30118400579430227 56 0.30034996493652222 57 0.29951224834601364 58 0.29867100439035976 59 0.29782638048798582
		 60 0.29697852306425387 61 0.29612757750906937 62 0.29527368813600163 63 0.29441699814291866 64 0.29355764957413011 65 0.292695783284039 66 0.29183153890229308 67 0.29096505480042856 68 0.29009646805999956
		 69 0.28922591444218182 70 0.28835352835883832 71 0.28747944284503646 72 0.2866037895329997 73 0.2857266986274819 74 0.28484829888254493 75 0.28396871757972419 76 0.28308808050756329 77 0.28220651194249835
		 78 0.2813241346310722 79 0.28044106977345651 80 0.27955743700826319 81 0.27867335439861796 82 0.27778893841947716 83 0.27690430394616328 84 0.27601956424409213 85 0.27513483095967206 86 0.27425021411234596
		 87 0.27336582208775217 88 0.27248176163197924 89 0.27159813784688636 90 0.2707150541864658 91 0.26983261245421808 92 0.26895091280151584 93 0.26807005372692672 94 0.26719013207647158 95 0.26631124304478715
		 96 0.26543348017717094 97 0.26455693537247671 98 0.26368169888683712 99 0.26280785933818485 100 0.2619355037115465 101 0.26106471736508186;
createNode animCurveTU -n "pCube1_locator1_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000A9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator2_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000ABD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.22435942307782053 2 0.22373023330137254 3 0.22308544357658511 4 0.22242541920952974 5 0.22175053140451306
		 6 0.22106115713475938 7 0.22035767900815795 8 0.21964048512818091 9 0.21890996895007486 10 0.21816652913244872 11 0.21741056938437331 12 0.2166424983081302 13 0.21586272923773842 14 0.21507168007340915
		 15 0.21426977311207163 16 0.21345743487413027 17 0.21263509592661034 18 0.21180319070286169 19 0.21096215731899104 20 0.21011243738720109 21 0.20925447582621559 22 0.20838872066898262 23 0.20751562286783831
		 24 0.20663563609733338 25 0.20574921655491585 26 0.20485682275967143 27 0.20395891534932675 28 0.20305595687572298 29 0.20214841159896391 30 0.20123674528045488 31 0.2003214249750388 32 0.19940291882244754
		 33 0.19848169583827713 34 0.19755822570470327 35 0.19663297856115292 36 0.19570642479513989 37 0.19477903483348347 38 0.19385127893411513 39 0.19292362697868948 40 0.19199654826620394 41 0.19107051130783159
		 42 0.19014598362317492 43 0.18922343153813936 44 0.18830331998461869 45 0.18738611230219582 46 0.18647227004203926 47 0.18556225277318705 48 0.1846565178913967 49 0.18375552043073839 50 0.18285971287810243
		 51 0.18196954499078921 52 0.18108546361734079 53 0.18020791252176915 54 0.1793373322113313 55 0.17847415976799685 56 0.17761882868373879 57 0.17677176869978639 58 0.17593340564995685 59 0.17510416130818873
		 60 0.17428445324038511 61 0.17347469466066945 62 0.17267529429215467 63 0.17188665623231114 64 0.17110917982301843 65 0.17034325952537654 66 0.16958928479934421 67 0.16884763998826646 68 0.16811870420834318
		 69 0.16740285124309073 70 0.16670044944283102 71 0.16601186162924431 72 0.1653374450050118 73 0.16467755106856341 74 0.16403252553395165 75 0.16340270825584513 76 0.16278843315965152 77 0.16219002817675865
		 78 0.1616078151848781 79 0.1610421099534739 80 0.16049322209425365 81 0.15996145501668091 82 0.15944710588848565 83 0.15895046560111548 84 0.15847181874009142 85 0.15801144356020824 86 0.15756961196552499
		 87 0.15714658949408 88 0.15674263530726729 89 0.15635800218379947 90 0.1559929365181838 91 0.15564767832363013 92 0.15532246123931182 93 0.15501751254188678 94 0.15473305316119768 95 0.15446929770005124
		 96 0.15422645445798389 97 0.15400472545892063 98 0.15380430648261934 99 0.15362538709980378 100 0.15346815071088094 101 0.15333277458813321;
createNode animCurveTL -n "pCube1_locator2_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000ABE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.3365391346167308 2 0.33694002106331333 3 0.33732933286404587 4 0.33770697660885551 5 0.33807286197092801
		 6 0.33842690176627155 7 0.33876901201142329 8 0.3390991119792286 9 0.33941712425261983 10 0.33972297477633284 11 0.34001659290649289 12 0.34029791145800981 13 0.34056686674972048 14 0.34082339864722488
		 15 0.34106745060335919 16 0.3412989696962534 17 0.34151790666492943 18 0.34172421594238989 19 0.34191785568615773 20 0.34209878780622838 21 0.34226697799039618 22 0.3424223957269279 23 0.34256501432454889
		 24 0.34269481092972154 25 0.34281176654119327 26 0.34291586602179525 27 0.34300709810747831 28 0.34308545541357782 29 0.34315093443829681 30 0.34320353556340832 31 0.34324326305217645 32 0.34327012504449916
		 33 0.34328413354928466 34 0.34328530443406979 35 0.34327365741189864 36 0.34324921602548009 37 0.34321200762864712 38 0.34316206336514354 39 0.3430994181447713 40 0.34302411061692761 41 0.34293618314157204
		 42 0.34283568175766255 43 0.34272265614910347 44 0.34259715960825099 45 0.34245924899702929 46 0.34230898470570437 47 0.34214643060937444 48 0.34197165402223284 49 0.34178472564966533 50 0.34158571953824168
		 51 0.34137471302367006 52 0.34115178667677792 53 0.34091702424759185 54 0.3406705126075843 55 0.34041234169016232 56 0.34014260442947231 57 0.33986139669759485 58 0.33956881724021004 59 0.33926496761080838
		 60 0.33894995210352863 61 0.33862387768470315 62 0.33828685392318991 63 0.33793899291957441 64 0.33758040923432264 65 0.33721121981496804 66 0.33683154392241477 67 0.33644150305643927 68 0.33604122088047328
		 69 0.33563082314574966 70 0.33521043761489411 71 0.33478019398504189 72 0.33434022381056172 73 0.33389066042546744 74 0.33343163886559357 75 0.33296329579061568 76 0.33248576940599039 77 0.33199919938489209
		 78 0.33150372679022033 79 0.33099949399674911 80 0.33048664461349309 81 0.32996532340635731 82 0.32943567622114056 83 0.32889784990695803 84 0.32835199224014822 85 0.32779825184872768 86 0.32723677813745256
		 87 0.32666772121354948 88 0.32609123181316768 89 0.32550746122861285 90 0.32491656123641055 91 0.32431868402625319 92 0.32371398213087821 93 0.32310260835692217 94 0.32248471571679782 95 0.32186045736163238
		 96 0.32122998651531098 97 0.32059345640965864 98 0.3199510202207988 99 0.31930283100671919 100 0.31864904164607899 101 0.31798980477828143;
createNode animCurveTU -n "pCube1_locator2_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000ABF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator3_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000ADE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.22435942307782053 2 -0.22497265362238394 3 -0.22556957179322074 4 -0.2261498307041756 5 -0.22671308983349908
		 6 -0.22725901512723878 7 -0.2277872790972445 8 -0.2282975609137427 9 -0.22878954649243455 10 -0.22926292857608876 11 -0.22971740681060016 12 -0.23015268781549891 13 -0.23056848524889551 14 -0.23096451986686434
		 15 -0.2313405195772632 16 -0.23169621948800501 17 -0.23203136194979623 18 -0.23234569659337023 19 -0.23263898036124453 20 -0.23291097753404172 21 -0.23316145975141922 22 -0.23339020602765703 23 -0.23359700276196199
		 24 -0.23378164374355126 25 -0.23394393015158255 26 -0.23408367055000534 27 -0.23420068087741208 28 -0.2342947844319736 29 -0.2343658118515467 30 -0.23441360108904674 31 -0.23443799738318466 32 -0.23443885322466623
		 33 -0.23441602831796227 34 -0.23436938953875508 35 -0.23429881088717552 36 -0.23420417343694416 37 -0.23408536528053314 38 -0.23394228147047147 39 -0.2337748239569129 40 -0.23358290152159245 41 -0.2333664297082978
		 42 -0.2331253307499811 43 -0.23285953349264221 44 -0.23256897331611198 45 -0.23225359205186591 46 -0.23191333789800084 47 -0.2315481653315048 48 -0.23115803501795157 49 -0.23074291371875499 50 -0.23030277419610823
		 51 -0.22983759511574642 52 -0.2293473609476564 53 -0.2288320618648676 54 -0.22829169364045171 55 -0.22772625754285558 56 -0.22713576022969956 57 -0.22652021364015829 58 -0.225879634886055 59 -0.22521404614178292
		 60 -0.22452347453318044 61 -0.22380795202547099 62 -0.22306751531038871 63 -0.22230220569259795 64 -0.221512068975522 65 -0.22069715534668533 66 -0.21985751926267894 67 -0.21899321933384874 68 -0.21810431820881104
		 69 -0.21719088245889068 70 -0.21625298246257763 71 -0.21529069229009579 72 -0.21430408958817204 73 -0.21329325546509326 74 -0.21225827437613465 75 -0.21119923400944124 76 -0.21011622517243933 77 -0.20900934167885288
		 78 -0.20787868023639977 79 -0.20672434033523229 80 -0.20554642413719248 81 -0.20434503636594337 82 -0.20312028419803518 83 -0.20187227715496892 84 -0.2006011269963045 85 -0.19930694761387235 86 -0.19798985492713173
		 87 -0.19664996677972602 88 -0.1952874028372743 89 -0.19390228448644398 90 -0.19249473473533807 91 -0.19106487811523676 92 -0.18961284058372119 93 -0.18813874942921616 94 -0.18664273317696956 95 -0.18512492149650495
		 96 -0.18358544511056352 97 -0.18202443570555527 98 -0.18044202584354241 99 -0.17883834887576783 100 -0.17721353885774282 101 -0.17556773046590823;
createNode animCurveTL -n "pCube1_locator3_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000ADF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.3365391346167308 2 -0.3361267699562796 3 -0.33570302647279154 4 -0.33526800645125493 5 -0.33482181500456659
		 6 -0.33436456000580567 7 -0.33389635201911028 8 -0.33341730422924026 9 -0.33292753236990413 10 -0.33242715465093653 11 -0.33191629168440734 12 -0.3313950664097472 13 -0.33086360401797194 14 -0.33032203187509251
		 15 -0.32977047944479188 16 -0.32920907821045381 17 -0.32863796159662728 18 -0.32805726489000919 19 -0.32746712516002896 20 -0.32686768117911486 21 -0.32625907334272464 22 -0.3256414435892212 23 -0.3250149353196703
		 24 -0.32437969331763916 25 -0.32373586366907386 26 -0.32308359368232881 27 -0.32242303180842219 28 -0.32175432756159233 29 -0.32107763144022072 30 -0.32039309484819589 31 -0.31970087001678121 32 -0.31900110992705294
		 33 -0.31829396823297307 34 -0.31757959918515632 35 -0.31685815755539104 36 -0.31612979856197226 37 -0.31539467779589925 38 -0.31465295114799374 39 -0.31390477473698597 40 -0.31315030483861911 41 -0.31238969781581705
		 42 -0.3116231100499598 43 -0.31085069787330716 44 -0.31007261750261067 45 -0.30928902497395028 46 -0.30850007607883007 47 -0.30770592630156529 48 -0.30690673075799074 49 -0.30610264413551846 50 -0.30529382063456922
		 51 -0.30448041391140235 52 -0.30366257702236188 53 -0.30284046236956325 54 -0.30201422164803016 55 -0.30118400579430227 56 -0.30034996493652222 57 -0.29951224834601364 58 -0.29867100439035976 59 -0.29782638048798582
		 60 -0.29697852306425393 61 -0.29612757750906937 62 -0.29527368813600169 63 -0.29441699814291866 64 -0.29355764957413005 65 -0.292695783284039 66 -0.29183153890229308 67 -0.2909650548004285 68 -0.29009646805999956
		 69 -0.28922591444218176 70 -0.28835352835883837 71 -0.2874794428450364 72 -0.2866037895329997 73 -0.2857266986274819 74 -0.28484829888254493 75 -0.28396871757972419 76 -0.28308808050756334 77 -0.28220651194249841
		 78 -0.2813241346310722 79 -0.28044106977345651 80 -0.27955743700826324 81 -0.27867335439861796 82 -0.27778893841947722 83 -0.27690430394616328 84 -0.27601956424409207 85 -0.27513483095967206 86 -0.2742502141123459
		 87 -0.27336582208775212 88 -0.27248176163197924 89 -0.27159813784688636 90 -0.2707150541864658 91 -0.26983261245421813 92 -0.26895091280151584 93 -0.26807005372692677 94 -0.26719013207647152 95 -0.2663112430447872
		 96 -0.26543348017717089 97 -0.26455693537247671 98 -0.26368169888683712 99 -0.2628078593381849 100 -0.26193550371154656 101 -0.26106471736508186;
createNode animCurveTU -n "pCube1_locator3_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator4_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000AFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.22435942307782053 2 0.22373023330137254 3 0.22308544357658511 4 0.22242541920952974 5 0.22175053140451306
		 6 0.22106115713475938 7 0.22035767900815795 8 0.21964048512818091 9 0.21890996895007486 10 0.21816652913244872 11 0.21741056938437331 12 0.2166424983081302 13 0.21586272923773842 14 0.21507168007340915
		 15 0.21426977311207163 16 0.21345743487413027 17 0.21263509592661034 18 0.21180319070286169 19 0.21096215731899104 20 0.21011243738720109 21 0.20925447582621559 22 0.20838872066898262 23 0.20751562286783831
		 24 0.20663563609733338 25 0.20574921655491585 26 0.20485682275967143 27 0.20395891534932675 28 0.20305595687572298 29 0.20214841159896391 30 0.20123674528045488 31 0.2003214249750388 32 0.19940291882244754
		 33 0.19848169583827713 34 0.19755822570470327 35 0.19663297856115292 36 0.19570642479513989 37 0.19477903483348347 38 0.19385127893411513 39 0.19292362697868948 40 0.19199654826620394 41 0.19107051130783159
		 42 0.19014598362317492 43 0.18922343153813936 44 0.18830331998461869 45 0.18738611230219582 46 0.18647227004203926 47 0.18556225277318705 48 0.1846565178913967 49 0.18375552043073839 50 0.18285971287810243
		 51 0.18196954499078921 52 0.18108546361734079 53 0.18020791252176915 54 0.1793373322113313 55 0.17847415976799685 56 0.17761882868373879 57 0.17677176869978639 58 0.17593340564995685 59 0.17510416130818873
		 60 0.17428445324038511 61 0.17347469466066945 62 0.17267529429215467 63 0.17188665623231114 64 0.17110917982301843 65 0.17034325952537654 66 0.16958928479934421 67 0.16884763998826646 68 0.16811870420834318
		 69 0.16740285124309073 70 0.16670044944283102 71 0.16601186162924431 72 0.1653374450050118 73 0.16467755106856341 74 0.16403252553395165 75 0.16340270825584513 76 0.16278843315965152 77 0.16219002817675865
		 78 0.1616078151848781 79 0.1610421099534739 80 0.16049322209425365 81 0.15996145501668091 82 0.15944710588848565 83 0.15895046560111548 84 0.15847181874009142 85 0.15801144356020824 86 0.15756961196552499
		 87 0.15714658949408 88 0.15674263530726729 89 0.15635800218379947 90 0.1559929365181838 91 0.15564767832363013 92 0.15532246123931182 93 0.15501751254188678 94 0.15473305316119768 95 0.15446929770005124
		 96 0.15422645445798389 97 0.15400472545892063 98 0.15380430648261934 99 0.15362538709980378 100 0.15346815071088094 101 0.15333277458813321;
createNode animCurveTL -n "pCube1_locator4_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.3365391346167308 2 -0.33694002106331333 3 -0.33732933286404582 4 -0.33770697660885551 5 -0.33807286197092801
		 6 -0.33842690176627149 7 -0.33876901201142334 8 -0.33909911197922865 9 -0.33941712425261977 10 -0.3397229747763329 11 -0.34001659290649294 12 -0.34029791145800981 13 -0.34056686674972048 14 -0.34082339864722494
		 15 -0.34106745060335919 16 -0.3412989696962534 17 -0.34151790666492948 18 -0.34172421594238989 19 -0.34191785568615773 20 -0.34209878780622838 21 -0.34226697799039618 22 -0.3424223957269279 23 -0.34256501432454889
		 24 -0.34269481092972154 25 -0.34281176654119327 26 -0.34291586602179525 27 -0.34300709810747831 28 -0.34308545541357788 29 -0.34315093443829681 30 -0.34320353556340832 31 -0.34324326305217639 32 -0.34327012504449922
		 33 -0.34328413354928472 34 -0.34328530443406974 35 -0.34327365741189858 36 -0.34324921602548014 37 -0.34321200762864706 38 -0.34316206336514354 39 -0.34309941814477124 40 -0.34302411061692756 41 -0.34293618314157204
		 42 -0.3428356817576626 43 -0.34272265614910341 44 -0.34259715960825099 45 -0.34245924899702934 46 -0.34230898470570431 47 -0.34214643060937444 48 -0.34197165402223284 49 -0.34178472564966528 50 -0.34158571953824174
		 51 -0.34137471302367006 52 -0.34115178667677792 53 -0.3409170242475919 54 -0.3406705126075843 55 -0.34041234169016238 56 -0.34014260442947231 57 -0.33986139669759485 58 -0.33956881724021004 59 -0.33926496761080832
		 60 -0.33894995210352857 61 -0.33862387768470315 62 -0.33828685392318991 63 -0.33793899291957441 64 -0.33758040923432264 65 -0.33721121981496804 66 -0.33683154392241477 67 -0.33644150305643927 68 -0.33604122088047322
		 69 -0.33563082314574971 70 -0.33521043761489416 71 -0.33478019398504189 72 -0.33434022381056172 73 -0.33389066042546744 74 -0.33343163886559357 75 -0.33296329579061568 76 -0.33248576940599034 77 -0.33199919938489209
		 78 -0.33150372679022033 79 -0.33099949399674905 80 -0.33048664461349303 81 -0.32996532340635726 82 -0.32943567622114056 83 -0.32889784990695803 84 -0.32835199224014822 85 -0.32779825184872763 86 -0.32723677813745256
		 87 -0.32666772121354948 88 -0.32609123181316774 89 -0.3255074612286129 90 -0.32491656123641055 91 -0.32431868402625319 92 -0.32371398213087821 93 -0.32310260835692223 94 -0.32248471571679777 95 -0.32186045736163238
		 96 -0.32122998651531104 97 -0.32059345640965864 98 -0.3199510202207988 99 -0.31930283100671913 100 -0.31864904164607893 101 -0.31798980477828137;
createNode animCurveTU -n "pCube1_locator4_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator5_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.15350907894798249 2 -0.15238271327307223 3 -0.15125131276628684 4 -0.15011475397493207 5 -0.14897291465381601
		 6 -0.1478256737808159 7 -0.14667291157185192 8 -0.14551450949526146 9 -0.14435035028556653 10 -0.14318031795662833 11 -0.14200429781418422 12 -0.14082217646776113 13 -0.13963384184196143 14 -0.13843918318711723
		 15 -0.1372380910893094 16 -0.13603045747974896 17 -0.13481617564351722 18 -0.13359514022766461 19 -0.13236724724866422 20 -0.13113239409922167 21 -0.12989047955443922 22 -0.1286414037773348 23 -0.12738506832371604
		 24 -0.1261213761464105 25 -0.12485023159885444 26 -0.12357154043804031 27 -0.12228520982682672 28 -0.12099114833561281 29 -0.11968926594338153 30 -0.11837947403811366 31 -0.11706168541657858 32 -0.11573581428350477
		 33 -0.11440177625013564 34 -0.11305948833217633 35 -0.11170886894713583 36 -0.11034983791107256 37 -0.1089823164347466 38 -0.10760622711918938 39 -0.10622149395069402 40 -0.10482804229523535 41 -0.10342579889232878
		 42 -0.10201469184833267 43 -0.10059465062920447 44 -0.099165606052719679 45 -0.097727490280160478 46 -0.096280236807484432 47 -0.094823780455982165 48 -0.093358057362432523 49 -0.091883004968767112 50 -0.090398562011250239
		 51 -0.088904668509189211 52 -0.087401265753179858 53 -0.085888296292901456 54 -0.084365703924470625 55 -0.082833433677362178 56 -0.081291431800912639 57 -0.079739645750410815 58 -0.078178024172792626 59 -0.07660651689194603
		 60 -0.075025074893639965 61 -0.073433650310087473 62 -0.071832196404153392 63 -0.070220667553218763 64 -0.068599019232713332 65 -0.066967207999324263 66 -0.065325191473896704 67 -0.063672928324033595 68 -0.062010378246407982
		 69 -0.060337501948796779 70 -0.058654261131848962 71 -0.05696061847059819 72 -0.055256537595729904 73 -0.053541983074615607 74 -0.051816920392122268 75 -0.050081315931210568 76 -0.048335136953329694 77 -0.046578351578619503
		 78 -0.044810928765933233 79 -0.043032838292685838 80 -0.041244050734542126 81 -0.039444537444952965 82 -0.037634270534547709 83 -0.035813222850396675 84 -0.033981367955146835 85 -0.032138680106046591 86 -0.03028513423386231
		 87 -0.02842070592170165 88 -0.026545371383746685 89 -0.024659107443909201 90 -0.022761891514414601 91 -0.020853701574323646 92 -0.018934516147998459 93 -0.017004314283523225 94 -0.015063075531082271 95 -0.013110779921307936
		 96 -0.011147407943604581 97 -0.0091729405244503903 98 -0.0071873590056907855 99 -0.0051906451228255768 100 -0.0031827809832964959 101 -0.001163749044783835;
createNode animCurveTL -n "pCube1_locator5_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.23026361842197374 2 0.2300714927258688 3 0.22987586555716866 4 0.2296767613533095 5 0.22947420517453954
		 6 0.22926822269431757 7 0.22905884018952372 8 0.22884608453048461 9 0.22862998317082328 10 0.22841056413713878 11 0.22818785601852398 12 0.22796188795592687 13 0.22773268963136517 14 0.227500291256999
		 15 0.22726472356407101 16 0.2270260177917196 17 0.22678420567567459 18 0.22653931943684036 19 0.2262913917697762 20 0.22604045583108057 21 0.2257865452276856 22 0.22552969400507139 23 0.22526993663540607
		 24 0.2250073080056193 25 0.22474184340541703 26 0.22447357851524541 27 0.22420254939420903 28 0.22392879246795427 29 0.22365234451652127 30 0.22337324266217484 31 0.22309152435721924 32 0.22280722737180603
		 33 0.22252038978173938 34 0.22223104995628806 35 0.22193924654600972 36 0.22164501847059526 37 0.22134840490673768 38 0.22104944527603498 39 0.22074817923293177 40 0.22044464665270502 41 0.22013888761950295
		 42 0.21983094241444079 43 0.21952085150375966 44 0.2192086555270556 45 0.21889439528558374 46 0.21857811173064223 47 0.21825984595204384 48 0.21793963916667702 49 0.21761753270716544 50 0.21729356801062827
		 51 0.21696778660754679 52 0.21664023011074174 53 0.21631094020446839 54 0.21597995863362929 55 0.21564732719311297 56 0.21531308771726065 57 0.21497728206946554 58 0.21463995213190834 59 0.21430113979543286
		 60 0.21396088694956439 61 0.21361923547267569 62 0.21327622722230233 63 0.21293190402561069 64 0.21258630767002218 65 0.21223947989399594 66 0.21189146237797185 67 0.21154229673547797 68 0.21119202450440244
		 69 0.21084068713843385 70 0.21048832599867129 71 0.21013498234540506 72 0.20978069733007154 73 0.20942551198738169 74 0.20906946722762587 75 0.20871260382915569 76 0.20835496243104423 77 0.20799658352592498
		 78 0.20763750745301102 79 0.20727777439129469 80 0.20691742435292837 81 0.20655649717678681 82 0.20619503252221116 83 0.20583306986293493 84 0.20547064848119201 85 0.20510780746200674 86 0.20474458568766551
		 87 0.20438102183236961 88 0.2040171543570698 89 0.20365302150448028 90 0.2032886612942737 91 0.20292411151845413 92 0.20255940973690989 93 0.20219459327314171 94 0.20182969921016991 95 0.20146476438661431
		 96 0.20109982539295057 97 0.2007349185679379 98 0.20037007999521972 99 0.20000534550009297 100 0.19964075064644771 101 0.19927633073387341;
createNode animCurveTU -n "pCube1_locator5_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator6_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.15350907894798249 2 0.15463053443506136 3 0.15574720555297294 4 0.1568592192777033 5 0.15796670372470223
		 6 0.15906978813047568 7 0.16016860283363754 8 0.1612632792554326 9 0.16235394987974017 10 0.16344074823257193 11 0.16452380886107409 12 0.16560326731204733 13 0.16667926010999601 14 0.16775192473472245
		 15 0.1688213995984772 16 0.16988782402268088 17 0.1709513382142317 18 0.17201208324141426 19 0.17307020100942261 20 0.1741258342355162 21 0.17517912642382227 22 0.1762302218398033 23 0.17727926548440132
		 24 0.17832640306788328 25 0.17937178098339757 26 0.18041554628026368 27 0.18145784663700959 28 0.18249883033417846 29 0.18353864622691785 30 0.18457744371737483 31 0.18561537272691109 32 0.18665258366815973
		 33 0.18768922741694172 34 0.18872545528405893 35 0.18976141898698595 36 0.19079727062147855 37 0.19183316263311601 38 0.1928692477887991 39 0.19390567914822243 40 0.19494261003533997 41 0.19598019400984101
		 42 0.19701858483866119 43 0.19805793646754188 44 0.19909840299266024 45 0.20014013863234892 46 0.20118329769892196 47 0.20222803457063021 48 0.20327450366375976 49 0.20432285940489503 50 0.205373256203365
		 51 0.206425848423889 52 0.20748079035944178 53 0.20853823620435441 54 0.20959834002766831 55 0.21066125574676253 56 0.21172713710126589 57 0.21279613762727712 58 0.21386841063190376 59 0.21494410916813989
		 60 0.21602338601009663 61 0.21710639362860062 62 0.21819328416717765 63 0.21928420941843341 64 0.22037932080084766 65 0.22147876933599608 66 0.22258270562621152 67 0.22369127983270076 68 0.22480464165412539
		 69 0.22592294030566429 70 0.22704632449856654 71 0.22817494242020575 72 0.22930894171465033 73 0.2304484694637563 74 0.23159367216879656 75 0.2327446957326329 76 0.23390168544244427 77 0.23506478595301616
		 78 0.23623414127060172 79 0.23740989473736218 80 0.2385921890163949 81 0.23978116607735322 82 0.24097696718267003 83 0.24217973287438388 84 0.24338960296158163 85 0.24460671650845478 86 0.24583121182298195
		 87 0.24706322644623291 88 0.24830289714230935 89 0.24955035988891372 90 0.25080574986855897 91 0.25206920146041512 92 0.25334084823279945 93 0.25462082293630761 94 0.25590925749759152 95 0.25720628301378179
		 96 0.25851202974755405 97 0.25982662712284488 98 0.26115020372120945 99 0.26248288727882607 100 0.26382480468414604 101 0.26517608197618026;
createNode animCurveTL -n "pCube1_locator6_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.23026361842197374 2 0.2304522188402609 3 0.23063727081692176 4 0.23081875183855027 5 0.23099664005091536
		 6 0.23117091426751113 7 0.23134155397787715 8 0.2315085393556845 9 0.23167185126658141 10 0.23183147127579184 11 0.2319873816554634 12 0.23213956539175706 13 0.23228800619167544 14 0.23243268848962439
		 15 0.23257359745370187 16 0.23271071899171103 17 0.23284403975689316 18 0.23297354715337459 19 0.23309922934132665 20 0.23322107524183155 21 0.23333907454145364 22 0.23345321769651173 23 0.2335634959370485
		 24 0.23366990127049569 25 0.23377242648503194 26 0.23387106515263112 27 0.23396581163179886 28 0.23405666106999534 29 0.23414360940574364 30 0.23422665337042159 31 0.23430579048973632 32 0.23438101908488007
		 33 0.23445233827336864 34 0.23451974796955921 35 0.23458324888485071 36 0.23464284252756451 37 0.23469853120250705 38 0.23475031801021473 39 0.23479820684588271 40 0.23484220239797793 41 0.23488231014653826
		 42 0.23491853636115978 43 0.23495088809867348 44 0.23497937320051487 45 0.23500400028978696 46 0.2350247787680213 47 0.23504171881163904 48 0.23505483136811445 49 0.23506412815184674 50 0.23506962163974054
		 51 0.23507132506650141 52 0.23506925241964904 53 0.23506341843425338 54 0.2350538385873967 55 0.23504052909236794 56 0.23502350689259277 57 0.23500278965530508 58 0.23497839576496549 59 0.23495034431643014
		 60 0.23491865510787868 61 0.23488334863350435 62 0.23484444607597266 63 0.2348019692986556 64 0.2347559408376465 65 0.2347063838935618 66 0.23465332232313718 67 0.23459678063062339 68 0.23453678395898825
		 69 0.23447335808093306 70 0.23440652938972861 71 0.23433632488987821 72 0.23426277218761504 73 0.23418589948124136 74 0.23410573555131364 75 0.23402230975068627 76 0.23393565199441479 77 0.23384579274953121
		 78 0.23375276302469572 79 0.23365659435973218 80 0.23355731881505681 81 0.23345496896100459 82 0.23334957786706356 83 0.23324117909102182 84 0.23312980666803673 85 0.23301549509963193 86 0.23289827934263063
		 87 0.23277819479803208 88 0.23265527729983815 89 0.23252956310383821 90 0.23240108887635769 91 0.23226989168297996 92 0.23213600897724584 93 0.23199947858933978 94 0.23186033871476874 95 0.23171862790304054
		 96 0.2315743850463492 97 0.23142764936827265 98 0.23127846041249067 99 0.23112685803152855 100 0.23097288237553426 101 0.23081657388109278;
createNode animCurveTU -n "pCube1_locator6_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A000000B43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator7_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.15350907894798249 2 -0.15238271327307223 3 -0.15125131276628684 4 -0.15011475397493207 5 -0.14897291465381601
		 6 -0.1478256737808159 7 -0.14667291157185192 8 -0.14551450949526146 9 -0.14435035028556653 10 -0.14318031795662833 11 -0.14200429781418422 12 -0.14082217646776113 13 -0.13963384184196143 14 -0.13843918318711723
		 15 -0.1372380910893094 16 -0.13603045747974896 17 -0.13481617564351722 18 -0.13359514022766461 19 -0.13236724724866422 20 -0.13113239409922167 21 -0.12989047955443922 22 -0.1286414037773348 23 -0.12738506832371604
		 24 -0.1261213761464105 25 -0.12485023159885444 26 -0.12357154043804031 27 -0.12228520982682672 28 -0.12099114833561281 29 -0.11968926594338153 30 -0.11837947403811366 31 -0.11706168541657858 32 -0.11573581428350477
		 33 -0.11440177625013564 34 -0.11305948833217633 35 -0.11170886894713583 36 -0.11034983791107256 37 -0.1089823164347466 38 -0.10760622711918938 39 -0.10622149395069402 40 -0.10482804229523535 41 -0.10342579889232878
		 42 -0.10201469184833267 43 -0.10059465062920447 44 -0.099165606052719679 45 -0.097727490280160478 46 -0.096280236807484432 47 -0.094823780455982165 48 -0.093358057362432523 49 -0.091883004968767112 50 -0.090398562011250239
		 51 -0.088904668509189211 52 -0.087401265753179858 53 -0.085888296292901456 54 -0.084365703924470625 55 -0.082833433677362178 56 -0.081291431800912639 57 -0.079739645750410815 58 -0.078178024172792626 59 -0.07660651689194603
		 60 -0.075025074893639965 61 -0.073433650310087473 62 -0.071832196404153392 63 -0.070220667553218763 64 -0.068599019232713332 65 -0.066967207999324263 66 -0.065325191473896704 67 -0.063672928324033595 68 -0.062010378246407982
		 69 -0.060337501948796779 70 -0.058654261131848962 71 -0.05696061847059819 72 -0.055256537595729904 73 -0.053541983074615607 74 -0.051816920392122268 75 -0.050081315931210568 76 -0.048335136953329694 77 -0.046578351578619503
		 78 -0.044810928765933233 79 -0.043032838292685838 80 -0.041244050734542126 81 -0.039444537444952965 82 -0.037634270534547709 83 -0.035813222850396675 84 -0.033981367955146835 85 -0.032138680106046591 86 -0.03028513423386231
		 87 -0.02842070592170165 88 -0.026545371383746685 89 -0.024659107443909201 90 -0.022761891514414601 91 -0.020853701574323646 92 -0.018934516147998459 93 -0.017004314283523225 94 -0.015063075531082271 95 -0.013110779921307936
		 96 -0.011147407943604581 97 -0.0091729405244503903 98 -0.0071873590056907855 99 -0.0051906451228255768 100 -0.0031827809832964959 101 -0.001163749044783835;
createNode animCurveTL -n "pCube1_locator7_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.23026361842197368 2 -0.2300714927258688 3 -0.22987586555716866 4 -0.2296767613533095 5 -0.22947420517453948
		 6 -0.22926822269431757 7 -0.22905884018952372 8 -0.22884608453048461 9 -0.22862998317082328 10 -0.22841056413713884 11 -0.22818785601852398 12 -0.22796188795592692 13 -0.22773268963136517 14 -0.227500291256999
		 15 -0.22726472356407096 16 -0.2270260177917196 17 -0.22678420567567459 18 -0.2265393194368403 19 -0.2262913917697762 20 -0.22604045583108057 21 -0.2257865452276856 22 -0.22552969400507139 23 -0.22526993663540612
		 24 -0.2250073080056193 25 -0.22474184340541703 26 -0.22447357851524535 27 -0.22420254939420903 28 -0.22392879246795427 29 -0.22365234451652127 30 -0.22337324266217479 31 -0.22309152435721924 32 -0.22280722737180603
		 33 -0.22252038978173938 34 -0.22223104995628801 35 -0.22193924654600972 36 -0.22164501847059526 37 -0.22134840490673768 38 -0.22104944527603504 39 -0.22074817923293177 40 -0.22044464665270502 41 -0.22013888761950295
		 42 -0.21983094241444079 43 -0.21952085150375961 44 -0.2192086555270556 45 -0.21889439528558369 46 -0.21857811173064223 47 -0.21825984595204384 48 -0.21793963916667702 49 -0.2176175327071655 50 -0.21729356801062827
		 51 -0.21696778660754673 52 -0.21664023011074168 53 -0.21631094020446839 54 -0.21597995863362929 55 -0.21564732719311291 56 -0.2153130877172606 57 -0.21497728206946548 58 -0.21463995213190834 59 -0.21430113979543286
		 60 -0.21396088694956439 61 -0.21361923547267569 62 -0.21327622722230233 63 -0.21293190402561069 64 -0.21258630767002218 65 -0.21223947989399594 66 -0.21189146237797185 67 -0.21154229673547797 68 -0.21119202450440244
		 69 -0.21084068713843385 70 -0.21048832599867129 71 -0.21013498234540501 72 -0.20978069733007154 73 -0.20942551198738169 74 -0.20906946722762587 75 -0.20871260382915569 76 -0.20835496243104423 77 -0.20799658352592498
		 78 -0.20763750745301102 79 -0.20727777439129469 80 -0.20691742435292837 81 -0.20655649717678687 82 -0.20619503252221116 83 -0.20583306986293493 84 -0.20547064848119201 85 -0.20510780746200674 86 -0.20474458568766551
		 87 -0.20438102183236961 88 -0.2040171543570698 89 -0.20365302150448028 90 -0.20328866129427364 91 -0.20292411151845419 92 -0.20255940973690989 93 -0.20219459327314176 94 -0.20182969921016991 95 -0.20146476438661431
		 96 -0.20109982539295057 97 -0.20073491856793796 98 -0.20037007999521972 99 -0.20000534550009297 100 -0.19964075064644771 101 -0.19927633073387335;
createNode animCurveTU -n "pCube1_locator7_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator8_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.15350907894798249 2 0.15463053443506136 3 0.15574720555297294 4 0.1568592192777033 5 0.15796670372470223
		 6 0.15906978813047568 7 0.16016860283363754 8 0.1612632792554326 9 0.16235394987974017 10 0.16344074823257193 11 0.16452380886107409 12 0.16560326731204733 13 0.16667926010999601 14 0.16775192473472245
		 15 0.1688213995984772 16 0.16988782402268088 17 0.1709513382142317 18 0.17201208324141426 19 0.17307020100942261 20 0.1741258342355162 21 0.17517912642382227 22 0.1762302218398033 23 0.17727926548440132
		 24 0.17832640306788328 25 0.17937178098339757 26 0.18041554628026368 27 0.18145784663700959 28 0.18249883033417846 29 0.18353864622691785 30 0.18457744371737483 31 0.18561537272691109 32 0.18665258366815973
		 33 0.18768922741694172 34 0.18872545528405893 35 0.18976141898698595 36 0.19079727062147855 37 0.19183316263311601 38 0.1928692477887991 39 0.19390567914822243 40 0.19494261003533997 41 0.19598019400984101
		 42 0.19701858483866119 43 0.19805793646754188 44 0.19909840299266024 45 0.20014013863234892 46 0.20118329769892196 47 0.20222803457063021 48 0.20327450366375976 49 0.20432285940489503 50 0.205373256203365
		 51 0.206425848423889 52 0.20748079035944178 53 0.20853823620435441 54 0.20959834002766831 55 0.21066125574676253 56 0.21172713710126589 57 0.21279613762727712 58 0.21386841063190376 59 0.21494410916813989
		 60 0.21602338601009663 61 0.21710639362860062 62 0.21819328416717765 63 0.21928420941843341 64 0.22037932080084766 65 0.22147876933599608 66 0.22258270562621152 67 0.22369127983270076 68 0.22480464165412539
		 69 0.22592294030566429 70 0.22704632449856654 71 0.22817494242020575 72 0.22930894171465033 73 0.2304484694637563 74 0.23159367216879656 75 0.2327446957326329 76 0.23390168544244427 77 0.23506478595301616
		 78 0.23623414127060172 79 0.23740989473736218 80 0.2385921890163949 81 0.23978116607735322 82 0.24097696718267003 83 0.24217973287438388 84 0.24338960296158163 85 0.24460671650845478 86 0.24583121182298195
		 87 0.24706322644623291 88 0.24830289714230935 89 0.24955035988891372 90 0.25080574986855897 91 0.25206920146041512 92 0.25334084823279945 93 0.25462082293630761 94 0.25590925749759152 95 0.25720628301378179
		 96 0.25851202974755405 97 0.25982662712284488 98 0.26115020372120945 99 0.26248288727882607 100 0.26382480468414604 101 0.26517608197618026;
createNode animCurveTL -n "pCube1_locator8_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.23026361842197368 2 -0.2304522188402609 3 -0.23063727081692176 4 -0.23081875183855022 5 -0.23099664005091536
		 6 -0.23117091426751113 7 -0.23134155397787715 8 -0.2315085393556845 9 -0.23167185126658141 10 -0.2318314712757919 11 -0.23198738165546345 12 -0.23213956539175706 13 -0.23228800619167544 14 -0.23243268848962439
		 15 -0.23257359745370187 16 -0.23271071899171103 17 -0.23284403975689311 18 -0.23297354715337459 19 -0.23309922934132665 20 -0.2332210752418315 21 -0.23333907454145364 22 -0.23345321769651173 23 -0.23356349593704856
		 24 -0.23366990127049569 25 -0.23377242648503194 26 -0.23387106515263112 27 -0.23396581163179886 28 -0.23405666106999534 29 -0.23414360940574364 30 -0.23422665337042159 31 -0.23430579048973632 32 -0.23438101908488013
		 33 -0.23445233827336864 34 -0.23451974796955921 35 -0.23458324888485066 36 -0.23464284252756451 37 -0.23469853120250705 38 -0.23475031801021473 39 -0.23479820684588271 40 -0.23484220239797793 41 -0.23488231014653826
		 42 -0.23491853636115978 43 -0.23495088809867348 44 -0.23497937320051487 45 -0.23500400028978696 46 -0.2350247787680213 47 -0.23504171881163904 48 -0.2350548313681145 49 -0.23506412815184674 50 -0.23506962163974054
		 51 -0.23507132506650141 52 -0.23506925241964904 53 -0.23506341843425338 54 -0.2350538385873967 55 -0.23504052909236794 56 -0.23502350689259277 57 -0.23500278965530508 58 -0.23497839576496549 59 -0.23495034431643014
		 60 -0.23491865510787868 61 -0.23488334863350435 62 -0.23484444607597266 63 -0.2348019692986556 64 -0.23475594083764645 65 -0.2347063838935618 66 -0.23465332232313718 67 -0.23459678063062339 68 -0.2345367839589883
		 69 -0.23447335808093311 70 -0.23440652938972861 71 -0.23433632488987816 72 -0.23426277218761504 73 -0.23418589948124136 74 -0.2341057355513137 75 -0.23402230975068627 76 -0.23393565199441479 77 -0.23384579274953121
		 78 -0.23375276302469572 79 -0.23365659435973218 80 -0.23355731881505681 81 -0.23345496896100454 82 -0.23334957786706351 83 -0.23324117909102182 84 -0.23312980666803673 85 -0.23301549509963193 86 -0.23289827934263063
		 87 -0.23277819479803202 88 -0.23265527729983815 89 -0.23252956310383815 90 -0.23240108887635769 91 -0.23226989168297996 92 -0.23213600897724584 93 -0.23199947858933972 94 -0.23186033871476874 95 -0.23171862790304054
		 96 -0.23157438504634914 97 -0.23142764936827265 98 -0.23127846041249067 99 -0.23112685803152855 100 -0.23097288237553426 101 -0.23081657388109283;
createNode animCurveTU -n "pCube1_locator8_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000B85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator9_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.037449129829309258 2 -0.033350267254194599 3 -0.029252507551330575 4 -0.025155702953977843 5 -0.021059705828288977
		 6 -0.016964368651893547 7 -0.012869543992517218 8 -0.0087750844866272826 9 -0.0046808428180984962 10 -0.00058667169689313736 11 0.0035075761622522794 12 0.0076020480611390662 13 0.01169689133942553 14 0.015792253395956801
		 15 0.019888281710115474 16 0.023985123863197066 17 0.028082927559817783 18 0.032181840649361027 19 0.036282011147470095 20 0.040383587257591946 21 0.04448671739258081 22 0.048591550196366962 23 0.052698234565697444
		 24 0.056806919671956613 25 0.060917754983071948 26 0.065030890285513232 27 0.069146475706390986 28 0.073264661735662151 29 0.077385599248449011 30 0.081509439527479577 31 0.085636334285655202 32 0.089766435688754198
		 33 0.093899896378278114 34 0.098036869494447232 35 0.10217750869935394 36 0.10632196820028128 37 0.11047040277319398 38 0.11462296778640968 39 0.11877981922445835 40 0.12294111371213889 41 0.12710700853877754
		 42 0.13127766168270172 43 0.13545323183593183 44 0.1396338784291038 45 0.14381976165662835 46 0.14801104250209685 47 0.15220788276394159 48 0.15641044508136148 49 0.16061889296051823 50 0.164833390801018
		 51 0.16905410392268128 52 0.17328119859261781 53 0.17751484205260881 54 0.18175520254681221 55 0.18600244934979915 56 0.19025675279492971 57 0.19451828430308271 58 0.1987872164117469 59 0.20306372280448493
		 60 0.20734797834078367 61 0.21164015908629774 62 0.21594044234350263 63 0.22024900668276615 64 0.22456603197385161 65 0.22889169941786336 66 0.2332261915796503 67 0.2375696924206776 68 0.24192238733237992
		 69 0.2462844631700114 70 0.25065610828700535 71 0.25503751256985574 72 0.25942886747353799 73 0.26383036605748156 74 0.26824220302211144 75 0.27266457474596983 76 0.27709767932344009 77 0.28154171660308336
		 78 0.28599688822660718 79 0.29046339766848273 80 0.29494145027622876 81 0.29943125331137554 82 0.3039330159911372 83 0.30844694953079699 84 0.31297326718683838 85 0.31751218430083139 86 0.32206391834410231
		 87 0.32662868896319841 88 0.3312067180261794 89 0.33579822966974893 90 0.34040345034725172 91 0.34502260887756042 92 0.34965593649487414 93 0.35430366689945036 94 0.35896603630930368 95 0.36364328351288444
		 96 0.36833564992277412 97 0.37304337963041923 98 0.37776671946193152 99 0.3825059190349851 100 0.38726123081683761 101 0.39203291018350417;
createNode animCurveTL -n "pCube2_locator9_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.056173694743963942 2 0.056162835394044985 3 0.056152915638254752 4 0.056143934779787741 5 0.056135892206856552
		 6 0.05612878739256788 7 0.056122619894818038 8 0.056117389356206693 9 0.056113095503969923 10 0.056109738149931365 11 0.056107317190472239 12 0.056105832606520245 13 0.056105284463556893 14 0.056105672911643589
		 15 0.056106998185466161 16 0.056109260604398692 17 0.056112460572585454 18 0.056116598579042054 19 0.056121675197775001 20 0.056127691087920373 21 0.056134646993901471 22 0.056142543745605566 23 0.056151382258578963
		 24 0.056161163534242386 25 0.056171888660124569 26 0.05618355881011583 27 0.056196175244741076 28 0.056209739311451568 29 0.056224252444937561 30 0.056239716167460152 31 0.056256132089202882 32 0.056273501908643775
		 33 0.056291827412947804 34 0.056311110478379445 35 0.05633135307073589 36 0.05635255724580146 37 0.056374725149822225 38 0.056397859020002827 39 0.056421961185023739 40 0.056447034065581159 41 0.056473080174947676
		 42 0.056500102119555695 43 0.056528102599603613 44 0.056557084409683434 45 0.056587050439432574 46 0.056618003674207662 47 0.05664994719578309 48 0.05668288418307188 49 0.056716817912872086 50 0.056751751760636293
		 51 0.056787689201267089 52 0.056824633809936964 53 0.056862589262933305 54 0.056901559338530361 55 0.056941547917886526 56 0.056982558985968712 57 0.057024596632503144 58 0.057067665052955019 59 0.057111768549534037
		 60 0.05715691153223057 61 0.057203098519878925 62 0.05725033414125047 63 0.057298623136177507 64 0.057347970356705802 65 0.057398380768279522 66 0.057449859450956708 67 0.057502411600657388 68 0.057556042530443441
		 69 0.057610757671832658 70 0.057666562576145663 71 0.057723462915888146 72 0.057781464486167389 73 0.057840573206145107 74 0.057900795120526816 75 0.057962136401087827 76 0.058024603348237558 77 0.058088202392623023
		 78 0.058152940096770522 79 0.058218823156769073 80 0.058285858403993918 81 0.058354052806872225 82 0.058423413472691976 83 0.058493947649454592 84 0.058565662727771417 85 0.058638566242807166 86 0.058712665876268888
		 87 0.058787969458443112 88 0.058864484970281739 89 0.058942220545537327 90 0.059021184472949906 91 0.059101385198484735 92 0.059182831327624918 93 0.059265531627716639 94 0.059349495030371235 95 0.059434730633924238
		 96 0.059521247705951463 97 0.059609055685846846 98 0.059698164187459102 99 0.059788583001792017 100 0.059880322099769123 101 0.059973391635062656;
createNode animCurveTU -n "pCube2_locator9_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator10_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.037449129829309258 2 0.041549243197760766 3 0.04565075545648356 4 0.049753814899815674 5 0.053858570041113163
		 6 0.0579651696344331 7 0.06207376269628806 8 0.066184498527482538 9 0.070297526735036087 10 0.074412997254200031 11 0.078531060370576222 12 0.082651866742342817 13 0.086775567422595401 14 0.090902313881811247
		 15 0.095032258030440575 16 0.099165552241637034 17 0.10330234937413052 18 0.10744280279525098 19 0.11158706640411242 20 0.11573529465496168 21 0.11988764258070195 22 0.12404426581659789 23 0.12820532062417
		 24 0.13237096391528658 25 0.13654135327646166 26 0.14071664699336539 27 0.14489700407555761 28 0.14908258428145149 29 0.15327354814351524 30 0.15747005699372296 31 0.16167227298925957 32 0.16588035913849364
		 33 0.17009447932722255 34 0.17431479834520203 35 0.1785414819129687 36 0.18277469670896562 37 0.18701461039697964 38 0.19126139165390021 39 0.19551521019781293 40 0.19977623681643353 41 0.20404464339589545
		 42 0.20832060294990218 43 0.21260428964925349 44 0.21689587885175798 45 0.22119554713254186 46 0.22550347231476819 47 0.22981983350077551 48 0.23414481110364949 49 0.23847858687923928 50 0.24282134395863242
		 51 0.24717326688109886 52 0.25153454162751987 53 0.25590535565431394 54 0.26028589792787105 55 0.26467635895951691 56 0.26907693084101048 57 0.27348780728059985 58 0.27790918363964545 59 0.28234125696982781
		 60 0.28678422605095555 61 0.29123829142938984 62 0.29570365545710176 63 0.30018052233137926 64 0.30466909813520215 65 0.30916959087830054 66 0.31368221053891832 67 0.31820716910629809 68 0.32274468062390482
		 69 0.32729496123341439 70 0.33185822921948027 71 0.33643470505530115 72 0.3410246114490143 73 0.34562817339093022 74 0.35024561820163669 75 0.35487717558098941 76 0.3595230776580205 77 0.36418355904178035
		 78 0.36885885687314279 79 0.37354921087759951 80 0.37825486341906633 81 0.38297605955473069 82 0.38771304709096888 83 0.39246607664035782 84 0.39723540167981475 85 0.40202127860989023 86 0.40682396681525224
		 87 0.41164372872638211 88 0.41648082988252821 89 0.42133553899593912 90 0.42620812801741859 91 0.4310988722032334 92 0.43600805018341249 93 0.44093594403147462 94 0.44588283933562356 95 0.45084902527144965
		 96 0.45583479467617738 97 0.46084044412450753 98 0.46586627400608749 99 0.47091258860466334 100 0.47597969617895408 101 0.48106790904529695;
createNode animCurveTL -n "pCube2_locator10_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.056173694743963942 2 0.056185494469977226 3 0.056198235439372302 4 0.056211918604938016 5 0.056226545005164885
		 6 0.056242115764462364 7 0.056258632093397654 8 0.056276095288951389 9 0.056294506734794858 10 0.056313867901585657 11 0.056334180347282437 12 0.056355445717481079 13 0.056377665745768968 14 0.056400842254100803
		 15 0.05642497715319339 16 0.056450072442941535 17 0.056476130212854359 18 0.056503152642511822 19 0.056531142002043344 20 0.056560100652625511 21 0.056590031047003664 22 0.056620935730032573 23 0.056652817339240324
		 24 0.056685678605413847 25 0.056719522353206653 26 0.056754351501768552 27 0.056790169065399354 28 0.056826978154224328 29 0.056864781974893308 30 0.056903583831304227 31 0.056943387125349409 32 0.056984195357686951
		 33 0.057026012128536196 34 0.057068841138498416 35 0.057112686189402462 36 0.057157551185176514 37 0.057203440132745587 38 0.057250357142955233 39 0.057298306431522339 40 0.057347292320013565 41 0.05739731923685043
		 42 0.057448391718343483 43 0.057500514409754455 44 0.057553692066388051 45 0.057607929554712611 46 0.057663231853511188 47 0.057719604055063489 48 0.057777051366358134 49 0.057835579110337543 50 0.05789519272717436
		 51 0.057955897775580745 52 0.058017699934151512 53 0.058080605002741259 54 0.058144618903875678 55 0.058209747684198399 56 0.058275997515955025 57 0.058343374698511585 58 0.058411885659912954 59 0.058481536958477687
		 60 0.058552335284432599 61 0.05862428746158721 62 0.058697400449048143 63 0.058771681342975612 64 0.058847137378381875 65 0.058923775930972644 66 0.059001604519032913 67 0.059080630805357748 68 0.059160862599228814
		 69 0.059242307858437648 70 0.059324974691358112 71 0.059408871359065918 72 0.059494006277510336 73 0.05958038801973542 74 0.059668025318154738 75 0.059756927066879184 76 0.05984710232409951 77 0.05993856031452538
		 78 0.060031310431880813 79 0.060125362241459146 80 0.060220725482737603 81 0.06031741007205349 82 0.060415426105342784 83 0.060514783860943444 84 0.060615493802464671 85 0.060717566581723559 86 0.060821013041750249
		 87 0.060925844219864911 88 0.061032071350826222 89 0.061139705870055017 90 0.061248759416933085 91 0.061359243838180366 92 0.061471171191312735 93 0.061584553748180615 94 0.061699403998591973 95 0.061815734654022125
		 96 0.061933558651410592 97 0.062052889157049873 98 0.062173739570565822 99 0.062296123528994607 100 0.06242005491095648 101 0.062545547840929916;
createNode animCurveTU -n "pCube2_locator10_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator11_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.037449129829309258 2 -0.033350267254194599 3 -0.029252507551330575 4 -0.025155702953977843 5 -0.021059705828288977
		 6 -0.016964368651893547 7 -0.012869543992517218 8 -0.0087750844866272826 9 -0.0046808428180984962 10 -0.00058667169689313736 11 0.0035075761622522794 12 0.0076020480611390662 13 0.01169689133942553 14 0.015792253395956801
		 15 0.019888281710115474 16 0.023985123863197066 17 0.028082927559817783 18 0.032181840649361027 19 0.036282011147470095 20 0.040383587257591946 21 0.04448671739258081 22 0.048591550196366962 23 0.052698234565697444
		 24 0.056806919671956613 25 0.060917754983071948 26 0.065030890285513232 27 0.069146475706390986 28 0.073264661735662151 29 0.077385599248449011 30 0.081509439527479577 31 0.085636334285655202 32 0.089766435688754198
		 33 0.093899896378278114 34 0.098036869494447232 35 0.10217750869935394 36 0.10632196820028128 37 0.11047040277319398 38 0.11462296778640968 39 0.11877981922445835 40 0.12294111371213889 41 0.12710700853877754
		 42 0.13127766168270172 43 0.13545323183593183 44 0.1396338784291038 45 0.14381976165662835 46 0.14801104250209685 47 0.15220788276394159 48 0.15641044508136148 49 0.16061889296051823 50 0.164833390801018
		 51 0.16905410392268128 52 0.17328119859261781 53 0.17751484205260881 54 0.18175520254681221 55 0.18600244934979915 56 0.19025675279492971 57 0.19451828430308271 58 0.1987872164117469 59 0.20306372280448493
		 60 0.20734797834078367 61 0.21164015908629774 62 0.21594044234350263 63 0.22024900668276615 64 0.22456603197385161 65 0.22889169941786336 66 0.2332261915796503 67 0.2375696924206776 68 0.24192238733237992
		 69 0.2462844631700114 70 0.25065610828700535 71 0.25503751256985574 72 0.25942886747353799 73 0.26383036605748156 74 0.26824220302211144 75 0.27266457474596983 76 0.27709767932344009 77 0.28154171660308336
		 78 0.28599688822660718 79 0.29046339766848273 80 0.29494145027622876 81 0.29943125331137554 82 0.3039330159911372 83 0.30844694953079699 84 0.31297326718683838 85 0.31751218430083139 86 0.32206391834410231
		 87 0.32662868896319841 88 0.3312067180261794 89 0.33579822966974893 90 0.34040345034725172 91 0.34502260887756042 92 0.34965593649487414 93 0.35430366689945036 94 0.35896603630930368 95 0.36364328351288444
		 96 0.36833564992277412 97 0.37304337963041923 98 0.37776671946193152 99 0.3825059190349851 100 0.38726123081683761 101 0.39203291018350417;
createNode animCurveTL -n "pCube2_locator11_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.056173694743963887 2 -0.056162835394044985 3 -0.056152915638254752 4 -0.056143934779787796 5 -0.056135892206856608
		 6 -0.05612878739256788 7 -0.056122619894817982 8 -0.056117389356206637 9 -0.056113095503969923 10 -0.05610973814993131 11 -0.056107317190472239 12 -0.056105832606520301 13 -0.056105284463556948 14 -0.056105672911643589
		 15 -0.056106998185466161 16 -0.056109260604398692 17 -0.05611246057258551 18 -0.056116598579042054 19 -0.056121675197775001 20 -0.056127691087920373 21 -0.056134646993901471 22 -0.056142543745605566 23 -0.056151382258578963
		 24 -0.056161163534242386 25 -0.056171888660124569 26 -0.056183558810115886 27 -0.056196175244741076 28 -0.056209739311451568 29 -0.056224252444937617 30 -0.056239716167460152 31 -0.056256132089202882 32 -0.056273501908643719
		 33 -0.056291827412947804 34 -0.056311110478379445 35 -0.056331353070735946 36 -0.05635255724580146 37 -0.056374725149822225 38 -0.056397859020002827 39 -0.056421961185023795 40 -0.056447034065581214 41 -0.056473080174947621
		 42 -0.056500102119555695 43 -0.056528102599603558 44 -0.056557084409683434 45 -0.056587050439432518 46 -0.056618003674207662 47 -0.05664994719578309 48 -0.05668288418307188 49 -0.056716817912872031 50 -0.056751751760636293
		 51 -0.056787689201267089 52 -0.056824633809936909 53 -0.05686258926293325 54 -0.056901559338530361 55 -0.056941547917886526 56 -0.056982558985968712 57 -0.057024596632503199 58 -0.057067665052954963 59 -0.057111768549534037
		 60 -0.05715691153223057 61 -0.05720309851987887 62 -0.05725033414125047 63 -0.057298623136177507 64 -0.057347970356705802 65 -0.057398380768279522 66 -0.057449859450956708 67 -0.057502411600657388 68 -0.057556042530443441
		 69 -0.057610757671832658 70 -0.057666562576145663 71 -0.057723462915888146 72 -0.057781464486167389 73 -0.057840573206145107 74 -0.057900795120526816 75 -0.057962136401087772 76 -0.058024603348237558 77 -0.058088202392622967
		 78 -0.058152940096770522 79 -0.058218823156769128 80 -0.058285858403993918 81 -0.05835405280687217 82 -0.058423413472691976 83 -0.058493947649454536 84 -0.058565662727771417 85 -0.058638566242807111 86 -0.058712665876268832
		 87 -0.058787969458443112 88 -0.058864484970281683 89 -0.058942220545537327 90 -0.05902118447294985 91 -0.05910138519848479 92 -0.059182831327624918 93 -0.059265531627716639 94 -0.059349495030371291 95 -0.059434730633924182
		 96 -0.059521247705951519 97 -0.059609055685846901 98 -0.059698164187459102 99 -0.059788583001792017 100 -0.059880322099769179 101 -0.059973391635062656;
createNode animCurveTU -n "pCube2_locator11_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000BE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator12_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.037449129829309258 2 0.041549243197760766 3 0.04565075545648356 4 0.049753814899815674 5 0.053858570041113163
		 6 0.0579651696344331 7 0.06207376269628806 8 0.066184498527482538 9 0.070297526735036087 10 0.074412997254200031 11 0.078531060370576222 12 0.082651866742342817 13 0.086775567422595401 14 0.090902313881811247
		 15 0.095032258030440575 16 0.099165552241637034 17 0.10330234937413052 18 0.10744280279525098 19 0.11158706640411242 20 0.11573529465496168 21 0.11988764258070195 22 0.12404426581659789 23 0.12820532062417
		 24 0.13237096391528658 25 0.13654135327646166 26 0.14071664699336539 27 0.14489700407555761 28 0.14908258428145149 29 0.15327354814351524 30 0.15747005699372296 31 0.16167227298925957 32 0.16588035913849364
		 33 0.17009447932722255 34 0.17431479834520203 35 0.1785414819129687 36 0.18277469670896562 37 0.18701461039697964 38 0.19126139165390021 39 0.19551521019781293 40 0.19977623681643353 41 0.20404464339589545
		 42 0.20832060294990218 43 0.21260428964925349 44 0.21689587885175798 45 0.22119554713254186 46 0.22550347231476819 47 0.22981983350077551 48 0.23414481110364949 49 0.23847858687923928 50 0.24282134395863242
		 51 0.24717326688109886 52 0.25153454162751987 53 0.25590535565431394 54 0.26028589792787105 55 0.26467635895951691 56 0.26907693084101048 57 0.27348780728059985 58 0.27790918363964545 59 0.28234125696982781
		 60 0.28678422605095555 61 0.29123829142938984 62 0.29570365545710176 63 0.30018052233137926 64 0.30466909813520215 65 0.30916959087830054 66 0.31368221053891832 67 0.31820716910629809 68 0.32274468062390482
		 69 0.32729496123341439 70 0.33185822921948027 71 0.33643470505530115 72 0.3410246114490143 73 0.34562817339093022 74 0.35024561820163669 75 0.35487717558098941 76 0.3595230776580205 77 0.36418355904178035
		 78 0.36885885687314279 79 0.37354921087759951 80 0.37825486341906633 81 0.38297605955473069 82 0.38771304709096888 83 0.39246607664035782 84 0.39723540167981475 85 0.40202127860989023 86 0.40682396681525224
		 87 0.41164372872638211 88 0.41648082988252821 89 0.42133553899593912 90 0.42620812801741859 91 0.4310988722032334 92 0.43600805018341249 93 0.44093594403147462 94 0.44588283933562356 95 0.45084902527144965
		 96 0.45583479467617738 97 0.46084044412450753 98 0.46586627400608749 99 0.47091258860466334 100 0.47597969617895408 101 0.48106790904529695;
createNode animCurveTL -n "pCube2_locator12_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.056173694743963887 2 -0.056185494469977226 3 -0.056198235439372246 4 -0.056211918604938071 5 -0.05622654500516483
		 6 -0.056242115764462419 7 -0.056258632093397598 8 -0.056276095288951333 9 -0.056294506734794914 10 -0.056313867901585601 11 -0.056334180347282437 12 -0.056355445717481023 13 -0.056377665745768968 14 -0.056400842254100858
		 15 -0.056424977153193445 16 -0.05645007244294159 17 -0.056476130212854359 18 -0.056503152642511878 19 -0.056531142002043289 20 -0.056560100652625567 21 -0.056590031047003719 22 -0.056620935730032573 23 -0.056652817339240324
		 24 -0.056685678605413903 25 -0.056719522353206653 26 -0.056754351501768552 27 -0.05679016906539941 28 -0.056826978154224272 29 -0.056864781974893253 30 -0.056903583831304172 31 -0.056943387125349409 32 -0.056984195357686951
		 33 -0.057026012128536196 34 -0.057068841138498416 35 -0.057112686189402462 36 -0.057157551185176514 37 -0.057203440132745587 38 -0.057250357142955177 39 -0.057298306431522339 40 -0.057347292320013565 41 -0.05739731923685043
		 42 -0.057448391718343428 43 -0.057500514409754455 44 -0.057553692066388051 45 -0.057607929554712556 46 -0.057663231853511188 47 -0.057719604055063434 48 -0.057777051366358134 49 -0.057835579110337598 50 -0.05789519272717436
		 51 -0.057955897775580745 52 -0.058017699934151568 53 -0.058080605002741315 54 -0.058144618903875622 55 -0.058209747684198454 56 -0.058275997515954969 57 -0.058343374698511585 58 -0.058411885659912954 59 -0.058481536958477687
		 60 -0.058552335284432655 61 -0.05862428746158721 62 -0.058697400449048143 63 -0.058771681342975612 64 -0.058847137378381875 65 -0.058923775930972588 66 -0.059001604519032913 67 -0.059080630805357748 68 -0.059160862599228758
		 69 -0.059242307858437704 70 -0.059324974691358112 71 -0.059408871359065973 72 -0.059494006277510336 73 -0.05958038801973542 74 -0.059668025318154738 75 -0.059756927066879129 76 -0.059847102324099566 77 -0.05993856031452538
		 78 -0.060031310431880813 79 -0.06012536224145909 80 -0.060220725482737603 81 -0.06031741007205349 82 -0.060415426105342729 83 -0.060514783860943444 84 -0.060615493802464671 85 -0.060717566581723559 86 -0.060821013041750249
		 87 -0.060925844219864855 88 -0.061032071350826278 89 -0.061139705870055072 90 -0.06124875941693303 91 -0.061359243838180366 92 -0.06147117119131279 93 -0.061584553748180559 94 -0.061699403998591973 95 -0.061815734654022125
		 96 -0.061933558651410592 97 -0.062052889157049818 98 -0.062173739570565822 99 -0.062296123528994662 100 -0.062420054910956424 101 -0.062545547840929916;
createNode animCurveTU -n "pCube2_locator12_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator13_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.0347704796739709 2 -0.030601208894341481 3 -0.026432997414036097 4 -0.022265690243777503 5 -0.018099132524571349
		 6 -0.013933169504570631 7 -0.0097676465159731718 8 -0.0056024089519451925 9 -0.0014373022435634764 10 0.0027278281632313606 11 0.0068931368306770491 12 0.011058778352236232 13 0.015224907375652741 14 0.019391678626026199
		 15 0.023559246928911759 16 0.027727767233452716 17 0.031897394635553189 18 0.036068284401097328 19 0.040240591989224694 20 0.044414473075666372 21 0.04859008357615191 22 0.052767579669892872 23 0.056947117823150983
		 24 0.061128854812899203 25 0.065312947750582606 26 0.069499554105985961 27 0.073688831731218318 28 0.077880938884820394 29 0.082076034256001518 30 0.086274276989019016 31 0.090475826707700935 32 0.09468084354012718
		 33 0.098889488143472648 34 0.10310192172902244 35 0.10731830608736725 36 0.1115388036137881 37 0.11576357733383724 38 0.1199927909291264 39 0.12422660876332903 40 0.12846519590840677 41 0.13270871817106877
		 42 0.13695734211947286 43 0.1412112351101793 44 0.14547056531536384 45 0.14973550175030303 46 0.15400621430113903 47 0.15828287375293482 48 0.1625656518180314 49 0.16685472116471267 50 0.171150255446196
		 51 0.17545242932995042 52 0.17976141852736149 53 0.18407739982374749 54 0.18840055110874165 55 0.19273105140705216 56 0.19706908090960873 57 0.20141482100511143 58 0.20576845431199076 59 0.21013016471079371
		 60 0.21450013737700713 61 0.21887855881433138 62 0.22326561688841973 63 0.22766150086109183 64 0.23206640142504331 65 0.23648051073905596 66 0.24090402246373077 67 0.24533713179775551 68 0.24978003551471939
		 69 0.25423293200049679 70 0.25869602129120906 71 0.2631695051117835 72 0.26765358691512875 73 0.2721484719219367 74 0.27665436716113678 75 0.28117148151101112 76 0.28570002574099851 77 0.2902402125541983
		 78 0.29479225663059505 79 0.29935637467102683 80 0.30393278544191438 81 0.30852170982076998 82 0.3131233708425134 83 0.31773799374660805 84 0.32236580602504872 85 0.32700703747121429 86 0.33166192022961916
		 87 0.3363306888465758 88 0.34101358032180418 89 0.34571083416100645 90 0.3504226924294338 91 0.35514939980647497 92 0.35989120364129223 93 0.36464835400953022 94 0.36942110377113302 95 0.37420970862929281
		 96 0.379014427190564 97 0.38383552102617546 98 0.38867325473456849 99 0.39352789600519855 100 0.39839971568363386 101 0.40328898783798239;
createNode animCurveTL -n "pCube2_locator13_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.052155719510956322 2 0.052146409081062495 3 0.052138010594602435 4 0.052130523423531749 5 0.052123947024685924
		 6 0.052118280939666528 7 0.052113524794747734 8 0.052109678300800488 9 0.052106741253237887 10 0.052104713531978319 11 0.05210359510142859 12 0.052103386010485697 13 0.052104086392558813 14 0.052105696465608808
		 15 0.052108216532209317 16 0.05211164697962456 17 0.052115988279908598 18 0.052121240990023021 19 0.05212740575197361 20 0.052134483292967437 21 0.052142474425588725 22 0.052151380047995133 23 0.052161201144132696
		 24 0.052171938783971306 25 0.052183594123760169 26 0.05219616840630259 27 0.052209662961251735 28 0.052224079205425711 29 0.052239418643144186 30 0.05225568286658433 31 0.052272873556158617 32 0.052290992480912291
		 33 0.052310041498943027 34 0.05233002255784136 35 0.052350937695151867 36 0.052372789038857004 37 0.052395578807882481 38 0.052419309312624174 39 0.052443982955497792 40 0.052469602231511203 41 0.052496169728859177
		 42 0.052523688129541002 43 0.052552160210002419 44 0.052581588841799975 45 0.0526119769922897 46 0.052643327725340638 47 0.052675644202071936 48 0.052708929681615224 49 0.052743187521902435 50 0.052778421180478929
		 51 0.052814634215342493 52 0.052851830285808643 53 0.052890013153403248 54 0.052929186682781126 55 0.052969354842673733 56 0.053010521706862934 57 0.053052691455185097 58 0.053095868374563038 59 0.053140056860067064
		 60 0.053185261416007212 61 0.053231486657054461 62 0.053278737309393698 63 0.053327018211907773 64 0.053376334317394303 65 0.053426690693813783 66 0.053478092525572118 67 0.05353054511483657 68 0.053584053882886229
		 69 0.053638624371497023 70 0.0536942622443638 71 0.053750973288557602 72 0.053808763416020922 73 0.053867638665100803 74 0.053927605202120477 75 0.053988669322990512 76 0.054050837454860501 77 0.054114116157811809
		 78 0.054178512126591971 79 0.054244032192392821 80 0.054310683324671372 81 0.054378472633016206 82 0.054447407369059064 83 0.054517494928433829 84 0.054588742852782257 85 0.054661158831809331 86 0.054734750705387802
		 87 0.054809526465714353 88 0.054885494259517498 89 0.054962662390318551 90 0.055041039320747998 91 0.055120633674916597 92 0.055201454240844328 93 0.055283509972947398 94 0.05536680999458532 95 0.055451363600668935
		 96 0.055537180260331054 97 0.055624269619661826 98 0.055712641504509275 99 0.055802305923347006 100 0.055893273070211968 101 0.055985553327711046;
createNode animCurveTU -n "pCube2_locator13_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator14_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.034770479673970955 2 0.03894096489566079 3 0.043112819878830977 4 0.047286200142864443 5 0.051461261430449712
		 6 0.055638159730993841 7 0.059817051304112745 8 0.063998092703207332 9 0.068181440799132575 10 0.072367252803966831 11 0.076555686294889735 12 0.08074689923817624 13 0.08494105001331409 14 0.089138297437254099
		 15 0.093338800788798526 16 0.097542719833138891 17 0.10175021484654911 18 0.10596144664124196 19 0.11017657659039959 20 0.11439576665338302 21 0.11861917940113265 22 0.12284697804176581 23 0.12707932644638054
		 24 0.13131638917507615 25 0.13555833150319674 26 0.13980531944780972 27 0.14405751979442538 28 0.14831510012397009 29 0.15257822884001992 30 0.15684707519630625 31 0.1611218093245016 32 0.16540260226229742
		 33 0.16968962598178194 34 0.17398305341812992 35 0.1782830584986137 36 0.18258981617194814 37 0.18690350243797782 38 0.19122429437771815 39 0.19555237018376359 40 0.1998879091910728 41 0.20423109190814115
		 42 0.20858210004857636 43 0.21294111656308579 44 0.21730832567188951 45 0.22168391289757117 46 0.22606806509838129 47 0.23046097050200276 48 0.23486281873979631 49 0.23927380088153616 50 0.24369410947065218
		 51 0.24812393855999137 52 0.25256348374811632 53 0.25701294221615045 54 0.26147251276519134 55 0.26594239585430435 56 0.2704227936391127 57 0.27491391001100318 58 0.27941595063696056 59 0.28392912300005224
		 60 0.28845363644057653 61 0.292989702197897 62 0.29753753345297762 63 0.30209734537164068 64 0.30666935514856597 65 0.31125378205205068 66 0.31585084746955139 67 0.32046077495403025 68 0.32508379027112166
		 69 0.32972012144715213 70 0.33436999881802398 71 0.33903365507899408 72 0.3437113253353703 73 0.34840324715414739 74 0.3531096606166122 75 0.35783080837193815 76 0.36256693569180176 77 0.36731829052604659
		 78 0.37208512355941736 79 0.37686768826940309 80 0.38166624098521096 81 0.38648104094790425 82 0.39131235037173617 83 0.3961604345067109 84 0.40102556170240589 85 0.40590800347308775 86 0.41080803456416093
		 87 0.41572593301997784 88 0.42066198025305801 89 0.42561646111474261 90 0.43058966396733589 91 0.43558188075776183 92 0.44059340709278927 93 0.44562454231585791 94 0.45067558958555987 95 0.45574685595581099
		 96 0.460838652457769 97 0.46595129418354087 98 0.47108510037173057 99 0.47624039449487898 100 0.48141750434884867 101 0.48661676214420668;
createNode animCurveTL -n "pCube2_locator14_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.052155719510956322 2 0.052165942597340642 3 0.052177079138437166 4 0.052189130017803675 5 0.052202096204526205
		 6 0.052215978753428982 7 0.052230778805305911 8 0.05224649758717026 9 0.052263136412525668 10 0.052280696681656025 11 0.052299179881936553 12 0.052318587588164212 13 0.052338921462909083 14 0.052360183256886739
		 15 0.052382374809349819 16 0.052405498048502364 17 0.052429554991934357 18 0.052454547747076807 19 0.052480478511680029 20 0.052507349574311801 21 0.052535163314878619 22 0.052563922205168256 23 0.052593628809415538
		 24 0.052624285784889757 25 0.052655895882505188 26 0.052688461947455578 27 0.052721986919870401 28 0.052756473835496198 29 0.052791925826401354 30 0.052828346121704506 31 0.05286573804832928 32 0.052904105031781667
		 33 0.052943450596954489 34 0.052983778368956957 35 0.053025092073969549 36 0.053067395540126516 37 0.053110692698423945 38 0.053154987583655888 39 0.053200284335377712 40 0.053246587198897632 41 0.053293900526296567
		 42 0.053342228777477407 43 0.053391576521242823 44 0.053441948436404374 45 0.053493349312920935 46 0.053545784053068757 47 0.053599257672642509 48 0.053653775302189288 49 0.053709342188274278 50 0.053765963694780594
		 51 0.053823645304242884 52 0.053882392619214459 53 0.053942211363671277 54 0.054003107384450577 55 0.054065086652726579 56 0.05412815526552317 57 0.054192319447264992 58 0.054257585551367282 59 0.054323960061864573
		 60 0.054391449595081243 61 0.054460060901341478 62 0.054529800866722988 63 0.05460067651485212 64 0.054672695008744387 65 0.054745863652688631 66 0.05482018989417714 67 0.054895681325883072 68 0.054972345687685165
		 69 0.055050190868741411 70 0.055129224909612251 71 0.05520945600443572 72 0.055290892503153888 73 0.055373542913792928 74 0.055457415904797691 75 0.055542520307422572 76 0.05562886511817855 77 0.055716459501339632
		 78 0.055805312791508355 79 0.055895434496243457 80 0.055986834298748511 81 0.056079522060627052 82 0.056173507824701319 83 0.056268801817899505 84 0.056365414454211504 85 0.056463356337715376 86 0.056562638265676424
		 87 0.056663271231719659 88 0.056765266429079198 89 0.056868635253924826 90 0.056973389308768829 91 0.057079540405954865 92 0.057187100571229776 93 0.057296082047402885 94 0.057406497298092662 95 0.057518359011564324
		 96 0.057631680104660021 97 0.057746473726825287 98 0.057862753264232181 99 0.05798053234400391 100 0.058099824838541814 101 0.058220644869958482;
createNode animCurveTU -n "pCube2_locator14_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator15_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.0347704796739709 2 -0.030601208894341481 3 -0.026432997414036097 4 -0.022265690243777503 5 -0.018099132524571349
		 6 -0.013933169504570631 7 -0.0097676465159731718 8 -0.0056024089519451925 9 -0.0014373022435634764 10 0.0027278281632313606 11 0.0068931368306770491 12 0.011058778352236232 13 0.015224907375652741 14 0.019391678626026199
		 15 0.023559246928911759 16 0.027727767233452716 17 0.031897394635553189 18 0.036068284401097328 19 0.040240591989224694 20 0.044414473075666372 21 0.04859008357615191 22 0.052767579669892872 23 0.056947117823150983
		 24 0.061128854812899203 25 0.065312947750582606 26 0.069499554105985961 27 0.073688831731218318 28 0.077880938884820394 29 0.082076034256001518 30 0.086274276989019016 31 0.090475826707700935 32 0.09468084354012718
		 33 0.098889488143472648 34 0.10310192172902244 35 0.10731830608736725 36 0.1115388036137881 37 0.11576357733383724 38 0.1199927909291264 39 0.12422660876332903 40 0.12846519590840677 41 0.13270871817106877
		 42 0.13695734211947286 43 0.1412112351101793 44 0.14547056531536384 45 0.14973550175030303 46 0.15400621430113903 47 0.15828287375293482 48 0.1625656518180314 49 0.16685472116471267 50 0.171150255446196
		 51 0.17545242932995042 52 0.17976141852736149 53 0.18407739982374749 54 0.18840055110874165 55 0.19273105140705216 56 0.19706908090960873 57 0.20141482100511143 58 0.20576845431199076 59 0.21013016471079371
		 60 0.21450013737700713 61 0.21887855881433138 62 0.22326561688841973 63 0.22766150086109183 64 0.23206640142504331 65 0.23648051073905596 66 0.24090402246373077 67 0.24533713179775551 68 0.24978003551471939
		 69 0.25423293200049679 70 0.25869602129120906 71 0.2631695051117835 72 0.26765358691512875 73 0.2721484719219367 74 0.27665436716113678 75 0.28117148151101112 76 0.28570002574099851 77 0.2902402125541983
		 78 0.29479225663059505 79 0.29935637467102683 80 0.30393278544191438 81 0.30852170982076998 82 0.3131233708425134 83 0.31773799374660805 84 0.32236580602504872 85 0.32700703747121429 86 0.33166192022961916
		 87 0.3363306888465758 88 0.34101358032180418 89 0.34571083416100645 90 0.3504226924294338 91 0.35514939980647497 92 0.35989120364129223 93 0.36464835400953022 94 0.36942110377113302 95 0.37420970862929281
		 96 0.379014427190564 97 0.38383552102617546 98 0.38867325473456849 99 0.39352789600519855 100 0.39839971568363386 101 0.40328898783798239;
createNode animCurveTL -n "pCube2_locator15_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.052155719510956322 2 -0.05214640908106255 3 -0.052138010594602435 4 -0.052130523423531749 5 -0.052123947024685868
		 6 -0.052118280939666584 7 -0.052113524794747679 8 -0.052109678300800433 9 -0.052106741253237887 10 -0.052104713531978319 11 -0.052103595101428535 12 -0.052103386010485753 13 -0.052104086392558757 14 -0.052105696465608864
		 15 -0.052108216532209262 16 -0.05211164697962456 17 -0.052115988279908654 18 -0.052121240990023021 19 -0.05212740575197361 20 -0.052134483292967437 21 -0.052142474425588781 22 -0.052151380047995133 23 -0.052161201144132696
		 24 -0.052171938783971361 25 -0.052183594123760169 26 -0.052196168406302645 27 -0.052209662961251735 28 -0.052224079205425711 29 -0.052239418643144186 30 -0.05225568286658433 31 -0.052272873556158561 32 -0.052290992480912235
		 33 -0.052310041498943083 34 -0.05233002255784136 35 -0.052350937695151811 36 -0.052372789038857004 37 -0.052395578807882481 38 -0.052419309312624174 39 -0.052443982955497792 40 -0.052469602231511259 41 -0.052496169728859177
		 42 -0.052523688129541057 43 -0.052552160210002419 44 -0.05258158884179992 45 -0.0526119769922897 46 -0.052643327725340638 47 -0.052675644202071881 48 -0.052708929681615224 49 -0.052743187521902435 50 -0.052778421180478985
		 51 -0.052814634215342493 52 -0.052851830285808643 53 -0.052890013153403193 54 -0.052929186682781126 55 -0.052969354842673677 56 -0.053010521706862879 57 -0.053052691455185097 58 -0.053095868374562982 59 -0.053140056860067064
		 60 -0.053185261416007212 61 -0.053231486657054461 62 -0.053278737309393642 63 -0.053327018211907828 64 -0.053376334317394303 65 -0.053426690693813728 66 -0.053478092525572063 67 -0.05353054511483657 68 -0.053584053882886173
		 69 -0.053638624371497023 70 -0.0536942622443638 71 -0.053750973288557602 72 -0.053808763416020922 73 -0.053867638665100859 74 -0.053927605202120532 75 -0.053988669322990512 76 -0.054050837454860501 77 -0.054114116157811754
		 78 -0.054178512126591971 79 -0.054244032192392821 80 -0.054310683324671372 81 -0.054378472633016151 82 -0.054447407369059064 83 -0.054517494928433885 84 -0.054588742852782313 85 -0.054661158831809331 86 -0.054734750705387802
		 87 -0.054809526465714353 88 -0.054885494259517498 89 -0.054962662390318606 90 -0.055041039320748053 91 -0.055120633674916597 92 -0.055201454240844328 93 -0.055283509972947398 94 -0.05536680999458532 95 -0.055451363600668935
		 96 -0.055537180260331054 97 -0.055624269619661826 98 -0.055712641504509275 99 -0.055802305923347062 100 -0.055893273070211913 101 -0.055985553327711102;
createNode animCurveTU -n "pCube2_locator15_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator16_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.034770479673970955 2 0.03894096489566079 3 0.043112819878830977 4 0.047286200142864443 5 0.051461261430449712
		 6 0.055638159730993841 7 0.059817051304112745 8 0.063998092703207332 9 0.068181440799132575 10 0.072367252803966831 11 0.076555686294889735 12 0.08074689923817624 13 0.08494105001331409 14 0.089138297437254099
		 15 0.093338800788798526 16 0.097542719833138891 17 0.10175021484654911 18 0.10596144664124196 19 0.11017657659039959 20 0.11439576665338302 21 0.11861917940113265 22 0.12284697804176581 23 0.12707932644638054
		 24 0.13131638917507615 25 0.13555833150319674 26 0.13980531944780972 27 0.14405751979442538 28 0.14831510012397009 29 0.15257822884001992 30 0.15684707519630625 31 0.1611218093245016 32 0.16540260226229742
		 33 0.16968962598178194 34 0.17398305341812992 35 0.1782830584986137 36 0.18258981617194814 37 0.18690350243797782 38 0.19122429437771815 39 0.19555237018376359 40 0.1998879091910728 41 0.20423109190814115
		 42 0.20858210004857636 43 0.21294111656308579 44 0.21730832567188951 45 0.22168391289757117 46 0.22606806509838129 47 0.23046097050200276 48 0.23486281873979631 49 0.23927380088153616 50 0.24369410947065218
		 51 0.24812393855999137 52 0.25256348374811632 53 0.25701294221615045 54 0.26147251276519134 55 0.26594239585430435 56 0.2704227936391127 57 0.27491391001100318 58 0.27941595063696056 59 0.28392912300005224
		 60 0.28845363644057653 61 0.292989702197897 62 0.29753753345297762 63 0.30209734537164068 64 0.30666935514856597 65 0.31125378205205068 66 0.31585084746955139 67 0.32046077495403025 68 0.32508379027112166
		 69 0.32972012144715213 70 0.33436999881802398 71 0.33903365507899408 72 0.3437113253353703 73 0.34840324715414739 74 0.3531096606166122 75 0.35783080837193815 76 0.36256693569180176 77 0.36731829052604659
		 78 0.37208512355941736 79 0.37686768826940309 80 0.38166624098521096 81 0.38648104094790425 82 0.39131235037173617 83 0.3961604345067109 84 0.40102556170240589 85 0.40590800347308775 86 0.41080803456416093
		 87 0.41572593301997784 88 0.42066198025305801 89 0.42561646111474261 90 0.43058966396733589 91 0.43558188075776183 92 0.44059340709278927 93 0.44562454231585791 94 0.45067558958555987 95 0.45574685595581099
		 96 0.460838652457769 97 0.46595129418354087 98 0.47108510037173057 99 0.47624039449487898 100 0.48141750434884867 101 0.48661676214420668;
createNode animCurveTL -n "pCube2_locator16_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.052155719510956322 2 -0.052165942597340698 3 -0.05217707913843711 4 -0.052189130017803675 5 -0.052202096204526205
		 6 -0.052215978753429038 7 -0.052230778805305911 8 -0.05224649758717026 9 -0.052263136412525613 10 -0.052280696681656025 11 -0.052299179881936553 12 -0.052318587588164156 13 -0.052338921462909138 14 -0.052360183256886683
		 15 -0.052382374809349763 16 -0.052405498048502364 17 -0.052429554991934302 18 -0.052454547747076807 19 -0.052480478511680029 20 -0.052507349574311801 21 -0.052535163314878564 22 -0.052563922205168256 23 -0.052593628809415593
		 24 -0.052624285784889702 25 -0.052655895882505244 26 -0.052688461947455578 27 -0.052721986919870401 28 -0.052756473835496254 29 -0.052791925826401298 30 -0.052828346121704561 31 -0.05286573804832928 32 -0.052904105031781667
		 33 -0.052943450596954544 34 -0.052983778368956957 35 -0.053025092073969604 36 -0.053067395540126516 37 -0.053110692698423945 38 -0.053154987583655833 39 -0.053200284335377712 40 -0.053246587198897632 41 -0.053293900526296623
		 42 -0.053342228777477352 43 -0.053391576521242767 44 -0.053441948436404374 45 -0.05349334931292099 46 -0.053545784053068757 47 -0.053599257672642564 48 -0.053653775302189288 49 -0.053709342188274223 50 -0.05376596369478065
		 51 -0.053823645304242829 52 -0.053882392619214403 53 -0.053942211363671277 54 -0.054003107384450577 55 -0.054065086652726579 56 -0.05412815526552317 57 -0.054192319447264992 58 -0.054257585551367227 59 -0.054323960061864629
		 60 -0.054391449595081243 61 -0.054460060901341534 62 -0.054529800866722933 63 -0.05460067651485212 64 -0.054672695008744443 65 -0.054745863652688631 66 -0.05482018989417714 67 -0.054895681325883128 68 -0.05497234568768522
		 69 -0.055050190868741411 70 -0.055129224909612251 71 -0.05520945600443572 72 -0.055290892503153888 73 -0.055373542913792928 74 -0.055457415904797747 75 -0.055542520307422572 76 -0.05562886511817855 77 -0.055716459501339577
		 78 -0.05580531279150841 79 -0.055895434496243401 80 -0.055986834298748511 81 -0.056079522060627052 82 -0.056173507824701319 83 -0.056268801817899505 84 -0.056365414454211449 85 -0.056463356337715431 86 -0.056562638265676424
		 87 -0.056663271231719659 88 -0.056765266429079198 89 -0.056868635253924771 90 -0.056973389308768885 91 -0.057079540405954865 92 -0.057187100571229776 93 -0.057296082047402885 94 -0.057406497298092718 95 -0.057518359011564324
		 96 -0.057631680104660021 97 -0.057746473726825287 98 -0.057862753264232236 99 -0.05798053234400391 100 -0.058099824838541814 101 -0.058220644869958427;
createNode animCurveTU -n "pCube2_locator16_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67A100000C8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
select -ne :time1;
	setAttr ".o" 101;
	setAttr ".unw" 101;
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
connectAttr "camera1_translateZ.o" "camera1.tz";
connectAttr "camera1_translateX.o" "camera1.tx";
connectAttr "camera1_translateY.o" "camera1.ty";
connectAttr "camera1_rotateX.o" "camera1.rx";
connectAttr "camera1_rotateZ.o" "camera1.rz";
connectAttr "camera1_rotateY.o" "camera1.ry";
connectAttr "lensDistortionToggle1.olns" "cameraShape1.olns";
connectAttr "mmMarkerScale1.os" "markerGroup1.s";
connectAttr "mmMarkerScale1.ot" "markerGroup1.t";
connectAttr "pCube1_locator1_MKR_translateX.o" "pCube1_locator1_MKR.tx" -l on;
connectAttr "pCube1_locator1_MKR_translateY.o" "pCube1_locator1_MKR.ty" -l on;
connectAttr "pCube1_locator1_MKR_enable.o" "pCube1_locator1_MKR.enable" -l on;
connectAttr "pCube1_locator1_MKR.enable" "pCube1_locator1_MKR.lodv";
connectAttr "pCube1_locator1_BND.msg" "pCube1_locator1_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube1_locator1_MKR.ilns";
connectAttr "pCube1_locator2_MKR_translateX.o" "pCube1_locator2_MKR.tx" -l on;
connectAttr "pCube1_locator2_MKR_translateY.o" "pCube1_locator2_MKR.ty" -l on;
connectAttr "pCube1_locator2_MKR_enable.o" "pCube1_locator2_MKR.enable" -l on;
connectAttr "pCube1_locator2_MKR.enable" "pCube1_locator2_MKR.lodv";
connectAttr "pCube1_locator2_BND.msg" "pCube1_locator2_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube1_locator2_MKR.ilns";
connectAttr "pCube1_locator3_MKR_translateX.o" "pCube1_locator3_MKR.tx" -l on;
connectAttr "pCube1_locator3_MKR_translateY.o" "pCube1_locator3_MKR.ty" -l on;
connectAttr "pCube1_locator3_MKR_enable.o" "pCube1_locator3_MKR.enable" -l on;
connectAttr "pCube1_locator3_MKR.enable" "pCube1_locator3_MKR.lodv";
connectAttr "pCube1_locator3_BND.msg" "pCube1_locator3_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube1_locator3_MKR.ilns";
connectAttr "pCube1_locator4_MKR_translateX.o" "pCube1_locator4_MKR.tx" -l on;
connectAttr "pCube1_locator4_MKR_translateY.o" "pCube1_locator4_MKR.ty" -l on;
connectAttr "pCube1_locator4_MKR_enable.o" "pCube1_locator4_MKR.enable" -l on;
connectAttr "pCube1_locator4_MKR.enable" "pCube1_locator4_MKR.lodv";
connectAttr "pCube1_locator4_BND.msg" "pCube1_locator4_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube1_locator4_MKR.ilns";
connectAttr "pCube1_locator5_MKR_translateX.o" "pCube1_locator5_MKR.tx" -l on;
connectAttr "pCube1_locator5_MKR_translateY.o" "pCube1_locator5_MKR.ty" -l on;
connectAttr "pCube1_locator5_MKR_enable.o" "pCube1_locator5_MKR.enable" -l on;
connectAttr "pCube1_locator5_MKR.enable" "pCube1_locator5_MKR.lodv";
connectAttr "pCube1_locator5_BND.msg" "pCube1_locator5_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube1_locator5_MKR.ilns";
connectAttr "pCube1_locator6_MKR_translateX.o" "pCube1_locator6_MKR.tx" -l on;
connectAttr "pCube1_locator6_MKR_translateY.o" "pCube1_locator6_MKR.ty" -l on;
connectAttr "pCube1_locator6_MKR_enable.o" "pCube1_locator6_MKR.enable" -l on;
connectAttr "pCube1_locator6_MKR.enable" "pCube1_locator6_MKR.lodv";
connectAttr "pCube1_locator6_BND.msg" "pCube1_locator6_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube1_locator6_MKR.ilns";
connectAttr "pCube1_locator7_MKR_translateX.o" "pCube1_locator7_MKR.tx" -l on;
connectAttr "pCube1_locator7_MKR_translateY.o" "pCube1_locator7_MKR.ty" -l on;
connectAttr "pCube1_locator7_MKR_enable.o" "pCube1_locator7_MKR.enable" -l on;
connectAttr "pCube1_locator7_MKR.enable" "pCube1_locator7_MKR.lodv";
connectAttr "pCube1_locator7_BND.msg" "pCube1_locator7_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube1_locator7_MKR.ilns";
connectAttr "pCube1_locator8_MKR_translateX.o" "pCube1_locator8_MKR.tx" -l on;
connectAttr "pCube1_locator8_MKR_translateY.o" "pCube1_locator8_MKR.ty" -l on;
connectAttr "pCube1_locator8_MKR_enable.o" "pCube1_locator8_MKR.enable" -l on;
connectAttr "pCube1_locator8_MKR.enable" "pCube1_locator8_MKR.lodv";
connectAttr "pCube1_locator8_BND.msg" "pCube1_locator8_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube1_locator8_MKR.ilns";
connectAttr "pCube2_locator9_MKR_translateX.o" "pCube2_locator9_MKR.tx" -l on;
connectAttr "pCube2_locator9_MKR_translateY.o" "pCube2_locator9_MKR.ty" -l on;
connectAttr "pCube2_locator9_MKR_enable.o" "pCube2_locator9_MKR.enable" -l on;
connectAttr "pCube2_locator9_MKR.enable" "pCube2_locator9_MKR.lodv";
connectAttr "pCube2_locator9_BND.msg" "pCube2_locator9_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube2_locator9_MKR.ilns";
connectAttr "pCube2_locator10_MKR_translateX.o" "pCube2_locator10_MKR.tx" -l on;
connectAttr "pCube2_locator10_MKR_translateY.o" "pCube2_locator10_MKR.ty" -l on;
connectAttr "pCube2_locator10_MKR_enable.o" "pCube2_locator10_MKR.enable" -l on;
connectAttr "pCube2_locator10_MKR.enable" "pCube2_locator10_MKR.lodv";
connectAttr "pCube2_locator10_BND.msg" "pCube2_locator10_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube2_locator10_MKR.ilns";
connectAttr "pCube2_locator11_MKR_translateX.o" "pCube2_locator11_MKR.tx" -l on;
connectAttr "pCube2_locator11_MKR_translateY.o" "pCube2_locator11_MKR.ty" -l on;
connectAttr "pCube2_locator11_MKR_enable.o" "pCube2_locator11_MKR.enable" -l on;
connectAttr "pCube2_locator11_MKR.enable" "pCube2_locator11_MKR.lodv";
connectAttr "pCube2_locator11_BND.msg" "pCube2_locator11_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube2_locator11_MKR.ilns";
connectAttr "pCube2_locator12_MKR_translateX.o" "pCube2_locator12_MKR.tx" -l on;
connectAttr "pCube2_locator12_MKR_translateY.o" "pCube2_locator12_MKR.ty" -l on;
connectAttr "pCube2_locator12_MKR_enable.o" "pCube2_locator12_MKR.enable" -l on;
connectAttr "pCube2_locator12_MKR.enable" "pCube2_locator12_MKR.lodv";
connectAttr "pCube2_locator12_BND.msg" "pCube2_locator12_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube2_locator12_MKR.ilns";
connectAttr "pCube2_locator13_MKR_translateX.o" "pCube2_locator13_MKR.tx" -l on;
connectAttr "pCube2_locator13_MKR_translateY.o" "pCube2_locator13_MKR.ty" -l on;
connectAttr "pCube2_locator13_MKR_enable.o" "pCube2_locator13_MKR.enable" -l on;
connectAttr "pCube2_locator13_MKR.enable" "pCube2_locator13_MKR.lodv";
connectAttr "pCube2_locator13_BND.msg" "pCube2_locator13_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube2_locator13_MKR.ilns";
connectAttr "pCube2_locator14_MKR_translateX.o" "pCube2_locator14_MKR.tx" -l on;
connectAttr "pCube2_locator14_MKR_translateY.o" "pCube2_locator14_MKR.ty" -l on;
connectAttr "pCube2_locator14_MKR_enable.o" "pCube2_locator14_MKR.enable" -l on;
connectAttr "pCube2_locator14_MKR.enable" "pCube2_locator14_MKR.lodv";
connectAttr "pCube2_locator14_BND.msg" "pCube2_locator14_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube2_locator14_MKR.ilns";
connectAttr "pCube2_locator15_MKR_translateX.o" "pCube2_locator15_MKR.tx" -l on;
connectAttr "pCube2_locator15_MKR_translateY.o" "pCube2_locator15_MKR.ty" -l on;
connectAttr "pCube2_locator15_MKR_enable.o" "pCube2_locator15_MKR.enable" -l on;
connectAttr "pCube2_locator15_MKR.enable" "pCube2_locator15_MKR.lodv";
connectAttr "pCube2_locator15_BND.msg" "pCube2_locator15_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube2_locator15_MKR.ilns";
connectAttr "pCube2_locator16_MKR_translateX.o" "pCube2_locator16_MKR.tx" -l on;
connectAttr "pCube2_locator16_MKR_translateY.o" "pCube2_locator16_MKR.ty" -l on;
connectAttr "pCube2_locator16_MKR_enable.o" "pCube2_locator16_MKR.enable" -l on;
connectAttr "pCube2_locator16_MKR.enable" "pCube2_locator16_MKR.lodv";
connectAttr "pCube2_locator16_BND.msg" "pCube2_locator16_MKR.bundle";
connectAttr "cameraShape1.olns" "pCube2_locator16_MKR.ilns";
connectAttr "polyCube1.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "cameraShape1.ilns" "lensDistortionToggle1.ilns";
connectAttr "markerGroup1.depth" "mmMarkerScale1.dpt";
connectAttr "markerGroup1.overscanX" "mmMarkerScale1.ovrscninvx";
connectAttr "markerGroup1.overscanY" "mmMarkerScale1.ovrscninvy";
connectAttr "cameraShape1.fl" "mmMarkerScale1.fl";
connectAttr "cameraShape1.cap" "mmMarkerScale1.cap";
connectAttr "cameraShape1.fio" "mmMarkerScale1.fio";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
// End of test_cube2_d_marker_bundles.ma
