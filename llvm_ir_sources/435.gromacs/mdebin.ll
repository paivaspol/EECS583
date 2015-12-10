; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/mdebin.c'
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
@.str44 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/mdebin.c\00", align 1
@tricl_boxs_nm = internal global [9 x i8*] [i8* getelementptr inbounds ([7 x i8]* @.str85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str86, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str91, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str92, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str93, i32 0, i32 0)], align 16
@boxs_nm = internal global [6 x i8*] [i8* getelementptr inbounds ([6 x i8]* @.str94, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str95, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str96, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str91, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str92, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str93, i32 0, i32 0)], align 16
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
@.str85 = private unnamed_addr constant [7 x i8] c"Box-XX\00", align 1
@.str86 = private unnamed_addr constant [7 x i8] c"Box-YX\00", align 1
@.str87 = private unnamed_addr constant [7 x i8] c"Box-YY\00", align 1
@.str88 = private unnamed_addr constant [7 x i8] c"Box-ZX\00", align 1
@.str89 = private unnamed_addr constant [7 x i8] c"Box-ZY\00", align 1
@.str90 = private unnamed_addr constant [7 x i8] c"Box-ZZ\00", align 1
@.str91 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str92 = private unnamed_addr constant [13 x i8] c"Density (SI)\00", align 1
@.str93 = private unnamed_addr constant [3 x i8] c"pV\00", align 1
@.str94 = private unnamed_addr constant [6 x i8] c"Box-X\00", align 1
@.str95 = private unnamed_addr constant [6 x i8] c"Box-Y\00", align 1
@.str96 = private unnamed_addr constant [6 x i8] c"Box-Z\00", align 1
@.str97 = private unnamed_addr constant [11 x i8] c"\09<======  \00", align 1
@.str98 = private unnamed_addr constant [7 x i8] c"  ==>\0A\00", align 1
@.str99 = private unnamed_addr constant [19 x i8] c"\09<====  %s  ====>\0A\00", align 1
@.str100 = private unnamed_addr constant [7 x i8] c"\09<==  \00", align 1
@.str101 = private unnamed_addr constant [12 x i8] c"  ======>\0A\0A\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #9
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #9
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #9
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #9
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #8
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #8
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_mdebin* @init_mdebin(i32 %fp_ene, %struct.t_groups* nocapture readonly %grps, %struct.t_atoms* nocapture readonly %atoms, %struct.t_idef* nocapture readonly %idef, i32 %bLR, i32 %bLJLR, i32 %bBHAM, i32 %b14, i32 %bFEP, i32 %bPcoupl, i32 %bDispCorr, i32 %bTriclinic, i32 %bNoseHoover, %struct.t_commrec* %cr) #4 {
  %ener_nm = alloca [44 x i8*], align 16
  %buf = alloca [256 x i8], align 16
  %1 = bitcast [44 x i8*]* %ener_nm to i8*
  call void @llvm.lifetime.start(i64 352, i8* %1) #5
  %2 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %2) #5
  %3 = icmp ne i32 %bDispCorr, 0
  %4 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 21, i32 0
  %5 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 23, i32 0
  %6 = icmp eq i32 %bBHAM, 0
  %7 = zext i1 %6 to i32
  br label %8

; <label>:8                                       ; preds = %46, %0
  %indvars.iv72 = phi i64 [ 0, %0 ], [ %indvars.iv.next73, %46 ]
  %9 = getelementptr inbounds [44 x i32]* @bEner, i64 0, i64 %indvars.iv72
  store i32 0, i32* %9, align 4, !tbaa !18
  %10 = trunc i64 %indvars.iv72 to i32
  switch i32 %10, label %17 [
    i32 13, label %11
    i32 14, label %12
    i32 18, label %13
    i32 15, label %14
    i32 11, label %15
    i32 12, label %16
  ]

; <label>:11                                      ; preds = %8
  store i32 %7, i32* %9, align 4, !tbaa !18
  br label %46

; <label>:12                                      ; preds = %8
  store i32 %bBHAM, i32* %9, align 4, !tbaa !18
  br label %46

; <label>:13                                      ; preds = %8
  store i32 %bLR, i32* %9, align 4, !tbaa !18
  br label %46

; <label>:14                                      ; preds = %8
  store i32 %bLJLR, i32* %9, align 4, !tbaa !18
  br label %46

; <label>:15                                      ; preds = %8
  store i32 %b14, i32* %9, align 4, !tbaa !18
  br label %46

; <label>:16                                      ; preds = %8
  store i32 %b14, i32* %9, align 4, !tbaa !18
  br label %46

; <label>:17                                      ; preds = %8
  %18 = and i32 %10, -2
  %19 = icmp eq i32 %18, 42
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %17
  store i32 %bFEP, i32* %9, align 4, !tbaa !18
  br label %46

; <label>:21                                      ; preds = %17
  %22 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv72, i32 0
  %23 = load i8** %22, align 8, !tbaa !19
  %24 = tail call i8* @strstr(i8* %23, i8* getelementptr inbounds ([4 x i8]* @.str42, i64 0, i64 0)) #8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %switch.early.test, label %26

switch.early.test:                                ; preds = %21
  switch i32 %10, label %28 [
    i32 29, label %26
    i32 27, label %26
    i32 41, label %27
    i32 40, label %27
    i32 39, label %27
    i32 38, label %27
    i32 37, label %27
    i32 17, label %27
  ]

; <label>:26                                      ; preds = %21, %switch.early.test, %switch.early.test
  store i32 0, i32* %9, align 4, !tbaa !18
  br label %46

; <label>:27                                      ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test
  store i32 1, i32* %9, align 4, !tbaa !18
  br label %46

; <label>:28                                      ; preds = %switch.early.test
  %29 = icmp eq i32 %10, 16
  %or.cond17 = and i1 %3, %29
  br i1 %or.cond17, label %30, label %31

; <label>:30                                      ; preds = %28
  store i32 1, i32* %9, align 4, !tbaa !18
  br label %46

; <label>:31                                      ; preds = %28
  switch i32 %10, label %41 [
    i32 22, label %32
    i32 24, label %36
    i32 4, label %40
  ]

; <label>:32                                      ; preds = %31
  %33 = load i32* %4, align 4, !tbaa !22
  %34 = icmp sgt i32 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %9, align 4, !tbaa !18
  br label %46

; <label>:36                                      ; preds = %31
  %37 = load i32* %5, align 4, !tbaa !22
  %38 = icmp sgt i32 %37, 0
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %9, align 4, !tbaa !18
  br label %46

; <label>:40                                      ; preds = %31
  store i32 0, i32* %9, align 4, !tbaa !18
  br label %46

; <label>:41                                      ; preds = %31
  %42 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv72, i32 0
  %43 = load i32* %42, align 4, !tbaa !22
  %44 = icmp sgt i32 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %9, align 4, !tbaa !18
  br label %46

; <label>:46                                      ; preds = %11, %13, %15, %20, %27, %32, %40, %41, %36, %30, %26, %16, %14, %12
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %exitcond74 = icmp eq i64 %indvars.iv.next73, 44
  br i1 %exitcond74, label %47, label %8

; <label>:47                                      ; preds = %46
  %48 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %49 = load i32* %48, align 4, !tbaa !24
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %55, label %51

; <label>:51                                      ; preds = %47
  %52 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %53 = load i32* %52, align 4, !tbaa !26
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %.preheader19

; <label>:55                                      ; preds = %51, %47
  tail call void @gmx_sumi(i32 44, i32* getelementptr inbounds ([44 x i32]* @bEner, i64 0, i64 0), %struct.t_commrec* %cr) #8
  br label %.preheader19

.preheader19:                                     ; preds = %51, %55, %68
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %68 ], [ 0, %55 ], [ 0, %51 ]
  %56 = getelementptr inbounds [44 x i32]* @bEner, i64 0, i64 %indvars.iv69
  %57 = load i32* %56, align 4, !tbaa !18
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %68, label %59

; <label>:59                                      ; preds = %.preheader19
  %60 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv69, i32 1
  %61 = bitcast i8** %60 to i64*
  %62 = load i64* %61, align 8, !tbaa !27
  %63 = load i32* @f_nre, align 4, !tbaa !18
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [44 x i8*]* %ener_nm, i64 0, i64 %64
  %66 = bitcast i8** %65 to i64*
  store i64 %62, i64* %66, align 8, !tbaa !28
  %67 = add nsw i32 %63, 1
  store i32 %67, i32* @f_nre, align 4, !tbaa !18
  br label %68

; <label>:68                                      ; preds = %.preheader19, %59
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %exitcond71 = icmp eq i64 %indvars.iv.next70, 44
  br i1 %exitcond71, label %69, label %.preheader19

; <label>:69                                      ; preds = %68
  %70 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 27, i32 0
  %71 = load i32* %70, align 4, !tbaa !22
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %77, label %73

; <label>:73                                      ; preds = %69
  %74 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 29, i32 0
  %75 = load i32* %74, align 4, !tbaa !22
  %76 = icmp sgt i32 %75, 0
  br label %77

; <label>:77                                      ; preds = %73, %69
  %78 = phi i1 [ true, %69 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %. = select i1 %78, i32 0, i32 %79
  store i32 %., i32* @bShake, align 4, !tbaa !18
  store i32 %bPcoupl, i32* @bPC, align 4, !tbaa !18
  store i32 %bTriclinic, i32* @bTricl, align 4, !tbaa !18
  %80 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str44, i64 0, i64 0), i32 164, i32 1, i32 88) #8
  %81 = bitcast i8* %80 to %struct.t_mdebin*
  %82 = tail call %struct.t_ebin* @mk_ebin() #8
  %83 = bitcast i8* %80 to %struct.t_ebin**
  store %struct.t_ebin* %82, %struct.t_ebin** %83, align 8, !tbaa !29
  %84 = load i32* @f_nre, align 4, !tbaa !18
  %85 = getelementptr inbounds [44 x i8*]* %ener_nm, i64 0, i64 0
  %86 = call i32 @get_ebin_space(%struct.t_ebin* %82, i32 %84, i8** %85) #8
  %87 = getelementptr inbounds i8* %80, i64 8
  %88 = bitcast i8* %87 to i32*
  store i32 %86, i32* %88, align 4, !tbaa !31
  %89 = load i32* @bPC, align 4, !tbaa !18
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %100, label %91

; <label>:91                                      ; preds = %77
  %92 = load %struct.t_ebin** %83, align 8, !tbaa !29
  %93 = load i32* @bTricl, align 4, !tbaa !18
  %94 = icmp ne i32 %93, 0
  %95 = select i1 %94, i32 9, i32 6
  %96 = select i1 %94, i8** getelementptr inbounds ([9 x i8*]* @tricl_boxs_nm, i64 0, i64 0), i8** getelementptr inbounds ([6 x i8*]* @boxs_nm, i64 0, i64 0)
  %97 = call i32 @get_ebin_space(%struct.t_ebin* %92, i32 %95, i8** %96) #8
  %98 = getelementptr inbounds i8* %80, i64 12
  %99 = bitcast i8* %98 to i32*
  store i32 %97, i32* %99, align 4, !tbaa !32
  br label %100

; <label>:100                                     ; preds = %77, %91
  %101 = load i32* @bShake, align 4, !tbaa !18
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %112, label %103

