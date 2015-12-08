; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/mdebin.c'
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
%struct.t_mdebin = type { %struct.t_ebin*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.t_ebin = type { i32, i8**, %struct.t_energy* }
%struct.t_energy = type { float, double, double, float }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_enxframe = type { float, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32*, %struct.t_energy*, float*, float*, float** }

@init_mdebin.vir_nm = internal global [9 x i8*] [i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"Vir-XX\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Vir-XY\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Vir-XZ\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"Vir-YX\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"Vir-YY\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"Vir-YZ\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"Vir-ZX\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"Vir-ZY\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"Vir-ZZ\00", align 1
@init_mdebin.sv_nm = internal global [9 x i8*] [i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str17, i32 0, i32 0)], align 16
@.str9 = private unnamed_addr constant [12 x i8] c"ShakeVir-XX\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"ShakeVir-XY\00", align 1
@.str11 = private unnamed_addr constant [12 x i8] c"ShakeVir-XZ\00", align 1
@.str12 = private unnamed_addr constant [12 x i8] c"ShakeVir-YX\00", align 1
@.str13 = private unnamed_addr constant [12 x i8] c"ShakeVir-YY\00", align 1
@.str14 = private unnamed_addr constant [12 x i8] c"ShakeVir-YZ\00", align 1
@.str15 = private unnamed_addr constant [12 x i8] c"ShakeVir-ZX\00", align 1
@.str16 = private unnamed_addr constant [12 x i8] c"ShakeVir-ZY\00", align 1
@.str17 = private unnamed_addr constant [12 x i8] c"ShakeVir-ZZ\00", align 1
@init_mdebin.fv_nm = internal global [9 x i8*] [i8* getelementptr inbounds ([12 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str26, i32 0, i32 0)], align 16
@.str18 = private unnamed_addr constant [12 x i8] c"ForceVir-XX\00", align 1
@.str19 = private unnamed_addr constant [12 x i8] c"ForceVir-XY\00", align 1
@.str20 = private unnamed_addr constant [12 x i8] c"ForceVir-XZ\00", align 1
@.str21 = private unnamed_addr constant [12 x i8] c"ForceVir-YX\00", align 1
@.str22 = private unnamed_addr constant [12 x i8] c"ForceVir-YY\00", align 1
@.str23 = private unnamed_addr constant [12 x i8] c"ForceVir-YZ\00", align 1
@.str24 = private unnamed_addr constant [12 x i8] c"ForceVir-ZX\00", align 1
@.str25 = private unnamed_addr constant [12 x i8] c"ForceVir-ZY\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"ForceVir-ZZ\00", align 1
@init_mdebin.pres_nm = internal global [9 x i8*] [i8* getelementptr inbounds ([14 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str35, i32 0, i32 0)], align 16
@.str27 = private unnamed_addr constant [14 x i8] c"Pres-XX (bar)\00", align 1
@.str28 = private unnamed_addr constant [14 x i8] c"Pres-XY (bar)\00", align 1
@.str29 = private unnamed_addr constant [14 x i8] c"Pres-XZ (bar)\00", align 1
@.str30 = private unnamed_addr constant [14 x i8] c"Pres-YX (bar)\00", align 1
@.str31 = private unnamed_addr constant [14 x i8] c"Pres-YY (bar)\00", align 1
@.str32 = private unnamed_addr constant [14 x i8] c"Pres-YZ (bar)\00", align 1
@.str33 = private unnamed_addr constant [14 x i8] c"Pres-ZX (bar)\00", align 1
@.str34 = private unnamed_addr constant [14 x i8] c"Pres-ZY (bar)\00", align 1
@.str35 = private unnamed_addr constant [14 x i8] c"Pres-ZZ (bar)\00", align 1
@init_mdebin.surft_nm = internal global [1 x i8*] [i8* getelementptr inbounds ([14 x i8]* @.str36, i32 0, i32 0)], align 8
@.str36 = private unnamed_addr constant [14 x i8] c"#Surf*SurfTen\00", align 1
@init_mdebin.mu_nm = internal global [3 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0)], align 16
@.str37 = private unnamed_addr constant [5 x i8] c"Mu-X\00", align 1
@.str38 = private unnamed_addr constant [5 x i8] c"Mu-Y\00", align 1
@.str39 = private unnamed_addr constant [5 x i8] c"Mu-Z\00", align 1
@init_mdebin.vcos_nm = internal global [1 x i8*] [i8* getelementptr inbounds ([12 x i8]* @.str40, i32 0, i32 0)], align 8
@.str40 = private unnamed_addr constant [12 x i8] c"2CosZ*Vel-X\00", align 1
@init_mdebin.visc_nm = internal global [1 x i8*] [i8* getelementptr inbounds ([17 x i8]* @.str41, i32 0, i32 0)], align 8
@.str41 = private unnamed_addr constant [17 x i8] c"1/Viscosity (SI)\00", align 1
@init_mdebin.grpnms = internal unnamed_addr global i8** null, align 8
@bEner = internal global [44 x i32] zeroinitializer, align 16
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str42 = private unnamed_addr constant [4 x i8] c"DUM\00", align 1
@f_nre = internal unnamed_addr global i32 0, align 4
@bShake = internal unnamed_addr global i32 0, align 4
@bPC = internal unnamed_addr global i32 0, align 4
@bTricl = internal unnamed_addr global i32 0, align 4
@.str43 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str44 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/mdebin.c\00", align 1
@tricl_boxs_nm = internal global [9 x i8*] [i8* getelementptr inbounds ([7 x i8]* @.str97, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str98, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str99, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str100, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str94, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str96, i32 0, i32 0)], align 16
@boxs_nm = internal global [6 x i8*] [i8* getelementptr inbounds ([6 x i8]* @.str91, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str92, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str93, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str94, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str96, i32 0, i32 0)], align 16
@bEInd = internal unnamed_addr global [7 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str45 = private unnamed_addr constant [9 x i8] c"md->igrp\00", align 1
@.str46 = private unnamed_addr constant [4 x i8] c"gnm\00", align 1
@.str47 = private unnamed_addr constant [7 x i8] c"gnm[k]\00", align 1
@.str48 = private unnamed_addr constant [9 x i8] c"%s:%s-%s\00", align 1
@egrp_nm = external global [8 x i8*]
@.str49 = private unnamed_addr constant [7 x i8] c"grpnms\00", align 1
@.str50 = private unnamed_addr constant [5 x i8] c"T-%s\00", align 1
@.str51 = private unnamed_addr constant [6 x i8] c"Xi-%s\00", align 1
@.str52 = private unnamed_addr constant [8 x i8] c"Lamb-%s\00", align 1
@.str53 = private unnamed_addr constant [6 x i8] c"Ux-%s\00", align 1
@.str54 = private unnamed_addr constant [6 x i8] c"Uy-%s\00", align 1
@.str55 = private unnamed_addr constant [6 x i8] c"Uz-%s\00", align 1
@upd_mdebin.ttt = internal unnamed_addr global float* null, align 8
@upd_mdebin.uuu = internal unnamed_addr global [3 x float]* null, align 8
@.str56 = private unnamed_addr constant [4 x i8] c"ttt\00", align 1
@.str57 = private unnamed_addr constant [4 x i8] c"uuu\00", align 1
@.str58 = private unnamed_addr constant [7 x i8] c"%g %g\0A\00", align 1
@.str59 = private unnamed_addr constant [66 x i8] c"   %12s   %12s   %12s   %12s\0A   %12d   %12.5f   %12.5f   %12.5f\0A\0A\00", align 1
@.str60 = private unnamed_addr constant [5 x i8] c"Step\00", align 1
@.str61 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str62 = private unnamed_addr constant [7 x i8] c"Lambda\00", align 1
@.str63 = private unnamed_addr constant [10 x i8] c"Annealing\00", align 1
@print_ebin.grpnms = internal unnamed_addr global i8** null, align 8
@.str64 = private unnamed_addr constant [9 x i8] c"(kJ/mol)\00", align 1
@.str65 = private unnamed_addr constant [16 x i8] c"A V E R A G E S\00", align 1
@.str66 = private unnamed_addr constant [32 x i8] c"R M S - F L U C T U A T I O N S\00", align 1
@.str67 = private unnamed_addr constant [24 x i8] c"Invalid print mode (%d)\00", align 1
@.str68 = private unnamed_addr constant [16 x i8] c"   Energies %s\0A\00", align 1
@.str70 = private unnamed_addr constant [20 x i8] c"   Shake Virial %s\0A\00", align 1
@.str71 = private unnamed_addr constant [20 x i8] c"   Force Virial %s\0A\00", align 1
@.str72 = private unnamed_addr constant [20 x i8] c"   Total Virial %s\0A\00", align 1
@.str73 = private unnamed_addr constant [19 x i8] c"   Pressure (bar)\0A\00", align 1
@.str74 = private unnamed_addr constant [25 x i8] c"   Total Dipole (Debye)\0A\00", align 1
@.str75 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str76 = private unnamed_addr constant [8 x i8] c"Epot %s\00", align 1
@.str77 = private unnamed_addr constant [8 x i8] c"%15s   \00", align 1
@.str78 = private unnamed_addr constant [8 x i8] c"%12s   \00", align 1
@.str79 = private unnamed_addr constant [5 x i8] c"%15s\00", align 1
@.str80 = private unnamed_addr constant [27 x i8] c"%15s   %12s   %12s   %12s\0A\00", align 1
@.str81 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str82 = private unnamed_addr constant [3 x i8] c"Ux\00", align 1
@.str83 = private unnamed_addr constant [3 x i8] c"Uy\00", align 1
@.str84 = private unnamed_addr constant [3 x i8] c"Uz\00", align 1
@.str85 = private unnamed_addr constant [11 x i8] c"\09<======  \00", align 1
@.str86 = private unnamed_addr constant [7 x i8] c"  ==>\0A\00", align 1
@.str87 = private unnamed_addr constant [19 x i8] c"\09<====  %s  ====>\0A\00", align 1
@.str88 = private unnamed_addr constant [7 x i8] c"\09<==  \00", align 1
@.str89 = private unnamed_addr constant [12 x i8] c"  ======>\0A\0A\00", align 1
@.str91 = private unnamed_addr constant [6 x i8] c"Box-X\00", align 1
@.str92 = private unnamed_addr constant [6 x i8] c"Box-Y\00", align 1
@.str93 = private unnamed_addr constant [6 x i8] c"Box-Z\00", align 1
@.str94 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str95 = private unnamed_addr constant [13 x i8] c"Density (SI)\00", align 1
@.str96 = private unnamed_addr constant [3 x i8] c"pV\00", align 1
@.str97 = private unnamed_addr constant [7 x i8] c"Box-XX\00", align 1
@.str98 = private unnamed_addr constant [7 x i8] c"Box-YX\00", align 1
@.str99 = private unnamed_addr constant [7 x i8] c"Box-YY\00", align 1
@.str100 = private unnamed_addr constant [7 x i8] c"Box-ZX\00", align 1
@.str101 = private unnamed_addr constant [7 x i8] c"Box-ZY\00", align 1
@.str102 = private unnamed_addr constant [7 x i8] c"Box-ZZ\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.t_mdebin* @init_mdebin(i32 %fp_ene, %struct.t_groups* nocapture %grps, %struct.t_atoms* nocapture %atoms, %struct.t_idef* nocapture %idef, i32 %bLR, i32 %bLJLR, i32 %bBHAM, i32 %b14, i32 %bFEP, i32 %bPcoupl, i32 %bDispCorr, i32 %bTriclinic, i32 %bNoseHoover, %struct.t_commrec* %cr) #0 {
entry:
  %ener_nm = alloca [44 x i8*], align 16
  %buf = alloca [256 x i8], align 16
  %0 = bitcast [44 x i8*]* %ener_nm to i8*
  call void @llvm.lifetime.start(i64 352, i8* %0) #1
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #1
  %tobool62 = icmp eq i32 %bDispCorr, 0
  %nr = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 21, i32 0
  %nr79 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 23, i32 0
  %lnot = icmp eq i32 %bBHAM, 0
  %lnot.ext = zext i1 %lnot to i32
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv639 = phi i64 [ 0, %entry ], [ %indvars.iv.next640, %for.inc ]
  %arrayidx = getelementptr inbounds [44 x i32]* @bEner, i64 0, i64 %indvars.iv639
  store i32 0, i32* %arrayidx, align 4, !tbaa !0
  %2 = trunc i64 %indvars.iv639 to i32
  switch i32 %2, label %if.else28 [
    i32 13, label %if.then
    i32 14, label %if.then5
    i32 18, label %if.then10
    i32 15, label %if.then15
    i32 11, label %if.then20
    i32 12, label %if.then25
  ]

if.then:                                          ; preds = %for.body
  store i32 %lnot.ext, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc

if.then5:                                         ; preds = %for.body
  store i32 %bBHAM, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc

if.then10:                                        ; preds = %for.body
  store i32 %bLR, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc

if.then15:                                        ; preds = %for.body
  store i32 %bLJLR, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc

if.then20:                                        ; preds = %for.body
  store i32 %b14, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc

if.then25:                                        ; preds = %for.body
  store i32 %b14, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc

if.else28:                                        ; preds = %for.body
  %3 = and i32 %2, -2
  %4 = icmp eq i32 %3, 42
  br i1 %4, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.else28
  store i32 %bFEP, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc

if.else34:                                        ; preds = %if.else28
  %name = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv639, i32 0
  %5 = load i8** %name, align 8, !tbaa !3
  %call = call i8* @strstr(i8* %5, i8* getelementptr inbounds ([4 x i8]* @.str42, i64 0, i64 0)) #5
  %cmp37 = icmp eq i8* %call, null
  br i1 %cmp37, label %lor.lhs.false38, label %if.then42

lor.lhs.false38:                                  ; preds = %if.else34
  switch i32 %2, label %if.else90 [
    i32 29, label %if.then42
    i32 27, label %if.then42
    i32 41, label %if.then57
    i32 40, label %if.then57
    i32 39, label %if.then57
    i32 38, label %if.then57
    i32 37, label %if.then57
    i32 17, label %if.then57
    i32 16, label %land.lhs.true
    i32 22, label %if.then68
    i32 24, label %if.then76
    i32 4, label %if.then87
  ]

if.then42:                                        ; preds = %lor.lhs.false38, %lor.lhs.false38, %if.else34
  store i32 0, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc

if.then57:                                        ; preds = %lor.lhs.false38, %lor.lhs.false38, %lor.lhs.false38, %lor.lhs.false38, %lor.lhs.false38, %lor.lhs.false38
  store i32 1, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false38
  br i1 %tobool62, label %if.else90, label %if.then63

if.then63:                                        ; preds = %land.lhs.true
  store i32 1, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc

if.then68:                                        ; preds = %lor.lhs.false38
  %6 = load i32* %nr, align 4, !tbaa !0
  %cmp70 = icmp sgt i32 %6, 0
  %conv = zext i1 %cmp70 to i32
  store i32 %conv, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc

if.then76:                                        ; preds = %lor.lhs.false38
  %7 = load i32* %nr79, align 4, !tbaa !0
  %cmp80 = icmp sgt i32 %7, 0
  %conv81 = zext i1 %cmp80 to i32
  store i32 %conv81, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc

if.then87:                                        ; preds = %lor.lhs.false38
  store i32 0, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc

if.else90:                                        ; preds = %land.lhs.true, %lor.lhs.false38
  %nr94 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv639, i32 0
  %8 = load i32* %nr94, align 4, !tbaa !0
  %cmp95 = icmp sgt i32 %8, 0
  %conv96 = zext i1 %cmp95 to i32
  store i32 %conv96, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.then10, %if.then20, %if.then31, %if.then57, %if.then68, %if.then87, %if.else90, %if.then76, %if.then63, %if.then42, %if.then25, %if.then15, %if.then5
  %indvars.iv.next640 = add i64 %indvars.iv639, 1
  %lftr.wideiv641 = trunc i64 %indvars.iv.next640 to i32
  %exitcond642 = icmp eq i32 %lftr.wideiv641, 44
  br i1 %exitcond642, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %9 = load i32* %nnodes, align 4, !tbaa !0
  %cmp111 = icmp sgt i32 %9, 1
  br i1 %cmp111, label %if.then116, label %lor.lhs.false113

lor.lhs.false113:                                 ; preds = %for.end
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %10 = load i32* %nthreads, align 4, !tbaa !0
  %cmp114 = icmp sgt i32 %10, 1
  br i1 %cmp114, label %if.then116, label %for.body121

if.then116:                                       ; preds = %lor.lhs.false113, %for.end
  call void @gmx_sumi(i32 44, i32* getelementptr inbounds ([44 x i32]* @bEner, i64 0, i64 0), %struct.t_commrec* %cr) #6
  br label %for.body121

for.body121:                                      ; preds = %lor.lhs.false113, %if.then116, %for.inc132
  %indvars.iv635 = phi i64 [ %indvars.iv.next636, %for.inc132 ], [ 0, %if.then116 ], [ 0, %lor.lhs.false113 ]
  %arrayidx123 = getelementptr inbounds [44 x i32]* @bEner, i64 0, i64 %indvars.iv635
  %11 = load i32* %arrayidx123, align 4, !tbaa !0
  %tobool124 = icmp eq i32 %11, 0
  br i1 %tobool124, label %for.inc132, label %if.then125

if.then125:                                       ; preds = %for.body121
  %longname = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv635, i32 1
  %12 = load i8** %longname, align 8, !tbaa !3
  %13 = load i32* @f_nre, align 4, !tbaa !0
  %idxprom128 = sext i32 %13 to i64
  %arrayidx129 = getelementptr inbounds [44 x i8*]* %ener_nm, i64 0, i64 %idxprom128
  store i8* %12, i8** %arrayidx129, align 8, !tbaa !3
  %inc130 = add nsw i32 %13, 1
  store i32 %inc130, i32* @f_nre, align 4, !tbaa !0
  br label %for.inc132

for.inc132:                                       ; preds = %for.body121, %if.then125
  %indvars.iv.next636 = add i64 %indvars.iv635, 1
  %lftr.wideiv637 = trunc i64 %indvars.iv.next636 to i32
  %exitcond638 = icmp eq i32 %lftr.wideiv637, 44
  br i1 %exitcond638, label %for.end134, label %for.body121

for.end134:                                       ; preds = %for.inc132
  %nr137 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 27, i32 0
  %14 = load i32* %nr137, align 4, !tbaa !0
  %cmp138 = icmp sgt i32 %14, 0
  br i1 %cmp138, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.end134
  %nr142 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 29, i32 0
  %15 = load i32* %nr142, align 4, !tbaa !0
  %cmp143 = icmp sgt i32 %15, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end134
  %16 = phi i1 [ true, %for.end134 ], [ %cmp143, %lor.rhs ]
  %lor.ext = zext i1 %16 to i32
  %.lor.ext = select i1 %16, i32 0, i32 %lor.ext
  store i32 %.lor.ext, i32* @bShake, align 4, !tbaa !0
  store i32 %bPcoupl, i32* @bPC, align 4, !tbaa !0
  store i32 %bTriclinic, i32* @bTricl, align 4, !tbaa !0
  %call148 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str44, i64 0, i64 0), i32 164, i32 1, i32 88) #6
  %17 = bitcast i8* %call148 to %struct.t_mdebin*
  %call149 = call %struct.t_ebin* @mk_ebin() #6
  %ebin = bitcast i8* %call148 to %struct.t_ebin**
  store %struct.t_ebin* %call149, %struct.t_ebin** %ebin, align 8, !tbaa !3
  %18 = load i32* @f_nre, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds [44 x i8*]* %ener_nm, i64 0, i64 0
  %call151 = call i32 @get_ebin_space(%struct.t_ebin* %call149, i32 %18, i8** %arraydecay) #6
  %ie = getelementptr inbounds i8* %call148, i64 8
  %19 = bitcast i8* %ie to i32*
  store i32 %call151, i32* %19, align 4, !tbaa !0
  %20 = load i32* @bPC, align 4, !tbaa !0
  %tobool152 = icmp eq i32 %20, 0
  br i1 %tobool152, label %if.end160, label %if.then153

if.then153:                                       ; preds = %lor.end
  %21 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %22 = load i32* @bTricl, align 4, !tbaa !0
  %tobool155 = icmp ne i32 %22, 0
  %conv156 = select i1 %tobool155, i32 9, i32 6
  %cond158 = select i1 %tobool155, i8** getelementptr inbounds ([9 x i8*]* @tricl_boxs_nm, i64 0, i64 0), i8** getelementptr inbounds ([6 x i8*]* @boxs_nm, i64 0, i64 0)
  %call159 = call i32 @get_ebin_space(%struct.t_ebin* %21, i32 %conv156, i8** %cond158) #6
  %ib = getelementptr inbounds i8* %call148, i64 12
  %23 = bitcast i8* %ib to i32*
  store i32 %call159, i32* %23, align 4, !tbaa !0
  br label %if.end160

if.end160:                                        ; preds = %lor.end, %if.then153
  %24 = load i32* @bShake, align 4, !tbaa !0
  %tobool161 = icmp eq i32 %24, 0
  br i1 %tobool161, label %if.end167, label %if.then162

if.then162:                                       ; preds = %if.end160
  %25 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %call164 = call i32 @get_ebin_space(%struct.t_ebin* %25, i32 9, i8** getelementptr inbounds ([9 x i8*]* @init_mdebin.sv_nm, i64 0, i64 0)) #6
  %isvir = getelementptr inbounds i8* %call148, i64 16
  %26 = bitcast i8* %isvir to i32*
  store i32 %call164, i32* %26, align 4, !tbaa !0
  %27 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %call166 = call i32 @get_ebin_space(%struct.t_ebin* %27, i32 9, i8** getelementptr inbounds ([9 x i8*]* @init_mdebin.fv_nm, i64 0, i64 0)) #6
  %ifvir = getelementptr inbounds i8* %call148, i64 20
  %28 = bitcast i8* %ifvir to i32*
  store i32 %call166, i32* %28, align 4, !tbaa !0
  br label %if.end167

if.end167:                                        ; preds = %if.end160, %if.then162
  %29 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %call169 = call i32 @get_ebin_space(%struct.t_ebin* %29, i32 9, i8** getelementptr inbounds ([9 x i8*]* @init_mdebin.vir_nm, i64 0, i64 0)) #6
  %ivir = getelementptr inbounds i8* %call148, i64 28
  %30 = bitcast i8* %ivir to i32*
  store i32 %call169, i32* %30, align 4, !tbaa !0
  %31 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %call171 = call i32 @get_ebin_space(%struct.t_ebin* %31, i32 9, i8** getelementptr inbounds ([9 x i8*]* @init_mdebin.pres_nm, i64 0, i64 0)) #6
  %ipres = getelementptr inbounds i8* %call148, i64 24
  %32 = bitcast i8* %ipres to i32*
  store i32 %call171, i32* %32, align 4, !tbaa !0
  %33 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %call173 = call i32 @get_ebin_space(%struct.t_ebin* %33, i32 1, i8** getelementptr inbounds ([1 x i8*]* @init_mdebin.surft_nm, i64 0, i64 0)) #6
  %isurft = getelementptr inbounds i8* %call148, i64 32
  %34 = bitcast i8* %isurft to i32*
  store i32 %call173, i32* %34, align 4, !tbaa !0
  %35 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %call175 = call i32 @get_ebin_space(%struct.t_ebin* %35, i32 3, i8** getelementptr inbounds ([3 x i8*]* @init_mdebin.mu_nm, i64 0, i64 0)) #6
  %imu = getelementptr inbounds i8* %call148, i64 44
  %36 = bitcast i8* %imu to i32*
  store i32 %call175, i32* %36, align 4, !tbaa !0
  %cos_accel = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 0
  %37 = load float* %cos_accel, align 4, !tbaa !4
  %fabsf = call float @fabsf(float %37) #7
  %38 = fpext float %fabsf to double
  %cmp178 = fcmp ogt double %38, 1.200000e-38
  br i1 %cmp178, label %if.then180, label %if.end185

if.then180:                                       ; preds = %if.end167
  %39 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %call182 = call i32 @get_ebin_space(%struct.t_ebin* %39, i32 1, i8** getelementptr inbounds ([1 x i8*]* @init_mdebin.vcos_nm, i64 0, i64 0)) #6
  %ivcos = getelementptr inbounds i8* %call148, i64 48
  %40 = bitcast i8* %ivcos to i32*
  store i32 %call182, i32* %40, align 4, !tbaa !0
  %41 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %call184 = call i32 @get_ebin_space(%struct.t_ebin* %41, i32 1, i8** getelementptr inbounds ([1 x i8*]* @init_mdebin.visc_nm, i64 0, i64 0)) #6
  %ivisc = getelementptr inbounds i8* %call148, i64 52
  %42 = bitcast i8* %ivisc to i32*
  store i32 %call184, i32* %42, align 4, !tbaa !0
  br label %if.end185

if.end185:                                        ; preds = %if.then180, %if.end167
  %tobool186 = icmp eq i32 %bLR, 0
  br i1 %tobool186, label %if.end188, label %if.then187

if.then187:                                       ; preds = %if.end185
  store i32 1, i32* getelementptr inbounds ([7 x i32]* @bEInd, i64 0, i64 3), align 4, !tbaa !0
  br label %if.end188

if.end188:                                        ; preds = %if.end185, %if.then187
  %tobool189 = icmp eq i32 %bLJLR, 0
  br i1 %tobool189, label %if.end191, label %if.then190

if.then190:                                       ; preds = %if.end188
  store i32 1, i32* getelementptr inbounds ([7 x i32]* @bEInd, i64 0, i64 4), align 16, !tbaa !0
  br label %if.end191

if.end191:                                        ; preds = %if.end188, %if.then190
  br i1 %lnot, label %if.end194, label %if.then193

if.then193:                                       ; preds = %if.end191
  store i32 0, i32* getelementptr inbounds ([7 x i32]* @bEInd, i64 0, i64 1), align 4, !tbaa !0
  store i32 1, i32* getelementptr inbounds ([7 x i32]* @bEInd, i64 0, i64 2), align 8, !tbaa !0
  br label %if.end194

if.end194:                                        ; preds = %if.end191, %if.then193
  %tobool195 = icmp eq i32 %b14, 0
  br i1 %tobool195, label %if.end197, label %if.then196

if.then196:                                       ; preds = %if.end194
  store i32 1, i32* getelementptr inbounds ([7 x i32]* @bEInd, i64 0, i64 6), align 8, !tbaa !0
  store i32 1, i32* getelementptr inbounds ([7 x i32]* @bEInd, i64 0, i64 5), align 4, !tbaa !0
  br label %if.end197

if.end197:                                        ; preds = %if.end194, %if.then196
  %nEc = getelementptr inbounds i8* %call148, i64 64
  %43 = bitcast i8* %nEc to i32*
  store i32 0, i32* %43, align 4, !tbaa !0
  br label %for.body201

for.body201:                                      ; preds = %for.inc209, %if.end197
  %44 = phi i32 [ 0, %if.end197 ], [ %46, %for.inc209 ]
  %indvars.iv631 = phi i64 [ 0, %if.end197 ], [ %indvars.iv.next632, %for.inc209 ]
  %arrayidx203 = getelementptr inbounds [7 x i32]* @bEInd, i64 0, i64 %indvars.iv631
  %45 = load i32* %arrayidx203, align 4, !tbaa !0
  %tobool204 = icmp eq i32 %45, 0
  br i1 %tobool204, label %for.inc209, label %if.then205

if.then205:                                       ; preds = %for.body201
  %inc207 = add nsw i32 %44, 1
  store i32 %inc207, i32* %43, align 4, !tbaa !0
  br label %for.inc209

for.inc209:                                       ; preds = %for.body201, %if.then205
  %46 = phi i32 [ %44, %for.body201 ], [ %inc207, %if.then205 ]
  %indvars.iv.next632 = add i64 %indvars.iv631, 1
  %lftr.wideiv633 = trunc i64 %indvars.iv.next632 to i32
  %exitcond634 = icmp eq i32 %lftr.wideiv633, 7
  br i1 %exitcond634, label %for.end211, label %for.body201

for.end211:                                       ; preds = %for.inc209
  %nr214 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 1, i32 0
  %47 = load i32* %nr214, align 4, !tbaa !0
  %nEg = getelementptr inbounds i8* %call148, i64 60
  %48 = bitcast i8* %nEg to i32*
  store i32 %47, i32* %48, align 4, !tbaa !0
  %add = add nsw i32 %47, 1
  %mul = mul nsw i32 %add, %47
  %div = sdiv i32 %mul, 2
  %nE = getelementptr inbounds i8* %call148, i64 56
  %49 = bitcast i8* %nE to i32*
  store i32 %div, i32* %49, align 4, !tbaa !0
  %call216 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str44, i64 0, i64 0), i32 202, i32 %div, i32 4) #6
  %50 = bitcast i8* %call216 to i32*
  %igrp = getelementptr inbounds i8* %call148, i64 80
  %51 = bitcast i8* %igrp to i32**
  store i32* %50, i32** %51, align 8, !tbaa !3
  %52 = load i32* %49, align 4, !tbaa !0
  %cmp218 = icmp sgt i32 %52, 1
  br i1 %cmp218, label %if.then220, label %if.end303

