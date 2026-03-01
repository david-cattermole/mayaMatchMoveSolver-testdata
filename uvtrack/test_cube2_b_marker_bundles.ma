//Maya ASCII 2024 scene
//Name: test_cube2_b_marker_bundles.ma
//Last modified: Fri, Oct 17, 2025 08:41:26 AM
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
fileInfo "UUID" "23E71080-0004-A6BA-68F1-66860000071E";
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
	rename -uid "23E71080-0004-A6BA-68F1-667A000004B6";
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
	rename -uid "23E71080-0004-A6BA-68F1-667A000004CB";
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
	setAttr ".t" -type "double3" -0.27287566081869497 0.44957714590253239 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A000004D0";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator2_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667A000004EC";
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
	setAttr ".t" -type "double3" 0.11794231258496946 0.31693338004549199 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A000004F1";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator3_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000050D";
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
	setAttr ".t" -type "double3" -0.27287566081869497 -0.44957714590253245 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A00000512";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator4_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000052E";
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
	setAttr ".t" -type "double3" 0.11794231258496946 -0.31693338004549199 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A00000533";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator5_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000054F";
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
	setAttr ".t" -type "double3" -0.46792014492026429 0.30946518990758942 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A00000554";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator6_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000570";
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
	setAttr ".t" -type "double3" -0.12803760083047971 0.24025143261105586 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A00000575";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator7_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000591";
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
	setAttr ".t" -type "double3" -0.46792014492026429 -0.30946518990758942 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A00000596";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator8_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005B2";
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
	setAttr ".t" -type "double3" -0.12803760083047971 -0.2402514326110558 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A000005B7";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator9_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005D3";
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
	setAttr ".t" -type "double3" -0.22301246700001631 0.19471750452175751 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A000005D8";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator10_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005F4";
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
	setAttr ".t" -type "double3" -0.027398712428306438 0.16483779177233615 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A000005F9";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator11_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000615";
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
	setAttr ".t" -type "double3" -0.22301246700001631 -0.19471750452175751 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A0000061A";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator12_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000636";
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
	setAttr ".t" -type "double3" -0.027398712428306438 -0.16483779177233615 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A0000063B";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator13_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000657";
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
	setAttr ".t" -type "double3" -0.33379065957751464 0.16279449205755248 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A0000065C";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator14_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000678";
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
	setAttr ".t" -type "double3" -0.15144735138653359 0.14136995434055399 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A0000067D";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator15_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000699";
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
	setAttr ".t" -type "double3" -0.33379065957751464 -0.16279449205755248 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A0000069E";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator16_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-667B000006BA";
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
	setAttr ".t" -type "double3" -0.15144735138653359 -0.14136995434055399 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667B000006BF";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
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
createNode transform -n "pCube1_locator1_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A000004BC";
	setAttr ".t" -type "double3" -3.75 3.75 -11.25 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A000004C1";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator1_BNDLocatorShape" -p "pCube1_locator1_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A000004C6";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator2_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A000004DD";
	setAttr ".t" -type "double3" 3.75 3.75 -11.25 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A000004E2";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator2_BNDLocatorShape" -p "pCube1_locator2_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A000004E7";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator3_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A000004FE";
	setAttr ".t" -type "double3" -3.75 -3.75 -11.25 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A00000503";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator3_BNDLocatorShape" -p "pCube1_locator3_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000508";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator4_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000051F";
	setAttr ".t" -type "double3" 3.75 -3.75 -11.25 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A00000524";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator4_BNDLocatorShape" -p "pCube1_locator4_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000529";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator5_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000540";
	setAttr ".t" -type "double3" -3.75 3.75 -18.75 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A00000545";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator5_BNDLocatorShape" -p "pCube1_locator5_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000054A";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator6_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000561";
	setAttr ".t" -type "double3" 3.75 3.75 -18.75 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A00000566";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator6_BNDLocatorShape" -p "pCube1_locator6_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000056B";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator7_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000582";
	setAttr ".t" -type "double3" -3.75 -3.75 -18.75 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A00000587";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator7_BNDLocatorShape" -p "pCube1_locator7_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000058C";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator8_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005A3";
	setAttr ".t" -type "double3" 3.75 -3.75 -18.75 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A000005A8";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator8_BNDLocatorShape" -p "pCube1_locator8_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005AD";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator9_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005C4";
	setAttr ".t" -type "double3" 4.8337483441460574 3.75 -24.996995285310991 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A000005C9";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator9_BNDLocatorShape" -p "pCube2_locator9_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005CE";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator10_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005E5";
	setAttr ".t" -type "double3" 12.333748344146057 3.75 -24.996995285310991 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A000005EA";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator10_BNDLocatorShape" -p "pCube2_locator10_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005EF";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator11_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000606";
	setAttr ".t" -type "double3" 4.8337483441460574 -3.75 -24.996995285310991 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A0000060B";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator11_BNDLocatorShape" -p "pCube2_locator11_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000610";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator12_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000627";
	setAttr ".t" -type "double3" 12.333748344146057 -3.75 -24.996995285310991 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A0000062C";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator12_BNDLocatorShape" -p "pCube2_locator12_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000631";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator13_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000648";
	setAttr ".t" -type "double3" 4.8337483441460574 3.75 -32.496995285310987 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A0000064D";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator13_BNDLocatorShape" -p "pCube2_locator13_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000652";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator14_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000669";
	setAttr ".t" -type "double3" 12.333748344146057 3.75 -32.496995285310987 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A0000066E";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator14_BNDLocatorShape" -p "pCube2_locator14_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000673";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator15_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000068A";
	setAttr ".t" -type "double3" 4.8337483441460574 -3.75 -32.496995285310987 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667A0000068F";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator15_BNDLocatorShape" -p "pCube2_locator15_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000694";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator16_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667A000006AB";
	setAttr ".t" -type "double3" 12.333748344146057 -3.75 -32.496995285310987 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-667B000006B0";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator16_BNDLocatorShape" -p "pCube2_locator16_BND";
	rename -uid "23E71080-0004-A6BA-68F1-667B000006B5";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
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
createNode mmLensModelToggle -n "lensDistortionToggle1";
	rename -uid "23E71080-0004-A6BA-68F1-667A000004B5";
createNode mmMarkerScale -n "mmMarkerScale1";
	rename -uid "23E71080-0004-A6BA-68F1-667A000004BB";
	setAttr ".ovrscnmd" 1;