; <label>:103                                     ; preds = %100
  %104 = load %struct.t_ebin** %83, align 8, !tbaa !29
  %105 = call i32 @get_ebin_space(%struct.t_ebin* %104, i32 9, i8** getelementptr inbounds ([9 x i8*]* @init_mdebin.sv_nm, i64 0, i64 0)) #8
  %106 = getelementptr inbounds i8* %80, i64 16
  %107 = bitcast i8* %106 to i32*
  store i32 %105, i32* %107, align 4, !tbaa !33
  %108 = load %struct.t_ebin** %83, align 8, !tbaa !29
  %109 = call i32 @get_ebin_space(%struct.t_ebin* %108, i32 9, i8** getelementptr inbounds ([9 x i8*]* @init_mdebin.fv_nm, i64 0, i64 0)) #8
  %110 = getelementptr inbounds i8* %80, i64 20
  %111 = bitcast i8* %110 to i32*
  store i32 %109, i32* %111, align 4, !tbaa !34
  br label %112

; <label>:112                                     ; preds = %100, %103
  %113 = load %struct.t_ebin** %83, align 8, !tbaa !29
  %114 = call i32 @get_ebin_space(%struct.t_ebin* %113, i32 9, i8** getelementptr inbounds ([9 x i8*]* @init_mdebin.vir_nm, i64 0, i64 0)) #8
  %115 = getelementptr inbounds i8* %80, i64 28
  %116 = bitcast i8* %115 to i32*
  store i32 %114, i32* %116, align 4, !tbaa !35
  %117 = load %struct.t_ebin** %83, align 8, !tbaa !29
  %118 = call i32 @get_ebin_space(%struct.t_ebin* %117, i32 9, i8** getelementptr inbounds ([9 x i8*]* @init_mdebin.pres_nm, i64 0, i64 0)) #8
  %119 = getelementptr inbounds i8* %80, i64 24
  %120 = bitcast i8* %119 to i32*
  store i32 %118, i32* %120, align 4, !tbaa !36
  %121 = load %struct.t_ebin** %83, align 8, !tbaa !29
  %122 = call i32 @get_ebin_space(%struct.t_ebin* %121, i32 1, i8** getelementptr inbounds ([1 x i8*]* @init_mdebin.surft_nm, i64 0, i64 0)) #8
  %123 = getelementptr inbounds i8* %80, i64 32
  %124 = bitcast i8* %123 to i32*
  store i32 %122, i32* %124, align 4, !tbaa !37
  %125 = load %struct.t_ebin** %83, align 8, !tbaa !29
  %126 = call i32 @get_ebin_space(%struct.t_ebin* %125, i32 3, i8** getelementptr inbounds ([3 x i8*]* @init_mdebin.mu_nm, i64 0, i64 0)) #8
  %127 = getelementptr inbounds i8* %80, i64 44
  %128 = bitcast i8* %127 to i32*
  store i32 %126, i32* %128, align 4, !tbaa !38
  %129 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 0
  %130 = load float* %129, align 4, !tbaa !39
  %fabsf = call float @fabsf(float %130) #10
  %131 = fpext float %fabsf to double
  %132 = fcmp ogt double %131, 1.200000e-38
  br i1 %132, label %133, label %142

; <label>:133                                     ; preds = %112
  %134 = load %struct.t_ebin** %83, align 8, !tbaa !29
  %135 = call i32 @get_ebin_space(%struct.t_ebin* %134, i32 1, i8** getelementptr inbounds ([1 x i8*]* @init_mdebin.vcos_nm, i64 0, i64 0)) #8
  %136 = getelementptr inbounds i8* %80, i64 48
  %137 = bitcast i8* %136 to i32*
  store i32 %135, i32* %137, align 4, !tbaa !43
  %138 = load %struct.t_ebin** %83, align 8, !tbaa !29
  %139 = call i32 @get_ebin_space(%struct.t_ebin* %138, i32 1, i8** getelementptr inbounds ([1 x i8*]* @init_mdebin.visc_nm, i64 0, i64 0)) #8
  %140 = getelementptr inbounds i8* %80, i64 52
  %141 = bitcast i8* %140 to i32*
  store i32 %139, i32* %141, align 4, !tbaa !44
  br label %142

; <label>:142                                     ; preds = %133, %112
  %143 = icmp eq i32 %bLR, 0
  br i1 %143, label %145, label %144

; <label>:144                                     ; preds = %142
  store i32 1, i32* getelementptr inbounds ([7 x i32]* @bEInd, i64 0, i64 3), align 4, !tbaa !18
  br label %145

; <label>:145                                     ; preds = %142, %144
  %146 = icmp eq i32 %bLJLR, 0
  br i1 %146, label %148, label %147

; <label>:147                                     ; preds = %145
  store i32 1, i32* getelementptr inbounds ([7 x i32]* @bEInd, i64 0, i64 4), align 16, !tbaa !18
  br label %148

; <label>:148                                     ; preds = %145, %147
  br i1 %6, label %150, label %149

; <label>:149                                     ; preds = %148
  store i32 0, i32* getelementptr inbounds ([7 x i32]* @bEInd, i64 0, i64 1), align 4, !tbaa !18
  store i32 1, i32* getelementptr inbounds ([7 x i32]* @bEInd, i64 0, i64 2), align 8, !tbaa !18
  br label %150

; <label>:150                                     ; preds = %148, %149
  %151 = icmp eq i32 %b14, 0
  br i1 %151, label %153, label %152

; <label>:152                                     ; preds = %150
  store i32 1, i32* getelementptr inbounds ([7 x i32]* @bEInd, i64 0, i64 6), align 8, !tbaa !18
  store i32 1, i32* getelementptr inbounds ([7 x i32]* @bEInd, i64 0, i64 5), align 4, !tbaa !18
  br label %153

; <label>:153                                     ; preds = %150, %152
  %154 = getelementptr inbounds i8* %80, i64 64
  %155 = bitcast i8* %154 to i32*
  store i32 0, i32* %155, align 4, !tbaa !45
  br label %156

; <label>:156                                     ; preds = %163, %153
  %157 = phi i32 [ 0, %153 ], [ %164, %163 ]
  %indvars.iv66 = phi i64 [ 0, %153 ], [ %indvars.iv.next67, %163 ]
  %158 = getelementptr inbounds [7 x i32]* @bEInd, i64 0, i64 %indvars.iv66
  %159 = load i32* %158, align 4, !tbaa !18
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

; <label>:161                                     ; preds = %156
  %162 = add nsw i32 %157, 1
  store i32 %162, i32* %155, align 4, !tbaa !45
  br label %163

; <label>:163                                     ; preds = %156, %161
  %164 = phi i32 [ %157, %156 ], [ %162, %161 ]
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond68 = icmp eq i64 %indvars.iv.next67, 7
  br i1 %exitcond68, label %165, label %156

; <label>:165                                     ; preds = %163
  %166 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 1, i32 0
  %167 = load i32* %166, align 4, !tbaa !46
  %168 = getelementptr inbounds i8* %80, i64 60
  %169 = bitcast i8* %168 to i32*
  store i32 %167, i32* %169, align 4, !tbaa !48
  %170 = add nsw i32 %167, 1
  %171 = mul nsw i32 %170, %167
  %172 = sdiv i32 %171, 2
  %173 = getelementptr inbounds i8* %80, i64 56
  %174 = bitcast i8* %173 to i32*
  store i32 %172, i32* %174, align 4, !tbaa !49
  %175 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str44, i64 0, i64 0), i32 202, i32 %172, i32 4) #8
  %176 = getelementptr inbounds i8* %80, i64 80
  %177 = bitcast i8* %176 to i32**
  %178 = bitcast i8* %176 to i8**
  store i8* %175, i8** %178, align 8, !tbaa !50
  %179 = load i32* %174, align 4, !tbaa !49
  %180 = icmp sgt i32 %179, 1
  br i1 %180, label %181, label %251

; <label>:181                                     ; preds = %165
  %182 = load i32* %155, align 4, !tbaa !45
  %183 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str44, i64 0, i64 0), i32 205, i32 %182, i32 8) #8
  %184 = bitcast i8* %183 to i8**
  %185 = load i32* %155, align 4, !tbaa !45
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %.lr.ph43, label %.preheader18

.preheader18:                                     ; preds = %.lr.ph43, %181
  %187 = phi i32 [ %185, %181 ], [ %194, %.lr.ph43 ]
  %188 = load i32* %166, align 4, !tbaa !46
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %.lr.ph40, label %.preheader

.lr.ph40:                                         ; preds = %.preheader18
  %190 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 1, i32 1
  %191 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8
  br label %199

.lr.ph43:                                         ; preds = %181, %.lr.ph43
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.lr.ph43 ], [ 0, %181 ]
  %192 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str44, i64 0, i64 0), i32 207, i32 4096, i32 1) #8
  %193 = getelementptr inbounds i8** %184, i64 %indvars.iv64
  store i8* %192, i8** %193, align 8, !tbaa !28
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %194 = load i32* %155, align 4, !tbaa !45
  %195 = sext i32 %194 to i64
  %196 = icmp slt i64 %indvars.iv.next65, %195
  br i1 %196, label %.lr.ph43, label %.preheader18

..preheader_crit_edge:                            ; preds = %242
  %.pre77 = load i32* %155, align 4, !tbaa !45
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader18
  %197 = phi i32 [ %.pre77, %..preheader_crit_edge ], [ %187, %.preheader18 ]
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %.lr.ph28, label %._crit_edge29

; <label>:199                                     ; preds = %.lr.ph40, %242
  %200 = phi i32 [ %188, %.lr.ph40 ], [ %243, %242 ]
  %indvars.iv62 = phi i64 [ 0, %.lr.ph40 ], [ %indvars.iv.next63, %242 ]
  %n.038 = phi i32 [ 0, %.lr.ph40 ], [ %n.1.lcssa, %242 ]
  %201 = sext i32 %200 to i64
  %202 = icmp slt i64 %indvars.iv62, %201
  br i1 %202, label %.lr.ph35, label %242

.lr.ph35:                                         ; preds = %199
  %203 = load i32** %190, align 8, !tbaa !51
  %204 = getelementptr inbounds i32* %203, i64 %indvars.iv62
  %205 = load i32* %204, align 4, !tbaa !18
  %206 = sext i32 %205 to i64
  %207 = sext i32 %n.038 to i64
  br label %208

; <label>:208                                     ; preds = %._crit_edge75, %.lr.ph35
  %209 = phi i32 [ %205, %.lr.ph35 ], [ %.pre76, %._crit_edge75 ]
  %indvars.iv60 = phi i64 [ %indvars.iv62, %.lr.ph35 ], [ %indvars.iv.next61, %._crit_edge75 ]
  %indvars.iv56 = phi i64 [ %207, %.lr.ph35 ], [ %indvars.iv.next57, %._crit_edge75 ]
  %210 = sext i32 %209 to i64
  br label %211

; <label>:211                                     ; preds = %231, %208
  %indvars.iv54 = phi i64 [ 0, %208 ], [ %indvars.iv.next55, %231 ]
  %kk.031 = phi i32 [ 0, %208 ], [ %kk.1, %231 ]
  %212 = getelementptr inbounds [7 x i32]* @bEInd, i64 0, i64 %indvars.iv54
  %213 = load i32* %212, align 4, !tbaa !18
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %231, label %215