if.then220:                                       ; preds = %for.end211
  %53 = load i32* %43, align 4, !tbaa !0
  %call222 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str44, i64 0, i64 0), i32 205, i32 %53, i32 8) #6
  %54 = bitcast i8* %call222 to i8**
  %55 = load i32* %43, align 4, !tbaa !0
  %cmp225608 = icmp sgt i32 %55, 0
  br i1 %cmp225608, label %for.body227, label %for.cond234.preheader

for.cond234.preheader:                            ; preds = %for.body227, %if.then220
  %56 = phi i32 [ %55, %if.then220 ], [ %58, %for.body227 ]
  %57 = load i32* %nr214, align 4, !tbaa !0
  %cmp238605 = icmp sgt i32 %57, 0
  br i1 %cmp238605, label %for.body240.lr.ph, label %for.cond293.preheader

for.body240.lr.ph:                                ; preds = %for.cond234.preheader
  %nm_ind = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 1, i32 1
  %grpname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8
  br label %for.body240

for.body227:                                      ; preds = %if.then220, %for.body227
  %indvars.iv629 = phi i64 [ %indvars.iv.next630, %for.body227 ], [ 0, %if.then220 ]
  %call228 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str44, i64 0, i64 0), i32 207, i32 4096, i32 1) #6
  %arrayidx230 = getelementptr inbounds i8** %54, i64 %indvars.iv629
  store i8* %call228, i8** %arrayidx230, align 8, !tbaa !3
  %indvars.iv.next630 = add i64 %indvars.iv629, 1
  %58 = load i32* %43, align 4, !tbaa !0
  %59 = trunc i64 %indvars.iv.next630 to i32
  %cmp225 = icmp slt i32 %59, %58
  br i1 %cmp225, label %for.body227, label %for.cond234.preheader

