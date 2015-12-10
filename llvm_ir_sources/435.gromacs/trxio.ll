; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/trxio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_trxframe = type { i32, i32, i32, float, float, float, i32, i8*, i32, i32, i32, float, i32, float, i32, %struct.t_atoms*, i32, float, i32, [3 x float]*, i32, [3 x float]*, i32, [3 x float]*, i32, [3 x [3 x float]] }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }
%struct.t_trnheader = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float }

@__frame = internal unnamed_addr global i32 -12345, align 4
@.str = private unnamed_addr constant [41 x i8] c"DEATH HORROR prec (%g) <= 0 in prec2ndec\00", align 1
@.str1 = private unnamed_addr constant [42 x i8] c"Need coordinates to write a %s trajectory\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"vout\00", align 1
@.str3 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/trxio.c\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"fout\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"xout\00", align 1
@.str6 = private unnamed_addr constant [43 x i8] c"Can not write a %s file without atom names\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"frame t= %.3f\00", align 1
@.str8 = private unnamed_addr constant [47 x i8] c"Sorry, write_trxframe_indexed can not write %s\00", align 1
@.str9 = private unnamed_addr constant [39 x i8] c"Sorry, write_trxframe can not write %s\00", align 1
@.str10 = private unnamed_addr constant [32 x i8] c"Sorry, write_trx can only write\00", align 1
@.str11 = private unnamed_addr constant [49 x i8] c"DEATH HORROR in read_next_frame ftp=%s,status=%d\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"fr->x\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"fr->v\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"No XTC!\0A\00", align 1
@.str16 = private unnamed_addr constant [38 x i8] c"Not supported in read_first_frame: %s\00", align 1
@nxframe = internal unnamed_addr global i32 0, align 4
@.str17 = private unnamed_addr constant [7 x i8] c"xframe\00", align 1
@xframe = internal unnamed_addr global %struct.t_trxframe* null, align 8
@.str18 = private unnamed_addr constant [6 x i8] c"fr->f\00", align 1
@tbegin = external global float
@DT = internal global double 0.000000e+00, align 8
@tend = external global float
@.str19 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str20 = private unnamed_addr constant [37 x i8] c"error reading statusfile: x[%d][%d]\0A\00", align 1
@bReadBox = internal unnamed_addr global i32 0, align 4
@.str21 = private unnamed_addr constant [17 x i8] c" '%s', %d atoms\0A\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c" t= \00", align 1
@.str23 = private unnamed_addr constant [52 x i8] c"Number of atoms in pdb frame %d is %d instead of %d\00", align 1
@.str24 = private unnamed_addr constant [15 x i8] c"Skipping frame\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"Reading frame\00", align 1
@.str26 = private unnamed_addr constant [25 x i8] c"\0D%-14s %6d time %8.3f   \00", align 1
@.str27 = private unnamed_addr constant [11 x i8] c"Last frame\00", align 1
@.str29 = private unnamed_addr constant [43 x i8] c"WARNING: Incomplete header: nr %d time %g\0A\00", align 1
@.str30 = private unnamed_addr constant [42 x i8] c"WARNING: Incomplete frame: nr %d time %g\0A\00", align 1
@BOX = internal global [3 x double] zeroinitializer, align 16
@.str31 = private unnamed_addr constant [3 x i8] c"*x\00", align 1
@NATOMS = internal global i32 0, align 4
@.str39 = private unnamed_addr constant [10 x i8] c"\0AChoice: \00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str40 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@eFF = internal unnamed_addr global i32 0, align 4
@.str41 = private unnamed_addr constant [15 x i8] c"%d%lf%lf%lf%lf\00", align 1
@.str43 = private unnamed_addr constant [19 x i8] c"Number of atoms ? \00", align 1
@.str44 = private unnamed_addr constant [27 x i8] c"Time between timeframes ? \00", align 1
@.str45 = private unnamed_addr constant [13 x i8] c"Box X Y Z ? \00", align 1
@.str46 = private unnamed_addr constant [10 x i8] c"%lf%lf%lf\00", align 1
@.str49 = private unnamed_addr constant [29 x i8] c"Reading frames from pdb file\00", align 1
@.str50 = private unnamed_addr constant [29 x i8] c"\0ANo coordinates in pdb file\0A\00", align 1
@str = private unnamed_addr constant [2 x i8] c"\0A\00"
@str51 = private unnamed_addr constant [22 x i8] c"   Select File Format\00"
@str52 = private unnamed_addr constant [28 x i8] c"---------------------------\00"
@str53 = private unnamed_addr constant [12 x i8] c"1. XYZ File\00"
@str54 = private unnamed_addr constant [21 x i8] c"2. XYZ File with Box\00"
@str55 = private unnamed_addr constant [30 x i8] c"3. Gromos-87 Ascii Trajectory\00"
@str56 = private unnamed_addr constant [39 x i8] c"4. Gromos-87 Ascii Trajectory with Box\00"
@str57 = private unnamed_addr constant [20 x i8] c"GROMOS! OH DEAR...\0A\00"
@str58 = private unnamed_addr constant [13 x i8] c"Hellow World\00"

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !134, metadata !651), !dbg !652
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !135, metadata !651), !dbg !653
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !654
  %2 = load i32* %1, align 4, !dbg !656, !tbaa !657
  %3 = add nsw i32 %2, -1, !dbg !656
  store i32 %3, i32* %1, align 4, !dbg !656, !tbaa !657
  %4 = icmp sgt i32 %2, 0, !dbg !666
  br i1 %4, label %._crit_edge, label %5, !dbg !667

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !668
  br label %10, !dbg !667

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !669
  %7 = load i32* %6, align 4, !dbg !669, !tbaa !670
  %8 = icmp sle i32 %2, %7, !dbg !671
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !672
  %or.cond = or i1 %9, %8, !dbg !673
  br i1 %or.cond, label %15, label %10, !dbg !673

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !668
  %11 = trunc i32 %_c to i8, !dbg !674
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !675
  %13 = load i8** %12, align 8, !dbg !676, !tbaa !677
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !676
  store i8* %14, i8** %12, align 8, !dbg !676, !tbaa !677
  store i8 %11, i8* %13, align 1, !dbg !678, !tbaa !679
  br label %17, !dbg !680

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #10, !dbg !681
  br label %17, !dbg !682

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !683
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !141, metadata !651), !dbg !684
  %1 = icmp sgt i32 %__signo, 32, !dbg !685
  br i1 %1, label %5, label %2, !dbg !686

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !687
  %4 = shl i32 1, %3, !dbg !688
  br label %5, !dbg !686

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !686
  ret i32 %6, !dbg !689
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !147, metadata !651), !dbg !690
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !691
  br i1 %1, label %2, label %5, !dbg !692

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #11, !dbg !693
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !694
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !692
  ret i32 %7, !dbg !695
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !153, metadata !651), !dbg !696
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !697
  br i1 %1, label %2, label %5, !dbg !698

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #11, !dbg !699
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !700
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !698
  ret i32 %7, !dbg !701
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !159, metadata !651), !dbg !702
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !703
  br i1 %1, label %2, label %5, !dbg !704

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #11, !dbg !705
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !706
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !704
  ret i32 %7, !dbg !707
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !162, metadata !651), !dbg !708
  %1 = tail call float @llvm.fabs.f32(float %__x) #11, !dbg !709
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !710
  %3 = zext i1 %2 to i32, !dbg !710
  ret i32 %3, !dbg !711
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !165, metadata !651), !dbg !712
  %1 = tail call double @llvm.fabs.f64(double %__x) #11, !dbg !713
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !714
  %3 = zext i1 %2 to i32, !dbg !714
  ret i32 %3, !dbg !715
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !168, metadata !651), !dbg !716
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #11, !dbg !717
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !718
  %3 = zext i1 %2 to i32, !dbg !718
  ret i32 %3, !dbg !719
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !171, metadata !651), !dbg !720
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !721
  %2 = zext i1 %1 to i32, !dbg !721
  ret i32 %2, !dbg !722
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !174, metadata !651), !dbg !723
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !724
  %2 = zext i1 %1 to i32, !dbg !724
  ret i32 %2, !dbg !725
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !177, metadata !651), !dbg !726
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !727
  %2 = zext i1 %1 to i32, !dbg !727
  ret i32 %2, !dbg !728
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !180, metadata !651), !dbg !729
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !181, metadata !651), !dbg !730
  %1 = bitcast float %__x to i32, !dbg !731
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !181, metadata !651), !dbg !730
  %2 = lshr i32 %1, 31, !dbg !732
  ret i32 %2, !dbg !733
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !189, metadata !651), !dbg !734
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !190, metadata !651), !dbg !735
  %1 = bitcast double %__x to i64, !dbg !736
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !190, metadata !651), !dbg !735
  %2 = lshr i64 %1, 63, !dbg !737
  %3 = trunc i64 %2 to i32, !dbg !738
  ret i32 %3, !dbg !739
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !198, metadata !651), !dbg !740
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !199, metadata !651), !dbg !741
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !199, metadata !651), !dbg !741
  %1 = bitcast x86_fp80 %__x to i80, !dbg !742
  %2 = lshr i80 %1, 79, !dbg !742
  %3 = trunc i80 %2 to i32, !dbg !743
  ret i32 %3, !dbg !744
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !211, metadata !651), !dbg !745
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !147, metadata !651) #7, !dbg !746
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !748
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !749
  %or.cond = and i1 %1, %3, !dbg !750
  br i1 %or.cond, label %4, label %.critedge, !dbg !750

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !751
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !752
  ret i32 %7, !dbg !753
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !214, metadata !651), !dbg !754
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !153, metadata !651) #7, !dbg !755
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !757
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !758
  %or.cond = and i1 %1, %3, !dbg !759
  br i1 %or.cond, label %4, label %.critedge, !dbg !759

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !760
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !761
  ret i32 %7, !dbg !762
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !217, metadata !651), !dbg !763
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !159, metadata !651) #7, !dbg !764
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !766
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !767
  %or.cond = and i1 %1, %3, !dbg !768
  br i1 %or.cond, label %4, label %.critedge, !dbg !768

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !769
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !770
  ret i32 %7, !dbg !771
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !223, metadata !651), !dbg !772
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !224, metadata !651), !dbg !773
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !225, metadata !651), !dbg !774
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !226, metadata !651), !dbg !775
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #10, !dbg !776
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !226, metadata !651), !dbg !775
  %2 = extractelement <2 x float> %1, i32 0, !dbg !777
  store float %2, float* %__sinp, align 4, !dbg !778, !tbaa !779
  %3 = extractelement <2 x float> %1, i32 1, !dbg !781
  store float %3, float* %__cosp, align 4, !dbg !782, !tbaa !779
  ret void, !dbg !783
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !237, metadata !651), !dbg !784
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !238, metadata !651), !dbg !785
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !239, metadata !651), !dbg !786
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !240, metadata !651), !dbg !787
  %1 = tail call { double, double } @__sincos_stret(double %__x) #10, !dbg !788
  %2 = extractvalue { double, double } %1, 0, !dbg !788
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !240, metadata !789), !dbg !787
  %3 = extractvalue { double, double } %1, 1, !dbg !788
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !240, metadata !790), !dbg !787
  store double %2, double* %__sinp, align 8, !dbg !791, !tbaa !792
  store double %3, double* %__cosp, align 8, !dbg !794, !tbaa !792
  ret void, !dbg !795
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !248, metadata !651), !dbg !796
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !249, metadata !651), !dbg !797
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !250, metadata !651), !dbg !798
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !251, metadata !651), !dbg !799
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #10, !dbg !800
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !251, metadata !651), !dbg !799
  %2 = extractelement <2 x float> %1, i32 0, !dbg !801
  store float %2, float* %__sinp, align 4, !dbg !802, !tbaa !779
  %3 = extractelement <2 x float> %1, i32 1, !dbg !803
  store float %3, float* %__cosp, align 4, !dbg !804, !tbaa !779
  ret void, !dbg !805
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !254, metadata !651), !dbg !806
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !255, metadata !651), !dbg !807
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !256, metadata !651), !dbg !808
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !257, metadata !651), !dbg !809
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #10, !dbg !810
  %2 = extractvalue { double, double } %1, 0, !dbg !810
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !257, metadata !789), !dbg !809
  %3 = extractvalue { double, double } %1, 1, !dbg !810
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !257, metadata !790), !dbg !809
  store double %2, double* %__sinp, align 8, !dbg !811, !tbaa !792
  store double %3, double* %__cosp, align 8, !dbg !812, !tbaa !792
  ret void, !dbg !813
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @nframes_read() #4 {
  %1 = load i32* @__frame, align 4, !dbg !814, !tbaa !815
  ret i32 %1, !dbg !816
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @prec2ndec(float %prec) #5 {
  tail call void @llvm.dbg.value(metadata float %prec, i64 0, metadata !266, metadata !651), !dbg !817
  %1 = fcmp ugt float %prec, 0.000000e+00, !dbg !818
  %.pre = fpext float %prec to double, !dbg !820
  br i1 %1, label %._crit_edge, label %2, !dbg !821

; <label>:2                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([41 x i8]* @.str, i64 0, i64 0), double %.pre) #10, !dbg !822
  br label %._crit_edge, !dbg !822

._crit_edge:                                      ; preds = %0, %2
  %3 = tail call double @log(double %.pre) #12, !dbg !823
  %4 = fdiv double %3, 0x40026BB1BBB55516, !dbg !824
  %5 = fadd double %4, 5.000000e-01, !dbg !825
  %6 = fptosi double %5 to i32, !dbg !826
  ret i32 %6, !dbg !827
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize readnone
declare double @log(double) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @clear_trxframe(%struct.t_trxframe* %fr, i32 %bFirst) #5 {
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !381, metadata !651), !dbg !828
  tail call void @llvm.dbg.value(metadata i32 %bFirst, i64 0, metadata !382, metadata !651), !dbg !829
  %1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 1, !dbg !830
  store i32 0, i32* %1, align 4, !dbg !831, !tbaa !832
  %2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !834
  store i32 0, i32* %2, align 4, !dbg !835, !tbaa !836
  %3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !837
  store i32 0, i32* %3, align 4, !dbg !838, !tbaa !839
  %4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !840
  store i32 0, i32* %4, align 4, !dbg !841, !tbaa !842
  %5 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 12, !dbg !843
  store i32 0, i32* %5, align 4, !dbg !844, !tbaa !845
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !846
  store i32 0, i32* %6, align 4, !dbg !847, !tbaa !848
  %7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !849
  store i32 0, i32* %7, align 4, !dbg !850, !tbaa !851
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !852
  store i32 0, i32* %8, align 4, !dbg !853, !tbaa !854
  %9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !855
  store i32 0, i32* %9, align 4, !dbg !856, !tbaa !857
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22, !dbg !858
  store i32 0, i32* %10, align 4, !dbg !859, !tbaa !860
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !861
  store i32 0, i32* %11, align 4, !dbg !862, !tbaa !863
  %12 = icmp eq i32 %bFirst, 0, !dbg !864
  br i1 %12, label %30, label %13, !dbg !866

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0, !dbg !867
  store i32 0, i32* %14, align 4, !dbg !869, !tbaa !870
  %15 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !871
  store i32 -1, i32* %15, align 4, !dbg !872, !tbaa !873
  %16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 3, !dbg !874
  store float 0.000000e+00, float* %16, align 4, !dbg !875, !tbaa !876
  %17 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 4, !dbg !877
  store float 0.000000e+00, float* %17, align 4, !dbg !878, !tbaa !879
  %18 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 5, !dbg !880
  store float 0.000000e+00, float* %18, align 4, !dbg !881, !tbaa !882
  %19 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7, !dbg !883
  store i8* null, i8** %19, align 8, !dbg !884, !tbaa !885
  %20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !886
  store i32 0, i32* %20, align 4, !dbg !887, !tbaa !888
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !889
  store float 0.000000e+00, float* %21, align 4, !dbg !890, !tbaa !891
  %22 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 13, !dbg !892
  store float 0.000000e+00, float* %22, align 4, !dbg !893, !tbaa !894
  %23 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !895
  store %struct.t_atoms* null, %struct.t_atoms** %23, align 8, !dbg !896, !tbaa !897
  %24 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17, !dbg !898
  store float 0.000000e+00, float* %24, align 4, !dbg !899, !tbaa !900
  %25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !901
  store [3 x float]* null, [3 x float]** %25, align 8, !dbg !902, !tbaa !903
  %26 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !904
  store [3 x float]* null, [3 x float]** %26, align 8, !dbg !905, !tbaa !906
  %27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23, !dbg !907
  store [3 x float]* null, [3 x float]** %27, align 8, !dbg !908, !tbaa !909
  %28 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !910
  tail call void @llvm.dbg.value(metadata [3 x float]* %28, i64 0, metadata !505, metadata !651) #7, !dbg !911
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !506, metadata !651) #7, !dbg !913
  %29 = bitcast [3 x float]* %28 to i8*, !dbg !914
  tail call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 36, i32 4, i1 false) #7, !dbg !915
  br label %30, !dbg !916

; <label>:30                                      ; preds = %0, %13
  ret void, !dbg !917
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @write_trxframe_indexed(i32 %fnum, %struct.t_trxframe* %fr, i32 %nind, i32* %ind) #5 {
  %title = alloca [4096 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %fnum, i64 0, metadata !387, metadata !651), !dbg !918
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !388, metadata !651), !dbg !919
  tail call void @llvm.dbg.value(metadata i32 %nind, i64 0, metadata !389, metadata !651), !dbg !920
  tail call void @llvm.dbg.value(metadata i32* %ind, i64 0, metadata !390, metadata !651), !dbg !921
  %1 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0, !dbg !922
  call void @llvm.lifetime.start(i64 4096, i8* %1) #7, !dbg !922
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %title, metadata !391, metadata !651), !dbg !923
  tail call void @llvm.dbg.value(metadata [3 x float]* null, i64 0, metadata !395, metadata !651), !dbg !924
  tail call void @llvm.dbg.value(metadata [3 x float]* null, i64 0, metadata !396, metadata !651), !dbg !925
  tail call void @llvm.dbg.value(metadata [3 x float]* null, i64 0, metadata !397, metadata !651), !dbg !926
  %2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !927
  %3 = load i32* %2, align 4, !dbg !927, !tbaa !851
  %4 = icmp eq i32 %3, 0, !dbg !929
  br i1 %4, label %8, label %5, !dbg !930

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17, !dbg !931
  %7 = load float* %6, align 4, !dbg !931, !tbaa !900
  tail call void @llvm.dbg.value(metadata float %7, i64 0, metadata !399, metadata !651), !dbg !932
  br label %8, !dbg !933

; <label>:8                                       ; preds = %0, %5
  %prec.0 = phi float [ %7, %5 ], [ 1.000000e+03, %0 ]
  %9 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10, !dbg !934
  %10 = and i32 %9, -2, !dbg !935
  %switch = icmp eq i32 %10, 4, !dbg !935
  br i1 %switch, label %18, label %11, !dbg !935

; <label>:11                                      ; preds = %8
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !936
  %13 = load i32* %12, align 4, !dbg !936, !tbaa !854
  %14 = icmp eq i32 %13, 0, !dbg !939
  br i1 %14, label %15, label %18, !dbg !940

; <label>:15                                      ; preds = %11
  %16 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10, !dbg !941
  %17 = tail call i8* @ftp2ext(i32 %16) #10, !dbg !942
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([42 x i8]* @.str1, i64 0, i64 0), i8* %17) #10, !dbg !943
  br label %18, !dbg !943

; <label>:18                                      ; preds = %11, %15, %8
  %19 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10, !dbg !944
  switch i32 %19, label %.loopexit [
    i32 5, label %20
    i32 4, label %20
    i32 6, label %.loopexit1
    i32 7, label %.loopexit1
  ], !dbg !945

; <label>:20                                      ; preds = %18, %18
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !946
  %22 = load i32* %21, align 4, !dbg !946, !tbaa !857
  %23 = icmp eq i32 %22, 0, !dbg !949
  br i1 %23, label %.loopexit2, label %24, !dbg !950

; <label>:24                                      ; preds = %20
  %25 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 172, i32 %nind, i32 12) #10, !dbg !951
  %26 = bitcast i8* %25 to [3 x float]*, !dbg !951
  tail call void @llvm.dbg.value(metadata [3 x float]* %26, i64 0, metadata !396, metadata !651), !dbg !925
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !398, metadata !651), !dbg !953
  %27 = icmp sgt i32 %nind, 0, !dbg !954
  br i1 %27, label %.lr.ph7, label %.loopexit2, !dbg !957

.lr.ph7:                                          ; preds = %24
  %28 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !958
  %29 = load [3 x float]** %28, align 8, !dbg !958, !tbaa !906
  %30 = add i32 %nind, -1, !dbg !957
  br label %31, !dbg !957

; <label>:31                                      ; preds = %31, %.lr.ph7
  %indvars.iv12 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next13, %31 ]
  %32 = getelementptr inbounds i32* %ind, i64 %indvars.iv12, !dbg !959
  %33 = load i32* %32, align 4, !dbg !959, !tbaa !815
  %34 = sext i32 %33 to i64, !dbg !960
  %35 = getelementptr inbounds [3 x float]* %29, i64 %34, i64 0, !dbg !960
  %36 = getelementptr inbounds [3 x float]* %26, i64 %indvars.iv12, i64 0, !dbg !961
  tail call void @llvm.dbg.value(metadata float* %35, i64 0, metadata !513, metadata !651), !dbg !962
  tail call void @llvm.dbg.value(metadata float* %36, i64 0, metadata !514, metadata !651), !dbg !964
  %37 = bitcast float* %35 to i32*, !dbg !965
  %38 = load i32* %37, align 4, !dbg !965, !tbaa !779
  %39 = bitcast float* %36 to i32*, !dbg !966
  store i32 %38, i32* %39, align 4, !dbg !966, !tbaa !779
  %40 = getelementptr inbounds [3 x float]* %29, i64 %34, i64 1, !dbg !967
  %41 = bitcast float* %40 to i32*, !dbg !967
  %42 = load i32* %41, align 4, !dbg !967, !tbaa !779
  %43 = getelementptr inbounds [3 x float]* %26, i64 %indvars.iv12, i64 1, !dbg !968
  %44 = bitcast float* %43 to i32*, !dbg !969
  store i32 %42, i32* %44, align 4, !dbg !969, !tbaa !779
  %45 = getelementptr inbounds [3 x float]* %29, i64 %34, i64 2, !dbg !970
  %46 = bitcast float* %45 to i32*, !dbg !970
  %47 = load i32* %46, align 4, !dbg !970, !tbaa !779
  %48 = getelementptr inbounds [3 x float]* %26, i64 %indvars.iv12, i64 2, !dbg !971
  %49 = bitcast float* %48 to i32*, !dbg !972
  store i32 %47, i32* %49, align 4, !dbg !972, !tbaa !779
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !957
  %lftr.wideiv14 = trunc i64 %indvars.iv12 to i32, !dbg !957
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %30, !dbg !957
  br i1 %exitcond15, label %.loopexit2, label %31, !dbg !957

.loopexit2:                                       ; preds = %31, %24, %20
  %vout.0 = phi [3 x float]* [ null, %20 ], [ %26, %24 ], [ %26, %31 ]
  %50 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22, !dbg !973
  %51 = load i32* %50, align 4, !dbg !973, !tbaa !860
  %52 = icmp eq i32 %51, 0, !dbg !975
  br i1 %52, label %.loopexit1, label %53, !dbg !976

; <label>:53                                      ; preds = %.loopexit2
  %54 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 177, i32 %nind, i32 12) #10, !dbg !977
  %55 = bitcast i8* %54 to [3 x float]*, !dbg !977
  tail call void @llvm.dbg.value(metadata [3 x float]* %55, i64 0, metadata !397, metadata !651), !dbg !926
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !398, metadata !651), !dbg !953
  %56 = icmp sgt i32 %nind, 0, !dbg !979
  br i1 %56, label %.lr.ph5, label %.loopexit1, !dbg !982

.lr.ph5:                                          ; preds = %53
  %57 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23, !dbg !983
  %58 = load [3 x float]** %57, align 8, !dbg !983, !tbaa !909
  %59 = add i32 %nind, -1, !dbg !982
  br label %60, !dbg !982

; <label>:60                                      ; preds = %60, %.lr.ph5
  %indvars.iv8 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next9, %60 ]
  %61 = getelementptr inbounds i32* %ind, i64 %indvars.iv8, !dbg !984
  %62 = load i32* %61, align 4, !dbg !984, !tbaa !815
  %63 = sext i32 %62 to i64, !dbg !985
  %64 = getelementptr inbounds [3 x float]* %58, i64 %63, i64 0, !dbg !985
  %65 = getelementptr inbounds [3 x float]* %55, i64 %indvars.iv8, i64 0, !dbg !986
  tail call void @llvm.dbg.value(metadata float* %64, i64 0, metadata !513, metadata !651), !dbg !987
  tail call void @llvm.dbg.value(metadata float* %65, i64 0, metadata !514, metadata !651), !dbg !989
  %66 = bitcast float* %64 to i32*, !dbg !990
  %67 = load i32* %66, align 4, !dbg !990, !tbaa !779
  %68 = bitcast float* %65 to i32*, !dbg !991
  store i32 %67, i32* %68, align 4, !dbg !991, !tbaa !779
  %69 = getelementptr inbounds [3 x float]* %58, i64 %63, i64 1, !dbg !992
  %70 = bitcast float* %69 to i32*, !dbg !992
  %71 = load i32* %70, align 4, !dbg !992, !tbaa !779
  %72 = getelementptr inbounds [3 x float]* %55, i64 %indvars.iv8, i64 1, !dbg !993
  %73 = bitcast float* %72 to i32*, !dbg !994
  store i32 %71, i32* %73, align 4, !dbg !994, !tbaa !779
  %74 = getelementptr inbounds [3 x float]* %58, i64 %63, i64 2, !dbg !995
  %75 = bitcast float* %74 to i32*, !dbg !995
  %76 = load i32* %75, align 4, !dbg !995, !tbaa !779
  %77 = getelementptr inbounds [3 x float]* %55, i64 %indvars.iv8, i64 2, !dbg !996
  %78 = bitcast float* %77 to i32*, !dbg !997
  store i32 %76, i32* %78, align 4, !dbg !997, !tbaa !779
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !982
  %lftr.wideiv10 = trunc i64 %indvars.iv8 to i32, !dbg !982
  %exitcond11 = icmp eq i32 %lftr.wideiv10, %59, !dbg !982
  br i1 %exitcond11, label %.loopexit1, label %60, !dbg !982

.loopexit1:                                       ; preds = %60, %53, %.loopexit2, %18, %18
  %vout.1 = phi [3 x float]* [ null, %18 ], [ null, %18 ], [ %vout.0, %.loopexit2 ], [ %vout.0, %53 ], [ %vout.0, %60 ]
  %fout.0 = phi [3 x float]* [ null, %18 ], [ null, %18 ], [ null, %.loopexit2 ], [ %55, %53 ], [ %55, %60 ]
  %79 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !998
  %80 = load i32* %79, align 4, !dbg !998, !tbaa !854
  %81 = icmp eq i32 %80, 0, !dbg !1000
  br i1 %81, label %.loopexit, label %82, !dbg !1001

; <label>:82                                      ; preds = %.loopexit1
  %83 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 184, i32 %nind, i32 12) #10, !dbg !1002
  %84 = bitcast i8* %83 to [3 x float]*, !dbg !1002
  tail call void @llvm.dbg.value(metadata [3 x float]* %84, i64 0, metadata !395, metadata !651), !dbg !924
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !398, metadata !651), !dbg !953
  %85 = icmp sgt i32 %nind, 0, !dbg !1004
  br i1 %85, label %.lr.ph, label %.loopexit, !dbg !1007

.lr.ph:                                           ; preds = %82
  %86 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1008
  %87 = load [3 x float]** %86, align 8, !dbg !1008, !tbaa !903
  %88 = add i32 %nind, -1, !dbg !1007
  br label %89, !dbg !1007

; <label>:89                                      ; preds = %89, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %89 ]
  %90 = getelementptr inbounds i32* %ind, i64 %indvars.iv, !dbg !1009
  %91 = load i32* %90, align 4, !dbg !1009, !tbaa !815
  %92 = sext i32 %91 to i64, !dbg !1010
  %93 = getelementptr inbounds [3 x float]* %87, i64 %92, i64 0, !dbg !1010
  %94 = getelementptr inbounds [3 x float]* %84, i64 %indvars.iv, i64 0, !dbg !1011
  tail call void @llvm.dbg.value(metadata float* %93, i64 0, metadata !513, metadata !651), !dbg !1012
  tail call void @llvm.dbg.value(metadata float* %94, i64 0, metadata !514, metadata !651), !dbg !1014
  %95 = bitcast float* %93 to i32*, !dbg !1015
  %96 = load i32* %95, align 4, !dbg !1015, !tbaa !779
  %97 = bitcast float* %94 to i32*, !dbg !1016
  store i32 %96, i32* %97, align 4, !dbg !1016, !tbaa !779
  %98 = getelementptr inbounds [3 x float]* %87, i64 %92, i64 1, !dbg !1017
  %99 = bitcast float* %98 to i32*, !dbg !1017
  %100 = load i32* %99, align 4, !dbg !1017, !tbaa !779
  %101 = getelementptr inbounds [3 x float]* %84, i64 %indvars.iv, i64 1, !dbg !1018
  %102 = bitcast float* %101 to i32*, !dbg !1019
  store i32 %100, i32* %102, align 4, !dbg !1019, !tbaa !779
  %103 = getelementptr inbounds [3 x float]* %87, i64 %92, i64 2, !dbg !1020
  %104 = bitcast float* %103 to i32*, !dbg !1020
  %105 = load i32* %104, align 4, !dbg !1020, !tbaa !779
  %106 = getelementptr inbounds [3 x float]* %84, i64 %indvars.iv, i64 2, !dbg !1021
  %107 = bitcast float* %106 to i32*, !dbg !1022
  store i32 %105, i32* %107, align 4, !dbg !1022, !tbaa !779
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1007
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !1007
  %exitcond = icmp eq i32 %lftr.wideiv, %88, !dbg !1007
  br i1 %exitcond, label %.loopexit, label %89, !dbg !1007

.loopexit:                                        ; preds = %89, %82, %.loopexit1, %18
  %vout.2 = phi [3 x float]* [ null, %18 ], [ %vout.1, %.loopexit1 ], [ %vout.1, %82 ], [ %vout.1, %89 ]
  %fout.1 = phi [3 x float]* [ null, %18 ], [ %fout.0, %.loopexit1 ], [ %fout.0, %82 ], [ %fout.0, %89 ]
  %xout.0 = phi [3 x float]* [ null, %18 ], [ null, %.loopexit1 ], [ %84, %82 ], [ %84, %89 ]
  %108 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10, !dbg !1023
  switch i32 %108, label %165 [
    i32 6, label %109
    i32 5, label %116
    i32 4, label %116
    i32 13, label %124
    i32 15, label %124
    i32 16, label %124
    i32 17, label %124
    i32 7, label %160
    i32 14, label %163
  ], !dbg !1024

; <label>:109                                     ; preds = %.loopexit
  %110 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !1025
  %111 = load i32* %110, align 4, !dbg !1025, !tbaa !888
  %112 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1027
  %113 = load float* %112, align 4, !dbg !1027, !tbaa !891
  %114 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1028
  %115 = tail call i32 @write_xtc(i32 %fnum, i32 %nind, i32 %111, float %113, [3 x float]* %114, [3 x float]* %xout.0, float %prec.0) #10, !dbg !1029
  br label %168, !dbg !1030

; <label>:116                                     ; preds = %.loopexit, %.loopexit
  %117 = load i32* @__frame, align 4, !dbg !1031, !tbaa !815
  %118 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1033
  %119 = load float* %118, align 4, !dbg !1033, !tbaa !891
  %120 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !1034
  %121 = load i32* %120, align 4, !dbg !1034, !tbaa !888
  %122 = sitofp i32 %121 to float, !dbg !1035
  %123 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1036
  tail call void @fwrite_trn(i32 %fnum, i32 %117, float %119, float %122, [3 x float]* %123, i32 %nind, [3 x float]* %xout.0, [3 x float]* %vout.2, [3 x float]* %fout.1) #10, !dbg !1037
  br label %168, !dbg !1038

; <label>:124                                     ; preds = %.loopexit, %.loopexit, %.loopexit, %.loopexit
  %125 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !1039
  %126 = load i32* %125, align 4, !dbg !1039, !tbaa !848
  %127 = icmp eq i32 %126, 0, !dbg !1041
  br i1 %127, label %128, label %131, !dbg !1042

; <label>:128                                     ; preds = %124
  %129 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10, !dbg !1043
  %130 = tail call i8* @ftp2ext(i32 %129) #10, !dbg !1044
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str6, i64 0, i64 0), i8* %130) #10, !dbg !1045
  br label %131, !dbg !1045

; <label>:131                                     ; preds = %124, %128
  %132 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1046
  %133 = load float* %132, align 4, !dbg !1046, !tbaa !891
  %134 = fpext float %133 to double, !dbg !1046
  %135 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 4096, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), double %134) #10, !dbg !1046
  %136 = call i32 @gmx_fio_getftp(i32 %fnum) #10, !dbg !1047
  %137 = icmp eq i32 %136, 13, !dbg !1049
  %138 = call %struct.__sFILE* @gmx_fio_getfp(i32 %fnum) #10, !dbg !1050
  %139 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !1051
  %140 = load %struct.t_atoms** %139, align 8, !dbg !1051, !tbaa !897
  br i1 %137, label %141, label %154, !dbg !1052

; <label>:141                                     ; preds = %131
  %142 = call i32 @prec2ndec(float %prec.0) #13, !dbg !1053
  %143 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1054
  %144 = load [3 x float]** %143, align 8, !dbg !1054, !tbaa !903
  %145 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !1055
  %146 = load i32* %145, align 4, !dbg !1055, !tbaa !857
  %147 = icmp eq i32 %146, 0, !dbg !1056
  br i1 %147, label %151, label %148, !dbg !1056

; <label>:148                                     ; preds = %141
  %149 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1057
  %150 = load [3 x float]** %149, align 8, !dbg !1057, !tbaa !906
  br label %151, !dbg !1056

; <label>:151                                     ; preds = %141, %148
  %152 = phi [3 x float]* [ %150, %148 ], [ null, %141 ], !dbg !1056
  %153 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1058
  call void @write_hconf_indexed_p(%struct.__sFILE* %138, i8* %1, %struct.t_atoms* %140, i32 %nind, i32* %ind, i32 %142, [3 x float]* %144, [3 x float]* %152, [3 x float]* %153) #10, !dbg !1059
  br label %168, !dbg !1059

; <label>:154                                     ; preds = %131
  %155 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1060
  %156 = load [3 x float]** %155, align 8, !dbg !1060, !tbaa !903
  %157 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1061
  %158 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !1062
  %159 = load i32* %158, align 4, !dbg !1062, !tbaa !888
  call void @write_pdbfile_indexed(%struct.__sFILE* %138, i8* %1, %struct.t_atoms* %140, [3 x float]* %156, [3 x float]* %157, i8 signext 0, i32 %159, i32 %nind, i32* %ind) #10, !dbg !1063
  br label %168

; <label>:160                                     ; preds = %.loopexit
  %161 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %fnum) #10, !dbg !1064
  %162 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1065
  tail call void @write_gms(%struct.__sFILE* %161, i32 %nind, [3 x float]* %xout.0, [3 x float]* %162) #10, !dbg !1066
  br label %168, !dbg !1067

; <label>:163                                     ; preds = %.loopexit
  %164 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %fnum) #10, !dbg !1068
  tail call void @write_g96_conf(%struct.__sFILE* %164, %struct.t_trxframe* %fr, i32 %nind, i32* %ind) #10, !dbg !1069
  br label %168, !dbg !1070

; <label>:165                                     ; preds = %.loopexit
  %166 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10, !dbg !1071
  %167 = tail call i8* @ftp2ext(i32 %166) #10, !dbg !1072
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), i8* %167) #10, !dbg !1073
  br label %168, !dbg !1074

; <label>:168                                     ; preds = %151, %154, %165, %163, %160, %116, %109
  %169 = call i32 @gmx_fio_getftp(i32 %fnum) #10, !dbg !1075
  switch i32 %169, label %180 [
    i32 3, label %170
    i32 5, label %170
    i32 4, label %170
    i32 6, label %178
    i32 7, label %178
  ], !dbg !1076

; <label>:170                                     ; preds = %168, %168, %168
  %171 = icmp eq [3 x float]* %vout.2, null, !dbg !1077
  br i1 %171, label %174, label %172, !dbg !1080

; <label>:172                                     ; preds = %170
  %173 = bitcast [3 x float]* %vout.2 to i8*, !dbg !1081
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 234, i8* %173) #10, !dbg !1081
  br label %174, !dbg !1081

; <label>:174                                     ; preds = %170, %172
  %175 = icmp eq [3 x float]* %fout.1, null, !dbg !1082
  br i1 %175, label %178, label %176, !dbg !1084

; <label>:176                                     ; preds = %174
  %177 = bitcast [3 x float]* %fout.1 to i8*, !dbg !1085
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 235, i8* %177) #10, !dbg !1085
  br label %178, !dbg !1085

; <label>:178                                     ; preds = %174, %176, %168, %168
  %179 = bitcast [3 x float]* %xout.0 to i8*, !dbg !1086
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 238, i8* %179) #10, !dbg !1086
  br label %180, !dbg !1087

