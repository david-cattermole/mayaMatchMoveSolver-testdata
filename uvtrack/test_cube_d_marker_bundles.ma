//Maya ASCII 2024 scene
//Name: test_cube_d_marker_bundles.ma
//Last modified: Tue, Oct 07, 2025 09:51:01 AM
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
fileInfo "UUID" "E39FE080-002A-E4CF-68E4-47D5000007CF";
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
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000765";
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
createNode mmMarkerTransform -n "locator1_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000076A";
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
	setAttr ".t" -type "double3" -0.20298694260760153 0.34475639267361968 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|locator1";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "locator1_MKRShape" -p "locator1_MKR";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000076B";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator2_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000773";
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
	setAttr ".t" -type "double3" 0.20298694260760153 0.34475639267361968 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|locator2";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "locator2_MKRShape" -p "locator2_MKR";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000774";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator3_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000077C";
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
	setAttr ".t" -type "double3" -0.22758314201578006 -0.27295431748618382 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|locator3";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "locator3_MKRShape" -p "locator3_MKR";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000077D";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator4_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000785";
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
	setAttr ".t" -type "double3" 0.22758314201578012 -0.27295431748618382 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|locator4";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "locator4_MKRShape" -p "locator4_MKR";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000786";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator5_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000078E";
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
	setAttr ".t" -type "double3" -0.14464519107169782 0.13335700276378393 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|locator5";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "locator5_MKRShape" -p "locator5_MKR";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000078F";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator6_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000797";
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
	setAttr ".t" -type "double3" 0.14464519107169782 0.13335700276378393 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|locator6";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "locator6_MKRShape" -p "locator6_MKR";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000798";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator7_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC000007A0";
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
	setAttr ".t" -type "double3" -0.15671421671100094 -0.30963877263583339 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|locator7";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "locator7_MKRShape" -p "locator7_MKR";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC000007A1";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator8_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC000007A9";
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
	setAttr ".t" -type "double3" 0.15671421671100094 -0.30963877263583339 -1 ;
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
	setAttr -l on ".markerName" -type "string" "|locator8";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint";
createNode mmMarkerShape -n "locator8_MKRShape" -p "locator8_MKR";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC000007AA";
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
createNode transform -n "locator1";
	rename -uid "4EC5E080-001A-42ED-68DC-58AF000002CA";
	setAttr ".t" -type "double3" -3.75 3.75 -16.25 ;
createNode locator -n "locatorShape1" -p "locator1";
	rename -uid "4EC5E080-001A-42ED-68DC-58AF000002CB";
	setAttr -k off ".v";
createNode transform -n "locator2";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002D0";
	setAttr ".t" -type "double3" 3.75 3.75 -16.25 ;
createNode locator -n "locatorShape2" -p "locator2";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002D1";
	setAttr -k off ".v";
createNode transform -n "locator3";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002D6";
	setAttr ".t" -type "double3" -3.75 -3.75 -16.25 ;
createNode locator -n "locatorShape3" -p "locator3";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002D7";
	setAttr -k off ".v";
createNode transform -n "locator4";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002DC";
	setAttr ".t" -type "double3" 3.75 -3.75 -16.25 ;
createNode locator -n "locatorShape4" -p "locator4";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002DD";
	setAttr -k off ".v";
createNode transform -n "locator5";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002E2";
	setAttr ".t" -type "double3" -3.75 3.75 -23.75 ;
createNode locator -n "locatorShape5" -p "locator5";
	rename -uid "4EC5E080-001A-42ED-68DC-58B1000002E3";
	setAttr -k off ".v";
createNode transform -n "locator6";
	rename -uid "4EC5E080-001A-42ED-68DC-58B2000002E8";
	setAttr ".t" -type "double3" 3.75 3.75 -23.75 ;
createNode locator -n "locatorShape6" -p "locator6";
	rename -uid "4EC5E080-001A-42ED-68DC-58B2000002E9";
	setAttr -k off ".v";
createNode transform -n "locator7";
	rename -uid "4EC5E080-001A-42ED-68DC-58B2000002EE";
	setAttr ".t" -type "double3" -3.75 -3.75 -23.75 ;
createNode locator -n "locatorShape7" -p "locator7";
	rename -uid "4EC5E080-001A-42ED-68DC-58B2000002EF";
	setAttr -k off ".v";
createNode transform -n "locator8";
	rename -uid "4EC5E080-001A-42ED-68DC-58B2000002F4";
	setAttr ".t" -type "double3" 3.75 -3.75 -23.75 ;
createNode locator -n "locatorShape8" -p "locator8";
	rename -uid "4EC5E080-001A-42ED-68DC-58B2000002F5";
	setAttr -k off ".v";
createNode transform -n "locator1_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000767";
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
createNode mmBundleShape -n "locator1_BNDShape" -p "locator1_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000768";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator1_BNDLocatorShape" -p "locator1_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000769";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator2_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000770";
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
createNode mmBundleShape -n "locator2_BNDShape" -p "locator2_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000771";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator2_BNDLocatorShape" -p "locator2_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000772";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator3_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000779";
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
createNode mmBundleShape -n "locator3_BNDShape" -p "locator3_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000077A";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator3_BNDLocatorShape" -p "locator3_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000077B";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator4_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000782";
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
createNode mmBundleShape -n "locator4_BNDShape" -p "locator4_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000783";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator4_BNDLocatorShape" -p "locator4_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000784";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator5_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000078B";
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
createNode mmBundleShape -n "locator5_BNDShape" -p "locator5_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000078C";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator5_BNDLocatorShape" -p "locator5_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000078D";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator6_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000794";
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
createNode mmBundleShape -n "locator6_BNDShape" -p "locator6_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000795";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator6_BNDLocatorShape" -p "locator6_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000796";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator7_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000079D";
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
createNode mmBundleShape -n "locator7_BNDShape" -p "locator7_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000079E";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator7_BNDLocatorShape" -p "locator7_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000079F";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator8_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC000007A6";
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
createNode mmBundleShape -n "locator8_BNDShape" -p "locator8_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC000007A7";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator8_BNDLocatorShape" -p "locator8_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC000007A8";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E39FE080-002A-E4CF-68E4-46C20000074F";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "E39FE080-002A-E4CF-68E4-46C200000750";
createNode displayLayer -n "defaultLayer";
	rename -uid "4EC5E080-001A-42ED-68DC-56030000029A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E39FE080-002A-E4CF-68E4-46C200000752";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4EC5E080-001A-42ED-68DC-56040000029C";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E39FE080-002A-E4CF-68E4-46C200000754";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E39FE080-002A-E4CF-68E4-46C200000755";
createNode animCurveTL -n "camera1_translateX";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 0;
createNode animCurveTL -n "camera1_translateY";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A2";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 -5;
createNode animCurveTL -n "camera1_translateZ";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 0;
createNode animCurveTA -n "camera1_rotateX";
	rename -uid "4EC5E080-001A-42ED-68DC-5612000002A4";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 101 14.999999999999998;
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
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n"
		+ "            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n"
		+ "                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                -pluginObjects \"mmImagePlane2DisplayFilter\" 1 \n                -pluginObjects \"mmLineDisplayFilter\" 1 \n                -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n                -pluginObjects \"mmBundleDisplayFilter\" 1 \n                -pluginObjects \"mmMarkerDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
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
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000764";
createNode mmMarkerScale -n "mmMarkerScale1";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000766";
	setAttr ".ovrscnmd" 1;