for.cond234.for.cond293.preheader_crit_edge:      ; preds = %for.inc290
  %.pre = load i32* %43, align 4, !tbaa !0
  br label %for.cond293.preheader

for.cond293.preheader:                            ; preds = %for.cond234.for.cond293.preheader_crit_edge, %for.cond234.preheader
  %60 = phi i32 [ %.pre, %for.cond234.for.cond293.preheader_crit_edge ], [ %56, %for.cond234.preheader ]
  %cmp295597 = icmp sgt i32 %60, 0
  br i1 %cmp295597, label %for.body297, label %for.end302

for.body240:                                      ; preds = %for.body240.lr.ph, %for.inc290
  %61 = phi i32 [ %57, %for.body240.lr.ph ], [ %80, %for.inc290 ]
  %indvars.iv627 = phi i64 [ 0, %for.body240.lr.ph ], [ %indvars.iv.next628, %for.inc290 ]
  %n.0606 = phi i32 [ 0, %for.body240.lr.ph ], [ %n.1.lcssa, %for.inc290 ]
  %62 = trunc i64 %indvars.iv627 to i32
  %cmp249601 = icmp slt i32 %62, %61
  br i1 %cmp249601, label %for.body251.lr.ph, label %for.inc290

for.body251.lr.ph:                                ; preds = %for.body240
  %63 = load i32** %nm_ind, align 8, !tbaa !3
  %arrayidx244 = getelementptr inbounds i32* %63, i64 %indvars.iv627
  %64 = load i32* %arrayidx244, align 4, !tbaa !0
  %idxprom269 = sext i32 %64 to i64
  %65 = sext i32 %n.0606 to i64
  br label %for.body251

for.body251:                                      ; preds = %for.end279.for.body251_crit_edge, %for.body251.lr.ph
  %66 = phi i32 [ %64, %for.body251.lr.ph ], [ %.pre646, %for.end279.for.body251_crit_edge ]
  %indvars.iv625 = phi i64 [ %indvars.iv627, %for.body251.lr.ph ], [ %indvars.iv.next626, %for.end279.for.body251_crit_edge ]
  %indvars.iv621 = phi i64 [ %65, %for.body251.lr.ph ], [ %indvars.iv.next622, %for.end279.for.body251_crit_edge ]
  %n.1603 = phi i32 [ %n.0606, %for.body251.lr.ph ], [ %inc286, %for.end279.for.body251_crit_edge ]
  %idxprom271 = sext i32 %66 to i64
  br label %for.body260

for.body260:                                      ; preds = %for.inc277, %for.body251
  %indvars.iv619 = phi i64 [ 0, %for.body251 ], [ %indvars.iv.next620, %for.inc277 ]
  %kk.0600 = phi i32 [ 0, %for.body251 ], [ %kk.1, %for.inc277 ]
  %arrayidx262 = getelementptr inbounds [7 x i32]* @bEInd, i64 0, i64 %indvars.iv619
  %67 = load i32* %arrayidx262, align 4, !tbaa !0
  %tobool263 = icmp eq i32 %67, 0
  br i1 %tobool263, label %for.inc277, label %if.then264

if.then264:                                       ; preds = %for.body260
  %idxprom265 = sext i32 %kk.0600 to i64
  %arrayidx266 = getelementptr inbounds i8** %54, i64 %idxprom265
  %68 = load i8** %arrayidx266, align 8, !tbaa !3
  %arrayidx268 = getelementptr inbounds [8 x i8*]* @egrp_nm, i64 0, i64 %indvars.iv619
  %69 = load i8** %arrayidx268, align 8, !tbaa !3
  %70 = load i8**** %grpname, align 8, !tbaa !3
  %arrayidx270 = getelementptr inbounds i8*** %70, i64 %idxprom269
  %71 = load i8*** %arrayidx270, align 8, !tbaa !3
  %72 = load i8** %71, align 8, !tbaa !3
  %arrayidx273 = getelementptr inbounds i8*** %70, i64 %idxprom271
  %73 = load i8*** %arrayidx273, align 8, !tbaa !3
  %74 = load i8** %73, align 8, !tbaa !3
  %call274 = call i32 (i8*, i8*, ...)* @sprintf(i8* %68, i8* getelementptr inbounds ([9 x i8]* @.str48, i64 0, i64 0), i8* %69, i8* %72, i8* %74) #6
  %inc275 = add nsw i32 %kk.0600, 1
  br label %for.inc277

for.inc277:                                       ; preds = %for.body260, %if.then264
  %kk.1 = phi i32 [ %inc275, %if.then264 ], [ %kk.0600, %for.body260 ]
  %indvars.iv.next620 = add i64 %indvars.iv619, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next620 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 7
  br i1 %exitcond, label %for.end279, label %for.body260

for.end279:                                       ; preds = %for.inc277
  %75 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %76 = load i32* %43, align 4, !tbaa !0
  %call282 = call i32 @get_ebin_space(%struct.t_ebin* %75, i32 %76, i8** %54) #6
  %77 = load i32** %51, align 8, !tbaa !3
  %arrayidx285 = getelementptr inbounds i32* %77, i64 %indvars.iv621
  store i32 %call282, i32* %arrayidx285, align 4, !tbaa !0
  %inc286 = add nsw i32 %n.1603, 1
  %indvars.iv.next626 = add i64 %indvars.iv625, 1
  %78 = load i32* %nr214, align 4, !tbaa !0
  %79 = trunc i64 %indvars.iv.next626 to i32
  %cmp249 = icmp slt i32 %79, %78
  br i1 %cmp249, label %for.end279.for.body251_crit_edge, label %for.inc290

for.end279.for.body251_crit_edge:                 ; preds = %for.end279
  %indvars.iv.next622 = add i64 %indvars.iv621, 1
  %.pre645 = load i32** %nm_ind, align 8, !tbaa !3
  %arrayidx256.phi.trans.insert = getelementptr inbounds i32* %.pre645, i64 %indvars.iv.next626
  %.pre646 = load i32* %arrayidx256.phi.trans.insert, align 4, !tbaa !0
  br label %for.body251

for.inc290:                                       ; preds = %for.end279, %for.body240
  %80 = phi i32 [ %61, %for.body240 ], [ %78, %for.end279 ]
  %n.1.lcssa = phi i32 [ %n.0606, %for.body240 ], [ %inc286, %for.end279 ]
  %indvars.iv.next628 = add i64 %indvars.iv627, 1
  %81 = trunc i64 %indvars.iv.next628 to i32
  %cmp238 = icmp slt i32 %81, %80
  br i1 %cmp238, label %for.body240, label %for.cond234.for.cond293.preheader_crit_edge

for.body297:                                      ; preds = %for.cond293.preheader, %for.body297
  %indvars.iv617 = phi i64 [ %indvars.iv.next618, %for.body297 ], [ 0, %for.cond293.preheader ]
  %arrayidx299 = getelementptr inbounds i8** %54, i64 %indvars.iv617
  %82 = load i8** %arrayidx299, align 8, !tbaa !3
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str44, i64 0, i64 0), i32 224, i8* %82) #6
  %indvars.iv.next618 = add i64 %indvars.iv617, 1
  %83 = load i32* %43, align 4, !tbaa !0
  %84 = trunc i64 %indvars.iv.next618 to i32
  %cmp295 = icmp slt i32 %84, %83
  br i1 %cmp295, label %for.body297, label %for.end302

for.end302:                                       ; preds = %for.body297, %for.cond293.preheader
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str44, i64 0, i64 0), i32 225, i8* %call222) #6
  br label %if.end303

if.end303:                                        ; preds = %for.end302, %for.end211
  %nr306 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 0, i32 0
  %85 = load i32* %nr306, align 4, !tbaa !0
  %nTC = getelementptr inbounds i8* %call148, i64 68
  %86 = bitcast i8* %nTC to i32*
  store i32 %85, i32* %86, align 4, !tbaa !0
  %mul308 = shl nsw i32 %85, 1
  %call309 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str44, i64 0, i64 0), i32 231, i32 %mul308, i32 8) #6
  %87 = bitcast i8* %call309 to i8**
  store i8** %87, i8*** @init_mdebin.grpnms, align 8, !tbaa !3
  %88 = load i32* %86, align 4, !tbaa !0
  %cmp312594 = icmp sgt i32 %88, 0
  br i1 %cmp312594, label %for.body314.lr.ph, label %for.end352

