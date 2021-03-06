//Maya ASCII 2017 scene
//Name: mmSolverBasicSolveB_before.ma
//Last modified: Mon, May 27, 2019 12:38:59 PM
//Codeset: 1252
requires maya "2017";
requires -nodeType "mmMarkerScale" -nodeType "mmMarkerGroupTransform" "mmSolver" "0.3.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "FB43A6D8-4319-342F-1CAC-81A3449C67EC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 176.24678061862812 114.61271306620876 155.60184438602252 ;
	setAttr ".r" -type "double3" -14.738352729588971 738.59999999953891 -4.1947941182998678e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3AC6521B-429C-3409-D303-D59F48C29207";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 16.512388824319082;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 171.15328979492187 110.41187286376953 140.46684265136719 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A05E877E-4AB6-B8BA-03FC-3B9851625C9C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 200.92988586425781 1034.5248437607652 148.5814208984377 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "734EAA49-43D7-29AE-A1B0-2095E16305D6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 924.25005585793303;
	setAttr ".ow" 28.41874347854451;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 200.92988586425781 110.27478790283203 148.5814208984375 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "582051A3-4F67-2AB3-575B-079EF728246D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "88D22A64-4309-6060-B6DB-EBA7F7215D8E";
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
	rename -uid "780F0A75-4D94-369E-1EEE-38AB9296F8CB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "41D8D49C-43F6-47F0-2836-32A39C3AD921";
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
	rename -uid "A39AC190-4AE0-545D-666F-589A021FACED";
	setAttr ".ro" 2;
createNode transform -n "stA_1_1" -p "Scene";
	rename -uid "3F773B4D-417F-2B5D-9EED-9EAB42895B86";
	addAttr -ci true -sn "center3D" -ln "center3D" -dt "string";
	setAttr ".v" no;
	setAttr ".ro" 2;
	setAttr -l on ".center3D" -type "string" "2622433293424";
createNode camera -n "stA_1_1Shape1" -p "stA_1_1";
	rename -uid "439C1AE7-4925-4E48-CAAF-DF898FB671D8";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.1049601408519589 0.73511811023621998 ;
	setAttr ".ff" 3;
	setAttr ".pn" -type "double2" -0.42061807030296439 -0.094755790284145228 ;
	setAttr ".zom" 0.089242743777235387;
	setAttr ".fl" 31.731086621004309;
	setAttr ".ncp" 0.01;
	setAttr ".sa" 180;
	setAttr ".coi" 271.62186165334509;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "stA_1_1";
	setAttr ".den" -type "string" "stA_1_1_depth";
	setAttr ".man" -type "string" "stA_1_1_mask";
	setAttr ".dst" yes;
createNode transform -n "imagePlane1" -p "stA_1_1Shape1";
	rename -uid "827BBEA7-413E-02B8-03A0-5C88959BBBC9";
	setAttr ".t" -type "double3" 0 -0.84878654637999063 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "3BD23DA2-4D52-9FED-677B-AB87AAD65333";
	setAttr -k off ".v";
	setAttr ".fc" 204;
	setAttr ".imn" -type "string" "C:/Users/Anil Reddy/Documents/maya/projects/mmSolver//images/stA_undistored/stAUndistored.0000.jpeg";
	setAttr ".ufe" yes;
	setAttr ".cov" -type "short2" 1936 1288 ;
	setAttr ".f" 4;
	setAttr ".dic" yes;
	setAttr ".d" 4500;
	setAttr ".s" -type "double2" 1.1049601408519589 0.73511811023621998 ;
	setAttr ".w" 19.36;
	setAttr ".h" 12.879999999999999;
	setAttr ".cs" -type "string" "sRGB";
createNode mmMarkerGroupTransform -n "markerGroup1" -p "stA_1_1";
	rename -uid "5E9DFBA8-4A1F-CE27-0A61-8FBE06D996C7";
	addAttr -ci true -sn "depth" -ln "depth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "overscan" -ln "overscan" -dv 1 -min 0 -at "double";
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
	setAttr -k on ".overscan";
createNode transform -n "marker_01_MKR" -p "markerGroup1";
	rename -uid "1B59742F-4879-C660-CE6D-38943BEDC465";
	addAttr -ci true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	setAttr ".t" -type "double3" -0.32484366183882968 0.42322533583057953 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".enable";
	setAttr -cb on ".weight";
	setAttr -l on ".markerName" -type "string" "01";
	setAttr -l on ".markerId" 1;
createNode locator -n "marker_01_MKRShape" -p "marker_01_MKR";
	rename -uid "CB3DC949-4F12-632E-E09D-668A8FF7E843";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.01 0.01 0 ;
	setAttr -l on ".lsz";
createNode transform -n "marker_04_MKR" -p "markerGroup1";
	rename -uid "DEC7D0C9-4E23-1B47-9EEE-9D8780F92F0C";
	addAttr -ci true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	setAttr ".t" -type "double3" -0.15130147992123527 0.22245005840519005 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".enable";
	setAttr -cb on ".weight";
	setAttr -l on ".markerName" -type "string" "04";
	setAttr -l on ".markerId" 4;
createNode locator -n "marker_04_MKRShape" -p "marker_04_MKR";
	rename -uid "A7503760-4AF4-E108-5C32-488E000B0B54";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.01 0.01 0 ;
	setAttr -l on ".lsz";
createNode transform -n "marker_05_MKR" -p "markerGroup1";
	rename -uid "7943249A-4265-4FCE-1C88-9ABFDCE0BFEE";
	addAttr -ci true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	setAttr ".t" -type "double3" -0.24657416722529008 -0.053944369020691219 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".enable";
	setAttr -cb on ".weight";
	setAttr -l on ".markerName" -type "string" "05";
	setAttr -l on ".markerId" 5;
createNode locator -n "marker_05_MKRShape" -p "marker_05_MKR";
	rename -uid "2213E1B4-4C82-93B3-FE1F-DFAD894B232C";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.01 0.01 0 ;
	setAttr -l on ".lsz";
createNode transform -n "marker_06_MKR" -p "markerGroup1";
	rename -uid "F60B9422-4AAF-06A3-0D03-23B42C5677EA";
	addAttr -ci true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	setAttr ".t" -type "double3" -0.037750264146105883 0.057411586431266204 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".enable";
	setAttr -cb on ".weight";
	setAttr -l on ".markerName" -type "string" "06";
	setAttr -l on ".markerId" 6;
createNode locator -n "marker_06_MKRShape" -p "marker_06_MKR";
	rename -uid "11811075-4E22-0ECD-B9FF-65A4A20330D9";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.01 0.01 0 ;
	setAttr -l on ".lsz";
createNode transform -n "marker_07_MKR" -p "markerGroup1";
	rename -uid "7DBE770C-401C-2917-E0EE-73BAD80E27D8";
	addAttr -ci true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	setAttr ".t" -type "double3" 0.031911398950594583 0.056112083334409424 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".enable";
	setAttr -cb on ".weight";
	setAttr -l on ".markerName" -type "string" "07";
	setAttr -l on ".markerId" 7;
createNode locator -n "marker_07_MKRShape" -p "marker_07_MKR";
	rename -uid "1BD1A6E3-46EE-F92A-8DC7-52B14B367319";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.01 0.01 0 ;
	setAttr -l on ".lsz";
createNode transform -n "marker_09_MKR" -p "markerGroup1";
	rename -uid "27675ED0-46BB-264F-1CD0-C594A6BEFA5A";
	addAttr -ci true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	setAttr ".t" -type "double3" 0.022401481450141647 -0.076204488985391894 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".enable";
	setAttr -cb on ".weight";
	setAttr -l on ".markerName" -type "string" "09";
	setAttr -l on ".markerId" 9;
createNode locator -n "marker_09_MKRShape" -p "marker_09_MKR";
	rename -uid "0F535BE4-4E32-1D32-D676-94BB7CABC42F";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.01 0.01 0 ;
	setAttr -l on ".lsz";
createNode transform -n "marker_10_MKR" -p "markerGroup1";
	rename -uid "DEF88881-4E4A-D5AC-FAA7-EFAD0F6D003B";
	addAttr -ci true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	setAttr ".t" -type "double3" -0.15215034079692413 -0.1150341464281362 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".enable";
	setAttr -cb on ".weight";
	setAttr -l on ".markerName" -type "string" "10";
	setAttr -l on ".markerId" 10;
createNode locator -n "marker_10_MKRShape" -p "marker_10_MKR";
	rename -uid "9968F06A-4D52-DF79-D95C-E0934F485E2B";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.01 0.01 0 ;
	setAttr -l on ".lsz";
createNode transform -n "marker_11_MKR" -p "markerGroup1";
	rename -uid "389DDA50-4B0F-F0FA-2526-A7AB5E6583B7";
	addAttr -ci true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	setAttr ".t" -type "double3" -0.24622006567282789 -0.11343313886655992 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".enable";
	setAttr -cb on ".weight";
	setAttr -l on ".markerName" -type "string" "11";
	setAttr -l on ".markerId" 11;
createNode locator -n "marker_11_MKRShape" -p "marker_11_MKR";
	rename -uid "6B8B0DA6-4FBF-B1AD-E12D-7FB9A8A1ED77";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.01 0.01 0 ;
	setAttr -l on ".lsz";
createNode transform -n "marker_12_MKR" -p "markerGroup1";
	rename -uid "9DEE54B1-4D44-7830-7995-CF815FC039B7";
	addAttr -ci true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	setAttr ".t" -type "double3" -0.36855483639563408 -0.15292804008557342 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".enable";
	setAttr -cb on ".weight";
	setAttr -l on ".markerName" -type "string" "12";
	setAttr -l on ".markerId" 12;
createNode locator -n "marker_12_MKRShape" -p "marker_12_MKR";
	rename -uid "36264DD2-4033-4920-2D80-C285B3AFF628";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.01 0.01 0 ;
	setAttr -l on ".lsz";
createNode transform -n "marker_13_MKR" -p "markerGroup1";
	rename -uid "B2543922-4934-2B5D-042A-84BDA473714D";
	addAttr -ci true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	setAttr ".t" -type "double3" 0.1113721384641253 -0.2604872806040629 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".enable";
	setAttr -cb on ".weight";
	setAttr -l on ".markerName" -type "string" "13";
	setAttr -l on ".markerId" 13;
createNode locator -n "marker_13_MKRShape" -p "marker_13_MKR";
	rename -uid "69F25E92-4FC5-E0BF-DC18-67B4D1EC47B0";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.01 0.01 0 ;
	setAttr -l on ".lsz";
createNode transform -n "marker_14_MKR" -p "markerGroup1";
	rename -uid "F09CDC69-4A24-E581-D1C3-EBA380E73B17";
	addAttr -ci true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	setAttr ".t" -type "double3" 0.20609668250246571 0.22876943661750371 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".enable";
	setAttr -cb on ".weight";
	setAttr -l on ".markerName" -type "string" "14";
	setAttr -l on ".markerId" 14;
createNode locator -n "marker_14_MKRShape" -p "marker_14_MKR";
	rename -uid "43E8FA1B-4400-2DF0-1904-22B9ACFBF45C";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.01 0.01 0 ;
	setAttr -l on ".lsz";
createNode transform -n "marker_15_MKR" -p "markerGroup1";
	rename -uid "7B4E35B5-4B5C-1181-8BC2-B180AC60423D";
	addAttr -ci true -sn "enable" -ln "enable" -dv 1 -min 0 -max 1 -at "short";
	addAttr -ci true -sn "weight" -ln "weight" -dv 1 -min 0 -at "double";
	addAttr -s false -ci true -sn "bundle" -ln "bundle" -at "message";
	addAttr -ci true -sn "markerName" -ln "markerName" -dt "string";
	addAttr -ci true -sn "markerId" -ln "markerId" -dv -1 -at "long";
	setAttr ".t" -type "double3" 0.42208157623760933 0.24682736460003041 -1 ;
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -cb on ".enable";
	setAttr -cb on ".weight";
	setAttr -l on ".markerName" -type "string" "15";
	setAttr -l on ".markerId" 15;
createNode locator -n "marker_15_MKRShape" -p "marker_15_MKR";
	rename -uid "90595D32-42A0-B327-AD2A-E7872A758D01";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 1 0 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.01 0.01 0 ;
	setAttr -l on ".lsz";
createNode transform -n "group1";
	rename -uid "6293E239-4404-59B3-01A6-A4A5DF5F8A51";
	setAttr ".t" -type "double3" 0.029842399999999998 -1.2389600000000003 0.053267999999999996 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
createNode transform -n "pCone1" -p "group1";
	rename -uid "F54B1A58-4226-FD8C-8CC5-B593BAE96CEC";
	setAttr ".t" -type "double3" -131.53352965448445 237.61030543568307 11.109651649391916 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 3.5602286928273954 3.5602286928273954 3.5602286928273954 ;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".rpt" -type "double3" 0 -4 2.4492935982947064e-016 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "pConeShape1" -p "pCone1";
	rename -uid "8202A329-4C73-C815-9FF3-21AE8BB00D27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCone2" -p "group1";
	rename -uid "DF4328EE-4DD2-4A03-56CC-4D81D6CB599B";
	setAttr ".t" -type "double3" -56.497170072566888 166.42783263469721 -41.250377387923443 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 3.5602286928273954 3.5602286928273954 3.5602286928273954 ;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".rpt" -type "double3" 0 -4 2.4492935982947064e-016 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "pConeShape2" -p "pCone2";
	rename -uid "1E2D453F-4096-8F16-D212-159042E7C829";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCone3" -p "group1";
	rename -uid "3E4D0D2D-47B9-EE7A-7603-6B8B27B79585";
	setAttr ".t" -type "double3" 80.29637353459438 87.67167427909969 139.12827890245953 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 3.5602286928273954 3.5602286928273954 3.5602286928273954 ;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".rpt" -type "double3" 0 -4 2.4492935982947064e-016 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "pConeShape3" -p "pCone3";
	rename -uid "AEE4E9D1-4E8E-0B28-0712-A1A8DE9F94AF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCone6" -p "group1";
	rename -uid "FABDFD1F-4C8B-9724-4908-5394434E9552";
	setAttr ".t" -type "double3" 201.34560047964396 90.122029971770289 153.21407567688647 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 3.5602286928273954 3.5602286928273954 3.5602286928273954 ;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".rpt" -type "double3" 0 -4 2.4492935982947064e-016 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "pConeShape6" -p "pCone6";
	rename -uid "1302B672-4C96-629B-6D1E-F9B34D991F8B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCone7" -p "group1";
	rename -uid "02881EE9-48BB-C443-1CE7-AA9A657E38D0";
	setAttr ".t" -type "double3" 106.68913251438128 74.305623701853833 122.07680547806083 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 3.5602286928273954 3.5602286928273954 3.5602286928273954 ;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".rpt" -type "double3" 0 -4 2.4492935982947064e-016 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "pConeShape7" -p "pCone7";
	rename -uid "9EC6E639-4E6E-14E9-DC45-AD9F0048E19E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCone8" -p "group1";
	rename -uid "10409FE8-4977-5EE2-1DEF-A5A2442CB483";
	setAttr ".t" -type "double3" 80.206053818974894 74.558640332098662 139.24341529395653 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 3.5602286928273954 3.5602286928273954 3.5602286928273954 ;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".rpt" -type "double3" 0 -4 2.4492935982947064e-016 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "pConeShape8" -p "pCone8";
	rename -uid "9F59F481-4A0E-2647-F271-3C948FBA998D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCone9" -p "group1";
	rename -uid "7A7C33C2-4238-683C-CAA3-4BAF3F967794";
	setAttr ".t" -type "double3" 76.294315964981479 70.512724364149221 182.81382837550873 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 3.5602286928273954 3.5602286928273954 3.5602286928273954 ;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".rpt" -type "double3" 0 -4 2.4492935982947064e-016 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "pConeShape9" -p "pCone9";
	rename -uid "C63FEDAA-4593-6318-32E5-AA8501E14E38";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCone10" -p "group1";
	rename -uid "DC223341-4385-28D1-7E6C-8C96F0EF743E";
	setAttr ".t" -type "double3" 250.03195302334132 70.303517316458581 188.46460693145971 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 3.5602286928273954 3.5602286928273954 3.5602286928273954 ;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".rpt" -type "double3" 0 -4 2.4492935982947064e-016 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "pConeShape10" -p "pCone10";
	rename -uid "5BB731A6-4D97-FE53-CA01-BCB729C03ECD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCone11" -p "group1";
	rename -uid "ED231AF8-4077-DF75-4C80-6ABFFA105F40";
	setAttr ".t" -type "double3" 128.83635752818157 160.64715419316161 -85.33241488852704 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 3.5602286928273954 3.5602286928273954 3.5602286928273954 ;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".rpt" -type "double3" 0 -4 2.4492935982947064e-016 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "pConeShape11" -p "pCone11";
	rename -uid "4BDD15F8-4851-1AF3-F4E9-0289D554CAB6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCone12" -p "group1";
	rename -uid "5FF634CF-4942-3346-FADC-9781EE988370";
	setAttr ".t" -type "double3" 230.68729674934036 158.37655467905734 -70.030304189523946 ;
	setAttr ".r" -type "double3" 180 0 0 ;
	setAttr ".s" -type "double3" 3.5602286928273954 3.5602286928273954 3.5602286928273954 ;
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".rpt" -type "double3" 0 -4 2.4492935982947064e-016 ;
	setAttr ".sp" -type "double3" 0 2 0 ;