createNode animCurveTL -n "locator1_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000076C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.22435942307782053 2 -0.22422292061327304 3 -0.22408451330418644 4 -0.22394420949444416 5 -0.2238020176485277
		 6 -0.22365794635014385 7 -0.22351200430083662 8 -0.22336420031858384 9 -0.22321454333637775 10 -0.22306304240079267 11 -0.22290970667053711 12 -0.22275454541499262 13 -0.22259756801274017 14 -0.22243878395007222
		 15 -0.22227820281949351 16 -0.22211583431820936 17 -0.22195168824660272 18 -0.22178577450669962 19 -0.22161810310062435 20 -0.22144868412904428 21 -0.22127752778960491 22 -0.22110464437535526 23 -0.22093004427316482
		 24 -0.22075373796213132 25 -0.22057573601198133 26 -0.22039604908146226 27 -0.22021468791672838 28 -0.2200316633497183 29 -0.21984698629652794 30 -0.21966066775577697 31 -0.21947271880696922 32 -0.21928315060884884
		 33 -0.21909197439775152 34 -0.21889920148595171 35 -0.21870484326000617 36 -0.21850891117909366 37 -0.21831141677335264 38 -0.21811237164221592 39 -0.2179117874527432 40 -0.21770967593795248 41 -0.21750604889514974
		 42 -0.21730091818425834 43 -0.21709429572614747 44 -0.21688619350096106 45 -0.2166766235464469 46 -0.21646559795628634 47 -0.21625312887842613 48 -0.2160392285134104 49 -0.21582390911271593 50 -0.21560718297708908
		 51 -0.21538906245488587 52 -0.21516955994041426 53 -0.2149486878722815 54 -0.2147264587317439 55 -0.21450288504106152 56 -0.21427797936185722 57 -0.21405175429348045 58 -0.21382422247137711 59 -0.21359539656546395
		 60 -0.2133652892785094 61 -0.21313391334452081 62 -0.21290128152713833 63 -0.21266740661803529 64 -0.21243230143532615 65 -0.21219597882198205 66 -0.21195845164425398 67 -0.21171973279010425 68 -0.21147983516764635
		 69 -0.21123877170359406 70 -0.21099655534171835 71 -0.21075319904131484 72 -0.21050871577568042 73 -0.21026311853059954 74 -0.21001642030284051 75 -0.20976863409866253 76 -0.20951977293233337 77 -0.20926984982465735
		 78 -0.20901887780151468 79 -0.20876686989241278 80 -0.20851383912904742 81 -0.20825979854387805 82 -0.20800476116871258 83 -0.20774874003330657 84 -0.20749174816397264 85 -0.20723379858220481 86 -0.20697490430331317
		 87 -0.2067150783350738 88 -0.20645433367638971 89 -0.20619268331596685 90 -0.20593014023100231 91 -0.20566671738588671 92 -0.20540242773092043 93 -0.20513728420104355 94 -0.20487129971457951 95 -0.20460448717199381
		 96 -0.20433685945466651 97 -0.20406842942367898 98 -0.20379920991861544 99 -0.2035292137563795 100 -0.20325845373002499 101 -0.20298694260760153;
createNode animCurveTL -n "locator1_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000076D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.3365391346167308 2 0.33700208320614067 3 0.33745898043357592 4 0.33790976037423071 5 0.33835435768983102
		 6 0.33879270763379443 7 0.33922474605626329 8 0.33965040940901581 9 0.34006963475024865 10 0.34048235974923569 11 0.34088852269085823 12 0.34128806248000854 13 0.34168091864586669 14 0.34206703134604632
		 15 0.34244634137061403 16 0.3428187901459786 17 0.34318431973865171 18 0.34354287285887741 19 0.34389439286413293 20 0.34423882376249915 21 0.34457611021590018 22 0.34490619754321339 23 0.34522903172324826
		 24 0.34554455939759499 25 0.3458527278733432 26 0.34615348512566979 27 0.34644677980029648 28 0.34673256121581697 29 0.34701077936589475 30 0.34728138492133231 31 0.3475443292320074 32 0.34779956432868464
		 33 0.34804704292469435 34 0.34828671841748682 35 0.34851854489005529 36 0.34874247711223361 37 0.34895847054186668 38 0.3491664813258526 39 0.34936646630106249 40 0.34955838299513176 41 0.34974218962712866
		 42 0.34991784510809887 43 0.35008530904148538 44 0.35024454172342878 45 0.35039550414294285 46 0.35053815798197197 47 0.35067246561532683 48 0.35079839011050173 49 0.35091589522737365 50 0.35102494541778495
		 51 0.35112550582500801 52 0.35121754228309543 53 0.35130102131611807 54 0.35137591013728597 55 0.3514421766479604 56 0.35149978943655391 57 0.35154871777731989 58 0.35158893162903437 59 0.35162040163357
		 60 0.3516430991143632 61 0.35165699607477696 62 0.35166206519635923 63 0.35165827983699938 64 0.35164561402898209 65 0.35162404247694334 66 0.35159354055572445 67 0.35155408430813251 68 0.35150565044260196
		 69 0.35144821633076329 70 0.35138176000491672 71 0.35130626015541622 72 0.35122169612796095 73 0.35112804792079966 74 0.35102529618184586 75 0.35091342220570709 76 0.35079240793063171 77 0.35066223593536905
		 78 0.35052288943595034 79 0.35037435228238856 80 0.35021660895529949 81 0.35004964456244658 82 0.34987344483520777 83 0.34968799612497148 84 0.34949328539945657 85 0.34928930023896321 86 0.34907602883255451
		 87 0.34885345997416783 88 0.3486215830586622 89 0.34838038807779892 90 0.34812986561615922 91 0.34787000684700109 92 0.34760080352805445 93 0.34732224799725708 94 0.34703433316843513 95 0.34673705252692744
		 96 0.34643040012515369 97 0.34611437057813244 98 0.34578895905894735 99 0.34545416129416229 100 0.3451099735591916 101 0.34475639267361968;