; <label>:180                                     ; preds = %168, %178
  call void @llvm.lifetime.end(i64 4096, i8* %1) #7, !dbg !1088
  ret i32 0, !dbg !1088
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i32 @gmx_fio_getftp(i32) #2

; Function Attrs: optsize
declare i8* @ftp2ext(i32) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @write_xtc(i32, i32, i32, float, [3 x float]*, [3 x float]*, float) #2

; Function Attrs: optsize
declare void @fwrite_trn(i32, i32, float, float, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare void @write_hconf_indexed_p(%struct.__sFILE*, i8*, %struct.t_atoms*, i32, i32*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare %struct.__sFILE* @gmx_fio_getfp(i32) #2

; Function Attrs: optsize
declare void @write_pdbfile_indexed(%struct.__sFILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32, i32, i32*) #2

; Function Attrs: optsize
declare void @write_gms(%struct.__sFILE*, i32, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @write_g96_conf(%struct.__sFILE*, %struct.t_trxframe*, i32, i32*) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize ssp uwtable
define i32 @write_trxframe(i32 %fnum, %struct.t_trxframe* %fr) #5 {
  %title = alloca [4096 x i8], align 16
  tail call void @llvm.dbg.value(metadata i32 %fnum, i64 0, metadata !404, metadata !651), !dbg !1089
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !405, metadata !651), !dbg !1090
  %1 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0, !dbg !1091
  call void @llvm.lifetime.start(i64 4096, i8* %1) #7, !dbg !1091
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %title, metadata !406, metadata !651), !dbg !1092
  %2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !1093
  %3 = load i32* %2, align 4, !dbg !1093, !tbaa !851
  %4 = icmp eq i32 %3, 0, !dbg !1095
  br i1 %4, label %8, label %5, !dbg !1096

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17, !dbg !1097
  %7 = load float* %6, align 4, !dbg !1097, !tbaa !900
  tail call void @llvm.dbg.value(metadata float %7, i64 0, metadata !407, metadata !651), !dbg !1098
  br label %8, !dbg !1099

; <label>:8                                       ; preds = %0, %5
  %prec.0 = phi float [ %7, %5 ], [ 1.000000e+03, %0 ]
  %9 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10, !dbg !1100
  %10 = and i32 %9, -2, !dbg !1101
  %switch = icmp eq i32 %10, 4, !dbg !1101
  br i1 %switch, label %18, label %11, !dbg !1101

; <label>:11                                      ; preds = %8
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1102
  %13 = load i32* %12, align 4, !dbg !1102, !tbaa !854
  %14 = icmp eq i32 %13, 0, !dbg !1105
  br i1 %14, label %15, label %18, !dbg !1106

; <label>:15                                      ; preds = %11
  %16 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10, !dbg !1107
  %17 = tail call i8* @ftp2ext(i32 %16) #10, !dbg !1108
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([42 x i8]* @.str1, i64 0, i64 0), i8* %17) #10, !dbg !1109
  br label %18, !dbg !1109

; <label>:18                                      ; preds = %11, %15, %8
  %19 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10, !dbg !1110
  switch i32 %19, label %110 [
    i32 6, label %20
    i32 5, label %31
    i32 4, label %31
    i32 13, label %65
    i32 15, label %65
    i32 16, label %65
    i32 17, label %65
    i32 7, label %101
    i32 14, label %108
  ], !dbg !1111

; <label>:20                                      ; preds = %18
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1112
  %22 = load i32* %21, align 4, !dbg !1112, !tbaa !873
  %23 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !1114
  %24 = load i32* %23, align 4, !dbg !1114, !tbaa !888
  %25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1115
  %26 = load float* %25, align 4, !dbg !1115, !tbaa !891
  %27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1116
  %28 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1117
  %29 = load [3 x float]** %28, align 8, !dbg !1117, !tbaa !903
  %30 = tail call i32 @write_xtc(i32 %fnum, i32 %22, i32 %24, float %26, [3 x float]* %27, [3 x float]* %29, float %prec.0) #10, !dbg !1118
  br label %113, !dbg !1119

; <label>:31                                      ; preds = %18, %18
  %32 = load i32* @__frame, align 4, !dbg !1120, !tbaa !815
  %33 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1122
  %34 = load float* %33, align 4, !dbg !1122, !tbaa !891
  %35 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !1123
  %36 = load i32* %35, align 4, !dbg !1123, !tbaa !888
  %37 = sitofp i32 %36 to float, !dbg !1124
  %38 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1125
  %39 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1126
  %40 = load i32* %39, align 4, !dbg !1126, !tbaa !873
  %41 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1127
  %42 = load i32* %41, align 4, !dbg !1127, !tbaa !854
  %43 = icmp eq i32 %42, 0, !dbg !1128
  br i1 %43, label %47, label %44, !dbg !1128

; <label>:44                                      ; preds = %31
  %45 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1129
  %46 = load [3 x float]** %45, align 8, !dbg !1129, !tbaa !903
  br label %47, !dbg !1128

; <label>:47                                      ; preds = %31, %44
  %48 = phi [3 x float]* [ %46, %44 ], [ null, %31 ], !dbg !1128
  %49 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !1130
  %50 = load i32* %49, align 4, !dbg !1130, !tbaa !857
  %51 = icmp eq i32 %50, 0, !dbg !1131
  br i1 %51, label %55, label %52, !dbg !1131

; <label>:52                                      ; preds = %47
  %53 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1132
  %54 = load [3 x float]** %53, align 8, !dbg !1132, !tbaa !906
  br label %55, !dbg !1131

; <label>:55                                      ; preds = %47, %52
  %56 = phi [3 x float]* [ %54, %52 ], [ null, %47 ], !dbg !1131
  %57 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22, !dbg !1133
  %58 = load i32* %57, align 4, !dbg !1133, !tbaa !860
  %59 = icmp eq i32 %58, 0, !dbg !1134
  br i1 %59, label %63, label %60, !dbg !1134

; <label>:60                                      ; preds = %55
  %61 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23, !dbg !1135
  %62 = load [3 x float]** %61, align 8, !dbg !1135, !tbaa !909
  br label %63, !dbg !1134

; <label>:63                                      ; preds = %55, %60
  %64 = phi [3 x float]* [ %62, %60 ], [ null, %55 ], !dbg !1134
  tail call void @fwrite_trn(i32 %fnum, i32 %32, float %34, float %37, [3 x float]* %38, i32 %40, [3 x float]* %48, [3 x float]* %56, [3 x float]* %64) #10, !dbg !1136
  br label %113, !dbg !1137

; <label>:65                                      ; preds = %18, %18, %18, %18
  %66 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !1138
  %67 = load i32* %66, align 4, !dbg !1138, !tbaa !848
  %68 = icmp eq i32 %67, 0, !dbg !1140
  br i1 %68, label %69, label %72, !dbg !1141

; <label>:69                                      ; preds = %65
  %70 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10, !dbg !1142
  %71 = tail call i8* @ftp2ext(i32 %70) #10, !dbg !1143
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str6, i64 0, i64 0), i8* %71) #10, !dbg !1144
  br label %72, !dbg !1144

; <label>:72                                      ; preds = %65, %69
  %73 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1145
  %74 = load float* %73, align 4, !dbg !1145, !tbaa !891
  %75 = fpext float %74 to double, !dbg !1145
  %76 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 4096, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), double %75) #10, !dbg !1145
  %77 = call i32 @gmx_fio_getftp(i32 %fnum) #10, !dbg !1146
  %78 = icmp eq i32 %77, 13, !dbg !1148
  %79 = call %struct.__sFILE* @gmx_fio_getfp(i32 %fnum) #10, !dbg !1149
  %80 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !1150
  %81 = load %struct.t_atoms** %80, align 8, !dbg !1150, !tbaa !897
  br i1 %78, label %82, label %95, !dbg !1151

; <label>:82                                      ; preds = %72
  %83 = call i32 @prec2ndec(float %prec.0) #13, !dbg !1152
  %84 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1153
  %85 = load [3 x float]** %84, align 8, !dbg !1153, !tbaa !903
  %86 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !1154
  %87 = load i32* %86, align 4, !dbg !1154, !tbaa !857
  %88 = icmp eq i32 %87, 0, !dbg !1155
  br i1 %88, label %92, label %89, !dbg !1155

; <label>:89                                      ; preds = %82
  %90 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1156
  %91 = load [3 x float]** %90, align 8, !dbg !1156, !tbaa !906
  br label %92, !dbg !1155

; <label>:92                                      ; preds = %82, %89
  %93 = phi [3 x float]* [ %91, %89 ], [ null, %82 ], !dbg !1155
  %94 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1157
  call void @write_hconf_p(%struct.__sFILE* %79, i8* %1, %struct.t_atoms* %81, i32 %83, [3 x float]* %85, [3 x float]* %93, [3 x float]* %94) #10, !dbg !1158
  br label %113, !dbg !1158

; <label>:95                                      ; preds = %72
  %96 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1159
  %97 = load [3 x float]** %96, align 8, !dbg !1159, !tbaa !903
  %98 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1160
  %99 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !1161
  %100 = load i32* %99, align 4, !dbg !1161, !tbaa !888
  call void @write_pdbfile(%struct.__sFILE* %79, i8* %1, %struct.t_atoms* %81, [3 x float]* %97, [3 x float]* %98, i8 signext 0, i32 %100) #10, !dbg !1162
  br label %113

; <label>:101                                     ; preds = %18
  %102 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %fnum) #10, !dbg !1163
  %103 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1164
  %104 = load i32* %103, align 4, !dbg !1164, !tbaa !873
  %105 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1165
  %106 = load [3 x float]** %105, align 8, !dbg !1165, !tbaa !903
  %107 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1166
  tail call void @write_gms(%struct.__sFILE* %102, i32 %104, [3 x float]* %106, [3 x float]* %107) #10, !dbg !1167
  br label %113, !dbg !1168

; <label>:108                                     ; preds = %18
  %109 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %fnum) #10, !dbg !1169
  tail call void @write_g96_conf(%struct.__sFILE* %109, %struct.t_trxframe* %fr, i32 -1, i32* null) #10, !dbg !1170
  br label %113, !dbg !1171

; <label>:110                                     ; preds = %18
  %111 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10, !dbg !1172
  %112 = tail call i8* @ftp2ext(i32 %111) #10, !dbg !1173
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str9, i64 0, i64 0), i8* %112) #10, !dbg !1174
  br label %113, !dbg !1175

; <label>:113                                     ; preds = %92, %95, %110, %108, %101, %63, %20
  call void @llvm.lifetime.end(i64 4096, i8* %1) #7, !dbg !1176
  ret i32 0, !dbg !1176
}

; Function Attrs: optsize
declare void @write_hconf_p(%struct.__sFILE*, i8*, %struct.t_atoms*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @write_pdbfile(%struct.__sFILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @write_trx(i32 %fnum, i32 %nind, i32* %ind, %struct.t_atoms* %atoms, i32 %step, float %time, [3 x float]* nocapture readonly %box, [3 x float]* %x, [3 x float]* %v) #5 {
  %fr = alloca %struct.t_trxframe, align 8
  tail call void @llvm.dbg.value(metadata i32 %fnum, i64 0, metadata !413, metadata !651), !dbg !1177
  tail call void @llvm.dbg.value(metadata i32 %nind, i64 0, metadata !414, metadata !651), !dbg !1178
  tail call void @llvm.dbg.value(metadata i32* %ind, i64 0, metadata !415, metadata !651), !dbg !1179
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !416, metadata !651), !dbg !1180
  tail call void @llvm.dbg.value(metadata i32 %step, i64 0, metadata !417, metadata !651), !dbg !1181
  tail call void @llvm.dbg.value(metadata float %time, i64 0, metadata !418, metadata !651), !dbg !1182
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !419, metadata !651), !dbg !1183
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !420, metadata !651), !dbg !1184
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !421, metadata !651), !dbg !1185
  %1 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !1186
  call void @llvm.lifetime.start(i64 176, i8* %1) #7, !dbg !1186
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !422, metadata !651), !dbg !1187
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #13, !dbg !1188
  %2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !1189
  store i32 1, i32* %2, align 8, !dbg !1190, !tbaa !839
  %3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !1191
  store i32 %step, i32* %3, align 4, !dbg !1192, !tbaa !888
  %4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !1193
  store i32 1, i32* %4, align 8, !dbg !1194, !tbaa !842
  %5 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1195
  store float %time, float* %5, align 4, !dbg !1196, !tbaa !891
  %6 = icmp ne %struct.t_atoms* %atoms, null, !dbg !1197
  %7 = zext i1 %6 to i32, !dbg !1197
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !1198
  store i32 %7, i32* %8, align 8, !dbg !1199, !tbaa !848
  %9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15, !dbg !1200
  store %struct.t_atoms* %atoms, %struct.t_atoms** %9, align 8, !dbg !1201, !tbaa !897
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1202
  store i32 1, i32* %10, align 8, !dbg !1203, !tbaa !854
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1204
  store [3 x float]* %x, [3 x float]** %11, align 8, !dbg !1205, !tbaa !903
  %12 = icmp ne [3 x float]* %v, null, !dbg !1206
  %13 = zext i1 %12 to i32, !dbg !1206
  %14 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !1207
  store i32 %13, i32* %14, align 8, !dbg !1208, !tbaa !857
  %15 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1209
  store [3 x float]* %v, [3 x float]** %15, align 8, !dbg !1210, !tbaa !906
  %16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1211
  store i32 1, i32* %16, align 8, !dbg !1212, !tbaa !863
  %17 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1213
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !519, metadata !651), !dbg !1214
  tail call void @llvm.dbg.value(metadata [3 x float]* %17, i64 0, metadata !520, metadata !651), !dbg !1216
  %18 = bitcast [3 x float]* %box to <4 x i32>*, !dbg !1217
  %19 = load <4 x i32>* %18, align 4, !dbg !1217, !tbaa !779
  %20 = bitcast [3 x float]* %17 to <4 x i32>*, !dbg !1219
  store <4 x i32> %19, <4 x i32>* %20, align 4, !dbg !1219, !tbaa !779
  %21 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1220
  %22 = bitcast float* %21 to i32*, !dbg !1220
  %23 = load i32* %22, align 4, !dbg !1220, !tbaa !779
  %24 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !1222
  %25 = bitcast float* %24 to i32*, !dbg !1223
  store i32 %23, i32* %25, align 4, !dbg !1223, !tbaa !779
  %26 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1224
  %27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2, !dbg !1225
  %28 = bitcast float* %26 to <4 x i32>*, !dbg !1224
  %29 = load <4 x i32>* %28, align 4, !dbg !1224, !tbaa !779
  %30 = bitcast float* %27 to <4 x i32>*, !dbg !1226
  store <4 x i32> %29, <4 x i32>* %30, align 4, !dbg !1226, !tbaa !779
  call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !422, metadata !651), !dbg !1187
  %31 = call i32 @write_trxframe_indexed(i32 %fnum, %struct.t_trxframe* %fr, i32 %nind, i32* %ind) #13, !dbg !1227
  call void @llvm.lifetime.end(i64 176, i8* %1) #7, !dbg !1228
  ret i32 0, !dbg !1228
}

; Function Attrs: nounwind optsize ssp uwtable
define void @close_trx(i32 %status) #5 {
  tail call void @llvm.dbg.value(metadata i32 %status, i64 0, metadata !427, metadata !651), !dbg !1229
  tail call void @gmx_fio_close(i32 %status) #10, !dbg !1230
  ret void, !dbg !1231
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @open_trx(i8* %outfile, i8* %filemode) #5 {
  tail call void @llvm.dbg.value(metadata i8* %outfile, i64 0, metadata !432, metadata !651), !dbg !1232
  tail call void @llvm.dbg.value(metadata i8* %filemode, i64 0, metadata !433, metadata !651), !dbg !1233
  %1 = load i8* %filemode, align 1, !dbg !1234, !tbaa !679
  switch i8 %1, label %2 [
    i8 119, label %3
    i8 97, label %3
  ], !dbg !1236

; <label>:2                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str10, i64 0, i64 0)) #10, !dbg !1237
  br label %3, !dbg !1237

; <label>:3                                       ; preds = %0, %0, %2
  %4 = tail call i32 @gmx_fio_open(i8* %outfile, i8* %filemode) #10, !dbg !1238
  ret i32 %4, !dbg !1239
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_next_frame(i32 %status, %struct.t_trxframe* %fr) #5 {
  %sh.i = alloca %struct.t_trnheader, align 4
  %bOK.i = alloca i32, align 4
  %bOK = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %status, i64 0, metadata !436, metadata !651), !dbg !1240
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !437, metadata !651), !dbg !1241
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !442, metadata !651), !dbg !1242
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !443, metadata !651), !dbg !1243
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !441, metadata !651), !dbg !1244
  %1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1245
  %2 = load float* %1, align 4, !dbg !1245, !tbaa !891
  tail call void @llvm.dbg.value(metadata float %2, i64 0, metadata !438, metadata !651), !dbg !1246
  %3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 1, !dbg !1247
  %4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !1250
  %5 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !1251
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !1252
  %7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 12, !dbg !1253
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !1254
  %9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !1255
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1256
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !1257
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22, !dbg !1258
  %13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1259
  %14 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 4, !dbg !1260
  %15 = bitcast float* %14 to i32*, !dbg !1260
  %16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 5, !dbg !1261
  %17 = bitcast float* %16 to i32*, !dbg !1262
  %18 = bitcast float* %1 to i32*, !dbg !1263
  %19 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0, !dbg !1264
  %20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 3, !dbg !1267
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1270
  %22 = bitcast i32* %bOK.i to i8*, !dbg !1273
  %23 = bitcast %struct.t_trnheader* %sh.i to i8*, !dbg !1276
  %24 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 10, !dbg !1277
  %25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1280
  %26 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 11, !dbg !1281
  %27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !1282
  %28 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 13, !dbg !1283
  %29 = bitcast float* %28 to i32*, !dbg !1283
  %30 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 14, !dbg !1284
  %31 = bitcast float* %30 to i32*, !dbg !1284
  %32 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 13, !dbg !1285
  %33 = bitcast float* %32 to i32*, !dbg !1286
  %34 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 2, !dbg !1287
  %.phi.trans.insert.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23, !dbg !1288
  %35 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1289
  %36 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1291
  %37 = bitcast [3 x float]** %.phi.trans.insert.i to i8**, !dbg !1292
  %38 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 9, !dbg !1296
  %39 = bitcast [3 x float]** %36 to i8**, !dbg !1297
  %40 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 8, !dbg !1301
  %41 = bitcast [3 x float]** %35 to i8**, !dbg !1302
  %42 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 7, !dbg !1306
  %43 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17, !dbg !1307
  %44 = bitcast float %2 to i32
  br label %.critedge2, !dbg !1308

.critedge2:                                       ; preds = %.thread..critedge2_crit_edge, %0
  %45 = phi i32 [ %44, %0 ], [ %.pre, %.thread..critedge2_crit_edge ]
  %bRet.0 = phi i32 [ 0, %0 ], [ %bRet.1, %.thread..critedge2_crit_edge ]
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !381, metadata !651), !dbg !1309
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !382, metadata !651), !dbg !1310
  store i32 0, i32* %3, align 4, !dbg !1311, !tbaa !832
  store i32 0, i32* %4, align 4, !dbg !1312, !tbaa !836
  store i32 0, i32* %5, align 4, !dbg !1313, !tbaa !839
  store i32 0, i32* %6, align 4, !dbg !1314, !tbaa !842
  store i32 0, i32* %7, align 4, !dbg !1315, !tbaa !845
  store i32 0, i32* %8, align 4, !dbg !1316, !tbaa !848
  store i32 0, i32* %9, align 4, !dbg !1317, !tbaa !851
  store i32 0, i32* %10, align 4, !dbg !1318, !tbaa !854
  store i32 0, i32* %11, align 4, !dbg !1319, !tbaa !857
  store i32 0, i32* %12, align 4, !dbg !1320, !tbaa !860
  store i32 0, i32* %13, align 4, !dbg !1321, !tbaa !863
  %46 = load i32* %15, align 4, !dbg !1260, !tbaa !879
  store i32 %46, i32* %17, align 4, !dbg !1262, !tbaa !882
  store i32 %45, i32* %15, align 4, !dbg !1322, !tbaa !879
  %47 = call i32 @gmx_fio_getftp(i32 %status) #10, !dbg !1323
  switch i32 %47, label %129 [
    i32 5, label %48
    i32 4, label %48
    i32 39, label %48
    i32 14, label %108
    i32 7, label %114
    i32 6, label %119
    i32 15, label %123
    i32 13, label %126
  ], !dbg !1324

; <label>:48                                      ; preds = %.critedge2, %.critedge2, %.critedge2
  call void @llvm.lifetime.start(i64 4, i8* %22), !dbg !1273
  call void @llvm.dbg.value(metadata i32 %status, i64 0, metadata !523, metadata !651) #7, !dbg !1273
  call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !524, metadata !651) #7, !dbg !1325
  call void @llvm.lifetime.start(i64 60, i8* %23) #7, !dbg !1276
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !546, metadata !651) #7, !dbg !1326
  call void @llvm.dbg.value(metadata %struct.t_trnheader* %sh.i, i64 0, metadata !525, metadata !651) #7, !dbg !1327
  call void @llvm.dbg.value(metadata i32* %bOK.i, i64 0, metadata !545, metadata !651) #7, !dbg !1328
  %49 = call i32 @fread_trnheader(i32 %status, %struct.t_trnheader* %sh.i, i32* %bOK.i) #10, !dbg !1329
  %50 = icmp eq i32 %49, 0, !dbg !1329
  br i1 %50, label %104, label %51, !dbg !1330

; <label>:51                                      ; preds = %48
  %52 = load i32* %24, align 4, !dbg !1277, !tbaa !1331
  store i32 %52, i32* %25, align 4, !dbg !1333, !tbaa !873
  store i32 1, i32* %5, align 4, !dbg !1334, !tbaa !839
  %53 = load i32* %26, align 4, !dbg !1281, !tbaa !1335
  store i32 %53, i32* %27, align 4, !dbg !1336, !tbaa !888
  store i32 1, i32* %6, align 4, !dbg !1337, !tbaa !842
  %54 = load i32* %29, align 4, !dbg !1283, !tbaa !1338
  store i32 %54, i32* %18, align 4, !dbg !1339, !tbaa !891
  store i32 1, i32* %7, align 4, !dbg !1340, !tbaa !845
  %55 = load i32* %31, align 4, !dbg !1284, !tbaa !1341
  store i32 %55, i32* %33, align 4, !dbg !1286, !tbaa !894
  %56 = load i32* %34, align 4, !dbg !1287, !tbaa !1342
  %57 = icmp sgt i32 %56, 0, !dbg !1343
  %58 = zext i1 %57 to i32, !dbg !1343
  store i32 %58, i32* %13, align 4, !dbg !1344, !tbaa !863
  %59 = load i32* %19, align 4, !dbg !1345, !tbaa !870
  %60 = and i32 %59, 3, !dbg !1346
  %61 = icmp eq i32 %60, 0, !dbg !1346
  br i1 %61, label %71, label %62, !dbg !1347

; <label>:62                                      ; preds = %51
  %63 = load [3 x float]** %35, align 8, !dbg !1348, !tbaa !903
  %64 = icmp eq [3 x float]* %63, null, !dbg !1349
  br i1 %64, label %65, label %67, !dbg !1350

; <label>:65                                      ; preds = %62
  %66 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 360, i32 %52, i32 12) #10, !dbg !1302
  store i8* %66, i8** %41, align 8, !dbg !1302, !tbaa !903
  %.pre.pre.i = load i32* %19, align 4, !dbg !1351, !tbaa !870
  br label %67, !dbg !1302

; <label>:67                                      ; preds = %65, %62
  %.pre.i = phi i32 [ %.pre.pre.i, %65 ], [ %59, %62 ], !dbg !1288
  %68 = load i32* %42, align 4, !dbg !1306, !tbaa !1352
  %69 = icmp sgt i32 %68, 0, !dbg !1353
  %70 = zext i1 %69 to i32, !dbg !1353
  store i32 %70, i32* %10, align 4, !dbg !1354, !tbaa !854
  br label %71, !dbg !1355

; <label>:71                                      ; preds = %67, %51
  %72 = phi i32 [ %59, %51 ], [ %.pre.i, %67 ], !dbg !1288
  %73 = and i32 %72, 12, !dbg !1356
  %74 = icmp eq i32 %73, 0, !dbg !1356
  br i1 %74, label %85, label %75, !dbg !1357

; <label>:75                                      ; preds = %71
  %76 = load [3 x float]** %36, align 8, !dbg !1358, !tbaa !906
  %77 = icmp eq [3 x float]* %76, null, !dbg !1359
  br i1 %77, label %78, label %81, !dbg !1360

; <label>:78                                      ; preds = %75
  %79 = load i32* %24, align 4, !dbg !1297, !tbaa !1331
  %80 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 365, i32 %79, i32 12) #10, !dbg !1297
  store i8* %80, i8** %39, align 8, !dbg !1297, !tbaa !906
  %.pre1.pre.i = load i32* %19, align 4, !dbg !1361, !tbaa !870
  br label %81, !dbg !1297

; <label>:81                                      ; preds = %78, %75
  %.pre1.i = phi i32 [ %.pre1.pre.i, %78 ], [ %72, %75 ], !dbg !1288
  %82 = load i32* %40, align 4, !dbg !1301, !tbaa !1362
  %83 = icmp sgt i32 %82, 0, !dbg !1363
  %84 = zext i1 %83 to i32, !dbg !1363
  store i32 %84, i32* %11, align 4, !dbg !1364, !tbaa !857
  br label %85, !dbg !1365

; <label>:85                                      ; preds = %81, %71
  %86 = phi i32 [ %72, %71 ], [ %.pre1.i, %81 ], !dbg !1288
  %87 = and i32 %86, 48, !dbg !1366
  %88 = icmp eq i32 %87, 0, !dbg !1366
  %.pre2.i = load [3 x float]** %.phi.trans.insert.i, align 8, !dbg !1367, !tbaa !909
  br i1 %88, label %._crit_edge.i, label %89, !dbg !1368

; <label>:89                                      ; preds = %85
  %90 = icmp eq [3 x float]* %.pre2.i, null, !dbg !1369
  br i1 %90, label %91, label %95, !dbg !1370

; <label>:91                                      ; preds = %89
  %92 = load i32* %24, align 4, !dbg !1292, !tbaa !1331
  %93 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 370, i32 %92, i32 12) #10, !dbg !1292
  store i8* %93, i8** %37, align 8, !dbg !1292, !tbaa !909
  %94 = bitcast i8* %93 to [3 x float]*, !dbg !1288
  br label %95, !dbg !1292

; <label>:95                                      ; preds = %91, %89
  %96 = phi [3 x float]* [ %94, %91 ], [ %.pre2.i, %89 ], !dbg !1288
  %97 = load i32* %38, align 4, !dbg !1296, !tbaa !1371
  store i32 %97, i32* %12, align 4, !dbg !1372, !tbaa !860
  br label %._crit_edge.i, !dbg !1373

._crit_edge.i:                                    ; preds = %95, %85
  %98 = phi [3 x float]* [ %96, %95 ], [ %.pre2.i, %85 ], !dbg !1288
  %99 = load [3 x float]** %35, align 8, !dbg !1289, !tbaa !903
  %100 = load [3 x float]** %36, align 8, !dbg !1291, !tbaa !906
  call void @llvm.dbg.value(metadata %struct.t_trnheader* %sh.i, i64 0, metadata !525, metadata !651) #7, !dbg !1327
  %101 = call i32 @fread_htrn(i32 %status, %struct.t_trnheader* %sh.i, [3 x float]* %21, [3 x float]* %99, [3 x float]* %100, [3 x float]* %98) #10, !dbg !1374
  %102 = icmp eq i32 %101, 0, !dbg !1374
  br i1 %102, label %103, label %gmx_next_frame.exit, !dbg !1375

; <label>:103                                     ; preds = %._crit_edge.i
  store i32 2, i32* %3, align 4, !dbg !1376, !tbaa !832
  br label %gmx_next_frame.exit, !dbg !1288

; <label>:104                                     ; preds = %48
  call void @llvm.dbg.value(metadata i32* %bOK.i, i64 0, metadata !545, metadata !651) #7, !dbg !1328
  %105 = load i32* %bOK.i, align 4, !dbg !1377, !tbaa !815
  %106 = icmp eq i32 %105, 0, !dbg !1377
  br i1 %106, label %107, label %gmx_next_frame.exit, !dbg !1379

; <label>:107                                     ; preds = %104
  store i32 1, i32* %3, align 4, !dbg !1380, !tbaa !832
  br label %gmx_next_frame.exit, !dbg !1381

gmx_next_frame.exit:                              ; preds = %._crit_edge.i, %103, %104, %107
  %bRet.0.i = phi i32 [ 0, %103 ], [ 0, %104 ], [ 0, %107 ], [ 1, %._crit_edge.i ], !dbg !1288
  call void @llvm.lifetime.end(i64 60, i8* %23) #7, !dbg !1382
  call void @llvm.lifetime.end(i64 4, i8* %22), !dbg !1382
  call void @llvm.dbg.value(metadata i32 %bRet.0.i, i64 0, metadata !441, metadata !651), !dbg !1244
  br label %132, !dbg !1383

; <label>:108                                     ; preds = %.critedge2
  %109 = call %struct.__sFILE* @gmx_fio_getfp(i32 %status) #10, !dbg !1384
  %110 = call i32 @read_g96_conf(%struct.__sFILE* %109, i8* null, %struct.t_trxframe* %fr) #10, !dbg !1385
  %111 = load i32* %25, align 4, !dbg !1386, !tbaa !873
  %112 = icmp sgt i32 %111, 0, !dbg !1387
  %113 = zext i1 %112 to i32, !dbg !1387
  call void @llvm.dbg.value(metadata i32 %113, i64 0, metadata !441, metadata !651), !dbg !1244
  br label %132, !dbg !1388

; <label>:114                                     ; preds = %.critedge2
  %115 = call %struct.__sFILE* @gmx_fio_getfp(i32 %status) #10, !dbg !1389
  %116 = load i32* %25, align 4, !dbg !1390, !tbaa !873
  %117 = load [3 x float]** %35, align 8, !dbg !1391, !tbaa !903
  %118 = call fastcc i32 @xyz_next_x(%struct.__sFILE* %115, float* %1, i32 %116, [3 x float]* %117, [3 x float]* %21) #13, !dbg !1392
  call void @llvm.dbg.value(metadata i32 %118, i64 0, metadata !441, metadata !651), !dbg !1244
  store i32 %118, i32* %6, align 4, !dbg !1393, !tbaa !842
  store i32 %118, i32* %10, align 4, !dbg !1394, !tbaa !854
  store i32 %118, i32* %13, align 4, !dbg !1395, !tbaa !863
  br label %132, !dbg !1396

; <label>:119                                     ; preds = %.critedge2
  %120 = load i32* %25, align 4, !dbg !1397, !tbaa !873
  %121 = load [3 x float]** %35, align 8, !dbg !1398, !tbaa !903
  call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !440, metadata !651), !dbg !1399
  %122 = call i32 @read_next_xtc(i32 %status, i32 %120, i32* %27, float* %1, [3 x float]* %21, [3 x float]* %121, float* %43, i32* %bOK) #10, !dbg !1400
  call void @llvm.dbg.value(metadata i32 %122, i64 0, metadata !441, metadata !651), !dbg !1244
  store i32 %122, i32* %9, align 4, !dbg !1401, !tbaa !851
  store i32 %122, i32* %5, align 4, !dbg !1402, !tbaa !839
  store i32 %122, i32* %6, align 4, !dbg !1403, !tbaa !842
  store i32 %122, i32* %10, align 4, !dbg !1404, !tbaa !854
  store i32 %122, i32* %13, align 4, !dbg !1405, !tbaa !863
  br label %132, !dbg !1406

; <label>:123                                     ; preds = %.critedge2
  %124 = call %struct.__sFILE* @gmx_fio_getfp(i32 %status) #10, !dbg !1407
  %125 = call fastcc i32 @pdb_next_x(%struct.__sFILE* %124, %struct.t_trxframe* %fr) #13, !dbg !1408
  call void @llvm.dbg.value(metadata i32 %125, i64 0, metadata !441, metadata !651), !dbg !1244
  br label %132, !dbg !1409

; <label>:126                                     ; preds = %.critedge2
  %127 = call %struct.__sFILE* @gmx_fio_getfp(i32 %status) #10, !dbg !1410
  %128 = call i32 @gro_next_x_or_v(%struct.__sFILE* %127, %struct.t_trxframe* %fr) #10, !dbg !1411
  call void @llvm.dbg.value(metadata i32 %128, i64 0, metadata !441, metadata !651), !dbg !1244
  br label %132, !dbg !1412

; <label>:129                                     ; preds = %.critedge2
  %130 = call i32 @gmx_fio_getftp(i32 %status) #10, !dbg !1413
  %131 = call i8* @ftp2ext(i32 %130) #10, !dbg !1414
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0), i8* %131, i32 %status) #10, !dbg !1415
  br label %132, !dbg !1416

; <label>:132                                     ; preds = %129, %126, %123, %119, %114, %108, %gmx_next_frame.exit
  %bRet.1 = phi i32 [ %bRet.0, %129 ], [ %128, %126 ], [ %125, %123 ], [ %122, %119 ], [ %118, %114 ], [ %113, %108 ], [ %bRet.0.i, %gmx_next_frame.exit ]
  %133 = icmp eq i32 %bRet.1, 0, !dbg !1417
  br i1 %133, label %.thread9.thread, label %134, !dbg !1418

; <label>:134                                     ; preds = %132
  %135 = load i32* %19, align 4, !dbg !1264, !tbaa !870
  %136 = and i32 %135, 2, !dbg !1419
  %137 = icmp eq i32 %136, 0, !dbg !1419
  br i1 %137, label %141, label %138, !dbg !1420

; <label>:138                                     ; preds = %134
  %139 = load i32* %10, align 4, !dbg !1421, !tbaa !854
  %140 = icmp eq i32 %139, 0, !dbg !1422
  br i1 %140, label %.thread, label %141, !dbg !1423

; <label>:141                                     ; preds = %138, %134
  %142 = and i32 %135, 8, !dbg !1424
  %143 = icmp eq i32 %142, 0, !dbg !1424
  br i1 %143, label %147, label %144, !dbg !1425

; <label>:144                                     ; preds = %141
  %145 = load i32* %11, align 4, !dbg !1426, !tbaa !857
  %146 = icmp eq i32 %145, 0, !dbg !1427
  br i1 %146, label %.thread, label %147, !dbg !1428

; <label>:147                                     ; preds = %144, %141
  %148 = and i32 %135, 32, !dbg !1429
  %149 = icmp eq i32 %148, 0, !dbg !1429
  br i1 %149, label %.thread7, label %150, !dbg !1430

; <label>:150                                     ; preds = %147
  %151 = load i32* %12, align 4, !dbg !1431, !tbaa !860
  %152 = icmp eq i32 %151, 0, !dbg !1432
  %153 = zext i1 %152 to i32, !dbg !1428
  call void @llvm.dbg.value(metadata i32 %153, i64 0, metadata !442, metadata !651), !dbg !1242
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !443, metadata !651), !dbg !1243
  br i1 %152, label %.thread, label %.thread7, !dbg !1433

.thread7:                                         ; preds = %147, %150
  %154 = phi i32 [ %153, %150 ], [ 0, %147 ]
  %155 = load float* %1, align 4, !dbg !1434, !tbaa !891
  %156 = load float* %20, align 4, !dbg !1267, !tbaa !876
  %157 = load float* %14, align 4, !dbg !1435, !tbaa !879
  %158 = load float* %16, align 4, !dbg !1436, !tbaa !882
  %159 = call i32 @check_times2(float %155, float %156, float %157, float %158) #10, !dbg !1437
  call void @llvm.dbg.value(metadata i32 %159, i64 0, metadata !439, metadata !651), !dbg !1438
  %160 = icmp eq i32 %159, 0, !dbg !1439
  br i1 %160, label %166, label %161, !dbg !1440

; <label>:161                                     ; preds = %.thread7
  %162 = load i32* %19, align 4, !dbg !1441, !tbaa !870
  %163 = and i32 %162, 64, !dbg !1442
  %164 = icmp ne i32 %163, 0, !dbg !1442
  %165 = icmp slt i32 %159, 0, !dbg !1443
  %or.cond = and i1 %165, %164, !dbg !1444
  br i1 %or.cond, label %166, label %171, !dbg !1444

; <label>:166                                     ; preds = %161, %.thread7
  %167 = load float* %1, align 4, !dbg !1445, !tbaa !891
  %168 = load float* %20, align 4, !dbg !1446, !tbaa !876
  %169 = load float* %14, align 4, !dbg !1447, !tbaa !879
  %170 = load float* %16, align 4, !dbg !1448, !tbaa !882
  call fastcc void @printcount2(float %167, float %168, float %169, float %170) #13, !dbg !1449
  call void @init_pbc([3 x float]* %21) #10, !dbg !1450
  br label %.thread, !dbg !1451

; <label>:171                                     ; preds = %161
  %172 = icmp sgt i32 %159, 0, !dbg !1452
  br i1 %172, label %.thread9.thread, label %173, !dbg !1454

