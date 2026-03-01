//Maya ASCII 2024 scene
//Name: test_cube2_c_marker_bundles.ma
//Last modified: Fri, Oct 17, 2025 08:44:24 AM
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
fileInfo "UUID" "23E71080-0004-A6BA-68F1-6738000009FC";
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
	rename -uid "23E71080-0004-A6BA-68F1-671F0000079C";
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
	rename -uid "23E71080-0004-A6BA-68F1-671F000007B1";
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
	setAttr ".t" -type "double3" -0.22581278913484104 0.17228567389824112 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-671F000007B6";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator2_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007D2";
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
	setAttr ".t" -type "double3" 0.22581278913484104 0.17228567389824112 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-671F000007D7";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator3_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007F3";
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
	setAttr ".t" -type "double3" -0.21130428901574394 -0.46573358382978436 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-671F000007F8";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator4_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000814";
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
	setAttr ".t" -type "double3" 0.21130428901574394 -0.46573358382978436 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-671F00000819";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator5_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000835";
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
	setAttr ".t" -type "double3" -0.15472714668060344 0.18666069963596787 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-671F0000083A";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator6_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000856";
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
	setAttr ".t" -type "double3" 0.1547271466806035 0.18666069963596787 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-671F0000085B";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator7_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000877";
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
	setAttr ".t" -type "double3" -0.14777478246162812 -0.2601813490232352 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-671F0000087C";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube1_locator8_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000898";
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
	setAttr ".t" -type "double3" 0.14777478246162812 -0.2601813490232352 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-671F0000089D";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator9_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008B9";
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
	setAttr ".t" -type "double3" -0.067528868962544286 0.2042940422239522 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-6720000008BE";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator10_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008DA";
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
	setAttr ".t" -type "double3" 0.067528868962544286 0.2042940422239522 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-6720000008DF";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator11_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008FB";
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
	setAttr ".t" -type "double3" -0.06617018792524898 0.0038535488890690806 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-672000000900";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator12_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67200000091C";
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
	setAttr ".t" -type "double3" 0.06617018792524898 0.0038535488890690806 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-672000000921";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator13_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67200000093D";
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
	setAttr ".t" -type "double3" -0.059371760389530681 0.20594358271671753 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-672000000942";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator14_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67200000095E";
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
	setAttr ".t" -type "double3" 0.059371760389530737 0.20594358271671753 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-672000000963";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator15_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-67200000097F";
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
	setAttr ".t" -type "double3" -0.058318937783389035 0.029256579704519448 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-672000000984";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "pCube2_locator16_MKR" -p "markerGroup1";
	rename -uid "23E71080-0004-A6BA-68F1-6720000009A0";
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
	setAttr ".t" -type "double3" 0.058318937783389035 0.029256579704519448 -1 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-6720000009A5";
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
	rename -uid "23E71080-0004-A6BA-68F1-66C300000750";
	setAttr ".t" -type "double3" 0 0 -58.26425035219598 ;
	setAttr ".s" -type "double3" 7.5 7.5 7.5 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-66C300000751";
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
	rename -uid "23E71080-0004-A6BA-68F1-66C300000752";
	setAttr ".t" -type "double3" -0.5 0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape9" -p "locator9";
	rename -uid "23E71080-0004-A6BA-68F1-66C300000753";
	setAttr -k off ".v";
createNode transform -n "locator10" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-66C300000754";
	setAttr ".t" -type "double3" 0.5 0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape10" -p "locator10";
	rename -uid "23E71080-0004-A6BA-68F1-66C300000755";
	setAttr -k off ".v";
createNode transform -n "locator11" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-66C300000756";
	setAttr ".t" -type "double3" -0.5 -0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape11" -p "locator11";
	rename -uid "23E71080-0004-A6BA-68F1-66C300000757";
	setAttr -k off ".v";
createNode transform -n "locator12" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-66C300000758";
	setAttr ".t" -type "double3" 0.5 -0.5 0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape12" -p "locator12";
	rename -uid "23E71080-0004-A6BA-68F1-66C300000759";
	setAttr -k off ".v";
createNode transform -n "locator13" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-66C30000075A";
	setAttr ".t" -type "double3" -0.5 0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape13" -p "locator13";
	rename -uid "23E71080-0004-A6BA-68F1-66C30000075B";
	setAttr -k off ".v";
createNode transform -n "locator14" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-66C30000075C";
	setAttr ".t" -type "double3" 0.5 0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape14" -p "locator14";
	rename -uid "23E71080-0004-A6BA-68F1-66C30000075D";
	setAttr -k off ".v";
createNode transform -n "locator15" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-66C30000075E";
	setAttr ".t" -type "double3" -0.5 -0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape15" -p "locator15";
	rename -uid "23E71080-0004-A6BA-68F1-66C30000075F";
	setAttr -k off ".v";
createNode transform -n "locator16" -p "pCube2";
	rename -uid "23E71080-0004-A6BA-68F1-66C300000760";
	setAttr ".t" -type "double3" 0.5 -0.5 -0.5 ;
	setAttr ".s" -type "double3" 0.13333333333333333 0.13333333333333333 0.13333333333333333 ;
createNode locator -n "locatorShape16" -p "locator16";
	rename -uid "23E71080-0004-A6BA-68F1-66C300000761";
	setAttr -k off ".v";
createNode transform -n "pCube1_locator1_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007A2";
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
	rename -uid "23E71080-0004-A6BA-68F1-671F000007A7";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator1_BNDLocatorShape" -p "pCube1_locator1_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007AC";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator2_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007C3";
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
	rename -uid "23E71080-0004-A6BA-68F1-671F000007C8";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator2_BNDLocatorShape" -p "pCube1_locator2_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007CD";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator3_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007E4";
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
	rename -uid "23E71080-0004-A6BA-68F1-671F000007E9";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator3_BNDLocatorShape" -p "pCube1_locator3_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007EE";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator4_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000805";
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
	rename -uid "23E71080-0004-A6BA-68F1-671F0000080A";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator4_BNDLocatorShape" -p "pCube1_locator4_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F0000080F";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator5_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000826";
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
	rename -uid "23E71080-0004-A6BA-68F1-671F0000082B";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator5_BNDLocatorShape" -p "pCube1_locator5_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000830";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator6_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000847";
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
	rename -uid "23E71080-0004-A6BA-68F1-671F0000084C";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator6_BNDLocatorShape" -p "pCube1_locator6_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000851";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator7_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000868";
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
	rename -uid "23E71080-0004-A6BA-68F1-671F0000086D";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator7_BNDLocatorShape" -p "pCube1_locator7_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000872";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube1_locator8_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000889";
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
	rename -uid "23E71080-0004-A6BA-68F1-671F0000088E";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube1_locator8_BNDLocatorShape" -p "pCube1_locator8_BND";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000893";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator9_BND";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008AA";
	setAttr ".t" -type "double3" -3.75 3.75 -54.51425035219598 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-6720000008AF";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator9_BNDLocatorShape" -p "pCube2_locator9_BND";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008B4";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator10_BND";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008CB";
	setAttr ".t" -type "double3" 3.75 3.75 -54.51425035219598 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-6720000008D0";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator10_BNDLocatorShape" -p "pCube2_locator10_BND";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008D5";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator11_BND";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008EC";
	setAttr ".t" -type "double3" -3.75 -3.75 -54.51425035219598 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-6720000008F1";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator11_BNDLocatorShape" -p "pCube2_locator11_BND";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008F6";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator12_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67200000090D";
	setAttr ".t" -type "double3" 3.75 -3.75 -54.51425035219598 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-672000000912";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator12_BNDLocatorShape" -p "pCube2_locator12_BND";
	rename -uid "23E71080-0004-A6BA-68F1-672000000917";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator13_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67200000092E";
	setAttr ".t" -type "double3" -3.75 3.75 -62.01425035219598 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-672000000933";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator13_BNDLocatorShape" -p "pCube2_locator13_BND";
	rename -uid "23E71080-0004-A6BA-68F1-672000000938";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator14_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67200000094F";
	setAttr ".t" -type "double3" 3.75 3.75 -62.01425035219598 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-672000000954";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator14_BNDLocatorShape" -p "pCube2_locator14_BND";
	rename -uid "23E71080-0004-A6BA-68F1-672000000959";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator15_BND";
	rename -uid "23E71080-0004-A6BA-68F1-672000000970";
	setAttr ".t" -type "double3" -3.75 -3.75 -62.01425035219598 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-672000000975";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator15_BNDLocatorShape" -p "pCube2_locator15_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67200000097A";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "pCube2_locator16_BND";
	rename -uid "23E71080-0004-A6BA-68F1-672000000991";
	setAttr ".t" -type "double3" 3.75 -3.75 -62.01425035219598 ;
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
	rename -uid "23E71080-0004-A6BA-68F1-672000000996";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "pCube2_locator16_BNDLocatorShape" -p "pCube2_locator16_BND";
	rename -uid "23E71080-0004-A6BA-68F1-67200000099B";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "23E71080-0004-A6BA-68F1-66BA0000073F";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "23E71080-0004-A6BA-68F1-66BA00000740";
createNode displayLayer -n "defaultLayer";
	rename -uid "4EC5E080-001A-42ED-68DC-56030000029A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "23E71080-0004-A6BA-68F1-66BA00000742";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4EC5E080-001A-42ED-68DC-56040000029C";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "23E71080-0004-A6BA-68F1-66BA00000744";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "23E71080-0004-A6BA-68F1-66BA00000745";
createNode animCurveTL -n "camera1_translateX";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 0;
createNode animCurveTL -n "camera1_translateY";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A2";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 5;
createNode animCurveTL -n "camera1_translateZ";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 0;
createNode animCurveTA -n "camera1_rotateX";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A4";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 -10;
createNode animCurveTA -n "camera1_rotateY";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 0;
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
	rename -uid "23E71080-0004-A6BA-68F1-671F0000079B";
createNode mmMarkerScale -n "mmMarkerScale1";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007A1";
	setAttr ".ovrscnmd" 1;
createNode animCurveTL -n "pCube1_locator1_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.22435942307782053 2 -0.22444896046587259 3 -0.22453684004295948 4 -0.22462305757287326 5 -0.22470760890194519
		 6 -0.22479048995956785 7 -0.22487169675870744 8 -0.22495122539640572 9 -0.22502907205427236 10 -0.22510523299896712 11 -0.22517970458267167 12 -0.22525248324355074 13 -0.22532356550620303 14 -0.22539294798210219
		 15 -0.22546062737002553 16 -0.22552660045647355 17 -0.22559086411607754 18 -0.22565341531199645 19 -0.22571425109630328 20 -0.22577336861035879 21 -0.22583076508517574 22 -0.22588643784177043 23 -0.22594038429150332
		 24 -0.22599260193640841 25 -0.22604308836950998 26 -0.22609184127512916 27 -0.22613885842917708 28 -0.2261841376994379 29 -0.22622767704583813 30 -0.22626947452070595 31 -0.2263095282690164 32 -0.2263478365286265
		 33 -0.22638439763049689 34 -0.22641920999890153 35 -0.22645227215162583 36 -0.22648358270015145 37 -0.22651314034982961 38 -0.2265409439000417 39 -0.22656699224434729 40 -0.22659128437062015 41 -0.22661381936117153
		 42 -0.22663459639286043 43 -0.22665361473719248 44 -0.2266708737604054 45 -0.2266863729235421 46 -0.2267001117825107 47 -0.22671208998813352 48 -0.22672230728618115 49 -0.22673076351739591 50 -0.22673745861750155
		 51 -0.22674239261720075 52 -0.2267455656421597 53 -0.22674697791298049 54 -0.22674662974516052 55 -0.22674452154903924 56 -0.22674065382973263 57 -0.22673502718705529 58 -0.22672764231542897 59 -0.22671850000377969
		 60 -0.22670760113542177 61 -0.22669494668792989 62 -0.22668053773299757 63 -0.22666437543628504 64 -0.22664646105725295 65 -0.22662679594898505 66 -0.22660538155799781 67 -0.22658221942403844 68 -0.2265573111798701
		 69 -0.22653065855104548 70 -0.2265022633556682 71 -0.22647212750414203 72 -0.22644025299890835 73 -0.22640664193417182 74 -0.22637129649561383 75 -0.22633421896009498 76 -0.22629541169534484 77 -0.2262548771596411
		 78 -0.22621261790147695 79 -0.22616863655921637 80 -0.22612293586073962 81 -0.22607551862307529 82 -0.22602638775202333 83 -0.22597554624176608 84 -0.22592299717446768 85 -0.2258687437198641 86 -0.22581278913484104
		 87 -0.22575513676300196 88 -0.22569579003422546 89 -0.22563475246421155 90 -0.22557202765401857 91 -0.22550761928958934 92 -0.22544153114126686 93 -0.22537376706330103 94 -0.22530433099334424 95 -0.22523322695193804
		 96 -0.22516045904199011 97 -0.22508603144824146 98 -0.22500994843672389 99 -0.2249322143542094 100 -0.22485283362764918 101 -0.22477181076360386;