for.body314.lr.ph:                                ; preds = %if.end303
  %nm_ind318 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 0, i32 1
  %grpname322 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8
  %tobool330 = icmp eq i32 %bNoseHoover, 0
  br label %for.body314

for.body314:                                      ; preds = %for.body314.lr.ph, %if.end343
  %indvars.iv615 = phi i64 [ 0, %for.body314.lr.ph ], [ %indvars.iv.next616, %if.end343 ]
  %89 = load i32** %nm_ind318, align 8, !tbaa !3
  %arrayidx319 = getelementptr inbounds i32* %89, i64 %indvars.iv615
  %90 = load i32* %arrayidx319, align 4, !tbaa !0
  %idxprom321 = sext i32 %90 to i64
  %91 = load i8**** %grpname322, align 8, !tbaa !3
  %arrayidx323 = getelementptr inbounds i8*** %91, i64 %idxprom321
  %92 = load i8*** %arrayidx323, align 8, !tbaa !3
  %93 = load i8** %92, align 8, !tbaa !3
  %call324 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str50, i64 0, i64 0), i8* %93) #6
  %call326 = call i8* @gmx_strdup(i8* %1) #6
  %94 = trunc i64 %indvars.iv615 to i32
  %mul327 = shl nsw i32 %94, 1
  %idxprom328 = sext i32 %mul327 to i64
  %95 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !3
  %arrayidx329 = getelementptr inbounds i8** %95, i64 %idxprom328
  store i8* %call326, i8** %arrayidx329, align 8, !tbaa !3
  %96 = load i8**** %grpname322, align 8, !tbaa !3
  %arrayidx335 = getelementptr inbounds i8*** %96, i64 %idxprom321
  %97 = load i8*** %arrayidx335, align 8, !tbaa !3
  %98 = load i8** %97, align 8, !tbaa !3
  br i1 %tobool330, label %if.else337, label %if.then331

if.then331:                                       ; preds = %for.body314
  %call336 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str51, i64 0, i64 0), i8* %98) #6
  br label %if.end343

if.else337:                                       ; preds = %for.body314
  %call342 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0), i8* %98) #6
  br label %if.end343

if.end343:                                        ; preds = %if.else337, %if.then331
  %call345 = call i8* @gmx_strdup(i8* %1) #6
  %add347590 = or i32 %mul327, 1
  %idxprom348 = sext i32 %add347590 to i64
  %99 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !3
  %arrayidx349 = getelementptr inbounds i8** %99, i64 %idxprom348
  store i8* %call345, i8** %arrayidx349, align 8, !tbaa !3
  %indvars.iv.next616 = add i64 %indvars.iv615, 1
  %100 = load i32* %86, align 4, !tbaa !0
  %101 = trunc i64 %indvars.iv.next616 to i32
  %cmp312 = icmp slt i32 %101, %100
  br i1 %cmp312, label %for.body314, label %for.cond310.for.end352_crit_edge

for.cond310.for.end352_crit_edge:                 ; preds = %if.end343
  %.pre643 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !3
  br label %for.end352

for.end352:                                       ; preds = %for.cond310.for.end352_crit_edge, %if.end303
  %102 = phi i8** [ %.pre643, %for.cond310.for.end352_crit_edge ], [ %87, %if.end303 ]
  %.lcssa593 = phi i32 [ %100, %for.cond310.for.end352_crit_edge ], [ %88, %if.end303 ]
  %103 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %mul355 = shl nsw i32 %.lcssa593, 1
  %call356 = call i32 @get_ebin_space(%struct.t_ebin* %103, i32 %mul355, i8** %102) #6
  %itc = getelementptr inbounds i8* %call148, i64 36
  %104 = bitcast i8* %itc to i32*
  store i32 %call356, i32* %104, align 4, !tbaa !0
  %105 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !3
  %106 = bitcast i8** %105 to i8*
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str44, i64 0, i64 0), i32 243, i8* %106) #6
  %nr359 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 2, i32 0
  %107 = load i32* %nr359, align 4, !tbaa !0
  %nU = getelementptr inbounds i8* %call148, i64 72
  %108 = bitcast i8* %nU to i32*
  store i32 %107, i32* %108, align 4, !tbaa !0
  %cmp361 = icmp sgt i32 %107, 1
  br i1 %cmp361, label %if.then363, label %if.end417

if.then363:                                       ; preds = %for.end352
  %mul365 = mul nsw i32 %107, 3
  %call366 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str44, i64 0, i64 0), i32 247, i32 %mul365, i32 8) #6
  %109 = bitcast i8* %call366 to i8**
  store i8** %109, i8*** @init_mdebin.grpnms, align 8, !tbaa !3
  %110 = load i32* %108, align 4, !tbaa !0
  %cmp369591 = icmp sgt i32 %110, 0
  br i1 %cmp369591, label %for.body371.lr.ph, label %for.end412

for.body371.lr.ph:                                ; preds = %if.then363
  %nm_ind375 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 2, i32 1
  %grpname379 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8
  br label %for.body371

for.body371:                                      ; preds = %for.body371.lr.ph, %for.body371
  %indvars.iv = phi i64 [ 0, %for.body371.lr.ph ], [ %indvars.iv.next, %for.body371 ]
  %111 = load i32** %nm_ind375, align 8, !tbaa !3
  %arrayidx376 = getelementptr inbounds i32* %111, i64 %indvars.iv
  %112 = load i32* %arrayidx376, align 4, !tbaa !0
  %idxprom378 = sext i32 %112 to i64
  %113 = load i8**** %grpname379, align 8, !tbaa !3
  %arrayidx380 = getelementptr inbounds i8*** %113, i64 %idxprom378
  %114 = load i8*** %arrayidx380, align 8, !tbaa !3
  %115 = load i8** %114, align 8, !tbaa !3
  %call381 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str53, i64 0, i64 0), i8* %115) #6
  %call383 = call i8* @gmx_strdup(i8* %1) #6
  %116 = trunc i64 %indvars.iv to i32
  %mul384 = mul nsw i32 %116, 3
  %idxprom386 = sext i32 %mul384 to i64
  %117 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !3
  %arrayidx387 = getelementptr inbounds i8** %117, i64 %idxprom386
  store i8* %call383, i8** %arrayidx387, align 8, !tbaa !3
  %118 = load i8**** %grpname379, align 8, !tbaa !3
  %arrayidx391 = getelementptr inbounds i8*** %118, i64 %idxprom378
  %119 = load i8*** %arrayidx391, align 8, !tbaa !3
  %120 = load i8** %119, align 8, !tbaa !3
  %call392 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str54, i64 0, i64 0), i8* %120) #6
  %call394 = call i8* @gmx_strdup(i8* %1) #6
  %add396 = add nsw i32 %mul384, 1
  %idxprom397 = sext i32 %add396 to i64
  %121 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !3
  %arrayidx398 = getelementptr inbounds i8** %121, i64 %idxprom397
  store i8* %call394, i8** %arrayidx398, align 8, !tbaa !3
  %122 = load i8**** %grpname379, align 8, !tbaa !3
  %arrayidx402 = getelementptr inbounds i8*** %122, i64 %idxprom378
  %123 = load i8*** %arrayidx402, align 8, !tbaa !3
  %124 = load i8** %123, align 8, !tbaa !3
  %call403 = call i32 (i8*, i8*, ...)* @sprintf(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0), i8* %124) #6
  %call405 = call i8* @gmx_strdup(i8* %1) #6
  %add407 = add nsw i32 %mul384, 2
  %idxprom408 = sext i32 %add407 to i64
  %125 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !3
  %arrayidx409 = getelementptr inbounds i8** %125, i64 %idxprom408
  store i8* %call405, i8** %arrayidx409, align 8, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %126 = load i32* %108, align 4, !tbaa !0
  %127 = trunc i64 %indvars.iv.next to i32
  %cmp369 = icmp slt i32 %127, %126
  br i1 %cmp369, label %for.body371, label %for.cond367.for.end412_crit_edge

for.cond367.for.end412_crit_edge:                 ; preds = %for.body371
  %.pre644 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !3
  br label %for.end412

for.end412:                                       ; preds = %for.cond367.for.end412_crit_edge, %if.then363
  %128 = phi i8** [ %.pre644, %for.cond367.for.end412_crit_edge ], [ %109, %if.then363 ]
  %.lcssa = phi i32 [ %126, %for.cond367.for.end412_crit_edge ], [ %110, %if.then363 ]
  %129 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %mul415 = mul nsw i32 %.lcssa, 3
  %call416 = call i32 @get_ebin_space(%struct.t_ebin* %129, i32 %mul415, i8** %128) #6
  %iu = getelementptr inbounds i8* %call148, i64 40
  %130 = bitcast i8* %iu to i32*
  store i32 %call416, i32* %130, align 4, !tbaa !0
  %131 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !3
  %132 = bitcast i8** %131 to i8*
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str44, i64 0, i64 0), i32 258, i8* %132) #6
  br label %if.end417

if.end417:                                        ; preds = %for.end412, %for.end352
  %cmp418 = icmp eq i32 %fp_ene, -1
  br i1 %cmp418, label %if.end423, label %if.then420

if.then420:                                       ; preds = %if.end417
  %133 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %nener = getelementptr inbounds %struct.t_ebin* %133, i64 0, i32 0
  %enm = getelementptr inbounds %struct.t_ebin* %133, i64 0, i32 1
  call void @do_enxnms(i32 %fp_ene, i32* %nener, i8*** %enm) #6
  br label %if.end423

if.end423:                                        ; preds = %if.end417, %if.then420
  call void @llvm.lifetime.end(i64 256, i8* %1) #1
  call void @llvm.lifetime.end(i64 352, i8* %0) #1
  ret %struct.t_mdebin* %17
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #2

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare %struct.t_ebin* @mk_ebin() #3

; Function Attrs: optsize
declare i32 @get_ebin_space(%struct.t_ebin*, i32, i8**) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #3

