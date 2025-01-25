//Maya ASCII 2020 scene
//Name: solverAffectsCorrectnessSolverStandard.ma
//Last modified: Mon, Jan 13, 2025 12:55:46 AM
//Codeset: 1252
requires maya "2020";
requires -nodeType "mmMarkerScale" -nodeType "mmLensModelToggle" -nodeType "mmMarkerShape"
		 -nodeType "mmBundleShape" -nodeType "mmMarkerGroupTransform" -nodeType "mmMarkerTransform"
		 -dataType "MMLensData" "mmSolver" "0.5.3";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "202011110415-b1e20b88e2";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19045)\n";
fileInfo "UUID" "657410B3-4904-23D9-D55E-1A912C184166";
createNode transform -s -n "persp";
	rename -uid "59800CFD-4EF6-A270-3F4C-8BA596A4F63B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 28 21 28 ;
	setAttr ".r" -type "double3" -27.938352729602379 44.999999999999972 -5.172681101354183e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1F777B26-4C7B-4F44-D2A0-A290AD11639E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 44.82186966202994;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0F315FED-4E08-1C47-5930-CCAFC8424A78";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A77C2673-452E-AA9C-3D3A-80BCF776F708";
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
	rename -uid "4634F2EB-41B2-A7C0-C3FA-4B9BC63AB40A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1BA823B3-4920-00F4-D545-1B8F3F37604D";
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
	rename -uid "D0EF90D9-44A5-F6A8-F312-80AF8BB9F412";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9E6E0C47-43B0-53B6-7335-3DA4AD5134F9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "myCamera";
	rename -uid "44D481E7-457A-4B6F-971F-F1B2D1220F85";
	setAttr ".t" -type "double3" 30.003780402591893 83.951194822151706 26.67275865199732 ;
	setAttr ".r" -type "double3" -65.738352729602838 35.000000000000256 0 ;
createNode camera -n "myCameraShape" -p "myCamera";
	rename -uid "5D083995-4B46-D6A0-9A09-F695D667C373";
	addAttr -s false -ci true -sn "ilns" -ln "inLens" -dt "MMLensData";
	addAttr -s false -ci true -sn "olns" -ln "outLens" -dt "MMLensData";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".pze" yes;
	setAttr ".zom" 1.356267405483494;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 92.522946749711934;
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode mmMarkerGroupTransform -n "markerGroup1" -p "myCamera";
	rename -uid "85714B5D-4E59-CD54-54AB-94A1BB61906C";
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
createNode mmMarkerTransform -n "head_01_MKR" -p "markerGroup1";
	rename -uid "D06A9F4E-4BAC-8965-CAA1-E2840DB92E84";
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
	addAttr -ci true -sn "node_0F8BB705_4587_8DCF_7E38_CDB94EB76174_attr_translateX" 
		-ln "node_0F8BB705_4587_8DCF_7E38_CDB94EB76174_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_0F8BB705_4587_8DCF_7E38_CDB94EB76174_attr_translateZ" 
		-ln "node_0F8BB705_4587_8DCF_7E38_CDB94EB76174_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_CF53FF4C_4101_18BD_F80D_FC959FB4B30D_attr_translateX" 
		-ln "node_CF53FF4C_4101_18BD_F80D_FC959FB4B30D_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_CF53FF4C_4101_18BD_F80D_FC959FB4B30D_attr_translateZ" 
		-ln "node_CF53FF4C_4101_18BD_F80D_FC959FB4B30D_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_ECCF9B9A_4379_4C5C_7D96_8B8FE572568E_attr_translateX" 
		-ln "node_ECCF9B9A_4379_4C5C_7D96_8B8FE572568E_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_ECCF9B9A_4379_4C5C_7D96_8B8FE572568E_attr_translateZ" 
		-ln "node_ECCF9B9A_4379_4C5C_7D96_8B8FE572568E_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_084EADF1_440C_EB03_2D4B_4B92324EF6AF_attr_translateX" 
		-ln "node_084EADF1_440C_EB03_2D4B_4B92324EF6AF_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_084EADF1_440C_EB03_2D4B_4B92324EF6AF_attr_translateZ" 
		-ln "node_084EADF1_440C_EB03_2D4B_4B92324EF6AF_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_E6DD34B6_4CE3_5AC7_F9A0_42936A5D31BD_attr_translateX" 
		-ln "node_E6DD34B6_4CE3_5AC7_F9A0_42936A5D31BD_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_E6DD34B6_4CE3_5AC7_F9A0_42936A5D31BD_attr_translateZ" 
		-ln "node_E6DD34B6_4CE3_5AC7_F9A0_42936A5D31BD_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_0276BC97_4B41_3DFF_1D6A_4EA90D6ECC19_attr_translateX" 
		-ln "node_0276BC97_4B41_3DFF_1D6A_4EA90D6ECC19_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_0276BC97_4B41_3DFF_1D6A_4EA90D6ECC19_attr_translateZ" 
		-ln "node_0276BC97_4B41_3DFF_1D6A_4EA90D6ECC19_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_B0C939D4_405D_54E8_C663_438E7A5A9E77_attr_translateX" 
		-ln "node_B0C939D4_405D_54E8_C663_438E7A5A9E77_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_B0C939D4_405D_54E8_C663_438E7A5A9E77_attr_translateZ" 
		-ln "node_B0C939D4_405D_54E8_C663_438E7A5A9E77_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_B88566A5_4226_2B38_ECBB_7794E5414E2D_attr_translateX" 
		-ln "node_B88566A5_4226_2B38_ECBB_7794E5414E2D_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_B88566A5_4226_2B38_ECBB_7794E5414E2D_attr_translateZ" 
		-ln "node_B88566A5_4226_2B38_ECBB_7794E5414E2D_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_4830BEEB_4101_7D49_8F8A_C8B71204FD3F_attr_translateX" 
		-ln "node_4830BEEB_4101_7D49_8F8A_C8B71204FD3F_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_4830BEEB_4101_7D49_8F8A_C8B71204FD3F_attr_translateZ" 
		-ln "node_4830BEEB_4101_7D49_8F8A_C8B71204FD3F_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_1405AC62_499A_A517_9760_D9A45957D1FE_attr_translateX" 
		-ln "node_1405AC62_499A_A517_9760_D9A45957D1FE_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_1405AC62_499A_A517_9760_D9A45957D1FE_attr_translateZ" 
		-ln "node_1405AC62_499A_A517_9760_D9A45957D1FE_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_F8E7DA74_445C_8C07_A1FD_6BBF7A2341DD_attr_translateX" 
		-ln "node_F8E7DA74_445C_8C07_A1FD_6BBF7A2341DD_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_F8E7DA74_445C_8C07_A1FD_6BBF7A2341DD_attr_translateZ" 
		-ln "node_F8E7DA74_445C_8C07_A1FD_6BBF7A2341DD_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_4D592583_4530_E995_7D77_9DA3417BA5F0_attr_translateX" 
		-ln "node_4D592583_4530_E995_7D77_9DA3417BA5F0_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_4D592583_4530_E995_7D77_9DA3417BA5F0_attr_translateZ" 
		-ln "node_4D592583_4530_E995_7D77_9DA3417BA5F0_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_DAE7BAA8_461E_915C_F632_5191779AE573_attr_translateX" 
		-ln "node_DAE7BAA8_461E_915C_F632_5191779AE573_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_DAE7BAA8_461E_915C_F632_5191779AE573_attr_translateZ" 
		-ln "node_DAE7BAA8_461E_915C_F632_5191779AE573_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_76E99CA7_4971_DD19_B5B1_D0A2332CFAFC_attr_translateX" 
		-ln "node_76E99CA7_4971_DD19_B5B1_D0A2332CFAFC_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_76E99CA7_4971_DD19_B5B1_D0A2332CFAFC_attr_translateZ" 
		-ln "node_76E99CA7_4971_DD19_B5B1_D0A2332CFAFC_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_7629282D_46D1_71B6_D47C_BC88765AF669_attr_translateX" 
		-ln "node_7629282D_46D1_71B6_D47C_BC88765AF669_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_7629282D_46D1_71B6_D47C_BC88765AF669_attr_translateZ" 
		-ln "node_7629282D_46D1_71B6_D47C_BC88765AF669_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_A0508B9B_4690_5F91_EB4A_EBB32AE2ED95_attr_translateX" 
		-ln "node_A0508B9B_4690_5F91_EB4A_EBB32AE2ED95_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_A0508B9B_4690_5F91_EB4A_EBB32AE2ED95_attr_translateZ" 
		-ln "node_A0508B9B_4690_5F91_EB4A_EBB32AE2ED95_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_4F36CF4F_4F50_9E02_A5BA_F592CABBC56D_attr_translateX" 
		-ln "node_4F36CF4F_4F50_9E02_A5BA_F592CABBC56D_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_4F36CF4F_4F50_9E02_A5BA_F592CABBC56D_attr_translateZ" 
		-ln "node_4F36CF4F_4F50_9E02_A5BA_F592CABBC56D_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_10FBAB09_40F0_0DDA_B773_22ACE0375E35_attr_translateX" 
		-ln "node_10FBAB09_40F0_0DDA_B773_22ACE0375E35_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_10FBAB09_40F0_0DDA_B773_22ACE0375E35_attr_translateZ" 
		-ln "node_10FBAB09_40F0_0DDA_B773_22ACE0375E35_attr_translateZ" -min 0 -max 255 -at "byte";
	setAttr ".t" -type "double3" -0.37640593874057077 0.49763763606956712 -1 ;
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
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 0.00028043865150721757;
	setAttr -l on -k on ".maximumDeviation" 0.00041604772889059221;
	setAttr -l on -k on ".maximumDeviationFrame" 150;
	setAttr -l on ".markerName" -type "string" "01";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint" 1;
	setAttr ".node_0F8BB705_4587_8DCF_7E38_CDB94EB76174_attr_translateX" 1;
	setAttr ".node_0F8BB705_4587_8DCF_7E38_CDB94EB76174_attr_translateZ" 1;
createNode mmMarkerShape -n "head_01_MKRShape" -p "head_01_MKR";
	rename -uid "089147BE-41D3-5C0D-4256-8E85026E36C6";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "head_02_MKR" -p "markerGroup1";
	rename -uid "C7D38F06-4C0E-79F5-2702-30AED407FBF1";
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
	addAttr -ci true -sn "node_0F8BB705_4587_8DCF_7E38_CDB94EB76174_attr_translateX" 
		-ln "node_0F8BB705_4587_8DCF_7E38_CDB94EB76174_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_0F8BB705_4587_8DCF_7E38_CDB94EB76174_attr_translateZ" 
		-ln "node_0F8BB705_4587_8DCF_7E38_CDB94EB76174_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_CF53FF4C_4101_18BD_F80D_FC959FB4B30D_attr_translateX" 
		-ln "node_CF53FF4C_4101_18BD_F80D_FC959FB4B30D_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_CF53FF4C_4101_18BD_F80D_FC959FB4B30D_attr_translateZ" 
		-ln "node_CF53FF4C_4101_18BD_F80D_FC959FB4B30D_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_ECCF9B9A_4379_4C5C_7D96_8B8FE572568E_attr_translateX" 
		-ln "node_ECCF9B9A_4379_4C5C_7D96_8B8FE572568E_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_ECCF9B9A_4379_4C5C_7D96_8B8FE572568E_attr_translateZ" 
		-ln "node_ECCF9B9A_4379_4C5C_7D96_8B8FE572568E_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_084EADF1_440C_EB03_2D4B_4B92324EF6AF_attr_translateX" 
		-ln "node_084EADF1_440C_EB03_2D4B_4B92324EF6AF_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_084EADF1_440C_EB03_2D4B_4B92324EF6AF_attr_translateZ" 
		-ln "node_084EADF1_440C_EB03_2D4B_4B92324EF6AF_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_E6DD34B6_4CE3_5AC7_F9A0_42936A5D31BD_attr_translateX" 
		-ln "node_E6DD34B6_4CE3_5AC7_F9A0_42936A5D31BD_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_E6DD34B6_4CE3_5AC7_F9A0_42936A5D31BD_attr_translateZ" 
		-ln "node_E6DD34B6_4CE3_5AC7_F9A0_42936A5D31BD_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_0276BC97_4B41_3DFF_1D6A_4EA90D6ECC19_attr_translateX" 
		-ln "node_0276BC97_4B41_3DFF_1D6A_4EA90D6ECC19_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_0276BC97_4B41_3DFF_1D6A_4EA90D6ECC19_attr_translateZ" 
		-ln "node_0276BC97_4B41_3DFF_1D6A_4EA90D6ECC19_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_B0C939D4_405D_54E8_C663_438E7A5A9E77_attr_translateX" 
		-ln "node_B0C939D4_405D_54E8_C663_438E7A5A9E77_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_B0C939D4_405D_54E8_C663_438E7A5A9E77_attr_translateZ" 
		-ln "node_B0C939D4_405D_54E8_C663_438E7A5A9E77_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_B88566A5_4226_2B38_ECBB_7794E5414E2D_attr_translateX" 
		-ln "node_B88566A5_4226_2B38_ECBB_7794E5414E2D_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_B88566A5_4226_2B38_ECBB_7794E5414E2D_attr_translateZ" 
		-ln "node_B88566A5_4226_2B38_ECBB_7794E5414E2D_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_4830BEEB_4101_7D49_8F8A_C8B71204FD3F_attr_translateX" 
		-ln "node_4830BEEB_4101_7D49_8F8A_C8B71204FD3F_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_4830BEEB_4101_7D49_8F8A_C8B71204FD3F_attr_translateZ" 
		-ln "node_4830BEEB_4101_7D49_8F8A_C8B71204FD3F_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_1405AC62_499A_A517_9760_D9A45957D1FE_attr_translateX" 
		-ln "node_1405AC62_499A_A517_9760_D9A45957D1FE_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_1405AC62_499A_A517_9760_D9A45957D1FE_attr_translateZ" 
		-ln "node_1405AC62_499A_A517_9760_D9A45957D1FE_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_F8E7DA74_445C_8C07_A1FD_6BBF7A2341DD_attr_translateX" 
		-ln "node_F8E7DA74_445C_8C07_A1FD_6BBF7A2341DD_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_F8E7DA74_445C_8C07_A1FD_6BBF7A2341DD_attr_translateZ" 
		-ln "node_F8E7DA74_445C_8C07_A1FD_6BBF7A2341DD_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_4D592583_4530_E995_7D77_9DA3417BA5F0_attr_translateX" 
		-ln "node_4D592583_4530_E995_7D77_9DA3417BA5F0_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_4D592583_4530_E995_7D77_9DA3417BA5F0_attr_translateZ" 
		-ln "node_4D592583_4530_E995_7D77_9DA3417BA5F0_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_DAE7BAA8_461E_915C_F632_5191779AE573_attr_translateX" 
		-ln "node_DAE7BAA8_461E_915C_F632_5191779AE573_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_DAE7BAA8_461E_915C_F632_5191779AE573_attr_translateZ" 
		-ln "node_DAE7BAA8_461E_915C_F632_5191779AE573_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_76E99CA7_4971_DD19_B5B1_D0A2332CFAFC_attr_translateX" 
		-ln "node_76E99CA7_4971_DD19_B5B1_D0A2332CFAFC_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_76E99CA7_4971_DD19_B5B1_D0A2332CFAFC_attr_translateZ" 
		-ln "node_76E99CA7_4971_DD19_B5B1_D0A2332CFAFC_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_7629282D_46D1_71B6_D47C_BC88765AF669_attr_translateX" 
		-ln "node_7629282D_46D1_71B6_D47C_BC88765AF669_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_7629282D_46D1_71B6_D47C_BC88765AF669_attr_translateZ" 
		-ln "node_7629282D_46D1_71B6_D47C_BC88765AF669_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_A0508B9B_4690_5F91_EB4A_EBB32AE2ED95_attr_translateX" 
		-ln "node_A0508B9B_4690_5F91_EB4A_EBB32AE2ED95_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_A0508B9B_4690_5F91_EB4A_EBB32AE2ED95_attr_translateZ" 
		-ln "node_A0508B9B_4690_5F91_EB4A_EBB32AE2ED95_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_4F36CF4F_4F50_9E02_A5BA_F592CABBC56D_attr_translateX" 
		-ln "node_4F36CF4F_4F50_9E02_A5BA_F592CABBC56D_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_4F36CF4F_4F50_9E02_A5BA_F592CABBC56D_attr_translateZ" 
		-ln "node_4F36CF4F_4F50_9E02_A5BA_F592CABBC56D_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_10FBAB09_40F0_0DDA_B773_22ACE0375E35_attr_translateX" 
		-ln "node_10FBAB09_40F0_0DDA_B773_22ACE0375E35_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_10FBAB09_40F0_0DDA_B773_22ACE0375E35_attr_translateZ" 
		-ln "node_10FBAB09_40F0_0DDA_B773_22ACE0375E35_attr_translateZ" -min 0 -max 255 -at "byte";
	setAttr ".t" -type "double3" -0.29164392511911008 0.31512997718864844 -1 ;
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
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 0.00019258825853864453;
	setAttr -l on -k on ".maximumDeviation" 0.00042482691890200153;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName" -type "string" "02";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint" 1;
	setAttr ".node_CF53FF4C_4101_18BD_F80D_FC959FB4B30D_attr_translateX" 1;
	setAttr ".node_CF53FF4C_4101_18BD_F80D_FC959FB4B30D_attr_translateZ" 1;
createNode mmMarkerShape -n "head_02_MKRShape" -p "head_02_MKR";
	rename -uid "1C5AC8AB-48DB-6A80-EAA6-C59438F6FA19";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode mmMarkerTransform -n "marker1_MKR" -p "markerGroup1";
	rename -uid "887A2338-4164-C579-53FF-57BAE799BD63";
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
	addAttr -ci true -sn "node_10FBAB09_40F0_0DDA_B773_22ACE0375E35_attr_translateX" 
		-ln "node_10FBAB09_40F0_0DDA_B773_22ACE0375E35_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_10FBAB09_40F0_0DDA_B773_22ACE0375E35_attr_translateZ" 
		-ln "node_10FBAB09_40F0_0DDA_B773_22ACE0375E35_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_CF53FF4C_4101_18BD_F80D_FC959FB4B30D_attr_translateZ" 
		-ln "node_CF53FF4C_4101_18BD_F80D_FC959FB4B30D_attr_translateZ" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_CF53FF4C_4101_18BD_F80D_FC959FB4B30D_attr_translateX" 
		-ln "node_CF53FF4C_4101_18BD_F80D_FC959FB4B30D_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_0F8BB705_4587_8DCF_7E38_CDB94EB76174_attr_translateX" 
		-ln "node_0F8BB705_4587_8DCF_7E38_CDB94EB76174_attr_translateX" -min 0 -max 255 -at "byte";
	addAttr -ci true -sn "node_0F8BB705_4587_8DCF_7E38_CDB94EB76174_attr_translateZ" 
		-ln "node_0F8BB705_4587_8DCF_7E38_CDB94EB76174_attr_translateZ" -min 0 -max 255 -at "byte";
	setAttr ".t" -type "double3" 0 0 -1 ;
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
	setAttr -k on ".deviation";
	setAttr -l on -k on ".averageDeviation" 1.9591883824416794e-08;
	setAttr -l on -k on ".maximumDeviation" 1.9591883824416787e-08;
	setAttr -l on -k on ".maximumDeviationFrame" 1;
	setAttr -l on ".markerName";
	setAttr -l on ".markerId";
	setAttr -l on -k on ".markerUsedHint" 1;
	setAttr ".node_10FBAB09_40F0_0DDA_B773_22ACE0375E35_attr_translateX" 1;
	setAttr ".node_10FBAB09_40F0_0DDA_B773_22ACE0375E35_attr_translateZ" 1;
createNode mmMarkerShape -n "marker1_MKRShape" -p "marker1_MKR";
	rename -uid "BCB20303-48EF-479C-AC3C-3A9AAC496C9F";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "head_01_BND";
	rename -uid "0F8BB705-4587-8DCF-7E38-CDB94EB76174";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_min_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_max_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_min_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_max_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_min_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_max_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_min_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_max_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_min_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_min_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_max_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_max_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_stiffness_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_stiffness_weight" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_stiffness_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_stiffness_weight" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_stiffness_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_stiffness_weight" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_smoothness_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_smoothness_weight" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_smoothness_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_smoothness_weight" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_smoothness_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_smoothness_weight" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_used_hint" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_used_hint" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_used_hint" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_previous_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_mean_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_variance_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_previous_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_mean_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_variance_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_min_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_max_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_min_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_max_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_min_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_max_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_min_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_max_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_stiffness_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_stiffness_weight" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_stiffness_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_stiffness_weight" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_smoothness_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_smoothness_weight" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_smoothness_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_smoothness_weight" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_previous_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_mean_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_variance_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_previous_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_mean_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_variance_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_used_hint" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_used_hint" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_previous_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_mean_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_variance_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_previous_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_mean_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_variance_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_used_hint" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_used_hint" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_used_hint" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_variance" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_variance" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_variance" -at "double";
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
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_min_value" -1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_max_value" 1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_min_value" -1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_max_value" 1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_min_value" -1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_max_value" 1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_stiffness_weight" 
		1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_stiffness_weight" 
		1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_smoothness_weight" 
		1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_smoothness_weight" 
		1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_smoothness_weight" 
		1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_used_hint" 1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_used_hint" 1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_previous_value" -35.354079488506557;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_mean_value" -35.354079488506557;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_variance_value" 1000000;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_previous_value" -14.885794272456106;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_mean_value" -14.885794272456106;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_variance_value" 1000000;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_min_value" -1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_max_value" 1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_min_value" -1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_max_value" 1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_stiffness_weight" 
		1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_smoothness_weight" 
		1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_smoothness_weight" 
		1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_previous_value" -35.354079488506557;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_mean_value" -35.354079488506557;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_variance_value" 1000000;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_previous_value" -14.885794272456106;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_mean_value" -14.885794272456106;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_variance_value" 1000000;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_used_hint" 1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_used_hint" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_value" -1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_value" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_value" -1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_value" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_value" -1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_value" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_variance_value" 1.9999990000009999;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_variance_value" 1.9999990000009999;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_used_hint" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_used_hint" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_variance" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_variance" 
		1;
createNode mmBundleShape -n "head_01_BNDShape" -p "head_01_BND";
	rename -uid "CA0C9FF5-4562-BAA2-F782-619AB25C2FFD";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "head_01_BNDLocatorShape" -p "head_01_BND";
	rename -uid "A394B838-4F01-8BD9-895B-9F89A2B9BFCA";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "head_02_BND";
	rename -uid "CF53FF4C-4101-18BD-F80D-FC959FB4B30D";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_min_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_max_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_min_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_max_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_min_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_max_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_min_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_max_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_min_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_min_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_max_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_max_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_stiffness_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_stiffness_weight" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_stiffness_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_stiffness_weight" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_stiffness_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_stiffness_weight" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_smoothness_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_smoothness_weight" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_smoothness_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_smoothness_weight" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_smoothness_enable" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_smoothness_weight" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_used_hint" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_used_hint" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_used_hint" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_previous_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_mean_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_variance_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_previous_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_mean_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_variance_value" 
		-ln "aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_min_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_max_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_min_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_max_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_min_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_max_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_min_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_max_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_stiffness_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_stiffness_weight" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_stiffness_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_stiffness_weight" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_smoothness_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_smoothness_weight" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_smoothness_enable" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_smoothness_weight" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_previous_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_mean_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_variance_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_previous_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_mean_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_variance_value" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_used_hint" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_used_hint" 
		-ln "aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_previous_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_mean_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_variance_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_previous_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_mean_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_variance_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_used_hint" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_used_hint" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_used_hint" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_variance" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_variance" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_variance" -at "double";
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
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_min_value" -1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_max_value" 1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_min_value" -1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_max_value" 1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_min_value" -1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_max_value" 1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_stiffness_weight" 
		1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_stiffness_weight" 
		1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_smoothness_weight" 
		1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateY_smoothness_weight" 
		1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_smoothness_weight" 
		1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_used_hint" 1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_used_hint" 1;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_previous_value" -24.661534298669721;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_mean_value" -24.661534298669721;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateX_variance_value" 1000000;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_previous_value" -11.826723664496789;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_mean_value" -11.826723664496789;
	setAttr ".aux_FA69F09C_418E_FB2C_F156_A3AFEACAFD99_translateZ_variance_value" 1000000;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_min_value" -1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_max_value" 1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_min_value" -1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_max_value" 1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_stiffness_weight" 
		1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_smoothness_weight" 
		1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_smoothness_weight" 
		1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_previous_value" -24.661534298669721;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_mean_value" -24.661534298669721;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_variance_value" 1000000;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_previous_value" -11.826723664496789;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_mean_value" -11.826723664496789;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_variance_value" 1000000;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateX_used_hint" 1;
	setAttr ".aux_3C5A28F4_46BA_3321_720A_4DBD0C8E0435_translateZ_used_hint" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_value" -1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_value" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_value" -1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_value" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_value" -1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_value" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_previous_value" -6.5766387385920213;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_mean_value" -6.5766387385920213;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_variance_value" 1.9999990000009999;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_previous_value" -30.637890936502501;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_mean_value" -30.637890936502501;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_variance_value" 1.9999990000009999;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_used_hint" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_used_hint" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_variance" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_variance" 
		1;
createNode mmBundleShape -n "head_02_BNDShape" -p "head_02_BND";
	rename -uid "60D0C8A1-49FF-8392-6640-0AB112F4474D";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "head_02_BNDLocatorShape" -p "head_02_BND";
	rename -uid "B5090A7C-437C-1B6C-8C03-8685184C4876";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode transform -n "bundle1_BND";
	rename -uid "10FBAB09-40F0-0DDA-B773-22ACE0375E35";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_enable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_enable" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_enable" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_enable" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_weight" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_weight" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_previous_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_mean_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_variance_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_previous_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_previous_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_mean_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_mean_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_variance_value" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_variance_value" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_used_hint" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_used_hint" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_used_hint" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateY_used_hint" -at "long";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_variance" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_variance" -at "double";
	addAttr -ci true -h true -sn "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_variance" 
		-ln "aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_variance" -at "double";
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
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_min_value" -1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_max_value" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateY_min_value" -1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateY_max_value" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_min_value" -1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_max_value" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_stiffness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateY_stiffness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_stiffness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateY_smoothness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_weight" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_previous_value" -2.32379090316486;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_mean_value" -2.32379090316486;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_variance_value" 1.9999990000009999;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_previous_value" -1.0813446274655429;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_mean_value" -1.0813446274655429;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_variance_value" 1.9999990000009999;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_used_hint" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_used_hint" 1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateX_smoothness_variance" 
		1;
	setAttr ".aux_C27295B6_4957_922E_C753_F5889159497A_translateZ_smoothness_variance" 
		1;
createNode mmBundleShape -n "bundle1_BNDShape" -p "bundle1_BND";
	rename -uid "2CBBC039-409B-AE81-0A33-C98D03A8A5BC";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode locator -n "bundle1_BNDLocatorShape" -p "bundle1_BND";
	rename -uid "A1536CC6-4405-03BA-271D-B89946A9BD6F";
	setAttr -k off ".v";
	setAttr -cb off ".lpx";
	setAttr -cb off ".lpy";
	setAttr -cb off ".lpz";
	setAttr ".los" -type "double3" 0 0 0 ;
	setAttr -cb off ".lsx";
	setAttr -cb off ".lsy";
	setAttr -cb off ".lsz";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "00919FF5-4355-1C46-6CD0-B49AEEC4ABDE";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DE00A8F5-445E-89D8-9DE7-2FBFF0262244";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "1E80B7F9-4399-59C2-E98B-CAAAA10B93E7";
createNode displayLayerManager -n "layerManager";
	rename -uid "2B95F6D7-42D9-F4D6-9CAF-61B7CAEBB10D";
createNode displayLayer -n "defaultLayer";
	rename -uid "4418344E-430D-4865-D507-A49E26B49610";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "57C7F25E-4053-D273-63BF-47941B5157D3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "CEEB96D8-4998-5EC7-9809-6A9E14A908CC";
	setAttr ".g" yes;
createNode script -n "mmSolver_data_node";
	rename -uid "60B54DDE-41FB-56A0-F00B-DEB130600D8F";
	addAttr -ci true -sn "mmSolver_data" -ln "mmSolver_data" -dt "string";
	setAttr -l on ".mmSolver_data" -type "string" "{\"display_attribute_smoothness\": false, \"display_attribute_stiffness\": false, \"display_object_maximum_deviation\": false, \"display_object_frame_deviation\": false, \"display_attribute_state\": true, \"display_object_average_deviation\": true, \"active_collection_uid\": \"C27295B6-4957-922E-C753-F5889159497A\", \"display_object_weight\": true, \"display_attribute_min_max\": true}";
createNode script -n "MM_SOLVER_SCENE_DATA";
	rename -uid "23D2A151-400C-3DFE-AB7F-CB806D7EEFD9";
createNode mmLensModelToggle -n "lensDistortionToggle1";
	rename -uid "4482598C-4835-9741-1DAC-D7B2F52CACE7";
createNode mmMarkerScale -n "mmMarkerScale1";
	rename -uid "69C41E15-49E7-7921-4AD4-168DC121C567";
	setAttr ".ovrscnmd" 1;
createNode animCurveTL -n "marker_01_MKR_translateX";
	rename -uid "0C63D1C6-4AA5-9FC4-C0BC-C4A6AC9B49C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 187 ".ktv[0:186]"  41 -0.37640593874057077 42 -0.37281590091294781
		 43 -0.36909764744862406 44 -0.36550760962100115 45 -0.36230221870348067 46 -0.35935161839966878
		 47 -0.35698004750006623 48 -0.35459054884675967 49 -0.35143353555526063 50 -0.34889209456676573
		 51 -0.34618682090380271 52 -0.34428362978667593 53 -0.34219888673743026 54 -0.34017693661004783
		 55 -0.33755007352100874 56 -0.3349479864739402 57 -0.33204930737655125 58 -0.32884152124269317
		 59 -0.32526698176130397 60 -0.32148742757653109 61 -0.31682449709342253 62 -0.31257999117897184
		 63 -0.307884044287978 64 -0.30230874981910782 65 -0.29632042860283359 66 -0.29085919397588894
		 67 -0.28528641464449933 68 -0.27916471397113352 69 -0.27395322681441747 70 -0.26889675077542302
		 71 -0.26441013382629619 72 -0.26065595094937699 73 -0.25700088666785947 74 -0.25411337809193291
		 75 -0.25173474241325905 76 -0.24958776616229134 77 -0.2472696392476354 78 -0.24558271514011254
		 79 -0.2432580728680363 80 -0.24191328314615451 81 -0.24038563855189371 82 -0.23740148053988536
		 83 -0.2361954615138499 84 -0.23410296152370502 85 -0.23095528332913634 86 -0.22942144780724261
		 87 -0.22772033318814244 88 -0.22618297256982101 89 -0.22431254565405351 90 -0.22236112456003415
		 91 -0.22104383430629898 92 -0.22030591873317523 93 -0.21939271731403426 94 -0.21812770434860446
		 95 -0.21670613867765021 96 -0.21583702571037822 97 -0.21502626283658766 98 -0.21393445080779266
		 99 -0.21453011662213722 100 -0.2133996720518006 101 -0.21164712813488806 102 -0.21077973343183348
		 103 -0.20966921146111583 104 -0.20861881888515099 105 -0.20762181379416073 106 -0.20630747548908968
		 107 -0.20470520748345078 108 -0.20341676996690683 109 -0.20218818823333001 110 -0.20119503816433038
		 111 -0.20030315622702211 112 -0.19954554595307694 113 -0.19896002388920642 114 -0.19859079119390233
		 115 -0.19849088925735436 116 -0.19870477208837861 117 -0.19923030662416108 118 -0.20006504873022374
		 119 -0.20120614162601175 120 -0.20265015717485801 121 -0.20447794441492573 122 -0.20663208653161985
		 123 -0.20904883978862443 124 -0.21165664670130818 125 -0.21437407978715145 126 -0.21728521506624304
		 127 -0.2204144087793008 128 -0.22367846203389058 129 -0.22696644297343693 130 -0.2301119538130823
		 131 -0.23294859676795604 132 -0.23558100030844564 133 -0.23788868717386652 134 -0.23978276035686669
		 135 -0.24125635878968987 136 -0.24230146304249178 137 -0.24290844979945558 138 -0.24301768779187505
		 139 -0.24266527842033736 140 -0.24189100007993813 141 -0.24073909825826528 142 -0.23925934912885727
		 143 -0.23738956129546357 144 -0.23516194735812029 145 -0.23287972132780616 146 -0.23004245136787999
		 147 -0.22660059924607878 148 -0.2233143459170675 149 -0.21987301879298693 150 -0.21668753212645642
		 151 -0.21256234813611025 152 -0.20955973902030667 153 -0.20536719047899271 154 -0.20155867159885538
		 155 -0.19751354310695346 156 -0.19335348740617136 157 -0.18946168548864328 158 -0.18593765394068407
		 159 -0.18306039144813041 160 -0.17988047073344221 161 -0.17688443353122268 162 -0.17436765300955909
		 163 -0.17161429669440154 164 -0.16932462146850813 165 -0.16724686943493372 166 -0.16513506811774437
		 167 -0.16333626233705184 168 -0.16146691667299806 169 -0.15949484208798792 170 -0.15777662086145067
		 171 -0.155911037184778 172 -0.15375710038711282 173 -0.15136024101154505 174 -0.14886517793159576
		 175 -0.14640411915232987 176 -0.14377682826519916 177 -0.14135142130552486 178 -0.13867215299621066
		 179 -0.13544515544613983 180 -0.13291089978787457 181 -0.13046625270284595 182 -0.12838680276276387
		 183 -0.1264444597258168 184 -0.12485863513658901 185 -0.1232293382569164 186 -0.12173531431926726
		 187 -0.12007949511591509 188 -0.11852089158809492 189 -0.1170787854300534 190 -0.11608219851487722
		 191 -0.11511380465221388 192 -0.11370845805926061 193 -0.11276037893612811 194 -0.11171741143736119
		 195 -0.11101832026622854 196 -0.1103214976954151 197 -0.10936957370146377 198 -0.10863024132084437
		 199 -0.10794981810644544 200 -0.10718566448988964 201 -0.10654437490833668 202 -0.10590999542615515
		 203 -0.10553466702201963 204 -0.10485940452408482 205 -0.10429762244188107 206 -0.10390945773373877
		 207 -0.10342548349946068 208 -0.10302318636692215 209 -0.10266818325763671 210 -0.10218044871265697
		 211 -0.10153356890716247 212 -0.10087940868718803 213 -0.10034122756080838 214 -0.099514044640090615
		 215 -0.098684869071119674 216 -0.097530712191393587 217 -0.096341627880437208 218 -0.09516446593875727
		 219 -0.09373134668659 220 -0.092433834536510662 221 -0.0911650863905199 222 -0.090060681348936911
		 223 -0.089084515980013101 224 -0.08825833086553686 225 -0.087332815484058024 226 -0.086834796462786967
		 227 -0.086441849676789917;