createNode animCurveTL -n "pCube1_locator1_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.3365391346167308 2 0.33473024693683562 3 0.33291635819805709 4 0.33109753736713587 5 0.3292738537755544
		 6 0.32744537711424826 7 0.3256121774282581 8 0.3237743251113242 9 0.32193189090042129 10 0.32008494587023861 11 0.31823356142760317 12 0.31637780930584714 13 0.31451776155912281 14 0.31265349055666314
		 15 0.3107850689769911 16 0.30891256980207626 17 0.3070360663114422 18 0.30515563207622542 19 0.30327134095318398 20 0.30138326707866048 21 0.29949148486249855 22 0.29759606898191304 23 0.2956970943753181
		 24 0.29379463623611135 25 0.29188877000641489 26 0.2899795713707779 27 0.28806711624983783 28 0.28615148079394392 29 0.28423274137674226 30 0.28231097458872578 31 0.28038625723074873 32 0.27845866630750649
		 33 0.27652827902098442 34 0.27459517276387246 35 0.27265942511295205 36 0.27072111382245267 37 0.26878031681737991 38 0.2668371121868176 39 0.26489157817720477 40 0.26294379318558736 41 0.26099383575284785
		 42 0.25904178455691185 43 0.25708771840593658 44 0.25513171623147768 45 0.25317385708163875 46 0.25121422011420502 47 0.24925288458976169 48 0.24728992986479603 49 0.24532543538478935 50 0.24335948067729607
		 51 0.2413921453450123 52 0.23942350905883614 53 0.23745365155092046 54 0.23548265260771828 55 0.23351059206302405 56 0.23153754979101082 57 0.22956360569926548 58 0.22758883972182109 59 0.2256133318121919
		 60 0.22363716193640837 61 0.22166041006605453 62 0.21968315617130996 63 0.2177054802139976 64 0.21572746214063754 65 0.21374918187550851 66 0.21177071931371882 67 0.20979215431428877 68 0.20781356669324258
		 69 0.20583503621671562 70 0.20385664259407466 71 0.20187846547105415 72 0.19990058442290792 73 0.19792307894758276 74 0.19594602845890641 75 0.19396951227979842 76 0.19199360963550494 77 0.19001839964685119
		 78 0.18804396132352441 79 0.18607037355737632 80 0.18409771511575679 81 0.18212606463487246 82 0.18015550061317565 83 0.17818610140478308 84 0.17621794521292566 85 0.17425111008343164 86 0.17228567389824112
		 87 0.1703217143689586 88 0.16835930903043805 89 0.16639853523440729 90 0.16443947014312876 91 0.16248219072310077 92 0.16052677373879765 93 0.15857329574645185 94 0.15662183308787814 95 0.15467246188434025
		 96 0.15272525803046422 97 0.15078029718819341 98 0.14883765478079303 99 0.14689740598689927 100 0.14495962573461962 101 0.14302438869567857;
createNode animCurveTU -n "pCube1_locator1_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator2_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.22435942307782053 2 0.22444896046587259 3 0.22453684004295948 4 0.22462305757287326 5 0.22470760890194519
		 6 0.22479048995956785 7 0.22487169675870744 8 0.22495122539640566 9 0.22502907205427236 10 0.22510523299896712 11 0.22517970458267167 12 0.22525248324355074 13 0.22532356550620303 14 0.22539294798210219
		 15 0.22546062737002548 16 0.22552660045647355 17 0.22559086411607754 18 0.22565341531199645 19 0.22571425109630328 20 0.22577336861035879 21 0.22583076508517574 22 0.22588643784177043 23 0.22594038429150332
		 24 0.22599260193640847 25 0.22604308836950993 26 0.22609184127512916 27 0.22613885842917703 28 0.2261841376994379 29 0.22622767704583813 30 0.22626947452070589 31 0.2263095282690164 32 0.22634783652862644
		 33 0.22638439763049689 34 0.22641920999890153 35 0.22645227215162578 36 0.22648358270015145 37 0.22651314034982961 38 0.22654094390004165 39 0.22656699224434729 40 0.22659128437062015 41 0.22661381936117153
		 42 0.22663459639286043 43 0.22665361473719248 44 0.2266708737604054 45 0.2266863729235421 46 0.2267001117825107 47 0.22671208998813352 48 0.22672230728618115 49 0.22673076351739585 50 0.2267374586175015
		 51 0.22674239261720075 52 0.22674556564215975 53 0.22674697791298049 54 0.22674662974516058 55 0.22674452154903924 56 0.22674065382973263 57 0.22673502718705529 58 0.22672764231542897 59 0.22671850000377969
		 60 0.22670760113542177 61 0.22669494668792989 62 0.22668053773299757 63 0.22666437543628504 64 0.22664646105725295 65 0.22662679594898505 66 0.22660538155799781 67 0.22658221942403844 68 0.2265573111798701
		 69 0.22653065855104548 70 0.22650226335566814 71 0.22647212750414203 72 0.22644025299890835 73 0.22640664193417182 74 0.22637129649561383 75 0.22633421896009498 76 0.22629541169534484 77 0.2262548771596411
		 78 0.22621261790147695 79 0.22616863655921637 80 0.22612293586073962 81 0.22607551862307529 82 0.22602638775202333 83 0.22597554624176608 84 0.22592299717446762 85 0.2258687437198641 86 0.22581278913484104
		 87 0.22575513676300196 88 0.22569579003422546 89 0.2256347524642115 90 0.22557202765401851 91 0.22550761928958929 92 0.22544153114126686 93 0.22537376706330103 94 0.22530433099334424 95 0.22523322695193804
		 96 0.22516045904199011 97 0.22508603144824146 98 0.22500994843672384 99 0.2249322143542094 100 0.22485283362764918 101 0.22477181076360386;
createNode animCurveTL -n "pCube1_locator2_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.3365391346167308 2 0.33473024693683562 3 0.33291635819805709 4 0.33109753736713587 5 0.3292738537755544
		 6 0.32744537711424826 7 0.3256121774282581 8 0.3237743251113242 9 0.32193189090042129 10 0.32008494587023861 11 0.31823356142760317 12 0.31637780930584714 13 0.31451776155912281 14 0.31265349055666314
		 15 0.3107850689769911 16 0.30891256980207626 17 0.3070360663114422 18 0.30515563207622542 19 0.30327134095318398 20 0.30138326707866048 21 0.29949148486249855 22 0.29759606898191304 23 0.2956970943753181
		 24 0.29379463623611135 25 0.29188877000641489 26 0.2899795713707779 27 0.28806711624983783 28 0.28615148079394392 29 0.28423274137674226 30 0.28231097458872578 31 0.28038625723074873 32 0.27845866630750649
		 33 0.27652827902098442 34 0.27459517276387246 35 0.27265942511295205 36 0.27072111382245267 37 0.26878031681737991 38 0.2668371121868176 39 0.26489157817720477 40 0.26294379318558736 41 0.26099383575284785
		 42 0.25904178455691185 43 0.25708771840593658 44 0.25513171623147768 45 0.25317385708163875 46 0.25121422011420502 47 0.24925288458976169 48 0.24728992986479603 49 0.24532543538478935 50 0.24335948067729607
		 51 0.2413921453450123 52 0.23942350905883614 53 0.23745365155092046 54 0.23548265260771828 55 0.23351059206302405 56 0.23153754979101082 57 0.22956360569926548 58 0.22758883972182109 59 0.2256133318121919
		 60 0.22363716193640837 61 0.22166041006605453 62 0.21968315617130996 63 0.2177054802139976 64 0.21572746214063754 65 0.21374918187550851 66 0.21177071931371882 67 0.20979215431428877 68 0.20781356669324258
		 69 0.20583503621671562 70 0.20385664259407466 71 0.20187846547105415 72 0.19990058442290792 73 0.19792307894758276 74 0.19594602845890641 75 0.19396951227979842 76 0.19199360963550494 77 0.19001839964685119
		 78 0.18804396132352441 79 0.18607037355737632 80 0.18409771511575679 81 0.18212606463487246 82 0.18015550061317565 83 0.17818610140478308 84 0.17621794521292566 85 0.17425111008343164 86 0.17228567389824112
		 87 0.1703217143689586 88 0.16835930903043805 89 0.16639853523440729 90 0.16443947014312876 91 0.16248219072310077 92 0.16052677373879765 93 0.15857329574645185 94 0.15662183308787814 95 0.15467246188434025
		 96 0.15272525803046422 97 0.15078029718819341 98 0.14883765478079303 99 0.14689740598689927 100 0.14495962573461962 101 0.14302438869567857;
createNode animCurveTU -n "pCube1_locator2_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-671F000007E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator3_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000801";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.22435942307782053 2 -0.22426823219701886 3 -0.22417539222314986 4 -0.22408090763681127 5 -0.22398478299895697
		 6 -0.22388702295032747 7 -0.22378763221087217 8 -0.2236866155791617 9 -0.22358397793179263 10 -0.22347972422278306 11 -0.22337385948295929 12 -0.2232663888193348 13 -0.22315731741448053 14 -0.22304665052588779
		 15 -0.22293439348532212 16 -0.22282055169817039 17 -0.22270513064277997 18 -0.22258813586979032 19 -0.22246957300145681 20 -0.22234944773096854 21 -0.22222776582175796 22 -0.22210453310680417 23 -0.22197975548792925
		 24 -0.22185343893508869 25 -0.22172558948565424 26 -0.22159621324369155 27 -0.22146531637923117 28 -0.22133290512753373 29 -0.22119898578834973 30 -0.22106356472517269 31 -0.22092664836448811 32 -0.22078824319501622
		 33 -0.22064835576694997 34 -0.22050699269118779 35 -0.22036416063856212 36 -0.22021986633906249 37 -0.22007411658105464 38 -0.21992691821049515 39 -0.21977827813014211 40 -0.2196282032987612 41 -0.21947670073032882
		 42 -0.21932377749323051 43 -0.21916944070945699 44 -0.21901369755379591 45 -0.21885655525302089 46 -0.21869802108507724 47 -0.21853810237826526 48 -0.21837680651042046 49 -0.21821414090809133 50 -0.21805011304571464
		 51 -0.21788473044478895 52 -0.21771800067304548 53 -0.21754993134361755 54 -0.21738053011420788 55 -0.21720980468625473 56 -0.21703776280409609 57 -0.21686441225413344 58 -0.2166897608639935 59 -0.21651381650168933
		 60 -0.21633658707478109 61 -0.21615808052953567 62 -0.21597830485008551 63 -0.21579726805758831 64 -0.21561497820938508 65 -0.21543144339815901 66 -0.21524667175109458 67 -0.21506067142903629 68 -0.21487345062564817
		 69 -0.21468501756657388 70 -0.21449538050859768 71 -0.21430454773880531 72 -0.21411252757374738 73 -0.21391932835860239 74 -0.21372495846634187 75 -0.21352942629689686 76 -0.21333274027632565 77 -0.21313490885598324
		 78 -0.21293594051169273 79 -0.21273584374291865 80 -0.21253462707194248 81 -0.21233229904303952 82 -0.21212886822165966 83 -0.2119243431936092 84 -0.21171873256423546 85 -0.21151204495761511 86 -0.21130428901574394
		 87 -0.21109547339773049 88 -0.21088560677899248 89 -0.21067469785045617 90 -0.21046275531775915 91 -0.21024978790045717 92 -0.21003580433123314 93 -0.2098208133551111 94 -0.20960482372867295 95 -0.20938784421927947
		 96 -0.20916988360429534 97 -0.20895095067031799 98 -0.20873105421241045 99 -0.20851020303333867 100 -0.20828840594281339 101 -0.20806567175673579;
createNode animCurveTL -n "pCube1_locator3_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000802";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.3365391346167308 2 -0.33834295264097108 3 -0.34014163278792253 4 -0.34193510721619275 5 -0.34372330846967492
		 6 -0.34550616948252638 7 -0.3472836235840846 8 -0.34905560450371792 9 -0.35082204637560988 10 -0.35258288374347962 11 -0.3543380515652334 12 -0.35608748521754913 13 -0.35783112050039401 14 -0.35956889364147204
		 15 -0.36130074130060302 16 -0.36302660057403147 17 -0.36474640899866589 18 -0.36646010455624589 19 -0.3681676256774391 20 -0.36986891124586563 21 -0.37156390060205008 22 -0.3732525335473012 23 -0.37493475034751805
		 24 -0.37661049173692274 25 -0.3782796989217187 26 -0.37994231358367514 27 -0.38159827788363648 28 -0.38324753446495674 29 -0.38489002645685877 30 -0.38652569747771759 31 -0.38815449163826726 32 -0.38977635354473333
		 33 -0.39139122830188716 34 -0.39299906151602382 35 -0.39459979929786437 36 -0.39619338826537986 37 -0.39777977554653882 38 -0.39935890878197766 39 -0.40093073612759306 40 -0.40249520625705776 41 -0.40405226836425756
		 42 -0.40560187216565224 43 -0.40714396790255775 44 -0.40867850634335151 45 -0.41020543878559901 46 -0.4117247170581036 47 -0.41323629352287933 48 -0.41474012107704422 49 -0.41623615315463813 50 -0.41772434372836242
		 51 -0.41920464731124202 52 -0.42067701895821108 53 -0.42214141426762092 54 -0.4235977893826724 55 -0.42504610099276963 56 -0.42648630633479928 57 -0.42791836319433246 58 -0.42934222990675142 59 -0.4307578653582993
		 60 -0.43216522898705578 61 -0.43356428078383713 62 -0.4349549812930199 63 -0.43633729161329299 64 -0.43771117339833243 65 -0.43907658885740375 66 -0.44043350075589183 67 -0.44178187241575401 68 -0.44312166771590528
		 69 -0.44445285109252608 70 -0.44577538753930307 71 -0.44708924260759275 72 -0.44839438240652008 73 -0.44969077360300141 74 -0.45097838342169971 75 -0.45225717964490958 76 -0.45352713061237332 77 -0.45478820522102703
		 78 -0.45604037292468103 79 -0.45728360373362925 80 -0.45851786821419527 81 -0.45974313748820744 82 -0.46095938323241287 83 -0.46216657767782171 84 -0.46336469360898935 85 -0.46455370436323273 86 -0.46573358382978436
		 87 -0.46690430644888159 88 -0.46806584721079653 89 -0.469218181654799 90 -0.4703612858680643 91 -0.47149513648451619 92 -0.47261971068361242 93 -0.47373498618906973 94 -0.47484094126753074 95 -0.47593755472717347
		 96 -0.47702480591626328 97 -0.47810267472164875 98 -0.4791711415672012 99 -0.48023018741220014 100 -0.48127979374966334 101 -0.48231994260462446;