; <label>:215                                     ; preds = %211
  %216 = sext i32 %kk.031 to i64
  %217 = getelementptr inbounds i8** %184, i64 %216
  %218 = load i8** %217, align 8, !tbaa !28
  %219 = call i64 @llvm.objectsize.i64.p0i8(i8* %218, i1 false)
  %220 = getelementptr inbounds [8 x i8*]* @egrp_nm, i64 0, i64 %indvars.iv54
  %221 = load i8** %220, align 8, !tbaa !28
  %222 = load i8**** %191, align 8, !tbaa !52
  %223 = getelementptr inbounds i8*** %222, i64 %206
  %224 = load i8*** %223, align 8, !tbaa !28
  %225 = load i8** %224, align 8, !tbaa !28
  %226 = getelementptr inbounds i8*** %222, i64 %210
  %227 = load i8*** %226, align 8, !tbaa !28
  %228 = load i8** %227, align 8, !tbaa !28
  %229 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %218, i32 0, i64 %219, i8* getelementptr inbounds ([9 x i8]* @.str48, i64 0, i64 0), i8* %221, i8* %225, i8* %228) #8
  %230 = add nsw i32 %kk.031, 1
  br label %231

; <label>:231                                     ; preds = %211, %215
  %kk.1 = phi i32 [ %230, %215 ], [ %kk.031, %211 ]
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond = icmp eq i64 %indvars.iv.next55, 7
  br i1 %exitcond, label %232, label %211

; <label>:232                                     ; preds = %231
  %233 = load %struct.t_ebin** %83, align 8, !tbaa !29
  %234 = load i32* %155, align 4, !tbaa !45
  %235 = call i32 @get_ebin_space(%struct.t_ebin* %233, i32 %234, i8** %184) #8
  %236 = load i32** %177, align 8, !tbaa !50
  %237 = getelementptr inbounds i32* %236, i64 %indvars.iv56
  store i32 %235, i32* %237, align 4, !tbaa !18
  %indvars.iv.next57 = add i64 %indvars.iv56, 1
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %238 = load i32* %166, align 4, !tbaa !46
  %239 = sext i32 %238 to i64
  %240 = icmp slt i64 %indvars.iv.next61, %239
  br i1 %240, label %._crit_edge75, label %._crit_edge36

._crit_edge75:                                    ; preds = %232
  %.pre = load i32** %190, align 8, !tbaa !51
  %.phi.trans.insert = getelementptr inbounds i32* %.pre, i64 %indvars.iv.next61
  %.pre76 = load i32* %.phi.trans.insert, align 4, !tbaa !18
  br label %208

._crit_edge36:                                    ; preds = %232
  %241 = trunc i64 %indvars.iv.next57 to i32
  br label %242

; <label>:242                                     ; preds = %._crit_edge36, %199
  %243 = phi i32 [ %238, %._crit_edge36 ], [ %200, %199 ]
  %n.1.lcssa = phi i32 [ %241, %._crit_edge36 ], [ %n.038, %199 ]
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %244 = sext i32 %243 to i64
  %245 = icmp slt i64 %indvars.iv.next63, %244
  br i1 %245, label %199, label %..preheader_crit_edge

.lr.ph28:                                         ; preds = %.preheader, %.lr.ph28
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %.lr.ph28 ], [ 0, %.preheader ]
  %246 = getelementptr inbounds i8** %184, i64 %indvars.iv52
  %247 = load i8** %246, align 8, !tbaa !28
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str44, i64 0, i64 0), i32 224, i8* %247) #8
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %248 = load i32* %155, align 4, !tbaa !45
  %249 = sext i32 %248 to i64
  %250 = icmp slt i64 %indvars.iv.next53, %249
  br i1 %250, label %.lr.ph28, label %._crit_edge29

._crit_edge29:                                    ; preds = %.lr.ph28, %.preheader
  call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str46, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str44, i64 0, i64 0), i32 225, i8* %183) #8
  br label %251

; <label>:251                                     ; preds = %._crit_edge29, %165
  %252 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 0, i32 0
  %253 = load i32* %252, align 4, !tbaa !46
  %254 = getelementptr inbounds i8* %80, i64 68
  %255 = bitcast i8* %254 to i32*
  store i32 %253, i32* %255, align 4, !tbaa !55
  %256 = shl nsw i32 %253, 1
  %257 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str44, i64 0, i64 0), i32 231, i32 %256, i32 8) #8
  store i8* %257, i8** bitcast (i8*** @init_mdebin.grpnms to i8**), align 8, !tbaa !28
  %258 = load i32* %255, align 4, !tbaa !55
  %259 = icmp sgt i32 %258, 0
  %260 = bitcast i8* %257 to i8**
  br i1 %259, label %.lr.ph24, label %297

.lr.ph24:                                         ; preds = %251
  %261 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 0, i32 1
  %262 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8
  %263 = icmp eq i32 %bNoseHoover, 0
  br label %264

; <label>:264                                     ; preds = %.lr.ph24, %288
  %indvars.iv50 = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next51, %288 ]
  %265 = load i32** %261, align 8, !tbaa !51
  %266 = getelementptr inbounds i32* %265, i64 %indvars.iv50
  %267 = load i32* %266, align 4, !tbaa !18
  %268 = sext i32 %267 to i64
  %269 = load i8**** %262, align 8, !tbaa !52
  %270 = getelementptr inbounds i8*** %269, i64 %268
  %271 = load i8*** %270, align 8, !tbaa !28
  %272 = load i8** %271, align 8, !tbaa !28
  %273 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 256, i8* getelementptr inbounds ([5 x i8]* @.str50, i64 0, i64 0), i8* %272) #8
  %274 = call i8* @strdup(i8* %2) #8
  %275 = trunc i64 %indvars.iv50 to i32
  %276 = shl nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !28
  %279 = getelementptr inbounds i8** %278, i64 %277
  store i8* %274, i8** %279, align 8, !tbaa !28
  %280 = load i8**** %262, align 8, !tbaa !52
  %281 = getelementptr inbounds i8*** %280, i64 %268
  %282 = load i8*** %281, align 8, !tbaa !28
  %283 = load i8** %282, align 8, !tbaa !28
  br i1 %263, label %286, label %284

; <label>:284                                     ; preds = %264
  %285 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 256, i8* getelementptr inbounds ([6 x i8]* @.str51, i64 0, i64 0), i8* %283) #8
  br label %288

; <label>:286                                     ; preds = %264
  %287 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 256, i8* getelementptr inbounds ([8 x i8]* @.str52, i64 0, i64 0), i8* %283) #8
  br label %288

; <label>:288                                     ; preds = %286, %284
  %289 = call i8* @strdup(i8* %2) #8
  %290 = or i32 %276, 1
  %291 = sext i32 %290 to i64
  %292 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !28
  %293 = getelementptr inbounds i8** %292, i64 %291
  store i8* %289, i8** %293, align 8, !tbaa !28
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %294 = load i32* %255, align 4, !tbaa !55
  %295 = sext i32 %294 to i64
  %296 = icmp slt i64 %indvars.iv.next51, %295
  br i1 %296, label %264, label %._crit_edge25

._crit_edge25:                                    ; preds = %288
  %.pre78 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !28
  br label %297

; <label>:297                                     ; preds = %._crit_edge25, %251
  %298 = phi i8** [ %.pre78, %._crit_edge25 ], [ %260, %251 ]
  %.lcssa20 = phi i32 [ %294, %._crit_edge25 ], [ %258, %251 ]
  %299 = load %struct.t_ebin** %83, align 8, !tbaa !29
  %300 = shl nsw i32 %.lcssa20, 1
  %301 = call i32 @get_ebin_space(%struct.t_ebin* %299, i32 %300, i8** %298) #8
  %302 = getelementptr inbounds i8* %80, i64 36
  %303 = bitcast i8* %302 to i32*
  store i32 %301, i32* %303, align 4, !tbaa !56
  %304 = load i8** bitcast (i8*** @init_mdebin.grpnms to i8**), align 8, !tbaa !28
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str44, i64 0, i64 0), i32 243, i8* %304) #8
  %305 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 2, i32 0
  %306 = load i32* %305, align 4, !tbaa !46
  %307 = getelementptr inbounds i8* %80, i64 72
  %308 = bitcast i8* %307 to i32*
  store i32 %306, i32* %308, align 4, !tbaa !57
  %309 = icmp sgt i32 %306, 1
  br i1 %309, label %310, label %361

; <label>:310                                     ; preds = %297
  %311 = mul nsw i32 %306, 3
  %312 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str44, i64 0, i64 0), i32 247, i32 %311, i32 8) #8
  store i8* %312, i8** bitcast (i8*** @init_mdebin.grpnms to i8**), align 8, !tbaa !28
  %313 = load i32* %308, align 4, !tbaa !57
  %314 = icmp sgt i32 %313, 0
  %315 = bitcast i8* %312 to i8**
  br i1 %314, label %.lr.ph, label %353

.lr.ph:                                           ; preds = %310
  %316 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 2, i32 1
  %317 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8
  br label %318

; <label>:318                                     ; preds = %.lr.ph, %318
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %318 ]
  %319 = load i32** %316, align 8, !tbaa !51
  %320 = getelementptr inbounds i32* %319, i64 %indvars.iv
  %321 = load i32* %320, align 4, !tbaa !18
  %322 = sext i32 %321 to i64
  %323 = load i8**** %317, align 8, !tbaa !52
  %324 = getelementptr inbounds i8*** %323, i64 %322
  %325 = load i8*** %324, align 8, !tbaa !28
  %326 = load i8** %325, align 8, !tbaa !28
  %327 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 256, i8* getelementptr inbounds ([6 x i8]* @.str53, i64 0, i64 0), i8* %326) #8
  %328 = call i8* @strdup(i8* %2) #8
  %329 = mul nsw i64 %indvars.iv, 3
  %330 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !28
  %331 = getelementptr inbounds i8** %330, i64 %329
  store i8* %328, i8** %331, align 8, !tbaa !28
  %332 = load i8**** %317, align 8, !tbaa !52
  %333 = getelementptr inbounds i8*** %332, i64 %322
  %334 = load i8*** %333, align 8, !tbaa !28
  %335 = load i8** %334, align 8, !tbaa !28
  %336 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 256, i8* getelementptr inbounds ([6 x i8]* @.str54, i64 0, i64 0), i8* %335) #8
  %337 = call i8* @strdup(i8* %2) #8
  %338 = add nsw i64 %329, 1
  %339 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !28
  %340 = getelementptr inbounds i8** %339, i64 %338
  store i8* %337, i8** %340, align 8, !tbaa !28
  %341 = load i8**** %317, align 8, !tbaa !52
  %342 = getelementptr inbounds i8*** %341, i64 %322
  %343 = load i8*** %342, align 8, !tbaa !28
  %344 = load i8** %343, align 8, !tbaa !28
  %345 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 256, i8* getelementptr inbounds ([6 x i8]* @.str55, i64 0, i64 0), i8* %344) #8
  %346 = call i8* @strdup(i8* %2) #8
  %347 = add nsw i64 %329, 2
  %348 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !28
  %349 = getelementptr inbounds i8** %348, i64 %347
  store i8* %346, i8** %349, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %350 = load i32* %308, align 4, !tbaa !57
  %351 = sext i32 %350 to i64
  %352 = icmp slt i64 %indvars.iv.next, %351
  br i1 %352, label %318, label %._crit_edge