createNode animCurveTL -n "marker_01_MKR_translateY";
	rename -uid "641433D3-4F63-F528-46D6-C1A4FC43EEC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 187 ".ktv[0:186]"  41 0.49763763606956712 42 0.49490236915328301
		 43 0.49307885787576022 44 0.49376267460483125 45 0.49376267460483125 46 0.49420124302564683
		 47 0.49463690203940125 48 0.49417158926147453 49 0.49352078800339394 50 0.4924768572622592
		 51 0.49159037541683426 52 0.49119572630580455 53 0.49056733090145777 54 0.49049343677566015
		 55 0.48822612474428662 56 0.48696574350820843 57 0.48550144825868591 58 0.48436209293746657
		 59 0.48298068141624007 60 0.48254124790280195 61 0.48113245964763063 62 0.47844362861075851
		 63 0.47596606711427769 64 0.47329429739182527 65 0.47086024097731238 66 0.46923533341265111
		 67 0.46666023979391758 68 0.46377188213462228 69 0.45960683569215433 70 0.45646553885883678
		 71 0.45258522149742975 72 0.44950652340341446 73 0.448582541856133 74 0.44873717421019643
		 75 0.44818889443742005 76 0.44844524673397601 77 0.44775304733263854 78 0.44809865800995075
		 79 0.44772069218066068 80 0.44739548530656315 81 0.44727545298217231 82 0.44879372428687203
		 83 0.4489758768905745 84 0.44860340505376717 85 0.44708793342661646 86 0.44532078438165945
		 87 0.44426315178373776 88 0.44227919842368002 89 0.44085021176609085 90 0.44010283653779048
		 91 0.43811718445111203 92 0.43616046258959684 93 0.43437844365029288 94 0.43263417837609597
		 95 0.43063727420643239 96 0.42894194979822409 97 0.42637215517547433 98 0.42479909176221975
		 99 0.42234547774462072 100 0.4215705240421912 101 0.41934241411220252 102 0.41737507288254616
		 103 0.415099699589902 104 0.41347576561167687 105 0.41263505117285071 106 0.41188605903788833
		 107 0.41065816082622475 108 0.40953148782195647 109 0.40822890998688555 110 0.40703014831748519
		 111 0.40593012635221748 112 0.40487064394584282 113 0.40378501343193196 114 0.40259528818738211
		 115 0.40120793226447871 116 0.39935145559187968 117 0.39715835142944755 118 0.39478043497077198
		 119 0.39239515254602086 120 0.39021543975138817 121 0.38854744510565054 122 0.38729455289734149
		 123 0.3863495010556196 124 0.3855918792557953 125 0.38488466885252504 126 0.38392368315708336
		 127 0.38264295271921889 128 0.38117332319947306 129 0.37968925547855803 130 0.37845244087757501
		 131 0.37772457071760457 132 0.37732096686860794 133 0.37738796535989183 134 0.37815011142903354
		 135 0.37950888502974955 136 0.38134913286117988 137 0.38353267096229837 138 0.38610344391184859
		 139 0.38895662179169488 140 0.39197669756239684 141 0.39503519280574639 142 0.39798756930127366
		 143 0.40080125764321195 144 0.40345229263299232 145 0.40671130705836456 146 0.40975445504281116
		 147 0.41080013497532919 148 0.41236404953809336 149 0.41377372470304985 150 0.41435301349669362
		 151 0.41437683071344367 152 0.41442282953980181 153 0.41279217928711165 154 0.41123210793426457
		 155 0.40899756810216892 156 0.40752595617256149 157 0.40583218845244118 158 0.40341825983693913
		 159 0.40135092153728924 160 0.39974091971580727 161 0.39808651299914266 162 0.39607329867258201
		 163 0.39389497835607157 164 0.39178550606556062 165 0.3892634731272655 166 0.38714404748687736
		 167 0.38532469028390781 168 0.38334312850089136 169 0.38116570167637576 170 0.37920582315289386
		 171 0.37755024830477479 172 0.37579426231870861 173 0.37454582508538603 174 0.3737374655646355
		 175 0.37323642935039769 176 0.37211201934292815 177 0.37014964795646577 178 0.36872709674283588
		 179 0.36716903421776348 180 0.36580643200811624 181 0.36442699553115321 182 0.36315491569968006
		 183 0.36195817197511804 184 0.36068395364781358 185 0.35941472713895384 186 0.35816564661355643
		 187 0.3568785186780139 188 0.35501465125688358 189 0.35348831432735639 190 0.35163038292767868
		 191 0.3500951875363506 192 0.34814337494947234 193 0.3464953390423986 194 0.34513428264809787
		 195 0.3434541444697381 196 0.34210288495038599 197 0.34080025039462847 198 0.33942240310414862
		 199 0.33856972995115209 200 0.33813476236820472 201 0.33733934854558834 202 0.33699769957829606
		 203 0.33678233702184646 204 0.33697160408118021 205 0.33734258252410065 206 0.33756488921611805
		 207 0.33780866557949885 208 0.33868825147610548 209 0.33913349699248496 210 0.33933337621980253
		 211 0.33956455579455014 212 0.33984046105746812 213 0.33983528487701775 214 0.33938782469187068
		 215 0.3388514441243925 216 0.33827961822568275 217 0.33748070053549983 218 0.336272363244284
		 219 0.33496141394012335 220 0.33387347840365511 221 0.3323175552809593 222 0.33064487060207481
		 223 0.32890718729050139 224 0.32709699503553635 225 0.32530345639875835 226 0.32350316240958599
		 227 0.32168521496585178;
createNode animCurveTU -n "marker_01_MKR_enable";
	rename -uid "7C651612-4FD8-99F2-2C7A-AE8A98D61575";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  40 0 41 1 227 1 228 0;
createNode animCurveTL -n "marker_02_MKR_translateX";
	rename -uid "4447EBD0-4C79-6B67-F383-4198DC359379";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 228 ".ktv[0:227]"  0 -0.29241331763318851 1 -0.29164392511911008
		 2 -0.29072714367800084 3 -0.28989606255488964 4 -0.28900216215631447 5 -0.28767215834426446
		 6 -0.28609429917317708 7 -0.28451092239062359 8 -0.28280340942147342 9 -0.28124837142600478
		 10 -0.27947879158602129 11 -0.27764459227733557 12 -0.27566919969218356 13 -0.2734885704704958
		 14 -0.27104820637605315 15 -0.26846665151940774 16 -0.26588792344831247 17 -0.26369789400581423
		 18 -0.26126118280754773 19 -0.25853790618769057 20 -0.25553250560070484 21 -0.25190105791854994
		 22 -0.24847716342068782 23 -0.24511288690196736 24 -0.24179404823908529 25 -0.23869491117163422
		 26 -0.23549805102185756 27 -0.23254700074718365 28 -0.22950393795447965 29 -0.22576800900315735
		 30 -0.22198394783113945 31 -0.2187066047472126 32 -0.21517184750664503 33 -0.21180420158910995
		 34 -0.20858767800228067 35 -0.2050233337694537 36 -0.20189731046317555 37 -0.19909970736488064
		 38 -0.19637132358810938 39 -0.19316882463056234 40 -0.1900064314083994 41 -0.18693379766226487
		 42 -0.18413313227071271 43 -0.18127841695388236 44 -0.1785981882219832 45 -0.17592999325037828
		 46 -0.17385667998878979 47 -0.17194461083373336 48 -0.17023687528832815 49 -0.1684229035243367
		 50 -0.16665198631692268 51 -0.16516155298894003 52 -0.1639213271874615 53 -0.16260103978264057
		 54 -0.16130492815428737 55 -0.16004366728136815 56 -0.15880561652536446 57 -0.1572171551800331
		 58 -0.15537270768974382 59 -0.15291738525595261 60 -0.15024048854405309 61 -0.14738148842608073
		 62 -0.14409488713335483 63 -0.14051859236323633 64 -0.13678352679128947 65 -0.13243345605559609
		 66 -0.12804530520344648 67 -0.12353866868397134 68 -0.11946023095161584 69 -0.11596104085008929
		 70 -0.11268458290516387 71 -0.10989576128252715 72 -0.10766485143639209 73 -0.10545837340256786
		 74 -0.1040348269522996 75 -0.10309868610084411 76 -0.10245851580509374 77 -0.1021003712140478
		 78 -0.1017905835542654 79 -0.1015195833396319 80 -0.1011676628959261 81 -0.10084529692478333
		 82 -0.10045909015643995 83 -0.099951415582737291 84 -0.099707832327041279 85 -0.099498023175887684
		 86 -0.099264629834734053 87 -0.098931045791227412 88 -0.098956632940068734 89 -0.099024898208104117
		 90 -0.099026508248930112 91 -0.099385042435051862 92 -0.10012450318071675 93 -0.10067793686675963
		 94 -0.10098420055979668 95 -0.10109514696336264 96 -0.1015383472151476 97 -0.10227391707699612
		 98 -0.10304704775444473 99 -0.10359302396036629 100 -0.10407394557643812 101 -0.10430068628198608
		 102 -0.10478304498417335 103 -0.10507360824295275 104 -0.1052562859218521 105 -0.105306799936845
		 106 -0.10528032931960529 107 -0.10518185120346818 108 -0.10517612850577396 109 -0.105387532301849
		 110 -0.10554770880020214 111 -0.10579318987765185 112 -0.1059820549379959 113 -0.10645986313766914
		 114 -0.10714387404627856 115 -0.10810367015708527 116 -0.10951563596983471 117 -0.11125447105000869
		 118 -0.11332074356896249 119 -0.11558693996259806 120 -0.11793923765444198 121 -0.1206941246014519
		 122 -0.12376196721522387 123 -0.12703441754948497 124 -0.13043646726590841 125 -0.13399160828251022
		 126 -0.13770643870792265 127 -0.14187506354008739 128 -0.14593491801674341 129 -0.15005896937502522
		 130 -0.15414302551951981 131 -0.157782041890072 132 -0.16080724012339226 133 -0.16349393487493252
		 134 -0.16596697675288846 135 -0.16814469963370499 136 -0.16993409836221707 137 -0.17130471687071563
		 138 -0.17212246196680725 139 -0.17237516950758441 140 -0.17225084351676534 141 -0.17182996409462303
		 142 -0.17119953642165042 143 -0.16972685666046505 144 -0.16856962993877178 145 -0.1671161073839233
		 146 -0.16515764481561696 147 -0.16259739151332597 148 -0.15977237889149876 149 -0.15664762812294708
		 150 -0.15337786759279537 151 -0.15001350120220291 152 -0.14660882541447678 153 -0.14303471188503586
		 154 -0.13955650883062082 155 -0.13623212363410864 156 -0.13289994477912903 157 -0.12991732026334391
		 158 -0.12713217933231208 159 -0.12463823779715894 160 -0.12209676669857783 161 -0.11963793737854961
		 162 -0.1174902332623815 163 -0.1155672735786159 164 -0.11375962300104453 165 -0.11198851967359091
		 166 -0.11027336160238982 167 -0.10858995690138568 168 -0.10697409010880804 169 -0.10539758234431157
		 170 -0.10375330802512339 171 -0.10204356105722862 172 -0.10023050864612454 173 -0.098072371515914081
		 174 -0.095862714138741811 175 -0.093542118360507298 176 -0.09124989361214475 177 -0.089075843895995099
		 178 -0.086671411557689704 179 -0.083785023744114118 180 -0.081565361109309231 181 -0.079425556345263049
		 182 -0.077646028862103422 183 -0.076080378198887466 184 -0.074665258952294034 185 -0.073195788740755274
		 186 -0.07198966143702612 187 -0.070466299828989221 188 -0.069176294204622846 189 -0.067838600803690363
		 190 -0.06690861553041072 191 -0.06613427716787712 192 -0.064847082307602666 193 -0.064120301209628972
		 194 -0.063142454004985471 195 -0.062569042590308155 196 -0.061919884821304005 197 -0.061284668252079122
		 198 -0.060738287913823241 199 -0.060181297553790425 200 -0.059634020479371552 201 -0.059084729235892142
		 202 -0.058554624553289636 203 -0.05831346741329041 204 -0.057766633296047587 205 -0.05731774716444249
		 206 -0.056940212941097579 207 -0.056609377526503468 208 -0.056295102159739319 209 -0.056002815495763636
		 210 -0.055595467042247604 211 -0.055033422620378469 212 -0.054484218392060968 213 -0.054039073121688486
		 214 -0.053386854712865472 215 -0.052570813604623456 216 -0.051573926449407947 217 -0.050414422881286447
		 218 -0.049348330811766372 219 -0.04806678381049917 220 -0.046801792459903735 221 -0.04561098264084229
		 222 -0.044505686871854133 223 -0.043586998613720285 224 -0.042769872870626113 225 -0.0418195193342219
		 226 -0.041326368081759712 227 -0.040921483387923285;
createNode animCurveTL -n "marker_02_MKR_translateY";
	rename -uid "434C94CA-4BE9-85ED-3CF1-869B6314F7A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 228 ".ktv[0:227]"  0 0.31390824349647217 1 0.31512997718864844
		 2 0.31610922052449175 3 0.31698035845535288 4 0.31748935193977412 5 0.31709031097324536
		 6 0.31666861929013645 7 0.31604059483472413 8 0.31512885007712255 9 0.31466017576698202
		 10 0.31450630179527395 11 0.31466295569975011 12 0.31414161665644169 13 0.31333248926643875
		 14 0.31289058861385299 15 0.31278324124967682 16 0.31313755531137388 17 0.31375664785517132
		 18 0.31511679084838751 19 0.3161713678301693 20 0.31666432732458172 21 0.31589680130923803
		 22 0.31558678572211563 23 0.3153381423841608 24 0.31529707114264327 25 0.31549422827511253
		 26 0.31514375283499663 27 0.31380806818073714 28 0.31206672121280943 29 0.31082614599128344
		 30 0.30991681437010787 31 0.30892330989922312 32 0.3078627294114169 33 0.30656042247058013
		 34 0.30586185757822104 35 0.30528551448467156 36 0.30446182844059355 37 0.30381997563119156
		 38 0.30376567221331552 39 0.30359566865598209 40 0.30392413510845873 41 0.30321631823556994
		 42 0.30078415664681823 43 0.29952940074615164 44 0.29972959338208816 45 0.29958878383510379
		 46 0.29993918930702657 47 0.30017346247304355 48 0.30006701992412699 49 0.30025461715362667
		 50 0.30061847397357055 51 0.30051914344438391 52 0.30057102408919156 53 0.30069133339294585
		 54 0.30085295898427156 55 0.30025229019734423 56 0.3001386498921037 57 0.29953254019230258
		 58 0.29890420874551216 59 0.29919041715356309 60 0.29934505394761757 61 0.29894502983689408
		 62 0.298040996050844 63 0.29625503697569877 64 0.29466380795104241 65 0.29343046144667517
		 66 0.29244537112382585 67 0.29082913226031759 68 0.2890436698304476 69 0.28655692244975228
		 70 0.28469808092478721 71 0.28315061359827887 72 0.28122653819323773 73 0.28141551090805372
		 74 0.28257686807539451 75 0.28341847885316962 76 0.28472763904515552 77 0.28529474699999069
		 78 0.28624469290847088 79 0.28705625884927344 80 0.28838090598017463 81 0.2894662630845799
		 82 0.29080637751737204 83 0.29173935752608482 84 0.29240664964216634 85 0.2922537481481533
		 86 0.29213170427930024 87 0.29223552280171972 88 0.29199996438160913 89 0.2920615486717999
		 90 0.29268109187994906 91 0.29258523626328325 92 0.29253429273436027 93 0.29239031804989002
		 94 0.29239591342146709 95 0.29211946186876248 96 0.29151120797989516 97 0.29055860478104034
		 98 0.28993295025563537 99 0.28883036043986243 100 0.28793287599057837 101 0.28689053825108812
		 102 0.28583531647914462 103 0.28476728655837003 104 0.28405462796062309 105 0.28355413289427056
		 106 0.28332963125887833 107 0.28326481797417591 108 0.28356467773719729 109 0.28337157505322863
		 110 0.28346117648546154 111 0.28361596913457254 112 0.28388618469520321 113 0.2838176179286932
		 114 0.28366078197231148 115 0.28360656464408851 116 0.2832167168435813 117 0.28279683496602448
		 118 0.28223444273939757 119 0.28135740097815309 120 0.28031242881082008 121 0.27978733387631327
		 122 0.27943889971292712 123 0.27879474799171555 124 0.27844008230484929 125 0.27810567782942242
		 126 0.27788353350210404 127 0.27755011354763337 128 0.27752363762345678 129 0.27764386586498879
		 130 0.277610888713541 131 0.27792641477003888 132 0.27886581044415282 133 0.27991622853537845
		 134 0.28194993141566904 135 0.28440860705870241 136 0.28745771279484889 137 0.29020973214109635
		 138 0.29401946497863785 139 0.2978243125402753 140 0.30146293385673617 141 0.30519913168272705
		 142 0.30889370402243421 143 0.31224521357228741 144 0.31633086084037798 145 0.32062076635436076
		 146 0.32461906488680881 147 0.3270132987510731 148 0.32886700105739175 149 0.33117432078540965
		 150 0.33216189802900553 151 0.33297536565288544 152 0.33332793883977019 153 0.33266656872171774
		 154 0.33183558340998298 155 0.33070773424366118 156 0.32974177970972918 157 0.32867588412986015
		 158 0.32741981648781071 159 0.32579537373256418 160 0.32425994580185757 161 0.3228434881482658
		 162 0.32116119309727398 163 0.31941454205070974 164 0.3178347805946683 165 0.3162280723206774
		 166 0.3152082762139824 167 0.3136248765758739 168 0.31213096463142864 169 0.31054383259319418
		 170 0.30898196214194029 171 0.30770089015522462 172 0.30658884071605574 173 0.30581355993874182
		 174 0.30554935488540891 175 0.30542994686178426 176 0.30490031270906326 177 0.30339719188835901
		 178 0.30235944654653413 179 0.30122650932407224 180 0.30021773439812516 181 0.29922991661317611
		 182 0.29819695489790576 183 0.29738920140488456 184 0.29631540537007339 185 0.29527079636541442
		 186 0.29437113829526962 187 0.29325387831823402 188 0.29181350173128406 189 0.29043662015959082
		 190 0.28880051185138067 191 0.28744205248437538 192 0.28554185128210463 193 0.28413741643508283
		 194 0.2827283647110127 195 0.28103743306398021 196 0.27962407620559393 197 0.27845351850645206
		 198 0.27716361063121131 199 0.27623684122378034 200 0.27599636117887716 201 0.27519850024829884
		 202 0.27495243045071516 203 0.2747462371193572 204 0.27499803811636847 205 0.27548518773667086
		 206 0.27568761674627096 207 0.27606623277020037 208 0.27702770466471494 209 0.27751594893790421
		 210 0.27769836113211732 211 0.2780034977078939 212 0.2782825145321679 213 0.27825082600146178
		 214 0.27788477968690461 215 0.27727085347843838 216 0.27674434623312816 217 0.27581163557637378
		 218 0.27463887457700531 219 0.27333599223835003 220 0.27223808904967772 221 0.27069250282371238
		 222 0.2689888010868563 223 0.26714470094488363 224 0.26530897570831935 225 0.26339039504683004
		 226 0.26146843219655247 227 0.25967720667286331;
createNode animCurveTU -n "marker_02_MKR_enable";
	rename -uid "16FC610C-4741-2090-9690-7BA4275F258D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 0 1 227 1 228 0;
createNode animCurveTL -n "marker_01_MKR_translateX1";
	rename -uid "418D95E1-47CD-B8D6-8774-A3A8FE8887C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 187 ".ktv[0:186]"  41 -0.37640593874057077 42 -0.37281590091294781
		 43 -0.36909764744862406 44 -0.36550760962100115 45 -0.36230221870348067 46 -0.35935161839966878
		 47 -0.35698004750006623 48 -0.35459054884675967 49 -0.35143353555526063 50 -0.34889209456676573
		 51 -0.34618682090380271 52 -0.34428362978667593 53 -0.34219888673743026 54 -0.34017693661004783
		 55 -0.33755007352100874 56 -0.3349479864739402 57 -0.33204930737655125 58 -0.32884152124269317
		 59 -0.32526698176130397 60 -0.32148742757653109 61 -0.31682449709342253 62 -0.31257999117897184
		 63 -0.307884044287978 64 -0.30230874981910782 65 -0.29632042860283359 66 -0.29085919397588894
		 67 -0.28528641464449933 68 -0.27916471397113352 69 -0.27395322681441747 70 -0.26889675077542302
		 71 -0.26441013382629619 72 -0.26065595094937699 73 -0.25700088666785947 74 -0.25411337809193291
		 75 -0.25173474241325905 76 -0.24958776616229134 77 -0.2472696392476354 78 -0.24558271514011254
		 79 -0.2432580728680363 80 -0.24191328314615451 81 -0.24038563855189371 82 -0.23740148053988536
		 83 -0.2361954615138499 84 -0.23410296152370502 85 -0.23095528332913634 86 -0.22942144780724261
		 87 -0.22772033318814244 88 -0.22618297256982101 89 -0.22431254565405351 90 -0.22236112456003415
		 91 -0.22104383430629898 92 -0.22030591873317523 93 -0.21939271731403426 94 -0.21812770434860446
		 95 -0.21670613867765021 96 -0.21583702571037822 97 -0.21502626283658766 98 -0.21393445080779266
		 99 -0.21453011662213722 100 -0.2133996720518006 101 -0.21164712813488806 102 -0.21077973343183348
		 103 -0.20966921146111583 104 -0.20861881888515099 105 -0.20762181379416073 106 -0.20630747548908968
		 107 -0.20470520748345078 108 -0.20341676996690683 109 -0.20218818823333001 110 -0.20119503816433038
		 111 -0.20030315622702211 112 -0.19954554595307694 113 -0.19896002388920642 114 -0.19859079119390233
		 115 -0.19849088925735436 116 -0.19870477208837861 117 -0.19923030662416108 118 -0.20006504873022374
		 119 -0.20120614162601175 120 -0.20265015717485801 121 -0.20447794441492573 122 -0.20663208653161985
		 123 -0.20904883978862443 124 -0.21165664670130818 125 -0.21437407978715145 126 -0.21728521506624304
		 127 -0.2204144087793008 128 -0.22367846203389058 129 -0.22696644297343693 130 -0.2301119538130823
		 131 -0.23294859676795604 132 -0.23558100030844564 133 -0.23788868717386652 134 -0.23978276035686669
		 135 -0.24125635878968987 136 -0.24230146304249178 137 -0.24290844979945558 138 -0.24301768779187505
		 139 -0.24266527842033736 140 -0.24189100007993813 141 -0.24073909825826528 142 -0.23925934912885727
		 143 -0.23738956129546357 144 -0.23516194735812029 145 -0.23287972132780616 146 -0.23004245136787999
		 147 -0.22660059924607878 148 -0.2233143459170675 149 -0.21987301879298693 150 -0.21668753212645642
		 151 -0.21256234813611025 152 -0.20955973902030667 153 -0.20536719047899271 154 -0.20155867159885538
		 155 -0.19751354310695346 156 -0.19335348740617136 157 -0.18946168548864328 158 -0.18593765394068407
		 159 -0.18306039144813041 160 -0.17988047073344221 161 -0.17688443353122268 162 -0.17436765300955909
		 163 -0.17161429669440154 164 -0.16932462146850813 165 -0.16724686943493372 166 -0.16513506811774437
		 167 -0.16333626233705184 168 -0.16146691667299806 169 -0.15949484208798792 170 -0.15777662086145067
		 171 -0.155911037184778 172 -0.15375710038711282 173 -0.15136024101154505 174 -0.14886517793159576
		 175 -0.14640411915232987 176 -0.14377682826519916 177 -0.14135142130552486 178 -0.13867215299621066
		 179 -0.13544515544613983 180 -0.13291089978787457 181 -0.13046625270284595 182 -0.12838680276276387
		 183 -0.1264444597258168 184 -0.12485863513658901 185 -0.1232293382569164 186 -0.12173531431926726
		 187 -0.12007949511591509 188 -0.11852089158809492 189 -0.1170787854300534 190 -0.11608219851487722
		 191 -0.11511380465221388 192 -0.11370845805926061 193 -0.11276037893612811 194 -0.11171741143736119
		 195 -0.11101832026622854 196 -0.1103214976954151 197 -0.10936957370146377 198 -0.10863024132084437
		 199 -0.10794981810644544 200 -0.10718566448988964 201 -0.10654437490833668 202 -0.10590999542615515
		 203 -0.10553466702201963 204 -0.10485940452408482 205 -0.10429762244188107 206 -0.10390945773373877
		 207 -0.10342548349946068 208 -0.10302318636692215 209 -0.10266818325763671 210 -0.10218044871265697
		 211 -0.10153356890716247 212 -0.10087940868718803 213 -0.10034122756080838 214 -0.099514044640090615
		 215 -0.098684869071119674 216 -0.097530712191393587 217 -0.096341627880437208 218 -0.09516446593875727
		 219 -0.09373134668659 220 -0.092433834536510662 221 -0.0911650863905199 222 -0.090060681348936911
		 223 -0.089084515980013101 224 -0.08825833086553686 225 -0.087332815484058024 226 -0.086834796462786967
		 227 -0.086441849676789917;
createNode animCurveTL -n "marker_01_MKR_translateY1";
	rename -uid "CE59E8CF-4E9A-EEE7-5251-EDB888BC6C5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 187 ".ktv[0:186]"  41 0.49763763606956712 42 0.49490236915328301
		 43 0.49307885787576022 44 0.49376267460483125 45 0.49376267460483125 46 0.49420124302564683
		 47 0.49463690203940125 48 0.49417158926147453 49 0.49352078800339394 50 0.4924768572622592
		 51 0.49159037541683426 52 0.49119572630580455 53 0.49056733090145777 54 0.49049343677566015
		 55 0.48822612474428662 56 0.48696574350820843 57 0.48550144825868591 58 0.48436209293746657
		 59 0.48298068141624007 60 0.48254124790280195 61 0.48113245964763063 62 0.47844362861075851
		 63 0.47596606711427769 64 0.47329429739182527 65 0.47086024097731238 66 0.46923533341265111
		 67 0.46666023979391758 68 0.46377188213462228 69 0.45960683569215433 70 0.45646553885883678
		 71 0.45258522149742975 72 0.44950652340341446 73 0.448582541856133 74 0.44873717421019643
		 75 0.44818889443742005 76 0.44844524673397601 77 0.44775304733263854 78 0.44809865800995075
		 79 0.44772069218066068 80 0.44739548530656315 81 0.44727545298217231 82 0.44879372428687203
		 83 0.4489758768905745 84 0.44860340505376717 85 0.44708793342661646 86 0.44532078438165945
		 87 0.44426315178373776 88 0.44227919842368002 89 0.44085021176609085 90 0.44010283653779048
		 91 0.43811718445111203 92 0.43616046258959684 93 0.43437844365029288 94 0.43263417837609597
		 95 0.43063727420643239 96 0.42894194979822409 97 0.42637215517547433 98 0.42479909176221975
		 99 0.42234547774462072 100 0.4215705240421912 101 0.41934241411220252 102 0.41737507288254616
		 103 0.415099699589902 104 0.41347576561167687 105 0.41263505117285071 106 0.41188605903788833
		 107 0.41065816082622475 108 0.40953148782195647 109 0.40822890998688555 110 0.40703014831748519
		 111 0.40593012635221748 112 0.40487064394584282 113 0.40378501343193196 114 0.40259528818738211
		 115 0.40120793226447871 116 0.39935145559187968 117 0.39715835142944755 118 0.39478043497077198
		 119 0.39239515254602086 120 0.39021543975138817 121 0.38854744510565054 122 0.38729455289734149
		 123 0.3863495010556196 124 0.3855918792557953 125 0.38488466885252504 126 0.38392368315708336
		 127 0.38264295271921889 128 0.38117332319947306 129 0.37968925547855803 130 0.37845244087757501
		 131 0.37772457071760457 132 0.37732096686860794 133 0.37738796535989183 134 0.37815011142903354
		 135 0.37950888502974955 136 0.38134913286117988 137 0.38353267096229837 138 0.38610344391184859
		 139 0.38895662179169488 140 0.39197669756239684 141 0.39503519280574639 142 0.39798756930127366
		 143 0.40080125764321195 144 0.40345229263299232 145 0.40671130705836456 146 0.40975445504281116
		 147 0.41080013497532919 148 0.41236404953809336 149 0.41377372470304985 150 0.41435301349669362
		 151 0.41437683071344367 152 0.41442282953980181 153 0.41279217928711165 154 0.41123210793426457
		 155 0.40899756810216892 156 0.40752595617256149 157 0.40583218845244118 158 0.40341825983693913
		 159 0.40135092153728924 160 0.39974091971580727 161 0.39808651299914266 162 0.39607329867258201
		 163 0.39389497835607157 164 0.39178550606556062 165 0.3892634731272655 166 0.38714404748687736
		 167 0.38532469028390781 168 0.38334312850089136 169 0.38116570167637576 170 0.37920582315289386
		 171 0.37755024830477479 172 0.37579426231870861 173 0.37454582508538603 174 0.3737374655646355
		 175 0.37323642935039769 176 0.37211201934292815 177 0.37014964795646577 178 0.36872709674283588
		 179 0.36716903421776348 180 0.36580643200811624 181 0.36442699553115321 182 0.36315491569968006
		 183 0.36195817197511804 184 0.36068395364781358 185 0.35941472713895384 186 0.35816564661355643
		 187 0.3568785186780139 188 0.35501465125688358 189 0.35348831432735639 190 0.35163038292767868
		 191 0.3500951875363506 192 0.34814337494947234 193 0.3464953390423986 194 0.34513428264809787
		 195 0.3434541444697381 196 0.34210288495038599 197 0.34080025039462847 198 0.33942240310414862
		 199 0.33856972995115209 200 0.33813476236820472 201 0.33733934854558834 202 0.33699769957829606
		 203 0.33678233702184646 204 0.33697160408118021 205 0.33734258252410065 206 0.33756488921611805
		 207 0.33780866557949885 208 0.33868825147610548 209 0.33913349699248496 210 0.33933337621980253
		 211 0.33956455579455014 212 0.33984046105746812 213 0.33983528487701775 214 0.33938782469187068
		 215 0.3388514441243925 216 0.33827961822568275 217 0.33748070053549983 218 0.336272363244284
		 219 0.33496141394012335 220 0.33387347840365511 221 0.3323175552809593 222 0.33064487060207481
		 223 0.32890718729050139 224 0.32709699503553635 225 0.32530345639875835 226 0.32350316240958599
		 227 0.32168521496585178;
createNode animCurveTU -n "marker_01_MKR_enable1";
	rename -uid "23E43A7A-49EB-7CC8-C655-5790ECC96968";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  40 0 41 1 227 1 228 0;