createNode animCurveTU -n "pCube1_locator3_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000803";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator4_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000822";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.22435942307782053 2 0.22426823219701886 3 0.22417539222314986 4 0.22408090763681132 5 0.22398478299895697
		 6 0.22388702295032747 7 0.22378763221087217 8 0.2236866155791617 9 0.22358397793179263 10 0.22347972422278306 11 0.22337385948295929 12 0.2232663888193348 13 0.22315731741448053 14 0.22304665052588779
		 15 0.22293439348532207 16 0.22282055169817039 17 0.22270513064277997 18 0.22258813586979032 19 0.22246957300145676 20 0.22234944773096854 21 0.22222776582175796 22 0.22210453310680411 23 0.22197975548792925
		 24 0.22185343893508869 25 0.22172558948565424 26 0.2215962132436915 27 0.22146531637923117 28 0.22133290512753367 29 0.22119898578834973 30 0.22106356472517263 31 0.22092664836448805 32 0.22078824319501622
		 33 0.22064835576694997 34 0.22050699269118779 35 0.22036416063856212 36 0.22021986633906243 37 0.22007411658105469 38 0.21992691821049515 39 0.21977827813014206 40 0.2196282032987612 41 0.21947670073032888
		 42 0.21932377749323051 43 0.21916944070945699 44 0.21901369755379596 45 0.21885655525302083 46 0.2186980210850773 47 0.21853810237826532 48 0.21837680651042046 49 0.21821414090809133 50 0.21805011304571464
		 51 0.21788473044478895 52 0.21771800067304548 53 0.21754993134361755 54 0.21738053011420788 55 0.21720980468625473 56 0.21703776280409603 57 0.21686441225413344 58 0.2166897608639935 59 0.21651381650168933
		 60 0.21633658707478109 61 0.21615808052953567 62 0.21597830485008551 63 0.21579726805758837 64 0.21561497820938502 65 0.21543144339815901 66 0.21524667175109458 67 0.21506067142903629 68 0.21487345062564822
		 69 0.21468501756657388 70 0.21449538050859762 71 0.21430454773880525 72 0.21411252757374744 73 0.21391932835860239 74 0.21372495846634187 75 0.21352942629689686 76 0.21333274027632565 77 0.2131349088559833
		 78 0.21293594051169273 79 0.21273584374291865 80 0.21253462707194248 81 0.21233229904303952 82 0.21212886822165966 83 0.2119243431936092 84 0.21171873256423546 85 0.21151204495761511 86 0.21130428901574394
		 87 0.21109547339773049 88 0.21088560677899248 89 0.21067469785045612 90 0.21046275531775915 91 0.21024978790045723 92 0.21003580433123314 93 0.20982081335511116 94 0.20960482372867295 95 0.20938784421927947
		 96 0.20916988360429534 97 0.20895095067031799 98 0.20873105421241045 99 0.20851020303333867 100 0.20828840594281339 101 0.20806567175673574;
createNode animCurveTL -n "pCube1_locator4_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000823";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.3365391346167308 2 -0.33834295264097108 3 -0.34014163278792253 4 -0.34193510721619275 5 -0.34372330846967492
		 6 -0.34550616948252638 7 -0.3472836235840846 8 -0.34905560450371792 9 -0.35082204637560988 10 -0.35258288374347962 11 -0.3543380515652334 12 -0.35608748521754913 13 -0.35783112050039401 14 -0.35956889364147204
		 15 -0.36130074130060302 16 -0.36302660057403147 17 -0.36474640899866589 18 -0.36646010455624589 19 -0.3681676256774391 20 -0.36986891124586563 21 -0.37156390060205008 22 -0.3732525335473012 23 -0.37493475034751805
		 24 -0.37661049173692274 25 -0.3782796989217187 26 -0.37994231358367514 27 -0.38159827788363648 28 -0.38324753446495674 29 -0.38489002645685877 30 -0.38652569747771759 31 -0.38815449163826726 32 -0.38977635354473333
		 33 -0.39139122830188716 34 -0.39299906151602382 35 -0.39459979929786437 36 -0.39619338826537986 37 -0.39777977554653882 38 -0.39935890878197766 39 -0.40093073612759306 40 -0.40249520625705776 41 -0.40405226836425756
		 42 -0.40560187216565224 43 -0.40714396790255775 44 -0.40867850634335151 45 -0.41020543878559901 46 -0.4117247170581036 47 -0.41323629352287933 48 -0.41474012107704422 49 -0.41623615315463813 50 -0.41772434372836242
		 51 -0.41920464731124202 52 -0.42067701895821108 53 -0.42214141426762092 54 -0.4235977893826724 55 -0.42504610099276963 56 -0.42648630633479928 57 -0.42791836319433246 58 -0.42934222990675142 59 -0.4307578653582993
		 60 -0.43216522898705578 61 -0.43356428078383713 62 -0.4349549812930199 63 -0.43633729161329299 64 -0.43771117339833243 65 -0.43907658885740375 66 -0.44043350075589183 67 -0.44178187241575401 68 -0.44312166771590528
		 69 -0.44445285109252608 70 -0.44577538753930307 71 -0.44708924260759275 72 -0.44839438240652008 73 -0.44969077360300141 74 -0.45097838342169971 75 -0.45225717964490958 76 -0.45352713061237332 77 -0.45478820522102703
		 78 -0.45604037292468103 79 -0.45728360373362925 80 -0.45851786821419527 81 -0.45974313748820744 82 -0.46095938323241287 83 -0.46216657767782171 84 -0.46336469360898935 85 -0.46455370436323273 86 -0.46573358382978436
		 87 -0.46690430644888159 88 -0.46806584721079653 89 -0.469218181654799 90 -0.4703612858680643 91 -0.47149513648451619 92 -0.47261971068361242 93 -0.47373498618906973 94 -0.47484094126753074 95 -0.47593755472717347
		 96 -0.47702480591626328 97 -0.47810267472164875 98 -0.4791711415672012 99 -0.48023018741220014 100 -0.48127979374966334 101 -0.48231994260462446;
createNode animCurveTU -n "pCube1_locator4_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000824";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator5_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000843";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.15350907894798249 2 -0.15355106393543083 3 -0.15359241056396544 4 -0.15363311766266657 5 -0.15367318408122776
		 6 -0.15371260869004533 7 -0.15375139038030583 8 -0.1537895280640727 9 -0.15382702067437037 10 -0.15386386716526756 11 -0.15390006651195859 12 -0.15393561771084308 13 -0.15397051977960441 14 -0.154004771757286
		 15 -0.15403837270436616 16 -0.15407132170283172 17 -0.15410361785624915 18 -0.15413526028983471 19 -0.1541662481505226 20 -0.15419658060703134 21 -0.15422625684992886 22 -0.1542552760916952 23 -0.15428363756678426
		 24 -0.15431134053168322 25 -0.15433838426497015 26 -0.15436476806737059 27 -0.15439049126181181 28 -0.15441555319347516 29 -0.15443995322984705 30 -0.15446369076076805 31 -0.1544867651984797 32 -0.15450917597767078
		 33 -0.15453092255552014 34 -0.15455200441173866 35 -0.1545724210486098 36 -0.15459217199102704 37 -0.1546112567865307 38 -0.15462967500534242 39 -0.15464742624039762 40 -0.15466451010737647 41 -0.15468092624473273
		 42 -0.15469667431372114 43 -0.15471175399842263 44 -0.1547261650057673 45 -0.15473990706555663 46 -0.1547529799304827 47 -0.15476538337614609 48 -0.1547771172010719 49 -0.15478818122672383 50 -0.15479857529751617
		 51 -0.15480829928082429 52 -0.15481735306699296 53 -0.15482573656934306 54 -0.15483344972417623 55 -0.15484049249077736 56 -0.15484686485141558 57 -0.15485256681134363 58 -0.15485759839879498 59 -0.15486195966497834
		 60 -0.15486565068407193 61 -0.15486867155321471 62 -0.15487102239249551 63 -0.15487270334494169 64 -0.15487371457650434 65 -0.15487405627604228 66 -0.1548737286553048 67 -0.15487273194891127 68 -0.15487106641432979
		 69 -0.15486873233185405 70 -0.15486573000457748 71 -0.1548620597583667 72 -0.15485772194183201 73 -0.15485271692629676 74 -0.15484704510576497 75 -0.15484070689688628 76 -0.15483370273892016 77 -0.15482603309369736
		 78 -0.15481769844558035 79 -0.15480869930142116 80 -0.15479903619051816 81 -0.15478870966457042 82 -0.15477772029763082 83 -0.15476606868605713 84 -0.15475375544846115 85 -0.15474078122565627 86 -0.15472714668060344
		 87 -0.15471285249835531 88 -0.15469789938599821 89 -0.15468228807259277 90 -0.15466601930911317 91 -0.15464909386838405 92 -0.15463151254501578 93 -0.15461327615533871 94 -0.15459438553733473 95 -0.15457484155056805
		 96 -0.15455464507611394 97 -0.15453379701648573 98 -0.15451229829556018 99 -0.15449014985850162 100 -0.15446735267168415 101 -0.15444390772261196;
createNode animCurveTL -n "pCube1_locator5_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000844";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.23026361842197374 2 0.22980120025574513 3 0.22933686011697763 4 0.2288706225951842 5 0.22840251236669973
		 6 0.22793255419354419 7 0.22746077292227895 8 0.22698719348285401 9 0.22651184088744536 10 0.22603474022928605 11 0.22555591668148711 12 0.22507539549585154 13 0.22459320200168031 14 0.22410936160456907
		 15 0.22362389978519892 16 0.22313684209811835 17 0.22264821417051817 18 0.22215804170099862 19 0.22166635045832983 20 0.22117316628020478 21 0.22067851507198588 22 0.22018242280544287 23 0.21968491551748692
		 24 0.21918601930889614 25 0.21868576034303455 26 0.21818416484456593 27 0.21768125909816161 28 0.21717706944720039 29 0.21667162229246495 30 0.21616494409083131 31 0.21565706135395213 32 0.21514800064693707
		 33 0.21463778858702498 34 0.21412645184225232 35 0.21361401713011763 36 0.21310051121623907 37 0.21258596091300908 38 0.21207039307824349 39 0.21155383461382737 40 0.21103631246435528 41 0.21051785361576869
		 42 0.20999848509398877 43 0.2094782339635467 44 0.2089571273262083 45 0.20843519231959728 46 0.20791245611581444 47 0.20738894592005375 48 0.20686468896921539 49 0.20633971253051675 50 0.20581404390009994
		 51 0.20528771040163751 52 0.20476073938493555 53 0.20423315822453503 54 0.20370499431831079 55 0.20317627508606895 56 0.20264702796814293 57 0.20211728042398758 58 0.20158705993077231 59 0.20105639398197317
		 60 0.20052531008596386 61 0.19999383576460561 62 0.19946199855183666 63 0.19892982599226205 64 0.1983973456397421 65 0.19786458505598037 66 0.19733157180911365 67 0.19679833347229947 68 0.1962648976223067
		 69 0.19573129183810389 70 0.19519754369945097 71 0.19466368078548979 72 0.19412973067333639 73 0.1935957209366751 74 0.1930616791443529 75 0.19252763285897512 76 0.19199360963550482 77 0.19145963701986135
		 78 0.19092574254752259 79 0.19039195374212881 80 0.18985829811408905 81 0.18932480315918898 82 0.18879149635720349 83 0.18825840517050962 84 0.18772555704270433 85 0.1871929793972239 86 0.18666069963596787
		 87 0.18612874513792543 88 0.18559714325780585 89 0.1850659213246727 90 0.18453510664058115 91 0.18400472647922073 92 0.18347480808456051 93 0.18294537866950034 94 0.18241646541452505 95 0.18188809546636431
		 96 0.1813602959366567 97 0.18083309390061941 98 0.18030651639572137 99 0.17978059042036409 100 0.17925534293256562 101 0.17873080084865045;