; <label>:173                                     ; preds = %171
  %174 = load float* %1, align 4, !dbg !1455, !tbaa !891
  %175 = load float* %20, align 4, !dbg !1457, !tbaa !876
  %176 = load float* %14, align 4, !dbg !1458, !tbaa !879
  %177 = load float* %16, align 4, !dbg !1459, !tbaa !882
  call fastcc void @printcount2(float %174, float %175, float %176, float %177) #13, !dbg !1460
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !443, metadata !651), !dbg !1243
  br label %.thread

.thread:                                          ; preds = %138, %144, %166, %173, %150
  %bMissingData.1 = phi i32 [ %153, %150 ], [ %154, %166 ], [ %154, %173 ], [ 1, %144 ], [ 1, %138 ]
  %bSkip.1 = phi i32 [ 0, %150 ], [ 0, %166 ], [ 1, %173 ], [ 0, %144 ], [ 0, %138 ]
  %178 = or i32 %bSkip.1, %bMissingData.1
  %179 = icmp eq i32 %178, 0, !dbg !1461
  br i1 %179, label %printincomp.exit, label %.thread..critedge2_crit_edge, !dbg !1462

.thread..critedge2_crit_edge:                     ; preds = %.thread
  %.pre = load i32* %18, align 4, !dbg !1263, !tbaa !891
  br label %.critedge2, !dbg !1462

.thread9.thread:                                  ; preds = %132, %171
  call fastcc void @printlast(float %2) #13, !dbg !1463
  %180 = load i32* %3, align 4, !dbg !1466, !tbaa !832
  %181 = icmp eq i32 %180, 0, !dbg !1468
  br i1 %181, label %printincomp.exit, label %182, !dbg !1469

; <label>:182                                     ; preds = %.thread9.thread
  call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !603, metadata !651) #7, !dbg !1470
  %183 = and i32 %180, 1, !dbg !1472
  %184 = icmp eq i32 %183, 0, !dbg !1472
  %185 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1474, !tbaa !1476
  %186 = load i32* @__frame, align 4, !dbg !1477, !tbaa !815
  %187 = add nsw i32 %186, 1, !dbg !1478
  %188 = load float* %1, align 4, !dbg !1479, !tbaa !891
  %189 = fpext float %188 to double, !dbg !1480
  br i1 %184, label %192, label %190, !dbg !1481

; <label>:190                                     ; preds = %182
  %191 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %185, i8* getelementptr inbounds ([43 x i8]* @.str29, i64 0, i64 0), i32 %187, double %189) #10, !dbg !1482
  br label %printincomp.exit, !dbg !1482

; <label>:192                                     ; preds = %182
  %193 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %185, i8* getelementptr inbounds ([42 x i8]* @.str30, i64 0, i64 0), i32 %187, double %189) #10, !dbg !1483
  br label %printincomp.exit, !dbg !1483

printincomp.exit:                                 ; preds = %.thread, %192, %190, %.thread9.thread
  %bRet.21214 = phi i32 [ 0, %.thread9.thread ], [ 0, %190 ], [ 0, %192 ], [ %bRet.1, %.thread ]
  ret i32 %bRet.21214, !dbg !1484
}

; Function Attrs: optsize
declare i32 @read_g96_conf(%struct.__sFILE*, i8*, %struct.t_trxframe*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @xyz_next_x(%struct.__sFILE* nocapture %status, float* nocapture %t, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* nocapture %box) #5 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %status, i64 0, metadata !551, metadata !651), !dbg !1485
  tail call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !552, metadata !651), !dbg !1486
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !553, metadata !651), !dbg !1487
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !554, metadata !651), !dbg !1488
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !555, metadata !651), !dbg !1489
  %1 = load float* %t, align 4, !dbg !1490, !tbaa !779
  tail call void @llvm.dbg.value(metadata float %1, i64 0, metadata !556, metadata !651), !dbg !1491
  %2 = load float* @tbegin, align 4, !dbg !1492, !tbaa !779
  %3 = fcmp ult float %2, 0.000000e+00, !dbg !1493
  br i1 %3, label %.critedge, label %.lr.ph, !dbg !1494

.lr.ph:                                           ; preds = %0, %10
  %4 = phi float [ %17, %10 ], [ %2, %0 ]
  %5 = phi float [ %16, %10 ], [ %1, %0 ]
  %6 = fcmp olt float %5, %4, !dbg !1495
  br i1 %6, label %7, label %.critedge, !dbg !1496

; <label>:7                                       ; preds = %.lr.ph
  %8 = tail call fastcc i32 @do_read_xyz(%struct.__sFILE* %status, i32 %natoms, [3 x float]* %x, [3 x float]* %box) #13, !dbg !1497
  %9 = icmp eq i32 %8, 0, !dbg !1497
  br i1 %9, label %.loopexit, label %10, !dbg !1500

; <label>:10                                      ; preds = %7
  %11 = load float* %t, align 4, !dbg !1501, !tbaa !779
  tail call void @llvm.dbg.value(metadata float %11, i64 0, metadata !623, metadata !651) #7, !dbg !1502
  tail call fastcc void @printcount2(float %11, float %11, float %11, float %11) #10, !dbg !1504
  %12 = load double* @DT, align 8, !dbg !1505, !tbaa !792
  %13 = load float* %t, align 4, !dbg !1506, !tbaa !779
  %14 = fpext float %13 to double, !dbg !1506
  %15 = fadd double %12, %14, !dbg !1506
  %16 = fptrunc double %15 to float, !dbg !1506
  store float %16, float* %t, align 4, !dbg !1506, !tbaa !779
  tail call void @llvm.dbg.value(metadata float %16, i64 0, metadata !556, metadata !651), !dbg !1491
  %17 = load float* @tbegin, align 4, !dbg !1492, !tbaa !779
  %18 = fcmp ult float %17, 0.000000e+00, !dbg !1493
  br i1 %18, label %.critedge, label %.lr.ph, !dbg !1494

.critedge:                                        ; preds = %.lr.ph, %10, %0
  %19 = phi float [ %1, %0 ], [ %5, %.lr.ph ], [ %16, %10 ]
  %20 = load float* @tend, align 4, !dbg !1507, !tbaa !779
  %21 = fcmp ult float %20, 0.000000e+00, !dbg !1509
  br i1 %21, label %25, label %22, !dbg !1510

; <label>:22                                      ; preds = %.critedge
  %23 = fcmp olt float %19, %20, !dbg !1511
  %24 = fcmp olt float %20, 0.000000e+00, !dbg !1512
  %or.cond = or i1 %24, %23, !dbg !1513
  br i1 %or.cond, label %26, label %37, !dbg !1513

; <label>:25                                      ; preds = %.critedge
  %.old1 = fcmp olt float %20, 0.000000e+00, !dbg !1512
  br i1 %.old1, label %26, label %37, !dbg !1514

; <label>:26                                      ; preds = %25, %22
  %27 = tail call fastcc i32 @do_read_xyz(%struct.__sFILE* %status, i32 %natoms, [3 x float]* %x, [3 x float]* %box) #13, !dbg !1515
  %28 = icmp eq i32 %27, 0, !dbg !1515
  %29 = load float* %t, align 4, !dbg !1518, !tbaa !779
  br i1 %28, label %30, label %31, !dbg !1519

; <label>:30                                      ; preds = %26
  tail call fastcc void @printlast(float %29) #13, !dbg !1520
  br label %.loopexit, !dbg !1522

; <label>:31                                      ; preds = %26
  tail call void @llvm.dbg.value(metadata float %29, i64 0, metadata !623, metadata !651) #7, !dbg !1523
  tail call fastcc void @printcount2(float %29, float %29, float %29, float %29) #10, !dbg !1525
  %32 = load double* @DT, align 8, !dbg !1526, !tbaa !792
  %33 = load float* %t, align 4, !dbg !1527, !tbaa !779
  %34 = fpext float %33 to double, !dbg !1527
  %35 = fadd double %32, %34, !dbg !1527
  %36 = fptrunc double %35 to float, !dbg !1527
  store float %36, float* %t, align 4, !dbg !1527, !tbaa !779
  br label %.loopexit, !dbg !1528

; <label>:37                                      ; preds = %22, %25
  tail call fastcc void @printlast(float %19) #13, !dbg !1529
  br label %.loopexit, !dbg !1530

.loopexit:                                        ; preds = %7, %37, %31, %30
  %.0 = phi i32 [ 1, %31 ], [ 0, %30 ], [ 0, %37 ], [ 0, %7 ]
  ret i32 %.0, !dbg !1531
}

; Function Attrs: optsize
declare i32 @read_next_xtc(i32, i32, i32*, float*, [3 x float]*, [3 x float]*, float*, i32*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @pdb_next_x(%struct.__sFILE* %status, %struct.t_trxframe* %fr) #5 {
  %atoms = alloca %struct.t_atoms, align 8
  %model_nr = alloca i32, align 4
  %title = alloca [4096 x i8], align 16
  %dbl = alloca double, align 8
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %status, i64 0, metadata !572, metadata !651), !dbg !1532
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !573, metadata !651), !dbg !1533
  %1 = bitcast %struct.t_atoms* %atoms to i8*, !dbg !1534
  call void @llvm.lifetime.start(i64 1280, i8* %1) #7, !dbg !1534
  %2 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0, !dbg !1535
  call void @llvm.lifetime.start(i64 4096, i8* %2) #7, !dbg !1535
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %title, metadata !577, metadata !651), !dbg !1536
  %3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1537
  %4 = load i32* %3, align 4, !dbg !1537, !tbaa !873
  %5 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !1538
  store i32 %4, i32* %5, align 8, !dbg !1539, !tbaa !1540
  %6 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !1543
  store %struct.t_atom* null, %struct.t_atom** %6, align 8, !dbg !1544, !tbaa !1545
  %7 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11, !dbg !1546
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %7, align 8, !dbg !1547, !tbaa !1548
  tail call void @llvm.dbg.value(metadata i32 -12345, i64 0, metadata !575, metadata !651), !dbg !1549
  store i32 -12345, i32* %model_nr, align 4, !dbg !1550, !tbaa !815
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1551
  %9 = load [3 x float]** %8, align 8, !dbg !1551, !tbaa !903
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, !dbg !1552
  %11 = getelementptr inbounds [3 x [3 x float]]* %10, i64 0, i64 0, !dbg !1553
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !574, metadata !651), !dbg !1554
  tail call void @llvm.dbg.value(metadata i32* %model_nr, i64 0, metadata !575, metadata !651), !dbg !1549
  %12 = call i32 @read_pdbfile(%struct.__sFILE* %status, i8* %2, i32* %model_nr, %struct.t_atoms* %atoms, [3 x float]* %9, [3 x float]* %11, i32 1) #10, !dbg !1555
  call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !576, metadata !651), !dbg !1556
  %13 = load i32* @__frame, align 4, !dbg !1557, !tbaa !815
  %14 = icmp eq i32 %13, 0, !dbg !1560
  br i1 %14, label %15, label %19, !dbg !1561

; <label>:15                                      ; preds = %0
  %16 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1562, !tbaa !1476
  %17 = load i32* %3, align 4, !dbg !1563, !tbaa !873
  %18 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([17 x i8]* @.str21, i64 0, i64 0), i8* %2, i32 %17) #10, !dbg !1564
  br label %19, !dbg !1564

; <label>:19                                      ; preds = %15, %0
  %20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !1565
  store i32 1, i32* %20, align 4, !dbg !1566, !tbaa !851
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17, !dbg !1567
  store float 1.000000e+04, float* %21, align 4, !dbg !1568, !tbaa !900
  %22 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1569
  store i32 1, i32* %22, align 4, !dbg !1570, !tbaa !854
  %23 = getelementptr inbounds [3 x [3 x float]]* %10, i64 0, i64 0, i64 0, !dbg !1571
  %24 = load float* %23, align 4, !dbg !1571, !tbaa !779
  %fabsf = call float @fabsf(float %24) #6, !dbg !1572
  %25 = fpext float %fabsf to double, !dbg !1572
  %26 = fcmp olt double %25, 1.200000e-38, !dbg !1573
  %27 = zext i1 %26 to i32, !dbg !1573
  %28 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1574
  store i32 %27, i32* %28, align 4, !dbg !1575, !tbaa !863
  call void @llvm.dbg.value(metadata i32* %model_nr, i64 0, metadata !575, metadata !651), !dbg !1549
  %29 = load i32* %model_nr, align 4, !dbg !1576, !tbaa !815
  %30 = icmp eq i32 %29, -12345, !dbg !1578
  br i1 %30, label %34, label %31, !dbg !1579

; <label>:31                                      ; preds = %19
  %32 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !1580
  store i32 1, i32* %32, align 4, !dbg !1582, !tbaa !839
  call void @llvm.dbg.value(metadata i32* %model_nr, i64 0, metadata !575, metadata !651), !dbg !1549
  %33 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !1583
  store i32 %29, i32* %33, align 4, !dbg !1584, !tbaa !888
  br label %34, !dbg !1585

; <label>:34                                      ; preds = %19, %31
  %35 = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0)) #10, !dbg !1586
  call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !578, metadata !651), !dbg !1587
  %36 = icmp eq i8* %35, null, !dbg !1588
  %37 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !1590
  br i1 %36, label %44, label %38, !dbg !1592

; <label>:38                                      ; preds = %34
  store i32 1, i32* %37, align 4, !dbg !1593, !tbaa !842
  %39 = getelementptr inbounds i8* %35, i64 4, !dbg !1594
  call void @llvm.dbg.value(metadata double* %dbl, i64 0, metadata !579, metadata !651), !dbg !1595
  %40 = call i32 (i8*, i8*, ...)* @sscanf(i8* %39, i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0), double* %dbl) #10, !dbg !1596
  call void @llvm.dbg.value(metadata double* %dbl, i64 0, metadata !579, metadata !651), !dbg !1595
  %41 = load double* %dbl, align 8, !dbg !1597, !tbaa !792
  %42 = fptrunc double %41 to float, !dbg !1598
  %43 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1599
  store float %42, float* %43, align 4, !dbg !1600, !tbaa !891
  br label %57, !dbg !1601

; <label>:44                                      ; preds = %34
  store i32 0, i32* %37, align 4, !dbg !1602, !tbaa !842
  %45 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !1604
  %46 = load i32* %45, align 4, !dbg !1604, !tbaa !839
  %47 = icmp eq i32 %46, 0, !dbg !1606
  br i1 %47, label %53, label %48, !dbg !1607

; <label>:48                                      ; preds = %44
  %49 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !1608
  %50 = load i32* %49, align 4, !dbg !1608, !tbaa !888
  %51 = sitofp i32 %50 to float, !dbg !1609
  %52 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1610
  store float %51, float* %52, align 4, !dbg !1611, !tbaa !891
  br label %57, !dbg !1612

; <label>:53                                      ; preds = %44
  %54 = load i32* @__frame, align 4, !dbg !1613, !tbaa !815
  %55 = sitofp i32 %54 to float, !dbg !1615
  %56 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1616
  store float %55, float* %56, align 4, !dbg !1617, !tbaa !891
  br label %57

; <label>:57                                      ; preds = %48, %53, %38
  %58 = icmp eq i32 %12, 0, !dbg !1618
  br i1 %58, label %64, label %59, !dbg !1620

; <label>:59                                      ; preds = %57
  %60 = load i32* %3, align 4, !dbg !1621, !tbaa !873
  %61 = icmp eq i32 %12, %60, !dbg !1624
  br i1 %61, label %64, label %62, !dbg !1625

; <label>:62                                      ; preds = %59
  %63 = load i32* @__frame, align 4, !dbg !1626, !tbaa !815
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([52 x i8]* @.str23, i64 0, i64 0), i32 %63, i32 %12, i32 %60) #10, !dbg !1628
  br label %64, !dbg !1628

; <label>:64                                      ; preds = %62, %59, %57
  %.0 = phi i32 [ 0, %57 ], [ 1, %59 ], [ 1, %62 ]
  call void @llvm.lifetime.end(i64 4096, i8* %2) #7, !dbg !1629
  call void @llvm.lifetime.end(i64 1280, i8* %1) #7, !dbg !1629
  ret i32 %.0, !dbg !1629
}

; Function Attrs: optsize
declare i32 @gro_next_x_or_v(%struct.__sFILE*, %struct.t_trxframe*) #2

; Function Attrs: optsize
declare i32 @check_times2(float, float, float, float) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @printcount2(float %t, float %t0, float %tpf, float %tppf) #5 {
  tail call void @llvm.dbg.value(metadata float %t, i64 0, metadata !584, metadata !651), !dbg !1630
  tail call void @llvm.dbg.value(metadata float %t0, i64 0, metadata !585, metadata !651), !dbg !1631
  tail call void @llvm.dbg.value(metadata float %tpf, i64 0, metadata !586, metadata !651), !dbg !1632
  tail call void @llvm.dbg.value(metadata float %tppf, i64 0, metadata !587, metadata !651), !dbg !1633
  %1 = load i32* @__frame, align 4, !dbg !1634, !tbaa !815
  %2 = add nsw i32 %1, 1, !dbg !1634
  store i32 %2, i32* @__frame, align 4, !dbg !1634, !tbaa !815
  %3 = srem i32 %2, 10, !dbg !1635
  %4 = icmp eq i32 %3, 0, !dbg !1637
  %5 = icmp slt i32 %2, 10, !dbg !1638
  %or.cond = or i1 %4, %5, !dbg !1639
  br i1 %or.cond, label %6, label %15, !dbg !1639

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @check_times2(float %t, float %t0, float %tpf, float %tppf) #10, !dbg !1640
  %8 = icmp slt i32 %7, 0, !dbg !1641
  %9 = select i1 %8, i8* getelementptr inbounds ([15 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0), !dbg !1640
  tail call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !592, metadata !651) #7, !dbg !1642
  tail call void @llvm.dbg.value(metadata float %t, i64 0, metadata !593, metadata !651) #7, !dbg !1644
  %10 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1645, !tbaa !1476
  %11 = load i32* @__frame, align 4, !dbg !1646, !tbaa !815
  %12 = tail call float @convert_time(float %t) #10, !dbg !1647
  %13 = fpext float %12 to double, !dbg !1647
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([25 x i8]* @.str26, i64 0, i64 0), i8* %9, i32 %11, double %13) #10, !dbg !1648
  br label %15, !dbg !1649

; <label>:15                                      ; preds = %0, %6
  ret void, !dbg !1650
}

; Function Attrs: optsize
declare void @init_pbc([3 x float]*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @printlast(float %t) #5 {
  tail call void @llvm.dbg.value(metadata float %t, i64 0, metadata !598, metadata !651), !dbg !1651
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0), i64 0, metadata !592, metadata !651) #7, !dbg !1652
  tail call void @llvm.dbg.value(metadata float %t, i64 0, metadata !593, metadata !651) #7, !dbg !1654
  %1 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1655, !tbaa !1476
  %2 = load i32* @__frame, align 4, !dbg !1656, !tbaa !815
  %3 = tail call float @convert_time(float %t) #10, !dbg !1657
  %4 = fpext float %3 to double, !dbg !1657
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([25 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0), i32 %2, double %4) #10, !dbg !1658
  %6 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1659, !tbaa !1476
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %6), !dbg !1660
  ret void, !dbg !1661
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_first_frame(i32* nocapture %status, i8* %fn, %struct.t_trxframe* %fr, i32 %flags) #5 {
  %i.i.i = alloca i32, align 4
  %bOK = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32* %status, i64 0, metadata !448, metadata !651), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !449, metadata !651), !dbg !1663
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !450, metadata !651), !dbg !1664
  tail call void @llvm.dbg.value(metadata i32 %flags, i64 0, metadata !451, metadata !651), !dbg !1665
  tail call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #13, !dbg !1666
  %1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0, !dbg !1667
  store i32 %flags, i32* %1, align 4, !dbg !1668, !tbaa !870
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !453, metadata !651), !dbg !1669
  store i32 -1, i32* @__frame, align 4, !dbg !1670, !tbaa !815
  %2 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #10, !dbg !1671
  store i32 %2, i32* %status, align 4, !dbg !1672, !tbaa !815
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !452, metadata !651), !dbg !1673
  %3 = tail call i32 @gmx_fio_getftp(i32 %2) #10, !dbg !1674
  switch i32 %3, label %.critedge [
    i32 5, label %.critedge3
    i32 4, label %.critedge3
    i32 39, label %.critedge3
    i32 14, label %4
    i32 7, label %36
    i32 6, label %104
    i32 15, label %120
    i32 13, label %138
  ], !dbg !1675

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %2) #10, !dbg !1676
  %6 = tail call i32 @read_g96_conf(%struct.__sFILE* %5, i8* %fn, %struct.t_trxframe* %fr) #10, !dbg !1678
  tail call void @gmx_fio_close(i32 %2) #10, !dbg !1679
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !381, metadata !651), !dbg !1680
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !382, metadata !651), !dbg !1682
  %7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 1, !dbg !1683
  store i32 0, i32* %7, align 4, !dbg !1684, !tbaa !832
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6, !dbg !1685
  store i32 0, i32* %8, align 4, !dbg !1686, !tbaa !836
  %9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !1687
  store i32 0, i32* %9, align 4, !dbg !1688, !tbaa !839
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !1689
  store i32 0, i32* %10, align 4, !dbg !1690, !tbaa !842
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 12, !dbg !1691
  store i32 0, i32* %11, align 4, !dbg !1692, !tbaa !845
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14, !dbg !1693
  store i32 0, i32* %12, align 4, !dbg !1694, !tbaa !848
  %13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !1695
  store i32 0, i32* %13, align 4, !dbg !1696, !tbaa !851
  %14 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1697
  store i32 0, i32* %14, align 4, !dbg !1698, !tbaa !854
  %15 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !1699
  store i32 0, i32* %15, align 4, !dbg !1700, !tbaa !857
  %16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22, !dbg !1701
  store i32 0, i32* %16, align 4, !dbg !1702, !tbaa !860
  %17 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1703
  store i32 0, i32* %17, align 4, !dbg !1704, !tbaa !863
  %18 = and i32 %flags, 3, !dbg !1705
  %19 = icmp eq i32 %18, 0, !dbg !1705
  br i1 %19, label %26, label %20, !dbg !1707

; <label>:20                                      ; preds = %4
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1708
  %22 = load i32* %21, align 4, !dbg !1708, !tbaa !873
  %23 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 692, i32 %22, i32 12) #10, !dbg !1708
  %24 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1708
  %25 = bitcast [3 x float]** %24 to i8**, !dbg !1708
  store i8* %23, i8** %25, align 8, !dbg !1708, !tbaa !903
  br label %26, !dbg !1708

; <label>:26                                      ; preds = %4, %20
  %27 = and i32 %flags, 12, !dbg !1709
  %28 = icmp eq i32 %27, 0, !dbg !1709
  br i1 %28, label %.critedge2, label %29, !dbg !1711

; <label>:29                                      ; preds = %26
  %30 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1712
  %31 = load i32* %30, align 4, !dbg !1712, !tbaa !873
  %32 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 694, i32 %31, i32 12) #10, !dbg !1712
  %33 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !1712
  %34 = bitcast [3 x float]** %33 to i8**, !dbg !1712
  store i8* %32, i8** %34, align 8, !dbg !1712, !tbaa !906
  br label %.critedge2, !dbg !1712

.critedge2:                                       ; preds = %26, %29
  %35 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #10, !dbg !1713
  store i32 %35, i32* %status, align 4, !dbg !1714, !tbaa !815
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !452, metadata !651), !dbg !1673
  br label %.critedge3

; <label>:36                                      ; preds = %0
  %37 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %2) #10, !dbg !1715
  %38 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1716
  %39 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1717
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %37, i64 0, metadata !608, metadata !651) #7, !dbg !1718
  tail call void @llvm.dbg.value(metadata float* %38, i64 0, metadata !609, metadata !651) #7, !dbg !1720
  tail call void @llvm.dbg.value(metadata [3 x float]** %51, i64 0, metadata !610, metadata !651) #7, !dbg !1721
  tail call void @llvm.dbg.value(metadata [3 x float]* %39, i64 0, metadata !611, metadata !651) #7, !dbg !1722
  store i32 -1, i32* @__frame, align 4, !dbg !1723, !tbaa !815
  tail call void @llvm.dbg.value(metadata [3 x float]* %39, i64 0, metadata !505, metadata !651) #7, !dbg !1724
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !506, metadata !651) #7, !dbg !1726
  %40 = bitcast [3 x float]* %39 to i8*, !dbg !1727
  tail call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 36, i32 4, i1 false) #7, !dbg !1728
  %41 = bitcast i32* %i.i.i to i8*, !dbg !1729
  call void @llvm.lifetime.start(i64 4, i8* %41) #7, !dbg !1729
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %37, i64 0, metadata !617, metadata !651) #7, !dbg !1729
  %puts.i.i = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8]* @str, i64 0, i64 0)) #7, !dbg !1731
  %puts2.i.i = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8]* @str51, i64 0, i64 0)) #7, !dbg !1732
  %puts3.i.i = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str52, i64 0, i64 0)) #7, !dbg !1733
  %puts4.i.i = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8]* @str53, i64 0, i64 0)) #7, !dbg !1734
  %puts5.i.i = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str54, i64 0, i64 0)) #7, !dbg !1735
  %puts6.i.i = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str55, i64 0, i64 0)) #7, !dbg !1736
  %puts7.i.i = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str56, i64 0, i64 0)) #7, !dbg !1737
  br label %.critedge.i.i, !dbg !1738

.critedge.i.i:                                    ; preds = %.critedge.i.i, %36
  %42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str39, i64 0, i64 0)) #10, !dbg !1739
  %43 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !1741, !tbaa !1476
  %44 = call i32 @fflush(%struct.__sFILE* %43) #10, !dbg !1742
  call void @llvm.dbg.value(metadata i32* %i.i.i, i64 0, metadata !618, metadata !651) #7, !dbg !1743
  %45 = call i32 (i8*, ...)* @scanf(i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i32* %i.i.i) #10, !dbg !1744
  call void @llvm.dbg.value(metadata i32* %i.i.i, i64 0, metadata !618, metadata !651) #7, !dbg !1743
  %46 = load i32* %i.i.i, align 4, !dbg !1745, !tbaa !815
  %47 = add nsw i32 %46, -1, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !618, metadata !651) #7, !dbg !1743
  store i32 %47, i32* %i.i.i, align 4, !dbg !1745, !tbaa !815
  %48 = icmp slt i32 %46, 1, !dbg !1746
  %49 = icmp sgt i32 %47, 3, !dbg !1747
  %or.cond.i.i = or i1 %48, %49, !dbg !1748
  br i1 %or.cond.i.i, label %.critedge.i.i, label %50, !dbg !1748

; <label>:50                                      ; preds = %.critedge.i.i
  %51 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1749
  %putchar.i.i = call i32 @putchar(i32 10) #7, !dbg !1750
  call void @llvm.dbg.value(metadata i32* %i.i.i, i64 0, metadata !618, metadata !651) #7, !dbg !1743
  %52 = load i32* %i.i.i, align 4, !dbg !1751, !tbaa !815
  store i32 %52, i32* @eFF, align 4, !dbg !1752, !tbaa !679
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !619, metadata !651) #7, !dbg !1753
  call void @llvm.memset.p0i8.i64(i8* bitcast ([3 x double]* @BOX to i8*), i8 0, i64 24, i32 16, i1 false) #7, !dbg !1754
  %53 = and i32 %52, -3, !dbg !1757
  %54 = icmp eq i32 %53, 1, !dbg !1757
  %55 = zext i1 %54 to i32, !dbg !1757
  store i32 %55, i32* @bReadBox, align 4, !dbg !1758, !tbaa !815
  switch i32 %52, label %79 [
    i32 0, label %56
    i32 1, label %56
    i32 2, label %58
    i32 3, label %58
  ], !dbg !1759

; <label>:56                                      ; preds = %50, %50
  %57 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %37, i8* getelementptr inbounds ([15 x i8]* @.str41, i64 0, i64 0), i32* @NATOMS, double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 0), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 1), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 2), double* @DT) #10, !dbg !1760
  br label %choose_ff.exit.i, !dbg !1762

; <label>:58                                      ; preds = %50, %50
  %puts8.i.i = call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str57, i64 0, i64 0)) #7, !dbg !1763
  %59 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str43, i64 0, i64 0)) #10, !dbg !1764
  %60 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !1765, !tbaa !1476
  %61 = call i32 @fflush(%struct.__sFILE* %60) #10, !dbg !1766
  %62 = call i32 (i8*, ...)* @scanf(i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i32* @NATOMS) #10, !dbg !1767
  %63 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str44, i64 0, i64 0)) #10, !dbg !1768
  %64 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !1769, !tbaa !1476
  %65 = call i32 @fflush(%struct.__sFILE* %64) #10, !dbg !1770
  %66 = call i32 (i8*, ...)* @scanf(i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0), double* @DT) #10, !dbg !1771
  %67 = load i32* @eFF, align 4, !dbg !1772, !tbaa !679
  %68 = icmp eq i32 %67, 2, !dbg !1774
  br i1 %68, label %69, label %.preheader.i.i, !dbg !1775

; <label>:69                                      ; preds = %58
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str45, i64 0, i64 0)) #10, !dbg !1776
  %71 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !1778, !tbaa !1476
  %72 = call i32 @fflush(%struct.__sFILE* %71) #10, !dbg !1779
  %73 = call i32 (i8*, ...)* @scanf(i8* getelementptr inbounds ([10 x i8]* @.str46, i64 0, i64 0), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 0), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 1), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 2)) #10, !dbg !1780
  br label %.preheader.i.i, !dbg !1781

.preheader.i.i:                                   ; preds = %69, %58, %.preheader.i.i
  %74 = call i32 @fgetc(%struct.__sFILE* %37) #10, !dbg !1782
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !620, metadata !651) #7, !dbg !1784
  %putchar9.i.i = call i32 @putchar(i32 %74) #7, !dbg !1785
  %75 = icmp eq i32 %74, 10, !dbg !1786
  br i1 %75, label %76, label %.preheader.i.i, !dbg !1787

; <label>:76                                      ; preds = %.preheader.i.i
  %putchar10.i.i = call i32 @putchar(i32 10) #7, !dbg !1788
  %77 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !1789, !tbaa !1476
  %78 = call i32 @fflush(%struct.__sFILE* %77) #10, !dbg !1790
  br label %choose_ff.exit.i, !dbg !1791

; <label>:79                                      ; preds = %50
  %puts11.i.i = call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str58, i64 0, i64 0)) #7, !dbg !1792
  br label %choose_ff.exit.i, !dbg !1793

choose_ff.exit.i:                                 ; preds = %79, %76, %56
  call void @llvm.lifetime.end(i64 4, i8* %41) #7, !dbg !1794
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !612, metadata !651) #7, !dbg !1795
  br label %80, !dbg !1796

; <label>:80                                      ; preds = %80, %choose_ff.exit.i
  %indvars.iv.i = phi i64 [ 0, %choose_ff.exit.i ], [ %indvars.iv.next.i, %80 ], !dbg !1798
  %81 = getelementptr inbounds [3 x double]* @BOX, i64 0, i64 %indvars.iv.i, !dbg !1799
  %82 = load double* %81, align 8, !dbg !1799, !tbaa !792
  %83 = fptrunc double %82 to float, !dbg !1799
  %84 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 %indvars.iv.i, i64 %indvars.iv.i, !dbg !1801
  store float %83, float* %84, align 4, !dbg !1802, !tbaa !779
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1796
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 3, !dbg !1796
  br i1 %exitcond.i, label %85, label %80, !dbg !1796

; <label>:85                                      ; preds = %80
  %86 = load i32* @NATOMS, align 4, !dbg !1803, !tbaa !815
  %87 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 514, i32 %86, i32 12) #10, !dbg !1803
  %88 = bitcast [3 x float]** %51 to i8**, !dbg !1803
  store i8* %87, i8** %88, align 8, !dbg !1803, !tbaa !1476
  %89 = load double* @DT, align 8, !dbg !1804, !tbaa !792
  %90 = fptrunc double %89 to float, !dbg !1804
  store float %90, float* %38, align 4, !dbg !1805, !tbaa !779
  %91 = load i32* @NATOMS, align 4, !dbg !1806, !tbaa !815
  %92 = bitcast i8* %87 to [3 x float]*, !dbg !1798
  %93 = call fastcc i32 @xyz_next_x(%struct.__sFILE* %37, float* %38, i32 %91, [3 x float]* %92, [3 x float]* %39) #10, !dbg !1808
  %94 = icmp eq i32 %93, 0, !dbg !1808
  br i1 %94, label %xyz_first_x.exit.thread, label %xyz_first_x.exit, !dbg !1809

xyz_first_x.exit.thread:                          ; preds = %85
  %95 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1810
  store i32 0, i32* %95, align 4, !dbg !1811, !tbaa !873
  br label %145, !dbg !1812

xyz_first_x.exit:                                 ; preds = %85
  store float 0.000000e+00, float* %38, align 4, !dbg !1813, !tbaa !779
  call void @init_pbc([3 x float]* %39) #10, !dbg !1814
  %96 = load i32* @NATOMS, align 4, !dbg !1815, !tbaa !815
  %97 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1810
  store i32 %96, i32* %97, align 4, !dbg !1811, !tbaa !873
  %98 = icmp eq i32 %96, 0, !dbg !1816
  br i1 %98, label %145, label %99, !dbg !1812

; <label>:99                                      ; preds = %xyz_first_x.exit
  %100 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !1818
  store i32 1, i32* %100, align 4, !dbg !1820, !tbaa !842
  %101 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1821
  store i32 1, i32* %101, align 4, !dbg !1822, !tbaa !854
  %102 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1823
  store i32 1, i32* %102, align 4, !dbg !1824, !tbaa !863
  %103 = load float* %38, align 4, !dbg !1825, !tbaa !891
  call void @llvm.dbg.value(metadata float %103, i64 0, metadata !623, metadata !651) #7, !dbg !1826
  call fastcc void @printcount2(float %103, float %103, float %103, float %103) #10, !dbg !1828
  br label %145, !dbg !1829

; <label>:104                                     ; preds = %0
  %105 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1830
  %106 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9, !dbg !1832
  %107 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1833
  %108 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !1834
  %109 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1835
  %110 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17, !dbg !1836
  tail call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !454, metadata !651), !dbg !1837
  %111 = call i32 @read_first_xtc(i32 %2, i32* %105, i32* %106, float* %107, [3 x float]* %108, [3 x float]** %109, float* %110, i32* %bOK) #10, !dbg !1838
  %112 = icmp eq i32 %111, 0, !dbg !1839
  br i1 %112, label %113, label %.critedge1, !dbg !1840

; <label>:113                                     ; preds = %104
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0)) #10, !dbg !1841
  br label %.critedge1, !dbg !1841

.critedge1:                                       ; preds = %113, %104
  %114 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16, !dbg !1842
  store i32 1, i32* %114, align 4, !dbg !1843, !tbaa !851
  %115 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8, !dbg !1844
  store i32 1, i32* %115, align 4, !dbg !1845, !tbaa !839
  %116 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10, !dbg !1846
  store i32 1, i32* %116, align 4, !dbg !1847, !tbaa !842
  %117 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18, !dbg !1848
  store i32 1, i32* %117, align 4, !dbg !1849, !tbaa !854
  %118 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24, !dbg !1850
  store i32 1, i32* %118, align 4, !dbg !1851, !tbaa !863
  %119 = load float* %107, align 4, !dbg !1852, !tbaa !891
  call void @llvm.dbg.value(metadata float %119, i64 0, metadata !623, metadata !651) #7, !dbg !1853
  call fastcc void @printcount2(float %119, float %119, float %119, float %119) #10, !dbg !1855
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !453, metadata !651), !dbg !1669
  br label %145

; <label>:120                                     ; preds = %0
  %121 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %2) #10, !dbg !1856
  store i32 -1, i32* @__frame, align 4, !dbg !1857, !tbaa !815
  %122 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1859, !tbaa !1476
  %123 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str49, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %122) #7, !dbg !1860
  tail call void @frewind(%struct.__sFILE* %121) #10, !dbg !1861
  %124 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1862
  tail call void @get_pdb_coordnum(%struct.__sFILE* %121, i32* %124) #10, !dbg !1863
  %125 = load i32* %124, align 4, !dbg !1864, !tbaa !873
  %126 = icmp eq i32 %125, 0, !dbg !1866
  br i1 %126, label %127, label %pdb_first_x.exit, !dbg !1867

; <label>:127                                     ; preds = %120
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str50, i64 0, i64 0)) #10, !dbg !1868
  br label %pdb_first_x.exit, !dbg !1868

pdb_first_x.exit:                                 ; preds = %120, %127
  tail call void @frewind(%struct.__sFILE* %121) #10, !dbg !1869
  %128 = load i32* %124, align 4, !dbg !1870, !tbaa !873
  %129 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 583, i32 %128, i32 12) #10, !dbg !1870
  %130 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19, !dbg !1870
  %131 = bitcast [3 x float]** %130 to i8**, !dbg !1870
  store i8* %129, i8** %131, align 8, !dbg !1870, !tbaa !903
  %132 = tail call fastcc i32 @pdb_next_x(%struct.__sFILE* %121, %struct.t_trxframe* %fr) #10, !dbg !1871
  %133 = load i32* %124, align 4, !dbg !1872, !tbaa !873
  %134 = icmp eq i32 %133, 0, !dbg !1874
  br i1 %134, label %145, label %135, !dbg !1875

