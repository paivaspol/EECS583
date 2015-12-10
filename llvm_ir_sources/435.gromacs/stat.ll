; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/stat.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_bin = type { i32, i32, double* }
%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_nrnb = type { [129 x double] }
%struct.t_vcm = type { i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x [3 x float]]*, float*, i8**, i16* }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }

@global_stat.rb = internal unnamed_addr global %struct.t_bin* null, align 8
@global_stat.itc = internal unnamed_addr global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"itc\00", align 1
@.str1 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/stat.c\00", align 1
@write_traj.fp = internal unnamed_addr global i32 -1, align 4
@.str2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"vv\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@write_xtc_traj.bFirst = internal unnamed_addr global i1 false
@write_xtc_traj.x_sel = internal unnamed_addr global [3 x float]* null, align 8
@write_xtc_traj.natoms = internal unnamed_addr global i32 0, align 4
@xd = internal unnamed_addr global i32 0, align 4
@.str6 = private unnamed_addr constant [49 x i8] c"There are %d atoms in your xtc output selection\0A\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"x_sel\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"XTC error\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str10 = private unnamed_addr constant [64 x i8] c"%s[%5d] before: (%8.3f,%8.3f,%8.3f) After: (%8.3f,%8.3f,%8.3f)\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !212, metadata !666), !dbg !667
  %1 = icmp sgt i32 %__signo, 32, !dbg !668
  br i1 %1, label %5, label %2, !dbg !669

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !670
  %4 = shl i32 1, %3, !dbg !671
  br label %5, !dbg !669

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !669
  ret i32 %6, !dbg !672
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !219, metadata !666), !dbg !673
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !674
  br i1 %1, label %2, label %5, !dbg !675

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #8, !dbg !676
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !677
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !675
  ret i32 %7, !dbg !678
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !225, metadata !666), !dbg !679
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !680
  br i1 %1, label %2, label %5, !dbg !681

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #8, !dbg !682
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !683
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !681
  ret i32 %7, !dbg !684
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !231, metadata !666), !dbg !685
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !686
  br i1 %1, label %2, label %5, !dbg !687

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8, !dbg !688
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !689
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !687
  ret i32 %7, !dbg !690
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !234, metadata !666), !dbg !691
  %1 = tail call float @llvm.fabs.f32(float %__x) #8, !dbg !692
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !693
  %3 = zext i1 %2 to i32, !dbg !693
  ret i32 %3, !dbg !694
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !237, metadata !666), !dbg !695
  %1 = tail call double @llvm.fabs.f64(double %__x) #8, !dbg !696
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !697
  %3 = zext i1 %2 to i32, !dbg !697
  ret i32 %3, !dbg !698
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !240, metadata !666), !dbg !699
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8, !dbg !700
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !701
  %3 = zext i1 %2 to i32, !dbg !701
  ret i32 %3, !dbg !702
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !243, metadata !666), !dbg !703
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !704
  %2 = zext i1 %1 to i32, !dbg !704
  ret i32 %2, !dbg !705
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !246, metadata !666), !dbg !706
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !707
  %2 = zext i1 %1 to i32, !dbg !707
  ret i32 %2, !dbg !708
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !249, metadata !666), !dbg !709
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !710
  %2 = zext i1 %1 to i32, !dbg !710
  ret i32 %2, !dbg !711
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !252, metadata !666), !dbg !712
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !253, metadata !666), !dbg !713
  %1 = bitcast float %__x to i32, !dbg !714
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !253, metadata !666), !dbg !713
  %2 = lshr i32 %1, 31, !dbg !715
  ret i32 %2, !dbg !716
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !261, metadata !666), !dbg !717
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !262, metadata !666), !dbg !718
  %1 = bitcast double %__x to i64, !dbg !719
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !262, metadata !666), !dbg !718
  %2 = lshr i64 %1, 63, !dbg !720
  %3 = trunc i64 %2 to i32, !dbg !721
  ret i32 %3, !dbg !722
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !270, metadata !666), !dbg !723
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !271, metadata !666), !dbg !724
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !271, metadata !666), !dbg !724
  %1 = bitcast x86_fp80 %__x to i80, !dbg !725
  %2 = lshr i80 %1, 79, !dbg !725
  %3 = trunc i80 %2 to i32, !dbg !726
  ret i32 %3, !dbg !727
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !283, metadata !666), !dbg !728
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !219, metadata !666) #5, !dbg !729
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !731
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !732
  %or.cond = and i1 %1, %3, !dbg !733
  br i1 %or.cond, label %4, label %.critedge, !dbg !733

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !734
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !735
  ret i32 %7, !dbg !736
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !286, metadata !666), !dbg !737
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !225, metadata !666) #5, !dbg !738
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !740
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !741
  %or.cond = and i1 %1, %3, !dbg !742
  br i1 %or.cond, label %4, label %.critedge, !dbg !742

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !743
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !744
  ret i32 %7, !dbg !745
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !289, metadata !666), !dbg !746
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !231, metadata !666) #5, !dbg !747
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !749
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !750
  %or.cond = and i1 %1, %3, !dbg !751
  br i1 %or.cond, label %4, label %.critedge, !dbg !751

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !752
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !753
  ret i32 %7, !dbg !754
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !295, metadata !666), !dbg !755
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !296, metadata !666), !dbg !756
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !297, metadata !666), !dbg !757
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !298, metadata !666), !dbg !758
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #9, !dbg !759
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !298, metadata !666), !dbg !758
  %2 = extractelement <2 x float> %1, i32 0, !dbg !760
  store float %2, float* %__sinp, align 4, !dbg !761, !tbaa !762
  %3 = extractelement <2 x float> %1, i32 1, !dbg !766
  store float %3, float* %__cosp, align 4, !dbg !767, !tbaa !762
  ret void, !dbg !768
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !309, metadata !666), !dbg !769
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !310, metadata !666), !dbg !770
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !311, metadata !666), !dbg !771
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !312, metadata !666), !dbg !772
  %1 = tail call { double, double } @__sincos_stret(double %__x) #9, !dbg !773
  %2 = extractvalue { double, double } %1, 0, !dbg !773
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !312, metadata !774), !dbg !772
  %3 = extractvalue { double, double } %1, 1, !dbg !773
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !312, metadata !775), !dbg !772
  store double %2, double* %__sinp, align 8, !dbg !776, !tbaa !777
  store double %3, double* %__cosp, align 8, !dbg !779, !tbaa !777
  ret void, !dbg !780
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !320, metadata !666), !dbg !781
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !321, metadata !666), !dbg !782
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !322, metadata !666), !dbg !783
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !323, metadata !666), !dbg !784
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #9, !dbg !785
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !323, metadata !666), !dbg !784
  %2 = extractelement <2 x float> %1, i32 0, !dbg !786
  store float %2, float* %__sinp, align 4, !dbg !787, !tbaa !762
  %3 = extractelement <2 x float> %1, i32 1, !dbg !788
  store float %3, float* %__cosp, align 4, !dbg !789, !tbaa !762
  ret void, !dbg !790
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !326, metadata !666), !dbg !791
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !327, metadata !666), !dbg !792
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !328, metadata !666), !dbg !793
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !329, metadata !666), !dbg !794
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #9, !dbg !795
  %2 = extractvalue { double, double } %1, 0, !dbg !795
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !329, metadata !774), !dbg !794
  %3 = extractvalue { double, double } %1, 1, !dbg !795
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !329, metadata !775), !dbg !794
  store double %2, double* %__sinp, align 8, !dbg !796, !tbaa !777
  store double %3, double* %__cosp, align 8, !dbg !797, !tbaa !777
  ret void, !dbg !798
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @global_stat(%struct.__sFILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %fvir, [3 x float]* %svir, %struct.t_grpopts* nocapture readonly %opts, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* nocapture readonly %vcm, float* %terminate) #4 {
  %in = alloca [256 x i32], align 16
  %inn = alloca [7 x i32], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !505, metadata !666), !dbg !799
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !506, metadata !666), !dbg !800
  tail call void @llvm.dbg.value(metadata float* %ener, i64 0, metadata !507, metadata !666), !dbg !801
  tail call void @llvm.dbg.value(metadata [3 x float]* %fvir, i64 0, metadata !508, metadata !666), !dbg !802
  tail call void @llvm.dbg.value(metadata [3 x float]* %svir, i64 0, metadata !509, metadata !666), !dbg !803
  tail call void @llvm.dbg.value(metadata %struct.t_grpopts* %opts, i64 0, metadata !510, metadata !666), !dbg !804
  tail call void @llvm.dbg.value(metadata %struct.t_groups* %grps, i64 0, metadata !511, metadata !666), !dbg !805
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %mynrnb, i64 0, metadata !512, metadata !666), !dbg !806
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %nrnb, i64 0, metadata !513, metadata !666), !dbg !807
  tail call void @llvm.dbg.value(metadata %struct.t_vcm* %vcm, i64 0, metadata !514, metadata !666), !dbg !808
  tail call void @llvm.dbg.value(metadata float* %terminate, i64 0, metadata !515, metadata !666), !dbg !809
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !524, metadata !666), !dbg !810
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !525, metadata !666), !dbg !811
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !526, metadata !666), !dbg !812
  %1 = bitcast [256 x i32]* %in to i8*, !dbg !813
  call void @llvm.lifetime.start(i64 1024, i8* %1) #5, !dbg !813
  tail call void @llvm.dbg.declare(metadata [256 x i32]* %in, metadata !527, metadata !666), !dbg !814
  tail call void @llvm.dbg.declare(metadata [7 x i32]* %inn, metadata !531, metadata !666), !dbg !815
  %2 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !816, !tbaa !818
  %3 = icmp eq %struct.t_bin* %2, null, !dbg !820
  br i1 %3, label %4, label %9, !dbg !821

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.t_bin* @mk_bin() #9, !dbg !822
  store %struct.t_bin* %5, %struct.t_bin** @global_stat.rb, align 8, !dbg !824, !tbaa !818
  %6 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0, !dbg !825
  %7 = load i32* %6, align 4, !dbg !825, !tbaa !826
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 76, i32 %7, i32 4) #9, !dbg !825
  store i8* %8, i8** bitcast (i32** @global_stat.itc to i8**), align 8, !dbg !825, !tbaa !818
  br label %.preheader2, !dbg !829

; <label>:9                                       ; preds = %0
  tail call void @reset_bin(%struct.t_bin* %2) #9, !dbg !830
  br label %.preheader2

.preheader2:                                      ; preds = %9, %4
  %10 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !831
  %11 = load i32* %10, align 4, !dbg !831, !tbaa !834
  %12 = icmp sgt i32 %11, 0, !dbg !836
  br i1 %12, label %.lr.ph17, label %._crit_edge18, !dbg !837

.lr.ph17:                                         ; preds = %.preheader2, %.lr.ph17
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %.lr.ph17 ], [ 0, %.preheader2 ]
  %13 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv31, !dbg !838
  tail call void @init_nrnb(%struct.t_nrnb* %13) #9, !dbg !839
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1, !dbg !837
  %14 = load i32* %10, align 4, !dbg !831, !tbaa !834
  %15 = sext i32 %14 to i64, !dbg !836
  %16 = icmp slt i64 %indvars.iv.next32, %15, !dbg !836
  br i1 %16, label %.lr.ph17, label %._crit_edge18, !dbg !837

._crit_edge18:                                    ; preds = %.lr.ph17, %.preheader2
  %17 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !840
  %18 = load i32* %17, align 4, !dbg !840, !tbaa !841
  %19 = sext i32 %18 to i64, !dbg !842
  %20 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %19, !dbg !842
  tail call void @cp_nrnb(%struct.t_nrnb* %20, %struct.t_nrnb* %mynrnb) #9, !dbg !843
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 89) #9, !dbg !844
  %21 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !845, !tbaa !818
  %22 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %21, i32 44, float* %ener) #9, !dbg !846
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !518, metadata !666), !dbg !847
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 91) #9, !dbg !848
  %23 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !849, !tbaa !818
  %24 = getelementptr inbounds [3 x float]* %fvir, i64 0, i64 0, !dbg !850
  %25 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %23, i32 9, float* %24) #9, !dbg !851
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !519, metadata !666), !dbg !852
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 93) #9, !dbg !853
  %26 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !854, !tbaa !818
  %27 = getelementptr inbounds [3 x float]* %svir, i64 0, i64 0, !dbg !855
  %28 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %26, i32 9, float* %27) #9, !dbg !856
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !520, metadata !666), !dbg !857
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 95) #9, !dbg !858
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !533, metadata !666), !dbg !859
  %29 = load i32* %10, align 4, !dbg !860, !tbaa !834
  %30 = icmp sgt i32 %29, 0, !dbg !863
  br i1 %30, label %.lr.ph14, label %._crit_edge15, !dbg !864

.lr.ph14:                                         ; preds = %._crit_edge18, %.lr.ph14
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %.lr.ph14 ], [ 0, %._crit_edge18 ]
  %31 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !865, !tbaa !818
  %32 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv29, i32 0, i64 0, !dbg !866
  %33 = tail call i32 @add_bind(%struct.__sFILE* %log, %struct.t_bin* %31, i32 129, double* %32) #9, !dbg !867
  %34 = getelementptr inbounds [256 x i32]* %in, i64 0, i64 %indvars.iv29, !dbg !868
  store i32 %33, i32* %34, align 4, !dbg !869, !tbaa !870
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1, !dbg !864
  %35 = load i32* %10, align 4, !dbg !860, !tbaa !834
  %36 = sext i32 %35 to i64, !dbg !863
  %37 = icmp slt i64 %indvars.iv.next30, %36, !dbg !863
  br i1 %37, label %.lr.ph14, label %._crit_edge15, !dbg !864

._crit_edge15:                                    ; preds = %.lr.ph14, %._crit_edge18
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 98) #9, !dbg !871
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !533, metadata !666), !dbg !859
  %38 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0, !dbg !872
  %39 = load i32* %38, align 4, !dbg !872, !tbaa !826
  %40 = icmp sgt i32 %39, 0, !dbg !875
  br i1 %40, label %.lr.ph11, label %._crit_edge, !dbg !876

.lr.ph11:                                         ; preds = %._crit_edge15
  %41 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1, !dbg !877
  br label %42, !dbg !876

; <label>:42                                      ; preds = %.lr.ph11, %42
  %indvars.iv27 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next28, %42 ]
  %43 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !878, !tbaa !818
  %44 = load %struct.t_grp_tcstat** %41, align 8, !dbg !877, !tbaa !879
  %45 = getelementptr inbounds %struct.t_grp_tcstat* %44, i64 %indvars.iv27, i32 2, i64 0, i64 0, !dbg !883
  %46 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %43, i32 9, float* %45) #9, !dbg !884
  %47 = load i32** @global_stat.itc, align 8, !dbg !885, !tbaa !818
  %48 = getelementptr inbounds i32* %47, i64 %indvars.iv27, !dbg !885
  store i32 %46, i32* %48, align 4, !dbg !886, !tbaa !870
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1, !dbg !876
  %49 = load i32* %38, align 4, !dbg !872, !tbaa !826
  %50 = sext i32 %49 to i64, !dbg !875
  %51 = icmp slt i64 %indvars.iv.next28, %50, !dbg !875
  br i1 %51, label %42, label %._crit_edge, !dbg !876

._crit_edge:                                      ; preds = %42, %._crit_edge15
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 101) #9, !dbg !887
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !533, metadata !666), !dbg !859
  %52 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0, !dbg !888
  br label %53, !dbg !891

; <label>:53                                      ; preds = %53, %._crit_edge
  %indvars.iv24 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next25, %53 ]
  %54 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !892, !tbaa !818
  %55 = load i32* %52, align 4, !dbg !888, !tbaa !893
  %56 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv24, !dbg !894
  %57 = load float** %56, align 8, !dbg !894, !tbaa !818
  %58 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %54, i32 %55, float* %57) #9, !dbg !895
  %59 = getelementptr inbounds [7 x i32]* %inn, i64 0, i64 %indvars.iv24, !dbg !896
  store i32 %58, i32* %59, align 4, !dbg !897, !tbaa !870
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !dbg !891
  %exitcond26 = icmp eq i64 %indvars.iv.next25, 7, !dbg !891
  br i1 %exitcond26, label %60, label %53, !dbg !891

; <label>:60                                      ; preds = %53
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 104) #9, !dbg !898
  %61 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !899, !tbaa !818
  %62 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 0, !dbg !900
  %63 = load i32* %62, align 4, !dbg !900, !tbaa !901
  %64 = mul nsw i32 %63, 3, !dbg !903
  %65 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 2, !dbg !904
  %66 = load [3 x float]** %65, align 8, !dbg !904, !tbaa !905
  %67 = getelementptr inbounds [3 x float]* %66, i64 0, i64 0, !dbg !906
  %68 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %61, i32 %64, float* %67) #9, !dbg !907
  tail call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !521, metadata !666), !dbg !908
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 106) #9, !dbg !909
  %69 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !910, !tbaa !818
  %70 = load i32* %62, align 4, !dbg !911, !tbaa !901
  %71 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 8, !dbg !912
  %72 = load float** %71, align 8, !dbg !912, !tbaa !913
  %73 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %69, i32 %70, float* %72) #9, !dbg !914
  tail call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !522, metadata !666), !dbg !915
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 108) #9, !dbg !916
  %74 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 1, !dbg !917
  %75 = load i32* %74, align 4, !dbg !917, !tbaa !919
  %76 = icmp eq i32 %75, 1, !dbg !920
  br i1 %76, label %77, label %99, !dbg !921