createNode animCurveTU -n "pCube1_locator5_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000845";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator6_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000864";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.15350907894798249 2 0.15355106393543083 3 0.15359241056396544 4 0.15363311766266663 5 0.15367318408122776
		 6 0.15371260869004533 7 0.15375139038030583 8 0.15378952806407264 9 0.15382702067437037 10 0.15386386716526756 11 0.15390006651195853 12 0.15393561771084308 13 0.15397051977960441 14 0.154004771757286
		 15 0.15403837270436616 16 0.15407132170283178 17 0.15410361785624915 18 0.15413526028983471 19 0.1541662481505226 20 0.15419658060703134 21 0.15422625684992886 22 0.1542552760916952 23 0.1542836375667842
		 24 0.15431134053168316 25 0.15433838426497015 26 0.15436476806737054 27 0.15439049126181181 28 0.15441555319347522 29 0.15443995322984705 30 0.15446369076076805 31 0.1544867651984797 32 0.15450917597767078
		 33 0.15453092255552014 34 0.15455200441173866 35 0.1545724210486098 36 0.15459217199102704 37 0.15461125678653076 38 0.15462967500534242 39 0.15464742624039762 40 0.15466451010737647 41 0.15468092624473273
		 42 0.15469667431372114 43 0.15471175399842263 44 0.1547261650057673 45 0.15473990706555663 46 0.15475297993048276 47 0.15476538337614609 48 0.1547771172010719 49 0.15478818122672378 50 0.15479857529751617
		 51 0.15480829928082429 52 0.15481735306699296 53 0.15482573656934306 54 0.15483344972417623 55 0.15484049249077736 56 0.15484686485141563 57 0.15485256681134363 58 0.15485759839879498 59 0.15486195966497829
		 60 0.15486565068407199 61 0.15486867155321471 62 0.15487102239249551 63 0.15487270334494174 64 0.15487371457650434 65 0.15487405627604223 66 0.1548737286553048 67 0.15487273194891127 68 0.15487106641432979
		 69 0.15486873233185405 70 0.15486573000457748 71 0.15486205975836675 72 0.15485772194183201 73 0.15485271692629676 74 0.15484704510576497 75 0.15484070689688623 76 0.15483370273892016 77 0.15482603309369736
		 78 0.15481769844558035 79 0.15480869930142116 80 0.15479903619051816 81 0.15478870966457037 82 0.15477772029763082 83 0.15476606868605713 84 0.15475375544846115 85 0.15474078122565627 86 0.1547271466806035
		 87 0.15471285249835531 88 0.15469789938599821 89 0.15468228807259277 90 0.15466601930911317 91 0.15464909386838399 92 0.15463151254501573 93 0.15461327615533871 94 0.15459438553733473 95 0.15457484155056811
		 96 0.15455464507611394 97 0.15453379701648573 98 0.15451229829556024 99 0.15449014985850162 100 0.15446735267168421 101 0.15444390772261196;
createNode animCurveTL -n "pCube1_locator6_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000865";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.23026361842197374 2 0.22980120025574513 3 0.22933686011697763 4 0.2288706225951842 5 0.22840251236669973
		 6 0.22793255419354419 7 0.22746077292227895 8 0.22698719348285401 9 0.22651184088744536 10 0.22603474022928605 11 0.22555591668148711 12 0.22507539549585154 13 0.22459320200168031 14 0.22410936160456907
		 15 0.22362389978519892 16 0.22313684209811835 17 0.22264821417051817 18 0.22215804170099862 19 0.22166635045832983 20 0.22117316628020478 21 0.22067851507198588 22 0.22018242280544287 23 0.21968491551748692
		 24 0.21918601930889614 25 0.21868576034303455 26 0.21818416484456593 27 0.21768125909816161 28 0.21717706944720039 29 0.21667162229246495 30 0.21616494409083131 31 0.21565706135395213 32 0.21514800064693707
		 33 0.21463778858702498 34 0.21412645184225232 35 0.21361401713011763 36 0.21310051121623907 37 0.21258596091300908 38 0.21207039307824349 39 0.21155383461382737 40 0.21103631246435528 41 0.21051785361576869
		 42 0.20999848509398877 43 0.2094782339635467 44 0.2089571273262083 45 0.20843519231959728 46 0.20791245611581444 47 0.20738894592005375 48 0.20686468896921539 49 0.20633971253051675 50 0.20581404390009994
		 51 0.20528771040163751 52 0.20476073938493555 53 0.20423315822453503 54 0.20370499431831079 55 0.20317627508606895 56 0.20264702796814293 57 0.20211728042398758 58 0.20158705993077231 59 0.20105639398197317
		 60 0.20052531008596386 61 0.19999383576460561 62 0.19946199855183666 63 0.19892982599226205 64 0.1983973456397421 65 0.19786458505598037 66 0.19733157180911365 67 0.19679833347229947 68 0.1962648976223067
		 69 0.19573129183810389 70 0.19519754369945097 71 0.19466368078548979 72 0.19412973067333639 73 0.1935957209366751 74 0.1930616791443529 75 0.19252763285897512 76 0.19199360963550482 77 0.19145963701986135
		 78 0.19092574254752259 79 0.19039195374212881 80 0.18985829811408905 81 0.18932480315918898 82 0.18879149635720349 83 0.18825840517050962 84 0.18772555704270433 85 0.1871929793972239 86 0.18666069963596787
		 87 0.18612874513792543 88 0.18559714325780585 89 0.1850659213246727 90 0.18453510664058115 91 0.18400472647922073 92 0.18347480808456051 93 0.18294537866950034 94 0.18241646541452505 95 0.18188809546636431
		 96 0.1813602959366567 97 0.18083309390061941 98 0.18030651639572137 99 0.17978059042036409 100 0.17925534293256562 101 0.17873080084865045;
createNode animCurveTU -n "pCube1_locator6_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000866";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator7_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000885";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.15350907894798249 2 -0.15346645679306281 3 -0.1534231986825445 4 -0.15337930584863663 5 -0.15333477954378927
		 6 -0.15328962104059668 7 -0.15324383163169908 8 -0.15319741262968289 9 -0.15315036536697929 10 -0.15310269119576203 11 -0.15305439148784306 12 -0.15300546763456713 13 -0.15295592104670525 14 -0.15290575315434618
		 15 -0.15285496540678711 16 -0.15280355927242267 17 -0.15275153623863286 18 -0.15269889781166968 19 -0.15264564551654192 20 -0.15259178089689973 21 -0.15253730551491684 22 -0.15248222095117236 23 -0.15242652880453067
		 24 -0.15237023069202094 25 -0.15231332824871457 26 -0.15225582312760211 27 -0.15219771699946871 28 -0.15213901155276854 29 -0.15207970849349822 30 -0.15201980954506861 31 -0.15195931644817623 32 -0.15189823096067345
		 33 -0.15183655485743708 34 -0.15177428993023645 35 -0.15171143798760051 36 -0.15164800085468366 37 -0.1515839803731307 38 -0.15151937840094098 39 -0.15145419681233141 40 -0.15138843749759867 41 -0.1513221023629801
		 42 -0.15125519333051485 43 -0.15118771233790262 44 -0.15111966133836285 45 -0.15105104230049221 46 -0.15098185720812196 47 -0.15091210806017386 48 -0.15084179687051602 49 -0.15077092566781725 50 -0.15069949649540115
		 51 -0.15062751141109976 52 -0.15055497248710559 53 -0.1504818818098238 54 -0.15040824147972365 55 -0.15033405361118879 56 -0.15025932033236722 57 -0.15018404378502104 58 -0.15010822612437519 59 -0.1500318695189653
		 60 -0.14995497615048586 61 -0.14987754821363741 62 -0.14979958791597292 63 -0.14972109747774431 64 -0.14964207913174798 65 -0.14956253512317019 66 -0.14948246770943197 67 -0.14940187916003372 68 -0.14932077175639891
		 69 -0.1492391477917181 70 -0.14915700957079236 71 -0.1490743594098759 72 -0.14899119963651919 73 -0.14890753258941114 74 -0.14882336061822155 75 -0.14873868608344248 76 -0.14865351135623045 77 -0.14856783881824748
		 78 -0.14848167086150255 79 -0.14839500988819254 80 -0.14830785831054311 81 -0.14822021855064949 82 -0.14813209304031699 83 -0.1480434842209018 84 -0.14795439454315096 85 -0.14786482646704302 86 -0.14777478246162812
		 87 -0.14768426500486853 88 -0.14759327658347843 89 -0.14750181969276455 90 -0.1474098968364661 91 -0.14731751052659542 92 -0.14722466328327777 93 -0.14713135763459217 94 -0.14703759611641154 95 -0.14694338127224377
		 96 -0.14684871565307167 97 -0.14675360181719443 98 -0.14665804233006841 99 -0.14656203976414794 100 -0.14646559669872744 101 -0.14636871571978199;
createNode animCurveTL -n "pCube1_locator7_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000886";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.23026361842197368 2 -0.23072409011409833 3 -0.2311825909196204 4 -0.23163909651621584 5 -0.23209358267283531
		 6 -0.23254602525079393 7 -0.23299640020485252 8 -0.23344468358428894 9 -0.23389085153395928 10 -0.23433488029535027 11 -0.23477674620762157 12 -0.23521642570863732 13 -0.23565389533598891 14 -0.23608913172800694
		 15 -0.2365221116247625 16 -0.23695281186905953 17 -0.23738120940741514 18 -0.23780728129103101 19 -0.23823100467675273 20 -0.23865235682801966 21 -0.23907131511580354 22 -0.23948785701953601 23 -0.23990196012802589
		 24 -0.24031360214036512 25 -0.2407227608668232 26 -0.24112941422973144 27 -0.24153354026435547 28 -0.24193511711975635 29 -0.24233412305964064 30 -0.24273053646319903 31 -0.24312433582593274 32 -0.2435154997604706
		 33 -0.24390400699737164 34 -0.2442898363859175 35 -0.24467296689489404 36 -0.24505337761335921 37 -0.24543104775140057 38 -0.24580595664088045 39 -0.24617808373616906 40 -0.24654740861486624 41 -0.24691391097851012
		 42 -0.24727757065327499 43 -0.24763836759065638 44 -0.24799628186814437 45 -0.24835129368988368 46 -0.24870338338732356 47 -0.24905253141985378 48 -0.2493987183754286 49 -0.24974192497117936 50 -0.25008213205401392
		 51 -0.25041932060120403 52 -0.25075347172096007 53 -0.25108456665299433 54 -0.25141258676907074 55 -0.25173751357354279 56 -0.25205932870387887 57 -0.25237801393117537 58 -0.25269355116065728 59 -0.25300592243216591
		 60 -0.25331510992063461 61 -0.25362109593655247 62 -0.25392386292641356 63 -0.25422339347315664 64 -0.25451967029659001 65 -0.25481267625380433 66 -0.2551023943395746 67 -0.25538880768674715 68 -0.25567189956661635
		 69 -0.2559516533892871 70 -0.25622805270402693 71 -0.25650108119960291 72 -0.25677072270460938 73 -0.25703696118778069 74 -0.25729978075829241 75 -0.25755916566605075 76 -0.25781510030196908 77 -0.25806756919823176
		 78 -0.258316557028547 79 -0.25856204860838577 80 -0.25880402889520998 81 -0.25904248298868704 82 -0.25927739613089412 83 -0.25950875370650794 84 -0.25973654124298479 85 -0.25996074441072631 86 -0.2601813490232352
		 87 -0.2603983410372574 88 -0.26061170655291388 89 -0.26082143181381806 90 -0.26102750320718443 91 -0.26122990726392314 92 -0.26142863065872363 93 -0.26162366021012623 94 -0.26181498288058297 95 -0.26200258577650531
		 96 -0.26218645614830127 97 -0.26236658139040131 98 -0.26254294904127184 99 -0.26271554678341813 100 -0.26288436244337493 101 -0.26304938399168731;