createNode animCurveTU -n "locator1_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000076E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator2_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000775";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.22435942307782053 2 0.22422292061327309 3 0.22408451330418644 4 0.22394420949444416 5 0.2238020176485277
		 6 0.2236579463501438 7 0.22351200430083662 8 0.22336420031858384 9 0.22321454333637769 10 0.22306304240079267 11 0.22290970667053711 12 0.22275454541499262 13 0.22259756801274011 14 0.22243878395007222
		 15 0.22227820281949351 16 0.22211583431820936 17 0.22195168824660272 18 0.22178577450669956 19 0.22161810310062435 20 0.22144868412904428 21 0.22127752778960486 22 0.22110464437535526 23 0.22093004427316476
		 24 0.22075373796213138 25 0.22057573601198133 26 0.22039604908146226 27 0.22021468791672838 28 0.22003166334971835 29 0.21984698629652799 30 0.21966066775577697 31 0.21947271880696917 32 0.21928315060884884
		 33 0.21909197439775152 34 0.21889920148595166 35 0.21870484326000617 36 0.21850891117909366 37 0.21831141677335264 38 0.21811237164221597 39 0.2179117874527432 40 0.21770967593795243 41 0.21750604889514968
		 42 0.21730091818425834 43 0.21709429572614747 44 0.21688619350096106 45 0.2166766235464469 46 0.21646559795628639 47 0.21625312887842618 48 0.2160392285134104 49 0.21582390911271587 50 0.21560718297708914
		 51 0.21538906245488587 52 0.2151695599404142 53 0.2149486878722815 54 0.2147264587317439 55 0.21450288504106152 56 0.21427797936185722 57 0.21405175429348045 58 0.21382422247137711 59 0.213595396565464
		 60 0.2133652892785094 61 0.21313391334452081 62 0.21290128152713828 63 0.21266740661803529 64 0.21243230143532621 65 0.21219597882198205 66 0.21195845164425398 67 0.21171973279010425 68 0.21147983516764635
		 69 0.21123877170359406 70 0.21099655534171835 71 0.21075319904131484 72 0.21050871577568042 73 0.21026311853059954 74 0.21001642030284051 75 0.20976863409866253 76 0.20951977293233337 77 0.20926984982465735
		 78 0.20901887780151474 79 0.20876686989241278 80 0.20851383912904742 81 0.20825979854387811 82 0.20800476116871258 83 0.20774874003330657 84 0.20749174816397264 85 0.20723379858220481 86 0.20697490430331311
		 87 0.20671507833507374 88 0.20645433367638977 89 0.20619268331596685 90 0.20593014023100231 91 0.20566671738588671 92 0.20540242773092043 93 0.20513728420104349 94 0.20487129971457951 95 0.20460448717199387
		 96 0.20433685945466651 97 0.20406842942367898 98 0.20379920991861544 99 0.20352921375637956 100 0.20325845373002505 101 0.20298694260760153;
createNode animCurveTL -n "locator2_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000776";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.3365391346167308 2 0.33700208320614067 3 0.33745898043357592 4 0.33790976037423071 5 0.33835435768983102
		 6 0.33879270763379443 7 0.33922474605626329 8 0.33965040940901581 9 0.34006963475024865 10 0.34048235974923569 11 0.34088852269085823 12 0.34128806248000854 13 0.34168091864586669 14 0.34206703134604632
		 15 0.34244634137061403 16 0.3428187901459786 17 0.34318431973865171 18 0.34354287285887741 19 0.34389439286413293 20 0.34423882376249915 21 0.34457611021590018 22 0.34490619754321339 23 0.34522903172324826
		 24 0.34554455939759499 25 0.3458527278733432 26 0.34615348512566979 27 0.34644677980029648 28 0.34673256121581697 29 0.34701077936589475 30 0.34728138492133231 31 0.3475443292320074 32 0.34779956432868464
		 33 0.34804704292469435 34 0.34828671841748682 35 0.34851854489005529 36 0.34874247711223361 37 0.34895847054186668 38 0.3491664813258526 39 0.34936646630106249 40 0.34955838299513176 41 0.34974218962712866
		 42 0.34991784510809887 43 0.35008530904148538 44 0.35024454172342878 45 0.35039550414294285 46 0.35053815798197197 47 0.35067246561532683 48 0.35079839011050173 49 0.35091589522737365 50 0.35102494541778495
		 51 0.35112550582500801 52 0.35121754228309543 53 0.35130102131611807 54 0.35137591013728597 55 0.3514421766479604 56 0.35149978943655391 57 0.35154871777731989 58 0.35158893162903437 59 0.35162040163357
		 60 0.3516430991143632 61 0.35165699607477696 62 0.35166206519635923 63 0.35165827983699938 64 0.35164561402898209 65 0.35162404247694334 66 0.35159354055572445 67 0.35155408430813251 68 0.35150565044260196
		 69 0.35144821633076329 70 0.35138176000491672 71 0.35130626015541622 72 0.35122169612796095 73 0.35112804792079966 74 0.35102529618184586 75 0.35091342220570709 76 0.35079240793063171 77 0.35066223593536905
		 78 0.35052288943595034 79 0.35037435228238856 80 0.35021660895529949 81 0.35004964456244658 82 0.34987344483520777 83 0.34968799612497148 84 0.34949328539945657 85 0.34928930023896321 86 0.34907602883255451
		 87 0.34885345997416783 88 0.3486215830586622 89 0.34838038807779892 90 0.34812986561615922 91 0.34787000684700109 92 0.34760080352805445 93 0.34732224799725708 94 0.34703433316843513 95 0.34673705252692744
		 96 0.34643040012515369 97 0.34611437057813244 98 0.34578895905894735 99 0.34545416129416229 100 0.3451099735591916 101 0.34475639267361968;
createNode animCurveTU -n "locator2_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000777";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator3_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000077E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.22435942307782053 2 -0.22449401247589984 3 -0.22462668070887559 4 -0.22475741980272923 5 -0.22488622190936391
		 6 -0.22501307930789183 7 -0.22513798440590371 8 -0.22526092974071921 9 -0.22538190798061863 10 -0.22550091192605531 11 -0.22561793451084766 12 -0.22573296880335225 13 -0.22584600800761556 14 -0.22595704546450501
		 15 -0.22606607465281914 16 -0.22617308919037593 17 -0.22627808283507989 18 -0.22638104948596594 19 -0.22648198318422197 20 -0.22658087811418709 21 -0.22667772860432867 22 -0.22677252912819412 23 -0.22686527430533987
		 24 -0.22695595890223608 25 -0.22704457783314702 26 -0.22713112616098663 27 -0.22721559909815003 28 -0.22729799200731826 29 -0.2273783004022395 30 -0.22745651994848315 31 -0.22753264646416893 32 -0.22760667592066947
		 33 -0.22767860444328636 34 -0.22774842831190012 35 -0.22781614396159328 36 -0.22788174798324601 37 -0.22794523712410519 38 -0.22800660828832597 39 -0.22806585853748562 40 -0.22812298509106965 41 -0.22817798532693079
		 42 -0.22823085678171939 43 -0.22828159715128526 44 -0.22833020429105277 45 -0.22837667621636593 46 -0.2284210111028061 47 -0.22846320728648106 48 -0.22850326326428472 49 -0.22854117769412885 50 -0.22857694939514617
		 51 -0.2286105773478635 52 -0.22864206069434712 53 -0.22867139873831888 54 -0.22869859094524336 55 -0.22872363694238523 56 -0.22874653651883969 57 -0.22876728962553122 58 -0.22878589637518576 59 -0.22880235704227225
		 60 -0.22881667206291623 61 -0.22882884203478426 62 -0.22883886771693895 63 -0.22884675002966615 64 -0.22885249005427277 65 -0.22885608903285648 66 -0.22885754836804573 67 -0.22885686962271318 68 -0.22885405451965868
		 69 -0.22884910494126576 70 -0.22884202292912897 71 -0.22883281068365346 72 -0.22882147056362717 73 -0.22880800508576471 74 -0.22879241692422408 75 -0.22877470891009571 76 -0.22875488403086508 77 -0.22873294542984757
		 78 -0.22870889640559633 79 -0.228682740411285 80 -0.22865448105406228 81 -0.22862412209438138 82 -0.22859166744530335 83 -0.22855712117177507 84 -0.22852048748988063 85 -0.22848177076606896 86 -0.22844097551635567
		 87 -0.22839810640550068 88 -0.22835316824616092 89 -0.22830616599801956 90 -0.22825710476689109 91 -0.22820598980380291 92 -0.22815282650405388 93 -0.22809762040624965 94 -0.22804037719131576 95 -0.22798110268148852
		 96 -0.22791980283928376 97 -0.22785648376644352 98 -0.2277911517028629 99 -0.22772381302549449 100 -0.22765447424723306 101 -0.22758314201578006;
