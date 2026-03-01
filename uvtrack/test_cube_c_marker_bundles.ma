//Maya ASCII 2024 scene
//Name: test_cube_c_marker_bundles.ma
//Last modified: Tue, Oct 07, 2025 09:46:26 AM
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
fileInfo "UUID" "E39FE080-002A-E4CF-68E4-46C200000732";
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006C5";
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006CA";
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
	setAttr ".t" -type "double3" -0.22435942307782053 0.3365391346167308 -1 ;
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006CB";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator2_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006D3";
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
	setAttr ".t" -type "double3" 0.22435942307782053 0.3365391346167308 -1 ;
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006D4";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator3_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006DC";
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
	setAttr ".t" -type "double3" -0.22435942307782053 -0.3365391346167308 -1 ;
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006DD";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator4_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006E5";
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
	setAttr ".t" -type "double3" 0.22435942307782053 -0.3365391346167308 -1 ;
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006E6";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator5_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006EE";
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
	setAttr ".t" -type "double3" -0.15350907894798249 0.23026361842197374 -1 ;
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006EF";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator6_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006F7";
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
	setAttr ".t" -type "double3" 0.15350907894798249 0.23026361842197374 -1 ;
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006F8";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator7_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-468500000700";
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
	setAttr ".t" -type "double3" -0.15350907894798249 -0.23026361842197368 -1 ;
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
	rename -uid "E39FE080-002A-E4CF-68E4-468500000701";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "locator8_MKR" -p "markerGroup1";
	rename -uid "E39FE080-002A-E4CF-68E4-468500000709";
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
	setAttr ".t" -type "double3" 0.15350907894798249 -0.23026361842197368 -1 ;
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
	rename -uid "E39FE080-002A-E4CF-68E4-46850000070A";
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006C7";
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006C8";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator1_BNDLocatorShape" -p "locator1_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006C9";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator2_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006D0";
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006D1";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator2_BNDLocatorShape" -p "locator2_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006D2";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator3_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006D9";
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006DA";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator3_BNDLocatorShape" -p "locator3_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006DB";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator4_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006E2";
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006E3";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator4_BNDLocatorShape" -p "locator4_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006E4";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator5_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006EB";
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006EC";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator5_BNDLocatorShape" -p "locator5_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006ED";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator6_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006F4";
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006F5";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator6_BNDLocatorShape" -p "locator6_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006F6";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator7_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006FD";
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006FE";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator7_BNDLocatorShape" -p "locator7_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006FF";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "locator8_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-468500000706";
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
	rename -uid "E39FE080-002A-E4CF-68E4-468500000707";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "locator8_BNDLocatorShape" -p "locator8_BND";
	rename -uid "E39FE080-002A-E4CF-68E4-468500000708";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E39FE080-002A-E4CF-68E4-45F4000006B0";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "E39FE080-002A-E4CF-68E4-45F4000006B1";
createNode displayLayer -n "defaultLayer";
	rename -uid "4EC5E080-001A-42ED-68DC-56030000029A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E39FE080-002A-E4CF-68E4-45F4000006B3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4EC5E080-001A-42ED-68DC-56040000029C";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E39FE080-002A-E4CF-68E4-45F4000006B5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E39FE080-002A-E4CF-68E4-45F4000006B6";
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
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006C4";
createNode mmMarkerScale -n "mmMarkerScale1";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006C6";
	setAttr ".ovrscnmd" 1;
createNode animCurveTL -n "locator1_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006CC";
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
createNode animCurveTL -n "locator1_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006CD";
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
createNode animCurveTU -n "locator1_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator2_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006D5";
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
createNode animCurveTL -n "locator2_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006D6";
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
createNode animCurveTU -n "locator2_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator3_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006DE";
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
createNode animCurveTL -n "locator3_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006DF";
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
createNode animCurveTU -n "locator3_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator4_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006E7";
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
createNode animCurveTL -n "locator4_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006E8";
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
createNode animCurveTU -n "locator4_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator5_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006F0";
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
createNode animCurveTL -n "locator5_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006F1";
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
createNode animCurveTU -n "locator5_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator6_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006F9";
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
createNode animCurveTL -n "locator6_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006FA";
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
createNode animCurveTU -n "locator6_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-4685000006FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator7_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-468500000702";
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
createNode animCurveTL -n "locator7_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-468500000703";
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
createNode animCurveTU -n "locator7_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-468500000704";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
createNode animCurveTL -n "locator8_MKR_translateX";
	rename -uid "E39FE080-002A-E4CF-68E4-46850000070B";
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
createNode animCurveTL -n "locator8_MKR_translateY";
	rename -uid "E39FE080-002A-E4CF-68E4-46850000070C";
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
createNode animCurveTU -n "locator8_MKR_enable";
	rename -uid "E39FE080-002A-E4CF-68E4-46850000070D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 1 101 1 102 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
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
// End of test_cube_c_marker_bundles.ma