createNode animCurveTU -n "pCube1_locator7_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-671F00000887";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube1_locator8_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.15350907894798249 2 0.15346645679306281 3 0.1534231986825445 4 0.15337930584863657 5 0.15333477954378927
		 6 0.15328962104059674 7 0.15324383163169908 8 0.15319741262968289 9 0.15315036536697924 10 0.15310269119576203 11 0.15305439148784306 12 0.15300546763456713 13 0.1529559210467053 14 0.15290575315434618
		 15 0.15285496540678711 16 0.15280355927242262 17 0.15275153623863291 18 0.15269889781166968 19 0.15264564551654192 20 0.15259178089689973 21 0.15253730551491684 22 0.15248222095117236 23 0.15242652880453067
		 24 0.15237023069202094 25 0.15231332824871457 26 0.15225582312760211 27 0.15219771699946871 28 0.15213901155276854 29 0.15207970849349817 30 0.15201980954506866 31 0.15195931644817628 32 0.15189823096067345
		 33 0.15183655485743708 34 0.15177428993023645 35 0.15171143798760056 36 0.15164800085468366 37 0.1515839803731307 38 0.15151937840094098 39 0.15145419681233141 40 0.15138843749759867 41 0.15132210236298005
		 42 0.15125519333051485 43 0.15118771233790262 44 0.15111966133836285 45 0.15105104230049227 46 0.15098185720812196 47 0.15091210806017386 48 0.15084179687051602 49 0.15077092566781725 50 0.15069949649540115
		 51 0.15062751141109976 52 0.15055497248710559 53 0.1504818818098238 54 0.15040824147972365 55 0.15033405361118879 56 0.15025932033236722 57 0.15018404378502104 58 0.15010822612437513 59 0.1500318695189653
		 60 0.14995497615048592 61 0.14987754821363741 62 0.14979958791597292 63 0.14972109747774431 64 0.14964207913174798 65 0.14956253512317019 66 0.14948246770943197 67 0.14940187916003378 68 0.14932077175639891
		 69 0.1492391477917181 70 0.14915700957079236 71 0.1490743594098759 72 0.14899119963651919 73 0.14890753258941114 74 0.14882336061822155 75 0.14873868608344254 76 0.14865351135623039 77 0.14856783881824742
		 78 0.14848167086150255 79 0.14839500988819254 80 0.14830785831054305 81 0.14822021855064949 82 0.14813209304031694 83 0.14804348422090174 84 0.14795439454315096 85 0.14786482646704302 86 0.14777478246162812
		 87 0.14768426500486853 88 0.14759327658347843 89 0.14750181969276455 90 0.1474098968364661 91 0.14731751052659536 92 0.14722466328327777 93 0.14713135763459217 94 0.14703759611641154 95 0.14694338127224382
		 96 0.14684871565307167 97 0.14675360181719443 98 0.14665804233006841 99 0.14656203976414794 100 0.14646559669872738 101 0.14636871571978194;
createNode animCurveTL -n "pCube1_locator8_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.23026361842197368 2 -0.23072409011409833 3 -0.2311825909196204 4 -0.23163909651621584 5 -0.23209358267283531
		 6 -0.23254602525079393 7 -0.23299640020485252 8 -0.23344468358428894 9 -0.23389085153395928 10 -0.23433488029535027 11 -0.23477674620762157 12 -0.23521642570863732 13 -0.23565389533598891 14 -0.23608913172800694
		 15 -0.2365221116247625 16 -0.23695281186905953 17 -0.23738120940741514 18 -0.23780728129103101 19 -0.23823100467675273 20 -0.23865235682801966 21 -0.23907131511580354 22 -0.23948785701953601 23 -0.23990196012802589
		 24 -0.24031360214036512 25 -0.2407227608668232 26 -0.24112941422973144 27 -0.24153354026435547 28 -0.24193511711975635 29 -0.24233412305964064 30 -0.24273053646319903 31 -0.24312433582593274 32 -0.2435154997604706
		 33 -0.24390400699737164 34 -0.2442898363859175 35 -0.24467296689489404 36 -0.24505337761335921 37 -0.24543104775140057 38 -0.24580595664088045 39 -0.24617808373616906 40 -0.24654740861486624 41 -0.24691391097851012
		 42 -0.24727757065327499 43 -0.24763836759065638 44 -0.24799628186814437 45 -0.24835129368988368 46 -0.24870338338732356 47 -0.24905253141985378 48 -0.2493987183754286 49 -0.24974192497117936 50 -0.25008213205401392
		 51 -0.25041932060120403 52 -0.25075347172096007 53 -0.25108456665299433 54 -0.25141258676907074 55 -0.25173751357354279 56 -0.25205932870387887 57 -0.25237801393117537 58 -0.25269355116065728 59 -0.25300592243216591
		 60 -0.25331510992063461 61 -0.25362109593655247 62 -0.25392386292641356 63 -0.25422339347315664 64 -0.25451967029659001 65 -0.25481267625380433 66 -0.2551023943395746 67 -0.25538880768674715 68 -0.25567189956661635
		 69 -0.2559516533892871 70 -0.25622805270402693 71 -0.25650108119960291 72 -0.25677072270460938 73 -0.25703696118778069 74 -0.25729978075829241 75 -0.25755916566605075 76 -0.25781510030196908 77 -0.25806756919823176
		 78 -0.258316557028547 79 -0.25856204860838577 80 -0.25880402889520998 81 -0.25904248298868704 82 -0.25927739613089412 83 -0.25950875370650794 84 -0.25973654124298479 85 -0.25996074441072631 86 -0.2601813490232352
		 87 -0.2603983410372574 88 -0.26061170655291388 89 -0.26082143181381806 90 -0.26102750320718443 91 -0.26122990726392314 92 -0.26142863065872363 93 -0.26162366021012623 94 -0.26181498288058297 95 -0.26200258577650531
		 96 -0.26218645614830127 97 -0.26236658139040131 98 -0.26254294904127184 99 -0.26271554678341813 100 -0.26288436244337493 101 -0.26304938399168731;
createNode animCurveTU -n "pCube1_locator8_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator9_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.066878671199918971 2 -0.066886696419280856 3 -0.066894713141017415 4 -0.066902721334874737 5 -0.06691072097126588
		 6 -0.066918712021271864 7 -0.066926694456642399 8 -0.066934668249797213 9 -0.066942633373826499 10 -0.066950589802492355 11 -0.066958537510229288 12 -0.066966476472145264 13 -0.066974406664022823 14 -0.066982328062319518
		 15 -0.066990240644169252 16 -0.066998144387382941 17 -0.067006039270449458 18 -0.067013925272536579 19 -0.067021802373491535 20 -0.067029670553842458 21 -0.067037529794798434 22 -0.067045380078251227 23 -0.067053221386775497
		 24 -0.067061053703629858 25 -0.067068877012757655 26 -0.067076691298787794 27 -0.067084496547035799 28 -0.067092292743504145 29 -0.067100079874883423 30 -0.067107857928553061 31 -0.067115626892582103 32 -0.067123386755729819
		 33 -0.06713113750744687 34 -0.067138879137875751 35 -0.067146611637851572 36 -0.067154334998902998 37 -0.067162049213252806 38 -0.067169754273818882 39 -0.06717745017421467 40 -0.067185136908749998 41 -0.067192814472431917
		 42 -0.067200482860965305 43 -0.067208142070753485 44 -0.067215792098899274 45 -0.067223432943205319 46 -0.067231064602174762 47 -0.06723868707501246 48 -0.067246300361624933 49 -0.067253904462621472 50 -0.067261499379314749
		 51 -0.067269085113721427 52 -0.067276661668562776 53 -0.067284229047265387 54 -0.067291787253961788 55 -0.067299336293490886 56 -0.067306876171398966 57 -0.067314406893939915 58 -0.067321928468076164 59 -0.067329440901479076
		 60 -0.067336944202529392 61 -0.067344438380318339 62 -0.067351923444647688 63 -0.067359399406030529 64 -0.067366866275691939 65 -0.067374324065569313 66 -0.067381772788313088 67 -0.06738921245728724 68 -0.067396643086569841
		 69 -0.067404064690953502 70 -0.067411477285945987 71 -0.067418880887770705 72 -0.067426275513367273 73 -0.067433661180391791 74 -0.067441037907217782 75 -0.067448405712936199 76 -0.067455764617356084 77 -0.067463114641005295
		 78 -0.067470455805130669 79 -0.067477788131698468 80 -0.067485111643395101 81 -0.067492426363627289 82 -0.067499732316522676 83 -0.067507029526930218 84 -0.067514318020420683 85 -0.067521597823286872 86 -0.067528868962544286
		 87 -0.067536131465931237 88 -0.067543385361909736 89 -0.067550630679665213 90 -0.067557867449107523 91 -0.067565095700870936 92 -0.067572315466314758 93 -0.067579526777523546 94 -0.067586729667307388 95 -0.067593924169202624
		 96 -0.06760111031747168 97 -0.067608288147103957 98 -0.067615457693815662 99 -0.067622618994050476 100 -0.067629772084979778 101 -0.067636917004502917;
createNode animCurveTL -n "pCube2_locator9_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.10031800679987846 2 0.10153774097547263 3 0.10275745071439468 4 0.10397713987420487 5 0.10519681231455225
		 6 0.1064164718971935 7 0.10763612248601273 8 0.10885576794704033 9 0.11007541214847216 10 0.11129505896068959 11 0.11251471225627763 12 0.11373437591004498 13 0.11495405379904278 14 0.11617374980258388
		 15 0.11739346780226245 16 0.11861321168197214 17 0.1198329853279263 18 0.12105279262867641 19 0.1222726374751314 20 0.12349252376057707 21 0.12471245538069464 22 0.12593243623358019 23 0.12715247021976372
		 24 0.12837256124222818 25 0.12959271320642851 26 0.13081293002031102 27 0.13203321559433201 28 0.13325357384147729 29 0.13447400867728077 30 0.13569452401984405 31 0.13691512378985515 32 0.13813581191060786
		 33 0.13935659230802044 34 0.14057746891065526 35 0.14179844564973731 36 0.14301952645917382 37 0.14424071527557314 38 0.14546201603826381 39 0.1466834326893135 40 0.14790496917354912 41 0.14912662943857458
		 42 0.1503484174347911 43 0.15157033711541568 44 0.152792392436501 45 0.15401458735695361 46 0.15523692583855442 47 0.15645941184597689 48 0.15768204934680696 49 0.1589048423115621 50 0.16012779471371053
		 51 0.16135091052969086 52 0.16257419373893112 53 0.16379764832386834 54 0.16502127826996793 55 0.16624508756574319 56 0.16746908020277473 57 0.16869326017573005 58 0.16991763148238259 59 0.17114219812363207
		 60 0.17236696410352348 61 0.17359193342926704 62 0.17481711011125778 63 0.17604249816309492 64 0.17726810160160245 65 0.17849392444684764 66 0.17971997072216206 67 0.18094624445416052 68 0.1821727496727622
		 69 0.18339949041120851 70 0.1846264707060854 71 0.18585369459734169 72 0.18708116612830983 73 0.18830888934572609 74 0.18953686829975069 75 0.19076510704398753 76 0.19199360963550494 77 0.19322238013485582
		 78 0.19445142260609827 79 0.19568074111681544 80 0.19691033973813687 81 0.19814022254475794 82 0.19937039361496123 83 0.20060085703063713 84 0.20183161687730411 85 0.20306267724412996 86 0.2042940422239522
		 87 0.20552571591329938 88 0.20675770241241154 89 0.20799000582526184 90 0.20922263025957688 91 0.2104555798268587 92 0.2116888586424055 93 0.21292247082533278 94 0.21415642049859529 95 0.21539071178900737
		 96 0.21662534882726603 97 0.21786033574797159 98 0.21909567668964858 99 0.22033137579476925 100 0.22156743720977401 101 0.22280386508509387;
createNode animCurveTU -n "pCube2_locator9_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator10_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.066878671199918971 2 0.0668866964192808 3 0.066894713141017359 4 0.066902721334874737 5 0.066910720971265825
		 6 0.066918712021271864 7 0.066926694456642455 8 0.066934668249797213 9 0.066942633373826554 10 0.066950589802492355 11 0.066958537510229288 12 0.066966476472145264 13 0.066974406664022768 14 0.066982328062319518
		 15 0.066990240644169252 16 0.066998144387382941 17 0.067006039270449458 18 0.067013925272536579 19 0.067021802373491535 20 0.067029670553842458 21 0.067037529794798489 22 0.067045380078251227 23 0.067053221386775497
		 24 0.067061053703629803 25 0.067068877012757655 26 0.067076691298787794 27 0.067084496547035855 28 0.067092292743504145 29 0.067100079874883423 30 0.067107857928553116 31 0.067115626892582103 32 0.067123386755729819
		 33 0.067131137507446925 34 0.067138879137875751 35 0.067146611637851628 36 0.067154334998902998 37 0.067162049213252861 38 0.067169754273818882 39 0.067177450174214726 40 0.067185136908750054 41 0.067192814472431972
		 42 0.067200482860965249 43 0.06720814207075354 44 0.067215792098899274 45 0.067223432943205319 46 0.067231064602174762 47 0.06723868707501246 48 0.067246300361624933 49 0.067253904462621472 50 0.067261499379314693
		 51 0.067269085113721427 52 0.067276661668562832 53 0.067284229047265387 54 0.067291787253961788 55 0.067299336293490941 56 0.067306876171398966 57 0.067314406893939971 58 0.067321928468076164 59 0.067329440901479076
		 60 0.067336944202529447 61 0.067344438380318339 62 0.067351923444647688 63 0.067359399406030529 64 0.067366866275691883 65 0.067374324065569313 66 0.067381772788313143 67 0.06738921245728724 68 0.067396643086569896
		 69 0.067404064690953502 70 0.067411477285945987 71 0.067418880887770705 72 0.067426275513367218 73 0.067433661180391846 74 0.067441037907217782 75 0.067448405712936199 76 0.06745576461735614 77 0.067463114641005295
		 78 0.067470455805130669 79 0.067477788131698468 80 0.067485111643395101 81 0.067492426363627289 82 0.06749973231652262 83 0.067507029526930218 84 0.067514318020420627 85 0.067521597823286816 86 0.067528868962544286
		 87 0.067536131465931293 88 0.067543385361909736 89 0.067550630679665158 90 0.067557867449107523 91 0.067565095700870992 92 0.067572315466314814 93 0.067579526777523546 94 0.067586729667307388 95 0.067593924169202624
		 96 0.067601110317471624 97 0.067608288147103957 98 0.067615457693815606 99 0.067622618994050532 100 0.067629772084979778 101 0.067636917004502917;