; <label>:135                                     ; preds = %pdb_first_x.exit
  %136 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1876
  %137 = load float* %136, align 4, !dbg !1876, !tbaa !891
  tail call void @llvm.dbg.value(metadata float %137, i64 0, metadata !623, metadata !651) #7, !dbg !1877
  tail call fastcc void @printcount2(float %137, float %137, float %137, float %137) #10, !dbg !1879
  br label %145, !dbg !1880

; <label>:138                                     ; preds = %0
  %139 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %2) #10, !dbg !1881
  %140 = tail call i32 @gro_first_x_or_v(%struct.__sFILE* %139, %struct.t_trxframe* %fr) #10, !dbg !1883
  %141 = icmp eq i32 %140, 0, !dbg !1883
  br i1 %141, label %145, label %142, !dbg !1884

; <label>:142                                     ; preds = %138
  %143 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1885
  %144 = load float* %143, align 4, !dbg !1885, !tbaa !891
  tail call void @llvm.dbg.value(metadata float %144, i64 0, metadata !623, metadata !651) #7, !dbg !1886
  tail call fastcc void @printcount2(float %144, float %144, float %144, float %144) #10, !dbg !1888
  br label %145, !dbg !1889

.critedge:                                        ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str16, i64 0, i64 0), i8* %fn) #10, !dbg !1890
  br label %.critedge3

; <label>:145                                     ; preds = %xyz_first_x.exit.thread, %xyz_first_x.exit, %99, %pdb_first_x.exit, %135, %138, %142, %.critedge1
  %146 = load i32* %1, align 4, !dbg !1891, !tbaa !870
  %147 = and i32 %146, 64, !dbg !1893
  %148 = icmp eq i32 %147, 0, !dbg !1893
  br i1 %148, label %149, label %157, !dbg !1894

; <label>:149                                     ; preds = %145
  %150 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1895
  %151 = load float* %150, align 4, !dbg !1895, !tbaa !891
  %152 = call i32 @check_times(float %151) #10, !dbg !1896
  %153 = icmp slt i32 %152, 0, !dbg !1897
  br i1 %153, label %.critedge3, label %157, !dbg !1898

.critedge3:                                       ; preds = %0, %0, %0, %.critedge2, %.critedge, %149
  %154 = load i32* %status, align 4, !dbg !1899, !tbaa !815
  %155 = call i32 @read_next_frame(i32 %154, %struct.t_trxframe* %fr) #13, !dbg !1901
  %156 = icmp eq i32 %155, 0, !dbg !1901
  br i1 %156, label %167, label %157, !dbg !1902

; <label>:157                                     ; preds = %.critedge3, %145, %149
  %158 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !1903
  %159 = bitcast float* %158 to i32*, !dbg !1903
  %160 = load i32* %159, align 4, !dbg !1903, !tbaa !891
  %161 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 3, !dbg !1904
  %162 = bitcast float* %161 to i32*, !dbg !1905
  store i32 %160, i32* %162, align 4, !dbg !1905, !tbaa !876
  %163 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !1906
  %164 = load i32* %163, align 4, !dbg !1906, !tbaa !873
  %165 = icmp sgt i32 %164, 0, !dbg !1907
  %166 = zext i1 %165 to i32, !dbg !1907
  br label %167, !dbg !1908

; <label>:167                                     ; preds = %.critedge3, %157
  %.0 = phi i32 [ %166, %157 ], [ 0, %.critedge3 ]
  ret i32 %.0, !dbg !1909
}

; Function Attrs: optsize
declare i32 @read_first_xtc(i32, i32*, i32*, float*, [3 x float]*, [3 x float]**, float*, i32*) #2

; Function Attrs: optsize
declare i32 @gro_first_x_or_v(%struct.__sFILE*, %struct.t_trxframe*) #2

; Function Attrs: optsize
declare i32 @check_times(float) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_first_x(i32* nocapture %status, i8* %fn, float* nocapture %t, [3 x float]** nocapture %x, [3 x float]* nocapture %box) #5 {
  %fr = alloca %struct.t_trxframe, align 8
  tail call void @llvm.dbg.value(metadata i32* %status, i64 0, metadata !461, metadata !651), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !462, metadata !651), !dbg !1911
  tail call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !463, metadata !651), !dbg !1912
  tail call void @llvm.dbg.value(metadata [3 x float]** %x, i64 0, metadata !464, metadata !651), !dbg !1913
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !465, metadata !651), !dbg !1914
  %1 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !1915
  call void @llvm.lifetime.start(i64 176, i8* %1) #7, !dbg !1915
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !466, metadata !651), !dbg !1916
  %2 = call i32 @read_first_frame(i32* %status, i8* %fn, %struct.t_trxframe* %fr, i32 2) #13, !dbg !1917
  %3 = load i32* %status, align 4, !dbg !1918, !tbaa !815
  %4 = load i32* @nxframe, align 4, !dbg !1920, !tbaa !815
  %5 = icmp slt i32 %3, %4, !dbg !1921
  br i1 %5, label %._crit_edge, label %6, !dbg !1922

._crit_edge:                                      ; preds = %0
  %.pre1 = load %struct.t_trxframe** @xframe, align 8, !dbg !1923, !tbaa !1476
  br label %12, !dbg !1922

; <label>:6                                       ; preds = %0
  %7 = add nsw i32 %3, 1, !dbg !1924
  store i32 %7, i32* @nxframe, align 4, !dbg !1926, !tbaa !815
  %8 = load i8** bitcast (%struct.t_trxframe** @xframe to i8**), align 8, !dbg !1927, !tbaa !1476
  %9 = mul i32 %7, 176, !dbg !1927
  %10 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 755, i8* %8, i32 %9) #10, !dbg !1927
  store i8* %10, i8** bitcast (%struct.t_trxframe** @xframe to i8**), align 8, !dbg !1927, !tbaa !1476
  %.pre = load i32* %status, align 4, !dbg !1928, !tbaa !815
  %11 = bitcast i8* %10 to %struct.t_trxframe*
  br label %12, !dbg !1929

; <label>:12                                      ; preds = %._crit_edge, %6
  %13 = phi %struct.t_trxframe* [ %.pre1, %._crit_edge ], [ %11, %6 ]
  %14 = phi i32 [ %3, %._crit_edge ], [ %.pre, %6 ]
  %15 = sext i32 %14 to i64, !dbg !1923
  %16 = getelementptr inbounds %struct.t_trxframe* %13, i64 %15, !dbg !1923
  %17 = bitcast %struct.t_trxframe* %16 to i8*, !dbg !1930
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %1, i64 176, i32 8, i1 false), !dbg !1930, !tbaa.struct !1931
  %18 = load i32* %status, align 4, !dbg !1932, !tbaa !815
  %19 = sext i32 %18 to i64, !dbg !1933
  %20 = getelementptr inbounds %struct.t_trxframe* %13, i64 %19, i32 11, !dbg !1934
  %21 = bitcast float* %20 to i32*, !dbg !1934
  %22 = load i32* %21, align 4, !dbg !1934, !tbaa !891
  %23 = bitcast float* %t to i32*, !dbg !1935
  store i32 %22, i32* %23, align 4, !dbg !1935, !tbaa !779
  %24 = getelementptr inbounds %struct.t_trxframe* %13, i64 %19, i32 19, !dbg !1936
  %25 = bitcast [3 x float]** %24 to i64*, !dbg !1936
  %26 = load i64* %25, align 8, !dbg !1936, !tbaa !903
  %27 = bitcast [3 x float]** %x to i64*, !dbg !1937
  store i64 %26, i64* %27, align 8, !dbg !1937, !tbaa !1476
  %28 = load %struct.t_trxframe** @xframe, align 8, !dbg !1938, !tbaa !1476
  %29 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 0, !dbg !1938
  tail call void @llvm.dbg.value(metadata [3 x float]* %29, i64 0, metadata !519, metadata !651), !dbg !1939
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !520, metadata !651), !dbg !1941
  %30 = bitcast [3 x float]* %29 to i32*, !dbg !1942
  %31 = load i32* %30, align 4, !dbg !1942, !tbaa !779
  %32 = bitcast [3 x float]* %box to i32*, !dbg !1944
  store i32 %31, i32* %32, align 4, !dbg !1944, !tbaa !779
  %33 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 0, i64 1, !dbg !1945
  %34 = bitcast float* %33 to i32*, !dbg !1945
  %35 = load i32* %34, align 4, !dbg !1945, !tbaa !779
  %36 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !1946
  %37 = bitcast float* %36 to i32*, !dbg !1947
  store i32 %35, i32* %37, align 4, !dbg !1947, !tbaa !779
  %38 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 0, i64 2, !dbg !1948
  %39 = bitcast float* %38 to i32*, !dbg !1948
  %40 = load i32* %39, align 4, !dbg !1948, !tbaa !779
  %41 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !1949
  %42 = bitcast float* %41 to i32*, !dbg !1950
  store i32 %40, i32* %42, align 4, !dbg !1950, !tbaa !779
  %43 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 1, i64 0, !dbg !1951
  %44 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !1952
  tail call void @llvm.dbg.value(metadata float* %43, i64 0, metadata !513, metadata !651), !dbg !1953
  tail call void @llvm.dbg.value(metadata float* %44, i64 0, metadata !514, metadata !651), !dbg !1955
  %45 = bitcast float* %43 to i32*, !dbg !1956
  %46 = load i32* %45, align 4, !dbg !1956, !tbaa !779
  %47 = bitcast float* %44 to i32*, !dbg !1957
  store i32 %46, i32* %47, align 4, !dbg !1957, !tbaa !779
  %48 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 1, i64 1, !dbg !1958
  %49 = bitcast float* %48 to i32*, !dbg !1958
  %50 = load i32* %49, align 4, !dbg !1958, !tbaa !779
  %51 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !1959
  %52 = bitcast float* %51 to i32*, !dbg !1960
  store i32 %50, i32* %52, align 4, !dbg !1960, !tbaa !779
  %53 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 1, i64 2, !dbg !1961
  %54 = bitcast float* %53 to i32*, !dbg !1961
  %55 = load i32* %54, align 4, !dbg !1961, !tbaa !779
  %56 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !1962
  %57 = bitcast float* %56 to i32*, !dbg !1963
  store i32 %55, i32* %57, align 4, !dbg !1963, !tbaa !779
  %58 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 2, i64 0, !dbg !1964
  %59 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !1965
  tail call void @llvm.dbg.value(metadata float* %58, i64 0, metadata !513, metadata !651), !dbg !1966
  tail call void @llvm.dbg.value(metadata float* %59, i64 0, metadata !514, metadata !651), !dbg !1968
  %60 = bitcast float* %58 to i32*, !dbg !1969
  %61 = load i32* %60, align 4, !dbg !1969, !tbaa !779
  %62 = bitcast float* %59 to i32*, !dbg !1970
  store i32 %61, i32* %62, align 4, !dbg !1970, !tbaa !779
  %63 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 2, i64 1, !dbg !1971
  %64 = bitcast float* %63 to i32*, !dbg !1971
  %65 = load i32* %64, align 4, !dbg !1971, !tbaa !779
  %66 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !1972
  %67 = bitcast float* %66 to i32*, !dbg !1973
  store i32 %65, i32* %67, align 4, !dbg !1973, !tbaa !779
  %68 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 2, i64 2, !dbg !1974
  %69 = bitcast float* %68 to i32*, !dbg !1974
  %70 = load i32* %69, align 4, !dbg !1974, !tbaa !779
  %71 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !1975
  %72 = bitcast float* %71 to i32*, !dbg !1976
  store i32 %70, i32* %72, align 4, !dbg !1976, !tbaa !779
  %73 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 2, !dbg !1977
  %74 = load i32* %73, align 4, !dbg !1977, !tbaa !873
  call void @llvm.lifetime.end(i64 176, i8* %1) #7, !dbg !1978
  ret i32 %74, !dbg !1978
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_next_x(i32 %status, float* nocapture %t, i32 %natoms, [3 x float]* %x, [3 x float]* nocapture %box) #5 {
  tail call void @llvm.dbg.value(metadata i32 %status, i64 0, metadata !471, metadata !651), !dbg !1979
  tail call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !472, metadata !651), !dbg !1980
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !473, metadata !651), !dbg !1981
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !474, metadata !651), !dbg !1982
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !475, metadata !651), !dbg !1983
  %1 = sext i32 %status to i64, !dbg !1984
  %2 = load %struct.t_trxframe** @xframe, align 8, !dbg !1984, !tbaa !1476
  %3 = getelementptr inbounds %struct.t_trxframe* %2, i64 %1, i32 19, !dbg !1985
  store [3 x float]* %x, [3 x float]** %3, align 8, !dbg !1986, !tbaa !903
  %4 = load %struct.t_trxframe** @xframe, align 8, !dbg !1987, !tbaa !1476
  %5 = getelementptr inbounds %struct.t_trxframe* %4, i64 %1, !dbg !1987
  %6 = tail call i32 @read_next_frame(i32 %status, %struct.t_trxframe* %5) #13, !dbg !1988
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !476, metadata !651), !dbg !1989
  %7 = load %struct.t_trxframe** @xframe, align 8, !dbg !1990, !tbaa !1476
  %8 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 11, !dbg !1991
  %9 = bitcast float* %8 to i32*, !dbg !1991
  %10 = load i32* %9, align 4, !dbg !1991, !tbaa !891
  %11 = bitcast float* %t to i32*, !dbg !1992
  store i32 %10, i32* %11, align 4, !dbg !1992, !tbaa !779
  %12 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 0, !dbg !1993
  tail call void @llvm.dbg.value(metadata [3 x float]* %12, i64 0, metadata !519, metadata !651), !dbg !1994
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !520, metadata !651), !dbg !1996
  %13 = bitcast [3 x float]* %12 to i32*, !dbg !1997
  %14 = load i32* %13, align 4, !dbg !1997, !tbaa !779
  %15 = bitcast [3 x float]* %box to i32*, !dbg !1999
  store i32 %14, i32* %15, align 4, !dbg !1999, !tbaa !779
  %16 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 0, i64 1, !dbg !2000
  %17 = bitcast float* %16 to i32*, !dbg !2000
  %18 = load i32* %17, align 4, !dbg !2000, !tbaa !779
  %19 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1, !dbg !2001
  %20 = bitcast float* %19 to i32*, !dbg !2002
  store i32 %18, i32* %20, align 4, !dbg !2002, !tbaa !779
  %21 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 0, i64 2, !dbg !2003
  %22 = bitcast float* %21 to i32*, !dbg !2003
  %23 = load i32* %22, align 4, !dbg !2003, !tbaa !779
  %24 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2, !dbg !2004
  %25 = bitcast float* %24 to i32*, !dbg !2005
  store i32 %23, i32* %25, align 4, !dbg !2005, !tbaa !779
  %26 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 1, i64 0, !dbg !2006
  %27 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0, !dbg !2007
  tail call void @llvm.dbg.value(metadata float* %26, i64 0, metadata !513, metadata !651), !dbg !2008
  tail call void @llvm.dbg.value(metadata float* %27, i64 0, metadata !514, metadata !651), !dbg !2010
  %28 = bitcast float* %26 to i32*, !dbg !2011
  %29 = load i32* %28, align 4, !dbg !2011, !tbaa !779
  %30 = bitcast float* %27 to i32*, !dbg !2012
  store i32 %29, i32* %30, align 4, !dbg !2012, !tbaa !779
  %31 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 1, i64 1, !dbg !2013
  %32 = bitcast float* %31 to i32*, !dbg !2013
  %33 = load i32* %32, align 4, !dbg !2013, !tbaa !779
  %34 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !2014
  %35 = bitcast float* %34 to i32*, !dbg !2015
  store i32 %33, i32* %35, align 4, !dbg !2015, !tbaa !779
  %36 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 1, i64 2, !dbg !2016
  %37 = bitcast float* %36 to i32*, !dbg !2016
  %38 = load i32* %37, align 4, !dbg !2016, !tbaa !779
  %39 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2, !dbg !2017
  %40 = bitcast float* %39 to i32*, !dbg !2018
  store i32 %38, i32* %40, align 4, !dbg !2018, !tbaa !779
  %41 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 2, i64 0, !dbg !2019
  %42 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0, !dbg !2020
  tail call void @llvm.dbg.value(metadata float* %41, i64 0, metadata !513, metadata !651), !dbg !2021
  tail call void @llvm.dbg.value(metadata float* %42, i64 0, metadata !514, metadata !651), !dbg !2023
  %43 = bitcast float* %41 to i32*, !dbg !2024
  %44 = load i32* %43, align 4, !dbg !2024, !tbaa !779
  %45 = bitcast float* %42 to i32*, !dbg !2025
  store i32 %44, i32* %45, align 4, !dbg !2025, !tbaa !779
  %46 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 2, i64 1, !dbg !2026
  %47 = bitcast float* %46 to i32*, !dbg !2026
  %48 = load i32* %47, align 4, !dbg !2026, !tbaa !779
  %49 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1, !dbg !2027
  %50 = bitcast float* %49 to i32*, !dbg !2028
  store i32 %48, i32* %50, align 4, !dbg !2028, !tbaa !779
  %51 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 2, i64 2, !dbg !2029
  %52 = bitcast float* %51 to i32*, !dbg !2029
  %53 = load i32* %52, align 4, !dbg !2029, !tbaa !779
  %54 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !2030
  %55 = bitcast float* %54 to i32*, !dbg !2031
  store i32 %53, i32* %55, align 4, !dbg !2031, !tbaa !779
  ret i32 %6, !dbg !2032
}

; Function Attrs: nounwind optsize ssp uwtable
define void @close_trj(i32 %status) #5 {
  tail call void @llvm.dbg.value(metadata i32 %status, i64 0, metadata !479, metadata !651), !dbg !2033
  tail call void @gmx_fio_close(i32 %status) #10, !dbg !2034
  ret void, !dbg !2035
}

; Function Attrs: nounwind optsize ssp uwtable
define void @rewind_trj(i32 %status) #5 {
  tail call void @llvm.dbg.value(metadata i32 %status, i64 0, metadata !482, metadata !651), !dbg !2036
  store i32 -1, i32* @__frame, align 4, !dbg !2037, !tbaa !815
  tail call void @gmx_fio_rewind(i32 %status) #10, !dbg !2038
  ret void, !dbg !2039
}

; Function Attrs: optsize
declare void @gmx_fio_rewind(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_first_v(i32* nocapture %status, i8* %fn, float* nocapture %t, [3 x float]** nocapture %v, [3 x float]* nocapture %box) #5 {
  %fr = alloca %struct.t_trxframe, align 8
  tail call void @llvm.dbg.value(metadata i32* %status, i64 0, metadata !485, metadata !651), !dbg !2040
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !486, metadata !651), !dbg !2041
  tail call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !487, metadata !651), !dbg !2042
  tail call void @llvm.dbg.value(metadata [3 x float]** %v, i64 0, metadata !488, metadata !651), !dbg !2043
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !489, metadata !651), !dbg !2044
  %1 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !2045
  call void @llvm.lifetime.start(i64 176, i8* %1) #7, !dbg !2045
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !490, metadata !651), !dbg !2046
  %2 = call i32 @read_first_frame(i32* %status, i8* %fn, %struct.t_trxframe* %fr, i32 8) #13, !dbg !2047
  %3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !2048
  %4 = bitcast float* %3 to i32*, !dbg !2048
  %5 = load i32* %4, align 4, !dbg !2048, !tbaa !891
  %6 = bitcast float* %t to i32*, !dbg !2049
  store i32 %5, i32* %6, align 4, !dbg !2049, !tbaa !779
  call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !490, metadata !651), !dbg !2046
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !630, metadata !651), !dbg !2050
  %7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !2052
  %8 = load i32* %7, align 8, !dbg !2052, !tbaa !857
  %9 = icmp eq i32 %8, 0, !dbg !2054
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !2055
  %11 = load i32* %10, align 8, !dbg !2055, !tbaa !873
  %12 = icmp sgt i32 %11, 0, !dbg !2058
  %or.cond = and i1 %9, %12, !dbg !2059
  br i1 %or.cond, label %.lr.ph.i, label %clear_v.exit, !dbg !2059

.lr.ph.i:                                         ; preds = %0
  %13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !2060
  %14 = load [3 x float]** %13, align 8, !dbg !2060, !tbaa !906
  %15 = sext i32 %11 to i64
  %16 = add nsw i64 %15, -1, !dbg !2061
  br label %17, !dbg !2061

; <label>:17                                      ; preds = %17, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %17 ], !dbg !2062
  %18 = getelementptr inbounds [3 x float]* %14, i64 %indvars.iv.i, i64 0, !dbg !2063
  tail call void @llvm.dbg.value(metadata float* %18, i64 0, metadata !636, metadata !651), !dbg !2064
  store float 0.000000e+00, float* %18, align 4, !dbg !2066, !tbaa !779
  %19 = getelementptr inbounds [3 x float]* %14, i64 %indvars.iv.i, i64 1, !dbg !2067
  store float 0.000000e+00, float* %19, align 4, !dbg !2068, !tbaa !779
  %20 = getelementptr inbounds [3 x float]* %14, i64 %indvars.iv.i, i64 2, !dbg !2069
  store float 0.000000e+00, float* %20, align 4, !dbg !2070, !tbaa !779
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2061
  %exitcond = icmp eq i64 %indvars.iv.i, %16, !dbg !2061
  br i1 %exitcond, label %clear_v.exit, label %17, !dbg !2061

clear_v.exit:                                     ; preds = %17, %0
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !2071
  %22 = bitcast [3 x float]** %21 to i64*, !dbg !2071
  %23 = load i64* %22, align 8, !dbg !2071, !tbaa !906
  %24 = bitcast [3 x float]** %v to i64*, !dbg !2072
  store i64 %23, i64* %24, align 8, !dbg !2072, !tbaa !1476
  %25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !2073
  tail call void @llvm.dbg.value(metadata [3 x float]* %25, i64 0, metadata !519, metadata !651), !dbg !2074
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !520, metadata !651), !dbg !2076
  %26 = bitcast [3 x float]* %25 to <4 x i32>*, !dbg !2077
  %27 = load <4 x i32>* %26, align 4, !dbg !2077, !tbaa !779
  %28 = bitcast [3 x float]* %box to <4 x i32>*, !dbg !2079
  store <4 x i32> %27, <4 x i32>* %28, align 4, !dbg !2079, !tbaa !779
  %29 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !2080
  %30 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !2082
  %31 = bitcast float* %29 to <4 x i32>*, !dbg !2080
  %32 = load <4 x i32>* %31, align 4, !dbg !2080, !tbaa !779
  %33 = bitcast float* %30 to <4 x i32>*, !dbg !2083
  store <4 x i32> %32, <4 x i32>* %33, align 4, !dbg !2083, !tbaa !779
  %34 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !2084
  %35 = bitcast float* %34 to i32*, !dbg !2084
  %36 = load i32* %35, align 4, !dbg !2084, !tbaa !779
  %37 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !2086
  %38 = bitcast float* %37 to i32*, !dbg !2087
  store i32 %36, i32* %38, align 4, !dbg !2087, !tbaa !779
  call void @llvm.lifetime.end(i64 176, i8* %1) #7, !dbg !2088
  ret i32 %11, !dbg !2088
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_next_v(i32 %status, float* nocapture %t, i32 %natoms, [3 x float]* %v, [3 x float]* nocapture %box) #5 {
  %fr = alloca %struct.t_trxframe, align 8
  tail call void @llvm.dbg.value(metadata i32 %status, i64 0, metadata !493, metadata !651), !dbg !2089
  tail call void @llvm.dbg.value(metadata float* %t, i64 0, metadata !494, metadata !651), !dbg !2090
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !495, metadata !651), !dbg !2091
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !496, metadata !651), !dbg !2092
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !497, metadata !651), !dbg !2093
  %1 = bitcast %struct.t_trxframe* %fr to i8*, !dbg !2094
  call void @llvm.lifetime.start(i64 176, i8* %1) #7, !dbg !2094
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !498, metadata !651), !dbg !2095
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #13, !dbg !2096
  %2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0, !dbg !2097
  store i32 8, i32* %2, align 8, !dbg !2098, !tbaa !870
  %3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2, !dbg !2099
  store i32 %natoms, i32* %3, align 8, !dbg !2100, !tbaa !873
  %4 = bitcast float* %t to i32*, !dbg !2101
  %5 = load i32* %4, align 4, !dbg !2101, !tbaa !779
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11, !dbg !2102
  %7 = bitcast float* %6 to i32*, !dbg !2103
  store i32 %5, i32* %7, align 4, !dbg !2103, !tbaa !891
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21, !dbg !2104
  store [3 x float]* %v, [3 x float]** %8, align 8, !dbg !2105, !tbaa !906
  call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !498, metadata !651), !dbg !2095
  %9 = call i32 @read_next_frame(i32 %status, %struct.t_trxframe* %fr) #13, !dbg !2106
  call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !499, metadata !651), !dbg !2107
  %10 = load i32* %7, align 4, !dbg !2108, !tbaa !891
  store i32 %10, i32* %4, align 4, !dbg !2109, !tbaa !779
  call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !498, metadata !651), !dbg !2095
  tail call void @llvm.dbg.value(metadata %struct.t_trxframe* %fr, i64 0, metadata !630, metadata !651), !dbg !2110
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20, !dbg !2112
  %12 = load i32* %11, align 8, !dbg !2112, !tbaa !857
  %13 = icmp eq i32 %12, 0, !dbg !2113
  br i1 %13, label %.preheader.i, label %clear_v.exit, !dbg !2114

.preheader.i:                                     ; preds = %0
  %14 = load i32* %3, align 8, !dbg !2115, !tbaa !873
  %15 = icmp sgt i32 %14, 0, !dbg !2116
  br i1 %15, label %.lr.ph.i, label %clear_v.exit, !dbg !2117

.lr.ph.i:                                         ; preds = %.preheader.i
  %16 = load [3 x float]** %8, align 8, !dbg !2118, !tbaa !906
  %17 = sext i32 %14 to i64
  %18 = add nsw i64 %17, -1, !dbg !2117
  br label %19, !dbg !2117

; <label>:19                                      ; preds = %19, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %19 ], !dbg !2119
  %20 = getelementptr inbounds [3 x float]* %16, i64 %indvars.iv.i, i64 0, !dbg !2120
  tail call void @llvm.dbg.value(metadata float* %20, i64 0, metadata !636, metadata !651), !dbg !2121
  store float 0.000000e+00, float* %20, align 4, !dbg !2123, !tbaa !779
  %21 = getelementptr inbounds [3 x float]* %16, i64 %indvars.iv.i, i64 1, !dbg !2124
  store float 0.000000e+00, float* %21, align 4, !dbg !2125, !tbaa !779
  %22 = getelementptr inbounds [3 x float]* %16, i64 %indvars.iv.i, i64 2, !dbg !2126
  store float 0.000000e+00, float* %22, align 4, !dbg !2127, !tbaa !779
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2117
  %exitcond = icmp eq i64 %indvars.iv.i, %18, !dbg !2117
  br i1 %exitcond, label %clear_v.exit, label %19, !dbg !2117

clear_v.exit:                                     ; preds = %19, %0, %.preheader.i
  %23 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0, !dbg !2128
  tail call void @llvm.dbg.value(metadata [3 x float]* %23, i64 0, metadata !519, metadata !651), !dbg !2129
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !520, metadata !651), !dbg !2131
  %24 = bitcast [3 x float]* %23 to <4 x i32>*, !dbg !2132
  %25 = load <4 x i32>* %24, align 4, !dbg !2132, !tbaa !779
  %26 = bitcast [3 x float]* %box to <4 x i32>*, !dbg !2134
  store <4 x i32> %25, <4 x i32>* %26, align 4, !dbg !2134, !tbaa !779
  %27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1, !dbg !2135
  %28 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !2137
  %29 = bitcast float* %27 to <4 x i32>*, !dbg !2135
  %30 = load <4 x i32>* %29, align 4, !dbg !2135, !tbaa !779
  %31 = bitcast float* %28 to <4 x i32>*, !dbg !2138
  store <4 x i32> %30, <4 x i32>* %31, align 4, !dbg !2138, !tbaa !779
  %32 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2, !dbg !2139
  %33 = bitcast float* %32 to i32*, !dbg !2139
  %34 = load i32* %33, align 4, !dbg !2139, !tbaa !779
  %35 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !2141
  %36 = bitcast float* %35 to i32*, !dbg !2142
  store i32 %34, i32* %36, align 4, !dbg !2142, !tbaa !779
  call void @llvm.lifetime.end(i64 176, i8* %1) #7, !dbg !2143
  ret i32 %9, !dbg !2143
}

; Function Attrs: optsize
declare i32 @fread_trnheader(i32, %struct.t_trnheader*, i32*) #2

; Function Attrs: optsize
declare i32 @fread_htrn(i32, %struct.t_trnheader*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @do_read_xyz(%struct.__sFILE* nocapture %status, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* nocapture %box) #5 {
  %x0 = alloca double, align 8
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %status, i64 0, metadata !561, metadata !651), !dbg !2144
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !562, metadata !651), !dbg !2145
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !563, metadata !651), !dbg !2146
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !564, metadata !651), !dbg !2147
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !565, metadata !651), !dbg !2148
  %1 = icmp sgt i32 %natoms, 0, !dbg !2149
  br i1 %1, label %.preheader2.lr.ph, label %._crit_edge, !dbg !2152

.preheader2.lr.ph:                                ; preds = %0
  %2 = sext i32 %natoms to i64, !dbg !2152
  br label %.preheader2, !dbg !2152

.preheader2:                                      ; preds = %.preheader2.lr.ph, %20
  %indvars.iv12 = phi i64 [ 0, %.preheader2.lr.ph ], [ %indvars.iv.next13, %20 ]
  br label %3, !dbg !2153

; <label>:3                                       ; preds = %.preheader2, %15
  %indvars.iv10 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next11, %15 ]
  call void @llvm.dbg.value(metadata double* %x0, i64 0, metadata !567, metadata !651), !dbg !2156
  %4 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %status, i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0), double* %x0) #10, !dbg !2157
  %5 = icmp eq i32 %4, 1, !dbg !2161
  br i1 %5, label %15, label %6, !dbg !2162

; <label>:6                                       ; preds = %3
  %7 = or i64 %indvars.iv10, %indvars.iv12, !dbg !2163
  %8 = trunc i64 %7 to i32, !dbg !2163
  %9 = icmp eq i32 %8, 0, !dbg !2163
  br i1 %9, label %.loopexit, label %10, !dbg !2163

; <label>:10                                      ; preds = %6
  %11 = trunc i64 %indvars.iv10 to i32, !dbg !2163
  %12 = trunc i64 %indvars.iv12 to i32, !dbg !2163
  %13 = load %struct.__sFILE** @__stderrp, align 8, !dbg !2166, !tbaa !1476
  %14 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([37 x i8]* @.str20, i64 0, i64 0), i32 %12, i32 %11) #10, !dbg !2167
  br label %.loopexit, !dbg !2167

; <label>:15                                      ; preds = %3
  call void @llvm.dbg.value(metadata double* %x0, i64 0, metadata !567, metadata !651), !dbg !2156
  %16 = load double* %x0, align 8, !dbg !2168, !tbaa !792
  %17 = fptrunc double %16 to float, !dbg !2168
  %18 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 %indvars.iv10, !dbg !2169
  store float %17, float* %18, align 4, !dbg !2170, !tbaa !779
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !2153
  %19 = icmp slt i64 %indvars.iv.next11, 3, !dbg !2171
  br i1 %19, label %3, label %20, !dbg !2153

; <label>:20                                      ; preds = %15
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !2152
  %21 = icmp slt i64 %indvars.iv.next13, %2, !dbg !2149
  br i1 %21, label %.preheader2, label %._crit_edge, !dbg !2152

._crit_edge:                                      ; preds = %20, %0
  %22 = load i32* @bReadBox, align 4, !dbg !2172, !tbaa !815
  %23 = icmp eq i32 %22, 0, !dbg !2172
  br i1 %23, label %.loopexit, label %.preheader, !dbg !2174

.preheader:                                       ; preds = %._crit_edge, %26
  %indvars.iv = phi i64 [ %indvars.iv.next, %26 ], [ 0, %._crit_edge ]
  call void @llvm.dbg.value(metadata double* %x0, i64 0, metadata !567, metadata !651), !dbg !2156
  %24 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %status, i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0), double* %x0) #10, !dbg !2175
  %25 = icmp eq i32 %24, 1, !dbg !2181
  br i1 %25, label %26, label %.loopexit, !dbg !2182

; <label>:26                                      ; preds = %.preheader
  call void @llvm.dbg.value(metadata double* %x0, i64 0, metadata !567, metadata !651), !dbg !2156
  %27 = load double* %x0, align 8, !dbg !2183, !tbaa !792
  %28 = fptrunc double %27 to float, !dbg !2183
  %29 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv, !dbg !2184
  store float %28, float* %29, align 4, !dbg !2185, !tbaa !779
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2186
  %30 = icmp slt i64 %indvars.iv.next, 3, !dbg !2187
  br i1 %30, label %.preheader, label %.loopexit, !dbg !2186

.loopexit:                                        ; preds = %26, %.preheader, %._crit_edge, %10, %6
  %.0 = phi i32 [ 0, %6 ], [ 0, %10 ], [ 1, %._crit_edge ], [ 0, %.preheader ], [ 1, %26 ]
  ret i32 %.0, !dbg !2188
}

; Function Attrs: nounwind optsize
declare i32 @fscanf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #8

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #8

; Function Attrs: optsize
declare i32 @read_pdbfile(%struct.__sFILE*, i8*, i32*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i32) #2

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #9

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #8

; Function Attrs: optsize
declare float @convert_time(float) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #8

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #8

; Function Attrs: nounwind optsize
declare i32 @scanf(i8* nocapture readonly, ...) #8

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct.__sFILE* nocapture) #8

; Function Attrs: optsize
declare void @frewind(%struct.__sFILE*) #2