._crit_edge:                                      ; preds = %318
  %.pre79 = load i8*** @init_mdebin.grpnms, align 8, !tbaa !28
  br label %353

; <label>:353                                     ; preds = %._crit_edge, %310
  %354 = phi i8** [ %.pre79, %._crit_edge ], [ %315, %310 ]
  %.lcssa = phi i32 [ %350, %._crit_edge ], [ %313, %310 ]
  %355 = load %struct.t_ebin** %83, align 8, !tbaa !29
  %356 = mul nsw i32 %.lcssa, 3
  %357 = call i32 @get_ebin_space(%struct.t_ebin* %355, i32 %356, i8** %354) #8
  %358 = getelementptr inbounds i8* %80, i64 40
  %359 = bitcast i8* %358 to i32*
  store i32 %357, i32* %359, align 4, !tbaa !58
  %360 = load i8** bitcast (i8*** @init_mdebin.grpnms to i8**), align 8, !tbaa !28
  call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str44, i64 0, i64 0), i32 258, i8* %360) #8
  br label %361

; <label>:361                                     ; preds = %353, %297
  %362 = icmp eq i32 %fp_ene, -1
  br i1 %362, label %367, label %363

; <label>:363                                     ; preds = %361
  %364 = load %struct.t_ebin** %83, align 8, !tbaa !29
  %365 = getelementptr inbounds %struct.t_ebin* %364, i64 0, i32 0
  %366 = getelementptr inbounds %struct.t_ebin* %364, i64 0, i32 1
  call void @do_enxnms(i32 %fp_ene, i32* %365, i8*** %366) #8
  br label %367

; <label>:367                                     ; preds = %361, %363
  call void @llvm.lifetime.end(i64 256, i8* %2) #5
  call void @llvm.lifetime.end(i64 352, i8* %1) #5
  ret %struct.t_mdebin* %81
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #6

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare %struct.t_ebin* @mk_ebin() #1

; Function Attrs: optsize
declare i32 @get_ebin_space(%struct.t_ebin*, i32, i8**) #1

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #7

; Function Attrs: optsize
declare void @do_enxnms(i32, i32*, i8***) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @upd_mdebin(%struct.t_mdebin* %md, %struct.__sFILE* %fp_dgdl, float %tmass, i32 %step, float %time, float* nocapture readonly %ener, [3 x float]* nocapture readonly %box, [3 x float]* %svir, [3 x float]* %fvir, [3 x float]* %vir, [3 x float]* %pres, %struct.t_groups* %grps, float* %mu_tot, i32 %bNoseHoover) #4 {
  %bs = alloca [6 x float], align 16
  %tricl_bs = alloca [9 x float], align 16
  %eee = alloca [7 x float], align 16
  %ecopy = alloca [44 x float], align 16
  %tmp = alloca float, align 4
  %1 = bitcast [9 x float]* %tricl_bs to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #5
  %2 = bitcast [44 x float]* %ecopy to i8*
  call void @llvm.lifetime.start(i64 176, i8* %2) #5
  br label %3

; <label>:3                                       ; preds = %15, %0
  %indvars.iv.i = phi i64 [ 0, %0 ], [ %indvars.iv.next.i, %15 ]
  %j.02.i = phi i32 [ 0, %0 ], [ %j.1.i, %15 ]
  %4 = getelementptr inbounds [44 x i32]* @bEner, i64 0, i64 %indvars.iv.i
  %5 = load i32* %4, align 4, !tbaa !18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

; <label>:7                                       ; preds = %3
  %8 = getelementptr inbounds float* %ener, i64 %indvars.iv.i
  %9 = bitcast float* %8 to i32*
  %10 = load i32* %9, align 4, !tbaa !14
  %11 = add nsw i32 %j.02.i, 1
  %12 = sext i32 %j.02.i to i64
  %13 = getelementptr inbounds [44 x float]* %ecopy, i64 0, i64 %12
  %14 = bitcast float* %13 to i32*
  store i32 %10, i32* %14, align 4, !tbaa !14
  br label %15

; <label>:15                                      ; preds = %7, %3
  %j.1.i = phi i32 [ %11, %7 ], [ %j.02.i, %3 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 44
  br i1 %exitcond.i, label %copy_energy.exit, label %3

copy_energy.exit:                                 ; preds = %15
  %16 = getelementptr inbounds [44 x float]* %ecopy, i64 0, i64 0
  %17 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 0
  %18 = load %struct.t_ebin** %17, align 8, !tbaa !29
  %19 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 1
  %20 = load i32* %19, align 4, !tbaa !31
  %21 = load i32* @f_nre, align 4, !tbaa !18
  call void @add_ebin(%struct.t_ebin* %18, i32 %20, i32 %21, float* %16, i32 %step) #8
  %22 = load i32* @bPC, align 4, !tbaa !18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

; <label>:24                                      ; preds = %copy_energy.exit
  %25 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 0
  %26 = load float* %25, align 4, !tbaa !39
  %fabsf = call float @fabsf(float %26) #10
  %27 = fpext float %fabsf to double
  %28 = fcmp ogt double %27, 1.200000e-38
  br i1 %28, label %29, label %.thread

; <label>:29                                      ; preds = %copy_energy.exit, %24
  %30 = load i32* @bTricl, align 4, !tbaa !18
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %.preheader5, label %32

; <label>:32                                      ; preds = %29
  %33 = bitcast [3 x float]* %box to i32*
  %34 = load i32* %33, align 4, !tbaa !14
  %35 = bitcast [9 x float]* %tricl_bs to i32*
  store i32 %34, i32* %35, align 16, !tbaa !14
  %36 = getelementptr inbounds [3 x float]* %box, i64 1
  %37 = bitcast [3 x float]* %36 to i32*
  %38 = load i32* %37, align 4, !tbaa !14
  %39 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 1
  %40 = bitcast float* %39 to i32*
  store i32 %38, i32* %40, align 4, !tbaa !14
  %41 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %42 = bitcast float* %41 to i32*
  %43 = load i32* %42, align 4, !tbaa !14
  %44 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 2
  %45 = bitcast float* %44 to i32*
  store i32 %43, i32* %45, align 8, !tbaa !14
  %46 = getelementptr inbounds [3 x float]* %box, i64 2
  %47 = bitcast [3 x float]* %46 to i32*
  %48 = load i32* %47, align 4, !tbaa !14
  %49 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 3
  %50 = bitcast float* %49 to i32*
  store i32 %48, i32* %50, align 4, !tbaa !14
  %51 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %52 = bitcast float* %51 to i32*
  %53 = load i32* %52, align 4, !tbaa !14
  %54 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 4
  %55 = bitcast float* %54 to i32*
  store i32 %53, i32* %55, align 16, !tbaa !14
  %56 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %57 = load float* %56, align 4, !tbaa !14
  %58 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 5
  store float %57, float* %58, align 4, !tbaa !14
  %59 = bitcast i32 %34 to float
  %60 = bitcast i32 %43 to float
  %61 = fmul float %59, %60
  %62 = fmul float %57, %61
  %63 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 6
  store float %62, float* %63, align 8, !tbaa !14
  %64 = fpext float %tmass to double
  %65 = fmul double %64, 0x3A6071F8353EEBCB
  %66 = fpext float %62 to double
  %67 = fmul double %66, 1.000000e-09
  %68 = fmul double %67, 1.000000e-09
  %69 = fmul double %68, 1.000000e-09
  %70 = fdiv double %65, %69
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 7
  store float %71, float* %72, align 4, !tbaa !14
  br label %97

.preheader5:                                      ; preds = %29, %.preheader5
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.preheader5 ], [ 0, %29 ]
  %73 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv30, i64 %indvars.iv30
  %74 = bitcast float* %73 to i32*
  %75 = load i32* %74, align 4, !tbaa !14
  %76 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 %indvars.iv30
  %77 = bitcast float* %76 to i32*
  store i32 %75, i32* %77, align 4, !tbaa !14
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond32 = icmp eq i64 %indvars.iv.next31, 3
  br i1 %exitcond32, label %78, label %.preheader5

; <label>:78                                      ; preds = %.preheader5
  %79 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 0
  %80 = load float* %79, align 16, !tbaa !14
  %81 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 1
  %82 = load float* %81, align 4, !tbaa !14
  %83 = fmul float %80, %82
  %84 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 2
  %85 = load float* %84, align 8, !tbaa !14
  %86 = fmul float %83, %85
  %87 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 3
  store float %86, float* %87, align 4, !tbaa !14
  %88 = fpext float %tmass to double
  %89 = fmul double %88, 0x3A6071F8353EEBCB
  %90 = fpext float %86 to double
  %91 = fmul double %90, 1.000000e-09
  %92 = fmul double %91, 1.000000e-09
  %93 = fmul double %92, 1.000000e-09
  %94 = fdiv double %89, %93
  %95 = fptrunc double %94 to float
  %96 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 4
  store float %95, float* %96, align 16, !tbaa !14
  br label %97

; <label>:97                                      ; preds = %32, %78
  br i1 %23, label %.thread, label %98

; <label>:98                                      ; preds = %97
  %99 = load i32* @bTricl, align 4, !tbaa !18
  %100 = icmp eq i32 %99, 0
  %101 = getelementptr inbounds float* %ener, i64 41
  %102 = load float* %101, align 4
  br i1 %100, label %115, label %103

; <label>:103                                     ; preds = %98
  %104 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 6
  %105 = load float* %104, align 8, !tbaa !14
  %106 = fmul float %105, %102
  %107 = fpext float %106 to double
  %108 = fdiv double %107, 1.660540e+01
  %109 = fptrunc double %108 to float
  %110 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 8
  store float %109, float* %110, align 16, !tbaa !14
  %111 = load %struct.t_ebin** %17, align 8, !tbaa !29
  %112 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 2
  %113 = load i32* %112, align 4, !tbaa !32
  %114 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 0
  call void @add_ebin(%struct.t_ebin* %111, i32 %113, i32 9, float* %114, i32 %step) #8
  br label %.thread

; <label>:115                                     ; preds = %98
  %116 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 3
  %117 = load float* %116, align 4, !tbaa !14
  %118 = fmul float %117, %102
  %119 = fpext float %118 to double
  %120 = fdiv double %119, 1.660540e+01
  %121 = fptrunc double %120 to float
  %122 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 5
  store float %121, float* %122, align 4, !tbaa !14
  %123 = load %struct.t_ebin** %17, align 8, !tbaa !29
  %124 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 2
  %125 = load i32* %124, align 4, !tbaa !32
  %126 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 0
  call void @add_ebin(%struct.t_ebin* %123, i32 %125, i32 6, float* %126, i32 %step) #8
  br label %.thread

.thread:                                          ; preds = %24, %97, %103, %115
  %127 = load i32* @bShake, align 4, !tbaa !18
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %138, label %129

; <label>:129                                     ; preds = %.thread
  %130 = load %struct.t_ebin** %17, align 8, !tbaa !29
  %131 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 3
  %132 = load i32* %131, align 4, !tbaa !33
  %133 = getelementptr inbounds [3 x float]* %svir, i64 0, i64 0
  call void @add_ebin(%struct.t_ebin* %130, i32 %132, i32 9, float* %133, i32 %step) #8
  %134 = load %struct.t_ebin** %17, align 8, !tbaa !29
  %135 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 4
  %136 = load i32* %135, align 4, !tbaa !34
  %137 = getelementptr inbounds [3 x float]* %fvir, i64 0, i64 0
  call void @add_ebin(%struct.t_ebin* %134, i32 %136, i32 9, float* %137, i32 %step) #8
  br label %138