createNode animCurveTL -n "pCube1_locator1_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A000004D9";
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
createNode animCurveTL -n "pCube1_locator1_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A000004DA";
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
createNode animCurveTU -n "pCube1_locator1_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A000004DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator2_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A000004FA";
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
createNode animCurveTL -n "pCube1_locator2_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A000004FB";
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
createNode animCurveTU -n "pCube1_locator2_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A000004FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator3_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000051B";
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
createNode animCurveTL -n "pCube1_locator3_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000051C";
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
createNode animCurveTU -n "pCube1_locator3_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000051D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator4_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000053C";
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
createNode animCurveTL -n "pCube1_locator4_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000053D";
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
createNode animCurveTU -n "pCube1_locator4_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000053E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator5_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000055D";
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
createNode animCurveTL -n "pCube1_locator5_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000055E";
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
createNode animCurveTU -n "pCube1_locator5_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000055F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator6_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000057E";
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
createNode animCurveTL -n "pCube1_locator6_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000057F";
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
createNode animCurveTU -n "pCube1_locator6_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000580";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator7_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A0000059F";
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
createNode animCurveTL -n "pCube1_locator7_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005A0";
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
createNode animCurveTU -n "pCube1_locator7_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator8_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005C0";
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
createNode animCurveTL -n "pCube1_locator8_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005C1";
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
createNode animCurveTU -n "pCube1_locator8_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator9_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.18800207393502788 2 0.18397025943079492 3 0.17993865977163315 4 0.17590705768859172 5 0.17187523710247221
		 6 0.16784298308126933 7 0.16381008179755008 8 0.15977632048575674 9 0.15574148739942228 10 0.15170537176827859 11 0.14766776375525037 12 0.14362845441331529 13 0.13958723564222097 14 0.13554390014504436
		 15 0.13149824138458066 16 0.12745005353954908 17 0.12339913146060266 18 0.11934527062613132 19 0.11528826709784346 20 0.11122791747611549 21 0.10716401885509763 22 0.10309636877756123 23 0.099024765189479891
		 24 0.094949006394328683 25 0.090868891007090502 26 0.086784217907959427 27 0.082694786195726011 28 0.078600395140834722 29 0.074500844138100653 30 0.070395932659072291 31 0.066285460204030477 32 0.062169226253606991
		 33 0.058047030220014895 34 0.053918671397873652 35 0.049783948914618015 36 0.04564266168047737 37 0.041494608338010885 38 0.037339587211186687 39 0.03317739625398719 40 0.029007832998531602 41 0.02483069450269626
		 42 0.020645777297219503 43 0.016452877332275184 44 0.012251789923501177 45 0.0080423096974625574 46 0.0038242305365363549 47 -0.00040265447680171151 48 -0.0046385531163035676 49 -0.0088836740689091642 50 -0.013138226992358504
		 51 -0.017402422573472576 52 -0.021676472587127016 53 -0.025960589955935198 54 -0.030254988810664185 55 -0.034559884551403686 56 -0.038875493909512449 57 -0.04320203501036296 58 -0.047539727436909374 59 -0.05188879229410448
		 60 -0.056249452274188261 61 -0.060621931722878608 62 -0.065006456706486526 63 -0.06940325507998657 64 -0.073812556556074271 65 -0.078234592775232259 66 -0.082669597376846315 67 -0.087117806071394688 68 -0.091579456713749285
		 69 -0.096054789377619854 70 -0.10054404643117976 71 -0.1050474726139029 72 -0.10956531511466122 73 -0.11409782365110777 74 -0.11864525055039971 75 -0.12320785083128971 76 -0.12778588228763976 77 -0.13237960557339606
		 78 -0.13698928428907137 79 -0.14161518506978621 80 -0.1462575776749131 81 -0.15091673507937864 82 -0.15559293356667503 83 -0.16028645282363502 84 -0.16499757603702747 85 -0.16972658999203039 86 -0.17447378517264489
		 87 -0.17923945586410917 88 -0.18402390025737903 89 -0.1888274205557402 90 -0.19365032308362384 91 -0.19849291839769623 92 -0.20335552140029184 93 -0.20823845145527775 94 -0.21314203250641384 95 -0.21806659319830451
		 96 -0.22301246700001631 97 -0.22797999233145955 98 -0.23296951269261329 99 -0.23798137679569975 100 -0.24301593870039673 101 -0.24807355795219554;
createNode animCurveTL -n "pCube2_locator9_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.2187767319672812 2 0.21844484635831374 3 0.21811373601834261 4 0.21778342006614149 5 0.21745391821986138
		 6 0.21712525078520117 7 0.21679743864367629 8 0.21647050324099282 9 0.21614446657553055 10 0.21581935118694151 11 0.21549518014486746 12 0.21517197703778312 13 0.21484976596196925 14 0.21452857151062132
		 15 0.21420841876309815 16 0.21388933327431681 17 0.21357134106429643 18 0.21325446860785968 19 0.21293874282449254 20 0.21262419106837094 21 0.2123108411185568 22 0.21199872116936858 23 0.21168785982093297
		 24 0.21137828606991893 25 0.21107002930046281 26 0.21076311927528468 27 0.21045758612700449 28 0.21015346034965965 29 0.20985077279042907 30 0.20954955464156866 31 0.20924983743256165 32 0.20895165302248819
		 33 0.20865503359261761 34 0.20836001163922868 35 0.20806661996666054 36 0.20777489168059771 37 0.20748486018159495 38 0.2071965591588435 39 0.20691002258418267 40 0.20662528470636199 41 0.20634238004555461
		 42 0.20606134338812754 43 0.20578220978167128 44 0.20550501453029124 45 0.20522979319016577 46 0.20495658156537266 47 0.20468541570398713 48 0.20441633189445518 49 0.2041493666622447 50 0.20388455676677653
		 51 0.20362193919864036 52 0.20336155117709587 53 0.20310343014786347 54 0.20284761378120664 55 0.20259413997030906 56 0.20234304682994964 57 0.20209437269547548 58 0.2018481561220804 59 0.20160443588438592
		 60 0.20136325097633212 61 0.20112464061137847 62 0.20088864422301778 63 0.20065530146560573 64 0.20042465221551087 65 0.20019673657258419 66 0.19997159486195337 67 0.19974926763614476 68 0.19952979567753459
		 69 0.19931322000113383 70 0.19909958185770793 71 0.19888892273723635 72 0.1986812843727136 73 0.19847670874429624 74 0.19827523808379832 75 0.19807691487953849 76 0.19788178188154382 77 0.1976898821071118
		 78 0.19750125884673697 79 0.19731595567040305 80 0.1971340164342481 81 0.1969554852876042 82 0.19678040668041652 83 0.19660882537104918 84 0.19644078643447815 85 0.19627633527088029 86 0.19611551761462098
		 87 0.19595837954364814 88 0.19580496748929588 89 0.19565532824650589 90 0.19550950898447161 91 0.19536755725771182 92 0.19522952101758062 93 0.19509544862422157 94 0.1949653888589713 95 0.19483939093722336
		 96 0.19471750452175751 97 0.19459977973654485 98 0.19448626718103712 99 0.19437701794494866 100 0.19427208362354209 101 0.19417151633342633;