createNode animCurveTL -n "pCube2_locator10_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.10031800679987846 2 0.10153774097547263 3 0.10275745071439468 4 0.10397713987420487 5 0.10519681231455225
		 6 0.1064164718971935 7 0.10763612248601273 8 0.10885576794704033 9 0.11007541214847216 10 0.11129505896068959 11 0.11251471225627763 12 0.11373437591004498 13 0.11495405379904278 14 0.11617374980258388
		 15 0.11739346780226245 16 0.11861321168197214 17 0.1198329853279263 18 0.12105279262867641 19 0.1222726374751314 20 0.12349252376057707 21 0.12471245538069464 22 0.12593243623358019 23 0.12715247021976372
		 24 0.12837256124222818 25 0.12959271320642851 26 0.13081293002031102 27 0.13203321559433201 28 0.13325357384147729 29 0.13447400867728077 30 0.13569452401984405 31 0.13691512378985515 32 0.13813581191060786
		 33 0.13935659230802044 34 0.14057746891065526 35 0.14179844564973731 36 0.14301952645917382 37 0.14424071527557314 38 0.14546201603826381 39 0.1466834326893135 40 0.14790496917354912 41 0.14912662943857458
		 42 0.1503484174347911 43 0.15157033711541568 44 0.152792392436501 45 0.15401458735695361 46 0.15523692583855442 47 0.15645941184597689 48 0.15768204934680696 49 0.1589048423115621 50 0.16012779471371053
		 51 0.16135091052969086 52 0.16257419373893112 53 0.16379764832386834 54 0.16502127826996793 55 0.16624508756574319 56 0.16746908020277473 57 0.16869326017573005 58 0.16991763148238259 59 0.17114219812363207
		 60 0.17236696410352348 61 0.17359193342926704 62 0.17481711011125778 63 0.17604249816309492 64 0.17726810160160245 65 0.17849392444684764 66 0.17971997072216206 67 0.18094624445416052 68 0.1821727496727622
		 69 0.18339949041120851 70 0.1846264707060854 71 0.18585369459734169 72 0.18708116612830983 73 0.18830888934572609 74 0.18953686829975069 75 0.19076510704398753 76 0.19199360963550494 77 0.19322238013485582
		 78 0.19445142260609827 79 0.19568074111681544 80 0.19691033973813687 81 0.19814022254475794 82 0.19937039361496123 83 0.20060085703063713 84 0.20183161687730411 85 0.20306267724412996 86 0.2042940422239522
		 87 0.20552571591329938 88 0.20675770241241154 89 0.20799000582526184 90 0.20922263025957688 91 0.2104555798268587 92 0.2116888586424055 93 0.21292247082533278 94 0.21415642049859529 95 0.21539071178900737
		 96 0.21662534882726603 97 0.21786033574797159 98 0.21909567668964858 99 0.22033137579476925 100 0.22156743720977401 101 0.22280386508509387;
createNode animCurveTU -n "pCube2_locator10_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-6720000008EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator11_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-672000000909";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.066878671199918971 2 -0.066870637513851749 3 -0.066862595392664148 4 -0.066854544868605092 5 -0.066846485974586867
		 6 -0.066838418744183781 7 -0.066830343211631171 8 -0.066822259411824625 9 -0.066814167380318978 10 -0.066806067153327098 11 -0.06679795876771899 12 -0.066789842261020915 13 -0.066781717671414109 14 -0.066773585037734007
		 15 -0.066765444399469132 16 -0.066757295796759819 17 -0.066749139270397717 18 -0.066740974861824176 19 -0.066732802613129472 20 -0.066724622567051806 21 -0.066716434766976029 22 -0.066708239256932755 23 -0.066700036081597247
		 24 -0.066691825286288309 25 -0.066683606916967175 26 -0.066675381020236457 27 -0.066667147643339031 28 -0.066658906834157095 29 -0.06665065864121078 30 -0.066642403113657267 31 -0.066634140301289502 32 -0.066625870254535313
		 33 -0.066617593024455968 34 -0.066609308662745448 35 -0.066601017221728953 36 -0.06659271875436179 37 -0.066584413314228597 38 -0.066576100955541728 39 -0.066567781733140485 40 -0.066559455702489667 41 -0.066551122919678518
		 42 -0.066542783441419673 43 -0.066534437325047935 44 -0.066526084628518833 45 -0.066517725410408013 46 -0.066509359729909345 47 -0.066500987646834375 48 -0.066492609221610766 49 -0.066484224515281187 50 -0.066475833589502265
		 51 -0.066467436506543021 52 -0.066459033329284101 53 -0.066450624121216273 54 -0.066442208946439318 55 -0.066433787869660699 56 -0.066425360956194668 57 -0.06641692827196044 58 -0.066408489883481747 59 -0.066400045857884837
		 60 -0.066391596262897867 61 -0.06638314116684918 62 -0.066374680638666361 63 -0.066366214747874852 64 -0.066357743564596838 65 -0.066349267159549918 66 -0.06634078560404566 67 -0.066332298969988768 68 -0.066323807329875362
		 69 -0.066315310756792034 70 -0.066306809324414517 71 -0.06629830310700624 72 -0.066289792179417328 73 -0.066281276617082996 74 -0.066272756496022711 75 -0.066264231892838477 76 -0.066255702884713719 77 -0.066247169549412122
		 78 -0.066238631965276129 79 -0.066230090211225834 80 -0.066221544366757645 81 -0.066212994511942735 82 -0.06620444072742615 83 -0.066195883094425312 84 -0.066187321694728629 85 -0.066178756610694278 86 -0.06617018792524898
		 87 -0.066161615721886669 88 -0.066153040084666936 89 -0.066144461098214036 90 -0.066135878847715546 91 -0.066127293418920652 92 -0.066118704898139424 93 -0.066110113372241042 94 -0.066101518928652792 95 -0.066092921655358461
		 96 -0.066084321640897115 97 -0.06607571897436193 98 -0.066067113745398642 99 -0.066058506044204379 100 -0.066049895961526273 101 -0.066041283588660127;
createNode animCurveTL -n "pCube2_locator11_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67200000090A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.10031800679987851 2 -0.099098244332120888 3 -0.09787844971875842 4 -0.096658619108380139 5 -0.095438748651586081
		 6 -0.094218834500967741 7 -0.092998872811088817 8 -0.091778859738465557 9 -0.090558791441547215 10 -0.089338664080696628 11 -0.088118473818170506 12 -0.086898216818099838 13 -0.08567788924647024 14 -0.084457487271102361
		 15 -0.083237007061631951 16 -0.082016444789490384 17 -0.080795796627884553 18 -0.079575058751777339 19 -0.07835422733786751 20 -0.077133298564569963 21 -0.075912268611995792 22 -0.07469113366193203 23 -0.073469889897822105
		 24 -0.07224853350474536 25 -0.071027060669396902 26 -0.069805467580068004 27 -0.068583750426625067 28 -0.067361905400490085 29 -0.066139928694620043 30 -0.064917816503486714 31 -0.063695565023055734 32 -0.062473170450767057
		 33 -0.061250628985513811 34 -0.060027936827621864 35 -0.0588050901788294 36 -0.057582085242265935 37 -0.056358918222432219 38 -0.055135585325178815 39 -0.053912082757685553 40 -0.052688406728440884 41 -0.051464553447220507
		 42 -0.050240519125066774 43 -0.04901629997426743 44 -0.047791892208334463 45 -0.046567292041983344 46 -0.045342495691110984 47 -0.044117499372775593 48 -0.04289229930517402 49 -0.041666891707621445 50 -0.040441272800529282
		 51 -0.039215438805383807 52 -0.037989385944724563 53 -0.036763110442122549 54 -0.035536608522158675 55 -0.034309876410401785 56 -0.033082910333386839 57 -0.031855706518592597 58 -0.030628261194420581 59 -0.029400570590171538
		 60 -0.028172630936024567 61 -0.026944438463013975 62 -0.0257159894030074 63 -0.02448727998868333 64 -0.023258306453508626 65 -0.022029065031715589 66 -0.020799551958280149 67 -0.019569763468898216 68 -0.018339695799963474
		 69 -0.017109345188544345 70 -0.01587870787236112 71 -0.014647780089762474 72 -0.013416558079703211 73 -0.012185038081720223 74 -0.010953216335909344 75 -0.0097210890829025343 76 -0.0084886525638437349 77 -0.0072559030203656616
		 78 -0.0060228366945662137 79 -0.0047894498289844378 80 -0.0035557386665770463 81 -0.0023216994506942701 82 -0.0010873284250560999 83 0.00014737816627219402 84 0.0013824240789037656 85 0.002617813068154895 86 0.0038535488890690806
		 87 0.0050896352964416858 88 0.0063260760448441422 89 0.0075628748886492625 90 0.0088000355820554432 91 0.010037561879111645 92 0.011275457533742594 93 0.012513726299773542 94 0.013752371930955354 95 0.014991398180990045
		 96 0.016230808803556207 97 0.017470607552334205 98 0.018710798181031496 99 0.019951384443408937 100 0.021192370093306323 101 0.02243375888466792;
createNode animCurveTU -n "pCube2_locator11_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67200000090B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator12_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67200000092A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.066878671199918971 2 0.066870637513851805 3 0.066862595392664148 4 0.066854544868605092 5 0.066846485974586867
		 6 0.066838418744183725 7 0.066830343211631171 8 0.066822259411824625 9 0.066814167380318978 10 0.066806067153327042 11 0.06679795876771899 12 0.066789842261020915 13 0.066781717671414054 14 0.066773585037734007
		 15 0.066765444399469076 16 0.066757295796759819 17 0.066749139270397717 18 0.066740974861824176 19 0.066732802613129527 20 0.066724622567051806 21 0.066716434766975974 22 0.0667082392569327 23 0.066700036081597247
		 24 0.066691825286288253 25 0.066683606916967175 26 0.066675381020236402 27 0.066667147643339031 28 0.066658906834157095 29 0.06665065864121078 30 0.066642403113657211 31 0.066634140301289557 32 0.066625870254535258
		 33 0.066617593024456023 34 0.066609308662745503 35 0.066601017221728953 36 0.06659271875436179 37 0.066584413314228597 38 0.066576100955541784 39 0.066567781733140485 40 0.066559455702489667 41 0.066551122919678463
		 42 0.066542783441419617 43 0.066534437325047935 44 0.066526084628518833 45 0.066517725410408013 46 0.066509359729909345 47 0.06650098764683432 48 0.06649260922161071 49 0.066484224515281243 50 0.066475833589502265
		 51 0.066467436506543076 52 0.066459033329284156 53 0.066450624121216273 54 0.066442208946439374 55 0.066433787869660699 56 0.066425360956194668 57 0.06641692827196044 58 0.066408489883481803 59 0.066400045857884837
		 60 0.066391596262897812 61 0.06638314116684918 62 0.066374680638666361 63 0.066366214747874852 64 0.066357743564596783 65 0.066349267159549918 66 0.06634078560404566 67 0.066332298969988712 68 0.066323807329875306
		 69 0.066315310756791979 70 0.066306809324414573 71 0.06629830310700624 72 0.066289792179417328 73 0.066281276617083051 74 0.066272756496022711 75 0.066264231892838477 76 0.066255702884713719 77 0.066247169549412122
		 78 0.066238631965276129 79 0.066230090211225834 80 0.066221544366757645 81 0.066212994511942735 82 0.06620444072742615 83 0.066195883094425367 84 0.066187321694728629 85 0.066178756610694278 86 0.06617018792524898
		 87 0.066161615721886724 88 0.066153040084666936 89 0.066144461098214036 90 0.066135878847715546 91 0.066127293418920652 92 0.066118704898139424 93 0.066110113372241042 94 0.066101518928652792 95 0.066092921655358516
		 96 0.066084321640897059 97 0.06607571897436193 98 0.066067113745398642 99 0.066058506044204379 100 0.066049895961526328 101 0.066041283588660127;
