; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/ifunc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
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

; Function Attrs: optsize
declare float @bonds(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @g96bonds(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @morsebonds(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @cubicbonds(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @unimplemented(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @angles(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @g96angles(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @pdihs(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @rbdihs(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @idihs(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @do_14(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @water_pol(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @posres(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @ta_disres(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @orires(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @angres(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: optsize
declare float @angresz(i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*) #0

; Function Attrs: nounwind optsize readonly uwtable
define i32 @have_interaction(%struct.t_idef* nocapture %idef, i32 %ftype) #1 {
entry:
  %ntypes = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0
  %0 = load i32* %ntypes, align 4, !tbaa !0
  %cmp5 = icmp sgt i32 %0, 0
  br i1 %cmp5, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %entry
  %functype = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 3
  %1 = load i32** %functype, align 8, !tbaa !3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %2, %0
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %3, %ftype
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp1, label %return, label %for.cond

return:                                           ; preds = %for.cond, %for.body, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0
}

attributes #0 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