createNode animCurveTU -n "pCube2_locator9_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A000005E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator10_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000602";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.47970438322473608 2 0.47410555855198866 3 0.46851976629966963 4 0.46294674075144981 5 0.45738621846502991
		 6 0.45183793819079954 7 0.44630164079194556 8 0.44077706916597204 9 0.43526396816758361 10 0.42976208453289433 11 0.42427116680491639 12 0.41879096526028992 13 0.41332123183721436 14 0.40786172006454025
		 15 0.40241218499198395 16 0.39697238312142691 17 0.39154207233926064 18 0.38612101184974335 19 0.38070896210932825 20 0.37530568476193094 21 0.36991094257509805 22 0.3645244993770439 23 0.35914611999452029
		 24 0.35377557019148576 25 0.34841261660853928 26 0.34305702670308813 27 0.33770856869021559 28 0.33236701148421421 29 0.32703212464075815 30 0.32170367829967617 31 0.31638144312830041 32 0.31106519026535406
		 33 0.30575469126535237 34 0.30044971804348186 35 0.2951500428209326 36 0.28985543807064884 37 0.28456567646346809 38 0.27928053081462711 39 0.27399977403059161 40 0.26872317905619414 41 0.26345051882204196
		 42 0.25818156619216781 43 0.25291609391189895 44 0.24765387455590848 45 0.24239468047642665 46 0.23713828375157942 47 0.23188445613382558 48 0.22663296899846797 49 0.22138359329220436 50 0.21613609948169232
		 51 0.21089025750210055 52 0.20564583670561332 53 0.20040260580986469 54 0.19516033284626932 55 0.18991878510822202 56 0.18467772909913716 57 0.17943693048029774 58 0.17419615401848643 59 0.16895516353336459
		 60 0.16371372184457422 61 0.15847159071852857 62 0.15322853081486298 63 0.14798430163251552 64 0.14273866145540182 65 0.13749136729766054 66 0.13224217484842871 67 0.12699083841612169 68 0.12173711087218098
		 69 0.11648074359425842 70 0.11122148640880092 71 0.10595908753300787 72 0.10069329351611556 73 0.095423849179986475 74 0.090150497558954434 75 0.084872979838902629 76 0.079591035295524581 77 0.074304401231739758
		 78 0.0690128129142209 79 0.063716003508993535 80 0.0584137040160706 81 0.053105643203078312 82 0.047791547537832879 83 0.04247114111982464 84 0.037144145610566892 85 0.031810280162765214 86 0.026469261348258
		 87 0.021120803084686779 88 0.015764616560843381 89 0.010400410160649076 90 0.0050278893857124141 91 -0.00035324322358748494 92 -0.0057432881685370862 93 -0.011142549074112107 94 -0.01655133277262838 95 -0.021969949389094023
		 96 -0.027398712428306438 97 -0.032837938863769123 98 -0.038287949228478224 99 -0.043749067707653133 100 -0.049221622233470541 101 -0.054705944581874499;
createNode animCurveTL -n "pCube2_locator10_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000603";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.2187767319672812 2 0.21793207860566866 3 0.2170937255473776 4 0.21626165499540018 5 0.21543584942483196
		 6 0.21461629157376372 7 0.21380296443462721 8 0.21299585124598763 9 0.21219493548476731 10 0.21140020085889444 11 0.21061163130036231 12 0.20982921095869056 13 0.20905292419477928 14 0.20828275557514331
		 15 0.20751868986651978 16 0.20676071203083712 17 0.20600880722053838 18 0.20526296077424799 19 0.20452315821277378 20 0.20378938523543577 21 0.20306162771671343 22 0.20233987170320133 23 0.20162410341086878
		 24 0.20091430922261122 25 0.20021047568608885 26 0.19951258951184381 27 0.19882063757168855 28 0.19813460689735907 29 0.19745448467942439 30 0.19678025826644818 31 0.19611191516439297 32 0.19544944303626433
		 33 0.19479282970198364 34 0.19414206313848992 35 0.1934971314800592 36 0.19285802301883936 37 0.19222472620559339 38 0.19159722965064663 39 0.19097552212503288 40 0.19035959256183377 41 0.18974943005770761
		 42 0.18914502387460275 43 0.18854636344165132 44 0.18795343835723899 45 0.18736623839124622 46 0.18678475348745982 47 0.18620897376614653 48 0.18563888952678975 49 0.18507449125098363 50 0.18451576960548155
		 51 0.18396271544539722 52 0.18341531981755399 53 0.18287357396398174 54 0.18233746932555639 55 0.18180699754578222 56 0.1812821504747133 57 0.18076292017301254 58 0.18024929891614694 59 0.17974127919871674
		 60 0.17923885373891724 61 0.17874201548313229 62 0.17825075761065845 63 0.17776507353855797 64 0.17728495692664037 65 0.17681040168257245 66 0.17634140196711501 67 0.17587795219948732 68 0.1754200470628583
		 69 0.17496768150996467 70 0.17452085076885604 71 0.17407955034876832 72 0.1736437760461238 73 0.17321352395066092 74 0.1727887904516936 75 0.17236957224450056 76 0.17195586633684612 77 0.17154767005563487
		 78 0.1711449810537008 79 0.17074779731673184 80 0.17035611717033317 81 0.16996993928723136 82 0.16958926269461894 83 0.16921408678164662 84 0.16884441130706007 85 0.16848023640698906 86 0.16812156260288846
		 87 0.16776839080963646 88 0.16742072234379224 89 0.16707855893201606 90 0.16674190271965816 91 0.16641075627951674 92 0.16608512262077257 93 0.16576500519810278 94 0.16545040792097832 95 0.16514133516315144
		 96 0.16483779177233615 97 0.16453978308008965 98 0.16424731491189748 99 0.16396039359746983 100 0.1636790259812555 101 0.16340321943317748;