; <label>:77                                      ; preds = %60
  %78 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !922, !tbaa !818
  %79 = load i32* %62, align 4, !dbg !924, !tbaa !901
  %80 = mul nsw i32 %79, 3, !dbg !925
  %81 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5, !dbg !926
  %82 = load [3 x float]** %81, align 8, !dbg !926, !tbaa !927
  %83 = getelementptr inbounds [3 x float]* %82, i64 0, i64 0, !dbg !928
  %84 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %78, i32 %80, float* %83) #9, !dbg !929
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !524, metadata !666), !dbg !810
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 111) #9, !dbg !930
  %85 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !931, !tbaa !818
  %86 = load i32* %62, align 4, !dbg !932, !tbaa !901
  %87 = mul nsw i32 %86, 3, !dbg !933
  %88 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4, !dbg !934
  %89 = load [3 x float]** %88, align 8, !dbg !934, !tbaa !935
  %90 = getelementptr inbounds [3 x float]* %89, i64 0, i64 0, !dbg !936
  %91 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %85, i32 %87, float* %90) #9, !dbg !937
  tail call void @llvm.dbg.value(metadata i32 %91, i64 0, metadata !526, metadata !666), !dbg !812
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 113) #9, !dbg !938
  %92 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !939, !tbaa !818
  %93 = load i32* %62, align 4, !dbg !940, !tbaa !901
  %94 = mul nsw i32 %93, 9, !dbg !941
  %95 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7, !dbg !942
  %96 = load [3 x [3 x float]]** %95, align 8, !dbg !942, !tbaa !943
  %97 = getelementptr inbounds [3 x [3 x float]]* %96, i64 0, i64 0, i64 0, !dbg !944
  %98 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %92, i32 %94, float* %97) #9, !dbg !945
  tail call void @llvm.dbg.value(metadata i32 %98, i64 0, metadata !525, metadata !666), !dbg !811
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 115) #9, !dbg !946
  br label %99, !dbg !947

; <label>:99                                      ; preds = %77, %60
  %icj.0 = phi i32 [ %84, %77 ], [ -1, %60 ]
  %ici.0 = phi i32 [ %98, %77 ], [ -1, %60 ]
  %icx.0 = phi i32 [ %91, %77 ], [ -1, %60 ]
  %100 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !948, !tbaa !818
  %101 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 3, i32 1, !dbg !949
  %102 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %100, i32 1, float* %101) #9, !dbg !950
  tail call void @llvm.dbg.value(metadata i32 %102, i64 0, metadata !523, metadata !666), !dbg !951
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 118) #9, !dbg !952
  %103 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !953, !tbaa !818
  %104 = tail call i32 @add_binr(%struct.__sFILE* %log, %struct.t_bin* %103, i32 1, float* %terminate) #9, !dbg !954
  tail call void @llvm.dbg.value(metadata i32 %104, i64 0, metadata !516, metadata !666), !dbg !955
  %105 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !956, !tbaa !818
  tail call void @sum_bin(%struct.t_bin* %105, %struct.t_commrec* %cr) #9, !dbg !957
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 123) #9, !dbg !958
  %106 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !959, !tbaa !818
  tail call void @extract_binr(%struct.t_bin* %106, i32 %22, i32 44, float* %ener) #9, !dbg !960
  %107 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !961, !tbaa !818
  tail call void @extract_binr(%struct.t_bin* %107, i32 %25, i32 9, float* %24) #9, !dbg !962
  %108 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !963, !tbaa !818
  tail call void @extract_binr(%struct.t_bin* %108, i32 %28, i32 9, float* %27) #9, !dbg !964
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !533, metadata !666), !dbg !859
  %109 = load i32* %10, align 4, !dbg !965, !tbaa !834
  %110 = icmp sgt i32 %109, 0, !dbg !968
  br i1 %110, label %.lr.ph8, label %.preheader1, !dbg !969

.preheader1:                                      ; preds = %.lr.ph8, %99
  %111 = load i32* %38, align 4, !dbg !970, !tbaa !826
  %112 = icmp sgt i32 %111, 0, !dbg !973
  br i1 %112, label %.lr.ph, label %.preheader, !dbg !974

.lr.ph:                                           ; preds = %.preheader1
  %113 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1, !dbg !975
  br label %122, !dbg !974

.lr.ph8:                                          ; preds = %99, %.lr.ph8
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %.lr.ph8 ], [ 0, %99 ]
  %114 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !976, !tbaa !818
  %115 = getelementptr inbounds [256 x i32]* %in, i64 0, i64 %indvars.iv22, !dbg !977
  %116 = load i32* %115, align 4, !dbg !977, !tbaa !870
  %117 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %indvars.iv22, i32 0, i64 0, !dbg !978
  tail call void @extract_bind(%struct.t_bin* %114, i32 %116, i32 129, double* %117) #9, !dbg !979
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !969
  %118 = load i32* %10, align 4, !dbg !965, !tbaa !834
  %119 = sext i32 %118 to i64, !dbg !968
  %120 = icmp slt i64 %indvars.iv.next23, %119, !dbg !968
  br i1 %120, label %.lr.ph8, label %.preheader1, !dbg !969

.preheader:                                       ; preds = %122, %.preheader1
  %121 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !980, !tbaa !818
  br label %132, !dbg !983

; <label>:122                                     ; preds = %.lr.ph, %122
  %indvars.iv20 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next21, %122 ]
  %123 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !984, !tbaa !818
  %124 = load i32** @global_stat.itc, align 8, !dbg !985, !tbaa !818
  %125 = getelementptr inbounds i32* %124, i64 %indvars.iv20, !dbg !985
  %126 = load i32* %125, align 4, !dbg !985, !tbaa !870
  %127 = load %struct.t_grp_tcstat** %113, align 8, !dbg !975, !tbaa !879
  %128 = getelementptr inbounds %struct.t_grp_tcstat* %127, i64 %indvars.iv20, i32 2, i64 0, i64 0, !dbg !986
  tail call void @extract_binr(%struct.t_bin* %123, i32 %126, i32 9, float* %128) #9, !dbg !987
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !dbg !974
  %129 = load i32* %38, align 4, !dbg !970, !tbaa !826
  %130 = sext i32 %129 to i64, !dbg !973
  %131 = icmp slt i64 %indvars.iv.next21, %130, !dbg !973
  br i1 %131, label %122, label %.preheader, !dbg !974

; <label>:132                                     ; preds = %132, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %132 ]
  %133 = phi %struct.t_bin* [ %121, %.preheader ], [ %139, %132 ]
  %134 = getelementptr inbounds [7 x i32]* %inn, i64 0, i64 %indvars.iv, !dbg !988
  %135 = load i32* %134, align 4, !dbg !988, !tbaa !870
  %136 = load i32* %52, align 4, !dbg !989, !tbaa !893
  %137 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv, !dbg !990
  %138 = load float** %137, align 8, !dbg !990, !tbaa !818
  tail call void @extract_binr(%struct.t_bin* %133, i32 %135, i32 %136, float* %138) #9, !dbg !991
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !983
  %139 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !980, !tbaa !818
  %exitcond = icmp eq i64 %indvars.iv.next, 7, !dbg !983
  br i1 %exitcond, label %140, label %132, !dbg !983

; <label>:140                                     ; preds = %132
  %141 = load i32* %62, align 4, !dbg !992, !tbaa !901
  %142 = mul nsw i32 %141, 3, !dbg !993
  %143 = load [3 x float]** %65, align 8, !dbg !994, !tbaa !905
  %144 = getelementptr inbounds [3 x float]* %143, i64 0, i64 0, !dbg !995
  tail call void @extract_binr(%struct.t_bin* %139, i32 %68, i32 %142, float* %144) #9, !dbg !996
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 136) #9, !dbg !997
  %145 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !998, !tbaa !818
  %146 = load i32* %62, align 4, !dbg !999, !tbaa !901
  %147 = load float** %71, align 8, !dbg !1000, !tbaa !913
  tail call void @extract_binr(%struct.t_bin* %145, i32 %73, i32 %146, float* %147) #9, !dbg !1001
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 138) #9, !dbg !1002
  %148 = load i32* %74, align 4, !dbg !1003, !tbaa !919
  %149 = icmp eq i32 %148, 1, !dbg !1005
  br i1 %149, label %150, label %169, !dbg !1006

; <label>:150                                     ; preds = %140
  %151 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !1007, !tbaa !818
  %152 = load i32* %62, align 4, !dbg !1009, !tbaa !901
  %153 = mul nsw i32 %152, 3, !dbg !1010
  %154 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 5, !dbg !1011
  %155 = load [3 x float]** %154, align 8, !dbg !1011, !tbaa !927
  %156 = getelementptr inbounds [3 x float]* %155, i64 0, i64 0, !dbg !1012
  tail call void @extract_binr(%struct.t_bin* %151, i32 %icj.0, i32 %153, float* %156) #9, !dbg !1013
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 141) #9, !dbg !1014
  %157 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !1015, !tbaa !818
  %158 = load i32* %62, align 4, !dbg !1016, !tbaa !901
  %159 = mul nsw i32 %158, 3, !dbg !1017
  %160 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 4, !dbg !1018
  %161 = load [3 x float]** %160, align 8, !dbg !1018, !tbaa !935
  %162 = getelementptr inbounds [3 x float]* %161, i64 0, i64 0, !dbg !1019
  tail call void @extract_binr(%struct.t_bin* %157, i32 %icx.0, i32 %159, float* %162) #9, !dbg !1020
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 143) #9, !dbg !1021
  %163 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !1022, !tbaa !818
  %164 = load i32* %62, align 4, !dbg !1023, !tbaa !901
  %165 = mul nsw i32 %164, 9, !dbg !1024
  %166 = getelementptr inbounds %struct.t_vcm* %vcm, i64 0, i32 7, !dbg !1025
  %167 = load [3 x [3 x float]]** %166, align 8, !dbg !1025, !tbaa !943
  %168 = getelementptr inbounds [3 x [3 x float]]* %167, i64 0, i64 0, i64 0, !dbg !1026
  tail call void @extract_binr(%struct.t_bin* %163, i32 %ici.0, i32 %165, float* %168) #9, !dbg !1027
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 145) #9, !dbg !1028
  br label %169, !dbg !1029

; <label>:169                                     ; preds = %150, %140
  %170 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !1030, !tbaa !818
  tail call void @extract_binr(%struct.t_bin* %170, i32 %102, i32 1, float* %101) #9, !dbg !1031
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 148) #9, !dbg !1032
  %171 = load %struct.t_bin** @global_stat.rb, align 8, !dbg !1033, !tbaa !818
  tail call void @extract_binr(%struct.t_bin* %171, i32 %104, i32 1, float* %terminate) #9, !dbg !1034
  tail call void @_where(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 150) #9, !dbg !1035
  %172 = load i32* %10, align 4, !dbg !1036, !tbaa !834
  %173 = sitofp i32 %172 to float, !dbg !1037
  %174 = getelementptr inbounds float* %ener, i64 40, !dbg !1038
  %175 = load float* %174, align 4, !dbg !1039, !tbaa !762
  %176 = fdiv float %175, %173, !dbg !1039
  store float %176, float* %174, align 4, !dbg !1039, !tbaa !762
  call void @llvm.lifetime.end(i64 1024, i8* %1) #5, !dbg !1040
  ret void, !dbg !1040
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare %struct.t_bin* @mk_bin() #3

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @reset_bin(%struct.t_bin*) #3

; Function Attrs: optsize
declare void @init_nrnb(%struct.t_nrnb*) #3

; Function Attrs: optsize
declare void @cp_nrnb(%struct.t_nrnb*, %struct.t_nrnb*) #3

; Function Attrs: optsize
declare void @_where(i8*, i32) #3

; Function Attrs: optsize
declare i32 @add_binr(%struct.__sFILE*, %struct.t_bin*, i32, float*) #3

; Function Attrs: optsize
declare i32 @add_bind(%struct.__sFILE*, %struct.t_bin*, i32, double*) #3

; Function Attrs: optsize
declare void @sum_bin(%struct.t_bin*, %struct.t_commrec*) #3

; Function Attrs: optsize
declare void @extract_binr(%struct.t_bin*, i32, i32, float*) #3

; Function Attrs: optsize
declare void @extract_bind(%struct.t_bin*, i32, i32, double*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @do_per_step(i32 %step, i32 %nstep) #6 {
  tail call void @llvm.dbg.value(metadata i32 %step, i64 0, metadata !538, metadata !666), !dbg !1041
  tail call void @llvm.dbg.value(metadata i32 %nstep, i64 0, metadata !539, metadata !666), !dbg !1042
  %1 = icmp eq i32 %nstep, 0, !dbg !1043
  br i1 %1, label %6, label %2, !dbg !1045

; <label>:2                                       ; preds = %0
  %3 = srem i32 %step, %nstep, !dbg !1046
  %4 = icmp eq i32 %3, 0, !dbg !1047
  %5 = zext i1 %4 to i32, !dbg !1047
  br label %6, !dbg !1048

; <label>:6                                       ; preds = %0, %2
  %.0 = phi i32 [ %5, %2 ], [ 0, %0 ]
  ret i32 %.0, !dbg !1049
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @write_traj(%struct.__sFILE* %log, %struct.t_commrec* nocapture readonly %cr, i8* %traj, %struct.t_nsborder* %nsb, i32 %step, float %t, float %lambda, %struct.t_nrnb* nocapture readnone %nrnb, i32 %natoms, [3 x float]* %xx, [3 x float]* %vv, [3 x float]* %ff, [3 x float]* %box) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !560, metadata !666), !dbg !1050
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !561, metadata !666), !dbg !1051
  tail call void @llvm.dbg.value(metadata i8* %traj, i64 0, metadata !562, metadata !666), !dbg !1052
  tail call void @llvm.dbg.value(metadata %struct.t_nsborder* %nsb, i64 0, metadata !563, metadata !666), !dbg !1053
  tail call void @llvm.dbg.value(metadata i32 %step, i64 0, metadata !564, metadata !666), !dbg !1054
  tail call void @llvm.dbg.value(metadata float %t, i64 0, metadata !565, metadata !666), !dbg !1055
  tail call void @llvm.dbg.value(metadata float %lambda, i64 0, metadata !566, metadata !666), !dbg !1056
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %nrnb, i64 0, metadata !567, metadata !666), !dbg !1057
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !568, metadata !666), !dbg !1058
  tail call void @llvm.dbg.value(metadata [3 x float]* %xx, i64 0, metadata !569, metadata !666), !dbg !1059
  tail call void @llvm.dbg.value(metadata [3 x float]* %vv, i64 0, metadata !570, metadata !666), !dbg !1060
  tail call void @llvm.dbg.value(metadata [3 x float]* %ff, i64 0, metadata !571, metadata !666), !dbg !1061
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !572, metadata !666), !dbg !1062
  %1 = load i32* @write_traj.fp, align 4, !dbg !1063, !tbaa !870
  %2 = icmp eq i32 %1, -1, !dbg !1065
  br i1 %2, label %3, label %13, !dbg !1066

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !1067
  %5 = load i32* %4, align 4, !dbg !1067, !tbaa !841
  %6 = icmp eq i32 %5, 0, !dbg !1067
  br i1 %6, label %7, label %13, !dbg !1067

; <label>:7                                       ; preds = %3
  %8 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1067
  %9 = load i32* %8, align 4, !dbg !1067, !tbaa !1068
  %10 = icmp eq i32 %9, 0, !dbg !1067
  br i1 %10, label %11, label %13, !dbg !1069

; <label>:11                                      ; preds = %7
  %12 = tail call i32 @open_trn(i8* %traj, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #9, !dbg !1070
  store i32 %12, i32* @write_traj.fp, align 4, !dbg !1072, !tbaa !870
  br label %13, !dbg !1073

; <label>:13                                      ; preds = %11, %7, %3, %0
  %14 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !1074
  %15 = load i32* %14, align 4, !dbg !1074, !tbaa !834
  %16 = icmp sgt i32 %15, 1, !dbg !1076
  br i1 %16, label %17, label %26, !dbg !1077

; <label>:17                                      ; preds = %13
  %18 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !1078
  %19 = load i32* %18, align 4, !dbg !1078, !tbaa !1080
  %20 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !1078
  %21 = load i32* %20, align 4, !dbg !1078, !tbaa !1081
  tail call fastcc void @moveit(%struct.__sFILE* %log, i32 %19, i32 %21, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), [3 x float]* %xx, %struct.t_nsborder* %nsb) #10, !dbg !1078
  %22 = load i32* %18, align 4, !dbg !1082, !tbaa !1080
  %23 = load i32* %20, align 4, !dbg !1082, !tbaa !1081
  tail call fastcc void @moveit(%struct.__sFILE* %log, i32 %22, i32 %23, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0), [3 x float]* %vv, %struct.t_nsborder* %nsb) #10, !dbg !1082
  %24 = load i32* %18, align 4, !dbg !1083, !tbaa !1080
  %25 = load i32* %20, align 4, !dbg !1083, !tbaa !1081
  tail call fastcc void @moveit(%struct.__sFILE* %log, i32 %24, i32 %25, i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), [3 x float]* %ff, %struct.t_nsborder* %nsb) #10, !dbg !1083
  br label %26, !dbg !1084

; <label>:26                                      ; preds = %17, %13
  %27 = icmp ne [3 x float]* %xx, null, !dbg !1085
  %28 = icmp ne [3 x float]* %vv, null, !dbg !1087
  %or.cond = or i1 %27, %28, !dbg !1088
  %29 = icmp ne [3 x float]* %ff, null, !dbg !1089
  %or.cond3 = or i1 %or.cond, %29, !dbg !1088
  br i1 %or.cond3, label %30, label %41, !dbg !1088

; <label>:30                                      ; preds = %26
  %31 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !1090
  %32 = load i32* %31, align 4, !dbg !1090, !tbaa !841
  %33 = icmp eq i32 %32, 0, !dbg !1090
  br i1 %33, label %34, label %41, !dbg !1090

; <label>:34                                      ; preds = %30
  %35 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1090
  %36 = load i32* %35, align 4, !dbg !1090, !tbaa !1068
  %37 = icmp eq i32 %36, 0, !dbg !1090
  br i1 %37, label %38, label %41, !dbg !1091

