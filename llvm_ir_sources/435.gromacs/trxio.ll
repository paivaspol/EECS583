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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #10
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #11
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #11
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #11
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #11
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #11
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #11
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #10
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #10
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #10
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #10
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @nframes_read() #4 {
  %1 = load i32* @__frame, align 4, !tbaa !18
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @prec2ndec(float %prec) #5 {
  %1 = fcmp ugt float %prec, 0.000000e+00
  %.pre = fpext float %prec to double
  br i1 %1, label %._crit_edge, label %2

; <label>:2                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([41 x i8]* @.str, i64 0, i64 0), double %.pre) #10
  br label %._crit_edge

._crit_edge:                                      ; preds = %0, %2
  %3 = tail call double @log(double %.pre) #12
  %4 = fdiv double %3, 0x40026BB1BBB55516
  %5 = fadd double %4, 5.000000e-01
  %6 = fptosi double %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize readnone
declare double @log(double) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @clear_trxframe(%struct.t_trxframe* %fr, i32 %bFirst) #5 {
  %1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 1
  store i32 0, i32* %1, align 4, !tbaa !19
  %2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  store i32 0, i32* %2, align 4, !tbaa !21
  %3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  store i32 0, i32* %3, align 4, !tbaa !22
  %4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  store i32 0, i32* %4, align 4, !tbaa !23
  %5 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 12
  store i32 0, i32* %5, align 4, !tbaa !24
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  store i32 0, i32* %6, align 4, !tbaa !25
  %7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  store i32 0, i32* %7, align 4, !tbaa !26
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 0, i32* %8, align 4, !tbaa !27
  %9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  store i32 0, i32* %9, align 4, !tbaa !28
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22
  store i32 0, i32* %10, align 4, !tbaa !29
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 0, i32* %11, align 4, !tbaa !30
  %12 = icmp eq i32 %bFirst, 0
  br i1 %12, label %30, label %13

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0
  store i32 0, i32* %14, align 4, !tbaa !31
  %15 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 -1, i32* %15, align 4, !tbaa !32
  %16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 3
  store float 0.000000e+00, float* %16, align 4, !tbaa !33
  %17 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 4
  store float 0.000000e+00, float* %17, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 5
  store float 0.000000e+00, float* %18, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 7
  store i8* null, i8** %19, align 8, !tbaa !36
  %20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  store i32 0, i32* %20, align 4, !tbaa !37
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float 0.000000e+00, float* %21, align 4, !tbaa !38
  %22 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 13
  store float 0.000000e+00, float* %22, align 4, !tbaa !39
  %23 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  store %struct.t_atoms* null, %struct.t_atoms** %23, align 8, !tbaa !40
  %24 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17
  store float 0.000000e+00, float* %24, align 4, !tbaa !41
  %25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* null, [3 x float]** %25, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* null, [3 x float]** %26, align 8, !tbaa !43
  %27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23
  store [3 x float]* null, [3 x float]** %27, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %29 = bitcast [3 x float]* %28 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 36, i32 4, i1 false) #7
  br label %30

; <label>:30                                      ; preds = %0, %13
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @write_trxframe_indexed(i32 %fnum, %struct.t_trxframe* %fr, i32 %nind, i32* %ind) #5 {
  %title = alloca [4096 x i8], align 16
  %1 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #7
  %2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  %3 = load i32* %2, align 4, !tbaa !26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17
  %7 = load float* %6, align 4, !tbaa !41
  br label %8

; <label>:8                                       ; preds = %0, %5
  %prec.0 = phi float [ %7, %5 ], [ 1.000000e+03, %0 ]
  %9 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10
  %10 = and i32 %9, -2
  %switch = icmp eq i32 %10, 4
  br i1 %switch, label %18, label %11

; <label>:11                                      ; preds = %8
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  %13 = load i32* %12, align 4, !tbaa !27
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %11
  %16 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10
  %17 = tail call i8* @ftp2ext(i32 %16) #10
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([42 x i8]* @.str1, i64 0, i64 0), i8* %17) #10
  br label %18

; <label>:18                                      ; preds = %11, %15, %8
  %19 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10
  switch i32 %19, label %.loopexit [
    i32 5, label %20
    i32 4, label %20
    i32 6, label %.loopexit1
    i32 7, label %.loopexit1
  ]

; <label>:20                                      ; preds = %18, %18
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %22 = load i32* %21, align 4, !tbaa !28
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %.loopexit2, label %24

; <label>:24                                      ; preds = %20
  %25 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 172, i32 %nind, i32 12) #10
  %26 = bitcast i8* %25 to [3 x float]*
  %27 = icmp sgt i32 %nind, 0
  br i1 %27, label %.lr.ph7, label %.loopexit2

.lr.ph7:                                          ; preds = %24
  %28 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %29 = load [3 x float]** %28, align 8, !tbaa !43
  %30 = add i32 %nind, -1
  br label %31

; <label>:31                                      ; preds = %31, %.lr.ph7
  %indvars.iv12 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next13, %31 ]
  %32 = getelementptr inbounds i32* %ind, i64 %indvars.iv12
  %33 = load i32* %32, align 4, !tbaa !18
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x float]* %29, i64 %34, i64 0
  %36 = getelementptr inbounds [3 x float]* %26, i64 %indvars.iv12, i64 0
  %37 = bitcast float* %35 to i32*
  %38 = load i32* %37, align 4, !tbaa !14
  %39 = bitcast float* %36 to i32*
  store i32 %38, i32* %39, align 4, !tbaa !14
  %40 = getelementptr inbounds [3 x float]* %29, i64 %34, i64 1
  %41 = bitcast float* %40 to i32*
  %42 = load i32* %41, align 4, !tbaa !14
  %43 = getelementptr inbounds [3 x float]* %26, i64 %indvars.iv12, i64 1
  %44 = bitcast float* %43 to i32*
  store i32 %42, i32* %44, align 4, !tbaa !14
  %45 = getelementptr inbounds [3 x float]* %29, i64 %34, i64 2
  %46 = bitcast float* %45 to i32*
  %47 = load i32* %46, align 4, !tbaa !14
  %48 = getelementptr inbounds [3 x float]* %26, i64 %indvars.iv12, i64 2
  %49 = bitcast float* %48 to i32*
  store i32 %47, i32* %49, align 4, !tbaa !14
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %lftr.wideiv14 = trunc i64 %indvars.iv12 to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %30
  br i1 %exitcond15, label %.loopexit2, label %31

.loopexit2:                                       ; preds = %31, %24, %20
  %vout.0 = phi [3 x float]* [ null, %20 ], [ %26, %24 ], [ %26, %31 ]
  %50 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22
  %51 = load i32* %50, align 4, !tbaa !29
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %.loopexit1, label %53

; <label>:53                                      ; preds = %.loopexit2
  %54 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 177, i32 %nind, i32 12) #10
  %55 = bitcast i8* %54 to [3 x float]*
  %56 = icmp sgt i32 %nind, 0
  br i1 %56, label %.lr.ph5, label %.loopexit1

.lr.ph5:                                          ; preds = %53
  %57 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23
  %58 = load [3 x float]** %57, align 8, !tbaa !44
  %59 = add i32 %nind, -1
  br label %60

; <label>:60                                      ; preds = %60, %.lr.ph5
  %indvars.iv8 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next9, %60 ]
  %61 = getelementptr inbounds i32* %ind, i64 %indvars.iv8
  %62 = load i32* %61, align 4, !tbaa !18
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x float]* %58, i64 %63, i64 0
  %65 = getelementptr inbounds [3 x float]* %55, i64 %indvars.iv8, i64 0
  %66 = bitcast float* %64 to i32*
  %67 = load i32* %66, align 4, !tbaa !14
  %68 = bitcast float* %65 to i32*
  store i32 %67, i32* %68, align 4, !tbaa !14
  %69 = getelementptr inbounds [3 x float]* %58, i64 %63, i64 1
  %70 = bitcast float* %69 to i32*
  %71 = load i32* %70, align 4, !tbaa !14
  %72 = getelementptr inbounds [3 x float]* %55, i64 %indvars.iv8, i64 1
  %73 = bitcast float* %72 to i32*
  store i32 %71, i32* %73, align 4, !tbaa !14
  %74 = getelementptr inbounds [3 x float]* %58, i64 %63, i64 2
  %75 = bitcast float* %74 to i32*
  %76 = load i32* %75, align 4, !tbaa !14
  %77 = getelementptr inbounds [3 x float]* %55, i64 %indvars.iv8, i64 2
  %78 = bitcast float* %77 to i32*
  store i32 %76, i32* %78, align 4, !tbaa !14
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %lftr.wideiv10 = trunc i64 %indvars.iv8 to i32
  %exitcond11 = icmp eq i32 %lftr.wideiv10, %59
  br i1 %exitcond11, label %.loopexit1, label %60

.loopexit1:                                       ; preds = %60, %53, %.loopexit2, %18, %18
  %vout.1 = phi [3 x float]* [ null, %18 ], [ null, %18 ], [ %vout.0, %.loopexit2 ], [ %vout.0, %53 ], [ %vout.0, %60 ]
  %fout.0 = phi [3 x float]* [ null, %18 ], [ null, %18 ], [ null, %.loopexit2 ], [ %55, %53 ], [ %55, %60 ]
  %79 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  %80 = load i32* %79, align 4, !tbaa !27
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %.loopexit, label %82

; <label>:82                                      ; preds = %.loopexit1
  %83 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 184, i32 %nind, i32 12) #10
  %84 = bitcast i8* %83 to [3 x float]*
  %85 = icmp sgt i32 %nind, 0
  br i1 %85, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %82
  %86 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %87 = load [3 x float]** %86, align 8, !tbaa !42
  %88 = add i32 %nind, -1
  br label %89

; <label>:89                                      ; preds = %89, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %89 ]
  %90 = getelementptr inbounds i32* %ind, i64 %indvars.iv
  %91 = load i32* %90, align 4, !tbaa !18
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [3 x float]* %87, i64 %92, i64 0
  %94 = getelementptr inbounds [3 x float]* %84, i64 %indvars.iv, i64 0
  %95 = bitcast float* %93 to i32*
  %96 = load i32* %95, align 4, !tbaa !14
  %97 = bitcast float* %94 to i32*
  store i32 %96, i32* %97, align 4, !tbaa !14
  %98 = getelementptr inbounds [3 x float]* %87, i64 %92, i64 1
  %99 = bitcast float* %98 to i32*
  %100 = load i32* %99, align 4, !tbaa !14
  %101 = getelementptr inbounds [3 x float]* %84, i64 %indvars.iv, i64 1
  %102 = bitcast float* %101 to i32*
  store i32 %100, i32* %102, align 4, !tbaa !14
  %103 = getelementptr inbounds [3 x float]* %87, i64 %92, i64 2
  %104 = bitcast float* %103 to i32*
  %105 = load i32* %104, align 4, !tbaa !14
  %106 = getelementptr inbounds [3 x float]* %84, i64 %indvars.iv, i64 2
  %107 = bitcast float* %106 to i32*
  store i32 %105, i32* %107, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %88
  br i1 %exitcond, label %.loopexit, label %89