; <label>:138                                     ; preds = %.thread, %129
  %139 = load %struct.t_ebin** %17, align 8, !tbaa !29
  %140 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 6
  %141 = load i32* %140, align 4, !tbaa !35
  %142 = getelementptr inbounds [3 x float]* %vir, i64 0, i64 0
  call void @add_ebin(%struct.t_ebin* %139, i32 %141, i32 9, float* %142, i32 %step) #8
  %143 = load %struct.t_ebin** %17, align 8, !tbaa !29
  %144 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 5
  %145 = load i32* %144, align 4, !tbaa !36
  %146 = getelementptr inbounds [3 x float]* %pres, i64 0, i64 0
  call void @add_ebin(%struct.t_ebin* %143, i32 %145, i32 9, float* %146, i32 %step) #8
  %147 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %148 = load float* %147, align 4, !tbaa !14
  %149 = fpext float %148 to double
  %150 = load float* %146, align 4, !tbaa !14
  %151 = getelementptr inbounds [3 x float]* %pres, i64 1, i64 1
  %152 = load float* %151, align 4, !tbaa !14
  %153 = fadd float %150, %152
  %154 = fpext float %153 to double
  %155 = fmul double %154, 5.000000e-01
  %156 = fsub double %149, %155
  %157 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %158 = load float* %157, align 4, !tbaa !14
  %159 = fpext float %158 to double
  %160 = fmul double %159, %156
  %161 = fptrunc double %160 to float
  store float %161, float* %tmp, align 4, !tbaa !14
  %162 = load %struct.t_ebin** %17, align 8, !tbaa !29
  %163 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 7
  %164 = load i32* %163, align 4, !tbaa !37
  call void @add_ebin(%struct.t_ebin* %162, i32 %164, i32 1, float* %tmp, i32 %step) #8
  %165 = load %struct.t_ebin** %17, align 8, !tbaa !29
  %166 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 10
  %167 = load i32* %166, align 4, !tbaa !38
  call void @add_ebin(%struct.t_ebin* %165, i32 %167, i32 3, float* %mu_tot, i32 %step) #8
  %168 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 0
  %169 = load float* %168, align 4, !tbaa !39
  %fabsf1 = call float @fabsf(float %169) #10
  %170 = fpext float %fabsf1 to double
  %171 = fcmp ogt double %170, 1.200000e-38
  br i1 %171, label %172, label %215

; <label>:172                                     ; preds = %138
  %173 = load %struct.t_ebin** %17, align 8, !tbaa !29
  %174 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 11
  %175 = load i32* %174, align 4, !tbaa !43
  %176 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 2
  call void @add_ebin(%struct.t_ebin* %173, i32 %175, i32 1, float* %176, i32 %step) #8
  %177 = load i32* @bTricl, align 4, !tbaa !18
  %178 = icmp eq i32 %177, 0
  %179 = load float* %168, align 4, !tbaa !39
  %180 = fpext float %179 to double
  %181 = load float* %176, align 4, !tbaa !59
  %182 = fpext float %181 to double
  %183 = fmul double %182, 1.000000e-12
  %184 = fdiv double %180, %183
  br i1 %178, label %198, label %185

; <label>:185                                     ; preds = %172
  %186 = getelementptr inbounds [9 x float]* %tricl_bs, i64 0, i64 7
  %187 = load float* %186, align 4, !tbaa !14
  %188 = fpext float %187 to double
  %189 = fmul double %184, %188
  %190 = load float* %157, align 4, !tbaa !14
  %191 = fpext float %190 to double
  %192 = fmul double %191, 1.000000e-09
  %193 = fdiv double %192, 0x401921FB54442D18
  %194 = fptrunc double %193 to float
  %195 = fmul float %194, %194
  %196 = fpext float %195 to double
  %197 = fmul double %189, %196
  br label %211

; <label>:198                                     ; preds = %172
  %199 = getelementptr inbounds [6 x float]* %bs, i64 0, i64 4
  %200 = load float* %199, align 16, !tbaa !14
  %201 = fpext float %200 to double
  %202 = fmul double %184, %201
  %203 = load float* %157, align 4, !tbaa !14
  %204 = fpext float %203 to double
  %205 = fmul double %204, 1.000000e-09
  %206 = fdiv double %205, 0x401921FB54442D18
  %207 = fptrunc double %206 to float
  %208 = fmul float %207, %207
  %209 = fpext float %208 to double
  %210 = fmul double %202, %209
  br label %211

; <label>:211                                     ; preds = %198, %185
  %.pn = phi double [ %210, %198 ], [ %197, %185 ]
  %storemerge.in = fdiv double 1.000000e+00, %.pn
  %storemerge = fptrunc double %storemerge.in to float
  store float %storemerge, float* %tmp, align 4, !tbaa !14
  %212 = load %struct.t_ebin** %17, align 8, !tbaa !29
  %213 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 12
  %214 = load i32* %213, align 4, !tbaa !44
  call void @add_ebin(%struct.t_ebin* %212, i32 %214, i32 1, float* %tmp, i32 %step) #8
  br label %215

; <label>:215                                     ; preds = %211, %138
  %216 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 13
  %217 = load i32* %216, align 4, !tbaa !49
  %218 = icmp sgt i32 %217, 1
  br i1 %218, label %.preheader4, label %.loopexit

.preheader4:                                      ; preds = %215
  %219 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 14
  %220 = load i32* %219, align 4, !tbaa !48
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %.preheader3.lr.ph, label %.loopexit

.preheader3.lr.ph:                                ; preds = %.preheader4
  %222 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 18
  %223 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 15
  %224 = getelementptr inbounds [7 x float]* %eee, i64 0, i64 0
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.lr.ph, %265
  %225 = phi i32 [ %220, %.preheader3.lr.ph ], [ %266, %265 ]
  %i.020 = phi i32 [ 0, %.preheader3.lr.ph ], [ %267, %265 ]
  %n.019 = phi i32 [ 0, %.preheader3.lr.ph ], [ %n.1.lcssa, %265 ]
  %226 = icmp slt i32 %i.020, %225
  br i1 %226, label %.lr.ph16, label %265

.lr.ph16:                                         ; preds = %.preheader3
  %227 = sext i32 %n.019 to i64
  br label %228

; <label>:228                                     ; preds = %.lr.ph16, %255
  %indvars.iv28 = phi i64 [ %227, %.lr.ph16 ], [ %indvars.iv.next29, %255 ]
  %229 = phi i32 [ %225, %.lr.ph16 ], [ %262, %255 ]
  %j.014 = phi i32 [ %i.020, %.lr.ph16 ], [ %261, %255 ]
  %230 = icmp slt i32 %i.020, %j.014
  br i1 %230, label %231, label %234

; <label>:231                                     ; preds = %228
  %232 = mul nsw i32 %229, %i.020
  %233 = add nsw i32 %232, %j.014
  br label %237

; <label>:234                                     ; preds = %228
  %235 = mul nsw i32 %229, %j.014
  %236 = add nsw i32 %235, %i.020
  br label %237

; <label>:237                                     ; preds = %234, %231
  %238 = phi i32 [ %233, %231 ], [ %236, %234 ]
  %239 = sext i32 %238 to i64
  br label %240

; <label>:240                                     ; preds = %254, %237
  %indvars.iv26 = phi i64 [ 0, %237 ], [ %indvars.iv.next27, %254 ]
  %kk.013 = phi i32 [ 0, %237 ], [ %kk.1, %254 ]
  %241 = getelementptr inbounds [7 x i32]* @bEInd, i64 0, i64 %indvars.iv26
  %242 = load i32* %241, align 4, !tbaa !18
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %254, label %244

; <label>:244                                     ; preds = %240
  %245 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv26
  %246 = load float** %245, align 8, !tbaa !28
  %247 = getelementptr inbounds float* %246, i64 %239
  %248 = bitcast float* %247 to i32*
  %249 = load i32* %248, align 4, !tbaa !14
  %250 = add nsw i32 %kk.013, 1
  %251 = sext i32 %kk.013 to i64
  %252 = getelementptr inbounds [7 x float]* %eee, i64 0, i64 %251
  %253 = bitcast float* %252 to i32*
  store i32 %249, i32* %253, align 4, !tbaa !14
  br label %254

; <label>:254                                     ; preds = %240, %244
  %kk.1 = phi i32 [ %250, %244 ], [ %kk.013, %240 ]
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond = icmp eq i64 %indvars.iv.next27, 7
  br i1 %exitcond, label %255, label %240

; <label>:255                                     ; preds = %254
  %256 = load %struct.t_ebin** %17, align 8, !tbaa !29
  %257 = load i32** %222, align 8, !tbaa !50
  %258 = getelementptr inbounds i32* %257, i64 %indvars.iv28
  %259 = load i32* %258, align 4, !tbaa !18
  %260 = load i32* %223, align 4, !tbaa !45
  call void @add_ebin(%struct.t_ebin* %256, i32 %259, i32 %260, float* %224, i32 %step) #8
  %indvars.iv.next29 = add i64 %indvars.iv28, 1
  %261 = add nuw nsw i32 %j.014, 1
  %262 = load i32* %219, align 4, !tbaa !48
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %228, label %._crit_edge17

._crit_edge17:                                    ; preds = %255
  %264 = trunc i64 %indvars.iv.next29 to i32
  br label %265

; <label>:265                                     ; preds = %._crit_edge17, %.preheader3
  %266 = phi i32 [ %262, %._crit_edge17 ], [ %225, %.preheader3 ]
  %n.1.lcssa = phi i32 [ %264, %._crit_edge17 ], [ %n.019, %.preheader3 ]
  %267 = add nuw nsw i32 %i.020, 1
  %268 = icmp slt i32 %267, %266
  br i1 %268, label %.preheader3, label %.loopexit

.loopexit:                                        ; preds = %265, %.preheader4, %215
  %269 = load float** @upd_mdebin.ttt, align 8, !tbaa !28
  %270 = icmp eq float* %269, null
  %271 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 16
  br i1 %270, label %272, label %.preheader2

; <label>:272                                     ; preds = %.loopexit
  %273 = load i32* %271, align 4, !tbaa !55
  %274 = shl nsw i32 %273, 1
  %275 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str56, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str44, i64 0, i64 0), i32 370, i32 %274, i32 4) #8
  store i8* %275, i8** bitcast (float** @upd_mdebin.ttt to i8**), align 8, !tbaa !28
  %276 = bitcast i8* %275 to float*
  br label %.preheader2

.preheader2:                                      ; preds = %.loopexit, %272
  %277 = phi float* [ %276, %272 ], [ %269, %.loopexit ]
  %278 = load i32* %271, align 4, !tbaa !55
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %.preheader2
  %280 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %281 = load %struct.t_grp_tcstat** %280, align 8, !tbaa !60
  %282 = icmp eq i32 %bNoseHoover, 0
  %283 = sext i32 %278 to i64
  br label %284