; Function Attrs: optsize
declare void @do_enxnms(i32, i32*, i8***) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @upd_mdebin(%struct.t_mdebin* %md, %struct._IO_FILE* %fp_dgdl, float %tmass, i32 %step, float %time, float* nocapture %ener, [3 x float]* nocapture %box, [3 x float]* %svir, [3 x float]* %fvir, [3 x float]* %vir, [3 x float]* %pres, %struct.t_groups* %grps, float* %mu_tot, i32 %bNoseHoover) #0 {
entry:
  %bs = alloca [6 x float], align 16
  %tricl_bs = alloca [9 x float], align 16
  %eee = alloca [7 x float], align 16
  %ecopy = alloca [44 x float], align 16
  %tmp = alloca float, align 4
  %0 = bitcast [9 x float]* %tricl_bs to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #1
  %1 = bitcast [44 x float]* %ecopy to i8*
  call void @llvm.lifetime.start(i64 176, i8* %1) #1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc.i ]
  %j.010.i = phi i32 [ 0, %entry ], [ %j.1.i, %for.inc.i ]
  %arrayidx.i = getelementptr inbounds [44 x i32]* @bEner, i64 0, i64 %indvars.iv.i
  %2 = load i32* %arrayidx.i, align 4, !tbaa !0
  %tobool.i = icmp eq i32 %2, 0
  br i1 %tobool.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx2.i = getelementptr inbounds float* %ener, i64 %indvars.iv.i
  %3 = load float* %arrayidx2.i, align 4, !tbaa !4
  %inc.i = add nsw i32 %j.010.i, 1
  %idxprom3.i = sext i32 %j.010.i to i64
  %arrayidx4.i = getelementptr inbounds [44 x float]* %ecopy, i64 0, i64 %idxprom3.i
  store float %3, float* %arrayidx4.i, align 4, !tbaa !4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %j.1.i = phi i32 [ %inc.i, %if.then.i ], [ %j.010.i, %for.body.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv444 = trunc i64 %indvars.iv.next.i to i32
  %exitcond445 = icmp eq i32 %lftr.wideiv444, 44
  br i1 %exitcond445, label %copy_energy.exit, label %for.body.i

copy_energy.exit:                                 ; preds = %for.inc.i
  %arraydecay = getelementptr inbounds [44 x float]* %ecopy, i64 0, i64 0
  %ebin = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 0
  %4 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %ie = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 1
  %5 = load i32* %ie, align 4, !tbaa !0
  %6 = load i32* @f_nre, align 4, !tbaa !0
  call void @add_ebin(%struct.t_ebin* %4, i32 %5, i32 %6, float* %arraydecay, i32 %step) #6
  %7 = load i32* @bPC, align 4, !tbaa !0
  %tobool = icmp eq i32 %7, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %copy_energy.exit
  %cos_accel = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 0
  %8 = load float* %cos_accel, align 4, !tbaa !4
  %fabsf = call float @fabsf(float %8) #7
  %9 = fpext float %fabsf to double
  %cmp = fcmp ogt double %9, 1.200000e-38
  br i1 %cmp, label %if.then, label %if.end85

if.then:                                          ; preds = %copy_energy.exit, %lor.lhs.false
  %10 = load i32* @bTricl, align 4, !tbaa !0
  %tobool3 = icmp eq i32 %10, 0
  br i1 %tobool3, label %for.body, label %if.then4

if.then4:                                         ; preds = %if.then
  %arrayidx5 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %11 = load float* %arrayidx5, align 4, !tbaa !4
  %arrayidx6 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 0
  store float %11, float* %arrayidx6, align 16, !tbaa !4
  %arrayidx8 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %12 = load float* %arrayidx8, align 4, !tbaa !4
  %arrayidx9 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 1
  store float %12, float* %arrayidx9, align 4, !tbaa !4
  %arrayidx11 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %13 = load float* %arrayidx11, align 4, !tbaa !4
  %arrayidx12 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 2
  store float %13, float* %arrayidx12, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %14 = load float* %arrayidx14, align 4, !tbaa !4
  %arrayidx15 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 3
  store float %14, float* %arrayidx15, align 4, !tbaa !4
  %arrayidx17 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %15 = load float* %arrayidx17, align 4, !tbaa !4
  %arrayidx18 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 4
  store float %15, float* %arrayidx18, align 16, !tbaa !4
  %arrayidx20 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %16 = load float* %arrayidx20, align 4, !tbaa !4
  %arrayidx21 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 5
  store float %16, float* %arrayidx21, align 4, !tbaa !4
  %mul = fmul float %11, %13
  %mul25 = fmul float %16, %mul
  %arrayidx26 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 6
  store float %mul25, float* %arrayidx26, align 8, !tbaa !4
  %conv27 = fpext float %tmass to double
  %mul28 = fmul double %conv27, 0x3A6071F8353EEBCB
  %conv30 = fpext float %mul25 to double
  %mul31 = fmul double %conv30, 1.000000e-09
  %mul32 = fmul double %mul31, 1.000000e-09
  %mul33 = fmul double %mul32, 1.000000e-09
  %div = fdiv double %mul28, %mul33
  %conv34 = fptrunc double %div to float
  %arrayidx35 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 7
  store float %conv34, float* %arrayidx35, align 4, !tbaa !4
  br label %if.end59

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv440 = phi i64 [ %indvars.iv.next441, %for.body ], [ 0, %if.then ]
  %arrayidx40 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv440, i64 %indvars.iv440
  %17 = load float* %arrayidx40, align 4, !tbaa !4
  %arrayidx42 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 %indvars.iv440
  store float %17, float* %arrayidx42, align 4, !tbaa !4
  %indvars.iv.next441 = add i64 %indvars.iv440, 1
  %lftr.wideiv442 = trunc i64 %indvars.iv.next441 to i32
  %exitcond443 = icmp eq i32 %lftr.wideiv442, 3
  br i1 %exitcond443, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %arrayidx43 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 0
  %18 = load float* %arrayidx43, align 16, !tbaa !4
  %arrayidx44 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 1
  %19 = load float* %arrayidx44, align 4, !tbaa !4
  %mul45 = fmul float %18, %19
  %arrayidx46 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 2
  %20 = load float* %arrayidx46, align 8, !tbaa !4
  %mul47 = fmul float %mul45, %20
  %arrayidx48 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 3
  store float %mul47, float* %arrayidx48, align 4, !tbaa !4
  %conv49 = fpext float %tmass to double
  %mul50 = fmul double %conv49, 0x3A6071F8353EEBCB
  %conv52 = fpext float %mul47 to double
  %mul53 = fmul double %conv52, 1.000000e-09
  %mul54 = fmul double %mul53, 1.000000e-09
  %mul55 = fmul double %mul54, 1.000000e-09
  %div56 = fdiv double %mul50, %mul55
  %conv57 = fptrunc double %div56 to float
  %arrayidx58 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 4
  store float %conv57, float* %arrayidx58, align 16, !tbaa !4
  br label %if.end59

if.end59:                                         ; preds = %if.then4, %for.end
  br i1 %tobool, label %if.end85, label %if.then61

if.then61:                                        ; preds = %if.end59
  %21 = load i32* @bTricl, align 4, !tbaa !0
  %tobool62 = icmp eq i32 %21, 0
  br i1 %tobool62, label %if.else73, label %if.then63

if.then63:                                        ; preds = %if.then61
  %arrayidx64 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 6
  %22 = load float* %arrayidx64, align 8, !tbaa !4
  %arrayidx65 = getelementptr inbounds float* %ener, i64 41
  %23 = load float* %arrayidx65, align 4, !tbaa !4
  %mul66 = fmul float %22, %23
  %conv67 = fpext float %mul66 to double
  %div68 = fdiv double %conv67, 1.660540e+01
  %conv69 = fptrunc double %div68 to float
  %arrayidx70 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 8
  store float %conv69, float* %arrayidx70, align 16, !tbaa !4
  %24 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %ib = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 2
  %25 = load i32* %ib, align 4, !tbaa !0
  %arraydecay72 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 0
  call void @add_ebin(%struct.t_ebin* %24, i32 %25, i32 9, float* %arraydecay72, i32 %step) #6
  br label %if.end85

if.else73:                                        ; preds = %if.then61
  %arrayidx74 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 3
  %26 = load float* %arrayidx74, align 4, !tbaa !4
  %arrayidx75 = getelementptr inbounds float* %ener, i64 41
  %27 = load float* %arrayidx75, align 4, !tbaa !4
  %mul76 = fmul float %26, %27
  %conv77 = fpext float %mul76 to double
  %div78 = fdiv double %conv77, 1.660540e+01
  %conv79 = fptrunc double %div78 to float
  %arrayidx80 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 5
  store float %conv79, float* %arrayidx80, align 4, !tbaa !4
  %28 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %ib82 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 2
  %29 = load i32* %ib82, align 4, !tbaa !0
  %arraydecay83 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 0
  call void @add_ebin(%struct.t_ebin* %28, i32 %29, i32 6, float* %arraydecay83, i32 %step) #6
  br label %if.end85

if.end85:                                         ; preds = %lor.lhs.false, %if.end59, %if.then63, %if.else73
  %30 = load i32* @bShake, align 4, !tbaa !0
  %tobool86 = icmp eq i32 %30, 0
  br i1 %tobool86, label %if.end94, label %if.then87

if.then87:                                        ; preds = %if.end85
  %31 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %isvir = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 3
  %32 = load i32* %isvir, align 4, !tbaa !0
  %arraydecay90 = getelementptr inbounds [3 x float]* %svir, i64 0, i64 0
  call void @add_ebin(%struct.t_ebin* %31, i32 %32, i32 9, float* %arraydecay90, i32 %step) #6
  %33 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %ifvir = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 4
  %34 = load i32* %ifvir, align 4, !tbaa !0
  %arraydecay93 = getelementptr inbounds [3 x float]* %fvir, i64 0, i64 0
  call void @add_ebin(%struct.t_ebin* %33, i32 %34, i32 9, float* %arraydecay93, i32 %step) #6
  br label %if.end94

if.end94:                                         ; preds = %if.end85, %if.then87
  %35 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %ivir = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 6
  %36 = load i32* %ivir, align 4, !tbaa !0
  %arraydecay97 = getelementptr inbounds [3 x float]* %vir, i64 0, i64 0
  call void @add_ebin(%struct.t_ebin* %35, i32 %36, i32 9, float* %arraydecay97, i32 %step) #6
  %37 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %ipres = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 5
  %38 = load i32* %ipres, align 4, !tbaa !0
  %arraydecay100 = getelementptr inbounds [3 x float]* %pres, i64 0, i64 0
  call void @add_ebin(%struct.t_ebin* %37, i32 %38, i32 9, float* %arraydecay100, i32 %step) #6
  %arrayidx102 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %39 = load float* %arrayidx102, align 4, !tbaa !4
  %conv103 = fpext float %39 to double
  %40 = load float* %arraydecay100, align 4, !tbaa !4
  %arrayidx107 = getelementptr inbounds [3 x float]* %pres, i64 1, i64 1
  %41 = load float* %arrayidx107, align 4, !tbaa !4
  %add = fadd float %40, %41
  %conv108 = fpext float %add to double
  %mul109 = fmul double %conv108, 5.000000e-01
  %sub = fsub double %conv103, %mul109
  %arrayidx111 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %42 = load float* %arrayidx111, align 4, !tbaa !4
  %conv112 = fpext float %42 to double
  %mul113 = fmul double %conv112, %sub
  %conv114 = fptrunc double %mul113 to float
  store float %conv114, float* %tmp, align 4, !tbaa !4
  %43 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %isurft = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 7
  %44 = load i32* %isurft, align 4, !tbaa !0
  call void @add_ebin(%struct.t_ebin* %43, i32 %44, i32 1, float* %tmp, i32 %step) #6
  %45 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %imu = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 10
  %46 = load i32* %imu, align 4, !tbaa !0
  call void @add_ebin(%struct.t_ebin* %45, i32 %46, i32 3, float* %mu_tot, i32 %step) #6
  %cos_accel118 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 0
  %47 = load float* %cos_accel118, align 4, !tbaa !4
  %fabsf411 = call float @fabsf(float %47) #7
  %48 = fpext float %fabsf411 to double
  %cmp121 = fcmp ogt double %48, 1.200000e-38
  br i1 %cmp121, label %if.then123, label %if.end175

if.then123:                                       ; preds = %if.end94
  %49 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %ivcos = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 11
  %50 = load i32* %ivcos, align 4, !tbaa !0
  %vcos = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 2
  call void @add_ebin(%struct.t_ebin* %49, i32 %50, i32 1, float* %vcos, i32 %step) #6
  %51 = load i32* @bTricl, align 4, !tbaa !0
  %tobool126 = icmp eq i32 %51, 0
  %52 = load float* %cos_accel118, align 4, !tbaa !4
  %conv130 = fpext float %52 to double
  %53 = load float* %vcos, align 4, !tbaa !4
  %conv133 = fpext float %53 to double
  %mul134 = fmul double %conv133, 1.000000e-12
  %div135 = fdiv double %conv130, %mul134
  br i1 %tobool126, label %if.else150, label %if.then127

if.then127:                                       ; preds = %if.then123
  %arrayidx136 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 7
  %54 = load float* %arrayidx136, align 4, !tbaa !4
  %conv137 = fpext float %54 to double
  %mul138 = fmul double %div135, %conv137
  %55 = load float* %arrayidx111, align 4, !tbaa !4
  %conv141 = fpext float %55 to double
  %mul142 = fmul double %conv141, 1.000000e-09
  %div143 = fdiv double %mul142, 0x401921FB54442D18
  %conv144 = fptrunc double %div143 to float
  %mul.i416 = fmul float %conv144, %conv144
  %conv146 = fpext float %mul.i416 to double
  %mul147 = fmul double %mul138, %conv146
  br label %if.end173

if.else150:                                       ; preds = %if.then123
  %arrayidx159 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 4
  %56 = load float* %arrayidx159, align 16, !tbaa !4
  %conv160 = fpext float %56 to double
  %mul161 = fmul double %div135, %conv160
  %57 = load float* %arrayidx111, align 4, !tbaa !4
  %conv164 = fpext float %57 to double
  %mul165 = fmul double %conv164, 1.000000e-09
  %div166 = fdiv double %mul165, 0x401921FB54442D18
  %conv167 = fptrunc double %div166 to float
  %mul.i = fmul float %conv167, %conv167
  %conv169 = fpext float %mul.i to double
  %mul170 = fmul double %mul161, %conv169
  br label %if.end173

if.end173:                                        ; preds = %if.else150, %if.then127
  %mul170.pn = phi double [ %mul170, %if.else150 ], [ %mul147, %if.then127 ]
  %storemerge.in = fdiv double 1.000000e+00, %mul170.pn
  %storemerge = fptrunc double %storemerge.in to float
  store float %storemerge, float* %tmp, align 4, !tbaa !4
  %58 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %ivisc = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 12
  %59 = load i32* %ivisc, align 4, !tbaa !0
  call void @add_ebin(%struct.t_ebin* %58, i32 %59, i32 1, float* %tmp, i32 %step) #6
  br label %if.end175

if.end175:                                        ; preds = %if.end173, %if.end94
  %nE = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 13
  %60 = load i32* %nE, align 4, !tbaa !0
  %cmp176 = icmp sgt i32 %60, 1
  br i1 %cmp176, label %for.cond179.preheader, label %if.end226

for.cond179.preheader:                            ; preds = %if.end175
  %nEg = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 14
  %61 = load i32* %nEg, align 4, !tbaa !0
  %cmp180429 = icmp sgt i32 %61, 0
  br i1 %cmp180429, label %for.cond183.preheader.lr.ph, label %if.end226

for.cond183.preheader.lr.ph:                      ; preds = %for.cond179.preheader
  %igrp = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 18
  %nEc = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 15
  %arraydecay218 = getelementptr inbounds [7 x float]* %eee, i64 0, i64 0
  br label %for.cond183.preheader

for.cond183.preheader:                            ; preds = %for.cond183.preheader.lr.ph, %for.inc223
  %62 = phi i32 [ %61, %for.cond183.preheader.lr.ph ], [ %73, %for.inc223 ]
  %i.0431 = phi i32 [ 0, %for.cond183.preheader.lr.ph ], [ %inc224, %for.inc223 ]
  %n.0430 = phi i32 [ 0, %for.cond183.preheader.lr.ph ], [ %n.1.lcssa, %for.inc223 ]
  %cmp185425 = icmp slt i32 %i.0431, %62
  br i1 %cmp185425, label %for.body187.lr.ph, label %for.inc223

for.body187.lr.ph:                                ; preds = %for.cond183.preheader
  %63 = sext i32 %n.0430 to i64
  br label %for.body187

for.body187:                                      ; preds = %for.body187.lr.ph, %for.end214
  %indvars.iv438 = phi i64 [ %63, %for.body187.lr.ph ], [ %indvars.iv.next439, %for.end214 ]
  %64 = phi i32 [ %62, %for.body187.lr.ph ], [ %72, %for.end214 ]
  %n.1427 = phi i32 [ %n.0430, %for.body187.lr.ph ], [ %inc219, %for.end214 ]
  %j.0426 = phi i32 [ %i.0431, %for.body187.lr.ph ], [ %inc221, %for.end214 ]
  %cmp188 = icmp slt i32 %i.0431, %j.0426
  br i1 %cmp188, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body187
  %mul191 = mul nsw i32 %64, %i.0431
  %add192 = add nsw i32 %mul191, %j.0426
  br label %cond.end

cond.false:                                       ; preds = %for.body187
  %mul194 = mul nsw i32 %64, %j.0426
  %add195 = add nsw i32 %mul194, %i.0431
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add192, %cond.true ], [ %add195, %cond.false ]
  %idxprom204 = sext i32 %cond to i64
  br label %for.body199