createNode mesh -n "pConeShape12" -p "pCone12";
	rename -uid "D81E4373-4FA1-ED3E-0AD7-6EB8B3B59623";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "bundle_01_BND";
	rename -uid "520F7106-4C88-DD13-06B0-5286DDDA98C1";
	setAttr ".t" -type "double3" -131.50369262695312 234.37135314941406 11.162919998168945 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode locator -n "bundle_01_BNDShape" -p "bundle_01_BND";
	rename -uid "3AAA2E8F-4420-7384-B651-568CD963C601";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "bundle_04_BND";
	rename -uid "24FDC766-415B-5D0E-8117-9881ACF68371";
	setAttr ".t" -type "double3" -56.467327117919922 163.18887329101562 -41.197109222412109 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode locator -n "bundle_04_BNDShape" -p "bundle_04_BND";
	rename -uid "3A314792-4860-CDE2-8F4C-4FBAA4795FA4";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "bundle_05_BND";
	rename -uid "54F27C9D-4599-B4D7-C249-1193B4313425";
	setAttr ".t" -type "double3" 80.326217651367188 84.432708740234375 139.18154907226562 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode locator -n "bundle_05_BNDShape" -p "bundle_05_BND";
	rename -uid "3C12B12C-42FB-481A-46D1-48BACD84DE80";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "bundle_06_BND";
	rename -uid "CABBBBE7-456B-85CF-5B16-B085172D0345";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode locator -n "bundle_06_BNDShape" -p "bundle_06_BND";
	rename -uid "14AC7611-4555-02BB-59CE-6985FACC2D9C";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "bundle_07_BND";
	rename -uid "02616E6B-44A8-AA16-3C7D-95B38CF9FB76";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode locator -n "bundle_07_BNDShape" -p "bundle_07_BND";
	rename -uid "E6ED2F11-422D-D787-0BAE-DFBC12F18315";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "bundle_09_BND";
	rename -uid "1CD1F288-42E0-5604-4AB5-19B7D6845D44";
	setAttr ".t" -type "double3" 201.37544250488281 86.883064270019531 153.26734924316406 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode locator -n "bundle_09_BNDShape" -p "bundle_09_BND";
	rename -uid "CA895005-42B8-CC10-56AE-BFB41FF9FE48";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "bundle_10_BND";
	rename -uid "92C4A01B-468F-9892-2202-C3A36C4CA81C";
	setAttr ".t" -type "double3" 106.71897125244141 71.066658020019531 122.13007354736328 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode locator -n "bundle_10_BNDShape" -p "bundle_10_BND";
	rename -uid "4CAF3785-4AD1-4E07-AE18-528A2091A77E";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "bundle_11_BND";
	rename -uid "9B6827B7-4110-E80A-ACEE-838CA2455F63";
	setAttr ".t" -type "double3" 80.235893249511719 71.319679260253906 139.29667663574219 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode locator -n "bundle_11_BNDShape" -p "bundle_11_BND";
	rename -uid "650DDC6A-4563-6523-9592-4F9A67A80E64";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "bundle_12_BND";
	rename -uid "F270EFFA-4457-164A-99F4-9BB313EFCDA3";
	setAttr ".t" -type "double3" 76.32415771484375 67.273757934570313 182.86709594726562 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode locator -n "bundle_12_BNDShape" -p "bundle_12_BND";
	rename -uid "A4FD970A-47A2-F310-F1CD-5C97859DDA13";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "bundle_13_BND";
	rename -uid "A494FFD2-44DA-3CB2-5B3C-AEB58EE2228A";
	setAttr ".t" -type "double3" 250.06179809570312 67.064552307128906 188.51786804199219 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode locator -n "bundle_13_BNDShape" -p "bundle_13_BND";
	rename -uid "DE023E50-4B14-153E-EB49-D39E4BC661DA";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "bundle_14_BND";
	rename -uid "4CFE74E2-4F1D-938C-199D-278ED50343EB";
	setAttr ".t" -type "double3" 128.86619567871094 157.408203125 -85.279144287109375 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode locator -n "bundle_14_BNDShape" -p "bundle_14_BND";
	rename -uid "67C83FE5-4AD0-4B72-D2D1-F19F5D2DFD08";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "bundle_15_BND";
	rename -uid "4512BA0F-4903-B22E-EBB8-BBB3E56282A5";
	setAttr ".t" -type "double3" 230.71713256835937 155.13760375976562 -69.977035522460938 ;
	setAttr -l on ".tz";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on ".shxy";
	setAttr -l on ".shxz";
	setAttr -l on ".shyz";
createNode locator -n "bundle_15_BNDShape" -p "bundle_15_BND";
	rename -uid "B96DB5B6-4638-9309-3376-2D946491E75D";
	setAttr -k off ".v";
	setAttr ".wfcc" -type "float3" 0 1 0 ;
	setAttr ".uoc" 2;
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BDD3EE56-4E3A-6E06-45C0-27939EFED48D";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D475F5CA-4569-A4A8-7552-F0A95BB8B17D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C7336144-4E1C-38D7-18D9-A1BBE88548B5";
createNode displayLayerManager -n "layerManager";
	rename -uid "36102680-44F2-0A16-F050-15B764F582FD";
createNode displayLayer -n "defaultLayer";
	rename -uid "0A04AF97-4C32-777C-5572-D2AE724D9AA7";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2ACDF55B-425D-71E9-F3D7-7F829A9F44E8";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7BAD6C14-40FE-6050-DF8A-E5BF3BCE44F0";
	setAttr ".g" yes;
createNode lambert -n "lambert2";
	rename -uid "62880979-496A-5FD8-5795-A987B648C487";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "405984CC-4F14-9574-E69C-519BB879D181";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "2AD56A06-4255-4A5B-AA4D-5087E2A1B2E9";
createNode lambert -n "lambert3";
	rename -uid "06879381-48E0-95AE-3669-9097170D34E2";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "C6C2AF37-4FFF-A5B3-F45E-C8BC68F25B9F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "E79E7848-4A09-064B-B9EF-28B49B019CFD";
createNode script -n "mmSolver_data_node1";
	rename -uid "50B1B49A-4B63-A03B-89FC-DE8D730284FF";
	addAttr -ci true -sn "mmSolver_data" -ln "mmSolver_data" -dt "string";
	setAttr -l on ".mmSolver_data" -type "string" "{\"active_collection_uid\": \"112677C4-47D0-0E61-6A44-B78F901A10CF\"}";
createNode objectSet -n "collection1";
	rename -uid "4523B01A-4183-C639-0E77-74B4934EF81E";
	addAttr -ci true -sn "solver_list" -ln "solver_list" -dt "string";
	addAttr -ci true -sn "solver_step_list" -ln "solver_step_list" -dt "string";
	addAttr -ci true -sn "override_current_frame" -ln "override_current_frame" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "object_toggle_camera" -ln "object_toggle_camera" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "object_toggle_marker" -ln "object_toggle_marker" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "object_toggle_bundle" -ln "object_toggle_bundle" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dsm";
	setAttr -s 12 ".dnsm";
	setAttr -l on ".solver_list" -type "string" (
		"[{\"enabled\": true, \"frame_list\": [{\"number\": 0, \"tags\": [\"normal\"]}], \"name\": \"974b133d-445d-4898-b29c-1ba8799ff6b3\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 5, \"tags\": [\"normal\"]}], \"name\": \"d600d90a-faa9-493e-8e6a-1cb8879db2e4\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 10, \"tags\": [\"normal\"]}], \"name\": \"da40458b-56d3-48ed-8090-950f4a7600a3\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 15, \"tags\": [\"normal\"]}], \"name\": \"4e4eec86-56d1-42ba-95fe-c43a22c0b565\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 20, \"tags\": [\"normal\"]}], \"name\": \"1bd1468a-f4c9-4b5f-97bb-30fceebbf3a0\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 25, \"tags\": [\"normal\"]}], \"name\": \"4361146c-94d9-406d-bf18-81f9f39e0101\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 30, \"tags\": [\"normal\"]}], \"name\": \"27b1b1cc-96aa-42ea-89ed-2d02bf9b5a69\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 35, \"tags\": [\"normal\"]}], \"name\": \"08946ef0-132f-41c7-ba3a-8bcb30970151\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 40, \"tags\": [\"normal\"]}], \"name\": \"57a64cf2-37bf-406a-b578-f9bb04991616\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 45, \"tags\": [\"normal\"]}], \"name\": \"f7b1d839-70f2-48e7-84ea-a828d31f154a\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 50, \"tags\": [\"normal\"]}], \"name\": \"a725d8d8-a1f5-4808-9726-fb303f7821dc\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 55, \"tags\": [\"normal\"]}], \"name\": \"5fb2a68d-0eaa-4a5a-9850-7209895e1e46\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 60, \"tags\": [\"normal\"]}], \"name\": \"de9ca501-36c4-49e8-b200-000cd74768c5\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 65, \"tags\": [\"normal\"]}], \"name\": \"4493d7a3-0075-49e0-ad04-e1c61dc6de3e\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 70, \"tags\": [\"normal\"]}], \"name\": \"d7c6ec0c-1347-4ed6-a8e3-83208b6ee773\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 75, \"tags\": [\"normal\"]}], \"name\": \"73386834-84c2-46eb-b54f-43781effb50a\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 80, \"tags\": [\"normal\"]}], \"name\": \"8db8caaf-f72c-4ef9-8691-bbcdcf5cc188\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 85, \"tags\": [\"normal\"]}], \"name\": \"e28f11ea-fa7f-4c36-b5ad-b7b44e602a29\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 90, \"tags\": [\"normal\"]}], \"name\": \"ed666e88-c15d-444a-a473-a8970c80d1f0\", \"auto_diff_type\": 1, \"max_iterations\": 20}, {\"enabled\": true, \"frame_list\": [{\"number\": 94, \"tags\": [\"normal\"]}], \"name\": \"be303012-0eff-4217-9c9f-94eb573b25ce\", \"auto_diff_type\": 1, \"max_iterations\": 20}]");
	setAttr -l on ".solver_step_list" -type "string" "[{\"name\": \"106f393a-5759-4d0a-9f55-907693881997\", \"frame_list\": [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 94], \"use_static_attrs\": true, \"enabled\": true, \"use_anim_attrs\": true, \"strategy\": \"all_frames_at_once\"}]";
	setAttr -l on ".override_current_frame";
	setAttr -l on ".object_toggle_camera";
	setAttr -l on ".object_toggle_marker";
	setAttr -l on ".object_toggle_bundle";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9D383FFE-4688-C633-6F25-12A6964BCCED";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n"
		+ "                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"stA_1_1Shape1\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1673\n                -height 1412\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"stA_1_1Shape1\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1673\n            -height 1412\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n"
		+ "            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n"
		+ "            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 1\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 1\n                -preSelectionHighlight 0\n"
		+ "                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n"
		+ "                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"stA_1_1Shape1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1673\\n    -height 1412\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"stA_1_1Shape1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1673\\n    -height 1412\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D08F284B-4BE9-B3F4-689B-3CB521BA5ED1";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 94 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode polyCone -n "polyCone1";
	rename -uid "B1103E0E-4DA2-8F42-2C15-46BBA3B425C3";
	setAttr ".h" 4;
	setAttr ".sa" 5;
createNode polyCone -n "polyCone2";
	rename -uid "EA94186E-4F35-8153-6708-FBA8E1BB4EF8";
	setAttr ".h" 4;
	setAttr ".sa" 5;
createNode polyCone -n "polyCone3";
	rename -uid "E5FC24AE-49C0-818F-7513-18A42F05F798";
	setAttr ".h" 4;
	setAttr ".sa" 5;
createNode polyCone -n "polyCone6";
	rename -uid "948FE83D-4920-D572-504E-D69A39F4B287";
	setAttr ".h" 4;
	setAttr ".sa" 5;
createNode polyCone -n "polyCone7";
	rename -uid "B71A2C19-4F79-B1C2-DB95-3995B5041485";
	setAttr ".h" 4;
	setAttr ".sa" 5;
createNode polyCone -n "polyCone8";
	rename -uid "64800523-4902-C6B6-C8DE-A4A4E8E4E6F5";
	setAttr ".h" 4;
	setAttr ".sa" 5;
createNode polyCone -n "polyCone9";
	rename -uid "05BFD284-41DF-4507-81F3-869EAD3B5B2A";
	setAttr ".h" 4;
	setAttr ".sa" 5;
createNode polyCone -n "polyCone10";
	rename -uid "6F0FD3E9-4E68-9315-65D7-7688BE97DD58";
	setAttr ".h" 4;
	setAttr ".sa" 5;
createNode polyCone -n "polyCone11";
	rename -uid "7979DD5A-418C-8853-CF30-22BA100D87EB";
	setAttr ".h" 4;
	setAttr ".sa" 5;
createNode polyCone -n "polyCone12";
	rename -uid "C6718388-400C-E905-5F47-01890DC1294F";
	setAttr ".h" 4;
	setAttr ".sa" 5;
createNode lambert -n "lambert4";
	rename -uid "402B7195-43CA-BD12-59C2-AAA1243625D1";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "04666A31-4CDE-5422-0FF6-9CADC89FD49B";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "6E71E0CC-4D47-20E3-2687-6A8C72BA8DEF";
createNode expression -n "expression1";
	rename -uid "D78FC528-4B39-3D80-CBC0-E6B6507A7A4C";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]=frame";
createNode animCurveTL -n "marker_14_MKR_translateY";
	rename -uid "38A65884-4D71-2CAD-2B7F-12A6BF882834";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 0.22876943661750371 1 0.22964082122060403
		 2 0.23052964781176932 3 0.23297783963789165 4 0.23401701532588315 5 0.23336955254202041
		 6 0.23188921437317533 7 0.23181602627027398 8 0.23071653364070277 9 0.22978337309881458
		 10 0.2277401130936626 11 0.2270974410944947 12 0.2270062696888947 13 0.22695949831016315
		 14 0.22750113186855891 15 0.22750324896272334 16 0.22615664018119408 17 0.22553555292356864
		 18 0.22452901366044209 19 0.22309349827091784 20 0.22257355094778619 21 0.22207727478947992
		 22 0.22165754643717306 23 0.2216213050677035 24 0.2206374959856382 25 0.21990432283388384
		 26 0.21916234888358932 27 0.21728765584606735 28 0.21634643898348205 29 0.21731353063835035
		 30 0.21806560334377167 31 0.21740604339480263 32 0.21660612604723173 33 0.21580344411099339
		 34 0.21620811059984102 35 0.21480070560931674 36 0.21134232172760103 37 0.20944921169270059
		 38 0.20814868419188048 39 0.2059399580564294 40 0.20453510524986562 41 0.20451204369081888
		 42 0.20433316367441923 43 0.20345759920172679 44 0.20212018193502723 45 0.1999676605167684
		 46 0.20013742614105212 47 0.20002994257476248 48 0.20078622943454061 49 0.20130598896136243
		 50 0.20071027698582089 51 0.20081705034212005 52 0.19812144168107193 53 0.19573490556713058
		 54 0.19307724336291232 55 0.19146552894508484 56 0.19246589645462042 57 0.19421019342951862
		 58 0.19587248685550485 59 0.19468064814974584 60 0.19405103786703015 61 0.19153451978267422
		 62 0.18998789110514558 63 0.18750041600261524 64 0.18592996544445128 65 0.18562641176730388
		 66 0.18702955926467912 67 0.18661568267446726 68 0.18513178483978243 69 0.18496851691538263
		 70 0.18507015046059916 71 0.18479642940785868 72 0.18403640516508291 73 0.18447081738170534
		 74 0.18579248049716868 75 0.18691719978971699 76 0.18656080171054379 77 0.18611996437487166
		 78 0.18661360277661676 79 0.18645250397366042 80 0.18468459599597198 81 0.18423978179934153
		 82 0.18317235995648662 83 0.18321356013551837 84 0.18463944595396464 85 0.18679907917662764
		 86 0.18843828207808178 87 0.18791115073886966 88 0.18738343839770422 89 0.18753483488893807
		 90 0.18903612246331203 91 0.19188884244867244 92 0.19323320945665645 93 0.19234154200420328
		 94 0.19073027170332657;