; <label>:38                                      ; preds = %34
  %39 = load i32* @write_traj.fp, align 4, !dbg !1092, !tbaa !870
  tail call void @fwrite_trn(i32 %39, i32 %step, float %t, float %lambda, [3 x float]* %box, i32 %natoms, [3 x float]* %xx, [3 x float]* %vv, [3 x float]* %ff) #9, !dbg !1094
  %40 = load i32* @write_traj.fp, align 4, !dbg !1095, !tbaa !870
  tail call void @gmx_fio_flush(i32 %40) #9, !dbg !1096
  br label %41, !dbg !1097

; <label>:41                                      ; preds = %26, %38, %34, %30
  %42 = load i32* @write_traj.fp, align 4, !dbg !1098, !tbaa !870
  ret i32 %42, !dbg !1099
}

; Function Attrs: optsize
declare i32 @open_trn(i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @moveit(%struct.__sFILE* %log, i32 %left, i32 %right, i8* %s, [3 x float]* %xx, %struct.t_nsborder* %nsb) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !625, metadata !666), !dbg !1100
  tail call void @llvm.dbg.value(metadata i32 %left, i64 0, metadata !626, metadata !666), !dbg !1101
  tail call void @llvm.dbg.value(metadata i32 %right, i64 0, metadata !627, metadata !666), !dbg !1102
  tail call void @llvm.dbg.value(metadata i8* %s, i64 0, metadata !628, metadata !666), !dbg !1103
  tail call void @llvm.dbg.value(metadata [3 x float]* %xx, i64 0, metadata !629, metadata !666), !dbg !1104
  tail call void @llvm.dbg.value(metadata %struct.t_nsborder* %nsb, i64 0, metadata !630, metadata !666), !dbg !1105
  %1 = icmp eq [3 x float]* %xx, null, !dbg !1106
  br i1 %1, label %74, label %2, !dbg !1108

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !1109
  %4 = load i32* %3, align 4, !dbg !1109, !tbaa !1110
  %5 = sext i32 %4 to i64, !dbg !1112
  %6 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %5, !dbg !1112
  %7 = load i32* %6, align 4, !dbg !1112, !tbaa !870
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !635, metadata !666), !dbg !1113
  %8 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %5, !dbg !1114
  %9 = load i32* %8, align 4, !dbg !1114, !tbaa !870
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !636, metadata !666), !dbg !1115
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 179, i32 %9, i32 12) #9, !dbg !1116
  %11 = bitcast i8* %10 to [3 x float]*, !dbg !1116
  tail call void @llvm.dbg.value(metadata [3 x float]* %11, i64 0, metadata !631, metadata !666), !dbg !1117
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !632, metadata !666), !dbg !1118
  %12 = icmp sgt i32 %9, 0, !dbg !1119
  br i1 %12, label %.lr.ph, label %._crit_edge.critedge, !dbg !1122

.lr.ph:                                           ; preds = %2
  %13 = sext i32 %7 to i64, !dbg !1122
  %14 = add i32 %9, -1, !dbg !1122
  br label %15, !dbg !1122

; <label>:15                                      ; preds = %15, %.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next12, %15 ]
  %16 = add nsw i64 %indvars.iv11, %13, !dbg !1123
  %17 = getelementptr inbounds [3 x float]* %xx, i64 %16, i64 0, !dbg !1124
  %18 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv11, i64 0, !dbg !1125
  tail call void @llvm.dbg.value(metadata float* %17, i64 0, metadata !644, metadata !666), !dbg !1126
  tail call void @llvm.dbg.value(metadata float* %18, i64 0, metadata !645, metadata !666), !dbg !1128
  %19 = bitcast float* %17 to i32*, !dbg !1129
  %20 = load i32* %19, align 4, !dbg !1129, !tbaa !762
  %21 = bitcast float* %18 to i32*, !dbg !1130
  store i32 %20, i32* %21, align 4, !dbg !1130, !tbaa !762
  %22 = getelementptr inbounds [3 x float]* %xx, i64 %16, i64 1, !dbg !1131
  %23 = bitcast float* %22 to i32*, !dbg !1131
  %24 = load i32* %23, align 4, !dbg !1131, !tbaa !762
  %25 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv11, i64 1, !dbg !1132
  %26 = bitcast float* %25 to i32*, !dbg !1133
  store i32 %24, i32* %26, align 4, !dbg !1133, !tbaa !762
  %27 = getelementptr inbounds [3 x float]* %xx, i64 %16, i64 2, !dbg !1134
  %28 = bitcast float* %27 to i32*, !dbg !1134
  %29 = load i32* %28, align 4, !dbg !1134, !tbaa !762
  %30 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv11, i64 2, !dbg !1135
  %31 = bitcast float* %30 to i32*, !dbg !1136
  store i32 %29, i32* %31, align 4, !dbg !1136, !tbaa !762
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !1122
  %lftr.wideiv13 = trunc i64 %indvars.iv11 to i32, !dbg !1122
  %exitcond14 = icmp eq i32 %lftr.wideiv13, %14, !dbg !1122
  br i1 %exitcond14, label %._crit_edge7, label %15, !dbg !1122

._crit_edge7:                                     ; preds = %15
  %32 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1, !dbg !1137
  %33 = load i32* %32, align 4, !dbg !1137, !tbaa !1138
  %34 = add nsw i32 %33, -1, !dbg !1139
  tail call void @move_rvecs(%struct.__sFILE* %log, i32 0, i32 0, i32 %left, i32 %right, [3 x float]* %xx, [3 x float]* null, i32 %34, %struct.t_nsborder* %nsb, %struct.t_nrnb* null) #9, !dbg !1140
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !632, metadata !666), !dbg !1118
  br i1 %12, label %.preheader.lr.ph, label %._crit_edge, !dbg !1141

.preheader.lr.ph:                                 ; preds = %._crit_edge7
  %35 = icmp ne %struct.__sFILE* %log, null, !dbg !1143
  %36 = sext i32 %7 to i64, !dbg !1141
  %37 = add i32 %9, -1, !dbg !1141
  br label %.preheader, !dbg !1141

.preheader:                                       ; preds = %70, %.preheader.lr.ph
  %indvars.iv8 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next9, %70 ]
  %38 = add nsw i64 %indvars.iv8, %36, !dbg !1147
  br label %39, !dbg !1151

; <label>:39                                      ; preds = %39, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %39 ]
  %bP.02 = phi i32 [ 0, %.preheader ], [ %bP.1, %39 ]
  %40 = getelementptr inbounds [3 x float]* %xx, i64 %38, i64 %indvars.iv, !dbg !1152
  %41 = load float* %40, align 4, !dbg !1152, !tbaa !762
  %42 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv8, i64 %indvars.iv, !dbg !1153
  %43 = load float* %42, align 4, !dbg !1153, !tbaa !762
  %44 = fsub float %41, %43, !dbg !1154
  %fabsf = tail call float @fabsf(float %44) #11, !dbg !1155
  %45 = fpext float %fabsf to double, !dbg !1155
  %46 = fcmp ogt double %45, 1.200000e-38, !dbg !1156
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !634, metadata !666), !dbg !1157
  %bP.1 = select i1 %46, i32 1, i32 %bP.02, !dbg !1158
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1151
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !1151
  br i1 %exitcond, label %47, label %39, !dbg !1151

; <label>:47                                      ; preds = %39
  %48 = icmp ne i32 %bP.1, 0, !dbg !1159
  %or.cond = and i1 %35, %48, !dbg !1160
  br i1 %or.cond, label %49, label %70, !dbg !1160

; <label>:49                                      ; preds = %47
  %50 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv8, i64 0, !dbg !1161
  %51 = load float* %50, align 4, !dbg !1161, !tbaa !762
  %52 = fpext float %51 to double, !dbg !1161
  %53 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv8, i64 1, !dbg !1162
  %54 = load float* %53, align 4, !dbg !1162, !tbaa !762
  %55 = fpext float %54 to double, !dbg !1162
  %56 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv8, i64 2, !dbg !1163
  %57 = load float* %56, align 4, !dbg !1163, !tbaa !762
  %58 = fpext float %57 to double, !dbg !1163
  %59 = getelementptr inbounds [3 x float]* %xx, i64 %38, i64 0, !dbg !1164
  %60 = load float* %59, align 4, !dbg !1164, !tbaa !762
  %61 = fpext float %60 to double, !dbg !1164
  %62 = getelementptr inbounds [3 x float]* %xx, i64 %38, i64 1, !dbg !1165
  %63 = load float* %62, align 4, !dbg !1165, !tbaa !762
  %64 = fpext float %63 to double, !dbg !1165
  %65 = getelementptr inbounds [3 x float]* %xx, i64 %38, i64 2, !dbg !1166
  %66 = load float* %65, align 4, !dbg !1166, !tbaa !762
  %67 = fpext float %66 to double, !dbg !1166
  %68 = trunc i64 %38 to i32, !dbg !1167
  %69 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([64 x i8]* @.str10, i64 0, i64 0), i8* %s, i32 %68, double %52, double %55, double %58, double %61, double %64, double %67) #9, !dbg !1167
  br label %70, !dbg !1167

; <label>:70                                      ; preds = %47, %49
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !1141
  %lftr.wideiv = trunc i64 %indvars.iv8 to i32, !dbg !1141
  %exitcond10 = icmp eq i32 %lftr.wideiv, %37, !dbg !1141
  br i1 %exitcond10, label %._crit_edge, label %.preheader, !dbg !1141

._crit_edge.critedge:                             ; preds = %2
  %71 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1, !dbg !1137
  %72 = load i32* %71, align 4, !dbg !1137, !tbaa !1138
  %73 = add nsw i32 %72, -1, !dbg !1139
  tail call void @move_rvecs(%struct.__sFILE* %log, i32 0, i32 0, i32 %left, i32 %right, [3 x float]* %xx, [3 x float]* null, i32 %73, %struct.t_nsborder* %nsb, %struct.t_nrnb* null) #9, !dbg !1140
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !632, metadata !666), !dbg !1118
  br label %._crit_edge

._crit_edge:                                      ; preds = %70, %._crit_edge.critedge, %._crit_edge7
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 196, i8* %10) #9, !dbg !1168
  br label %74, !dbg !1169

; <label>:74                                      ; preds = %0, %._crit_edge
  ret void, !dbg !1169
}

; Function Attrs: optsize
declare void @fwrite_trn(i32, i32, float, float, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #3

; Function Attrs: optsize
declare void @gmx_fio_flush(i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @write_xtc_traj(%struct.__sFILE* %log, %struct.t_commrec* nocapture readonly %cr, i8* %xtc_traj, %struct.t_nsborder* %nsb, %struct.t_mdatoms* nocapture readonly %md, i32 %step, float %t, [3 x float]* %xx, [3 x float]* %box, float %prec) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !605, metadata !666), !dbg !1170
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !606, metadata !666), !dbg !1171
  tail call void @llvm.dbg.value(metadata i8* %xtc_traj, i64 0, metadata !607, metadata !666), !dbg !1172
  tail call void @llvm.dbg.value(metadata %struct.t_nsborder* %nsb, i64 0, metadata !608, metadata !666), !dbg !1173
  tail call void @llvm.dbg.value(metadata %struct.t_mdatoms* %md, i64 0, metadata !609, metadata !666), !dbg !1174
  tail call void @llvm.dbg.value(metadata i32 %step, i64 0, metadata !610, metadata !666), !dbg !1175
  tail call void @llvm.dbg.value(metadata float %t, i64 0, metadata !611, metadata !666), !dbg !1176
  tail call void @llvm.dbg.value(metadata [3 x float]* %xx, i64 0, metadata !612, metadata !666), !dbg !1177
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !613, metadata !666), !dbg !1178
  tail call void @llvm.dbg.value(metadata float %prec, i64 0, metadata !614, metadata !666), !dbg !1179
  %.b = load i1* @write_xtc_traj.bFirst, align 1
  br i1 %.b, label %41, label %1, !dbg !1180

; <label>:1                                       ; preds = %0
  %2 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !1182
  %3 = load i32* %2, align 4, !dbg !1182, !tbaa !841
  %4 = icmp eq i32 %3, 0, !dbg !1182
  br i1 %4, label %5, label %41, !dbg !1182

; <label>:5                                       ; preds = %1
  %6 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1182
  %7 = load i32* %6, align 4, !dbg !1182, !tbaa !1068
  %8 = icmp eq i32 %7, 0, !dbg !1182
  br i1 %8, label %9, label %41, !dbg !1183

; <label>:9                                       ; preds = %5
  %10 = tail call i32 @open_xtc(i8* %xtc_traj, i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0)) #9, !dbg !1184
  store i32 %10, i32* @xd, align 4, !dbg !1186, !tbaa !870
  store i32 0, i32* @write_xtc_traj.natoms, align 4, !dbg !1187, !tbaa !870
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !615, metadata !666), !dbg !1188
  %11 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !1189
  %12 = load i32* %11, align 4, !dbg !1189, !tbaa !1192
  %13 = icmp sgt i32 %12, 0, !dbg !1194
  br i1 %13, label %.lr.ph4, label %._crit_edge, !dbg !1195

.lr.ph4:                                          ; preds = %9
  %14 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18, !dbg !1196
  %15 = load i16** %14, align 8, !dbg !1196, !tbaa !1198
  br label %16, !dbg !1195

; <label>:16                                      ; preds = %.lr.ph4, %24
  %17 = phi i32 [ %12, %.lr.ph4 ], [ %25, %24 ]
  %18 = phi i32 [ 0, %.lr.ph4 ], [ %26, %24 ]
  %indvars.iv5 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next6, %24 ]
  %19 = getelementptr inbounds i16* %15, i64 %indvars.iv5, !dbg !1199
  %20 = load i16* %19, align 2, !dbg !1199, !tbaa !1200
  %21 = icmp eq i16 %20, 0, !dbg !1202
  br i1 %21, label %22, label %24, !dbg !1203

; <label>:22                                      ; preds = %16
  %23 = add nsw i32 %18, 1, !dbg !1204
  store i32 %23, i32* @write_xtc_traj.natoms, align 4, !dbg !1204, !tbaa !870
  %.pre = load i32* %11, align 4, !dbg !1189, !tbaa !1192
  br label %24, !dbg !1205

; <label>:24                                      ; preds = %16, %22
  %25 = phi i32 [ %17, %16 ], [ %.pre, %22 ], !dbg !1195
  %26 = phi i32 [ %18, %16 ], [ %23, %22 ]
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !1195
  %27 = sext i32 %25 to i64, !dbg !1194
  %28 = icmp slt i64 %indvars.iv.next6, %27, !dbg !1194
  br i1 %28, label %16, label %._crit_edge, !dbg !1195

._crit_edge:                                      ; preds = %24, %9
  %29 = phi i32 [ %12, %9 ], [ %25, %24 ]
  %30 = phi i32 [ 0, %9 ], [ %26, %24 ]
  %31 = icmp eq %struct.__sFILE* %log, null, !dbg !1206
  br i1 %31, label %34, label %32, !dbg !1208

; <label>:32                                      ; preds = %._crit_edge
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), i32 %30) #9, !dbg !1209
  %.pre7 = load i32* @write_xtc_traj.natoms, align 4, !dbg !1210, !tbaa !870
  %.pre8 = load i32* %11, align 4, !dbg !1212, !tbaa !1192
  br label %34, !dbg !1209

; <label>:34                                      ; preds = %._crit_edge, %32
  %35 = phi i32 [ %29, %._crit_edge ], [ %.pre8, %32 ]
  %36 = phi i32 [ %30, %._crit_edge ], [ %.pre7, %32 ]
  %37 = icmp eq i32 %36, %35, !dbg !1213
  br i1 %37, label %40, label %38, !dbg !1214

; <label>:38                                      ; preds = %34
  %39 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 252, i32 %36, i32 12) #9, !dbg !1215
  store i8* %39, i8** bitcast ([3 x float]** @write_xtc_traj.x_sel to i8**), align 8, !dbg !1215, !tbaa !818
  br label %40, !dbg !1215

; <label>:40                                      ; preds = %34, %38
  store i1 true, i1* @write_xtc_traj.bFirst, align 1
  br label %41, !dbg !1216

; <label>:41                                      ; preds = %0, %40, %5, %1
  %42 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1, !dbg !1217
  %43 = load i32* %42, align 4, !dbg !1217, !tbaa !834
  %44 = icmp sgt i32 %43, 1, !dbg !1219
  br i1 %44, label %45, label %50, !dbg !1220

; <label>:45                                      ; preds = %41
  %46 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2, !dbg !1221
  %47 = load i32* %46, align 4, !dbg !1221, !tbaa !1080
  %48 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3, !dbg !1221
  %49 = load i32* %48, align 4, !dbg !1221, !tbaa !1081
  tail call fastcc void @moveit(%struct.__sFILE* %log, i32 %47, i32 %49, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), [3 x float]* %xx, %struct.t_nsborder* %nsb) #10, !dbg !1221
  br label %50, !dbg !1223

; <label>:50                                      ; preds = %45, %41
  %51 = icmp eq [3 x float]* %xx, null, !dbg !1224
  br i1 %51, label %100, label %52, !dbg !1226

; <label>:52                                      ; preds = %50
  %53 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !1227
  %54 = load i32* %53, align 4, !dbg !1227, !tbaa !841
  %55 = icmp eq i32 %54, 0, !dbg !1227
  br i1 %55, label %56, label %100, !dbg !1227

; <label>:56                                      ; preds = %52
  %57 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !1227
  %58 = load i32* %57, align 4, !dbg !1227, !tbaa !1068
  %59 = icmp eq i32 %58, 0, !dbg !1227
  br i1 %59, label %60, label %100, !dbg !1228

; <label>:60                                      ; preds = %56
  %61 = load i32* @write_xtc_traj.natoms, align 4, !dbg !1229, !tbaa !870
  %62 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1, !dbg !1232
  %63 = load i32* %62, align 4, !dbg !1232, !tbaa !1192
  %64 = icmp eq i32 %61, %63, !dbg !1233
  br i1 %64, label %70, label %.preheader, !dbg !1234