; <label>:284                                     ; preds = %.lr.ph9, %309
  %indvars.iv24 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next25, %309 ]
  %285 = getelementptr inbounds %struct.t_grp_tcstat* %281, i64 %indvars.iv24, i32 0
  %286 = bitcast float* %285 to i32*
  %287 = load i32* %286, align 4, !tbaa !61
  %288 = trunc i64 %indvars.iv24 to i32
  %289 = shl nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds float* %277, i64 %290
  %292 = bitcast float* %291 to i32*
  store i32 %287, i32* %292, align 4, !tbaa !14
  br i1 %282, label %301, label %293

; <label>:293                                     ; preds = %284
  %294 = getelementptr inbounds %struct.t_grp_tcstat* %281, i64 %indvars.iv24, i32 3
  %295 = bitcast float* %294 to i32*
  %296 = load i32* %295, align 4, !tbaa !63
  %297 = or i32 %289, 1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float* %277, i64 %298
  %300 = bitcast float* %299 to i32*
  store i32 %296, i32* %300, align 4, !tbaa !14
  br label %309

; <label>:301                                     ; preds = %284
  %302 = getelementptr inbounds %struct.t_grp_tcstat* %281, i64 %indvars.iv24, i32 1
  %303 = bitcast float* %302 to i32*
  %304 = load i32* %303, align 4, !tbaa !64
  %305 = or i32 %289, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float* %277, i64 %306
  %308 = bitcast float* %307 to i32*
  store i32 %304, i32* %308, align 4, !tbaa !14
  br label %309

; <label>:309                                     ; preds = %293, %301
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %310 = icmp slt i64 %indvars.iv.next25, %283
  br i1 %310, label %284, label %._crit_edge10

._crit_edge10:                                    ; preds = %309, %.preheader2
  %311 = load %struct.t_ebin** %17, align 8, !tbaa !29
  %312 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 8
  %313 = load i32* %312, align 4, !tbaa !56
  %314 = shl nsw i32 %278, 1
  call void @add_ebin(%struct.t_ebin* %311, i32 %313, i32 %314, float* %277, i32 %step) #8
  %315 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 17
  %316 = load i32* %315, align 4, !tbaa !57
  %317 = icmp sgt i32 %316, 1
  br i1 %317, label %318, label %353

; <label>:318                                     ; preds = %._crit_edge10
  %319 = load [3 x float]** @upd_mdebin.uuu, align 8, !tbaa !28
  %320 = icmp eq [3 x float]* %319, null
  br i1 %320, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %318
  %321 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str57, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str44, i64 0, i64 0), i32 382, i32 %316, i32 12) #8
  store i8* %321, i8** bitcast ([3 x float]** @upd_mdebin.uuu to i8**), align 8, !tbaa !28
  %.pre = load i32* %315, align 4, !tbaa !57
  %322 = bitcast i8* %321 to [3 x float]*
  %323 = icmp sgt i32 %.pre, 0
  br i1 %323, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %318, %.preheader
  %324 = phi i32 [ %.pre, %.preheader ], [ %316, %318 ]
  %325 = phi [3 x float]* [ %322, %.preheader ], [ %319, %318 ]
  %326 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %327 = load %struct.t_grp_acc** %326, align 8, !tbaa !65
  %328 = sext i32 %324 to i64
  br label %329

; <label>:329                                     ; preds = %.lr.ph, %329
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %329 ]
  %330 = getelementptr inbounds %struct.t_grp_acc* %327, i64 %indvars.iv, i32 3, i64 0
  %331 = getelementptr inbounds [3 x float]* %325, i64 %indvars.iv, i64 0
  %332 = bitcast float* %330 to i32*
  %333 = load i32* %332, align 4, !tbaa !14
  %334 = bitcast float* %331 to i32*
  store i32 %333, i32* %334, align 4, !tbaa !14
  %335 = getelementptr inbounds %struct.t_grp_acc* %327, i64 %indvars.iv, i32 3, i64 1
  %336 = bitcast float* %335 to i32*
  %337 = load i32* %336, align 4, !tbaa !14
  %338 = getelementptr inbounds [3 x float]* %325, i64 %indvars.iv, i64 1
  %339 = bitcast float* %338 to i32*
  store i32 %337, i32* %339, align 4, !tbaa !14
  %340 = getelementptr inbounds %struct.t_grp_acc* %327, i64 %indvars.iv, i32 3, i64 2
  %341 = bitcast float* %340 to i32*
  %342 = load i32* %341, align 4, !tbaa !14
  %343 = getelementptr inbounds [3 x float]* %325, i64 %indvars.iv, i64 2
  %344 = bitcast float* %343 to i32*
  store i32 %342, i32* %344, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %345 = icmp slt i64 %indvars.iv.next, %328
  br i1 %345, label %329, label %._crit_edge

._crit_edge:                                      ; preds = %329, %.preheader
  %346 = phi i32 [ %.pre, %.preheader ], [ %324, %329 ]
  %347 = phi [3 x float]* [ %322, %.preheader ], [ %325, %329 ]
  %348 = load %struct.t_ebin** %17, align 8, !tbaa !29
  %349 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 9
  %350 = load i32* %349, align 4, !tbaa !58
  %351 = mul nsw i32 %346, 3
  %352 = getelementptr inbounds [3 x float]* %347, i64 0, i64 0
  call void @add_ebin(%struct.t_ebin* %348, i32 %350, i32 %351, float* %352, i32 %step) #8
  br label %353

; <label>:353                                     ; preds = %._crit_edge, %._crit_edge10
  %354 = icmp eq %struct.__sFILE* %fp_dgdl, null
  br i1 %354, label %364, label %355

; <label>:355                                     ; preds = %353
  %356 = fpext float %time to double
  %357 = getelementptr inbounds float* %ener, i64 42
  %358 = load float* %357, align 4, !tbaa !14
  %359 = getelementptr inbounds float* %ener, i64 43
  %360 = load float* %359, align 4, !tbaa !14
  %361 = fadd float %358, %360
  %362 = fpext float %361 to double
  %363 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp_dgdl, i8* getelementptr inbounds ([7 x i8]* @.str58, i64 0, i64 0), double %356, double %362) #8
  br label %364

; <label>:364                                     ; preds = %353, %355
  call void @llvm.lifetime.end(i64 176, i8* %2) #5
  call void @llvm.lifetime.end(i64 36, i8* %1) #5
  ret void
}

; Function Attrs: optsize
declare void @add_ebin(%struct.t_ebin*, i32, i32, float*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: nounwind optsize ssp uwtable
define void @print_ebin_header(%struct.__sFILE* %log, i32 %steps, float %time, float %lamb, float %SAfactor) #4 {
  %1 = icmp eq %struct.__sFILE* %log, null
  br i1 %1, label %7, label %2

; <label>:2                                       ; preds = %0
  %3 = fpext float %time to double
  %4 = fpext float %lamb to double
  %5 = fpext float %SAfactor to double
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([66 x i8]* @.str59, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str60, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str61, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str62, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str63, i64 0, i64 0), i32 %steps, double %3, double %4, double %5) #8
  br label %7

; <label>:7                                       ; preds = %0, %2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @print_ebin(i32 %fp_ene, i32 %bEne, i32 %bDR, i32 %bOR, %struct.__sFILE* %log, i32 %steps, float %time, i32 %mode, i32 %bCompact, %struct.t_mdebin* nocapture readonly %md, %struct.t_fcdata* %fcd, %struct.t_atoms* nocapture readonly %atoms) #4 {
  %buf = alloca [246 x i8], align 16
  %nr = alloca [2 x i32], align 4
  %block = alloca [2 x float*], align 16
  %fr = alloca %struct.t_enxframe, align 8
  %1 = getelementptr inbounds [246 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 246, i8* %1) #5
  %2 = bitcast %struct.t_enxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 96, i8* %2) #5
  switch i32 %mode, label %71 [
    i32 0, label %3
    i32 1, label %67
    i32 2, label %69
  ]

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0
  store float %time, float* %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 1
  store i32 %steps, i32* %5, align 4, !tbaa !68
  %6 = icmp eq i32 %bEne, 0
  %.phi.trans.insert = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 0
  %.pre = load %struct.t_ebin** %.phi.trans.insert, align 8, !tbaa !29
  br i1 %6, label %._crit_edge61, label %7

; <label>:7                                       ; preds = %3
  %8 = getelementptr inbounds %struct.t_ebin* %.pre, i64 0, i32 0
  %9 = load i32* %8, align 4, !tbaa !69
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %3, %7
  %10 = phi i32 [ %9, %7 ], [ 0, %3 ]
  %11 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2
  store i32 %10, i32* %11, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.t_ebin* %.pre, i64 0, i32 2
  %13 = bitcast %struct.t_energy** %12 to i64*
  %14 = load i64* %13, align 8, !tbaa !72
  %15 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 12
  %16 = bitcast %struct.t_energy** %15 to i64*
  store i64 %14, i64* %16, align 8, !tbaa !73
  %17 = icmp eq i32 %bDR, 0
  br i1 %17, label %21, label %18

; <label>:18                                      ; preds = %._crit_edge61
  %19 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 8
  %20 = load i32* %19, align 4, !tbaa !74
  br label %21

; <label>:21                                      ; preds = %._crit_edge61, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %._crit_edge61 ]
  %23 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3
  store i32 %22, i32* %23, align 4, !tbaa !78
  %24 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 11
  %25 = bitcast float** %24 to i64*
  %26 = load i64* %25, align 8, !tbaa !79
  %27 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 13
  %28 = bitcast float** %27 to i64*
  store i64 %26, i64* %28, align 8, !tbaa !80
  %29 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 10
  %30 = bitcast float** %29 to i64*
  %31 = load i64* %30, align 8, !tbaa !81
  %32 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 14
  %33 = bitcast float** %32 to i64*
  store i64 %31, i64* %33, align 8, !tbaa !82
  %34 = icmp eq i32 %bOR, 0
  br i1 %34, label %.critedge, label %35

; <label>:35                                      ; preds = %21
  %36 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 4
  %37 = load i32* %36, align 4, !tbaa !83
  %38 = getelementptr inbounds [2 x i32]* %nr, i64 0, i64 0
  store i32 %37, i32* %38, align 4, !tbaa !18
  %39 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 16
  %40 = load float** %39, align 8, !tbaa !84
  %41 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 18
  %42 = load float** %41, align 8, !tbaa !85
  %43 = icmp eq float* %40, %42
  %44 = ptrtoint float* %42 to i64
  %45 = ptrtoint float* %40 to i64
  %.75 = select i1 %43, i32 0, i32 %37
  br label %47

.critedge:                                        ; preds = %21
  %46 = getelementptr inbounds [2 x i32]* %nr, i64 0, i64 0
  store i32 0, i32* %46, align 4, !tbaa !18
  %.phi.trans.insert62 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 18
  %.phi.trans.insert63 = bitcast float** %.phi.trans.insert62 to i64*
  %.pre64 = load i64* %.phi.trans.insert63, align 8, !tbaa !85
  %.phi.trans.insert65 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 16
  %.phi.trans.insert66 = bitcast float** %.phi.trans.insert65 to i64*
  %.pre67 = load i64* %.phi.trans.insert66, align 8, !tbaa !84
  br label %47