createNode animCurveTU -n "pCube2_locator10_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000604";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator11_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000623";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.18800207393502788 2 0.18397025943079492 3 0.17993865977163315 4 0.17590705768859172 5 0.17187523710247221
		 6 0.16784298308126933 7 0.16381008179755008 8 0.15977632048575674 9 0.15574148739942228 10 0.15170537176827859 11 0.14766776375525037 12 0.14362845441331529 13 0.13958723564222097 14 0.13554390014504436
		 15 0.13149824138458066 16 0.12745005353954908 17 0.12339913146060266 18 0.11934527062613132 19 0.11528826709784346 20 0.11122791747611549 21 0.10716401885509763 22 0.10309636877756123 23 0.099024765189479891
		 24 0.094949006394328683 25 0.090868891007090502 26 0.086784217907959427 27 0.082694786195726011 28 0.078600395140834722 29 0.074500844138100653 30 0.070395932659072291 31 0.066285460204030477 32 0.062169226253606991
		 33 0.058047030220014895 34 0.053918671397873652 35 0.049783948914618015 36 0.04564266168047737 37 0.041494608338010885 38 0.037339587211186687 39 0.03317739625398719 40 0.029007832998531602 41 0.02483069450269626
		 42 0.020645777297219503 43 0.016452877332275184 44 0.012251789923501177 45 0.0080423096974625574 46 0.0038242305365363549 47 -0.00040265447680171151 48 -0.0046385531163035676 49 -0.0088836740689091642 50 -0.013138226992358504
		 51 -0.017402422573472576 52 -0.021676472587127016 53 -0.025960589955935198 54 -0.030254988810664185 55 -0.034559884551403686 56 -0.038875493909512449 57 -0.04320203501036296 58 -0.047539727436909374 59 -0.05188879229410448
		 60 -0.056249452274188261 61 -0.060621931722878608 62 -0.065006456706486526 63 -0.06940325507998657 64 -0.073812556556074271 65 -0.078234592775232259 66 -0.082669597376846315 67 -0.087117806071394688 68 -0.091579456713749285
		 69 -0.096054789377619854 70 -0.10054404643117976 71 -0.1050474726139029 72 -0.10956531511466122 73 -0.11409782365110777 74 -0.11864525055039971 75 -0.12320785083128971 76 -0.12778588228763976 77 -0.13237960557339606
		 78 -0.13698928428907137 79 -0.14161518506978621 80 -0.1462575776749131 81 -0.15091673507937864 82 -0.15559293356667503 83 -0.16028645282363502 84 -0.16499757603702747 85 -0.16972658999203039 86 -0.17447378517264489
		 87 -0.17923945586410917 88 -0.18402390025737903 89 -0.1888274205557402 90 -0.19365032308362384 91 -0.19849291839769623 92 -0.20335552140029184 93 -0.20823845145527775 94 -0.21314203250641384 95 -0.21806659319830451
		 96 -0.22301246700001631 97 -0.22797999233145955 98 -0.23296951269261329 99 -0.23798137679569975 100 -0.24301593870039673 101 -0.24807355795219554;
createNode animCurveTL -n "pCube2_locator11_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000624";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.2187767319672812 2 -0.21844484635831379 3 -0.21811373601834261 4 -0.21778342006614143 5 -0.21745391821986138
		 6 -0.21712525078520117 7 -0.21679743864367629 8 -0.21647050324099282 9 -0.2161444665755306 10 -0.21581935118694151 11 -0.21549518014486746 12 -0.21517197703778312 13 -0.21484976596196925 14 -0.21452857151062132
		 15 -0.21420841876309821 16 -0.21388933327431681 17 -0.21357134106429643 18 -0.21325446860785968 19 -0.21293874282449254 20 -0.21262419106837094 21 -0.2123108411185568 22 -0.21199872116936858 23 -0.21168785982093297
		 24 -0.21137828606991893 25 -0.21107002930046281 26 -0.21076311927528468 27 -0.21045758612700449 28 -0.21015346034965965 29 -0.20985077279042907 30 -0.2095495546415686 31 -0.20924983743256165 32 -0.20895165302248814
		 33 -0.20865503359261761 34 -0.20836001163922868 35 -0.20806661996666048 36 -0.20777489168059771 37 -0.20748486018159495 38 -0.2071965591588435 39 -0.20691002258418273 40 -0.20662528470636199 41 -0.20634238004555461
		 42 -0.20606134338812754 43 -0.20578220978167128 44 -0.20550501453029119 45 -0.20522979319016577 46 -0.20495658156537266 47 -0.20468541570398713 48 -0.20441633189445524 49 -0.2041493666622447 50 -0.20388455676677653
		 51 -0.20362193919864036 52 -0.20336155117709592 53 -0.20310343014786347 54 -0.20284761378120664 55 -0.20259413997030912 56 -0.20234304682994964 57 -0.20209437269547548 58 -0.20184815612208035 59 -0.20160443588438592
		 60 -0.20136325097633218 61 -0.20112464061137852 62 -0.20088864422301772 63 -0.20065530146560573 64 -0.20042465221551087 65 -0.20019673657258419 66 -0.19997159486195332 67 -0.1997492676361447 68 -0.19952979567753459
		 69 -0.19931322000113383 70 -0.19909958185770793 71 -0.1988889227372363 72 -0.1986812843727136 73 -0.19847670874429624 74 -0.19827523808379832 75 -0.19807691487953849 76 -0.19788178188154382 77 -0.1976898821071118
		 78 -0.19750125884673697 79 -0.19731595567040305 80 -0.1971340164342481 81 -0.1969554852876042 82 -0.19678040668041652 83 -0.19660882537104918 84 -0.19644078643447815 85 -0.19627633527088023 86 -0.19611551761462098
		 87 -0.19595837954364809 88 -0.19580496748929588 89 -0.19565532824650589 90 -0.19550950898447167 91 -0.19536755725771182 92 -0.19522952101758062 93 -0.19509544862422157 94 -0.1949653888589713 95 -0.19483939093722336
		 96 -0.19471750452175751 97 -0.19459977973654485 98 -0.19448626718103712 99 -0.19437701794494872 100 -0.19427208362354209 101 -0.19417151633342639;
createNode animCurveTU -n "pCube2_locator11_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000625";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator12_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000644";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.47970438322473608 2 0.47410555855198866 3 0.46851976629966963 4 0.46294674075144981 5 0.45738621846502991
		 6 0.45183793819079954 7 0.44630164079194556 8 0.44077706916597204 9 0.43526396816758361 10 0.42976208453289433 11 0.42427116680491639 12 0.41879096526028992 13 0.41332123183721436 14 0.40786172006454025
		 15 0.40241218499198395 16 0.39697238312142691 17 0.39154207233926064 18 0.38612101184974335 19 0.38070896210932825 20 0.37530568476193094 21 0.36991094257509805 22 0.3645244993770439 23 0.35914611999452029
		 24 0.35377557019148576 25 0.34841261660853928 26 0.34305702670308813 27 0.33770856869021559 28 0.33236701148421421 29 0.32703212464075815 30 0.32170367829967617 31 0.31638144312830041 32 0.31106519026535406
		 33 0.30575469126535237 34 0.30044971804348186 35 0.2951500428209326 36 0.28985543807064884 37 0.28456567646346809 38 0.27928053081462711 39 0.27399977403059161 40 0.26872317905619414 41 0.26345051882204196
		 42 0.25818156619216781 43 0.25291609391189895 44 0.24765387455590848 45 0.24239468047642665 46 0.23713828375157942 47 0.23188445613382558 48 0.22663296899846797 49 0.22138359329220436 50 0.21613609948169232
		 51 0.21089025750210055 52 0.20564583670561332 53 0.20040260580986469 54 0.19516033284626932 55 0.18991878510822202 56 0.18467772909913716 57 0.17943693048029774 58 0.17419615401848643 59 0.16895516353336459
		 60 0.16371372184457422 61 0.15847159071852857 62 0.15322853081486298 63 0.14798430163251552 64 0.14273866145540182 65 0.13749136729766054 66 0.13224217484842871 67 0.12699083841612169 68 0.12173711087218098
		 69 0.11648074359425842 70 0.11122148640880092 71 0.10595908753300787 72 0.10069329351611556 73 0.095423849179986475 74 0.090150497558954434 75 0.084872979838902629 76 0.079591035295524581 77 0.074304401231739758
		 78 0.0690128129142209 79 0.063716003508993535 80 0.0584137040160706 81 0.053105643203078312 82 0.047791547537832879 83 0.04247114111982464 84 0.037144145610566892 85 0.031810280162765214 86 0.026469261348258
		 87 0.021120803084686779 88 0.015764616560843381 89 0.010400410160649076 90 0.0050278893857124141 91 -0.00035324322358748494 92 -0.0057432881685370862 93 -0.011142549074112107 94 -0.01655133277262838 95 -0.021969949389094023
		 96 -0.027398712428306438 97 -0.032837938863769123 98 -0.038287949228478224 99 -0.043749067707653133 100 -0.049221622233470541 101 -0.054705944581874499;