.preheader:                                       ; preds = %60
  %65 = icmp sgt i32 %63, 0, !dbg !1235
  br i1 %65, label %.lr.ph, label %.preheader..loopexit_crit_edge, !dbg !1239

.preheader..loopexit_crit_edge:                   ; preds = %.preheader
  %.pre9.pre = load [3 x float]** @write_xtc_traj.x_sel, align 8, !dbg !1240, !tbaa !818
  br label %.loopexit, !dbg !1239

.lr.ph:                                           ; preds = %.preheader
  %66 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 18, !dbg !1242
  %67 = load i16** %66, align 8, !dbg !1242, !tbaa !1198
  %68 = load [3 x float]** @write_xtc_traj.x_sel, align 8, !dbg !1245, !tbaa !818
  %69 = sext i32 %63 to i64, !dbg !1239
  br label %71, !dbg !1239

; <label>:70                                      ; preds = %60
  store [3 x float]* %xx, [3 x float]** @write_xtc_traj.x_sel, align 8, !dbg !1247, !tbaa !818
  br label %.loopexit, !dbg !1248

; <label>:71                                      ; preds = %.lr.ph, %93
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %93 ]
  %j.02 = phi i32 [ 0, %.lr.ph ], [ %j.1, %93 ]
  %72 = getelementptr inbounds i16* %67, i64 %indvars.iv, !dbg !1249
  %73 = load i16* %72, align 2, !dbg !1249, !tbaa !1200
  %74 = icmp eq i16 %73, 0, !dbg !1250
  br i1 %74, label %75, label %93, !dbg !1251

; <label>:75                                      ; preds = %71
  %76 = getelementptr inbounds [3 x float]* %xx, i64 %indvars.iv, i64 0, !dbg !1252
  %77 = sext i32 %j.02 to i64, !dbg !1245
  %78 = getelementptr inbounds [3 x float]* %68, i64 %77, i64 0, !dbg !1245
  tail call void @llvm.dbg.value(metadata float* %76, i64 0, metadata !644, metadata !666), !dbg !1253
  tail call void @llvm.dbg.value(metadata float* %78, i64 0, metadata !645, metadata !666), !dbg !1255
  %79 = bitcast float* %76 to i32*, !dbg !1256
  %80 = load i32* %79, align 4, !dbg !1256, !tbaa !762
  %81 = bitcast float* %78 to i32*, !dbg !1257
  store i32 %80, i32* %81, align 4, !dbg !1257, !tbaa !762
  %82 = getelementptr inbounds [3 x float]* %xx, i64 %indvars.iv, i64 1, !dbg !1258
  %83 = bitcast float* %82 to i32*, !dbg !1258
  %84 = load i32* %83, align 4, !dbg !1258, !tbaa !762
  %85 = getelementptr inbounds [3 x float]* %68, i64 %77, i64 1, !dbg !1259
  %86 = bitcast float* %85 to i32*, !dbg !1260
  store i32 %84, i32* %86, align 4, !dbg !1260, !tbaa !762
  %87 = getelementptr inbounds [3 x float]* %xx, i64 %indvars.iv, i64 2, !dbg !1261
  %88 = bitcast float* %87 to i32*, !dbg !1261
  %89 = load i32* %88, align 4, !dbg !1261, !tbaa !762
  %90 = getelementptr inbounds [3 x float]* %68, i64 %77, i64 2, !dbg !1262
  %91 = bitcast float* %90 to i32*, !dbg !1263
  store i32 %89, i32* %91, align 4, !dbg !1263, !tbaa !762
  %92 = add nsw i32 %j.02, 1, !dbg !1264
  tail call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !616, metadata !666), !dbg !1265
  br label %93, !dbg !1266

; <label>:93                                      ; preds = %71, %75
  %j.1 = phi i32 [ %92, %75 ], [ %j.02, %71 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1239
  %94 = icmp slt i64 %indvars.iv.next, %69, !dbg !1235
  br i1 %94, label %71, label %.loopexit, !dbg !1239

.loopexit:                                        ; preds = %93, %.preheader..loopexit_crit_edge, %70
  %95 = phi [3 x float]* [ %xx, %70 ], [ %.pre9.pre, %.preheader..loopexit_crit_edge ], [ %68, %93 ]
  %96 = load i32* @xd, align 4, !dbg !1267, !tbaa !870
  %97 = tail call i32 @write_xtc(i32 %96, i32 %61, i32 %step, float %t, [3 x float]* %box, [3 x float]* %95, float %prec) #9, !dbg !1268
  %98 = icmp eq i32 %97, 0, !dbg !1269
  br i1 %98, label %99, label %100, !dbg !1270

; <label>:99                                      ; preds = %.loopexit
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0)) #9, !dbg !1271
  br label %100, !dbg !1271

; <label>:100                                     ; preds = %50, %.loopexit, %99, %56, %52
  ret void, !dbg !1272
}

; Function Attrs: optsize
declare i32 @open_xtc(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: optsize
declare i32 @write_xtc(i32, i32, i32, float, [3 x float]*, [3 x float]*, float) #3

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @close_xtc_traj() #4 {
  %1 = load i32* @xd, align 4, !dbg !1273, !tbaa !870
  tail call void @close_xtc(i32 %1) #9, !dbg !1274
  ret void, !dbg !1275
}

; Function Attrs: optsize
declare void @close_xtc(i32) #3