.loopexit:                                        ; preds = %89, %82, %.loopexit1, %18
  %vout.2 = phi [3 x float]* [ null, %18 ], [ %vout.1, %.loopexit1 ], [ %vout.1, %82 ], [ %vout.1, %89 ]
  %fout.1 = phi [3 x float]* [ null, %18 ], [ %fout.0, %.loopexit1 ], [ %fout.0, %82 ], [ %fout.0, %89 ]
  %xout.0 = phi [3 x float]* [ null, %18 ], [ null, %.loopexit1 ], [ %84, %82 ], [ %84, %89 ]
  %108 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10
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
  ]

; <label>:109                                     ; preds = %.loopexit
  %110 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %111 = load i32* %110, align 4, !tbaa !37
  %112 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %113 = load float* %112, align 4, !tbaa !38
  %114 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %115 = tail call i32 @write_xtc(i32 %fnum, i32 %nind, i32 %111, float %113, [3 x float]* %114, [3 x float]* %xout.0, float %prec.0) #10
  br label %168

; <label>:116                                     ; preds = %.loopexit, %.loopexit
  %117 = load i32* @__frame, align 4, !tbaa !18
  %118 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %119 = load float* %118, align 4, !tbaa !38
  %120 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %121 = load i32* %120, align 4, !tbaa !37
  %122 = sitofp i32 %121 to float
  %123 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  tail call void @fwrite_trn(i32 %fnum, i32 %117, float %119, float %122, [3 x float]* %123, i32 %nind, [3 x float]* %xout.0, [3 x float]* %vout.2, [3 x float]* %fout.1) #10
  br label %168

; <label>:124                                     ; preds = %.loopexit, %.loopexit, %.loopexit, %.loopexit
  %125 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  %126 = load i32* %125, align 4, !tbaa !25
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

; <label>:128                                     ; preds = %124
  %129 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10
  %130 = tail call i8* @ftp2ext(i32 %129) #10
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str6, i64 0, i64 0), i8* %130) #10
  br label %131

; <label>:131                                     ; preds = %124, %128
  %132 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %133 = load float* %132, align 4, !tbaa !38
  %134 = fpext float %133 to double
  %135 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 4096, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), double %134) #10
  %136 = call i32 @gmx_fio_getftp(i32 %fnum) #10
  %137 = icmp eq i32 %136, 13
  %138 = call %struct.__sFILE* @gmx_fio_getfp(i32 %fnum) #10
  %139 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  %140 = load %struct.t_atoms** %139, align 8, !tbaa !40
  br i1 %137, label %141, label %154

; <label>:141                                     ; preds = %131
  %142 = call i32 @prec2ndec(float %prec.0) #13
  %143 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %144 = load [3 x float]** %143, align 8, !tbaa !42
  %145 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %146 = load i32* %145, align 4, !tbaa !28
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %151, label %148

; <label>:148                                     ; preds = %141
  %149 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %150 = load [3 x float]** %149, align 8, !tbaa !43
  br label %151

; <label>:151                                     ; preds = %141, %148
  %152 = phi [3 x float]* [ %150, %148 ], [ null, %141 ]
  %153 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  call void @write_hconf_indexed_p(%struct.__sFILE* %138, i8* %1, %struct.t_atoms* %140, i32 %nind, i32* %ind, i32 %142, [3 x float]* %144, [3 x float]* %152, [3 x float]* %153) #10
  br label %168

; <label>:154                                     ; preds = %131
  %155 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %156 = load [3 x float]** %155, align 8, !tbaa !42
  %157 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %158 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %159 = load i32* %158, align 4, !tbaa !37
  call void @write_pdbfile_indexed(%struct.__sFILE* %138, i8* %1, %struct.t_atoms* %140, [3 x float]* %156, [3 x float]* %157, i8 signext 0, i32 %159, i32 %nind, i32* %ind) #10
  br label %168

; <label>:160                                     ; preds = %.loopexit
  %161 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %fnum) #10
  %162 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  tail call void @write_gms(%struct.__sFILE* %161, i32 %nind, [3 x float]* %xout.0, [3 x float]* %162) #10
  br label %168

; <label>:163                                     ; preds = %.loopexit
  %164 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %fnum) #10
  tail call void @write_g96_conf(%struct.__sFILE* %164, %struct.t_trxframe* %fr, i32 %nind, i32* %ind) #10
  br label %168

; <label>:165                                     ; preds = %.loopexit
  %166 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10
  %167 = tail call i8* @ftp2ext(i32 %166) #10
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), i8* %167) #10
  br label %168

; <label>:168                                     ; preds = %151, %154, %165, %163, %160, %116, %109
  %169 = call i32 @gmx_fio_getftp(i32 %fnum) #10
  switch i32 %169, label %180 [
    i32 3, label %170
    i32 5, label %170
    i32 4, label %170
    i32 6, label %178
    i32 7, label %178
  ]

; <label>:170                                     ; preds = %168, %168, %168
  %171 = icmp eq [3 x float]* %vout.2, null
  br i1 %171, label %174, label %172

; <label>:172                                     ; preds = %170
  %173 = bitcast [3 x float]* %vout.2 to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 234, i8* %173) #10
  br label %174

; <label>:174                                     ; preds = %170, %172
  %175 = icmp eq [3 x float]* %fout.1, null
  br i1 %175, label %178, label %176

; <label>:176                                     ; preds = %174
  %177 = bitcast [3 x float]* %fout.1 to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 235, i8* %177) #10
  br label %178

; <label>:178                                     ; preds = %174, %176, %168, %168
  %179 = bitcast [3 x float]* %xout.0 to i8*
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 238, i8* %179) #10
  br label %180

; <label>:180                                     ; preds = %168, %178
  call void @llvm.lifetime.end(i64 4096, i8* %1) #7
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i32 @gmx_fio_getftp(i32) #1

; Function Attrs: optsize
declare i8* @ftp2ext(i32) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare i32 @write_xtc(i32, i32, i32, float, [3 x float]*, [3 x float]*, float) #1

; Function Attrs: optsize
declare void @fwrite_trn(i32, i32, float, float, [3 x float]*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: optsize
declare void @write_hconf_indexed_p(%struct.__sFILE*, i8*, %struct.t_atoms*, i32, i32*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare %struct.__sFILE* @gmx_fio_getfp(i32) #1

; Function Attrs: optsize
declare void @write_pdbfile_indexed(%struct.__sFILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32, i32, i32*) #1

; Function Attrs: optsize
declare void @write_gms(%struct.__sFILE*, i32, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @write_g96_conf(%struct.__sFILE*, %struct.t_trxframe*, i32, i32*) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize ssp uwtable
define i32 @write_trxframe(i32 %fnum, %struct.t_trxframe* %fr) #5 {
  %title = alloca [4096 x i8], align 16
  %1 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #7
  %2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  %3 = load i32* %2, align 4, !tbaa !26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17
  %7 = load float* %6, align 4, !tbaa !41
  br label %8

; <label>:8                                       ; preds = %0, %5
  %prec.0 = phi float [ %7, %5 ], [ 1.000000e+03, %0 ]
  %9 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10
  %10 = and i32 %9, -2
  %switch = icmp eq i32 %10, 4
  br i1 %switch, label %18, label %11

; <label>:11                                      ; preds = %8
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  %13 = load i32* %12, align 4, !tbaa !27
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %11
  %16 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10
  %17 = tail call i8* @ftp2ext(i32 %16) #10
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([42 x i8]* @.str1, i64 0, i64 0), i8* %17) #10
  br label %18

; <label>:18                                      ; preds = %11, %15, %8
  %19 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10
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
  ]

; <label>:20                                      ; preds = %18
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %22 = load i32* %21, align 4, !tbaa !32
  %23 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %24 = load i32* %23, align 4, !tbaa !37
  %25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %26 = load float* %25, align 4, !tbaa !38
  %27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %28 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %29 = load [3 x float]** %28, align 8, !tbaa !42
  %30 = tail call i32 @write_xtc(i32 %fnum, i32 %22, i32 %24, float %26, [3 x float]* %27, [3 x float]* %29, float %prec.0) #10
  br label %113

; <label>:31                                      ; preds = %18, %18
  %32 = load i32* @__frame, align 4, !tbaa !18
  %33 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %34 = load float* %33, align 4, !tbaa !38
  %35 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %36 = load i32* %35, align 4, !tbaa !37
  %37 = sitofp i32 %36 to float
  %38 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %39 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %40 = load i32* %39, align 4, !tbaa !32
  %41 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  %42 = load i32* %41, align 4, !tbaa !27
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

; <label>:44                                      ; preds = %31
  %45 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %46 = load [3 x float]** %45, align 8, !tbaa !42
  br label %47

; <label>:47                                      ; preds = %31, %44
  %48 = phi [3 x float]* [ %46, %44 ], [ null, %31 ]
  %49 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %50 = load i32* %49, align 4, !tbaa !28
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

; <label>:52                                      ; preds = %47
  %53 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %54 = load [3 x float]** %53, align 8, !tbaa !43
  br label %55

; <label>:55                                      ; preds = %47, %52
  %56 = phi [3 x float]* [ %54, %52 ], [ null, %47 ]
  %57 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22
  %58 = load i32* %57, align 4, !tbaa !29
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

; <label>:60                                      ; preds = %55
  %61 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23
  %62 = load [3 x float]** %61, align 8, !tbaa !44
  br label %63

; <label>:63                                      ; preds = %55, %60
  %64 = phi [3 x float]* [ %62, %60 ], [ null, %55 ]
  tail call void @fwrite_trn(i32 %fnum, i32 %32, float %34, float %37, [3 x float]* %38, i32 %40, [3 x float]* %48, [3 x float]* %56, [3 x float]* %64) #10
  br label %113

; <label>:65                                      ; preds = %18, %18, %18, %18
  %66 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  %67 = load i32* %66, align 4, !tbaa !25
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

; <label>:69                                      ; preds = %65
  %70 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10
  %71 = tail call i8* @ftp2ext(i32 %70) #10
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([43 x i8]* @.str6, i64 0, i64 0), i8* %71) #10
  br label %72

; <label>:72                                      ; preds = %65, %69
  %73 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %74 = load float* %73, align 4, !tbaa !38
  %75 = fpext float %74 to double
  %76 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 4096, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), double %75) #10
  %77 = call i32 @gmx_fio_getftp(i32 %fnum) #10
  %78 = icmp eq i32 %77, 13
  %79 = call %struct.__sFILE* @gmx_fio_getfp(i32 %fnum) #10
  %80 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  %81 = load %struct.t_atoms** %80, align 8, !tbaa !40
  br i1 %78, label %82, label %95

; <label>:82                                      ; preds = %72
  %83 = call i32 @prec2ndec(float %prec.0) #13
  %84 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %85 = load [3 x float]** %84, align 8, !tbaa !42
  %86 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %87 = load i32* %86, align 4, !tbaa !28
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

; <label>:89                                      ; preds = %82
  %90 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %91 = load [3 x float]** %90, align 8, !tbaa !43
  br label %92