createNode animCurveTL -n "locator3_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000077F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.3365391346167308 2 -0.33607020117140296 3 -0.33559534995205875 4 -0.33511464861091955 5 -0.33462816536487761
		 6 -0.3341359689897308 7 -0.33363812881429455 8 -0.33313471471439943 9 -0.33262579710676959 10 -0.33211144694278677 11 -0.33159173570213896 12 -0.33106673538635678 13 -0.33053651851223692 14 -0.33000115810515546
		 15 -0.3294607276922713 16 -0.3289153012956218 17 -0.32836495342511218 18 -0.3278097590713997 19 -0.32724979369867296 20 -0.32668513323733073 21 -0.32611585407656002 22 -0.32554203305681423 23 -0.32496374746219525
		 24 -0.32438107501273894 25 -0.32379409385660762 26 -0.32320288256219054 27 -0.32260752011011368 28 -0.32200808588516039 29 -0.32140465966810744 30 -0.32079732162747537 31 -0.32018615231119535 32 -0.31957123263819687
		 33 -0.3189526438899154 34 -0.31833046770172457 35 -0.31770478605429248 36 -0.3170756812648664 37 -0.31644323597848661 38 -0.31580753315913246 39 -0.31516865608080158 40 -0.31452668831852526 41 -0.3138817137393235
		 42 -0.31323381649309884 43 -0.31258308100347387 44 -0.31192959195857412 45 -0.31127343430175741 46 -0.3106146932222944 47 -0.30995345414599995 48 -0.30928980272582007 49 -0.30862382483237361 50 -0.30795560654445725
		 51 -0.30728523413950704 52 -0.3066127940840282 53 -0.30593837302399013 54 -0.30526205777518911 55 -0.30458393531358441 56 -0.3039040927656072 57 -0.30322261739844591 58 -0.30253959661031138 59 -0.30185511792068209
		 60 -0.30116926896053425 61 -0.30048213746255814 62 -0.2997938112513624 63 -0.29910437823367131 64 -0.29841392638851488 65 -0.29772254375741547 66 -0.29703031843457334 67 -0.29633733855705485 68 -0.29564369229498139
		 69 -0.29494946784172926 70 -0.29425475340413415 71 -0.29355963719270994 72 -0.29286420741187996 73 -0.29216855225022503 74 -0.29147275987075028 75 -0.29077691840117265 76 -0.29008111592423308 77 -0.28938544046803449
		 78 -0.28868997999640683 79 -0.28799482239930579 80 -0.28730005548324206 81 -0.28660576696174717 82 -0.28591204444587831 83 -0.28521897543476249 84 -0.28452664730618243 85 -0.28383514730720888 86 -0.28314456254487985
		 87 -0.28245497997692798 88 -0.28176648640256047 89 -0.28107916845329339 90 -0.28039311258384003 91 -0.27970840506305877 92 -0.27902513196496093 93 -0.27834337915978052 94 -0.27766323230510903 95 -0.27698477683709505
		 96 -0.27630809796171391 97 -0.27563328064610748 98 -0.27496040960999313 99 -0.27428956931715348 100 -0.27362084396699354 101 -0.27295431748618382;
createNode animCurveTU -n "locator3_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000780";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator4_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000787";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.22435942307782053 2 0.22449401247589984 3 0.22462668070887559 4 0.22475741980272923 5 0.22488622190936391
		 6 0.22501307930789183 7 0.22513798440590371 8 0.22526092974071921 9 0.22538190798061863 10 0.22550091192605537 11 0.22561793451084766 12 0.22573296880335225 13 0.22584600800761556 14 0.22595704546450501
		 15 0.22606607465281914 16 0.22617308919037593 17 0.22627808283507989 18 0.22638104948596594 19 0.22648198318422197 20 0.22658087811418715 21 0.22667772860432867 22 0.22677252912819412 23 0.22686527430533987
		 24 0.22695595890223608 25 0.22704457783314702 26 0.22713112616098663 27 0.22721559909815003 28 0.22729799200731826 29 0.2273783004022395 30 0.22745651994848315 31 0.22753264646416893 32 0.22760667592066941
		 33 0.22767860444328636 34 0.22774842831190012 35 0.22781614396159333 36 0.22788174798324601 37 0.22794523712410519 38 0.22800660828832597 39 0.22806585853748562 40 0.22812298509106965 41 0.22817798532693079
		 42 0.22823085678171939 43 0.22828159715128526 44 0.22833020429105277 45 0.22837667621636593 46 0.2284210111028061 47 0.22846320728648106 48 0.22850326326428472 49 0.22854117769412885 50 0.22857694939514617
		 51 0.2286105773478635 52 0.22864206069434712 53 0.22867139873831888 54 0.22869859094524336 55 0.22872363694238529 56 0.22874653651883969 57 0.22876728962553128 58 0.22878589637518576 59 0.22880235704227225
		 60 0.22881667206291623 61 0.22882884203478426 62 0.22883886771693895 63 0.22884675002966615 64 0.22885249005427277 65 0.22885608903285648 66 0.22885754836804573 67 0.22885686962271312 68 0.22885405451965868
		 69 0.22884910494126576 70 0.22884202292912903 71 0.22883281068365346 72 0.22882147056362712 73 0.22880800508576471 74 0.22879241692422414 75 0.22877470891009577 76 0.22875488403086508 77 0.22873294542984757
		 78 0.22870889640559633 79 0.228682740411285 80 0.22865448105406228 81 0.22862412209438143 82 0.22859166744530335 83 0.22855712117177507 84 0.22852048748988063 85 0.2284817707660689 86 0.22844097551635567
		 87 0.22839810640550073 88 0.22835316824616092 89 0.22830616599801956 90 0.22825710476689109 91 0.22820598980380291 92 0.22815282650405388 93 0.2280976204062497 94 0.22804037719131576 95 0.22798110268148852
		 96 0.2279198028392837 97 0.22785648376644352 98 0.2277911517028629 99 0.22772381302549449 100 0.22765447424723306 101 0.22758314201578012;
