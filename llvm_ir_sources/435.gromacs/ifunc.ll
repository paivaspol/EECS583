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
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #5
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #2 {
  %1 = fcmp ord float %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #6
  %4 = fcmp une float %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #2 {
  %1 = fcmp ord double %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #6
  %4 = fcmp une double %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #2 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #6
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #2 {
  %1 = tail call float @llvm.fabs.f32(float %__x) #6
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #6
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #6
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #2 {
  %1 = fcmp uno float %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #2 {
  %1 = fcmp uno double %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #2 {
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #2 {
  %1 = bitcast float %__x to i32
  %2 = lshr i32 %1, 31
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #2 {
  %1 = bitcast double %__x to i64
  %2 = lshr i64 %1, 63
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #2 {
  %1 = bitcast x86_fp80 %__x to i80
  %2 = lshr i80 %1, 79
  %3 = trunc i80 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #2 {
  %1 = fcmp ord float %__x, 0.000000e+00
  %2 = tail call float @llvm.fabs.f32(float %__x) #3
  %3 = fcmp une float %2, 0x7FF0000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #2 {
  %1 = fcmp ord double %__x, 0.000000e+00
  %2 = tail call double @llvm.fabs.f64(double %__x) #3
  %3 = fcmp une double %2, 0x7FF0000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #2 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #3
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #5
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !14
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  %1 = tail call { double, double } @__sincos_stret(double %__x) #5
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #5
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !14
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #5
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: optsize
declare float @bonds(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @g96bonds(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @morsebonds(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @cubicbonds(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @unimplemented(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @angles(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @g96angles(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @pdihs(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @rbdihs(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @idihs(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @do_14(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @water_pol(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @posres(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @ta_disres(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @orires(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @angres(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare float @angresz(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @have_interaction(%struct.t_idef* nocapture readonly %idef, i32 %ftype) #4 {
  %1 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !18
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  %5 = load i32** %4, align 8, !tbaa !20
  %6 = sext i32 %2 to i64
  br label %9

; <label>:7                                       ; preds = %9
  %8 = icmp slt i64 %indvars.iv.next, %6
  br i1 %8, label %9, label %._crit_edge

; <label>:9                                       ; preds = %.lr.ph, %7
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %7 ]
  %10 = getelementptr inbounds i32* %5, i64 %indvars.iv
  %11 = load i32* %10, align 4, !tbaa !21
  %12 = icmp eq i32 %11, %ftype
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %12, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %9, %7, %0
  %.0 = phi i32 [ 0, %0 ], [ 1, %9 ], [ 0, %7 ]
  ret i32 %.0
}

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !5, i64 0}
!18 = !{!19, !7, i64 0}
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!20 = !{!19, !4, i64 16}
!21 = !{!7, !7, i64 0}