; <label>:92                                      ; preds = %82, %89
  %93 = phi [3 x float]* [ %91, %89 ], [ null, %82 ]
  %94 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  call void @write_hconf_p(%struct.__sFILE* %79, i8* %1, %struct.t_atoms* %81, i32 %83, [3 x float]* %85, [3 x float]* %93, [3 x float]* %94) #10
  br label %113

; <label>:95                                      ; preds = %72
  %96 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %97 = load [3 x float]** %96, align 8, !tbaa !42
  %98 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %99 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %100 = load i32* %99, align 4, !tbaa !37
  call void @write_pdbfile(%struct.__sFILE* %79, i8* %1, %struct.t_atoms* %81, [3 x float]* %97, [3 x float]* %98, i8 signext 0, i32 %100) #10
  br label %113

; <label>:101                                     ; preds = %18
  %102 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %fnum) #10
  %103 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %104 = load i32* %103, align 4, !tbaa !32
  %105 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %106 = load [3 x float]** %105, align 8, !tbaa !42
  %107 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  tail call void @write_gms(%struct.__sFILE* %102, i32 %104, [3 x float]* %106, [3 x float]* %107) #10
  br label %113

; <label>:108                                     ; preds = %18
  %109 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %fnum) #10
  tail call void @write_g96_conf(%struct.__sFILE* %109, %struct.t_trxframe* %fr, i32 -1, i32* null) #10
  br label %113

; <label>:110                                     ; preds = %18
  %111 = tail call i32 @gmx_fio_getftp(i32 %fnum) #10
  %112 = tail call i8* @ftp2ext(i32 %111) #10
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([39 x i8]* @.str9, i64 0, i64 0), i8* %112) #10
  br label %113

; <label>:113                                     ; preds = %92, %95, %110, %108, %101, %63, %20
  call void @llvm.lifetime.end(i64 4096, i8* %1) #7
  ret i32 0
}

; Function Attrs: optsize
declare void @write_hconf_p(%struct.__sFILE*, i8*, %struct.t_atoms*, i32, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @write_pdbfile(%struct.__sFILE*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i8 signext, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @write_trx(i32 %fnum, i32 %nind, i32* %ind, %struct.t_atoms* %atoms, i32 %step, float %time, [3 x float]* nocapture readonly %box, [3 x float]* %x, [3 x float]* %v) #5 {
  %fr = alloca %struct.t_trxframe, align 8
  %1 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %1) #7
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #13
  %2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  store i32 1, i32* %2, align 8, !tbaa !22
  %3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  store i32 %step, i32* %3, align 4, !tbaa !37
  %4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  store i32 1, i32* %4, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float %time, float* %5, align 4, !tbaa !38
  %6 = icmp ne %struct.t_atoms* %atoms, null
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  store i32 %7, i32* %8, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 15
  store %struct.t_atoms* %atoms, %struct.t_atoms** %9, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 1, i32* %10, align 8, !tbaa !27
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  store [3 x float]* %x, [3 x float]** %11, align 8, !tbaa !42
  %12 = icmp ne [3 x float]* %v, null
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  store i32 %13, i32* %14, align 8, !tbaa !28
  %15 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* %v, [3 x float]** %15, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 1, i32* %16, align 8, !tbaa !30
  %17 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %18 = bitcast [3 x float]* %box to <4 x i32>*
  %19 = load <4 x i32>* %18, align 4, !tbaa !14
  %20 = bitcast [3 x float]* %17 to <4 x i32>*
  store <4 x i32> %19, <4 x i32>* %20, align 4, !tbaa !14
  %21 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %22 = bitcast float* %21 to i32*
  %23 = load i32* %22, align 4, !tbaa !14
  %24 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  %25 = bitcast float* %24 to i32*
  store i32 %23, i32* %25, align 4, !tbaa !14
  %26 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 2
  %28 = bitcast float* %26 to <4 x i32>*
  %29 = load <4 x i32>* %28, align 4, !tbaa !14
  %30 = bitcast float* %27 to <4 x i32>*
  store <4 x i32> %29, <4 x i32>* %30, align 4, !tbaa !14
  %31 = call i32 @write_trxframe_indexed(i32 %fnum, %struct.t_trxframe* %fr, i32 %nind, i32* %ind) #13
  call void @llvm.lifetime.end(i64 176, i8* %1) #7
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @close_trx(i32 %status) #5 {
  tail call void @gmx_fio_close(i32 %status) #10
  ret void
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @open_trx(i8* %outfile, i8* %filemode) #5 {
  %1 = load i8* %filemode, align 1, !tbaa !13
  switch i8 %1, label %2 [
    i8 119, label %3
    i8 97, label %3
  ]

; <label>:2                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([32 x i8]* @.str10, i64 0, i64 0)) #10
  br label %3

; <label>:3                                       ; preds = %0, %0, %2
  %4 = tail call i32 @gmx_fio_open(i8* %outfile, i8* %filemode) #10
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_next_frame(i32 %status, %struct.t_trxframe* %fr) #5 {
  %sh.i = alloca %struct.t_trnheader, align 4
  %bOK.i = alloca i32, align 4
  %bOK = alloca i32, align 4
  %1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %2 = load float* %1, align 4, !tbaa !38
  %3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 1
  %4 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  %5 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  %7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 12
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  %9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22
  %13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  %14 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 4
  %15 = bitcast float* %14 to i32*
  %16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 5
  %17 = bitcast float* %16 to i32*
  %18 = bitcast float* %1 to i32*
  %19 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0
  %20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 3
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %22 = bitcast i32* %bOK.i to i8*
  %23 = bitcast %struct.t_trnheader* %sh.i to i8*
  %24 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 10
  %25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %26 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 11
  %27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %28 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 13
  %29 = bitcast float* %28 to i32*
  %30 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 14
  %31 = bitcast float* %30 to i32*
  %32 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 13
  %33 = bitcast float* %32 to i32*
  %34 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 2
  %.phi.trans.insert.i = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 23
  %35 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %36 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %37 = bitcast [3 x float]** %.phi.trans.insert.i to i8**
  %38 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 9
  %39 = bitcast [3 x float]** %36 to i8**
  %40 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 8
  %41 = bitcast [3 x float]** %35 to i8**
  %42 = getelementptr inbounds %struct.t_trnheader* %sh.i, i64 0, i32 7
  %43 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17
  %44 = bitcast float %2 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.thread..critedge2_crit_edge, %0
  %45 = phi i32 [ %44, %0 ], [ %.pre, %.thread..critedge2_crit_edge ]
  %bRet.0 = phi i32 [ 0, %0 ], [ %bRet.1, %.thread..critedge2_crit_edge ]
  store i32 0, i32* %3, align 4, !tbaa !19
  store i32 0, i32* %4, align 4, !tbaa !21
  store i32 0, i32* %5, align 4, !tbaa !22
  store i32 0, i32* %6, align 4, !tbaa !23
  store i32 0, i32* %7, align 4, !tbaa !24
  store i32 0, i32* %8, align 4, !tbaa !25
  store i32 0, i32* %9, align 4, !tbaa !26
  store i32 0, i32* %10, align 4, !tbaa !27
  store i32 0, i32* %11, align 4, !tbaa !28
  store i32 0, i32* %12, align 4, !tbaa !29
  store i32 0, i32* %13, align 4, !tbaa !30
  %46 = load i32* %15, align 4, !tbaa !34
  store i32 %46, i32* %17, align 4, !tbaa !35
  store i32 %45, i32* %15, align 4, !tbaa !34
  %47 = call i32 @gmx_fio_getftp(i32 %status) #10
  switch i32 %47, label %129 [
    i32 5, label %48
    i32 4, label %48
    i32 39, label %48
    i32 14, label %108
    i32 7, label %114
    i32 6, label %119
    i32 15, label %123
    i32 13, label %126
  ]

; <label>:48                                      ; preds = %.critedge2, %.critedge2, %.critedge2
  call void @llvm.lifetime.start(i64 4, i8* %22)
  call void @llvm.lifetime.start(i64 60, i8* %23) #7
  %49 = call i32 @fread_trnheader(i32 %status, %struct.t_trnheader* %sh.i, i32* %bOK.i) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %104, label %51

; <label>:51                                      ; preds = %48
  %52 = load i32* %24, align 4, !tbaa !45
  store i32 %52, i32* %25, align 4, !tbaa !32
  store i32 1, i32* %5, align 4, !tbaa !22
  %53 = load i32* %26, align 4, !tbaa !47
  store i32 %53, i32* %27, align 4, !tbaa !37
  store i32 1, i32* %6, align 4, !tbaa !23
  %54 = load i32* %29, align 4, !tbaa !48
  store i32 %54, i32* %18, align 4, !tbaa !38
  store i32 1, i32* %7, align 4, !tbaa !24
  %55 = load i32* %31, align 4, !tbaa !49
  store i32 %55, i32* %33, align 4, !tbaa !39
  %56 = load i32* %34, align 4, !tbaa !50
  %57 = icmp sgt i32 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %13, align 4, !tbaa !30
  %59 = load i32* %19, align 4, !tbaa !31
  %60 = and i32 %59, 3
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %71, label %62

; <label>:62                                      ; preds = %51
  %63 = load [3 x float]** %35, align 8, !tbaa !42
  %64 = icmp eq [3 x float]* %63, null
  br i1 %64, label %65, label %67

; <label>:65                                      ; preds = %62
  %66 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 360, i32 %52, i32 12) #10
  store i8* %66, i8** %41, align 8, !tbaa !42
  %.pre.pre.i = load i32* %19, align 4, !tbaa !31
  br label %67

; <label>:67                                      ; preds = %65, %62
  %.pre.i = phi i32 [ %.pre.pre.i, %65 ], [ %59, %62 ]
  %68 = load i32* %42, align 4, !tbaa !51
  %69 = icmp sgt i32 %68, 0
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %10, align 4, !tbaa !27
  br label %71

; <label>:71                                      ; preds = %67, %51
  %72 = phi i32 [ %59, %51 ], [ %.pre.i, %67 ]
  %73 = and i32 %72, 12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %85, label %75

; <label>:75                                      ; preds = %71
  %76 = load [3 x float]** %36, align 8, !tbaa !43
  %77 = icmp eq [3 x float]* %76, null
  br i1 %77, label %78, label %81

; <label>:78                                      ; preds = %75
  %79 = load i32* %24, align 4, !tbaa !45
  %80 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 365, i32 %79, i32 12) #10
  store i8* %80, i8** %39, align 8, !tbaa !43
  %.pre1.pre.i = load i32* %19, align 4, !tbaa !31
  br label %81

; <label>:81                                      ; preds = %78, %75
  %.pre1.i = phi i32 [ %.pre1.pre.i, %78 ], [ %72, %75 ]
  %82 = load i32* %40, align 4, !tbaa !52
  %83 = icmp sgt i32 %82, 0
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %11, align 4, !tbaa !28
  br label %85

; <label>:85                                      ; preds = %81, %71
  %86 = phi i32 [ %72, %71 ], [ %.pre1.i, %81 ]
  %87 = and i32 %86, 48
  %88 = icmp eq i32 %87, 0
  %.pre2.i = load [3 x float]** %.phi.trans.insert.i, align 8, !tbaa !44
  br i1 %88, label %._crit_edge.i, label %89

; <label>:89                                      ; preds = %85
  %90 = icmp eq [3 x float]* %.pre2.i, null
  br i1 %90, label %91, label %95