createNode animCurveTL -n "locator4_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000788";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.3365391346167308 2 -0.33607020117140296 3 -0.33559534995205875 4 -0.33511464861091955 5 -0.33462816536487761
		 6 -0.3341359689897308 7 -0.33363812881429455 8 -0.33313471471439943 9 -0.33262579710676959 10 -0.33211144694278677 11 -0.33159173570213896 12 -0.33106673538635678 13 -0.33053651851223692 14 -0.33000115810515546
		 15 -0.3294607276922713 16 -0.3289153012956218 17 -0.32836495342511218 18 -0.3278097590713997 19 -0.32724979369867296 20 -0.32668513323733073 21 -0.32611585407656002 22 -0.32554203305681423 23 -0.32496374746219525
		 24 -0.32438107501273894 25 -0.32379409385660762 26 -0.32320288256219054 27 -0.32260752011011368 28 -0.32200808588516039 29 -0.32140465966810744 30 -0.32079732162747537 31 -0.32018615231119535 32 -0.31957123263819687
		 33 -0.3189526438899154 34 -0.31833046770172457 35 -0.31770478605429248 36 -0.3170756812648664 37 -0.31644323597848661 38 -0.31580753315913246 39 -0.31516865608080158 40 -0.31452668831852526 41 -0.3138817137393235
		 42 -0.31323381649309884 43 -0.31258308100347387 44 -0.31192959195857412 45 -0.31127343430175741 46 -0.3106146932222944 47 -0.30995345414599995 48 -0.30928980272582007 49 -0.30862382483237361 50 -0.30795560654445725
		 51 -0.30728523413950704 52 -0.3066127940840282 53 -0.30593837302399013 54 -0.30526205777518911 55 -0.30458393531358441 56 -0.3039040927656072 57 -0.30322261739844591 58 -0.30253959661031138 59 -0.30185511792068209
		 60 -0.30116926896053425 61 -0.30048213746255814 62 -0.2997938112513624 63 -0.29910437823367131 64 -0.29841392638851488 65 -0.29772254375741547 66 -0.29703031843457334 67 -0.29633733855705485 68 -0.29564369229498139
		 69 -0.29494946784172926 70 -0.29425475340413415 71 -0.29355963719270994 72 -0.29286420741187996 73 -0.29216855225022503 74 -0.29147275987075028 75 -0.29077691840117265 76 -0.29008111592423308 77 -0.28938544046803449
		 78 -0.28868997999640683 79 -0.28799482239930579 80 -0.28730005548324206 81 -0.28660576696174717 82 -0.28591204444587831 83 -0.28521897543476249 84 -0.28452664730618243 85 -0.28383514730720888 86 -0.28314456254487985
		 87 -0.28245497997692798 88 -0.28176648640256047 89 -0.28107916845329339 90 -0.28039311258384003 91 -0.27970840506305877 92 -0.27902513196496093 93 -0.27834337915978052 94 -0.27766323230510903 95 -0.27698477683709505
		 96 -0.27630809796171391 97 -0.27563328064610748 98 -0.27496040960999313 99 -0.27428956931715348 100 -0.27362084396699354 101 -0.27295431748618382;
createNode animCurveTU -n "locator4_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000789";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator5_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000790";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.15350907894798249 2 -0.15344532984049897 3 -0.15338099515057924 4 -0.15331607687530774 5 -0.1532505770381124
		 6 -0.15318449768856934 7 -0.15311784090220637 8 -0.15305060878030369 9 -0.15298280344969301 10 -0.15291442706255448 11 -0.15284548179621171 12 -0.15277596985292496 13 -0.1527058934596825 14 -0.15263525486798946
		 15 -0.15256405635365644 16 -0.15249230021658422 17 -0.15241998878054885 18 -0.15234712439298348 19 -0.15227370942475926 20 -0.15219974626996463 21 -0.15212523734568267 22 -0.15205018509176738 23 -0.15197459197061797
		 24 -0.15189846046695193 25 -0.15182179308757682 26 -0.15174459236116034 27 -0.15166686083799935 28 -0.15158860108978733 29 -0.15150981570938066 30 -0.15143050731056384 31 -0.15135067852781303 32 -0.15127033201605938
		 33 -0.15118947045044973 34 -0.1511080965261079 35 -0.15102621295789354 36 -0.15094382248016125 37 -0.1508609278465175 38 -0.15077753182957732 39 -0.15069363722072038 40 -0.15060924682984522 41 -0.15052436348512371
		 42 -0.15043899003275429 43 -0.1503531293367143 44 -0.15026678427851192 45 -0.15017995775693743 46 -0.15009265268781369 47 -0.15000487200374618 48 -0.14991661865387251 49 -0.14982789560361137 50 -0.14973870583441085
		 51 -0.1496490523434969 52 -0.14955893814362065 53 -0.14946836626280602 54 -0.14937733974409673 55 -0.14928586164530289 56 -0.14919393503874778 57 -0.14910156301101418 58 -0.14900874866269043 59 -0.14891549510811652
		 60 -0.14882180547513024 61 -0.14872768290481286 62 -0.14863313055123528 63 -0.14853815158120404 64 -0.1484427491740069 65 -0.14834692652115961 66 -0.14825068682615139 67 -0.14815403330419202 68 -0.14805696918195804
		 69 -0.14795949769733985 70 -0.14786162209918852 71 -0.1477633456470635 72 -0.14766467161098029 73 -0.14756560327115842 74 -0.14746614391777035 75 -0.14736629685069003 76 -0.14726606537924269 77 -0.14716545282195448
		 78 -0.14706446250630345 79 -0.14696309776847 80 -0.14686136195308908 81 -0.14675925841300197 82 -0.14665679050900993 83 -0.14655396160962719 84 -0.14645077509083559 85 -0.14634723433583974 86 -0.14624334273482287
		 87 -0.14613910368470373 88 -0.14603452058889371 89 -0.14592959685705581 90 -0.14582433590486354 91 -0.14571874115376149 92 -0.1456128160307264 93 -0.14550656396802925 94 -0.1453999884029985 95 -0.14529309277778468
		 96 -0.14518588053912496 97 -0.14507835513811035 98 -0.14497052002995237 99 -0.14486237867375223 100 -0.14475393453227048 101 -0.14464519107169782;
createNode animCurveTL -n "locator5_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000791";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.23026361842197374 2 0.22941977655298207 3 0.22857406990960838 4 0.22772647517635747 5 0.22687696914943012
		 6 0.22602552873748682 7 0.22517213096239796 8 0.22431675295998144 9 0.22345937198072408 10 0.22259996539049176 11 0.22173851067122385 12 0.2208749854216141 13 0.22000936735777787 14 0.21914163431390354
		 15 0.21827176424289219 16 0.21739973521698031 17 0.2165255254283498 18 0.2156491131897228 19 0.21477047693494233 20 0.21388959521953788 21 0.21300644672127622 22 0.21212101024069852 23 0.21123326470164161
		 24 0.21034318915174488 25 0.20945076276294206 26 0.20855596483193917 27 0.20765877478067585 28 0.20675917215677275 29 0.2058571366339641 30 0.204952648012515 31 0.20404568621962338 32 0.20313623130980707
		 33 0.20222426346527589 34 0.20130976299628922 35 0.20039271034149686 36 0.19947308606826697 37 0.19855087087299628 38 0.19762604558140806 39 0.19669859114883248 40 0.19576848866047314 41 0.19483571933165889
		 42 0.19390026450807829 43 0.19296210566600225 44 0.1920212244124887 45 0.19107760248557404 46 0.19013122175444808 47 0.1891820642196157 48 0.18823011201304163 49 0.18727534739828167 50 0.18631775277059792
		 51 0.1853573106570604 52 0.18439400371663206 53 0.18342781474024006 54 0.1824587266508324 55 0.18148672250341913 56 0.18051178548509916 57 0.17953389891507221 58 0.17855304624463608 59 0.17756921105717038
		 60 0.17658237706810365 61 0.17559252812486781 62 0.17459964820683804 63 0.17360372142525704 64 0.17260473202314641 65 0.17160266437520344 66 0.1705975029876825 67 0.16958923249826441 68 0.16857783767591072
		 69 0.1675633034207038 70 0.16654561476367313 71 0.16552475686660872 72 0.1645007150218597 73 0.16347347465211981 74 0.16244302131019961 75 0.16140934067878399 76 0.1603724185701787 77 0.1593322409260407
		 78 0.15828879381709771 79 0.15724206344285296 80 0.15619203613127808 81 0.15513869833849325 82 0.15408203664843234 83 0.15302203777249901 84 0.15195868854920624 85 0.15089197594380666 86 0.14982188704790833
		 87 0.14874840907907938 88 0.1476715293804397 89 0.14659123542024077 90 0.14550751479143387 91 0.14442035521122654 92 0.1433297445206263 93 0.14223567068397314 94 0.1411381217884613 95 0.14003708604364884
		 96 0.13893255178095565 97 0.13782450745315056 98 0.13671294163382886 99 0.13559784301687539 100 0.13447920041592076 101 0.13335700276378393;