createNode animCurveTL -n "marker_02_MKR_translateX1";
	rename -uid "0B3C4976-4AAA-7355-A90D-418A3232EF33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 228 ".ktv[0:227]"  0 -0.29241331763318851 1 -0.29164392511911008
		 2 -0.29072714367800084 3 -0.28989606255488964 4 -0.28900216215631447 5 -0.28767215834426446
		 6 -0.28609429917317708 7 -0.28451092239062359 8 -0.28280340942147342 9 -0.28124837142600478
		 10 -0.27947879158602129 11 -0.27764459227733557 12 -0.27566919969218356 13 -0.2734885704704958
		 14 -0.27104820637605315 15 -0.26846665151940774 16 -0.26588792344831247 17 -0.26369789400581423
		 18 -0.26126118280754773 19 -0.25853790618769057 20 -0.25553250560070484 21 -0.25190105791854994
		 22 -0.24847716342068782 23 -0.24511288690196736 24 -0.24179404823908529 25 -0.23869491117163422
		 26 -0.23549805102185756 27 -0.23254700074718365 28 -0.22950393795447965 29 -0.22576800900315735
		 30 -0.22198394783113945 31 -0.2187066047472126 32 -0.21517184750664503 33 -0.21180420158910995
		 34 -0.20858767800228067 35 -0.2050233337694537 36 -0.20189731046317555 37 -0.19909970736488064
		 38 -0.19637132358810938 39 -0.19316882463056234 40 -0.1900064314083994 41 -0.18693379766226487
		 42 -0.18413313227071271 43 -0.18127841695388236 44 -0.1785981882219832 45 -0.17592999325037828
		 46 -0.17385667998878979 47 -0.17194461083373336 48 -0.17023687528832815 49 -0.1684229035243367
		 50 -0.16665198631692268 51 -0.16516155298894003 52 -0.1639213271874615 53 -0.16260103978264057
		 54 -0.16130492815428737 55 -0.16004366728136815 56 -0.15880561652536446 57 -0.1572171551800331
		 58 -0.15537270768974382 59 -0.15291738525595261 60 -0.15024048854405309 61 -0.14738148842608073
		 62 -0.14409488713335483 63 -0.14051859236323633 64 -0.13678352679128947 65 -0.13243345605559609
		 66 -0.12804530520344648 67 -0.12353866868397134 68 -0.11946023095161584 69 -0.11596104085008929
		 70 -0.11268458290516387 71 -0.10989576128252715 72 -0.10766485143639209 73 -0.10545837340256786
		 74 -0.1040348269522996 75 -0.10309868610084411 76 -0.10245851580509374 77 -0.1021003712140478
		 78 -0.1017905835542654 79 -0.1015195833396319 80 -0.1011676628959261 81 -0.10084529692478333
		 82 -0.10045909015643995 83 -0.099951415582737291 84 -0.099707832327041279 85 -0.099498023175887684
		 86 -0.099264629834734053 87 -0.098931045791227412 88 -0.098956632940068734 89 -0.099024898208104117
		 90 -0.099026508248930112 91 -0.099385042435051862 92 -0.10012450318071675 93 -0.10067793686675963
		 94 -0.10098420055979668 95 -0.10109514696336264 96 -0.1015383472151476 97 -0.10227391707699612
		 98 -0.10304704775444473 99 -0.10359302396036629 100 -0.10407394557643812 101 -0.10430068628198608
		 102 -0.10478304498417335 103 -0.10507360824295275 104 -0.1052562859218521 105 -0.105306799936845
		 106 -0.10528032931960529 107 -0.10518185120346818 108 -0.10517612850577396 109 -0.105387532301849
		 110 -0.10554770880020214 111 -0.10579318987765185 112 -0.1059820549379959 113 -0.10645986313766914
		 114 -0.10714387404627856 115 -0.10810367015708527 116 -0.10951563596983471 117 -0.11125447105000869
		 118 -0.11332074356896249 119 -0.11558693996259806 120 -0.11793923765444198 121 -0.1206941246014519
		 122 -0.12376196721522387 123 -0.12703441754948497 124 -0.13043646726590841 125 -0.13399160828251022
		 126 -0.13770643870792265 127 -0.14187506354008739 128 -0.14593491801674341 129 -0.15005896937502522
		 130 -0.15414302551951981 131 -0.157782041890072 132 -0.16080724012339226 133 -0.16349393487493252
		 134 -0.16596697675288846 135 -0.16814469963370499 136 -0.16993409836221707 137 -0.17130471687071563
		 138 -0.17212246196680725 139 -0.17237516950758441 140 -0.17225084351676534 141 -0.17182996409462303
		 142 -0.17119953642165042 143 -0.16972685666046505 144 -0.16856962993877178 145 -0.1671161073839233
		 146 -0.16515764481561696 147 -0.16259739151332597 148 -0.15977237889149876 149 -0.15664762812294708
		 150 -0.15337786759279537 151 -0.15001350120220291 152 -0.14660882541447678 153 -0.14303471188503586
		 154 -0.13955650883062082 155 -0.13623212363410864 156 -0.13289994477912903 157 -0.12991732026334391
		 158 -0.12713217933231208 159 -0.12463823779715894 160 -0.12209676669857783 161 -0.11963793737854961
		 162 -0.1174902332623815 163 -0.1155672735786159 164 -0.11375962300104453 165 -0.11198851967359091
		 166 -0.11027336160238982 167 -0.10858995690138568 168 -0.10697409010880804 169 -0.10539758234431157
		 170 -0.10375330802512339 171 -0.10204356105722862 172 -0.10023050864612454 173 -0.098072371515914081
		 174 -0.095862714138741811 175 -0.093542118360507298 176 -0.09124989361214475 177 -0.089075843895995099
		 178 -0.086671411557689704 179 -0.083785023744114118 180 -0.081565361109309231 181 -0.079425556345263049
		 182 -0.077646028862103422 183 -0.076080378198887466 184 -0.074665258952294034 185 -0.073195788740755274
		 186 -0.07198966143702612 187 -0.070466299828989221 188 -0.069176294204622846 189 -0.067838600803690363
		 190 -0.06690861553041072 191 -0.06613427716787712 192 -0.064847082307602666 193 -0.064120301209628972
		 194 -0.063142454004985471 195 -0.062569042590308155 196 -0.061919884821304005 197 -0.061284668252079122
		 198 -0.060738287913823241 199 -0.060181297553790425 200 -0.059634020479371552 201 -0.059084729235892142
		 202 -0.058554624553289636 203 -0.05831346741329041 204 -0.057766633296047587 205 -0.05731774716444249
		 206 -0.056940212941097579 207 -0.056609377526503468 208 -0.056295102159739319 209 -0.056002815495763636
		 210 -0.055595467042247604 211 -0.055033422620378469 212 -0.054484218392060968 213 -0.054039073121688486
		 214 -0.053386854712865472 215 -0.052570813604623456 216 -0.051573926449407947 217 -0.050414422881286447
		 218 -0.049348330811766372 219 -0.04806678381049917 220 -0.046801792459903735 221 -0.04561098264084229
		 222 -0.044505686871854133 223 -0.043586998613720285 224 -0.042769872870626113 225 -0.0418195193342219
		 226 -0.041326368081759712 227 -0.040921483387923285;
createNode animCurveTL -n "marker_02_MKR_translateY1";
	rename -uid "AD4B3C51-4D6D-322C-58A7-D5BAC2366533";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 228 ".ktv[0:227]"  0 0.31390824349647217 1 0.31512997718864844
		 2 0.31610922052449175 3 0.31698035845535288 4 0.31748935193977412 5 0.31709031097324536
		 6 0.31666861929013645 7 0.31604059483472413 8 0.31512885007712255 9 0.31466017576698202
		 10 0.31450630179527395 11 0.31466295569975011 12 0.31414161665644169 13 0.31333248926643875
		 14 0.31289058861385299 15 0.31278324124967682 16 0.31313755531137388 17 0.31375664785517132
		 18 0.31511679084838751 19 0.3161713678301693 20 0.31666432732458172 21 0.31589680130923803
		 22 0.31558678572211563 23 0.3153381423841608 24 0.31529707114264327 25 0.31549422827511253
		 26 0.31514375283499663 27 0.31380806818073714 28 0.31206672121280943 29 0.31082614599128344
		 30 0.30991681437010787 31 0.30892330989922312 32 0.3078627294114169 33 0.30656042247058013
		 34 0.30586185757822104 35 0.30528551448467156 36 0.30446182844059355 37 0.30381997563119156
		 38 0.30376567221331552 39 0.30359566865598209 40 0.30392413510845873 41 0.30321631823556994
		 42 0.30078415664681823 43 0.29952940074615164 44 0.29972959338208816 45 0.29958878383510379
		 46 0.29993918930702657 47 0.30017346247304355 48 0.30006701992412699 49 0.30025461715362667
		 50 0.30061847397357055 51 0.30051914344438391 52 0.30057102408919156 53 0.30069133339294585
		 54 0.30085295898427156 55 0.30025229019734423 56 0.3001386498921037 57 0.29953254019230258
		 58 0.29890420874551216 59 0.29919041715356309 60 0.29934505394761757 61 0.29894502983689408
		 62 0.298040996050844 63 0.29625503697569877 64 0.29466380795104241 65 0.29343046144667517
		 66 0.29244537112382585 67 0.29082913226031759 68 0.2890436698304476 69 0.28655692244975228
		 70 0.28469808092478721 71 0.28315061359827887 72 0.28122653819323773 73 0.28141551090805372
		 74 0.28257686807539451 75 0.28341847885316962 76 0.28472763904515552 77 0.28529474699999069
		 78 0.28624469290847088 79 0.28705625884927344 80 0.28838090598017463 81 0.2894662630845799
		 82 0.29080637751737204 83 0.29173935752608482 84 0.29240664964216634 85 0.2922537481481533
		 86 0.29213170427930024 87 0.29223552280171972 88 0.29199996438160913 89 0.2920615486717999
		 90 0.29268109187994906 91 0.29258523626328325 92 0.29253429273436027 93 0.29239031804989002
		 94 0.29239591342146709 95 0.29211946186876248 96 0.29151120797989516 97 0.29055860478104034
		 98 0.28993295025563537 99 0.28883036043986243 100 0.28793287599057837 101 0.28689053825108812
		 102 0.28583531647914462 103 0.28476728655837003 104 0.28405462796062309 105 0.28355413289427056
		 106 0.28332963125887833 107 0.28326481797417591 108 0.28356467773719729 109 0.28337157505322863
		 110 0.28346117648546154 111 0.28361596913457254 112 0.28388618469520321 113 0.2838176179286932
		 114 0.28366078197231148 115 0.28360656464408851 116 0.2832167168435813 117 0.28279683496602448
		 118 0.28223444273939757 119 0.28135740097815309 120 0.28031242881082008 121 0.27978733387631327
		 122 0.27943889971292712 123 0.27879474799171555 124 0.27844008230484929 125 0.27810567782942242
		 126 0.27788353350210404 127 0.27755011354763337 128 0.27752363762345678 129 0.27764386586498879
		 130 0.277610888713541 131 0.27792641477003888 132 0.27886581044415282 133 0.27991622853537845
		 134 0.28194993141566904 135 0.28440860705870241 136 0.28745771279484889 137 0.29020973214109635
		 138 0.29401946497863785 139 0.2978243125402753 140 0.30146293385673617 141 0.30519913168272705
		 142 0.30889370402243421 143 0.31224521357228741 144 0.31633086084037798 145 0.32062076635436076
		 146 0.32461906488680881 147 0.3270132987510731 148 0.32886700105739175 149 0.33117432078540965
		 150 0.33216189802900553 151 0.33297536565288544 152 0.33332793883977019 153 0.33266656872171774
		 154 0.33183558340998298 155 0.33070773424366118 156 0.32974177970972918 157 0.32867588412986015
		 158 0.32741981648781071 159 0.32579537373256418 160 0.32425994580185757 161 0.3228434881482658
		 162 0.32116119309727398 163 0.31941454205070974 164 0.3178347805946683 165 0.3162280723206774
		 166 0.3152082762139824 167 0.3136248765758739 168 0.31213096463142864 169 0.31054383259319418
		 170 0.30898196214194029 171 0.30770089015522462 172 0.30658884071605574 173 0.30581355993874182
		 174 0.30554935488540891 175 0.30542994686178426 176 0.30490031270906326 177 0.30339719188835901
		 178 0.30235944654653413 179 0.30122650932407224 180 0.30021773439812516 181 0.29922991661317611
		 182 0.29819695489790576 183 0.29738920140488456 184 0.29631540537007339 185 0.29527079636541442
		 186 0.29437113829526962 187 0.29325387831823402 188 0.29181350173128406 189 0.29043662015959082
		 190 0.28880051185138067 191 0.28744205248437538 192 0.28554185128210463 193 0.28413741643508283
		 194 0.2827283647110127 195 0.28103743306398021 196 0.27962407620559393 197 0.27845351850645206
		 198 0.27716361063121131 199 0.27623684122378034 200 0.27599636117887716 201 0.27519850024829884
		 202 0.27495243045071516 203 0.2747462371193572 204 0.27499803811636847 205 0.27548518773667086
		 206 0.27568761674627096 207 0.27606623277020037 208 0.27702770466471494 209 0.27751594893790421
		 210 0.27769836113211732 211 0.2780034977078939 212 0.2782825145321679 213 0.27825082600146178
		 214 0.27788477968690461 215 0.27727085347843838 216 0.27674434623312816 217 0.27581163557637378
		 218 0.27463887457700531 219 0.27333599223835003 220 0.27223808904967772 221 0.27069250282371238
		 222 0.2689888010868563 223 0.26714470094488363 224 0.26530897570831935 225 0.26339039504683004
		 226 0.26146843219655247 227 0.25967720667286331;
createNode animCurveTU -n "marker_02_MKR_enable1";
	rename -uid "5FDCE7E2-4E7B-844B-4AC5-2A84B5915291";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 0 1 227 1 228 0;
createNode animCurveTL -n "marker_03_MKR_translateX1";
	rename -uid "0114511E-457A-E064-9D20-1EA0771B189B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 228 ".ktv[0:227]"  0 -0.2997551233365684 1 -0.29905061038619213
		 2 -0.29837957800667542 3 -0.29781369636800048 4 -0.29707945461229907 5 -0.29588854534389308
		 6 -0.2945224006817333 7 -0.29322693490040619 8 -0.2916523474746987 9 -0.29015847840265852
		 10 -0.28877435556793346 11 -0.28720043062134748 12 -0.2853869799645703 13 -0.28343895637835193
		 14 -0.28128129919077199 15 -0.27896845833667427 16 -0.27650550679306252 17 -0.27435764954856812
		 18 -0.27208474555366352 19 -0.26946153314719101 20 -0.26647863265274496 21 -0.26279744344619149
		 22 -0.25936107695738642 23 -0.2559885841156031 24 -0.25258594480035146 25 -0.24941558802594427
		 26 -0.24616597025227749 27 -0.2430275597996307 28 -0.23977893505818831 29 -0.23600998382747479
		 30 -0.23209332102426677 31 -0.22859563559417673 32 -0.22494380491970328 33 -0.22142057587770675
		 34 -0.21803605324336672 35 -0.21434398665340809 36 -0.21118128179674617 37 -0.20812205991319505
		 38 -0.20509186944787267 39 -0.20176715538417656 40 -0.19837318508181412 41 -0.19500053558000074
		 42 -0.19181254607156073 43 -0.18866994449961505 44 -0.18570530801599827 45 -0.18271001758480437
		 46 -0.1802802194788683 47 -0.17796261351516918 48 -0.17574265764992741 49 -0.17341634264701805
		 50 -0.17110669221859487 51 -0.16897061028617916 52 -0.16714400056530598 53 -0.16516194150668151
		 54 -0.16328757967232638 55 -0.16140335815589507 56 -0.15942314512288058 57 -0.1571881388753682
		 58 -0.15472025102630849 59 -0.15162258813497309 60 -0.14824499102105276 61 -0.14465132971671329
		 62 -0.14074189367251855 63 -0.13655689178695773 64 -0.13199573902349665 65 -0.12685523767460971
		 66 -0.12182011391044689 67 -0.11665690568973819 68 -0.11185484740419926 69 -0.10762701263974744
		 70 -0.10373772805248677 71 -0.10040906245211267 72 -0.097513315355299779 73 -0.094745409898749633
		 74 -0.092703876153311326 75 -0.09127596539067967 76 -0.090152237311173444 77 -0.08921387035256112
		 78 -0.088465768899725794 79 -0.08772007284469524 80 -0.086947606966454261 81 -0.086183576078723734
		 82 -0.08543640758825588 83 -0.084634751747980907 84 -0.084031636528989651 85 -0.083516697415325192
		 86 -0.083018889237048976 87 -0.082498696127415394 88 -0.082199675649473003 89 -0.082019461259041193
		 90 -0.081720423511395357 91 -0.081694570279433221 92 -0.08203455036780477 93 -0.082264245798373492
		 94 -0.082295814442800264 95 -0.082132810463231398 96 -0.082220794392464991 97 -0.082664945157729819
		 98 -0.083244225110992887 99 -0.083639671476885558 100 -0.083903087710042124 101 -0.084046317027900053
		 102 -0.084355666019473752 103 -0.084446115691546031 104 -0.084516865220157444 105 -0.084435422271103733
		 106 -0.084271131091389839 107 -0.084015481647194412 108 -0.083904052801567652 109 -0.083941504826316737
		 110 -0.08386855857198855 111 -0.083864756701433507 112 -0.083888310672554256 113 -0.084100630117139197
		 114 -0.084453522425238181 115 -0.085092149970146358 116 -0.08614900353635685 117 -0.087610124707698023
		 118 -0.089382388499509469 119 -0.091310763106401627 120 -0.093409821156541173 121 -0.095941096033576534
		 122 -0.098799168809844462 123 -0.10178596410818841 124 -0.10496088338352916 125 -0.10821613892969151
		 126 -0.11171132234334386 127 -0.11560333152341845 128 -0.11948331695098746 129 -0.12336079210470768
		 130 -0.12722876482832846 131 -0.13065876317470065 132 -0.13353591718199187 133 -0.13600234203217115
		 134 -0.138286838833796 135 -0.14023819767641638 136 -0.14187438875737779 137 -0.14310070889105364
		 138 -0.14374580662869857 139 -0.14386428258580441 140 -0.1435809070684203 141 -0.14294557873970509
		 142 -0.14211953610539513 143 -0.14051355277179489 144 -0.13911229054441837 145 -0.13753126127437793
		 146 -0.13541369856344915 147 -0.13277130006381826 148 -0.12981694885519501 149 -0.12653600256623454
		 150 -0.12320840279290729 151 -0.11976381073079823 152 -0.1163224344303016 153 -0.1127219805806931
		 154 -0.10929214629329947 155 -0.10605591515053858 156 -0.10282181869131052 157 -0.099968402666540168
		 158 -0.097299116804933916 159 -0.094969254191552221 160 -0.092498245623049979 161 -0.090146925001710565
		 162 -0.088172013698338936 163 -0.086375731963355462 164 -0.084712767916561238 165 -0.083072087240843917
		 166 -0.081373097723651533 167 -0.079852383728529042 168 -0.07822403867960287 169 -0.076654696115668441
		 170 -0.075094515040254717 171 -0.073432090718808463 172 -0.071631194179836433 173 -0.069466402498529034
		 174 -0.067312818301877686 175 -0.065010934516783137 176 -0.062686946629111562 177 -0.060506208532169925
		 178 -0.058102552515203854 179 -0.055186466432792181 180 -0.052965544124401132 181 -0.050913251254734726
		 182 -0.04926251144286059 183 -0.04772504071327921 184 -0.046479810522426446 185 -0.0451386245489801
		 186 -0.043993754155024822 187 -0.042620817960837221 188 -0.04137818690311118 189 -0.040094464915648276
		 190 -0.03932147422471588 191 -0.038630509446558048 192 -0.037456725223617926 193 -0.036842745235483754
		 194 -0.036041648068322774 195 -0.03563232909942865 196 -0.035158801089568203 197 -0.034646486466971493
		 198 -0.034261856885459352 199 -0.033844811574909595 200 -0.033440498026332421 201 -0.033067752063899836
		 202 -0.0327434326522551 203 -0.03259015880017635 204 -0.032239750460534178 205 -0.031933132930902053
		 206 -0.031647274873519649 207 -0.031416627336161573 208 -0.031261833343186718 209 -0.031160298510655771
		 210 -0.030902888301820863 211 -0.030509309250589256 212 -0.030144156735531669 213 -0.029832726249994057
		 214 -0.029289628529076517 215 -0.028652746546774743 216 -0.027732551682955353 217 -0.026733375454673636
		 218 -0.025763073251926893 219 -0.024541573973906161 220 -0.023367173295124499 221 -0.022244482357009154
		 222 -0.021259075633628888 223 -0.020361391319485389 224 -0.019651169238441624 225 -0.018773396660603014
		 226 -0.018317444478377132 227 -0.017976280888896135;
createNode animCurveTL -n "marker_03_MKR_translateY1";
	rename -uid "CE73EFA1-43AE-4ADB-9537-3FA314699EAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 228 ".ktv[0:227]"  0 -0.44961229327058277 1 -0.44878680869680881
		 2 -0.44847182527851936 3 -0.44809686783878244 4 -0.44797788205031547 5 -0.44841613542441611
		 6 -0.4487350960086991 7 -0.44903534605657702 8 -0.45008532294438791 9 -0.45139067998154425
		 10 -0.45230814843599859 11 -0.45283102003146614 12 -0.45330297747545023 13 -0.45347770982366065
		 14 -0.45309269673029029 15 -0.45247055361086219 16 -0.45184996920466342 17 -0.45129239637708668
		 18 -0.44993663579552134 19 -0.44828130313316594 20 -0.44659721645304518 21 -0.44555964964047362
		 22 -0.44395944690356004 23 -0.44250485308305804 24 -0.44102077903628201 25 -0.43896840898187783
		 26 -0.43688924140804192 27 -0.43545242322116601 28 -0.43438875584551717 29 -0.43277465432591311
		 30 -0.4308609986952957 31 -0.42875491535487897 32 -0.42637216075412182 33 -0.42377126625018052
		 34 -0.42039956962816855 35 -0.41664958174955924 36 -0.41264929692221697 37 -0.40867435355098669
		 38 -0.40463816360397714 39 -0.40044209226519678 40 -0.39597332617060294 41 -0.3918188164909262
		 42 -0.38887876281219214 43 -0.38485460005933958 44 -0.37993303394462424 45 -0.37539056227661666
		 46 -0.37078691439212064 47 -0.36614519744213475 48 -0.36141062423279224 49 -0.35601222519854187
		 50 -0.35049868626887093 51 -0.34537089342649274 52 -0.34021513270749559 53 -0.33511234211296304
		 54 -0.32979077998175943 55 -0.32457320089500885 56 -0.31910355249641298 57 -0.31445811573064764
		 58 -0.31000764069378384 59 -0.30458353960021811 60 -0.29916305620402561 61 -0.29370085526189066
		 62 -0.28815191914664962 63 -0.28354666177477822 64 -0.27939247734939621 65 -0.27512385007678131
		 66 -0.27071291048160762 67 -0.26658826291716298 68 -0.26228085069068474 69 -0.25827717546669771
		 70 -0.25378792371880587 71 -0.2491259509343795 72 -0.24537187269418542 73 -0.23983672909869891
		 74 -0.23335858229458112 75 -0.22715757448509599 76 -0.22039281094864432 77 -0.21404558340895169
		 78 -0.20755246030671326 79 -0.20127425617070427 80 -0.19481899680213394 81 -0.18871965401105423
		 82 -0.18236256349535002 83 -0.17621251116433023 84 -0.17029001116236331 85 -0.16497450822862419
		 86 -0.15969956950329312 87 -0.15426208957425835 88 -0.1494534977429392 89 -0.14418227566429831
		 90 -0.13838434951755052 91 -0.13314908579866958 92 -0.12794322678559095 93 -0.12296288917269127
		 94 -0.11821281958433294 95 -0.11389469666521479 96 -0.11010605819452024 97 -0.10673095650466752
		 98 -0.10333320052342776 99 -0.10056943159279702 100 -0.097708131508464802 101 -0.095168101014850959
		 102 -0.092745288047808461 103 -0.090408814531820647 104 -0.087747845137724878 105 -0.08481494544078666
		 106 -0.081543345844733439 107 -0.078086003883344246 108 -0.074284157011415608 109 -0.070931953150957072
		 110 -0.067348731005696716 111 -0.063761075972087133 112 -0.060129733615693182 113 -0.056842984220550952
		 114 -0.053677997863355476 115 -0.050486090018518281 116 -0.047556846577269718 117 -0.044781892989521566
		 118 -0.042261643609545319 119 -0.040112531961454201 120 -0.03816200105639439 121 -0.035797219452467388
		 122 -0.033402027971003723 123 -0.031244995948351673 124 -0.028928672365456709 125 -0.026569065613585463
		 126 -0.024110335039279784 127 -0.021845524507287439 128 -0.019173051508470873 129 -0.016206427374879984
		 130 -0.013473094335082703 131 -0.010449333860554966 132 -0.0069583256244316605 133 -0.0032462308643299576
		 134 0.001174625022890563 135 0.0060227989458461195 136 0.011392403042550736 137 0.016468063578385816
		 138 0.022432933185611459 139 0.028507298824796856 140 0.03427615042354959 141 0.040026586199459313
		 142 0.045750940077421531 143 0.051109287390029956 144 0.057070854323857612 145 0.063442896706301877
		 146 0.069332356710898768 147 0.073788419423078233 148 0.077629255135715725 149 0.081873925071704767
		 150 0.084831422442951943 151 0.087613675249666234 152 0.089996642017366457 153 0.091109503203939957
		 154 0.092164571182264066 155 0.092981223880491792 156 0.093824901314412568 157 0.09450776059486754
		 158 0.095018024547401936 159 0.095106306092862636 160 0.09513356487754776 161 0.095152260848819448
		 162 0.094943529124040471 163 0.094654552014736604 164 0.094447493650945624 165 0.094264288778371674
		 166 0.094409569407876592 167 0.094245860792144809 168 0.094055158883816992 169 0.093698363857038891
		 170 0.093294817705517508 171 0.093302253745480845 172 0.093384821252816885 173 0.09378565202840039
		 174 0.094587304636827296 175 0.095455860823712269 176 0.095968895921504704 177 0.095558485692466388
		 178 0.095467991723885648 179 0.095226678263972131 180 0.095212792528185264 181 0.095197125009257588
		 182 0.095111750715051624 183 0.095182356710095228 184 0.094939105112356481 185 0.094636625902550064
		 186 0.094548199180856884 187 0.094271827055605883 188 0.093614817022771968 189 0.092833924088537079
		 190 0.091894437572292542 191 0.091256666385956864 192 0.090016169839482241 193 0.089096686675946946
		 194 0.088323632481576264 195 0.087156219217794262 196 0.086182728817350007 197 0.085455303709594088
		 198 0.084612060217098217 199 0.084125199104656878 200 0.084167799018556422 201 0.083813177982342668
		 202 0.08378207144679406 203 0.08387460788310086 204 0.084378814088041265 205 0.085064712245866647
		 206 0.085490494108792059 207 0.086008198711183703 208 0.087208039619494415 209 0.087883713590592327
		 210 0.088359104996399318 211 0.088764696643083285 212 0.089293252811185497 213 0.089300782524511013
		 214 0.089117878686889584 215 0.088642494739085254 216 0.088237610280095025 217 0.087595744279127863
		 218 0.086492830067752324 219 0.085426933636019164 220 0.084412740229822592 221 0.082984011397401858
		 222 0.081402941478535551 223 0.079607439579848505 224 0.077987297663936861 225 0.076206414174461057
		 226 0.074476360169223321 227 0.072758656337720606;
createNode animCurveTU -n "marker_03_MKR_enable1";
	rename -uid "D07EDDA6-4861-209E-5310-81B73638AAA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 0 1 227 1 228 0;
createNode animCurveTL -n "marker_04_MKR_translateX1";
	rename -uid "3D6C474D-4FA7-4C74-12EB-3F8C16AFD3EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 228 ".ktv[0:227]"  0 0.31595674798797924 1 0.3168736274472933
		 2 0.3181692387661752 3 0.31928061778898564 4 0.32019532825211361 5 0.32142038304181719
		 6 0.32274674188510877 7 0.32400207110175605 8 0.32567313090163819 9 0.32751228314791958
		 10 0.32969409673210182 11 0.33165345288022097 12 0.33332107723329252 13 0.33480726630684843
		 14 0.33646780571362311 15 0.33822695549714799 16 0.34022043282609982 17 0.34204352273646432
		 18 0.34397293826429209 19 0.34571203806378625 20 0.34719460229670596 21 0.34900307103948103
		 22 0.35037449737696014 23 0.35162766501041831 24 0.35278169577566665 25 0.35357944243835659
		 26 0.35392893648481027 27 0.35381591791779543 28 0.3536165183586345 29 0.35398119756167457
		 30 0.35436017022094113 31 0.35402919387320275 32 0.35363746916066729 33 0.35280716051584959
		 34 0.35155628460241017 35 0.35038142052306154 36 0.34860016711004937 37 0.34660463023665145
		 38 0.34466353587762033 39 0.34303030111836996 40 0.34139914072816657 41 0.3391344621129635
		 42 0.33647785895690285 43 0.33375457126443042 44 0.33119291716749855 45 0.32846985295627174
		 46 0.3254917804521007 47 0.32218722228058871 48 0.31869014296914433 49 0.31491420059724595
		 50 0.31142294680116367 51 0.3075930873665994 52 0.30359369354877574 53 0.29975261955583432
		 54 0.2960260087491251 55 0.29210494216179561 56 0.28835279882343501 57 0.28488195716411724
		 58 0.28184744118040761 59 0.27901398576337044 60 0.2763687087235368 61 0.27346264952348676
		 62 0.27101899877704883 63 0.26855779134927171 64 0.26649380123815913 65 0.26506498969796777
		 66 0.26374542512136956 67 0.26215243549258571 68 0.26020296926254616 69 0.25778203407743772
		 70 0.25532611600213806 71 0.25238616914304435 72 0.2495756365551236 73 0.24687035452817263
		 74 0.24355592705390305 75 0.23936734602082432 76 0.23499721101957405 77 0.23039189733570864
		 78 0.22564059446602758 79 0.22068616346299719 80 0.21594140606140622 81 0.21115239815928744
		 82 0.20646679437249282 83 0.20176290348685011 84 0.19727812642871156 85 0.19270123360360636
		 86 0.18840518421945962 87 0.18414195350611473 88 0.18003383336991496 89 0.17575937579469236
		 90 0.17181718496000953 91 0.16756862815460694 92 0.16323983382083584 93 0.15892302798150781
		 94 0.15492689667871451 95 0.15112570547647941 96 0.14708338482756622 97 0.14260850549729243
		 98 0.13811219305854283 99 0.13373371349096908 100 0.12962940107199794 101 0.12541161659355704
		 102 0.12125154463336774 103 0.11730187455297236 104 0.11361086564756284 105 0.10999008347023997
		 106 0.10668933378799861 107 0.10350659651536398 108 0.10051209880926248 109 0.097393609592855479
		 110 0.094596571640157001 111 0.091634282446312665 112 0.088903591522517811 113 0.085772821945466982
		 114 0.082659665529889903 115 0.079061830175312764 116 0.075096488516613435 117 0.070720112568511961
		 118 0.066063534368203558 119 0.061123978719779481 120 0.056122235637906304 121 0.050619921130082735
		 122 0.045064460064237477 123 0.039350640902412914 124 0.03365880334199467 125 0.02787355479415099
		 126 0.022072234855365247 127 0.015921165338037557 128 0.010045143754597419 129 0.0040960438080942518
		 130 -0.0015487069248119045 131 -0.0067396131523616565 132 -0.011316676997833786 133 -0.015456837866781703
		 134 -0.019357341651280224 135 -0.023016814360819871 136 -0.026210627418755128 137 -0.029184698936227771
		 138 -0.031463971258955115 139 -0.033324965894517555 140 -0.034724038821686509 141 -0.035891746598096519
		 142 -0.036760093196103572 143 -0.036923658746671306 144 -0.037213896051681294 145 -0.037230391129034368
		 146 -0.036553154491381579 147 -0.035364044805406225 148 -0.03372847240418958 149 -0.031831558812493665
		 150 -0.029723511682428316 151 -0.027460932807524818 152 -0.02508506898791274 153 -0.02267445826151876
		 154 -0.020193169183248039 155 -0.017972680486398607 156 -0.015721197760560024 157 -0.01392221015747469
		 158 -0.012264097219100545 159 -0.010837600504170153 160 -0.0093616702419107023 161 -0.0079604909721643913
		 162 -0.0069182472414122675 163 -0.0059090610219855733 164 -0.0050036685607251496
		 165 -0.0041345095884001148 166 -0.0031736540350011389 167 -0.0022121334540430859
		 168 -0.0012377168338072453 169 -0.00024350593962829681 170 0.00080864682096737361
		 171 0.0019719215708586812 172 0.0033021572637593755 173 0.0049957159097037129 174 0.0067298782132949597
		 175 0.0085490443174589537 176 0.01035584772440501 177 0.011993327473241999 178 0.013887625867536668
		 179 0.016279265150078159 180 0.0179978455480726 181 0.019597239071113992 182 0.02095604094723813
		 183 0.022026050719851198 184 0.023016965554756852 185 0.024034277943937421 186 0.024900214176858726
		 187 0.026085487653540795 188 0.027126096363900731 189 0.028222880767321046 190 0.028811053547648124
		 191 0.029399069055644933 192 0.030490651477246722 193 0.030973765388907282 194 0.031754496718305658
		 195 0.032028070670028441 196 0.032402722606108214 197 0.032835543762419039 198 0.033160575073879039
		 199 0.03352754853083717 200 0.033865270903558065 201 0.034204017025352029 202 0.034529506118592401
		 203 0.03469181710881819 204 0.035095636010144537 205 0.035429344671343732 206 0.035729780257135357
		 207 0.036009571240859239 208 0.036226987109794218 209 0.036446564449753471 210 0.03680451329965051
		 211 0.03725761650643844 212 0.037722812670596295 213 0.038107239505140944 214 0.038642129587806218
		 215 0.039296392546877335 216 0.040198332495337996 217 0.041228828618438906 218 0.042182962973001947
		 219 0.043344623175811003 220 0.044466878776975527 221 0.045525752951932175 222 0.046493304963348581
		 223 0.04736315295859983 224 0.048095322176006428 225 0.048988373661645879 226 0.049413364923396652
		 227 0.049756882799622981;
createNode animCurveTL -n "marker_04_MKR_translateY1";
	rename -uid "5448C44A-4C98-5D18-41AB-3FA39A57CC53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 228 ".ktv[0:227]"  0 0.40048659070062387 1 0.40117190635859157
		 2 0.40150553034834158 3 0.40160962782257104 4 0.40137837021969691 5 0.40045901882450585
		 6 0.39938109002662936 7 0.3980082443246582 8 0.39650784703073183 9 0.3954113494653021
		 10 0.39452787039223403 11 0.39339725110721779 12 0.39198892688502973 13 0.39057435541872609
		 14 0.3892069969304538 15 0.38789010118099931 16 0.38714586246969807 17 0.38672474310975569
		 18 0.38677072725906581 19 0.38641163992086625 20 0.38559338681104605 21 0.38382091874157886
		 22 0.3821254793355332 23 0.3801454006593914 24 0.37822063465000555 25 0.37670371192888252
		 26 0.37443123061297801 27 0.37118172492054047 28 0.36748581898852051 29 0.36427373839598876
		 30 0.36096915862968504 31 0.35764139935361738 32 0.35434389223259255 33 0.35071274950480258
		 34 0.34754770077755071 35 0.34442916276351765 36 0.34119261024479597 37 0.33830602076434602
		 38 0.33592707622658591 39 0.33336106829008738 40 0.33088736616084347 41 0.32799960901515202
		 42 0.32379303450720587 43 0.32030179463336583 44 0.31806325439646388 45 0.3155507727734761
		 46 0.31369608546888039 47 0.31171839971785387 48 0.30986998533550902 49 0.30849086389194569
		 50 0.30753156727671138 51 0.3062724979133008 52 0.30536573103178111 53 0.30433741975679995
		 54 0.30359943591356719 55 0.30258229286794891 56 0.30220681030883145 57 0.30092067331376104
		 58 0.2996337173471546 59 0.29880970522648165 60 0.29816896581913754 61 0.29699739352553489
		 62 0.29562940657929571 63 0.29327241855987618 64 0.29123514823593999 65 0.28934057025525139
		 66 0.28766394344399093 67 0.28524351692484717 68 0.28301210594667403 69 0.28043755985665908
		 70 0.27855495572608213 71 0.27672153602542071 72 0.27463722452881345 73 0.27446141205664853
		 74 0.27517899631582643 75 0.27532823923552174 76 0.27621283951803288 77 0.2763901471275485
		 78 0.27669868521988561 79 0.27677203368123371 80 0.27746439034603976 81 0.27751542161670772
		 82 0.2781329901790992 83 0.27832663843021976 84 0.2786085634648594 85 0.27813201862940984
		 86 0.27790993452323232 87 0.2779111336997534 88 0.2778444614676977 89 0.27799790524195223
		 90 0.27883376717617803 91 0.27925930716427549 92 0.27994256437630971 93 0.28022516946463261
		 94 0.2805546335295529 95 0.28047584576620466 96 0.28021627921798031 97 0.27945953523899336
		 98 0.27893690463796794 99 0.27779559490608807 100 0.27689320760019132 101 0.27553904826203734
		 102 0.27446566604080258 103 0.27318982314193374 104 0.27251343546964302 105 0.27187051746314628
		 106 0.27179783751688125 107 0.2718643781528951 108 0.27259230249424038 109 0.27271033600245276
		 110 0.27343361767631968 111 0.27417421009522502 112 0.27509784705116747 113 0.27565052920655619
		 114 0.2763119092623072 115 0.27690127636580597 116 0.27737946893134091 117 0.27768015607177721
		 118 0.27786675068052347 119 0.27753056293007039 120 0.27720314638363874 121 0.27708198403447148
		 122 0.27730019993065047 123 0.2770344086830403 124 0.27736831484044566 125 0.27749747944541958
		 126 0.27788678506166931 127 0.27805505977405853 128 0.27870689987393549 129 0.27956175471477707
		 130 0.28036445649675312 131 0.28127363643173942 132 0.28276975087249312 133 0.28439287360463816
		 134 0.28686224816265693 135 0.28954564633649738 136 0.29280294675175389 137 0.29579391718128589
		 138 0.29976252446252183 139 0.30361384089148924 140 0.30717068964570327 141 0.31084659479508669
		 142 0.31474273265292418 143 0.31807402833472576 144 0.32237236831821159 145 0.3268464787733496
		 146 0.33116328693759933 147 0.33387264053161114 148 0.33617553733665373 149 0.33893008922591428
		 150 0.34045973554775699 151 0.34180909264675086 152 0.34267987621234508 153 0.34235313665123257
		 154 0.34212687176470702 155 0.34131496886704737 156 0.34063020366629282 157 0.33978839697299557
		 158 0.33867632999298047 159 0.33717727138712095 160 0.33561206773319363 161 0.3340853510026256
		 162 0.33234409028730594 163 0.33061169614961572 164 0.32894669895453088 165 0.32748257431349292
		 166 0.32631930114161556 167 0.32472580150876762 168 0.32335741449127287 169 0.3218943675176078
		 170 0.32035353378452391 171 0.31921116263803728 172 0.31817195507310292 173 0.31762993179333066
		 174 0.31749537218435897 175 0.317668532594923 176 0.31724268979403392 177 0.31603323534333738
		 178 0.31520111993214184 179 0.31424053516971928 180 0.31339883785200107 181 0.31252844821649794
		 182 0.31159860658663241 183 0.31086190557961191 184 0.3099012299874061 185 0.30884978081223147
		 186 0.30803194241917342 187 0.30705691794892775 188 0.30566215530478358 189 0.30438673863012289
		 190 0.30287997995343507 191 0.30171497186748197 192 0.29985082134031216 193 0.29845268090763577
		 194 0.29704323374498653 195 0.2954367472399213 196 0.29394095938123477 197 0.29278518178474977
		 198 0.29131676210965773 199 0.29021661564504664 200 0.28974018047846273 201 0.28884229935293593
		 202 0.2882955151855916 203 0.28782799080761712 204 0.28791513100631294 205 0.28809877760031966
		 206 0.2879848051300562 207 0.28820363298933727 208 0.28886717347720348 209 0.28907845701233048
		 210 0.28912151765302596 211 0.28917745174046205 212 0.28926051367512773 213 0.28889535254747001
		 214 0.28828360987422497 215 0.28757407819044789 216 0.28680472464301376 217 0.28582342355808565
		 218 0.28448537925411266 219 0.28306158462927067 220 0.28201937597089743 221 0.28049114971056954
		 222 0.27863546972391529 223 0.27682036152443634 224 0.27497202240923635 225 0.27315175010819881
		 226 0.27126312490554916 227 0.26950016184887238;