createNode animCurveTL -n "pCube2_locator12_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000645";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.2187767319672812 2 -0.21793207860566866 3 -0.2170937255473776 4 -0.21626165499540012 5 -0.21543584942483196
		 6 -0.21461629157376372 7 -0.21380296443462721 8 -0.21299585124598763 9 -0.21219493548476731 10 -0.21140020085889444 11 -0.21061163130036226 12 -0.20982921095869056 13 -0.20905292419477928 14 -0.20828275557514331
		 15 -0.20751868986651978 16 -0.20676071203083712 17 -0.20600880722053844 18 -0.20526296077424799 19 -0.20452315821277378 20 -0.20378938523543583 21 -0.20306162771671338 22 -0.20233987170320133 23 -0.20162410341086884
		 24 -0.20091430922261122 25 -0.20021047568608885 26 -0.19951258951184381 27 -0.19882063757168855 28 -0.19813460689735907 29 -0.19745448467942439 30 -0.19678025826644818 31 -0.19611191516439297 32 -0.19544944303626427
		 33 -0.19479282970198364 34 -0.19414206313848992 35 -0.1934971314800592 36 -0.19285802301883936 37 -0.19222472620559333 38 -0.19159722965064663 39 -0.19097552212503288 40 -0.19035959256183377 41 -0.18974943005770761
		 42 -0.18914502387460275 43 -0.18854636344165138 44 -0.18795343835723893 45 -0.18736623839124622 46 -0.18678475348745982 47 -0.18620897376614653 48 -0.18563888952678981 49 -0.18507449125098369 50 -0.18451576960548161
		 51 -0.18396271544539722 52 -0.18341531981755399 53 -0.18287357396398174 54 -0.18233746932555639 55 -0.18180699754578222 56 -0.1812821504747133 57 -0.18076292017301249 58 -0.18024929891614694 59 -0.17974127919871674
		 60 -0.17923885373891724 61 -0.17874201548313229 62 -0.17825075761065845 63 -0.17776507353855797 64 -0.17728495692664037 65 -0.17681040168257245 66 -0.17634140196711495 67 -0.17587795219948732 68 -0.1754200470628583
		 69 -0.17496768150996467 70 -0.1745208507688561 71 -0.17407955034876832 72 -0.17364377604612374 73 -0.17321352395066092 74 -0.17278879045169365 75 -0.17236957224450056 76 -0.17195586633684612 77 -0.17154767005563487
		 78 -0.1711449810537008 79 -0.17074779731673184 80 -0.17035611717033322 81 -0.16996993928723136 82 -0.16958926269461899 83 -0.16921408678164662 84 -0.16884441130706007 85 -0.168480236406989 86 -0.16812156260288841
		 87 -0.16776839080963646 88 -0.16742072234379224 89 -0.16707855893201606 90 -0.16674190271965816 91 -0.16641075627951668 92 -0.16608512262077257 93 -0.16576500519810278 94 -0.16545040792097832 95 -0.16514133516315138
		 96 -0.16483779177233615 97 -0.16453978308008965 98 -0.16424731491189748 99 -0.16396039359746989 100 -0.1636790259812555 101 -0.16340321943317748;
createNode animCurveTU -n "pCube2_locator12_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000646";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator13_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000665";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.1446129685074854 2 0.13980201231773548 3 0.13499503233799581 4 0.13019175032119357 5 0.12539188901362797
		 6 0.12059517209045945 7 0.11580132409156885 8 0.11101007035775357 9 0.10622113696723012 10 0.10143425067241008 11 0.096649138836919946 12 0.091865529372832544 13 0.087083150678080257 14 0.082301731574018544
		 15 0.077521001243109899 16 0.072740689166697958 17 0.067960525062840449 18 0.063180238824173007 19 0.058399560455770771 20 0.053618220012980111 21 0.04883594753918874 22 0.044052473003505455 23 0.039267526238317307
		 24 0.034480836876695786 25 0.029692134289620253 26 0.024901147522988887 27 0.020107605234385373 28 0.015311235629571263 29 0.010511766398672351 30 0.0057089246520274362 31 0.00090243685566848697 32 -0.0039079712336009265
		 33 -0.0087225746335604648 34 -0.013541649202394423 35 -0.018365471705012293 36 -0.023194319879902559 37 -0.028028472506553992 38 -0.032868209473477517 39 -0.03771381184686684 40 -0.042565561939928331 41 -0.047423743382922434
		 42 -0.052288641193948437 43 -0.057160541850513114 44 -0.062039733361919036 45 -0.066926505342514431 46 -0.071821149085840807 47 -0.076723957639722118 48 -0.081635225882333684 49 -0.086555250599295586 50 -0.091484330561832583
		 51 -0.096422766606044041 52 -0.10137086171333093 53 -0.10632892109202319 54 -0.11129725226025811 55 -0.11627616513015504 56 -0.12126597209333928 57 -0.1262669881078628 58 -0.13127953078657634 59 -0.1363039204870069
		 60 -0.14134048040279212 61 -0.14638953665673526 62 -0.15145141839552978 63 -0.15652645788622022 64 -0.16161499061446039 65 -0.16671735538462717 66 -0.1718338944218617 67 -0.17696495347609892 68 -0.1821108819281595
		 69 -0.18727203289797201 70 -0.19244876335500138 71 -0.19764143423095398 72 -0.20285041053484648 73 -0.20807606147050778 74 -0.21331876055660798 75 -0.21857888574928896 76 -0.22385681956749481 77 -0.22915294922108775
		 78 -0.23446766674184405 79 -0.23980136911743066 80 -0.24515445842845829 81 -0.25052734198871984 82 -0.25592043248871843 83 -0.26133414814259742 84 -0.26676891283858728 85 -0.27222515629308841 86 -0.27770331420851435
		 87 -0.28320382843501912 88 -0.28872714713624675 89 -0.29427372495923276 90 -0.29984402320860487 91 -0.30543851002522898 92 -0.31105766056944639 93 -0.31670195720907146 94 -0.32237188971229963 95 -0.32806795544570849
		 96 -0.33379065957751464 97 -0.33954051528628304 98 -0.34531804397526389 99 -0.35112377549256385 100 -0.35695824835735185 101 -0.36282200999231001;