for.body199:                                      ; preds = %for.inc212, %cond.end
  %indvars.iv436 = phi i64 [ 0, %cond.end ], [ %indvars.iv.next437, %for.inc212 ]
  %kk.0424 = phi i32 [ 0, %cond.end ], [ %kk.1, %for.inc212 ]
  %arrayidx201 = getelementptr inbounds [7 x i32]* @bEInd, i64 0, i64 %indvars.iv436
  %65 = load i32* %arrayidx201, align 4, !tbaa !0
  %tobool202 = icmp eq i32 %65, 0
  br i1 %tobool202, label %for.inc212, label %if.then203

if.then203:                                       ; preds = %for.body199
  %arrayidx206 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv436
  %66 = load float** %arrayidx206, align 8, !tbaa !3
  %arrayidx207 = getelementptr inbounds float* %66, i64 %idxprom204
  %67 = load float* %arrayidx207, align 4, !tbaa !4
  %inc208 = add nsw i32 %kk.0424, 1
  %idxprom209 = sext i32 %kk.0424 to i64
  %arrayidx210 = getelementptr inbounds [7 x float]* %eee, i64 0, i64 %idxprom209
  store float %67, float* %arrayidx210, align 4, !tbaa !4
  br label %for.inc212

for.inc212:                                       ; preds = %for.body199, %if.then203
  %kk.1 = phi i32 [ %inc208, %if.then203 ], [ %kk.0424, %for.body199 ]
  %indvars.iv.next437 = add i64 %indvars.iv436, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next437 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 7
  br i1 %exitcond, label %for.end214, label %for.body199

for.end214:                                       ; preds = %for.inc212
  %68 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %69 = load i32** %igrp, align 8, !tbaa !3
  %arrayidx217 = getelementptr inbounds i32* %69, i64 %indvars.iv438
  %70 = load i32* %arrayidx217, align 4, !tbaa !0
  %71 = load i32* %nEc, align 4, !tbaa !0
  call void @add_ebin(%struct.t_ebin* %68, i32 %70, i32 %71, float* %arraydecay218, i32 %step) #6
  %indvars.iv.next439 = add i64 %indvars.iv438, 1
  %inc219 = add nsw i32 %n.1427, 1
  %inc221 = add nsw i32 %j.0426, 1
  %72 = load i32* %nEg, align 4, !tbaa !0
  %cmp185 = icmp slt i32 %inc221, %72
  br i1 %cmp185, label %for.body187, label %for.inc223

for.inc223:                                       ; preds = %for.end214, %for.cond183.preheader
  %73 = phi i32 [ %62, %for.cond183.preheader ], [ %72, %for.end214 ]
  %n.1.lcssa = phi i32 [ %n.0430, %for.cond183.preheader ], [ %inc219, %for.end214 ]
  %inc224 = add nsw i32 %i.0431, 1
  %cmp180 = icmp slt i32 %inc224, %73
  br i1 %cmp180, label %for.cond183.preheader, label %if.end226

if.end226:                                        ; preds = %for.cond179.preheader, %for.inc223, %if.end175
  %74 = load float** @upd_mdebin.ttt, align 8, !tbaa !3
  %cmp227 = icmp eq float* %74, null
  %nTC = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 16
  br i1 %cmp227, label %if.then229, label %for.cond233.preheader

if.then229:                                       ; preds = %if.end226
  %75 = load i32* %nTC, align 4, !tbaa !0
  %mul230 = shl nsw i32 %75, 1
  %call231 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str44, i64 0, i64 0), i32 370, i32 %mul230, i32 4) #6
  %76 = bitcast i8* %call231 to float*
  store float* %76, float** @upd_mdebin.ttt, align 8, !tbaa !3
  br label %for.cond233.preheader

for.cond233.preheader:                            ; preds = %if.end226, %if.then229
  %77 = phi float* [ %76, %if.then229 ], [ %74, %if.end226 ]
  %78 = load i32* %nTC, align 4, !tbaa !0
  %cmp235420 = icmp sgt i32 %78, 0
  br i1 %cmp235420, label %for.body237.lr.ph, label %for.end263

for.body237.lr.ph:                                ; preds = %for.cond233.preheader
  %tcstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %79 = load %struct.t_grp_tcstat** %tcstat, align 8, !tbaa !3
  %tobool243 = icmp eq i32 %bNoseHoover, 0
  br label %for.body237

for.body237:                                      ; preds = %for.body237.lr.ph, %for.inc261
  %indvars.iv434 = phi i64 [ 0, %for.body237.lr.ph ], [ %indvars.iv.next435, %for.inc261 ]
  %T = getelementptr inbounds %struct.t_grp_tcstat* %79, i64 %indvars.iv434, i32 0
  %80 = load float* %T, align 4, !tbaa !4
  %81 = trunc i64 %indvars.iv434 to i32
  %mul240 = shl nsw i32 %81, 1
  %idxprom241 = sext i32 %mul240 to i64
  %arrayidx242 = getelementptr inbounds float* %77, i64 %idxprom241
  store float %80, float* %arrayidx242, align 4, !tbaa !4
  br i1 %tobool243, label %if.else252, label %if.then244

if.then244:                                       ; preds = %for.body237
  %xi = getelementptr inbounds %struct.t_grp_tcstat* %79, i64 %indvars.iv434, i32 3
  %82 = load float* %xi, align 4, !tbaa !4
  %add249413 = or i32 %mul240, 1
  %idxprom250 = sext i32 %add249413 to i64
  %arrayidx251 = getelementptr inbounds float* %77, i64 %idxprom250
  store float %82, float* %arrayidx251, align 4, !tbaa !4
  br label %for.inc261

if.else252:                                       ; preds = %for.body237
  %lambda = getelementptr inbounds %struct.t_grp_tcstat* %79, i64 %indvars.iv434, i32 1
  %83 = load float* %lambda, align 4, !tbaa !4
  %add257412 = or i32 %mul240, 1
  %idxprom258 = sext i32 %add257412 to i64
  %arrayidx259 = getelementptr inbounds float* %77, i64 %idxprom258
  store float %83, float* %arrayidx259, align 4, !tbaa !4
  br label %for.inc261

for.inc261:                                       ; preds = %if.then244, %if.else252
  %indvars.iv.next435 = add i64 %indvars.iv434, 1
  %84 = trunc i64 %indvars.iv.next435 to i32
  %cmp235 = icmp slt i32 %84, %78
  br i1 %cmp235, label %for.body237, label %for.end263

for.end263:                                       ; preds = %for.inc261, %for.cond233.preheader
  %85 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %itc = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 8
  %86 = load i32* %itc, align 4, !tbaa !0
  %mul266 = shl nsw i32 %78, 1
  call void @add_ebin(%struct.t_ebin* %85, i32 %86, i32 %mul266, float* %77, i32 %step) #6
  %nU = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 17
  %87 = load i32* %nU, align 4, !tbaa !0
  %cmp267 = icmp sgt i32 %87, 1
  br i1 %cmp267, label %if.then269, label %if.end295

if.then269:                                       ; preds = %for.end263
  %88 = load [3 x float]** @upd_mdebin.uuu, align 8, !tbaa !3
  %cmp270 = icmp eq [3 x float]* %88, null
  br i1 %cmp270, label %for.cond276.preheader, label %for.body280.lr.ph

for.cond276.preheader:                            ; preds = %if.then269
  %call274 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str44, i64 0, i64 0), i32 382, i32 %87, i32 12) #6
  %89 = bitcast i8* %call274 to [3 x float]*
  store [3 x float]* %89, [3 x float]** @upd_mdebin.uuu, align 8, !tbaa !3
  %.pre = load i32* %nU, align 4, !tbaa !0
  %cmp278417 = icmp sgt i32 %.pre, 0
  br i1 %cmp278417, label %for.body280.lr.ph, label %for.end289

for.body280.lr.ph:                                ; preds = %if.then269, %for.cond276.preheader
  %90 = phi i32 [ %.pre, %for.cond276.preheader ], [ %87, %if.then269 ]
  %91 = phi [3 x float]* [ %89, %for.cond276.preheader ], [ %88, %if.then269 ]
  %grpstat = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %92 = load %struct.t_grp_acc** %grpstat, align 8, !tbaa !3
  br label %for.body280

for.body280:                                      ; preds = %for.body280.lr.ph, %for.body280
  %indvars.iv = phi i64 [ 0, %for.body280.lr.ph ], [ %indvars.iv.next, %for.body280 ]
  %arraydecay283 = getelementptr inbounds %struct.t_grp_acc* %92, i64 %indvars.iv, i32 3, i64 0
  %arraydecay286 = getelementptr inbounds [3 x float]* %91, i64 %indvars.iv, i64 0
  %93 = load float* %arraydecay283, align 4, !tbaa !4
  store float %93, float* %arraydecay286, align 4, !tbaa !4
  %arrayidx2.i414 = getelementptr inbounds %struct.t_grp_acc* %92, i64 %indvars.iv, i32 3, i64 1
  %94 = load float* %arrayidx2.i414, align 4, !tbaa !4
  %arrayidx3.i = getelementptr inbounds [3 x float]* %91, i64 %indvars.iv, i64 1
  store float %94, float* %arrayidx3.i, align 4, !tbaa !4
  %arrayidx4.i415 = getelementptr inbounds %struct.t_grp_acc* %92, i64 %indvars.iv, i32 3, i64 2
  %95 = load float* %arrayidx4.i415, align 4, !tbaa !4
  %arrayidx5.i = getelementptr inbounds [3 x float]* %91, i64 %indvars.iv, i64 2
  store float %95, float* %arrayidx5.i, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %96 = trunc i64 %indvars.iv.next to i32
  %cmp278 = icmp slt i32 %96, %90
  br i1 %cmp278, label %for.body280, label %for.end289

for.end289:                                       ; preds = %for.body280, %for.cond276.preheader
  %97 = phi i32 [ %.pre, %for.cond276.preheader ], [ %90, %for.body280 ]
  %98 = phi [3 x float]* [ %89, %for.cond276.preheader ], [ %91, %for.body280 ]
  %99 = load %struct.t_ebin** %ebin, align 8, !tbaa !3
  %iu = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 9
  %100 = load i32* %iu, align 4, !tbaa !0
  %mul292 = mul nsw i32 %97, 3
  %arraydecay294 = getelementptr inbounds [3 x float]* %98, i64 0, i64 0
  call void @add_ebin(%struct.t_ebin* %99, i32 %100, i32 %mul292, float* %arraydecay294, i32 %step) #6
  br label %if.end295

if.end295:                                        ; preds = %for.end289, %for.end263
  %tobool296 = icmp eq %struct._IO_FILE* %fp_dgdl, null
  br i1 %tobool296, label %if.end304, label %if.then297

if.then297:                                       ; preds = %if.end295
  %conv298 = fpext float %time to double
  %arrayidx299 = getelementptr inbounds float* %ener, i64 42
  %101 = load float* %arrayidx299, align 4, !tbaa !4
  %arrayidx300 = getelementptr inbounds float* %ener, i64 43
  %102 = load float* %arrayidx300, align 4, !tbaa !4
  %add301 = fadd float %101, %102
  %conv302 = fpext float %add301 to double
  %call303 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp_dgdl, i8* getelementptr inbounds ([7 x i8]* @.str58, i64 0, i64 0), double %conv298, double %conv302) #6
  br label %if.end304

