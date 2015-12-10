; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ifunc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%union.t_iparams = type { %struct.anon.5 }
%struct.anon.5 = type { float, float, float, float, float, float }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }

@.str = private unnamed_addr constant [6 x i8] c"BONDS\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"Bond\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"G96BONDS\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"G96Bond\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"MORSE\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"Morse\00", align 1
@.str6 = private unnamed_addr constant [11 x i8] c"CUBICBONDS\00", align 1
@.str7 = private unnamed_addr constant [12 x i8] c"Cubic Bonds\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"CONNBONDS\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"Connect Bonds\00", align 1
@.str10 = private unnamed_addr constant [9 x i8] c"HARMONIC\00", align 1
@.str11 = private unnamed_addr constant [14 x i8] c"Harmonic Pot.\00", align 1
@.str12 = private unnamed_addr constant [7 x i8] c"ANGLES\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str14 = private unnamed_addr constant [10 x i8] c"G96ANGLES\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"G96Angle\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"PDIHS\00", align 1
@.str17 = private unnamed_addr constant [12 x i8] c"Proper Dih.\00", align 1
@.str18 = private unnamed_addr constant [7 x i8] c"RBDIHS\00", align 1
@.str19 = private unnamed_addr constant [15 x i8] c"Ryckaert-Bell.\00", align 1
@.str20 = private unnamed_addr constant [6 x i8] c"IDIHS\00", align 1
@.str21 = private unnamed_addr constant [14 x i8] c"Improper Dih.\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"LJ14\00", align 1
@.str23 = private unnamed_addr constant [6 x i8] c"LJ-14\00", align 1
@.str24 = private unnamed_addr constant [7 x i8] c"COUL14\00", align 1
@.str25 = private unnamed_addr constant [11 x i8] c"Coulomb-14\00", align 1
@.str26 = private unnamed_addr constant [3 x i8] c"LJ\00", align 1
@.str27 = private unnamed_addr constant [8 x i8] c"LJ (SR)\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"BHAM\00", align 1
@.str29 = private unnamed_addr constant [11 x i8] c"BuckingHam\00", align 1
@.str30 = private unnamed_addr constant [5 x i8] c"LJLR\00", align 1
@.str31 = private unnamed_addr constant [8 x i8] c"LJ (LR)\00", align 1
@.str32 = private unnamed_addr constant [9 x i8] c"DISPCORR\00", align 1
@.str33 = private unnamed_addr constant [14 x i8] c"Disper. corr.\00", align 1
@.str34 = private unnamed_addr constant [3 x i8] c"SR\00", align 1
@.str35 = private unnamed_addr constant [13 x i8] c"Coulomb (SR)\00", align 1
@.str36 = private unnamed_addr constant [3 x i8] c"LR\00", align 1
@.str37 = private unnamed_addr constant [13 x i8] c"Coulomb (LR)\00", align 1
@.str38 = private unnamed_addr constant [9 x i8] c"WATERPOL\00", align 1
@.str39 = private unnamed_addr constant [11 x i8] c"Water Pol.\00", align 1
@.str40 = private unnamed_addr constant [7 x i8] c"POSRES\00", align 1
@.str41 = private unnamed_addr constant [15 x i8] c"Position Rest.\00", align 1
@.str42 = private unnamed_addr constant [7 x i8] c"DISRES\00", align 1
@.str43 = private unnamed_addr constant [11 x i8] c"Dis. Rest.\00", align 1
@.str44 = private unnamed_addr constant [7 x i8] c"DRVIOL\00", align 1
@.str45 = private unnamed_addr constant [17 x i8] c"D. R. Viol. (nm)\00", align 1
@.str46 = private unnamed_addr constant [7 x i8] c"ORIRES\00", align 1
@.str47 = private unnamed_addr constant [14 x i8] c"Orient. Rest.\00", align 1
@.str48 = private unnamed_addr constant [6 x i8] c"ORDEV\00", align 1
@.str49 = private unnamed_addr constant [13 x i8] c"Ori. R. RMSD\00", align 1
@.str50 = private unnamed_addr constant [7 x i8] c"ANGRES\00", align 1
@.str51 = private unnamed_addr constant [12 x i8] c"Angle Rest.\00", align 1
@.str52 = private unnamed_addr constant [8 x i8] c"ANGRESZ\00", align 1
@.str53 = private unnamed_addr constant [14 x i8] c"Angle Rest. Z\00", align 1
@.str54 = private unnamed_addr constant [7 x i8] c"CONSTR\00", align 1
@.str55 = private unnamed_addr constant [11 x i8] c"Constraint\00", align 1
@.str56 = private unnamed_addr constant [9 x i8] c"CONSTRNC\00", align 1
@.str57 = private unnamed_addr constant [17 x i8] c"Constr. No Conn.\00", align 1
@.str58 = private unnamed_addr constant [7 x i8] c"SETTLE\00", align 1
@.str59 = private unnamed_addr constant [7 x i8] c"Settle\00", align 1
@.str60 = private unnamed_addr constant [7 x i8] c"DUMMY2\00", align 1
@.str61 = private unnamed_addr constant [7 x i8] c"Dummy2\00", align 1
@.str62 = private unnamed_addr constant [7 x i8] c"DUMMY3\00", align 1
@.str63 = private unnamed_addr constant [7 x i8] c"Dummy3\00", align 1
@.str64 = private unnamed_addr constant [9 x i8] c"DUMMY3FD\00", align 1
@.str65 = private unnamed_addr constant [9 x i8] c"Dummy3fd\00", align 1
@.str66 = private unnamed_addr constant [10 x i8] c"DUMMY3FAD\00", align 1
@.str67 = private unnamed_addr constant [10 x i8] c"Dummy3fad\00", align 1
@.str68 = private unnamed_addr constant [10 x i8] c"DUMMY3OUT\00", align 1
@.str69 = private unnamed_addr constant [10 x i8] c"Dummy3out\00", align 1
@.str70 = private unnamed_addr constant [9 x i8] c"DUMMY4FD\00", align 1
@.str71 = private unnamed_addr constant [9 x i8] c"Dummy4fd\00", align 1
@.str72 = private unnamed_addr constant [4 x i8] c"EQM\00", align 1
@.str73 = private unnamed_addr constant [12 x i8] c"Quantum En.\00", align 1
@.str74 = private unnamed_addr constant [5 x i8] c"EPOT\00", align 1
@.str75 = private unnamed_addr constant [10 x i8] c"Potential\00", align 1
@.str76 = private unnamed_addr constant [5 x i8] c"EKIN\00", align 1
@.str77 = private unnamed_addr constant [12 x i8] c"Kinetic En.\00", align 1
@.str78 = private unnamed_addr constant [5 x i8] c"ETOT\00", align 1
@.str79 = private unnamed_addr constant [13 x i8] c"Total Energy\00", align 1
@.str80 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str81 = private unnamed_addr constant [12 x i8] c"Temperature\00", align 1
@.str82 = private unnamed_addr constant [5 x i8] c"PRES\00", align 1
@.str83 = private unnamed_addr constant [15 x i8] c"Pressure (bar)\00", align 1
@.str84 = private unnamed_addr constant [6 x i8] c"DV/DL\00", align 1
@.str85 = private unnamed_addr constant [14 x i8] c"dVpot/dlambda\00", align 1
@.str86 = private unnamed_addr constant [6 x i8] c"DK/DL\00", align 1
@.str87 = private unnamed_addr constant [14 x i8] c"dEkin/dlambda\00", align 1
@interaction_function = global [44 x %struct.t_interaction_function] [%struct.t_interaction_function { i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 2, i32 2, i32 2, i64 41, i32 92, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @bonds }, %struct.t_interaction_function { i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i32 2, i32 2, i32 2, i64 41, i32 92, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @g96bonds }, %struct.t_interaction_function { i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i32 2, i32 3, i32 0, i64 41, i32 104, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @morsebonds }, %struct.t_interaction_function { i8* getelementptr inbounds ([11 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str7, i32 0, i32 0), i32 2, i32 3, i32 0, i64 41, i32 105, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @cubicbonds }, %struct.t_interaction_function { i8* getelementptr inbounds ([10 x i8]* @.str8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str9, i32 0, i32 0), i32 2, i32 0, i32 0, i64 9, i32 0, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([9 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str11, i32 0, i32 0), i32 2, i32 2, i32 2, i64 1, i32 92, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @bonds }, %struct.t_interaction_function { i8* getelementptr inbounds ([7 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0), i32 3, i32 2, i32 2, i64 65, i32 94, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @angles }, %struct.t_interaction_function { i8* getelementptr inbounds ([10 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str15, i32 0, i32 0), i32 3, i32 2, i32 2, i64 65, i32 94, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @g96angles }, %struct.t_interaction_function { i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str17, i32 0, i32 0), i32 4, i32 3, i32 3, i64 1, i32 96, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @pdihs }, %struct.t_interaction_function { i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str19, i32 0, i32 0), i32 4, i32 6, i32 0, i64 1, i32 98, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @rbdihs }, %struct.t_interaction_function { i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str21, i32 0, i32 0), i32 4, i32 2, i32 2, i64 1, i32 97, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @idihs }, %struct.t_interaction_function { i8* getelementptr inbounds ([5 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str23, i32 0, i32 0), i32 2, i32 2, i32 2, i64 1, i32 16, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @do_14 }, %struct.t_interaction_function { i8* getelementptr inbounds ([7 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str25, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([3 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str27, i32 0, i32 0), i32 2, i32 2, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([5 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str29, i32 0, i32 0), i32 2, i32 3, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([5 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str31, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([9 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str33, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([3 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str35, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([3 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str37, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([9 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str39, i32 0, i32 0), i32 1, i32 6, i32 0, i64 1, i32 106, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @water_pol }, %struct.t_interaction_function { i8* getelementptr inbounds ([7 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str41, i32 0, i32 0), i32 1, i32 3, i32 0, i64 1, i32 101, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @posres }, %struct.t_interaction_function { i8* getelementptr inbounds ([7 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str43, i32 0, i32 0), i32 2, i32 6, i32 0, i64 1, i32 99, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @ta_disres }, %struct.t_interaction_function { i8* getelementptr inbounds ([7 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str45, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([7 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str47, i32 0, i32 0), i32 2, i32 6, i32 0, i64 1, i32 100, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @orires }, %struct.t_interaction_function { i8* getelementptr inbounds ([6 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str49, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([7 x i8]* @.str50, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str51, i32 0, i32 0), i32 4, i32 3, i32 3, i64 1, i32 102, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @angres }, %struct.t_interaction_function { i8* getelementptr inbounds ([8 x i8]* @.str52, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str53, i32 0, i32 0), i32 2, i32 3, i32 3, i64 1, i32 103, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @angresz }, %struct.t_interaction_function { i8* getelementptr inbounds ([7 x i8]* @.str54, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str55, i32 0, i32 0), i32 2, i32 1, i32 1, i64 12, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([9 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8]* @.str57, i32 0, i32 0), i32 2, i32 1, i32 1, i64 4, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([7 x i8]* @.str58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str59, i32 0, i32 0), i32 1, i32 2, i32 0, i64 12, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([7 x i8]* @.str60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str61, i32 0, i32 0), i32 3, i32 1, i32 0, i64 10, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([7 x i8]* @.str62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str63, i32 0, i32 0), i32 4, i32 2, i32 0, i64 10, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([9 x i8]* @.str64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str65, i32 0, i32 0), i32 4, i32 2, i32 0, i64 10, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([10 x i8]* @.str66, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str67, i32 0, i32 0), i32 4, i32 2, i32 0, i64 10, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([10 x i8]* @.str68, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str69, i32 0, i32 0), i32 4, i32 3, i32 0, i64 10, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([9 x i8]* @.str70, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str71, i32 0, i32 0), i32 5, i32 3, i32 0, i64 10, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([4 x i8]* @.str72, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str73, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([5 x i8]* @.str74, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str75, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([5 x i8]* @.str76, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str77, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([5 x i8]* @.str78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str79, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([5 x i8]* @.str80, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str81, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([5 x i8]* @.str82, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @.str83, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([6 x i8]* @.str84, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str85, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }, %struct.t_interaction_function { i8* getelementptr inbounds ([6 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str87, i32 0, i32 0), i32 0, i32 0, i32 0, i64 0, i32 -1, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* @unimplemented }], align 16

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !580), !dbg !581
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !580), !dbg !582
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !583
  %2 = load i32* %1, align 4, !dbg !585, !tbaa !586
  %3 = add nsw i32 %2, -1, !dbg !585
  store i32 %3, i32* %1, align 4, !dbg !585, !tbaa !586
  %4 = icmp sgt i32 %2, 0, !dbg !595
  br i1 %4, label %._crit_edge, label %5, !dbg !596

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !597
  br label %10, !dbg !596

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !598
  %7 = load i32* %6, align 4, !dbg !598, !tbaa !599
  %8 = icmp sle i32 %2, %7, !dbg !600
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !601
  %or.cond = or i1 %9, %8, !dbg !602
  br i1 %or.cond, label %15, label %10, !dbg !602

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !597
  %11 = trunc i32 %_c to i8, !dbg !603
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !604
  %13 = load i8** %12, align 8, !dbg !605, !tbaa !606
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !605
  store i8* %14, i8** %12, align 8, !dbg !605, !tbaa !606
  store i8 %11, i8* %13, align 1, !dbg !607, !tbaa !608
  br label %17, !dbg !609

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #5, !dbg !610
  br label %17, !dbg !611

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !612
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !580), !dbg !613
  %1 = icmp sgt i32 %__signo, 32, !dbg !614
  br i1 %1, label %5, label %2, !dbg !615

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !616
  %4 = shl i32 1, %3, !dbg !617
  br label %5, !dbg !615

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !615
  ret i32 %6, !dbg !618
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !87, metadata !580), !dbg !619
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !620
  br i1 %1, label %2, label %5, !dbg !621

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #6, !dbg !622
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !623
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !621
  ret i32 %7, !dbg !624
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !93, metadata !580), !dbg !625
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !626
  br i1 %1, label %2, label %5, !dbg !627

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #6, !dbg !628
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !629
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !627
  ret i32 %7, !dbg !630
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !99, metadata !580), !dbg !631
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !632
  br i1 %1, label %2, label %5, !dbg !633

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #6, !dbg !634
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !635
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !633
  ret i32 %7, !dbg !636
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !102, metadata !580), !dbg !637
  %1 = tail call float @llvm.fabs.f32(float %__x) #6, !dbg !638
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !639
  %3 = zext i1 %2 to i32, !dbg !639
  ret i32 %3, !dbg !640
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !105, metadata !580), !dbg !641
  %1 = tail call double @llvm.fabs.f64(double %__x) #6, !dbg !642
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !643
  %3 = zext i1 %2 to i32, !dbg !643
  ret i32 %3, !dbg !644
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !108, metadata !580), !dbg !645
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #6, !dbg !646
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !647
  %3 = zext i1 %2 to i32, !dbg !647
  ret i32 %3, !dbg !648
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !111, metadata !580), !dbg !649
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !650
  %2 = zext i1 %1 to i32, !dbg !650
  ret i32 %2, !dbg !651
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !114, metadata !580), !dbg !652
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !653
  %2 = zext i1 %1 to i32, !dbg !653
  ret i32 %2, !dbg !654
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !117, metadata !580), !dbg !655
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !656
  %2 = zext i1 %1 to i32, !dbg !656
  ret i32 %2, !dbg !657
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !120, metadata !580), !dbg !658
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !121, metadata !580), !dbg !659
  %1 = bitcast float %__x to i32, !dbg !660
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !121, metadata !580), !dbg !659
  %2 = lshr i32 %1, 31, !dbg !661
  ret i32 %2, !dbg !662
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !129, metadata !580), !dbg !663
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !130, metadata !580), !dbg !664
  %1 = bitcast double %__x to i64, !dbg !665
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !130, metadata !580), !dbg !664
  %2 = lshr i64 %1, 63, !dbg !666
  %3 = trunc i64 %2 to i32, !dbg !667
  ret i32 %3, !dbg !668
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !138, metadata !580), !dbg !669
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !139, metadata !580), !dbg !670
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !139, metadata !580), !dbg !670
  %1 = bitcast x86_fp80 %__x to i80, !dbg !671
  %2 = lshr i80 %1, 79, !dbg !671
  %3 = trunc i80 %2 to i32, !dbg !672
  ret i32 %3, !dbg !673
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !151, metadata !580), !dbg !674
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !87, metadata !580) #7, !dbg !675
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !677
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !678
  %or.cond = and i1 %1, %3, !dbg !679
  br i1 %or.cond, label %4, label %.critedge, !dbg !679

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !680
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !681
  ret i32 %7, !dbg !682
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !154, metadata !580), !dbg !683
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !93, metadata !580) #7, !dbg !684
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !686
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !687
  %or.cond = and i1 %1, %3, !dbg !688
  br i1 %or.cond, label %4, label %.critedge, !dbg !688

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !689
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !690
  ret i32 %7, !dbg !691
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !157, metadata !580), !dbg !692
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !99, metadata !580) #7, !dbg !693
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !695
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !696
  %or.cond = and i1 %1, %3, !dbg !697
  br i1 %or.cond, label %4, label %.critedge, !dbg !697

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !698
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !699
  ret i32 %7, !dbg !700
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !163, metadata !580), !dbg !701
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !164, metadata !580), !dbg !702
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !165, metadata !580), !dbg !703
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !166, metadata !580), !dbg !704
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #5, !dbg !705
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !166, metadata !580), !dbg !704
  %2 = extractelement <2 x float> %1, i32 0, !dbg !706
  store float %2, float* %__sinp, align 4, !dbg !707, !tbaa !708
  %3 = extractelement <2 x float> %1, i32 1, !dbg !710
  store float %3, float* %__cosp, align 4, !dbg !711, !tbaa !708
  ret void, !dbg !712
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !177, metadata !580), !dbg !713
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !178, metadata !580), !dbg !714
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !179, metadata !580), !dbg !715
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !180, metadata !580), !dbg !716
  %1 = tail call { double, double } @__sincos_stret(double %__x) #5, !dbg !717
  %2 = extractvalue { double, double } %1, 0, !dbg !717
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !180, metadata !718), !dbg !716
  %3 = extractvalue { double, double } %1, 1, !dbg !717
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !180, metadata !719), !dbg !716
  store double %2, double* %__sinp, align 8, !dbg !720, !tbaa !721
  store double %3, double* %__cosp, align 8, !dbg !723, !tbaa !721
  ret void, !dbg !724
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !188, metadata !580), !dbg !725
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !189, metadata !580), !dbg !726
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !190, metadata !580), !dbg !727
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !191, metadata !580), !dbg !728
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #5, !dbg !729
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !191, metadata !580), !dbg !728
  %2 = extractelement <2 x float> %1, i32 0, !dbg !730
  store float %2, float* %__sinp, align 4, !dbg !731, !tbaa !708
  %3 = extractelement <2 x float> %1, i32 1, !dbg !732
  store float %3, float* %__cosp, align 4, !dbg !733, !tbaa !708
  ret void, !dbg !734
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !194, metadata !580), !dbg !735
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !195, metadata !580), !dbg !736
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !196, metadata !580), !dbg !737
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !197, metadata !580), !dbg !738
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #5, !dbg !739
  %2 = extractvalue { double, double } %1, 0, !dbg !739
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !197, metadata !718), !dbg !738
  %3 = extractvalue { double, double } %1, 1, !dbg !739
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !197, metadata !719), !dbg !738
  store double %2, double* %__sinp, align 8, !dbg !740, !tbaa !721
  store double %3, double* %__cosp, align 8, !dbg !741, !tbaa !721
  ret void, !dbg !742
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #2