createNode animCurveTL -n "pCube2_locator13_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000666";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.16828512573264942 2 0.16808988092236432 3 0.16789733687625952 4 0.16770748918167999 5 0.16752033396437671
		 6 0.16733586788412425 7 0.16715408813050825 8 0.16697499241888392 9 0.16679857898650341 10 0.16662484658881083 11 0.16645379449590592 12 0.16628542248917255 13 0.16611973085807497 14 0.16595672039711895
		 15 0.16579639240297783 16 0.16563874867178452 17 0.16548379149658765 18 0.16533152366497261 19 0.16518194845684764 20 0.16503506964239478 21 0.16489089148018654 22 0.164749418715467 23 0.16461065657860108
		 24 0.16447461078368808 25 0.16434128752734467 26 0.16421069348765438 27 0.1640828358232872 28 0.16395772217278837 29 0.16383536065403892 30 0.1637157598638872 31 0.16359892887795546 32 0.16348487725062
		 33 0.16337361501516812 34 0.16326515268413333 35 0.16315950124980949 36 0.16305667218494735 37 0.16295667744363318 38 0.16285952946235394 39 0.1627652411612498 40 0.16267382594555568 41 0.1625852977072364
		 42 0.16249967082681471 43 0.16241696017539842 44 0.16233718111690654 45 0.16226034951049861 46 0.16218648171321015 47 0.16211559458279701 48 0.16204770548079184 49 0.1619828322757777 50 0.16192099334687859
		 51 0.16186220758747571 52 0.16180649440914874 53 0.16175387374584893 54 0.16170436605830729 55 0.16165799233868161 56 0.161614774115449 57 0.16157473345854501 58 0.16153789298475818 59 0.16150427586338223
		 60 0.16147390582213217 61 0.16144680715333037 62 0.16142300472036708 63 0.16140252396444166 64 0.16138539091159154 65 0.16137163218001405 66 0.16136127498768738 67 0.16135434716029984 68 0.16135087713949114
		 69 0.16135089399141589 70 0.16135442741563477 71 0.1613615077543431 72 0.16137216600194348 73 0.1613864338149712 74 0.16140434352238242 75 0.16142592813621293 76 0.16145122136261669 77 0.16148025761329565
		 78 0.1615130720173289 79 0.16154970043341355 80 0.16159017946252696 81 0.16163454646102182 82 0.16168283955416696 83 0.16173509765014449 84 0.16179136045451681 85 0.16185166848517696 86 0.16191606308779494
		 87 0.16198458645177483 88 0.16205728162673738 89 0.16213419253954298 90 0.16221536401187175 91 0.16230084177837478 92 0.16239067250541739 93 0.16248490381042857 94 0.16258358428187725 95 0.16268676349989297
		 96 0.16279449205755248 97 0.16290682158285175 98 0.16302380476138489 99 0.16314549535975287 100 0.16327194824972513 101 0.16340321943317748;
createNode animCurveTU -n "pCube2_locator13_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000667";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator14_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000686";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.36899313615101792 2 0.36325726270657199 3 0.35753740832937042 4 0.35183318728581892 5 0.34614421756634872
		 6 0.34047012077129146 7 0.33481052199873185 8 0.32916504973427929 9 0.32353333574267795 10 0.31791501496119545 11 0.31230972539472424 12 0.3067171080125255 13 0.30113680664656195 14 0.29556846789135183
		 15 0.2900117410052877 16 0.28446627781335998 17 0.27893173261123061 18 0.27340776207059803 19 0.26789402514580107 20 0.26239018298160688 21 0.25689589882213149 22 0.25141083792084007 23 0.24593466745157722
		 24 0.24046705642057775 25 0.23500767557940705 26 0.22955619733878696 27 0.22411229568325475 28 0.21867564608661227 29 0.21324592542811838 30 0.20782281190937768 31 0.20240598497188333 32 0.19699512521516738
		 33 0.19158991431551531 34 0.18619003494520336 35 0.18079517069221207 36 0.17540500598037756 37 0.1700192259899338 38 0.16463751657840975 39 0.15925956420183174 40 0.15388505583619871 41 0.14851367889918143
		 42 0.14314512117200806 43 0.13777907072149498 44 0.13241521582218185 45 0.12705324487852776 46 0.12169284634713162 47 0.11633370865893011 48 0.11097552014133971 49 0.10561796894029385 50 0.10026074294213905
		 51 0.094903529695346212 52 0.089546016331996769 53 0.084187889489000245 54 0.078828835229001748 55 0.07346853896093708 56 0.068106685360191155 57 0.062742958288317552 58 0.057377040712276117 59 0.052008614623140104
		 60 0.046637360954234652 61 0.041262959498652663 62 0.035885088826111633 63 0.030503426199096073 64 0.02511764748824119 65 0.019727427086913218 66 0.014332437824928879 67 0.0089323508813744512 68 0.0035268356964631709
		 69 -0.0018844401176124626 70 -0.0073018108668929105 71 -0.012725612866974989 72 -0.018156184535511266 73 -0.023593866485930315 74 -0.029039001622447658 75 -0.03449193523641253 76 -0.03995301510406396 77 -0.045422591585748684
		 78 -0.050901017726667219 79 -0.05638864935921406 80 -0.061885845206974821 81 -0.067392966990451775 82 -0.072910379534586456 83 -0.078438450878150601 84 -0.083977552385079091 85 -0.089528058857822002 86 -0.095090348652792644
		 87 -0.10066480379799164 88 -0.10625181011289087 89 -0.11185175733065944 90 -0.11746503922282236 91 -0.12309205372644283 92 -0.12873320307391339 93 -0.13438889392546471 94 -0.14005953750447697 95 -0.14574554973570808
		 96 -0.15144735138653359 97 -0.15716536821131705 98 -0.16290003109901374 99 -0.16865177622413008 100 -0.17442104520115742 101 -0.18020828524260157;
