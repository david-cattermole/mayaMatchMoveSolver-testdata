//Maya ASCII 2024 scene
//Name: test_cube_a_marker_bundles.ma
//Last modified: Wed, Oct 01, 2025 01:22:40 PM
//Codeset: UTF-8
requires maya "2024";
requires -nodeType "mmMarkerScale" -nodeType "mmLensModelToggle" -nodeType "mmMarkerShape"
		 -nodeType "mmBundleShape" -nodeType "mmMarkerGroupTransform" -nodeType "mmMarkerTransform"
		 -dataType "MMLensData" "mmSolver" "0.6.1";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Linux 5.14.0-570.41.1.el9_6.x86_64 #1 SMP PREEMPT_DYNAMIC Thu Sep 11 06:52:33 EDT 2025 x86_64";
fileInfo "UUID" "C4A7D080-001A-BB27-68DC-9E8000000369";
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
	rename -uid "4EC5E080-001A-42ED-68DC-592400000337";
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000304";
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
	setAttr ".t" -type "double3" -0.2333664297082978 0.31238969781581705 -1 ;
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000305";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator2_MKR" -p "markerGroup1";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D0000030D";
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
	setAttr ".t" -type "double3" 0.19107051130783159 0.34293618314157204 -1 ;
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D0000030E";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator3_MKR" -p "markerGroup1";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000316";
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
	setAttr ".t" -type "double3" -0.2333664297082978 -0.31238969781581705 -1 ;
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000317";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator4_MKR" -p "markerGroup1";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D0000031F";
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
	setAttr ".t" -type "double3" 0.19107051130783159 -0.34293618314157204 -1 ;
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000320";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator5_MKR" -p "markerGroup1";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000328";
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
	setAttr ".t" -type "double3" -0.10342579889232878 0.22013888761950295 -1 ;
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000329";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator6_MKR" -p "markerGroup1";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000331";
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
	setAttr ".t" -type "double3" 0.19598019400984101 0.23488231014653826 -1 ;
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000332";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator7_MKR" -p "markerGroup1";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E0000033A";
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
	setAttr ".t" -type "double3" -0.10342579889232878 -0.22013888761950295 -1 ;
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E0000033B";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator8_MKR" -p "markerGroup1";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000343";
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
	setAttr ".t" -type "double3" 0.19598019400984101 -0.23488231014653826 -1 ;
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000344";
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000301";
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000302";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator1_BNDLocatorShape" -p "locator1_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000303";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator2_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D0000030A";
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D0000030B";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator2_BNDLocatorShape" -p "locator2_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D0000030C";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator3_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000313";
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000314";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator3_BNDLocatorShape" -p "locator3_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000315";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator4_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D0000031C";
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D0000031D";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator4_BNDLocatorShape" -p "locator4_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D0000031E";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator5_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000325";
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000326";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator5_BNDLocatorShape" -p "locator5_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000327";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator6_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E0000032E";
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E0000032F";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator6_BNDLocatorShape" -p "locator6_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000330";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator7_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000337";
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000338";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator7_BNDLocatorShape" -p "locator7_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000339";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator8_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000340";
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
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000341";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator8_BNDLocatorShape" -p "locator8_BND";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000342";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C4A7D080-001A-BB27-68DC-9BB1000002A2";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "C4A7D080-001A-BB27-68DC-9BB1000002A3";
createNode displayLayer -n "defaultLayer";
	rename -uid "4EC5E080-001A-42ED-68DC-56030000029A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C4A7D080-001A-BB27-68DC-9BB1000002A5";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4EC5E080-001A-42ED-68DC-56040000029C";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C4A7D080-001A-BB27-68DC-9BB1000002A7";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C4A7D080-001A-BB27-68DC-9BB1000002A8";
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
	rename -uid "4EC5E080-001A-42ED-68DC-590600000335";
	addAttr -ci true -sn "data" -ln "data" -dt "string";
	setAttr -l on ".data" -type "string" "{\"mmSolver_convertmarker_frameStart\": 1, \"mmSolver_convertmarker_frameEnd\": 101, \"mmSolver_convertmarker_deleteStaticAnimCurves\": true, \"mmSolver_convertmarker_bundlePositionMode\": \"source\"}";
createNode mmLensModelToggle -n "lensDistortionToggle1";
	rename -uid "4EC5E080-001A-42ED-68DC-592400000336";
createNode mmMarkerScale -n "mmMarkerScale1";
	rename -uid "4EC5E080-001A-42ED-68DC-59240000033C";
	setAttr ".ovrscnmd" 1;
createNode animCurveTL -n "locator1_MKR_translateX";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000306";
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
createNode animCurveTL -n "locator1_MKR_translateY";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000307";
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
createNode animCurveTU -n "locator1_MKR_enable";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000308";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator2_MKR_translateX";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D0000030F";
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
createNode animCurveTL -n "locator2_MKR_translateY";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000310";
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
createNode animCurveTU -n "locator2_MKR_enable";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000311";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator3_MKR_translateX";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000318";
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
createNode animCurveTL -n "locator3_MKR_translateY";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000319";
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
createNode animCurveTU -n "locator3_MKR_enable";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D0000031A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator4_MKR_translateX";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000321";
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
createNode animCurveTL -n "locator4_MKR_translateY";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000322";
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
createNode animCurveTU -n "locator4_MKR_enable";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1D00000323";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator5_MKR_translateX";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E0000032A";
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
createNode animCurveTL -n "locator5_MKR_translateY";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E0000032B";
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
createNode animCurveTU -n "locator5_MKR_enable";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E0000032C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator6_MKR_translateX";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000333";
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
createNode animCurveTL -n "locator6_MKR_translateY";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000334";
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
createNode animCurveTU -n "locator6_MKR_enable";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000335";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator7_MKR_translateX";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E0000033C";
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
createNode animCurveTL -n "locator7_MKR_translateY";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E0000033D";
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
createNode animCurveTU -n "locator7_MKR_enable";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E0000033E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator8_MKR_translateX";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000345";
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
createNode animCurveTL -n "locator8_MKR_translateY";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000346";
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
createNode animCurveTU -n "locator8_MKR_enable";
	rename -uid "C4A7D080-001A-BB27-68DC-9E1E00000347";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
select -ne :time1;
	setAttr ".o" 41;
	setAttr ".unw" 41;
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "camera1_translateX.o" "camera1.tx";
connectAttr "camera1_translateY.o" "camera1.ty";
connectAttr "camera1_translateZ.o" "camera1.tz";
connectAttr "camera1_rotateX.o" "camera1.rx";
connectAttr "camera1_rotateY.o" "camera1.ry";
connectAttr "camera1_rotateZ.o" "camera1.rz";
connectAttr "lensDistortionToggle1.olns" "cameraShape1.olns";
connectAttr "mmMarkerScale1.ot" "markerGroup1.t";
connectAttr "mmMarkerScale1.os" "markerGroup1.s";
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
// End of test_cube_a_marker_bundles.ma