createNode animCurveTU -n "locator5_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000792";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator6_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC00000799";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.15350907894798249 2 0.15344532984049897 3 0.15338099515057924 4 0.15331607687530768 5 0.1532505770381124
		 6 0.15318449768856934 7 0.15311784090220637 8 0.15305060878030363 9 0.15298280344969295 10 0.15291442706255443 11 0.15284548179621171 12 0.15277596985292496 13 0.15270589345968255 14 0.15263525486798946
		 15 0.15256405635365644 16 0.15249230021658422 17 0.15241998878054885 18 0.15234712439298348 19 0.15227370942475926 20 0.15219974626996469 21 0.15212523734568273 22 0.15205018509176738 23 0.15197459197061791
		 24 0.15189846046695199 25 0.15182179308757682 26 0.15174459236116034 27 0.15166686083799941 28 0.15158860108978733 29 0.1515098157093806 30 0.15143050731056384 31 0.15135067852781303 32 0.15127033201605933
		 33 0.15118947045044973 34 0.1511080965261079 35 0.15102621295789354 36 0.15094382248016125 37 0.1508609278465175 38 0.15077753182957732 39 0.15069363722072038 40 0.15060924682984522 41 0.15052436348512366
		 42 0.15043899003275429 43 0.1503531293367143 44 0.15026678427851192 45 0.15017995775693738 46 0.15009265268781369 47 0.15000487200374613 48 0.14991661865387251 49 0.14982789560361143 50 0.14973870583441085
		 51 0.1496490523434969 52 0.14955893814362065 53 0.14946836626280602 54 0.14937733974409673 55 0.14928586164530289 56 0.14919393503874778 57 0.14910156301101418 58 0.14900874866269043 59 0.14891549510811652
		 60 0.14882180547513024 61 0.14872768290481286 62 0.14863313055123528 63 0.14853815158120409 64 0.1484427491740069 65 0.14834692652115966 66 0.14825068682615139 67 0.14815403330419197 68 0.14805696918195799
		 69 0.14795949769733985 70 0.14786162209918852 71 0.1477633456470635 72 0.14766467161098029 73 0.14756560327115842 74 0.14746614391777035 75 0.14736629685069003 76 0.14726606537924269 77 0.14716545282195448
		 78 0.14706446250630345 79 0.14696309776846994 80 0.14686136195308908 81 0.14675925841300197 82 0.14665679050900993 83 0.14655396160962719 84 0.14645077509083559 85 0.14634723433583974 86 0.14624334273482287
		 87 0.14613910368470373 88 0.14603452058889377 89 0.14592959685705575 90 0.14582433590486354 91 0.14571874115376149 92 0.1456128160307264 93 0.1455065639680293 94 0.1453999884029985 95 0.14529309277778468
		 96 0.14518588053912496 97 0.14507835513811029 98 0.14497052002995237 99 0.14486237867375218 100 0.14475393453227048 101 0.14464519107169782;
createNode animCurveTL -n "locator6_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000079A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.23026361842197374 2 0.22941977655298207 3 0.22857406990960838 4 0.22772647517635747 5 0.22687696914943012
		 6 0.22602552873748682 7 0.22517213096239796 8 0.22431675295998144 9 0.22345937198072408 10 0.22259996539049176 11 0.22173851067122385 12 0.2208749854216141 13 0.22000936735777787 14 0.21914163431390354
		 15 0.21827176424289219 16 0.21739973521698031 17 0.2165255254283498 18 0.2156491131897228 19 0.21477047693494233 20 0.21388959521953788 21 0.21300644672127622 22 0.21212101024069852 23 0.21123326470164161
		 24 0.21034318915174488 25 0.20945076276294206 26 0.20855596483193917 27 0.20765877478067585 28 0.20675917215677275 29 0.2058571366339641 30 0.204952648012515 31 0.20404568621962338 32 0.20313623130980707
		 33 0.20222426346527589 34 0.20130976299628922 35 0.20039271034149686 36 0.19947308606826697 37 0.19855087087299628 38 0.19762604558140806 39 0.19669859114883248 40 0.19576848866047314 41 0.19483571933165889
		 42 0.19390026450807829 43 0.19296210566600225 44 0.1920212244124887 45 0.19107760248557404 46 0.19013122175444808 47 0.1891820642196157 48 0.18823011201304163 49 0.18727534739828167 50 0.18631775277059792
		 51 0.1853573106570604 52 0.18439400371663206 53 0.18342781474024006 54 0.1824587266508324 55 0.18148672250341913 56 0.18051178548509916 57 0.17953389891507221 58 0.17855304624463608 59 0.17756921105717038
		 60 0.17658237706810365 61 0.17559252812486781 62 0.17459964820683804 63 0.17360372142525704 64 0.17260473202314641 65 0.17160266437520344 66 0.1705975029876825 67 0.16958923249826441 68 0.16857783767591072
		 69 0.1675633034207038 70 0.16654561476367313 71 0.16552475686660872 72 0.1645007150218597 73 0.16347347465211981 74 0.16244302131019961 75 0.16140934067878399 76 0.1603724185701787 77 0.1593322409260407
		 78 0.15828879381709771 79 0.15724206344285296 80 0.15619203613127808 81 0.15513869833849325 82 0.15408203664843234 83 0.15302203777249901 84 0.15195868854920624 85 0.15089197594380666 86 0.14982188704790833
		 87 0.14874840907907938 88 0.1476715293804397 89 0.14659123542024077 90 0.14550751479143387 91 0.14442035521122654 92 0.1433297445206263 93 0.14223567068397314 94 0.1411381217884613 95 0.14003708604364884
		 96 0.13893255178095565 97 0.13782450745315056 98 0.13671294163382886 99 0.13559784301687539 100 0.13447920041592076 101 0.13335700276378393;