createNode animCurveTL -n "pCube2_locator14_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000687";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.16828512573264942 2 0.16778610363526691 3 0.16729228298668064 4 0.16680362905596258 5 0.16632010792568741
		 6 0.1658416864779837 7 0.16536833238100823 8 0.16490001407583632 9 0.16443670076375694 10 0.16397836239396413 11 0.16352496965163654 12 0.16307649394639445 13 0.16263290740112979 14 0.16219418284119669
		 15 0.16176029378395951 16 0.16133121442868692 17 0.16090691964678816 18 0.1604873849723828 19 0.16007258659319767 20 0.15966250134178561 21 0.15925710668705828 22 0.15885638072612907 23 0.15846030217645946
		 24 0.15806885036830187 25 0.15768200523743803 26 0.15729974731820295 27 0.15692205773679335 28 0.15654891820485339 29 0.1561803110133364 30 0.15581621902663412 31 0.15545662567697349 32 0.15510151495907554
		 33 0.15475087142507138 34 0.1544046801796739 35 0.15406292687560197 36 0.1537255977092512 37 0.15339267941661194 38 0.15306415926942918 39 0.15274002507160267 40 0.15242026515582507 41 0.15210486838045512
		 42 0.1517938241266239 43 0.15148712229557282 44 0.15118475330622072 45 0.15088670809295845 46 0.15059297810367056 47 0.15030355529798056 48 0.15001843214572097 49 0.14973760162562533 50 0.14946105722424219
		 51 0.1491887929350697 52 0.14892080325791113 53 0.14865708319844939 54 0.14839762826804215 55 0.14814243448373543 56 0.14789149836849724 57 0.14764481695167087 58 0.14740238776964787 59 0.14716420886676107
		 60 0.14693027879639953 61 0.14670059662234491 62 0.14647516192033017 63 0.14625397477982294 64 0.14603703580603367 65 0.14582434612215045 66 0.14561590737180219 67 0.14541172172175199 68 0.14521179186482203
		 69 0.14501612102305328 70 0.14482471295110155 71 0.14463757193987181 72 0.14445470282039619 73 0.14427611096795356 74 0.14410180230644021 75 0.14393178331298917 76 0.14376606102284484 77 0.14360464303449594
		 78 0.14344753751507078 79 0.14329475320599849 80 0.1431462994289413 81 0.14300218609200144 82 0.14286242369620972 83 0.14272702334229803 84 0.1425959967377628 85 0.14246935620422563 86 0.14234711468509509
		 87 0.14222928575353699 88 0.14211588362076077 89 0.1420069231446256 90 0.14190241983857688 91 0.14180238988091753 92 0.14170685012442419 93 0.14161581810631441 94 0.14152931205857466 95 0.1414473509186569
		 96 0.14136995434055399 97 0.14129714270626226 98 0.14122893713764206 99 0.14116535950868614 100 0.14110643245820742 101 0.14105217940295556;
createNode animCurveTU -n "pCube2_locator14_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A00000688";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator15_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667A000006A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.1446129685074854 2 0.13980201231773548 3 0.13499503233799581 4 0.13019175032119357 5 0.12539188901362797
		 6 0.12059517209045945 7 0.11580132409156885 8 0.11101007035775357 9 0.10622113696723012 10 0.10143425067241008 11 0.096649138836919946 12 0.091865529372832544 13 0.087083150678080257 14 0.082301731574018544
		 15 0.077521001243109899 16 0.072740689166697958 17 0.067960525062840449 18 0.063180238824173007 19 0.058399560455770771 20 0.053618220012980111 21 0.04883594753918874 22 0.044052473003505455 23 0.039267526238317307
		 24 0.034480836876695786 25 0.029692134289620253 26 0.024901147522988887 27 0.020107605234385373 28 0.015311235629571263 29 0.010511766398672351 30 0.0057089246520274362 31 0.00090243685566848697 32 -0.0039079712336009265
		 33 -0.0087225746335604648 34 -0.013541649202394423 35 -0.018365471705012293 36 -0.023194319879902559 37 -0.028028472506553992 38 -0.032868209473477517 39 -0.03771381184686684 40 -0.042565561939928331 41 -0.047423743382922434
		 42 -0.052288641193948437 43 -0.057160541850513114 44 -0.062039733361919036 45 -0.066926505342514431 46 -0.071821149085840807 47 -0.076723957639722118 48 -0.081635225882333684 49 -0.086555250599295586 50 -0.091484330561832583
		 51 -0.096422766606044041 52 -0.10137086171333093 53 -0.10632892109202319 54 -0.11129725226025811 55 -0.11627616513015504 56 -0.12126597209333928 57 -0.1262669881078628 58 -0.13127953078657634 59 -0.1363039204870069
		 60 -0.14134048040279212 61 -0.14638953665673526 62 -0.15145141839552978 63 -0.15652645788622022 64 -0.16161499061446039 65 -0.16671735538462717 66 -0.1718338944218617 67 -0.17696495347609892 68 -0.1821108819281595
		 69 -0.18727203289797201 70 -0.19244876335500138 71 -0.19764143423095398 72 -0.20285041053484648 73 -0.20807606147050778 74 -0.21331876055660798 75 -0.21857888574928896 76 -0.22385681956749481 77 -0.22915294922108775
		 78 -0.23446766674184405 79 -0.23980136911743066 80 -0.24515445842845829 81 -0.25052734198871984 82 -0.25592043248871843 83 -0.26133414814259742 84 -0.26676891283858728 85 -0.27222515629308841 86 -0.27770331420851435
		 87 -0.28320382843501912 88 -0.28872714713624675 89 -0.29427372495923276 90 -0.29984402320860487 91 -0.30543851002522898 92 -0.31105766056944639 93 -0.31670195720907146 94 -0.32237188971229963 95 -0.32806795544570849
		 96 -0.33379065957751464 97 -0.33954051528628304 98 -0.34531804397526389 99 -0.35112377549256385 100 -0.35695824835735185 101 -0.36282200999231001;
createNode animCurveTL -n "pCube2_locator15_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667A000006A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.16828512573264942 2 -0.16808988092236432 3 -0.16789733687625952 4 -0.16770748918167999 5 -0.16752033396437671
		 6 -0.16733586788412425 7 -0.16715408813050819 8 -0.16697499241888392 9 -0.16679857898650335 10 -0.16662484658881083 11 -0.16645379449590592 12 -0.1662854224891725 13 -0.16611973085807497 14 -0.16595672039711895
		 15 -0.16579639240297783 16 -0.16563874867178457 17 -0.16548379149658765 18 -0.16533152366497261 19 -0.16518194845684764 20 -0.16503506964239478 21 -0.16489089148018649 22 -0.16474941871546694 23 -0.16461065657860108
		 24 -0.16447461078368808 25 -0.16434128752734467 26 -0.16421069348765438 27 -0.1640828358232872 28 -0.16395772217278837 29 -0.16383536065403892 30 -0.16371575986388726 31 -0.16359892887795546 32 -0.16348487725062
		 33 -0.16337361501516806 34 -0.16326515268413333 35 -0.16315950124980955 36 -0.16305667218494735 37 -0.16295667744363318 38 -0.16285952946235394 39 -0.1627652411612498 40 -0.16267382594555568 41 -0.1625852977072364
		 42 -0.16249967082681471 43 -0.16241696017539842 44 -0.16233718111690654 45 -0.16226034951049861 46 -0.16218648171321015 47 -0.16211559458279695 48 -0.16204770548079184 49 -0.1619828322757777 50 -0.16192099334687865
		 51 -0.16186220758747571 52 -0.16180649440914874 53 -0.16175387374584893 54 -0.16170436605830724 55 -0.16165799233868161 56 -0.161614774115449 57 -0.16157473345854501 58 -0.16153789298475824 59 -0.16150427586338223
		 60 -0.16147390582213217 61 -0.16144680715333037 62 -0.16142300472036708 63 -0.16140252396444166 64 -0.16138539091159154 65 -0.16137163218001405 66 -0.16136127498768738 67 -0.16135434716029984 68 -0.1613508771394912
		 69 -0.16135089399141589 70 -0.16135442741563477 71 -0.16136150775434316 72 -0.16137216600194348 73 -0.1613864338149712 74 -0.16140434352238242 75 -0.16142592813621293 76 -0.16145122136261669 77 -0.1614802576132956
		 78 -0.1615130720173289 79 -0.16154970043341355 80 -0.16159017946252691 81 -0.16163454646102182 82 -0.16168283955416696 83 -0.16173509765014449 84 -0.16179136045451681 85 -0.16185166848517696 86 -0.16191606308779499
		 87 -0.16198458645177483 88 -0.16205728162673738 89 -0.16213419253954303 90 -0.16221536401187175 91 -0.16230084177837478 92 -0.16239067250541739 93 -0.16248490381042863 94 -0.16258358428187725 95 -0.16268676349989297
		 96 -0.16279449205755248 97 -0.16290682158285175 98 -0.16302380476138489 99 -0.16314549535975287 100 -0.16327194824972513 101 -0.16340321943317748;