createNode animCurveTU -n "marker_04_MKR_enable1";
	rename -uid "80AC7B53-4DFB-D016-F399-5A84C2C382EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 0 1 227 1 228 0;
createNode animCurveTL -n "marker_05_MKR_translateX1";
	rename -uid "4B78F9F5-46FD-5D89-9233-45A0E84AAC2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 228 ".ktv[0:227]"  0 0.37525729979648115 1 0.37623183260676618
		 2 0.37757783101672893 3 0.37866556555120123 4 0.37958020943190074 5 0.38073681680213245
		 6 0.38186014070488328 7 0.38295007742872278 8 0.38459016658755418 9 0.38654817751291015
		 10 0.38881293432928188 11 0.39075688935812569 12 0.39236367335812106 13 0.39368841035055868
		 14 0.39502804911361178 15 0.39657140815835001 16 0.39853775051535789 17 0.40038625235327874
		 18 0.402280030194758 19 0.40390981785101221 20 0.40520542679781413 21 0.40665142074292315
		 22 0.40760415214919832 23 0.40850156114802083 24 0.40940262990600285 25 0.40979321065522245
		 26 0.40971784575510239 27 0.40906935711910397 28 0.40835090927518092 29 0.40821029132208431
		 30 0.40801452723521281 31 0.40710868173497672 32 0.40609351399004923 33 0.40450525237807144
		 34 0.40253794015772082 35 0.40058574442408046 36 0.39795610811529447 37 0.39522935174340323
		 38 0.39274697128114056 39 0.39051764560278146 40 0.38830795547864749 41 0.38542689766308891
		 42 0.38217596539310461 43 0.37866097643939223 44 0.37539110156038169 45 0.37221852016249701
		 46 0.36880725185511798 47 0.36500488200433889 48 0.36105799638973612 49 0.35685740470349114
		 50 0.35284754896012627 51 0.34860444408296565 52 0.34434357394749449 53 0.34023007158862006
		 54 0.33612550242759121 55 0.33188045714618453 56 0.32790987618904488 57 0.32414074155893646
		 58 0.32088843370803455 59 0.3177951303925618 60 0.3149357021863487 61 0.31167906588179495
		 62 0.30866778536697426 63 0.30570472065912779 64 0.3033787478321911 65 0.30168058949601684
		 66 0.30007895334825951 67 0.29817285806766758 68 0.2958549342818646 69 0.29281399329960667
		 70 0.28976738658759171 71 0.28648756225710426 72 0.28343062630728888 73 0.28046158510026353
		 74 0.27700169141053888 75 0.27271928776096477 76 0.26806381066973362 77 0.26293967376767913
		 78 0.2577314370370648 79 0.25239995336900178 80 0.24733152956704996 81 0.24211429359529357
		 82 0.23717517570004809 83 0.23215191191608686 84 0.22722151578638716 85 0.22211060255308868
		 86 0.21745675841382661 87 0.21287162153413186 88 0.20843705460159867 89 0.20389896841229238
		 90 0.19969000199993048 91 0.19521837512755102 92 0.19061809542950192 93 0.18601972651639287
		 94 0.18190572048384068 95 0.17784786188649837 96 0.17361351509721468 97 0.1688855951105277
		 98 0.1642723970852169 99 0.15960187527825265 100 0.15513267006088127 101 0.15075181846940566
		 102 0.14626764091325173 103 0.14203572093694994 104 0.13806336264917096 105 0.13423794502324515
		 106 0.13074816990036808 107 0.12734562635760649 108 0.1241354255376671 109 0.12086099170069153
		 110 0.11786678271472828 111 0.11480134733213798 112 0.11199713354355489 113 0.10884562318748747
		 114 0.10559417957382766 115 0.10195567991183885 116 0.097972423685306897 117 0.093511344848015487
		 118 0.088743919083382194 119 0.083759732288859357 120 0.078750475331617609 121 0.073285884429570181
		 122 0.067661085028681178 123 0.061867794801097276 124 0.056114772846355798 125 0.05025956685463151
		 126 0.044505820900344273 127 0.038310062569573478 128 0.032432942635807982 129 0.026449745311589612
		 130 0.020781673627013775 131 0.015516769538682751 132 0.01095379899811677 133 0.0067528336454525384
		 134 0.0029255203409697117 135 -0.00072705455353377912 136 -0.0039344144776917167
		 137 -0.0068411003751756017 138 -0.0091596405652086266 139 -0.011032577089053863 140 -0.012421140848367929
		 141 -0.013588715139838947 142 -0.014373037911114883 143 -0.014455951352339236 144 -0.014695097108130661
		 145 -0.014694737585507767 146 -0.014034375038083746 147 -0.012807866371175425 148 -0.011175317860881884
		 149 -0.0092315706983014945 150 -0.0069983540763888796 151 -0.0048145139166987372
		 152 -0.0024265050025011892 153 -1.0283154676993256e-05 154 0.0023580483465636126
		 155 0.0044916933004114368 156 0.0066759886057639051 157 0.0083830560483469929 158 0.0099430435162763953
		 159 0.011297105352563008 160 0.012598343740260698 161 0.01396241002564591 162 0.014960713038554951
		 163 0.015840384880083214 164 0.016697340582246811 165 0.017574549544004281 166 0.018431397961788942
		 167 0.019334948713119249 168 0.020270098674109005 169 0.021200285245866368 170 0.022254500811559663
		 171 0.023387763057352795 172 0.024684854014721314 173 0.02633658965993102 174 0.02806937183251712
		 175 0.029837995235721393 176 0.031687179342122063 177 0.033431273118266325 178 0.035304468240001996
		 179 0.037653491025129271 180 0.039328868871826517 181 0.040925384058479564 182 0.042194002771087646
		 183 0.043225156620528171 184 0.044151387482505355 185 0.045181473277086992 186 0.045982245236104724
		 187 0.047124112846786415 188 0.048048865356293824 189 0.049127534751058022 190 0.049705875746757
		 191 0.050166983918627395 192 0.05112825286353051 193 0.051626233900970653 194 0.052290970479662247
		 195 0.052549815857008908 196 0.052851270388050819 197 0.053199810419180316 198 0.053421153019249434
		 199 0.053705677955258824 200 0.053959071961033001 201 0.054173650589840472 202 0.054430222028057695
		 203 0.054503769853752049 204 0.054820461042896729 205 0.055092848556874241 206 0.05530752495618152
		 207 0.055440752926444348 208 0.055646025087563333 209 0.055831675801404357 210 0.056024418191340741
		 211 0.056455651347602775 212 0.056816764780916462 213 0.057096640882974059 214 0.057557454915610595
		 215 0.058150544877924371 216 0.059003442018369601 217 0.059941434732175392 218 0.06079188853863593
		 219 0.061892853157996419 220 0.063010431324089122 221 0.064038451151314235 222 0.064966818813492644
		 223 0.065849493100698542 224 0.066574525930137796 225 0.067425827860236986 226 0.067829570850835519
		 227 0.068130236205175332;
createNode animCurveTL -n "marker_05_MKR_translateY1";
	rename -uid "298323E3-48DA-FE0C-761A-DF995FCA163B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 228 ".ktv[0:227]"  0 -0.039771152928443021 1 -0.039178052997288659
		 2 -0.039176599789645217 3 -0.039272315846759387 4 -0.039544264881763103 5 -0.040458591741469985
		 6 -0.041580700154064454 7 -0.042868805963775458 8 -0.044438503610586877 9 -0.045785372416926595
		 10 -0.04697914673826159 11 -0.048211225951360959 12 -0.049436704842279577 13 -0.050574789424148503
		 14 -0.051572221640107607 15 -0.052399990556252385 16 -0.052637011185449278 17 -0.052668593805031416
		 18 -0.052232773123299381 19 -0.05182247234100873 20 -0.051572777780350743 21 -0.052155990698870003
		 22 -0.052434905295436596 23 -0.052780094923185472 24 -0.053105229166456103 25 -0.052952006088265613
		 26 -0.053217104943121318 27 -0.054185528446546061 28 -0.05552951845596521 29 -0.056420474197894255
		 30 -0.057275739012375648 31 -0.057934455021237508 32 -0.058433172790203214 33 -0.05902311794020032
		 34 -0.059057465015094346 35 -0.058822886115518835 36 -0.058508184693054577 37 -0.058014255384378932
		 38 -0.056950273866835321 39 -0.056068191096073416 40 -0.055145706739976541 41 -0.054283681487589996
		 42 -0.054643012984972261 43 -0.054268678597977626 44 -0.052885527367634799 45 -0.051628204899497376
		 46 -0.050000240404552865 47 -0.048361981542153321 48 -0.046563238863469192 49 -0.044123078156672657
		 50 -0.041450138627626032 51 -0.039129727692945648 52 -0.036460390845277968 53 -0.033908369010029971
		 54 -0.031312176979372996 55 -0.028815693394023678 56 -0.025753720846628081 57 -0.02365070916951556
		 58 -0.021801232807254323 59 -0.019193516058330085 60 -0.01638196014617288 61 -0.014000819905336415
		 62 -0.011810020032847146 63 -0.010480847281632066 64 -0.0090674810651899529 65 -0.0075249619215968511
		 66 -0.0059730477040518259 67 -0.0048409652774775158 68 -0.003536810698990589 69 -0.0026440453835889222
		 70 -0.001267783871126249 71 0.00026169349916593809 72 0.0013020731650467132 73 0.0041201947542106598
		 74 0.0078179827693033443 75 0.011186473480485182 76 0.015015916365723858 77 0.018143855951642029
		 78 0.021531166676100111 79 0.02464421467807143 80 0.028127014906517034 81 0.031117524856273615
		 82 0.034586906300255071 83 0.037692392325005319 84 0.040733024893446768 85 0.043009909482475517
		 86 0.045484652384968238 87 0.048139073112899555 88 0.05054778665652826 89 0.053231185403859738
		 90 0.056552540901473325 91 0.059511864215523458 92 0.062606114812232327 93 0.065339357027324185
		 94 0.068020618795101018 95 0.070170688839869211 96 0.072107709740904302 97 0.073525032671124202
		 98 0.074988603812101928 99 0.075941847709058652 100 0.07699067857526265 101 0.077546914272768608
		 102 0.078327890620925933 103 0.079056900601994773 104 0.079997200664449042 105 0.081195880408918009
		 106 0.082911910319667714 107 0.084620260152920457 108 0.086999259441341792 109 0.088830148084910077
		 110 0.091178278118145606 111 0.093548195497115016 112 0.096027728197983997 113 0.098258830410918874
		 114 0.10056424501453898 115 0.10269014057793924 116 0.10479814396460874 117 0.1066887683598573
		 118 0.10840083278937618 119 0.10966826689823195 120 0.11074577521512263 121 0.11225025264721067
		 122 0.11382495458161668 123 0.11510849833392423 124 0.1167113879371926 125 0.11830689529321214
		 126 0.12014882337893873 127 0.12164062672621401 128 0.12351066371348995 129 0.12569796051771431
		 130 0.12771016870717367 131 0.12986732149896141 132 0.13271468810533238 133 0.13546272458671504
		 134 0.13902913636806358 135 0.14298044783508645 136 0.147268461716757 137 0.15126191882790008
		 138 0.15612530149738735 139 0.16097722505084422 140 0.16554943882643947 141 0.17028615118878221
		 142 0.17499280103421588 143 0.17928712398762481 144 0.18445976960225641 145 0.18996235967702557
		 146 0.19504790458051002 147 0.19872323616412768 148 0.2018931862810307 149 0.20553040585340587
		 150 0.20789672400302572 151 0.21007732595884265 152 0.21192980144733364 153 0.21247595844348477
		 154 0.21299970872156437 155 0.21302377646138781 156 0.21322536130415337 157 0.21315002325904753
		 158 0.21270560330617105 159 0.21199115173344685 160 0.21126967889082482 161 0.21040470258434396
		 162 0.20932304075133989 163 0.20822029592677671 164 0.20721510568641821 165 0.20629516987540752
		 166 0.20570812279560458 167 0.2048216926084131 168 0.20396280787148213 169 0.20300064678771923
		 170 0.20208207044374182 171 0.20152787366477454 172 0.20107905064625364 173 0.20096821449184077
		 174 0.20140777387915532 175 0.20199546111485922 176 0.20207066176511568 177 0.20129920503795717
		 178 0.2009725796533266 179 0.20059585973382066 180 0.20011422520273459 181 0.19964870443325655
		 182 0.19907784950133944 183 0.19876762492850308 184 0.19817893583582025 185 0.19756318844705423
		 186 0.19704619097582954 187 0.19640531301485986 188 0.19544822208769475 189 0.1944876673982755
		 190 0.19336947823709127 191 0.19239201616744084 192 0.19091216819615131 193 0.189761654817999
		 194 0.18855758214059115 195 0.1871114285184049 196 0.18597371439373334 197 0.18486370159559584
		 198 0.1836039924923405 199 0.1827308107956902 200 0.18240057259587128 201 0.18164290967607311
		 202 0.18118390153807995 203 0.1809149452487343 204 0.18107639121119634 205 0.18132526354496559
		 206 0.18128035229064432 207 0.1815223134334748 208 0.18224260363283018 209 0.18263357974764216
		 210 0.18274788754683047 211 0.18276147835220768 212 0.18282628279721935 213 0.18260246620045928
		 214 0.18203803553635689 215 0.1813419423664423 216 0.18070715338555332 217 0.17970640672514082
		 218 0.17853173353775975 219 0.17724990088394221 220 0.17606094779531745 221 0.17458005092702134
		 222 0.17276719479847058 223 0.17097429475745796 224 0.16928197662053157 225 0.16735382633766815
		 226 0.16551330959011645 227 0.16381880393438941;
createNode animCurveTU -n "marker_05_MKR_enable1";
	rename -uid "037EC2CA-49E6-8280-00DE-20834DB77A58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 0 1 227 1 228 0;
createNode animCurveTL -n "marker_06_MKR_translateX1";
	rename -uid "B212E6FB-4313-0F99-21EB-A7997989A625";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 153 ".ktv[0:152]"  75 -0.059978919924675189 76 -0.065216984490852004
		 77 -0.070296277920849581 78 -0.075386112378469428 79 -0.080543929796661695 80 -0.085625292681103193
		 81 -0.090816293023064321 82 -0.095876970072615975 83 -0.10079176154769204 84 -0.10563226358366612
		 85 -0.11036419893976873 86 -0.11504326551004179 87 -0.11972098913698126 88 -0.12455323720939282
		 89 -0.12938102976916627 90 -0.13396296286260162 91 -0.13843212024581236 92 -0.14303932834623206
		 93 -0.14754872128214291 94 -0.15198630712474182 95 -0.15626956733396896 96 -0.16079249340343582
		 97 -0.16552274329684169 98 -0.17034084462375565 99 -0.17510216629732378 100 -0.17972584064827285
		 101 -0.18420601995180758 102 -0.18891647300472225 103 -0.19318721953371287 104 -0.19734850999163461
		 105 -0.20143375399429558 106 -0.20531958018749114 107 -0.20904812646998927 108 -0.21278273330639341
		 109 -0.21642502044390999 110 -0.21987030266452673 111 -0.22337228846684054 112 -0.22685922648782009
		 113 -0.2303798239910419 114 -0.23384895480665358 115 -0.23740175558134363 116 -0.24118683354963305
		 117 -0.24516852293695024 118 -0.24942101654068038 119 -0.25371321135133729 120 -0.25806096492480735
		 121 -0.26278727591807932 122 -0.26762288352638508 123 -0.27251308859143158 124 -0.27748234670108562
		 125 -0.2824566257112926 126 -0.28749446661341505 127 -0.29283023114337425 128 -0.29793453756037513
		 129 -0.30309695483810822 130 -0.30802226779228065 131 -0.31241056105702203 132 -0.31620410857055858
		 133 -0.31963915822768096 134 -0.32276225231630851 135 -0.32545615297397956 136 -0.32777775662834135
		 137 -0.32972069348279343 138 -0.33108664120457909 139 -0.33192365322047646 140 -0.33227820278150283
		 141 -0.33221069948179277 142 -0.33187374382619811 143 -0.33071751553226691 144 -0.32980982858638513
		 145 -0.32860154793605406 146 -0.32680457801396828 147 -0.32437070676158886 148 -0.321636436902762
		 149 -0.3185501792914513 150 -0.31529965667039883 151 -0.31194808951226249 152 -0.30864793384733957
		 153 -0.30529566895214177 154 -0.3020124395176873 155 -0.29895793355728939 156 -0.29597377555241078
		 157 -0.29338846029689641 158 -0.29094349279964171 159 -0.28878882101326608 160 -0.28660511662378541
		 161 -0.28443264029688281 162 -0.28252217652561756 163 -0.28075256579834157 164 -0.27903150562108425
		 165 -0.27731373388677694 166 -0.27551624469184821 167 -0.27380524420783092 168 -0.27201660338613987
		 169 -0.27014643154213336 170 -0.26820122476965763 171 -0.2661820341119438 172 -0.26400844956903091
		 173 -0.26140819043178115 174 -0.25883127205288525 175 -0.25606803397101485 176 -0.25325528285420296
		 177 -0.25059627898638193 178 -0.24764148352645871 179 -0.24426549300260303 180 -0.2416362654438507
		 181 -0.23910172313108841 182 -0.23697132604678361 183 -0.23501107998479237 184 -0.2332797321524368
		 185 -0.23149091880964229 186 -0.22994595920859057 187 -0.22811971746250026 188 -0.2264651713492169
		 189 -0.22475123420031534 190 -0.22359133243617563 191 -0.22252987530488727 192 -0.22105211850485357
		 193 -0.2202025999345586 194 -0.2191620427149632 195 -0.21850689815083851 196 -0.21788182656305072
		 197 -0.21725038992576778 198 -0.21677866008159924 199 -0.21628219174541985 200 -0.21581361862333559
		 201 -0.21544159680307878 202 -0.21507314715663084 203 -0.21494469256825383 204 -0.2146725029899621
		 205 -0.21436836071517729 206 -0.21417262194871967 207 -0.21406097746218317 208 -0.21401665675758358
		 209 -0.21394707161459847 210 -0.21380556328757788 211 -0.2135790666356232 212 -0.21330109782842638
		 213 -0.2131233367711306 214 -0.21274789608264488 215 -0.21229437837063947 216 -0.21150649559585055
		 217 -0.21062543142579271 218 -0.20971405453399827 219 -0.2086691986710702 220 -0.2075473892809388
		 221 -0.20658604386306473 222 -0.20562280163828101 223 -0.2048071588077558 224 -0.20413095690502076
		 225 -0.20334051197480757 226 -0.20288168745592067 227 -0.2025713498957486;
createNode animCurveTL -n "marker_06_MKR_translateY1";
	rename -uid "172B2E5D-4550-67BC-E8A8-DB8C8314DC5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 153 ".ktv[0:152]"  75 -0.49228940714751518 76 -0.48845227505126854
		 77 -0.48509268240220427 78 -0.48155130892073245 79 -0.47802083330430206 80 -0.47421871239162927
		 81 -0.47066734553737727 82 -0.46669460686966002 83 -0.46260274727695533 84 -0.45850866882949232
		 85 -0.45481929880100502 86 -0.45095318286149744 87 -0.44702910811847318 88 -0.44360563505165096
		 89 -0.43989060819152737 90 -0.43577734650174971 91 -0.43223710324225684 92 -0.42876648392150435
		 93 -0.42542702918927988 94 -0.42221791147001259 95 -0.41921300059998806 96 -0.4164805244262052
		 97 -0.41396030857088445 98 -0.41121059539391225 99 -0.40880709079562372 100 -0.40614953511043872
		 101 -0.40372561688241126 102 -0.40120850681260256 103 -0.39873811032175366 104 -0.39610058068971188
		 105 -0.39333169090311271 106 -0.39043677435690638 107 -0.38730641216841255 108 -0.38387101017199293
		 109 -0.38091919649545708 110 -0.37744742112437107 111 -0.37418761307833937 112 -0.37096800087051229
		 113 -0.3680564008004642 114 -0.36527495992045977 115 -0.36242999934573905 116 -0.35986333738571286
		 117 -0.35738208635885249 118 -0.35524511311006007 119 -0.35338759474448689 120 -0.35189874172510682
		 121 -0.34986488054512754 122 -0.34789140389903084 123 -0.34613396249074291 124 -0.34427695765453986
		 125 -0.34244375076554856 126 -0.34055089240700742 127 -0.33878766657934478 128 -0.33665223100272212
		 129 -0.33431216778132078 130 -0.3321785954472834 131 -0.32980354526194278 132 -0.32700214316586396
		 133 -0.32417463834604499 134 -0.32090736271414405 135 -0.31741963292735753 136 -0.31361769204054146
		 137 -0.31006739734419675 138 -0.30585625953751194 139 -0.30162398194642559 140 -0.29775312059498582
		 141 -0.2936523519813129 142 -0.28951024007583248 143 -0.28552269187716961 144 -0.28082612872940094
		 145 -0.2756400636115256 146 -0.27069531972691396 147 -0.26710496421646124 148 -0.26377852544766706
		 149 -0.25972033187877619 150 -0.25682649126502743 151 -0.25377175480342873 152 -0.25116848268398317
		 153 -0.24938650243386629 154 -0.24770858973354259 155 -0.24632736540614936 156 -0.24485042349303393
		 157 -0.24351771309519471 158 -0.24248592410922409 159 -0.24204219582954595 160 -0.2415891069108681
		 161 -0.24117226581339568 162 -0.24118890238641888 163 -0.24133632350683304 164 -0.24137135725296249
		 165 -0.24152374696469653 166 -0.2412641168957218 167 -0.24148024044833166 168 -0.24167506518869863
		 169 -0.24203014611252716 170 -0.2423560134623306 171 -0.24233449554401471 172 -0.24218474366919257
		 173 -0.24173628784824452 174 -0.24079244576637343 175 -0.23968101354052168 176 -0.23896902826738264
		 177 -0.23913413366984421 178 -0.23884198995726941 179 -0.23848305746693682 180 -0.23809005571907593
		 181 -0.23769188689046683 182 -0.23724673768920423 183 -0.23665690517403037 184 -0.2363896666548968
		 185 -0.23606413772705409 186 -0.23551554282798215 187 -0.23517682422619168 188 -0.23522629127040884
		 189 -0.23523531039700402 190 -0.23537628419596129 191 -0.23514113025130756 192 -0.23555737153518008
		 193 -0.23547760841604498 194 -0.23548402675307867 195 -0.23578769446754549 196 -0.23591003913385333
		 197 -0.23586749193226336 198 -0.23608539393910677 199 -0.23606906006465167 200 -0.23548822587907092
		 201 -0.23555369699121448 202 -0.23517708163961942 203 -0.23486735064549258 204 -0.23393123398668669
		 205 -0.23309251779616663 206 -0.23250791162138817 207 -0.2316686812073282 208 -0.23018404581030927
		 209 -0.229500899677753 210 -0.22866958486675709 211 -0.22793799796780234 212 -0.22715620497903188
		 213 -0.22672712201736284 214 -0.22657961819683065 215 -0.22653960813908985 216 -0.22652005134439779
		 217 -0.22678625929213841 218 -0.22744692712105125 219 -0.22808015710712076 220 -0.22867510169930649
		 221 -0.22962004032780992 222 -0.23083208328846139 223 -0.23214072329980534 224 -0.2334096088289106
		 225 -0.23473521696137223 226 -0.2361616215576906 227 -0.23751599749433883;
createNode animCurveTU -n "marker_06_MKR_enable1";
	rename -uid "638EF713-4047-9A4D-43D0-E597DC9B75C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  74 0 75 1 227 1 228 0;
createNode animCurveTL -n "marker_07_MKR_translateX1";
	rename -uid "36254685-4DE6-66A2-EDA8-7EBCEFE237A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 143 ".ktv[0:142]"  41 0.46349882398313358 42 0.45731796450963291
		 43 0.45094110729433123 44 0.44446911518140508 45 0.43795445293254709 46 0.43113218956277533
		 47 0.42406778622348229 48 0.4169333857834403 49 0.40969431203495521 50 0.40263303902476599
		 51 0.39529161327411388 52 0.38782351321344066 53 0.38039389240337251 54 0.37296906560707166
		 55 0.36551476497751378 56 0.35817324048689003 57 0.35079790740747363 58 0.34349892677990046
		 59 0.33644928338849889 60 0.32965949344359258 61 0.32277053808165845 62 0.31622925865448281
		 63 0.30974856395534611 64 0.30336753192458155 65 0.29738502588571969 66 0.29132213779842442
		 67 0.28530930258585063 68 0.27924974318477847 69 0.27294910708377762 70 0.26663662630589968
		 71 0.26005549022289454 72 0.25327020020700264 73 0.24635825872102513 74 0.23896746828527993
		 75 0.23116926564351303 76 0.22336528327379446 77 0.21545785825236907 78 0.20759450216336062
		 79 0.19973201053398881 80 0.19191662799242348 81 0.18397671039679953 82 0.17624501637641932
		 83 0.16870157516370932 84 0.1613729276391147 85 0.153966550900142 86 0.1468489196009386
		 87 0.13962848527454286 88 0.13213053745229753 89 0.12459504250062792 90 0.1174392473895266
		 91 0.11008962975120884 92 0.10266276814632891 93 0.095314470418014441 94 0.088120730198842701
		 95 0.081023136748028635 96 0.073750653207546146 97 0.066283828059089389 98 0.058882608917644075
		 99 0.051562180724733175 100 0.044380534962463858 101 0.037271515030081748 102 0.030181275967243071
		 103 0.023362835469810439 104 0.016615453649858281 105 0.0099252870259517456 106 0.0033814441094115466
		 107 -0.0031133701480037801 108 -0.009555001598292312 109 -0.015985383920859686 110 -0.022230184789211238
		 111 -0.028648501887792832 112 -0.034877684438375245 113 -0.041485250685955155 114 -0.048016052999948267
		 115 -0.054714283519318563 116 -0.061602186286295213 117 -0.068772569405557205 118 -0.076106961991245337
		 119 -0.083584573677983554 120 -0.090982697355299846 121 -0.098667146019748575 122 -0.10640963052442592
		 123 -0.114144495359635 124 -0.12189554812088843 125 -0.12968688365880576 126 -0.13751498962544068
		 127 -0.14569094077646094 128 -0.15355075544495544 129 -0.16139483939083415 130 -0.16898646108490561
		 175 -0.20136131780187178 176 -0.19938932475674109 177 -0.19757926860894592 178 -0.19569206149375062
		 179 -0.19323037422492956 180 -0.19135812334976182 181 -0.189531514015082 182 -0.18796511325337162
		 183 -0.18641647629832198 184 -0.18499632538944782 185 -0.18353186687385054 186 -0.18226383295429888
		 187 -0.18070974653048028 188 -0.17935762399834448 189 -0.17789897681953126 190 -0.17689598331232559
		 191 -0.17594829123555966 192 -0.17448606144418044 193 -0.17362404468317699 194 -0.17244643967174994
		 195 -0.17171592073868058 196 -0.17098831048857788 197 -0.17020500873360167 198 -0.16953996048429654
		 199 -0.16887871489206641 200 -0.1682211173608632 201 -0.16757063970147934 202 -0.1669163903247286
		 203 -0.16651044979747792 204 -0.16592414625175833 205 -0.165336442041777 206 -0.16481503622647942
		 207 -0.16433928827669919 208 -0.16391319766034412 209 -0.16342058980978796 210 -0.16289749016486349
		 211 -0.16229361434465156 212 -0.16168080349429076 213 -0.16111285562931821 214 -0.1604362790387604
		 215 -0.1596084035224245 216 -0.15856444958016014 217 -0.15745330912610783 218 -0.15635866863505721
		 219 -0.15504035651757997 220 -0.15381181043673708 221 -0.15265020631602916 222 -0.15156787329249932
		 223 -0.1505821835894216 224 -0.14975878077968502 225 -0.14877874004607572 226 -0.14820539706569946
		 227 -0.14767275587961881;
createNode animCurveTL -n "marker_07_MKR_translateY1";
	rename -uid "117431B3-4DB4-6EF2-FEE8-C38A559FF955";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 143 ".ktv[0:142]"  41 0.49653680136275469 42 0.49293939399577924
		 43 0.48966720957628262 44 0.48724622473425516 45 0.48416747982048691 46 0.48145009854651644
		 47 0.47890147998313592 48 0.47670208686794613 49 0.47485650030033 50 0.47335714624114311
		 51 0.47170957778255784 52 0.47038311882768058 53 0.46873663621262263 54 0.46730531823408117
		 55 0.46574510731384311 56 0.4648368118666284 57 0.46262278405692348 58 0.46033615675338069
		 59 0.45873378108203977 60 0.45773862037169533 61 0.45667066874134599 62 0.45602463293133844
		 63 0.45461633241862864 64 0.45345375497994778 65 0.45226672185818917 66 0.45172187972010591
		 67 0.45068573903562548 68 0.45017686167619675 69 0.44924166307052282 70 0.448909931592954
		 71 0.44820750433066181 72 0.44629894047109875 73 0.44567587150374821 74 0.44578087812960343
		 75 0.44545494837912925 76 0.44591760677157821 77 0.44571335765292375 78 0.44617874888379083
		 79 0.44636426491746684 80 0.44696639222686052 81 0.44718051953186644 82 0.44829971602638985
		 83 0.44907884763613737 84 0.45037566218682346 85 0.45082122387082024 86 0.45168436508091581
		 87 0.45250078134849459 88 0.45311968423840887 89 0.45373981345288028 90 0.45504360776128427
		 91 0.45560624611942946 92 0.45640373216973817 93 0.45681249992734085 94 0.45755219896352584
		 95 0.45782466071449779 96 0.45830086700666306 97 0.45849102261084729 98 0.45924180808058601
		 99 0.45967975418259499 100 0.46043895542511259 101 0.46085867142232051 102 0.46166665976719534
		 103 0.46233953320382049 104 0.46336432752938117 105 0.46435804271113923 106 0.46555315821187337
		 107 0.46685045506625766 108 0.46865164184750996 109 0.46994721533306705 110 0.4717135629476561
		 111 0.47328170300082761 112 0.475165722350126 113 0.47635052566679259 114 0.4777796423025884
		 115 0.47937590425064081 116 0.48075794316777232 117 0.48188712804226286 118 0.48324549213777512
		 119 0.4840167490375924 120 0.48481723236513707 121 0.48591125576901706 122 0.4870653605521027
		 123 0.4879691060160396 124 0.48923816813356102 125 0.4903392327730014 126 0.49152889388162924
		 127 0.49237870548392748 128 0.49359318854158951 129 0.49488370056221842 130 0.49606371989661224
		 175 0.49627642563897223 176 0.49534349876401174 177 0.49352079370686208 178 0.49243082499288338
		 179 0.49115197917763764 180 0.49007189373397586 181 0.48896270039663581 182 0.48772911260055019
		 183 0.48689398357399949 184 0.48580521369236951 185 0.4848554836111254 186 0.48390057072312354
		 187 0.48298706743388342 188 0.4817356784997614 189 0.48058340729942572 190 0.47938311206256123
		 191 0.47856669240481697 192 0.4771794145381818 193 0.47634763804003888 194 0.47547266916436293
		 195 0.47428431490313416 196 0.47330006762068089 197 0.47244550262054763 198 0.47145539102847533
		 199 0.47070094546686236 200 0.47038576149449862 201 0.46953017016892507 202 0.46904045507902625
		 203 0.46852000058933019 204 0.46851135190801219 205 0.46858697851004849 206 0.4684914898849577
		 207 0.46863017919684891 208 0.46914121967521394 209 0.46946215201208974 210 0.46952176471417861
		 211 0.46953986111382506 212 0.46960763143017326 213 0.46936726707937115 214 0.46891622983676651
		 215 0.46841765544729985 216 0.46790254958220356 217 0.46711321527612304 218 0.46612824353801663
		 219 0.46509288556867567 220 0.4641422439104218 221 0.46302671732819545 222 0.46159090222061772
		 223 0.46020422214206236 224 0.45876846912296954 225 0.45728439099731144 226 0.45581173226332627
		 227 0.45445672352224886;