; <label>:91                                      ; preds = %89
  %92 = load i32* %24, align 4, !tbaa !45
  %93 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 370, i32 %92, i32 12) #10
  store i8* %93, i8** %37, align 8, !tbaa !44
  %94 = bitcast i8* %93 to [3 x float]*
  br label %95

; <label>:95                                      ; preds = %91, %89
  %96 = phi [3 x float]* [ %94, %91 ], [ %.pre2.i, %89 ]
  %97 = load i32* %38, align 4, !tbaa !53
  store i32 %97, i32* %12, align 4, !tbaa !29
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %95, %85
  %98 = phi [3 x float]* [ %96, %95 ], [ %.pre2.i, %85 ]
  %99 = load [3 x float]** %35, align 8, !tbaa !42
  %100 = load [3 x float]** %36, align 8, !tbaa !43
  %101 = call i32 @fread_htrn(i32 %status, %struct.t_trnheader* %sh.i, [3 x float]* %21, [3 x float]* %99, [3 x float]* %100, [3 x float]* %98) #10
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %gmx_next_frame.exit

; <label>:103                                     ; preds = %._crit_edge.i
  store i32 2, i32* %3, align 4, !tbaa !19
  br label %gmx_next_frame.exit

; <label>:104                                     ; preds = %48
  %105 = load i32* %bOK.i, align 4, !tbaa !18
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %gmx_next_frame.exit

; <label>:107                                     ; preds = %104
  store i32 1, i32* %3, align 4, !tbaa !19
  br label %gmx_next_frame.exit

gmx_next_frame.exit:                              ; preds = %._crit_edge.i, %103, %104, %107
  %bRet.0.i = phi i32 [ 0, %103 ], [ 0, %104 ], [ 0, %107 ], [ 1, %._crit_edge.i ]
  call void @llvm.lifetime.end(i64 60, i8* %23) #7
  call void @llvm.lifetime.end(i64 4, i8* %22)
  br label %132

; <label>:108                                     ; preds = %.critedge2
  %109 = call %struct.__sFILE* @gmx_fio_getfp(i32 %status) #10
  %110 = call i32 @read_g96_conf(%struct.__sFILE* %109, i8* null, %struct.t_trxframe* %fr) #10
  %111 = load i32* %25, align 4, !tbaa !32
  %112 = icmp sgt i32 %111, 0
  %113 = zext i1 %112 to i32
  br label %132

; <label>:114                                     ; preds = %.critedge2
  %115 = call %struct.__sFILE* @gmx_fio_getfp(i32 %status) #10
  %116 = load i32* %25, align 4, !tbaa !32
  %117 = load [3 x float]** %35, align 8, !tbaa !42
  %118 = call fastcc i32 @xyz_next_x(%struct.__sFILE* %115, float* %1, i32 %116, [3 x float]* %117, [3 x float]* %21) #13
  store i32 %118, i32* %6, align 4, !tbaa !23
  store i32 %118, i32* %10, align 4, !tbaa !27
  store i32 %118, i32* %13, align 4, !tbaa !30
  br label %132

; <label>:119                                     ; preds = %.critedge2
  %120 = load i32* %25, align 4, !tbaa !32
  %121 = load [3 x float]** %35, align 8, !tbaa !42
  %122 = call i32 @read_next_xtc(i32 %status, i32 %120, i32* %27, float* %1, [3 x float]* %21, [3 x float]* %121, float* %43, i32* %bOK) #10
  store i32 %122, i32* %9, align 4, !tbaa !26
  store i32 %122, i32* %5, align 4, !tbaa !22
  store i32 %122, i32* %6, align 4, !tbaa !23
  store i32 %122, i32* %10, align 4, !tbaa !27
  store i32 %122, i32* %13, align 4, !tbaa !30
  br label %132

; <label>:123                                     ; preds = %.critedge2
  %124 = call %struct.__sFILE* @gmx_fio_getfp(i32 %status) #10
  %125 = call fastcc i32 @pdb_next_x(%struct.__sFILE* %124, %struct.t_trxframe* %fr) #13
  br label %132

; <label>:126                                     ; preds = %.critedge2
  %127 = call %struct.__sFILE* @gmx_fio_getfp(i32 %status) #10
  %128 = call i32 @gro_next_x_or_v(%struct.__sFILE* %127, %struct.t_trxframe* %fr) #10
  br label %132

; <label>:129                                     ; preds = %.critedge2
  %130 = call i32 @gmx_fio_getftp(i32 %status) #10
  %131 = call i8* @ftp2ext(i32 %130) #10
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0), i8* %131, i32 %status) #10
  br label %132

; <label>:132                                     ; preds = %129, %126, %123, %119, %114, %108, %gmx_next_frame.exit
  %bRet.1 = phi i32 [ %bRet.0, %129 ], [ %128, %126 ], [ %125, %123 ], [ %122, %119 ], [ %118, %114 ], [ %113, %108 ], [ %bRet.0.i, %gmx_next_frame.exit ]
  %133 = icmp eq i32 %bRet.1, 0
  br i1 %133, label %.thread9.thread, label %134

; <label>:134                                     ; preds = %132
  %135 = load i32* %19, align 4, !tbaa !31
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

; <label>:138                                     ; preds = %134
  %139 = load i32* %10, align 4, !tbaa !27
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %.thread, label %141

; <label>:141                                     ; preds = %138, %134
  %142 = and i32 %135, 8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

; <label>:144                                     ; preds = %141
  %145 = load i32* %11, align 4, !tbaa !28
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %.thread, label %147

; <label>:147                                     ; preds = %144, %141
  %148 = and i32 %135, 32
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %.thread7, label %150

; <label>:150                                     ; preds = %147
  %151 = load i32* %12, align 4, !tbaa !29
  %152 = icmp eq i32 %151, 0
  %153 = zext i1 %152 to i32
  br i1 %152, label %.thread, label %.thread7

.thread7:                                         ; preds = %147, %150
  %154 = phi i32 [ %153, %150 ], [ 0, %147 ]
  %155 = load float* %1, align 4, !tbaa !38
  %156 = load float* %20, align 4, !tbaa !33
  %157 = load float* %14, align 4, !tbaa !34
  %158 = load float* %16, align 4, !tbaa !35
  %159 = call i32 @check_times2(float %155, float %156, float %157, float %158) #10
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

; <label>:161                                     ; preds = %.thread7
  %162 = load i32* %19, align 4, !tbaa !31
  %163 = and i32 %162, 64
  %164 = icmp ne i32 %163, 0
  %165 = icmp slt i32 %159, 0
  %or.cond = and i1 %165, %164
  br i1 %or.cond, label %166, label %171

; <label>:166                                     ; preds = %161, %.thread7
  %167 = load float* %1, align 4, !tbaa !38
  %168 = load float* %20, align 4, !tbaa !33
  %169 = load float* %14, align 4, !tbaa !34
  %170 = load float* %16, align 4, !tbaa !35
  call fastcc void @printcount2(float %167, float %168, float %169, float %170) #13
  call void @init_pbc([3 x float]* %21) #10
  br label %.thread

; <label>:171                                     ; preds = %161
  %172 = icmp sgt i32 %159, 0
  br i1 %172, label %.thread9.thread, label %173

; <label>:173                                     ; preds = %171
  %174 = load float* %1, align 4, !tbaa !38
  %175 = load float* %20, align 4, !tbaa !33
  %176 = load float* %14, align 4, !tbaa !34
  %177 = load float* %16, align 4, !tbaa !35
  call fastcc void @printcount2(float %174, float %175, float %176, float %177) #13
  br label %.thread

.thread:                                          ; preds = %138, %144, %166, %173, %150
  %bMissingData.1 = phi i32 [ %153, %150 ], [ %154, %166 ], [ %154, %173 ], [ 1, %144 ], [ 1, %138 ]
  %bSkip.1 = phi i32 [ 0, %150 ], [ 0, %166 ], [ 1, %173 ], [ 0, %144 ], [ 0, %138 ]
  %178 = or i32 %bSkip.1, %bMissingData.1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %printincomp.exit, label %.thread..critedge2_crit_edge

.thread..critedge2_crit_edge:                     ; preds = %.thread
  %.pre = load i32* %18, align 4, !tbaa !38
  br label %.critedge2

.thread9.thread:                                  ; preds = %132, %171
  call fastcc void @printlast(float %2) #13
  %180 = load i32* %3, align 4, !tbaa !19
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %printincomp.exit, label %182

; <label>:182                                     ; preds = %.thread9.thread
  %183 = and i32 %180, 1
  %184 = icmp eq i32 %183, 0
  %185 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !54
  %186 = load i32* @__frame, align 4, !tbaa !18
  %187 = add nsw i32 %186, 1
  %188 = load float* %1, align 4, !tbaa !38
  %189 = fpext float %188 to double
  br i1 %184, label %192, label %190

; <label>:190                                     ; preds = %182
  %191 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %185, i8* getelementptr inbounds ([43 x i8]* @.str29, i64 0, i64 0), i32 %187, double %189) #10
  br label %printincomp.exit

; <label>:192                                     ; preds = %182
  %193 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %185, i8* getelementptr inbounds ([42 x i8]* @.str30, i64 0, i64 0), i32 %187, double %189) #10
  br label %printincomp.exit

printincomp.exit:                                 ; preds = %.thread, %192, %190, %.thread9.thread
  %bRet.21214 = phi i32 [ 0, %.thread9.thread ], [ 0, %190 ], [ 0, %192 ], [ %bRet.1, %.thread ]
  ret i32 %bRet.21214
}