createNode animCurveTU -n "pCube2_locator15_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667A000006A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator16_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-667B000006C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.36899313615101792 2 0.36325726270657199 3 0.35753740832937042 4 0.35183318728581892 5 0.34614421756634872
		 6 0.34047012077129146 7 0.33481052199873185 8 0.32916504973427929 9 0.32353333574267795 10 0.31791501496119545 11 0.31230972539472424 12 0.3067171080125255 13 0.30113680664656195 14 0.29556846789135183
		 15 0.2900117410052877 16 0.28446627781335998 17 0.27893173261123061 18 0.27340776207059803 19 0.26789402514580107 20 0.26239018298160688 21 0.25689589882213149 22 0.25141083792084007 23 0.24593466745157722
		 24 0.24046705642057775 25 0.23500767557940705 26 0.22955619733878696 27 0.22411229568325475 28 0.21867564608661227 29 0.21324592542811838 30 0.20782281190937768 31 0.20240598497188333 32 0.19699512521516738
		 33 0.19158991431551531 34 0.18619003494520336 35 0.18079517069221207 36 0.17540500598037756 37 0.1700192259899338 38 0.16463751657840975 39 0.15925956420183174 40 0.15388505583619871 41 0.14851367889918143
		 42 0.14314512117200806 43 0.13777907072149498 44 0.13241521582218185 45 0.12705324487852776 46 0.12169284634713162 47 0.11633370865893011 48 0.11097552014133971 49 0.10561796894029385 50 0.10026074294213905
		 51 0.094903529695346212 52 0.089546016331996769 53 0.084187889489000245 54 0.078828835229001748 55 0.07346853896093708 56 0.068106685360191155 57 0.062742958288317552 58 0.057377040712276117 59 0.052008614623140104
		 60 0.046637360954234652 61 0.041262959498652663 62 0.035885088826111633 63 0.030503426199096073 64 0.02511764748824119 65 0.019727427086913218 66 0.014332437824928879 67 0.0089323508813744512 68 0.0035268356964631709
		 69 -0.0018844401176124626 70 -0.0073018108668929105 71 -0.012725612866974989 72 -0.018156184535511266 73 -0.023593866485930315 74 -0.029039001622447658 75 -0.03449193523641253 76 -0.03995301510406396 77 -0.045422591585748684
		 78 -0.050901017726667219 79 -0.05638864935921406 80 -0.061885845206974821 81 -0.067392966990451775 82 -0.072910379534586456 83 -0.078438450878150601 84 -0.083977552385079091 85 -0.089528058857822002 86 -0.095090348652792644
		 87 -0.10066480379799164 88 -0.10625181011289087 89 -0.11185175733065944 90 -0.11746503922282236 91 -0.12309205372644283 92 -0.12873320307391339 93 -0.13438889392546471 94 -0.14005953750447697 95 -0.14574554973570808
		 96 -0.15144735138653359 97 -0.15716536821131705 98 -0.16290003109901374 99 -0.16865177622413008 100 -0.17442104520115742 101 -0.18020828524260157;
createNode animCurveTL -n "pCube2_locator16_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-667B000006C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.16828512573264942 2 -0.16778610363526691 3 -0.16729228298668064 4 -0.16680362905596258 5 -0.16632010792568741
		 6 -0.1658416864779837 7 -0.16536833238100823 8 -0.16490001407583632 9 -0.16443670076375694 10 -0.16397836239396418 11 -0.16352496965163654 12 -0.16307649394639445 13 -0.16263290740112979 14 -0.16219418284119669
		 15 -0.16176029378395951 16 -0.16133121442868692 17 -0.16090691964678816 18 -0.1604873849723828 19 -0.16007258659319767 20 -0.15966250134178561 21 -0.15925710668705823 22 -0.15885638072612907 23 -0.1584603021764594
		 24 -0.15806885036830187 25 -0.15768200523743803 26 -0.15729974731820301 27 -0.1569220577367933 28 -0.15654891820485339 29 -0.1561803110133364 30 -0.15581621902663412 31 -0.15545662567697349 32 -0.15510151495907559
		 33 -0.15475087142507132 34 -0.1544046801796739 35 -0.15406292687560197 36 -0.1537255977092512 37 -0.15339267941661194 38 -0.15306415926942918 39 -0.15274002507160267 40 -0.15242026515582507 41 -0.15210486838045512
		 42 -0.15179382412662384 43 -0.15148712229557282 44 -0.15118475330622066 45 -0.15088670809295845 46 -0.15059297810367056 47 -0.15030355529798056 48 -0.15001843214572097 49 -0.14973760162562533 50 -0.14946105722424219
		 51 -0.1491887929350697 52 -0.14892080325791113 53 -0.14865708319844939 54 -0.14839762826804215 55 -0.14814243448373537 56 -0.14789149836849724 57 -0.14764481695167092 58 -0.14740238776964787 59 -0.14716420886676107
		 60 -0.14693027879639953 61 -0.14670059662234491 62 -0.14647516192033017 63 -0.14625397477982294 64 -0.14603703580603367 65 -0.14582434612215045 66 -0.14561590737180219 67 -0.14541172172175199 68 -0.14521179186482203
		 69 -0.14501612102305328 70 -0.1448247129511015 71 -0.14463757193987187 72 -0.14445470282039613 73 -0.14427611096795356 74 -0.14410180230644026 75 -0.14393178331298917 76 -0.14376606102284484 77 -0.14360464303449594
		 78 -0.14344753751507083 79 -0.14329475320599855 80 -0.1431462994289413 81 -0.14300218609200144 82 -0.14286242369620972 83 -0.14272702334229803 84 -0.14259599673776285 85 -0.14246935620422568 86 -0.14234711468509509
		 87 -0.14222928575353699 88 -0.14211588362076077 89 -0.1420069231446256 90 -0.14190241983857688 91 -0.14180238988091753 92 -0.14170685012442419 93 -0.14161581810631441 94 -0.14152931205857466 95 -0.1414473509186569
		 96 -0.14136995434055399 97 -0.14129714270626226 98 -0.14122893713764206 99 -0.14116535950868614 100 -0.14110643245820736 101 -0.14105217940295556;
createNode animCurveTU -n "pCube2_locator16_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-667B000006CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
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
// End of test_cube2_b_marker_bundles.ma