createNode animCurveTU -n "marker_07_MKR_enable1";
	rename -uid "0B8E914A-4E60-DF57-B1AA-F9885E7A7182";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  40 0 41 1 130 1 131 0 174 0 175 1 227 1
		 228 0;
createNode animCurveTL -n "marker_08_MKR_translateX1";
	rename -uid "5BA68A62-4D15-FECD-496E-CFA9C478A709";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 192 ".ktv[0:191]"  36 0.49842487839576477 37 0.49277082422508744
		 38 0.48691465531291189 39 0.48094839529174538 40 0.4750634961853254 41 0.46897235325617859
		 42 0.46266337744732566 43 0.45618339794733143 44 0.44976717632405772 45 0.44319319273969005
		 46 0.43634371040198594 47 0.42921833506736973 48 0.42205851997603094 49 0.41482128202005142
		 50 0.40766652723056063 51 0.40034379701187317 52 0.39281013039702362 53 0.38537878909909185
		 54 0.37793150686440657 55 0.37036704518946462 56 0.36304690808668794 57 0.35571057890980717
		 58 0.34831822129726353 59 0.34125180268806843 60 0.33444400496797244 61 0.32757353565904102
		 62 0.32096272263662362 63 0.31441588491233174 64 0.30809511226622732 65 0.30210374518000105
		 66 0.29604387038624103 67 0.28998254718179939 68 0.283955504559252 69 0.27758164884249414
		 70 0.27129853295572159 71 0.26471027603306618 72 0.25786992900145433 73 0.25104081948942425
		 74 0.24356414341581212 75 0.23578515192390903 76 0.22793814303152937 77 0.21997210988403604
		 78 0.21211355978465363 79 0.20422554565106188 80 0.19645011061505524 81 0.18844992744069733
		 82 0.18065952338996716 83 0.17312931892732286 84 0.16575014105133923 85 0.15837733634087936
		 86 0.1511666785614032 87 0.14393321641665113 88 0.13647144442324755 89 0.12893360027509482
		 90 0.1217208969890069 91 0.11439091096603482 92 0.10699825707689847 93 0.099640937017995146
		 94 0.092420174728737536 95 0.085342330397218724 96 0.078064801320880561 97 0.070629356652684883
		 98 0.06318403469741396 99 0.055797147823970938 100 0.048605717131102621 101 0.041525468182538883
		 102 0.034437428485659005 103 0.027581014287144767 104 0.020853620230708469 105 0.014157902294716807
		 106 0.0076038813276712025 107 0.0010921585991026106 108 -0.0053406220729453335 109 -0.011788514029999864
		 110 -0.017974561260004851 111 -0.024401991154522684 112 -0.030722900963635946 113 -0.037244698200371407
		 114 -0.04370633314067135 115 -0.050381689111997863 116 -0.057268387810566257 117 -0.064395257957878371
		 118 -0.071701158489189065 119 -0.079106318083777105 120 -0.086485574634968809 121 -0.094095462216585546
		 122 -0.10183821397835569 123 -0.10956542660885005 124 -0.11729979505791227 125 -0.12506510297446588
		 126 -0.13280212961903753 127 -0.1409141631176124 128 -0.14874877817485743 129 -0.15658093035328768
		 130 -0.16412090466119311 131 -0.17116200922009306 132 -0.17755587607914813 133 -0.18351795475208832
		 134 -0.18913520408410761 135 -0.19435517624028098 136 -0.19922624099576991 137 -0.2036126986572368
		 138 -0.20752847578366318 139 -0.21089221539080522 140 -0.21374850953320923 141 -0.21630152443375883
		 142 -0.21857533662422735 143 -0.21995931445973621 144 -0.22151364330775553 145 -0.22286507664769861
		 146 -0.22356388426124368 147 -0.22367330312725925 148 -0.22347035800655546 149 -0.22284819384843202
		 150 -0.22198405534022914 151 -0.22086756095698895 152 -0.21955095958223847 153 -0.21825789109564769
		 154 -0.21694117022706272 155 -0.215622708763681 156 -0.21424989847121467 157 -0.21315611268071161
		 158 -0.212183518132533 159 -0.21140237122539562 160 -0.21052502530476469 161 -0.20957632007906479
		 162 -0.20882013493041574 163 -0.2081474800233995 164 -0.20747778380395099 165 -0.20672991286357534
		 166 -0.2059627052959776 167 -0.2051923163959436 168 -0.20436520366722949 169 -0.20344021155469383
		 170 -0.20248319119932623 171 -0.20140096271283653 172 -0.20014161012219278 173 -0.19845467498891323
		 174 -0.1967793519367087 175 -0.19503843738577648 176 -0.19317558329996209 177 -0.19147161588944789
		 178 -0.18949582319567609 179 -0.18699408369423576 180 -0.1850944265434103 181 -0.18319522554976314
		 182 -0.18155485343374961 183 -0.18005082063976496 184 -0.17866304532115002 185 -0.17720291888761086
		 186 -0.17599856861516 187 -0.17447008949369375 188 -0.17309704846700713 189 -0.17167516420528106
		 190 -0.17068175609148067 191 -0.16976532218413087 192 -0.16832754086265928 193 -0.16746026099551509
		 194 -0.16639110515695871 195 -0.16570354018896016 196 -0.16497343879122267 197 -0.16418738587231096
		 198 -0.16351865417263395 199 -0.1628445677818261 200 -0.16218269923654421 201 -0.1615651951978197
		 202 -0.16095914908940195 203 -0.16058881031043948 204 -0.1599754491329059 205 -0.15938262570921685
		 206 -0.15894769911229667 207 -0.1584499153861047 208 -0.15801219694752539 209 -0.15763952533011361
		 210 -0.15712482460046234 211 -0.15653083794730049 212 -0.15591164944009567 213 -0.15539258557024421
		 214 -0.15469354384584155 215 -0.15396170364745942 216 -0.15291082636635761 217 -0.15179376073731005
		 218 -0.15074605381121015 219 -0.14952092095712155 220 -0.14828813300583049 221 -0.14714841072261331
		 222 -0.14608501434369719 223 -0.14511471607695031 224 -0.14431234251750014 225 -0.14336306706278923
		 226 -0.14279021165493389 227 -0.14231504783628546;
createNode animCurveTL -n "marker_08_MKR_translateY1";
	rename -uid "57EA22AF-4144-C869-9038-949F8494535F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 192 ".ktv[0:191]"  36 0.46019000786408937 37 0.45791580334888904
		 38 0.45606388615215632 39 0.45364971874127591 40 0.45159820305032095 41 0.44925613320769342
		 42 0.44585925796211723 43 0.44259213842538458 44 0.44034492226185595 45 0.43754664124969656
		 46 0.43507475326576928 47 0.43260125484186729 48 0.43062192335352534 49 0.4289360999274705
		 50 0.42755750760176081 51 0.42612920580069846 52 0.42499470680173956 53 0.4234675967932553
		 54 0.42213160775375791 55 0.42066453646436863 56 0.419632224491017 57 0.4175494919327607
		 58 0.41542783479664269 59 0.41415798390912018 60 0.41320735153471544 61 0.41234818501928494
		 62 0.41169642879282753 63 0.41055594902617287 64 0.4096127149415697 65 0.40856716608895804
		 66 0.40808443936802796 67 0.40730670876020936 68 0.40684566713340486 69 0.40600764969479708
		 70 0.40579809927034749 71 0.40520843777249049 72 0.40348372011224198 73 0.40298729966053504
		 74 0.40309481495359711 75 0.40289803434244165 76 0.40356534620438878 77 0.40353537942692086
		 78 0.40408398028894099 79 0.40433300938411898 80 0.40523001022894645 81 0.40555531224459462
		 82 0.40668639233900217 83 0.40762439039062481 84 0.40882248330035642 85 0.40944181132089719
		 86 0.41048205866797949 87 0.41134466019430205 88 0.41204056245386689 89 0.41291128543903144
		 90 0.4142745693563944 91 0.41490022760615708 92 0.41583043673647102 93 0.41650082258929633
		 94 0.41716390163562822 95 0.41767172096846683 96 0.41816693397284166 97 0.41852561711767089
		 98 0.4192375184728977 99 0.41968293399824308 100 0.42046876646429343 101 0.42097716641059191
		 102 0.42189608999607864 103 0.42260501044519716 104 0.42362330722013242 105 0.42464502546770233
		 106 0.42604929080248455 107 0.42716783086776633 108 0.42897210617222015 109 0.43022215835082089
		 110 0.43200071242403659 111 0.43367608757795373 112 0.43535046588111781 113 0.43678887401638089
		 114 0.4384388032369505 115 0.43988853860310229 116 0.44137647081831388 117 0.44274964962085828
		 118 0.443967462052134 119 0.44478009132526741 120 0.44566313672997471 121 0.4468399772226378
		 122 0.44822889424863055 123 0.4490396206602788 124 0.4503183859263955 125 0.45144982198430095
		 126 0.45265768525036965 127 0.45362641921621927 128 0.45476151605794535 129 0.45616137670968382
		 130 0.45734348682506931 131 0.45847214496402422 132 0.46015238059630992 133 0.46149184674544408
		 134 0.46336162118250868 135 0.46528997562585606 136 0.46755077315610638 137 0.46900279643247711
		 138 0.47142767221079829 139 0.4735415549261307 140 0.4753701545994834 141 0.47725992463259359
		 142 0.4793647855791231 143 0.48119853727774575 144 0.48380494179523892 145 0.48694612520669089
		 146 0.4897309614482287 147 0.49104295199966352 148 0.49235563932272064 149 0.49423671843976591
		 150 0.49508741269550083 151 0.49582564144044028 152 0.49620186486463225 153 0.4958835990732493
		 154 0.49543796270059159 155 0.49458645559004788 156 0.49397702032858293 157 0.49301066700418839
		 158 0.49184517966765151 159 0.49024486854604343 160 0.48835919085407531 161 0.48654804554775066
		 162 0.48432441714043606 163 0.48216267647216604 164 0.47978869251933787 165 0.47745813634719791
		 166 0.475565324350956 167 0.47330844460702592 168 0.4710599558770503 169 0.46864097010859473
		 170 0.46633573533674766 171 0.4643991764774249 172 0.46249781706485837 173 0.46107196887490975
		 174 0.46015345903924942 175 0.45973832354593569 176 0.45876611023276304 177 0.45704327409944701
		 178 0.45589450353247529 179 0.45462621719836249 180 0.45361059848532537 181 0.45268696665354879
		 182 0.45164067839739963 183 0.45083485604551066 184 0.44980924333430317 185 0.44886086187915319
		 186 0.4479502726318737 187 0.4471616781832084 188 0.44594599221431808 189 0.44481485778763619
		 190 0.44377994250395236 191 0.44303919897392485 192 0.4416151065192091 193 0.44070495116622299
		 194 0.43985925755781397 195 0.43873526350850156 196 0.43779629380727414 197 0.4370490117455087
		 198 0.43607216413286243 199 0.43523399944504759 200 0.43486395190377813 201 0.43412096084957041
		 202 0.43370199955432209 203 0.43324104677595876 204 0.43324877683722807 205 0.43339770269256062
		 206 0.43322705072977596 207 0.43328410277537566 208 0.43394342073691861 209 0.43402097849229004
		 210 0.43404359585956442 211 0.43412393613662714 212 0.4342439171200807 213 0.43414323674401178
		 214 0.43372760885276085 215 0.43326910395524687 216 0.4328339512646453 217 0.4321080828542414
		 218 0.43110241518313841 219 0.429914588132288 220 0.42903427767007929 221 0.42770457369072246
		 222 0.42624700046619446 223 0.42481806103199637 224 0.42331457618620338 225 0.42173205571634675
		 226 0.42016948410553001 227 0.41882356040010227;
createNode animCurveTU -n "marker_08_MKR_enable1";
	rename -uid "BB1972DD-45CD-A67F-6E8A-FE841D6FAADF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  35 0 36 1 227 1 228 0;
createNode animCurveTL -n "marker_09_MKR_translateX1";
	rename -uid "FBD0986A-43AB-833E-EE0E-119896DC5CE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 116 ".ktv[0:115]"  112 -0.18666731178270335 113 -0.19165025624941384
		 114 -0.19656542682242789 115 -0.20163694905574153 116 -0.20697648035401872 117 -0.21250936671238252
		 118 -0.21818699368248257 119 -0.22401056739621472 120 -0.22984773369300854 121 -0.23599644482852955
		 122 -0.24228222746212336 123 -0.24858496047842854 124 -0.25482353789460532 125 -0.26119491335008432
		 126 -0.26754020701138714 127 -0.2742853074064957 128 -0.28075515102450255 129 -0.28712491801912382
		 130 -0.29339116378024388 131 -0.29903386174768876 132 -0.30406150204310978 133 -0.30866365427991643
		 134 -0.31299215786464396 135 -0.31687767377747589 136 -0.32037869048502421 137 -0.32336169647576651
		 138 -0.32586399239186381 139 -0.32780812191791942 140 -0.32920925561820075 141 -0.33027348759969843
		 142 -0.33107597480542594 143 -0.33102049492412911 144 -0.33118102661012083 145 -0.33099943730505599
		 146 -0.33032426359153572 147 -0.32894557973228455 148 -0.32718545046575109 149 -0.32498948036083231
		 150 -0.32266624527097654 151 -0.32017903454397256 152 -0.31765188336446937 153 -0.31505954383804813
		 154 -0.31252859690165408 155 -0.31014723679126566 156 -0.30776940979054768 157 -0.30574727173276139
		 158 -0.3037962243429736 159 -0.30213492736010955 160 -0.30038809400837407 161 -0.29869212768014369
		 162 -0.29716309599252366 163 -0.29577772477052261 164 -0.29438162184955541 165 -0.29301593844450435
		 166 -0.29158644972908943 167 -0.29014337444587213 168 -0.28865778922530627 169 -0.28710032549730108
		 170 -0.28543983501197545 171 -0.2836714453104896 172 -0.28178036649557203 173 -0.27949247839611552
		 174 -0.27717572113777011 175 -0.27474983023983757 176 -0.27217408800239318 177 -0.2698056139803886
		 178 -0.26713070360673574 179 -0.26404012154263246 180 -0.26156619696485495 181 -0.25918972448868755
		 182 -0.25719491601739847 183 -0.25528431367884319 184 -0.25362121255257947 185 -0.2519158619081644
		 186 -0.25039844639829045 187 -0.248598509294157 188 -0.24696848891121531 189 -0.24529559996422567
		 190 -0.24414610203472503 191 -0.24309862686623546 192 -0.24157442224724635 193 -0.24062649152148208
		 194 -0.23951498516162473 195 -0.23878943987077811 196 -0.23805062637269703 197 -0.23733593919342499
		 198 -0.23672713158496239 199 -0.23614195901972995 200 -0.23558084015225478 201 -0.23504842750737015
		 202 -0.23457214875626692 203 -0.23426498715788002 204 -0.23381671129114273 205 -0.23338833843527279
		 206 -0.23306511015711473 207 -0.23278147643036801 208 -0.23251274891716484 209 -0.23227774479404723
		 210 -0.23198441600611563 211 -0.23163065262604443 212 -0.23119484447012445 213 -0.23084950417352806
		 214 -0.23037113840847956 215 -0.22972192887303894 216 -0.22885174862180563 217 -0.22782149497898435
		 218 -0.22688627887090818 219 -0.22568083927432492 220 -0.22448467186831295 221 -0.22338613961031334
		 222 -0.22231482919399015 223 -0.22138217198146459 224 -0.22067336831693096 225 -0.21979324654238525
		 226 -0.21926850216367949 227 -0.21887406541116861;
createNode animCurveTL -n "marker_09_MKR_translateY1";
	rename -uid "66590F2C-49A4-FA9B-054A-9492DFCA761B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 116 ".ktv[0:115]"  112 -0.033019027669497714 113 -0.03140924751933688
		 114 -0.029590254640048386 115 -0.027764998446201894 116 -0.026136970638891255 117 -0.02459387373194788
		 118 -0.023387514807863108 119 -0.022457980397792399 120 -0.021707134920914528 121 -0.020583568617045134
		 122 -0.019356052548541614 123 -0.018477111238084432 124 -0.01736684716333381 125 -0.016315346185883484
		 126 -0.015268348664098597 127 -0.014371271981232892 128 -0.013252852421125949 129 -0.011899839884876695
		 130 -0.010747677611965267 131 -0.0094646776540223132 132 -0.0077807599409464023 133 -0.006167726277636898
		 134 -0.0041148259610510607 135 -0.0020100576276098625 136 0.00051411983515603499
		 137 0.0025370131999092882 138 0.0053806814339638631 139 0.0081186966075713629 140 0.010494122053473665
		 141 0.012953195315019261 142 0.01559956056071643 143 0.017988278156948923 144 0.021174657657546447
		 145 0.024944280817785214 146 0.02833398839670731 147 0.030433858450618745 148 0.032281817560757209
		 149 0.034797349262071453 150 0.0362017494392467 151 0.037750780278564822 152 0.038989135503621597
		 153 0.039329859362372321 154 0.039710348562142062 155 0.039804900664123233 156 0.040022774383937643
		 157 0.040058437903391142 158 0.039805452487906456 159 0.039010682418207931 160 0.038243391657142745
		 161 0.037391859010700079 162 0.036220503580472352 163 0.034906264267653087 164 0.03363988689385411
		 165 0.032303057495319476 166 0.031457298115012522 167 0.030137345133776305 168 0.028839234716688589
		 169 0.027389322412590622 170 0.025984357163519878 171 0.024936332470238298 172 0.023976133640214004
		 173 0.023358475945100099 174 0.023305841153324236 175 0.023472121857418315 176 0.023217400118910492
		 177 0.022141840466175289 178 0.021555929641190907 179 0.020938438238523704 180 0.020517601947430353
		 181 0.020096702172229475 182 0.019706714929825675 183 0.019548017604106849 184 0.019142980791994058
		 185 0.018789086803936317 186 0.01858485089483819 187 0.018287491953464685 188 0.017616352903584986
		 189 0.017093360812219349 190 0.016393070918893748 191 0.01613464796618902 192 0.015245358500716955
		 193 0.014869381245085411 194 0.014471534786809626 195 0.013768605435248604 196 0.013300165530806263
		 197 0.012958840257639936 198 0.012417689235560525 199 0.012128930473313315 200 0.01229207699264645
		 201 0.011977306951835409 202 0.011990220868639878 203 0.012027587664312667 204 0.012565430107316922
		 205 0.013154904863408645 206 0.01346863459121439 207 0.01406199913709949 208 0.015209834596321525
		 209 0.01577938868870532 210 0.016327784319718042 211 0.016839342940835333 212 0.017411524063118966
		 213 0.017646480368599171 214 0.017654991845549306 215 0.017501583243135554 216 0.017383039727263627
		 217 0.017003915348255294 218 0.016275339195785499 219 0.015453138841332037 220 0.014849933449183506
		 221 0.013800481048059088 222 0.012541462574163997 223 0.011264801792855605 224 0.0099176557004033716
		 225 0.0084875008071678693 226 0.0070814786652901862 227 0.0057679080870466359;
createNode animCurveTU -n "marker_09_MKR_enable1";
	rename -uid "E0C4B8F0-4429-9B35-7C5C-178E2FBEF9BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  111 0 112 1 227 1 228 0;
createNode animCurveTL -n "marker_10_MKR_translateX1";
	rename -uid "E6A663CA-452A-09FA-9C6D-899C7CD6A0FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 123 ".ktv[0:122]"  105 -0.21336793194267811 106 -0.2205742982014765
		 107 -0.2278178520262526 108 -0.23498745218348832 109 -0.24224666039280546 110 -0.24927210252047061
		 111 -0.25643209900279917 112 -0.2635196399739832 113 -0.27088335124603291 114 -0.2781649310478822
		 115 -0.28558404257328707 116 -0.29318581815407729 117 -0.30111892563519105 118 -0.30917362523371339
		 119 -0.31733618501402139 120 -0.32545838246437175 121 -0.33392464002023758 122 -0.34245969179967384
		 123 -0.35099988562621842 124 -0.35957090299726335 125 -0.36816524477732104 126 -0.3768460028982285
		 127 -0.38581730310702206 128 -0.39460631836573568 129 -0.40330433782800679 130 -0.41180736570074122
		 131 -0.41976000406989578 132 -0.42710769790833214 133 -0.4339592580060227 134 -0.44046100439581931
		 135 -0.44651063941190472 136 -0.45211828248550995 137 -0.45729828438244846 138 -0.46191912639803173
		 139 -0.4658778084646058 140 -0.46936501681987569 141 -0.47239475340869469 142 -0.47502919597512239
		 143 -0.47679020127756178 144 -0.47873110038899092 145 -0.48033234782094003 146 -0.48125959515423822
		 147 -0.48145361937354397 148 -0.48128401580551561 149 -0.48061298269663882 150 -0.47971815051336092
		 151 -0.47860256700958115 152 -0.47739200773838186 153 -0.4760152386525785 154 -0.47466230998742531
		 155 -0.47342273050092165 156 -0.4721005757307174 157 -0.4710951172010916 158 -0.47019843409792628
		 159 -0.46951987167601006 160 -0.46867466359615217 161 -0.46780351132014864 162 -0.46709067764240519
		 163 -0.4663812752763688 164 -0.46566675109638289 165 -0.46493959427100551 166 -0.46410573590480036
		 167 -0.46323226599218148 168 -0.46230132057419504 169 -0.46127260884528026 170 -0.46014933679690101
		 171 -0.45884732000671274 172 -0.45738802274362922 173 -0.4555269153641775 174 -0.45360349277806727
		 175 -0.45152888347393777 176 -0.44934416042976766 177 -0.44730449539059991 178 -0.4449679829175141
		 179 -0.44215142911347216 180 -0.43996204747234796 181 -0.43782147263018834 182 -0.43596584757201251
		 183 -0.43425681136714173 184 -0.43270390036349904 185 -0.43109593716715688 186 -0.429666322793814
		 187 -0.42795461864652179 188 -0.42639532169587113 189 -0.42478603940277809 190 -0.42366546579488218
		 191 -0.42264922528945581 192 -0.42113357540048013 193 -0.42017890885542897 194 -0.41903141178793901
		 195 -0.4183255156148396 196 -0.41757955766529348 197 -0.41679178565586711 198 -0.41614574204760107
		 199 -0.41549476667552493 200 -0.41483564350695484 201 -0.41424045154655653 202 -0.41366466304153826
		 203 -0.41332898369548393 204 -0.41277859059647337 205 -0.41228096485592958 206 -0.41190484363792335
		 207 -0.4115087429212535 208 -0.41121488170033876 209 -0.41087667565471103 210 -0.41048225022547585
		 211 -0.40998556972557043 212 -0.40946877316039032 213 -0.40903803469972549 214 -0.4083693326849771
		 215 -0.40763041830375046 216 -0.40662541620661485 217 -0.40550759895949506 218 -0.4044247040097928
		 219 -0.40313069202766383 220 -0.40183623484825737 221 -0.40063651135421713 222 -0.39952626756035781
		 223 -0.3985014884024437 224 -0.39766730098723369 225 -0.39668891569809983 226 -0.39611324302218237
		 227 -0.39568294556424283;
createNode animCurveTL -n "marker_10_MKR_translateY1";
	rename -uid "C6D23B66-4910-0433-DFF9-BFAA1452D379";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 123 ".ktv[0:122]"  105 0.26101276991593547 106 0.26266357652100525
		 107 0.26444354983789553 108 0.26662493989196845 109 0.26837244743511235 110 0.27055218514687041
		 111 0.2725077744084291 112 0.27454143899100925 113 0.27615285374415677 114 0.27773622721991964
		 115 0.27943918966485837 116 0.28088385646059499 117 0.28220127297459718 118 0.28329444855812869
		 119 0.28406664836703144 120 0.28484335089962831 121 0.28585530769309109 122 0.28707351177235241
		 123 0.2879410790302287 124 0.28894554551611995 125 0.28996328096645374 126 0.29090930167559848
		 127 0.29163899819912764 128 0.29259009380993384 129 0.29377397833635899 130 0.29459786745508332
		 131 0.29563072214955155 132 0.29687614223964642 133 0.29790293981661864 134 0.29928707993500236
		 135 0.30050399103593728 136 0.30205643775752511 137 0.3029395293473085 138 0.30445773657853925
		 139 0.30571382777984657 140 0.3066437057548802 141 0.30751791009704221 142 0.30856724477783026
		 143 0.30933043640713453 144 0.3110234006368644 145 0.31310634750855926 146 0.31496291151414024
		 147 0.31542638126459521 148 0.31577469603271946 149 0.31673551046550152 150 0.3168669345019316
		 151 0.31701876420260389 152 0.31709014388852697 153 0.31632198663302069 154 0.31570896727770137
		 155 0.31478034337104477 156 0.31415866682687632 157 0.31329582416768398 158 0.31218043474609958
		 159 0.31049554180758687 160 0.30878032876114336 161 0.30706690474781917 162 0.3048398200870337
		 163 0.30251246453545766 164 0.30021921006281738 165 0.29788485457465419 166 0.29599189714775842
		 167 0.29355050784135717 168 0.29117484394645077 169 0.28863984445876945 170 0.28607343142383657
		 171 0.28390762084344423 172 0.2818534653079513 173 0.28014983524176007 174 0.27903364679148701
		 175 0.27811386734086563 176 0.27681327343319517 177 0.27473133007378325 178 0.27324065139101061
		 179 0.27176713811144093 180 0.27050245879699808 181 0.26940107363146282 182 0.2683675213780421
		 183 0.26764199028557212 184 0.26673657185505639 185 0.26594190765295112 186 0.26526521813839121
		 187 0.26459593831546468 188 0.26353174056345219 189 0.26274036933804146 190 0.26178165109490203
		 191 0.26143494403969258 192 0.26062518172448224 193 0.26019252742128551 194 0.25982955252986273
		 195 0.25924111555607854 196 0.25891567058236642 197 0.25869792385495238 198 0.25814694119761539
		 199 0.25789412523381083 200 0.25808263901396133 201 0.25769705636292572 202 0.25764565064273193
		 203 0.25764086031452005 204 0.2580965412482934 205 0.25872929322843841 206 0.2590476425532765
		 207 0.25957606072135486 208 0.26077292519828765 209 0.26134203422047075 210 0.26186190227197004
		 211 0.26246365870971322 212 0.26311147425203218 213 0.26345226129802679 214 0.2635811298540941
		 215 0.26356293386377794 216 0.26355540321417914 217 0.2632680758271162 218 0.26268922599052036
		 219 0.26196474889510935 220 0.26144464258722266 221 0.26057907584300566 222 0.25946634061603591
		 223 0.25825469614839835 224 0.25714091418548013 225 0.25584632223485271 226 0.25466578291584552
		 227 0.25347019454890474;
createNode animCurveTU -n "marker_10_MKR_enable1";
	rename -uid "8DF66431-45C3-6FA5-78D0-34A632A240F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  104 0 105 1 227 1 228 0;
createNode animCurveTL -n "marker_11_MKR_translateX1";
	rename -uid "3DB5D395-45C0-E162-24D4-D9BAC69C103C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 94 ".ktv[0:93]"  134 0.025811920942251376 135 0.022168948375236974
		 136 0.018982083748843248 137 0.016208226251319791 138 0.013987147683877654 139 0.012275772529278584
		 140 0.011041476830997432 141 0.010159690173856428 142 0.0095727737174580163 143 0.0097322479349617463
		 144 0.0097710817401428507 145 0.0099312376653951651 146 0.010727254861087943 147 0.012039068014605081
		 148 0.013705007584837725 149 0.015625849673266079 150 0.017693413751252773 151 0.019795123506436085
		 152 0.021903499929292969 153 0.024072337680737022 154 0.026118743548223633 155 0.027929060621394997
		 156 0.029798778143880655 157 0.03121078933127619 158 0.032534809106272267 159 0.03361715253029729
		 160 0.034748235529878269 161 0.035878601308980573 162 0.036793316186798708 163 0.037651670827743344
		 164 0.038456094126425922 165 0.039274573382347966 166 0.040143319373988628 167 0.04102618038578365
		 168 0.041974921406354393 169 0.043008177194260644 170 0.04412971387011444 171 0.045358034544635606
		 172 0.046761756261481269 173 0.048547319337443051 174 0.050374393483271773 175 0.05234088180521701
		 176 0.054385698219402867 177 0.056261313191516282 178 0.058418670995611155 179 0.061022575109220267
		 180 0.062928566392255969 181 0.064690981863931962 182 0.066128674969112455 183 0.067357019804263563
		 184 0.068396217985668639 185 0.069464536210355976 186 0.070370734937180934 187 0.071564660265903357
		 188 0.072552925173125615 189 0.073643029627673329 190 0.074200224821840632 191 0.07466406941357917
		 192 0.075577124496484793 193 0.07587388042229759 194 0.07641514037257513 195 0.076540634601226065
		 196 0.07668940199661789 197 0.076848773679961013 198 0.076885355809599099 199 0.076946672379425984
		 200 0.077010935240811151 201 0.077051610987936558 202 0.077081282330348388 203 0.076940998364509405
		 204 0.076922144452534424 205 0.076909765500419947 206 0.076823609108301993 207 0.076684891381341158
		 208 0.076476102124070855 209 0.076326279715770218 210 0.076210199798289913 211 0.076203306681681626
		 212 0.076223215836158875 213 0.076178316657518952 214 0.076304809064591472 215 0.076570086047469177
		 216 0.077110096669549155 217 0.077799307930523365 218 0.078468895262405081 219 0.079366034088691695
		 220 0.080280236560661855 221 0.081150143814047837 222 0.081933687778225073 223 0.082640100458348353
		 224 0.083215265327728272 225 0.083896796744805324 226 0.08420527050388571 227 0.084427591776106481;
createNode animCurveTL -n "marker_11_MKR_translateY1";
	rename -uid "0CDBD5E6-4E97-F0F8-C48B-478167D6A745";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 94 ".ktv[0:93]"  134 -0.49500073448620424 135 -0.48860608717364712
		 136 -0.48191261931848861 137 -0.47569982110938647 138 -0.46884865054237151 139 -0.46204279476061771
		 140 -0.45562488920544114 141 -0.44904378656519883 142 -0.44251681688105193 143 -0.43621620794904031
		 144 -0.42926444693949717 145 -0.42178706133704114 146 -0.41477782598230972 147 -0.40904204992952881
		 148 -0.40369593285651711 149 -0.39778787947233391 150 -0.39311787514613428 151 -0.38850784213828587
		 152 -0.38437450130486112 153 -0.3813074728436483 154 -0.37838498187498237 155 -0.37587160121147734
		 156 -0.37335498920126775 157 -0.37111778086428704 158 -0.36924765443904184 159 -0.36799793425569183
		 160 -0.36679279984117574 161 -0.36568694649988182 162 -0.36493521589103967 163 -0.36429788170067456
		 164 -0.36367691327645069 165 -0.36317197706843396 166 -0.36218214054709391 167 -0.361698169921156
		 168 -0.36115478867060835 169 -0.36073519918620428 170 -0.36030722443053698 171 -0.35954599278424393
		 172 -0.35868097265065335 173 -0.35753315466239044 174 -0.35585179368126585 175 -0.3539698840015264
		 176 -0.35250483432997259 177 -0.35187868138980971 178 -0.35082471682609051 179 -0.34984522689733794
		 180 -0.34883129164242588 181 -0.34785755455477446 182 -0.34706077480847686 183 -0.34613230465572753
		 184 -0.34550231051321056 185 -0.34487608707460965 186 -0.34421103789585938 187 -0.34361174064748146
		 188 -0.34345600444001295 189 -0.34323752072331226 190 -0.3432901556849729 191 -0.34306045184375888
		 192 -0.34347046856654123 193 -0.34355704256149233 194 -0.34369934279324676 195 -0.34419718800699195
		 196 -0.34450841272235239 197 -0.34476230737254931 198 -0.34528773331087681 199 -0.3455740360181726
		 200 -0.34540947170195901 201 -0.34577354930383353 202 -0.34581064032724107 203 -0.34586980291632868
		 204 -0.34546672247230009 205 -0.34499696125567614 206 -0.34485910406829418 207 -0.34452810645030901
		 208 -0.34361448850488185 209 -0.3432854990839237 210 -0.34307457933492869 211 -0.34288049812617216
		 212 -0.34265074269576862 213 -0.34269800401089368 214 -0.34306794264082341 215 -0.34356927997907294
		 216 -0.34400175991501136 217 -0.34471076972618453 218 -0.34567977511559683 219 -0.34675063579936999
		 220 -0.34760178143444209 221 -0.34889740141333253 222 -0.35041061772846982 223 -0.35193691234847857
		 224 -0.35349480075272599 225 -0.35514050402989705 226 -0.35670854726969703 227 -0.35822848575641242;
createNode animCurveTU -n "marker_11_MKR_enable1";
	rename -uid "2CDEFCDB-4397-1BC6-6056-DEAD9ED4AB1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  133 0 134 1 227 1 228 0;