; Function Attrs: optsize
declare i32 @read_g96_conf(%struct.__sFILE*, i8*, %struct.t_trxframe*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @xyz_next_x(%struct.__sFILE* nocapture %status, float* nocapture %t, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* nocapture %box) #5 {
  %1 = load float* %t, align 4, !tbaa !14
  %2 = load float* @tbegin, align 4, !tbaa !14
  %3 = fcmp ult float %2, 0.000000e+00
  br i1 %3, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %10
  %4 = phi float [ %17, %10 ], [ %2, %0 ]
  %5 = phi float [ %16, %10 ], [ %1, %0 ]
  %6 = fcmp olt float %5, %4
  br i1 %6, label %7, label %.critedge

; <label>:7                                       ; preds = %.lr.ph
  %8 = tail call fastcc i32 @do_read_xyz(%struct.__sFILE* %status, i32 %natoms, [3 x float]* %x, [3 x float]* %box) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %.loopexit, label %10

; <label>:10                                      ; preds = %7
  %11 = load float* %t, align 4, !tbaa !14
  tail call fastcc void @printcount2(float %11, float %11, float %11, float %11) #10
  %12 = load double* @DT, align 8, !tbaa !16
  %13 = load float* %t, align 4, !tbaa !14
  %14 = fpext float %13 to double
  %15 = fadd double %12, %14
  %16 = fptrunc double %15 to float
  store float %16, float* %t, align 4, !tbaa !14
  %17 = load float* @tbegin, align 4, !tbaa !14
  %18 = fcmp ult float %17, 0.000000e+00
  br i1 %18, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %10, %0
  %19 = phi float [ %1, %0 ], [ %5, %.lr.ph ], [ %16, %10 ]
  %20 = load float* @tend, align 4, !tbaa !14
  %21 = fcmp ult float %20, 0.000000e+00
  br i1 %21, label %25, label %22

; <label>:22                                      ; preds = %.critedge
  %23 = fcmp olt float %19, %20
  %24 = fcmp olt float %20, 0.000000e+00
  %or.cond = or i1 %24, %23
  br i1 %or.cond, label %26, label %37

; <label>:25                                      ; preds = %.critedge
  %.old1 = fcmp olt float %20, 0.000000e+00
  br i1 %.old1, label %26, label %37

; <label>:26                                      ; preds = %25, %22
  %27 = tail call fastcc i32 @do_read_xyz(%struct.__sFILE* %status, i32 %natoms, [3 x float]* %x, [3 x float]* %box) #13
  %28 = icmp eq i32 %27, 0
  %29 = load float* %t, align 4, !tbaa !14
  br i1 %28, label %30, label %31

; <label>:30                                      ; preds = %26
  tail call fastcc void @printlast(float %29) #13
  br label %.loopexit

; <label>:31                                      ; preds = %26
  tail call fastcc void @printcount2(float %29, float %29, float %29, float %29) #10
  %32 = load double* @DT, align 8, !tbaa !16
  %33 = load float* %t, align 4, !tbaa !14
  %34 = fpext float %33 to double
  %35 = fadd double %32, %34
  %36 = fptrunc double %35 to float
  store float %36, float* %t, align 4, !tbaa !14
  br label %.loopexit

; <label>:37                                      ; preds = %22, %25
  tail call fastcc void @printlast(float %19) #13
  br label %.loopexit

.loopexit:                                        ; preds = %7, %37, %31, %30
  %.0 = phi i32 [ 1, %31 ], [ 0, %30 ], [ 0, %37 ], [ 0, %7 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @read_next_xtc(i32, i32, i32*, float*, [3 x float]*, [3 x float]*, float*, i32*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @pdb_next_x(%struct.__sFILE* %status, %struct.t_trxframe* %fr) #5 {
  %atoms = alloca %struct.t_atoms, align 8
  %model_nr = alloca i32, align 4
  %title = alloca [4096 x i8], align 16
  %dbl = alloca double, align 8
  %1 = bitcast %struct.t_atoms* %atoms to i8*
  call void @llvm.lifetime.start(i64 1280, i8* %1) #7
  %2 = getelementptr inbounds [4096 x i8]* %title, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %2) #7
  %3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %4 = load i32* %3, align 4, !tbaa !32
  %5 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  store i32 %4, i32* %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  store %struct.t_atom* null, %struct.t_atom** %6, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11
  store %struct.t_pdbinfo* null, %struct.t_pdbinfo** %7, align 8, !tbaa !59
  store i32 -12345, i32* %model_nr, align 4, !tbaa !18
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %9 = load [3 x float]** %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25
  %11 = getelementptr inbounds [3 x [3 x float]]* %10, i64 0, i64 0
  %12 = call i32 @read_pdbfile(%struct.__sFILE* %status, i8* %2, i32* %model_nr, %struct.t_atoms* %atoms, [3 x float]* %9, [3 x float]* %11, i32 1) #10
  %13 = load i32* @__frame, align 4, !tbaa !18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

; <label>:15                                      ; preds = %0
  %16 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !54
  %17 = load i32* %3, align 4, !tbaa !32
  %18 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([17 x i8]* @.str21, i64 0, i64 0), i8* %2, i32 %17) #10
  br label %19

; <label>:19                                      ; preds = %15, %0
  %20 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  store i32 1, i32* %20, align 4, !tbaa !26
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17
  store float 1.000000e+04, float* %21, align 4, !tbaa !41
  %22 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 1, i32* %22, align 4, !tbaa !27
  %23 = getelementptr inbounds [3 x [3 x float]]* %10, i64 0, i64 0, i64 0
  %24 = load float* %23, align 4, !tbaa !14
  %fabsf = call float @fabsf(float %24) #6
  %25 = fpext float %fabsf to double
  %26 = fcmp olt double %25, 1.200000e-38
  %27 = zext i1 %26 to i32
  %28 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 %27, i32* %28, align 4, !tbaa !30
  %29 = load i32* %model_nr, align 4, !tbaa !18
  %30 = icmp eq i32 %29, -12345
  br i1 %30, label %34, label %31

; <label>:31                                      ; preds = %19
  %32 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  store i32 1, i32* %32, align 4, !tbaa !22
  %33 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  store i32 %29, i32* %33, align 4, !tbaa !37
  br label %34

; <label>:34                                      ; preds = %19, %31
  %35 = call i8* @strstr(i8* %2, i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0)) #10
  %36 = icmp eq i8* %35, null
  %37 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  br i1 %36, label %44, label %38

; <label>:38                                      ; preds = %34
  store i32 1, i32* %37, align 4, !tbaa !23
  %39 = getelementptr inbounds i8* %35, i64 4
  %40 = call i32 (i8*, i8*, ...)* @sscanf(i8* %39, i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0), double* %dbl) #10
  %41 = load double* %dbl, align 8, !tbaa !16
  %42 = fptrunc double %41 to float
  %43 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float %42, float* %43, align 4, !tbaa !38
  br label %57

; <label>:44                                      ; preds = %34
  store i32 0, i32* %37, align 4, !tbaa !23
  %45 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  %46 = load i32* %45, align 4, !tbaa !22
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

; <label>:48                                      ; preds = %44
  %49 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %50 = load i32* %49, align 4, !tbaa !37
  %51 = sitofp i32 %50 to float
  %52 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float %51, float* %52, align 4, !tbaa !38
  br label %57

; <label>:53                                      ; preds = %44
  %54 = load i32* @__frame, align 4, !tbaa !18
  %55 = sitofp i32 %54 to float
  %56 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  store float %55, float* %56, align 4, !tbaa !38
  br label %57

; <label>:57                                      ; preds = %48, %53, %38
  %58 = icmp eq i32 %12, 0
  br i1 %58, label %64, label %59

; <label>:59                                      ; preds = %57
  %60 = load i32* %3, align 4, !tbaa !32
  %61 = icmp eq i32 %12, %60
  br i1 %61, label %64, label %62

; <label>:62                                      ; preds = %59
  %63 = load i32* @__frame, align 4, !tbaa !18
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([52 x i8]* @.str23, i64 0, i64 0), i32 %63, i32 %12, i32 %60) #10
  br label %64

; <label>:64                                      ; preds = %62, %59, %57
  %.0 = phi i32 [ 0, %57 ], [ 1, %59 ], [ 1, %62 ]
  call void @llvm.lifetime.end(i64 4096, i8* %2) #7
  call void @llvm.lifetime.end(i64 1280, i8* %1) #7
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @gro_next_x_or_v(%struct.__sFILE*, %struct.t_trxframe*) #1

; Function Attrs: optsize
declare i32 @check_times2(float, float, float, float) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @printcount2(float %t, float %t0, float %tpf, float %tppf) #5 {
  %1 = load i32* @__frame, align 4, !tbaa !18
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @__frame, align 4, !tbaa !18
  %3 = srem i32 %2, 10
  %4 = icmp eq i32 %3, 0
  %5 = icmp slt i32 %2, 10
  %or.cond = or i1 %4, %5
  br i1 %or.cond, label %6, label %15

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @check_times2(float %t, float %t0, float %tpf, float %tppf) #10
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i8* getelementptr inbounds ([15 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str25, i64 0, i64 0)
  %10 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !54
  %11 = load i32* @__frame, align 4, !tbaa !18
  %12 = tail call float @convert_time(float %t) #10
  %13 = fpext float %12 to double
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %10, i8* getelementptr inbounds ([25 x i8]* @.str26, i64 0, i64 0), i8* %9, i32 %11, double %13) #10
  br label %15

; <label>:15                                      ; preds = %0, %6
  ret void
}

; Function Attrs: optsize
declare void @init_pbc([3 x float]*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @printlast(float %t) #5 {
  %1 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !54
  %2 = load i32* @__frame, align 4, !tbaa !18
  %3 = tail call float @convert_time(float %t) #10
  %4 = fpext float %3 to double
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([25 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str27, i64 0, i64 0), i32 %2, double %4) #10
  %6 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !54
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %6)
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_first_frame(i32* nocapture %status, i8* %fn, %struct.t_trxframe* %fr, i32 %flags) #5 {
  %i.i.i = alloca i32, align 4
  %bOK = alloca i32, align 4
  tail call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #13
  %1 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0
  store i32 %flags, i32* %1, align 4, !tbaa !31
  store i32 -1, i32* @__frame, align 4, !tbaa !18
  %2 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #10
  store i32 %2, i32* %status, align 4, !tbaa !18
  %3 = tail call i32 @gmx_fio_getftp(i32 %2) #10
  switch i32 %3, label %.critedge [
    i32 5, label %.critedge3
    i32 4, label %.critedge3
    i32 39, label %.critedge3
    i32 14, label %4
    i32 7, label %36
    i32 6, label %104
    i32 15, label %120
    i32 13, label %138
  ]

; <label>:4                                       ; preds = %0
  %5 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %2) #10
  %6 = tail call i32 @read_g96_conf(%struct.__sFILE* %5, i8* %fn, %struct.t_trxframe* %fr) #10
  tail call void @gmx_fio_close(i32 %2) #10
  %7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 1
  store i32 0, i32* %7, align 4, !tbaa !19
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 6
  store i32 0, i32* %8, align 4, !tbaa !21
  %9 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  store i32 0, i32* %9, align 4, !tbaa !22
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  store i32 0, i32* %10, align 4, !tbaa !23
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 12
  store i32 0, i32* %11, align 4, !tbaa !24
  %12 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 14
  store i32 0, i32* %12, align 4, !tbaa !25
  %13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  store i32 0, i32* %13, align 4, !tbaa !26
  %14 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 0, i32* %14, align 4, !tbaa !27
  %15 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  store i32 0, i32* %15, align 4, !tbaa !28
  %16 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 22
  store i32 0, i32* %16, align 4, !tbaa !29
  %17 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 0, i32* %17, align 4, !tbaa !30
  %18 = and i32 %flags, 3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

; <label>:20                                      ; preds = %4
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %22 = load i32* %21, align 4, !tbaa !32
  %23 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 692, i32 %22, i32 12) #10
  %24 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %25 = bitcast [3 x float]** %24 to i8**
  store i8* %23, i8** %25, align 8, !tbaa !42
  br label %26

; <label>:26                                      ; preds = %4, %20
  %27 = and i32 %flags, 12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %.critedge2, label %29

; <label>:29                                      ; preds = %26
  %30 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %31 = load i32* %30, align 4, !tbaa !32
  %32 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 694, i32 %31, i32 12) #10
  %33 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %34 = bitcast [3 x float]** %33 to i8**
  store i8* %32, i8** %34, align 8, !tbaa !43
  br label %.critedge2