createNode addDoubleLinear -n "addDoubleLinear2";
	rename -uid "9EE13708-4FDB-EF4E-A2AE-3680E69D6687";
createNode animCurveTL -n "marker_14_MKR_translateX";
	rename -uid "1CCF3B85-4DD9-BAA0-03E6-C3B34186D5DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 0.20609668250246571 1 0.20703299619344706
		 2 0.2079299269632533 3 0.20893146892360637 4 0.20958103445683574 5 0.21069751889931698
		 6 0.21137333071732645 7 0.21191029217671553 8 0.21218010596684778 9 0.21213979780455372
		 10 0.21268244469687747 11 0.21442298193921416 12 0.21487987407243936 13 0.2162598864843065
		 14 0.21578780346079574 15 0.21665494023478493 16 0.21712688966241933 17 0.21709463969161913
		 18 0.21597546344908203 19 0.21515385086492733 20 0.21417846534228968 21 0.21382376727744257
		 22 0.21197808891513192 23 0.21054148758612101 24 0.20968255164986138 25 0.20911608585186969
		 26 0.20693387182675893 27 0.20571140744262173 28 0.2053512788560492 29 0.2040840420856761
		 30 0.20288043930945465 31 0.20172058040290719 32 0.19941768063881893 33 0.19816591845537956
		 34 0.19684612576037497 35 0.19432210793423232 36 0.19293397357244957 37 0.19175480515071641
		 38 0.18990399442471373 39 0.18726077191726975 40 0.18439481915954692 41 0.18075033878518665
		 42 0.17802787755687621 43 0.17551822374229775 44 0.17205385191582012 45 0.16958603327367405
		 46 0.16696713970229504 47 0.16345027623047759 48 0.16029992390661796 49 0.15710672405194037
		 50 0.15187060203908542 51 0.14756235039902621 52 0.13939318250748411 53 0.12851739028495102
		 54 0.11604473740456578 55 0.1034036877341612 56 0.091393562743998125 57 0.079359160446148658
		 58 0.066440490854919432 59 0.053045935645921416 60 0.040212286038990741 61 0.02753636765726597
		 62 0.015148921157243977 63 0.0026577547998259954 64 -0.0098744241238262753 65 -0.021441138953746719
		 66 -0.034160365109583646 67 -0.046864641270058405 68 -0.059644642388206714 69 -0.072205903123424897
		 70 -0.086295154623440118 71 -0.10054067856859611 72 -0.11272588152693541 73 -0.12593433315668623
		 74 -0.13989438819648153 75 -0.1550227433304523 76 -0.16871277312261407 77 -0.18414350905466575
		 78 -0.1992173955706743 79 -0.21394759702963068 80 -0.22831560384422039 81 -0.24187486726489538
		 82 -0.25598619500470104 83 -0.27110596134726339 84 -0.28608519384738773 85 -0.30041626671164812
		 86 -0.31699334054146644 87 -0.33280620297780139 88 -0.34848685131970658 89 -0.36486960221386644
		 90 -0.3815533992277339 91 -0.39807365305093351 92 -0.41604027857953391 93 -0.43424799169784817
		 94 -0.45190394581182541;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "20F067AA-411D-E760-9FB8-4CA24EBE449B";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1508.6380570266144 -353.98331956355071 ;
	setAttr ".tgi[0].vh" -type "double2" 687.1065622354721 730.05026347550461 ;
	setAttr -s 12 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -656.815673828125;
	setAttr ".tgi[0].ni[0].y" 563.69390869140625;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" -968.5714111328125;
	setAttr ".tgi[0].ni[1].y" 77.142860412597656;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" -47.142856597900391;
	setAttr ".tgi[0].ni[2].y" -244.28572082519531;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -968.5714111328125;
	setAttr ".tgi[0].ni[3].y" 381.42855834960937;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -968.5714111328125;
	setAttr ".tgi[0].ni[4].y" 280;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -47.142856597900391;
	setAttr ".tgi[0].ni[5].y" 672.85711669921875;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -968.5714111328125;
	setAttr ".tgi[0].ni[6].y" 178.57142639160156;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -968.5714111328125;
	setAttr ".tgi[0].ni[7].y" 482.85714721679687;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -342.85714721679687;
	setAttr ".tgi[0].ni[8].y" -25494.28515625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -131.42857360839844;
	setAttr ".tgi[0].ni[9].y" 278.57144165039062;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 175.71427917480469;
	setAttr ".tgi[0].ni[10].y" 278.57144165039062;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 175.71427917480469;
	setAttr ".tgi[0].ni[11].y" 148.57142639160156;
	setAttr ".tgi[0].ni[11].nvs" 18304;
createNode mmMarkerScale -n "mmMarkerScale1";
	rename -uid "2849EEA8-4F60-8551-6891-5EBA308EA076";
createNode animCurveTL -n "marker_01_MKR_translateX";
	rename -uid "4AB43C5D-4723-4DEE-CA80-81AA68A2F6BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  0 -0.32484366183882968 1 -0.32421867368558388
		 2 -0.32374029028809514 3 -0.32353027065889761 4 -0.32350097149031826 5 -0.32296606931395022
		 6 -0.32281981492932454 7 -0.32301516190533053 8 -0.32326255479940452 9 -0.32384856320673028
		 10 -0.32371764652407142 11 -0.32241891002507783 12 -0.32249849466480263 13 -0.32161077433963747
		 14 -0.32269132302913212 15 -0.32227051405805129 16 -0.32202588332933413 17 -0.32247684815740385
		 18 -0.32402615371334881 19 -0.3252125237927182 20 -0.32664529573791534 21 -0.32740329654083122
		 22 -0.3297895207314635 23 -0.33171623288732371 24 -0.3329397611526167 25 -0.33384616726792782
		 26 -0.33640993965966215 27 -0.3378635041717909 28 -0.33842478463049297 29 -0.3401522125700126
		 30 -0.34174602621366834 31 -0.34300770221365695 32 -0.34551167319162235 33 -0.34697965660024582
		 34 -0.34840975187237144 35 -0.35093166480125665 36 -0.35223995462896884 37 -0.35334804643485151
		 38 -0.35516997594682675 39 -0.35767254494335493 40 -0.36048512155905443 41 -0.36455020183701692
		 42 -0.36744854680957473 43 -0.36989457984402208 44 -0.37346886362656706 45 -0.37589543718679908
		 46 -0.37866939718128895 47 -0.38239593260489363 48 -0.38574286764046761 49 -0.38917320692631518
		 50 -0.39476991746722745 51 -0.39937638808665499 52 -0.40788868174805148 53 -0.41962830392380718
		 54 -0.43319406323283094;
createNode animCurveTL -n "marker_01_MKR_translateY";
	rename -uid "620B3C81-48D2-F630-6A00-9C82CAAE19B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  0 0.42322533583057953 1 0.42421046735540535
		 2 0.42503249866350046 3 0.42797240673463688 4 0.42988304571764202 5 0.42947864942314551
		 6 0.42856687484652412 7 0.42900836647721774 8 0.42826422245881857 9 0.42810736925469461
		 10 0.42738073043381031 11 0.42753744192998999 12 0.42831286461944185 13 0.42947016725311593
		 14 0.43052612255380807 15 0.4318501749047533 16 0.43221171043232909 17 0.43267874717320454
		 18 0.43260755478913471 19 0.43210779921724474 20 0.43176968594204879 21 0.43179836632682078
		 22 0.43154400825445971 23 0.43181919250734702 24 0.43062468532558784 25 0.43030572743973539
		 26 0.42902185819084548 27 0.42652554407296639 28 0.42582861977832998 29 0.42674282482829418
		 30 0.42778346861064309 31 0.42828488522228525 32 0.42856093600242295 33 0.428659678477054
		 34 0.43073997579921841 35 0.43029163310810703 36 0.42755447672402902 37 0.42625319052380883
		 38 0.42604497021093646 39 0.42533436707110006 40 0.42504432275456017 41 0.42541377422702653
		 42 0.42589419868844569 43 0.42623911040889828 44 0.42533857833531263 45 0.4238828589243504
		 46 0.42449496969799549 47 0.42479675133662997 48 0.42703305926053736 49 0.42871444595728969
		 50 0.42920727250658908 51 0.43001403993010945 52 0.42951475171908648 53 0.43015175075722356
		 54 0.43050435221746319;
createNode animCurveTU -n "marker_01_MKR_enable";
	rename -uid "FADFE2F2-4DC2-4561-07D2-6D9B6F189A9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 57 ".ktv[0:56]"  -1 0 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1
		 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1
		 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 0;
createNode animCurveTU -n "marker_01_MKR_weight";
	rename -uid "033A6ECB-4115-5F34-3165-D88041851C29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1;
createNode animCurveTL -n "marker_04_MKR_translateX";
	rename -uid "3609F84A-4FC5-B709-18C5-FE9AE6B547B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 73 ".ktv[0:72]"  0 -0.15130147992123527 1 -0.15058834539463434
		 2 -0.14997370797353587 3 -0.14946608758187219 4 -0.1492433459776355 5 -0.14853624076674909
		 6 -0.14821351304979985 7 -0.14808041351152385 8 -0.14812559058420355 9 -0.14851736793727527
		 10 -0.14826177726845835 11 -0.14691842833632157 12 -0.14677739430717901 13 -0.14575680664202117
		 14 -0.14652255931926078 15 -0.14600446365331976 16 -0.14577909145684093 17 -0.14605003009326961
		 18 -0.1473708116688443 19 -0.14835890597057372 20 -0.14940886655669661 21 -0.14996169641598406
		 22 -0.15192128643884678 23 -0.15347871777342864 24 -0.15436642060803002 25 -0.15503097239632396
		 26 -0.15713321476159253 27 -0.15828664181482066 28 -0.1586171538511888 29 -0.15998380871775969
		 30 -0.16121680870106703 31 -0.16235287720798475 32 -0.16457527318588261 33 -0.16585471728319839
		 34 -0.16713335110490857 35 -0.1694727125621997 36 -0.17073106979795194 37 -0.17169906598053847
		 38 -0.17339600750222223 39 -0.1758646843752722 40 -0.17846980185201672 41 -0.1820216917858738
		 42 -0.18462355932610802 43 -0.18690700930293824 44 -0.19012611299049026 45 -0.19241642603572118
		 46 -0.19484679471879568 47 -0.19815854989477039 48 -0.20118123652349656 49 -0.2043076187194765
		 50 -0.20937271471447144 51 -0.21350593595863532 52 -0.22138373722653076 53 -0.2322910517532395
		 54 -0.24481103189129216 55 -0.2576475551672669 56 -0.27025305337296746 57 -0.28280872237414673
		 58 -0.29650446894661114 59 -0.31063888987062105 60 -0.32421553976677764 61 -0.33785190892066647
		 62 -0.35125656127952237 63 -0.36469435281466217 64 -0.37851523999257919 65 -0.39139867332368222
		 66 -0.40566078636024244 67 -0.42000734350596408 68 -0.43447398293628559 69 -0.44904131498235433
		 70 -0.46531300871752301 71 -0.4820232452094198 72 -0.49647046901968278;
createNode animCurveTL -n "marker_04_MKR_translateY";
	rename -uid "3FFF1B45-4E9F-571F-3222-7DA9AC0CB648";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 73 ".ktv[0:72]"  0 0.22245005840519005 1 0.22332539050805111
		 2 0.22413719234189156 3 0.22675896693760633 4 0.22822770047116359 5 0.22776084424931142
		 6 0.22666686936300506 7 0.22673927421227968 8 0.22591747973637222 9 0.22543509022548225
		 10 0.22434369134920296 11 0.22416253901383454 12 0.22456148986794944 13 0.22525732769014795
		 14 0.22598849934787391 15 0.22677785045719034 16 0.22653452806540375 17 0.2265725787015509
		 18 0.22605716369146944 19 0.22518468227307598 20 0.22468622724416809 21 0.22441156969780895
		 22 0.22394618624643348 23 0.22397279257403402 24 0.22276818286340139 25 0.22219056564587647
		 26 0.22101836727873025 27 0.21872236051655758 28 0.21784431502454116 29 0.21852475379171954
		 30 0.2193944898189053 31 0.21928703209341693 32 0.21904025880376721 33 0.21865281069829445
		 34 0.21989706840647572 35 0.21896564473391666 36 0.21596661167979581 37 0.2144107669840678
		 38 0.21361928494678495 39 0.21230597568382314 40 0.21139650485219685 41 0.21130685320620057
		 42 0.21131127815212425 43 0.21104052415921526 44 0.20982060576582851 45 0.20792887748443956
		 46 0.20812812547004855 47 0.20794234119247856 48 0.20929773662741891 49 0.21025443401808108
		 50 0.21000626623465801 51 0.21019483858277066 52 0.20839360561492493 53 0.20728478435271502
		 54 0.20580633091546396 55 0.20498821223205688 56 0.20742784326727803 57 0.21041640021849173
		 58 0.21342615317687785 59 0.21313752737844605 60 0.21379383633556615 61 0.21272912908059372
		 62 0.21204817535149678 63 0.21079236376769928 64 0.20982232866976747 65 0.21014053956952505
		 66 0.21241617385258138 67 0.21283028106260904 68 0.21227390999319062 69 0.21285591379818225
		 70 0.2136910001135397 71 0.21435999598952138 72 0.21460814161054176;
createNode animCurveTU -n "marker_04_MKR_enable";
	rename -uid "BBE1E2CE-4353-4C6E-29F7-ACBBA4562B37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 75 ".ktv[0:74]"  -1 0 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1
		 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1
		 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1
		 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 0;
createNode animCurveTU -n "marker_04_MKR_weight";
	rename -uid "220A54B4-462A-49AC-D44A-3BBE3E9BF95F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 73 ".ktv[0:72]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1;
createNode animCurveTL -n "marker_05_MKR_translateX";
	rename -uid "57E2C1F0-47B0-3C23-2CFA-569133E61C58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 -0.24657416722529008 1 -0.24440590148003327
		 2 -0.24173189693200248 3 -0.23852085619854629 4 -0.2351908663240434 5 -0.23066039852584891
		 6 -0.22629048011684294 7 -0.22178730216799503 8 -0.21737438747048632 9 -0.21329781581798396
		 10 -0.20882608815587284 11 -0.20333307630170372 12 -0.1988780782217463 13 -0.19357468956919022
		 14 -0.19004994610929421 15 -0.1851470792023332 16 -0.18055881311122168 17 -0.17637208382572594
		 18 -0.17293342925301525 19 -0.16913429446276873 20 -0.16529028593668005 21 -0.16084430093928831
		 22 -0.1576559168839769 23 -0.1540103062197592 24 -0.14979237355929076 25 -0.14540236064937206
		 26 -0.14275302822779878 27 -0.13899152968351319 28 -0.13458778483897549 29 -0.13100672691568443
		 30 -0.12714392739247687 31 -0.1232360100494353 32 -0.12040824185902477 33 -0.1165875018456165
		 34 -0.11288112403242756 35 -0.1101538357667417 36 -0.10638632897440309 37 -0.10259439386336233
		 38 -0.099698668283712544 39 -0.097504652808011683 40 -0.095532793665740634 41 -0.094397685493441352
		 42 -0.092352980062524348 43 -0.089919097060691899 44 -0.088336165528317134 45 -0.085890373630429784
		 46 -0.083662203226790077 47 -0.082162712128512116 48 -0.080623703953951853 49 -0.079166665330195563
		 50 -0.079496867012556482 51 -0.078815709553766766 52 -0.081786894252060427 53 -0.087671902285068437
		 54 -0.094999319151858996 55 -0.10239040807498834 56 -0.10959173239876829 57 -0.11657182971187513
		 58 -0.12454259168421006 59 -0.1329207542856975 60 -0.1407572564241692 61 -0.14866981566455539
		 62 -0.15614435110930758 63 -0.16392362539069155 64 -0.17191879620380968 65 -0.17896305456482642
		 66 -0.18717247417731181 67 -0.1951328686351656 68 -0.20313451256972959 69 -0.21078053615386338
		 70 -0.2198451385583387 71 -0.22947039471288921 72 -0.23703314904135236 73 -0.24547746052445069
		 74 -0.25478622353799546 75 -0.26482219217569214 76 -0.27319330494495925 77 -0.28326306610916191
		 78 -0.29288228062475585 79 -0.30234511381415968 80 -0.31151025306864999 81 -0.31970406744883523
		 82 -0.32850357545764036 83 -0.33804383952366485 84 -0.34736706614062474 85 -0.35591417071602349
		 86 -0.36657344248801449 87 -0.37633671736892377 88 -0.38586445356365412 89 -0.39582759353721736
		 90 -0.40587353975592211 91 -0.41559975762023704 92 -0.42684450914072142 93 -0.43801107005807666
		 94 -0.44876517895083745;