createNode animCurveTL -n "marker_12_MKR_translateX1";
	rename -uid "8F58C390-4284-6A42-BB68-EC8CCB9C28F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  133 0.49331172591942596 134 0.48608771389662453
		 135 0.47923922531684515 136 0.47315296674277751 137 0.46728217064350941 138 0.46226059583021828
		 139 0.45777802787792843 140 0.45391019229943796 141 0.45040598670637133 142 0.44738147996182431
		 143 0.4451813183463218 144 0.44296019404195552 145 0.4408447017588093 146 0.43952680984640313
		 147 0.43871871044012001 148 0.43833213510514279 149 0.43827938754194129 150 0.43865154838308418
		 151 0.43897611131004388 152 0.43943341483908116 153 0.43994984463694797 154 0.44048022049762658
		 155 0.44082992823392309 156 0.44123465605529355 157 0.44124221078827386 158 0.44127205119603086
		 159 0.441136954794769 160 0.44106222999949751 161 0.44104965678180474 162 0.44089292601986152
		 163 0.44062173117513159 164 0.44038193246936985 165 0.44019095081436055 166 0.44010314284608865
		 167 0.44006834904284475 168 0.44015246250727424 169 0.44027986824005028 170 0.44063276582453825
		 171 0.44103326046591262 172 0.44171903207891783 173 0.44281438019494812 174 0.44400805791729581
		 175 0.44534701257485898 176 0.44689057775911289 177 0.44823428066792714 178 0.44987111164025539
		 179 0.45206139576894733 180 0.4535158166786305 181 0.45497299594443918 182 0.45619620907118907
		 183 0.45722064833243614 184 0.45811921098320207 185 0.4589957458565147 186 0.4598225016692854
		 187 0.46092309898162642 188 0.46180254214626115 189 0.4628674130084558 190 0.46338824912942866
		 191 0.46383395639812497 192 0.46476418496003724 193 0.46506465284463994 194 0.46575895209677953
		 195 0.46591430132008083 196 0.46616675772580352 197 0.46652395605513775 198 0.46675426837874379
		 199 0.46700353718010934 200 0.46730751425930528 201 0.46758022631933049 202 0.46788765227484053
		 203 0.4679916311295379 204 0.46820011551702267 205 0.46854555098101225 206 0.46874039034273574
		 207 0.46889341004340701 208 0.46894662075624804 209 0.46904485202529644 210 0.46926451507700029
		 211 0.46961639559015056 212 0.4699278671172985 213 0.47017982550223214 214 0.47063223822882527
		 215 0.47119708271046545 216 0.47206442825528683 217 0.47302258340594483 218 0.47393307332594181
		 219 0.47508777780569866 220 0.47621969431139077 221 0.47728887803343678 222 0.47825326522341682
		 223 0.47909650900656098 224 0.47973690122696588 225 0.48055466404814207 226 0.48093075595733092
		 227 0.48126556277718402;
createNode animCurveTL -n "marker_12_MKR_translateY1";
	rename -uid "71E000A5-4762-F386-2891-0581D6D02066";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 95 ".ktv[0:94]"  133 0.20383267723842757 134 0.20707372548102565
		 135 0.21096063626755368 136 0.2150639442221044 137 0.21886141526700409 138 0.2233331827349333
		 139 0.22776755116171998 140 0.23209095711009775 141 0.23682686458634528 142 0.24164093129096609
		 143 0.24611631213035734 144 0.25147091398918742 145 0.25731226022471576 146 0.26285568332899056
		 147 0.26714338839599261 148 0.2711998169694283 149 0.27579037087862546 150 0.27927826597229433
		 151 0.2825581859176366 152 0.28525023854888998 153 0.28682180904858712 154 0.28816611316123797
		 155 0.28889739822512361 156 0.2897373797979258 157 0.29014548676282204 158 0.29012707565181328
		 159 0.28950121440385379 160 0.28872922467857098 161 0.28799795061516265 162 0.28697214110559599
		 163 0.28594061264322423 164 0.28479967047943444 165 0.28349716291314153 166 0.28290284121673415
		 167 0.28182540175479809 168 0.28091418912319566 169 0.28000759673761078 170 0.27920448233556927
		 171 0.27874981577873903 172 0.27844578383661367 173 0.27856189991632796 174 0.27926741946632727
		 175 0.28049565294419165 176 0.28123668941704694 177 0.28132400794259116 178 0.28186781801767202
		 179 0.28228502590388249 180 0.28260561835396825 181 0.28272001516567735 182 0.28268593110922224
		 183 0.28257095992051451 184 0.28211235304913118 185 0.28161839911150921 186 0.28131148954508145
		 187 0.28104509302549474 188 0.28046212695493355 189 0.27976136424478937 190 0.27901165265309691
		 191 0.27829638628586639 192 0.27690856759657834 193 0.27580436357757609 194 0.27461828827183954
		 195 0.27306081636444435 196 0.27164933002285407 197 0.27017452366524175 198 0.26846514570585378
		 199 0.26696415939911233 200 0.26594536610537989 201 0.26424744341706896 202 0.26290029332537168
		 203 0.26157824204293734 204 0.26066801500937298 205 0.25973404756930685 206 0.25849199640295106
		 207 0.25733909316650228 208 0.25688488544277155 209 0.25575363468680334 210 0.2546903067435885
		 211 0.25352584433487513 212 0.2525231404120144 213 0.25125910398957285 214 0.24974074868269946
		 215 0.24827563170316835 216 0.24703318905078098 217 0.24567272928535144 218 0.2440682700840644
		 219 0.24245276006839334 220 0.24118638586175789 221 0.23955292750653867 222 0.23774522184631519
		 223 0.23599200349256944 224 0.23413986114191809 225 0.23226548649596557 226 0.23050106522585345
		 227 0.2288785138080528;
createNode animCurveTU -n "marker_12_MKR_enable1";
	rename -uid "9602E8F7-4D4B-BEFA-037F-76ADB6E5D356";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  132 0 133 1 227 1 228 0;
createNode animCurveTL -n "marker_13_MKR_translateX1";
	rename -uid "390831C2-41A9-88FF-3585-A79B3EB2B1F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 228 ".ktv[0:227]"  0 -0.18961027607224262 1 -0.18886537332402747
		 2 -0.18791620762539191 3 -0.18706150796580984 4 -0.18618926132842722 5 -0.1848750696580207
		 6 -0.18335089362220403 7 -0.18185136184866418 8 -0.18022552845225259 9 -0.17859224820263897
		 10 -0.17680821127898533 11 -0.17494384603062146 12 -0.17300935760394159 13 -0.17100241154118861
		 14 -0.16871818280162276 15 -0.16627953004410384 16 -0.16376107760166697 17 -0.16153992736858652
		 18 -0.15912291038262233 19 -0.15645580313970003 20 -0.15359889208184385 21 -0.15015058800678216
		 22 -0.1469567609289692 23 -0.14378474110853817 24 -0.14061981345070595 25 -0.13768589920942731
		 26 -0.13475975218471553 27 -0.13211119333929761 28 -0.12934036644429131 29 -0.12597924562582385
		 30 -0.12252767094760103 31 -0.11957484808550478 32 -0.11644225367998584 33 -0.11355437683768921
		 34 -0.1108304944194542 35 -0.10784735337342416 36 -0.10537842387826407 37 -0.10310574863286892
		 38 -0.10087669443019309 39 -0.098315898052655448 40 -0.095660446036760327 41 -0.093266617274471442
		 42 -0.091067141899898174 43 -0.088930577192149363 44 -0.086851699771286872 45 -0.084823863996311422
		 46 -0.083291500099986149 47 -0.081999610023710756 48 -0.080850729614023398 49 -0.079734029880271562
		 50 -0.078560764951343232 51 -0.077692487312322533 52 -0.077093494358749903 53 -0.076402735594706062
		 54 -0.07576418206843244 55 -0.075219653120584484 56 -0.074555589849300274 57 -0.073669971678449464
		 58 -0.07243149967297513 59 -0.070707820678058309 60 -0.068650902352009491 61 -0.066607730804030929
		 62 -0.064137201705611546 63 -0.061426845106326178 64 -0.058465043557603347 65 -0.054893439353629392
		 66 -0.051267218862858788 67 -0.047647893734931945 68 -0.044408198265612209 69 -0.041820672394582536
		 70 -0.039470007350577152 71 -0.037613304164920092 72 -0.03607793404054449 73 -0.034655431190398822
		 74 -0.033878953442205761 75 -0.033727392155449065 76 -0.03388321155090579 77 -0.034292250488530185
		 78 -0.034794013337578755 79 -0.035365686054563472 80 -0.035806861613341068 81 -0.036323988164440213
		 82 -0.03675213414320555 83 -0.037133226114436979 84 -0.037647698857834366 85 -0.038336851459243149
		 86 -0.038854381710841768 87 -0.039412880078280144 88 -0.040153529969502277 89 -0.041040407044928229
		 90 -0.041720880059092802 91 -0.042824418925841934 92 -0.044177147101421621 93 -0.045437133265481155
		 94 -0.046385023443993367 95 -0.047150875117939528 96 -0.048218743326872648 97 -0.049505565825752496
		 98 -0.050815900466812169 99 -0.052090730350589587 100 -0.053142209856769207 101 -0.054089714951367163
		 102 -0.055268203981796937 103 -0.056264440769945634 104 -0.057040872447783719 105 -0.057771136430440573
		 106 -0.05830736144714449 107 -0.058828565036448732 108 -0.059388466768215797 109 -0.06011825018160627
		 110 -0.060767994338855935 111 -0.061570603347452957 112 -0.062216970162231489 113 -0.063161465300235586
		 114 -0.064222434886436142 115 -0.065644329796022083 116 -0.067437948983742668 117 -0.069661197334039693
		 118 -0.072199271529603926 119 -0.074838100231427229 120 -0.077626492990701623 121 -0.080829371399620376
		 122 -0.084372583126846923 123 -0.088034121979808477 124 -0.091803858315327558 125 -0.095732428567282923
		 126 -0.099744761712959262 127 -0.1042677000691129 128 -0.10857138900552787 129 -0.11305797338037421
		 130 -0.11737714646886166 131 -0.12128793841757429 132 -0.12461476026786372 133 -0.1275493177323323
		 134 -0.1302656933384243 135 -0.13265290374817801 136 -0.13468511058432808 137 -0.13635085937072561
		 138 -0.13741703384030585 139 -0.13795839846069408 140 -0.13803095445904134 141 -0.13787661222947406
		 142 -0.13745006694822542 143 -0.1363039030048202 144 -0.13527528082427304 145 -0.13415008067861345
		 146 -0.13235018506757457 147 -0.13004256052581203 148 -0.12748651162257524 149 -0.12456710110179181
		 150 -0.12151697605005696 151 -0.11835041523442164 152 -0.11513746333154412 153 -0.11180411113687638
		 154 -0.10852336775348392 155 -0.10549367202226212 156 -0.10243104620458593 157 -0.099748810441291913
		 158 -0.097143139391789757 159 -0.094915159744068167 160 -0.092606126637847563 161 -0.090332749165307369
		 162 -0.088467582041135917 163 -0.086774437459413656 164 -0.085214195286949512 165 -0.083619809633642794
		 166 -0.082076923058932383 167 -0.080557675245548632 168 -0.079078965034454329 169 -0.077622440227383516
		 170 -0.07614862666926886 171 -0.074554479724553757 172 -0.072835825558821676 173 -0.070737108960885919
		 174 -0.068665898141292703 175 -0.066519495833567588 176 -0.064202307709528006 177 -0.062192857219536712
		 178 -0.059861342947338747 179 -0.057080340714971478 180 -0.054940863952452568 181 -0.052952772599215603
		 182 -0.05130363041760444 183 -0.049875437146782386 184 -0.048566833661408459 185 -0.047201464342898736
		 186 -0.046087605447517999 187 -0.044676371446745855 188 -0.043481533579155185 189 -0.042152629809960762
		 190 -0.041411990893433337 191 -0.040647548346256612 192 -0.039436547570599112 193 -0.038822292323687446
		 194 -0.037917571698406871 195 -0.037486536129086756 196 -0.036975212712790029 197 -0.036370241322667196
		 198 -0.035951111968400618 199 -0.035478742661607887 200 -0.035000441983995378 201 -0.034545669479990271
		 202 -0.034176678076450362 203 -0.033924799293609365 204 -0.033459169896606911 205 -0.033050204844374542
		 206 -0.032728500696615315 207 -0.032416790755610547 208 -0.032224050013021366 209 -0.031987835972704104
		 210 -0.031609086895343641 211 -0.031134044665920124 212 -0.030677264724456144 213 -0.030221836902275978
		 214 -0.029654209127251641 215 -0.028985553503749539 216 -0.027964960008386996 217 -0.026943436630083639
		 218 -0.025911012766033192 219 -0.024704056841568289 220 -0.023437130005282358 221 -0.022344851684522993
		 222 -0.021275391283773093 223 -0.020360047914268764 224 -0.019595013796975425 225 -0.01866915549045689
		 226 -0.018202602930616041 227 -0.017875569381471001;
createNode animCurveTL -n "marker_13_MKR_translateY1";
	rename -uid "EC9352CB-4873-B20C-EB3C-4B9F89A6D94C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 228 ".ktv[0:227]"  0 0.12497608938341276 1 0.1259408913763358
		 2 0.12662210989135225 3 0.12726903211190432 4 0.12745558712414873 5 0.12698076322789298
		 6 0.12636821182762392 7 0.12570080800691341 8 0.12467720706557273 9 0.1237357590014555
		 10 0.12333978756534181 11 0.12305998017265762 12 0.12241227806223609 13 0.1216702204605804
		 14 0.12120513783331643 15 0.12110012433851913 16 0.1213950309775691 17 0.12188148960378209
		 18 0.12302377331751857 19 0.12402595870960742 20 0.12457869000340549 21 0.12416363774502237
		 22 0.12410958414740447 23 0.12399978451901739 24 0.12398595217655317 25 0.12431792565517263
		 26 0.12426115309115271 27 0.12338525594923977 28 0.12197718140590263 29 0.12116183964402383
		 30 0.12052368563942684 31 0.11990957140871705 32 0.1193520437132215 33 0.11866612042862201
		 34 0.11860192178399376 35 0.1185950611180987 36 0.11875285050038409 37 0.118970371766562
		 38 0.11951967948477904 39 0.12024485341037572 40 0.12110122467385309 41 0.12126148224966549
		 42 0.12010003376287803 43 0.11978922629348498 44 0.12089760166335373 45 0.12160050999678329
		 46 0.12283123138758856 47 0.12378589254824313 48 0.12476185751008129 49 0.12605949067983246
		 50 0.12765492156878511 51 0.12873420474122566 52 0.13003338448662027 53 0.13123594072451605
		 54 0.1326054490526225 55 0.13353160229523031 56 0.13494311890481003 57 0.13549694940211643
		 58 0.1362042264306631 59 0.13756242787543671 60 0.13902493770394075 61 0.13989211239159738
		 62 0.14060806985390495 63 0.14041217413035423 64 0.14026634890922296 65 0.14029495170147221
		 66 0.14061471760491662 67 0.14030099011296593 68 0.14002489584360178 69 0.13912672659712721
		 70 0.13891858456180106 71 0.13886192782748086 72 0.1384776193494951 73 0.13992715649034559
		 74 0.14253778808252138 75 0.1445428570099655 76 0.14710174998282421 77 0.14916769383901074
		 78 0.15150373553874541 79 0.15358342038052686 80 0.15610388055964564 81 0.15825768953910635
		 82 0.1608045541031311 83 0.16287918022867354 84 0.16488826539080181 85 0.16596679393890357
		 86 0.1673208883166678 87 0.16865220439364725 88 0.16977692811473977 89 0.17115581979269145
		 90 0.17314907778343069 91 0.17455365369753262 92 0.17598232413160075 93 0.17717764441878026
		 94 0.17850829769251697 95 0.1793823977305592 96 0.1799992476750425 97 0.18028885503432912
		 98 0.18079279446928687 99 0.1806820607434686 100 0.18080599355614335 101 0.18058262533612279
		 102 0.18050356408092827 103 0.18029212765223568 104 0.18044183489171639 105 0.18084270419370041
		 106 0.18153694100254814 107 0.18236142986222248 108 0.18367197987310713 109 0.18444049821988961
		 110 0.18563068256595838 111 0.18672600576181142 112 0.18806553802783499 113 0.18898636364447252
		 114 0.18987776503085396 115 0.19074068557078405 116 0.19133325098034071 117 0.19192320882331482
		 118 0.19236847060621143 119 0.19229452908036548 120 0.19228668303850494 121 0.19250394750714062
		 122 0.19297151539172908 123 0.1931541901460504 124 0.19366969292844971 125 0.19409139707026435
		 126 0.19464922813822616 127 0.19508429920154358 128 0.19591955340233025 129 0.19691435005101277
		 130 0.1977561004761571 131 0.19884459870164706 132 0.20063808791235938 133 0.20248755876164415
		 134 0.20529639947345468 135 0.20833246861458699 136 0.21206259970896291 137 0.21550962381483196
		 138 0.21990809138635747 139 0.22433383718751809 140 0.22858473144469682 141 0.23288891750783947
		 142 0.23710880308849636 143 0.24102183166239188 144 0.24561698951742306 145 0.25055512351381481
		 146 0.25500709703930236 147 0.25806048504509593 148 0.26067160445480408 149 0.26356283533204317
		 150 0.26519466035806538 151 0.26653713742578344 152 0.26762506054678903 153 0.26736063951517752
		 154 0.26727747383195721 155 0.26660758091061632 156 0.26630310783140976 157 0.26571668735984744
		 158 0.26497535375388082 159 0.26386600875566535 160 0.26277611440396476 161 0.26162431206121128
		 162 0.26037365104668331 163 0.25904455618285216 164 0.25791722232447678 165 0.25668042609879271
		 166 0.25592390897797357 167 0.25470176034363312 168 0.2536473240869147 169 0.25232226209147834
		 170 0.25111347570787168 171 0.2502609466054192 172 0.24947130799570516 173 0.24891019533019743
		 174 0.24905586522627654 175 0.24927483350514712 176 0.24896566218529104 177 0.24778486565631819
		 178 0.24700486699632762 179 0.24628774196114134 180 0.24545883371045951 181 0.2447236202386921
		 182 0.24410737285909168 183 0.24359274080911386 184 0.24271499635408245 185 0.24194152826287185
		 186 0.24120241827256128 187 0.24037840392414767 188 0.23915634852814616 189 0.23781891739551775
		 190 0.23640267000130999 191 0.23536487128188799 192 0.23365616183762561 193 0.2322927030995956
		 194 0.23107541942289289 195 0.22957101135290636 196 0.22835482623091785 197 0.22727454234160194
		 198 0.22605727647174323 199 0.22533091492489443 200 0.22500918712082185 201 0.22435937074837564
		 202 0.22406776317150323 203 0.22388185606667399 204 0.22419699893637079 205 0.22459702223486899
		 206 0.22484184701617271 207 0.22517725037941294 208 0.22622907639959833 209 0.22666460364765095
		 210 0.22696889734356229 211 0.22717548067681914 212 0.22755851075732403 213 0.22739333630180103
		 214 0.22705826057939427 215 0.22650615038329946 216 0.2259627598960039 217 0.22508176401482261
		 218 0.22394524059973187 219 0.22271513902567652 220 0.22156468883189406 221 0.22015394320957726
		 222 0.21838223893318465 223 0.2166283533353659 224 0.2148094793139651 225 0.21285445401921721
		 226 0.21102964857730566 227 0.20926063183282817;
createNode animCurveTU -n "marker_13_MKR_enable1";
	rename -uid "6A1BB6B8-4CFA-D37C-6618-BDB363F069BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -1 0 0 1 227 1 228 0;
createNode animCurveTL -n "marker_14_MKR_translateX1";
	rename -uid "CEACE205-4A39-B32A-2E1E-B9B0EF3BDC4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 130 ".ktv[0:129]"  98 0.37525385913956155 99 0.36663534869248993
		 100 0.35811324773366593 101 0.3497193151084762 102 0.34132324779740841 103 0.33326546806454405
		 104 0.32537985387913471 105 0.3175452518748384 106 0.30982134181422483 107 0.30217144380342342
		 108 0.29468110562324124 109 0.28717137474667032 110 0.27989842084105621 111 0.27249376761818833
		 112 0.26523591570687788 113 0.25774881927218685 114 0.25037637185971573 115 0.24284394102842344
		 116 0.2352404408303207 117 0.22736591291728303 118 0.21936354115189294 119 0.21128545924061604
		 120 0.20331251716950594 121 0.19506767576090422 122 0.18680766629260737 123 0.17852179045989724
		 124 0.1703044175219669 125 0.1620804387297764 126 0.15387172835593144 127 0.14531146710469389
		 128 0.13708434317600227 129 0.12890052736743762 130 0.12102184378654046 131 0.11360184257662986
		 132 0.10682376456647003 133 0.10050265566283467 134 0.094624642408623227 135 0.089070630992953426
		 136 0.084077290927294879 137 0.079369463703281906 138 0.07526604978962026 139 0.071669212182512321
		 140 0.068529956008899551 141 0.065759686038878495 142 0.063329590052697449 143 0.061718131931172926
		 144 0.059951643553501688 145 0.058364988980972865 146 0.057424302785547332 147 0.0569928446326603
		 148 0.056969085757232363 149 0.057272478447799258 150 0.057827298411456618 151 0.05850600228377234
		 152 0.059243616242999231 153 0.060107348831215823 154 0.061022211190127629 155 0.061830682627679101
		 156 0.062688295632398194 157 0.063167027765215544 158 0.063704331711869178 159 0.063966659248596791
		 160 0.064283021423766074 161 0.064756085531688545 162 0.065001708975191863 163 0.065227526557326887
		 164 0.065504468969628138 165 0.06582824681946442 166 0.066166643376232903 167 0.066551425664894248
		 168 0.067036214794519045 169 0.067522483902123009 170 0.068224062139291552 171 0.069028742896060424
		 172 0.069984759583168521 173 0.071299690162654028 174 0.072685261813231761 175 0.074262214808785032
		 176 0.075849260130517959 177 0.077389838937847455 178 0.079147227538466258 179 0.081463068804020211
		 180 0.083134123775272517 181 0.084797515711027449 182 0.086214431586052687 183 0.087531394824899245
		 184 0.088709180252963371 185 0.089905463961841847 186 0.090964376805987346 187 0.092233299471893737
		 188 0.093354650478771672 189 0.094648047753671083 190 0.095353662873908229 191 0.096074010204423854
		 192 0.097284745664750649 193 0.097920892954949101 194 0.098780089028154827 195 0.0992407195609597
		 196 0.099744231027567132 197 0.10031141849941749 198 0.10069676755239976 199 0.10121209047608348
		 200 0.10163037694231347 201 0.10212920803091241 202 0.10251204661202051 203 0.10274370599328819
		 204 0.10316033955192849 205 0.10353816301795904 206 0.10379221058770105 207 0.10413765008207743
		 208 0.1043598120178989 209 0.10459963137265016 210 0.10486162930202259 211 0.10536337175155019
		 212 0.105677057423606 213 0.10605718193093139 214 0.10655377612905015 215 0.10714899525030663
		 216 0.10793454194034946 217 0.10885227514300766 218 0.10978362875363468 219 0.11086166694729171
		 220 0.11193807034911585 221 0.11294541236766553 222 0.11393228550244194 223 0.11476400264472009
		 224 0.11545816259196451 225 0.1162521792119251 226 0.11673798721814777 227 0.11701671881869136;
createNode animCurveTL -n "marker_14_MKR_translateY1";
	rename -uid "23EB7119-49EC-FA2B-50FF-E9802287BD08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 130 ".ktv[0:129]"  98 0.19007922585183734 99 0.19105876826870583
		 100 0.19224575175162539 101 0.19309707642053275 102 0.19419308607679542 103 0.19521398835683312
		 104 0.19653754908748222 105 0.19783616616006505 106 0.19938431720665428 107 0.20095516286630477
		 108 0.20302760466961745 109 0.20469814197801672 110 0.20689071218064303 111 0.20901032767704808
		 112 0.21123505707526968 113 0.21328601752862397 114 0.21560791067439677 115 0.21803847126652398
		 116 0.22041769067248074 117 0.22280410792062677 118 0.22508279660920238 119 0.22706844350932254
		 120 0.22906902742451662 121 0.23133160120283114 122 0.23362748986477466 123 0.23559050260317216
		 124 0.23781752705474068 125 0.23993076311662886 126 0.24215728058493591 127 0.24410269878816027
		 128 0.24631523052457471 129 0.24855589851102466 130 0.25056361286930451 131 0.25263759406832287
		 132 0.25509772693812549 133 0.25723450132192272 134 0.25998286398418113 135 0.26265115644714254
		 136 0.26570022056507414 137 0.26808527188177078 138 0.27131105056905214 139 0.27434794375316152
		 140 0.27720613821477891 141 0.28021369202841551 142 0.28339440401156579 143 0.2863126094918188
		 144 0.2901151229366471 145 0.29439274127606563 146 0.29842438657855364 147 0.30114125554065463
		 148 0.30372525452109755 149 0.30689796674268699 150 0.30898011134161174 151 0.31095564201624781
		 152 0.31263969555582116 153 0.31320740180556694 154 0.31382455317754632 155 0.31394868637767459
		 156 0.31414459070539746 157 0.31390583754731216 158 0.31338000079591655 159 0.31232945151914004
		 160 0.31113610864372199 161 0.30988663962731855 162 0.308314160800499 163 0.30662300713321933
		 164 0.30496266712794329 165 0.30314095165394406 166 0.30186781655209027 167 0.30011090294911535
		 168 0.29844112538799306 169 0.29673907150004586 170 0.2951174850590309 171 0.29383837838692928
		 172 0.29278505264521726 173 0.29204659128599597 174 0.2919624273807363 175 0.29224309155627404
		 176 0.29216442690489886 177 0.29137873331411768 178 0.29103973124928784 179 0.29068474965292634
		 180 0.29036670656345642 181 0.29000525332596316 182 0.28949175240343616 183 0.28915693381478325
		 184 0.28850945885890877 185 0.28785660306457928 186 0.2874624290102813 187 0.2870001959024856
		 188 0.28612527287374434 189 0.28547564879211518 190 0.28451237788336303 191 0.28402591904099128
		 192 0.28284884059814519 193 0.28205539460580642 194 0.28121406458404885 195 0.28006519081365688
		 196 0.27904595600980686 197 0.27811384076658974 198 0.2768804053835674 199 0.27590832081936345
		 200 0.27528726421982741 201 0.27417984621586622 202 0.27332697443233711 203 0.27249752002993344
		 204 0.27211225629335811 205 0.27175506828897444 206 0.27109364043965967 207 0.27071980123889761
		 208 0.27082376288381915 209 0.27040249461126931 210 0.26986353061699808 211 0.26943669633608769
		 212 0.26908003578927109 213 0.26846794766696536 214 0.26759316794070065 215 0.26670451234493175
		 216 0.26591485070501697 217 0.26493944782588041 218 0.26372473809407915 219 0.2625126918773385
		 220 0.26149238862674917 221 0.2601059554193248 222 0.2585773181677693 223 0.25704096068996951
		 224 0.25546714231178669 225 0.25381750752722898 226 0.2521924244347663 227 0.2506632802759583;
createNode animCurveTU -n "marker_14_MKR_enable1";
	rename -uid "F72B63D8-4DF0-9304-7984-599F4AB86474";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  97 0 98 1 227 1 228 0;
createNode animCurveTL -n "marker_15_MKR_translateX1";
	rename -uid "611D084B-4863-88D6-29C9-7DB212FAD6DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 183 ".ktv[0:182]"  45 0.49743729209756282 46 0.49166854377559732
		 47 0.4861648773803694 48 0.48020882754958771 49 0.47432774555468404 50 0.46814916094141346
		 51 0.46188528919575322 52 0.45575892365793669 53 0.4501352934699917 54 0.44518748245768347
		 55 0.43848173547008984 56 0.43270760471499548 57 0.42709381823517001 58 0.42228222813298955
		 59 0.41787059527639803 60 0.41309714253733554 61 0.4080231933570897 62 0.40338814107608956
		 63 0.39858748503771757 64 0.39491385838462911 65 0.391922306401423 66 0.38873491592250331
		 67 0.38502493927736425 68 0.38045794958580514 69 0.37626725514052339 70 0.37172767758537617
		 71 0.36676723396667887 72 0.36257613391845556 73 0.35848658010655954 74 0.35330368219866404
		 75 0.34759935307540535 76 0.34172230993694253 77 0.33516384440856473 78 0.32871650440296241
		 79 0.32172823024474861 80 0.31549578834616598 81 0.30879751978961567 82 0.30239975925720297
		 83 0.29622721172591671 84 0.28995712816934882 85 0.28408697940795014 86 0.27835287793786279
		 87 0.27292226437633726 88 0.2674615643112207 89 0.26199465781469955 90 0.25676805247831092
		 91 0.25125050201569377 92 0.24573197315122886 93 0.24027859174685107 94 0.23527776152322466
		 95 0.23044859841536236 96 0.22515544910337648 97 0.21960568792397162 98 0.21393655161219893
		 99 0.20816232826045011 100 0.20286719307258749 101 0.19745616041380731 102 0.19184669638924756
		 103 0.1868705118586067 104 0.18210799825610224 105 0.17709088348229485 106 0.17298950271095825
		 107 0.16875916095757604 108 0.165167573973938 109 0.16103453035250559 110 0.15784724524359539
		 111 0.15383761492006809 112 0.15014686234912289 113 0.14603825864800046 114 0.14241387817719542
		 115 0.13809609325484673 116 0.13312596514941155 117 0.12780287473003615 118 0.12253026461242167
		 119 0.11660451948899042 120 0.11092251458604485 121 0.1043096618018885 122 0.097903512161526263
		 123 0.091423269932226381 124 0.084891125931935929 125 0.078525206871055575 126 0.072447033901574254
		 127 0.065654672538499215 128 0.058961082142182986 129 0.052525070317768874 130 0.046469886107526337
		 131 0.040783345380728364 132 0.035878865212723987 133 0.03106181430752275 134 0.026694714855915458
		 135 0.022777902728761013 136 0.018757794534310257 137 0.015510642775319661 138 0.012671180172135754
		 139 0.010450124153311702 140 0.0081402080946783029 141 0.006574863730085867 142 0.0051961681663670323
		 143 0.0047992743277206484 144 0.0042518409009207891 145 0.0036201280846530626 146 0.0039393937353173758
		 147 0.004701071302397497 148 0.0059281074536646772 149 0.0074295298461338755 150 0.0091495782208704801
		 151 0.011059858035441961 152 0.013079554665394788 153 0.015360469437433744 154 0.017515853022385897
		 155 0.019336927957672834 156 0.020812106291981491 157 0.022385874654816007 158 0.023984752461078895
		 159 0.024955904844763954 160 0.026282448089828381 161 0.027094540430831149 162 0.02761904008567051
		 163 0.02838547546274206 164 0.029060713503716973 165 0.029641092066664321 166 0.030169995577835951
		 167 0.030809678434034038 168 0.031703643633922751 169 0.032502022068343628 170 0.033328061818451271
		 171 0.034371966072771043 172 0.035636092408289688 173 0.037267142332146563 174 0.038737532811287778
		 175 0.04043038972671964 176 0.042300975888930226 177 0.043820030940703192 178 0.045323171137356955
		 179 0.047505357952258853 180 0.049056227384187689 181 0.050485356239449941 182 0.051839965313117409
		 183 0.052866955990332976 184 0.053781998505449069 185 0.054889982206099752 186 0.055624221765004367
		 187 0.056598283500089774 188 0.057631249711344812 189 0.058386566371605553 190 0.059196820211413814
		 191 0.059719476715793474 192 0.060750869210657199 193 0.061127254302835943 194 0.061699177744649614
		 195 0.062053209036178392 196 0.062341210537080083 197 0.062526045163567634 198 0.062661078969718953
		 199 0.063100670601083819 200 0.063505517662124644 201 0.063842401427019246 202 0.064289019975489192
		 203 0.064494850207234888 204 0.064824343452254185 205 0.065260326198647967 206 0.065581978476571656
		 207 0.06580617385232812 208 0.066088980964540855 209 0.066387472127819591 210 0.066683009378414981
		 211 0.066920104473984887 212 0.067534501831657212 213 0.067838130079878156 214 0.068361126932374727
		 215 0.068863215559335389 216 0.069444088234558277 217 0.070553847535313463 218 0.071542515770509629
		 219 0.072627927790600566 220 0.073774424353496015 221 0.074765607431118042 222 0.075794392666935106
		 223 0.076727940975454101 224 0.077383017850989999 225 0.078186022116808584 226 0.078645536464041266
		 227 0.078887584483651518;
createNode animCurveTL -n "marker_15_MKR_translateY1";
	rename -uid "0E559EF0-4239-2EF5-AE9B-30A1D129B4B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 183 ".ktv[0:182]"  45 0.37309422136497783 46 0.37045275103445907
		 47 0.36781868363293024 48 0.3650522419518103 49 0.36266260726595345 50 0.36031121937706878
		 51 0.35844238832480413 52 0.35687895386041979 53 0.35542161070409151 54 0.35374465569495417
		 55 0.35160820512108104 56 0.3509388625494424 57 0.34890773155782784 58 0.34753038939144876
		 59 0.34558563220445238 60 0.34394097335285345 61 0.34218864314219766 62 0.34033550260399936
		 63 0.33705174633667156 64 0.33504022921060406 65 0.33324966302133374 66 0.33119910064611557
		 67 0.32788731937259818 68 0.32566932831663575 69 0.32235121574139791 70 0.3197511635368675
		 71 0.31698013335840169 72 0.31442081205143868 73 0.31401829919137136 74 0.31420968230457158
		 75 0.31379959088395937 76 0.31460056171677719 77 0.31361448239402478 78 0.31401273315754752
		 79 0.31256815058294707 80 0.31257567557727906 81 0.31208021716251477 82 0.31181000232499023
		 83 0.31148524605148109 84 0.31102893970968459 85 0.31038749864564896 86 0.30997090130808136
		 87 0.30878366729607909 88 0.30926559857689506 89 0.30905809771392756 90 0.30998860976984122
		 91 0.30999202692542416 92 0.30998067843046095 93 0.31083455673205029 94 0.31074921417695056
		 95 0.31112910021525619 96 0.31030882209812993 97 0.30921364775342797 98 0.30821349770359652
		 99 0.30777340074983639 100 0.30589388715834887 101 0.30474100146878935 102 0.30260722777379789
		 103 0.30068674380935345 104 0.30026491218330464 105 0.29972734023624015 106 0.29899627038810517
		 107 0.2984360193915041 108 0.29903690815578821 109 0.29886044951953739 110 0.29887832671536108
		 111 0.30015164210708056 112 0.30123085942053085 113 0.30150593868981246 114 0.30248288689031078
		 115 0.30319274712378153 116 0.30276641680039806 117 0.30439202827728606 118 0.30437838548629548
		 119 0.30492435470685952 120 0.30433132059020818 121 0.3038374660526354 122 0.30418858591331843
		 123 0.3041814870667261 124 0.30363193988978643 125 0.30375882353247419 126 0.30395850040228001
		 127 0.30440783843572727 128 0.30511390439920749 129 0.30627643535330917 130 0.30671504158429852
		 131 0.30811724159436094 132 0.30948805309601324 133 0.31114861617893175 134 0.31328204564562034
		 135 0.316114353632718 136 0.31931076583853557 137 0.3221663291015181 138 0.32613556902293206
		 139 0.32966792073812656 140 0.33252660779607823 141 0.33627416903784513 142 0.33993557858485379
		 143 0.34340402494595434 144 0.34709047502079082 145 0.35182637888783375 146 0.35633811489194633
		 147 0.35891779897512055 148 0.36126048277929435 149 0.36396187389517443 150 0.3655620937975258
		 151 0.36721417324630146 152 0.36801359055613592 153 0.36803789830058575 154 0.36752182994058857
		 155 0.36686729562376397 156 0.36670703100498037 157 0.3658551789628004 158 0.36376395373357329
		 159 0.3625668574515567 160 0.36098337564334215 161 0.35974378131711815 162 0.35772291810188617
		 163 0.35588501486535218 164 0.35373507271638582 165 0.35169116749378326 166 0.35026422642602395
		 167 0.34884409993209864 168 0.34700735201559219 169 0.34547365810826536 170 0.34352662262948219
		 171 0.34241922781839507 172 0.34143403618244617 173 0.3408767782174319 174 0.34079188640120317
		 175 0.34069319396974374 176 0.34002726590547039 177 0.33953089022708316 178 0.33874017672276169
		 179 0.33799589225884297 180 0.33693160853060278 181 0.33617324306734864 182 0.33502334200494055
		 183 0.33447929343213767 184 0.33342999546786045 185 0.3322682067853211 186 0.33128325773552214
		 187 0.3301123922857454 188 0.32846076907468746 189 0.32730914373424846 190 0.3259740075088664
		 191 0.32486355359626018 192 0.32319408779089709 193 0.32188453610590195 194 0.32059916720451731
		 195 0.31903532436352822 196 0.31764149584945234 197 0.3160884274475867 198 0.31440131489939915
		 199 0.31346570023510256 200 0.31315681624895064 201 0.31215874633205964 202 0.31146663276723074
		 203 0.31094918342879196 204 0.31084986225975386 205 0.31071521065913754 206 0.31023104161646187
		 207 0.30985221313510536 208 0.31038489193298691 209 0.31020776772553937 210 0.30996095308422089
		 211 0.30972161600260528 212 0.30959771456903395 213 0.30938461317008414 214 0.30868531948865319
		 215 0.30796165488573857 216 0.30742421128243846 217 0.30661983705317231 218 0.30501674597153072
		 219 0.30348841251369685 220 0.30215102256698512 221 0.30046744851570639 222 0.29867574841142552
		 223 0.29670027781802211 224 0.2948380313715282 225 0.29322718718195839 226 0.29123860521669187
		 227 0.28956751684778914;