.critedge2:                                       ; preds = %26, %29
  %35 = tail call i32 @gmx_fio_open(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #10
  store i32 %35, i32* %status, align 4, !tbaa !18
  br label %.critedge3

; <label>:36                                      ; preds = %0
  %37 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %2) #10
  %38 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %39 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  store i32 -1, i32* @__frame, align 4, !tbaa !18
  %40 = bitcast [3 x float]* %39 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %40, i8 0, i64 36, i32 4, i1 false) #7
  %41 = bitcast i32* %i.i.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #7
  %puts.i.i = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8]* @str, i64 0, i64 0)) #7
  %puts2.i.i = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8]* @str51, i64 0, i64 0)) #7
  %puts3.i.i = tail call i32 @puts(i8* getelementptr inbounds ([28 x i8]* @str52, i64 0, i64 0)) #7
  %puts4.i.i = tail call i32 @puts(i8* getelementptr inbounds ([12 x i8]* @str53, i64 0, i64 0)) #7
  %puts5.i.i = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8]* @str54, i64 0, i64 0)) #7
  %puts6.i.i = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str55, i64 0, i64 0)) #7
  %puts7.i.i = tail call i32 @puts(i8* getelementptr inbounds ([39 x i8]* @str56, i64 0, i64 0)) #7
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i, %36
  %42 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str39, i64 0, i64 0)) #10
  %43 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !54
  %44 = call i32 @fflush(%struct.__sFILE* %43) #10
  %45 = call i32 (i8*, ...)* @scanf(i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i32* %i.i.i) #10
  %46 = load i32* %i.i.i, align 4, !tbaa !18
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %i.i.i, align 4, !tbaa !18
  %48 = icmp slt i32 %46, 1
  %49 = icmp sgt i32 %47, 3
  %or.cond.i.i = or i1 %48, %49
  br i1 %or.cond.i.i, label %.critedge.i.i, label %50

; <label>:50                                      ; preds = %.critedge.i.i
  %51 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %putchar.i.i = call i32 @putchar(i32 10) #7
  %52 = load i32* %i.i.i, align 4, !tbaa !18
  store i32 %52, i32* @eFF, align 4, !tbaa !13
  call void @llvm.memset.p0i8.i64(i8* bitcast ([3 x double]* @BOX to i8*), i8 0, i64 24, i32 16, i1 false) #7
  %53 = and i32 %52, -3
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i32
  store i32 %55, i32* @bReadBox, align 4, !tbaa !18
  switch i32 %52, label %79 [
    i32 0, label %56
    i32 1, label %56
    i32 2, label %58
    i32 3, label %58
  ]

; <label>:56                                      ; preds = %50, %50
  %57 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %37, i8* getelementptr inbounds ([15 x i8]* @.str41, i64 0, i64 0), i32* @NATOMS, double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 0), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 1), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 2), double* @DT) #10
  br label %choose_ff.exit.i

; <label>:58                                      ; preds = %50, %50
  %puts8.i.i = call i32 @puts(i8* getelementptr inbounds ([20 x i8]* @str57, i64 0, i64 0)) #7
  %59 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str43, i64 0, i64 0)) #10
  %60 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !54
  %61 = call i32 @fflush(%struct.__sFILE* %60) #10
  %62 = call i32 (i8*, ...)* @scanf(i8* getelementptr inbounds ([3 x i8]* @.str40, i64 0, i64 0), i32* @NATOMS) #10
  %63 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str44, i64 0, i64 0)) #10
  %64 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !54
  %65 = call i32 @fflush(%struct.__sFILE* %64) #10
  %66 = call i32 (i8*, ...)* @scanf(i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0), double* @DT) #10
  %67 = load i32* @eFF, align 4, !tbaa !13
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %.preheader.i.i

; <label>:69                                      ; preds = %58
  %70 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([13 x i8]* @.str45, i64 0, i64 0)) #10
  %71 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !54
  %72 = call i32 @fflush(%struct.__sFILE* %71) #10
  %73 = call i32 (i8*, ...)* @scanf(i8* getelementptr inbounds ([10 x i8]* @.str46, i64 0, i64 0), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 0), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 1), double* getelementptr inbounds ([3 x double]* @BOX, i64 0, i64 2)) #10
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %69, %58, %.preheader.i.i
  %74 = call i32 @fgetc(%struct.__sFILE* %37) #10
  %putchar9.i.i = call i32 @putchar(i32 %74) #7
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %76, label %.preheader.i.i

; <label>:76                                      ; preds = %.preheader.i.i
  %putchar10.i.i = call i32 @putchar(i32 10) #7
  %77 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !54
  %78 = call i32 @fflush(%struct.__sFILE* %77) #10
  br label %choose_ff.exit.i

; <label>:79                                      ; preds = %50
  %puts11.i.i = call i32 @puts(i8* getelementptr inbounds ([13 x i8]* @str58, i64 0, i64 0)) #7
  br label %choose_ff.exit.i

choose_ff.exit.i:                                 ; preds = %79, %76, %56
  call void @llvm.lifetime.end(i64 4, i8* %41) #7
  br label %80

; <label>:80                                      ; preds = %80, %choose_ff.exit.i
  %indvars.iv.i = phi i64 [ 0, %choose_ff.exit.i ], [ %indvars.iv.next.i, %80 ]
  %81 = getelementptr inbounds [3 x double]* @BOX, i64 0, i64 %indvars.iv.i
  %82 = load double* %81, align 8, !tbaa !16
  %83 = fptrunc double %82 to float
  %84 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 %indvars.iv.i, i64 %indvars.iv.i
  store float %83, float* %84, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 3
  br i1 %exitcond.i, label %85, label %80

; <label>:85                                      ; preds = %80
  %86 = load i32* @NATOMS, align 4, !tbaa !18
  %87 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 514, i32 %86, i32 12) #10
  %88 = bitcast [3 x float]** %51 to i8**
  store i8* %87, i8** %88, align 8, !tbaa !54
  %89 = load double* @DT, align 8, !tbaa !16
  %90 = fptrunc double %89 to float
  store float %90, float* %38, align 4, !tbaa !14
  %91 = load i32* @NATOMS, align 4, !tbaa !18
  %92 = bitcast i8* %87 to [3 x float]*
  %93 = call fastcc i32 @xyz_next_x(%struct.__sFILE* %37, float* %38, i32 %91, [3 x float]* %92, [3 x float]* %39) #10
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %xyz_first_x.exit.thread, label %xyz_first_x.exit

xyz_first_x.exit.thread:                          ; preds = %85
  %95 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 0, i32* %95, align 4, !tbaa !32
  br label %145

xyz_first_x.exit:                                 ; preds = %85
  store float 0.000000e+00, float* %38, align 4, !tbaa !14
  call void @init_pbc([3 x float]* %39) #10
  %96 = load i32* @NATOMS, align 4, !tbaa !18
  %97 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 %96, i32* %97, align 4, !tbaa !32
  %98 = icmp eq i32 %96, 0
  br i1 %98, label %145, label %99

; <label>:99                                      ; preds = %xyz_first_x.exit
  %100 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  store i32 1, i32* %100, align 4, !tbaa !23
  %101 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 1, i32* %101, align 4, !tbaa !27
  %102 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 1, i32* %102, align 4, !tbaa !30
  %103 = load float* %38, align 4, !tbaa !38
  call fastcc void @printcount2(float %103, float %103, float %103, float %103) #10
  br label %145

; <label>:104                                     ; preds = %0
  %105 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %106 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 9
  %107 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %108 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %109 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %110 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 17
  %111 = call i32 @read_first_xtc(i32 %2, i32* %105, i32* %106, float* %107, [3 x float]* %108, [3 x float]** %109, float* %110, i32* %bOK) #10
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %.critedge1

; <label>:113                                     ; preds = %104
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([9 x i8]* @.str15, i64 0, i64 0)) #10
  br label %.critedge1

.critedge1:                                       ; preds = %113, %104
  %114 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 16
  store i32 1, i32* %114, align 4, !tbaa !26
  %115 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 8
  store i32 1, i32* %115, align 4, !tbaa !22
  %116 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 10
  store i32 1, i32* %116, align 4, !tbaa !23
  %117 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 18
  store i32 1, i32* %117, align 4, !tbaa !27
  %118 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 24
  store i32 1, i32* %118, align 4, !tbaa !30
  %119 = load float* %107, align 4, !tbaa !38
  call fastcc void @printcount2(float %119, float %119, float %119, float %119) #10
  br label %145

; <label>:120                                     ; preds = %0
  %121 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %2) #10
  store i32 -1, i32* @__frame, align 4, !tbaa !18
  %122 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !54
  %123 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str49, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %122) #7
  tail call void @frewind(%struct.__sFILE* %121) #10
  %124 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  tail call void @get_pdb_coordnum(%struct.__sFILE* %121, i32* %124) #10
  %125 = load i32* %124, align 4, !tbaa !32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %pdb_first_x.exit

; <label>:127                                     ; preds = %120
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str50, i64 0, i64 0)) #10
  br label %pdb_first_x.exit

pdb_first_x.exit:                                 ; preds = %120, %127
  tail call void @frewind(%struct.__sFILE* %121) #10
  %128 = load i32* %124, align 4, !tbaa !32
  %129 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 583, i32 %128, i32 12) #10
  %130 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 19
  %131 = bitcast [3 x float]** %130 to i8**
  store i8* %129, i8** %131, align 8, !tbaa !42
  %132 = tail call fastcc i32 @pdb_next_x(%struct.__sFILE* %121, %struct.t_trxframe* %fr) #10
  %133 = load i32* %124, align 4, !tbaa !32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %145, label %135

; <label>:135                                     ; preds = %pdb_first_x.exit
  %136 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %137 = load float* %136, align 4, !tbaa !38
  tail call fastcc void @printcount2(float %137, float %137, float %137, float %137) #10
  br label %145

; <label>:138                                     ; preds = %0
  %139 = tail call %struct.__sFILE* @gmx_fio_getfp(i32 %2) #10
  %140 = tail call i32 @gro_first_x_or_v(%struct.__sFILE* %139, %struct.t_trxframe* %fr) #10
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

; <label>:142                                     ; preds = %138
  %143 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %144 = load float* %143, align 4, !tbaa !38
  tail call fastcc void @printcount2(float %144, float %144, float %144, float %144) #10
  br label %145

.critedge:                                        ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([38 x i8]* @.str16, i64 0, i64 0), i8* %fn) #10
  br label %.critedge3

; <label>:145                                     ; preds = %xyz_first_x.exit.thread, %xyz_first_x.exit, %99, %pdb_first_x.exit, %135, %138, %142, %.critedge1
  %146 = load i32* %1, align 4, !tbaa !31
  %147 = and i32 %146, 64
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %157

; <label>:149                                     ; preds = %145
  %150 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %151 = load float* %150, align 4, !tbaa !38
  %152 = call i32 @check_times(float %151) #10
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %.critedge3, label %157

.critedge3:                                       ; preds = %0, %0, %0, %.critedge2, %.critedge, %149
  %154 = load i32* %status, align 4, !tbaa !18
  %155 = call i32 @read_next_frame(i32 %154, %struct.t_trxframe* %fr) #13
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %167, label %157