createNode animCurveTL -n "pCube2_locator12_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67200000092B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.10031800679987851 2 -0.099098244332120888 3 -0.09787844971875842 4 -0.096658619108380139 5 -0.095438748651586081
		 6 -0.094218834500967741 7 -0.092998872811088817 8 -0.091778859738465557 9 -0.090558791441547215 10 -0.089338664080696628 11 -0.088118473818170506 12 -0.086898216818099838 13 -0.08567788924647024 14 -0.084457487271102361
		 15 -0.083237007061631951 16 -0.082016444789490384 17 -0.080795796627884553 18 -0.079575058751777339 19 -0.07835422733786751 20 -0.077133298564569963 21 -0.075912268611995792 22 -0.07469113366193203 23 -0.073469889897822105
		 24 -0.07224853350474536 25 -0.071027060669396902 26 -0.069805467580068004 27 -0.068583750426625067 28 -0.067361905400490085 29 -0.066139928694620043 30 -0.064917816503486714 31 -0.063695565023055734 32 -0.062473170450767057
		 33 -0.061250628985513811 34 -0.060027936827621864 35 -0.0588050901788294 36 -0.057582085242265935 37 -0.056358918222432219 38 -0.055135585325178815 39 -0.053912082757685553 40 -0.052688406728440884 41 -0.051464553447220507
		 42 -0.050240519125066774 43 -0.04901629997426743 44 -0.047791892208334463 45 -0.046567292041983344 46 -0.045342495691110984 47 -0.044117499372775593 48 -0.04289229930517402 49 -0.041666891707621445 50 -0.040441272800529282
		 51 -0.039215438805383807 52 -0.037989385944724563 53 -0.036763110442122549 54 -0.035536608522158675 55 -0.034309876410401785 56 -0.033082910333386839 57 -0.031855706518592597 58 -0.030628261194420581 59 -0.029400570590171538
		 60 -0.028172630936024567 61 -0.026944438463013975 62 -0.0257159894030074 63 -0.02448727998868333 64 -0.023258306453508626 65 -0.022029065031715589 66 -0.020799551958280149 67 -0.019569763468898216 68 -0.018339695799963474
		 69 -0.017109345188544345 70 -0.01587870787236112 71 -0.014647780089762474 72 -0.013416558079703211 73 -0.012185038081720223 74 -0.010953216335909344 75 -0.0097210890829025343 76 -0.0084886525638437349 77 -0.0072559030203656616
		 78 -0.0060228366945662137 79 -0.0047894498289844378 80 -0.0035557386665770463 81 -0.0023216994506942701 82 -0.0010873284250560999 83 0.00014737816627219402 84 0.0013824240789037656 85 0.002617813068154895 86 0.0038535488890690806
		 87 0.0050896352964416858 88 0.0063260760448441422 89 0.0075628748886492625 90 0.0088000355820554432 91 0.010037561879111645 92 0.011275457533742594 93 0.012513726299773542 94 0.013752371930955354 95 0.014991398180990045
		 96 0.016230808803556207 97 0.017470607552334205 98 0.018710798181031496 99 0.019951384443408937 100 0.021192370093306323 101 0.02243375888466792;
createNode animCurveTU -n "pCube2_locator12_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67200000092C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator13_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67200000094B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.058790368412241556 2 -0.058796580614660421 3 -0.058802807743265129 4 -0.058809049788905443 5 -0.058815306742903362
		 6 -0.058821578597053503 7 -0.058827865343623387 8 -0.058834166975354207 9 -0.058840483485461115 10 -0.058846814867633879 11 -0.058853161116037112 12 -0.058859522225311156 13 -0.05886589819057203 14 -0.058872289007412482
		 15 -0.058878694671902099 16 -0.058885115180587921 17 -0.058891550530494829 18 -0.058898000719126375 19 -0.058904465744464785 20 -0.058910945604971787 21 -0.058917440299589008 22 -0.058923949827738575 23 -0.05893047418932329
		 24 -0.058937013384727566 25 -0.058943567414817488 26 -0.058950136280941756 27 -0.058956719984931738 28 -0.05896331852910236 29 -0.058969931916252327 30 -0.058976560149664736 31 -0.058983203233107573 32 -0.058989861170834157
		 33 -0.058996533967583864 34 -0.059003221628582236 35 -0.059009924159541927 36 -0.059016641566662753 37 -0.059023373856632644 38 -0.059030121036627803 39 -0.059036883114313488 40 -0.059043660097844231 41 -0.059050451995864617
		 42 -0.059057258817509672 43 -0.059064080572405198 44 -0.059070917270668766 45 -0.059077768922909668 46 -0.059084635540229802 47 -0.059091517134224059 48 -0.05909841371698088 49 -0.059105325301082645 50 -0.059112251899606394
		 51 -0.059119193526124159 52 -0.059126150194703631 53 -0.059133121919908493 54 -0.059140108716799145 55 -0.059147110600933084 56 -0.059154127588365524 57 -0.059161159695649779 58 -0.059168206939837931 59 -0.059175269338481329
		 60 -0.059182346909630978 61 -0.059189439671838207 62 -0.059196547644155162 63 -0.059203670846135259 64 -0.059210809297833955 65 -0.059217963019808972 66 -0.059225132033120798 67 -0.059232316359333681 68 -0.059239516020515637
		 69 -0.059246731039239275 70 -0.059253961438582192 71 -0.059261207242127634 72 -0.059268468473964941 73 -0.059275745158690052 74 -0.059283037321406218 75 -0.059290344987724286 76 -0.059297668183763474 77 -0.059305006936151705
		 78 -0.059312361272026382 79 -0.059319731219034721 80 -0.059327116805334312 81 -0.059334518059593888 82 -0.059341935010993552 83 -0.059349367689225552 84 -0.059356816124494782 85 -0.059364280347519227 86 -0.059371760389530681
		 87 -0.059379256282275139 88 -0.059386768058013517 89 -0.059394295749521986 90 -0.059401839390092692 91 -0.059409399013534259 92 -0.059416974654172505 93 -0.059424566346850616 94 -0.059432174126930137 95 -0.059439798030291258
		 96 -0.059447438093333416 97 -0.059455094352976079 98 -0.059462766846658854 99 -0.059470455612342599 100 -0.05947816068850964 101 -0.059485882114164279;
createNode animCurveTL -n "pCube2_locator13_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67200000094C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.088185552618362362 2 0.089564351348123794 3 0.090943196857198871 4 0.092322093083511469 5 0.09370104396651191
		 6 0.095080053447210044 7 0.09645912546820834 8 0.097838263973735407 9 0.099217472909678417 10 0.1005967562236173 11 0.10197611786485727 12 0.10335556178446215 13 0.10473509193528818 14 0.1061147122720163
		 15 0.10749442675118626 16 0.10887423933122975 17 0.11025415397250338 18 0.11163417463732228 19 0.11301430528999346 20 0.11439454989684938 21 0.1157749124262808 22 0.11715539684877063 23 0.11853600713692747
		 24 0.11991674726551871 25 0.12129762121150445 26 0.12267863295407055 27 0.12405978647466265 28 0.12544108575701973 29 0.12682253478720718 30 0.12820413755365112 31 0.12958589804717191 32 0.13096782026101728
		 33 0.13234990819089731 34 0.13373216583501679 35 0.13511459719411001 36 0.13649720627147444 37 0.13787999707300447 38 0.13926297360722528 39 0.14064613988532693 40 0.14202949992119862 41 0.14341305773146207
		 42 0.14479681733550653 43 0.14618078275552238 44 0.14756495801653491 45 0.14894934714643981 46 0.1503339541760359 47 0.15171878313906084 48 0.15310383807222461 49 0.15448912301524431 50 0.15587464201087853
		 51 0.15726039910496192 52 0.1586463983464399 53 0.1600326437874029 54 0.16141913948312148 55 0.16280588949208097 56 0.1641928978760161 57 0.16558016869994585 58 0.16696770603220878 59 0.16835551394449755
		 60 0.16974359651189419 61 0.17113195781290513 62 0.17252060192949625 63 0.17390953294712819 64 0.17529875495479219 65 0.17668827204504445 66 0.17807808831404204 67 0.1794682078615788 68 0.18085863479112008
		 69 0.18224937320983903 70 0.18364042722865204 71 0.18503180096225447 72 0.18642349852915652 73 0.18781552405171975 74 0.18920788165619185 75 0.19060057547274356 76 0.19199360963550494 77 0.19338698828260104
		 78 0.1947807155561887 79 0.19617479560249262 80 0.197569232571842 81 0.19896403061870716 82 0.20035919390173551 83 0.20175472658378979 84 0.20315063283198298 85 0.20454691681771675 86 0.20594358271671753
		 87 0.20734063470907405 88 0.20873807697927416 89 0.21013591371624252 90 0.21153414911337742 91 0.21293278736858867 92 0.21433183268433509 93 0.21573128926766183 94 0.21713116133023846 95 0.21853145308839617
		 96 0.2199321687631669 97 0.22133331258032052 98 0.22273488877040226 99 0.22413690156877275 100 0.22553935521564517 101 0.22694225395612333;
createNode animCurveTU -n "pCube2_locator13_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67200000094D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator14_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67200000096C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.058790368412241611 2 0.058796580614660421 3 0.058802807743265073 4 0.058809049788905443 5 0.058815306742903362
		 6 0.058821578597053503 7 0.058827865343623387 8 0.058834166975354152 9 0.058840483485461115 10 0.058846814867633879 11 0.058853161116037112 12 0.058859522225311101 13 0.058865898190572086 14 0.058872289007412482
		 15 0.058878694671902099 16 0.058885115180587921 17 0.058891550530494885 18 0.058898000719126431 19 0.058904465744464729 20 0.058910945604971787 21 0.058917440299589008 22 0.05892394982773852 23 0.05893047418932329
		 24 0.058937013384727566 25 0.058943567414817544 26 0.058950136280941701 27 0.058956719984931794 28 0.058963318529102415 29 0.058969931916252327 30 0.058976560149664681 31 0.058983203233107573 32 0.058989861170834157
		 33 0.058996533967583864 34 0.059003221628582292 35 0.059009924159541871 36 0.059016641566662753 37 0.059023373856632588 38 0.059030121036627858 39 0.059036883114313432 40 0.059043660097844231 41 0.059050451995864672
		 42 0.059057258817509672 43 0.059064080572405198 44 0.05907091727066871 45 0.059077768922909613 46 0.059084635540229802 47 0.059091517134224114 48 0.05909841371698088 49 0.059105325301082701 50 0.059112251899606449
		 51 0.059119193526124159 52 0.059126150194703575 53 0.059133121919908493 54 0.0591401087167992 55 0.059147110600933139 56 0.059154127588365579 57 0.059161159695649834 58 0.059168206939837931 59 0.059175269338481273
		 60 0.059182346909630978 61 0.059189439671838207 62 0.059196547644155162 63 0.059203670846135314 64 0.059210809297833955 65 0.059217963019808972 66 0.059225132033120853 67 0.059232316359333681 68 0.059239516020515692
		 69 0.059246731039239275 70 0.059253961438582192 71 0.059261207242127578 72 0.059268468473964941 73 0.059275745158690052 74 0.059283037321406162 75 0.059290344987724342 76 0.059297668183763474 77 0.059305006936151705
		 78 0.059312361272026437 79 0.059319731219034666 80 0.059327116805334312 81 0.059334518059593888 82 0.059341935010993496 83 0.059349367689225607 84 0.059356816124494838 85 0.059364280347519283 86 0.059371760389530737
		 87 0.059379256282275139 88 0.059386768058013573 89 0.05939429574952193 90 0.059401839390092692 91 0.059409399013534259 92 0.059416974654172505 93 0.059424566346850671 94 0.059432174126930137 95 0.059439798030291202
		 96 0.059447438093333416 97 0.059455094352976023 98 0.059462766846658854 99 0.059470455612342654 100 0.05947816068850964 101 0.059485882114164279;
createNode animCurveTL -n "pCube2_locator14_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67200000096D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.088185552618362362 2 0.089564351348123794 3 0.090943196857198871 4 0.092322093083511469 5 0.09370104396651191
		 6 0.095080053447210044 7 0.09645912546820834 8 0.097838263973735407 9 0.099217472909678417 10 0.1005967562236173 11 0.10197611786485727 12 0.10335556178446215 13 0.10473509193528818 14 0.1061147122720163
		 15 0.10749442675118626 16 0.10887423933122975 17 0.11025415397250338 18 0.11163417463732228 19 0.11301430528999346 20 0.11439454989684938 21 0.1157749124262808 22 0.11715539684877063 23 0.11853600713692747
		 24 0.11991674726551871 25 0.12129762121150445 26 0.12267863295407055 27 0.12405978647466265 28 0.12544108575701973 29 0.12682253478720718 30 0.12820413755365112 31 0.12958589804717191 32 0.13096782026101728
		 33 0.13234990819089731 34 0.13373216583501679 35 0.13511459719411001 36 0.13649720627147444 37 0.13787999707300447 38 0.13926297360722528 39 0.14064613988532693 40 0.14202949992119862 41 0.14341305773146207
		 42 0.14479681733550653 43 0.14618078275552238 44 0.14756495801653491 45 0.14894934714643981 46 0.1503339541760359 47 0.15171878313906084 48 0.15310383807222461 49 0.15448912301524431 50 0.15587464201087853
		 51 0.15726039910496192 52 0.1586463983464399 53 0.1600326437874029 54 0.16141913948312148 55 0.16280588949208097 56 0.1641928978760161 57 0.16558016869994585 58 0.16696770603220878 59 0.16835551394449755
		 60 0.16974359651189419 61 0.17113195781290513 62 0.17252060192949625 63 0.17390953294712819 64 0.17529875495479219 65 0.17668827204504445 66 0.17807808831404204 67 0.1794682078615788 68 0.18085863479112008
		 69 0.18224937320983903 70 0.18364042722865204 71 0.18503180096225447 72 0.18642349852915652 73 0.18781552405171975 74 0.18920788165619185 75 0.19060057547274356 76 0.19199360963550494 77 0.19338698828260104
		 78 0.1947807155561887 79 0.19617479560249262 80 0.197569232571842 81 0.19896403061870716 82 0.20035919390173551 83 0.20175472658378979 84 0.20315063283198298 85 0.20454691681771675 86 0.20594358271671753
		 87 0.20734063470907405 88 0.20873807697927416 89 0.21013591371624252 90 0.21153414911337742 91 0.21293278736858867 92 0.21433183268433509 93 0.21573128926766183 94 0.21713116133023846 95 0.21853145308839617
		 96 0.2199321687631669 97 0.22133331258032052 98 0.22273488877040226 99 0.22413690156877275 100 0.22553935521564517 101 0.22694225395612333;