createNode animCurveTU -n "marker_15_MKR_enable1";
	rename -uid "8E28750C-47A3-A3C4-D108-7985BA85A0AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  44 0 45 1 227 1 228 0;
createNode animCurveTL -n "marker_16_MKR_translateX1";
	rename -uid "E3479021-42D9-333D-74C8-58973261EC3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 158 ".ktv[0:157]"  66 0.43057337670927198 67 0.42696795803869292
		 68 0.42283871252149308 69 0.41760318096648652 70 0.41245440586786941 71 0.40798710450266873
		 72 0.40354074950644214 73 0.39923699466574958 74 0.39409180006757483 75 0.38864195274007074
		 76 0.38235898423257497 77 0.37498412307074291 78 0.36823866245760173 79 0.36145335391509237
		 80 0.35470518399652806 81 0.34790585234707705 82 0.34147380260836468 83 0.3351260271264811
		 84 0.3282835391558474 85 0.32156428776949275 86 0.31550132816535459 87 0.30994678677309684
		 88 0.304052937552449 89 0.29852216023298295 90 0.29327918245646301 91 0.28786485282738228
		 92 0.28212072474158978 93 0.27671964632475821 94 0.27158947193112914 95 0.2667669946367508
		 96 0.26131979105024572 97 0.25571128348487759 98 0.25005163539395081 99 0.24435860053813407
		 100 0.23867436449093382 101 0.233061562875166 102 0.227561347647394 103 0.22211779003904397
		 104 0.21704863981682332 105 0.21236608260854895 106 0.20795269293489793 107 0.20363794408662961
		 108 0.19943777276149832 109 0.19524036868450634 110 0.19132577341553203 111 0.18765927129448168
		 112 0.18412034853863224 113 0.18046552989381437 114 0.17671855229330369 115 0.1725330262116237
		 116 0.16790879647041601 117 0.1629297727652389 118 0.1576401748237759 119 0.1520903888639431
		 120 0.14641921431726834 121 0.1404990273102481 122 0.13434555337642107 123 0.12781041978103824
		 128 0.096481935280600895 129 0.09008589537592393 130 0.083903385337259273 131 0.078350998878675582
		 132 0.073504143579754655 133 0.068818036895331725 134 0.064698153801886371 135 0.060808148132037498
		 136 0.057562802533224433 137 0.054412264117800091 138 0.051736858887941994 139 0.049319827826735163
		 140 0.04769917794614742 141 0.046189061106331475 142 0.045372799537715225 143 0.044843229697494991
		 144 0.044348822930289522 145 0.044214703375785369 146 0.044587044858535263 147 0.045734305775760653
		 148 0.04708582679889306 149 0.048864430523985036 150 0.050620942661489421 151 0.052500081799543019
		 152 0.054669081589344803 153 0.05692382071660762 154 0.059037312796798358 155 0.06122989898033171
		 156 0.062942432182055308 157 0.064405476961886921 158 0.065796365181438388 159 0.066639467202397995
		 160 0.067490156314538363 161 0.068320083034013379 162 0.06908596683105428 163 0.06954073308567954
		 164 0.07015651726914629 165 0.070731600541021122 166 0.071389123191868187 167 0.071996842748183298
		 168 0.072727071991254721 169 0.073526375382797049 170 0.074297829827213224 171 0.075384220472523911
		 172 0.076589398994603264 173 0.078089585092698255 174 0.079752422356187402 175 0.081521119797117403
		 176 0.083163485460060027 177 0.084669746626440889 178 0.086470549647168826 179 0.088645026463303966
		 180 0.090175528251861925 181 0.091757653161693487 182 0.093059550311929362 183 0.093942424286613924
		 184 0.094625997005383877 185 0.095474960718246571 186 0.096134975314364324 187 0.097058354671035962
		 188 0.098013622139885737 189 0.099028508910543933 190 0.099652281609087789 191 0.099750136937703848
		 192 0.10047438664746478 193 0.10118595516521867 194 0.10187242035106603 195 0.10185043844533614
		 196 0.10190828875850522 197 0.1022076848566662 198 0.10239808831155162 199 0.10250578943679756
		 200 0.1025736988867878 201 0.10266453039829804 202 0.10284292645230764 203 0.10292543528653808
		 204 0.10300477628820459 205 0.10311032420562316 206 0.10315822907082473 207 0.10316419413447298
		 208 0.10327965630353853 209 0.10352019432655435 210 0.10341619563044224 211 0.10348622835510357
		 212 0.10364404527293103 213 0.10390779230328984 214 0.10440207776825128 215 0.1048235121184109
		 216 0.10541344201812375 217 0.1062164467324892 218 0.10711454493752848 219 0.10833793351480503
		 220 0.10924065196668209 221 0.11025749711314026 222 0.11094053370414625 223 0.11186360509152882
		 224 0.11244872614265444 225 0.11316340474395814 226 0.11363872472728997 227 0.11396837486699973;
createNode animCurveTL -n "marker_16_MKR_translateY1";
	rename -uid "C699C988-4B03-AB5C-FD75-29917AC3E9E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 158 ".ktv[0:157]"  66 -0.41718508458485148 67 -0.41076764870623705
		 68 -0.40412920023078497 69 -0.39758395614013486 70 -0.39092561365669992 71 -0.38430098956383957
		 72 -0.37854531873785979 73 -0.37103654433095701 74 -0.36298906445099777 75 -0.35562376984150557
		 76 -0.34767194042882477 77 -0.33921738733150586 78 -0.33125444758511918 79 -0.32356779043554151
		 80 -0.31593097436375694 81 -0.30866312653173167 82 -0.30137752784578153 83 -0.2944106006165923
		 84 -0.287279485617839 85 -0.28086486863819504 86 -0.27452325214744927 87 -0.26817553478270328
		 88 -0.26185844212492415 89 -0.25584530115311155 90 -0.24887164083567537 91 -0.24219920968064163
		 92 -0.23582433286040122 93 -0.22972120530222478 94 -0.22357407154838627 95 -0.21832127937820689
		 96 -0.2131154708826884 97 -0.20872224142693546 98 -0.2040574383876767 99 -0.20011576977677847
		 100 -0.19610976247462353 101 -0.19242277334599928 102 -0.1888823788418369 103 -0.18533630571941312
		 104 -0.18139018109406152 105 -0.17752305823527759 106 -0.17316947018601281 107 -0.16879723745933495
		 108 -0.16430482746785025 109 -0.16013450981739602 110 -0.15525112121741619 111 -0.15043305233457077
		 112 -0.14555643104436411 113 -0.14074815825489384 114 -0.13619280090130059 115 -0.13147037678232454
		 116 -0.12712370949745411 117 -0.12280226669120431 118 -0.11865879346673375 119 -0.11498850679397082
		 120 -0.11147590775811245 121 -0.10774485439016618 122 -0.10412261039171178 123 -0.10053864306428517
		 128 -0.081785110000011707 129 -0.077981272674595647 130 -0.074229742433146007 131 -0.070323289204167139
		 132 -0.065775406183924634 133 -0.061186295421996661 134 -0.055993893277300144 135 -0.050580653026255917
		 136 -0.044947618699351433 137 -0.039499388672477986 138 -0.033348898081398071 139 -0.02719173674032227
		 140 -0.021470141958221389 141 -0.015511810929420222 142 -0.0096553717430441499 143 -0.0037669699073787921
		 144 0.0026210012307402719 145 0.0090651350039867573 146 0.0152951913894942 147 0.019968313138035931
		 148 0.024212681882705422 149 0.028963407371501382 150 0.032650018496623634 151 0.036097306200956192
		 152 0.038978059959106637 153 0.040836216567354477 154 0.042512295524299804 155 0.04356303860170474
		 156 0.04490907627456886 157 0.045783845685929192 158 0.046469017001953272 159 0.04665029207602156
		 160 0.046849872976101326 161 0.046909827268988735 162 0.046577919517721389 163 0.046380576839452625
		 164 0.046110379371866572 165 0.045892613450919217 166 0.046078548079925397 167 0.045927978190171692
		 168 0.045882015281134891 169 0.045761310917882159 170 0.045642939507896885 171 0.04579278472432291
		 172 0.046008156992582427 173 0.046628940488097292 174 0.047600195656647193 175 0.048791966281116372
		 176 0.049642788646902636 177 0.049578306336054867 178 0.049797269007222367 179 0.049970619483199141
		 180 0.050143650075466617 181 0.050288783468066867 182 0.050126922144007158 183 0.050335087194585237
		 184 0.050212319300070196 185 0.050088334701450354 186 0.050044480990394269 187 0.04997103866035868
		 188 0.049214168989556661 189 0.048605236783485606 190 0.047607563618055404 191 0.04731763145021417
		 192 0.046253428313332567 193 0.045152969970372325 194 0.044183467193318227 195 0.043254101260625455
		 196 0.042419269200092091 197 0.041592140674507005 198 0.040467966083996276 199 0.039827629148650123
		 200 0.039710802594201455 201 0.038989522667256415 202 0.038650287878416734 203 0.038227933449773488
		 204 0.038500918232757253 205 0.038779743971533831 206 0.038777073056061928 207 0.039072546179293677
		 208 0.039731768877847462 209 0.039878339507937732 210 0.040133862480431381 211 0.040419168398329486
		 212 0.040624012211706639 213 0.040306289424811736 214 0.039592297534515652 215 0.038904978537237289
		 216 0.03835677543492455 217 0.037527803457911846 218 0.036373681173895278 219 0.035012932251777151
		 220 0.034081669755280708 221 0.032615474829503333 222 0.031180514013912641 223 0.029433533964517089
		 224 0.027763543678626879 225 0.026159017406878315 226 0.024323947384144895 227 0.022837591106748101;
createNode animCurveTU -n "marker_16_MKR_enable1";
	rename -uid "6F11B8AA-41A5-0AE8-E67E-9FBF5FAE9906";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  65 0 66 1 123 1 124 0 127 0 128 1 227 1
		 228 0;
createNode animCurveTL -n "marker_17_MKR_translateX1";
	rename -uid "CB6782FE-43CD-69F6-27E0-41A9D50BF3FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 154 ".ktv[0:153]"  74 -0.25135652969035394 75 -0.24772409331923423
		 76 -0.24442891219248991 77 -0.24103666714323829 78 -0.23781439340976546 79 -0.23487670309228609
		 80 -0.23175677471242739 81 -0.22882217857616577 82 -0.22568346540588574 83 -0.22242133596964375
		 84 -0.21960674568272037 85 -0.21669945671717727 86 -0.21387801960069086 87 -0.21119690559214388
		 88 -0.20880341746983233 89 -0.2060915389641782 90 -0.20376410632768643 91 -0.20176987462605689
		 92 -0.19991117001278974 93 -0.1978427880393156 94 -0.19597612414509835 95 -0.19349226309435613
		 96 -0.19180535498204071 97 -0.19078909262130006 98 -0.18943911716055362 99 -0.18779010132593732
		 100 -0.18626860125744582 101 -0.1843991294781932 102 -0.18305540832746381 103 -0.18114975879416423
		 104 -0.17978881801787561 105 -0.1777397775879731 106 -0.17600074427261597 107 -0.17402160241134923
		 108 -0.1720606170101962 109 -0.17069534738434228 110 -0.16913691159759914 111 -0.16742720829684116
		 112 -0.16590824294040285 113 -0.16466241448863017 114 -0.16355368375041479 115 -0.16254186775527873
		 116 -0.16242246029636642 117 -0.16217481477507945 118 -0.16248617518217784 119 -0.16308633302877784
		 120 -0.16356990413793093 121 -0.16456100552398029 122 -0.16598987483075517 123 -0.16769941678743772
		 124 -0.16954844791272411 125 -0.17159748774536504 126 -0.17366064435659373 127 -0.17654906194662384
		 128 -0.17928908311924296 129 -0.18227179044916997 130 -0.18496636634282265 131 -0.18735091198289744
		 132 -0.18931229081972561 133 -0.19085115271456626 134 -0.19238076653100511 135 -0.19332658753209592
		 136 -0.19394358740411016 137 -0.19433254653560178 138 -0.1942357763006613 139 -0.19347091209485112
		 140 -0.19244003980580876 141 -0.19076530453401219 142 -0.18912091268516223 143 -0.18664082797177262
		 144 -0.1844495201874623 145 -0.18211411611232076 146 -0.17917955769981697 147 -0.1757764502345161
		 148 -0.17217135404884415 149 -0.16833908357057664 150 -0.16416142182488647 151 -0.16020516294979681
		 152 -0.15619061213163066 153 -0.15223961036747413 154 -0.14837214719631348 155 -0.14453995017223081
		 156 -0.14089023599401829 157 -0.13760178263808032 158 -0.13440758534600933 159 -0.13158661175151487
		 160 -0.12867702007297249 161 -0.12579741178659054 162 -0.12332785501098087 163 -0.1212491989806796
		 164 -0.11915356761059565 165 -0.11713500592224052 166 -0.11516023013215426 167 -0.11323265685188844
		 168 -0.11139901598945517 169 -0.10963415210490485 170 -0.10780950877289713 171 -0.10591417865560848
		 172 -0.10389689642780597 173 -0.10146802907530167 174 -0.099028860712200906 175 -0.096492678268287113
		 176 -0.093845024877200589 177 -0.091499121682307893 178 -0.088864613432108275 179 -0.085781158871491459
		 180 -0.083337700026047012 181 -0.081060776774334542 182 -0.079147961738147976 183 -0.077460822926647743
		 184 -0.0759907678625385 185 -0.074589719766787521 186 -0.073325856477048867 187 -0.071727344004250237
		 188 -0.070408319995352742 189 -0.069101484546344683 190 -0.068241392822910807 191 -0.067360307596337932
		 192 -0.066223530697493371 193 -0.065635276531871067 194 -0.064780520818143728 195 -0.064263531863532675
		 196 -0.063785515579731999 197 -0.063173599860516072 198 -0.062827569284066354 199 -0.062409466335266894
		 200 -0.061877200834072776 201 -0.061469841482533316 202 -0.061217736215632423 203 -0.061086895865349322
		 204 -0.060742733235731095 205 -0.060465765396306326 206 -0.06019427826428897 207 -0.060057149329277415
		 208 -0.059901029730906108 209 -0.059887171624950775 210 -0.059657662664564182 211 -0.059260893494907319
		 212 -0.05890570208464313 213 -0.058569556066562611 214 -0.058095233306833305 215 -0.05752889230728031
		 216 -0.056585295226172783 217 -0.05562990732265749 218 -0.054728696833214241 219 -0.053557666382596791
		 220 -0.052283077002996003 221 -0.051235603212444747 222 -0.050345757925185308 223 -0.049418136529513879
		 224 -0.048715128964035181 225 -0.047819778919961142 226 -0.047391635872059412 227 -0.04705718552192989;
createNode animCurveTL -n "marker_17_MKR_translateY1";
	rename -uid "E2C26196-4EC2-88F4-0B69-76B70F702658";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 154 ".ktv[0:153]"  74 -0.49588599874950562 75 -0.48731580788456275
		 76 -0.47834402865826908 77 -0.46906860759843189 78 -0.45954376685740245 79 -0.45063033251003448
		 80 -0.44201192351457086 81 -0.43299762966066901 82 -0.42433433210804417 83 -0.41518606757574034
		 84 -0.40674308232288026 85 -0.39931491264290664 86 -0.391343396658069 87 -0.38305361167344648
		 88 -0.37541103464935061 89 -0.3672217255771254 90 -0.35933323929821748 91 -0.35146594699404549
		 92 -0.34327387861763048 93 -0.33510822453536993 94 -0.32762098902086834 95 -0.32118645416146052
		 96 -0.31581028058365479 97 -0.31031050138146354 98 -0.30434600965159153 99 -0.29907384219931399
		 100 -0.29494139370918682 101 -0.29049081057117032 102 -0.28596931704454631 103 -0.28111172071246915
		 104 -0.27709122247030915 105 -0.27209642885410068 106 -0.26734299442194448 107 -0.26176955669398017
		 108 -0.25594650783988249 109 -0.25112505681119779 110 -0.24586858506298537 111 -0.24003966390104731
		 112 -0.23499662664076559 113 -0.23028779793187942 114 -0.22579129457715574 115 -0.22064229464444851
		 116 -0.21640195651956995 117 -0.21198717902380737 118 -0.20780710025833171 119 -0.2044056375434431
		 120 -0.20119633099620798 121 -0.19708772497129945 122 -0.19349879665223529 123 -0.19040509723256999
		 124 -0.18721325763404889 125 -0.18391798429810274 126 -0.18054431295013207 127 -0.17661721381002266
		 128 -0.17234068327705093 129 -0.16816425657793549 130 -0.16414363838528651 131 -0.16008336636662479
		 132 -0.15506395157047376 133 -0.15015351016477146 134 -0.14431142955772103 135 -0.13817475562490095
		 136 -0.13072910169948659 137 -0.12450657161436934 138 -0.11794162471409925 139 -0.11033186771502046
		 140 -0.10378946223031543 141 -0.096620796043257406 142 -0.089585253032840872 143 -0.083210347137725627
		 144 -0.076528246147466783 145 -0.069140485712485988 146 -0.062196614026097885 147 -0.056225282300023438
		 148 -0.051629717897075933 149 -0.046765647851135628 150 -0.042681393578604065 151 -0.038691455674688291
		 152 -0.035061873252815123 153 -0.032748805233431877 154 -0.030747233515798222 155 -0.029563099574222484
		 156 -0.027908626477355425 157 -0.026453709946269166 158 -0.024894132541186942 159 -0.024347891101213881
		 160 -0.0232572713571082 161 -0.022223881260063416 162 -0.021480515941764255 163 -0.021052539848284035
		 164 -0.020154127156454538 165 -0.019616887425819574 166 -0.018280428757875333 167 -0.017853568786704743
		 168 -0.017287109233105891 169 -0.017159579624588972 170 -0.016693111395692295 171 -0.016067077401960839
		 172 -0.015334057131983159 173 -0.014311773174136067 174 -0.01280152334823681 175 -0.011171564252514754
		 176 -0.0099567080098161287 177 -0.010051288760667965 178 -0.009518918100599516 179 -0.0091275939850474219
		 180 -0.0085887576030592161 181 -0.0081961462454344103 182 -0.0078230374335536701
		 183 -0.0072323387967092034 184 -0.00709163367811666 185 -0.0067217747711008635 186 -0.0067623325755757357
		 187 -0.0066548136985419282 188 -0.0071278895669392717 189 -0.0073852089743902116
		 190 -0.007877802276473056 191 -0.0082898109192077185 192 -0.0090438894390719171 193 -0.0097335605863713703
		 194 -0.010193995088791041 195 -0.01116800433866072 196 -0.01160380574343145 197 -0.012011630524886574
		 198 -0.012589302144828951 199 -0.01282949507884007 200 -0.012748786725162498 201 -0.01280986647266058
		 202 -0.012492261072062361 203 -0.012167018188197543 204 -0.011368990803183765 205 -0.010352200448826454
		 206 -0.0096367549308134515 207 -0.0087267346315745842 208 -0.0074969845616523201
		 209 -0.006536550337663094 210 -0.0056582955650678612 211 -0.0051254848334240655 212 -0.004435294345925378
		 213 -0.0043117966164381571 214 -0.0043933581055987103 215 -0.0046576303583589773
		 216 -0.0048595487278412786 217 -0.0053747749528214039 218 -0.0061017839209971392
		 219 -0.0072109056671441629 220 -0.0081899068897398064 221 -0.0092530324485665671
		 222 -0.010851577799995293 223 -0.012428667215005129 224 -0.014114162523611751 225 -0.015859289756188
		 226 -0.017522415866273233 227 -0.019274502290372086;
createNode animCurveTU -n "marker_17_MKR_enable1";
	rename -uid "DFD0CF3E-484D-DB36-7C34-E1BCBEC7AEA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  73 0 74 1 227 1 228 0;
createNode animCurveTU -n "marker_17_MKR_weight";
	rename -uid "042A6511-4558-393F-540B-78B7238B27CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  74 1;
createNode animCurveTU -n "marker_16_MKR_weight";
	rename -uid "92B53BD8-479E-3539-E002-9E9861953431";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  66 1;
createNode animCurveTU -n "marker_15_MKR_weight";
	rename -uid "E5E99281-4210-C31A-0910-FE9EF918BE3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 1;
createNode animCurveTU -n "marker_14_MKR_weight";
	rename -uid "31E302E6-4200-07C7-DD1D-FC9370F7412D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  98 1;
createNode animCurveTU -n "marker_13_MKR_weight";
	rename -uid "9FFDAEA4-4556-2567-3F27-93A39D97E413";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "marker_12_MKR_weight";
	rename -uid "4D047432-40DF-F26A-3FDF-43AA488E7A85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  133 1;
createNode animCurveTU -n "marker_11_MKR_weight";
	rename -uid "D4351B39-4EBD-520F-3B9D-BB8B9ED9EE46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  134 1;
createNode animCurveTU -n "marker_10_MKR_weight";
	rename -uid "D22E3667-499A-3146-66BC-618544B631C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  105 1;
createNode animCurveTU -n "marker_09_MKR_weight";
	rename -uid "171E63D2-40A8-0E6B-FA9D-6CA4FF2C4C35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  112 1;
createNode animCurveTU -n "marker_08_MKR_weight";
	rename -uid "0FDB0BC7-4548-162E-AB10-05BD67FA48D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 1;
createNode animCurveTU -n "marker_07_MKR_weight";
	rename -uid "A0B15B0F-4378-B826-9298-62A4D34D4DE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  41 1;
createNode animCurveTU -n "marker_06_MKR_weight";
	rename -uid "86CD73EB-45E6-C5BA-CA33-E6B628955C56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  75 1;
createNode animCurveTU -n "marker_05_MKR_weight";
	rename -uid "58F1AE90-4EFA-B67F-6CAA-37AD6A2E7D37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "marker_04_MKR_weight";
	rename -uid "6BCB1470-4459-28DA-302C-22BC91672CF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "marker_03_MKR_weight";
	rename -uid "E1E8CEA9-4B91-50B0-9A03-BDB71ACE578D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "marker_02_MKR_weight";
	rename -uid "FA2AC706-49AF-B4E7-471E-3DA92FBE1819";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "marker_01_MKR_weight";
	rename -uid "B7EB91A3-4BE8-9A8C-FA8E-A49AF634BCE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  41 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9B09CCDC-4165-95F5-5442-679D2AFFC2A3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlane2DisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n"
		+ "            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlane2DisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlane2DisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n"
		+ "            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"myCameraShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1312\n            -height 655\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            -pluginObjects \"mmImagePlane2DisplayFilter\" 1 \n            -pluginObjects \"mmLineDisplayFilter\" 1 \n            -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n            -pluginObjects \"mmBundleDisplayFilter\" 1 \n            -pluginObjects \"mmMarkerDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n"
		+ "                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                -pluginObjects \"mmImagePlane2DisplayFilter\" 1 \n                -pluginObjects \"mmLineDisplayFilter\" 1 \n                -pluginObjects \"mmSkyDomeDisplayFilter\" 1 \n"
		+ "                -pluginObjects \"mmBundleDisplayFilter\" 1 \n                -pluginObjects \"mmMarkerDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"myCameraShape\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1312\\n    -height 655\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmImagePlane2DisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmLineDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmSkyDomeDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmBundleDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmMarkerDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"myCameraShape\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1312\\n    -height 655\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmImagePlane2DisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmLineDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmSkyDomeDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmBundleDisplayFilter\\\" 1 \\n    -pluginObjects \\\"mmMarkerDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "28BFA86A-44C5-4AD0-5F54-118EC69F03F2";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 227 -ast 1 -aet 227 ";
	setAttr ".st" 6;
createNode animCurveTU -n "head_01_MKR_deviation";
	rename -uid "10275F43-4418-2283-E935-60833BD8166A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 189 ".ktv[0:188]"  40 -1 41 0.00036294394305969214 42 -1 43 -1
		 44 0.00034947970550547563 45 -1 46 -1 47 0.00040238086808131113 48 -1 49 -1 50 0.00039757541674135161
		 51 -1 52 -1 53 0.00033097728010034731 54 -1 55 -1 56 4.8130769828074004e-11 57 -1
		 58 -1 59 -1 60 -1 61 -1 62 0.00033311425841021144 63 -1 64 -1 65 -1 66 -1 67 6.3705218627191693e-11
		 68 -1 69 -1 70 -1 71 -1 72 -1 73 -1 74 -1 75 -1 76 -1 77 3.7787511929520694e-06 78 -1
		 79 -1 80 -1 81 -1 82 -1 83 2.7943503368999274e-05 84 -1 85 -1 86 -1 87 -1 88 0.00031194067946672016
		 89 -1 90 -1 91 -1 92 -1 93 -1 94 -1 95 -1 96 -1 97 -1 98 5.6603191410440158e-05 99 -1
		 100 -1 101 -1 102 -1 103 -1 104 9.8509351232682236e-05 105 -1 106 -1 107 -1 108 -1
		 109 0.00033837398552805553 110 -1 111 -1 112 -1 113 -1 114 -1 115 -1 116 -1 117 -1
		 118 -1 119 0.00023238414962634414 120 -1 121 -1 122 -1 123 -1 124 -1 125 -1 126 -1
		 127 -1 128 -1 129 0.00034865908514803356 130 -1 131 -1 132 -1 133 -1 134 -1 135 -1
		 136 -1 137 -1 138 -1 139 0.0003627532743166768 140 -1 141 -1 142 -1 143 -1 144 -1
		 145 0.00033191815680311563 146 -1 147 -1 148 -1 149 -1 150 0.00041604772889059221
		 151 -1 152 -1 153 -1 154 -1 155 -1 156 -1 157 -1 158 -1 159 -1 160 0.00040122879568116598
		 161 -1 162 -1 163 -1 164 -1 165 -1 166 -1 167 -1 168 -1 169 -1 170 0.00038288392454433485
		 171 -1 172 -1 173 -1 174 -1 175 -1 176 -1 177 -1 178 -1 179 -1 180 0.00028588615100489154
		 181 -1 182 -1 183 -1 184 -1 185 -1 186 0.00026151269446472952 187 -1 188 -1 189 -1
		 190 -1 191 0.0003765507620983108 192 -1 193 -1 194 -1 195 -1 196 -1 197 -1 198 -1
		 199 -1 200 -1 201 0.00023828017936012094 202 -1 203 -1 204 -1 205 -1 206 -1 207 -1
		 208 -1 209 -1 210 -1 211 0.00038309308638418251 212 -1 213 -1 214 -1 215 -1 216 -1
		 217 -1 218 -1 219 -1 220 -1 221 0.00037701190740336042 222 -1 223 -1 224 0.00032684434734165209
		 225 -1 226 -1 227 0.00039404560470757361 228 -1;
createNode animCurveTU -n "head_02_MKR_deviation";
	rename -uid "9D3DAD10-4964-8BEB-5243-199BD5828430";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 229 ".ktv[0:228]"  0 -1 1 0.00042482691890200153 2 -1 3 -1
		 4 -1 5 -1 6 -1 7 -1 8 -1 9 -1 10 -1 11 0.00018043039108306817 12 -1 13 -1 14 -1 15 -1
		 16 -1 17 -1 18 -1 19 -1 20 -1 21 0.00024287864619055032 22 -1 23 -1 24 -1 25 -1 26 -1
		 27 -1 28 -1 29 -1 30 -1 31 0.00029870927346564843 32 -1 33 -1 34 -1 35 -1 36 -1 37 -1
		 38 -1 39 -1 40 -1 41 1.3987226907399301e-05 42 -1 43 -1 44 0.000346338046824716 45 -1
		 46 -1 47 0.0001305250766563425 48 -1 49 -1 50 0.00033605588828322815 51 -1 52 -1
		 53 0.00019873898145306352 54 -1 55 -1 56 0.00025662172390639702 57 -1 58 -1 59 -1
		 60 -1 61 -1 62 0.00020448442705856126 63 -1 64 -1 65 -1 66 -1 67 0.00021937245082881627
		 68 -1 69 -1 70 -1 71 -1 72 -1 73 -1 74 -1 75 -1 76 -1 77 0.00023080073015080757 78 -1
		 79 -1 80 -1 81 -1 82 -1 83 0.00015259814028923313 84 -1 85 -1 86 -1 87 -1 88 0.00023817736450837642
		 89 -1 90 -1 91 -1 92 -1 93 -1 94 -1 95 -1 96 -1 97 -1 98 0.00024261253213353731 99 -1
		 100 -1 101 -1 102 -1 103 -1 104 9.5221045285145115e-05 105 -1 106 -1 107 -1 108 -1
		 109 0.00025753911063475628 110 -1 111 -1 112 -1 113 -1 114 -1 115 -1 116 -1 117 -1
		 118 -1 119 5.3278696213973131e-05 120 -1 121 -1 122 -1 123 -1 124 -1 125 -1 126 -1
		 127 -1 128 -1 129 0.00025537036992773524 130 -1 131 -1 132 -1 133 -1 134 -1 135 -1
		 136 -1 137 -1 138 -1 139 4.0376161224054085e-06 140 -1 141 -1 142 -1 143 -1 144 -1
		 145 0.00018182786106990921 146 -1 147 -1 148 -1 149 -1 150 0.00019381921026707003
		 151 -1 152 -1 153 -1 154 -1 155 -1 156 -1 157 -1 158 -1 159 -1 160 0.0002102491425830552
		 161 -1 162 -1 163 -1 164 -1 165 -1 166 -1 167 -1 168 -1 169 -1 170 0.00019145964381550877
		 171 -1 172 -1 173 -1 174 -1 175 -1 176 -1 177 -1 178 -1 179 -1 180 0.00011348635405283939
		 181 -1 182 -1 183 -1 184 -1 185 -1 186 0.00013536056485463808 187 -1 188 -1 189 -1
		 190 -1 191 0.00019799808160314941 192 -1 193 -1 194 -1 195 -1 196 -1 197 -1 198 -1
		 199 -1 200 -1 201 0.00014452079187777069 202 -1 203 -1 204 -1 205 -1 206 -1 207 -1
		 208 -1 209 -1 210 -1 211 0.00018751153970697837 212 -1 213 -1 214 -1 215 -1 216 -1
		 217 -1 218 -1 219 -1 220 -1 221 0.00018594216578549216 222 -1 223 -1 224 2.2909507492849468e-05
		 225 -1 226 -1 227 0.00020772301184024647 228 -1;