; <label>:157                                     ; preds = %.critedge3, %145, %149
  %158 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %159 = bitcast float* %158 to i32*
  %160 = load i32* %159, align 4, !tbaa !38
  %161 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 3
  %162 = bitcast float* %161 to i32*
  store i32 %160, i32* %162, align 4, !tbaa !33
  %163 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %164 = load i32* %163, align 4, !tbaa !32
  %165 = icmp sgt i32 %164, 0
  %166 = zext i1 %165 to i32
  br label %167

; <label>:167                                     ; preds = %.critedge3, %157
  %.0 = phi i32 [ %166, %157 ], [ 0, %.critedge3 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @read_first_xtc(i32, i32*, i32*, float*, [3 x float]*, [3 x float]**, float*, i32*) #1

; Function Attrs: optsize
declare i32 @gro_first_x_or_v(%struct.__sFILE*, %struct.t_trxframe*) #1

; Function Attrs: optsize
declare i32 @check_times(float) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_first_x(i32* nocapture %status, i8* %fn, float* nocapture %t, [3 x float]** nocapture %x, [3 x float]* nocapture %box) #5 {
  %fr = alloca %struct.t_trxframe, align 8
  %1 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %1) #7
  %2 = call i32 @read_first_frame(i32* %status, i8* %fn, %struct.t_trxframe* %fr, i32 2) #13
  %3 = load i32* %status, align 4, !tbaa !18
  %4 = load i32* @nxframe, align 4, !tbaa !18
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %0
  %.pre1 = load %struct.t_trxframe** @xframe, align 8, !tbaa !54
  br label %12

; <label>:6                                       ; preds = %0
  %7 = add nsw i32 %3, 1
  store i32 %7, i32* @nxframe, align 4, !tbaa !18
  %8 = load i8** bitcast (%struct.t_trxframe** @xframe to i8**), align 8, !tbaa !54
  %9 = mul i32 %7, 176
  %10 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 755, i8* %8, i32 %9) #10
  store i8* %10, i8** bitcast (%struct.t_trxframe** @xframe to i8**), align 8, !tbaa !54
  %.pre = load i32* %status, align 4, !tbaa !18
  %11 = bitcast i8* %10 to %struct.t_trxframe*
  br label %12

; <label>:12                                      ; preds = %._crit_edge, %6
  %13 = phi %struct.t_trxframe* [ %.pre1, %._crit_edge ], [ %11, %6 ]
  %14 = phi i32 [ %3, %._crit_edge ], [ %.pre, %6 ]
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.t_trxframe* %13, i64 %15
  %17 = bitcast %struct.t_trxframe* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %1, i64 176, i32 8, i1 false), !tbaa.struct !60
  %18 = load i32* %status, align 4, !tbaa !18
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.t_trxframe* %13, i64 %19, i32 11
  %21 = bitcast float* %20 to i32*
  %22 = load i32* %21, align 4, !tbaa !38
  %23 = bitcast float* %t to i32*
  store i32 %22, i32* %23, align 4, !tbaa !14
  %24 = getelementptr inbounds %struct.t_trxframe* %13, i64 %19, i32 19
  %25 = bitcast [3 x float]** %24 to i64*
  %26 = load i64* %25, align 8, !tbaa !42
  %27 = bitcast [3 x float]** %x to i64*
  store i64 %26, i64* %27, align 8, !tbaa !54
  %28 = load %struct.t_trxframe** @xframe, align 8, !tbaa !54
  %29 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 0
  %30 = bitcast [3 x float]* %29 to i32*
  %31 = load i32* %30, align 4, !tbaa !14
  %32 = bitcast [3 x float]* %box to i32*
  store i32 %31, i32* %32, align 4, !tbaa !14
  %33 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 0, i64 1
  %34 = bitcast float* %33 to i32*
  %35 = load i32* %34, align 4, !tbaa !14
  %36 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %37 = bitcast float* %36 to i32*
  store i32 %35, i32* %37, align 4, !tbaa !14
  %38 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 0, i64 2
  %39 = bitcast float* %38 to i32*
  %40 = load i32* %39, align 4, !tbaa !14
  %41 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %42 = bitcast float* %41 to i32*
  store i32 %40, i32* %42, align 4, !tbaa !14
  %43 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 1, i64 0
  %44 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %45 = bitcast float* %43 to i32*
  %46 = load i32* %45, align 4, !tbaa !14
  %47 = bitcast float* %44 to i32*
  store i32 %46, i32* %47, align 4, !tbaa !14
  %48 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 1, i64 1
  %49 = bitcast float* %48 to i32*
  %50 = load i32* %49, align 4, !tbaa !14
  %51 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %52 = bitcast float* %51 to i32*
  store i32 %50, i32* %52, align 4, !tbaa !14
  %53 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 1, i64 2
  %54 = bitcast float* %53 to i32*
  %55 = load i32* %54, align 4, !tbaa !14
  %56 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %57 = bitcast float* %56 to i32*
  store i32 %55, i32* %57, align 4, !tbaa !14
  %58 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 2, i64 0
  %59 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %60 = bitcast float* %58 to i32*
  %61 = load i32* %60, align 4, !tbaa !14
  %62 = bitcast float* %59 to i32*
  store i32 %61, i32* %62, align 4, !tbaa !14
  %63 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 2, i64 1
  %64 = bitcast float* %63 to i32*
  %65 = load i32* %64, align 4, !tbaa !14
  %66 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %67 = bitcast float* %66 to i32*
  store i32 %65, i32* %67, align 4, !tbaa !14
  %68 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 25, i64 2, i64 2
  %69 = bitcast float* %68 to i32*
  %70 = load i32* %69, align 4, !tbaa !14
  %71 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %72 = bitcast float* %71 to i32*
  store i32 %70, i32* %72, align 4, !tbaa !14
  %73 = getelementptr inbounds %struct.t_trxframe* %28, i64 %19, i32 2
  %74 = load i32* %73, align 4, !tbaa !32
  call void @llvm.lifetime.end(i64 176, i8* %1) #7
  ret i32 %74
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_next_x(i32 %status, float* nocapture %t, i32 %natoms, [3 x float]* %x, [3 x float]* nocapture %box) #5 {
  %1 = sext i32 %status to i64
  %2 = load %struct.t_trxframe** @xframe, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct.t_trxframe* %2, i64 %1, i32 19
  store [3 x float]* %x, [3 x float]** %3, align 8, !tbaa !42
  %4 = load %struct.t_trxframe** @xframe, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.t_trxframe* %4, i64 %1
  %6 = tail call i32 @read_next_frame(i32 %status, %struct.t_trxframe* %5) #13
  %7 = load %struct.t_trxframe** @xframe, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 11
  %9 = bitcast float* %8 to i32*
  %10 = load i32* %9, align 4, !tbaa !38
  %11 = bitcast float* %t to i32*
  store i32 %10, i32* %11, align 4, !tbaa !14
  %12 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 0
  %13 = bitcast [3 x float]* %12 to i32*
  %14 = load i32* %13, align 4, !tbaa !14
  %15 = bitcast [3 x float]* %box to i32*
  store i32 %14, i32* %15, align 4, !tbaa !14
  %16 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 0, i64 1
  %17 = bitcast float* %16 to i32*
  %18 = load i32* %17, align 4, !tbaa !14
  %19 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %20 = bitcast float* %19 to i32*
  store i32 %18, i32* %20, align 4, !tbaa !14
  %21 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 0, i64 2
  %22 = bitcast float* %21 to i32*
  %23 = load i32* %22, align 4, !tbaa !14
  %24 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %25 = bitcast float* %24 to i32*
  store i32 %23, i32* %25, align 4, !tbaa !14
  %26 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 1, i64 0
  %27 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %28 = bitcast float* %26 to i32*
  %29 = load i32* %28, align 4, !tbaa !14
  %30 = bitcast float* %27 to i32*
  store i32 %29, i32* %30, align 4, !tbaa !14
  %31 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 1, i64 1
  %32 = bitcast float* %31 to i32*
  %33 = load i32* %32, align 4, !tbaa !14
  %34 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %35 = bitcast float* %34 to i32*
  store i32 %33, i32* %35, align 4, !tbaa !14
  %36 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 1, i64 2
  %37 = bitcast float* %36 to i32*
  %38 = load i32* %37, align 4, !tbaa !14
  %39 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %40 = bitcast float* %39 to i32*
  store i32 %38, i32* %40, align 4, !tbaa !14
  %41 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 2, i64 0
  %42 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %43 = bitcast float* %41 to i32*
  %44 = load i32* %43, align 4, !tbaa !14
  %45 = bitcast float* %42 to i32*
  store i32 %44, i32* %45, align 4, !tbaa !14
  %46 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 2, i64 1
  %47 = bitcast float* %46 to i32*
  %48 = load i32* %47, align 4, !tbaa !14
  %49 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %50 = bitcast float* %49 to i32*
  store i32 %48, i32* %50, align 4, !tbaa !14
  %51 = getelementptr inbounds %struct.t_trxframe* %7, i64 %1, i32 25, i64 2, i64 2
  %52 = bitcast float* %51 to i32*
  %53 = load i32* %52, align 4, !tbaa !14
  %54 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %55 = bitcast float* %54 to i32*
  store i32 %53, i32* %55, align 4, !tbaa !14
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define void @close_trj(i32 %status) #5 {
  tail call void @gmx_fio_close(i32 %status) #10
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @rewind_trj(i32 %status) #5 {
  store i32 -1, i32* @__frame, align 4, !tbaa !18
  tail call void @gmx_fio_rewind(i32 %status) #10
  ret void
}

; Function Attrs: optsize
declare void @gmx_fio_rewind(i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_first_v(i32* nocapture %status, i8* %fn, float* nocapture %t, [3 x float]** nocapture %v, [3 x float]* nocapture %box) #5 {
  %fr = alloca %struct.t_trxframe, align 8
  %1 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %1) #7
  %2 = call i32 @read_first_frame(i32* %status, i8* %fn, %struct.t_trxframe* %fr, i32 8) #13
  %3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %4 = bitcast float* %3 to i32*
  %5 = load i32* %4, align 4, !tbaa !38
  %6 = bitcast float* %t to i32*
  store i32 %5, i32* %6, align 4, !tbaa !14
  %7 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %8 = load i32* %7, align 8, !tbaa !28
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  %11 = load i32* %10, align 8, !tbaa !32
  %12 = icmp sgt i32 %11, 0
  %or.cond = and i1 %9, %12
  br i1 %or.cond, label %.lr.ph.i, label %clear_v.exit

.lr.ph.i:                                         ; preds = %0
  %13 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %14 = load [3 x float]** %13, align 8, !tbaa !43
  %15 = sext i32 %11 to i64
  %16 = add nsw i64 %15, -1
  br label %17

; <label>:17                                      ; preds = %17, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %17 ]
  %18 = getelementptr inbounds [3 x float]* %14, i64 %indvars.iv.i, i64 0
  store float 0.000000e+00, float* %18, align 4, !tbaa !14
  %19 = getelementptr inbounds [3 x float]* %14, i64 %indvars.iv.i, i64 1
  store float 0.000000e+00, float* %19, align 4, !tbaa !14
  %20 = getelementptr inbounds [3 x float]* %14, i64 %indvars.iv.i, i64 2
  store float 0.000000e+00, float* %20, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond = icmp eq i64 %indvars.iv.i, %16
  br i1 %exitcond, label %clear_v.exit, label %17