createNode animCurveTL -n "marker_05_MKR_translateY";
	rename -uid "A7778F65-465B-D831-B001-CD85F6EE5703";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 -0.053944369020691219 1 -0.053056700899226317
		 2 -0.052155556150224769 3 -0.049464271881340172 4 -0.047894439793906729 5 -0.048140811377391401
		 6 -0.048904841728195869 7 -0.048613967762994481 8 -0.049219986318341347 9 -0.04947459514857605
		 10 -0.050231510172112748 11 -0.050153006831578195 12 -0.04943587117437731 13 -0.048486339755829999
		 14 -0.04762251814681806 15 -0.046528672044810371 16 -0.046567294696128525 17 -0.046243546834567273
		 18 -0.046518660560804947 19 -0.047305600224896105 20 -0.047530712113189488 21 -0.047563415439453027
		 22 -0.047734035136183794 23 -0.047519487906832303 24 -0.048409171500604031 25 -0.048711668279642961
		 26 -0.049591503344749654 27 -0.051504214457732345 28 -0.051984380266628327 29 -0.050997406739023421
		 30 -0.049898940998016283 31 -0.049631055684655201 32 -0.049598634607094738 33 -0.049776703265873634
		 34 -0.048357625648487723 35 -0.049054880269587708 36 -0.05165515476724758 37 -0.052997630910849802
		 38 -0.053500948478644561 39 -0.054754136684985522 40 -0.055497478815492163 41 -0.05528114069533141
		 42 -0.055043667421945386 43 -0.055071916827357903 44 -0.055989882929626922 45 -0.057585882702033186
		 46 -0.057074998141713185 47 -0.056949397421965753 48 -0.055404758640014096 49 -0.054366469583338239
		 50 -0.054501667164243206 51 -0.054091282812238517 52 -0.055886217947685168 53 -0.057389270096668499
		 54 -0.059151090981144849 55 -0.060257861712283312 56 -0.058532873298011379 57 -0.05616616242082817
		 58 -0.054120342271123778 59 -0.054980082361780702 60 -0.055114248909693409 61 -0.057116611635980585
		 62 -0.058383577917117235 63 -0.060650228007348372 64 -0.062235796509838792 65 -0.062557647764061142
		 66 -0.061253022653558309 67 -0.061745577702639498 68 -0.063345232219364001 69 -0.063725695136383764
		 70 -0.063891711739817225 71 -0.064607459157018488 72 -0.065511753364123571 73 -0.06540218187957958
		 74 -0.064556963488596575 75 -0.063649836434885476 76 -0.064589498266290735 77 -0.065651223817821847
		 78 -0.065764983293212342 79 -0.066643694279061472 80 -0.069203268567464227 81 -0.070320957044679944
		 82 -0.072174340532252135 83 -0.073112921575625989 84 -0.072712349051267167 85 -0.071646224608497067
		 86 -0.071133908851793604 87 -0.072890424180720281 88 -0.074586055122182637 89 -0.075903590726852932
		 90 -0.07590889813527163 91 -0.074548547927028919 92 -0.07517972194550715 93 -0.077902085325456283
		 94 -0.081222213040092639;
createNode animCurveTU -n "marker_05_MKR_enable";
	rename -uid "B8B77CB1-46D6-07E6-007F-4CADCF6AAC5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 97 ".ktv[0:96]"  -1 0 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1
		 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1
		 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1
		 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1
		 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1
		 94 1 95 0;
createNode animCurveTU -n "marker_05_MKR_weight";
	rename -uid "56EE462E-4821-44CE-FE2C-7797391F54FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1;
createNode animCurveTL -n "marker_06_MKR_translateX";
	rename -uid "D9B78B9C-4027-5B9D-4876-638976BABEB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 -0.037750264146105883 1 -0.034976325386487983
		 2 -0.03139127539290304 3 -0.026927305545571378 4 -0.022114492432335542 5 -0.015988087115448912
		 6 -0.0098150166913552606 7 -0.0035613998960236093 8 0.0027060659451114688 9 0.0085398958803597491
		 10 0.01478768889109372 11 0.021963763696523309 12 0.028115771568538062 13 0.035132530083576308
		 14 0.040216607145654337 15 0.046843074650790184 16 0.053160234922932093 17 0.058961229302923246
		 18 0.063919263382282043 19 0.069221074521807702 20 0.074484404215927502 21 0.08041629262479788
		 22 0.085019848172269707 23 0.089997732953776666 24 0.09544262110319901 25 0.10102932387937902
		 26 0.10469522415328025 27 0.10937741702727599 28 0.11477972466292874 29 0.1193191877900186
		 30 0.12420011590482927 31 0.12923338095790227 32 0.13294872336734864 33 0.13779079875451083
		 34 0.14248726617826024 35 0.14599081332828545 36 0.15042001728549181 37 0.15484338096488481
		 38 0.158419357197912 39 0.16112731679273495 40 0.1635807518438892 41 0.16517193362293414
		 42 0.16768975227747274 43 0.17051482626448455 44 0.17235005735556996 45 0.17502917353406278
		 46 0.1775313614920252 47 0.17922418871511481 48 0.18102520748853179 49 0.18269485292519838
		 50 0.18242503185096048 51 0.18312909179646775 52 0.18013286101919002 53 0.17413307673358325
		 54 0.16665091220846673 55 0.15909687780200865 56 0.15202002045677709 57 0.14510276314868786
		 58 0.13714862133889805 59 0.12873076265202754 60 0.12086940361225174 61 0.11292987492033035
		 62 0.10542271102262524 63 0.097578231790959036 64 0.089473008707511625 65 0.082361943734623466
		 66 0.074193158050661623 67 0.066221914815177474 68 0.058185562310186678 69 0.05053355803311077
		 70 0.041402491977966971 71 0.031848833814996702 72 0.024295227318246182 73 0.01593457945098653
		 74 0.0068078988114318451 75 -0.0030637487618549453 76 -0.011315520281595104 77 -0.021166593892963048
		 78 -0.030574150397431221 79 -0.039847507519232273 80 -0.048930233046568239 81 -0.05694488983260737
		 82 -0.06556262589265327 83 -0.074900714980128402 84 -0.083926185676846676 85 -0.092281632718343998
		 86 -0.10247596655118324 87 -0.11197744088727196 88 -0.1212438384348859 89 -0.13086619970813063
		 90 -0.1406017502552549 91 -0.14991391326188586 92 -0.16056120585591249 93 -0.17128700033248484
		 94 -0.18163120231808705;
createNode animCurveTL -n "marker_06_MKR_translateY";
	rename -uid "634EA2BE-427C-A830-4426-1298FE265B78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 0.057411586431266204 1 0.058363962673990355
		 2 0.059306695329809367 3 0.062027907688720463 4 0.063521331703323636 5 0.063279362489827129
		 6 0.062363042693183823 7 0.062580421181643531 8 0.061983231195171129 9 0.061714739643519478
		 10 0.060552765806316411 11 0.0604393149027318 12 0.060983257705345517 13 0.061679270966990329
		 14 0.062492609174795488 15 0.063256362533437693 16 0.062679830914408097 17 0.062592769114494962
		 18 0.06221329192177083 19 0.061348555116384706 20 0.061292268959304397 21 0.061210250713742642
		 22 0.06128392473087152 23 0.061749573697649995 24 0.061164142822013767 25 0.060906756147061425
		 26 0.060475660682263177 27 0.058958598239650772 28 0.058577833969765347 29 0.059931244788079652
		 30 0.061188817893671366 31 0.061229086660008147 32 0.06114084706655698 33 0.060859664825897997
		 34 0.061850829302383059 35 0.061066430186777709 36 0.058270479851804113 37 0.056849086973352669
		 38 0.056040377039214828 39 0.054447786465043002 40 0.053500389158643968 41 0.054002897894327884
		 42 0.054288561238349242 43 0.054013986946072623 44 0.053217281289422269 45 0.051571297932592186
		 46 0.052282242431899606 47 0.052692177009173391 48 0.05394123754767044 49 0.054883268398393636
		 50 0.054871206248336635 51 0.055493362630303134 52 0.053416026699744434 53 0.051581081891623914
		 54 0.049416694504745506 55 0.048399453529970327 56 0.049772230756185531 57 0.051972224681649082
		 58 0.053929022328365717 59 0.053116341764856245 60 0.052808527803513639 61 0.050503867507018407
		 62 0.049275746707392765 63 0.046964191825590085 64 0.045819620350129542 65 0.045775454233882407
		 66 0.047352399174475868 67 0.04716247909678517 68 0.045861528176860511 69 0.045924258151163078
		 70 0.046190581689128596 71 0.045917623391440565 72 0.045387893149270497 73 0.045949812392214961
		 74 0.047187303516038059 75 0.048283811501041995 76 0.047786316265732487 77 0.04718846120721687
		 78 0.04745187880457824 79 0.046948459325691472 80 0.044882274599819638 81 0.044143390601272703
		 82 0.042765969002830029 83 0.042568372115292186 84 0.043599139204990478 85 0.045153256300316857
		 86 0.046338800594600604 87 0.045229841235897794 88 0.044220982624012306 89 0.043783767409597774
		 90 0.044608570545612847 91 0.046611450928432552 92 0.046934396572131498 93 0.045203167345970185
		 94 0.042807055112701886;
createNode animCurveTU -n "marker_06_MKR_enable";
	rename -uid "92EBDBC4-41CA-0658-8FDB-458D08C46A30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 97 ".ktv[0:96]"  -1 0 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1
		 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1
		 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1
		 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1
		 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1
		 94 1 95 0;
createNode animCurveTU -n "marker_06_MKR_weight";
	rename -uid "40C2C911-4598-78AB-03E9-83A07013F18A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1;
createNode animCurveTL -n "marker_07_MKR_translateX";
	rename -uid "0F6AF723-4E0B-4495-6D68-06936EBABDB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 0.031911398950594583 1 0.035059681027325929
		 2 0.039169970427093026 3 0.04433509766938537 4 0.049960779660511934 5 0.056991491641984027
		 6 0.064139009204214559 7 0.071413519111950485 8 0.078687792893819108 9 0.08547113396056516
		 10 0.092681097157776171 11 0.10080235368386403 12 0.10784080096409354 13 0.11577776802264439
		 14 0.12171181664150776 15 0.12920970083326455 16 0.13642978281793017 17 0.14312835742344121
		 18 0.14892224999737114 19 0.15495808610388551 20 0.16107067442385647 21 0.16778458156427167
		 22 0.17314024502942194 23 0.17884167970105924 24 0.18502860758750739 25 0.19127435613775867
		 26 0.1954694405248244 27 0.20072390187978262 28 0.20672540660485117 29 0.21186019811383972
		 30 0.217318214353728 31 0.22291908196962207 32 0.22709648146115102 33 0.23251244688877482
		 34 0.2377046668184265 35 0.24162336767891757 36 0.24644327831641089 37 0.25129538741369772
		 38 0.25513907944266556 39 0.25810368596380862 40 0.26081950553034416 41 0.26263530078784414
		 42 0.26539306964511045 43 0.26840187488193123 44 0.27039701081760736 45 0.27323987799043115
		 46 0.27589712273064038 47 0.27763621611094536 48 0.27960275158297176 49 0.28138043820567005
		 50 0.28110574108212416 51 0.28182042343190705 52 0.27871286773563453 53 0.27255141265244953
		 54 0.26471382043661185 55 0.25691561067905488 56 0.24961598315519384 57 0.24250472603572759
		 58 0.23440748232817032 59 0.22562203683901927 60 0.2175140190136079 61 0.20932767319210821
		 62 0.2015440131803039 63 0.1934378186664093 64 0.18509279224086572 65 0.17782981351094718
		 66 0.16946810205186014 67 0.16122563102961451 68 0.1529664071301573 69 0.1450962776817315
		 70 0.13579512039562769 71 0.12596722771335866 72 0.1182313890328166 73 0.10966283476864402
		 74 0.1003975400276953 75 0.090373802561651506 76 0.081900724396906655 77 0.071819523154450948
		 78 0.062236451695257045 79 0.052805940574542021 80 0.043558862441555601 81 0.035312456232948208
		 82 0.026553278613113185 83 0.017102618820554527 84 0.0079161993604508485 85 -0.0005251226170969181
		 86 -0.010847405383748288 87 -0.020430233607284687 88 -0.029846471255380091 89 -0.039578470595986348
		 90 -0.049344786227637161 91 -0.058787638853344537 92 -0.069449548865857469 93 -0.080304942808195445
		 94 -0.090718208452876758;
createNode animCurveTL -n "marker_07_MKR_translateY";
	rename -uid "B9B11E8A-4FC8-06F1-559C-24B0E6FD54DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 0.056112083334409424 1 0.057027171935831067
		 2 0.058076457517658775 3 0.060804537614980836 4 0.062276999018124779 5 0.062062924223921789
		 6 0.061116985311606253 7 0.061519166269833558 8 0.060926730158798126 9 0.060666742566210963
		 10 0.059403055787319303 11 0.059205699282390833 12 0.059743447401295113 13 0.060337482470487536
		 14 0.061259109485368501 15 0.061875168270931979 16 0.06113659196633825 17 0.061117175792158807
		 18 0.060682648097812431 19 0.059823384483409292 20 0.059861078720816696 21 0.059853938468674261
		 22 0.060052665219953894 23 0.06062619901901567 24 0.060184590085115008 25 0.060048953980571418
		 26 0.059859186670990661 27 0.058539079957755979 28 0.058212237267430078 29 0.059830990158963537
		 30 0.061217289388290186 31 0.061206912480916364 32 0.061131854541372488 33 0.060860949647760565
		 34 0.061765416591799793 35 0.060980659472245291 36 0.058138035270149713 37 0.056819718818387654
		 38 0.056015020951314609 39 0.054294097104225059 40 0.053308874111755444 41 0.053937744319196512
		 42 0.054303634180686733 43 0.054008141204807791 44 0.053430391410847378 45 0.051769664641193924
		 46 0.052562865876784159 47 0.053170756972814925 48 0.054429565095126309 49 0.055357686624527225
		 50 0.05543651940330474 51 0.056179371458449756 52 0.054086881056760405 53 0.05209793418221853
		 54 0.049940367576766787 55 0.048902119031810187 56 0.050159284291726891 57 0.052262513024655233
		 58 0.054173472903656816 59 0.0533470568073382 60 0.05302099751616618 61 0.050542589195850973
		 62 0.049365525813646283 63 0.046991368302650272 64 0.045890111583397619 65 0.045949367322699497
		 66 0.047653446415727108 67 0.047414791168769788 68 0.046185491360353104 69 0.046363141776044392
		 70 0.046751517096284667 71 0.046555199275553072 72 0.046056895805846154 73 0.046677086746709784
		 74 0.048001054234956042 75 0.049040384101549428 76 0.048571951683855974 77 0.048115514171018892
		 78 0.048307993051631137 79 0.04778662305828496 80 0.045685990659498743 81 0.044944946301625932
		 82 0.043640799011936182 83 0.04360764740989409 84 0.044581071745473655 85 0.046144102125799003
		 86 0.047345945128338451 87 0.046369841292531078 88 0.045278405936570176 89 0.044937148282700901
		 90 0.045848253338808376 91 0.0479164371480989 92 0.048195583962385435 93 0.046556808512381087
		 94 0.044240224357970592;