createNode objectSet -n "myCollection";
	rename -uid "C27295B6-4957-922E-C753-F5889159497A";
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
	addAttr -ci true -sn "solver_type" -ln "solver_type" -dv 255 -at "long";
	addAttr -ci true -sn "solver_scene_graph" -ln "solver_scene_graph" -at "long";
	addAttr -ci true -sn "solver_eval_complex_node_graphs" -ln "solver_eval_complex_node_graphs" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "solver_solve_focal_length" -ln "solver_solve_focal_length" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "solver_solve_lens_distortion" -ln "solver_solve_lens_distortion" 
		-dv 1 -min 0 -max 1 -at "bool";
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
		3 -at "long";
	addAttr -ci true -sn "solver_span_frames" -ln "solver_span_frames" -dv 10 -at "long";
	addAttr -ci true -sn "solver_global_solve" -ln "solver_global_solve" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "solver_only_root_frames" -ln "solver_only_root_frames" -min 
		0 -max 1 -at "bool";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr -s 9 ".dnsm";
	setAttr -l on ".solver_list" -type "string" (
		"[{\"name\": \"93474f96-084d-492f-9f16-355afd0df7de\", \"frame_list\": [{\"number\": 2, \"tags\": [\"normal\"]}, {\"number\": 3, \"tags\": [\"normal\"]}, {\"number\": 4, \"tags\": [\"normal\"]}, {\"number\": 5, \"tags\": [\"normal\"]}, {\"number\": 6, \"tags\": [\"normal\"]}, {\"number\": 7, \"tags\": [\"normal\"]}, {\"number\": 8, \"tags\": [\"normal\"]}, {\"number\": 9, \"tags\": [\"normal\"]}, {\"number\": 10, \"tags\": [\"normal\"]}, {\"number\": 12, \"tags\": [\"normal\"]}, {\"number\": 13, \"tags\": [\"normal\"]}, {\"number\": 14, \"tags\": [\"normal\"]}, {\"number\": 15, \"tags\": [\"normal\"]}, {\"number\": 16, \"tags\": [\"normal\"]}, {\"number\": 17, \"tags\": [\"normal\"]}, {\"number\": 18, \"tags\": [\"normal\"]}, {\"number\": 19, \"tags\": [\"normal\"]}, {\"number\": 20, \"tags\": [\"normal\"]}, {\"number\": 22, \"tags\": [\"normal\"]}, {\"number\": 23, \"tags\": [\"normal\"]}, {\"number\": 24, \"tags\": [\"normal\"]}, {\"number\": 25, \"tags\": [\"normal\"]}, {\"number\": 26, \"tags\": [\"normal\"]}, {\"number\": 27, \"tags\": [\"normal\"]}, {\"number\": 28, \"tags\": [\"normal\"]}, {\"number\": 29, \"tags\": [\"normal\"]}, {\"number\": 30, \"tags\": [\"normal\"]}, {\"number\": 32, \"tags\": [\"normal\"]}, {\"number\": 33, \"tags\": [\"normal\"]}, {\"number\": 34, \"tags\": [\"normal\"]}, {\"number\": 35, \"tags\": [\"normal\"]}, {\"number\": 36, \"tags\": [\"normal\"]}, {\"number\": 37, \"tags\": [\"normal\"]}, {\"number\": 38, \"tags\": [\"normal\"]}, {\"number\": 39, \"tags\": [\"normal\"]}, {\"number\": 40, \"tags\": [\"normal\"]}, {\"number\": 42, \"tags\": [\"normal\"]}, {\"number\": 43, \"tags\": [\"normal\"]}, {\"number\": 45, \"tags\": [\"normal\"]}, {\"number\": 46, \"tags\": [\"normal\"]}, {\"number\": 48, \"tags\": [\"normal\"]}, {\"number\": 49, \"tags\": [\"normal\"]}, {\"number\": 51, \"tags\": [\"normal\"]}, {\"number\": 52, \"tags\": [\"normal\"]}, {\"number\": 54, \"tags\": [\"normal\"]}, {\"number\": 55, \"tags\": [\"normal\"]}, {\"number\": 57, \"tags\": [\"normal\"]}, {\"number\": 58, \"tags\": [\"normal\"]}, {\"number\": 59, \"tags\": [\"normal\"]}, {\"number\": 60, \"tags\": [\"normal\"]}, {\"number\": 61, \"tags\": [\"normal\"]}, {\"number\": 63, \"tags\": [\"normal\"]}, {\"number\": 64, \"tags\": [\"normal\"]}, {\"number\": 65, \"tags\": [\"normal\"]}, {\"number\": 66, \"tags\": [\"normal\"]}, {\"number\": 68, \"tags\": [\"normal\"]}, {\"number\": 69, \"tags\": [\"normal\"]}, {\"number\": 70, \"tags\": [\"normal\"]}, {\"number\": 71, \"tags\": [\"normal\"]}, {\"number\": 72, \"tags\": [\"normal\"]}, {\"number\": 73, \"tags\": [\"normal\"]}, {\"number\": 74, \"tags\": [\"normal\"]}, {\"number\": 75, \"tags\": [\"normal\"]}, {\"number\": 76, \"tags\": [\"normal\"]}, {\"number\": 78, \"tags\": [\"normal\"]}, {\"number\": 79, \"tags\": [\"normal\"]}, {\"number\": 80, \"tags\": [\"normal\"]}, {\"number\": 81, \"tags\": [\"normal\"]}, {\"number\": 82, \"tags\": [\"normal\"]}, {\"number\": 84, \"tags\": [\"normal\"]}, {\"number\": 85, \"tags\": [\"normal\"]}, {\"number\": 86, \"tags\": [\"normal\"]}, {\"number\": 87, \"tags\": [\"normal\"]}, {\"number\": 89, \"tags\": [\"normal\"]}, {\"number\": 90, \"tags\": [\"normal\"]}, {\"number\": 91, \"tags\": [\"normal\"]}, {\"number\": 92, \"tags\": [\"normal\"]}, {\"number\": 93, \"tags\": [\"normal\"]}, {\"number\": 94, \"tags\": [\"normal\"]}, {\"number\": 95, \"tags\": [\"normal\"]}, {\"number\": 96, \"tags\": [\"normal\"]}, {\"number\": 97, \"tags\": [\"normal\"]}, {\"number\": 99, \"tags\": [\"normal\"]}, {\"number\": 100, \"tags\": [\"normal\"]}, {\"number\": 101, \"tags\": [\"normal\"]}, {\"number\": 102, \"tags\": [\"normal\"]}, {\"number\": 103, \"tags\": [\"normal\"]}, {\"number\": 105, \"tags\": [\"normal\"]}, {\"number\": 106, \"tags\": [\"normal\"]}, {\"number\": 107, \"tags\": [\"normal\"]}, {\"number\": 108, \"tags\": [\"normal\"]}, {\"number\": 110, \"tags\": [\"normal\"]}, {\"number\": 111, \"tags\": [\"normal\"]}, {\"number\": 112, \"tags\": [\"normal\"]}, {\"number\": 113, \"tags\": [\"normal\"]}, {\"number\": 114, \"tags\": [\"normal\"]}, {\"number\": 115, \"tags\": [\"normal\"]}, {\"number\": 116, \"tags\": [\"normal\"]}, {\"number\": 117, \"tags\": [\"normal\"]}, {\"number\": 118, \"tags\": [\"normal\"]}, {\"number\": 120, \"tags\": [\"normal\"]}, {\"number\": 121, \"tags\": [\"normal\"]}, {\"number\": 122, \"tags\": [\"normal\"]}, {\"number\": 123, \"tags\": [\"normal\"]}, {\"number\": 124, \"tags\": [\"normal\"]}, {\"number\": 125, \"tags\": [\"normal\"]}, {\"number\": 126, \"tags\": [\"normal\"]}, {\"number\": 127, \"tags\": [\"normal\"]}, {\"number\": 128, \"tags\": [\"normal\"]}, {\"number\": 130, \"tags\": [\"normal\"]}, {\"number\": 131, \"tags\": [\"normal\"]}, {\"number\": 132, \"tags\": [\"normal\"]}, {\"number\": 133, \"tags\": [\"normal\"]}, {\"number\": 134, \"tags\": [\"normal\"]}, {\"number\": 135, \"tags\": [\"normal\"]}, {\"number\": 136, \"tags\": [\"normal\"]}, {\"number\": 137, \"tags\": [\"normal\"]}, {\"number\": 138, \"tags\": [\"normal\"]}, {\"number\": 140, \"tags\": [\"normal\"]}, {\"number\": 141, \"tags\": [\"normal\"]}, {\"number\": 142, \"tags\": [\"normal\"]}, {\"number\": 143, \"tags\": [\"normal\"]}, {\"number\": 144, \"tags\": [\"normal\"]}, {\"number\": 146, \"tags\": [\"normal\"]}, {\"number\": 147, \"tags\": [\"normal\"]}, {\"number\": 148, \"tags\": [\"normal\"]}, {\"number\": 149, \"tags\": [\"normal\"]}, {\"number\": 151, \"tags\": [\"normal\"]}, {\"number\": 152, \"tags\": [\"normal\"]}, {\"number\": 153, \"tags\": [\"normal\"]}, {\"number\": 154, \"tags\": [\"normal\"]}, {\"number\": 155, \"tags\": [\"normal\"]}, {\"number\": 156, \"tags\": [\"normal\"]}, {\"number\": 157, \"tags\": [\"normal\"]}, {\"number\": 158, \"tags\": [\"normal\"]}, {\"number\": 159, \"tags\": [\"normal\"]}, {\"number\": 161, \"tags\": [\"normal\"]}, {\"number\": 162, \"tags\": [\"normal\"]}, {\"number\": 163, \"tags\": [\"normal\"]}, {\"number\": 164, \"tags\": [\"normal\"]}, {\"number\": 165, \"tags\": [\"normal\"]}, {\"number\": 166, \"tags\": [\"normal\"]}, {\"number\": 167, \"tags\": [\"normal\"]}, {\"number\": 168, \"tags\": [\"normal\"]}, {\"number\": 169, \"tags\": [\"normal\"]}, {\"number\": 171, \"tags\": [\"normal\"]}, {\"number\": 172, \"tags\": [\"normal\"]}, {\"number\": 173, \"tags\": [\"normal\"]}, {\"number\": 174, \"tags\": [\"normal\"]}, {\"number\": 175, \"tags\": [\"normal\"]}, {\"number\": 176, \"tags\": [\"normal\"]}, {\"number\": 177, \"tags\": [\"normal\"]}, {\"number\": 178, \"tags\": [\"normal\"]}, {\"number\": 179, \"tags\": [\"normal\"]}, {\"number\": 181, \"tags\": [\"normal\"]}, {\"number\": 182, \"tags\": [\"normal\"]}, {\"number\": 183, \"tags\": [\"normal\"]}, {\"number\": 184, \"tags\": [\"normal\"]}, {\"number\": 185, \"tags\": [\"normal\"]}, {\"number\": 187, \"tags\": [\"normal\"]}, {\"number\": 188, \"tags\": [\"normal\"]}, {\"number\": 189, \"tags\": [\"normal\"]}, {\"number\": 190, \"tags\": [\"normal\"]}, {\"number\": 192, \"tags\": [\"normal\"]}, {\"number\": 193, \"tags\": [\"normal\"]}, {\"number\": 194, \"tags\": [\"normal\"]}, {\"number\": 195, \"tags\": [\"normal\"]}, {\"number\": 196, \"tags\": [\"normal\"]}, {\"number\": 197, \"tags\": [\"normal\"]}, {\"number\": 198, \"tags\": [\"normal\"]}, {\"number\": 199, \"tags\": [\"normal\"]}, {\"number\": 200, \"tags\": [\"normal\"]}, {\"number\": 202, \"tags\": [\"normal\"]}, {\"number\": 203, \"tags\": [\"normal\"]}, {\"number\": 204, \"tags\": [\"normal\"]}, {\"number\": 205, \"tags\": [\"normal\"]}, {\"number\": 206, \"tags\": [\"normal\"]}, {\"number\": 207, \"tags\": [\"normal\"]}, {\"number\": 208, \"tags\": [\"normal\"]}, {\"number\": 209, \"tags\": [\"normal\"]}, {\"number\": 210, \"tags\": [\"normal\"]}, {\"number\": 212, \"tags\": [\"normal\"]}, {\"number\": 213, \"tags\": [\"normal\"]}, {\"number\": 214, \"tags\": [\"normal\"]}, {\"number\": 215, \"tags\": [\"normal\"]}, {\"number\": 216, \"tags\": [\"normal\"]}, {\"number\": 217, \"tags\": [\"normal\"]}, {\"number\": 218, \"tags\": [\"normal\"]}, {\"number\": 219, \"tags\": [\"normal\"]}, {\"number\": 220, \"tags\": [\"normal\"]}, {\"number\": 222, \"tags\": [\"normal\"]}, {\"number\": 223, \"tags\": [\"normal\"]}, {\"number\": 225, \"tags\": [\"normal\"]}, {\"number\": 226, \"tags\": [\"normal\"]}], \"eval_complex_node_graphs\": false, \"enabled\": true, \"global_solve\": false, \"scene_graph_mode\": 0, \"only_root_frames\": false, \"solve_lens_distortion\": true, \"solve_focal_length\": true, \"root_frame_list\": [{\"number\": 1, \"tags\": [\"normal\"]}, {\"number\": 11, \"tags\": [\"normal\"]}, {\"number\": 21, \"tags\": [\"normal\"]}, {\"number\": 31, \"tags\": [\"normal\"]}, {\"number\": 41, \"tags\": [\"normal\"]}, {\"number\": 44, \"tags\": [\"normal\"]}, {\"number\": 47, \"tags\": [\"normal\"]}, {\"number\": 50, \"tags\": [\"normal\"]}, {\"number\": 53, \"tags\": [\"normal\"]}, {\"number\": 56, \"tags\": [\"normal\"]}, {\"number\": 62, \"tags\": [\"normal\"]}, {\"number\": 67, \"tags\": [\"normal\"]}, {\"number\": 77, \"tags\": [\"normal\"]}, {\"number\": 83, \"tags\": [\"normal\"]}, {\"number\": 88, \"tags\": [\"normal\"]}, {\"number\": 98, \"tags\": [\"normal\"]}, {\"number\": 104, \"tags\": [\"normal\"]}, {\"number\": 109, \"tags\": [\"normal\"]}, {\"number\": 119, \"tags\": [\"normal\"]}, {\"number\": 129, \"tags\": [\"normal\"]}, {\"number\": 139, \"tags\": [\"normal\"]}, {\"number\": 145, \"tags\": [\"normal\"]}, {\"number\": 150, \"tags\": [\"normal\"]}, {\"number\": 160, \"tags\": [\"normal\"]}, {\"number\": 170, \"tags\": [\"normal\"]}, {\"number\": 180, \"tags\": [\"normal\"]}, {\"number\": 186, \"tags\": [\"normal\"]}, {\"number\": 191, \"tags\": [\"normal\"]}, {\"number\": 201, \"tags\": [\"normal\"]}, {\"number\": 211, \"tags\": [\"normal\"]}, {\"number\": 221, \"tags\": [\"normal\"]}, {\"number\": 224, \"tags\": [\"normal\"]}, {\"number\": 227, \"tags\": [\"normal\"]}], \"solver_type\": 2}]");
	setAttr -l on ".solver_results" -type "string" (
		"[[\"success=1\", \"reason_num=2\", \"error_final=0.0020775\", \"error_final_average=0.000405852\", \"error_final_maximum=0.00106914\", \"error_final_minimum=1.45623e-10\", \"iteration_num=12\", \"iteration_function_num=12\", \"iteration_jacobian_num=1474\", \"user_interrupted=0\", \"timer_solve=0.572\", \"timer_function=0\", \"timer_jacobian=0\", \"timer_parameter=0\", \"timer_error=0\", \"ticks_solve=1607885438\", \"ticks_function=0\", \"ticks_jacobian=0\", \"ticks_parameter=0\", \"ticks_error=0\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#21#5.59466e-05\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#1#0.00106914\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#44#0.000857855\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#11#0.000558253\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#180#0.000659045\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#47#0.000895478\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#191#0.00020387\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#31#0.000567281\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#41#0.000834037\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#50#0.000916575\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#201#1.44767e-05\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#53#0.000927296\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#211#8.38975e-05\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#56#0.00093538\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#227#0.00061335\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#62#0.000961159\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#67#0.00101373\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#77#0.000805787\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#83#0.000858967\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#88#0.000848385\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#98#0.000877485\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#104#0.000832335\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#109#0.000825335\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#119#0.00091712\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#129#0.000798071\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#139#0.000878642\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#145#0.00065441\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#150#0.000220231\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#160#0.000534404\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#170#0.00103671\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#186#0.000385077\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#221#0.000464473\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_02_MKR#224#0.000568442\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#21#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#1#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#44#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#11#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#180#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#47#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#191#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#31#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#41#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#50#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#201#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#53#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#211#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#56#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#227#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#62#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#67#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#77#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#83#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#88#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#98#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#104#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#109#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#119#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#129#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#139#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#145#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#150#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#160#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#170#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#186#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#221#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|marker1_MKR#224#6.90763e-08\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#56#0.000386563\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#227#0.00101816\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#41#1.45623e-10\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#44#1.5283e-10\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#62#0.000354461\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#47#1.48458e-05\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#191#0.000388827\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#50#0.000111259\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#201#0.000651136\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#53#0.000226922\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#211#0.000726008\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#67#0.000697018\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#77#0.000949226\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#83#0.000857065\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#88#0.00070712\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#98#0.000611651\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#104#0.000650546\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#109#0.000567775\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#119#0.00071984\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#129#0.000506894\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#139#0.000437228\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#145#0.000863949\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#150#0.00079521\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#160#0.000175251\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#170#0.000279433\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#180#0.000653405\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#186#0.000456562\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#221#0.00102162\", \"error_per_marker_per_frame=|myCamera|markerGroup1|head_01_MKR#224#0.00105302\", \"error_per_frame=21#2.80078e-05\", \"error_per_frame=1#0.000534604\", \"error_per_frame=44#0.000285975\", \"error_per_frame=180#0.000437507\", \"error_per_frame=11#0.000279161\", \"error_per_frame=191#0.000197589\", \"error_per_frame=47#0.000303464\", \"error_per_frame=31#0.000283675\", \"error_per_frame=41#0.000278035\", \"error_per_frame=201#0.000221894\", \"error_per_frame=50#0.000342634\", \"error_per_frame=211#0.000269992\", \"error_per_frame=53#0.000384762\", \"error_per_frame=227#0.00054386\", \"error_per_frame=56#0.000440671\", \"error_per_frame=62#0.000438563\", \"error_per_frame=67#0.000570271\", \"error_per_frame=77#0.000585027\", \"error_per_frame=83#0.000572034\", \"error_per_frame=88#0.000518525\", \"error_per_frame=98#0.000496402\", \"error_per_frame=104#0.000494317\", \"error_per_frame=109#0.000464393\", \"error_per_frame=119#0.000545676\", \"error_per_frame=129#0.000435011\", \"error_per_frame=139#0.000438646\", \"error_per_frame=145#0.000506143\", \"error_per_frame=150#0.000338503\", \"error_per_frame=160#0.000236575\", \"error_per_frame=170#0.000438736\", \"error_per_frame=186#0.000280569\", \"error_per_frame=221#0.000495389\", \"error_per_frame=224#0.000540511\", \"solve_parameter_list=0#0#0#0#-49.5732#-48.3119#-47.5899#-46.7045#-45.9647#-45.063#-42.4642#-39.2266#-34.6093#-33.6869#-32.3782#-30.232#-29.0888#-28.2099#-27.204#-28.7386#-30.662#-30.8449#-29.8583#-25.7412#-22.6297#-19.71#-18.3193#-17.3093#-15.8886#-15.5716#-14.2946#-13.7725#-13.3363#0#0#0#0#-13.5217#-13.948#-14.5565#-14.9221#-15.2156#-15.4245#-16.2488#-17.1495#-18.2146#-18.9998#-19.1546#-18.6867#-18.2236#-18.2569#-17.2177#-14.7581#-14.4204#-16.2439#-17.7823#-19.0485#-18.9831#-19.5806#-19.7353#-19.5822#-19.2268#-19.6835#-19.8146#-19.633#-19.3732#-6.57664#-7.38939#-9.01814#-10.5632#-12.0984#-12.3702#-12.7976#-13.1437#-13.3911#-13.5821#-14.3247#-15.0776#-15.9904#-16.5461#-16.6229#-16.2413#-15.7204#-15.6675#-14.9277#-12.6354#-12.6183#-14.4359#-16.0375#-17.3961#-17.4713#-18.2126#-18.3924#-18.277#-17.8787#-18.3064#-18.3779#-18.1878#-17.9234#-30.6379#-29.4079#-27.2648#-24.0265#-20.9934#-20.0932#-19.5479#-19.1189#-18.7763#-18.4224#-17.0544#-14.9251#-12.8163#-12.9607#-12.8891#-13.1326#-13.0218#-12.9983#-13.7629#-16.4994#-19.4596#-20.2291#-19.6656#-16.5435#-14.1693#-11.8209#-10.7081#-9.86276#-8.65824#-8.45236#-7.29631#-6.79495#-6.36721#8.30092#-4.32214#\", \"solve_error_list=6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#6.90659e-08#1.20042e-09#0.00106537#8.97327e-05#0.000549093#0.000100715#5.591e-05#2.02403e-06#0.000566483#3.00749e-05#0.000831971#5.86689e-05#0.000855715#6.05563e-05#0.000892855#6.84789e-05#0.000913513#7.4864e-05#0.000923926#7.89903e-05#0.000931847#8.12259e-05#0.000957076#8.85015e-05#0.00101036#8.25451e-05#0.000804861#3.86272e-05#0.000857853#4.37387e-05#0.000847315#4.25866e-05#0.000876281#4.59542e-05#0.000831309#4.13087e-05#0.000824335#4.06292e-05#0.000915644#5.20247e-05#0.000796902#4.3178e-05#0.000876389#6.28762e-05#0.00064313#0.00012098#0.000170141#0.000139835#0.000516757#0.000136197#0.00103357#8.06187e-05#0.000658498#2.68689e-05#0.000384875#1.24637e-05#0.00020379#5.72698e-06#1.44725e-05#3.50218e-07#8.38708e-05#2.11705e-06#0.000464239#1.4756e-05#0.000568118#1.91893e-05#0.000612985#2.11593e-05#1.45405e-10#7.95808e-12#1.51999e-10#1.59162e-11#1.48261e-05#7.6435e-07#0.000111086#6.20793e-06#0.000226478#1.41873e-05#0.000385428#2.95996e-05#0.00033947#0.000101992#0.000688401#0.000109257#0.000944052#9.89782e-05#0.000850244#0.000107914#0.000697201#0.000118023#0.000598932#0.000124087#0.000638666#0.000123758#0.000553264#0.000127545#0.000709297#0.000122749#0.000490819#0.00012664#0.000418727#0.000125843#0.000856885#0.000110257#0.000786676#0.000116186#0.000111185#0.000135466#0.000243612#0.000136879#0.000641041#0.000126508#0.000435181#0.000138078#0.000362188#0.000141444#0.000637329#0.000133376#0.000714256#0.000130097#0.00101671#0.000100105#0.00104982#8.20066e-05#0.00101599#6.64385e-05#\"]]");
	setAttr -k on ".deviation";
	setAttr -l on ".object_toggle_camera";
	setAttr -l on ".object_toggle_line";
	setAttr -l on ".object_toggle_marker";
	setAttr -l on ".object_toggle_bundle";
	setAttr -l on ".attribute_toggle_animated";
	setAttr -l on ".attribute_toggle_static";
	setAttr -l on ".attribute_toggle_locked";
	setAttr -l on ".solver_tab" -type "string" "standard";
	setAttr -l on ".solver_range_type";
	setAttr -l on ".solver_increment_by_frame";
	setAttr -l on ".solver_type" 2;
	setAttr -l on ".solver_scene_graph";
	setAttr -l on ".solver_eval_complex_node_graphs";
	setAttr -l on ".solver_solve_focal_length";
	setAttr -l on ".solver_solve_lens_distortion";
	setAttr -l on ".solver_frames";
	setAttr -l on ".solve_timestamp" -type "string" "[1736690097.759]";
	setAttr -l on ".solve_duration" -type "string" "[3.5930001735687256]";
	setAttr -l on ".solver_user_frames" -type "string" "1,227";
	setAttr -l on ".solver_root_frames" -type "string" "1,11,21,31,41,44,47,50,53,56,62,67,77,83,88,98,104,109,119,129,139,145,150,160,170,180,186,191,201,211,221,224,227";
	setAttr -l on ".solver_use_per_marker_frames";
	setAttr -l on ".solver_use_span_frames";
	setAttr -l on ".solver_per_marker_frames";
	setAttr -l on ".solver_span_frames";
	setAttr -l on ".solver_global_solve";
	setAttr -l on ".solver_only_root_frames";
createNode animCurveTU -n "marker1_MKR_deviation";
	rename -uid "B485E317-487E-0419-96D1-559FB1716CD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 229 ".ktv[0:228]"  0 -1 1 1.9591883824416787e-08 2 -1 3 -1
		 4 -1 5 -1 6 -1 7 -1 8 -1 9 -1 10 -1 11 1.9591883824416787e-08 12 -1 13 -1 14 -1 15 -1
		 16 -1 17 -1 18 -1 19 -1 20 -1 21 1.9591883824416787e-08 22 -1 23 -1 24 -1 25 -1 26 -1
		 27 -1 28 -1 29 -1 30 -1 31 1.9591883824416787e-08 32 -1 33 -1 34 -1 35 -1 36 -1 37 -1
		 38 -1 39 -1 40 -1 41 1.9591883824416787e-08 42 -1 43 -1 44 1.9591883824416787e-08
		 45 -1 46 -1 47 1.9591883824416787e-08 48 -1 49 -1 50 1.9591883824416787e-08 51 -1
		 52 -1 53 1.9591883824416787e-08 54 -1 55 -1 56 1.9591883824416787e-08 57 -1 58 -1
		 59 -1 60 -1 61 -1 62 1.9591883824416787e-08 63 -1 64 -1 65 -1 66 -1 67 1.9591883824416787e-08
		 68 -1 69 -1 70 -1 71 -1 72 -1 73 -1 74 -1 75 -1 76 -1 77 1.9591883824416787e-08 78 -1
		 79 -1 80 -1 81 -1 82 -1 83 1.9591883824416787e-08 84 -1 85 -1 86 -1 87 -1 88 1.9591883824416787e-08
		 89 -1 90 -1 91 -1 92 -1 93 -1 94 -1 95 -1 96 -1 97 -1 98 1.9591883824416787e-08 99 -1
		 100 -1 101 -1 102 -1 103 -1 104 1.9591883824416787e-08 105 -1 106 -1 107 -1 108 -1
		 109 1.9591883824416787e-08 110 -1 111 -1 112 -1 113 -1 114 -1 115 -1 116 -1 117 -1
		 118 -1 119 1.9591883824416787e-08 120 -1 121 -1 122 -1 123 -1 124 -1 125 -1 126 -1
		 127 -1 128 -1 129 1.9591883824416787e-08 130 -1 131 -1 132 -1 133 -1 134 -1 135 -1
		 136 -1 137 -1 138 -1 139 1.9591883824416787e-08 140 -1 141 -1 142 -1 143 -1 144 -1
		 145 1.9591883824416787e-08 146 -1 147 -1 148 -1 149 -1 150 1.9591883824416787e-08
		 151 -1 152 -1 153 -1 154 -1 155 -1 156 -1 157 -1 158 -1 159 -1 160 1.9591883824416787e-08
		 161 -1 162 -1 163 -1 164 -1 165 -1 166 -1 167 -1 168 -1 169 -1 170 1.9591883824416787e-08
		 171 -1 172 -1 173 -1 174 -1 175 -1 176 -1 177 -1 178 -1 179 -1 180 1.9591883824416787e-08
		 181 -1 182 -1 183 -1 184 -1 185 -1 186 1.9591883824416787e-08 187 -1 188 -1 189 -1
		 190 -1 191 1.9591883824416787e-08 192 -1 193 -1 194 -1 195 -1 196 -1 197 -1 198 -1
		 199 -1 200 -1 201 1.9591883824416787e-08 202 -1 203 -1 204 -1 205 -1 206 -1 207 -1
		 208 -1 209 -1 210 -1 211 1.9591883824416787e-08 212 -1 213 -1 214 -1 215 -1 216 -1
		 217 -1 218 -1 219 -1 220 -1 221 1.9591883824416787e-08 222 -1 223 -1 224 1.9591883824416787e-08
		 225 -1 226 -1 227 1.9591883824416787e-08 228 -1;
createNode animCurveTU -n "collection2_deviation";
	rename -uid "587CC659-40FC-81EF-117B-8BAA078675A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 125 ".ktv[0:124]"  1 0.00053460400000000005 11 0.00027916099999999999
		 21 2.80078e-05 31 0.000283675 41 0.00027803499999999999 44 0.000285975 47 0.00030346399999999998
		 50 0.00034263400000000003 53 0.00038476199999999997 56 0.00044067100000000001 62 0.000438563
		 67 0.00057027100000000002 77 0.00058502700000000001 83 0.00057203400000000002 88 0.00051852500000000004
		 98 0.00049640199999999995 104 0.00049431699999999998 109 0.00046439300000000001 119 0.00054567600000000004
		 122 0.0046334499999999999 123 5.8913500000000001e-07 124 2.8972800000000002e-05 125 3.18128e-07
		 126 1.0510599999999999e-06 127 4.2582800000000002e-05 128 1.0393099999999999e-05
		 129 0.00043501100000000001 130 3.0185600000000003e-07 131 2.5650299999999998e-07
		 132 2.0816199999999998e-06 133 2.6512300000000001e-07 134 1.5935099999999999e-06
		 135 8.9303000000000005e-07 136 0.0047765000000000004 137 2.6538899999999999e-07 138 1.5041699999999999e-06
		 139 0.000438646 140 0.00013764499999999999 141 8.1936700000000004e-06 142 9.7735299999999992e-06
		 143 0.0056207000000000002 144 4.07162e-07 145 0.00050614300000000002 146 1.7106599999999999e-06
		 147 8.27801e-06 148 4.8908500000000001e-07 149 1.20156e-06 150 0.00033850299999999998
		 151 6.17883e-07 152 6.4875599999999999e-07 153 2.0147399999999998e-06 154 3.7116500000000003e-05
		 155 1.07442e-05 156 6.6726000000000001e-07 157 0.0071189199999999999 158 1.84819e-05
		 159 3.1683600000000003e-05 160 0.00023657499999999999 161 5.9657600000000003e-06
		 162 3.1343900000000003e-05 163 7.7255499999999992e-06 164 0.00356098 165 9.8233900000000008e-06
		 166 3.20708e-06 167 0.00012539100000000001 168 0.0012641799999999999 169 6.63253e-06
		 170 0.00043873600000000001 171 0.0042046599999999998 172 2.4855199999999999e-06 173 1.1800999999999999e-05
		 174 6.5832499999999996e-07 175 2.4413299999999998e-06 176 2.9557100000000002e-07
		 177 8.7751399999999995e-05 178 0.0036196900000000001 179 4.6959799999999997e-05 180 0.00043750700000000001
		 181 0.00054473900000000003 182 2.8985200000000002e-05 183 9.6862599999999997e-05
		 184 9.4628099999999993e-06 185 0.0040577 186 0.00028056899999999999 187 9.0218199999999996e-05
		 188 5.8156700000000001e-07 189 7.1222199999999999e-06 190 2.04797e-05 191 0.00019758899999999999
		 192 0.0041340200000000004 193 1.07275e-05 194 3.7036000000000003e-05 195 2.6825599999999999e-05
		 196 1.2562599999999999e-06 197 2.2911399999999998e-06 198 1.0222299999999999e-06
		 199 0.0034488600000000002 200 9.3377700000000002e-06 201 0.00022189399999999999 202 9.9163899999999998e-07
		 203 0.00012903799999999999 204 1.5304699999999999e-05 205 3.0286600000000001e-06
		 206 0.0024979400000000001 207 3.4696600000000002e-06 208 3.28453e-06 209 8.1742600000000006e-05
		 210 7.2897400000000001e-06 211 0.00026999199999999999 212 2.1022399999999998e-06
		 213 0.0041125600000000003 214 3.4100100000000002e-05 215 3.2675800000000001e-06 216 3.07338e-05
		 217 4.8928900000000003e-06 218 2.9738699999999997e-05 219 6.0485200000000003e-06
		 220 0.0049544999999999997 221 0.00049538900000000005 222 5.1401700000000002e-07 223 0.00087651099999999996
		 224 0.00054051100000000003 225 5.4627799999999999e-05 226 0.000256452 227 0.00054385999999999996;
createNode animCurveTL -n "head_02_BND_translateX";
	rename -uid "06985EAF-4222-0F1A-A64A-33B4B2269F10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "head_01_BND_translateX";
	rename -uid "3A6466D6-418B-E886-8FFF-3DB080AC9739";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "head_02_BND_translateZ";
	rename -uid "F3C4AF41-4153-F69B-D94D-CCACD46CFFEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "head_01_BND_translateZ";
	rename -uid "A02570D7-41A2-1149-F4B1-D5A3D19651C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
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
select -ne :initialMaterialInfo;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "lensDistortionToggle1.olns" "myCameraShape.olns";
connectAttr "mmMarkerScale1.ot" "markerGroup1.t";
connectAttr "mmMarkerScale1.os" "markerGroup1.s";
connectAttr "marker_01_MKR_translateX.o" "head_01_MKR.tx" -l on;
connectAttr "marker_01_MKR_translateY.o" "head_01_MKR.ty" -l on;
connectAttr "head_01_MKR_deviation.o" "head_01_MKR.deviation" -l on;
connectAttr "marker_01_MKR_enable.o" "head_01_MKR.enable" -l on;
connectAttr "head_01_MKR.enable" "head_01_MKR.lodv";
connectAttr "head_01_BND.msg" "head_01_MKR.bundle";
connectAttr "myCameraShape.olns" "head_01_MKR.ilns";
connectAttr "marker_02_MKR_translateX.o" "head_02_MKR.tx" -l on;
connectAttr "marker_02_MKR_translateY.o" "head_02_MKR.ty" -l on;
connectAttr "head_02_MKR_deviation.o" "head_02_MKR.deviation" -l on;
connectAttr "marker_02_MKR_enable.o" "head_02_MKR.enable" -l on;
connectAttr "head_02_MKR.enable" "head_02_MKR.lodv";
connectAttr "head_02_BND.msg" "head_02_MKR.bundle";
connectAttr "myCameraShape.olns" "head_02_MKR.ilns";
connectAttr "marker1_MKR_deviation.o" "marker1_MKR.deviation" -l on;
connectAttr "marker1_MKR.enable" "marker1_MKR.lodv";
connectAttr "myCameraShape.olns" "marker1_MKR.ilns";
connectAttr "bundle1_BND.msg" "marker1_MKR.bundle";
connectAttr "head_01_BND_translateX.o" "head_01_BND.tx";
connectAttr "head_01_BND_translateZ.o" "head_01_BND.tz";
connectAttr "head_02_BND_translateX.o" "head_02_BND.tx";
connectAttr "head_02_BND_translateZ.o" "head_02_BND.tz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "myCameraShape.ilns" "lensDistortionToggle1.ilns";
connectAttr "markerGroup1.depth" "mmMarkerScale1.dpt";
connectAttr "markerGroup1.overscanX" "mmMarkerScale1.ovrscninvx";
connectAttr "markerGroup1.overscanY" "mmMarkerScale1.ovrscninvy";
connectAttr "myCameraShape.fl" "mmMarkerScale1.fl";
connectAttr "myCameraShape.cap" "mmMarkerScale1.cap";
connectAttr "myCameraShape.fio" "mmMarkerScale1.fio";
connectAttr "collection2_deviation.o" "myCollection.deviation" -l on;
connectAttr "marker1_MKR.iog" "myCollection.dsm" -na;
connectAttr "head_02_MKR.iog" "myCollection.dsm" -na;
connectAttr "head_01_MKR.iog" "myCollection.dsm" -na;
connectAttr "bundle1_BND.tz" "myCollection.dnsm" -na;
connectAttr "bundle1_BND.ty" "myCollection.dnsm" -na;
connectAttr "bundle1_BND.tx" "myCollection.dnsm" -na;
connectAttr "head_02_BND.ty" "myCollection.dnsm" -na;
connectAttr "head_02_BND.tx" "myCollection.dnsm" -na;
connectAttr "head_02_BND.tz" "myCollection.dnsm" -na;
connectAttr "head_01_BND.tz" "myCollection.dnsm" -na;
connectAttr "head_01_BND.ty" "myCollection.dnsm" -na;
connectAttr "head_01_BND.tx" "myCollection.dnsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of solverAffectsCorrectnessSolverStandard.ma