; <label>:47                                      ; preds = %35, %.critedge
  %.pre-phi72 = phi i32* [ %46, %.critedge ], [ %38, %35 ]
  %48 = phi i32 [ 0, %.critedge ], [ %37, %35 ]
  %49 = phi i64 [ %.pre67, %.critedge ], [ %45, %35 ]
  %50 = phi i64 [ %.pre64, %.critedge ], [ %44, %35 ]
  %51 = phi i32 [ 0, %.critedge ], [ %.75, %35 ]
  %52 = getelementptr inbounds [2 x i32]* %nr, i64 0, i64 1
  store i32 %51, i32* %52, align 4, !tbaa !18
  %53 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5
  store i32* %.pre-phi72, i32** %53, align 8, !tbaa !86
  %54 = bitcast [2 x float*]* %block to i64*
  store i64 %50, i64* %54, align 16, !tbaa !28
  %55 = getelementptr inbounds [2 x float*]* %block, i64 0, i64 1
  %56 = bitcast float** %55 to i64*
  store i64 %49, i64* %56, align 8, !tbaa !28
  %57 = getelementptr inbounds [2 x float*]* %block, i64 0, i64 0
  %58 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 15
  store float** %57, float*** %58, align 8, !tbaa !87
  %59 = icmp eq i32 %48, 0
  %60 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4
  %. = select i1 %59, i32 0, i32 2
  store i32 %., i32* %60, align 8, !tbaa !88
  %61 = or i32 %22, %10
  %62 = or i32 %48, %61
  %63 = or i32 %62, %51
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

; <label>:65                                      ; preds = %47
  %66 = call i32 @do_enx(i32 %fp_ene, %struct.t_enxframe* %fr) #8
  br label %72

; <label>:67                                      ; preds = %0
  %cond = icmp eq %struct.__sFILE* %log, null
  br i1 %cond, label %232, label %68

; <label>:68                                      ; preds = %67
  tail call fastcc void @pprint(%struct.__sFILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str65, i64 0, i64 0)) #11
  br label %.thread

; <label>:69                                      ; preds = %0
  %cond33 = icmp eq %struct.__sFILE* %log, null
  br i1 %cond33, label %232, label %70

; <label>:70                                      ; preds = %69
  tail call fastcc void @pprint(%struct.__sFILE* %log, i8* getelementptr inbounds ([32 x i8]* @.str66, i64 0, i64 0)) #11
  br label %.thread

; <label>:71                                      ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str67, i64 0, i64 0), i32 %mode) #8
  br label %72

; <label>:72                                      ; preds = %47, %65, %71
  %73 = icmp eq %struct.__sFILE* %log, null
  br i1 %73, label %232, label %.thread

.thread:                                          ; preds = %68, %70, %72
  %74 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 1, i32 4
  %75 = load i32* %74, align 4, !tbaa !83
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

; <label>:77                                      ; preds = %.thread
  call void @print_orires_log(%struct.__sFILE* %log, %struct.t_fcdata* %fcd) #8
  br label %78

; <label>:78                                      ; preds = %.thread, %77
  %79 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str64, i64 0, i64 0)) #8
  %80 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 0
  %81 = load %struct.t_ebin** %80, align 8, !tbaa !29
  %82 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 1
  %83 = load i32* %82, align 4, !tbaa !31
  %84 = load i32* @f_nre, align 4, !tbaa !18
  call void @pr_ebin(%struct.__sFILE* %log, %struct.t_ebin* %81, i32 %83, i32 %84, i32 5, i32 %mode, i32 %steps, i32 1) #8
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %log)
  %85 = icmp eq i32 %bCompact, 0
  br i1 %85, label %86, label %232

; <label>:86                                      ; preds = %78
  %87 = load i32* @bPC, align 4, !tbaa !18
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

; <label>:89                                      ; preds = %86
  %90 = load %struct.t_ebin** %80, align 8, !tbaa !29
  %91 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 2
  %92 = load i32* %91, align 4, !tbaa !32
  %93 = load i32* @bTricl, align 4, !tbaa !18
  %94 = icmp ne i32 %93, 0
  %95 = select i1 %94, i32 9, i32 6
  call void @pr_ebin(%struct.__sFILE* %log, %struct.t_ebin* %90, i32 %92, i32 %95, i32 5, i32 %mode, i32 %steps, i32 1) #8
  %fputc3 = call i32 @fputc(i32 10, %struct.__sFILE* %log)
  br label %96

; <label>:96                                      ; preds = %86, %89
  %97 = load i32* @bShake, align 4, !tbaa !18
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %108, label %99

; <label>:99                                      ; preds = %96
  %100 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str70, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str64, i64 0, i64 0)) #8
  %101 = load %struct.t_ebin** %80, align 8, !tbaa !29
  %102 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 3
  %103 = load i32* %102, align 4, !tbaa !33
  call void @pr_ebin(%struct.__sFILE* %log, %struct.t_ebin* %101, i32 %103, i32 9, i32 3, i32 %mode, i32 %steps, i32 0) #8
  %fputc6 = call i32 @fputc(i32 10, %struct.__sFILE* %log)
  %104 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str71, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str64, i64 0, i64 0)) #8
  %105 = load %struct.t_ebin** %80, align 8, !tbaa !29
  %106 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 4
  %107 = load i32* %106, align 4, !tbaa !34
  call void @pr_ebin(%struct.__sFILE* %log, %struct.t_ebin* %105, i32 %107, i32 9, i32 3, i32 %mode, i32 %steps, i32 0) #8
  %fputc9 = call i32 @fputc(i32 10, %struct.__sFILE* %log)
  br label %108

; <label>:108                                     ; preds = %96, %99
  %109 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str72, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str64, i64 0, i64 0)) #8
  %110 = load %struct.t_ebin** %80, align 8, !tbaa !29
  %111 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 6
  %112 = load i32* %111, align 4, !tbaa !35
  call void @pr_ebin(%struct.__sFILE* %log, %struct.t_ebin* %110, i32 %112, i32 9, i32 3, i32 %mode, i32 %steps, i32 0) #8
  %fputc12 = call i32 @fputc(i32 10, %struct.__sFILE* %log)
  %113 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str73, i64 0, i64 0), i64 18, i64 1, %struct.__sFILE* %log)
  %114 = load %struct.t_ebin** %80, align 8, !tbaa !29
  %115 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 5
  %116 = load i32* %115, align 4, !tbaa !36
  call void @pr_ebin(%struct.__sFILE* %log, %struct.t_ebin* %114, i32 %116, i32 9, i32 3, i32 %mode, i32 %steps, i32 0) #8
  %fputc15 = call i32 @fputc(i32 10, %struct.__sFILE* %log)
  %117 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str74, i64 0, i64 0), i64 24, i64 1, %struct.__sFILE* %log)
  %118 = load %struct.t_ebin** %80, align 8, !tbaa !29
  %119 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 10
  %120 = load i32* %119, align 4, !tbaa !38
  call void @pr_ebin(%struct.__sFILE* %log, %struct.t_ebin* %118, i32 %120, i32 3, i32 3, i32 %mode, i32 %steps, i32 0) #8
  %fputc18 = call i32 @fputc(i32 10, %struct.__sFILE* %log)
  %121 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 13
  %122 = load i32* %121, align 4, !tbaa !49
  %123 = icmp sgt i32 %122, 1
  br i1 %123, label %124, label %194

; <label>:124                                     ; preds = %108
  %125 = load i8*** @print_ebin.grpnms, align 8, !tbaa !28
  %126 = icmp eq i8** %125, null
  br i1 %126, label %127, label %.loopexit

; <label>:127                                     ; preds = %124
  %128 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str44, i64 0, i64 0), i32 504, i32 %122, i32 8) #8
  store i8* %128, i8** bitcast (i8*** @print_ebin.grpnms to i8**), align 8, !tbaa !28
  %129 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 14
  %130 = load i32* %129, align 4, !tbaa !48
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %.lr.ph48, label %.loopexit

.lr.ph48:                                         ; preds = %127
  %132 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 1, i32 1
  %133 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8
  br label %134

; <label>:134                                     ; preds = %.lr.ph48, %161
  %135 = phi i32 [ %130, %.lr.ph48 ], [ %162, %161 ]
  %indvars.iv59 = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next60, %161 ]
  %n.045 = phi i32 [ 0, %.lr.ph48 ], [ %n.1.lcssa, %161 ]
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %indvars.iv59, %136
  br i1 %137, label %.lr.ph43, label %161

.lr.ph43:                                         ; preds = %134
  %138 = load i32** %132, align 8, !tbaa !51
  %139 = getelementptr inbounds i32* %138, i64 %indvars.iv59
  %140 = load i32* %139, align 4, !tbaa !18
  %141 = sext i32 %140 to i64
  %142 = sext i32 %n.045 to i64
  br label %143

; <label>:143                                     ; preds = %._crit_edge68, %.lr.ph43
  %144 = phi i32 [ %140, %.lr.ph43 ], [ %.pre71, %._crit_edge68 ]
  %indvars.iv57 = phi i64 [ %indvars.iv59, %.lr.ph43 ], [ %indvars.iv.next58, %._crit_edge68 ]
  %indvars.iv53 = phi i64 [ %142, %.lr.ph43 ], [ %indvars.iv.next54, %._crit_edge68 ]
  %145 = load i8**** %133, align 8, !tbaa !52
  %146 = getelementptr inbounds i8*** %145, i64 %141
  %147 = load i8*** %146, align 8, !tbaa !28
  %148 = load i8** %147, align 8, !tbaa !28
  %149 = sext i32 %144 to i64
  %150 = getelementptr inbounds i8*** %145, i64 %149
  %151 = load i8*** %150, align 8, !tbaa !28
  %152 = load i8** %151, align 8, !tbaa !28
  %153 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 246, i8* getelementptr inbounds ([6 x i8]* @.str75, i64 0, i64 0), i8* %148, i8* %152) #8
  %154 = call i8* @strdup(i8* %1) #8
  %indvars.iv.next54 = add i64 %indvars.iv53, 1
  %155 = load i8*** @print_ebin.grpnms, align 8, !tbaa !28
  %156 = getelementptr inbounds i8** %155, i64 %indvars.iv53
  store i8* %154, i8** %156, align 8, !tbaa !28
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %157 = load i32* %129, align 4, !tbaa !48
  %158 = sext i32 %157 to i64
  %159 = icmp slt i64 %indvars.iv.next58, %158
  br i1 %159, label %._crit_edge68, label %._crit_edge44

._crit_edge68:                                    ; preds = %143
  %.pre69 = load i32** %132, align 8, !tbaa !51
  %.phi.trans.insert70 = getelementptr inbounds i32* %.pre69, i64 %indvars.iv.next58
  %.pre71 = load i32* %.phi.trans.insert70, align 4, !tbaa !18
  br label %143

._crit_edge44:                                    ; preds = %143
  %160 = trunc i64 %indvars.iv.next54 to i32
  br label %161

; <label>:161                                     ; preds = %._crit_edge44, %134
  %162 = phi i32 [ %157, %._crit_edge44 ], [ %135, %134 ]
  %n.1.lcssa = phi i32 [ %160, %._crit_edge44 ], [ %n.045, %134 ]
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %indvars.iv.next60, %163
  br i1 %164, label %134, label %.loopexit

.loopexit:                                        ; preds = %161, %127, %124
  %165 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 246, i8* getelementptr inbounds ([8 x i8]* @.str76, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str64, i64 0, i64 0)) #8
  %166 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([8 x i8]* @.str77, i64 0, i64 0), i8* %1) #8
  br label %167