createNode animCurveTU -n "marker_07_MKR_enable";
	rename -uid "F6C8CF1F-4D8B-20E9-40D0-0487B39737B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 97 ".ktv[0:96]"  -1 0 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1
		 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1
		 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1
		 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1
		 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1
		 94 1 95 0;
createNode animCurveTU -n "marker_07_MKR_weight";
	rename -uid "D470F209-450F-9111-3E5D-F8BC563AEA11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1;
createNode animCurveTL -n "marker_09_MKR_translateX";
	rename -uid "8B5115CB-4613-DF41-5898-1C98B67F0951";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 0.022401481450141647 1 0.025552414814121738
		 2 0.029675915905950312 3 0.034877595585487531 4 0.040488922269238947 5 0.047567540253472984
		 6 0.054748235983011595 7 0.062137266206450215 8 0.069508116024252997 9 0.076362653016701088
		 10 0.083604042608977691 11 0.091662118440980045 12 0.098823122177562728 13 0.10678464364320917
		 14 0.11280126702659155 15 0.12037867100250788 16 0.12753911598887091 17 0.13426665333335586
		 18 0.14013812711473217 19 0.14632896817252738 20 0.15258766830151649 21 0.15943973980530823
		 22 0.16502063820296708 23 0.17092093307145684 24 0.17730644349483005 25 0.18370718136289987
		 26 0.18816205331352798 27 0.19367502166750483 28 0.1998476569338179 29 0.20515745662430551
		 30 0.21080908897491646 31 0.21645954307231763 32 0.22079963425572191 33 0.22631982128669748
		 34 0.23159706266269853 35 0.23564231605312536 36 0.24060894965497548 37 0.24556545257086648
		 38 0.24955070035367843 39 0.25263752543122919 40 0.2554608994309665 41 0.25749513354614295
		 42 0.26034421888979997 43 0.26348696767369684 44 0.26568313087362483 45 0.26867755372454449
		 46 0.27148164308624567 47 0.27345226842938275 48 0.27547433219064832 49 0.27739009552759009
		 50 0.27725900608979936 51 0.27816145391711766 52 0.27517107562859466 53 0.26907936511619346
		 54 0.26139893364417432 55 0.25377821530078037 56 0.24656903717451584 57 0.23956035784652141
		 58 0.23154746953608818 59 0.22291582942271304 60 0.21494031045192441 61 0.20680932278107444
		 62 0.19915028599255469 63 0.19118303772425504 64 0.18299824783826357 65 0.17585920278139344
		 66 0.16766741398806317 67 0.15958503785908829 68 0.15145542695384429 69 0.1438106276161295
		 70 0.13461563041937563 71 0.12496855429101483 72 0.11731687817558889 73 0.10892203408824597
		 74 0.099782339420952382 75 0.089895143857608217 76 0.081530430359488482 77 0.071630077474165388
		 78 0.062205291673283036 79 0.052801338956077082 80 0.043688617912253314 81 0.035584411135994531
		 82 0.026942068659389862 83 0.017632253240594586 84 0.0085685918316412701 85 8.2924018388053078e-005
		 86 -0.010075154041938483 87 -0.019249568194947664 88 -0.02857099094220128 89 -0.038109253959013545
		 90 -0.047774197594259993 91 -0.056801768467960534 92 -0.067465490960170182 93 -0.078362812870041598
		 94 -0.088650996345620459;
createNode animCurveTL -n "marker_09_MKR_translateY";
	rename -uid "E5280505-4EEE-0A8C-A203-8A8FB5D53D0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 -0.076204488985391894 1 -0.075122156727006839
		 2 -0.074153902698835927 3 -0.071163418714101312 4 -0.069581694211203027 5 -0.069480099562894582
		 6 -0.070100440926530172 7 -0.06930491991964588 8 -0.069494526476363061 9 -0.069411695579211452
		 10 -0.070227265338830835 11 -0.070042112262832246 12 -0.069175424891309734 13 -0.06818104324463975
		 14 -0.066921152784845228 15 -0.06585057384201104 16 -0.066196941163577883 17 -0.065825430419807984
		 18 -0.065776237787704139 19 -0.0661355660799825 20 -0.065725245641702623 21 -0.065199836106113351
		 22 -0.06444012693794493 23 -0.063430625915698813 24 -0.06332896734053739 25 -0.062965980085402662
		 26 -0.062727237565852689 27 -0.063490486977406113 28 -0.063349368790142246 29 -0.06124727166671895
		 30 -0.059338106449904282 31 -0.058905237779863229 32 -0.058375445473924537 33 -0.058105362559957685
		 34 -0.056700865123149147 35 -0.056956969203134256 36 -0.059173571054635221 37 -0.059985876255094217
		 38 -0.060266172413368291 39 -0.0614585516465187 40 -0.061852319904326658 41 -0.060701952324374364
		 42 -0.059889701887386182 43 -0.059612847353242626 44 -0.059643079538892863 45 -0.060751457754016802
		 46 -0.059402376320249473 47 -0.058356905485216382 48 -0.05659042592850555 49 -0.05514714048671332
		 50 -0.054490741715587487 51 -0.053242816582634633 52 -0.054652794597058518 53 -0.05596032790287514
		 54 -0.057321261620893738 55 -0.057676052772052788 56 -0.05577865165582141 57 -0.053040050575958841
		 58 -0.050598265374413087 59 -0.050703691994194555 60 -0.050434953958597373 61 -0.052226625265592019
		 62 -0.052873630917701919 63 -0.054739100450136469 64 -0.055270566698973567 65 -0.054759596653441156
		 66 -0.052679027675668622 67 -0.052351676244879297 68 -0.053093184304387309 69 -0.052519880164051735
		 70 -0.051675421384493936 71 -0.051456109606779599 72 -0.05156253160571328 73 -0.050527372158423123
		 74 -0.048956118529553394 75 -0.047414403128763716 76 -0.047595537225469386 77 -0.047740414179846591
		 78 -0.047177238479738814 79 -0.047377267353379715 80 -0.049152204649897335 81 -0.049683805144078774
		 82 -0.050694123325577323 83 -0.050520450772125747 84 -0.049318187990522622 85 -0.047584207924895816
		 86 -0.046243292767538247 87 -0.047094327830519922 88 -0.047934149562762818 89 -0.048238699639373661
		 90 -0.047197659552285665 91 -0.045144158033137927 92 -0.044626496620129519 93 -0.046159244622904771
		 94 -0.048451984540808457;
createNode animCurveTU -n "marker_09_MKR_enable";
	rename -uid "07776716-49F9-3996-AA55-D4B893B81704";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 97 ".ktv[0:96]"  -1 0 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1
		 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1
		 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1
		 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1
		 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1
		 94 1 95 0;
createNode animCurveTU -n "marker_09_MKR_weight";
	rename -uid "1D4B0BFC-4C69-7789-2DEE-B6BB1499A078";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1;
createNode animCurveTL -n "marker_10_MKR_translateX";
	rename -uid "ED8A0086-4763-C92A-3EC2-D9BC2D737CE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 -0.15215034079692413 1 -0.14999474397529744
		 2 -0.14723435870182888 3 -0.14398957348766095 4 -0.14055456938568855 5 -0.13598877173593954
		 6 -0.13159322447214888 7 -0.12702190057473811 8 -0.12258920966862408 9 -0.11852186353620114
		 10 -0.11402678022953033 11 -0.10861134975751818 12 -0.10410595886987883 13 -0.098854936092967305
		 14 -0.095350850763530837 15 -0.09058629681829039 16 -0.08599617647134794 17 -0.081808278362490772
		 18 -0.078479796101212196 19 -0.074821212753954314 20 -0.070991536504099284 21 -0.066697295058473993
		 22 -0.063513635969278726 23 -0.060004506085522713 24 -0.055878631615127961 25 -0.051645775606984468
		 26 -0.049081953488681662 27 -0.045434685041895961 28 -0.041290563357316179 29 -0.037799243481179357
		 30 -0.034178413772645133 31 -0.030457778842454319 32 -0.027898857143464462 33 -0.024311144375666838
		 34 -0.020879713206463146 35 -0.018450166934640799 36 -0.015027971163172671 37 -0.011552891800589993
		 38 -0.0089157573196292916 39 -0.0070970488673178234 40 -0.0054967013210281412 41 -0.0045627708144218015
		 42 -0.0028271686225694315 43 -0.00078647916258584027 44 0.00049838899715259899 45 0.0024936275179606726
		 46 0.0044304975477024167 47 0.0055740333898796068 48 0.0066951056922831542 49 0.0078401594633215055
		 50 0.0071027366167131234 51 0.0073423899319839947 52 0.0040181663071727769 53 -0.0023656342919425866
		 54 -0.010185361729572795 55 -0.017941424010951279 56 -0.025535715610283338 57 -0.032835411619463295
		 58 -0.041208430271012897 59 -0.049950698641737123 60 -0.058150274491132914 61 -0.066399273808851522
		 62 -0.07427870201664466 63 -0.082455935658418522 64 -0.090744741552715502 65 -0.098123064065760934
		 66 -0.10662723848178091 67 -0.11485098181038483 68 -0.12324184073863548 69 -0.13118079335489741
		 70 -0.14056500917086417 71 -0.15051843336168008 72 -0.15835458922640577 73 -0.16706662514199538
		 74 -0.17665346349819866 75 -0.18702413258820988 76 -0.19575248416239949 77 -0.20606342155174778
		 78 -0.21604034946420042 79 -0.22586483196161555 80 -0.23536264767285842 81 -0.24391036324024296
		 82 -0.25304446765732552 83 -0.2629395875726846 84 -0.27254391079452256 85 -0.28150272137732169
		 86 -0.29240725450919303 87 -0.30255093717691794 88 -0.31238750124532738 89 -0.32273614141173979
		 90 -0.33307192202924368 91 -0.34320735114564854 92 -0.35469798788213114 93 -0.36628763114262042
		 94 -0.37735205778922476;
createNode animCurveTL -n "marker_10_MKR_translateY";
	rename -uid "1FB4AFE9-4FFC-25C9-C862-44982CA71CD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 -0.1150341464281362 1 -0.11404641333783183
		 2 -0.11314531939504485 3 -0.11035332514365359 4 -0.10876129173019089 5 -0.10882207918415071
		 6 -0.10964090903038359 7 -0.10913691767409023 8 -0.10957732665588443 9 -0.10962416392623847
		 10 -0.11041795847229774 11 -0.11020901117785459 12 -0.10949593102669275 13 -0.10848741236347209
		 14 -0.10742060642409945 15 -0.10634299832211397 16 -0.10643045758384012 17 -0.10604585213898926
		 18 -0.10624807403453623 19 -0.10673676973602775 20 -0.10674162416309385 21 -0.10660793600899882
		 22 -0.10649348171929424 23 -0.1058978036396131 24 -0.10645742418927517 25 -0.10652589098701293
		 26 -0.10703461845085976 27 -0.10858319821030904 28 -0.10880920503477837 29 -0.10741590840113835
		 30 -0.10606040488531909 31 -0.10565956719175074 32 -0.1054883988716111 33 -0.10543283621717875
		 34 -0.10385349471802674 35 -0.10438658176147886 36 -0.10688136486090472 37 -0.10799428881911971
		 38 -0.10834318197110332 39 -0.10950784047485168 40 -0.10998338498888627 41 -0.10948228232921681
		 42 -0.10903306137001423 43 -0.10890047199730007 44 -0.10954078435472336 45 -0.11093825710883698
		 46 -0.1101641950991657 47 -0.10967783726927716 48 -0.1080754870087684 49 -0.10684151809471742
		 50 -0.10667628824440822 51 -0.10599911626581954 52 -0.10763802497113467 53 -0.10894035788594192
		 54 -0.11057327708050191 55 -0.11140354799212993 56 -0.10961284142611788 57 -0.1071170386880666
		 58 -0.10487222529757539 59 -0.10559167473110953 60 -0.10559575425605539 61 -0.10748459209579347
		 62 -0.10860427260405919 63 -0.11072496723995545 64 -0.11207243326451971 65 -0.11221814816144482
		 66 -0.11073630982714849 67 -0.11113475143296803 68 -0.11248542551942803 69 -0.11269470754579497
		 70 -0.11268469461586839 71 -0.11323452796392292 72 -0.11401214541913618 73 -0.11379157242322652
		 74 -0.11277254901046624 75 -0.11195710713097573 76 -0.11273369230940505 77 -0.11375613359803854
		 78 -0.11391352282235262 79 -0.1145811862485076 80 -0.11709364545576711 81 -0.11813669241232821
		 82 -0.12003210466569392 83 -0.12086941408541657 84 -0.12045235725165088 85 -0.11936262648754165
		 86 -0.11894340942136239 87 -0.12065269633259135 88 -0.12247511349087997 89 -0.12375156862048187
		 90 -0.12366777349543984 91 -0.12263757071666559 92 -0.12313245923963784 93 -0.12590804850802095
		 94 -0.12939686588289417;
createNode animCurveTU -n "marker_10_MKR_enable";
	rename -uid "F764C639-4934-B192-7530-4F97A6ACED33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 97 ".ktv[0:96]"  -1 0 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1
		 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1
		 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1
		 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1
		 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1
		 94 1 95 0;
createNode animCurveTU -n "marker_10_MKR_weight";
	rename -uid "E1CA2010-432F-84A4-2DAE-26A73A4753E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1;
createNode animCurveTL -n "marker_11_MKR_translateX";
	rename -uid "CE638736-4AB5-4314-78A3-41B9FD49CCCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 -0.24622006567282789 1 -0.24411232136898792
		 2 -0.24139539147672695 3 -0.23819132178818514 4 -0.2348867544039015 5 -0.230401326621263
		 6 -0.22596359474052879 7 -0.2215576552874774 8 -0.21708710597814163 9 -0.21305773241673898
		 10 -0.20861159474061597 11 -0.20314085816286592 12 -0.19876523919068512 13 -0.1935025360894605
		 14 -0.19001887595211747 15 -0.18508978588315256 16 -0.18056869261131342 17 -0.17637844980707756
		 18 -0.17301623380992842 19 -0.16922875640059287 20 -0.16535309231660816 21 -0.16099124850829538
		 22 -0.15769188982116122 23 -0.15403159157263457 24 -0.14980622491274026 25 -0.14540961438711325
		 26 -0.14271506370146664 27 -0.13889991788325384 28 -0.13449132024720922 29 -0.13090131517489717
		 30 -0.12700440525361234 31 -0.12309204182086991 32 -0.12032678981123179 33 -0.11649382912102269
		 34 -0.11284489953829885 35 -0.11012094103903219 36 -0.10638007010197381 37 -0.10266156680913158
		 38 -0.099670816652105532 39 -0.097575898408570116 40 -0.095598501158648042 41 -0.094378569566252402
		 42 -0.092351663203469159 43 -0.089929334792215154 44 -0.088289424903722991 45 -0.085894910544735914
		 46 -0.083613554043519667 47 -0.082127003034376367 48 -0.080592987424547624 49 -0.079113681277600822
		 50 -0.07937765547946235 51 -0.078749049323753539 52 -0.08164502977493826 53 -0.087619519388032474
		 54 -0.094971974654357749 55 -0.10233172330452772 56 -0.10954721411698048 57 -0.11658289322636095
		 58 -0.12453632895916406 59 -0.13291935869166155 60 -0.14079875590167457 61 -0.14870970231948183
		 62 -0.15612914496445329 63 -0.16390367189434218 64 -0.17196166185387202 65 -0.17898696506364264
		 66 -0.18714573677950502 67 -0.19505851133445579 68 -0.20301964926030214 69 -0.21066096925071809
		 70 -0.21965644243365762 71 -0.2292893156405626 72 -0.23683420286097945 73 -0.24525911601590983
		 74 -0.25448996963058013 75 -0.2644953383772275 76 -0.2729532287365084 77 -0.28290194649284639
		 78 -0.29251320608543868 79 -0.30199318329602831 80 -0.31121672433580022 81 -0.31937368669231325
		 82 -0.32817758614560211 83 -0.33763695313528141 84 -0.34694489248081256 85 -0.35556158591691578
		 86 -0.36612574957716615 87 -0.37586703587444503 88 -0.38533570171392928 89 -0.39529549340721454
		 90 -0.40534074412040028 91 -0.41501695328449911 92 -0.42607870507654183 93 -0.43735440511827206
		 94 -0.44798146514853182;