createNode animCurveTU -n "locator6_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC0000079B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator7_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC000007A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.15350907894798249 2 -0.15357224050248142 3 -0.15363481256017392 4 -0.15369679320415341 5 -0.15375818054461449
		 6 -0.15381897271903677 7 -0.15387916789236683 8 -0.15393876425719721 9 -0.15399776003394361 10 -0.15405615347101931 11 -0.15411394284500746 12 -0.15417112646083059 13 -0.1542277026519181 14 -0.15428366978037067
		 15 -0.15433902623712303 16 -0.15439377044210267 17 -0.15444790084438764 18 -0.15450141592236077 19 -0.15455431418386129 20 -0.15460659416633404 21 -0.15465825443697567 22 -0.15470929359287855 23 -0.15475971026117141
		 24 -0.15480950309915759 25 -0.15485867079445031 26 -0.15490721206510516 27 -0.15495512565974962 28 -0.15500241035770984 29 -0.15504906496913456 30 -0.15509508833511587 31 -0.15514047932780739 32 -0.15518523685053887
		 33 -0.15522935983792874 34 -0.15527284725599266 35 -0.15531569810224977 36 -0.15535791140582539 37 -0.15539948622755112 38 -0.15544042166006145 39 -0.15548071682788767 40 -0.15552037088754811 41 -0.15555938302763572
		 42 -0.15559775246890273 43 -0.15563547846434111 44 -0.15567256029926113 45 -0.15570899729136572 46 -0.1557447887908221 47 -0.15577993418033048 48 -0.15581443287518876 49 -0.15584828432335462 50 -0.15588148800550428
		 51 -0.15591404343508741 52 -0.15594595015838009 53 -0.15597720775453261 54 -0.15600781583561596 55 -0.15603777404666352 56 -0.15606708206571052 57 -0.15609573960382911 58 -0.15612374640516136 59 -0.15615110224694773
		 60 -0.15617780693955363 61 -0.15620386032649092 62 -0.15622926228443756 63 -0.15625401272325345 64 -0.15627811158599253 65 -0.15630155884891245 66 -0.15632435452147975 67 -0.15634649864637279 68 -0.15636799129948104
		 69 -0.15638883258990044 70 -0.15640902265992651 71 -0.15642856168504304 72 -0.15644744987390841 73 -0.156465687468338 74 -0.15648327474328372 75 -0.15650021200680986 76 -0.15651649960006564 77 -0.15653213789725517
		 78 -0.15654712730560327 79 -0.15656146826531864 80 -0.15657516124955317 81 -0.15658820676435881 82 -0.15660060534864062 83 -0.15661235757410652 84 -0.15662346404521438 85 -0.15663392539911569 86 -0.15664374230559541
		 87 -0.15665291546700993 88 -0.15666144561822049 89 -0.15666933352652468 90 -0.15667657999158369 91 -0.15668318584534757 92 -0.15668915195197647 93 -0.15669447920775936 94 -0.15669916854102928 95 -0.15670322091207634
		 96 -0.15670663731305634 97 -0.15670941876789785 98 -0.15671156633220551 99 -0.1567130810931604 100 -0.15671396416941757 101 -0.15671421671100094;
createNode animCurveTL -n "locator7_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC000007A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.23026361842197368 2 -0.23110561894299675 3 -0.23194580165259193 4 -0.23278419019662311 5 -0.23362080832945931
		 6 -0.23445567991314487 7 -0.23528882891655489 8 -0.23612027941453922 9 -0.23695005558705329 10 -0.23777818171827564 11 -0.23860468219571351 12 -0.23942958150929639 13 -0.24025290425045631 14 -0.24107467511119668
		 15 -0.24189491888314885 16 -0.24271366045661669 17 -0.24353092481961003 18 -0.24434673705686583 19 -0.24516112234885773 20 -0.24597410597079539 21 -0.24678571329161114 22 -0.2475959697729373 23 -0.24840490096807089
		 24 -0.24921253252092929 25 -0.2500188901649939 26 -0.25082399972224467 27 -0.25162788710208361 28 -0.25243057830024823 29 -0.25323209939771574 30 -0.25403247655959699 31 -0.25483173603402121 32 -0.25562990415101083
		 33 -0.2564270073213476 34 -0.25722307203543027 35 -0.25801812486212139 36 -0.25881219244758852 37 -0.25960530151413391 38 -0.26039747885901787 39 -0.26118875135327413 40 -0.26197914594051541 41 -0.26276868963573358
		 42 -0.2635574095240909 43 -0.26434533275970473 44 -0.26513248656442451 45 -0.26591889822660192 46 -0.26670459509985489 47 -0.26748960460182486 48 -0.26827395421292716 49 -0.26905767147509629 50 -0.26984078399052464
		 51 -0.27062331942039553 52 -0.2714053054836108 53 -0.27218676995551444 54 -0.27296774066660856 55 -0.27374824550126764 56 -0.27452831239644471 57 -0.27530796934037682 58 -0.2760872443712834 59 -0.2768661655760622
		 60 -0.27764476108898117 61 -0.27842305909036658 62 -0.27920108780528785 63 -0.27997887550223965 64 -0.28075645049182135 65 -0.28153384112541258 66 -0.28231107579384773 67 -0.28308818292608823 68 -0.28386519098789115
		 69 -0.28464212848047882 70 -0.28541902393920443 71 -0.28619590593221783 72 -0.28697280305912937 73 -0.2877497439496739 74 -0.2885267572623732 75 -0.28930387168319865 76 -0.29008111592423313 77 -0.29085851872233393
		 78 -0.29163610883779484 79 -0.29241391505300979 80 -0.29319196617113669 81 -0.29397029101476141 82 -0.29474891842456524 83 -0.29552787725799168 84 -0.29630719638791525 85 -0.29708690470131272 86 -0.29786703109793672
		 87 -0.29864760448899041 88 -0.2994286537958053 89 -0.30021020794852299 90 -0.30099229588477755 91 -0.30177494654838283 92 -0.30255818888802277 93 -0.30334205185594537 94 -0.30412656440665992 95 -0.30491175549563959
		 96 -0.30569765407802624 97 -0.30648428910734249 98 -0.30727168953420514 99 -0.30805988430504749 100 -0.308848902360842 101 -0.30963877263583339;
createNode animCurveTU -n "locator7_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC000007A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator8_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC000007AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 0.15350907894798249 2 0.15357224050248142 3 0.15363481256017386 4 0.15369679320415341 5 0.15375818054461443
		 6 0.15381897271903677 7 0.15387916789236677 8 0.15393876425719721 9 0.15399776003394361 10 0.15405615347101931 11 0.15411394284500746 12 0.15417112646083053 13 0.1542277026519181 14 0.15428366978037067
		 15 0.15433902623712303 16 0.15439377044210267 17 0.15444790084438764 18 0.15450141592236077 19 0.15455431418386123 20 0.15460659416633404 21 0.15465825443697567 22 0.15470929359287855 23 0.15475971026117141
		 24 0.15480950309915764 25 0.15485867079445037 26 0.15490721206510516 27 0.15495512565974967 28 0.1550024103577099 29 0.15504906496913451 30 0.15509508833511587 31 0.15514047932780739 32 0.15518523685053887
		 33 0.15522935983792874 34 0.15527284725599266 35 0.15531569810224977 36 0.15535791140582544 37 0.15539948622755118 38 0.15544042166006145 39 0.15548071682788767 40 0.15552037088754811 41 0.15555938302763572
		 42 0.15559775246890273 43 0.15563547846434111 44 0.15567256029926113 45 0.15570899729136567 46 0.1557447887908221 47 0.15577993418033054 48 0.1558144328751887 49 0.15584828432335462 50 0.15588148800550428
		 51 0.15591404343508741 52 0.15594595015838009 53 0.15597720775453261 54 0.15600781583561596 55 0.15603777404666352 56 0.15606708206571052 57 0.15609573960382916 58 0.15612374640516136 59 0.15615110224694773
		 60 0.15617780693955363 61 0.15620386032649092 62 0.15622926228443756 63 0.15625401272325345 64 0.15627811158599259 65 0.1563015588489125 66 0.15632435452147975 67 0.15634649864637273 68 0.15636799129948109
		 69 0.15638883258990044 70 0.15640902265992651 71 0.15642856168504304 72 0.15644744987390835 73 0.156465687468338 74 0.15648327474328372 75 0.15650021200680986 76 0.15651649960006564 77 0.15653213789725517
		 78 0.15654712730560327 79 0.15656146826531869 80 0.15657516124955317 81 0.15658820676435881 82 0.15660060534864062 83 0.15661235757410652 84 0.15662346404521443 85 0.15663392539911569 86 0.15664374230559541
		 87 0.15665291546700999 88 0.15666144561822049 89 0.15666933352652468 90 0.15667657999158369 91 0.15668318584534757 92 0.15668915195197641 93 0.15669447920775936 94 0.15669916854102928 95 0.15670322091207634
		 96 0.15670663731305634 97 0.1567094187678979 98 0.15671156633220551 99 0.1567130810931604 100 0.15671396416941752 101 0.15671421671100094;