; <label>:167                                     ; preds = %175, %.loopexit
  %indvars.iv51 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next52, %175 ]
  %168 = getelementptr inbounds [7 x i32]* @bEInd, i64 0, i64 %indvars.iv51
  %169 = load i32* %168, align 4, !tbaa !18
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

; <label>:171                                     ; preds = %167
  %172 = getelementptr inbounds [8 x i8*]* @egrp_nm, i64 0, i64 %indvars.iv51
  %173 = load i8** %172, align 8, !tbaa !28
  %174 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0), i8* %173) #8
  br label %175

; <label>:175                                     ; preds = %167, %171
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond = icmp eq i64 %indvars.iv.next52, 7
  br i1 %exitcond, label %176, label %167

; <label>:176                                     ; preds = %175
  %fputc27 = call i32 @fputc(i32 10, %struct.__sFILE* %log)
  %177 = load i32* %121, align 4, !tbaa !49
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %176
  %179 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 18
  %180 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 15
  br label %181

; <label>:181                                     ; preds = %.lr.ph37, %181
  %indvars.iv49 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next50, %181 ]
  %182 = load i8*** @print_ebin.grpnms, align 8, !tbaa !28
  %183 = getelementptr inbounds i8** %182, i64 %indvars.iv49
  %184 = load i8** %183, align 8, !tbaa !28
  %185 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str79, i64 0, i64 0), i8* %184) #8
  %186 = load %struct.t_ebin** %80, align 8, !tbaa !29
  %187 = load i32** %179, align 8, !tbaa !50
  %188 = getelementptr inbounds i32* %187, i64 %indvars.iv49
  %189 = load i32* %188, align 4, !tbaa !18
  %190 = load i32* %180, align 4, !tbaa !45
  call void @pr_ebin(%struct.__sFILE* %log, %struct.t_ebin* %186, i32 %189, i32 %190, i32 %190, i32 %mode, i32 %steps, i32 0) #8
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %191 = load i32* %121, align 4, !tbaa !49
  %192 = sext i32 %191 to i64
  %193 = icmp slt i64 %indvars.iv.next50, %192
  br i1 %193, label %181, label %._crit_edge38

._crit_edge38:                                    ; preds = %181, %176
  %fputc30 = call i32 @fputc(i32 10, %struct.__sFILE* %log)
  br label %194

; <label>:194                                     ; preds = %._crit_edge38, %108
  %195 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 16
  %196 = load i32* %195, align 4, !tbaa !55
  %197 = icmp sgt i32 %196, 1
  br i1 %197, label %198, label %203

; <label>:198                                     ; preds = %194
  %199 = load %struct.t_ebin** %80, align 8, !tbaa !29
  %200 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 8
  %201 = load i32* %200, align 4, !tbaa !56
  %202 = shl nsw i32 %196, 1
  call void @pr_ebin(%struct.__sFILE* %log, %struct.t_ebin* %199, i32 %201, i32 %202, i32 4, i32 %mode, i32 %steps, i32 1) #8
  %fputc24 = call i32 @fputc(i32 10, %struct.__sFILE* %log)
  br label %203

; <label>:203                                     ; preds = %198, %194
  %204 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 17
  %205 = load i32* %204, align 4, !tbaa !57
  %206 = icmp sgt i32 %205, 1
  br i1 %206, label %207, label %232

; <label>:207                                     ; preds = %203
  %208 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str80, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str81, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str83, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str84, i64 0, i64 0)) #8
  %209 = load i32* %204, align 4, !tbaa !57
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %207
  %211 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 10, i64 2, i32 1
  %212 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 8
  %213 = getelementptr inbounds %struct.t_mdebin* %md, i64 0, i32 9
  br label %214

; <label>:214                                     ; preds = %.lr.ph, %214
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %214 ]
  %215 = load i32** %211, align 8, !tbaa !51
  %216 = getelementptr inbounds i32* %215, i64 %indvars.iv
  %217 = load i32* %216, align 4, !tbaa !18
  %218 = sext i32 %217 to i64
  %219 = load i8**** %212, align 8, !tbaa !52
  %220 = getelementptr inbounds i8*** %219, i64 %218
  %221 = load i8*** %220, align 8, !tbaa !28
  %222 = load i8** %221, align 8, !tbaa !28
  %223 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([5 x i8]* @.str79, i64 0, i64 0), i8* %222) #8
  %224 = load %struct.t_ebin** %80, align 8, !tbaa !29
  %225 = load i32* %213, align 4, !tbaa !58
  %226 = mul nsw i64 %indvars.iv, 3
  %227 = trunc i64 %226 to i32
  %228 = add nsw i32 %225, %227
  call void @pr_ebin(%struct.__sFILE* %log, %struct.t_ebin* %224, i32 %228, i32 3, i32 3, i32 %mode, i32 %steps, i32 0) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %229 = load i32* %204, align 4, !tbaa !57
  %230 = sext i32 %229 to i64
  %231 = icmp slt i64 %indvars.iv.next, %230
  br i1 %231, label %214, label %._crit_edge

._crit_edge:                                      ; preds = %214, %207
  %fputc21 = call i32 @fputc(i32 10, %struct.__sFILE* %log)
  br label %232

; <label>:232                                     ; preds = %69, %67, %78, %72, %._crit_edge, %203
  call void @llvm.lifetime.end(i64 96, i8* %2) #5
  call void @llvm.lifetime.end(i64 246, i8* %1) #5
  ret void
}

; Function Attrs: optsize
declare i32 @do_enx(i32, %struct.t_enxframe*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @pprint(%struct.__sFILE* %log, i8* %s) #4 {
  %1 = icmp eq %struct.__sFILE* %log, null
  br i1 %1, label %16, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i64 @strlen(i8* %s) #8
  %4 = trunc i64 %3 to i32
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str97, i64 0, i64 0), i64 10, i64 1, %struct.__sFILE* %log)
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %.preheader.i, label %npr.exit6.critedge

.preheader.i:                                     ; preds = %2, %.preheader.i
  %.0.i = phi i32 [ %7, %.preheader.i ], [ %4, %2 ]
  %fputc.i = tail call i32 @fputc(i32 35, %struct.__sFILE* %log) #5
  %7 = add nsw i32 %.0.i, -1
  %.old1.i = icmp sgt i32 %.0.i, 1
  br i1 %.old1.i, label %.preheader.i, label %.preheader.i5.preheader

.preheader.i5.preheader:                          ; preds = %.preheader.i
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str98, i64 0, i64 0), i64 6, i64 1, %struct.__sFILE* %log)
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([19 x i8]* @.str99, i64 0, i64 0), i8* %s) #8
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str100, i64 0, i64 0), i64 6, i64 1, %struct.__sFILE* %log)
  br label %.preheader.i5

.preheader.i5:                                    ; preds = %.preheader.i5.preheader, %.preheader.i5
  %.0.i2 = phi i32 [ %11, %.preheader.i5 ], [ %4, %.preheader.i5.preheader ]
  %fputc.i3 = tail call i32 @fputc(i32 35, %struct.__sFILE* %log) #5
  %11 = add nsw i32 %.0.i2, -1
  %.old1.i4 = icmp sgt i32 %.0.i2, 1
  br i1 %.old1.i4, label %.preheader.i5, label %npr.exit6

npr.exit6.critedge:                               ; preds = %2
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str98, i64 0, i64 0), i64 6, i64 1, %struct.__sFILE* %log)
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([19 x i8]* @.str99, i64 0, i64 0), i8* %s) #8
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str100, i64 0, i64 0), i64 6, i64 1, %struct.__sFILE* %log)
  br label %npr.exit6

npr.exit6:                                        ; preds = %.preheader.i5, %npr.exit6.critedge
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str101, i64 0, i64 0), i64 11, i64 1, %struct.__sFILE* %log)
  br label %16

; <label>:16                                      ; preds = %0, %npr.exit6
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @print_orires_log(%struct.__sFILE*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare void @pr_ebin(%struct.__sFILE*, %struct.t_ebin*, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { readnone }
attributes #10 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { optsize }

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
!18 = !{!7, !7, i64 0}
!19 = !{!20, !4, i64 0}
!20 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !21, i64 32, !7, i64 40, !4, i64 48}
!21 = !{!"long", !5, i64 0}
!22 = !{!23, !7, i64 0}
!23 = !{!"", !7, i64 0, !5, i64 4, !4, i64 1032}
!24 = !{!25, !7, i64 4}
!25 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!26 = !{!25, !7, i64 20}
!27 = !{!20, !4, i64 8}
!28 = !{!4, !4, i64 0}
!29 = !{!30, !4, i64 0}
!30 = !{!"", !4, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !4, i64 80}
!31 = !{!30, !7, i64 8}
!32 = !{!30, !7, i64 12}
!33 = !{!30, !7, i64 16}
!34 = !{!30, !7, i64 20}
!35 = !{!30, !7, i64 28}
!36 = !{!30, !7, i64 24}
!37 = !{!30, !7, i64 32}
!38 = !{!30, !7, i64 44}
!39 = !{!40, !15, i64 80}
!40 = !{!"", !41, i64 0, !4, i64 64, !4, i64 72, !42, i64 80}
!41 = !{!"", !7, i64 0, !5, i64 8}
!42 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8}
!43 = !{!30, !7, i64 48}
!44 = !{!30, !7, i64 52}
!45 = !{!30, !7, i64 64}
!46 = !{!47, !7, i64 0}
!47 = !{!"", !7, i64 0, !4, i64 8}
!48 = !{!30, !7, i64 60}
!49 = !{!30, !7, i64 56}
!50 = !{!30, !4, i64 80}
!51 = !{!47, !4, i64 8}
!52 = !{!53, !4, i64 64}
!53 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !54, i64 72, !5, i64 1128, !4, i64 1272}
!54 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!55 = !{!30, !7, i64 68}
!56 = !{!30, !7, i64 36}
!57 = !{!30, !7, i64 72}
!58 = !{!30, !7, i64 40}
!59 = !{!40, !15, i64 88}
!60 = !{!40, !4, i64 64}
!61 = !{!62, !15, i64 0}
!62 = !{!"", !15, i64 0, !15, i64 4, !5, i64 8, !15, i64 44, !15, i64 48}
!63 = !{!62, !15, i64 44}
!64 = !{!62, !15, i64 4}
!65 = !{!40, !4, i64 72}
!66 = !{!67, !15, i64 0}
!67 = !{!"", !15, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !4, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88}
!68 = !{!67, !7, i64 4}
!69 = !{!70, !7, i64 0}
!70 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16}
!71 = !{!67, !7, i64 8}
!72 = !{!70, !4, i64 16}
!73 = !{!67, !4, i64 64}
!74 = !{!75, !7, i64 32}
!75 = !{!"", !76, i64 0, !77, i64 80}
!76 = !{!"", !7, i64 0, !7, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !7, i64 28, !7, i64 32, !15, i64 36, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72}
!77 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !15, i64 28, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !15, i64 152, !4, i64 160, !4, i64 168}
!78 = !{!67, !7, i64 12}
!79 = !{!75, !4, i64 48}
!80 = !{!67, !4, i64 72}
!81 = !{!75, !4, i64 40}
!82 = !{!67, !4, i64 80}
!83 = !{!75, !7, i64 96}
!84 = !{!75, !4, i64 208}
!85 = !{!75, !4, i64 224}
!86 = !{!67, !4, i64 24}
!87 = !{!67, !4, i64 88}
!88 = !{!67, !7, i64 16}