createNode animCurveTU -n "pCube2_locator14_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67200000096E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator15_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-67200000098D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.058790368412241556 2 -0.058784171145630282 3 -0.058777988824919469 4 -0.058771821460672724 5 -0.058765669063923776
		 6 -0.058759531646176089 7 -0.058753409219402364 8 -0.058747301796044038 9 -0.05874120938901084 10 -0.058735132011680291 11 -0.058729069677897261 12 -0.058723022401973579 13 -0.058716990198687202 14 -0.058710973083282325
		 15 -0.058704971071468326 16 -0.058698984179419766 17 -0.05869301242377567 18 -0.058687055821638967 19 -0.058681114390576439 20 -0.058675188148617718 21 -0.058669277114255292 22 -0.058663381306443774 23 -0.058657500744599522
		 24 -0.058651635448600192 25 -0.058645785438784181 26 -0.058639950735950352 27 -0.058634131361357311 28 -0.058628327336723352 29 -0.058622538684225511 30 -0.058616765426499573 31 -0.05861100758663923 32 -0.058605265188195976
		 33 -0.058599538255178385 34 -0.058593826812051775 35 -0.058588130883737821 36 -0.058582450495613891 37 -0.058576785673512988 38 -0.05857113644372286 39 -0.058565502832985838 40 -0.058559884868498391 41 -0.05855428257791051
		 42 -0.058548695989325383 43 -0.058543125131299112 44 -0.058537570032839881 45 -0.058532030723407957 46 -0.058526507232914915 47 -0.058520999591723466 48 -0.058515507830646796 49 -0.058510031980948285 50 -0.058504572074341177
		 51 -0.0584991281429878 52 -0.058493700219499456 53 -0.058488288336935979 54 -0.058482892528805119 55 -0.058477512829062273 56 -0.058472149272110086 57 -0.058466801892797959 58 -0.058461470726421549 59 -0.058456155808722543
		 60 -0.058450857175888271 61 -0.058445574864551042 62 -0.058440308911787808 63 -0.058435059355120056 64 -0.058429826232513027 65 -0.058424609582375442 66 -0.058419409443559223 67 -0.058414225855358826 68 -0.058409058857511242
		 69 -0.058403908490195056 70 -0.058398774794030606 71 -0.058393657810079214 72 -0.058388557579842959 73 -0.058383474145264236 74 -0.058378407548725364 75 -0.058373357833048312 76 -0.058368325041494029 77 -0.058363309217762449
		 78 -0.05835831040599182 79 -0.058353328650758429 80 -0.058348363997076214 81 -0.058343416490396371 82 -0.05833848617660703 83 -0.058333573102032965 84 -0.058328677313434885 85 -0.058323798858009535 86 -0.058318937783389035
		 87 -0.058314094137640438 88 -0.058309267969265777 89 -0.058304459327201297 90 -0.058299668260817228 91 -0.058294894819917564 92 -0.058290139054739565 93 -0.058285401015953475 94 -0.05828068075466214 95 -0.058275978322400668
		 96 -0.058271293771136157 97 -0.058266627153267303 98 -0.058261978521623958 99 -0.058257347929467018 100 -0.05825273543048809 101 -0.058248141078808768;
createNode animCurveTL -n "pCube2_locator15_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-67200000098E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.088185552618362362 2 -0.086806796731483726 3 -0.085428079752517205 4 -0.084049397747919086 5 -0.082670746785539317
		 6 -0.081292122934588651 7 -0.079913522265605219 8 -0.078534940850421731 9 -0.077156374762132107 10 -0.0757778200750584 11 -0.074399272864717925 12 -0.073020729207789792 13 -0.071642185182081985 14 -0.070263636866498225
		 15 -0.068885080341004823 16 -0.067506511686597603 17 -0.066127926985268703 18 -0.064749322319973435 19 -0.063370693774597309 20 -0.061992037433922564 21 -0.060613349383595472 22 -0.059234625710092526 23 -0.057855862500688027
		 24 -0.056477055843420276 25 -0.055098201827058657 26 -0.053719296541070327 27 -0.052340336075587079 28 -0.050961316521372035 29 -0.049582233969786504 30 -0.048203084512756567 31 -0.046823864242739544 32 -0.045444569252691525
		 33 -0.044065195636033061 34 -0.042685739486616359 35 -0.041306196898691971 36 -0.039926563966874995 37 -0.038546836786111982 38 -0.037167011451647469 39 -0.035787084058990448 40 -0.034407050703880893 41 -0.033026907482256229
		 42 -0.03164665049021792 43 -0.030266275823997657 44 -0.028885779579923998 45 -0.027505157854388729 46 -0.026124406743812834 47 -0.024743522344613633 48 -0.023362500753169924 49 -0.021981338065789224 50 -0.020600030378673528
		 51 -0.019218573787885551 52 -0.017836964389314758 53 -0.016455198278643779 54 -0.01507327155131416 55 -0.013691180302492612 56 -0.012308920627036701 57 -0.010926488619461161 58 -0.0095438803739036904 59 -0.008161091984090596
		 60 -0.0067781195433029295 61 -0.0053949591443420708 62 -0.0040116068794954218 63 -0.0026280588405024341 64 -0.001244311118519803 65 0.00013964019591283794 66 0.0015237990129068901 67 0.0029081692432600947 68 0.0042927547984904502
		 69 0.0056775595908710175 70 0.0070625875334645594 71 0.0084478425401586232 72 0.009833328525699514 73 0.01121904940572771 74 0.012605009096812725 75 0.013991211516487856 76 0.015377660583284936 77 0.016764360216770191
		 78 0.018151314337578328 79 0.019538526867448391 80 0.020926001729258625 81 0.022313742847062334 82 0.023701754146122189 83 0.025090039552946863 84 0.026478602995325451 85 0.02786744840236377 86 0.029256579704519448
		 87 0.030646000833638221 88 0.032035715722988578 89 0.033425728307298952 90 0.034816042522792801 91 0.036206662307224358 92 0.037597591599915381 93 0.038988834341790568 94 0.040380394475414305 95 0.041772275945026305
		 96 0.043164482696578577 97 0.044557018677771509 98 0.045949887838089953 99 0.047343094128840635 100 0.048736641503188238 101 0.050130533916191822;
createNode animCurveTU -n "pCube2_locator15_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-67200000098F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "pCube2_locator16_MKR_translateX";
	rename -uid "23E71080-0004-A6BA-68F1-6720000009AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.058790368412241611 2 0.058784171145630282 3 0.058777988824919469 4 0.058771821460672724 5 0.058765669063923776
		 6 0.058759531646176089 7 0.058753409219402308 8 0.058747301796044038 9 0.05874120938901084 10 0.058735132011680236 11 0.058729069677897261 12 0.058723022401973579 13 0.058716990198687258 14 0.058710973083282325
		 15 0.058704971071468326 16 0.058698984179419766 17 0.05869301242377567 18 0.058687055821639023 19 0.058681114390576439 20 0.058675188148617718 21 0.058669277114255292 22 0.058663381306443774 23 0.058657500744599522
		 24 0.058651635448600192 25 0.058645785438784181 26 0.058639950735950297 27 0.058634131361357311 28 0.058628327336723296 29 0.058622538684225511 30 0.058616765426499517 31 0.058611007586639285 32 0.058605265188195976
		 33 0.058599538255178385 34 0.058593826812051719 35 0.058588130883737821 36 0.058582450495613947 37 0.058576785673512988 38 0.058571136443722804 39 0.058565502832985783 40 0.058559884868498391 41 0.05855428257791051
		 42 0.058548695989325328 43 0.058543125131299112 44 0.058537570032839881 45 0.058532030723407957 46 0.058526507232914859 47 0.05852099959172341 48 0.05851550783064674 49 0.058510031980948285 50 0.058504572074341232
		 51 0.058499128142987855 52 0.058493700219499511 53 0.058488288336935979 54 0.058482892528805119 55 0.058477512829062328 56 0.058472149272110086 57 0.058466801892797959 58 0.058461470726421494 59 0.058456155808722543
		 60 0.058450857175888271 61 0.058445574864551042 62 0.058440308911787864 63 0.058435059355120056 64 0.058429826232513027 65 0.058424609582375497 66 0.058419409443559167 67 0.058414225855358826 68 0.058409058857511242
		 69 0.058403908490195056 70 0.05839877479403055 71 0.058393657810079214 72 0.058388557579842959 73 0.058383474145264236 74 0.058378407548725364 75 0.058373357833048312 76 0.058368325041494029 77 0.058363309217762449
		 78 0.05835831040599182 79 0.058353328650758485 80 0.058348363997076214 81 0.058343416490396316 82 0.058338486176607085 83 0.05833357310203291 84 0.05832867731343494 85 0.058323798858009535 86 0.058318937783389035
		 87 0.058314094137640438 88 0.058309267969265832 89 0.058304459327201297 90 0.058299668260817228 91 0.058294894819917564 92 0.058290139054739565 93 0.058285401015953475 94 0.058280680754662195 95 0.058275978322400723
		 96 0.058271293771136157 97 0.058266627153267248 98 0.058261978521623958 99 0.058257347929467018 100 0.058252735430488034 101 0.058248141078808713;
createNode animCurveTL -n "pCube2_locator16_MKR_translateY";
	rename -uid "23E71080-0004-A6BA-68F1-6720000009AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.088185552618362362 2 -0.086806796731483726 3 -0.085428079752517205 4 -0.084049397747919086 5 -0.082670746785539317
		 6 -0.081292122934588651 7 -0.079913522265605219 8 -0.078534940850421731 9 -0.077156374762132107 10 -0.0757778200750584 11 -0.074399272864717925 12 -0.073020729207789792 13 -0.071642185182081985 14 -0.070263636866498225
		 15 -0.068885080341004823 16 -0.067506511686597603 17 -0.066127926985268703 18 -0.064749322319973435 19 -0.063370693774597309 20 -0.061992037433922564 21 -0.060613349383595472 22 -0.059234625710092526 23 -0.057855862500688027
		 24 -0.056477055843420276 25 -0.055098201827058657 26 -0.053719296541070327 27 -0.052340336075587079 28 -0.050961316521372035 29 -0.049582233969786504 30 -0.048203084512756567 31 -0.046823864242739544 32 -0.045444569252691525
		 33 -0.044065195636033061 34 -0.042685739486616359 35 -0.041306196898691971 36 -0.039926563966874995 37 -0.038546836786111982 38 -0.037167011451647469 39 -0.035787084058990448 40 -0.034407050703880893 41 -0.033026907482256229
		 42 -0.03164665049021792 43 -0.030266275823997657 44 -0.028885779579923998 45 -0.027505157854388729 46 -0.026124406743812834 47 -0.024743522344613633 48 -0.023362500753169924 49 -0.021981338065789224 50 -0.020600030378673528
		 51 -0.019218573787885551 52 -0.017836964389314758 53 -0.016455198278643779 54 -0.01507327155131416 55 -0.013691180302492612 56 -0.012308920627036701 57 -0.010926488619461161 58 -0.0095438803739036904 59 -0.008161091984090596
		 60 -0.0067781195433029295 61 -0.0053949591443420708 62 -0.0040116068794954218 63 -0.0026280588405024341 64 -0.001244311118519803 65 0.00013964019591283794 66 0.0015237990129068901 67 0.0029081692432600947 68 0.0042927547984904502
		 69 0.0056775595908710175 70 0.0070625875334645594 71 0.0084478425401586232 72 0.009833328525699514 73 0.01121904940572771 74 0.012605009096812725 75 0.013991211516487856 76 0.015377660583284936 77 0.016764360216770191
		 78 0.018151314337578328 79 0.019538526867448391 80 0.020926001729258625 81 0.022313742847062334 82 0.023701754146122189 83 0.025090039552946863 84 0.026478602995325451 85 0.02786744840236377 86 0.029256579704519448
		 87 0.030646000833638221 88 0.032035715722988578 89 0.033425728307298952 90 0.034816042522792801 91 0.036206662307224358 92 0.037597591599915381 93 0.038988834341790568 94 0.040380394475414305 95 0.041772275945026305
		 96 0.043164482696578577 97 0.044557018677771509 98 0.045949887838089953 99 0.047343094128840635 100 0.048736641503188238 101 0.050130533916191822;
createNode animCurveTU -n "pCube2_locator16_MKR_enable";
	rename -uid "23E71080-0004-A6BA-68F1-6720000009B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
select -ne :time1;
	setAttr ".o" 86;
	setAttr ".unw" 86;
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
// End of test_cube2_c_marker_bundles.ma