createNode animCurveTL -n "marker_11_MKR_translateY";
	rename -uid "5EC61AC8-41F8-BFB2-2194-F6868117C826";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 -0.11343313886655992 1 -0.11250119014863119
		 2 -0.1116353724701406 3 -0.10897307350830393 4 -0.10740803179256392 5 -0.10755192065590413
		 6 -0.10841062221997028 7 -0.10809870718190356 8 -0.10861287164511552 9 -0.1087450886783764
		 10 -0.10944698226171684 11 -0.10933333896579644 12 -0.10858623295963998 13 -0.10759252886305193
		 14 -0.10669826091835738 15 -0.10555747316845349 16 -0.10544874057993425 17 -0.10514787934509223
		 18 -0.10538566544679245 19 -0.10605321595950884 20 -0.10622411884997601 21 -0.10623257041608919
		 22 -0.1063721097092537 23 -0.10603352413085826 24 -0.10681826540990452 25 -0.10702640599521784
		 26 -0.10786755702227779 27 -0.10972818004159018 28 -0.11017714055802347 29 -0.10911495157611739
		 30 -0.10785034001133431 31 -0.10753105840725324 32 -0.10749186059852561 33 -0.10753805998333432
		 34 -0.10599275798214997 35 -0.10660777546766775 36 -0.10923425619645138 37 -0.11037439194871945
		 38 -0.11090854637349906 39 -0.11197986634781759 40 -0.11266021794217168 41 -0.11237869034624332
		 42 -0.1121732605998898 43 -0.11209849837534458 44 -0.11290702275651987 45 -0.11442551266240647
		 46 -0.11383638038887584 47 -0.11360845050973495 48 -0.1120827049146968 49 -0.11097987255103237
		 50 -0.11097685229822907 51 -0.1105125928616561 52 -0.11219494746851466 53 -0.11361265366955181
		 54 -0.11545960627654694 55 -0.11659458832430053 56 -0.11490647941184989 57 -0.11242410338660958
		 58 -0.11036178419581794 59 -0.11127208547911388 60 -0.11146581690021296 61 -0.11343470651603854
		 62 -0.11482114685279848 63 -0.11703309639640913 64 -0.11869877396603484 65 -0.1191719476814237
		 66 -0.11789721453501822 67 -0.11854655740308268 68 -0.12016119036015566 69 -0.12063565069516741
		 70 -0.12091341879624229 71 -0.12167572561838691 72 -0.12266463867231459 73 -0.12274047699316992
		 74 -0.1221098585992571 75 -0.12141681903492008 76 -0.12243477548762988 77 -0.12379845616025287
		 78 -0.12405104385066895 79 -0.12509075089984001 80 -0.12779713262352516 81 -0.12915690813840025
		 82 -0.1312690886170762 83 -0.13245670455377023 84 -0.13219203002762486 85 -0.13134394651623355
		 86 -0.13124972677906743 87 -0.13323270273625243 88 -0.13538408877914249 89 -0.13709495247351255
		 90 -0.13739846000399503 91 -0.13648662751560359 92 -0.137432017509935 93 -0.14055907821017516
		 94 -0.14436995778754758;
createNode animCurveTU -n "marker_11_MKR_enable";
	rename -uid "ADD8EA40-4324-03BD-1A90-029F0F2C7B82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 97 ".ktv[0:96]"  -1 0 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1
		 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1
		 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1
		 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1
		 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1
		 94 1 95 0;
createNode animCurveTU -n "marker_11_MKR_weight";
	rename -uid "13EDF593-4C52-12C1-DBD9-C3B5DB5B51DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1;
createNode animCurveTL -n "marker_12_MKR_translateX";
	rename -uid "10ADCE20-4699-D59C-BBE4-90BAEA56E198";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 -0.36855483639563408 1 -0.36607915203183616
		 2 -0.36218591758631757 3 -0.3580817051569038 4 -0.35413110340041726 5 -0.34868158175780095
		 6 -0.34346218148550001 7 -0.33801380402956271 8 -0.33242578354347257 9 -0.32734890111060044
		 10 -0.32190259198426574 11 -0.31548483194090343 12 -0.30991855207280466 13 -0.30369122088122802
		 14 -0.29914072004511105 15 -0.29313083326827549 16 -0.28740031711319292 17 -0.28213188843465198
		 18 -0.27757951770264155 19 -0.27256834150974041 20 -0.26749959315779559 21 -0.26167631429619187
		 22 -0.25707020349135673 23 -0.25211134193285245 24 -0.24640997379823631 25 -0.2407667426788912
		 26 -0.23667501340436903 27 -0.23156454650573161 28 -0.22577813951055381 29 -0.22080499056330039
		 30 -0.21554571511378268 31 -0.21017297156780379 32 -0.20595782066653223 33 -0.20063484703110107
		 34 -0.19552885902201256 35 -0.19128772837819785 36 -0.18604305164437257 37 -0.18081501877390871
		 38 -0.17641527498721177 39 -0.1728161365467572 40 -0.16948447723858728 41 -0.16688399868379916
		 42 -0.16337270492781036 43 -0.1595040554170849 44 -0.15649554786224279 45 -0.15244604845385962
		 46 -0.14871146009976488 47 -0.14569767753450102 48 -0.14275645907631951 49 -0.13987760092059859
		 50 -0.13868489264725081 51 -0.13657352249513804 52 -0.13778572580633774 53 -0.14236439875621087
		 54 -0.14822056950376439 55 -0.15399754653712217 56 -0.15975715441589677 57 -0.16510243377549194
		 58 -0.17160281083275186 59 -0.17835900095071516 60 -0.18472423256397813 61 -0.19101138292415487
		 62 -0.19680587192717908 63 -0.20312628220946982 64 -0.20963025818362224 65 -0.21524909634819189
		 66 -0.22196738094154544 67 -0.22830199411221258 68 -0.23466026184617828 69 -0.2404666141338957
		 70 -0.2479514281599185 71 -0.25591797382111797 72 -0.26198132349664388 73 -0.26877583247470083
		 74 -0.27627687661728523 75 -0.28431908216599577 76 -0.29089095384171926 77 -0.29896934464348635
		 78 -0.30667959529191163 79 -0.31430392558340003 80 -0.32147591448603202 81 -0.32778899419847918
		 82 -0.33447981331412091 83 -0.34195084990902558 84 -0.34915391670627666 85 -0.35570501055601278
		 86 -0.36414998777790036 87 -0.37155214677768333 88 -0.37885570534425889 89 -0.38635107177995259
		 90 -0.39388966285062788 91 -0.40109288226622009 92 -0.40979774310813316 93 -0.4184514620180243
		 94 -0.42671615955808107;
createNode animCurveTL -n "marker_12_MKR_translateY";
	rename -uid "320CB625-4A82-5DA9-1D34-F1BCEED266E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 -0.15292804008557342 1 -0.15169198976747794
		 2 -0.15093405433651402 3 -0.14819055045839535 4 -0.14672514573356904 5 -0.14692426119691493
		 6 -0.14781921883146132 7 -0.14749968011142045 8 -0.14813219957107476 9 -0.14827701216883105
		 10 -0.14893826216582207 11 -0.14864629674423835 12 -0.1479496066147104 13 -0.14686423298777368
		 14 -0.14597857301602696 15 -0.14477809629497401 16 -0.14450239045927055 17 -0.14415957210893943
		 18 -0.14440686143075177 19 -0.1450440844483008 20 -0.14546472335707733 21 -0.14551287712483629
		 22 -0.14582747335956292 23 -0.14565794700833767 24 -0.14661587611938354 25 -0.1469663856319719
		 26 -0.14804672282915449 27 -0.15012811932412329 28 -0.15064865555818019 29 -0.14965627228634037
		 30 -0.14857852095157953 31 -0.14818441598479859 32 -0.1481302566187413 33 -0.1482174720115822
		 34 -0.14655017950980037 35 -0.14718368383272346 36 -0.14978260701393115 37 -0.15099496723710948
		 38 -0.15145536945651766 39 -0.15251435948449893 40 -0.15313623704976193 41 -0.15303392935268695
		 42 -0.15280641032685399 43 -0.15271006356536448 44 -0.15365607227185912 45 -0.1551862556932514
		 46 -0.15462409122059706 47 -0.15447379365212949 48 -0.15290962597714675 49 -0.15179542183995959
		 50 -0.15186307234310409 51 -0.15139328110956563 52 -0.15312089751150065 53 -0.15457582426397881
		 54 -0.15644823497861565 55 -0.15766012396910556 56 -0.15599861506791135 57 -0.15366516440661177
		 58 -0.15168338283974697 59 -0.15269766152339176 60 -0.15297492811600744 61 -0.15503428429119542
		 62 -0.15652127850178338 63 -0.15882643244982148 64 -0.16062599761911484 65 -0.16117739298444883
		 66 -0.16007928758954787 67 -0.16075397360473181 68 -0.16252921974083401 69 -0.16314539420353774
		 70 -0.16358844654605292 71 -0.16453303687213611 72 -0.16561726456708176 73 -0.16584001295930972
		 74 -0.1652189750048183 75 -0.16472041102251339 76 -0.16585869577062701 77 -0.16727208845907449
		 78 -0.16770262893651861 79 -0.16883378747318967 80 -0.17167026521929041 81 -0.17317992710838215
		 82 -0.17536244379091898 83 -0.17671077480294278 84 -0.1766020919493943 85 -0.17583558835501994
		 86 -0.17586150768249026 87 -0.17797345972836826 88 -0.18014656012415781 89 -0.18184732437950069
		 90 -0.18232202464253405 91 -0.18160035395807461 92 -0.18260166432992503 93 -0.18579984959869211
		 94 -0.18975978226605411;
createNode animCurveTU -n "marker_12_MKR_enable";
	rename -uid "E17B726B-4E33-15A5-25DD-B7B0ECC4D0E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 97 ".ktv[0:96]"  -1 0 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1
		 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1
		 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1
		 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1
		 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1
		 94 1 95 0;
createNode animCurveTU -n "marker_12_MKR_weight";
	rename -uid "5B470587-4DB7-E6AA-7A42-E18301AA5F9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1;
createNode animCurveTL -n "marker_13_MKR_translateX";
	rename -uid "702D2F68-45BC-0BFD-9A52-0188FA0D05EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 0.1113721384641253 1 0.11560461937000965
		 2 0.12129888902210273 3 0.12862267585249609 4 0.13649017972203725 5 0.14626662963596682
		 6 0.15637719773764369 7 0.16679674207306772 8 0.17726763180381633 9 0.18709964728664363
		 10 0.19709449625272546 11 0.2079349231417984 12 0.21775412577995434 13 0.22829068587232715
		 14 0.23693804701063037 15 0.24732494620662093 16 0.25715448688203701 17 0.26627289294172463
		 18 0.27479385099273257 19 0.28337858355655277 20 0.29236126923171413 21 0.30171760384209045
		 22 0.30982175394258027 23 0.31822193079314998 24 0.32696101735030003 25 0.33566185950260152
		 26 0.34224533247048938 27 0.3496972708508308 28 0.35800892231249948 29 0.36511500915799522
		 30 0.37282820549468643 31 0.38030854822949389 32 0.38645041239569633 33 0.39381635099920898
		 34 0.40075177351206481 35 0.40621221675467867 36 0.41251864015715467 37 0.41894752709908045
		 38 0.42420420191183117 39 0.42830569063941837 40 0.43212636691750217 41 0.43521883234523617
		 42 0.43908879913367693 43 0.44301380128541068 44 0.44605742020653338 45 0.44992568165691815
		 46 0.45356714893001271 47 0.45630723851785338 48 0.4587775510046781 49 0.46145916513647711
		 50 0.46149004889341094 51 0.4628918112580096 52 0.45991041948157962 53 0.45329920068341856
		 54 0.44509927187194365 55 0.43683132932563673 56 0.42918211834119668 57 0.42171780968350814
		 58 0.41304673870249575 59 0.40392908203545996 60 0.39550816997061244 61 0.38659135997404237
		 62 0.37844658333552306 63 0.36996128311195509 64 0.36135619350214743 65 0.35369841090579923
		 66 0.344955064371677 67 0.33637131795671626 68 0.32784267459988059 69 0.31962657092973745
		 70 0.3099647806584398 71 0.29978231092251229 72 0.29175284959355641 73 0.28294214023170972
		 74 0.2733286704892508 75 0.26298100635008936 76 0.25407380326153639 77 0.24378861872216129
		 78 0.23389887588106106 79 0.22397899886259987 80 0.21444460375971908 81 0.20608337772301066
		 82 0.1970317856517525 83 0.1873387138873196 84 0.1779636849792966 85 0.16927805088415449
		 86 0.15873486507122148 87 0.1488725616536094 88 0.13940034664034451 89 0.12945715920383738
		 90 0.11960956846717119 91 0.11016001718400492 92 0.099238054398598674 93 0.088318760201149593
		 94 0.077740167715706798;
createNode animCurveTL -n "marker_13_MKR_translateY";
	rename -uid "3D23974C-47AC-1986-DC04-13961689383F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 -0.2604872806040629 1 -0.2592035134792483
		 2 -0.25772096804622913 3 -0.25428519049269971 4 -0.25207934506802798 5 -0.25123414950531492
		 6 -0.25099148236546753 7 -0.24932657569608541 8 -0.2484787127802523 9 -0.2473777827364525
		 10 -0.24739143825126458 11 -0.2465017263114811 12 -0.244753061117429 13 -0.24302775619655481
		 14 -0.24080327347306013 15 -0.23893592854810847 16 -0.23852008609117836 17 -0.23724992208086482
		 18 -0.23618769727338462 19 -0.23547992881239899 20 -0.23379290002859537 21 -0.23212104052907928
		 22 -0.22997950134405593 23 -0.22756278567715976 24 -0.22603811089395726 25 -0.22447531451534775
		 26 -0.22270930115064747 27 -0.22199545764952816 28 -0.22064820023630349 29 -0.21712081386583021
		 30 -0.21394917574456956 31 -0.2123048760055381 32 -0.21049768098354127 33 -0.20909487908539387
		 34 -0.2067075516828874 35 -0.20566596575231538 36 -0.20671825194244203 37 -0.20644084939039298
		 38 -0.20568693797566417 39 -0.2058211373956923 40 -0.20512757542171917 41 -0.20260592318197224
		 42 -0.2004969210221636 43 -0.19910648087514782 44 -0.19774145709083646 45 -0.19763142982746573
		 46 -0.19499820296436166 47 -0.19252603950757907 48 -0.18966892997923773 49 -0.18717518071897621
		 50 -0.18513598092471034 51 -0.18249735338634154 52 -0.18250439989984557 53 -0.18245225917545355
		 54 -0.18235624483741253 55 -0.18090236263285286 56 -0.17778164739221775 57 -0.17367169383862352
		 58 -0.16975492727945557 59 -0.16840667749346322 60 -0.16683659227559866 61 -0.1674225849352467
		 62 -0.16661274980229096 63 -0.1673348445651231 64 -0.16644211316464602 65 -0.16459195067947208
		 66 -0.16122236967988868 67 -0.15962768204761579 68 -0.15909837670191862 69 -0.1571579120061381
		 70 -0.15496285932738407 71 -0.15349381309897836 72 -0.1524978229632637 73 -0.15027285427962905
		 74 -0.14755458788101128 75 -0.14504674423401498 76 -0.14416655529860428 77 -0.1430626045613585
		 78 -0.14164876966976736 79 -0.14085488174126504 80 -0.14169008913113201 81 -0.14136795042883565
		 82 -0.14154708187820336 83 -0.14025340967952032 84 -0.13818447202030265 85 -0.13581812295755746
		 86 -0.13351090677006533 87 -0.13349516156266844 88 -0.13356118803891409 89 -0.13293586010491415
		 90 -0.13105173488596117 91 -0.12818282408042242 92 -0.12716501156518684 93 -0.12796599858380114
		 94 -0.12939666860031934;