clear_v.exit:                                     ; preds = %17, %0
  %21 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  %22 = bitcast [3 x float]** %21 to i64*
  %23 = load i64* %22, align 8, !tbaa !43
  %24 = bitcast [3 x float]** %v to i64*
  store i64 %23, i64* %24, align 8, !tbaa !54
  %25 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %26 = bitcast [3 x float]* %25 to <4 x i32>*
  %27 = load <4 x i32>* %26, align 4, !tbaa !14
  %28 = bitcast [3 x float]* %box to <4 x i32>*
  store <4 x i32> %27, <4 x i32>* %28, align 4, !tbaa !14
  %29 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  %30 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %31 = bitcast float* %29 to <4 x i32>*
  %32 = load <4 x i32>* %31, align 4, !tbaa !14
  %33 = bitcast float* %30 to <4 x i32>*
  store <4 x i32> %32, <4 x i32>* %33, align 4, !tbaa !14
  %34 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  %35 = bitcast float* %34 to i32*
  %36 = load i32* %35, align 4, !tbaa !14
  %37 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %38 = bitcast float* %37 to i32*
  store i32 %36, i32* %38, align 4, !tbaa !14
  call void @llvm.lifetime.end(i64 176, i8* %1) #7
  ret i32 %11
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_next_v(i32 %status, float* nocapture %t, i32 %natoms, [3 x float]* %v, [3 x float]* nocapture %box) #5 {
  %fr = alloca %struct.t_trxframe, align 8
  %1 = bitcast %struct.t_trxframe* %fr to i8*
  call void @llvm.lifetime.start(i64 176, i8* %1) #7
  call void @clear_trxframe(%struct.t_trxframe* %fr, i32 1) #13
  %2 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 0
  store i32 8, i32* %2, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 2
  store i32 %natoms, i32* %3, align 8, !tbaa !32
  %4 = bitcast float* %t to i32*
  %5 = load i32* %4, align 4, !tbaa !14
  %6 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 11
  %7 = bitcast float* %6 to i32*
  store i32 %5, i32* %7, align 4, !tbaa !38
  %8 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 21
  store [3 x float]* %v, [3 x float]** %8, align 8, !tbaa !43
  %9 = call i32 @read_next_frame(i32 %status, %struct.t_trxframe* %fr) #13
  %10 = load i32* %7, align 4, !tbaa !38
  store i32 %10, i32* %4, align 4, !tbaa !14
  %11 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 20
  %12 = load i32* %11, align 8, !tbaa !28
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %.preheader.i, label %clear_v.exit

.preheader.i:                                     ; preds = %0
  %14 = load i32* %3, align 8, !tbaa !32
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %.lr.ph.i, label %clear_v.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %16 = load [3 x float]** %8, align 8, !tbaa !43
  %17 = sext i32 %14 to i64
  %18 = add nsw i64 %17, -1
  br label %19

; <label>:19                                      ; preds = %19, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %19 ]
  %20 = getelementptr inbounds [3 x float]* %16, i64 %indvars.iv.i, i64 0
  store float 0.000000e+00, float* %20, align 4, !tbaa !14
  %21 = getelementptr inbounds [3 x float]* %16, i64 %indvars.iv.i, i64 1
  store float 0.000000e+00, float* %21, align 4, !tbaa !14
  %22 = getelementptr inbounds [3 x float]* %16, i64 %indvars.iv.i, i64 2
  store float 0.000000e+00, float* %22, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond = icmp eq i64 %indvars.iv.i, %18
  br i1 %exitcond, label %clear_v.exit, label %19

clear_v.exit:                                     ; preds = %19, %0, %.preheader.i
  %23 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 0
  %24 = bitcast [3 x float]* %23 to <4 x i32>*
  %25 = load <4 x i32>* %24, align 4, !tbaa !14
  %26 = bitcast [3 x float]* %box to <4 x i32>*
  store <4 x i32> %25, <4 x i32>* %26, align 4, !tbaa !14
  %27 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 1, i64 1
  %28 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %29 = bitcast float* %27 to <4 x i32>*
  %30 = load <4 x i32>* %29, align 4, !tbaa !14
  %31 = bitcast float* %28 to <4 x i32>*
  store <4 x i32> %30, <4 x i32>* %31, align 4, !tbaa !14
  %32 = getelementptr inbounds %struct.t_trxframe* %fr, i64 0, i32 25, i64 2, i64 2
  %33 = bitcast float* %32 to i32*
  %34 = load i32* %33, align 4, !tbaa !14
  %35 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %36 = bitcast float* %35 to i32*
  store i32 %34, i32* %36, align 4, !tbaa !14
  call void @llvm.lifetime.end(i64 176, i8* %1) #7
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @fread_trnheader(i32, %struct.t_trnheader*, i32*) #1

; Function Attrs: optsize
declare i32 @fread_htrn(i32, %struct.t_trnheader*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @do_read_xyz(%struct.__sFILE* nocapture %status, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* nocapture %box) #5 {
  %x0 = alloca double, align 8
  %1 = icmp sgt i32 %natoms, 0
  br i1 %1, label %.preheader2.lr.ph, label %._crit_edge

.preheader2.lr.ph:                                ; preds = %0
  %2 = sext i32 %natoms to i64
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.lr.ph, %20
  %indvars.iv12 = phi i64 [ 0, %.preheader2.lr.ph ], [ %indvars.iv.next13, %20 ]
  br label %3

; <label>:3                                       ; preds = %.preheader2, %15
  %indvars.iv10 = phi i64 [ 0, %.preheader2 ], [ %indvars.iv.next11, %15 ]
  %4 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %status, i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0), double* %x0) #10
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %15, label %6

; <label>:6                                       ; preds = %3
  %7 = or i64 %indvars.iv10, %indvars.iv12
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %.loopexit, label %10

; <label>:10                                      ; preds = %6
  %11 = trunc i64 %indvars.iv10 to i32
  %12 = trunc i64 %indvars.iv12 to i32
  %13 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !54
  %14 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([37 x i8]* @.str20, i64 0, i64 0), i32 %12, i32 %11) #10
  br label %.loopexit

; <label>:15                                      ; preds = %3
  %16 = load double* %x0, align 8, !tbaa !16
  %17 = fptrunc double %16 to float
  %18 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv12, i64 %indvars.iv10
  store float %17, float* %18, align 4, !tbaa !14
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %19 = icmp slt i64 %indvars.iv.next11, 3
  br i1 %19, label %3, label %20

; <label>:20                                      ; preds = %15
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %21 = icmp slt i64 %indvars.iv.next13, %2
  br i1 %21, label %.preheader2, label %._crit_edge

._crit_edge:                                      ; preds = %20, %0
  %22 = load i32* @bReadBox, align 4, !tbaa !18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %26
  %indvars.iv = phi i64 [ %indvars.iv.next, %26 ], [ 0, %._crit_edge ]
  %24 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %status, i8* getelementptr inbounds ([4 x i8]* @.str19, i64 0, i64 0), double* %x0) #10
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %.loopexit

; <label>:26                                      ; preds = %.preheader
  %27 = load double* %x0, align 8, !tbaa !16
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  store float %28, float* %29, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %30 = icmp slt i64 %indvars.iv.next, 3
  br i1 %30, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %26, %.preheader, %._crit_edge, %10, %6
  %.0 = phi i32 [ 0, %6 ], [ 0, %10 ], [ 1, %._crit_edge ], [ 0, %.preheader ], [ 1, %26 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize
declare i32 @fscanf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #8

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #8

; Function Attrs: optsize
declare i32 @read_pdbfile(%struct.__sFILE*, i8*, i32*, %struct.t_atoms*, [3 x float]*, [3 x float]*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #9

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #8

; Function Attrs: optsize
declare float @convert_time(float) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #8

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #8

; Function Attrs: nounwind optsize
declare i32 @scanf(i8* nocapture readonly, ...) #8

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct.__sFILE* nocapture) #8

; Function Attrs: optsize
declare void @frewind(%struct.__sFILE*) #1

; Function Attrs: optsize
declare void @get_pdb_coordnum(%struct.__sFILE*, i32*) #1

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
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
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
!19 = !{!20, !7, i64 4}
!20 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !7, i64 24, !4, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !15, i64 52, !7, i64 56, !15, i64 60, !7, i64 64, !4, i64 72, !7, i64 80, !15, i64 84, !7, i64 88, !4, i64 96, !7, i64 104, !4, i64 112, !7, i64 120, !4, i64 128, !7, i64 136, !5, i64 140}
!21 = !{!20, !7, i64 24}
!22 = !{!20, !7, i64 40}
!23 = !{!20, !7, i64 48}
!24 = !{!20, !7, i64 56}
!25 = !{!20, !7, i64 64}
!26 = !{!20, !7, i64 80}
!27 = !{!20, !7, i64 88}
!28 = !{!20, !7, i64 104}
!29 = !{!20, !7, i64 120}
!30 = !{!20, !7, i64 136}
!31 = !{!20, !7, i64 0}
!32 = !{!20, !7, i64 8}
!33 = !{!20, !15, i64 12}
!34 = !{!20, !15, i64 16}
!35 = !{!20, !15, i64 20}
!36 = !{!20, !4, i64 32}
!37 = !{!20, !7, i64 44}
!38 = !{!20, !15, i64 52}
!39 = !{!20, !15, i64 60}
!40 = !{!20, !4, i64 72}
!41 = !{!20, !15, i64 84}
!42 = !{!20, !4, i64 96}
!43 = !{!20, !4, i64 112}
!44 = !{!20, !4, i64 128}
!45 = !{!46, !7, i64 40}
!46 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !15, i64 52, !15, i64 56}
!47 = !{!46, !7, i64 44}
!48 = !{!46, !15, i64 52}
!49 = !{!46, !15, i64 56}
!50 = !{!46, !7, i64 8}
!51 = !{!46, !7, i64 28}
!52 = !{!46, !7, i64 32}
!53 = !{!46, !7, i64 36}
!54 = !{!4, !4, i64 0}
!55 = !{!56, !7, i64 0}
!56 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !57, i64 72, !5, i64 1128, !4, i64 1272}
!57 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!58 = !{!56, !4, i64 8}
!59 = !{!56, !4, i64 1272}
!60 = !{i64 0, i64 4, !18, i64 4, i64 4, !18, i64 8, i64 4, !18, i64 12, i64 4, !14, i64 16, i64 4, !14, i64 20, i64 4, !14, i64 24, i64 4, !18, i64 32, i64 8, !54, i64 40, i64 4, !18, i64 44, i64 4, !18, i64 48, i64 4, !18, i64 52, i64 4, !14, i64 56, i64 4, !18, i64 60, i64 4, !14, i64 64, i64 4, !18, i64 72, i64 8, !54, i64 80, i64 4, !18, i64 84, i64 4, !14, i64 88, i64 4, !18, i64 96, i64 8, !54, i64 104, i64 4, !18, i64 112, i64 8, !54, i64 120, i64 4, !18, i64 128, i64 8, !54, i64 136, i64 4, !18, i64 140, i64 36, !13}