if.end304:                                        ; preds = %if.end295, %if.then297
  call void @llvm.lifetime.end(i64 176, i8* %1) #1
  call void @llvm.lifetime.end(i64 36, i8* %0) #1
  ret void
}

; Function Attrs: optsize
declare void @add_ebin(%struct.t_ebin*, i32, i32, float*, i32) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize uwtable
define void @print_ebin_header(%struct._IO_FILE* %log, i32 %steps, float %time, float %lamb, float %SAfactor) #0 {
entry:
  %tobool = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = fpext float %time to double
  %conv1 = fpext float %lamb to double
  %conv2 = fpext float %SAfactor to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([66 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str63, i64 0, i64 0), i32 %steps, double %conv, double %conv1, double %conv2) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @print_ebin(i32 %fp_ene, i32 %bEne, i32 %bDR, i32 %bOR, %struct._IO_FILE* %log, i32 %steps, float %time, i32 %mode, i32 %bCompact, %struct.t_mdebin* nocapture %md, %struct.t_fcdata* %fcd, %struct.t_atoms* nocapture %atoms) #0 {
entry:
  %buf = alloca [246 x i8], align 16
  %nr = alloca [2 x i32], align 4
  %block = alloca [2 x float*], align 16
  %fr = alloca %struct.t_enxframe, align 8
  %0 = getelementptr inbounds [246 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 246, i8* %0) #1
  %1 = bitcast %struct.t_enxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 96, i8* %1) #1
  switch i32 %mode, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb54
    i32 2, label %sw.bb58
  ]

sw.bb:                                            ; preds = %entry
  %t = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0
  store float %time, float* %t, align 8, !tbaa !4
  %step = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 1
  store i32 %steps, i32* %step, align 4, !tbaa !0
  %tobool = icmp eq i32 %bEne, 0
  %ebin1.phi.trans.insert = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 0
  %.pre390 = load %struct.t_ebin** %ebin1.phi.trans.insert, align 8, !tbaa !3
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %sw.bb
  %nener = getelementptr inbounds %struct.t_ebin* %.pre390, i64 0, i32 0
  %2 = load i32* %nener, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %sw.bb, %cond.true
  %3 = phi i32 [ %2, %cond.true ], [ 0, %sw.bb ]
  %nre = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2
  store i32 %3, i32* %nre, align 8, !tbaa !0
  %e = getelementptr inbounds %struct.t_ebin* %.pre390, i64 0, i32 2
  %4 = load %struct.t_energy** %e, align 8, !tbaa !3
  %ener = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 12
  store %struct.t_energy* %4, %struct.t_energy** %ener, align 8, !tbaa !3
  %tobool2 = icmp eq i32 %bDR, 0
  br i1 %tobool2, label %cond.end5, label %cond.true3

cond.true3:                                       ; preds = %cond.end
  %npr = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 8
  %5 = load i32* %npr, align 4, !tbaa !0
  br label %cond.end5

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %6 = phi i32 [ %5, %cond.true3 ], [ 0, %cond.end ]
  %ndisre = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3
  store i32 %6, i32* %ndisre, align 4, !tbaa !0
  %rav = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 11
  %7 = load float** %rav, align 8, !tbaa !3
  %rav8 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 13
  store float* %7, float** %rav8, align 8, !tbaa !3
  %rt = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 10
  %8 = load float** %rt, align 8, !tbaa !3
  %rt10 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 14
  store float* %8, float** %rt10, align 8, !tbaa !3
  %tobool11 = icmp eq i32 %bOR, 0
  br i1 %tobool11, label %cond.end24.critedge, label %cond.true12

cond.true12:                                      ; preds = %cond.end5
  %nr13 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 4
  %9 = load i32* %nr13, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds [2 x i32]* %nr, i64 0, i64 0
  store i32 %9, i32* %arrayidx, align 4, !tbaa !0
  %oinsl = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 16
  %10 = load float** %oinsl, align 8, !tbaa !3
  %otav = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 18
  %11 = load float** %otav, align 8, !tbaa !3
  %cmp = icmp eq float* %10, %11
  %.393 = select i1 %cmp, i32 0, i32 %9
  %phitmp = icmp eq i32 %9, 0
  br label %cond.end24

cond.end24.critedge:                              ; preds = %cond.end5
  %arrayidx.c = getelementptr inbounds [2 x i32]* %nr, i64 0, i64 0
  store i32 0, i32* %arrayidx.c, align 4, !tbaa !0
  %otav29.phi.trans.insert = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 18
  %.pre = load float** %otav29.phi.trans.insert, align 8, !tbaa !3
  %oinsl32.phi.trans.insert = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 16
  %.pre387 = load float** %oinsl32.phi.trans.insert, align 8, !tbaa !3
  br label %cond.end24

cond.end24:                                       ; preds = %cond.true12, %cond.end24.critedge
  %12 = phi i1 [ true, %cond.end24.critedge ], [ %phitmp, %cond.true12 ]
  %13 = phi float* [ %.pre387, %cond.end24.critedge ], [ %10, %cond.true12 ]
  %14 = phi float* [ %.pre, %cond.end24.critedge ], [ %11, %cond.true12 ]
  %15 = phi i32 [ 0, %cond.end24.critedge ], [ %.393, %cond.true12 ]
  %arrayidx26 = getelementptr inbounds [2 x i32]* %nr, i64 0, i64 1
  store i32 %15, i32* %arrayidx26, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds [2 x i32]* %nr, i64 0, i64 0
  %nr27 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5
  store i32* %arraydecay, i32** %nr27, align 8, !tbaa !3
  %arrayidx30 = getelementptr inbounds [2 x float*]* %block, i64 0, i64 0
  store float* %14, float** %arrayidx30, align 16, !tbaa !3
  %arrayidx33 = getelementptr inbounds [2 x float*]* %block, i64 0, i64 1
  store float* %13, float** %arrayidx33, align 8, !tbaa !3
  %block35 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 15
  store float** %arrayidx30, float*** %block35, align 8, !tbaa !3
  %nblock = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4
  %. = select i1 %12, i32 0, i32 2
  store i32 %., i32* %nblock, align 8, !tbaa !0
  %16 = or i32 %3, %6
  %or.cond.not.not = icmp eq i32 %16, 0
  %brmerge.not = and i1 %12, %or.cond.not.not
  %tobool51 = icmp eq i32 %15, 0
  %or.cond394 = and i1 %brmerge.not, %tobool51
  br i1 %or.cond394, label %sw.epilog, label %if.then52

if.then52:                                        ; preds = %cond.end24
  %call = call i32 @do_enx(i32 %fp_ene, %struct.t_enxframe* %fr) #6
  br label %sw.epilog

sw.bb54:                                          ; preds = %entry
  %cond362 = icmp eq %struct._IO_FILE* %log, null
  br i1 %cond362, label %if.end207, label %if.then56

if.then56:                                        ; preds = %sw.bb54
  call fastcc void @pprint(%struct._IO_FILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str65, i64 0, i64 0)) #8
  br label %if.then63

sw.bb58:                                          ; preds = %entry
  %cond363 = icmp eq %struct._IO_FILE* %log, null
  br i1 %cond363, label %if.end207, label %if.then60

if.then60:                                        ; preds = %sw.bb58
  call fastcc void @pprint(%struct._IO_FILE* %log, i8* getelementptr inbounds ([32 x i8]* @.str66, i64 0, i64 0)) #8
  br label %if.then63

sw.default:                                       ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str67, i64 0, i64 0), i32 %mode) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end24, %if.then52, %sw.default
  %tobool62 = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool62, label %if.end207, label %if.then63

if.then63:                                        ; preds = %if.then56, %if.then60, %sw.epilog
  %nr65 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 4
  %17 = load i32* %nr65, align 4, !tbaa !0
  %tobool66 = icmp eq i32 %17, 0
  br i1 %tobool66, label %if.end68, label %if.then67

if.then67:                                        ; preds = %if.then63
  call void @print_orires_log(%struct._IO_FILE* %log, %struct.t_fcdata* %fcd) #6
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %if.then67
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str64, i64 0, i64 0)) #6
  %ebin70 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 0
  %18 = load %struct.t_ebin** %ebin70, align 8, !tbaa !3
  %ie = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 1
  %19 = load i32* %ie, align 4, !tbaa !0
  %20 = load i32* @f_nre, align 4, !tbaa !0
  call void @pr_ebin(%struct._IO_FILE* %log, %struct.t_ebin* %18, i32 %19, i32 %20, i32 5, i32 %mode, i32 %steps, i32 1) #6
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  %tobool72 = icmp eq i32 %bCompact, 0
  br i1 %tobool72, label %if.then73, label %if.end207

if.then73:                                        ; preds = %if.end68
  %21 = load i32* @bPC, align 4, !tbaa !0
  %tobool74 = icmp eq i32 %21, 0
  br i1 %tobool74, label %if.end80, label %if.then75

if.then75:                                        ; preds = %if.then73
  %22 = load %struct.t_ebin** %ebin70, align 8, !tbaa !3
  %ib = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 2
  %23 = load i32* %ib, align 4, !tbaa !0
  %24 = load i32* @bTricl, align 4, !tbaa !0
  %tobool77 = icmp ne i32 %24, 0
  %conv = select i1 %tobool77, i32 9, i32 6
  call void @pr_ebin(%struct._IO_FILE* %log, %struct.t_ebin* %22, i32 %23, i32 %conv, i32 5, i32 %mode, i32 %steps, i32 1) #6
  %fputc333 = call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  br label %if.end80

if.end80:                                         ; preds = %if.then73, %if.then75
  %25 = load i32* @bShake, align 4, !tbaa !0
  %tobool81 = icmp eq i32 %25, 0
  br i1 %tobool81, label %if.end89, label %if.then82

if.then82:                                        ; preds = %if.end80
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str64, i64 0, i64 0)) #6
  %26 = load %struct.t_ebin** %ebin70, align 8, !tbaa !3
  %isvir = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 3
  %27 = load i32* %isvir, align 4, !tbaa !0
  call void @pr_ebin(%struct._IO_FILE* %log, %struct.t_ebin* %26, i32 %27, i32 9, i32 3, i32 %mode, i32 %steps, i32 0) #6
  %fputc336 = call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str71, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str64, i64 0, i64 0)) #6
  %28 = load %struct.t_ebin** %ebin70, align 8, !tbaa !3
  %ifvir = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 4
  %29 = load i32* %ifvir, align 4, !tbaa !0
  call void @pr_ebin(%struct._IO_FILE* %log, %struct.t_ebin* %28, i32 %29, i32 9, i32 3, i32 %mode, i32 %steps, i32 0) #6
  %fputc339 = call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  br label %if.end89

if.end89:                                         ; preds = %if.end80, %if.then82
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str64, i64 0, i64 0)) #6
  %30 = load %struct.t_ebin** %ebin70, align 8, !tbaa !3
  %ivir = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 6
  %31 = load i32* %ivir, align 4, !tbaa !0
  call void @pr_ebin(%struct._IO_FILE* %log, %struct.t_ebin* %30, i32 %31, i32 9, i32 3, i32 %mode, i32 %steps, i32 0) #6
  %fputc342 = call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str73, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %log)
  %33 = load %struct.t_ebin** %ebin70, align 8, !tbaa !3
  %ipres = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 5
  %34 = load i32* %ipres, align 4, !tbaa !0
  call void @pr_ebin(%struct._IO_FILE* %log, %struct.t_ebin* %33, i32 %34, i32 9, i32 3, i32 %mode, i32 %steps, i32 0) #6
  %fputc345 = call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  %35 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str74, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %log)
  %36 = load %struct.t_ebin** %ebin70, align 8, !tbaa !3
  %imu = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 10
  %37 = load i32* %imu, align 4, !tbaa !0
  call void @pr_ebin(%struct._IO_FILE* %log, %struct.t_ebin* %36, i32 %37, i32 3, i32 3, i32 %mode, i32 %steps, i32 0) #6
  %fputc348 = call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  %nE = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 13
  %38 = load i32* %nE, align 4, !tbaa !0
  %cmp99 = icmp sgt i32 %38, 1
  br i1 %cmp99, label %if.then101, label %if.end173

if.then101:                                       ; preds = %if.end89
  %39 = load i8*** @print_ebin.grpnms, align 8, !tbaa !3
  %cmp102 = icmp eq i8** %39, null
  br i1 %cmp102, label %if.then104, label %if.end136

if.then104:                                       ; preds = %if.then101
  %call106 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8]* @.str44, i64 0, i64 0), i32 504, i32 %38, i32 8) #6
  %40 = bitcast i8* %call106 to i8**
  store i8** %40, i8*** @print_ebin.grpnms, align 8, !tbaa !3
  %nEg = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 14
  %41 = load i32* %nEg, align 4, !tbaa !0
  %cmp107372 = icmp sgt i32 %41, 0
  br i1 %cmp107372, label %for.body.lr.ph, label %if.end136