createNode animCurveTU -n "marker_13_MKR_enable";
	rename -uid "FB730EF6-4649-5618-5AA7-FDA1B6ADD5C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 97 ".ktv[0:96]"  -1 0 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1
		 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1
		 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1
		 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1
		 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1
		 94 1 95 0;
createNode animCurveTU -n "marker_13_MKR_weight";
	rename -uid "4509AE8C-4CD7-C8F5-DF36-75B33B878D84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1;
createNode animCurveTL -n "marker_14_MKR_translateX1";
	rename -uid "EB818741-4574-3E3A-DA6D-D6A904E56120";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 0.20609668250246571 1 0.20703299619344706
		 2 0.2079299269632533 3 0.20893146892360637 4 0.20958103445683574 5 0.21069751889931698
		 6 0.21137333071732645 7 0.21191029217671553 8 0.21218010596684778 9 0.21213979780455372
		 10 0.21268244469687747 11 0.21442298193921416 12 0.21487987407243936 13 0.2162598864843065
		 14 0.21578780346079574 15 0.21665494023478493 16 0.21712688966241933 17 0.21709463969161913
		 18 0.21597546344908203 19 0.21515385086492733 20 0.21417846534228968 21 0.21382376727744257
		 22 0.21197808891513192 23 0.21054148758612101 24 0.20968255164986138 25 0.20911608585186969
		 26 0.20693387182675893 27 0.20571140744262173 28 0.2053512788560492 29 0.2040840420856761
		 30 0.20288043930945465 31 0.20172058040290719 32 0.19941768063881893 33 0.19816591845537956
		 34 0.19684612576037497 35 0.19432210793423232 36 0.19293397357244957 37 0.19175480515071641
		 38 0.18990399442471373 39 0.18726077191726975 40 0.18439481915954692 41 0.18075033878518665
		 42 0.17802787755687621 43 0.17551822374229775 44 0.17205385191582012 45 0.16958603327367405
		 46 0.16696713970229504 47 0.16345027623047759 48 0.16029992390661796 49 0.15710672405194037
		 50 0.15187060203908542 51 0.14756235039902621 52 0.13939318250748411 53 0.12851739028495102
		 54 0.11604473740456578 55 0.1034036877341612 56 0.091393562743998125 57 0.079359160446148658
		 58 0.066440490854919432 59 0.053045935645921416 60 0.040212286038990741 61 0.02753636765726597
		 62 0.015148921157243977 63 0.0026577547998259954 64 -0.0098744241238262753 65 -0.021441138953746719
		 66 -0.034160365109583646 67 -0.046864641270058405 68 -0.059644642388206714 69 -0.072205903123424897
		 70 -0.086295154623440118 71 -0.10054067856859611 72 -0.11272588152693541 73 -0.12593433315668623
		 74 -0.13989438819648153 75 -0.1550227433304523 76 -0.16871277312261407 77 -0.18414350905466575
		 78 -0.1992173955706743 79 -0.21394759702963068 80 -0.22831560384422039 81 -0.24187486726489538
		 82 -0.25598619500470104 83 -0.27110596134726339 84 -0.28608519384738773 85 -0.30041626671164812
		 86 -0.31699334054146644 87 -0.33280620297780139 88 -0.34848685131970658 89 -0.36486960221386644
		 90 -0.3815533992277339 91 -0.39807365305093351 92 -0.41604027857953391 93 -0.43424799169784817
		 94 -0.45190394581182541;
createNode animCurveTL -n "marker_14_MKR_translateY1";
	rename -uid "34ED5841-4D64-7ACC-7761-02B82572AA68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 0.22876943661750371 1 0.22964082122060403
		 2 0.23052964781176932 3 0.23297783963789165 4 0.23401701532588315 5 0.23336955254202041
		 6 0.23188921437317533 7 0.23181602627027398 8 0.23071653364070277 9 0.22978337309881458
		 10 0.2277401130936626 11 0.2270974410944947 12 0.2270062696888947 13 0.22695949831016315
		 14 0.22750113186855891 15 0.22750324896272334 16 0.22615664018119408 17 0.22553555292356864
		 18 0.22452901366044209 19 0.22309349827091784 20 0.22257355094778619 21 0.22207727478947992
		 22 0.22165754643717306 23 0.2216213050677035 24 0.2206374959856382 25 0.21990432283388384
		 26 0.21916234888358932 27 0.21728765584606735 28 0.21634643898348205 29 0.21731353063835035
		 30 0.21806560334377167 31 0.21740604339480263 32 0.21660612604723173 33 0.21580344411099339
		 34 0.21620811059984102 35 0.21480070560931674 36 0.21134232172760103 37 0.20944921169270059
		 38 0.20814868419188048 39 0.2059399580564294 40 0.20453510524986562 41 0.20451204369081888
		 42 0.20433316367441923 43 0.20345759920172679 44 0.20212018193502723 45 0.1999676605167684
		 46 0.20013742614105212 47 0.20002994257476248 48 0.20078622943454061 49 0.20130598896136243
		 50 0.20071027698582089 51 0.20081705034212005 52 0.19812144168107193 53 0.19573490556713058
		 54 0.19307724336291232 55 0.19146552894508484 56 0.19246589645462042 57 0.19421019342951862
		 58 0.19587248685550485 59 0.19468064814974584 60 0.19405103786703015 61 0.19153451978267422
		 62 0.18998789110514558 63 0.18750041600261524 64 0.18592996544445128 65 0.18562641176730388
		 66 0.18702955926467912 67 0.18661568267446726 68 0.18513178483978243 69 0.18496851691538263
		 70 0.18507015046059916 71 0.18479642940785868 72 0.18403640516508291 73 0.18447081738170534
		 74 0.18579248049716868 75 0.18691719978971699 76 0.18656080171054379 77 0.18611996437487166
		 78 0.18661360277661676 79 0.18645250397366042 80 0.18468459599597198 81 0.18423978179934153
		 82 0.18317235995648662 83 0.18321356013551837 84 0.18463944595396464 85 0.18679907917662764
		 86 0.18843828207808178 87 0.18791115073886966 88 0.18738343839770422 89 0.18753483488893807
		 90 0.18903612246331203 91 0.19188884244867244 92 0.19323320945665645 93 0.19234154200420328
		 94 0.19073027170332657;
createNode animCurveTU -n "marker_14_MKR_enable";
	rename -uid "04600DA4-49E5-E650-DD66-97A89437516E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 97 ".ktv[0:96]"  -1 0 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1
		 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1
		 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1
		 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1
		 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1
		 94 1 95 0;
createNode animCurveTU -n "marker_14_MKR_weight";
	rename -uid "3778225E-4CB3-8177-EEEB-67A3F72B5535";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1;
createNode animCurveTL -n "marker_15_MKR_translateX";
	rename -uid "3055AF3F-408D-06C3-0601-E3B14523D193";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 0.42208157623760933 1 0.4232099131148368
		 2 0.42435685536644374 3 0.42566010340021854 4 0.42657458895163858 5 0.42787320492177261
		 6 0.42868947269284285 7 0.42936515206315318 8 0.42975598809996918 9 0.42974613759729408
		 10 0.4303142980056327 11 0.43227403747661708 12 0.43285575688178068 13 0.43443107788999624
		 14 0.43395141578269514 15 0.43490208248873663 16 0.43537882721228838 17 0.43526456887369913
		 18 0.43396930142844348 19 0.43289594651040897 20 0.43179467533251958 21 0.43125464065293972
		 22 0.42904419950253125 23 0.42733934447272914 24 0.42615112549557332 25 0.42539296770859714
		 26 0.42275275892123576 27 0.42116654076775084 28 0.42059102855288166 29 0.41897264877424789
		 30 0.41749283849654251 31 0.41596223903092067 32 0.41316675836963213 33 0.41151983486156041
		 34 0.40991692259416534 35 0.4068892882666737 36 0.40490248622196723 37 0.40333411045284051
		 38 0.40099351808048311 39 0.39769785990533135 40 0.39432907435858466 41 0.39005445415187967
		 42 0.38680823288775146 43 0.38373136237547167 44 0.37965344178892402 45 0.37652663521917995
		 46 0.37338847789826701 47 0.36934541602438764 48 0.36561197747209906 49 0.36181577986889513
		 50 0.35585544739457919 51 0.35094059432491309 52 0.34182600585852752 53 0.32983173868894033
		 54 0.31609397868320144 55 0.30233673955533946 56 0.28932100129254046 57 0.27644820477679355
		 58 0.26264051508560005 59 0.24838411632409307 60 0.23481616559632801 61 0.22122597441810976
		 62 0.20815264865725958 63 0.19505573376707286 64 0.18195292085944448 65 0.16996555498933086
		 66 0.15689681990640059 67 0.14381175294061366 68 0.13064415679999553 69 0.11769417612888866
		 70 0.10345023047735946 71 0.089099858614242078 72 0.076679343056590188 73 0.06348934615083246
		 74 0.049473155432154692 75 0.034590977667290135 76 0.02098460586015316 77 0.0057559209916184795
		 78 -0.0090168767925077886 79 -0.02344275535964746 80 -0.037478160574878072 81 -0.050545720782098791
		 82 -0.064269748405756388 83 -0.078694111836294489 84 -0.092931995698871062 85 -0.10653278890194773
		 86 -0.12214990184167357 87 -0.13696602017072501 88 -0.15168080341860002 89 -0.166882012446399
		 90 -0.18225717563351373 91 -0.19735355335138483 92 -0.21374702316891336 93 -0.2302433023771005
		 94 -0.24629974588828424;
createNode animCurveTL -n "marker_15_MKR_translateY";
	rename -uid "B39E6459-45BF-4CB7-D9D2-F19B890A3E80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 0.24682736460003041 1 0.2475849094900362
		 2 0.24842541285696662 3 0.2509569243905474 4 0.25169946662726628 5 0.25085153373675551
		 6 0.24904220293744739 7 0.24872421670497413 8 0.24747379993555008 9 0.24604517768352308
		 10 0.24356677293615958 11 0.24247706452853346 12 0.2420528518815146 13 0.24153202193873702
		 14 0.24183726391249782 15 0.2413300146437457 16 0.23918090183250174 17 0.23806937415965157
		 18 0.23669521905679503 19 0.2348530257327518 20 0.23431016520111181 21 0.23357110532060932
		 22 0.23313076223927431 23 0.23304292542267968 24 0.23199430820462719 25 0.23116310384870697
		 26 0.23053771338838325 27 0.22888486828485444 28 0.2278977612142371 29 0.2288875973428357
		 30 0.22958203577417291 31 0.22843913215805778 32 0.22744506377559826 33 0.22622235804331559
		 34 0.22598865298673398 35 0.22428478168133525 36 0.2205035000941985 37 0.21841261345434915
		 38 0.21666491699758317 39 0.21394676620383646 40 0.21212805152774616 41 0.2120658693581039
		 42 0.21164721652922192 43 0.21042995306407752 44 0.20909929340034283 45 0.20671534323738472
		 46 0.20680162881851882 47 0.20665399855758693 48 0.20702852500456903 49 0.20725056913852891
		 50 0.20645717164426025 51 0.20645125540286902 52 0.20319535474691186 53 0.20015693270599588
		 54 0.19685920431967074 55 0.19468836027032377 56 0.19489174451537328 57 0.19609732217995435
		 58 0.19702392053262341 59 0.19531000382754671 60 0.19415455587065811 61 0.19084487538250716
		 62 0.18887146826494194 63 0.18569524359168799 64 0.18405345205750001 65 0.18343420544503086
		 66 0.18455455536631005 67 0.18373661537644892 68 0.18187175682275081 69 0.18148680219107971
		 70 0.18127798560254671 71 0.1806409516521098 72 0.17960581168209211 73 0.17985961569004827
		 74 0.1807187304636384 75 0.18144087070917603 76 0.18056437335715891 77 0.17966428272041501
		 78 0.17965701832605274 79 0.17899861715807608 80 0.17673289878905751 81 0.17580103617932108
		 82 0.1743981326600218 83 0.17416219314179604 84 0.17509959591692692 85 0.1766300224364965
		 86 0.17785667608631217 87 0.17682656341352476 88 0.17583136529530907 89 0.17543861619172985
		 90 0.17651699051080383 91 0.17881720581420779 92 0.17948507528381252 93 0.1779822681465365
		 94 0.17591634216698615;
createNode animCurveTU -n "marker_15_MKR_enable";
	rename -uid "6170B580-417F-1E03-AC1D-C58C70E274F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 97 ".ktv[0:96]"  -1 0 0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1
		 9 1 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1
		 26 1 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1
		 43 1 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1
		 60 1 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1
		 77 1 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1
		 94 1 95 0;
createNode animCurveTU -n "marker_15_MKR_weight";
	rename -uid "CE1FBCC2-4E6A-E0BE-4CDD-789964F02896";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  0 1 1 1 2 1 3 1 4 1 5 1 6 1 7 1 8 1 9 1
		 10 1 11 1 12 1 13 1 14 1 15 1 16 1 17 1 18 1 19 1 20 1 21 1 22 1 23 1 24 1 25 1 26 1
		 27 1 28 1 29 1 30 1 31 1 32 1 33 1 34 1 35 1 36 1 37 1 38 1 39 1 40 1 41 1 42 1 43 1
		 44 1 45 1 46 1 47 1 48 1 49 1 50 1 51 1 52 1 53 1 54 1 55 1 56 1 57 1 58 1 59 1 60 1
		 61 1 62 1 63 1 64 1 65 1 66 1 67 1 68 1 69 1 70 1 71 1 72 1 73 1 74 1 75 1 76 1 77 1
		 78 1 79 1 80 1 81 1 82 1 83 1 84 1 85 1 86 1 87 1 88 1 89 1 90 1 91 1 92 1 93 1 94 1;
createNode objectSet -n "collection2";
	rename -uid "112677C4-47D0-0E61-6A44-B78F901A10CF";
	addAttr -ci true -sn "solver_list" -ln "solver_list" -dt "string";
	addAttr -ci true -sn "solver_step_list" -ln "solver_step_list" -dt "string";
	addAttr -ci true -sn "override_current_frame" -ln "override_current_frame" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "object_toggle_camera" -ln "object_toggle_camera" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "object_toggle_marker" -ln "object_toggle_marker" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "object_toggle_bundle" -ln "object_toggle_bundle" -min 0 -max 
		1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 12 ".dsm";
	setAttr -s 42 ".dnsm";
	setAttr -l on ".solver_list" -type "string" "[{\"enabled\": true, \"frame_list\": [{\"number\": 0, \"tags\": [\"normal\"]}, {\"number\": 5, \"tags\": [\"normal\"]}, {\"number\": 10, \"tags\": [\"normal\"]}, {\"number\": 15, \"tags\": [\"normal\"]}, {\"number\": 20, \"tags\": [\"normal\"]}, {\"number\": 25, \"tags\": [\"normal\"]}, {\"number\": 30, \"tags\": [\"normal\"]}, {\"number\": 35, \"tags\": [\"normal\"]}, {\"number\": 40, \"tags\": [\"normal\"]}, {\"number\": 45, \"tags\": [\"normal\"]}, {\"number\": 50, \"tags\": [\"normal\"]}, {\"number\": 55, \"tags\": [\"normal\"]}, {\"number\": 60, \"tags\": [\"normal\"]}, {\"number\": 65, \"tags\": [\"normal\"]}, {\"number\": 70, \"tags\": [\"normal\"]}, {\"number\": 75, \"tags\": [\"normal\"]}, {\"number\": 80, \"tags\": [\"normal\"]}, {\"number\": 85, \"tags\": [\"normal\"]}, {\"number\": 90, \"tags\": [\"normal\"]}, {\"number\": 94, \"tags\": [\"normal\"]}], \"name\": \"9a02da66-6b55-414d-b7e4-dbd54c761260\", \"auto_diff_type\": 1, \"max_iterations\": 20}]";
	setAttr -l on ".solver_step_list" -type "string" "[{\"name\": \"0ac27c61-dc85-4e7f-b8f5-136378f47617\", \"frame_list\": [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 94], \"use_static_attrs\": true, \"enabled\": true, \"use_anim_attrs\": true, \"strategy\": \"all_frames_at_once\"}]";
	setAttr -l on ".override_current_frame";
	setAttr -l on ".object_toggle_camera";
	setAttr -l on ".object_toggle_marker";
	setAttr -l on ".object_toggle_bundle";