; Function Attrs: optsize
declare void @get_pdb_coordnum(%struct.__sFILE*, i32*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #7

; Function Attrs: nounwind
declare i32 @putchar(i32) #7

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind optsize }
attributes #11 = { readnone }
attributes #12 = { nounwind optsize readnone }
attributes #13 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!647, !648, !649}
!llvm.ident = !{!650}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !60, subprograms: !68, globals: !637, imports: !261)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/trxio.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !53}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 37, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/filenm.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!6 = !DIEnumerator(name: "efMDP", value: 0)
!7 = !DIEnumerator(name: "efGCT", value: 1)
!8 = !DIEnumerator(name: "efTRX", value: 2)
!9 = !DIEnumerator(name: "efTRN", value: 3)
!10 = !DIEnumerator(name: "efTRR", value: 4)
!11 = !DIEnumerator(name: "efTRJ", value: 5)
!12 = !DIEnumerator(name: "efXTC", value: 6)
!13 = !DIEnumerator(name: "efG87", value: 7)
!14 = !DIEnumerator(name: "efENX", value: 8)
!15 = !DIEnumerator(name: "efEDR", value: 9)
!16 = !DIEnumerator(name: "efENE", value: 10)
!17 = !DIEnumerator(name: "efSTX", value: 11)
!18 = !DIEnumerator(name: "efSTO", value: 12)
!19 = !DIEnumerator(name: "efGRO", value: 13)
!20 = !DIEnumerator(name: "efG96", value: 14)
!21 = !DIEnumerator(name: "efPDB", value: 15)
!22 = !DIEnumerator(name: "efBRK", value: 16)
!23 = !DIEnumerator(name: "efENT", value: 17)
!24 = !DIEnumerator(name: "efLOG", value: 18)
!25 = !DIEnumerator(name: "efXVG", value: 19)
!26 = !DIEnumerator(name: "efOUT", value: 20)
!27 = !DIEnumerator(name: "efNDX", value: 21)
!28 = !DIEnumerator(name: "efTOP", value: 22)
!29 = !DIEnumerator(name: "efITP", value: 23)
!30 = !DIEnumerator(name: "efTPX", value: 24)
!31 = !DIEnumerator(name: "efTPS", value: 25)
!32 = !DIEnumerator(name: "efTPR", value: 26)
!33 = !DIEnumerator(name: "efTPA", value: 27)
!34 = !DIEnumerator(name: "efTPB", value: 28)
!35 = !DIEnumerator(name: "efTEX", value: 29)
!36 = !DIEnumerator(name: "efRTP", value: 30)
!37 = !DIEnumerator(name: "efATP", value: 31)
!38 = !DIEnumerator(name: "efHDB", value: 32)
!39 = !DIEnumerator(name: "efDAT", value: 33)
!40 = !DIEnumerator(name: "efDLG", value: 34)
!41 = !DIEnumerator(name: "efMAP", value: 35)
!42 = !DIEnumerator(name: "efEPS", value: 36)
!43 = !DIEnumerator(name: "efMAT", value: 37)
!44 = !DIEnumerator(name: "efM2P", value: 38)
!45 = !DIEnumerator(name: "efMTX", value: 39)
!46 = !DIEnumerator(name: "efEDI", value: 40)
!47 = !DIEnumerator(name: "efEDO", value: 41)
!48 = !DIEnumerator(name: "efPPA", value: 42)
!49 = !DIEnumerator(name: "efPDO", value: 43)
!50 = !DIEnumerator(name: "efHAT", value: 44)
!51 = !DIEnumerator(name: "efXPM", value: 45)
!52 = !DIEnumerator(name: "efNR", value: 46)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 107, size: 32, align: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIEnumerator(name: "effXYZ", value: 0)
!56 = !DIEnumerator(name: "effXYZBox", value: 1)
!57 = !DIEnumerator(name: "effG87", value: 2)
!58 = !DIEnumerator(name: "effG87Box", value: 3)
!59 = !DIEnumerator(name: "effNR", value: 4)
!60 = !{!61, !62, !63, !64, !67}
!61 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!62 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !65, line: 87, baseType: !66)
!65 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!66 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "eFileFormat", file: !1, line: 107, baseType: !53)
!68 = !{!69, !136, !142, !148, !154, !160, !163, !166, !169, !172, !175, !178, !187, !196, !209, !212, !215, !218, !232, !246, !252, !258, !262, !267, !383, !400, !408, !423, !428, !434, !444, !455, !467, !477, !480, !483, !491, !500, !508, !515, !521, !547, !557, !568, !580, !588, !594, !599, !604, !613, !621, !624, !628, !632}
!69 = !DISubprogram(name: "__sputc", scope: !70, file: !70, line: 348, type: !71, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !133)
!70 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!71 = !DISubroutineType(types: !72)
!72 = !{!62, !62, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !70, line: 153, baseType: !75)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !70, line: 122, size: 1216, align: 64, elements: !76)
!76 = !{!77, !80, !81, !82, !84, !85, !90, !91, !92, !96, !101, !111, !117, !118, !121, !122, !126, !130, !131, !132}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !75, file: !70, line: 123, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !75, file: !70, line: 124, baseType: !62, size: 32, align: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !75, file: !70, line: 125, baseType: !62, size: 32, align: 32, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !75, file: !70, line: 126, baseType: !83, size: 16, align: 16, offset: 128)
!83 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !75, file: !70, line: 127, baseType: !83, size: 16, align: 16, offset: 144)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !75, file: !70, line: 128, baseType: !86, size: 128, align: 64, offset: 192)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !70, line: 88, size: 128, align: 64, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !86, file: !70, line: 89, baseType: !78, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !86, file: !70, line: 90, baseType: !62, size: 32, align: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !75, file: !70, line: 129, baseType: !62, size: 32, align: 32, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !75, file: !70, line: 132, baseType: !63, size: 64, align: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !75, file: !70, line: 133, baseType: !93, size: 64, align: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!62, !63}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !75, file: !70, line: 134, baseType: !97, size: 64, align: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!62, !63, !100, !62}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !75, file: !70, line: 135, baseType: !102, size: 64, align: 64, offset: 576)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!105, !63, !105, !62}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !70, line: 77, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !107, line: 71, baseType: !108)
!107 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!110 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !75, file: !70, line: 136, baseType: !112, size: 64, align: 64, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!62, !63, !115, !62}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !75, file: !70, line: 139, baseType: !86, size: 128, align: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !75, file: !70, line: 140, baseType: !119, size: 64, align: 64, offset: 832)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !70, line: 94, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !75, file: !70, line: 141, baseType: !62, size: 32, align: 32, offset: 896)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !75, file: !70, line: 144, baseType: !123, size: 24, align: 8, offset: 928)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 24, align: 8, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 3)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !75, file: !70, line: 145, baseType: !127, size: 8, align: 8, offset: 952)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 8, align: 8, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 1)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !75, file: !70, line: 148, baseType: !86, size: 128, align: 64, offset: 960)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !75, file: !70, line: 151, baseType: !62, size: 32, align: 32, offset: 1088)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !75, file: !70, line: 152, baseType: !105, size: 64, align: 64, offset: 1152)
!133 = !{!134, !135}
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !69, file: !70, line: 348, type: !62)
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !69, file: !70, line: 348, type: !73)
!136 = !DISubprogram(name: "__sigbits", scope: !137, file: !137, line: 114, type: !138, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !140)
!137 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!138 = !DISubroutineType(types: !139)
!139 = !{!62, !62}
!140 = !{!141}
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !136, file: !137, line: 114, type: !62)
!142 = !DISubprogram(name: "__inline_isfinitef", scope: !143, file: !143, line: 204, type: !144, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !146)
!143 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!144 = !DISubroutineType(types: !145)
!145 = !{!62, !66}
!146 = !{!147}
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !142, file: !143, line: 204, type: !66)
!148 = !DISubprogram(name: "__inline_isfinited", scope: !143, file: !143, line: 207, type: !149, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !152)
!149 = !DISubroutineType(types: !150)
!150 = !{!62, !151}
!151 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!152 = !{!153}
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !148, file: !143, line: 207, type: !151)
!154 = !DISubprogram(name: "__inline_isfinitel", scope: !143, file: !143, line: 210, type: !155, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !158)
!155 = !DISubroutineType(types: !156)
!156 = !{!62, !157}
!157 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!158 = !{!159}
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !154, file: !143, line: 210, type: !157)
!160 = !DISubprogram(name: "__inline_isinff", scope: !143, file: !143, line: 213, type: !144, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !161)
!161 = !{!162}
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !160, file: !143, line: 213, type: !66)
!163 = !DISubprogram(name: "__inline_isinfd", scope: !143, file: !143, line: 216, type: !149, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !164)
!164 = !{!165}
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !163, file: !143, line: 216, type: !151)
!166 = !DISubprogram(name: "__inline_isinfl", scope: !143, file: !143, line: 219, type: !155, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !167)
!167 = !{!168}
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !166, file: !143, line: 219, type: !157)
!169 = !DISubprogram(name: "__inline_isnanf", scope: !143, file: !143, line: 222, type: !144, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !170)
!170 = !{!171}
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !169, file: !143, line: 222, type: !66)
!172 = !DISubprogram(name: "__inline_isnand", scope: !143, file: !143, line: 225, type: !149, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !173)
!173 = !{!174}
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !172, file: !143, line: 225, type: !151)
!175 = !DISubprogram(name: "__inline_isnanl", scope: !143, file: !143, line: 228, type: !155, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !176)
!176 = !{!177}
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !175, file: !143, line: 228, type: !157)
!178 = !DISubprogram(name: "__inline_signbitf", scope: !143, file: !143, line: 231, type: !144, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !179)
!179 = !{!180, !181}
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !178, file: !143, line: 231, type: !66)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !178, file: !143, line: 232, type: !182)
!182 = !DICompositeType(tag: DW_TAG_union_type, scope: !178, file: !143, line: 232, size: 32, align: 32, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !182, file: !143, line: 232, baseType: !66, size: 32, align: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !182, file: !143, line: 232, baseType: !186, size: 32, align: 32)
!186 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!187 = !DISubprogram(name: "__inline_signbitd", scope: !143, file: !143, line: 236, type: !149, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !188)
!188 = !{!189, !190}
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !187, file: !143, line: 236, type: !151)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !187, file: !143, line: 237, type: !191)
!191 = !DICompositeType(tag: DW_TAG_union_type, scope: !187, file: !143, line: 237, size: 64, align: 64, elements: !192)
!192 = !{!193, !194}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !191, file: !143, line: 237, baseType: !151, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !191, file: !143, line: 237, baseType: !195, size: 64, align: 64)
!195 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!196 = !DISubprogram(name: "__inline_signbitl", scope: !143, file: !143, line: 242, type: !155, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !197)
!197 = !{!198, !199}
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !196, file: !143, line: 242, type: !157)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !196, file: !143, line: 246, type: !200)
!200 = !DICompositeType(tag: DW_TAG_union_type, scope: !196, file: !143, line: 243, size: 128, align: 128, elements: !201)
!201 = !{!202, !203}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !200, file: !143, line: 244, baseType: !157, size: 128, align: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !200, file: !143, line: 245, baseType: !204, size: 128, align: 64)
!204 = !DICompositeType(tag: DW_TAG_structure_type, scope: !200, file: !143, line: 245, size: 128, align: 64, elements: !205)
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !204, file: !143, line: 245, baseType: !195, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !204, file: !143, line: 245, baseType: !208, size: 16, align: 16, offset: 64)
!208 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!209 = !DISubprogram(name: "__inline_isnormalf", scope: !143, file: !143, line: 257, type: !144, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !210)
!210 = !{!211}
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !209, file: !143, line: 257, type: !66)
!212 = !DISubprogram(name: "__inline_isnormald", scope: !143, file: !143, line: 260, type: !149, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !213)
!213 = !{!214}
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !212, file: !143, line: 260, type: !151)
!215 = !DISubprogram(name: "__inline_isnormall", scope: !143, file: !143, line: 263, type: !155, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !216)
!216 = !{!217}
!217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !215, file: !143, line: 263, type: !157)
!218 = !DISubprogram(name: "__sincosf", scope: !143, file: !143, line: 642, type: !219, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !222)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !66, !221, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!222 = !{!223, !224, !225, !226}
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !218, file: !143, line: 642, type: !66)
!224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !218, file: !143, line: 642, type: !221)
!225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !218, file: !143, line: 642, type: !221)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !218, file: !143, line: 643, type: !227)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !143, line: 634, size: 64, align: 32, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !228, file: !143, line: 634, baseType: !66, size: 32, align: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !228, file: !143, line: 634, baseType: !66, size: 32, align: 32, offset: 32)
!232 = !DISubprogram(name: "__sincos", scope: !143, file: !143, line: 647, type: !233, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !236)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !151, !235, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!236 = !{!237, !238, !239, !240}
!237 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !232, file: !143, line: 647, type: !151)
!238 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !232, file: !143, line: 647, type: !235)
!239 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !232, file: !143, line: 647, type: !235)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !232, file: !143, line: 648, type: !241)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !143, line: 635, size: 128, align: 64, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !242, file: !143, line: 635, baseType: !151, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !242, file: !143, line: 635, baseType: !151, size: 64, align: 64, offset: 64)
!246 = !DISubprogram(name: "__sincospif", scope: !143, file: !143, line: 652, type: !219, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !247)
!247 = !{!248, !249, !250, !251}
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !246, file: !143, line: 652, type: !66)
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !246, file: !143, line: 652, type: !221)
!250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !246, file: !143, line: 652, type: !221)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !246, file: !143, line: 653, type: !227)
!252 = !DISubprogram(name: "__sincospi", scope: !143, file: !143, line: 657, type: !233, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !253)
!253 = !{!254, !255, !256, !257}
!254 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !252, file: !143, line: 657, type: !151)
!255 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !252, file: !143, line: 657, type: !235)
!256 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !252, file: !143, line: 657, type: !235)
!257 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !252, file: !143, line: 658, type: !241)
!258 = !DISubprogram(name: "nframes_read", scope: !1, file: !1, line: 60, type: !259, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @nframes_read, variables: !261)
!259 = !DISubroutineType(types: !260)
!260 = !{!62}
!261 = !{}
!262 = !DISubprogram(name: "prec2ndec", scope: !1, file: !1, line: 98, type: !263, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @prec2ndec, variables: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{!62, !64}
!265 = !{!266}
!266 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prec", arg: 1, scope: !262, file: !1, line: 98, type: !64)
!267 = !DISubprogram(name: "clear_trxframe", scope: !1, file: !1, line: 113, type: !268, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_trxframe*, i32)* @clear_trxframe, variables: !380)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !270, !62}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_trxframe", file: !272, line: 72, baseType: !273)
!272 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/trx.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!273 = !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 40, size: 1408, align: 64, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !364, !365, !366, !367, !371, !372, !373, !374, !375, !376}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !272, line: 42, baseType: !62, size: 32, align: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "not_ok", scope: !273, file: !272, line: 43, baseType: !62, size: 32, align: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "natoms", scope: !273, file: !272, line: 44, baseType: !62, size: 32, align: 32, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "t0", scope: !273, file: !272, line: 45, baseType: !64, size: 32, align: 32, offset: 96)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tpf", scope: !273, file: !272, line: 47, baseType: !64, size: 32, align: 32, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tppf", scope: !273, file: !272, line: 49, baseType: !64, size: 32, align: 32, offset: 160)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "bTitle", scope: !273, file: !272, line: 52, baseType: !62, size: 32, align: 32, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "title", scope: !273, file: !272, line: 53, baseType: !100, size: 64, align: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "bStep", scope: !273, file: !272, line: 54, baseType: !62, size: 32, align: 32, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !273, file: !272, line: 55, baseType: !62, size: 32, align: 32, offset: 352)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "bTime", scope: !273, file: !272, line: 56, baseType: !62, size: 32, align: 32, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !273, file: !272, line: 57, baseType: !64, size: 32, align: 32, offset: 416)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "bLambda", scope: !273, file: !272, line: 58, baseType: !62, size: 32, align: 32, offset: 448)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !273, file: !272, line: 59, baseType: !64, size: 32, align: 32, offset: 480)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "bAtoms", scope: !273, file: !272, line: 60, baseType: !62, size: 32, align: 32, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "atoms", scope: !273, file: !272, line: 61, baseType: !291, size: 64, align: 64, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atoms", file: !293, line: 94, baseType: !294)
!293 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/atoms.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!294 = !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 75, size: 10240, align: 64, elements: !295)
!295 = !{!296, !297, !315, !318, !319, !320, !321, !322, !323, !324, !339, !347}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !294, file: !293, line: 76, baseType: !62, size: 32, align: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !294, file: !293, line: 77, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atom", file: !293, line: 57, baseType: !300)
!300 = !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 48, size: 320, align: 32, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !314}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !300, file: !293, line: 49, baseType: !64, size: 32, align: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !300, file: !293, line: 49, baseType: !64, size: 32, align: 32, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "mB", scope: !300, file: !293, line: 50, baseType: !64, size: 32, align: 32, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "qB", scope: !300, file: !293, line: 50, baseType: !64, size: 32, align: 32, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !300, file: !293, line: 51, baseType: !208, size: 16, align: 16, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !300, file: !293, line: 52, baseType: !208, size: 16, align: 16, offset: 144)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !300, file: !293, line: 53, baseType: !62, size: 32, align: 32, offset: 160)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !300, file: !293, line: 54, baseType: !62, size: 32, align: 32, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "grpnr", scope: !300, file: !293, line: 55, baseType: !311, size: 72, align: 8, offset: 224)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 72, align: 8, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 9)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !300, file: !293, line: 56, baseType: !79, size: 8, align: 8, offset: 296)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "atomname", scope: !294, file: !293, line: 80, baseType: !316, size: 64, align: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "atomtype", scope: !294, file: !293, line: 82, baseType: !316, size: 64, align: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "atomtypeB", scope: !294, file: !293, line: 84, baseType: !316, size: 64, align: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !294, file: !293, line: 86, baseType: !62, size: 32, align: 32, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "resname", scope: !294, file: !293, line: 87, baseType: !316, size: 64, align: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ngrpname", scope: !294, file: !293, line: 89, baseType: !62, size: 32, align: 32, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "grpname", scope: !294, file: !293, line: 90, baseType: !316, size: 64, align: 64, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !294, file: !293, line: 91, baseType: !325, size: 8448, align: 64, offset: 576)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_block", file: !326, line: 52, baseType: !327)
!326 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/block.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!327 = !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 36, size: 8448, align: 64, elements: !328)
!328 = !{!329, !333, !334, !337, !338}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !327, file: !326, line: 37, baseType: !330, size: 8192, align: 32)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 8192, align: 32, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !327, file: !326, line: 43, baseType: !62, size: 32, align: 32, offset: 8192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !327, file: !326, line: 44, baseType: !335, size: 64, align: 64, offset: 8256)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !65, line: 73, baseType: !62)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "nra", scope: !327, file: !326, line: 45, baseType: !62, size: 32, align: 32, offset: 8320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !327, file: !326, line: 46, baseType: !335, size: 64, align: 64, offset: 8384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "grps", scope: !294, file: !293, line: 92, baseType: !340, size: 1152, align: 64, offset: 9024)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 1152, align: 64, elements: !312)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grps", file: !293, line: 73, baseType: !342)
!342 = !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 70, size: 128, align: 64, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !342, file: !293, line: 71, baseType: !62, size: 32, align: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "nm_ind", scope: !342, file: !293, line: 72, baseType: !346, size: 64, align: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "pdbinfo", scope: !294, file: !293, line: 93, baseType: !348, size: 64, align: 64, offset: 10176)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pdbinfo", file: !293, line: 68, baseType: !350)
!350 = !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 59, size: 416, align: 32, elements: !351)
!351 = !{!352, !353, !354, !355, !359, !360, !361, !362}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !350, file: !293, line: 60, baseType: !62, size: 32, align: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "atomnr", scope: !350, file: !293, line: 61, baseType: !62, size: 32, align: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "altloc", scope: !350, file: !293, line: 62, baseType: !61, size: 8, align: 8, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pdbresnr", scope: !350, file: !293, line: 63, baseType: !356, size: 48, align: 8, offset: 72)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 48, align: 8, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 6)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "occup", scope: !350, file: !293, line: 64, baseType: !64, size: 32, align: 32, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "bfac", scope: !350, file: !293, line: 65, baseType: !64, size: 32, align: 32, offset: 160)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "bAnisotropic", scope: !350, file: !293, line: 66, baseType: !62, size: 32, align: 32, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "uij", scope: !350, file: !293, line: 67, baseType: !363, size: 192, align: 32, offset: 224)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 192, align: 32, elements: !357)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "bPrec", scope: !273, file: !272, line: 62, baseType: !62, size: 32, align: 32, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "prec", scope: !273, file: !272, line: 63, baseType: !64, size: 32, align: 32, offset: 672)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "bX", scope: !273, file: !272, line: 64, baseType: !62, size: 32, align: 32, offset: 704)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !273, file: !272, line: 65, baseType: !368, size: 64, align: 64, offset: 768)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !65, line: 101, baseType: !370)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 96, align: 32, elements: !124)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "bV", scope: !273, file: !272, line: 66, baseType: !62, size: 32, align: 32, offset: 832)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !273, file: !272, line: 67, baseType: !368, size: 64, align: 64, offset: 896)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "bF", scope: !273, file: !272, line: 68, baseType: !62, size: 32, align: 32, offset: 960)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !273, file: !272, line: 69, baseType: !368, size: 64, align: 64, offset: 1024)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "bBox", scope: !273, file: !272, line: 70, baseType: !62, size: 32, align: 32, offset: 1088)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "box", scope: !273, file: !272, line: 71, baseType: !377, size: 288, align: 32, offset: 1120)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "matrix", file: !65, line: 103, baseType: !378)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 288, align: 32, elements: !379)
!379 = !{!125, !125}
!380 = !{!381, !382}
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 1, scope: !267, file: !1, line: 113, type: !270)
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bFirst", arg: 2, scope: !267, file: !1, line: 113, type: !62)
!383 = !DISubprogram(name: "write_trxframe_indexed", scope: !1, file: !1, line: 145, type: !384, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.t_trxframe*, i32, i32*)* @write_trxframe_indexed, variables: !386)
!384 = !DISubroutineType(types: !385)
!385 = !{!62, !62, !270, !62, !335}
!386 = !{!387, !388, !389, !390, !391, !395, !396, !397, !398, !399}
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnum", arg: 1, scope: !383, file: !1, line: 145, type: !62)
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 2, scope: !383, file: !1, line: 145, type: !270)
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nind", arg: 3, scope: !383, file: !1, line: 145, type: !62)
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ind", arg: 4, scope: !383, file: !1, line: 145, type: !335)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "title", scope: !383, file: !1, line: 147, type: !392)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32768, align: 8, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 4096)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xout", scope: !383, file: !1, line: 148, type: !368)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vout", scope: !383, file: !1, line: 148, type: !368)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fout", scope: !383, file: !1, line: 148, type: !368)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !383, file: !1, line: 149, type: !62)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prec", scope: !383, file: !1, line: 150, type: !64)
!400 = !DISubprogram(name: "write_trxframe", scope: !1, file: !1, line: 247, type: !401, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.t_trxframe*)* @write_trxframe, variables: !403)
!401 = !DISubroutineType(types: !402)
!402 = !{!62, !62, !270}
!403 = !{!404, !405, !406, !407}
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnum", arg: 1, scope: !400, file: !1, line: 247, type: !62)
!405 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 2, scope: !400, file: !1, line: 247, type: !270)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "title", scope: !400, file: !1, line: 249, type: !392)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prec", scope: !400, file: !1, line: 250, type: !64)
!408 = !DISubprogram(name: "write_trx", scope: !1, file: !1, line: 307, type: !409, isLocal: false, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i32*, %struct.t_atoms*, i32, float, [3 x float]*, [3 x float]*, [3 x float]*)* @write_trx, variables: !412)
!409 = !DISubroutineType(types: !410)
!410 = !{!62, !62, !62, !335, !291, !62, !64, !411, !368, !368}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!412 = !{!413, !414, !415, !416, !417, !418, !419, !420, !421, !422}
!413 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fnum", arg: 1, scope: !408, file: !1, line: 307, type: !62)
!414 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nind", arg: 2, scope: !408, file: !1, line: 307, type: !62)
!415 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ind", arg: 3, scope: !408, file: !1, line: 307, type: !335)
!416 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 4, scope: !408, file: !1, line: 307, type: !291)
!417 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 5, scope: !408, file: !1, line: 308, type: !62)
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "time", arg: 6, scope: !408, file: !1, line: 308, type: !64)
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 7, scope: !408, file: !1, line: 308, type: !411)
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 8, scope: !408, file: !1, line: 308, type: !368)
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 9, scope: !408, file: !1, line: 308, type: !368)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fr", scope: !408, file: !1, line: 310, type: !271)
!423 = !DISubprogram(name: "close_trx", scope: !1, file: !1, line: 329, type: !424, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @close_trx, variables: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !62}
!426 = !{!427}
!427 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !423, file: !1, line: 329, type: !62)
!428 = !DISubprogram(name: "open_trx", scope: !1, file: !1, line: 334, type: !429, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @open_trx, variables: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!62, !100, !100}
!431 = !{!432, !433}
!432 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outfile", arg: 1, scope: !428, file: !1, line: 334, type: !100)
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filemode", arg: 2, scope: !428, file: !1, line: 334, type: !100)
!434 = !DISubprogram(name: "read_next_frame", scope: !1, file: !1, line: 589, type: !401, isLocal: false, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.t_trxframe*)* @read_next_frame, variables: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443}
!436 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !434, file: !1, line: 589, type: !62)
!437 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 2, scope: !434, file: !1, line: 589, type: !270)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pt", scope: !434, file: !1, line: 591, type: !64)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ct", scope: !434, file: !1, line: 592, type: !62)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bOK", scope: !434, file: !1, line: 593, type: !62)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bRet", scope: !434, file: !1, line: 593, type: !62)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bMissingData", scope: !434, file: !1, line: 593, type: !62)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bSkip", scope: !434, file: !1, line: 593, type: !62)
!444 = !DISubprogram(name: "read_first_frame", scope: !1, file: !1, line: 669, type: !445, isLocal: false, isDefinition: true, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i8*, %struct.t_trxframe*, i32)* @read_first_frame, variables: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{!62, !346, !100, !270, !62}
!447 = !{!448, !449, !450, !451, !452, !453, !454}
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !444, file: !1, line: 669, type: !346)
!449 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !444, file: !1, line: 669, type: !100)
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 3, scope: !444, file: !1, line: 669, type: !270)
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 4, scope: !444, file: !1, line: 669, type: !62)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !444, file: !1, line: 671, type: !62)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bFirst", scope: !444, file: !1, line: 672, type: !62)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bOK", scope: !444, file: !1, line: 672, type: !62)
!455 = !DISubprogram(name: "read_first_x", scope: !1, file: !1, line: 747, type: !456, isLocal: false, isDefinition: true, scopeLine: 749, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i8*, float*, [3 x float]**, [3 x float]*)* @read_first_x, variables: !460)
!456 = !DISubroutineType(types: !457)
!457 = !{!62, !346, !100, !458, !459, !411}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!460 = !{!461, !462, !463, !464, !465, !466}
!461 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !455, file: !1, line: 747, type: !346)
!462 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !455, file: !1, line: 747, type: !100)
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 3, scope: !455, file: !1, line: 748, type: !458)
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !455, file: !1, line: 748, type: !459)
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !455, file: !1, line: 748, type: !411)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fr", scope: !455, file: !1, line: 750, type: !271)
!467 = !DISubprogram(name: "read_next_x", scope: !1, file: !1, line: 765, type: !468, isLocal: false, isDefinition: true, scopeLine: 766, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, float*, i32, [3 x float]*, [3 x float]*)* @read_next_x, variables: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{!62, !62, !458, !62, !368, !411}
!470 = !{!471, !472, !473, !474, !475, !476}
!471 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !467, file: !1, line: 765, type: !62)
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 2, scope: !467, file: !1, line: 765, type: !458)
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 3, scope: !467, file: !1, line: 765, type: !62)
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !467, file: !1, line: 765, type: !368)
!475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !467, file: !1, line: 765, type: !411)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bRet", scope: !467, file: !1, line: 767, type: !62)
!477 = !DISubprogram(name: "close_trj", scope: !1, file: !1, line: 777, type: !424, isLocal: false, isDefinition: true, scopeLine: 778, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @close_trj, variables: !478)
!478 = !{!479}
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !477, file: !1, line: 777, type: !62)
!480 = !DISubprogram(name: "rewind_trj", scope: !1, file: !1, line: 782, type: !424, isLocal: false, isDefinition: true, scopeLine: 783, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @rewind_trj, variables: !481)
!481 = !{!482}
!482 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !480, file: !1, line: 782, type: !62)
!483 = !DISubprogram(name: "read_first_v", scope: !1, file: !1, line: 800, type: !456, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i8*, float*, [3 x float]**, [3 x float]*)* @read_first_v, variables: !484)
!484 = !{!485, !486, !487, !488, !489, !490}
!485 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !483, file: !1, line: 800, type: !346)
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !483, file: !1, line: 800, type: !100)
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 3, scope: !483, file: !1, line: 800, type: !458)
!488 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 4, scope: !483, file: !1, line: 800, type: !459)
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !483, file: !1, line: 800, type: !411)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fr", scope: !483, file: !1, line: 802, type: !271)
!491 = !DISubprogram(name: "read_next_v", scope: !1, file: !1, line: 813, type: !468, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, float*, i32, [3 x float]*, [3 x float]*)* @read_next_v, variables: !492)
!492 = !{!493, !494, !495, !496, !497, !498, !499}
!493 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !491, file: !1, line: 813, type: !62)
!494 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 2, scope: !491, file: !1, line: 813, type: !458)
!495 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 3, scope: !491, file: !1, line: 813, type: !62)
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 4, scope: !491, file: !1, line: 813, type: !368)
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !491, file: !1, line: 813, type: !411)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fr", scope: !491, file: !1, line: 815, type: !271)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bRet", scope: !491, file: !1, line: 816, type: !62)
!500 = !DISubprogram(name: "clear_mat", scope: !501, file: !501, line: 334, type: !502, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, variables: !504)
!501 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!502 = !DISubroutineType(types: !503)
!503 = !{null, !411}
!504 = !{!505, !506}
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !500, file: !501, line: 334, type: !411)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nul", scope: !500, file: !501, line: 336, type: !507)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!508 = !DISubprogram(name: "copy_rvec", scope: !501, file: !501, line: 270, type: !509, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, variables: !512)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !511, !458}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!512 = !{!513, !514}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !508, file: !501, line: 270, type: !511)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !508, file: !501, line: 270, type: !458)
!515 = !DISubprogram(name: "copy_mat", scope: !501, file: !501, line: 297, type: !516, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, variables: !518)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !411, !411}
!518 = !{!519, !520}
!519 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !515, file: !501, line: 297, type: !411)
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !515, file: !501, line: 297, type: !411)
!521 = !DISubprogram(name: "gmx_next_frame", scope: !1, file: !1, line: 342, type: !401, isLocal: true, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, variables: !522)
!522 = !{!523, !524, !525, !545, !546}
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !521, file: !1, line: 342, type: !62)
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 2, scope: !521, file: !1, line: 342, type: !270)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sh", scope: !521, file: !1, line: 344, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_trnheader", file: !527, line: 77, baseType: !528)
!527 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/trnio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!528 = !DICompositeType(tag: DW_TAG_structure_type, file: !527, line: 58, size: 480, align: 32, elements: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ir_size", scope: !528, file: !527, line: 61, baseType: !62, size: 32, align: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "e_size", scope: !528, file: !527, line: 62, baseType: !62, size: 32, align: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "box_size", scope: !528, file: !527, line: 63, baseType: !62, size: 32, align: 32, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "vir_size", scope: !528, file: !527, line: 64, baseType: !62, size: 32, align: 32, offset: 96)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "pres_size", scope: !528, file: !527, line: 65, baseType: !62, size: 32, align: 32, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "top_size", scope: !528, file: !527, line: 66, baseType: !62, size: 32, align: 32, offset: 160)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_size", scope: !528, file: !527, line: 67, baseType: !62, size: 32, align: 32, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "x_size", scope: !528, file: !527, line: 68, baseType: !62, size: 32, align: 32, offset: 224)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "v_size", scope: !528, file: !527, line: 69, baseType: !62, size: 32, align: 32, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "f_size", scope: !528, file: !527, line: 70, baseType: !62, size: 32, align: 32, offset: 288)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "natoms", scope: !528, file: !527, line: 72, baseType: !62, size: 32, align: 32, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !528, file: !527, line: 73, baseType: !62, size: 32, align: 32, offset: 352)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nre", scope: !528, file: !527, line: 74, baseType: !62, size: 32, align: 32, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !528, file: !527, line: 75, baseType: !64, size: 32, align: 32, offset: 416)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "lambda", scope: !528, file: !527, line: 76, baseType: !64, size: 32, align: 32, offset: 448)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bOK", scope: !521, file: !1, line: 345, type: !62)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bRet", scope: !521, file: !1, line: 345, type: !62)
!547 = !DISubprogram(name: "xyz_next_x", scope: !1, file: !1, line: 469, type: !548, isLocal: true, isDefinition: true, scopeLine: 473, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, float*, i32, [3 x float]*, [3 x float]*)* @xyz_next_x, variables: !550)
!548 = !DISubroutineType(types: !549)
!549 = !{!62, !73, !458, !62, !368, !411}
!550 = !{!551, !552, !553, !554, !555, !556}
!551 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !547, file: !1, line: 469, type: !73)
!552 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 2, scope: !547, file: !1, line: 469, type: !458)
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 3, scope: !547, file: !1, line: 469, type: !62)
!554 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !547, file: !1, line: 469, type: !368)
!555 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !547, file: !1, line: 469, type: !411)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pt", scope: !547, file: !1, line: 475, type: !64)
!557 = !DISubprogram(name: "do_read_xyz", scope: !1, file: !1, line: 443, type: !558, isLocal: true, isDefinition: true, scopeLine: 444, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, i32, [3 x float]*, [3 x float]*)* @do_read_xyz, variables: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{!62, !73, !62, !368, !411}
!560 = !{!561, !562, !563, !564, !565, !566, !567}
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !557, file: !1, line: 443, type: !73)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !557, file: !1, line: 443, type: !62)
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !557, file: !1, line: 443, type: !368)
!564 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 4, scope: !557, file: !1, line: 443, type: !411)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !557, file: !1, line: 445, type: !62)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !557, file: !1, line: 445, type: !62)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x0", scope: !557, file: !1, line: 446, type: !151)
!568 = !DISubprogram(name: "pdb_next_x", scope: !1, file: !1, line: 525, type: !569, isLocal: true, isDefinition: true, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, %struct.t_trxframe*)* @pdb_next_x, variables: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{!62, !73, !270}
!571 = !{!572, !573, !574, !575, !576, !577, !578, !579}
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !568, file: !1, line: 525, type: !73)
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 2, scope: !568, file: !1, line: 525, type: !270)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atoms", scope: !568, file: !1, line: 527, type: !292)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "model_nr", scope: !568, file: !1, line: 528, type: !62)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "na", scope: !568, file: !1, line: 528, type: !62)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "title", scope: !568, file: !1, line: 529, type: !392)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "time", scope: !568, file: !1, line: 529, type: !100)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dbl", scope: !568, file: !1, line: 530, type: !151)
!580 = !DISubprogram(name: "printcount2", scope: !1, file: !1, line: 70, type: !581, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float, float, float)* @printcount2, variables: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !64, !64, !64, !64}
!583 = !{!584, !585, !586, !587}
!584 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 1, scope: !580, file: !1, line: 70, type: !64)
!585 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t0", arg: 2, scope: !580, file: !1, line: 70, type: !64)
!586 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tpf", arg: 3, scope: !580, file: !1, line: 70, type: !64)
!587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tppf", arg: 4, scope: !580, file: !1, line: 70, type: !64)
!588 = !DISubprogram(name: "printcount_", scope: !1, file: !1, line: 65, type: !589, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, variables: !591)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !100, !64}
!591 = !{!592, !593}
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "l", arg: 1, scope: !588, file: !1, line: 65, type: !100)
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 2, scope: !588, file: !1, line: 65, type: !64)
!594 = !DISubprogram(name: "printlast", scope: !1, file: !1, line: 82, type: !595, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, function: void (float)* @printlast, variables: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !64}
!597 = !{!598}
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 1, scope: !594, file: !1, line: 82, type: !64)
!599 = !DISubprogram(name: "printincomp", scope: !1, file: !1, line: 88, type: !600, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, variables: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !270}
!602 = !{!603}
!603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 1, scope: !599, file: !1, line: 88, type: !270)
!604 = !DISubprogram(name: "xyz_first_x", scope: !1, file: !1, line: 499, type: !605, isLocal: true, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, variables: !607)
!605 = !DISubroutineType(types: !606)
!606 = !{!62, !73, !458, !459, !411}
!607 = !{!608, !609, !610, !611, !612}
!608 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !604, file: !1, line: 499, type: !73)
!609 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 2, scope: !604, file: !1, line: 499, type: !458)
!610 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !604, file: !1, line: 499, type: !459)
!611 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 4, scope: !604, file: !1, line: 499, type: !411)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !604, file: !1, line: 504, type: !62)
!613 = !DISubprogram(name: "choose_ff", scope: !1, file: !1, line: 384, type: !614, isLocal: true, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, variables: !616)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !73}
!616 = !{!617, !618, !619, !620}
!617 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !613, file: !1, line: 384, type: !73)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !613, file: !1, line: 386, type: !62)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !613, file: !1, line: 386, type: !62)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !613, file: !1, line: 386, type: !62)
!621 = !DISubprogram(name: "printcount", scope: !1, file: !1, line: 77, type: !595, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, variables: !622)
!622 = !{!623}
!623 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t", arg: 1, scope: !621, file: !1, line: 77, type: !64)
!624 = !DISubprogram(name: "pdb_first_x", scope: !1, file: !1, line: 573, type: !569, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, variables: !625)
!625 = !{!626, !627}
!626 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "status", arg: 1, scope: !624, file: !1, line: 573, type: !73)
!627 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 2, scope: !624, file: !1, line: 573, type: !270)
!628 = !DISubprogram(name: "clear_v", scope: !1, file: !1, line: 791, type: !600, isLocal: true, isDefinition: true, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: true, variables: !629)
!629 = !{!630, !631}
!630 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 1, scope: !628, file: !1, line: 791, type: !270)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !628, file: !1, line: 793, type: !62)
!632 = !DISubprogram(name: "clear_rvec", scope: !501, file: !501, line: 316, type: !633, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, variables: !635)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !458}
!635 = !{!636}
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !632, file: !501, line: 316, type: !458)
!637 = !{!638, !639, !640, !641, !642, !644, !645, !646}
!638 = !DIGlobalVariable(name: "__frame", scope: !0, file: !1, line: 52, type: !62, isLocal: true, isDefinition: true, variable: i32* @__frame)
!639 = !DIGlobalVariable(name: "bReadBox", scope: !0, file: !1, line: 111, type: !62, isLocal: true, isDefinition: true, variable: i32* @bReadBox)
!640 = !DIGlobalVariable(name: "DT", scope: !0, file: !1, line: 110, type: !151, isLocal: true, isDefinition: true, variable: double* @DT)
!641 = !DIGlobalVariable(name: "eFF", scope: !0, file: !1, line: 108, type: !67, isLocal: true, isDefinition: true, variable: i32* @eFF)
!642 = !DIGlobalVariable(name: "BOX", scope: !0, file: !1, line: 110, type: !643, isLocal: true, isDefinition: true, variable: [3 x double]* @BOX)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 192, align: 64, elements: !124)
!644 = !DIGlobalVariable(name: "NATOMS", scope: !0, file: !1, line: 109, type: !62, isLocal: true, isDefinition: true, variable: i32* @NATOMS)
!645 = !DIGlobalVariable(name: "nxframe", scope: !0, file: !1, line: 58, type: !62, isLocal: true, isDefinition: true, variable: i32* @nxframe)
!646 = !DIGlobalVariable(name: "xframe", scope: !0, file: !1, line: 57, type: !270, isLocal: true, isDefinition: true, variable: %struct.t_trxframe** @xframe)
!647 = !{i32 2, !"Dwarf Version", i32 2}
!648 = !{i32 2, !"Debug Info Version", i32 700000003}
!649 = !{i32 1, !"PIC Level", i32 2}
!650 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!651 = !DIExpression()
!652 = !DILocation(line: 348, column: 40, scope: !69)
!653 = !DILocation(line: 348, column: 50, scope: !69)
!654 = !DILocation(line: 349, column: 12, scope: !655)
!655 = distinct !DILexicalBlock(scope: !69, file: !70, line: 349, column: 6)
!656 = !DILocation(line: 349, column: 6, scope: !655)
!657 = !{!658, !662, i64 12}
!658 = !{!"__sFILE", !659, i64 0, !662, i64 8, !662, i64 12, !663, i64 16, !663, i64 18, !664, i64 24, !662, i64 40, !659, i64 48, !659, i64 56, !659, i64 64, !659, i64 72, !659, i64 80, !664, i64 88, !659, i64 104, !662, i64 112, !660, i64 116, !660, i64 119, !664, i64 120, !662, i64 136, !665, i64 144}
!659 = !{!"any pointer", !660, i64 0}
!660 = !{!"omnipotent char", !661, i64 0}
!661 = !{!"Simple C/C++ TBAA"}
!662 = !{!"int", !660, i64 0}
!663 = !{!"short", !660, i64 0}
!664 = !{!"__sbuf", !659, i64 0, !662, i64 8}
!665 = !{!"long long", !660, i64 0}
!666 = !DILocation(line: 349, column: 15, scope: !655)
!667 = !DILocation(line: 349, column: 20, scope: !655)
!668 = !DILocation(line: 350, column: 10, scope: !655)
!669 = !DILocation(line: 349, column: 38, scope: !655)
!670 = !{!658, !662, i64 40}
!671 = !DILocation(line: 349, column: 31, scope: !655)
!672 = !DILocation(line: 349, column: 59, scope: !655)
!673 = !DILocation(line: 349, column: 47, scope: !655)
!674 = !DILocation(line: 350, column: 23, scope: !655)
!675 = !DILocation(line: 350, column: 16, scope: !655)
!676 = !DILocation(line: 350, column: 18, scope: !655)
!677 = !{!658, !659, i64 0}
!678 = !DILocation(line: 350, column: 21, scope: !655)
!679 = !{!660, !660, i64 0}
!680 = !DILocation(line: 350, column: 3, scope: !655)
!681 = !DILocation(line: 352, column: 11, scope: !655)
!682 = !DILocation(line: 352, column: 3, scope: !655)
!683 = !DILocation(line: 353, column: 1, scope: !69)
!684 = !DILocation(line: 114, column: 15, scope: !136)
!685 = !DILocation(line: 116, column: 20, scope: !136)
!686 = !DILocation(line: 116, column: 12, scope: !136)
!687 = !DILocation(line: 116, column: 57, scope: !136)
!688 = !DILocation(line: 116, column: 45, scope: !136)
!689 = !DILocation(line: 116, column: 5, scope: !136)
!690 = !DILocation(line: 204, column: 53, scope: !142)
!691 = !DILocation(line: 205, column: 16, scope: !142)
!692 = !DILocation(line: 205, column: 23, scope: !142)
!693 = !DILocation(line: 205, column: 26, scope: !142)
!694 = !DILocation(line: 205, column: 47, scope: !142)
!695 = !DILocation(line: 205, column: 5, scope: !142)
!696 = !DILocation(line: 207, column: 54, scope: !148)
!697 = !DILocation(line: 208, column: 16, scope: !148)
!698 = !DILocation(line: 208, column: 23, scope: !148)
!699 = !DILocation(line: 208, column: 26, scope: !148)
!700 = !DILocation(line: 208, column: 46, scope: !148)
!701 = !DILocation(line: 208, column: 5, scope: !148)
!702 = !DILocation(line: 210, column: 59, scope: !154)
!703 = !DILocation(line: 211, column: 16, scope: !154)
!704 = !DILocation(line: 211, column: 23, scope: !154)
!705 = !DILocation(line: 211, column: 26, scope: !154)
!706 = !DILocation(line: 211, column: 47, scope: !154)
!707 = !DILocation(line: 211, column: 5, scope: !154)
!708 = !DILocation(line: 213, column: 50, scope: !160)
!709 = !DILocation(line: 214, column: 12, scope: !160)
!710 = !DILocation(line: 214, column: 33, scope: !160)
!711 = !DILocation(line: 214, column: 5, scope: !160)
!712 = !DILocation(line: 216, column: 51, scope: !163)
!713 = !DILocation(line: 217, column: 12, scope: !163)
!714 = !DILocation(line: 217, column: 32, scope: !163)
!715 = !DILocation(line: 217, column: 5, scope: !163)
!716 = !DILocation(line: 219, column: 56, scope: !166)
!717 = !DILocation(line: 220, column: 12, scope: !166)
!718 = !DILocation(line: 220, column: 33, scope: !166)
!719 = !DILocation(line: 220, column: 5, scope: !166)
!720 = !DILocation(line: 222, column: 50, scope: !169)
!721 = !DILocation(line: 223, column: 16, scope: !169)
!722 = !DILocation(line: 223, column: 5, scope: !169)
!723 = !DILocation(line: 225, column: 51, scope: !172)
!724 = !DILocation(line: 226, column: 16, scope: !172)
!725 = !DILocation(line: 226, column: 5, scope: !172)
!726 = !DILocation(line: 228, column: 56, scope: !175)
!727 = !DILocation(line: 229, column: 16, scope: !175)
!728 = !DILocation(line: 229, column: 5, scope: !175)
!729 = !DILocation(line: 231, column: 52, scope: !178)
!730 = !DILocation(line: 232, column: 44, scope: !178)
!731 = !DILocation(line: 233, column: 13, scope: !178)
!732 = !DILocation(line: 234, column: 26, scope: !178)
!733 = !DILocation(line: 234, column: 5, scope: !178)
!734 = !DILocation(line: 236, column: 53, scope: !187)
!735 = !DILocation(line: 237, column: 51, scope: !187)
!736 = !DILocation(line: 238, column: 13, scope: !187)
!737 = !DILocation(line: 239, column: 26, scope: !187)
!738 = !DILocation(line: 239, column: 12, scope: !187)
!739 = !DILocation(line: 239, column: 5, scope: !187)
!740 = !DILocation(line: 242, column: 58, scope: !196)
!741 = !DILocation(line: 246, column: 7, scope: !196)
!742 = !DILocation(line: 248, column: 26, scope: !196)
!743 = !DILocation(line: 248, column: 33, scope: !196)
!744 = !DILocation(line: 248, column: 5, scope: !196)
!745 = !DILocation(line: 257, column: 53, scope: !209)
!746 = !DILocation(line: 204, column: 53, scope: !142, inlinedAt: !747)
!747 = distinct !DILocation(line: 258, column: 12, scope: !209)
!748 = !DILocation(line: 205, column: 16, scope: !142, inlinedAt: !747)
!749 = !DILocation(line: 205, column: 47, scope: !142, inlinedAt: !747)
!750 = !DILocation(line: 205, column: 23, scope: !142, inlinedAt: !747)
!751 = !DILocation(line: 258, column: 60, scope: !209)
!752 = !DILocation(line: 258, column: 36, scope: !209)
!753 = !DILocation(line: 258, column: 5, scope: !209)
!754 = !DILocation(line: 260, column: 54, scope: !212)
!755 = !DILocation(line: 207, column: 54, scope: !148, inlinedAt: !756)
!756 = distinct !DILocation(line: 261, column: 12, scope: !212)
!757 = !DILocation(line: 208, column: 16, scope: !148, inlinedAt: !756)
!758 = !DILocation(line: 208, column: 46, scope: !148, inlinedAt: !756)
!759 = !DILocation(line: 208, column: 23, scope: !148, inlinedAt: !756)
!760 = !DILocation(line: 261, column: 59, scope: !212)
!761 = !DILocation(line: 261, column: 36, scope: !212)
!762 = !DILocation(line: 261, column: 5, scope: !212)
!763 = !DILocation(line: 263, column: 59, scope: !215)
!764 = !DILocation(line: 210, column: 59, scope: !154, inlinedAt: !765)
!765 = distinct !DILocation(line: 264, column: 12, scope: !215)
!766 = !DILocation(line: 211, column: 16, scope: !154, inlinedAt: !765)
!767 = !DILocation(line: 211, column: 47, scope: !154, inlinedAt: !765)
!768 = !DILocation(line: 211, column: 23, scope: !154, inlinedAt: !765)
!769 = !DILocation(line: 264, column: 60, scope: !215)
!770 = !DILocation(line: 264, column: 36, scope: !215)
!771 = !DILocation(line: 264, column: 5, scope: !215)
!772 = !DILocation(line: 642, column: 45, scope: !218)
!773 = !DILocation(line: 642, column: 57, scope: !218)
!774 = !DILocation(line: 642, column: 72, scope: !218)
!775 = !DILocation(line: 643, column: 27, scope: !218)
!776 = !DILocation(line: 643, column: 37, scope: !218)
!777 = !DILocation(line: 644, column: 23, scope: !218)
!778 = !DILocation(line: 644, column: 13, scope: !218)
!779 = !{!780, !780, i64 0}
!780 = !{!"float", !660, i64 0}
!781 = !DILocation(line: 644, column: 51, scope: !218)
!782 = !DILocation(line: 644, column: 41, scope: !218)
!783 = !DILocation(line: 645, column: 1, scope: !218)
!784 = !DILocation(line: 647, column: 45, scope: !232)
!785 = !DILocation(line: 647, column: 58, scope: !232)
!786 = !DILocation(line: 647, column: 74, scope: !232)
!787 = !DILocation(line: 648, column: 28, scope: !232)
!788 = !DILocation(line: 648, column: 38, scope: !232)
!789 = !DIExpression(DW_OP_bit_piece, 0, 64)
!790 = !DIExpression(DW_OP_bit_piece, 64, 64)
!791 = !DILocation(line: 649, column: 13, scope: !232)
!792 = !{!793, !793, i64 0}
!793 = !{!"double", !660, i64 0}
!794 = !DILocation(line: 649, column: 41, scope: !232)
!795 = !DILocation(line: 650, column: 1, scope: !232)
!796 = !DILocation(line: 652, column: 47, scope: !246)
!797 = !DILocation(line: 652, column: 59, scope: !246)
!798 = !DILocation(line: 652, column: 74, scope: !246)
!799 = !DILocation(line: 653, column: 27, scope: !246)
!800 = !DILocation(line: 653, column: 37, scope: !246)
!801 = !DILocation(line: 654, column: 23, scope: !246)
!802 = !DILocation(line: 654, column: 13, scope: !246)
!803 = !DILocation(line: 654, column: 51, scope: !246)
!804 = !DILocation(line: 654, column: 41, scope: !246)
!805 = !DILocation(line: 655, column: 1, scope: !246)
!806 = !DILocation(line: 657, column: 47, scope: !252)
!807 = !DILocation(line: 657, column: 60, scope: !252)
!808 = !DILocation(line: 657, column: 76, scope: !252)
!809 = !DILocation(line: 658, column: 28, scope: !252)
!810 = !DILocation(line: 658, column: 38, scope: !252)
!811 = !DILocation(line: 659, column: 13, scope: !252)
!812 = !DILocation(line: 659, column: 41, scope: !252)
!813 = !DILocation(line: 660, column: 1, scope: !252)
!814 = !DILocation(line: 62, column: 10, scope: !258)
!815 = !{!662, !662, i64 0}
!816 = !DILocation(line: 62, column: 3, scope: !258)
!817 = !DILocation(line: 98, column: 20, scope: !262)
!818 = !DILocation(line: 100, column: 12, scope: !819)
!819 = distinct !DILexicalBlock(scope: !262, file: !1, line: 100, column: 7)
!820 = !DILocation(line: 103, column: 20, scope: !262)
!821 = !DILocation(line: 100, column: 7, scope: !262)
!822 = !DILocation(line: 101, column: 5, scope: !819)
!823 = !DILocation(line: 103, column: 16, scope: !262)
!824 = !DILocation(line: 103, column: 25, scope: !262)
!825 = !DILocation(line: 103, column: 35, scope: !262)
!826 = !DILocation(line: 103, column: 10, scope: !262)
!827 = !DILocation(line: 103, column: 3, scope: !262)
!828 = !DILocation(line: 113, column: 33, scope: !267)
!829 = !DILocation(line: 113, column: 41, scope: !267)
!830 = !DILocation(line: 115, column: 7, scope: !267)
!831 = !DILocation(line: 115, column: 15, scope: !267)
!832 = !{!833, !662, i64 4}
!833 = !{!"", !662, i64 0, !662, i64 4, !662, i64 8, !780, i64 12, !780, i64 16, !780, i64 20, !662, i64 24, !659, i64 32, !662, i64 40, !662, i64 44, !662, i64 48, !780, i64 52, !662, i64 56, !780, i64 60, !662, i64 64, !659, i64 72, !662, i64 80, !780, i64 84, !662, i64 88, !659, i64 96, !662, i64 104, !659, i64 112, !662, i64 120, !659, i64 128, !662, i64 136, !660, i64 140}
!834 = !DILocation(line: 116, column: 7, scope: !267)
!835 = !DILocation(line: 116, column: 15, scope: !267)
!836 = !{!833, !662, i64 24}
!837 = !DILocation(line: 117, column: 7, scope: !267)
!838 = !DILocation(line: 117, column: 15, scope: !267)
!839 = !{!833, !662, i64 40}
!840 = !DILocation(line: 118, column: 7, scope: !267)
!841 = !DILocation(line: 118, column: 15, scope: !267)
!842 = !{!833, !662, i64 48}
!843 = !DILocation(line: 119, column: 7, scope: !267)
!844 = !DILocation(line: 119, column: 15, scope: !267)
!845 = !{!833, !662, i64 56}
!846 = !DILocation(line: 120, column: 7, scope: !267)
!847 = !DILocation(line: 120, column: 15, scope: !267)
!848 = !{!833, !662, i64 64}
!849 = !DILocation(line: 121, column: 7, scope: !267)
!850 = !DILocation(line: 121, column: 15, scope: !267)
!851 = !{!833, !662, i64 80}
!852 = !DILocation(line: 122, column: 7, scope: !267)
!853 = !DILocation(line: 122, column: 15, scope: !267)
!854 = !{!833, !662, i64 88}
!855 = !DILocation(line: 123, column: 7, scope: !267)
!856 = !DILocation(line: 123, column: 15, scope: !267)
!857 = !{!833, !662, i64 104}
!858 = !DILocation(line: 124, column: 7, scope: !267)
!859 = !DILocation(line: 124, column: 15, scope: !267)
!860 = !{!833, !662, i64 120}
!861 = !DILocation(line: 125, column: 7, scope: !267)
!862 = !DILocation(line: 125, column: 15, scope: !267)
!863 = !{!833, !662, i64 136}
!864 = !DILocation(line: 126, column: 7, scope: !865)
!865 = distinct !DILexicalBlock(scope: !267, file: !1, line: 126, column: 7)
!866 = !DILocation(line: 126, column: 7, scope: !267)
!867 = !DILocation(line: 127, column: 9, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !1, line: 126, column: 15)
!869 = !DILocation(line: 127, column: 16, scope: !868)
!870 = !{!833, !662, i64 0}
!871 = !DILocation(line: 128, column: 9, scope: !868)
!872 = !DILocation(line: 128, column: 16, scope: !868)
!873 = !{!833, !662, i64 8}
!874 = !DILocation(line: 129, column: 9, scope: !868)
!875 = !DILocation(line: 129, column: 16, scope: !868)
!876 = !{!833, !780, i64 12}
!877 = !DILocation(line: 130, column: 9, scope: !868)
!878 = !DILocation(line: 130, column: 16, scope: !868)
!879 = !{!833, !780, i64 16}
!880 = !DILocation(line: 131, column: 9, scope: !868)
!881 = !DILocation(line: 131, column: 16, scope: !868)
!882 = !{!833, !780, i64 20}
!883 = !DILocation(line: 132, column: 9, scope: !868)
!884 = !DILocation(line: 132, column: 16, scope: !868)
!885 = !{!833, !659, i64 32}
!886 = !DILocation(line: 133, column: 9, scope: !868)
!887 = !DILocation(line: 133, column: 16, scope: !868)
!888 = !{!833, !662, i64 44}
!889 = !DILocation(line: 134, column: 9, scope: !868)
!890 = !DILocation(line: 134, column: 16, scope: !868)
!891 = !{!833, !780, i64 52}
!892 = !DILocation(line: 135, column: 9, scope: !868)
!893 = !DILocation(line: 135, column: 16, scope: !868)
!894 = !{!833, !780, i64 60}
!895 = !DILocation(line: 136, column: 9, scope: !868)
!896 = !DILocation(line: 136, column: 16, scope: !868)
!897 = !{!833, !659, i64 72}
!898 = !DILocation(line: 137, column: 9, scope: !868)
!899 = !DILocation(line: 137, column: 16, scope: !868)
!900 = !{!833, !780, i64 84}
!901 = !DILocation(line: 138, column: 9, scope: !868)
!902 = !DILocation(line: 138, column: 16, scope: !868)
!903 = !{!833, !659, i64 96}
!904 = !DILocation(line: 139, column: 9, scope: !868)
!905 = !DILocation(line: 139, column: 16, scope: !868)
!906 = !{!833, !659, i64 112}
!907 = !DILocation(line: 140, column: 9, scope: !868)
!908 = !DILocation(line: 140, column: 16, scope: !868)
!909 = !{!833, !659, i64 128}
!910 = !DILocation(line: 141, column: 15, scope: !868)
!911 = !DILocation(line: 334, column: 37, scope: !500, inlinedAt: !912)
!912 = distinct !DILocation(line: 141, column: 5, scope: !868)
!913 = !DILocation(line: 336, column: 14, scope: !500, inlinedAt: !912)
!914 = !DILocation(line: 341, column: 1, scope: !500, inlinedAt: !912)
!915 = !DILocation(line: 338, column: 22, scope: !500, inlinedAt: !912)
!916 = !DILocation(line: 142, column: 3, scope: !868)
!917 = !DILocation(line: 143, column: 1, scope: !267)
!918 = !DILocation(line: 145, column: 32, scope: !383)
!919 = !DILocation(line: 145, column: 49, scope: !383)
!920 = !DILocation(line: 145, column: 56, scope: !383)
!921 = !DILocation(line: 145, column: 70, scope: !383)
!922 = !DILocation(line: 147, column: 3, scope: !383)
!923 = !DILocation(line: 147, column: 8, scope: !383)
!924 = !DILocation(line: 148, column: 9, scope: !383)
!925 = !DILocation(line: 148, column: 20, scope: !383)
!926 = !DILocation(line: 148, column: 31, scope: !383)
!927 = !DILocation(line: 152, column: 11, scope: !928)
!928 = distinct !DILexicalBlock(scope: !383, file: !1, line: 152, column: 7)
!929 = !DILocation(line: 152, column: 7, scope: !928)
!930 = !DILocation(line: 152, column: 7, scope: !383)
!931 = !DILocation(line: 153, column: 16, scope: !928)
!932 = !DILocation(line: 150, column: 8, scope: !383)
!933 = !DILocation(line: 153, column: 5, scope: !928)
!934 = !DILocation(line: 157, column: 11, scope: !383)
!935 = !DILocation(line: 157, column: 3, scope: !383)
!936 = !DILocation(line: 162, column: 14, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !1, line: 162, column: 9)
!938 = distinct !DILexicalBlock(scope: !383, file: !1, line: 157, column: 33)
!939 = !DILocation(line: 162, column: 10, scope: !937)
!940 = !DILocation(line: 162, column: 9, scope: !938)
!941 = !DILocation(line: 164, column: 13, scope: !937)
!942 = !DILocation(line: 164, column: 5, scope: !937)
!943 = !DILocation(line: 163, column: 7, scope: !937)
!944 = !DILocation(line: 168, column: 11, scope: !383)
!945 = !DILocation(line: 168, column: 3, scope: !383)
!946 = !DILocation(line: 171, column: 13, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !1, line: 171, column: 9)
!948 = distinct !DILexicalBlock(scope: !383, file: !1, line: 168, column: 33)
!949 = !DILocation(line: 171, column: 9, scope: !947)
!950 = !DILocation(line: 171, column: 9, scope: !948)
!951 = !DILocation(line: 172, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !1, line: 171, column: 17)
!953 = !DILocation(line: 149, column: 8, scope: !383)
!954 = !DILocation(line: 173, column: 17, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !1, line: 173, column: 7)
!956 = distinct !DILexicalBlock(scope: !952, file: !1, line: 173, column: 7)
!957 = !DILocation(line: 173, column: 7, scope: !956)
!958 = !DILocation(line: 174, column: 16, scope: !955)
!959 = !DILocation(line: 174, column: 18, scope: !955)
!960 = !DILocation(line: 174, column: 12, scope: !955)
!961 = !DILocation(line: 174, column: 26, scope: !955)
!962 = !DILocation(line: 270, column: 41, scope: !508, inlinedAt: !963)
!963 = distinct !DILocation(line: 174, column: 2, scope: !955)
!964 = !DILocation(line: 270, column: 48, scope: !508, inlinedAt: !963)
!965 = !DILocation(line: 272, column: 9, scope: !508, inlinedAt: !963)
!966 = !DILocation(line: 272, column: 8, scope: !508, inlinedAt: !963)
!967 = !DILocation(line: 273, column: 9, scope: !508, inlinedAt: !963)
!968 = !DILocation(line: 273, column: 3, scope: !508, inlinedAt: !963)
!969 = !DILocation(line: 273, column: 8, scope: !508, inlinedAt: !963)
!970 = !DILocation(line: 274, column: 9, scope: !508, inlinedAt: !963)
!971 = !DILocation(line: 274, column: 3, scope: !508, inlinedAt: !963)
!972 = !DILocation(line: 274, column: 8, scope: !508, inlinedAt: !963)
!973 = !DILocation(line: 176, column: 13, scope: !974)
!974 = distinct !DILexicalBlock(scope: !948, file: !1, line: 176, column: 9)
!975 = !DILocation(line: 176, column: 9, scope: !974)
!976 = !DILocation(line: 176, column: 9, scope: !948)
!977 = !DILocation(line: 177, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !974, file: !1, line: 176, column: 17)
!979 = !DILocation(line: 178, column: 17, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !1, line: 178, column: 7)
!981 = distinct !DILexicalBlock(scope: !978, file: !1, line: 178, column: 7)
!982 = !DILocation(line: 178, column: 7, scope: !981)
!983 = !DILocation(line: 179, column: 16, scope: !980)
!984 = !DILocation(line: 179, column: 18, scope: !980)
!985 = !DILocation(line: 179, column: 12, scope: !980)
!986 = !DILocation(line: 179, column: 26, scope: !980)
!987 = !DILocation(line: 270, column: 41, scope: !508, inlinedAt: !988)
!988 = distinct !DILocation(line: 179, column: 2, scope: !980)
!989 = !DILocation(line: 270, column: 48, scope: !508, inlinedAt: !988)
!990 = !DILocation(line: 272, column: 9, scope: !508, inlinedAt: !988)
!991 = !DILocation(line: 272, column: 8, scope: !508, inlinedAt: !988)
!992 = !DILocation(line: 273, column: 9, scope: !508, inlinedAt: !988)
!993 = !DILocation(line: 273, column: 3, scope: !508, inlinedAt: !988)
!994 = !DILocation(line: 273, column: 8, scope: !508, inlinedAt: !988)
!995 = !DILocation(line: 274, column: 9, scope: !508, inlinedAt: !988)
!996 = !DILocation(line: 274, column: 3, scope: !508, inlinedAt: !988)
!997 = !DILocation(line: 274, column: 8, scope: !508, inlinedAt: !988)
!998 = !DILocation(line: 183, column: 13, scope: !999)
!999 = distinct !DILexicalBlock(scope: !948, file: !1, line: 183, column: 9)
!1000 = !DILocation(line: 183, column: 9, scope: !999)
!1001 = !DILocation(line: 183, column: 9, scope: !948)
!1002 = !DILocation(line: 184, column: 7, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !1, line: 183, column: 17)
!1004 = !DILocation(line: 185, column: 17, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 185, column: 7)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 185, column: 7)
!1007 = !DILocation(line: 185, column: 7, scope: !1006)
!1008 = !DILocation(line: 186, column: 16, scope: !1005)
!1009 = !DILocation(line: 186, column: 18, scope: !1005)
!1010 = !DILocation(line: 186, column: 12, scope: !1005)
!1011 = !DILocation(line: 186, column: 26, scope: !1005)
!1012 = !DILocation(line: 270, column: 41, scope: !508, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 186, column: 2, scope: !1005)
!1014 = !DILocation(line: 270, column: 48, scope: !508, inlinedAt: !1013)
!1015 = !DILocation(line: 272, column: 9, scope: !508, inlinedAt: !1013)
!1016 = !DILocation(line: 272, column: 8, scope: !508, inlinedAt: !1013)
!1017 = !DILocation(line: 273, column: 9, scope: !508, inlinedAt: !1013)
!1018 = !DILocation(line: 273, column: 3, scope: !508, inlinedAt: !1013)
!1019 = !DILocation(line: 273, column: 8, scope: !508, inlinedAt: !1013)
!1020 = !DILocation(line: 274, column: 9, scope: !508, inlinedAt: !1013)
!1021 = !DILocation(line: 274, column: 3, scope: !508, inlinedAt: !1013)
!1022 = !DILocation(line: 274, column: 8, scope: !508, inlinedAt: !1013)
!1023 = !DILocation(line: 193, column: 11, scope: !383)
!1024 = !DILocation(line: 193, column: 3, scope: !383)
!1025 = !DILocation(line: 195, column: 29, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !383, file: !1, line: 193, column: 33)
!1027 = !DILocation(line: 195, column: 38, scope: !1026)
!1028 = !DILocation(line: 195, column: 43, scope: !1026)
!1029 = !DILocation(line: 195, column: 5, scope: !1026)
!1030 = !DILocation(line: 196, column: 5, scope: !1026)
!1031 = !DILocation(line: 62, column: 10, scope: !258, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 199, column: 21, scope: !1026)
!1033 = !DILocation(line: 200, column: 13, scope: !1026)
!1034 = !DILocation(line: 200, column: 22, scope: !1026)
!1035 = !DILocation(line: 200, column: 18, scope: !1026)
!1036 = !DILocation(line: 200, column: 27, scope: !1026)
!1037 = !DILocation(line: 199, column: 5, scope: !1026)
!1038 = !DILocation(line: 201, column: 5, scope: !1026)
!1039 = !DILocation(line: 206, column: 14, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 206, column: 9)
!1041 = !DILocation(line: 206, column: 10, scope: !1040)
!1042 = !DILocation(line: 206, column: 9, scope: !1026)
!1043 = !DILocation(line: 208, column: 13, scope: !1040)
!1044 = !DILocation(line: 208, column: 5, scope: !1040)
!1045 = !DILocation(line: 207, column: 7, scope: !1040)
!1046 = !DILocation(line: 209, column: 5, scope: !1026)
!1047 = !DILocation(line: 210, column: 9, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 210, column: 9)
!1049 = !DILocation(line: 210, column: 30, scope: !1048)
!1050 = !DILocation(line: 211, column: 29, scope: !1048)
!1051 = !DILocation(line: 211, column: 59, scope: !1048)
!1052 = !DILocation(line: 210, column: 9, scope: !1026)
!1053 = !DILocation(line: 212, column: 8, scope: !1048)
!1054 = !DILocation(line: 213, column: 12, scope: !1048)
!1055 = !DILocation(line: 213, column: 18, scope: !1048)
!1056 = !DILocation(line: 213, column: 14, scope: !1048)
!1057 = !DILocation(line: 213, column: 27, scope: !1048)
!1058 = !DILocation(line: 213, column: 36, scope: !1048)
!1059 = !DILocation(line: 211, column: 7, scope: !1048)
!1060 = !DILocation(line: 216, column: 12, scope: !1048)
!1061 = !DILocation(line: 216, column: 14, scope: !1048)
!1062 = !DILocation(line: 216, column: 28, scope: !1048)
!1063 = !DILocation(line: 215, column: 7, scope: !1048)
!1064 = !DILocation(line: 219, column: 15, scope: !1026)
!1065 = !DILocation(line: 219, column: 45, scope: !1026)
!1066 = !DILocation(line: 219, column: 5, scope: !1026)
!1067 = !DILocation(line: 220, column: 5, scope: !1026)
!1068 = !DILocation(line: 222, column: 20, scope: !1026)
!1069 = !DILocation(line: 222, column: 5, scope: !1026)
!1070 = !DILocation(line: 223, column: 5, scope: !1026)
!1071 = !DILocation(line: 226, column: 11, scope: !1026)
!1072 = !DILocation(line: 226, column: 3, scope: !1026)
!1073 = !DILocation(line: 225, column: 5, scope: !1026)
!1074 = !DILocation(line: 227, column: 5, scope: !1026)
!1075 = !DILocation(line: 230, column: 11, scope: !383)
!1076 = !DILocation(line: 230, column: 3, scope: !383)
!1077 = !DILocation(line: 234, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 234, column: 9)
!1079 = distinct !DILexicalBlock(scope: !383, file: !1, line: 230, column: 33)
!1080 = !DILocation(line: 234, column: 9, scope: !1079)
!1081 = !DILocation(line: 234, column: 15, scope: !1078)
!1082 = !DILocation(line: 235, column: 9, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 235, column: 9)
!1084 = !DILocation(line: 235, column: 9, scope: !1079)
!1085 = !DILocation(line: 235, column: 15, scope: !1083)
!1086 = !DILocation(line: 238, column: 5, scope: !1079)
!1087 = !DILocation(line: 239, column: 5, scope: !1079)
!1088 = !DILocation(line: 245, column: 1, scope: !383)
!1089 = !DILocation(line: 247, column: 24, scope: !400)
!1090 = !DILocation(line: 247, column: 41, scope: !400)
!1091 = !DILocation(line: 249, column: 3, scope: !400)
!1092 = !DILocation(line: 249, column: 8, scope: !400)
!1093 = !DILocation(line: 252, column: 11, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !400, file: !1, line: 252, column: 7)
!1095 = !DILocation(line: 252, column: 7, scope: !1094)
!1096 = !DILocation(line: 252, column: 7, scope: !400)
!1097 = !DILocation(line: 253, column: 16, scope: !1094)
!1098 = !DILocation(line: 250, column: 8, scope: !400)
!1099 = !DILocation(line: 253, column: 5, scope: !1094)
!1100 = !DILocation(line: 257, column: 11, scope: !400)
!1101 = !DILocation(line: 257, column: 3, scope: !400)
!1102 = !DILocation(line: 262, column: 14, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !1, line: 262, column: 9)
!1104 = distinct !DILexicalBlock(scope: !400, file: !1, line: 257, column: 33)
!1105 = !DILocation(line: 262, column: 10, scope: !1103)
!1106 = !DILocation(line: 262, column: 9, scope: !1104)
!1107 = !DILocation(line: 264, column: 13, scope: !1103)
!1108 = !DILocation(line: 264, column: 5, scope: !1103)
!1109 = !DILocation(line: 263, column: 7, scope: !1103)
!1110 = !DILocation(line: 268, column: 11, scope: !400)
!1111 = !DILocation(line: 268, column: 3, scope: !400)
!1112 = !DILocation(line: 270, column: 24, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !400, file: !1, line: 268, column: 33)
!1114 = !DILocation(line: 270, column: 35, scope: !1113)
!1115 = !DILocation(line: 270, column: 44, scope: !1113)
!1116 = !DILocation(line: 270, column: 49, scope: !1113)
!1117 = !DILocation(line: 270, column: 61, scope: !1113)
!1118 = !DILocation(line: 270, column: 5, scope: !1113)
!1119 = !DILocation(line: 271, column: 5, scope: !1113)
!1120 = !DILocation(line: 62, column: 10, scope: !258, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 274, column: 21, scope: !1113)
!1122 = !DILocation(line: 274, column: 40, scope: !1113)
!1123 = !DILocation(line: 274, column: 49, scope: !1113)
!1124 = !DILocation(line: 274, column: 45, scope: !1113)
!1125 = !DILocation(line: 274, column: 54, scope: !1113)
!1126 = !DILocation(line: 274, column: 66, scope: !1113)
!1127 = !DILocation(line: 275, column: 13, scope: !1113)
!1128 = !DILocation(line: 275, column: 9, scope: !1113)
!1129 = !DILocation(line: 275, column: 22, scope: !1113)
!1130 = !DILocation(line: 275, column: 33, scope: !1113)
!1131 = !DILocation(line: 275, column: 29, scope: !1113)
!1132 = !DILocation(line: 275, column: 42, scope: !1113)
!1133 = !DILocation(line: 275, column: 54, scope: !1113)
!1134 = !DILocation(line: 275, column: 50, scope: !1113)
!1135 = !DILocation(line: 275, column: 63, scope: !1113)
!1136 = !DILocation(line: 274, column: 5, scope: !1113)
!1137 = !DILocation(line: 276, column: 5, scope: !1113)
!1138 = !DILocation(line: 281, column: 14, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 281, column: 9)
!1140 = !DILocation(line: 281, column: 10, scope: !1139)
!1141 = !DILocation(line: 281, column: 9, scope: !1113)
!1142 = !DILocation(line: 283, column: 13, scope: !1139)
!1143 = !DILocation(line: 283, column: 5, scope: !1139)
!1144 = !DILocation(line: 282, column: 7, scope: !1139)
!1145 = !DILocation(line: 284, column: 5, scope: !1113)
!1146 = !DILocation(line: 285, column: 9, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1113, file: !1, line: 285, column: 9)
!1148 = !DILocation(line: 285, column: 30, scope: !1147)
!1149 = !DILocation(line: 286, column: 21, scope: !1147)
!1150 = !DILocation(line: 286, column: 51, scope: !1147)
!1151 = !DILocation(line: 285, column: 9, scope: !1113)
!1152 = !DILocation(line: 287, column: 7, scope: !1147)
!1153 = !DILocation(line: 287, column: 27, scope: !1147)
!1154 = !DILocation(line: 287, column: 33, scope: !1147)
!1155 = !DILocation(line: 287, column: 29, scope: !1147)
!1156 = !DILocation(line: 287, column: 42, scope: !1147)
!1157 = !DILocation(line: 287, column: 51, scope: !1147)
!1158 = !DILocation(line: 286, column: 7, scope: !1147)
!1159 = !DILocation(line: 290, column: 21, scope: !1147)
!1160 = !DILocation(line: 290, column: 23, scope: !1147)
!1161 = !DILocation(line: 290, column: 37, scope: !1147)
!1162 = !DILocation(line: 289, column: 7, scope: !1147)
!1163 = !DILocation(line: 293, column: 15, scope: !1113)
!1164 = !DILocation(line: 293, column: 39, scope: !1113)
!1165 = !DILocation(line: 293, column: 50, scope: !1113)
!1166 = !DILocation(line: 293, column: 52, scope: !1113)
!1167 = !DILocation(line: 293, column: 5, scope: !1113)
!1168 = !DILocation(line: 294, column: 5, scope: !1113)
!1169 = !DILocation(line: 296, column: 20, scope: !1113)
!1170 = !DILocation(line: 296, column: 5, scope: !1113)
!1171 = !DILocation(line: 297, column: 5, scope: !1113)
!1172 = !DILocation(line: 300, column: 11, scope: !1113)
!1173 = !DILocation(line: 300, column: 3, scope: !1113)
!1174 = !DILocation(line: 299, column: 5, scope: !1113)
!1175 = !DILocation(line: 301, column: 5, scope: !1113)
!1176 = !DILocation(line: 305, column: 1, scope: !400)
!1177 = !DILocation(line: 307, column: 19, scope: !408)
!1178 = !DILocation(line: 307, column: 28, scope: !408)
!1179 = !DILocation(line: 307, column: 42, scope: !408)
!1180 = !DILocation(line: 307, column: 55, scope: !408)
!1181 = !DILocation(line: 308, column: 12, scope: !408)
!1182 = !DILocation(line: 308, column: 22, scope: !408)
!1183 = !DILocation(line: 308, column: 34, scope: !408)
!1184 = !DILocation(line: 308, column: 43, scope: !408)
!1185 = !DILocation(line: 308, column: 53, scope: !408)
!1186 = !DILocation(line: 310, column: 3, scope: !408)
!1187 = !DILocation(line: 310, column: 14, scope: !408)
!1188 = !DILocation(line: 312, column: 3, scope: !408)
!1189 = !DILocation(line: 313, column: 6, scope: !408)
!1190 = !DILocation(line: 313, column: 12, scope: !408)
!1191 = !DILocation(line: 314, column: 6, scope: !408)
!1192 = !DILocation(line: 314, column: 11, scope: !408)
!1193 = !DILocation(line: 315, column: 6, scope: !408)
!1194 = !DILocation(line: 315, column: 12, scope: !408)
!1195 = !DILocation(line: 316, column: 6, scope: !408)
!1196 = !DILocation(line: 316, column: 11, scope: !408)
!1197 = !DILocation(line: 317, column: 20, scope: !408)
!1198 = !DILocation(line: 317, column: 6, scope: !408)
!1199 = !DILocation(line: 317, column: 13, scope: !408)
!1200 = !DILocation(line: 318, column: 6, scope: !408)
!1201 = !DILocation(line: 318, column: 12, scope: !408)
!1202 = !DILocation(line: 319, column: 6, scope: !408)
!1203 = !DILocation(line: 319, column: 9, scope: !408)
!1204 = !DILocation(line: 320, column: 6, scope: !408)
!1205 = !DILocation(line: 320, column: 8, scope: !408)
!1206 = !DILocation(line: 321, column: 12, scope: !408)
!1207 = !DILocation(line: 321, column: 6, scope: !408)
!1208 = !DILocation(line: 321, column: 9, scope: !408)
!1209 = !DILocation(line: 322, column: 6, scope: !408)
!1210 = !DILocation(line: 322, column: 8, scope: !408)
!1211 = !DILocation(line: 323, column: 6, scope: !408)
!1212 = !DILocation(line: 323, column: 11, scope: !408)
!1213 = !DILocation(line: 324, column: 16, scope: !408)
!1214 = !DILocation(line: 297, column: 36, scope: !515, inlinedAt: !1215)
!1215 = distinct !DILocation(line: 324, column: 3, scope: !408)
!1216 = !DILocation(line: 297, column: 45, scope: !515, inlinedAt: !1215)
!1217 = !DILocation(line: 272, column: 9, scope: !508, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 299, column: 3, scope: !515, inlinedAt: !1215)
!1219 = !DILocation(line: 272, column: 8, scope: !508, inlinedAt: !1218)
!1220 = !DILocation(line: 273, column: 9, scope: !508, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 300, column: 3, scope: !515, inlinedAt: !1215)
!1222 = !DILocation(line: 273, column: 3, scope: !508, inlinedAt: !1221)
!1223 = !DILocation(line: 273, column: 8, scope: !508, inlinedAt: !1221)
!1224 = !DILocation(line: 274, column: 9, scope: !508, inlinedAt: !1221)
!1225 = !DILocation(line: 274, column: 3, scope: !508, inlinedAt: !1221)
!1226 = !DILocation(line: 274, column: 8, scope: !508, inlinedAt: !1221)
!1227 = !DILocation(line: 326, column: 10, scope: !408)
!1228 = !DILocation(line: 327, column: 1, scope: !408)
!1229 = !DILocation(line: 329, column: 20, scope: !423)
!1230 = !DILocation(line: 331, column: 3, scope: !423)
!1231 = !DILocation(line: 332, column: 1, scope: !423)
!1232 = !DILocation(line: 334, column: 20, scope: !428)
!1233 = !DILocation(line: 334, column: 34, scope: !428)
!1234 = !DILocation(line: 336, column: 7, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !428, file: !1, line: 336, column: 7)
!1236 = !DILocation(line: 336, column: 24, scope: !1235)
!1237 = !DILocation(line: 337, column: 5, scope: !1235)
!1238 = !DILocation(line: 339, column: 10, scope: !428)
!1239 = !DILocation(line: 339, column: 3, scope: !428)
!1240 = !DILocation(line: 589, column: 26, scope: !434)
!1241 = !DILocation(line: 589, column: 45, scope: !434)
!1242 = !DILocation(line: 593, column: 17, scope: !434)
!1243 = !DILocation(line: 593, column: 36, scope: !434)
!1244 = !DILocation(line: 593, column: 12, scope: !434)
!1245 = !DILocation(line: 596, column: 10, scope: !434)
!1246 = !DILocation(line: 591, column: 8, scope: !434)
!1247 = !DILocation(line: 115, column: 7, scope: !267, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 599, column: 5, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !434, file: !1, line: 598, column: 6)
!1250 = !DILocation(line: 116, column: 7, scope: !267, inlinedAt: !1248)
!1251 = !DILocation(line: 117, column: 7, scope: !267, inlinedAt: !1248)
!1252 = !DILocation(line: 118, column: 7, scope: !267, inlinedAt: !1248)
!1253 = !DILocation(line: 119, column: 7, scope: !267, inlinedAt: !1248)
!1254 = !DILocation(line: 120, column: 7, scope: !267, inlinedAt: !1248)
!1255 = !DILocation(line: 121, column: 7, scope: !267, inlinedAt: !1248)
!1256 = !DILocation(line: 122, column: 7, scope: !267, inlinedAt: !1248)
!1257 = !DILocation(line: 123, column: 7, scope: !267, inlinedAt: !1248)
!1258 = !DILocation(line: 124, column: 7, scope: !267, inlinedAt: !1248)
!1259 = !DILocation(line: 125, column: 7, scope: !267, inlinedAt: !1248)
!1260 = !DILocation(line: 600, column: 20, scope: !1249)
!1261 = !DILocation(line: 600, column: 9, scope: !1249)
!1262 = !DILocation(line: 600, column: 14, scope: !1249)
!1263 = !DILocation(line: 601, column: 20, scope: !1249)
!1264 = !DILocation(line: 640, column: 28, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 639, column: 15)
!1266 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 639, column: 9)
!1267 = !DILocation(line: 645, column: 31, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 644, column: 26)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 644, column: 11)
!1270 = !DILocation(line: 648, column: 13, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 646, column: 54)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 646, column: 6)
!1273 = !DILocation(line: 342, column: 32, scope: !521, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 607, column: 14, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 603, column: 37)
!1276 = !DILocation(line: 344, column: 3, scope: !521, inlinedAt: !1274)
!1277 = !DILocation(line: 350, column: 19, scope: !1278, inlinedAt: !1274)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !1, line: 349, column: 41)
!1279 = distinct !DILexicalBlock(scope: !521, file: !1, line: 349, column: 7)
!1280 = !DILocation(line: 350, column: 9, scope: !1278, inlinedAt: !1274)
!1281 = !DILocation(line: 352, column: 17, scope: !1278, inlinedAt: !1274)
!1282 = !DILocation(line: 352, column: 9, scope: !1278, inlinedAt: !1274)
!1283 = !DILocation(line: 354, column: 17, scope: !1278, inlinedAt: !1274)
!1284 = !DILocation(line: 356, column: 21, scope: !1278, inlinedAt: !1274)
!1285 = !DILocation(line: 356, column: 9, scope: !1278, inlinedAt: !1274)
!1286 = !DILocation(line: 356, column: 16, scope: !1278, inlinedAt: !1274)
!1287 = !DILocation(line: 357, column: 19, scope: !1278, inlinedAt: !1274)
!1288 = !DILocation(line: 607, column: 14, scope: !1275)
!1289 = !DILocation(line: 373, column: 43, scope: !1290, inlinedAt: !1274)
!1290 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 373, column: 9)
!1291 = !DILocation(line: 373, column: 49, scope: !1290, inlinedAt: !1274)
!1292 = !DILocation(line: 370, column: 2, scope: !1293, inlinedAt: !1274)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 369, column: 11)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !1, line: 368, column: 48)
!1295 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 368, column: 9)
!1296 = !DILocation(line: 371, column: 19, scope: !1294, inlinedAt: !1274)
!1297 = !DILocation(line: 365, column: 2, scope: !1298, inlinedAt: !1274)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 364, column: 11)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !1, line: 363, column: 48)
!1300 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 363, column: 9)
!1301 = !DILocation(line: 366, column: 19, scope: !1299, inlinedAt: !1274)
!1302 = !DILocation(line: 360, column: 2, scope: !1303, inlinedAt: !1274)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !1, line: 359, column: 11)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !1, line: 358, column: 48)
!1305 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 358, column: 9)
!1306 = !DILocation(line: 361, column: 19, scope: !1304, inlinedAt: !1274)
!1307 = !DILocation(line: 621, column: 18, scope: !1275)
!1308 = !DILocation(line: 598, column: 3, scope: !434)
!1309 = !DILocation(line: 113, column: 33, scope: !267, inlinedAt: !1248)
!1310 = !DILocation(line: 113, column: 41, scope: !267, inlinedAt: !1248)
!1311 = !DILocation(line: 115, column: 15, scope: !267, inlinedAt: !1248)
!1312 = !DILocation(line: 116, column: 15, scope: !267, inlinedAt: !1248)
!1313 = !DILocation(line: 117, column: 15, scope: !267, inlinedAt: !1248)
!1314 = !DILocation(line: 118, column: 15, scope: !267, inlinedAt: !1248)
!1315 = !DILocation(line: 119, column: 15, scope: !267, inlinedAt: !1248)
!1316 = !DILocation(line: 120, column: 15, scope: !267, inlinedAt: !1248)
!1317 = !DILocation(line: 121, column: 15, scope: !267, inlinedAt: !1248)
!1318 = !DILocation(line: 122, column: 15, scope: !267, inlinedAt: !1248)
!1319 = !DILocation(line: 123, column: 15, scope: !267, inlinedAt: !1248)
!1320 = !DILocation(line: 124, column: 15, scope: !267, inlinedAt: !1248)
!1321 = !DILocation(line: 125, column: 15, scope: !267, inlinedAt: !1248)
!1322 = !DILocation(line: 601, column: 14, scope: !1249)
!1323 = !DILocation(line: 603, column: 13, scope: !1249)
!1324 = !DILocation(line: 603, column: 5, scope: !1249)
!1325 = !DILocation(line: 342, column: 51, scope: !521, inlinedAt: !1274)
!1326 = !DILocation(line: 345, column: 12, scope: !521, inlinedAt: !1274)
!1327 = !DILocation(line: 344, column: 15, scope: !521, inlinedAt: !1274)
!1328 = !DILocation(line: 345, column: 8, scope: !521, inlinedAt: !1274)
!1329 = !DILocation(line: 349, column: 7, scope: !1279, inlinedAt: !1274)
!1330 = !DILocation(line: 349, column: 7, scope: !521, inlinedAt: !1274)
!1331 = !{!1332, !662, i64 40}
!1332 = !{!"", !662, i64 0, !662, i64 4, !662, i64 8, !662, i64 12, !662, i64 16, !662, i64 20, !662, i64 24, !662, i64 28, !662, i64 32, !662, i64 36, !662, i64 40, !662, i64 44, !662, i64 48, !780, i64 52, !780, i64 56}
!1333 = !DILocation(line: 350, column: 15, scope: !1278, inlinedAt: !1274)
!1334 = !DILocation(line: 351, column: 14, scope: !1278, inlinedAt: !1274)
!1335 = !{!1332, !662, i64 44}
!1336 = !DILocation(line: 352, column: 13, scope: !1278, inlinedAt: !1274)
!1337 = !DILocation(line: 353, column: 14, scope: !1278, inlinedAt: !1274)
!1338 = !{!1332, !780, i64 52}
!1339 = !DILocation(line: 354, column: 13, scope: !1278, inlinedAt: !1274)
!1340 = !DILocation(line: 355, column: 17, scope: !1278, inlinedAt: !1274)
!1341 = !{!1332, !780, i64 56}
!1342 = !{!1332, !662, i64 8}
!1343 = !DILocation(line: 357, column: 27, scope: !1278, inlinedAt: !1274)
!1344 = !DILocation(line: 357, column: 14, scope: !1278, inlinedAt: !1274)
!1345 = !DILocation(line: 358, column: 13, scope: !1305, inlinedAt: !1274)
!1346 = !DILocation(line: 358, column: 19, scope: !1305, inlinedAt: !1274)
!1347 = !DILocation(line: 358, column: 9, scope: !1278, inlinedAt: !1274)
!1348 = !DILocation(line: 359, column: 15, scope: !1303, inlinedAt: !1274)
!1349 = !DILocation(line: 359, column: 16, scope: !1303, inlinedAt: !1274)
!1350 = !DILocation(line: 359, column: 11, scope: !1304, inlinedAt: !1274)
!1351 = !DILocation(line: 363, column: 13, scope: !1300, inlinedAt: !1274)
!1352 = !{!1332, !662, i64 28}
!1353 = !DILocation(line: 361, column: 25, scope: !1304, inlinedAt: !1274)
!1354 = !DILocation(line: 361, column: 14, scope: !1304, inlinedAt: !1274)
!1355 = !DILocation(line: 362, column: 5, scope: !1304, inlinedAt: !1274)
!1356 = !DILocation(line: 363, column: 19, scope: !1300, inlinedAt: !1274)
!1357 = !DILocation(line: 363, column: 9, scope: !1278, inlinedAt: !1274)
!1358 = !DILocation(line: 364, column: 15, scope: !1298, inlinedAt: !1274)
!1359 = !DILocation(line: 364, column: 16, scope: !1298, inlinedAt: !1274)
!1360 = !DILocation(line: 364, column: 11, scope: !1299, inlinedAt: !1274)
!1361 = !DILocation(line: 368, column: 13, scope: !1295, inlinedAt: !1274)
!1362 = !{!1332, !662, i64 32}
!1363 = !DILocation(line: 366, column: 25, scope: !1299, inlinedAt: !1274)
!1364 = !DILocation(line: 366, column: 14, scope: !1299, inlinedAt: !1274)
!1365 = !DILocation(line: 367, column: 5, scope: !1299, inlinedAt: !1274)
!1366 = !DILocation(line: 368, column: 19, scope: !1295, inlinedAt: !1274)
!1367 = !DILocation(line: 373, column: 55, scope: !1290, inlinedAt: !1274)
!1368 = !DILocation(line: 368, column: 9, scope: !1278, inlinedAt: !1274)
!1369 = !DILocation(line: 369, column: 16, scope: !1293, inlinedAt: !1274)
!1370 = !DILocation(line: 369, column: 11, scope: !1294, inlinedAt: !1274)
!1371 = !{!1332, !662, i64 36}
!1372 = !DILocation(line: 371, column: 14, scope: !1294, inlinedAt: !1274)
!1373 = !DILocation(line: 372, column: 5, scope: !1294, inlinedAt: !1274)
!1374 = !DILocation(line: 373, column: 9, scope: !1290, inlinedAt: !1274)
!1375 = !DILocation(line: 373, column: 9, scope: !1278, inlinedAt: !1274)
!1376 = !DILocation(line: 376, column: 18, scope: !1290, inlinedAt: !1274)
!1377 = !DILocation(line: 378, column: 10, scope: !1378, inlinedAt: !1274)
!1378 = distinct !DILexicalBlock(scope: !1279, file: !1, line: 378, column: 9)
!1379 = !DILocation(line: 378, column: 9, scope: !1279, inlinedAt: !1274)
!1380 = !DILocation(line: 379, column: 18, scope: !1378, inlinedAt: !1274)
!1381 = !DILocation(line: 379, column: 7, scope: !1378, inlinedAt: !1274)
!1382 = !DILocation(line: 382, column: 1, scope: !521, inlinedAt: !1274)
!1383 = !DILocation(line: 608, column: 7, scope: !1275)
!1384 = !DILocation(line: 610, column: 21, scope: !1275)
!1385 = !DILocation(line: 610, column: 7, scope: !1275)
!1386 = !DILocation(line: 611, column: 19, scope: !1275)
!1387 = !DILocation(line: 611, column: 26, scope: !1275)
!1388 = !DILocation(line: 612, column: 7, scope: !1275)
!1389 = !DILocation(line: 614, column: 25, scope: !1275)
!1390 = !DILocation(line: 614, column: 61, scope: !1275)
!1391 = !DILocation(line: 614, column: 72, scope: !1275)
!1392 = !DILocation(line: 614, column: 14, scope: !1275)
!1393 = !DILocation(line: 615, column: 17, scope: !1275)
!1394 = !DILocation(line: 616, column: 17, scope: !1275)
!1395 = !DILocation(line: 617, column: 17, scope: !1275)
!1396 = !DILocation(line: 618, column: 7, scope: !1275)
!1397 = !DILocation(line: 620, column: 39, scope: !1275)
!1398 = !DILocation(line: 621, column: 11, scope: !1275)
!1399 = !DILocation(line: 593, column: 8, scope: !434)
!1400 = !DILocation(line: 620, column: 14, scope: !1275)
!1401 = !DILocation(line: 622, column: 17, scope: !1275)
!1402 = !DILocation(line: 623, column: 17, scope: !1275)
!1403 = !DILocation(line: 624, column: 17, scope: !1275)
!1404 = !DILocation(line: 625, column: 17, scope: !1275)
!1405 = !DILocation(line: 626, column: 17, scope: !1275)
!1406 = !DILocation(line: 627, column: 7, scope: !1275)
!1407 = !DILocation(line: 629, column: 25, scope: !1275)
!1408 = !DILocation(line: 629, column: 14, scope: !1275)
!1409 = !DILocation(line: 630, column: 7, scope: !1275)
!1410 = !DILocation(line: 632, column: 30, scope: !1275)
!1411 = !DILocation(line: 632, column: 14, scope: !1275)
!1412 = !DILocation(line: 633, column: 7, scope: !1275)
!1413 = !DILocation(line: 636, column: 13, scope: !1275)
!1414 = !DILocation(line: 636, column: 5, scope: !1275)
!1415 = !DILocation(line: 635, column: 7, scope: !1275)
!1416 = !DILocation(line: 637, column: 5, scope: !1275)
!1417 = !DILocation(line: 639, column: 9, scope: !1266)
!1418 = !DILocation(line: 639, column: 9, scope: !1249)
!1419 = !DILocation(line: 640, column: 34, scope: !1265)
!1420 = !DILocation(line: 640, column: 47, scope: !1265)
!1421 = !DILocation(line: 640, column: 55, scope: !1265)
!1422 = !DILocation(line: 640, column: 51, scope: !1265)
!1423 = !DILocation(line: 640, column: 59, scope: !1265)
!1424 = !DILocation(line: 641, column: 20, scope: !1265)
!1425 = !DILocation(line: 641, column: 33, scope: !1265)
!1426 = !DILocation(line: 641, column: 41, scope: !1265)
!1427 = !DILocation(line: 641, column: 37, scope: !1265)
!1428 = !DILocation(line: 641, column: 45, scope: !1265)
!1429 = !DILocation(line: 642, column: 20, scope: !1265)
!1430 = !DILocation(line: 642, column: 33, scope: !1265)
!1431 = !DILocation(line: 642, column: 41, scope: !1265)
!1432 = !DILocation(line: 642, column: 36, scope: !1265)
!1433 = !DILocation(line: 644, column: 11, scope: !1265)
!1434 = !DILocation(line: 645, column: 22, scope: !1268)
!1435 = !DILocation(line: 645, column: 38, scope: !1268)
!1436 = !DILocation(line: 645, column: 46, scope: !1268)
!1437 = !DILocation(line: 645, column: 5, scope: !1268)
!1438 = !DILocation(line: 592, column: 8, scope: !434)
!1439 = !DILocation(line: 646, column: 9, scope: !1272)
!1440 = !DILocation(line: 646, column: 14, scope: !1272)
!1441 = !DILocation(line: 646, column: 22, scope: !1272)
!1442 = !DILocation(line: 646, column: 28, scope: !1272)
!1443 = !DILocation(line: 646, column: 49, scope: !1272)
!1444 = !DILocation(line: 646, column: 44, scope: !1272)
!1445 = !DILocation(line: 647, column: 20, scope: !1271)
!1446 = !DILocation(line: 647, column: 29, scope: !1271)
!1447 = !DILocation(line: 647, column: 36, scope: !1271)
!1448 = !DILocation(line: 647, column: 44, scope: !1271)
!1449 = !DILocation(line: 647, column: 4, scope: !1271)
!1450 = !DILocation(line: 648, column: 4, scope: !1271)
!1451 = !DILocation(line: 649, column: 2, scope: !1271)
!1452 = !DILocation(line: 649, column: 16, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 649, column: 13)
!1454 = !DILocation(line: 649, column: 13, scope: !1272)
!1455 = !DILocation(line: 652, column: 20, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1453, file: !1, line: 651, column: 7)
!1457 = !DILocation(line: 652, column: 29, scope: !1456)
!1458 = !DILocation(line: 652, column: 36, scope: !1456)
!1459 = !DILocation(line: 652, column: 44, scope: !1456)
!1460 = !DILocation(line: 652, column: 4, scope: !1456)
!1461 = !DILocation(line: 658, column: 34, scope: !434)
!1462 = !DILocation(line: 658, column: 17, scope: !434)
!1463 = !DILocation(line: 661, column: 5, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !1, line: 660, column: 14)
!1465 = distinct !DILexicalBlock(scope: !434, file: !1, line: 660, column: 7)
!1466 = !DILocation(line: 662, column: 13, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !1, line: 662, column: 9)
!1468 = !DILocation(line: 662, column: 9, scope: !1467)
!1469 = !DILocation(line: 662, column: 9, scope: !1464)
!1470 = !DILocation(line: 88, column: 37, scope: !599, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 663, column: 7, scope: !1467)
!1472 = !DILocation(line: 90, column: 18, scope: !1473, inlinedAt: !1471)
!1473 = distinct !DILexicalBlock(scope: !599, file: !1, line: 90, column: 7)
!1474 = !DILocation(line: 94, column: 13, scope: !1475, inlinedAt: !1471)
!1475 = distinct !DILexicalBlock(scope: !1473, file: !1, line: 93, column: 12)
!1476 = !{!659, !659, i64 0}
!1477 = !DILocation(line: 95, column: 6, scope: !1475, inlinedAt: !1471)
!1478 = !DILocation(line: 95, column: 13, scope: !1475, inlinedAt: !1471)
!1479 = !DILocation(line: 95, column: 20, scope: !1475, inlinedAt: !1471)
!1480 = !DILocation(line: 95, column: 16, scope: !1475, inlinedAt: !1471)
!1481 = !DILocation(line: 90, column: 7, scope: !599, inlinedAt: !1471)
!1482 = !DILocation(line: 91, column: 5, scope: !1473, inlinedAt: !1471)
!1483 = !DILocation(line: 94, column: 5, scope: !1475, inlinedAt: !1471)
!1484 = !DILocation(line: 666, column: 3, scope: !434)
!1485 = !DILocation(line: 469, column: 30, scope: !547)
!1486 = !DILocation(line: 469, column: 44, scope: !547)
!1487 = !DILocation(line: 469, column: 51, scope: !547)
!1488 = !DILocation(line: 469, column: 64, scope: !547)
!1489 = !DILocation(line: 469, column: 76, scope: !547)
!1490 = !DILocation(line: 477, column: 6, scope: !547)
!1491 = !DILocation(line: 475, column: 8, scope: !547)
!1492 = !DILocation(line: 478, column: 11, scope: !547)
!1493 = !DILocation(line: 478, column: 18, scope: !547)
!1494 = !DILocation(line: 478, column: 24, scope: !547)
!1495 = !DILocation(line: 478, column: 31, scope: !547)
!1496 = !DILocation(line: 478, column: 3, scope: !547)
!1497 = !DILocation(line: 479, column: 10, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !1, line: 479, column: 9)
!1499 = distinct !DILexicalBlock(scope: !547, file: !1, line: 478, column: 42)
!1500 = !DILocation(line: 479, column: 9, scope: !1499)
!1501 = !DILocation(line: 481, column: 16, scope: !1499)
!1502 = !DILocation(line: 77, column: 29, scope: !621, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 481, column: 5, scope: !1499)
!1504 = !DILocation(line: 79, column: 3, scope: !621, inlinedAt: !1503)
!1505 = !DILocation(line: 482, column: 9, scope: !1499)
!1506 = !DILocation(line: 482, column: 7, scope: !1499)
!1507 = !DILocation(line: 485, column: 9, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !547, file: !1, line: 485, column: 7)
!1509 = !DILocation(line: 485, column: 14, scope: !1508)
!1510 = !DILocation(line: 485, column: 20, scope: !1508)
!1511 = !DILocation(line: 485, column: 27, scope: !1508)
!1512 = !DILocation(line: 485, column: 45, scope: !1508)
!1513 = !DILocation(line: 485, column: 36, scope: !1508)
!1514 = !DILocation(line: 485, column: 7, scope: !547)
!1515 = !DILocation(line: 486, column: 10, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !1, line: 486, column: 9)
!1517 = distinct !DILexicalBlock(scope: !1508, file: !1, line: 485, column: 53)
!1518 = !DILocation(line: 490, column: 16, scope: !1517)
!1519 = !DILocation(line: 486, column: 9, scope: !1517)
!1520 = !DILocation(line: 487, column: 7, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !1, line: 486, column: 44)
!1522 = !DILocation(line: 488, column: 7, scope: !1521)
!1523 = !DILocation(line: 77, column: 29, scope: !621, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 490, column: 5, scope: !1517)
!1525 = !DILocation(line: 79, column: 3, scope: !621, inlinedAt: !1524)
!1526 = !DILocation(line: 492, column: 9, scope: !1517)
!1527 = !DILocation(line: 492, column: 7, scope: !1517)
!1528 = !DILocation(line: 493, column: 5, scope: !1517)
!1529 = !DILocation(line: 495, column: 3, scope: !547)
!1530 = !DILocation(line: 496, column: 3, scope: !547)
!1531 = !DILocation(line: 497, column: 1, scope: !547)
!1532 = !DILocation(line: 525, column: 30, scope: !568)
!1533 = !DILocation(line: 525, column: 49, scope: !568)
!1534 = !DILocation(line: 527, column: 3, scope: !568)
!1535 = !DILocation(line: 529, column: 3, scope: !568)
!1536 = !DILocation(line: 529, column: 13, scope: !568)
!1537 = !DILocation(line: 532, column: 18, scope: !568)
!1538 = !DILocation(line: 532, column: 9, scope: !568)
!1539 = !DILocation(line: 532, column: 12, scope: !568)
!1540 = !{!1541, !662, i64 0}
!1541 = !{!"", !662, i64 0, !659, i64 8, !659, i64 16, !659, i64 24, !659, i64 32, !662, i64 40, !659, i64 48, !662, i64 56, !659, i64 64, !1542, i64 72, !660, i64 1128, !659, i64 1272}
!1542 = !{!"", !660, i64 0, !662, i64 1024, !659, i64 1032, !662, i64 1040, !659, i64 1048}
!1543 = !DILocation(line: 533, column: 9, scope: !568)
!1544 = !DILocation(line: 533, column: 13, scope: !568)
!1545 = !{!1541, !659, i64 8}
!1546 = !DILocation(line: 534, column: 9, scope: !568)
!1547 = !DILocation(line: 534, column: 16, scope: !568)
!1548 = !{!1541, !659, i64 1272}
!1549 = !DILocation(line: 528, column: 13, scope: !568)
!1550 = !DILocation(line: 536, column: 11, scope: !568)
!1551 = !DILocation(line: 537, column: 57, scope: !568)
!1552 = !DILocation(line: 537, column: 64, scope: !568)
!1553 = !DILocation(line: 537, column: 60, scope: !568)
!1554 = !DILocation(line: 527, column: 13, scope: !568)
!1555 = !DILocation(line: 537, column: 6, scope: !568)
!1556 = !DILocation(line: 528, column: 23, scope: !568)
!1557 = !DILocation(line: 62, column: 10, scope: !258, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 538, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !568, file: !1, line: 538, column: 7)
!1560 = !DILocation(line: 538, column: 21, scope: !1559)
!1561 = !DILocation(line: 538, column: 7, scope: !568)
!1562 = !DILocation(line: 539, column: 13, scope: !1559)
!1563 = !DILocation(line: 539, column: 51, scope: !1559)
!1564 = !DILocation(line: 539, column: 5, scope: !1559)
!1565 = !DILocation(line: 540, column: 7, scope: !568)
!1566 = !DILocation(line: 540, column: 13, scope: !568)
!1567 = !DILocation(line: 541, column: 7, scope: !568)
!1568 = !DILocation(line: 541, column: 12, scope: !568)
!1569 = !DILocation(line: 542, column: 7, scope: !568)
!1570 = !DILocation(line: 542, column: 10, scope: !568)
!1571 = !DILocation(line: 543, column: 20, scope: !568)
!1572 = !DILocation(line: 543, column: 15, scope: !568)
!1573 = !DILocation(line: 543, column: 37, scope: !568)
!1574 = !DILocation(line: 543, column: 7, scope: !568)
!1575 = !DILocation(line: 543, column: 12, scope: !568)
!1576 = !DILocation(line: 545, column: 7, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !568, file: !1, line: 545, column: 7)
!1578 = !DILocation(line: 545, column: 15, scope: !1577)
!1579 = !DILocation(line: 545, column: 7, scope: !568)
!1580 = !DILocation(line: 546, column: 9, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !1, line: 545, column: 25)
!1582 = !DILocation(line: 546, column: 15, scope: !1581)
!1583 = !DILocation(line: 547, column: 9, scope: !1581)
!1584 = !DILocation(line: 547, column: 14, scope: !1581)
!1585 = !DILocation(line: 548, column: 3, scope: !1581)
!1586 = !DILocation(line: 549, column: 8, scope: !568)
!1587 = !DILocation(line: 529, column: 28, scope: !568)
!1588 = !DILocation(line: 550, column: 7, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !568, file: !1, line: 550, column: 7)
!1590 = !DILocation(line: 551, column: 9, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1589, file: !1, line: 550, column: 13)
!1592 = !DILocation(line: 550, column: 7, scope: !568)
!1593 = !DILocation(line: 551, column: 15, scope: !1591)
!1594 = !DILocation(line: 552, column: 16, scope: !1591)
!1595 = !DILocation(line: 530, column: 13, scope: !568)
!1596 = !DILocation(line: 552, column: 5, scope: !1591)
!1597 = !DILocation(line: 553, column: 20, scope: !1591)
!1598 = !DILocation(line: 553, column: 14, scope: !1591)
!1599 = !DILocation(line: 553, column: 9, scope: !1591)
!1600 = !DILocation(line: 553, column: 13, scope: !1591)
!1601 = !DILocation(line: 554, column: 3, scope: !1591)
!1602 = !DILocation(line: 555, column: 15, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1589, file: !1, line: 554, column: 10)
!1604 = !DILocation(line: 558, column: 13, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 558, column: 9)
!1606 = !DILocation(line: 558, column: 9, scope: !1605)
!1607 = !DILocation(line: 558, column: 9, scope: !1603)
!1608 = !DILocation(line: 559, column: 26, scope: !1605)
!1609 = !DILocation(line: 559, column: 16, scope: !1605)
!1610 = !DILocation(line: 559, column: 11, scope: !1605)
!1611 = !DILocation(line: 559, column: 15, scope: !1605)
!1612 = !DILocation(line: 559, column: 7, scope: !1605)
!1613 = !DILocation(line: 62, column: 10, scope: !258, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 561, column: 22, scope: !1605)
!1615 = !DILocation(line: 561, column: 16, scope: !1605)
!1616 = !DILocation(line: 561, column: 11, scope: !1605)
!1617 = !DILocation(line: 561, column: 15, scope: !1605)
!1618 = !DILocation(line: 563, column: 9, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !568, file: !1, line: 563, column: 7)
!1620 = !DILocation(line: 563, column: 7, scope: !568)
!1621 = !DILocation(line: 566, column: 19, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 566, column: 9)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !1, line: 565, column: 10)
!1624 = !DILocation(line: 566, column: 12, scope: !1622)
!1625 = !DILocation(line: 566, column: 9, scope: !1623)
!1626 = !DILocation(line: 62, column: 10, scope: !258, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 568, column: 5, scope: !1622)
!1628 = !DILocation(line: 567, column: 7, scope: !1622)
!1629 = !DILocation(line: 571, column: 1, scope: !568)
!1630 = !DILocation(line: 70, column: 30, scope: !580)
!1631 = !DILocation(line: 70, column: 37, scope: !580)
!1632 = !DILocation(line: 70, column: 45, scope: !580)
!1633 = !DILocation(line: 70, column: 54, scope: !580)
!1634 = !DILocation(line: 72, column: 10, scope: !580)
!1635 = !DILocation(line: 73, column: 15, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !580, file: !1, line: 73, column: 7)
!1637 = !DILocation(line: 73, column: 22, scope: !1636)
!1638 = !DILocation(line: 73, column: 38, scope: !1636)
!1639 = !DILocation(line: 73, column: 27, scope: !1636)
!1640 = !DILocation(line: 74, column: 17, scope: !1636)
!1641 = !DILocation(line: 74, column: 45, scope: !1636)
!1642 = !DILocation(line: 65, column: 31, scope: !588, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 74, column: 5, scope: !1636)
!1644 = !DILocation(line: 65, column: 38, scope: !588, inlinedAt: !1643)
!1645 = !DILocation(line: 67, column: 11, scope: !588, inlinedAt: !1643)
!1646 = !DILocation(line: 67, column: 48, scope: !588, inlinedAt: !1643)
!1647 = !DILocation(line: 67, column: 56, scope: !588, inlinedAt: !1643)
!1648 = !DILocation(line: 67, column: 3, scope: !588, inlinedAt: !1643)
!1649 = !DILocation(line: 74, column: 5, scope: !1636)
!1650 = !DILocation(line: 75, column: 1, scope: !580)
!1651 = !DILocation(line: 82, column: 28, scope: !594)
!1652 = !DILocation(line: 65, column: 31, scope: !588, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 84, column: 3, scope: !594)
!1654 = !DILocation(line: 65, column: 38, scope: !588, inlinedAt: !1653)
!1655 = !DILocation(line: 67, column: 11, scope: !588, inlinedAt: !1653)
!1656 = !DILocation(line: 67, column: 48, scope: !588, inlinedAt: !1653)
!1657 = !DILocation(line: 67, column: 56, scope: !588, inlinedAt: !1653)
!1658 = !DILocation(line: 67, column: 3, scope: !588, inlinedAt: !1653)
!1659 = !DILocation(line: 85, column: 11, scope: !594)
!1660 = !DILocation(line: 85, column: 3, scope: !594)
!1661 = !DILocation(line: 86, column: 1, scope: !594)
!1662 = !DILocation(line: 669, column: 27, scope: !444)
!1663 = !DILocation(line: 669, column: 40, scope: !444)
!1664 = !DILocation(line: 669, column: 55, scope: !444)
!1665 = !DILocation(line: 669, column: 62, scope: !444)
!1666 = !DILocation(line: 674, column: 3, scope: !444)
!1667 = !DILocation(line: 675, column: 7, scope: !444)
!1668 = !DILocation(line: 675, column: 13, scope: !444)
!1669 = !DILocation(line: 672, column: 8, scope: !444)
!1670 = !DILocation(line: 678, column: 3, scope: !444)
!1671 = !DILocation(line: 680, column: 17, scope: !444)
!1672 = !DILocation(line: 680, column: 16, scope: !444)
!1673 = !DILocation(line: 671, column: 8, scope: !444)
!1674 = !DILocation(line: 681, column: 11, scope: !444)
!1675 = !DILocation(line: 681, column: 3, scope: !444)
!1676 = !DILocation(line: 688, column: 19, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !444, file: !1, line: 681, column: 31)
!1678 = !DILocation(line: 688, column: 5, scope: !1677)
!1679 = !DILocation(line: 689, column: 5, scope: !1677)
!1680 = !DILocation(line: 113, column: 33, scope: !267, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 690, column: 5, scope: !1677)
!1682 = !DILocation(line: 113, column: 41, scope: !267, inlinedAt: !1681)
!1683 = !DILocation(line: 115, column: 7, scope: !267, inlinedAt: !1681)
!1684 = !DILocation(line: 115, column: 15, scope: !267, inlinedAt: !1681)
!1685 = !DILocation(line: 116, column: 7, scope: !267, inlinedAt: !1681)
!1686 = !DILocation(line: 116, column: 15, scope: !267, inlinedAt: !1681)
!1687 = !DILocation(line: 117, column: 7, scope: !267, inlinedAt: !1681)
!1688 = !DILocation(line: 117, column: 15, scope: !267, inlinedAt: !1681)
!1689 = !DILocation(line: 118, column: 7, scope: !267, inlinedAt: !1681)
!1690 = !DILocation(line: 118, column: 15, scope: !267, inlinedAt: !1681)
!1691 = !DILocation(line: 119, column: 7, scope: !267, inlinedAt: !1681)
!1692 = !DILocation(line: 119, column: 15, scope: !267, inlinedAt: !1681)
!1693 = !DILocation(line: 120, column: 7, scope: !267, inlinedAt: !1681)
!1694 = !DILocation(line: 120, column: 15, scope: !267, inlinedAt: !1681)
!1695 = !DILocation(line: 121, column: 7, scope: !267, inlinedAt: !1681)
!1696 = !DILocation(line: 121, column: 15, scope: !267, inlinedAt: !1681)
!1697 = !DILocation(line: 122, column: 7, scope: !267, inlinedAt: !1681)
!1698 = !DILocation(line: 122, column: 15, scope: !267, inlinedAt: !1681)
!1699 = !DILocation(line: 123, column: 7, scope: !267, inlinedAt: !1681)
!1700 = !DILocation(line: 123, column: 15, scope: !267, inlinedAt: !1681)
!1701 = !DILocation(line: 124, column: 7, scope: !267, inlinedAt: !1681)
!1702 = !DILocation(line: 124, column: 15, scope: !267, inlinedAt: !1681)
!1703 = !DILocation(line: 125, column: 7, scope: !267, inlinedAt: !1681)
!1704 = !DILocation(line: 125, column: 15, scope: !267, inlinedAt: !1681)
!1705 = !DILocation(line: 691, column: 15, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1677, file: !1, line: 691, column: 9)
!1707 = !DILocation(line: 691, column: 9, scope: !1677)
!1708 = !DILocation(line: 692, column: 7, scope: !1706)
!1709 = !DILocation(line: 693, column: 15, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1677, file: !1, line: 693, column: 9)
!1711 = !DILocation(line: 693, column: 9, scope: !1677)
!1712 = !DILocation(line: 694, column: 7, scope: !1710)
!1713 = !DILocation(line: 695, column: 19, scope: !1677)
!1714 = !DILocation(line: 695, column: 18, scope: !1677)
!1715 = !DILocation(line: 698, column: 28, scope: !1677)
!1716 = !DILocation(line: 698, column: 51, scope: !1677)
!1717 = !DILocation(line: 698, column: 63, scope: !1677)
!1718 = !DILocation(line: 499, column: 30, scope: !604, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 698, column: 16, scope: !1677)
!1720 = !DILocation(line: 499, column: 44, scope: !604, inlinedAt: !1719)
!1721 = !DILocation(line: 499, column: 54, scope: !604, inlinedAt: !1719)
!1722 = !DILocation(line: 499, column: 64, scope: !604, inlinedAt: !1719)
!1723 = !DILocation(line: 506, column: 3, scope: !604, inlinedAt: !1719)
!1724 = !DILocation(line: 334, column: 37, scope: !500, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 508, column: 3, scope: !604, inlinedAt: !1719)
!1726 = !DILocation(line: 336, column: 14, scope: !500, inlinedAt: !1725)
!1727 = !DILocation(line: 341, column: 1, scope: !500, inlinedAt: !1725)
!1728 = !DILocation(line: 338, column: 22, scope: !500, inlinedAt: !1725)
!1729 = !DILocation(line: 384, column: 29, scope: !613, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 509, column: 3, scope: !604, inlinedAt: !1719)
!1731 = !DILocation(line: 388, column: 3, scope: !613, inlinedAt: !1730)
!1732 = !DILocation(line: 389, column: 3, scope: !613, inlinedAt: !1730)
!1733 = !DILocation(line: 390, column: 3, scope: !613, inlinedAt: !1730)
!1734 = !DILocation(line: 391, column: 3, scope: !613, inlinedAt: !1730)
!1735 = !DILocation(line: 392, column: 3, scope: !613, inlinedAt: !1730)
!1736 = !DILocation(line: 393, column: 3, scope: !613, inlinedAt: !1730)
!1737 = !DILocation(line: 394, column: 3, scope: !613, inlinedAt: !1730)
!1738 = !DILocation(line: 396, column: 3, scope: !613, inlinedAt: !1730)
!1739 = !DILocation(line: 397, column: 5, scope: !1740, inlinedAt: !1730)
!1740 = distinct !DILexicalBlock(scope: !613, file: !1, line: 396, column: 6)
!1741 = !DILocation(line: 398, column: 12, scope: !1740, inlinedAt: !1730)
!1742 = !DILocation(line: 398, column: 5, scope: !1740, inlinedAt: !1730)
!1743 = !DILocation(line: 386, column: 7, scope: !613, inlinedAt: !1730)
!1744 = !DILocation(line: 399, column: 5, scope: !1740, inlinedAt: !1730)
!1745 = !DILocation(line: 400, column: 6, scope: !1740, inlinedAt: !1730)
!1746 = !DILocation(line: 401, column: 15, scope: !613, inlinedAt: !1730)
!1747 = !DILocation(line: 401, column: 26, scope: !613, inlinedAt: !1730)
!1748 = !DILocation(line: 401, column: 20, scope: !613, inlinedAt: !1730)
!1749 = !DILocation(line: 698, column: 61, scope: !1677)
!1750 = !DILocation(line: 402, column: 3, scope: !613, inlinedAt: !1730)
!1751 = !DILocation(line: 404, column: 23, scope: !613, inlinedAt: !1730)
!1752 = !DILocation(line: 404, column: 7, scope: !613, inlinedAt: !1730)
!1753 = !DILocation(line: 386, column: 9, scope: !613, inlinedAt: !1730)
!1754 = !DILocation(line: 406, column: 32, scope: !1755, inlinedAt: !1730)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 406, column: 3)
!1756 = distinct !DILexicalBlock(scope: !613, file: !1, line: 406, column: 3)
!1757 = !DILocation(line: 408, column: 33, scope: !613, inlinedAt: !1730)
!1758 = !DILocation(line: 408, column: 12, scope: !613, inlinedAt: !1730)
!1759 = !DILocation(line: 410, column: 3, scope: !613, inlinedAt: !1730)
!1760 = !DILocation(line: 413, column: 5, scope: !1761, inlinedAt: !1730)
!1761 = distinct !DILexicalBlock(scope: !613, file: !1, line: 410, column: 16)
!1762 = !DILocation(line: 414, column: 5, scope: !1761, inlinedAt: !1730)
!1763 = !DILocation(line: 417, column: 5, scope: !1761, inlinedAt: !1730)
!1764 = !DILocation(line: 418, column: 5, scope: !1761, inlinedAt: !1730)
!1765 = !DILocation(line: 419, column: 12, scope: !1761, inlinedAt: !1730)
!1766 = !DILocation(line: 419, column: 5, scope: !1761, inlinedAt: !1730)
!1767 = !DILocation(line: 420, column: 5, scope: !1761, inlinedAt: !1730)
!1768 = !DILocation(line: 422, column: 5, scope: !1761, inlinedAt: !1730)
!1769 = !DILocation(line: 423, column: 12, scope: !1761, inlinedAt: !1730)
!1770 = !DILocation(line: 423, column: 5, scope: !1761, inlinedAt: !1730)
!1771 = !DILocation(line: 424, column: 5, scope: !1761, inlinedAt: !1730)
!1772 = !DILocation(line: 426, column: 9, scope: !1773, inlinedAt: !1730)
!1773 = distinct !DILexicalBlock(scope: !1761, file: !1, line: 426, column: 9)
!1774 = !DILocation(line: 426, column: 13, scope: !1773, inlinedAt: !1730)
!1775 = !DILocation(line: 426, column: 9, scope: !1761, inlinedAt: !1730)
!1776 = !DILocation(line: 427, column: 7, scope: !1777, inlinedAt: !1730)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !1, line: 426, column: 24)
!1778 = !DILocation(line: 428, column: 14, scope: !1777, inlinedAt: !1730)
!1779 = !DILocation(line: 428, column: 7, scope: !1777, inlinedAt: !1730)
!1780 = !DILocation(line: 429, column: 7, scope: !1777, inlinedAt: !1730)
!1781 = !DILocation(line: 430, column: 5, scope: !1777, inlinedAt: !1730)
!1782 = !DILocation(line: 432, column: 9, scope: !1783, inlinedAt: !1730)
!1783 = distinct !DILexicalBlock(scope: !1761, file: !1, line: 431, column: 8)
!1784 = !DILocation(line: 386, column: 11, scope: !613, inlinedAt: !1730)
!1785 = !DILocation(line: 433, column: 7, scope: !1783, inlinedAt: !1730)
!1786 = !DILocation(line: 434, column: 16, scope: !1761, inlinedAt: !1730)
!1787 = !DILocation(line: 434, column: 5, scope: !1783, inlinedAt: !1730)
!1788 = !DILocation(line: 435, column: 5, scope: !1761, inlinedAt: !1730)
!1789 = !DILocation(line: 436, column: 12, scope: !1761, inlinedAt: !1730)
!1790 = !DILocation(line: 436, column: 5, scope: !1761, inlinedAt: !1730)
!1791 = !DILocation(line: 437, column: 5, scope: !1761, inlinedAt: !1730)
!1792 = !DILocation(line: 439, column: 5, scope: !1761, inlinedAt: !1730)
!1793 = !DILocation(line: 440, column: 3, scope: !1761, inlinedAt: !1730)
!1794 = !DILocation(line: 441, column: 1, scope: !613, inlinedAt: !1730)
!1795 = !DILocation(line: 504, column: 10, scope: !604, inlinedAt: !1719)
!1796 = !DILocation(line: 511, column: 3, scope: !1797, inlinedAt: !1719)
!1797 = distinct !DILexicalBlock(scope: !604, file: !1, line: 511, column: 3)
!1798 = !DILocation(line: 698, column: 16, scope: !1677)
!1799 = !DILocation(line: 512, column: 15, scope: !1800, inlinedAt: !1719)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !1, line: 511, column: 3)
!1801 = !DILocation(line: 512, column: 5, scope: !1800, inlinedAt: !1719)
!1802 = !DILocation(line: 512, column: 14, scope: !1800, inlinedAt: !1719)
!1803 = !DILocation(line: 514, column: 3, scope: !604, inlinedAt: !1719)
!1804 = !DILocation(line: 515, column: 6, scope: !604, inlinedAt: !1719)
!1805 = !DILocation(line: 515, column: 5, scope: !604, inlinedAt: !1719)
!1806 = !DILocation(line: 516, column: 28, scope: !1807, inlinedAt: !1719)
!1807 = distinct !DILexicalBlock(scope: !604, file: !1, line: 516, column: 7)
!1808 = !DILocation(line: 516, column: 8, scope: !1807, inlinedAt: !1719)
!1809 = !DILocation(line: 516, column: 7, scope: !604, inlinedAt: !1719)
!1810 = !DILocation(line: 698, column: 9, scope: !1677)
!1811 = !DILocation(line: 698, column: 15, scope: !1677)
!1812 = !DILocation(line: 699, column: 9, scope: !1677)
!1813 = !DILocation(line: 518, column: 5, scope: !604, inlinedAt: !1719)
!1814 = !DILocation(line: 520, column: 3, scope: !604, inlinedAt: !1719)
!1815 = !DILocation(line: 522, column: 10, scope: !604, inlinedAt: !1719)
!1816 = !DILocation(line: 699, column: 9, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1677, file: !1, line: 699, column: 9)
!1818 = !DILocation(line: 700, column: 11, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 699, column: 21)
!1820 = !DILocation(line: 700, column: 17, scope: !1819)
!1821 = !DILocation(line: 701, column: 11, scope: !1819)
!1822 = !DILocation(line: 701, column: 17, scope: !1819)
!1823 = !DILocation(line: 702, column: 11, scope: !1819)
!1824 = !DILocation(line: 702, column: 17, scope: !1819)
!1825 = !DILocation(line: 703, column: 22, scope: !1819)
!1826 = !DILocation(line: 77, column: 29, scope: !621, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 703, column: 7, scope: !1819)
!1828 = !DILocation(line: 79, column: 3, scope: !621, inlinedAt: !1827)
!1829 = !DILocation(line: 704, column: 5, scope: !1819)
!1830 = !DILocation(line: 708, column: 32, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1677, file: !1, line: 708, column: 9)
!1832 = !DILocation(line: 708, column: 44, scope: !1831)
!1833 = !DILocation(line: 708, column: 54, scope: !1831)
!1834 = !DILocation(line: 708, column: 59, scope: !1831)
!1835 = !DILocation(line: 708, column: 72, scope: !1831)
!1836 = !DILocation(line: 709, column: 15, scope: !1831)
!1837 = !DILocation(line: 672, column: 15, scope: !444)
!1838 = !DILocation(line: 708, column: 9, scope: !1831)
!1839 = !DILocation(line: 709, column: 26, scope: !1831)
!1840 = !DILocation(line: 708, column: 9, scope: !1677)
!1841 = !DILocation(line: 710, column: 7, scope: !1831)
!1842 = !DILocation(line: 711, column: 9, scope: !1677)
!1843 = !DILocation(line: 711, column: 15, scope: !1677)
!1844 = !DILocation(line: 712, column: 9, scope: !1677)
!1845 = !DILocation(line: 712, column: 15, scope: !1677)
!1846 = !DILocation(line: 713, column: 9, scope: !1677)
!1847 = !DILocation(line: 713, column: 15, scope: !1677)
!1848 = !DILocation(line: 714, column: 9, scope: !1677)
!1849 = !DILocation(line: 714, column: 15, scope: !1677)
!1850 = !DILocation(line: 715, column: 9, scope: !1677)
!1851 = !DILocation(line: 715, column: 15, scope: !1677)
!1852 = !DILocation(line: 716, column: 20, scope: !1677)
!1853 = !DILocation(line: 77, column: 29, scope: !621, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 716, column: 5, scope: !1677)
!1855 = !DILocation(line: 79, column: 3, scope: !621, inlinedAt: !1854)
!1856 = !DILocation(line: 720, column: 17, scope: !1677)
!1857 = !DILocation(line: 575, column: 3, scope: !624, inlinedAt: !1858)
!1858 = distinct !DILocation(line: 720, column: 5, scope: !1677)
!1859 = !DILocation(line: 577, column: 11, scope: !624, inlinedAt: !1858)
!1860 = !DILocation(line: 577, column: 3, scope: !624, inlinedAt: !1858)
!1861 = !DILocation(line: 578, column: 3, scope: !624, inlinedAt: !1858)
!1862 = !DILocation(line: 579, column: 33, scope: !624, inlinedAt: !1858)
!1863 = !DILocation(line: 579, column: 3, scope: !624, inlinedAt: !1858)
!1864 = !DILocation(line: 580, column: 11, scope: !1865, inlinedAt: !1858)
!1865 = distinct !DILexicalBlock(scope: !624, file: !1, line: 580, column: 7)
!1866 = !DILocation(line: 580, column: 17, scope: !1865, inlinedAt: !1858)
!1867 = !DILocation(line: 580, column: 7, scope: !624, inlinedAt: !1858)
!1868 = !DILocation(line: 581, column: 5, scope: !1865, inlinedAt: !1858)
!1869 = !DILocation(line: 582, column: 3, scope: !624, inlinedAt: !1858)
!1870 = !DILocation(line: 583, column: 3, scope: !624, inlinedAt: !1858)
!1871 = !DILocation(line: 584, column: 3, scope: !624, inlinedAt: !1858)
!1872 = !DILocation(line: 721, column: 13, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1677, file: !1, line: 721, column: 9)
!1874 = !DILocation(line: 721, column: 9, scope: !1873)
!1875 = !DILocation(line: 721, column: 9, scope: !1677)
!1876 = !DILocation(line: 722, column: 22, scope: !1873)
!1877 = !DILocation(line: 77, column: 29, scope: !621, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 722, column: 7, scope: !1873)
!1879 = !DILocation(line: 79, column: 3, scope: !621, inlinedAt: !1878)
!1880 = !DILocation(line: 722, column: 7, scope: !1873)
!1881 = !DILocation(line: 726, column: 26, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1677, file: !1, line: 726, column: 9)
!1883 = !DILocation(line: 726, column: 9, scope: !1882)
!1884 = !DILocation(line: 726, column: 9, scope: !1677)
!1885 = !DILocation(line: 727, column: 22, scope: !1882)
!1886 = !DILocation(line: 77, column: 29, scope: !621, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 727, column: 7, scope: !1882)
!1888 = !DILocation(line: 79, column: 3, scope: !621, inlinedAt: !1887)
!1889 = !DILocation(line: 727, column: 7, scope: !1882)
!1890 = !DILocation(line: 731, column: 5, scope: !1677)
!1891 = !DILocation(line: 736, column: 14, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !444, file: !1, line: 735, column: 7)
!1893 = !DILocation(line: 736, column: 20, scope: !1892)
!1894 = !DILocation(line: 736, column: 37, scope: !1892)
!1895 = !DILocation(line: 736, column: 57, scope: !1892)
!1896 = !DILocation(line: 736, column: 41, scope: !1892)
!1897 = !DILocation(line: 736, column: 63, scope: !1892)
!1898 = !DILocation(line: 735, column: 7, scope: !444)
!1899 = !DILocation(line: 738, column: 26, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1892, file: !1, line: 738, column: 9)
!1901 = !DILocation(line: 738, column: 10, scope: !1900)
!1902 = !DILocation(line: 738, column: 9, scope: !1892)
!1903 = !DILocation(line: 740, column: 16, scope: !444)
!1904 = !DILocation(line: 740, column: 7, scope: !444)
!1905 = !DILocation(line: 740, column: 10, scope: !444)
!1906 = !DILocation(line: 742, column: 15, scope: !444)
!1907 = !DILocation(line: 742, column: 22, scope: !444)
!1908 = !DILocation(line: 742, column: 3, scope: !444)
!1909 = !DILocation(line: 743, column: 1, scope: !444)
!1910 = !DILocation(line: 747, column: 23, scope: !455)
!1911 = !DILocation(line: 747, column: 36, scope: !455)
!1912 = !DILocation(line: 748, column: 10, scope: !455)
!1913 = !DILocation(line: 748, column: 19, scope: !455)
!1914 = !DILocation(line: 748, column: 28, scope: !455)
!1915 = !DILocation(line: 750, column: 3, scope: !455)
!1916 = !DILocation(line: 750, column: 14, scope: !455)
!1917 = !DILocation(line: 752, column: 3, scope: !455)
!1918 = !DILocation(line: 753, column: 7, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !455, file: !1, line: 753, column: 7)
!1920 = !DILocation(line: 753, column: 18, scope: !1919)
!1921 = !DILocation(line: 753, column: 15, scope: !1919)
!1922 = !DILocation(line: 753, column: 7, scope: !455)
!1923 = !DILocation(line: 757, column: 3, scope: !455)
!1924 = !DILocation(line: 754, column: 22, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 753, column: 27)
!1926 = !DILocation(line: 754, column: 13, scope: !1925)
!1927 = !DILocation(line: 755, column: 5, scope: !1925)
!1928 = !DILocation(line: 757, column: 10, scope: !455)
!1929 = !DILocation(line: 756, column: 3, scope: !1925)
!1930 = !DILocation(line: 757, column: 21, scope: !455)
!1931 = !{i64 0, i64 4, !815, i64 4, i64 4, !815, i64 8, i64 4, !815, i64 12, i64 4, !779, i64 16, i64 4, !779, i64 20, i64 4, !779, i64 24, i64 4, !815, i64 32, i64 8, !1476, i64 40, i64 4, !815, i64 44, i64 4, !815, i64 48, i64 4, !815, i64 52, i64 4, !779, i64 56, i64 4, !815, i64 60, i64 4, !779, i64 64, i64 4, !815, i64 72, i64 8, !1476, i64 80, i64 4, !815, i64 84, i64 4, !779, i64 88, i64 4, !815, i64 96, i64 8, !1476, i64 104, i64 4, !815, i64 112, i64 8, !1476, i64 120, i64 4, !815, i64 128, i64 8, !1476, i64 136, i64 4, !815, i64 140, i64 36, !679}
!1932 = !DILocation(line: 758, column: 15, scope: !455)
!1933 = !DILocation(line: 758, column: 8, scope: !455)
!1934 = !DILocation(line: 758, column: 24, scope: !455)
!1935 = !DILocation(line: 758, column: 6, scope: !455)
!1936 = !DILocation(line: 759, column: 24, scope: !455)
!1937 = !DILocation(line: 759, column: 6, scope: !455)
!1938 = !DILocation(line: 760, column: 12, scope: !455)
!1939 = !DILocation(line: 297, column: 36, scope: !515, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 760, column: 3, scope: !455)
!1941 = !DILocation(line: 297, column: 45, scope: !515, inlinedAt: !1940)
!1942 = !DILocation(line: 272, column: 9, scope: !508, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 299, column: 3, scope: !515, inlinedAt: !1940)
!1944 = !DILocation(line: 272, column: 8, scope: !508, inlinedAt: !1943)
!1945 = !DILocation(line: 273, column: 9, scope: !508, inlinedAt: !1943)
!1946 = !DILocation(line: 273, column: 3, scope: !508, inlinedAt: !1943)
!1947 = !DILocation(line: 273, column: 8, scope: !508, inlinedAt: !1943)
!1948 = !DILocation(line: 274, column: 9, scope: !508, inlinedAt: !1943)
!1949 = !DILocation(line: 274, column: 3, scope: !508, inlinedAt: !1943)
!1950 = !DILocation(line: 274, column: 8, scope: !508, inlinedAt: !1943)
!1951 = !DILocation(line: 300, column: 13, scope: !515, inlinedAt: !1940)
!1952 = !DILocation(line: 300, column: 19, scope: !515, inlinedAt: !1940)
!1953 = !DILocation(line: 270, column: 41, scope: !508, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 300, column: 3, scope: !515, inlinedAt: !1940)
!1955 = !DILocation(line: 270, column: 48, scope: !508, inlinedAt: !1954)
!1956 = !DILocation(line: 272, column: 9, scope: !508, inlinedAt: !1954)
!1957 = !DILocation(line: 272, column: 8, scope: !508, inlinedAt: !1954)
!1958 = !DILocation(line: 273, column: 9, scope: !508, inlinedAt: !1954)
!1959 = !DILocation(line: 273, column: 3, scope: !508, inlinedAt: !1954)
!1960 = !DILocation(line: 273, column: 8, scope: !508, inlinedAt: !1954)
!1961 = !DILocation(line: 274, column: 9, scope: !508, inlinedAt: !1954)
!1962 = !DILocation(line: 274, column: 3, scope: !508, inlinedAt: !1954)
!1963 = !DILocation(line: 274, column: 8, scope: !508, inlinedAt: !1954)
!1964 = !DILocation(line: 301, column: 13, scope: !515, inlinedAt: !1940)
!1965 = !DILocation(line: 301, column: 19, scope: !515, inlinedAt: !1940)
!1966 = !DILocation(line: 270, column: 41, scope: !508, inlinedAt: !1967)
!1967 = distinct !DILocation(line: 301, column: 3, scope: !515, inlinedAt: !1940)
!1968 = !DILocation(line: 270, column: 48, scope: !508, inlinedAt: !1967)
!1969 = !DILocation(line: 272, column: 9, scope: !508, inlinedAt: !1967)
!1970 = !DILocation(line: 272, column: 8, scope: !508, inlinedAt: !1967)
!1971 = !DILocation(line: 273, column: 9, scope: !508, inlinedAt: !1967)
!1972 = !DILocation(line: 273, column: 3, scope: !508, inlinedAt: !1967)
!1973 = !DILocation(line: 273, column: 8, scope: !508, inlinedAt: !1967)
!1974 = !DILocation(line: 274, column: 9, scope: !508, inlinedAt: !1967)
!1975 = !DILocation(line: 274, column: 3, scope: !508, inlinedAt: !1967)
!1976 = !DILocation(line: 274, column: 8, scope: !508, inlinedAt: !1967)
!1977 = !DILocation(line: 762, column: 26, scope: !455)
!1978 = !DILocation(line: 763, column: 1, scope: !455)
!1979 = !DILocation(line: 765, column: 22, scope: !467)
!1980 = !DILocation(line: 765, column: 35, scope: !467)
!1981 = !DILocation(line: 765, column: 42, scope: !467)
!1982 = !DILocation(line: 765, column: 55, scope: !467)
!1983 = !DILocation(line: 765, column: 67, scope: !467)
!1984 = !DILocation(line: 769, column: 3, scope: !467)
!1985 = !DILocation(line: 769, column: 18, scope: !467)
!1986 = !DILocation(line: 769, column: 20, scope: !467)
!1987 = !DILocation(line: 770, column: 34, scope: !467)
!1988 = !DILocation(line: 770, column: 10, scope: !467)
!1989 = !DILocation(line: 767, column: 8, scope: !467)
!1990 = !DILocation(line: 771, column: 8, scope: !467)
!1991 = !DILocation(line: 771, column: 23, scope: !467)
!1992 = !DILocation(line: 771, column: 6, scope: !467)
!1993 = !DILocation(line: 772, column: 12, scope: !467)
!1994 = !DILocation(line: 297, column: 36, scope: !515, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 772, column: 3, scope: !467)
!1996 = !DILocation(line: 297, column: 45, scope: !515, inlinedAt: !1995)
!1997 = !DILocation(line: 272, column: 9, scope: !508, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 299, column: 3, scope: !515, inlinedAt: !1995)
!1999 = !DILocation(line: 272, column: 8, scope: !508, inlinedAt: !1998)
!2000 = !DILocation(line: 273, column: 9, scope: !508, inlinedAt: !1998)
!2001 = !DILocation(line: 273, column: 3, scope: !508, inlinedAt: !1998)
!2002 = !DILocation(line: 273, column: 8, scope: !508, inlinedAt: !1998)
!2003 = !DILocation(line: 274, column: 9, scope: !508, inlinedAt: !1998)
!2004 = !DILocation(line: 274, column: 3, scope: !508, inlinedAt: !1998)
!2005 = !DILocation(line: 274, column: 8, scope: !508, inlinedAt: !1998)
!2006 = !DILocation(line: 300, column: 13, scope: !515, inlinedAt: !1995)
!2007 = !DILocation(line: 300, column: 19, scope: !515, inlinedAt: !1995)
!2008 = !DILocation(line: 270, column: 41, scope: !508, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 300, column: 3, scope: !515, inlinedAt: !1995)
!2010 = !DILocation(line: 270, column: 48, scope: !508, inlinedAt: !2009)
!2011 = !DILocation(line: 272, column: 9, scope: !508, inlinedAt: !2009)
!2012 = !DILocation(line: 272, column: 8, scope: !508, inlinedAt: !2009)
!2013 = !DILocation(line: 273, column: 9, scope: !508, inlinedAt: !2009)
!2014 = !DILocation(line: 273, column: 3, scope: !508, inlinedAt: !2009)
!2015 = !DILocation(line: 273, column: 8, scope: !508, inlinedAt: !2009)
!2016 = !DILocation(line: 274, column: 9, scope: !508, inlinedAt: !2009)
!2017 = !DILocation(line: 274, column: 3, scope: !508, inlinedAt: !2009)
!2018 = !DILocation(line: 274, column: 8, scope: !508, inlinedAt: !2009)
!2019 = !DILocation(line: 301, column: 13, scope: !515, inlinedAt: !1995)
!2020 = !DILocation(line: 301, column: 19, scope: !515, inlinedAt: !1995)
!2021 = !DILocation(line: 270, column: 41, scope: !508, inlinedAt: !2022)
!2022 = distinct !DILocation(line: 301, column: 3, scope: !515, inlinedAt: !1995)
!2023 = !DILocation(line: 270, column: 48, scope: !508, inlinedAt: !2022)
!2024 = !DILocation(line: 272, column: 9, scope: !508, inlinedAt: !2022)
!2025 = !DILocation(line: 272, column: 8, scope: !508, inlinedAt: !2022)
!2026 = !DILocation(line: 273, column: 9, scope: !508, inlinedAt: !2022)
!2027 = !DILocation(line: 273, column: 3, scope: !508, inlinedAt: !2022)
!2028 = !DILocation(line: 273, column: 8, scope: !508, inlinedAt: !2022)
!2029 = !DILocation(line: 274, column: 9, scope: !508, inlinedAt: !2022)
!2030 = !DILocation(line: 274, column: 3, scope: !508, inlinedAt: !2022)
!2031 = !DILocation(line: 274, column: 8, scope: !508, inlinedAt: !2022)
!2032 = !DILocation(line: 774, column: 3, scope: !467)
!2033 = !DILocation(line: 777, column: 20, scope: !477)
!2034 = !DILocation(line: 779, column: 3, scope: !477)
!2035 = !DILocation(line: 780, column: 1, scope: !477)
!2036 = !DILocation(line: 782, column: 21, scope: !480)
!2037 = !DILocation(line: 784, column: 3, scope: !480)
!2038 = !DILocation(line: 786, column: 3, scope: !480)
!2039 = !DILocation(line: 787, column: 1, scope: !480)
!2040 = !DILocation(line: 800, column: 23, scope: !483)
!2041 = !DILocation(line: 800, column: 36, scope: !483)
!2042 = !DILocation(line: 800, column: 45, scope: !483)
!2043 = !DILocation(line: 800, column: 54, scope: !483)
!2044 = !DILocation(line: 800, column: 63, scope: !483)
!2045 = !DILocation(line: 802, column: 3, scope: !483)
!2046 = !DILocation(line: 802, column: 14, scope: !483)
!2047 = !DILocation(line: 804, column: 3, scope: !483)
!2048 = !DILocation(line: 805, column: 11, scope: !483)
!2049 = !DILocation(line: 805, column: 6, scope: !483)
!2050 = !DILocation(line: 791, column: 33, scope: !628, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 806, column: 3, scope: !483)
!2052 = !DILocation(line: 795, column: 12, scope: !2053, inlinedAt: !2051)
!2053 = distinct !DILexicalBlock(scope: !628, file: !1, line: 795, column: 7)
!2054 = !DILocation(line: 795, column: 8, scope: !2053, inlinedAt: !2051)
!2055 = !DILocation(line: 796, column: 20, scope: !2056, inlinedAt: !2051)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !1, line: 796, column: 5)
!2057 = distinct !DILexicalBlock(scope: !2053, file: !1, line: 796, column: 5)
!2058 = !DILocation(line: 796, column: 15, scope: !2056, inlinedAt: !2051)
!2059 = !DILocation(line: 795, column: 7, scope: !628, inlinedAt: !2051)
!2060 = !DILocation(line: 797, column: 22, scope: !2056, inlinedAt: !2051)
!2061 = !DILocation(line: 796, column: 5, scope: !2057, inlinedAt: !2051)
!2062 = !DILocation(line: 806, column: 3, scope: !483)
!2063 = !DILocation(line: 797, column: 18, scope: !2056, inlinedAt: !2051)
!2064 = !DILocation(line: 316, column: 36, scope: !632, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 797, column: 7, scope: !2056, inlinedAt: !2051)
!2066 = !DILocation(line: 321, column: 8, scope: !632, inlinedAt: !2065)
!2067 = !DILocation(line: 322, column: 3, scope: !632, inlinedAt: !2065)
!2068 = !DILocation(line: 322, column: 8, scope: !632, inlinedAt: !2065)
!2069 = !DILocation(line: 323, column: 3, scope: !632, inlinedAt: !2065)
!2070 = !DILocation(line: 323, column: 8, scope: !632, inlinedAt: !2065)
!2071 = !DILocation(line: 807, column: 11, scope: !483)
!2072 = !DILocation(line: 807, column: 6, scope: !483)
!2073 = !DILocation(line: 808, column: 12, scope: !483)
!2074 = !DILocation(line: 297, column: 36, scope: !515, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 808, column: 3, scope: !483)
!2076 = !DILocation(line: 297, column: 45, scope: !515, inlinedAt: !2075)
!2077 = !DILocation(line: 272, column: 9, scope: !508, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 299, column: 3, scope: !515, inlinedAt: !2075)
!2079 = !DILocation(line: 272, column: 8, scope: !508, inlinedAt: !2078)
!2080 = !DILocation(line: 273, column: 9, scope: !508, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 300, column: 3, scope: !515, inlinedAt: !2075)
!2082 = !DILocation(line: 273, column: 3, scope: !508, inlinedAt: !2081)
!2083 = !DILocation(line: 273, column: 8, scope: !508, inlinedAt: !2081)
!2084 = !DILocation(line: 274, column: 9, scope: !508, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 301, column: 3, scope: !515, inlinedAt: !2075)
!2086 = !DILocation(line: 274, column: 3, scope: !508, inlinedAt: !2085)
!2087 = !DILocation(line: 274, column: 8, scope: !508, inlinedAt: !2085)
!2088 = !DILocation(line: 811, column: 1, scope: !483)
!2089 = !DILocation(line: 813, column: 22, scope: !491)
!2090 = !DILocation(line: 813, column: 35, scope: !491)
!2091 = !DILocation(line: 813, column: 41, scope: !491)
!2092 = !DILocation(line: 813, column: 53, scope: !491)
!2093 = !DILocation(line: 813, column: 64, scope: !491)
!2094 = !DILocation(line: 815, column: 3, scope: !491)
!2095 = !DILocation(line: 815, column: 14, scope: !491)
!2096 = !DILocation(line: 818, column: 3, scope: !491)
!2097 = !DILocation(line: 819, column: 6, scope: !491)
!2098 = !DILocation(line: 819, column: 12, scope: !491)
!2099 = !DILocation(line: 820, column: 6, scope: !491)
!2100 = !DILocation(line: 820, column: 13, scope: !491)
!2101 = !DILocation(line: 821, column: 13, scope: !491)
!2102 = !DILocation(line: 821, column: 6, scope: !491)
!2103 = !DILocation(line: 821, column: 11, scope: !491)
!2104 = !DILocation(line: 822, column: 6, scope: !491)
!2105 = !DILocation(line: 822, column: 8, scope: !491)
!2106 = !DILocation(line: 823, column: 10, scope: !491)
!2107 = !DILocation(line: 816, column: 8, scope: !491)
!2108 = !DILocation(line: 824, column: 11, scope: !491)
!2109 = !DILocation(line: 824, column: 6, scope: !491)
!2110 = !DILocation(line: 791, column: 33, scope: !628, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 825, column: 3, scope: !491)
!2112 = !DILocation(line: 795, column: 12, scope: !2053, inlinedAt: !2111)
!2113 = !DILocation(line: 795, column: 8, scope: !2053, inlinedAt: !2111)
!2114 = !DILocation(line: 795, column: 7, scope: !628, inlinedAt: !2111)
!2115 = !DILocation(line: 796, column: 20, scope: !2056, inlinedAt: !2111)
!2116 = !DILocation(line: 796, column: 15, scope: !2056, inlinedAt: !2111)
!2117 = !DILocation(line: 796, column: 5, scope: !2057, inlinedAt: !2111)
!2118 = !DILocation(line: 797, column: 22, scope: !2056, inlinedAt: !2111)
!2119 = !DILocation(line: 825, column: 3, scope: !491)
!2120 = !DILocation(line: 797, column: 18, scope: !2056, inlinedAt: !2111)
!2121 = !DILocation(line: 316, column: 36, scope: !632, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 797, column: 7, scope: !2056, inlinedAt: !2111)
!2123 = !DILocation(line: 321, column: 8, scope: !632, inlinedAt: !2122)
!2124 = !DILocation(line: 322, column: 3, scope: !632, inlinedAt: !2122)
!2125 = !DILocation(line: 322, column: 8, scope: !632, inlinedAt: !2122)
!2126 = !DILocation(line: 323, column: 3, scope: !632, inlinedAt: !2122)
!2127 = !DILocation(line: 323, column: 8, scope: !632, inlinedAt: !2122)
!2128 = !DILocation(line: 826, column: 12, scope: !491)
!2129 = !DILocation(line: 297, column: 36, scope: !515, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 826, column: 3, scope: !491)
!2131 = !DILocation(line: 297, column: 45, scope: !515, inlinedAt: !2130)
!2132 = !DILocation(line: 272, column: 9, scope: !508, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 299, column: 3, scope: !515, inlinedAt: !2130)
!2134 = !DILocation(line: 272, column: 8, scope: !508, inlinedAt: !2133)
!2135 = !DILocation(line: 273, column: 9, scope: !508, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 300, column: 3, scope: !515, inlinedAt: !2130)
!2137 = !DILocation(line: 273, column: 3, scope: !508, inlinedAt: !2136)
!2138 = !DILocation(line: 273, column: 8, scope: !508, inlinedAt: !2136)
!2139 = !DILocation(line: 274, column: 9, scope: !508, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 301, column: 3, scope: !515, inlinedAt: !2130)
!2141 = !DILocation(line: 274, column: 3, scope: !508, inlinedAt: !2140)
!2142 = !DILocation(line: 274, column: 8, scope: !508, inlinedAt: !2140)
!2143 = !DILocation(line: 829, column: 1, scope: !491)
!2144 = !DILocation(line: 443, column: 31, scope: !557)
!2145 = !DILocation(line: 443, column: 42, scope: !557)
!2146 = !DILocation(line: 443, column: 54, scope: !557)
!2147 = !DILocation(line: 443, column: 65, scope: !557)
!2148 = !DILocation(line: 445, column: 10, scope: !557)
!2149 = !DILocation(line: 448, column: 14, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !1, line: 448, column: 3)
!2151 = distinct !DILexicalBlock(scope: !557, file: !1, line: 448, column: 3)
!2152 = !DILocation(line: 448, column: 3, scope: !2151)
!2153 = !DILocation(line: 449, column: 5, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !1, line: 449, column: 5)
!2155 = distinct !DILexicalBlock(scope: !2150, file: !1, line: 448, column: 29)
!2156 = !DILocation(line: 446, column: 10, scope: !557)
!2157 = !DILocation(line: 450, column: 11, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !1, line: 450, column: 11)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !1, line: 449, column: 28)
!2160 = distinct !DILexicalBlock(scope: !2154, file: !1, line: 449, column: 5)
!2161 = !DILocation(line: 450, column: 36, scope: !2158)
!2162 = !DILocation(line: 450, column: 11, scope: !2159)
!2163 = !DILocation(line: 451, column: 8, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !1, line: 451, column: 6)
!2165 = distinct !DILexicalBlock(scope: !2158, file: !1, line: 450, column: 42)
!2166 = !DILocation(line: 452, column: 12, scope: !2164)
!2167 = !DILocation(line: 452, column: 4, scope: !2164)
!2168 = !DILocation(line: 456, column: 15, scope: !2159)
!2169 = !DILocation(line: 456, column: 7, scope: !2159)
!2170 = !DILocation(line: 456, column: 14, scope: !2159)
!2171 = !DILocation(line: 449, column: 16, scope: !2160)
!2172 = !DILocation(line: 459, column: 7, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !557, file: !1, line: 459, column: 7)
!2174 = !DILocation(line: 459, column: 7, scope: !557)
!2175 = !DILocation(line: 461, column: 11, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !1, line: 461, column: 11)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 460, column: 28)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !1, line: 460, column: 5)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !1, line: 460, column: 5)
!2180 = distinct !DILexicalBlock(scope: !2173, file: !1, line: 459, column: 17)
!2181 = !DILocation(line: 461, column: 36, scope: !2176)
!2182 = !DILocation(line: 461, column: 11, scope: !2177)
!2183 = !DILocation(line: 463, column: 17, scope: !2177)
!2184 = !DILocation(line: 463, column: 7, scope: !2177)
!2185 = !DILocation(line: 463, column: 16, scope: !2177)
!2186 = !DILocation(line: 460, column: 5, scope: !2179)
!2187 = !DILocation(line: 460, column: 16, scope: !2178)
!2188 = !DILocation(line: 467, column: 1, scope: !557)