createNode animCurveTL -n "locator8_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC000007AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  1 -0.23026361842197368 2 -0.23110561894299675 3 -0.23194580165259193 4 -0.23278419019662311 5 -0.23362080832945931
		 6 -0.23445567991314487 7 -0.23528882891655489 8 -0.23612027941453922 9 -0.23695005558705329 10 -0.23777818171827564 11 -0.23860468219571351 12 -0.23942958150929639 13 -0.24025290425045631 14 -0.24107467511119668
		 15 -0.24189491888314885 16 -0.24271366045661669 17 -0.24353092481961003 18 -0.24434673705686583 19 -0.24516112234885773 20 -0.24597410597079539 21 -0.24678571329161114 22 -0.2475959697729373 23 -0.24840490096807089
		 24 -0.24921253252092929 25 -0.2500188901649939 26 -0.25082399972224467 27 -0.25162788710208361 28 -0.25243057830024823 29 -0.25323209939771574 30 -0.25403247655959699 31 -0.25483173603402121 32 -0.25562990415101083
		 33 -0.2564270073213476 34 -0.25722307203543027 35 -0.25801812486212139 36 -0.25881219244758852 37 -0.25960530151413391 38 -0.26039747885901787 39 -0.26118875135327413 40 -0.26197914594051541 41 -0.26276868963573358
		 42 -0.2635574095240909 43 -0.26434533275970473 44 -0.26513248656442451 45 -0.26591889822660192 46 -0.26670459509985489 47 -0.26748960460182486 48 -0.26827395421292716 49 -0.26905767147509629 50 -0.26984078399052464
		 51 -0.27062331942039553 52 -0.2714053054836108 53 -0.27218676995551444 54 -0.27296774066660856 55 -0.27374824550126764 56 -0.27452831239644471 57 -0.27530796934037682 58 -0.2760872443712834 59 -0.2768661655760622
		 60 -0.27764476108898117 61 -0.27842305909036658 62 -0.27920108780528785 63 -0.27997887550223965 64 -0.28075645049182135 65 -0.28153384112541258 66 -0.28231107579384773 67 -0.28308818292608823 68 -0.28386519098789115
		 69 -0.28464212848047882 70 -0.28541902393920443 71 -0.28619590593221783 72 -0.28697280305912937 73 -0.2877497439496739 74 -0.2885267572623732 75 -0.28930387168319865 76 -0.29008111592423313 77 -0.29085851872233393
		 78 -0.29163610883779484 79 -0.29241391505300979 80 -0.29319196617113669 81 -0.29397029101476141 82 -0.29474891842456524 83 -0.29552787725799168 84 -0.29630719638791525 85 -0.29708690470131272 86 -0.29786703109793672
		 87 -0.29864760448899041 88 -0.2994286537958053 89 -0.30021020794852299 90 -0.30099229588477755 91 -0.30177494654838283 92 -0.30255818888802277 93 -0.30334205185594537 94 -0.30412656440665992 95 -0.30491175549563959
		 96 -0.30569765407802624 97 -0.30648428910734249 98 -0.30727168953420514 99 -0.30805988430504749 100 -0.308848902360842 101 -0.30963877263583339;
createNode animCurveTU -n "locator8_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-47CC000007AD";
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
connectAttr "locator1_MKR_translateX.o" "locator1_MKR.tx" -l on;
connectAttr "locator1_MKR_translateY.o" "locator1_MKR.ty" -l on;
connectAttr "locator1_MKR_enable.o" "locator1_MKR.enable" -l on;
connectAttr "locator1_MKR.enable" "locator1_MKR.lodv";
connectAttr "locator1_BND.msg" "locator1_MKR.bundle";
connectAttr "cameraShape1.olns" "locator1_MKR.ilns";
connectAttr "locator2_MKR_translateX.o" "locator2_MKR.tx" -l on;
connectAttr "locator2_MKR_translateY.o" "locator2_MKR.ty" -l on;
connectAttr "locator2_MKR_enable.o" "locator2_MKR.enable" -l on;
connectAttr "locator2_MKR.enable" "locator2_MKR.lodv";
connectAttr "locator2_BND.msg" "locator2_MKR.bundle";
connectAttr "cameraShape1.olns" "locator2_MKR.ilns";
connectAttr "locator3_MKR_translateX.o" "locator3_MKR.tx" -l on;
connectAttr "locator3_MKR_translateY.o" "locator3_MKR.ty" -l on;
connectAttr "locator3_MKR_enable.o" "locator3_MKR.enable" -l on;
connectAttr "locator3_MKR.enable" "locator3_MKR.lodv";
connectAttr "locator3_BND.msg" "locator3_MKR.bundle";
connectAttr "cameraShape1.olns" "locator3_MKR.ilns";
connectAttr "locator4_MKR_translateX.o" "locator4_MKR.tx" -l on;
connectAttr "locator4_MKR_translateY.o" "locator4_MKR.ty" -l on;
connectAttr "locator4_MKR_enable.o" "locator4_MKR.enable" -l on;
connectAttr "locator4_MKR.enable" "locator4_MKR.lodv";
connectAttr "locator4_BND.msg" "locator4_MKR.bundle";
connectAttr "cameraShape1.olns" "locator4_MKR.ilns";
connectAttr "locator5_MKR_translateX.o" "locator5_MKR.tx" -l on;
connectAttr "locator5_MKR_translateY.o" "locator5_MKR.ty" -l on;
connectAttr "locator5_MKR_enable.o" "locator5_MKR.enable" -l on;
connectAttr "locator5_MKR.enable" "locator5_MKR.lodv";
connectAttr "locator5_BND.msg" "locator5_MKR.bundle";
connectAttr "cameraShape1.olns" "locator5_MKR.ilns";
connectAttr "locator6_MKR_translateX.o" "locator6_MKR.tx" -l on;
connectAttr "locator6_MKR_translateY.o" "locator6_MKR.ty" -l on;
connectAttr "locator6_MKR_enable.o" "locator6_MKR.enable" -l on;
connectAttr "locator6_MKR.enable" "locator6_MKR.lodv";
connectAttr "locator6_BND.msg" "locator6_MKR.bundle";
connectAttr "cameraShape1.olns" "locator6_MKR.ilns";
connectAttr "locator7_MKR_translateX.o" "locator7_MKR.tx" -l on;
connectAttr "locator7_MKR_translateY.o" "locator7_MKR.ty" -l on;
connectAttr "locator7_MKR_enable.o" "locator7_MKR.enable" -l on;
connectAttr "locator7_MKR.enable" "locator7_MKR.lodv";
connectAttr "locator7_BND.msg" "locator7_MKR.bundle";
connectAttr "cameraShape1.olns" "locator7_MKR.ilns";
connectAttr "locator8_MKR_translateX.o" "locator8_MKR.tx" -l on;
connectAttr "locator8_MKR_translateY.o" "locator8_MKR.ty" -l on;
connectAttr "locator8_MKR_enable.o" "locator8_MKR.enable" -l on;
connectAttr "locator8_MKR.enable" "locator8_MKR.lodv";
connectAttr "locator8_BND.msg" "locator8_MKR.bundle";
connectAttr "cameraShape1.olns" "locator8_MKR.ilns";
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
// End of test_cube_d_marker_bundles.ma