; Function Attrs: optsize
declare float @bonds(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @g96bonds(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @morsebonds(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @cubicbonds(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @unimplemented(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @angles(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @g96angles(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @pdihs(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @rbdihs(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @idihs(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @do_14(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @water_pol(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @posres(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @ta_disres(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @orires(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @angres(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: optsize
declare float @angresz(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @have_interaction(%struct.t_idef* nocapture readonly %idef, i32 %ftype) #4 {
  tail call void @llvm.dbg.value(metadata %struct.t_idef* %idef, i64 0, metadata !344, metadata !580), !dbg !743
  tail call void @llvm.dbg.value(metadata i32 %ftype, i64 0, metadata !345, metadata !580), !dbg !744
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !346, metadata !580), !dbg !745
  %1 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0, !dbg !746
  %2 = load i32* %1, align 4, !dbg !746, !tbaa !749
  %3 = icmp sgt i32 %2, 0, !dbg !751
  br i1 %3, label %.lr.ph, label %._crit_edge, !dbg !752

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3, !dbg !753
  %5 = load i32** %4, align 8, !dbg !753, !tbaa !755
  %6 = sext i32 %2 to i64, !dbg !751
  br label %9, !dbg !752

; <label>:7                                       ; preds = %9
  %8 = icmp slt i64 %indvars.iv.next, %6, !dbg !751
  br i1 %8, label %9, label %._crit_edge, !dbg !752

; <label>:9                                       ; preds = %.lr.ph, %7
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %7 ]
  %10 = getelementptr inbounds i32* %5, i64 %indvars.iv, !dbg !756
  %11 = load i32* %10, align 4, !dbg !756, !tbaa !757
  %12 = icmp eq i32 %11, %ftype, !dbg !758
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !752
  br i1 %12, label %._crit_edge, label %7, !dbg !759

._crit_edge:                                      ; preds = %9, %7, %0
  %.0 = phi i32 [ 0, %0 ], [ 1, %9 ], [ 0, %7 ]
  ret i32 %.0, !dbg !760
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { readnone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!576, !577, !578}
!llvm.ident = !{!579}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !347, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ifunc.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !75, !81, !88, !94, !100, !103, !106, !109, !112, !115, !118, !127, !136, !149, !152, !155, !158, !172, !186, !192, !198}
!7 = !DISubprogram(name: "__sputc", scope: !8, file: !8, line: 348, type: !9, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DISubroutineType(types: !10)
!10 = !{!5, !5, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 153, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !8, line: 122, size: 1216, align: 64, elements: !14)
!14 = !{!15, !18, !19, !20, !22, !23, !28, !29, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !13, file: !8, line: 123, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !13, file: !8, line: 124, baseType: !5, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !13, file: !8, line: 125, baseType: !5, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !8, line: 126, baseType: !21, size: 16, align: 16, offset: 128)
!21 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !13, file: !8, line: 127, baseType: !21, size: 16, align: 16, offset: 144)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !13, file: !8, line: 128, baseType: !24, size: 128, align: 64, offset: 192)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !8, line: 88, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !24, file: !8, line: 89, baseType: !16, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !24, file: !8, line: 90, baseType: !5, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !13, file: !8, line: 129, baseType: !5, size: 32, align: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !13, file: !8, line: 132, baseType: !30, size: 64, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !13, file: !8, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!5, !30}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !13, file: !8, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!5, !30, !39, !5}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !13, file: !8, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !30, !44, !5}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !8, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !13, file: !8, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!5, !30, !54, !5}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !13, file: !8, line: 139, baseType: !24, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !13, file: !8, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !8, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !13, file: !8, line: 141, baseType: !5, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !13, file: !8, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !13, file: !8, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !13, file: !8, line: 148, baseType: !24, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !13, file: !8, line: 151, baseType: !5, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !8, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !7, file: !8, line: 348, type: !5)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !7, file: !8, line: 348, type: !11)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!5, !5}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !5)
!81 = !DISubprogram(name: "__inline_isfinitef", scope: !82, file: !82, line: 204, type: !83, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !86)
!82 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!83 = !DISubroutineType(types: !84)
!84 = !{!5, !85}
!85 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!86 = !{!87}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !81, file: !82, line: 204, type: !85)
!88 = !DISubprogram(name: "__inline_isfinited", scope: !82, file: !82, line: 207, type: !89, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !92)
!89 = !DISubroutineType(types: !90)
!90 = !{!5, !91}
!91 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!92 = !{!93}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !88, file: !82, line: 207, type: !91)
!94 = !DISubprogram(name: "__inline_isfinitel", scope: !82, file: !82, line: 210, type: !95, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !98)
!95 = !DISubroutineType(types: !96)
!96 = !{!5, !97}
!97 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!98 = !{!99}
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !94, file: !82, line: 210, type: !97)
!100 = !DISubprogram(name: "__inline_isinff", scope: !82, file: !82, line: 213, type: !83, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !101)
!101 = !{!102}
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !100, file: !82, line: 213, type: !85)
!103 = !DISubprogram(name: "__inline_isinfd", scope: !82, file: !82, line: 216, type: !89, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !104)
!104 = !{!105}
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !103, file: !82, line: 216, type: !91)
!106 = !DISubprogram(name: "__inline_isinfl", scope: !82, file: !82, line: 219, type: !95, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !107)
!107 = !{!108}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !106, file: !82, line: 219, type: !97)
!109 = !DISubprogram(name: "__inline_isnanf", scope: !82, file: !82, line: 222, type: !83, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !110)
!110 = !{!111}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !109, file: !82, line: 222, type: !85)
!112 = !DISubprogram(name: "__inline_isnand", scope: !82, file: !82, line: 225, type: !89, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !113)
!113 = !{!114}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !112, file: !82, line: 225, type: !91)
!115 = !DISubprogram(name: "__inline_isnanl", scope: !82, file: !82, line: 228, type: !95, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !116)
!116 = !{!117}
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !115, file: !82, line: 228, type: !97)
!118 = !DISubprogram(name: "__inline_signbitf", scope: !82, file: !82, line: 231, type: !83, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !119)
!119 = !{!120, !121}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !118, file: !82, line: 231, type: !85)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !118, file: !82, line: 232, type: !122)
!122 = !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !82, line: 232, size: 32, align: 32, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !122, file: !82, line: 232, baseType: !85, size: 32, align: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !122, file: !82, line: 232, baseType: !126, size: 32, align: 32)
!126 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!127 = !DISubprogram(name: "__inline_signbitd", scope: !82, file: !82, line: 236, type: !89, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !128)
!128 = !{!129, !130}
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !127, file: !82, line: 236, type: !91)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !127, file: !82, line: 237, type: !131)
!131 = !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !82, line: 237, size: 64, align: 64, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !131, file: !82, line: 237, baseType: !91, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !131, file: !82, line: 237, baseType: !135, size: 64, align: 64)
!135 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!136 = !DISubprogram(name: "__inline_signbitl", scope: !82, file: !82, line: 242, type: !95, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !137)
!137 = !{!138, !139}
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !136, file: !82, line: 242, type: !97)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !136, file: !82, line: 246, type: !140)
!140 = !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !82, line: 243, size: 128, align: 128, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !140, file: !82, line: 244, baseType: !97, size: 128, align: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !140, file: !82, line: 245, baseType: !144, size: 128, align: 64)
!144 = !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !82, line: 245, size: 128, align: 64, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !144, file: !82, line: 245, baseType: !135, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !144, file: !82, line: 245, baseType: !148, size: 16, align: 16, offset: 64)
!148 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!149 = !DISubprogram(name: "__inline_isnormalf", scope: !82, file: !82, line: 257, type: !83, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !150)
!150 = !{!151}
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !149, file: !82, line: 257, type: !85)
!152 = !DISubprogram(name: "__inline_isnormald", scope: !82, file: !82, line: 260, type: !89, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !153)
!153 = !{!154}
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !152, file: !82, line: 260, type: !91)
!155 = !DISubprogram(name: "__inline_isnormall", scope: !82, file: !82, line: 263, type: !95, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !156)
!156 = !{!157}
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !155, file: !82, line: 263, type: !97)
!158 = !DISubprogram(name: "__sincosf", scope: !82, file: !82, line: 642, type: !159, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !162)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !85, !161, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!162 = !{!163, !164, !165, !166}
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !158, file: !82, line: 642, type: !85)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !158, file: !82, line: 642, type: !161)
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !158, file: !82, line: 642, type: !161)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !158, file: !82, line: 643, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !82, line: 634, size: 64, align: 32, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !168, file: !82, line: 634, baseType: !85, size: 32, align: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !168, file: !82, line: 634, baseType: !85, size: 32, align: 32, offset: 32)
!172 = !DISubprogram(name: "__sincos", scope: !82, file: !82, line: 647, type: !173, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !176)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !91, !175, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!176 = !{!177, !178, !179, !180}
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !172, file: !82, line: 647, type: !91)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !172, file: !82, line: 647, type: !175)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !172, file: !82, line: 647, type: !175)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !172, file: !82, line: 648, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !82, line: 635, size: 128, align: 64, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !182, file: !82, line: 635, baseType: !91, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !182, file: !82, line: 635, baseType: !91, size: 64, align: 64, offset: 64)
!186 = !DISubprogram(name: "__sincospif", scope: !82, file: !82, line: 652, type: !159, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !187)
!187 = !{!188, !189, !190, !191}
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !186, file: !82, line: 652, type: !85)
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !186, file: !82, line: 652, type: !161)
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !186, file: !82, line: 652, type: !161)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !186, file: !82, line: 653, type: !167)
!192 = !DISubprogram(name: "__sincospi", scope: !82, file: !82, line: 657, type: !173, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !193)
!193 = !{!194, !195, !196, !197}
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !192, file: !82, line: 657, type: !91)
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !192, file: !82, line: 657, type: !175)
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !192, file: !82, line: 657, type: !175)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !192, file: !82, line: 658, type: !181)
!198 = !DISubprogram(name: "have_interaction", scope: !1, file: !1, line: 114, type: !199, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.t_idef*, i32)* @have_interaction, variables: !343)
!199 = !DISubroutineType(types: !200)
!200 = !{!5, !201, !5}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_idef", file: !203, line: 188, baseType: !204)
!203 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/idef.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 179, size: 366336, align: 64, elements: !205)
!205 = !{!206, !207, !208, !209, !212, !327}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ntypes", scope: !204, file: !203, line: 181, baseType: !5, size: 32, align: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !204, file: !203, line: 182, baseType: !5, size: 32, align: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "atnr", scope: !204, file: !203, line: 183, baseType: !5, size: 32, align: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "functype", scope: !204, file: !203, line: 184, baseType: !210, size: 64, align: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_functype", file: !203, line: 133, baseType: !5)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "iparams", scope: !204, file: !203, line: 185, baseType: !213, size: 64, align: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_iparams", file: !203, line: 131, baseType: !215)
!215 = !DICompositeType(tag: DW_TAG_union_type, file: !203, line: 97, size: 192, align: 32, elements: !216)
!216 = !{!217, !225, !232, !238, !247, !252, !259, !267, !272, !277, !283, !289, !296, !305, !314, !323}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "bham", scope: !215, file: !203, line: 105, baseType: !218, size: 96, align: 32)
!218 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 105, size: 96, align: 32, elements: !219)
!219 = !{!220, !223, !224}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !218, file: !203, line: 105, baseType: !221, size: 32, align: 32)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !222, line: 87, baseType: !85)
!222 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!223 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !218, file: !203, line: 105, baseType: !221, size: 32, align: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !218, file: !203, line: 105, baseType: !221, size: 32, align: 32, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "harmonic", scope: !215, file: !203, line: 106, baseType: !226, size: 128, align: 32)
!226 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 106, size: 128, align: 32, elements: !227)
!227 = !{!228, !229, !230, !231}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rA", scope: !226, file: !203, line: 106, baseType: !221, size: 32, align: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "krA", scope: !226, file: !203, line: 106, baseType: !221, size: 32, align: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "rB", scope: !226, file: !203, line: 106, baseType: !221, size: 32, align: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "krB", scope: !226, file: !203, line: 106, baseType: !221, size: 32, align: 32, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "cubic", scope: !215, file: !203, line: 108, baseType: !233, size: 96, align: 32)
!233 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 108, size: 96, align: 32, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "b0", scope: !233, file: !203, line: 108, baseType: !221, size: 32, align: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "kb", scope: !233, file: !203, line: 108, baseType: !221, size: 32, align: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "kcub", scope: !233, file: !203, line: 108, baseType: !221, size: 32, align: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wpol", scope: !215, file: !203, line: 110, baseType: !239, size: 192, align: 32)
!239 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 110, size: 192, align: 32, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "kx", scope: !239, file: !203, line: 110, baseType: !221, size: 32, align: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ky", scope: !239, file: !203, line: 110, baseType: !221, size: 32, align: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "kz", scope: !239, file: !203, line: 110, baseType: !221, size: 32, align: 32, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rOH", scope: !239, file: !203, line: 110, baseType: !221, size: 32, align: 32, offset: 96)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rHH", scope: !239, file: !203, line: 110, baseType: !221, size: 32, align: 32, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "rOD", scope: !239, file: !203, line: 110, baseType: !221, size: 32, align: 32, offset: 160)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "lj", scope: !215, file: !203, line: 111, baseType: !248, size: 64, align: 32)
!248 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 111, size: 64, align: 32, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "c6", scope: !248, file: !203, line: 111, baseType: !221, size: 32, align: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "c12", scope: !248, file: !203, line: 111, baseType: !221, size: 32, align: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "lj14", scope: !215, file: !203, line: 112, baseType: !253, size: 128, align: 32)
!253 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 112, size: 128, align: 32, elements: !254)
!254 = !{!255, !256, !257, !258}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "c6A", scope: !253, file: !203, line: 112, baseType: !221, size: 32, align: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "c12A", scope: !253, file: !203, line: 112, baseType: !221, size: 32, align: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "c6B", scope: !253, file: !203, line: 112, baseType: !221, size: 32, align: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "c12B", scope: !253, file: !203, line: 112, baseType: !221, size: 32, align: 32, offset: 96)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "pdihs", scope: !215, file: !203, line: 117, baseType: !260, size: 160, align: 32)
!260 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 117, size: 160, align: 32, elements: !261)
!261 = !{!262, !263, !264, !265, !266}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "phiA", scope: !260, file: !203, line: 117, baseType: !221, size: 32, align: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "cpA", scope: !260, file: !203, line: 117, baseType: !221, size: 32, align: 32, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !260, file: !203, line: 117, baseType: !5, size: 32, align: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "phiB", scope: !260, file: !203, line: 117, baseType: !221, size: 32, align: 32, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "cpB", scope: !260, file: !203, line: 117, baseType: !221, size: 32, align: 32, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "shake", scope: !215, file: !203, line: 118, baseType: !268, size: 64, align: 32)
!268 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 118, size: 64, align: 32, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dA", scope: !268, file: !203, line: 118, baseType: !221, size: 32, align: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "dB", scope: !268, file: !203, line: 118, baseType: !221, size: 32, align: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "settle", scope: !215, file: !203, line: 123, baseType: !273, size: 64, align: 32)
!273 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 123, size: 64, align: 32, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "doh", scope: !273, file: !203, line: 123, baseType: !221, size: 32, align: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "dhh", scope: !273, file: !203, line: 123, baseType: !221, size: 32, align: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "morse", scope: !215, file: !203, line: 124, baseType: !278, size: 96, align: 32)
!278 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 124, size: 96, align: 32, elements: !279)
!279 = !{!280, !281, !282}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "b0", scope: !278, file: !203, line: 124, baseType: !221, size: 32, align: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !278, file: !203, line: 124, baseType: !221, size: 32, align: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "beta", scope: !278, file: !203, line: 124, baseType: !221, size: 32, align: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "posres", scope: !215, file: !203, line: 125, baseType: !284, size: 192, align: 32)
!284 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 125, size: 192, align: 32, elements: !285)
!285 = !{!286, !288}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "pos0", scope: !284, file: !203, line: 125, baseType: !287, size: 96, align: 32)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 96, align: 32, elements: !63)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "fc", scope: !284, file: !203, line: 125, baseType: !287, size: 96, align: 32, offset: 96)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rbdihs", scope: !215, file: !203, line: 126, baseType: !290, size: 192, align: 32)
!290 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 126, size: 192, align: 32, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "rbc", scope: !290, file: !203, line: 126, baseType: !293, size: 192, align: 32)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 192, align: 32, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 6)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !215, file: !203, line: 127, baseType: !297, size: 192, align: 32)
!297 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 127, size: 192, align: 32, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !297, file: !203, line: 127, baseType: !221, size: 32, align: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !297, file: !203, line: 127, baseType: !221, size: 32, align: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !297, file: !203, line: 127, baseType: !221, size: 32, align: 32, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !297, file: !203, line: 127, baseType: !221, size: 32, align: 32, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !297, file: !203, line: 127, baseType: !221, size: 32, align: 32, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !297, file: !203, line: 127, baseType: !221, size: 32, align: 32, offset: 160)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "disres", scope: !215, file: !203, line: 128, baseType: !306, size: 192, align: 32)
!306 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 128, size: 192, align: 32, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !306, file: !203, line: 128, baseType: !221, size: 32, align: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "up1", scope: !306, file: !203, line: 128, baseType: !221, size: 32, align: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "up2", scope: !306, file: !203, line: 128, baseType: !221, size: 32, align: 32, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "kfac", scope: !306, file: !203, line: 128, baseType: !221, size: 32, align: 32, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !306, file: !203, line: 128, baseType: !5, size: 32, align: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !306, file: !203, line: 128, baseType: !5, size: 32, align: 32, offset: 160)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "orires", scope: !215, file: !203, line: 129, baseType: !315, size: 192, align: 32)
!315 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 129, size: 192, align: 32, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ex", scope: !315, file: !203, line: 129, baseType: !5, size: 32, align: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pow", scope: !315, file: !203, line: 129, baseType: !5, size: 32, align: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !315, file: !203, line: 129, baseType: !5, size: 32, align: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !315, file: !203, line: 129, baseType: !221, size: 32, align: 32, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "obs", scope: !315, file: !203, line: 129, baseType: !221, size: 32, align: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "kfac", scope: !315, file: !203, line: 129, baseType: !221, size: 32, align: 32, offset: 160)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !215, file: !203, line: 130, baseType: !324, size: 192, align: 32)
!324 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 130, size: 192, align: 32, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !324, file: !203, line: 130, baseType: !293, size: 192, align: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !204, file: !203, line: 187, baseType: !328, size: 366080, align: 64, offset: 256)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 366080, align: 64, elements: !341)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_ilist", file: !203, line: 140, baseType: !330)
!330 = !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 135, size: 8320, align: 64, elements: !331)
!331 = !{!332, !333, !337}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !330, file: !203, line: 137, baseType: !5, size: 32, align: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !330, file: !203, line: 138, baseType: !334, size: 8192, align: 32, offset: 32)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, align: 32, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "iatoms", scope: !330, file: !203, line: 139, baseType: !338, size: 64, align: 64, offset: 8256)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_iatom", file: !203, line: 45, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !222, line: 73, baseType: !5)
!341 = !{!342}
!342 = !DISubrange(count: 44)
!343 = !{!344, !345, !346}
!344 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idef", arg: 1, scope: !198, file: !1, line: 114, type: !201)
!345 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ftype", arg: 2, scope: !198, file: !1, line: 114, type: !5)
!346 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !198, file: !1, line: 116, type: !5)
!347 = !{!348}
!348 = !DIGlobalVariable(name: "interaction_function", scope: !0, file: !1, line: 66, type: !349, isLocal: false, isDefinition: true, variable: [44 x %struct.t_interaction_function]* @interaction_function)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 19712, align: 64, elements: !341)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_interaction_function", file: !351, line: 79, baseType: !352)
!351 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/ifunc.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!352 = !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 67, size: 448, align: 64, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !361, !362}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !352, file: !351, line: 69, baseType: !39, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !352, file: !351, line: 70, baseType: !39, size: 64, align: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "nratoms", scope: !352, file: !351, line: 71, baseType: !5, size: 32, align: 32, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nrfpA", scope: !352, file: !351, line: 72, baseType: !5, size: 32, align: 32, offset: 160)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "nrfpB", scope: !352, file: !351, line: 72, baseType: !5, size: 32, align: 32, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !351, line: 76, baseType: !360, size: 64, align: 64, offset: 256)
!360 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "nrnb_ind", scope: !352, file: !351, line: 77, baseType: !5, size: 32, align: 32, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ifunc", scope: !352, file: !351, line: 78, baseType: !363, size: 64, align: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_ifunc", file: !351, line: 40, baseType: !365)
!365 = !DISubroutineType(types: !366)
!366 = !{!221, !5, !338, !213, !367, !367, !369, !467, !484, !221, !393, !485, !5, !393, !393, !514}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !222, line: 101, baseType: !287)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_forcerec", file: !371, line: 149, baseType: !372)
!371 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/forcerec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!372 = !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 43, size: 22784, align: 64, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !422, !423, !424, !425, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ePBC", scope: !372, file: !371, line: 45, baseType: !5, size: 32, align: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "rlist", scope: !372, file: !371, line: 46, baseType: !221, size: 32, align: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rlistlong", scope: !372, file: !371, line: 46, baseType: !221, size: 32, align: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "zsquare", scope: !372, file: !371, line: 49, baseType: !221, size: 32, align: 32, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !372, file: !371, line: 49, baseType: !221, size: 32, align: 32, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_r", scope: !372, file: !371, line: 50, baseType: !221, size: 32, align: 32, offset: 160)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "epsfac", scope: !372, file: !371, line: 50, baseType: !221, size: 32, align: 32, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "bRF", scope: !372, file: !371, line: 53, baseType: !5, size: 32, align: 32, offset: 224)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "kappa", scope: !372, file: !371, line: 54, baseType: !221, size: 32, align: 32, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "k_rf", scope: !372, file: !371, line: 54, baseType: !221, size: 32, align: 32, offset: 288)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "c_rf", scope: !372, file: !371, line: 54, baseType: !221, size: 32, align: 32, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "avcsix", scope: !372, file: !371, line: 57, baseType: !221, size: 32, align: 32, offset: 352)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "fudgeQQ", scope: !372, file: !371, line: 60, baseType: !221, size: 32, align: 32, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "bcoultab", scope: !372, file: !371, line: 63, baseType: !5, size: 32, align: 32, offset: 416)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "bvdwtab", scope: !372, file: !371, line: 64, baseType: !5, size: 32, align: 32, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rtab", scope: !372, file: !371, line: 65, baseType: !221, size: 32, align: 32, offset: 480)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ntab", scope: !372, file: !371, line: 66, baseType: !5, size: 32, align: 32, offset: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "tabscale", scope: !372, file: !371, line: 67, baseType: !221, size: 32, align: 32, offset: 544)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "coultab", scope: !372, file: !371, line: 69, baseType: !393, size: 64, align: 64, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtab", scope: !372, file: !371, line: 70, baseType: !393, size: 64, align: 64, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "coulvdwtab", scope: !372, file: !371, line: 71, baseType: !393, size: 64, align: 64, offset: 704)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "coulvdw14tab", scope: !372, file: !371, line: 72, baseType: !393, size: 64, align: 64, offset: 768)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb_switch", scope: !372, file: !371, line: 75, baseType: !221, size: 32, align: 32, offset: 832)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb", scope: !372, file: !371, line: 75, baseType: !221, size: 32, align: 32, offset: 864)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "phi", scope: !372, file: !371, line: 76, baseType: !393, size: 64, align: 64, offset: 896)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw_switch", scope: !372, file: !371, line: 79, baseType: !221, size: 32, align: 32, offset: 960)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw", scope: !372, file: !371, line: 79, baseType: !221, size: 32, align: 32, offset: 992)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "bham_b_max", scope: !372, file: !371, line: 80, baseType: !221, size: 32, align: 32, offset: 1024)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tabscale_exp", scope: !372, file: !371, line: 81, baseType: !221, size: 32, align: 32, offset: 1056)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "efep", scope: !372, file: !371, line: 84, baseType: !5, size: 32, align: 32, offset: 1088)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sc_alpha", scope: !372, file: !371, line: 85, baseType: !221, size: 32, align: 32, offset: 1120)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sc_sigma6", scope: !372, file: !371, line: 86, baseType: !221, size: 32, align: 32, offset: 1152)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "bSepDVDL", scope: !372, file: !371, line: 87, baseType: !5, size: 32, align: 32, offset: 1184)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "eeltype", scope: !372, file: !371, line: 90, baseType: !5, size: 32, align: 32, offset: 1216)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtype", scope: !372, file: !371, line: 91, baseType: !5, size: 32, align: 32, offset: 1248)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "cg0", scope: !372, file: !371, line: 92, baseType: !5, size: 32, align: 32, offset: 1280)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "hcg", scope: !372, file: !371, line: 92, baseType: !5, size: 32, align: 32, offset: 1312)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "ndelta", scope: !372, file: !371, line: 93, baseType: !5, size: 32, align: 32, offset: 1344)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "bSolvOpt", scope: !372, file: !371, line: 94, baseType: !5, size: 32, align: 32, offset: 1376)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "nMNOMol", scope: !372, file: !371, line: 95, baseType: !5, size: 32, align: 32, offset: 1408)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "nMNOav", scope: !372, file: !371, line: 96, baseType: !287, size: 96, align: 32, offset: 1440)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nWatMol", scope: !372, file: !371, line: 97, baseType: !5, size: 32, align: 32, offset: 1536)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "Dimension", scope: !372, file: !371, line: 98, baseType: !5, size: 32, align: 32, offset: 1568)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "bGrid", scope: !372, file: !371, line: 99, baseType: !5, size: 32, align: 32, offset: 1600)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "bDomDecomp", scope: !372, file: !371, line: 99, baseType: !5, size: 32, align: 32, offset: 1632)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "solvent_type", scope: !372, file: !371, line: 100, baseType: !421, size: 64, align: 64, offset: 1664)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mno_index", scope: !372, file: !371, line: 101, baseType: !421, size: 64, align: 64, offset: 1728)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "cg_cm", scope: !372, file: !371, line: 102, baseType: !367, size: 64, align: 64, offset: 1792)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "shift_vec", scope: !372, file: !371, line: 103, baseType: !367, size: 64, align: 64, offset: 1856)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "nlist_sr", scope: !372, file: !371, line: 108, baseType: !426, size: 9984, align: 64, offset: 1920)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !427, size: 9984, align: 64, elements: !447)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nblist", file: !428, line: 60, baseType: !429)
!428 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nblist.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!429 = !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 36, size: 768, align: 64, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !440, !441, !442, !443, !444, !445, !446}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "il_code", scope: !429, file: !428, line: 37, baseType: !5, size: 32, align: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nri", scope: !429, file: !428, line: 39, baseType: !5, size: 32, align: 32, offset: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "maxnri", scope: !429, file: !428, line: 39, baseType: !5, size: 32, align: 32, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "nrj", scope: !429, file: !428, line: 40, baseType: !5, size: 32, align: 32, offset: 96)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "maxnrj", scope: !429, file: !428, line: 40, baseType: !5, size: 32, align: 32, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !429, file: !428, line: 41, baseType: !5, size: 32, align: 32, offset: 160)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "solvent", scope: !429, file: !428, line: 42, baseType: !5, size: 32, align: 32, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "iinr", scope: !429, file: !428, line: 43, baseType: !439, size: 64, align: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !429, file: !428, line: 44, baseType: !421, size: 64, align: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !429, file: !428, line: 45, baseType: !421, size: 64, align: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "jindex", scope: !429, file: !428, line: 46, baseType: !421, size: 64, align: 64, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "jjnr", scope: !429, file: !428, line: 47, baseType: !439, size: 64, align: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "nsatoms", scope: !429, file: !428, line: 48, baseType: !421, size: 64, align: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !429, file: !428, line: 58, baseType: !5, size: 32, align: 32, offset: 640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !429, file: !428, line: 58, baseType: !421, size: 64, align: 64, offset: 704)
!447 = !{!448}
!448 = !DISubrange(count: 13)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "nlist_lr", scope: !372, file: !371, line: 109, baseType: !426, size: 9984, align: 64, offset: 11904)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "bTwinRange", scope: !372, file: !371, line: 120, baseType: !5, size: 32, align: 32, offset: 21888)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "nlr", scope: !372, file: !371, line: 121, baseType: !5, size: 32, align: 32, offset: 21920)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "f_twin", scope: !372, file: !371, line: 122, baseType: !367, size: 64, align: 64, offset: 21952)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "fshift_twin", scope: !372, file: !371, line: 123, baseType: !367, size: 64, align: 64, offset: 22016)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "f_pme", scope: !372, file: !371, line: 126, baseType: !367, size: 64, align: 64, offset: 22080)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "bEwald", scope: !372, file: !371, line: 127, baseType: !5, size: 32, align: 32, offset: 22144)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ewaldcoeff", scope: !372, file: !371, line: 128, baseType: !221, size: 32, align: 32, offset: 22176)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "fshift", scope: !372, file: !371, line: 131, baseType: !367, size: 64, align: 64, offset: 22208)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "nmol", scope: !372, file: !371, line: 134, baseType: !5, size: 32, align: 32, offset: 22272)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mol_nr", scope: !372, file: !371, line: 135, baseType: !439, size: 64, align: 64, offset: 22336)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mol_epot", scope: !372, file: !371, line: 136, baseType: !393, size: 64, align: 64, offset: 22400)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "nstcalc", scope: !372, file: !371, line: 137, baseType: !5, size: 32, align: 32, offset: 22464)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ntype", scope: !372, file: !371, line: 140, baseType: !5, size: 32, align: 32, offset: 22496)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "bBHAM", scope: !372, file: !371, line: 141, baseType: !5, size: 32, align: 32, offset: 22528)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nbfp", scope: !372, file: !371, line: 142, baseType: !393, size: 64, align: 64, offset: 22592)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "eg_excl", scope: !372, file: !371, line: 145, baseType: !421, size: 64, align: 64, offset: 22656)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "fc_stepsize", scope: !372, file: !371, line: 148, baseType: !221, size: 32, align: 32, offset: 22720)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_graph", file: !469, line: 47, baseType: !470)
!469 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!470 = !DICompositeType(tag: DW_TAG_structure_type, file: !469, line: 38, size: 384, align: 64, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !480}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "maxbond", scope: !470, file: !469, line: 39, baseType: !5, size: 32, align: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !470, file: !469, line: 40, baseType: !5, size: 32, align: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nbound", scope: !470, file: !469, line: 41, baseType: !5, size: 32, align: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !470, file: !469, line: 42, baseType: !5, size: 32, align: 32, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !470, file: !469, line: 43, baseType: !5, size: 32, align: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "nedge", scope: !470, file: !469, line: 44, baseType: !421, size: 64, align: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "edge", scope: !470, file: !469, line: 45, baseType: !479, size: 64, align: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ishift", scope: !470, file: !469, line: 46, baseType: !481, size: 64, align: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "ivec", file: !222, line: 107, baseType: !483)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 96, align: 32, elements: !63)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_mdatoms", file: !487, line: 51, baseType: !488)
!487 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!488 = !DICompositeType(tag: DW_TAG_structure_type, file: !487, line: 40, size: 1408, align: 64, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !505, !506, !507, !508, !509, !510, !511, !512, !513}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tmass", scope: !488, file: !487, line: 41, baseType: !221, size: 32, align: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !488, file: !487, line: 42, baseType: !5, size: 32, align: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "massA", scope: !488, file: !487, line: 43, baseType: !393, size: 64, align: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "massB", scope: !488, file: !487, line: 43, baseType: !393, size: 64, align: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "massT", scope: !488, file: !487, line: 43, baseType: !393, size: 64, align: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "invmass", scope: !488, file: !487, line: 43, baseType: !393, size: 64, align: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "chargeA", scope: !488, file: !487, line: 44, baseType: !393, size: 64, align: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "chargeB", scope: !488, file: !487, line: 44, baseType: !393, size: 64, align: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "chargeT", scope: !488, file: !487, line: 44, baseType: !393, size: 64, align: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "bPerturbed", scope: !488, file: !487, line: 45, baseType: !421, size: 64, align: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !488, file: !487, line: 46, baseType: !421, size: 64, align: 64, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "typeA", scope: !488, file: !487, line: 47, baseType: !421, size: 64, align: 64, offset: 640)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !488, file: !487, line: 47, baseType: !421, size: 64, align: 64, offset: 704)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !488, file: !487, line: 48, baseType: !504, size: 64, align: 64, offset: 768)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "cTC", scope: !488, file: !487, line: 49, baseType: !504, size: 64, align: 64, offset: 832)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "cENER", scope: !488, file: !487, line: 49, baseType: !504, size: 64, align: 64, offset: 896)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "cACC", scope: !488, file: !487, line: 49, baseType: !504, size: 64, align: 64, offset: 960)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "cFREEZE", scope: !488, file: !487, line: 49, baseType: !504, size: 64, align: 64, offset: 1024)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "cXTC", scope: !488, file: !487, line: 49, baseType: !504, size: 64, align: 64, offset: 1088)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "cVCM", scope: !488, file: !487, line: 49, baseType: !504, size: 64, align: 64, offset: 1152)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "cU1", scope: !488, file: !487, line: 50, baseType: !504, size: 64, align: 64, offset: 1216)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "cU2", scope: !488, file: !487, line: 50, baseType: !504, size: 64, align: 64, offset: 1280)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "cORF", scope: !488, file: !487, line: 50, baseType: !504, size: 64, align: 64, offset: 1344)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_fcdata", file: !516, line: 95, baseType: !517)
!516 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/fcdata.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!517 = !DICompositeType(tag: DW_TAG_structure_type, file: !516, line: 92, size: 2048, align: 64, elements: !518)
!518 = !{!519, !538}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "disres", scope: !517, file: !516, line: 93, baseType: !520, size: 640, align: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_disresdata", file: !516, line: 58, baseType: !521)
!521 = !DICompositeType(tag: DW_TAG_structure_type, file: !516, line: 39, size: 640, align: 64, elements: !522)
!522 = !{!523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dr_weighting", scope: !521, file: !516, line: 40, baseType: !5, size: 32, align: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "dr_bMixed", scope: !521, file: !516, line: 41, baseType: !5, size: 32, align: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "dr_fc", scope: !521, file: !516, line: 43, baseType: !221, size: 32, align: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "dr_tau", scope: !521, file: !516, line: 46, baseType: !221, size: 32, align: 32, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ETerm", scope: !521, file: !516, line: 47, baseType: !221, size: 32, align: 32, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ETerm1", scope: !521, file: !516, line: 48, baseType: !221, size: 32, align: 32, offset: 160)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "exp_min_t_tau", scope: !521, file: !516, line: 49, baseType: !221, size: 32, align: 32, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !521, file: !516, line: 50, baseType: !5, size: 32, align: 32, offset: 224)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "npr", scope: !521, file: !516, line: 51, baseType: !5, size: 32, align: 32, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sumviol", scope: !521, file: !516, line: 52, baseType: !221, size: 32, align: 32, offset: 288)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !521, file: !516, line: 53, baseType: !393, size: 64, align: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "rav", scope: !521, file: !516, line: 54, baseType: !393, size: 64, align: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "Rtl_6", scope: !521, file: !516, line: 55, baseType: !393, size: 64, align: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "Rt_6", scope: !521, file: !516, line: 56, baseType: !393, size: 64, align: 64, offset: 512)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "Rav_6", scope: !521, file: !516, line: 57, baseType: !393, size: 64, align: 64, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "orires", scope: !517, file: !516, line: 94, baseType: !539, size: 1408, align: 64, offset: 640)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_oriresdata", file: !516, line: 84, baseType: !540)
!540 = !DICompositeType(tag: DW_TAG_structure_type, file: !516, line: 61, size: 1408, align: 64, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !557, !560, !566, !567, !568, !569, !570, !571, !572, !573}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "fc", scope: !540, file: !516, line: 62, baseType: !221, size: 32, align: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "edt", scope: !540, file: !516, line: 63, baseType: !221, size: 32, align: 32, offset: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "edt1", scope: !540, file: !516, line: 64, baseType: !221, size: 32, align: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "exp_min_t_tau", scope: !540, file: !516, line: 65, baseType: !221, size: 32, align: 32, offset: 96)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !540, file: !516, line: 66, baseType: !5, size: 32, align: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nex", scope: !540, file: !516, line: 67, baseType: !5, size: 32, align: 32, offset: 160)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nref", scope: !540, file: !516, line: 68, baseType: !5, size: 32, align: 32, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "invmref", scope: !540, file: !516, line: 69, baseType: !221, size: 32, align: 32, offset: 224)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mref", scope: !540, file: !516, line: 70, baseType: !393, size: 64, align: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "xref", scope: !540, file: !516, line: 71, baseType: !367, size: 64, align: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "xtmp", scope: !540, file: !516, line: 72, baseType: !367, size: 64, align: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "R", scope: !540, file: !516, line: 73, baseType: !554, size: 288, align: 32, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "matrix", file: !222, line: 103, baseType: !555)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 288, align: 32, elements: !556)
!556 = !{!64, !64}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "S", scope: !540, file: !516, line: 74, baseType: !558, size: 64, align: 64, offset: 768)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64, align: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "tensor", file: !222, line: 105, baseType: !555)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "Dinsl", scope: !540, file: !516, line: 75, baseType: !561, size: 64, align: 64, offset: 832)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec5", file: !516, line: 36, baseType: !563)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 160, align: 32, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 5)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "Dins", scope: !540, file: !516, line: 76, baseType: !561, size: 64, align: 64, offset: 896)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "Dtav", scope: !540, file: !516, line: 77, baseType: !561, size: 64, align: 64, offset: 960)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "oinsl", scope: !540, file: !516, line: 78, baseType: !393, size: 64, align: 64, offset: 1024)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "oins", scope: !540, file: !516, line: 79, baseType: !393, size: 64, align: 64, offset: 1088)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "otav", scope: !540, file: !516, line: 80, baseType: !393, size: 64, align: 64, offset: 1152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rmsdev", scope: !540, file: !516, line: 81, baseType: !221, size: 32, align: 32, offset: 1216)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !540, file: !516, line: 82, baseType: !561, size: 64, align: 64, offset: 1280)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "TMP", scope: !540, file: !516, line: 83, baseType: !574, size: 64, align: 64, offset: 1344)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64, align: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!576 = !{i32 2, !"Dwarf Version", i32 2}
!577 = !{i32 2, !"Debug Info Version", i32 700000003}
!578 = !{i32 1, !"PIC Level", i32 2}
!579 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!580 = !DIExpression()
!581 = !DILocation(line: 348, column: 40, scope: !7)
!582 = !DILocation(line: 348, column: 50, scope: !7)
!583 = !DILocation(line: 349, column: 12, scope: !584)
!584 = distinct !DILexicalBlock(scope: !7, file: !8, line: 349, column: 6)
!585 = !DILocation(line: 349, column: 6, scope: !584)
!586 = !{!587, !591, i64 12}
!587 = !{!"__sFILE", !588, i64 0, !591, i64 8, !591, i64 12, !592, i64 16, !592, i64 18, !593, i64 24, !591, i64 40, !588, i64 48, !588, i64 56, !588, i64 64, !588, i64 72, !588, i64 80, !593, i64 88, !588, i64 104, !591, i64 112, !589, i64 116, !589, i64 119, !593, i64 120, !591, i64 136, !594, i64 144}
!588 = !{!"any pointer", !589, i64 0}
!589 = !{!"omnipotent char", !590, i64 0}
!590 = !{!"Simple C/C++ TBAA"}
!591 = !{!"int", !589, i64 0}
!592 = !{!"short", !589, i64 0}
!593 = !{!"__sbuf", !588, i64 0, !591, i64 8}
!594 = !{!"long long", !589, i64 0}
!595 = !DILocation(line: 349, column: 15, scope: !584)
!596 = !DILocation(line: 349, column: 20, scope: !584)
!597 = !DILocation(line: 350, column: 10, scope: !584)
!598 = !DILocation(line: 349, column: 38, scope: !584)
!599 = !{!587, !591, i64 40}
!600 = !DILocation(line: 349, column: 31, scope: !584)
!601 = !DILocation(line: 349, column: 59, scope: !584)
!602 = !DILocation(line: 349, column: 47, scope: !584)
!603 = !DILocation(line: 350, column: 23, scope: !584)
!604 = !DILocation(line: 350, column: 16, scope: !584)
!605 = !DILocation(line: 350, column: 18, scope: !584)
!606 = !{!587, !588, i64 0}
!607 = !DILocation(line: 350, column: 21, scope: !584)
!608 = !{!589, !589, i64 0}
!609 = !DILocation(line: 350, column: 3, scope: !584)
!610 = !DILocation(line: 352, column: 11, scope: !584)
!611 = !DILocation(line: 352, column: 3, scope: !584)
!612 = !DILocation(line: 353, column: 1, scope: !7)
!613 = !DILocation(line: 114, column: 15, scope: !75)
!614 = !DILocation(line: 116, column: 20, scope: !75)
!615 = !DILocation(line: 116, column: 12, scope: !75)
!616 = !DILocation(line: 116, column: 57, scope: !75)
!617 = !DILocation(line: 116, column: 45, scope: !75)
!618 = !DILocation(line: 116, column: 5, scope: !75)
!619 = !DILocation(line: 204, column: 53, scope: !81)
!620 = !DILocation(line: 205, column: 16, scope: !81)
!621 = !DILocation(line: 205, column: 23, scope: !81)
!622 = !DILocation(line: 205, column: 26, scope: !81)
!623 = !DILocation(line: 205, column: 47, scope: !81)
!624 = !DILocation(line: 205, column: 5, scope: !81)
!625 = !DILocation(line: 207, column: 54, scope: !88)
!626 = !DILocation(line: 208, column: 16, scope: !88)
!627 = !DILocation(line: 208, column: 23, scope: !88)
!628 = !DILocation(line: 208, column: 26, scope: !88)
!629 = !DILocation(line: 208, column: 46, scope: !88)
!630 = !DILocation(line: 208, column: 5, scope: !88)
!631 = !DILocation(line: 210, column: 59, scope: !94)
!632 = !DILocation(line: 211, column: 16, scope: !94)
!633 = !DILocation(line: 211, column: 23, scope: !94)
!634 = !DILocation(line: 211, column: 26, scope: !94)
!635 = !DILocation(line: 211, column: 47, scope: !94)
!636 = !DILocation(line: 211, column: 5, scope: !94)
!637 = !DILocation(line: 213, column: 50, scope: !100)
!638 = !DILocation(line: 214, column: 12, scope: !100)
!639 = !DILocation(line: 214, column: 33, scope: !100)
!640 = !DILocation(line: 214, column: 5, scope: !100)
!641 = !DILocation(line: 216, column: 51, scope: !103)
!642 = !DILocation(line: 217, column: 12, scope: !103)
!643 = !DILocation(line: 217, column: 32, scope: !103)
!644 = !DILocation(line: 217, column: 5, scope: !103)
!645 = !DILocation(line: 219, column: 56, scope: !106)
!646 = !DILocation(line: 220, column: 12, scope: !106)
!647 = !DILocation(line: 220, column: 33, scope: !106)
!648 = !DILocation(line: 220, column: 5, scope: !106)
!649 = !DILocation(line: 222, column: 50, scope: !109)
!650 = !DILocation(line: 223, column: 16, scope: !109)
!651 = !DILocation(line: 223, column: 5, scope: !109)
!652 = !DILocation(line: 225, column: 51, scope: !112)
!653 = !DILocation(line: 226, column: 16, scope: !112)
!654 = !DILocation(line: 226, column: 5, scope: !112)
!655 = !DILocation(line: 228, column: 56, scope: !115)
!656 = !DILocation(line: 229, column: 16, scope: !115)
!657 = !DILocation(line: 229, column: 5, scope: !115)
!658 = !DILocation(line: 231, column: 52, scope: !118)
!659 = !DILocation(line: 232, column: 44, scope: !118)
!660 = !DILocation(line: 233, column: 13, scope: !118)
!661 = !DILocation(line: 234, column: 26, scope: !118)
!662 = !DILocation(line: 234, column: 5, scope: !118)
!663 = !DILocation(line: 236, column: 53, scope: !127)
!664 = !DILocation(line: 237, column: 51, scope: !127)
!665 = !DILocation(line: 238, column: 13, scope: !127)
!666 = !DILocation(line: 239, column: 26, scope: !127)
!667 = !DILocation(line: 239, column: 12, scope: !127)
!668 = !DILocation(line: 239, column: 5, scope: !127)
!669 = !DILocation(line: 242, column: 58, scope: !136)
!670 = !DILocation(line: 246, column: 7, scope: !136)
!671 = !DILocation(line: 248, column: 26, scope: !136)
!672 = !DILocation(line: 248, column: 33, scope: !136)
!673 = !DILocation(line: 248, column: 5, scope: !136)
!674 = !DILocation(line: 257, column: 53, scope: !149)
!675 = !DILocation(line: 204, column: 53, scope: !81, inlinedAt: !676)
!676 = distinct !DILocation(line: 258, column: 12, scope: !149)
!677 = !DILocation(line: 205, column: 16, scope: !81, inlinedAt: !676)
!678 = !DILocation(line: 205, column: 47, scope: !81, inlinedAt: !676)
!679 = !DILocation(line: 205, column: 23, scope: !81, inlinedAt: !676)
!680 = !DILocation(line: 258, column: 60, scope: !149)
!681 = !DILocation(line: 258, column: 36, scope: !149)
!682 = !DILocation(line: 258, column: 5, scope: !149)
!683 = !DILocation(line: 260, column: 54, scope: !152)
!684 = !DILocation(line: 207, column: 54, scope: !88, inlinedAt: !685)
!685 = distinct !DILocation(line: 261, column: 12, scope: !152)
!686 = !DILocation(line: 208, column: 16, scope: !88, inlinedAt: !685)
!687 = !DILocation(line: 208, column: 46, scope: !88, inlinedAt: !685)
!688 = !DILocation(line: 208, column: 23, scope: !88, inlinedAt: !685)
!689 = !DILocation(line: 261, column: 59, scope: !152)
!690 = !DILocation(line: 261, column: 36, scope: !152)
!691 = !DILocation(line: 261, column: 5, scope: !152)
!692 = !DILocation(line: 263, column: 59, scope: !155)
!693 = !DILocation(line: 210, column: 59, scope: !94, inlinedAt: !694)
!694 = distinct !DILocation(line: 264, column: 12, scope: !155)
!695 = !DILocation(line: 211, column: 16, scope: !94, inlinedAt: !694)
!696 = !DILocation(line: 211, column: 47, scope: !94, inlinedAt: !694)
!697 = !DILocation(line: 211, column: 23, scope: !94, inlinedAt: !694)
!698 = !DILocation(line: 264, column: 60, scope: !155)
!699 = !DILocation(line: 264, column: 36, scope: !155)
!700 = !DILocation(line: 264, column: 5, scope: !155)
!701 = !DILocation(line: 642, column: 45, scope: !158)
!702 = !DILocation(line: 642, column: 57, scope: !158)
!703 = !DILocation(line: 642, column: 72, scope: !158)
!704 = !DILocation(line: 643, column: 27, scope: !158)
!705 = !DILocation(line: 643, column: 37, scope: !158)
!706 = !DILocation(line: 644, column: 23, scope: !158)
!707 = !DILocation(line: 644, column: 13, scope: !158)
!708 = !{!709, !709, i64 0}
!709 = !{!"float", !589, i64 0}
!710 = !DILocation(line: 644, column: 51, scope: !158)
!711 = !DILocation(line: 644, column: 41, scope: !158)
!712 = !DILocation(line: 645, column: 1, scope: !158)
!713 = !DILocation(line: 647, column: 45, scope: !172)
!714 = !DILocation(line: 647, column: 58, scope: !172)
!715 = !DILocation(line: 647, column: 74, scope: !172)
!716 = !DILocation(line: 648, column: 28, scope: !172)
!717 = !DILocation(line: 648, column: 38, scope: !172)
!718 = !DIExpression(DW_OP_bit_piece, 0, 64)
!719 = !DIExpression(DW_OP_bit_piece, 64, 64)
!720 = !DILocation(line: 649, column: 13, scope: !172)
!721 = !{!722, !722, i64 0}
!722 = !{!"double", !589, i64 0}
!723 = !DILocation(line: 649, column: 41, scope: !172)
!724 = !DILocation(line: 650, column: 1, scope: !172)
!725 = !DILocation(line: 652, column: 47, scope: !186)
!726 = !DILocation(line: 652, column: 59, scope: !186)
!727 = !DILocation(line: 652, column: 74, scope: !186)
!728 = !DILocation(line: 653, column: 27, scope: !186)
!729 = !DILocation(line: 653, column: 37, scope: !186)
!730 = !DILocation(line: 654, column: 23, scope: !186)
!731 = !DILocation(line: 654, column: 13, scope: !186)
!732 = !DILocation(line: 654, column: 51, scope: !186)
!733 = !DILocation(line: 654, column: 41, scope: !186)
!734 = !DILocation(line: 655, column: 1, scope: !186)
!735 = !DILocation(line: 657, column: 47, scope: !192)
!736 = !DILocation(line: 657, column: 60, scope: !192)
!737 = !DILocation(line: 657, column: 76, scope: !192)
!738 = !DILocation(line: 658, column: 28, scope: !192)
!739 = !DILocation(line: 658, column: 38, scope: !192)
!740 = !DILocation(line: 659, column: 13, scope: !192)
!741 = !DILocation(line: 659, column: 41, scope: !192)
!742 = !DILocation(line: 660, column: 1, scope: !192)
!743 = !DILocation(line: 114, column: 31, scope: !198)
!744 = !DILocation(line: 114, column: 40, scope: !198)
!745 = !DILocation(line: 116, column: 7, scope: !198)
!746 = !DILocation(line: 118, column: 21, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !1, line: 118, column: 3)
!748 = distinct !DILexicalBlock(scope: !198, file: !1, line: 118, column: 3)
!749 = !{!750, !591, i64 0}
!750 = !{!"", !591, i64 0, !591, i64 4, !591, i64 8, !588, i64 16, !588, i64 24, !589, i64 32}
!751 = !DILocation(line: 118, column: 14, scope: !747)
!752 = !DILocation(line: 118, column: 3, scope: !748)
!753 = !DILocation(line: 119, column: 15, scope: !754)
!754 = distinct !DILexicalBlock(scope: !747, file: !1, line: 119, column: 9)
!755 = !{!750, !588, i64 16}
!756 = !DILocation(line: 119, column: 9, scope: !754)
!757 = !{!591, !591, i64 0}
!758 = !DILocation(line: 119, column: 27, scope: !754)
!759 = !DILocation(line: 119, column: 9, scope: !747)
!760 = !DILocation(line: 122, column: 1, scope: !198)