createNode animCurveTL -n "stA_1_1_translateX";
	rename -uid "FA7ADC24-4D3B-B0CC-1D1B-668B14673863";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 376.52923893825601 94 -0.60997929475457102;
	setAttr -s 2 ".kit[1]"  2;
	setAttr -s 2 ".kot[1]"  2;
createNode animCurveTL -n "stA_1_1_translateY";
	rename -uid "B153DF7B-42B1-970F-8826-518496584B2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 119.06791631704637 94 124.0713689473333;
	setAttr -s 2 ".kit[1]"  2;
	setAttr -s 2 ".kot[1]"  2;
createNode animCurveTL -n "stA_1_1_translateZ";
	rename -uid "CB5D2D0C-4755-C44B-1F66-0C8FF1194ABE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 385.68722272359429 94 535.50426999994409;
	setAttr -s 2 ".kit[1]"  2;
	setAttr -s 2 ".kot[1]"  2;
createNode animCurveTA -n "stA_1_1_rotateX";
	rename -uid "609FB95A-42CB-9B48-B75A-509513EFE04E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -3.4168885094149952 94 -3.11062884112805;
	setAttr -s 2 ".kit[1]"  2;
	setAttr -s 2 ".kot[1]"  2;
createNode animCurveTA -n "stA_1_1_rotateY";
	rename -uid "5C7CE42F-47A2-418E-998D-8EA7E2A0CECC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 37.936008620984168 94 -33.221722119537745;
	setAttr -s 2 ".kit[1]"  2;
	setAttr -s 2 ".kot[1]"  2;
createNode animCurveTA -n "stA_1_1_rotateZ";
	rename -uid "DE78CB48-4598-93D3-23F7-6FB15CE02FFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.47371105565481614 94 -0.0015719469666055409;
	setAttr -s 2 ".kit[1]"  2;
	setAttr -s 2 ".kot[1]"  2;
createNode script -n "mmSolver_data_node";
	rename -uid "B83B3D40-4BE6-0161-AAA7-A1B0CA4FE977";
	addAttr -ci true -sn "mmSolver_data" -ln "mmSolver_data" -dt "string";
	setAttr -l on ".mmSolver_data" -type "string" "{\"active_collection_uid\": \"4523B01A-4183-C639-0E77-74B4934EF81E\"}";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
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
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr "expression1.out[0]" "imagePlaneShape1.fe";
connectAttr "mmMarkerScale1.ot" "markerGroup1.t";
connectAttr "mmMarkerScale1.os" "markerGroup1.s";
connectAttr "marker_01_MKR_translateX.o" "marker_01_MKR.tx" -l on;
connectAttr "marker_01_MKR_translateY.o" "marker_01_MKR.ty" -l on;
connectAttr "marker_01_MKR_enable.o" "marker_01_MKR.enable" -l on;
connectAttr "marker_01_MKR_weight.o" "marker_01_MKR.weight";
connectAttr "marker_01_MKR.enable" "marker_01_MKR.lodv";
connectAttr "bundle_01_BND.msg" "marker_01_MKR.bundle";
connectAttr "marker_04_MKR_translateX.o" "marker_04_MKR.tx" -l on;
connectAttr "marker_04_MKR_translateY.o" "marker_04_MKR.ty" -l on;
connectAttr "marker_04_MKR_enable.o" "marker_04_MKR.enable" -l on;
connectAttr "marker_04_MKR_weight.o" "marker_04_MKR.weight";
connectAttr "marker_04_MKR.enable" "marker_04_MKR.lodv";
connectAttr "bundle_04_BND.msg" "marker_04_MKR.bundle";
connectAttr "marker_05_MKR_translateX.o" "marker_05_MKR.tx" -l on;
connectAttr "marker_05_MKR_translateY.o" "marker_05_MKR.ty" -l on;
connectAttr "marker_05_MKR_enable.o" "marker_05_MKR.enable" -l on;
connectAttr "marker_05_MKR_weight.o" "marker_05_MKR.weight";
connectAttr "marker_05_MKR.enable" "marker_05_MKR.lodv";
connectAttr "bundle_05_BND.msg" "marker_05_MKR.bundle";
connectAttr "marker_06_MKR_translateX.o" "marker_06_MKR.tx" -l on;
connectAttr "marker_06_MKR_translateY.o" "marker_06_MKR.ty" -l on;
connectAttr "marker_06_MKR_enable.o" "marker_06_MKR.enable" -l on;
connectAttr "marker_06_MKR_weight.o" "marker_06_MKR.weight";
connectAttr "marker_06_MKR.enable" "marker_06_MKR.lodv";
connectAttr "bundle_06_BND.msg" "marker_06_MKR.bundle";
connectAttr "marker_07_MKR_translateX.o" "marker_07_MKR.tx" -l on;
connectAttr "marker_07_MKR_translateY.o" "marker_07_MKR.ty" -l on;
connectAttr "marker_07_MKR_enable.o" "marker_07_MKR.enable" -l on;
connectAttr "marker_07_MKR_weight.o" "marker_07_MKR.weight";
connectAttr "marker_07_MKR.enable" "marker_07_MKR.lodv";
connectAttr "bundle_07_BND.msg" "marker_07_MKR.bundle";
connectAttr "marker_09_MKR_translateX.o" "marker_09_MKR.tx" -l on;
connectAttr "marker_09_MKR_translateY.o" "marker_09_MKR.ty" -l on;
connectAttr "marker_09_MKR_enable.o" "marker_09_MKR.enable" -l on;
connectAttr "marker_09_MKR_weight.o" "marker_09_MKR.weight";
connectAttr "marker_09_MKR.enable" "marker_09_MKR.lodv";
connectAttr "bundle_09_BND.msg" "marker_09_MKR.bundle";
connectAttr "marker_10_MKR_translateX.o" "marker_10_MKR.tx" -l on;
connectAttr "marker_10_MKR_translateY.o" "marker_10_MKR.ty" -l on;
connectAttr "marker_10_MKR_enable.o" "marker_10_MKR.enable" -l on;
connectAttr "marker_10_MKR_weight.o" "marker_10_MKR.weight";
connectAttr "marker_10_MKR.enable" "marker_10_MKR.lodv";
connectAttr "bundle_10_BND.msg" "marker_10_MKR.bundle";
connectAttr "marker_11_MKR_translateX.o" "marker_11_MKR.tx" -l on;
connectAttr "marker_11_MKR_translateY.o" "marker_11_MKR.ty" -l on;
connectAttr "marker_11_MKR_enable.o" "marker_11_MKR.enable" -l on;
connectAttr "marker_11_MKR_weight.o" "marker_11_MKR.weight";
connectAttr "marker_11_MKR.enable" "marker_11_MKR.lodv";
connectAttr "bundle_11_BND.msg" "marker_11_MKR.bundle";
connectAttr "marker_12_MKR_translateX.o" "marker_12_MKR.tx" -l on;
connectAttr "marker_12_MKR_translateY.o" "marker_12_MKR.ty" -l on;
connectAttr "marker_12_MKR_enable.o" "marker_12_MKR.enable" -l on;
connectAttr "marker_12_MKR_weight.o" "marker_12_MKR.weight";
connectAttr "marker_12_MKR.enable" "marker_12_MKR.lodv";
connectAttr "bundle_12_BND.msg" "marker_12_MKR.bundle";
connectAttr "marker_13_MKR_translateX.o" "marker_13_MKR.tx" -l on;
connectAttr "marker_13_MKR_translateY.o" "marker_13_MKR.ty" -l on;
connectAttr "marker_13_MKR_enable.o" "marker_13_MKR.enable" -l on;
connectAttr "marker_13_MKR_weight.o" "marker_13_MKR.weight";
connectAttr "marker_13_MKR.enable" "marker_13_MKR.lodv";
connectAttr "bundle_13_BND.msg" "marker_13_MKR.bundle";
connectAttr "marker_14_MKR_translateX1.o" "marker_14_MKR.tx" -l on;
connectAttr "marker_14_MKR_translateY1.o" "marker_14_MKR.ty" -l on;
connectAttr "marker_14_MKR_enable.o" "marker_14_MKR.enable" -l on;
connectAttr "marker_14_MKR_weight.o" "marker_14_MKR.weight";
connectAttr "marker_14_MKR.enable" "marker_14_MKR.lodv";
connectAttr "bundle_14_BND.msg" "marker_14_MKR.bundle";
connectAttr "marker_15_MKR_translateX.o" "marker_15_MKR.tx" -l on;
connectAttr "marker_15_MKR_translateY.o" "marker_15_MKR.ty" -l on;
connectAttr "marker_15_MKR_enable.o" "marker_15_MKR.enable" -l on;
connectAttr "marker_15_MKR_weight.o" "marker_15_MKR.weight";
connectAttr "marker_15_MKR.enable" "marker_15_MKR.lodv";
connectAttr "bundle_15_BND.msg" "marker_15_MKR.bundle";
connectAttr "polyCone1.out" "pConeShape1.i";
connectAttr "polyCone2.out" "pConeShape2.i";
connectAttr "polyCone3.out" "pConeShape3.i";
connectAttr "polyCone6.out" "pConeShape6.i";
connectAttr "polyCone7.out" "pConeShape7.i";
connectAttr "polyCone8.out" "pConeShape8.i";
connectAttr "polyCone9.out" "pConeShape9.i";
connectAttr "polyCone10.out" "pConeShape10.i";
connectAttr "polyCone11.out" "pConeShape11.i";
connectAttr "polyCone12.out" "pConeShape12.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "stA_1_1.rz" "collection1.dnsm" -na;
connectAttr "stA_1_1.ry" "collection1.dnsm" -na;
connectAttr "stA_1_1.rx" "collection1.dnsm" -na;
connectAttr "stA_1_1.tz" "collection1.dnsm" -na;
connectAttr "stA_1_1.ty" "collection1.dnsm" -na;
connectAttr "stA_1_1.tx" "collection1.dnsm" -na;
connectAttr "bundle_07_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle_07_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle_07_BND.tx" "collection1.dnsm" -na;
connectAttr "bundle_06_BND.tz" "collection1.dnsm" -na;
connectAttr "bundle_06_BND.ty" "collection1.dnsm" -na;
connectAttr "bundle_06_BND.tx" "collection1.dnsm" -na;
connectAttr "marker_06_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_04_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_15_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_10_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_13_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_14_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_05_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_07_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_11_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_09_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_12_MKR.iog" "collection1.dsm" -na;
connectAttr "marker_01_MKR.iog" "collection1.dsm" -na;
connectAttr "lambert4.oc" "lambert4SG.ss";
connectAttr "pConeShape12.iog" "lambert4SG.dsm" -na;
connectAttr "pConeShape11.iog" "lambert4SG.dsm" -na;
connectAttr "pConeShape10.iog" "lambert4SG.dsm" -na;
connectAttr "pConeShape9.iog" "lambert4SG.dsm" -na;
connectAttr "pConeShape8.iog" "lambert4SG.dsm" -na;
connectAttr "pConeShape7.iog" "lambert4SG.dsm" -na;
connectAttr "pConeShape6.iog" "lambert4SG.dsm" -na;
connectAttr "pConeShape3.iog" "lambert4SG.dsm" -na;
connectAttr "pConeShape2.iog" "lambert4SG.dsm" -na;
connectAttr "pConeShape1.iog" "lambert4SG.dsm" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "lambert4.msg" "materialInfo3.m";
connectAttr ":time1.o" "expression1.tim";
connectAttr "marker_14_MKR_translateY.o" "addDoubleLinear2.i1";
connectAttr "collection1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "stA_1_1Shape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "markerGroup1.depth" "mmMarkerScale1.dpt";
connectAttr "markerGroup1.overscan" "mmMarkerScale1.ovrscn";
connectAttr "stA_1_1Shape1.fl" "mmMarkerScale1.fl";
connectAttr "stA_1_1Shape1.cap" "mmMarkerScale1.cap";
connectAttr "stA_1_1Shape1.fio" "mmMarkerScale1.fio";
connectAttr "marker_06_MKR.iog" "collection2.dsm" -na;
connectAttr "marker_04_MKR.iog" "collection2.dsm" -na;
connectAttr "marker_15_MKR.iog" "collection2.dsm" -na;
connectAttr "marker_10_MKR.iog" "collection2.dsm" -na;
connectAttr "marker_13_MKR.iog" "collection2.dsm" -na;
connectAttr "marker_14_MKR.iog" "collection2.dsm" -na;
connectAttr "marker_05_MKR.iog" "collection2.dsm" -na;
connectAttr "marker_07_MKR.iog" "collection2.dsm" -na;
connectAttr "marker_11_MKR.iog" "collection2.dsm" -na;
connectAttr "marker_09_MKR.iog" "collection2.dsm" -na;
connectAttr "marker_12_MKR.iog" "collection2.dsm" -na;
connectAttr "marker_01_MKR.iog" "collection2.dsm" -na;
connectAttr "stA_1_1.rz" "collection2.dnsm" -na;
connectAttr "stA_1_1.ry" "collection2.dnsm" -na;
connectAttr "stA_1_1.rx" "collection2.dnsm" -na;
connectAttr "stA_1_1.tz" "collection2.dnsm" -na;
connectAttr "stA_1_1.ty" "collection2.dnsm" -na;
connectAttr "stA_1_1.tx" "collection2.dnsm" -na;
connectAttr "bundle_14_BND.tz" "collection2.dnsm" -na;
connectAttr "bundle_14_BND.ty" "collection2.dnsm" -na;
connectAttr "bundle_14_BND.tx" "collection2.dnsm" -na;
connectAttr "bundle_13_BND.tz" "collection2.dnsm" -na;
connectAttr "bundle_13_BND.ty" "collection2.dnsm" -na;
connectAttr "bundle_13_BND.tx" "collection2.dnsm" -na;
connectAttr "bundle_12_BND.tz" "collection2.dnsm" -na;
connectAttr "bundle_12_BND.ty" "collection2.dnsm" -na;
connectAttr "bundle_12_BND.tx" "collection2.dnsm" -na;
connectAttr "bundle_11_BND.tz" "collection2.dnsm" -na;
connectAttr "bundle_11_BND.ty" "collection2.dnsm" -na;
connectAttr "bundle_11_BND.tx" "collection2.dnsm" -na;
connectAttr "bundle_10_BND.tz" "collection2.dnsm" -na;
connectAttr "bundle_10_BND.ty" "collection2.dnsm" -na;
connectAttr "bundle_10_BND.tx" "collection2.dnsm" -na;
connectAttr "bundle_09_BND.tz" "collection2.dnsm" -na;
connectAttr "bundle_09_BND.ty" "collection2.dnsm" -na;
connectAttr "bundle_09_BND.tx" "collection2.dnsm" -na;
connectAttr "bundle_07_BND.tz" "collection2.dnsm" -na;
connectAttr "bundle_07_BND.ty" "collection2.dnsm" -na;
connectAttr "bundle_07_BND.tx" "collection2.dnsm" -na;
connectAttr "bundle_06_BND.tz" "collection2.dnsm" -na;
connectAttr "bundle_06_BND.ty" "collection2.dnsm" -na;
connectAttr "bundle_06_BND.tx" "collection2.dnsm" -na;
connectAttr "bundle_05_BND.tz" "collection2.dnsm" -na;
connectAttr "bundle_05_BND.ty" "collection2.dnsm" -na;
connectAttr "bundle_05_BND.tx" "collection2.dnsm" -na;
connectAttr "bundle_04_BND.tz" "collection2.dnsm" -na;
connectAttr "bundle_04_BND.ty" "collection2.dnsm" -na;
connectAttr "bundle_04_BND.tx" "collection2.dnsm" -na;
connectAttr "bundle_01_BND.tz" "collection2.dnsm" -na;
connectAttr "bundle_01_BND.ty" "collection2.dnsm" -na;
connectAttr "bundle_01_BND.tx" "collection2.dnsm" -na;
connectAttr "bundle_15_BND.tz" "collection2.dnsm" -na;
connectAttr "bundle_15_BND.ty" "collection2.dnsm" -na;
connectAttr "bundle_15_BND.tx" "collection2.dnsm" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert4.msg" ":defaultShaderList1.s" -na;
connectAttr "addDoubleLinear2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of mmSolverBasicSolveB_before.ma