for.body.lr.ph:                                   ; preds = %if.then104
  %nm_ind = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 1, i32 1
  %grpname = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc133
  %42 = phi i32 [ %41, %for.body.lr.ph ], [ %56, %for.inc133 ]
  %indvars.iv385 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next386, %for.inc133 ]
  %n.0373 = phi i32 [ 0, %for.body.lr.ph ], [ %n.1.lcssa, %for.inc133 ]
  %43 = trunc i64 %indvars.iv385 to i32
  %cmp113369 = icmp slt i32 %43, %42
  br i1 %cmp113369, label %for.body115.lr.ph, label %for.inc133

for.body115.lr.ph:                                ; preds = %for.body
  %44 = load i32** %nm_ind, align 8, !tbaa !3
  %arrayidx110 = getelementptr inbounds i32* %44, i64 %indvars.iv385
  %45 = load i32* %arrayidx110, align 4, !tbaa !0
  %idxprom122 = sext i32 %45 to i64
  %46 = sext i32 %n.0373 to i64
  br label %for.body115

for.body115:                                      ; preds = %for.body115.for.body115_crit_edge, %for.body115.lr.ph
  %47 = phi i32 [ %45, %for.body115.lr.ph ], [ %.pre389, %for.body115.for.body115_crit_edge ]
  %indvars.iv383 = phi i64 [ %indvars.iv385, %for.body115.lr.ph ], [ %indvars.iv.next384, %for.body115.for.body115_crit_edge ]
  %indvars.iv379 = phi i64 [ %46, %for.body115.lr.ph ], [ %indvars.iv.next380, %for.body115.for.body115_crit_edge ]
  %n.1371 = phi i32 [ %n.0373, %for.body115.lr.ph ], [ %inc, %for.body115.for.body115_crit_edge ]
  %48 = load i8**** %grpname, align 8, !tbaa !3
  %arrayidx123 = getelementptr inbounds i8*** %48, i64 %idxprom122
  %49 = load i8*** %arrayidx123, align 8, !tbaa !3
  %50 = load i8** %49, align 8, !tbaa !3
  %idxprom124 = sext i32 %47 to i64
  %arrayidx126 = getelementptr inbounds i8*** %48, i64 %idxprom124
  %51 = load i8*** %arrayidx126, align 8, !tbaa !3
  %52 = load i8** %51, align 8, !tbaa !3
  %call127 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str75, i64 0, i64 0), i8* %50, i8* %52) #6
  %call129 = call i8* @gmx_strdup(i8* %0) #6
  %inc = add nsw i32 %n.1371, 1
  %53 = load i8*** @print_ebin.grpnms, align 8, !tbaa !3
  %arrayidx131 = getelementptr inbounds i8** %53, i64 %indvars.iv379
  store i8* %call129, i8** %arrayidx131, align 8, !tbaa !3
  %indvars.iv.next384 = add i64 %indvars.iv383, 1
  %54 = load i32* %nEg, align 4, !tbaa !0
  %55 = trunc i64 %indvars.iv.next384 to i32
  %cmp113 = icmp slt i32 %55, %54
  br i1 %cmp113, label %for.body115.for.body115_crit_edge, label %for.inc133

for.body115.for.body115_crit_edge:                ; preds = %for.body115
  %indvars.iv.next380 = add i64 %indvars.iv379, 1
  %.pre388 = load i32** %nm_ind, align 8, !tbaa !3
  %arrayidx120.phi.trans.insert = getelementptr inbounds i32* %.pre388, i64 %indvars.iv.next384
  %.pre389 = load i32* %arrayidx120.phi.trans.insert, align 4, !tbaa !0
  br label %for.body115

for.inc133:                                       ; preds = %for.body115, %for.body
  %56 = phi i32 [ %42, %for.body ], [ %54, %for.body115 ]
  %n.1.lcssa = phi i32 [ %n.0373, %for.body ], [ %inc, %for.body115 ]
  %indvars.iv.next386 = add i64 %indvars.iv385, 1
  %57 = trunc i64 %indvars.iv.next386 to i32
  %cmp107 = icmp slt i32 %57, %56
  br i1 %cmp107, label %for.body, label %if.end136

if.end136:                                        ; preds = %if.then104, %for.inc133, %if.then101
  %call138 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str64, i64 0, i64 0)) #6
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([8 x i8]* @.str77, i64 0, i64 0), i8* %0) #6
  br label %for.body144

for.body144:                                      ; preds = %for.inc153, %if.end136
  %indvars.iv377 = phi i64 [ 0, %if.end136 ], [ %indvars.iv.next378, %for.inc153 ]
  %arrayidx146 = getelementptr inbounds [7 x i32]* @bEInd, i64 0, i64 %indvars.iv377
  %58 = load i32* %arrayidx146, align 4, !tbaa !0
  %tobool147 = icmp eq i32 %58, 0
  br i1 %tobool147, label %for.inc153, label %if.then148

if.then148:                                       ; preds = %for.body144
  %arrayidx150 = getelementptr inbounds [8 x i8*]* @egrp_nm, i64 0, i64 %indvars.iv377
  %59 = load i8** %arrayidx150, align 8, !tbaa !3
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0), i8* %59) #6
  br label %for.inc153

for.inc153:                                       ; preds = %for.body144, %if.then148
  %indvars.iv.next378 = add i64 %indvars.iv377, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next378 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 7
  br i1 %exitcond, label %for.end155, label %for.body144

for.end155:                                       ; preds = %for.inc153
  %fputc357 = call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  %60 = load i32* %nE, align 4, !tbaa !0
  %cmp159366 = icmp sgt i32 %60, 0
  br i1 %cmp159366, label %for.body161.lr.ph, label %for.end171

for.body161.lr.ph:                                ; preds = %for.end155
  %igrp = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 18
  %nEc = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 15
  br label %for.body161

for.body161:                                      ; preds = %for.body161.lr.ph, %for.body161
  %indvars.iv375 = phi i64 [ 0, %for.body161.lr.ph ], [ %indvars.iv.next376, %for.body161 ]
  %61 = load i8*** @print_ebin.grpnms, align 8, !tbaa !3
  %arrayidx163 = getelementptr inbounds i8** %61, i64 %indvars.iv375
  %62 = load i8** %arrayidx163, align 8, !tbaa !3
  %call164 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str79, i64 0, i64 0), i8* %62) #6
  %63 = load %struct.t_ebin** %ebin70, align 8, !tbaa !3
  %64 = load i32** %igrp, align 8, !tbaa !3
  %arrayidx167 = getelementptr inbounds i32* %64, i64 %indvars.iv375
  %65 = load i32* %arrayidx167, align 4, !tbaa !0
  %66 = load i32* %nEc, align 4, !tbaa !0
  call void @pr_ebin(%struct._IO_FILE* %log, %struct.t_ebin* %63, i32 %65, i32 %66, i32 %66, i32 %mode, i32 %steps, i32 0) #6
  %indvars.iv.next376 = add i64 %indvars.iv375, 1
  %67 = load i32* %nE, align 4, !tbaa !0
  %68 = trunc i64 %indvars.iv.next376 to i32
  %cmp159 = icmp slt i32 %68, %67
  br i1 %cmp159, label %for.body161, label %for.end171

for.end171:                                       ; preds = %for.body161, %for.end155
  %fputc360 = call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  br label %if.end173

if.end173:                                        ; preds = %for.end171, %if.end89
  %nTC = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 16
  %69 = load i32* %nTC, align 4, !tbaa !0
  %cmp174 = icmp sgt i32 %69, 1
  br i1 %cmp174, label %if.then176, label %if.end180

if.then176:                                       ; preds = %if.end173
  %70 = load %struct.t_ebin** %ebin70, align 8, !tbaa !3
  %itc = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 8
  %71 = load i32* %itc, align 4, !tbaa !0
  %mul = shl nsw i32 %69, 1
  call void @pr_ebin(%struct._IO_FILE* %log, %struct.t_ebin* %70, i32 %71, i32 %mul, i32 4, i32 %mode, i32 %steps, i32 1) #6
  %fputc354 = call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  br label %if.end180

if.end180:                                        ; preds = %if.then176, %if.end173
  %nU = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 17
  %72 = load i32* %nU, align 4, !tbaa !0
  %cmp181 = icmp sgt i32 %72, 1
  br i1 %cmp181, label %if.then183, label %if.end207

if.then183:                                       ; preds = %if.end180
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str84, i64 0, i64 0)) #6
  %73 = load i32* %nU, align 4, !tbaa !0
  %cmp187364 = icmp sgt i32 %73, 0
  br i1 %cmp187364, label %for.body189.lr.ph, label %for.end203

for.body189.lr.ph:                                ; preds = %if.then183
  %nm_ind193 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 2, i32 1
  %grpname196 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8
  %iu = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 9
  br label %for.body189

for.body189:                                      ; preds = %for.body189.lr.ph, %for.body189
  %indvars.iv = phi i64 [ 0, %for.body189.lr.ph ], [ %indvars.iv.next, %for.body189 ]
  %74 = load i32** %nm_ind193, align 8, !tbaa !3
  %arrayidx194 = getelementptr inbounds i32* %74, i64 %indvars.iv
  %75 = load i32* %arrayidx194, align 4, !tbaa !0
  %idxprom195 = sext i32 %75 to i64
  %76 = load i8**** %grpname196, align 8, !tbaa !3
  %arrayidx197 = getelementptr inbounds i8*** %76, i64 %idxprom195
  %77 = load i8*** %arrayidx197, align 8, !tbaa !3
  %78 = load i8** %77, align 8, !tbaa !3
  %call198 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str79, i64 0, i64 0), i8* %78) #6
  %79 = load %struct.t_ebin** %ebin70, align 8, !tbaa !3
  %80 = load i32* %iu, align 4, !tbaa !0
  %81 = trunc i64 %indvars.iv to i32
  %mul200 = mul nsw i32 %81, 3
  %add = add nsw i32 %80, %mul200
  call void @pr_ebin(%struct._IO_FILE* %log, %struct.t_ebin* %79, i32 %add, i32 3, i32 3, i32 %mode, i32 %steps, i32 0) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %82 = load i32* %nU, align 4, !tbaa !0
  %83 = trunc i64 %indvars.iv.next to i32
  %cmp187 = icmp slt i32 %83, %82
  br i1 %cmp187, label %for.body189, label %for.end203

for.end203:                                       ; preds = %for.body189, %if.then183
  %fputc351 = call i32 @fputc(i32 10, %struct._IO_FILE* %log)
  br label %if.end207

if.end207:                                        ; preds = %sw.bb58, %sw.bb54, %if.end68, %sw.epilog, %for.end203, %if.end180
  call void @llvm.lifetime.end(i64 96, i8* %1) #1
  call void @llvm.lifetime.end(i64 246, i8* %0) #1
  ret void
}

; Function Attrs: optsize
declare i32 @do_enx(i32, %struct.t_enxframe*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pprint(%struct._IO_FILE* %log, i8* %s) #0 {
entry:
  %tobool = icmp eq %struct._IO_FILE* %log, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* %s) #5
  %conv = trunc i64 %call to i32
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str85, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %log)
  %cmp1.i = icmp sgt i32 %conv, 0
  br i1 %cmp1.i, label %for.body.i, label %npr.exit24.critedge

for.body.i:                                       ; preds = %if.then, %for.body.i
  %n.addr.02.i = phi i32 [ %dec.i, %for.body.i ], [ %conv, %if.then ]
  %fputc.i = tail call i32 @fputc(i32 35, %struct._IO_FILE* %log) #1
  %dec.i = add nsw i32 %n.addr.02.i, -1
  %cmp.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp.i, label %for.body.i, label %for.body.i23.preheader

for.body.i23.preheader:                           ; preds = %for.body.i
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str86, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %log)
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([19 x i8]* @.str87, i64 0, i64 0), i8* %s) #6
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str88, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %log)
  br label %for.body.i23

for.body.i23:                                     ; preds = %for.body.i23.preheader, %for.body.i23
  %n.addr.02.i19 = phi i32 [ %dec.i21, %for.body.i23 ], [ %conv, %for.body.i23.preheader ]
  %fputc.i20 = tail call i32 @fputc(i32 35, %struct._IO_FILE* %log) #1
  %dec.i21 = add nsw i32 %n.addr.02.i19, -1
  %cmp.i22 = icmp sgt i32 %dec.i21, 0
  br i1 %cmp.i22, label %for.body.i23, label %npr.exit24

npr.exit24.critedge:                              ; preds = %if.then
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str86, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %log)
  %call3.c = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([19 x i8]* @.str87, i64 0, i64 0), i8* %s) #6
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str88, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* %log)
  br label %npr.exit24

npr.exit24:                                       ; preds = %for.body.i23, %npr.exit24.critedge
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str89, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %log)
  br label %if.end

if.end:                                           ; preds = %entry, %npr.exit24
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: optsize
declare void @print_orires_log(%struct._IO_FILE*, %struct.t_fcdata*) #3

; Function Attrs: optsize
declare void @pr_ebin(%struct._IO_FILE*, %struct.t_ebin*, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