; Function Attrs: optsize
declare void @move_rvecs(%struct.__sFILE*, i32, i32, i32, i32, [3 x float]*, [3 x float]*, i32, %struct.t_nsborder*, %struct.t_nrnb*) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { readnone }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!662, !663, !664}
!llvm.ident = !{!665}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !203, subprograms: !206, globals: !646, imports: !620)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/stat.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !51, !185, !196}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 49, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/idef.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!6 = !DIEnumerator(name: "F_BONDS", value: 0)
!7 = !DIEnumerator(name: "F_G96BONDS", value: 1)
!8 = !DIEnumerator(name: "F_MORSE", value: 2)
!9 = !DIEnumerator(name: "F_CUBICBONDS", value: 3)
!10 = !DIEnumerator(name: "F_CONNBONDS", value: 4)
!11 = !DIEnumerator(name: "F_HARMONIC", value: 5)
!12 = !DIEnumerator(name: "F_ANGLES", value: 6)
!13 = !DIEnumerator(name: "F_G96ANGLES", value: 7)
!14 = !DIEnumerator(name: "F_PDIHS", value: 8)
!15 = !DIEnumerator(name: "F_RBDIHS", value: 9)
!16 = !DIEnumerator(name: "F_IDIHS", value: 10)
!17 = !DIEnumerator(name: "F_LJ14", value: 11)
!18 = !DIEnumerator(name: "F_COUL14", value: 12)
!19 = !DIEnumerator(name: "F_LJ", value: 13)
!20 = !DIEnumerator(name: "F_BHAM", value: 14)
!21 = !DIEnumerator(name: "F_LJLR", value: 15)
!22 = !DIEnumerator(name: "F_DISPCORR", value: 16)
!23 = !DIEnumerator(name: "F_SR", value: 17)
!24 = !DIEnumerator(name: "F_LR", value: 18)
!25 = !DIEnumerator(name: "F_WPOL", value: 19)
!26 = !DIEnumerator(name: "F_POSRES", value: 20)
!27 = !DIEnumerator(name: "F_DISRES", value: 21)
!28 = !DIEnumerator(name: "F_DISRESVIOL", value: 22)
!29 = !DIEnumerator(name: "F_ORIRES", value: 23)
!30 = !DIEnumerator(name: "F_ORIRESDEV", value: 24)
!31 = !DIEnumerator(name: "F_ANGRES", value: 25)
!32 = !DIEnumerator(name: "F_ANGRESZ", value: 26)
!33 = !DIEnumerator(name: "F_SHAKE", value: 27)
!34 = !DIEnumerator(name: "F_SHAKENC", value: 28)
!35 = !DIEnumerator(name: "F_SETTLE", value: 29)
!36 = !DIEnumerator(name: "F_DUMMY2", value: 30)
!37 = !DIEnumerator(name: "F_DUMMY3", value: 31)
!38 = !DIEnumerator(name: "F_DUMMY3FD", value: 32)
!39 = !DIEnumerator(name: "F_DUMMY3FAD", value: 33)
!40 = !DIEnumerator(name: "F_DUMMY3OUT", value: 34)
!41 = !DIEnumerator(name: "F_DUMMY4FD", value: 35)
!42 = !DIEnumerator(name: "F_EQM", value: 36)
!43 = !DIEnumerator(name: "F_EPOT", value: 37)
!44 = !DIEnumerator(name: "F_EKIN", value: 38)
!45 = !DIEnumerator(name: "F_ETOT", value: 39)
!46 = !DIEnumerator(name: "F_TEMP", value: 40)
!47 = !DIEnumerator(name: "F_PRES", value: 41)
!48 = !DIEnumerator(name: "F_DVDL", value: 42)
!49 = !DIEnumerator(name: "F_DVDLKIN", value: 43)
!50 = !DIEnumerator(name: "F_NRE", value: 44)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 51, size: 32, align: 32, elements: !53)
!52 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!54 = !DIEnumerator(name: "eNR_INL0100", value: 0)
!55 = !DIEnumerator(name: "eNR_INL0110", value: 1)
!56 = !DIEnumerator(name: "eNR_INL0200", value: 2)
!57 = !DIEnumerator(name: "eNR_INL0210", value: 3)
!58 = !DIEnumerator(name: "eNR_INL0300", value: 4)
!59 = !DIEnumerator(name: "eNR_INL0310", value: 5)
!60 = !DIEnumerator(name: "eNR_INL0301", value: 6)
!61 = !DIEnumerator(name: "eNR_INL0302", value: 7)
!62 = !DIEnumerator(name: "eNR_INL0400", value: 8)
!63 = !DIEnumerator(name: "eNR_INL0410", value: 9)
!64 = !DIEnumerator(name: "eNR_INL0401", value: 10)
!65 = !DIEnumerator(name: "eNR_INL0402", value: 11)
!66 = !DIEnumerator(name: "eNR_INL1000", value: 12)
!67 = !DIEnumerator(name: "eNR_INL1010", value: 13)
!68 = !DIEnumerator(name: "eNR_INL1020", value: 14)
!69 = !DIEnumerator(name: "eNR_INL1030", value: 15)
!70 = !DIEnumerator(name: "eNR_INL1100", value: 16)
!71 = !DIEnumerator(name: "eNR_INL1110", value: 17)
!72 = !DIEnumerator(name: "eNR_INL1120", value: 18)
!73 = !DIEnumerator(name: "eNR_INL1130", value: 19)
!74 = !DIEnumerator(name: "eNR_INL1200", value: 20)
!75 = !DIEnumerator(name: "eNR_INL1210", value: 21)
!76 = !DIEnumerator(name: "eNR_INL1220", value: 22)
!77 = !DIEnumerator(name: "eNR_INL1230", value: 23)
!78 = !DIEnumerator(name: "eNR_INL1300", value: 24)
!79 = !DIEnumerator(name: "eNR_INL1310", value: 25)
!80 = !DIEnumerator(name: "eNR_INL1320", value: 26)
!81 = !DIEnumerator(name: "eNR_INL1330", value: 27)
!82 = !DIEnumerator(name: "eNR_INL1400", value: 28)
!83 = !DIEnumerator(name: "eNR_INL1410", value: 29)
!84 = !DIEnumerator(name: "eNR_INL1420", value: 30)
!85 = !DIEnumerator(name: "eNR_INL1430", value: 31)
!86 = !DIEnumerator(name: "eNR_INL2000", value: 32)
!87 = !DIEnumerator(name: "eNR_INL2010", value: 33)
!88 = !DIEnumerator(name: "eNR_INL2020", value: 34)
!89 = !DIEnumerator(name: "eNR_INL2030", value: 35)
!90 = !DIEnumerator(name: "eNR_INL2100", value: 36)
!91 = !DIEnumerator(name: "eNR_INL2110", value: 37)
!92 = !DIEnumerator(name: "eNR_INL2120", value: 38)
!93 = !DIEnumerator(name: "eNR_INL2130", value: 39)
!94 = !DIEnumerator(name: "eNR_INL2200", value: 40)
!95 = !DIEnumerator(name: "eNR_INL2210", value: 41)
!96 = !DIEnumerator(name: "eNR_INL2220", value: 42)
!97 = !DIEnumerator(name: "eNR_INL2230", value: 43)
!98 = !DIEnumerator(name: "eNR_INL2300", value: 44)
!99 = !DIEnumerator(name: "eNR_INL2310", value: 45)
!100 = !DIEnumerator(name: "eNR_INL2320", value: 46)
!101 = !DIEnumerator(name: "eNR_INL2330", value: 47)
!102 = !DIEnumerator(name: "eNR_INL2400", value: 48)
!103 = !DIEnumerator(name: "eNR_INL2410", value: 49)
!104 = !DIEnumerator(name: "eNR_INL2420", value: 50)
!105 = !DIEnumerator(name: "eNR_INL2430", value: 51)
!106 = !DIEnumerator(name: "eNR_INL3000", value: 52)
!107 = !DIEnumerator(name: "eNR_INL3001", value: 53)
!108 = !DIEnumerator(name: "eNR_INL3002", value: 54)
!109 = !DIEnumerator(name: "eNR_INL3010", value: 55)
!110 = !DIEnumerator(name: "eNR_INL3020", value: 56)
!111 = !DIEnumerator(name: "eNR_INL3030", value: 57)
!112 = !DIEnumerator(name: "eNR_INL3100", value: 58)
!113 = !DIEnumerator(name: "eNR_INL3110", value: 59)
!114 = !DIEnumerator(name: "eNR_INL3120", value: 60)
!115 = !DIEnumerator(name: "eNR_INL3130", value: 61)
!116 = !DIEnumerator(name: "eNR_INL3200", value: 62)
!117 = !DIEnumerator(name: "eNR_INL3210", value: 63)
!118 = !DIEnumerator(name: "eNR_INL3220", value: 64)
!119 = !DIEnumerator(name: "eNR_INL3230", value: 65)
!120 = !DIEnumerator(name: "eNR_INL3300", value: 66)
!121 = !DIEnumerator(name: "eNR_INL3301", value: 67)
!122 = !DIEnumerator(name: "eNR_INL3302", value: 68)
!123 = !DIEnumerator(name: "eNR_INL3310", value: 69)
!124 = !DIEnumerator(name: "eNR_INL3320", value: 70)
!125 = !DIEnumerator(name: "eNR_INL3330", value: 71)
!126 = !DIEnumerator(name: "eNR_INL3400", value: 72)
!127 = !DIEnumerator(name: "eNR_INL3401", value: 73)
!128 = !DIEnumerator(name: "eNR_INL3402", value: 74)
!129 = !DIEnumerator(name: "eNR_INL3410", value: 75)
!130 = !DIEnumerator(name: "eNR_INL3420", value: 76)
!131 = !DIEnumerator(name: "eNR_INL3430", value: 77)
!132 = !DIEnumerator(name: "eNR_INLOOP", value: 78)
!133 = !DIEnumerator(name: "eNR_INL_IATOM", value: 78)
!134 = !DIEnumerator(name: "eNR_WEIGHTS", value: 79)
!135 = !DIEnumerator(name: "eNR_SPREADQ", value: 80)
!136 = !DIEnumerator(name: "eNR_SPREADQBSP", value: 81)
!137 = !DIEnumerator(name: "eNR_GATHERF", value: 82)
!138 = !DIEnumerator(name: "eNR_GATHERFBSP", value: 83)
!139 = !DIEnumerator(name: "eNR_FFT", value: 84)
!140 = !DIEnumerator(name: "eNR_CONV", value: 85)
!141 = !DIEnumerator(name: "eNR_SOLVEPME", value: 86)
!142 = !DIEnumerator(name: "eNR_NS", value: 87)
!143 = !DIEnumerator(name: "eNR_RESETX", value: 88)
!144 = !DIEnumerator(name: "eNR_SHIFTX", value: 89)
!145 = !DIEnumerator(name: "eNR_CGCM", value: 90)
!146 = !DIEnumerator(name: "eNR_FSUM", value: 91)
!147 = !DIEnumerator(name: "eNR_BONDS", value: 92)
!148 = !DIEnumerator(name: "eNR_G96BONDS", value: 93)
!149 = !DIEnumerator(name: "eNR_ANGLES", value: 94)
!150 = !DIEnumerator(name: "eNR_G96ANGLES", value: 95)
!151 = !DIEnumerator(name: "eNR_PROPER", value: 96)
!152 = !DIEnumerator(name: "eNR_IMPROPER", value: 97)
!153 = !DIEnumerator(name: "eNR_RB", value: 98)
!154 = !DIEnumerator(name: "eNR_DISRES", value: 99)
!155 = !DIEnumerator(name: "eNR_ORIRES", value: 100)
!156 = !DIEnumerator(name: "eNR_POSRES", value: 101)
!157 = !DIEnumerator(name: "eNR_ANGRES", value: 102)
!158 = !DIEnumerator(name: "eNR_ANGRESZ", value: 103)
!159 = !DIEnumerator(name: "eNR_MORSE", value: 104)
!160 = !DIEnumerator(name: "eNR_CUBICBONDS", value: 105)
!161 = !DIEnumerator(name: "eNR_WPOL", value: 106)
!162 = !DIEnumerator(name: "eNR_VIRIAL", value: 107)
!163 = !DIEnumerator(name: "eNR_UPDATE", value: 108)
!164 = !DIEnumerator(name: "eNR_EXTUPDATE", value: 109)
!165 = !DIEnumerator(name: "eNR_STOPCM", value: 110)
!166 = !DIEnumerator(name: "eNR_PCOUPL", value: 111)
!167 = !DIEnumerator(name: "eNR_EKIN", value: 112)
!168 = !DIEnumerator(name: "eNR_LINCS", value: 113)
!169 = !DIEnumerator(name: "eNR_LINCSMAT", value: 114)
!170 = !DIEnumerator(name: "eNR_SHAKE", value: 115)
!171 = !DIEnumerator(name: "eNR_SHAKE_V", value: 116)
!172 = !DIEnumerator(name: "eNR_SHAKE_RIJ", value: 117)
!173 = !DIEnumerator(name: "eNR_SHAKE_VIR", value: 118)
!174 = !DIEnumerator(name: "eNR_SETTLE", value: 119)
!175 = !DIEnumerator(name: "eNR_PSHAKEINITLD", value: 120)
!176 = !DIEnumerator(name: "eNR_PSHAKEINITMD", value: 121)
!177 = !DIEnumerator(name: "eNR_PSHAKE", value: 122)
!178 = !DIEnumerator(name: "eNR_DUM2", value: 123)
!179 = !DIEnumerator(name: "eNR_DUM3", value: 124)
!180 = !DIEnumerator(name: "eNR_DUM3FD", value: 125)
!181 = !DIEnumerator(name: "eNR_DUM3FAD", value: 126)
!182 = !DIEnumerator(name: "eNR_DUM3OUT", value: 127)
!183 = !DIEnumerator(name: "eNR_DUM4FD", value: 128)
!184 = !DIEnumerator(name: "eNRNB", value: 129)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !186, line: 36, size: 32, align: 32, elements: !187)
!186 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/group.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195}
!188 = !DIEnumerator(name: "egCOUL", value: 0)
!189 = !DIEnumerator(name: "egLJ", value: 1)
!190 = !DIEnumerator(name: "egBHAM", value: 2)
!191 = !DIEnumerator(name: "egLR", value: 3)
!192 = !DIEnumerator(name: "egLJLR", value: 4)
!193 = !DIEnumerator(name: "egCOUL14", value: 5)
!194 = !DIEnumerator(name: "egLJ14", value: 6)
!195 = !DIEnumerator(name: "egNR", value: 7)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !197, line: 126, size: 32, align: 32, elements: !198)
!197 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/enums.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!198 = !{!199, !200, !201, !202}
!199 = !DIEnumerator(name: "ecmLINEAR", value: 0)
!200 = !DIEnumerator(name: "ecmANGULAR", value: 1)
!201 = !DIEnumerator(name: "ecmNO", value: 2)
!202 = !DIEnumerator(name: "ecmNR", value: 3)
!203 = !{!204, !205}
!204 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!206 = !{!207, !213, !220, !226, !232, !235, !238, !241, !244, !247, !250, !259, !268, !281, !284, !287, !290, !304, !318, !324, !330, !534, !540, !573, !617, !621, !637}
!207 = !DISubprogram(name: "__sigbits", scope: !208, file: !208, line: 114, type: !209, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !211)
!208 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!209 = !DISubroutineType(types: !210)
!210 = !{!204, !204}
!211 = !{!212}
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !207, file: !208, line: 114, type: !204)
!213 = !DISubprogram(name: "__inline_isfinitef", scope: !214, file: !214, line: 204, type: !215, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !218)
!214 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!215 = !DISubroutineType(types: !216)
!216 = !{!204, !217}
!217 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!218 = !{!219}
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !213, file: !214, line: 204, type: !217)
!220 = !DISubprogram(name: "__inline_isfinited", scope: !214, file: !214, line: 207, type: !221, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !224)
!221 = !DISubroutineType(types: !222)
!222 = !{!204, !223}
!223 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!224 = !{!225}
!225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !220, file: !214, line: 207, type: !223)
!226 = !DISubprogram(name: "__inline_isfinitel", scope: !214, file: !214, line: 210, type: !227, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !230)
!227 = !DISubroutineType(types: !228)
!228 = !{!204, !229}
!229 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!230 = !{!231}
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !226, file: !214, line: 210, type: !229)
!232 = !DISubprogram(name: "__inline_isinff", scope: !214, file: !214, line: 213, type: !215, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !233)
!233 = !{!234}
!234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !232, file: !214, line: 213, type: !217)
!235 = !DISubprogram(name: "__inline_isinfd", scope: !214, file: !214, line: 216, type: !221, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !236)
!236 = !{!237}
!237 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !235, file: !214, line: 216, type: !223)
!238 = !DISubprogram(name: "__inline_isinfl", scope: !214, file: !214, line: 219, type: !227, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !239)
!239 = !{!240}
!240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !238, file: !214, line: 219, type: !229)
!241 = !DISubprogram(name: "__inline_isnanf", scope: !214, file: !214, line: 222, type: !215, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !242)
!242 = !{!243}
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !241, file: !214, line: 222, type: !217)
!244 = !DISubprogram(name: "__inline_isnand", scope: !214, file: !214, line: 225, type: !221, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !245)
!245 = !{!246}
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !244, file: !214, line: 225, type: !223)
!247 = !DISubprogram(name: "__inline_isnanl", scope: !214, file: !214, line: 228, type: !227, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !248)
!248 = !{!249}
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !247, file: !214, line: 228, type: !229)
!250 = !DISubprogram(name: "__inline_signbitf", scope: !214, file: !214, line: 231, type: !215, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !251)
!251 = !{!252, !253}
!252 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !250, file: !214, line: 231, type: !217)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !250, file: !214, line: 232, type: !254)
!254 = !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !214, line: 232, size: 32, align: 32, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !254, file: !214, line: 232, baseType: !217, size: 32, align: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !254, file: !214, line: 232, baseType: !258, size: 32, align: 32)
!258 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!259 = !DISubprogram(name: "__inline_signbitd", scope: !214, file: !214, line: 236, type: !221, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !260)
!260 = !{!261, !262}
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !259, file: !214, line: 236, type: !223)
!262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !259, file: !214, line: 237, type: !263)
!263 = !DICompositeType(tag: DW_TAG_union_type, scope: !259, file: !214, line: 237, size: 64, align: 64, elements: !264)
!264 = !{!265, !266}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !263, file: !214, line: 237, baseType: !223, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !263, file: !214, line: 237, baseType: !267, size: 64, align: 64)
!267 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!268 = !DISubprogram(name: "__inline_signbitl", scope: !214, file: !214, line: 242, type: !227, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !269)
!269 = !{!270, !271}
!270 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !268, file: !214, line: 242, type: !229)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !268, file: !214, line: 246, type: !272)
!272 = !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !214, line: 243, size: 128, align: 128, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !272, file: !214, line: 244, baseType: !229, size: 128, align: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !272, file: !214, line: 245, baseType: !276, size: 128, align: 64)
!276 = !DICompositeType(tag: DW_TAG_structure_type, scope: !272, file: !214, line: 245, size: 128, align: 64, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !276, file: !214, line: 245, baseType: !267, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !276, file: !214, line: 245, baseType: !280, size: 16, align: 16, offset: 64)
!280 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!281 = !DISubprogram(name: "__inline_isnormalf", scope: !214, file: !214, line: 257, type: !215, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !282)
!282 = !{!283}
!283 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !281, file: !214, line: 257, type: !217)
!284 = !DISubprogram(name: "__inline_isnormald", scope: !214, file: !214, line: 260, type: !221, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !285)
!285 = !{!286}
!286 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !284, file: !214, line: 260, type: !223)
!287 = !DISubprogram(name: "__inline_isnormall", scope: !214, file: !214, line: 263, type: !227, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !288)
!288 = !{!289}
!289 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !287, file: !214, line: 263, type: !229)
!290 = !DISubprogram(name: "__sincosf", scope: !214, file: !214, line: 642, type: !291, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !294)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !217, !293, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!294 = !{!295, !296, !297, !298}
!295 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !290, file: !214, line: 642, type: !217)
!296 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !290, file: !214, line: 642, type: !293)
!297 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !290, file: !214, line: 642, type: !293)
!298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !290, file: !214, line: 643, type: !299)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !214, line: 634, size: 64, align: 32, elements: !301)
!301 = !{!302, !303}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !300, file: !214, line: 634, baseType: !217, size: 32, align: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !300, file: !214, line: 634, baseType: !217, size: 32, align: 32, offset: 32)
!304 = !DISubprogram(name: "__sincos", scope: !214, file: !214, line: 647, type: !305, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !308)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !223, !307, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!308 = !{!309, !310, !311, !312}
!309 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !304, file: !214, line: 647, type: !223)
!310 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !304, file: !214, line: 647, type: !307)
!311 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !304, file: !214, line: 647, type: !307)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !304, file: !214, line: 648, type: !313)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !214, line: 635, size: 128, align: 64, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !314, file: !214, line: 635, baseType: !223, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !314, file: !214, line: 635, baseType: !223, size: 64, align: 64, offset: 64)
!318 = !DISubprogram(name: "__sincospif", scope: !214, file: !214, line: 652, type: !291, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !319)
!319 = !{!320, !321, !322, !323}
!320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !318, file: !214, line: 652, type: !217)
!321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !318, file: !214, line: 652, type: !293)
!322 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !318, file: !214, line: 652, type: !293)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !318, file: !214, line: 653, type: !299)
!324 = !DISubprogram(name: "__sincospi", scope: !214, file: !214, line: 657, type: !305, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !325)
!325 = !{!326, !327, !328, !329}
!326 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !324, file: !214, line: 657, type: !223)
!327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !324, file: !214, line: 657, type: !307)
!328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !324, file: !214, line: 657, type: !307)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !324, file: !214, line: 658, type: !313)
!330 = !DISubprogram(name: "global_stat", scope: !1, file: !1, line: 59, type: !331, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_commrec*, float*, [3 x float]*, [3 x float]*, %struct.t_grpopts*, %struct.t_groups*, %struct.t_nrnb*, %struct.t_nrnb*, %struct.t_vcm*, float*)* @global_stat, variables: !504)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !333, !394, !405, !408, !408, !410, !431, !477, !477, !485, !405}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !335, line: 153, baseType: !336)
!335 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !335, line: 122, size: 1216, align: 64, elements: !337)
!337 = !{!338, !341, !342, !343, !345, !346, !351, !352, !353, !356, !362, !372, !378, !379, !382, !383, !387, !391, !392, !393}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !336, file: !335, line: 123, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !336, file: !335, line: 124, baseType: !204, size: 32, align: 32, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !336, file: !335, line: 125, baseType: !204, size: 32, align: 32, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !336, file: !335, line: 126, baseType: !344, size: 16, align: 16, offset: 128)
!344 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !336, file: !335, line: 127, baseType: !344, size: 16, align: 16, offset: 144)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !336, file: !335, line: 128, baseType: !347, size: 128, align: 64, offset: 192)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !335, line: 88, size: 128, align: 64, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !347, file: !335, line: 89, baseType: !339, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !347, file: !335, line: 90, baseType: !204, size: 32, align: 32, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !336, file: !335, line: 129, baseType: !204, size: 32, align: 32, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !336, file: !335, line: 132, baseType: !205, size: 64, align: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !336, file: !335, line: 133, baseType: !354, size: 64, align: 64, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DISubroutineType(types: !203)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !336, file: !335, line: 134, baseType: !357, size: 64, align: 64, offset: 512)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!204, !205, !360, !204}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !336, file: !335, line: 135, baseType: !363, size: 64, align: 64, offset: 576)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !205, !366, !204}
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !335, line: 77, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !368, line: 71, baseType: !369)
!368 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !370, line: 46, baseType: !371)
!370 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!371 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !336, file: !335, line: 136, baseType: !373, size: 64, align: 64, offset: 640)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!204, !205, !376, !204}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !336, file: !335, line: 139, baseType: !347, size: 128, align: 64, offset: 704)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !336, file: !335, line: 140, baseType: !380, size: 64, align: 64, offset: 832)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !335, line: 94, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !336, file: !335, line: 141, baseType: !204, size: 32, align: 32, offset: 896)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !336, file: !335, line: 144, baseType: !384, size: 24, align: 8, offset: 928)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 24, align: 8, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 3)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !336, file: !335, line: 145, baseType: !388, size: 8, align: 8, offset: 952)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 8, align: 8, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 1)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !336, file: !335, line: 148, baseType: !347, size: 128, align: 64, offset: 960)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !336, file: !335, line: 151, baseType: !204, size: 32, align: 32, offset: 1088)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !336, file: !335, line: 152, baseType: !366, size: 64, align: 64, offset: 1152)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_commrec", file: !396, line: 40, baseType: !397)
!396 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/commrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!397 = !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 36, size: 192, align: 32, elements: !398)
!398 = !{!399, !400, !401, !402, !403, !404}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !397, file: !396, line: 37, baseType: !204, size: 32, align: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !397, file: !396, line: 37, baseType: !204, size: 32, align: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !397, file: !396, line: 38, baseType: !204, size: 32, align: 32, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !397, file: !396, line: 38, baseType: !204, size: 32, align: 32, offset: 96)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "threadid", scope: !397, file: !396, line: 39, baseType: !204, size: 32, align: 32, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !397, file: !396, line: 39, baseType: !204, size: 32, align: 32, offset: 160)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !407, line: 87, baseType: !217)
!407 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 96, align: 32, elements: !385)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grpopts", file: !412, line: 53, baseType: !413)
!412 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!413 = !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 42, size: 512, align: 64, elements: !414)
!414 = !{!415, !416, !417, !418, !419, !420, !421, !422, !425, !429}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ngtc", scope: !413, file: !412, line: 43, baseType: !204, size: 32, align: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ngacc", scope: !413, file: !412, line: 44, baseType: !204, size: 32, align: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ngfrz", scope: !413, file: !412, line: 45, baseType: !204, size: 32, align: 32, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ngener", scope: !413, file: !412, line: 46, baseType: !204, size: 32, align: 32, offset: 96)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "nrdf", scope: !413, file: !412, line: 47, baseType: !405, size: 64, align: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ref_t", scope: !413, file: !412, line: 48, baseType: !405, size: 64, align: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tau_t", scope: !413, file: !412, line: 49, baseType: !405, size: 64, align: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !413, file: !412, line: 50, baseType: !423, size: 64, align: 64, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !407, line: 101, baseType: !409)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "nFreeze", scope: !413, file: !412, line: 51, baseType: !426, size: 64, align: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "ivec", file: !407, line: 107, baseType: !428)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 96, align: 32, elements: !385)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "eg_excl", scope: !413, file: !412, line: 52, baseType: !430, size: 64, align: 64, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_groups", file: !186, line: 72, baseType: !433)
!433 = !DICompositeType(tag: DW_TAG_structure_type, file: !186, line: 67, size: 768, align: 64, elements: !434)
!434 = !{!435, !444, !457, !470}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "estat", scope: !433, file: !186, line: 68, baseType: !436, size: 512, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grp_ener", file: !186, line: 50, baseType: !437)
!437 = !DICompositeType(tag: DW_TAG_structure_type, file: !186, line: 46, size: 512, align: 64, elements: !438)
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "nn", scope: !437, file: !186, line: 47, baseType: !204, size: 32, align: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ee", scope: !437, file: !186, line: 48, baseType: !441, size: 448, align: 64, offset: 64)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 448, align: 64, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 7)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tcstat", scope: !433, file: !186, line: 69, baseType: !445, size: 64, align: 64, offset: 512)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grp_tcstat", file: !186, line: 44, baseType: !447)
!447 = !DICompositeType(tag: DW_TAG_structure_type, file: !186, line: 38, size: 416, align: 32, elements: !448)
!448 = !{!449, !450, !451, !455, !456}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "T", scope: !447, file: !186, line: 39, baseType: !406, size: 32, align: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !447, file: !186, line: 40, baseType: !406, size: 32, align: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ekin", scope: !447, file: !186, line: 41, baseType: !452, size: 288, align: 32, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "tensor", file: !407, line: 105, baseType: !453)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 288, align: 32, elements: !454)
!454 = !{!386, !386}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "xi", scope: !447, file: !186, line: 42, baseType: !406, size: 32, align: 32, offset: 352)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !447, file: !186, line: 43, baseType: !406, size: 32, align: 32, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "grpstat", scope: !433, file: !186, line: 70, baseType: !458, size: 64, align: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grp_acc", file: !186, line: 59, baseType: !460)
!460 = !DICompositeType(tag: DW_TAG_structure_type, file: !186, line: 52, size: 448, align: 64, elements: !461)
!461 = !{!462, !463, !466, !467, !468, !469}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nat", scope: !460, file: !186, line: 53, baseType: !204, size: 32, align: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "aid", scope: !460, file: !186, line: 54, baseType: !464, size: 64, align: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !407, line: 73, baseType: !204)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "M", scope: !460, file: !186, line: 55, baseType: !406, size: 32, align: 32, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !460, file: !186, line: 56, baseType: !424, size: 96, align: 32, offset: 160)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "uold", scope: !460, file: !186, line: 57, baseType: !424, size: 96, align: 32, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ut", scope: !460, file: !186, line: 58, baseType: !424, size: 96, align: 32, offset: 352)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "cosacc", scope: !433, file: !186, line: 71, baseType: !471, size: 96, align: 32, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_cos_acc", file: !186, line: 65, baseType: !472)
!472 = !DICompositeType(tag: DW_TAG_structure_type, file: !186, line: 61, size: 96, align: 32, elements: !473)
!473 = !{!474, !475, !476}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "cos_accel", scope: !472, file: !186, line: 62, baseType: !406, size: 32, align: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mvcos", scope: !472, file: !186, line: 63, baseType: !406, size: 32, align: 32, offset: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vcos", scope: !472, file: !186, line: 64, baseType: !406, size: 32, align: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nrnb", file: !52, line: 95, baseType: !479)
!479 = !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 93, size: 8256, align: 64, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !479, file: !52, line: 94, baseType: !482, size: 8256, align: 64)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 8256, align: 64, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 129)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_vcm", file: !487, line: 56, baseType: !488)
!487 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vcm.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!488 = !DICompositeType(tag: DW_TAG_structure_type, file: !487, line: 44, size: 640, align: 64, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !495, !496, !497, !499, !500, !502}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !488, file: !487, line: 45, baseType: !204, size: 32, align: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !488, file: !487, line: 46, baseType: !204, size: 32, align: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "group_p", scope: !488, file: !487, line: 47, baseType: !423, size: 64, align: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "group_v", scope: !488, file: !487, line: 48, baseType: !423, size: 64, align: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "group_x", scope: !488, file: !487, line: 49, baseType: !423, size: 64, align: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "group_j", scope: !488, file: !487, line: 50, baseType: !423, size: 64, align: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "group_w", scope: !488, file: !487, line: 51, baseType: !423, size: 64, align: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "group_i", scope: !488, file: !487, line: 52, baseType: !498, size: 64, align: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "group_mass", scope: !488, file: !487, line: 53, baseType: !405, size: 64, align: 64, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "group_name", scope: !488, file: !487, line: 54, baseType: !501, size: 64, align: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "group_id", scope: !488, file: !487, line: 55, baseType: !503, size: 64, align: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !531, !533}
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !330, file: !1, line: 59, type: !333)
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 2, scope: !330, file: !1, line: 60, type: !394)
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ener", arg: 3, scope: !330, file: !1, line: 60, type: !405)
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fvir", arg: 4, scope: !330, file: !1, line: 61, type: !408)
!509 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "svir", arg: 5, scope: !330, file: !1, line: 61, type: !408)
!510 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "opts", arg: 6, scope: !330, file: !1, line: 62, type: !410)
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grps", arg: 7, scope: !330, file: !1, line: 62, type: !431)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mynrnb", arg: 8, scope: !330, file: !1, line: 63, type: !477)
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrnb", arg: 9, scope: !330, file: !1, line: 63, type: !477)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vcm", arg: 10, scope: !330, file: !1, line: 64, type: !485)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "terminate", arg: 11, scope: !330, file: !1, line: 64, type: !405)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iterminate", scope: !330, file: !1, line: 68, type: !204)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "imu", scope: !330, file: !1, line: 68, type: !204)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ie", scope: !330, file: !1, line: 68, type: !204)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ifv", scope: !330, file: !1, line: 68, type: !204)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "isv", scope: !330, file: !1, line: 68, type: !204)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "icm", scope: !330, file: !1, line: 68, type: !204)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "imass", scope: !330, file: !1, line: 68, type: !204)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ica", scope: !330, file: !1, line: 68, type: !204)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "icj", scope: !330, file: !1, line: 69, type: !204)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ici", scope: !330, file: !1, line: 69, type: !204)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "icx", scope: !330, file: !1, line: 69, type: !204)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !330, file: !1, line: 70, type: !528)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 8192, align: 32, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 256)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inn", scope: !330, file: !1, line: 71, type: !532)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 224, align: 32, elements: !442)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !330, file: !1, line: 72, type: !204)
!534 = !DISubprogram(name: "do_per_step", scope: !1, file: !1, line: 156, type: !535, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32)* @do_per_step, variables: !537)
!535 = !DISubroutineType(types: !536)
!536 = !{!204, !204, !204}
!537 = !{!538, !539}
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 1, scope: !534, file: !1, line: 156, type: !204)
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nstep", arg: 2, scope: !534, file: !1, line: 156, type: !204)
!540 = !DISubprogram(name: "write_traj", scope: !1, file: !1, line: 199, type: !541, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, %struct.t_commrec*, i8*, %struct.t_nsborder*, i32, float, float, %struct.t_nrnb*, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*)* @write_traj, variables: !559)
!541 = !DISubroutineType(types: !542)
!542 = !{!204, !333, !394, !360, !543, !204, !406, !406, !477, !204, !423, !423, !423, !408}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nsborder", file: !545, line: 59, baseType: !546)
!545 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!546 = !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 36, size: 32992, align: 32, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !546, file: !545, line: 37, baseType: !204, size: 32, align: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !546, file: !545, line: 38, baseType: !204, size: 32, align: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "cgtotal", scope: !546, file: !545, line: 39, baseType: !204, size: 32, align: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "natoms", scope: !546, file: !545, line: 40, baseType: !204, size: 32, align: 32, offset: 96)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nstDlb", scope: !546, file: !545, line: 41, baseType: !204, size: 32, align: 32, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !546, file: !545, line: 43, baseType: !204, size: 32, align: 32, offset: 160)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "bshift", scope: !546, file: !545, line: 43, baseType: !204, size: 32, align: 32, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "homenr", scope: !546, file: !545, line: 50, baseType: !528, size: 8192, align: 32, offset: 224)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !546, file: !545, line: 51, baseType: !528, size: 8192, align: 32, offset: 8416)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "cgload", scope: !546, file: !545, line: 52, baseType: !528, size: 8192, align: 32, offset: 16608)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "workload", scope: !546, file: !545, line: 55, baseType: !528, size: 8192, align: 32, offset: 24800)
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !540, file: !1, line: 199, type: !333)
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 2, scope: !540, file: !1, line: 199, type: !394)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "traj", arg: 3, scope: !540, file: !1, line: 200, type: !360)
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsb", arg: 4, scope: !540, file: !1, line: 200, type: !543)
!564 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 5, scope: !540, file: !1, line: 201, type: !204)
!565 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 6, scope: !540, file: !1, line: 201, type: !406)
!566 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lambda", arg: 7, scope: !540, file: !1, line: 201, type: !406)
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrnb", arg: 8, scope: !540, file: !1, line: 201, type: !477)
!568 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 9, scope: !540, file: !1, line: 202, type: !204)
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xx", arg: 10, scope: !540, file: !1, line: 202, type: !423)
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vv", arg: 11, scope: !540, file: !1, line: 202, type: !423)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ff", arg: 12, scope: !540, file: !1, line: 202, type: !423)
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 13, scope: !540, file: !1, line: 202, type: !408)
!573 = !DISubprogram(name: "write_xtc_traj", scope: !1, file: !1, line: 229, type: !574, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_commrec*, i8*, %struct.t_nsborder*, %struct.t_mdatoms*, i32, float, [3 x float]*, [3 x float]*, float)* @write_xtc_traj, variables: !604)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !333, !394, !360, !543, !576, !204, !406, !423, !408, !406}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_mdatoms", file: !578, line: 51, baseType: !579)
!578 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/mdatom.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!579 = !DICompositeType(tag: DW_TAG_structure_type, file: !578, line: 40, size: 1408, align: 64, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "tmass", scope: !579, file: !578, line: 41, baseType: !406, size: 32, align: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !579, file: !578, line: 42, baseType: !204, size: 32, align: 32, offset: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "massA", scope: !579, file: !578, line: 43, baseType: !405, size: 64, align: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "massB", scope: !579, file: !578, line: 43, baseType: !405, size: 64, align: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "massT", scope: !579, file: !578, line: 43, baseType: !405, size: 64, align: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "invmass", scope: !579, file: !578, line: 43, baseType: !405, size: 64, align: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "chargeA", scope: !579, file: !578, line: 44, baseType: !405, size: 64, align: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "chargeB", scope: !579, file: !578, line: 44, baseType: !405, size: 64, align: 64, offset: 384)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "chargeT", scope: !579, file: !578, line: 44, baseType: !405, size: 64, align: 64, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bPerturbed", scope: !579, file: !578, line: 45, baseType: !430, size: 64, align: 64, offset: 512)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !579, file: !578, line: 46, baseType: !430, size: 64, align: 64, offset: 576)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "typeA", scope: !579, file: !578, line: 47, baseType: !430, size: 64, align: 64, offset: 640)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !579, file: !578, line: 47, baseType: !430, size: 64, align: 64, offset: 704)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !579, file: !578, line: 48, baseType: !503, size: 64, align: 64, offset: 768)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cTC", scope: !579, file: !578, line: 49, baseType: !503, size: 64, align: 64, offset: 832)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "cENER", scope: !579, file: !578, line: 49, baseType: !503, size: 64, align: 64, offset: 896)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "cACC", scope: !579, file: !578, line: 49, baseType: !503, size: 64, align: 64, offset: 960)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "cFREEZE", scope: !579, file: !578, line: 49, baseType: !503, size: 64, align: 64, offset: 1024)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "cXTC", scope: !579, file: !578, line: 49, baseType: !503, size: 64, align: 64, offset: 1088)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cVCM", scope: !579, file: !578, line: 49, baseType: !503, size: 64, align: 64, offset: 1152)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "cU1", scope: !579, file: !578, line: 50, baseType: !503, size: 64, align: 64, offset: 1216)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "cU2", scope: !579, file: !578, line: 50, baseType: !503, size: 64, align: 64, offset: 1280)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cORF", scope: !579, file: !578, line: 50, baseType: !503, size: 64, align: 64, offset: 1344)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !573, file: !1, line: 229, type: !333)
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 2, scope: !573, file: !1, line: 229, type: !394)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xtc_traj", arg: 3, scope: !573, file: !1, line: 230, type: !360)
!608 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsb", arg: 4, scope: !573, file: !1, line: 230, type: !543)
!609 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "md", arg: 5, scope: !573, file: !1, line: 230, type: !576)
!610 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 6, scope: !573, file: !1, line: 231, type: !204)
!611 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 7, scope: !573, file: !1, line: 231, type: !406)
!612 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xx", arg: 8, scope: !573, file: !1, line: 231, type: !423)
!613 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 9, scope: !573, file: !1, line: 231, type: !408)
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prec", arg: 10, scope: !573, file: !1, line: 231, type: !406)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !573, file: !1, line: 236, type: !204)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !573, file: !1, line: 236, type: !204)
!617 = !DISubprogram(name: "close_xtc_traj", scope: !1, file: !1, line: 278, type: !618, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @close_xtc_traj, variables: !620)
!618 = !DISubroutineType(types: !619)
!619 = !{null}
!620 = !{}
!621 = !DISubprogram(name: "moveit", scope: !1, file: !1, line: 164, type: !622, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, i32, i8*, [3 x float]*, %struct.t_nsborder*)* @moveit, variables: !624)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !333, !204, !204, !360, !423, !543}
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!625 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !621, file: !1, line: 164, type: !333)
!626 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "left", arg: 2, scope: !621, file: !1, line: 165, type: !204)
!627 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "right", arg: 3, scope: !621, file: !1, line: 165, type: !204)
!628 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 4, scope: !621, file: !1, line: 165, type: !360)
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xx", arg: 5, scope: !621, file: !1, line: 165, type: !423)
!630 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsb", arg: 6, scope: !621, file: !1, line: 165, type: !543)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !621, file: !1, line: 167, type: !423)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !621, file: !1, line: 168, type: !204)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !621, file: !1, line: 168, type: !204)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bP", scope: !621, file: !1, line: 168, type: !204)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !621, file: !1, line: 168, type: !204)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "homenr", scope: !621, file: !1, line: 168, type: !204)
!637 = !DISubprogram(name: "copy_rvec", scope: !638, file: !638, line: 270, type: !639, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, variables: !643)
!638 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!639 = !DISubroutineType(types: !640)
!640 = !{null, !641, !405}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, align: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!643 = !{!644, !645}
!644 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !637, file: !638, line: 270, type: !641)
!645 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !637, file: !638, line: 270, type: !405)
!646 = !{!647, !656, !657, !658, !659, !660, !661}
!647 = !DIGlobalVariable(name: "rb", scope: !330, file: !1, line: 66, type: !648, isLocal: true, isDefinition: true, variable: %struct.t_bin** @global_stat.rb)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64, align: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_bin", file: !650, line: 49, baseType: !651)
!650 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rbin.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!651 = !DICompositeType(tag: DW_TAG_structure_type, file: !650, line: 45, size: 128, align: 64, elements: !652)
!652 = !{!653, !654, !655}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "nreal", scope: !651, file: !650, line: 46, baseType: !204, size: 32, align: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "maxreal", scope: !651, file: !650, line: 47, baseType: !204, size: 32, align: 32, offset: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rbuf", scope: !651, file: !650, line: 48, baseType: !307, size: 64, align: 64, offset: 64)
!656 = !DIGlobalVariable(name: "itc", scope: !330, file: !1, line: 67, type: !430, isLocal: true, isDefinition: true, variable: i32** @global_stat.itc)
!657 = !DIGlobalVariable(name: "fp", scope: !540, file: !1, line: 204, type: !204, isLocal: true, isDefinition: true, variable: i32* @write_traj.fp)
!658 = !DIGlobalVariable(name: "bFirst", scope: !573, file: !1, line: 233, type: !204, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariable(name: "x_sel", scope: !573, file: !1, line: 234, type: !423, isLocal: true, isDefinition: true, variable: [3 x float]** @write_xtc_traj.x_sel)
!660 = !DIGlobalVariable(name: "natoms", scope: !573, file: !1, line: 235, type: !204, isLocal: true, isDefinition: true, variable: i32* @write_xtc_traj.natoms)
!661 = !DIGlobalVariable(name: "xd", scope: !0, file: !1, line: 227, type: !204, isLocal: true, isDefinition: true, variable: i32* @xd)
!662 = !{i32 2, !"Dwarf Version", i32 2}
!663 = !{i32 2, !"Debug Info Version", i32 700000003}
!664 = !{i32 1, !"PIC Level", i32 2}
!665 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!666 = !DIExpression()
!667 = !DILocation(line: 114, column: 15, scope: !207)
!668 = !DILocation(line: 116, column: 20, scope: !207)
!669 = !DILocation(line: 116, column: 12, scope: !207)
!670 = !DILocation(line: 116, column: 57, scope: !207)
!671 = !DILocation(line: 116, column: 45, scope: !207)
!672 = !DILocation(line: 116, column: 5, scope: !207)
!673 = !DILocation(line: 204, column: 53, scope: !213)
!674 = !DILocation(line: 205, column: 16, scope: !213)
!675 = !DILocation(line: 205, column: 23, scope: !213)
!676 = !DILocation(line: 205, column: 26, scope: !213)
!677 = !DILocation(line: 205, column: 47, scope: !213)
!678 = !DILocation(line: 205, column: 5, scope: !213)
!679 = !DILocation(line: 207, column: 54, scope: !220)
!680 = !DILocation(line: 208, column: 16, scope: !220)
!681 = !DILocation(line: 208, column: 23, scope: !220)
!682 = !DILocation(line: 208, column: 26, scope: !220)
!683 = !DILocation(line: 208, column: 46, scope: !220)
!684 = !DILocation(line: 208, column: 5, scope: !220)
!685 = !DILocation(line: 210, column: 59, scope: !226)
!686 = !DILocation(line: 211, column: 16, scope: !226)
!687 = !DILocation(line: 211, column: 23, scope: !226)
!688 = !DILocation(line: 211, column: 26, scope: !226)
!689 = !DILocation(line: 211, column: 47, scope: !226)
!690 = !DILocation(line: 211, column: 5, scope: !226)
!691 = !DILocation(line: 213, column: 50, scope: !232)
!692 = !DILocation(line: 214, column: 12, scope: !232)
!693 = !DILocation(line: 214, column: 33, scope: !232)
!694 = !DILocation(line: 214, column: 5, scope: !232)
!695 = !DILocation(line: 216, column: 51, scope: !235)
!696 = !DILocation(line: 217, column: 12, scope: !235)
!697 = !DILocation(line: 217, column: 32, scope: !235)
!698 = !DILocation(line: 217, column: 5, scope: !235)
!699 = !DILocation(line: 219, column: 56, scope: !238)
!700 = !DILocation(line: 220, column: 12, scope: !238)
!701 = !DILocation(line: 220, column: 33, scope: !238)
!702 = !DILocation(line: 220, column: 5, scope: !238)
!703 = !DILocation(line: 222, column: 50, scope: !241)
!704 = !DILocation(line: 223, column: 16, scope: !241)
!705 = !DILocation(line: 223, column: 5, scope: !241)
!706 = !DILocation(line: 225, column: 51, scope: !244)
!707 = !DILocation(line: 226, column: 16, scope: !244)
!708 = !DILocation(line: 226, column: 5, scope: !244)
!709 = !DILocation(line: 228, column: 56, scope: !247)
!710 = !DILocation(line: 229, column: 16, scope: !247)
!711 = !DILocation(line: 229, column: 5, scope: !247)
!712 = !DILocation(line: 231, column: 52, scope: !250)
!713 = !DILocation(line: 232, column: 44, scope: !250)
!714 = !DILocation(line: 233, column: 13, scope: !250)
!715 = !DILocation(line: 234, column: 26, scope: !250)
!716 = !DILocation(line: 234, column: 5, scope: !250)
!717 = !DILocation(line: 236, column: 53, scope: !259)
!718 = !DILocation(line: 237, column: 51, scope: !259)
!719 = !DILocation(line: 238, column: 13, scope: !259)
!720 = !DILocation(line: 239, column: 26, scope: !259)
!721 = !DILocation(line: 239, column: 12, scope: !259)
!722 = !DILocation(line: 239, column: 5, scope: !259)
!723 = !DILocation(line: 242, column: 58, scope: !268)
!724 = !DILocation(line: 246, column: 7, scope: !268)
!725 = !DILocation(line: 248, column: 26, scope: !268)
!726 = !DILocation(line: 248, column: 33, scope: !268)
!727 = !DILocation(line: 248, column: 5, scope: !268)
!728 = !DILocation(line: 257, column: 53, scope: !281)
!729 = !DILocation(line: 204, column: 53, scope: !213, inlinedAt: !730)
!730 = distinct !DILocation(line: 258, column: 12, scope: !281)
!731 = !DILocation(line: 205, column: 16, scope: !213, inlinedAt: !730)
!732 = !DILocation(line: 205, column: 47, scope: !213, inlinedAt: !730)
!733 = !DILocation(line: 205, column: 23, scope: !213, inlinedAt: !730)
!734 = !DILocation(line: 258, column: 60, scope: !281)
!735 = !DILocation(line: 258, column: 36, scope: !281)
!736 = !DILocation(line: 258, column: 5, scope: !281)
!737 = !DILocation(line: 260, column: 54, scope: !284)
!738 = !DILocation(line: 207, column: 54, scope: !220, inlinedAt: !739)
!739 = distinct !DILocation(line: 261, column: 12, scope: !284)
!740 = !DILocation(line: 208, column: 16, scope: !220, inlinedAt: !739)
!741 = !DILocation(line: 208, column: 46, scope: !220, inlinedAt: !739)
!742 = !DILocation(line: 208, column: 23, scope: !220, inlinedAt: !739)
!743 = !DILocation(line: 261, column: 59, scope: !284)
!744 = !DILocation(line: 261, column: 36, scope: !284)
!745 = !DILocation(line: 261, column: 5, scope: !284)
!746 = !DILocation(line: 263, column: 59, scope: !287)
!747 = !DILocation(line: 210, column: 59, scope: !226, inlinedAt: !748)
!748 = distinct !DILocation(line: 264, column: 12, scope: !287)
!749 = !DILocation(line: 211, column: 16, scope: !226, inlinedAt: !748)
!750 = !DILocation(line: 211, column: 47, scope: !226, inlinedAt: !748)
!751 = !DILocation(line: 211, column: 23, scope: !226, inlinedAt: !748)
!752 = !DILocation(line: 264, column: 60, scope: !287)
!753 = !DILocation(line: 264, column: 36, scope: !287)
!754 = !DILocation(line: 264, column: 5, scope: !287)
!755 = !DILocation(line: 642, column: 45, scope: !290)
!756 = !DILocation(line: 642, column: 57, scope: !290)
!757 = !DILocation(line: 642, column: 72, scope: !290)
!758 = !DILocation(line: 643, column: 27, scope: !290)
!759 = !DILocation(line: 643, column: 37, scope: !290)
!760 = !DILocation(line: 644, column: 23, scope: !290)
!761 = !DILocation(line: 644, column: 13, scope: !290)
!762 = !{!763, !763, i64 0}
!763 = !{!"float", !764, i64 0}
!764 = !{!"omnipotent char", !765, i64 0}
!765 = !{!"Simple C/C++ TBAA"}
!766 = !DILocation(line: 644, column: 51, scope: !290)
!767 = !DILocation(line: 644, column: 41, scope: !290)
!768 = !DILocation(line: 645, column: 1, scope: !290)
!769 = !DILocation(line: 647, column: 45, scope: !304)
!770 = !DILocation(line: 647, column: 58, scope: !304)
!771 = !DILocation(line: 647, column: 74, scope: !304)
!772 = !DILocation(line: 648, column: 28, scope: !304)
!773 = !DILocation(line: 648, column: 38, scope: !304)
!774 = !DIExpression(DW_OP_bit_piece, 0, 64)
!775 = !DIExpression(DW_OP_bit_piece, 64, 64)
!776 = !DILocation(line: 649, column: 13, scope: !304)
!777 = !{!778, !778, i64 0}
!778 = !{!"double", !764, i64 0}
!779 = !DILocation(line: 649, column: 41, scope: !304)
!780 = !DILocation(line: 650, column: 1, scope: !304)
!781 = !DILocation(line: 652, column: 47, scope: !318)
!782 = !DILocation(line: 652, column: 59, scope: !318)
!783 = !DILocation(line: 652, column: 74, scope: !318)
!784 = !DILocation(line: 653, column: 27, scope: !318)
!785 = !DILocation(line: 653, column: 37, scope: !318)
!786 = !DILocation(line: 654, column: 23, scope: !318)
!787 = !DILocation(line: 654, column: 13, scope: !318)
!788 = !DILocation(line: 654, column: 51, scope: !318)
!789 = !DILocation(line: 654, column: 41, scope: !318)
!790 = !DILocation(line: 655, column: 1, scope: !318)
!791 = !DILocation(line: 657, column: 47, scope: !324)
!792 = !DILocation(line: 657, column: 60, scope: !324)
!793 = !DILocation(line: 657, column: 76, scope: !324)
!794 = !DILocation(line: 658, column: 28, scope: !324)
!795 = !DILocation(line: 658, column: 38, scope: !324)
!796 = !DILocation(line: 659, column: 13, scope: !324)
!797 = !DILocation(line: 659, column: 41, scope: !324)
!798 = !DILocation(line: 660, column: 1, scope: !324)
!799 = !DILocation(line: 59, column: 24, scope: !330)
!800 = !DILocation(line: 60, column: 15, scope: !330)
!801 = !DILocation(line: 60, column: 23, scope: !330)
!802 = !DILocation(line: 61, column: 11, scope: !330)
!803 = !DILocation(line: 61, column: 23, scope: !330)
!804 = !DILocation(line: 62, column: 15, scope: !330)
!805 = !DILocation(line: 62, column: 30, scope: !330)
!806 = !DILocation(line: 63, column: 12, scope: !330)
!807 = !DILocation(line: 63, column: 26, scope: !330)
!808 = !DILocation(line: 64, column: 11, scope: !330)
!809 = !DILocation(line: 64, column: 21, scope: !330)
!810 = !DILocation(line: 69, column: 10, scope: !330)
!811 = !DILocation(line: 69, column: 17, scope: !330)
!812 = !DILocation(line: 69, column: 24, scope: !330)
!813 = !DILocation(line: 70, column: 3, scope: !330)
!814 = !DILocation(line: 70, column: 10, scope: !330)
!815 = !DILocation(line: 71, column: 10, scope: !330)
!816 = !DILocation(line: 74, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !330, file: !1, line: 74, column: 7)
!818 = !{!819, !819, i64 0}
!819 = !{!"any pointer", !764, i64 0}
!820 = !DILocation(line: 74, column: 9, scope: !817)
!821 = !DILocation(line: 74, column: 7, scope: !330)
!822 = !DILocation(line: 75, column: 8, scope: !823)
!823 = distinct !DILexicalBlock(scope: !817, file: !1, line: 74, column: 17)
!824 = !DILocation(line: 75, column: 7, scope: !823)
!825 = !DILocation(line: 76, column: 5, scope: !823)
!826 = !{!827, !828, i64 0}
!827 = !{!"", !828, i64 0, !828, i64 4, !828, i64 8, !828, i64 12, !819, i64 16, !819, i64 24, !819, i64 32, !819, i64 40, !819, i64 48, !819, i64 56}
!828 = !{!"int", !764, i64 0}
!829 = !DILocation(line: 77, column: 3, scope: !823)
!830 = !DILocation(line: 79, column: 5, scope: !817)
!831 = !DILocation(line: 82, column: 19, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !1, line: 82, column: 3)
!833 = distinct !DILexicalBlock(scope: !330, file: !1, line: 82, column: 3)
!834 = !{!835, !828, i64 4}
!835 = !{!"", !828, i64 0, !828, i64 4, !828, i64 8, !828, i64 12, !828, i64 16, !828, i64 20}
!836 = !DILocation(line: 82, column: 14, scope: !832)
!837 = !DILocation(line: 82, column: 3, scope: !833)
!838 = !DILocation(line: 83, column: 17, scope: !832)
!839 = !DILocation(line: 83, column: 5, scope: !832)
!840 = !DILocation(line: 84, column: 22, scope: !330)
!841 = !{!835, !828, i64 0}
!842 = !DILocation(line: 84, column: 13, scope: !330)
!843 = !DILocation(line: 84, column: 3, scope: !330)
!844 = !DILocation(line: 89, column: 3, scope: !330)
!845 = !DILocation(line: 90, column: 22, scope: !330)
!846 = !DILocation(line: 90, column: 9, scope: !330)
!847 = !DILocation(line: 68, column: 25, scope: !330)
!848 = !DILocation(line: 91, column: 3, scope: !330)
!849 = !DILocation(line: 92, column: 22, scope: !330)
!850 = !DILocation(line: 92, column: 33, scope: !330)
!851 = !DILocation(line: 92, column: 9, scope: !330)
!852 = !DILocation(line: 68, column: 28, scope: !330)
!853 = !DILocation(line: 93, column: 3, scope: !330)
!854 = !DILocation(line: 94, column: 22, scope: !330)
!855 = !DILocation(line: 94, column: 33, scope: !330)
!856 = !DILocation(line: 94, column: 9, scope: !330)
!857 = !DILocation(line: 68, column: 32, scope: !330)
!858 = !DILocation(line: 95, column: 3, scope: !330)
!859 = !DILocation(line: 72, column: 10, scope: !330)
!860 = !DILocation(line: 96, column: 19, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !1, line: 96, column: 3)
!862 = distinct !DILexicalBlock(scope: !330, file: !1, line: 96, column: 3)
!863 = !DILocation(line: 96, column: 14, scope: !861)
!864 = !DILocation(line: 96, column: 3, scope: !862)
!865 = !DILocation(line: 97, column: 26, scope: !861)
!866 = !DILocation(line: 97, column: 35, scope: !861)
!867 = !DILocation(line: 97, column: 13, scope: !861)
!868 = !DILocation(line: 97, column: 5, scope: !861)
!869 = !DILocation(line: 97, column: 11, scope: !861)
!870 = !{!828, !828, i64 0}
!871 = !DILocation(line: 98, column: 3, scope: !330)
!872 = !DILocation(line: 99, column: 21, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !1, line: 99, column: 3)
!874 = distinct !DILexicalBlock(scope: !330, file: !1, line: 99, column: 3)
!875 = !DILocation(line: 99, column: 14, scope: !873)
!876 = !DILocation(line: 99, column: 3, scope: !874)
!877 = !DILocation(line: 100, column: 42, scope: !873)
!878 = !DILocation(line: 100, column: 25, scope: !873)
!879 = !{!880, !819, i64 64}
!880 = !{!"", !881, i64 0, !819, i64 64, !819, i64 72, !882, i64 80}
!881 = !{!"", !828, i64 0, !764, i64 8}
!882 = !{!"", !763, i64 0, !763, i64 4, !763, i64 8}
!883 = !DILocation(line: 100, column: 36, scope: !873)
!884 = !DILocation(line: 100, column: 12, scope: !873)
!885 = !DILocation(line: 100, column: 5, scope: !873)
!886 = !DILocation(line: 100, column: 11, scope: !873)
!887 = !DILocation(line: 101, column: 3, scope: !330)
!888 = !DILocation(line: 103, column: 40, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !1, line: 102, column: 3)
!890 = distinct !DILexicalBlock(scope: !330, file: !1, line: 102, column: 3)
!891 = !DILocation(line: 102, column: 3, scope: !890)
!892 = !DILocation(line: 103, column: 25, scope: !889)
!893 = !{!880, !828, i64 0}
!894 = !DILocation(line: 103, column: 43, scope: !889)
!895 = !DILocation(line: 103, column: 12, scope: !889)
!896 = !DILocation(line: 103, column: 5, scope: !889)
!897 = !DILocation(line: 103, column: 11, scope: !889)
!898 = !DILocation(line: 104, column: 3, scope: !330)
!899 = !DILocation(line: 105, column: 24, scope: !330)
!900 = !DILocation(line: 105, column: 36, scope: !330)
!901 = !{!902, !828, i64 0}
!902 = !{!"", !828, i64 0, !828, i64 4, !819, i64 8, !819, i64 16, !819, i64 24, !819, i64 32, !819, i64 40, !819, i64 48, !819, i64 56, !819, i64 64, !819, i64 72}
!903 = !DILocation(line: 105, column: 30, scope: !330)
!904 = !DILocation(line: 105, column: 44, scope: !330)
!905 = !{!902, !819, i64 8}
!906 = !DILocation(line: 105, column: 39, scope: !330)
!907 = !DILocation(line: 105, column: 11, scope: !330)
!908 = !DILocation(line: 68, column: 36, scope: !330)
!909 = !DILocation(line: 106, column: 3, scope: !330)
!910 = !DILocation(line: 107, column: 24, scope: !330)
!911 = !DILocation(line: 107, column: 32, scope: !330)
!912 = !DILocation(line: 107, column: 40, scope: !330)
!913 = !{!902, !819, i64 56}
!914 = !DILocation(line: 107, column: 11, scope: !330)
!915 = !DILocation(line: 68, column: 40, scope: !330)
!916 = !DILocation(line: 108, column: 3, scope: !330)
!917 = !DILocation(line: 109, column: 12, scope: !918)
!918 = distinct !DILexicalBlock(scope: !330, file: !1, line: 109, column: 7)
!919 = !{!902, !828, i64 4}
!920 = !DILocation(line: 109, column: 17, scope: !918)
!921 = !DILocation(line: 109, column: 7, scope: !330)
!922 = !DILocation(line: 110, column: 26, scope: !923)
!923 = distinct !DILexicalBlock(scope: !918, file: !1, line: 109, column: 32)
!924 = !DILocation(line: 110, column: 38, scope: !923)
!925 = !DILocation(line: 110, column: 32, scope: !923)
!926 = !DILocation(line: 110, column: 46, scope: !923)
!927 = !{!902, !819, i64 32}
!928 = !DILocation(line: 110, column: 41, scope: !923)
!929 = !DILocation(line: 110, column: 13, scope: !923)
!930 = !DILocation(line: 111, column: 5, scope: !923)
!931 = !DILocation(line: 112, column: 26, scope: !923)
!932 = !DILocation(line: 112, column: 38, scope: !923)
!933 = !DILocation(line: 112, column: 32, scope: !923)
!934 = !DILocation(line: 112, column: 46, scope: !923)
!935 = !{!902, !819, i64 24}
!936 = !DILocation(line: 112, column: 41, scope: !923)
!937 = !DILocation(line: 112, column: 13, scope: !923)
!938 = !DILocation(line: 113, column: 5, scope: !923)
!939 = !DILocation(line: 114, column: 26, scope: !923)
!940 = !DILocation(line: 114, column: 42, scope: !923)
!941 = !DILocation(line: 114, column: 36, scope: !923)
!942 = !DILocation(line: 114, column: 50, scope: !923)
!943 = !{!902, !819, i64 48}
!944 = !DILocation(line: 114, column: 45, scope: !923)
!945 = !DILocation(line: 114, column: 13, scope: !923)
!946 = !DILocation(line: 115, column: 5, scope: !923)
!947 = !DILocation(line: 116, column: 3, scope: !923)
!948 = !DILocation(line: 117, column: 24, scope: !330)
!949 = !DILocation(line: 117, column: 44, scope: !330)
!950 = !DILocation(line: 117, column: 11, scope: !330)
!951 = !DILocation(line: 68, column: 46, scope: !330)
!952 = !DILocation(line: 118, column: 3, scope: !330)
!953 = !DILocation(line: 119, column: 29, scope: !330)
!954 = !DILocation(line: 119, column: 16, scope: !330)
!955 = !DILocation(line: 68, column: 10, scope: !330)
!956 = !DILocation(line: 122, column: 11, scope: !330)
!957 = !DILocation(line: 122, column: 3, scope: !330)
!958 = !DILocation(line: 123, column: 3, scope: !330)
!959 = !DILocation(line: 126, column: 16, scope: !330)
!960 = !DILocation(line: 126, column: 3, scope: !330)
!961 = !DILocation(line: 127, column: 16, scope: !330)
!962 = !DILocation(line: 127, column: 3, scope: !330)
!963 = !DILocation(line: 128, column: 16, scope: !330)
!964 = !DILocation(line: 128, column: 3, scope: !330)
!965 = !DILocation(line: 129, column: 19, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !1, line: 129, column: 3)
!967 = distinct !DILexicalBlock(scope: !330, file: !1, line: 129, column: 3)
!968 = !DILocation(line: 129, column: 14, scope: !966)
!969 = !DILocation(line: 129, column: 3, scope: !967)
!970 = !DILocation(line: 131, column: 21, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !1, line: 131, column: 3)
!972 = distinct !DILexicalBlock(scope: !330, file: !1, line: 131, column: 3)
!973 = !DILocation(line: 131, column: 14, scope: !971)
!974 = !DILocation(line: 131, column: 3, scope: !972)
!975 = !DILocation(line: 132, column: 42, scope: !971)
!976 = !DILocation(line: 130, column: 18, scope: !966)
!977 = !DILocation(line: 130, column: 21, scope: !966)
!978 = !DILocation(line: 130, column: 33, scope: !966)
!979 = !DILocation(line: 130, column: 5, scope: !966)
!980 = !DILocation(line: 134, column: 18, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !1, line: 133, column: 3)
!982 = distinct !DILexicalBlock(scope: !330, file: !1, line: 133, column: 3)
!983 = !DILocation(line: 133, column: 3, scope: !982)
!984 = !DILocation(line: 132, column: 18, scope: !971)
!985 = !DILocation(line: 132, column: 21, scope: !971)
!986 = !DILocation(line: 132, column: 36, scope: !971)
!987 = !DILocation(line: 132, column: 5, scope: !971)
!988 = !DILocation(line: 134, column: 21, scope: !981)
!989 = !DILocation(line: 134, column: 40, scope: !981)
!990 = !DILocation(line: 134, column: 43, scope: !981)
!991 = !DILocation(line: 134, column: 5, scope: !981)
!992 = !DILocation(line: 135, column: 32, scope: !330)
!993 = !DILocation(line: 135, column: 26, scope: !330)
!994 = !DILocation(line: 135, column: 40, scope: !330)
!995 = !DILocation(line: 135, column: 35, scope: !330)
!996 = !DILocation(line: 135, column: 3, scope: !330)
!997 = !DILocation(line: 136, column: 3, scope: !330)
!998 = !DILocation(line: 137, column: 16, scope: !330)
!999 = !DILocation(line: 137, column: 30, scope: !330)
!1000 = !DILocation(line: 137, column: 38, scope: !330)
!1001 = !DILocation(line: 137, column: 3, scope: !330)
!1002 = !DILocation(line: 138, column: 3, scope: !330)
!1003 = !DILocation(line: 139, column: 12, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !330, file: !1, line: 139, column: 7)
!1005 = !DILocation(line: 139, column: 17, scope: !1004)
!1006 = !DILocation(line: 139, column: 7, scope: !330)
!1007 = !DILocation(line: 140, column: 18, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !1, line: 139, column: 32)
!1009 = !DILocation(line: 140, column: 34, scope: !1008)
!1010 = !DILocation(line: 140, column: 28, scope: !1008)
!1011 = !DILocation(line: 140, column: 42, scope: !1008)
!1012 = !DILocation(line: 140, column: 37, scope: !1008)
!1013 = !DILocation(line: 140, column: 5, scope: !1008)
!1014 = !DILocation(line: 141, column: 5, scope: !1008)
!1015 = !DILocation(line: 142, column: 18, scope: !1008)
!1016 = !DILocation(line: 142, column: 34, scope: !1008)
!1017 = !DILocation(line: 142, column: 28, scope: !1008)
!1018 = !DILocation(line: 142, column: 42, scope: !1008)
!1019 = !DILocation(line: 142, column: 37, scope: !1008)
!1020 = !DILocation(line: 142, column: 5, scope: !1008)
!1021 = !DILocation(line: 143, column: 5, scope: !1008)
!1022 = !DILocation(line: 144, column: 18, scope: !1008)
!1023 = !DILocation(line: 144, column: 38, scope: !1008)
!1024 = !DILocation(line: 144, column: 32, scope: !1008)
!1025 = !DILocation(line: 144, column: 46, scope: !1008)
!1026 = !DILocation(line: 144, column: 41, scope: !1008)
!1027 = !DILocation(line: 144, column: 5, scope: !1008)
!1028 = !DILocation(line: 145, column: 5, scope: !1008)
!1029 = !DILocation(line: 146, column: 3, scope: !1008)
!1030 = !DILocation(line: 147, column: 16, scope: !330)
!1031 = !DILocation(line: 147, column: 3, scope: !330)
!1032 = !DILocation(line: 148, column: 3, scope: !330)
!1033 = !DILocation(line: 149, column: 16, scope: !330)
!1034 = !DILocation(line: 149, column: 3, scope: !330)
!1035 = !DILocation(line: 150, column: 3, scope: !330)
!1036 = !DILocation(line: 153, column: 21, scope: !330)
!1037 = !DILocation(line: 153, column: 17, scope: !330)
!1038 = !DILocation(line: 153, column: 3, scope: !330)
!1039 = !DILocation(line: 153, column: 15, scope: !330)
!1040 = !DILocation(line: 154, column: 1, scope: !330)
!1041 = !DILocation(line: 156, column: 21, scope: !534)
!1042 = !DILocation(line: 156, column: 30, scope: !534)
!1043 = !DILocation(line: 158, column: 13, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !534, file: !1, line: 158, column: 7)
!1045 = !DILocation(line: 158, column: 7, scope: !534)
!1046 = !DILocation(line: 159, column: 19, scope: !1044)
!1047 = !DILocation(line: 159, column: 27, scope: !1044)
!1048 = !DILocation(line: 159, column: 5, scope: !1044)
!1049 = !DILocation(line: 162, column: 1, scope: !534)
!1050 = !DILocation(line: 199, column: 22, scope: !540)
!1051 = !DILocation(line: 199, column: 37, scope: !540)
!1052 = !DILocation(line: 200, column: 15, scope: !540)
!1053 = !DILocation(line: 200, column: 32, scope: !540)
!1054 = !DILocation(line: 201, column: 13, scope: !540)
!1055 = !DILocation(line: 201, column: 23, scope: !540)
!1056 = !DILocation(line: 201, column: 30, scope: !540)
!1057 = !DILocation(line: 201, column: 44, scope: !540)
!1058 = !DILocation(line: 202, column: 13, scope: !540)
!1059 = !DILocation(line: 202, column: 26, scope: !540)
!1060 = !DILocation(line: 202, column: 35, scope: !540)
!1061 = !DILocation(line: 202, column: 44, scope: !540)
!1062 = !DILocation(line: 202, column: 54, scope: !540)
!1063 = !DILocation(line: 206, column: 8, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !540, file: !1, line: 206, column: 7)
!1065 = !DILocation(line: 206, column: 11, scope: !1064)
!1066 = !DILocation(line: 206, column: 18, scope: !1064)
!1067 = !DILocation(line: 206, column: 21, scope: !1064)
!1068 = !{!835, !828, i64 16}
!1069 = !DILocation(line: 206, column: 7, scope: !540)
!1070 = !DILocation(line: 210, column: 10, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 206, column: 33)
!1072 = !DILocation(line: 210, column: 8, scope: !1071)
!1073 = !DILocation(line: 211, column: 3, scope: !1071)
!1074 = !DILocation(line: 214, column: 11, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !540, file: !1, line: 214, column: 7)
!1076 = !DILocation(line: 214, column: 18, scope: !1075)
!1077 = !DILocation(line: 214, column: 7, scope: !540)
!1078 = !DILocation(line: 215, column: 5, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 214, column: 23)
!1080 = !{!835, !828, i64 8}
!1081 = !{!835, !828, i64 12}
!1082 = !DILocation(line: 216, column: 5, scope: !1079)
!1083 = !DILocation(line: 217, column: 5, scope: !1079)
!1084 = !DILocation(line: 218, column: 3, scope: !1079)
!1085 = !DILocation(line: 219, column: 8, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !540, file: !1, line: 219, column: 7)
!1087 = !DILocation(line: 219, column: 14, scope: !1086)
!1088 = !DILocation(line: 219, column: 11, scope: !1086)
!1089 = !DILocation(line: 219, column: 20, scope: !1086)
!1090 = !DILocation(line: 219, column: 27, scope: !1086)
!1091 = !DILocation(line: 219, column: 7, scope: !540)
!1092 = !DILocation(line: 220, column: 16, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 219, column: 39)
!1094 = !DILocation(line: 220, column: 5, scope: !1093)
!1095 = !DILocation(line: 221, column: 19, scope: !1093)
!1096 = !DILocation(line: 221, column: 5, scope: !1093)
!1097 = !DILocation(line: 222, column: 3, scope: !1093)
!1098 = !DILocation(line: 223, column: 10, scope: !540)
!1099 = !DILocation(line: 223, column: 3, scope: !540)
!1100 = !DILocation(line: 164, column: 26, scope: !621)
!1101 = !DILocation(line: 165, column: 10, scope: !621)
!1102 = !DILocation(line: 165, column: 19, scope: !621)
!1103 = !DILocation(line: 165, column: 31, scope: !621)
!1104 = !DILocation(line: 165, column: 38, scope: !621)
!1105 = !DILocation(line: 165, column: 55, scope: !621)
!1106 = !DILocation(line: 170, column: 8, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !621, file: !1, line: 170, column: 7)
!1108 = !DILocation(line: 170, column: 7, scope: !621)
!1109 = !DILocation(line: 173, column: 25, scope: !621)
!1110 = !{!1111, !828, i64 0}
!1111 = !{!"", !828, i64 0, !828, i64 4, !828, i64 8, !828, i64 12, !828, i64 16, !828, i64 20, !828, i64 24, !764, i64 28, !764, i64 1052, !764, i64 2076, !764, i64 3100}
!1112 = !DILocation(line: 173, column: 9, scope: !621)
!1113 = !DILocation(line: 168, column: 16, scope: !621)
!1114 = !DILocation(line: 174, column: 10, scope: !621)
!1115 = !DILocation(line: 168, column: 22, scope: !621)
!1116 = !DILocation(line: 179, column: 3, scope: !621)
!1117 = !DILocation(line: 167, column: 10, scope: !621)
!1118 = !DILocation(line: 168, column: 9, scope: !621)
!1119 = !DILocation(line: 180, column: 14, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 180, column: 3)
!1121 = distinct !DILexicalBlock(scope: !621, file: !1, line: 180, column: 3)
!1122 = !DILocation(line: 180, column: 3, scope: !1121)
!1123 = !DILocation(line: 181, column: 23, scope: !1120)
!1124 = !DILocation(line: 181, column: 15, scope: !1120)
!1125 = !DILocation(line: 181, column: 27, scope: !1120)
!1126 = !DILocation(line: 270, column: 41, scope: !637, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 181, column: 5, scope: !1120)
!1128 = !DILocation(line: 270, column: 48, scope: !637, inlinedAt: !1127)
!1129 = !DILocation(line: 272, column: 9, scope: !637, inlinedAt: !1127)
!1130 = !DILocation(line: 272, column: 8, scope: !637, inlinedAt: !1127)
!1131 = !DILocation(line: 273, column: 9, scope: !637, inlinedAt: !1127)
!1132 = !DILocation(line: 273, column: 3, scope: !637, inlinedAt: !1127)
!1133 = !DILocation(line: 273, column: 8, scope: !637, inlinedAt: !1127)
!1134 = !DILocation(line: 274, column: 9, scope: !637, inlinedAt: !1127)
!1135 = !DILocation(line: 274, column: 3, scope: !637, inlinedAt: !1127)
!1136 = !DILocation(line: 274, column: 8, scope: !637, inlinedAt: !1127)
!1137 = !DILocation(line: 183, column: 54, scope: !621)
!1138 = !{!1111, !828, i64 4}
!1139 = !DILocation(line: 183, column: 60, scope: !621)
!1140 = !DILocation(line: 183, column: 3, scope: !621)
!1141 = !DILocation(line: 185, column: 3, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !621, file: !1, line: 185, column: 3)
!1143 = !DILocation(line: 190, column: 15, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 190, column: 9)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 185, column: 29)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 185, column: 3)
!1147 = !DILocation(line: 188, column: 24, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 188, column: 11)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 187, column: 5)
!1150 = distinct !DILexicalBlock(scope: !1145, file: !1, line: 187, column: 5)
!1151 = !DILocation(line: 187, column: 5, scope: !1150)
!1152 = !DILocation(line: 188, column: 16, scope: !1148)
!1153 = !DILocation(line: 188, column: 33, scope: !1148)
!1154 = !DILocation(line: 188, column: 31, scope: !1148)
!1155 = !DILocation(line: 188, column: 11, scope: !1148)
!1156 = !DILocation(line: 188, column: 45, scope: !1148)
!1157 = !DILocation(line: 168, column: 13, scope: !621)
!1158 = !DILocation(line: 188, column: 11, scope: !1149)
!1159 = !DILocation(line: 190, column: 9, scope: !1144)
!1160 = !DILocation(line: 190, column: 12, scope: !1144)
!1161 = !DILocation(line: 193, column: 18, scope: !1144)
!1162 = !DILocation(line: 193, column: 30, scope: !1144)
!1163 = !DILocation(line: 193, column: 42, scope: !1144)
!1164 = !DILocation(line: 194, column: 8, scope: !1144)
!1165 = !DILocation(line: 194, column: 24, scope: !1144)
!1166 = !DILocation(line: 194, column: 40, scope: !1144)
!1167 = !DILocation(line: 191, column: 7, scope: !1144)
!1168 = !DILocation(line: 196, column: 3, scope: !621)
!1169 = !DILocation(line: 197, column: 1, scope: !621)
!1170 = !DILocation(line: 229, column: 27, scope: !573)
!1171 = !DILocation(line: 229, column: 42, scope: !573)
!1172 = !DILocation(line: 230, column: 13, scope: !573)
!1173 = !DILocation(line: 230, column: 34, scope: !573)
!1174 = !DILocation(line: 230, column: 49, scope: !573)
!1175 = !DILocation(line: 231, column: 11, scope: !573)
!1176 = !DILocation(line: 231, column: 21, scope: !573)
!1177 = !DILocation(line: 231, column: 29, scope: !573)
!1178 = !DILocation(line: 231, column: 39, scope: !573)
!1179 = !DILocation(line: 231, column: 48, scope: !573)
!1180 = !DILocation(line: 238, column: 16, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !573, file: !1, line: 238, column: 7)
!1182 = !DILocation(line: 238, column: 19, scope: !1181)
!1183 = !DILocation(line: 238, column: 7, scope: !573)
!1184 = !DILocation(line: 242, column: 10, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 238, column: 31)
!1186 = !DILocation(line: 242, column: 8, scope: !1185)
!1187 = !DILocation(line: 245, column: 11, scope: !1185)
!1188 = !DILocation(line: 236, column: 10, scope: !573)
!1189 = !DILocation(line: 246, column: 21, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !1, line: 246, column: 5)
!1191 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 246, column: 5)
!1192 = !{!1193, !828, i64 4}
!1193 = !{!"", !763, i64 0, !828, i64 4, !819, i64 8, !819, i64 16, !819, i64 24, !819, i64 32, !819, i64 40, !819, i64 48, !819, i64 56, !819, i64 64, !819, i64 72, !819, i64 80, !819, i64 88, !819, i64 96, !819, i64 104, !819, i64 112, !819, i64 120, !819, i64 128, !819, i64 136, !819, i64 144, !819, i64 152, !819, i64 160, !819, i64 168}
!1194 = !DILocation(line: 246, column: 16, scope: !1190)
!1195 = !DILocation(line: 246, column: 5, scope: !1191)
!1196 = !DILocation(line: 247, column: 15, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 247, column: 11)
!1198 = !{!1193, !819, i64 136}
!1199 = !DILocation(line: 247, column: 11, scope: !1197)
!1200 = !{!1201, !1201, i64 0}
!1201 = !{!"short", !764, i64 0}
!1202 = !DILocation(line: 247, column: 23, scope: !1197)
!1203 = !DILocation(line: 247, column: 11, scope: !1190)
!1204 = !DILocation(line: 248, column: 8, scope: !1197)
!1205 = !DILocation(line: 248, column: 2, scope: !1197)
!1206 = !DILocation(line: 249, column: 8, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 249, column: 8)
!1208 = !DILocation(line: 249, column: 8, scope: !1185)
!1209 = !DILocation(line: 250, column: 9, scope: !1207)
!1210 = !DILocation(line: 251, column: 9, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 251, column: 9)
!1212 = !DILocation(line: 251, column: 23, scope: !1211)
!1213 = !DILocation(line: 251, column: 16, scope: !1211)
!1214 = !DILocation(line: 251, column: 9, scope: !1185)
!1215 = !DILocation(line: 252, column: 7, scope: !1211)
!1216 = !DILocation(line: 255, column: 3, scope: !1185)
!1217 = !DILocation(line: 257, column: 11, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !573, file: !1, line: 257, column: 7)
!1219 = !DILocation(line: 257, column: 18, scope: !1218)
!1220 = !DILocation(line: 257, column: 7, scope: !573)
!1221 = !DILocation(line: 258, column: 5, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !1, line: 257, column: 23)
!1223 = !DILocation(line: 259, column: 3, scope: !1222)
!1224 = !DILocation(line: 261, column: 7, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !573, file: !1, line: 261, column: 7)
!1226 = !DILocation(line: 261, column: 12, scope: !1225)
!1227 = !DILocation(line: 261, column: 15, scope: !1225)
!1228 = !DILocation(line: 261, column: 7, scope: !573)
!1229 = !DILocation(line: 262, column: 9, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !1, line: 262, column: 9)
!1231 = distinct !DILexicalBlock(scope: !1225, file: !1, line: 261, column: 27)
!1232 = !DILocation(line: 262, column: 23, scope: !1230)
!1233 = !DILocation(line: 262, column: 16, scope: !1230)
!1234 = !DILocation(line: 262, column: 9, scope: !1231)
!1235 = !DILocation(line: 266, column: 20, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 266, column: 7)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 266, column: 7)
!1238 = distinct !DILexicalBlock(scope: !1230, file: !1, line: 264, column: 10)
!1239 = !DILocation(line: 266, column: 7, scope: !1237)
!1240 = !DILocation(line: 273, column: 40, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1231, file: !1, line: 273, column: 9)
!1242 = !DILocation(line: 267, column: 10, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !1, line: 267, column: 6)
!1244 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 266, column: 35)
!1245 = !DILocation(line: 268, column: 20, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !1, line: 267, column: 24)
!1247 = !DILocation(line: 263, column: 13, scope: !1230)
!1248 = !DILocation(line: 263, column: 7, scope: !1230)
!1249 = !DILocation(line: 267, column: 6, scope: !1243)
!1250 = !DILocation(line: 267, column: 18, scope: !1243)
!1251 = !DILocation(line: 267, column: 6, scope: !1244)
!1252 = !DILocation(line: 268, column: 14, scope: !1246)
!1253 = !DILocation(line: 270, column: 41, scope: !637, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 268, column: 4, scope: !1246)
!1255 = !DILocation(line: 270, column: 48, scope: !637, inlinedAt: !1254)
!1256 = !DILocation(line: 272, column: 9, scope: !637, inlinedAt: !1254)
!1257 = !DILocation(line: 272, column: 8, scope: !637, inlinedAt: !1254)
!1258 = !DILocation(line: 273, column: 9, scope: !637, inlinedAt: !1254)
!1259 = !DILocation(line: 273, column: 3, scope: !637, inlinedAt: !1254)
!1260 = !DILocation(line: 273, column: 8, scope: !637, inlinedAt: !1254)
!1261 = !DILocation(line: 274, column: 9, scope: !637, inlinedAt: !1254)
!1262 = !DILocation(line: 274, column: 3, scope: !637, inlinedAt: !1254)
!1263 = !DILocation(line: 274, column: 8, scope: !637, inlinedAt: !1254)
!1264 = !DILocation(line: 269, column: 5, scope: !1246)
!1265 = !DILocation(line: 236, column: 12, scope: !573)
!1266 = !DILocation(line: 270, column: 2, scope: !1246)
!1267 = !DILocation(line: 273, column: 19, scope: !1241)
!1268 = !DILocation(line: 273, column: 9, scope: !1241)
!1269 = !DILocation(line: 273, column: 52, scope: !1241)
!1270 = !DILocation(line: 273, column: 9, scope: !1231)
!1271 = !DILocation(line: 274, column: 7, scope: !1241)
!1272 = !DILocation(line: 276, column: 1, scope: !573)
!1273 = !DILocation(line: 280, column: 13, scope: !617)
!1274 = !DILocation(line: 280, column: 3, scope: !617)
!1275 = !DILocation(line: 281, column: 1, scope: !617)
