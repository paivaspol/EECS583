; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/libxdrf.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@xdropen.init_done = internal unnamed_addr global i1 false
@xdridptr = internal unnamed_addr global [20 x %struct.XDR*] zeroinitializer, align 16
@xdrfiles = internal unnamed_addr global [20 x %struct.__sFILE*] zeroinitializer, align 16
@xdrmodes = internal unnamed_addr global [20 x i8] zeroinitializer, align 16
@__stderrp = external global %struct.__sFILE*
@.str3 = private unnamed_addr constant [33 x i8] c"xdrclose: passed a NULL pointer\0A\00", align 1
@.str4 = private unnamed_addr constant [33 x i8] c"xdrclose: no such open xdr file\0A\00", align 1
@xdr3dfcoord.ip = internal unnamed_addr global i32* null, align 8
@xdr3dfcoord.oldsize = internal unnamed_addr global i32 0, align 4
@xdr3dfcoord.buf = internal unnamed_addr global i32* null, align 8
@.str5 = private unnamed_addr constant [31 x i8] c"xdr error. no open xdr stream\0A\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@.str7 = private unnamed_addr constant [16 x i8] c"realloc failed\0A\00", align 1
@magicints = internal unnamed_addr constant [73 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 10, i32 12, i32 16, i32 20, i32 25, i32 32, i32 40, i32 50, i32 64, i32 80, i32 101, i32 128, i32 161, i32 203, i32 256, i32 322, i32 406, i32 512, i32 645, i32 812, i32 1024, i32 1290, i32 1625, i32 2048, i32 2580, i32 3250, i32 4096, i32 5060, i32 6501, i32 8192, i32 10321, i32 13003, i32 16384, i32 20642, i32 26007, i32 32768, i32 41285, i32 52015, i32 65536, i32 82570, i32 104031, i32 131072, i32 165140, i32 208063, i32 262144, i32 330280, i32 416127, i32 524287, i32 660561, i32 832255, i32 1048576, i32 1321122, i32 1664510, i32 2097152, i32 2642245, i32 3329021, i32 4194304, i32 5284491, i32 6658042, i32 8388607, i32 10568983, i32 13316085, i32 16777216], align 16
@.str8 = private unnamed_addr constant [65 x i8] c"wrong number of coordinates in xdr3dfcoord; %d arg vs %d in file\00", align 1
@.str9 = private unnamed_addr constant [58 x i8] c"major breakdown in sendints num %u doesn't match size %u\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #0 {
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
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #0 {
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
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #0 {
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
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #0 {
  %1 = tail call float @llvm.fabs.f32(float %__x) #9
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #9
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #0 {
  %1 = fcmp uno float %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #0 {
  %1 = fcmp uno double %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #0 {
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #0 {
  %1 = bitcast float %__x to i32
  %2 = lshr i32 %1, 31
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #0 {
  %1 = bitcast double %__x to i64
  %2 = lshr i64 %1, 63
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #0 {
  %1 = bitcast x86_fp80 %__x to i80
  %2 = lshr i80 %1, 79
  %3 = trunc i80 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #0 {
  %1 = fcmp ord float %__x, 0.000000e+00
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
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
define i32 @__inline_isnormald(double %__x) #0 {
  %1 = fcmp ord double %__x, 0.000000e+00
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
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
define i32 @__inline_isnormall(x86_fp80 %__x) #0 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
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
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #10
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !2
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !2
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  %1 = tail call { double, double } @__sincos_stret(double %__x) #10
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !6
  store double %3, double* %__cosp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #10
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !2
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !2
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #10
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !6
  store double %3, double* %__cosp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #2 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !8
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !8
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !15
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !16
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !16
  store i8 %11, i8* %13, align 1, !tbaa !17
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #10
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
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

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdropen(%struct.XDR* %xdrs, i8* %filename, i8* nocapture readonly %type) #4 {
  %newtype = alloca [5 x i8], align 4
  %.b = load i1* @xdropen.init_done, align 1
  br i1 %.b, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %0
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.XDR** getelementptr inbounds ([20 x %struct.XDR*]* @xdridptr, i64 0, i64 1) to i8*), i8 0, i64 152, i32 8, i1 false)
  store i1 true, i1* @xdropen.init_done, align 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader1, %0, %5
  %indvars.iv = phi i64 [ %indvars.iv.next, %5 ], [ 1, %0 ], [ 1, %.preheader1 ]
  %xdrid.12 = phi i32 [ %6, %5 ], [ 1, %0 ], [ 1, %.preheader1 ]
  %1 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %indvars.iv
  %2 = load %struct.XDR** %1, align 8, !tbaa !18
  %3 = icmp eq %struct.XDR* %2, null
  %4 = trunc i64 %indvars.iv to i32
  br i1 %3, label %.critedge, label %5

; <label>:5                                       ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = add nuw nsw i32 %xdrid.12, 1
  %7 = icmp slt i64 %indvars.iv.next, 20
  br i1 %7, label %.preheader, label %.critedge

.critedge:                                        ; preds = %.preheader, %5
  %xdrid.1.lcssa = phi i32 [ %4, %.preheader ], [ %6, %5 ]
  %8 = icmp eq i32 %xdrid.1.lcssa, 20
  br i1 %8, label %34, label %9

; <label>:9                                       ; preds = %.critedge
  %10 = load i8* %type, align 1, !tbaa !17
  switch i8 %10, label %15 [
    i8 119, label %11
    i8 87, label %11
    i8 97, label %13
    i8 65, label %13
  ]

; <label>:11                                      ; preds = %9, %9
  %12 = bitcast [5 x i8]* %newtype to i32*
  store i32 2843255, i32* %12, align 4
  br label %17

; <label>:13                                      ; preds = %9, %9
  %14 = bitcast [5 x i8]* %newtype to i32*
  store i32 2843233, i32* %14, align 4
  br label %17

; <label>:15                                      ; preds = %9
  %16 = bitcast [5 x i8]* %newtype to i32*
  store i32 2843250, i32* %16, align 4
  br label %17

; <label>:17                                      ; preds = %13, %15, %11
  %lmode.0 = phi i32 [ 0, %11 ], [ 0, %13 ], [ 1, %15 ]
  %18 = getelementptr inbounds [5 x i8]* %newtype, i64 0, i64 0
  %19 = call %struct.__sFILE* @"\01_fopen"(i8* %filename, i8* %18) #10
  %20 = sext i32 %xdrid.1.lcssa to i64
  %21 = getelementptr inbounds [20 x %struct.__sFILE*]* @xdrfiles, i64 0, i64 %20
  store %struct.__sFILE* %19, %struct.__sFILE** %21, align 8, !tbaa !18
  %22 = icmp eq %struct.__sFILE* %19, null
  br i1 %22, label %34, label %23

; <label>:23                                      ; preds = %17
  %24 = load i8* %type, align 1, !tbaa !17
  %25 = getelementptr inbounds [20 x i8]* @xdrmodes, i64 0, i64 %20
  store i8 %24, i8* %25, align 1, !tbaa !17
  %26 = icmp eq %struct.XDR* %xdrs, null
  br i1 %26, label %27, label %32

; <label>:27                                      ; preds = %23
  %28 = call i8* @malloc(i64 48) #10
  %29 = bitcast i8* %28 to %struct.XDR*
  %30 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %20
  %31 = bitcast %struct.XDR** %30 to i8**
  store i8* %28, i8** %31, align 8, !tbaa !18
  call void @xdrstdio_create(%struct.XDR* %29, %struct.__sFILE* %19, i32 %lmode.0) #10
  br label %34

; <label>:32                                      ; preds = %23
  %33 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %20
  store %struct.XDR* %xdrs, %struct.XDR** %33, align 8, !tbaa !18
  call void @xdrstdio_create(%struct.XDR* %xdrs, %struct.__sFILE* %19, i32 %lmode.0) #10
  br label %34

; <label>:34                                      ; preds = %27, %32, %17, %.critedge
  %.0 = phi i32 [ 0, %.critedge ], [ 0, %17 ], [ %xdrid.1.lcssa, %32 ], [ %xdrid.1.lcssa, %27 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #5

; Function Attrs: optsize
declare void @xdrstdio_create(%struct.XDR*, %struct.__sFILE*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdrclose(%struct.XDR* %xdrs) #4 {
  %1 = icmp eq %struct.XDR* %xdrs, null
  br i1 %1, label %2, label %.preheader

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str3, i64 0, i64 0), i64 32, i64 1, %struct.__sFILE* %3)
  tail call void @exit(i32 1) #11
  unreachable

; <label>:5                                       ; preds = %.preheader
  %6 = icmp slt i64 %indvars.iv.next, 20
  br i1 %6, label %.preheader, label %21

.preheader:                                       ; preds = %0, %5
  %indvars.iv = phi i64 [ %indvars.iv.next, %5 ], [ 1, %0 ]
  %7 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %indvars.iv
  %8 = load %struct.XDR** %7, align 8, !tbaa !18
  %9 = icmp eq %struct.XDR* %8, %xdrs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %9, label %10, label %5

; <label>:10                                      ; preds = %.preheader
  %11 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1
  %12 = load %struct.xdr_ops** %11, align 8, !tbaa !19
  %13 = getelementptr inbounds %struct.xdr_ops* %12, i64 0, i32 7
  %14 = load void (%struct.XDR*)** %13, align 8, !tbaa !21
  %15 = icmp eq void (%struct.XDR*)* %14, null
  br i1 %15, label %17, label %16

; <label>:16                                      ; preds = %10
  tail call void %14(%struct.XDR* %xdrs) #10
  br label %17

; <label>:17                                      ; preds = %10, %16
  %18 = getelementptr inbounds [20 x %struct.__sFILE*]* @xdrfiles, i64 0, i64 %indvars.iv
  %19 = load %struct.__sFILE** %18, align 8, !tbaa !18
  %20 = tail call i32 @fclose(%struct.__sFILE* %19) #10
  store %struct.XDR* null, %struct.XDR** %7, align 8, !tbaa !18
  ret i32 1

; <label>:21                                      ; preds = %5
  %22 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str4, i64 0, i64 0), i64 32, i64 1, %struct.__sFILE* %22)
  tail call void @exit(i32 1) #11
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: noreturn optsize
declare void @exit(i32) #6

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr3dfcoord(%struct.XDR* %xdrs, float* %fp, i32* %size, float* %precision) #4 {
  %minint = alloca [3 x i32], align 4
  %maxint = alloca [3 x i32], align 4
  %smallidx = alloca i32, align 4
  %sizeint = alloca [3 x i32], align 4
  %sizesmall = alloca [3 x i32], align 4
  %tmpcoord = alloca [30 x i32], align 16
  %lsize = alloca i32, align 4
  %1 = bitcast [30 x i32]* %tmpcoord to i8*
  call void @llvm.lifetime.start(i64 120, i8* %1) #7
  br label %2

; <label>:2                                       ; preds = %6, %0
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %6 ], [ 0, %0 ]
  %3 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %indvars.iv166
  %4 = load %struct.XDR** %3, align 8, !tbaa !18
  %5 = icmp eq %struct.XDR* %4, %xdrs
  br i1 %5, label %11, label %6

; <label>:6                                       ; preds = %2
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1
  %7 = icmp sgt i64 %indvars.iv166, 18
  br i1 %7, label %8, label %2

; <label>:8                                       ; preds = %6
  %9 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str5, i64 0, i64 0), i64 30, i64 1, %struct.__sFILE* %9)
  tail call void @exit(i32 1) #11
  unreachable

; <label>:11                                      ; preds = %2
  %12 = getelementptr inbounds [20 x i8]* @xdrmodes, i64 0, i64 %indvars.iv166
  %13 = load i8* %12, align 1, !tbaa !17
  switch i8 %13, label %442 [
    i8 119, label %14
    i8 97, label %14
  ]

; <label>:14                                      ; preds = %11, %11
  %15 = tail call i32 @xdr_int(%struct.XDR* %xdrs, i32* %size) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %.loopexit95, label %17

; <label>:17                                      ; preds = %14
  %18 = load i32* %size, align 4, !tbaa !23
  %19 = mul nsw i32 %18, 3
  %20 = icmp slt i32 %18, 10
  br i1 %20, label %21, label %24

; <label>:21                                      ; preds = %17
  %22 = bitcast float* %fp to i8*
  %23 = tail call i32 @xdr_vector(%struct.XDR* %xdrs, i8* %22, i32 %19, i32 4, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, float*)* @xdr_float to i32 (%struct.XDR*, i8*, ...)*)) #10
  br label %.loopexit95

; <label>:24                                      ; preds = %17
  %25 = tail call i32 @xdr_float(%struct.XDR* %xdrs, float* %precision) #10
  %26 = load i32** @xdr3dfcoord.ip, align 8, !tbaa !18
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %50

; <label>:28                                      ; preds = %24
  %29 = zext i32 %19 to i64
  %30 = shl nuw nsw i64 %29, 2
  %31 = tail call i8* @malloc(i64 %30) #10
  store i8* %31, i8** bitcast (i32** @xdr3dfcoord.ip to i8**), align 8, !tbaa !18
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

; <label>:33                                      ; preds = %28
  %34 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %34)
  tail call void @exit(i32 1) #11
  unreachable

; <label>:36                                      ; preds = %28
  %37 = uitofp i32 %19 to double
  %38 = fmul double %37, 1.200000e+00
  %39 = fptosi double %38 to i32
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 2
  %42 = tail call i8* @malloc(i64 %41) #10
  store i8* %42, i8** bitcast (i32** @xdr3dfcoord.buf to i8**), align 8, !tbaa !18
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %47

; <label>:44                                      ; preds = %36
  %45 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %46 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %45)
  tail call void @exit(i32 1) #11
  unreachable

; <label>:47                                      ; preds = %36
  %48 = bitcast i8* %42 to i32*
  %49 = load i32* %size, align 4, !tbaa !23
  store i32 %49, i32* @xdr3dfcoord.oldsize, align 4, !tbaa !23
  br label %.lr.ph144

; <label>:50                                      ; preds = %24
  %51 = load i32* %size, align 4, !tbaa !23
  %52 = load i32* @xdr3dfcoord.oldsize, align 4, !tbaa !23
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %._crit_edge168

._crit_edge168:                                   ; preds = %50
  %.pre = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  %.pre189 = zext i32 %19 to i64
  br label %.lr.ph144

; <label>:54                                      ; preds = %50
  %55 = bitcast i32* %26 to i8*
  %56 = zext i32 %19 to i64
  %57 = shl nuw nsw i64 %56, 2
  %58 = tail call i8* @realloc(i8* %55, i64 %57) #10
  store i8* %58, i8** bitcast (i32** @xdr3dfcoord.ip to i8**), align 8, !tbaa !18
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %63

; <label>:60                                      ; preds = %54
  %61 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %62 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %61)
  tail call void @exit(i32 1) #11
  unreachable

; <label>:63                                      ; preds = %54
  %64 = uitofp i32 %19 to double
  %65 = fmul double %64, 1.200000e+00
  %66 = fptosi double %65 to i32
  %67 = load i8** bitcast (i32** @xdr3dfcoord.buf to i8**), align 8, !tbaa !18
  %68 = sext i32 %66 to i64
  %69 = shl nsw i64 %68, 2
  %70 = tail call i8* @realloc(i8* %67, i64 %69) #10
  store i8* %70, i8** bitcast (i32** @xdr3dfcoord.buf to i8**), align 8, !tbaa !18
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %75

; <label>:72                                      ; preds = %63
  %73 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %74 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i64 15, i64 1, %struct.__sFILE* %73)
  tail call void @exit(i32 1) #11
  unreachable

; <label>:75                                      ; preds = %63
  %76 = bitcast i8* %70 to i32*
  %77 = load i32* %size, align 4, !tbaa !23
  store i32 %77, i32* @xdr3dfcoord.oldsize, align 4, !tbaa !23
  br label %.lr.ph144

.lr.ph144:                                        ; preds = %47, %75, %._crit_edge168
  %.pre-phi190 = phi i64 [ %.pre189, %._crit_edge168 ], [ %56, %75 ], [ %29, %47 ]
  %78 = phi i32* [ %.pre, %._crit_edge168 ], [ %76, %75 ], [ %48, %47 ]
  %79 = getelementptr inbounds i32* %78, i64 2
  store i32 0, i32* %79, align 4, !tbaa !23
  %80 = getelementptr inbounds i32* %78, i64 1
  store i32 0, i32* %80, align 4, !tbaa !23
  store i32 0, i32* %78, align 4, !tbaa !23
  %81 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 2
  store i32 2147483647, i32* %81, align 4, !tbaa !23
  %82 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 1
  store i32 2147483647, i32* %82, align 4, !tbaa !23
  %83 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 0
  store i32 2147483647, i32* %83, align 4, !tbaa !23
  %84 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 2
  store i32 -2147483648, i32* %84, align 4, !tbaa !23
  %85 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 1
  store i32 -2147483648, i32* %85, align 4, !tbaa !23
  %86 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 0
  store i32 -2147483648, i32* %86, align 4, !tbaa !23
  %87 = getelementptr inbounds float* %fp, i64 %.pre-phi190
  %88 = load i32** @xdr3dfcoord.ip, align 8, !tbaa !18
  %89 = load float* %precision, align 4, !tbaa !2
  br label %90

; <label>:90                                      ; preds = %.lr.ph144, %153
  %errval.0142 = phi i32 [ 1, %.lr.ph144 ], [ %errval.3, %153 ]
  %lfp.0141 = phi float* [ %fp, %.lr.ph144 ], [ %155, %153 ]
  %mindiff.0140 = phi i32 [ 2147483647, %.lr.ph144 ], [ %mindiff.1, %153 ]
  %lip.0139 = phi i32* [ %88, %.lr.ph144 ], [ %154, %153 ]
  %oldlint3.0138 = phi i32 [ 0, %.lr.ph144 ], [ %145, %153 ]
  %oldlint2.0137 = phi i32 [ 0, %.lr.ph144 ], [ %123, %153 ]
  %oldlint1.0136 = phi i32 [ 0, %.lr.ph144 ], [ %101, %153 ]
  %91 = load float* %lfp.0141, align 4, !tbaa !2
  %92 = fcmp ult float %91, 0.000000e+00
  %93 = fmul float %91, %89
  br i1 %92, label %96, label %94

; <label>:94                                      ; preds = %90
  %95 = fadd float %93, 5.000000e-01
  br label %98

; <label>:96                                      ; preds = %90
  %97 = fadd float %93, -5.000000e-01
  br label %98

; <label>:98                                      ; preds = %96, %94
  %lf.0 = phi float [ %95, %94 ], [ %97, %96 ]
  %fabsf = tail call float @fabsf(float %lf.0) #12
  %99 = fpext float %fabsf to double
  %100 = fcmp ogt double %99, 0x41DFFFFFFF400000
  %101 = fptosi float %lf.0 to i32
  %102 = load i32* %83, align 4, !tbaa !23
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %98
  store i32 %101, i32* %83, align 4, !tbaa !23
  br label %105

; <label>:105                                     ; preds = %104, %98
  %106 = load i32* %86, align 4, !tbaa !23
  %107 = icmp sgt i32 %101, %106
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %105
  store i32 %101, i32* %86, align 4, !tbaa !23
  br label %109

; <label>:109                                     ; preds = %108, %105
  %110 = getelementptr inbounds i32* %lip.0139, i64 1
  store i32 %101, i32* %lip.0139, align 4, !tbaa !23
  %111 = getelementptr inbounds float* %lfp.0141, i64 1
  %112 = load float* %111, align 4, !tbaa !2
  %113 = fcmp ult float %112, 0.000000e+00
  %114 = fmul float %112, %89
  br i1 %113, label %117, label %115

; <label>:115                                     ; preds = %109
  %116 = fadd float %114, 5.000000e-01
  br label %119

; <label>:117                                     ; preds = %109
  %118 = fadd float %114, -5.000000e-01
  br label %119

; <label>:119                                     ; preds = %117, %115
  %lf.1 = phi float [ %116, %115 ], [ %118, %117 ]
  %fabsf41 = tail call float @fabsf(float %lf.1) #12
  %120 = fpext float %fabsf41 to double
  %121 = fcmp ogt double %120, 0x41DFFFFFFF400000
  %122 = or i1 %100, %121
  %123 = fptosi float %lf.1 to i32
  %124 = load i32* %82, align 4, !tbaa !23
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %127

; <label>:126                                     ; preds = %119
  store i32 %123, i32* %82, align 4, !tbaa !23
  br label %127

; <label>:127                                     ; preds = %126, %119
  %128 = load i32* %85, align 4, !tbaa !23
  %129 = icmp sgt i32 %123, %128
  br i1 %129, label %130, label %131

; <label>:130                                     ; preds = %127
  store i32 %123, i32* %85, align 4, !tbaa !23
  br label %131

; <label>:131                                     ; preds = %130, %127
  %132 = getelementptr inbounds i32* %lip.0139, i64 2
  store i32 %123, i32* %110, align 4, !tbaa !23
  %133 = getelementptr inbounds float* %lfp.0141, i64 2
  %134 = load float* %133, align 4, !tbaa !2
  %135 = fcmp ult float %134, 0.000000e+00
  %136 = fmul float %134, %89
  br i1 %135, label %139, label %137

; <label>:137                                     ; preds = %131
  %138 = fadd float %136, 5.000000e-01
  br label %141

; <label>:139                                     ; preds = %131
  %140 = fadd float %136, -5.000000e-01
  br label %141

; <label>:141                                     ; preds = %139, %137
  %lf.2 = phi float [ %138, %137 ], [ %140, %139 ]
  %fabsf42 = tail call float @fabsf(float %lf.2) #12
  %142 = fpext float %fabsf42 to double
  %143 = fcmp ogt double %142, 0x41DFFFFFFF400000
  %144 = or i1 %122, %143
  %errval.3 = select i1 %144, i32 0, i32 %errval.0142
  %145 = fptosi float %lf.2 to i32
  %146 = load i32* %81, align 4, !tbaa !23
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %149

; <label>:148                                     ; preds = %141
  store i32 %145, i32* %81, align 4, !tbaa !23
  br label %149

; <label>:149                                     ; preds = %148, %141
  %150 = load i32* %84, align 4, !tbaa !23
  %151 = icmp sgt i32 %145, %150
  br i1 %151, label %152, label %153

; <label>:152                                     ; preds = %149
  store i32 %145, i32* %84, align 4, !tbaa !23
  br label %153

; <label>:153                                     ; preds = %152, %149
  %154 = getelementptr inbounds i32* %lip.0139, i64 3
  store i32 %145, i32* %132, align 4, !tbaa !23
  %155 = getelementptr inbounds float* %lfp.0141, i64 3
  %156 = sub nsw i32 %oldlint1.0136, %101
  %ispos43 = icmp sgt i32 %156, -1
  %neg44 = sub i32 0, %156
  %157 = select i1 %ispos43, i32 %156, i32 %neg44
  %158 = sub nsw i32 %oldlint2.0137, %123
  %ispos45 = icmp sgt i32 %158, -1
  %neg46 = sub i32 0, %158
  %159 = select i1 %ispos45, i32 %158, i32 %neg46
  %160 = add nsw i32 %159, %157
  %161 = sub nsw i32 %oldlint3.0138, %145
  %ispos47 = icmp sgt i32 %161, -1
  %neg48 = sub i32 0, %161
  %162 = select i1 %ispos47, i32 %161, i32 %neg48
  %163 = add nsw i32 %160, %162
  %164 = icmp slt i32 %163, %mindiff.0140
  %165 = icmp ugt float* %lfp.0141, %fp
  %or.cond49 = and i1 %165, %164
  %mindiff.1 = select i1 %or.cond49, i32 %163, i32 %mindiff.0140
  %166 = icmp ult float* %155, %87
  br i1 %166, label %90, label %._crit_edge145

._crit_edge145:                                   ; preds = %153
  %167 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %83) #10
  %168 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %82) #10
  %169 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %81) #10
  %170 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %86) #10
  %171 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %85) #10
  %172 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %84) #10
  %173 = load i32* %86, align 4, !tbaa !23
  %174 = sitofp i32 %173 to float
  %175 = load i32* %83, align 4, !tbaa !23
  %176 = sitofp i32 %175 to float
  %177 = fsub float %174, %176
  %178 = fcmp ult float %177, 0x41E0000000000000
  %179 = load i32* %85, align 4, !tbaa !23
  br i1 %178, label %180, label %._crit_edge186

._crit_edge186:                                   ; preds = %._crit_edge145
  %.pre170.pre = load i32* %82, align 4, !tbaa !23
  br label %193

; <label>:180                                     ; preds = %._crit_edge145
  %181 = sitofp i32 %179 to float
  %182 = load i32* %82, align 4, !tbaa !23
  %183 = sitofp i32 %182 to float
  %184 = fsub float %181, %183
  %185 = fcmp ult float %184, 0x41E0000000000000
  br i1 %185, label %186, label %193

; <label>:186                                     ; preds = %180
  %187 = load i32* %84, align 4, !tbaa !23
  %188 = sitofp i32 %187 to float
  %189 = load i32* %81, align 4, !tbaa !23
  %190 = sitofp i32 %189 to float
  %191 = fsub float %188, %190
  %192 = fcmp ult float %191, 0x41E0000000000000
  br i1 %192, label %194, label %193

; <label>:193                                     ; preds = %._crit_edge186, %186, %180
  %.pre170 = phi i32 [ %.pre170.pre, %._crit_edge186 ], [ %182, %186 ], [ %182, %180 ]
  %.pre171 = load i32* %84, align 4, !tbaa !23
  %.pre172 = load i32* %81, align 4, !tbaa !23
  br label %194

; <label>:194                                     ; preds = %186, %193
  %195 = phi i32 [ %.pre172, %193 ], [ %189, %186 ]
  %196 = phi i32 [ %.pre171, %193 ], [ %187, %186 ]
  %197 = phi i32 [ %.pre170, %193 ], [ %182, %186 ]
  %errval.4 = phi i32 [ 0, %193 ], [ %errval.3, %186 ]
  %198 = add i32 %173, 1
  %199 = sub i32 %198, %175
  %200 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 0
  store i32 %199, i32* %200, align 4, !tbaa !23
  %201 = add i32 %179, 1
  %202 = sub i32 %201, %197
  %203 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 1
  store i32 %202, i32* %203, align 4, !tbaa !23
  %204 = sub nsw i32 %196, %195
  %205 = add nsw i32 %204, 1
  %206 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 2
  store i32 %205, i32* %206, align 4, !tbaa !23
  %207 = or i32 %202, %199
  %208 = or i32 %207, %205
  %209 = icmp ugt i32 %208, 16777215
  br i1 %209, label %210, label %220

; <label>:210                                     ; preds = %194
  %not.1.i = icmp eq i32 %198, %175
  br i1 %not.1.i, label %sizeofint.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %210, %.lr.ph.i
  %num_of_bits.03.i = phi i32 [ %211, %.lr.ph.i ], [ 0, %210 ]
  %num.02.i = phi i32 [ %212, %.lr.ph.i ], [ 1, %210 ]
  %211 = add nuw nsw i32 %num_of_bits.03.i, 1
  %212 = shl i32 %num.02.i, 1
  %213 = icmp slt i32 %211, 32
  %not..i = icmp ule i32 %212, %199
  %..i = and i1 %213, %not..i
  br i1 %..i, label %.lr.ph.i, label %sizeofint.exit

sizeofint.exit:                                   ; preds = %.lr.ph.i, %210
  %num_of_bits.0.lcssa.i = phi i32 [ 0, %210 ], [ %211, %.lr.ph.i ]
  %not.1.i52 = icmp eq i32 %201, %197
  br i1 %not.1.i52, label %sizeofint.exit59, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %sizeofint.exit, %.lr.ph.i57
  %num_of_bits.03.i53 = phi i32 [ %214, %.lr.ph.i57 ], [ 0, %sizeofint.exit ]
  %num.02.i54 = phi i32 [ %215, %.lr.ph.i57 ], [ 1, %sizeofint.exit ]
  %214 = add nuw nsw i32 %num_of_bits.03.i53, 1
  %215 = shl i32 %num.02.i54, 1
  %216 = icmp slt i32 %214, 32
  %not..i55 = icmp ule i32 %215, %202
  %..i56 = and i1 %216, %not..i55
  br i1 %..i56, label %.lr.ph.i57, label %sizeofint.exit59

sizeofint.exit59:                                 ; preds = %.lr.ph.i57, %sizeofint.exit
  %num_of_bits.0.lcssa.i58 = phi i32 [ 0, %sizeofint.exit ], [ %214, %.lr.ph.i57 ]
  %not.1.i60 = icmp eq i32 %205, 0
  br i1 %not.1.i60, label %sizeofint.exit67, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %sizeofint.exit59, %.lr.ph.i65
  %num_of_bits.03.i61 = phi i32 [ %217, %.lr.ph.i65 ], [ 0, %sizeofint.exit59 ]
  %num.02.i62 = phi i32 [ %218, %.lr.ph.i65 ], [ 1, %sizeofint.exit59 ]
  %217 = add nuw nsw i32 %num_of_bits.03.i61, 1
  %218 = shl i32 %num.02.i62, 1
  %219 = icmp slt i32 %217, 32
  %not..i63 = icmp ule i32 %218, %205
  %..i64 = and i1 %219, %not..i63
  br i1 %..i64, label %.lr.ph.i65, label %sizeofint.exit67

; <label>:220                                     ; preds = %194
  %221 = call fastcc i32 @sizeofints(i32* %200) #13
  br label %sizeofint.exit67

sizeofint.exit67:                                 ; preds = %.lr.ph.i65, %sizeofint.exit59, %220
  %bitsizeint.sroa.8.0 = phi i32 [ undef, %220 ], [ 0, %sizeofint.exit59 ], [ %217, %.lr.ph.i65 ]
  %bitsizeint.sroa.4.0 = phi i32 [ undef, %220 ], [ %num_of_bits.0.lcssa.i58, %sizeofint.exit59 ], [ %num_of_bits.0.lcssa.i58, %.lr.ph.i65 ]
  %bitsizeint.sroa.0.0 = phi i32 [ undef, %220 ], [ %num_of_bits.0.lcssa.i, %sizeofint.exit59 ], [ %num_of_bits.0.lcssa.i, %.lr.ph.i65 ]
  %bitsize.0 = phi i32 [ %221, %220 ], [ 0, %sizeofint.exit59 ], [ 0, %.lr.ph.i65 ]
  %222 = load i32** @xdr3dfcoord.ip, align 8, !tbaa !18
  store i32 9, i32* %smallidx, align 4, !tbaa !23
  br label %226

; <label>:223                                     ; preds = %226
  %224 = trunc i64 %indvars.iv.next165 to i32
  store i32 %224, i32* %smallidx, align 4, !tbaa !23
  %225 = icmp ult i32 %224, 73
  br i1 %225, label %226, label %.critedge

; <label>:226                                     ; preds = %sizeofint.exit67, %223
  %indvars.iv164 = phi i64 [ 9, %sizeofint.exit67 ], [ %indvars.iv.next165, %223 ]
  %227 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %indvars.iv164
  %228 = load i32* %227, align 4, !tbaa !23
  %229 = icmp slt i32 %228, %mindiff.1
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  br i1 %229, label %223, label %.critedge

.critedge:                                        ; preds = %223, %226
  %230 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %smallidx) #10
  %231 = load i32* %smallidx, align 4, !tbaa !23
  %232 = add nsw i32 %231, 8
  %233 = icmp ugt i32 %232, 73
  %. = select i1 %233, i32 73, i32 %232
  %234 = add nsw i32 %., -8
  %235 = icmp slt i32 %231, 10
  %236 = add nsw i32 %231, -1
  %237 = sext i32 %236 to i64
  %238 = select i1 %235, i64 9, i64 %237
  %239 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %238
  %240 = load i32* %239, align 4, !tbaa !23
  %241 = sdiv i32 %240, 2
  %242 = sext i32 %231 to i64
  %243 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %242
  %244 = load i32* %243, align 4, !tbaa !23
  %245 = sdiv i32 %244, 2
  %246 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 2
  store i32 %244, i32* %246, align 4, !tbaa !23
  %247 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 1
  store i32 %244, i32* %247, align 4, !tbaa !23
  %248 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 0
  store i32 %244, i32* %248, align 4, !tbaa !23
  %249 = sext i32 %. to i64
  %250 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %249
  %251 = load i32* %250, align 4, !tbaa !23
  %252 = sdiv i32 %251, 2
  %253 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 0
  %254 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 1
  %255 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 2
  %256 = icmp eq i32 %bitsize.0, 0
  br label %.outer

.outer:                                           ; preds = %424, %.critedge
  %smallnum.0.ph = phi i32 [ %smallnum.1, %424 ], [ %245, %.critedge ]
  %smaller.0.ph = phi i32 [ %smaller.1, %424 ], [ %241, %.critedge ]
  %i.0.ph = phi i32 [ %i.1.lcssa, %424 ], [ 0, %.critedge ]
  %prevrun.0.ph = phi i32 [ %prevrun.1, %424 ], [ -1, %.critedge ]
  %prevcoord.sroa.26.0.ph = phi i32 [ %prevcoord.sroa.26.1.lcssa, %424 ], [ undef, %.critedge ]
  %prevcoord.sroa.13.0.ph = phi i32 [ %prevcoord.sroa.13.1.lcssa, %424 ], [ undef, %.critedge ]
  %prevcoord.sroa.0.0.ph = phi i32 [ %prevcoord.sroa.0.1.lcssa, %424 ], [ undef, %.critedge ]
  %257 = mul nsw i32 %smaller.0.ph, %smaller.0.ph
  br label %258

; <label>:258                                     ; preds = %.outer, %._crit_edge
  %i.0 = phi i32 [ %i.1.lcssa, %._crit_edge ], [ %i.0.ph, %.outer ]
  %prevrun.0 = phi i32 [ %prevrun.1, %._crit_edge ], [ %prevrun.0.ph, %.outer ]
  %prevcoord.sroa.26.0 = phi i32 [ %prevcoord.sroa.26.1.lcssa, %._crit_edge ], [ %prevcoord.sroa.26.0.ph, %.outer ]
  %prevcoord.sroa.13.0 = phi i32 [ %prevcoord.sroa.13.1.lcssa, %._crit_edge ], [ %prevcoord.sroa.13.0.ph, %.outer ]
  %prevcoord.sroa.0.0 = phi i32 [ %prevcoord.sroa.0.1.lcssa, %._crit_edge ], [ %prevcoord.sroa.0.0.ph, %.outer ]
  %259 = load i32* %size, align 4, !tbaa !23
  %260 = icmp slt i32 %i.0, %259
  br i1 %260, label %261, label %426

; <label>:261                                     ; preds = %258
  %262 = mul nsw i32 %i.0, 3
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32* %222, i64 %263
  %265 = load i32* %smallidx, align 4, !tbaa !23
  %266 = icmp slt i32 %265, %.
  %267 = icmp sgt i32 %i.0, 0
  %or.cond = and i1 %267, %266
  br i1 %or.cond, label %268, label %285

; <label>:268                                     ; preds = %261
  %269 = load i32* %264, align 4, !tbaa !23
  %270 = sub nsw i32 %269, %prevcoord.sroa.0.0
  %ispos33 = icmp sgt i32 %270, -1
  %neg34 = sub i32 0, %270
  %271 = select i1 %ispos33, i32 %270, i32 %neg34
  %272 = icmp slt i32 %271, %252
  br i1 %272, label %273, label %285

; <label>:273                                     ; preds = %268
  %.sum35 = add nsw i64 %263, 1
  %274 = getelementptr inbounds i32* %222, i64 %.sum35
  %275 = load i32* %274, align 4, !tbaa !23
  %276 = sub nsw i32 %275, %prevcoord.sroa.13.0
  %ispos36 = icmp sgt i32 %276, -1
  %neg37 = sub i32 0, %276
  %277 = select i1 %ispos36, i32 %276, i32 %neg37
  %278 = icmp slt i32 %277, %252
  br i1 %278, label %279, label %285

; <label>:279                                     ; preds = %273
  %.sum38 = add nsw i64 %263, 2
  %280 = getelementptr inbounds i32* %222, i64 %.sum38
  %281 = load i32* %280, align 4, !tbaa !23
  %282 = sub nsw i32 %281, %prevcoord.sroa.26.0
  %ispos39 = icmp sgt i32 %282, -1
  %neg40 = sub i32 0, %282
  %283 = select i1 %ispos39, i32 %282, i32 %neg40
  %284 = icmp slt i32 %283, %252
  br i1 %284, label %287, label %285

; <label>:285                                     ; preds = %279, %273, %268, %261
  %286 = icmp sgt i32 %265, %234
  %.50 = sext i1 %286 to i32
  br label %287

; <label>:287                                     ; preds = %285, %279
  %is_smaller.0 = phi i32 [ 1, %279 ], [ %.50, %285 ]
  %288 = add nsw i32 %i.0, 1
  %289 = icmp slt i32 %288, %259
  %290 = load i32* %264, align 4, !tbaa !23
  br i1 %289, label %291, label %._crit_edge173

; <label>:291                                     ; preds = %287
  %.sum22 = add nsw i64 %263, 3
  %292 = getelementptr inbounds i32* %222, i64 %.sum22
  %293 = load i32* %292, align 4, !tbaa !23
  %294 = sub nsw i32 %290, %293
  %ispos23 = icmp sgt i32 %294, -1
  %neg24 = sub i32 0, %294
  %295 = select i1 %ispos23, i32 %294, i32 %neg24
  %296 = icmp slt i32 %295, %smallnum.0.ph
  br i1 %296, label %297, label %._crit_edge173

; <label>:297                                     ; preds = %291
  %.sum25 = add nsw i64 %263, 1
  %298 = getelementptr inbounds i32* %222, i64 %.sum25
  %299 = load i32* %298, align 4, !tbaa !23
  %.sum26 = add nsw i64 %263, 4
  %300 = getelementptr inbounds i32* %222, i64 %.sum26
  %301 = load i32* %300, align 4, !tbaa !23
  %302 = sub nsw i32 %299, %301
  %ispos27 = icmp sgt i32 %302, -1
  %neg28 = sub i32 0, %302
  %303 = select i1 %ispos27, i32 %302, i32 %neg28
  %304 = icmp slt i32 %303, %smallnum.0.ph
  br i1 %304, label %305, label %._crit_edge173

; <label>:305                                     ; preds = %297
  %.sum29 = add nsw i64 %263, 2
  %306 = getelementptr inbounds i32* %222, i64 %.sum29
  %307 = load i32* %306, align 4, !tbaa !23
  %.sum30 = add nsw i64 %263, 5
  %308 = getelementptr inbounds i32* %222, i64 %.sum30
  %309 = load i32* %308, align 4, !tbaa !23
  %310 = sub nsw i32 %307, %309
  %ispos31 = icmp sgt i32 %310, -1
  %neg32 = sub i32 0, %310
  %311 = select i1 %ispos31, i32 %310, i32 %neg32
  %312 = icmp slt i32 %311, %smallnum.0.ph
  br i1 %312, label %313, label %._crit_edge173

; <label>:313                                     ; preds = %305
  store i32 %293, i32* %264, align 4, !tbaa !23
  store i32 %290, i32* %292, align 4, !tbaa !23
  store i32 %301, i32* %298, align 4, !tbaa !23
  store i32 %299, i32* %300, align 4, !tbaa !23
  store i32 %309, i32* %306, align 4, !tbaa !23
  store i32 %307, i32* %308, align 4, !tbaa !23
  br label %._crit_edge173

._crit_edge173:                                   ; preds = %287, %291, %297, %305, %313
  %314 = phi i32 [ %293, %313 ], [ %290, %305 ], [ %290, %297 ], [ %290, %291 ], [ %290, %287 ]
  %is_small.0 = phi i32 [ 1, %313 ], [ 0, %305 ], [ 0, %297 ], [ 0, %291 ], [ 0, %287 ]
  %315 = load i32* %83, align 4, !tbaa !23
  %316 = sub nsw i32 %314, %315
  store i32 %316, i32* %253, align 16, !tbaa !23
  %.sum15 = add nsw i64 %263, 1
  %317 = getelementptr inbounds i32* %222, i64 %.sum15
  %318 = load i32* %317, align 4, !tbaa !23
  %319 = load i32* %82, align 4, !tbaa !23
  %320 = sub nsw i32 %318, %319
  store i32 %320, i32* %254, align 4, !tbaa !23
  %.sum16 = add nsw i64 %263, 2
  %321 = getelementptr inbounds i32* %222, i64 %.sum16
  %322 = load i32* %321, align 4, !tbaa !23
  %323 = load i32* %81, align 4, !tbaa !23
  %324 = sub nsw i32 %322, %323
  store i32 %324, i32* %255, align 8, !tbaa !23
  %325 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  br i1 %256, label %326, label %329

; <label>:326                                     ; preds = %._crit_edge173
  call fastcc void @sendbits(i32* %325, i32 %bitsizeint.sroa.0.0, i32 %316) #13
  %327 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  call fastcc void @sendbits(i32* %327, i32 %bitsizeint.sroa.4.0, i32 %320) #13
  %328 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  call fastcc void @sendbits(i32* %328, i32 %bitsizeint.sroa.8.0, i32 %324) #13
  br label %330

; <label>:329                                     ; preds = %._crit_edge173
  call fastcc void @sendints(i32* %325, i32 %bitsize.0, i32* %200, i32* %253) #13
  br label %330

; <label>:330                                     ; preds = %329, %326
  %331 = load i32* %264, align 4, !tbaa !23
  %332 = load i32* %317, align 4, !tbaa !23
  %333 = load i32* %321, align 4, !tbaa !23
  %334 = icmp eq i32 %is_small.0, 0
  %335 = icmp eq i32 %is_smaller.0, -1
  %or.cond3 = and i1 %335, %334
  %.is_smaller.0 = select i1 %or.cond3, i32 0, i32 %is_smaller.0
  br i1 %334, label %.critedge4, label %.lr.ph126

.lr.ph126:                                        ; preds = %330
  %.sum17 = add nsw i64 %263, 3
  %336 = getelementptr inbounds i32* %222, i64 %.sum17
  br label %337

; <label>:337                                     ; preds = %.lr.ph126, %.backedge
  %indvars.iv = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next, %.backedge ]
  %prevcoord.sroa.0.1125 = phi i32 [ %331, %.lr.ph126 ], [ %368, %.backedge ]
  %prevcoord.sroa.13.1124 = phi i32 [ %332, %.lr.ph126 ], [ %369, %.backedge ]
  %prevcoord.sroa.26.1123 = phi i32 [ %333, %.lr.ph126 ], [ %370, %.backedge ]
  %thiscoord.0122 = phi i32* [ %336, %.lr.ph126 ], [ %372, %.backedge ]
  %is_smaller.1120 = phi i32 [ %.is_smaller.0, %.lr.ph126 ], [ %is_smaller.2, %.backedge ]
  %i.1119 = phi i32 [ %288, %.lr.ph126 ], [ %371, %.backedge ]
  %338 = icmp eq i32 %is_smaller.1120, -1
  %339 = load i32* %thiscoord.0122, align 4, !tbaa !23
  br i1 %338, label %340, label %._crit_edge175

._crit_edge175:                                   ; preds = %337
  %.pre191 = getelementptr inbounds i32* %thiscoord.0122, i64 1
  %.pre193 = getelementptr inbounds i32* %thiscoord.0122, i64 2
  br label %354

; <label>:340                                     ; preds = %337
  %341 = sub nsw i32 %339, %prevcoord.sroa.0.1125
  %342 = mul nsw i32 %341, %341
  %343 = getelementptr inbounds i32* %thiscoord.0122, i64 1
  %344 = load i32* %343, align 4, !tbaa !23
  %345 = sub nsw i32 %344, %prevcoord.sroa.13.1124
  %346 = mul nsw i32 %345, %345
  %347 = add nuw nsw i32 %346, %342
  %348 = getelementptr inbounds i32* %thiscoord.0122, i64 2
  %349 = load i32* %348, align 4, !tbaa !23
  %350 = sub nsw i32 %349, %prevcoord.sroa.26.1123
  %351 = mul nsw i32 %350, %350
  %352 = add nuw nsw i32 %347, %351
  %353 = icmp ult i32 %352, %257
  %is_smaller.1. = sext i1 %353 to i32
  br label %354

; <label>:354                                     ; preds = %._crit_edge175, %340
  %.pre-phi194 = phi i32* [ %.pre193, %._crit_edge175 ], [ %348, %340 ]
  %.pre-phi192 = phi i32* [ %.pre191, %._crit_edge175 ], [ %343, %340 ]
  %is_smaller.2 = phi i32 [ %is_smaller.1120, %._crit_edge175 ], [ %is_smaller.1., %340 ]
  %355 = sub i32 %smallnum.0.ph, %prevcoord.sroa.0.1125
  %356 = add i32 %355, %339
  %357 = add nuw nsw i64 %indvars.iv, 1
  %358 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %indvars.iv
  store i32 %356, i32* %358, align 4, !tbaa !23
  %359 = load i32* %.pre-phi192, align 4, !tbaa !23
  %360 = sub i32 %smallnum.0.ph, %prevcoord.sroa.13.1124
  %361 = add i32 %360, %359
  %362 = add nuw nsw i64 %indvars.iv, 2
  %363 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %357
  store i32 %361, i32* %363, align 4, !tbaa !23
  %364 = load i32* %.pre-phi194, align 4, !tbaa !23
  %365 = sub i32 %smallnum.0.ph, %prevcoord.sroa.26.1123
  %366 = add i32 %365, %364
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %367 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %362
  store i32 %366, i32* %367, align 4, !tbaa !23
  %368 = load i32* %thiscoord.0122, align 4, !tbaa !23
  %369 = load i32* %.pre-phi192, align 4, !tbaa !23
  %370 = load i32* %.pre-phi194, align 4, !tbaa !23
  %371 = add nsw i32 %i.1119, 1
  %372 = getelementptr inbounds i32* %thiscoord.0122, i64 3
  %373 = load i32* %size, align 4, !tbaa !23
  %374 = icmp slt i32 %371, %373
  br i1 %374, label %375, label %..critedge4_crit_edge

; <label>:375                                     ; preds = %354
  %376 = load i32* %372, align 4, !tbaa !23
  %377 = sub nsw i32 %376, %368
  %ispos = icmp sgt i32 %377, -1
  %neg = sub i32 0, %377
  %378 = select i1 %ispos, i32 %377, i32 %neg
  %379 = icmp slt i32 %378, %smallnum.0.ph
  br i1 %379, label %380, label %..critedge4_crit_edge

; <label>:380                                     ; preds = %375
  %381 = getelementptr inbounds i32* %thiscoord.0122, i64 4
  %382 = load i32* %381, align 4, !tbaa !23
  %383 = sub nsw i32 %382, %369
  %ispos18 = icmp sgt i32 %383, -1
  %neg19 = sub i32 0, %383
  %384 = select i1 %ispos18, i32 %383, i32 %neg19
  %385 = icmp slt i32 %384, %smallnum.0.ph
  br i1 %385, label %.backedge, label %..critedge4_crit_edge

.backedge:                                        ; preds = %380
  %386 = getelementptr inbounds i32* %thiscoord.0122, i64 5
  %387 = load i32* %386, align 4, !tbaa !23
  %388 = sub nsw i32 %387, %370
  %ispos20 = icmp sgt i32 %388, -1
  %neg21 = sub i32 0, %388
  %389 = select i1 %ispos20, i32 %388, i32 %neg21
  %390 = icmp slt i32 %389, %smallnum.0.ph
  %391 = icmp slt i64 %indvars.iv.next, 24
  %or.cond8 = and i1 %390, %391
  br i1 %or.cond8, label %337, label %..critedge4_crit_edge

..critedge4_crit_edge:                            ; preds = %354, %375, %380, %.backedge
  %392 = trunc i64 %indvars.iv.next to i32
  br label %.critedge4

.critedge4:                                       ; preds = %330, %..critedge4_crit_edge
  %prevcoord.sroa.0.1.lcssa = phi i32 [ %368, %..critedge4_crit_edge ], [ %331, %330 ]
  %prevcoord.sroa.13.1.lcssa = phi i32 [ %369, %..critedge4_crit_edge ], [ %332, %330 ]
  %prevcoord.sroa.26.1.lcssa = phi i32 [ %370, %..critedge4_crit_edge ], [ %333, %330 ]
  %run.0.lcssa = phi i32 [ %392, %..critedge4_crit_edge ], [ 0, %330 ]
  %is_smaller.1.lcssa = phi i32 [ %is_smaller.2, %..critedge4_crit_edge ], [ %.is_smaller.0, %330 ]
  %i.1.lcssa = phi i32 [ %371, %..critedge4_crit_edge ], [ %288, %330 ]
  %393 = icmp ne i32 %run.0.lcssa, %prevrun.0
  %394 = icmp ne i32 %is_smaller.1.lcssa, 0
  %or.cond6 = or i1 %394, %393
  %395 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  br i1 %or.cond6, label %396, label %400

; <label>:396                                     ; preds = %.critedge4
  call fastcc void @sendbits(i32* %395, i32 1, i32 1) #13
  %397 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  %398 = add i32 %is_smaller.1.lcssa, 1
  %399 = add i32 %398, %run.0.lcssa
  call fastcc void @sendbits(i32* %397, i32 5, i32 %399) #13
  br label %401

; <label>:400                                     ; preds = %.critedge4
  call fastcc void @sendbits(i32* %395, i32 1, i32 0) #13
  br label %401

; <label>:401                                     ; preds = %400, %396
  %prevrun.1 = phi i32 [ %run.0.lcssa, %396 ], [ %prevrun.0, %400 ]
  %402 = icmp sgt i32 %run.0.lcssa, 0
  br i1 %402, label %.lr.ph134, label %._crit_edge

.lr.ph134:                                        ; preds = %401
  %403 = sext i32 %run.0.lcssa to i64
  br label %404

; <label>:404                                     ; preds = %.lr.ph134, %404
  %indvars.iv162 = phi i64 [ 0, %.lr.ph134 ], [ %indvars.iv.next163, %404 ]
  %405 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  %406 = load i32* %smallidx, align 4, !tbaa !23
  %407 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %indvars.iv162
  call fastcc void @sendints(i32* %405, i32 %406, i32* %248, i32* %407) #13
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 3
  %408 = icmp slt i64 %indvars.iv.next163, %403
  br i1 %408, label %404, label %._crit_edge

._crit_edge:                                      ; preds = %404, %401
  br i1 %394, label %409, label %258

; <label>:409                                     ; preds = %._crit_edge
  %410 = load i32* %smallidx, align 4, !tbaa !23
  %411 = add nsw i32 %410, %is_smaller.1.lcssa
  store i32 %411, i32* %smallidx, align 4, !tbaa !23
  %412 = icmp slt i32 %is_smaller.1.lcssa, 0
  br i1 %412, label %413, label %419

; <label>:413                                     ; preds = %409
  %414 = add nsw i32 %411, -1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %415
  %417 = load i32* %416, align 4, !tbaa !23
  %418 = sdiv i32 %417, 2
  %.pre177 = sext i32 %411 to i64
  %.phi.trans.insert = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %.pre177
  %.pre178 = load i32* %.phi.trans.insert, align 4, !tbaa !23
  br label %424

; <label>:419                                     ; preds = %409
  %420 = sext i32 %411 to i64
  %421 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %420
  %422 = load i32* %421, align 4, !tbaa !23
  %423 = sdiv i32 %422, 2
  br label %424

; <label>:424                                     ; preds = %419, %413
  %425 = phi i32 [ %422, %419 ], [ %.pre178, %413 ]
  %smallnum.1 = phi i32 [ %423, %419 ], [ %smaller.0.ph, %413 ]
  %smaller.1 = phi i32 [ %smallnum.0.ph, %419 ], [ %418, %413 ]
  store i32 %425, i32* %246, align 4, !tbaa !23
  store i32 %425, i32* %247, align 4, !tbaa !23
  store i32 %425, i32* %248, align 4, !tbaa !23
  br label %.outer

; <label>:426                                     ; preds = %258
  %427 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  %428 = getelementptr inbounds i32* %427, i64 1
  %429 = load i32* %428, align 4, !tbaa !23
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %434, label %431

; <label>:431                                     ; preds = %426
  %432 = load i32* %427, align 4, !tbaa !23
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %427, align 4, !tbaa !23
  br label %434

; <label>:434                                     ; preds = %426, %431
  %435 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %427) #10
  %436 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  %437 = getelementptr inbounds i32* %436, i64 3
  %438 = bitcast i32* %437 to i8*
  %439 = load i32* %436, align 4, !tbaa !23
  %440 = call i32 @xdr_opaque(%struct.XDR* %xdrs, i8* %438, i32 %439) #10
  %441 = mul nsw i32 %440, %errval.4
  br label %.loopexit95

; <label>:442                                     ; preds = %11
  %443 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %lsize) #10
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %.loopexit95, label %445

; <label>:445                                     ; preds = %442
  %446 = load i32* %size, align 4, !tbaa !23
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %thread-pre-split, label %448

; <label>:448                                     ; preds = %445
  %449 = load i32* %lsize, align 4, !tbaa !23
  %450 = icmp eq i32 %449, %446
  br i1 %450, label %454, label %451

; <label>:451                                     ; preds = %448
  %452 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %453 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %452, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), i32 %446, i32 %449) #10
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %451, %445
  %.pr = load i32* %lsize, align 4, !tbaa !23
  br label %454

; <label>:454                                     ; preds = %thread-pre-split, %448
  %455 = phi i32 [ %.pr, %thread-pre-split ], [ %446, %448 ]
  store i32 %455, i32* %size, align 4, !tbaa !23
  %456 = mul nsw i32 %455, 3
  %457 = icmp slt i32 %455, 10
  br i1 %457, label %458, label %461

; <label>:458                                     ; preds = %454
  %459 = bitcast float* %fp to i8*
  %460 = call i32 @xdr_vector(%struct.XDR* %xdrs, i8* %459, i32 %456, i32 4, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, float*)* @xdr_float to i32 (%struct.XDR*, i8*, ...)*)) #10
  br label %.loopexit95

; <label>:461                                     ; preds = %454
  %462 = call i32 @xdr_float(%struct.XDR* %xdrs, float* %precision) #10
  %463 = load i32** @xdr3dfcoord.ip, align 8, !tbaa !18
  %464 = icmp eq i32* %463, null
  br i1 %464, label %465, label %487

; <label>:465                                     ; preds = %461
  %466 = zext i32 %456 to i64
  %467 = shl nuw nsw i64 %466, 2
  %468 = call i8* @malloc(i64 %467) #10
  store i8* %468, i8** bitcast (i32** @xdr3dfcoord.ip to i8**), align 8, !tbaa !18
  %469 = icmp eq i8* %468, null
  br i1 %469, label %470, label %473

; <label>:470                                     ; preds = %465
  %471 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %472 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %471)
  call void @exit(i32 1) #11
  unreachable

; <label>:473                                     ; preds = %465
  %474 = uitofp i32 %456 to double
  %475 = fmul double %474, 1.200000e+00
  %476 = fptosi double %475 to i32
  %477 = sext i32 %476 to i64
  %478 = shl nsw i64 %477, 2
  %479 = call i8* @malloc(i64 %478) #10
  store i8* %479, i8** bitcast (i32** @xdr3dfcoord.buf to i8**), align 8, !tbaa !18
  %480 = icmp eq i8* %479, null
  br i1 %480, label %481, label %484

; <label>:481                                     ; preds = %473
  %482 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %483 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %482)
  call void @exit(i32 1) #11
  unreachable

; <label>:484                                     ; preds = %473
  %485 = bitcast i8* %479 to i32*
  %486 = load i32* %size, align 4, !tbaa !23
  store i32 %486, i32* @xdr3dfcoord.oldsize, align 4, !tbaa !23
  br label %515

; <label>:487                                     ; preds = %461
  %488 = load i32* %size, align 4, !tbaa !23
  %489 = load i32* @xdr3dfcoord.oldsize, align 4, !tbaa !23
  %490 = icmp sgt i32 %488, %489
  br i1 %490, label %491, label %._crit_edge179

._crit_edge179:                                   ; preds = %487
  %.pre180 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  br label %515

; <label>:491                                     ; preds = %487
  %492 = bitcast i32* %463 to i8*
  %493 = zext i32 %456 to i64
  %494 = shl nuw nsw i64 %493, 2
  %495 = call i8* @realloc(i8* %492, i64 %494) #10
  store i8* %495, i8** bitcast (i32** @xdr3dfcoord.ip to i8**), align 8, !tbaa !18
  %496 = icmp eq i8* %495, null
  br i1 %496, label %497, label %500

; <label>:497                                     ; preds = %491
  %498 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %499 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %498)
  call void @exit(i32 1) #11
  unreachable

; <label>:500                                     ; preds = %491
  %501 = uitofp i32 %456 to double
  %502 = fmul double %501, 1.200000e+00
  %503 = fptosi double %502 to i32
  %504 = load i8** bitcast (i32** @xdr3dfcoord.buf to i8**), align 8, !tbaa !18
  %505 = sext i32 %503 to i64
  %506 = shl nsw i64 %505, 2
  %507 = call i8* @realloc(i8* %504, i64 %506) #10
  store i8* %507, i8** bitcast (i32** @xdr3dfcoord.buf to i8**), align 8, !tbaa !18
  %508 = icmp eq i8* %507, null
  br i1 %508, label %509, label %512

; <label>:509                                     ; preds = %500
  %510 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %511 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %510)
  call void @exit(i32 1) #11
  unreachable

; <label>:512                                     ; preds = %500
  %513 = bitcast i8* %507 to i32*
  %514 = load i32* %size, align 4, !tbaa !23
  store i32 %514, i32* @xdr3dfcoord.oldsize, align 4, !tbaa !23
  br label %515

; <label>:515                                     ; preds = %._crit_edge179, %512, %484
  %516 = phi i32* [ %.pre180, %._crit_edge179 ], [ %513, %512 ], [ %485, %484 ]
  %517 = getelementptr inbounds i32* %516, i64 2
  store i32 0, i32* %517, align 4, !tbaa !23
  %518 = getelementptr inbounds i32* %516, i64 1
  store i32 0, i32* %518, align 4, !tbaa !23
  store i32 0, i32* %516, align 4, !tbaa !23
  %519 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 0
  %520 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %519) #10
  %521 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 1
  %522 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %521) #10
  %523 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 2
  %524 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %523) #10
  %525 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 0
  %526 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %525) #10
  %527 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 1
  %528 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %527) #10
  %529 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 2
  %530 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %529) #10
  %531 = load i32* %525, align 4, !tbaa !23
  %532 = load i32* %519, align 4, !tbaa !23
  %533 = add i32 %531, 1
  %534 = sub i32 %533, %532
  %535 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 0
  store i32 %534, i32* %535, align 4, !tbaa !23
  %536 = load i32* %527, align 4, !tbaa !23
  %537 = load i32* %521, align 4, !tbaa !23
  %538 = add i32 %536, 1
  %539 = sub i32 %538, %537
  %540 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 1
  store i32 %539, i32* %540, align 4, !tbaa !23
  %541 = load i32* %529, align 4, !tbaa !23
  %542 = load i32* %523, align 4, !tbaa !23
  %543 = sub nsw i32 %541, %542
  %544 = add nsw i32 %543, 1
  %545 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 2
  store i32 %544, i32* %545, align 4, !tbaa !23
  %546 = or i32 %539, %534
  %547 = or i32 %546, %544
  %548 = icmp ugt i32 %547, 16777215
  br i1 %548, label %549, label %559

; <label>:549                                     ; preds = %515
  %not.1.i68 = icmp eq i32 %533, %532
  br i1 %not.1.i68, label %sizeofint.exit75, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %549, %.lr.ph.i73
  %num_of_bits.03.i69 = phi i32 [ %550, %.lr.ph.i73 ], [ 0, %549 ]
  %num.02.i70 = phi i32 [ %551, %.lr.ph.i73 ], [ 1, %549 ]
  %550 = add nuw nsw i32 %num_of_bits.03.i69, 1
  %551 = shl i32 %num.02.i70, 1
  %552 = icmp slt i32 %550, 32
  %not..i71 = icmp ule i32 %551, %534
  %..i72 = and i1 %552, %not..i71
  br i1 %..i72, label %.lr.ph.i73, label %sizeofint.exit75

sizeofint.exit75:                                 ; preds = %.lr.ph.i73, %549
  %num_of_bits.0.lcssa.i74 = phi i32 [ 0, %549 ], [ %550, %.lr.ph.i73 ]
  %not.1.i76 = icmp eq i32 %538, %537
  br i1 %not.1.i76, label %sizeofint.exit83, label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %sizeofint.exit75, %.lr.ph.i81
  %num_of_bits.03.i77 = phi i32 [ %553, %.lr.ph.i81 ], [ 0, %sizeofint.exit75 ]
  %num.02.i78 = phi i32 [ %554, %.lr.ph.i81 ], [ 1, %sizeofint.exit75 ]
  %553 = add nuw nsw i32 %num_of_bits.03.i77, 1
  %554 = shl i32 %num.02.i78, 1
  %555 = icmp slt i32 %553, 32
  %not..i79 = icmp ule i32 %554, %539
  %..i80 = and i1 %555, %not..i79
  br i1 %..i80, label %.lr.ph.i81, label %sizeofint.exit83

sizeofint.exit83:                                 ; preds = %.lr.ph.i81, %sizeofint.exit75
  %num_of_bits.0.lcssa.i82 = phi i32 [ 0, %sizeofint.exit75 ], [ %553, %.lr.ph.i81 ]
  %not.1.i84 = icmp eq i32 %544, 0
  br i1 %not.1.i84, label %sizeofint.exit91, label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %sizeofint.exit83, %.lr.ph.i89
  %num_of_bits.03.i85 = phi i32 [ %556, %.lr.ph.i89 ], [ 0, %sizeofint.exit83 ]
  %num.02.i86 = phi i32 [ %557, %.lr.ph.i89 ], [ 1, %sizeofint.exit83 ]
  %556 = add nuw nsw i32 %num_of_bits.03.i85, 1
  %557 = shl i32 %num.02.i86, 1
  %558 = icmp slt i32 %556, 32
  %not..i87 = icmp ule i32 %557, %544
  %..i88 = and i1 %558, %not..i87
  br i1 %..i88, label %.lr.ph.i89, label %sizeofint.exit91

; <label>:559                                     ; preds = %515
  %560 = call fastcc i32 @sizeofints(i32* %535) #13
  br label %sizeofint.exit91

sizeofint.exit91:                                 ; preds = %.lr.ph.i89, %sizeofint.exit83, %559
  %bitsizeint.sroa.8.1 = phi i32 [ undef, %559 ], [ 0, %sizeofint.exit83 ], [ %556, %.lr.ph.i89 ]
  %bitsizeint.sroa.4.1 = phi i32 [ undef, %559 ], [ %num_of_bits.0.lcssa.i82, %sizeofint.exit83 ], [ %num_of_bits.0.lcssa.i82, %.lr.ph.i89 ]
  %bitsizeint.sroa.0.1 = phi i32 [ undef, %559 ], [ %num_of_bits.0.lcssa.i74, %sizeofint.exit83 ], [ %num_of_bits.0.lcssa.i74, %.lr.ph.i89 ]
  %bitsize.1 = phi i32 [ %560, %559 ], [ 0, %sizeofint.exit83 ], [ 0, %.lr.ph.i89 ]
  %561 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %smallidx) #10
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %.loopexit95, label %563

; <label>:563                                     ; preds = %sizeofint.exit91
  %564 = load i32* %smallidx, align 4, !tbaa !23
  %565 = icmp slt i32 %564, 10
  br i1 %565, label %568, label %566

; <label>:566                                     ; preds = %563
  %567 = add nsw i32 %564, -1
  %phitmp = sext i32 %567 to i64
  br label %568

; <label>:568                                     ; preds = %563, %566
  %569 = phi i64 [ %phitmp, %566 ], [ 9, %563 ]
  %570 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %569
  %571 = load i32* %570, align 4, !tbaa !23
  %572 = sdiv i32 %571, 2
  %573 = sext i32 %564 to i64
  %574 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %573
  %575 = load i32* %574, align 4, !tbaa !23
  %576 = sdiv i32 %575, 2
  %577 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 2
  store i32 %575, i32* %577, align 4, !tbaa !23
  %578 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 1
  store i32 %575, i32* %578, align 4, !tbaa !23
  %579 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 0
  store i32 %575, i32* %579, align 4, !tbaa !23
  %580 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  %581 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %580) #10
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %.loopexit95, label %583

; <label>:583                                     ; preds = %568
  %584 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  %585 = getelementptr inbounds i32* %584, i64 3
  %586 = bitcast i32* %585 to i8*
  %587 = load i32* %584, align 4, !tbaa !23
  %588 = call i32 @xdr_opaque(%struct.XDR* %xdrs, i8* %586, i32 %587) #10
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %.loopexit95, label %590

; <label>:590                                     ; preds = %583
  %591 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  %592 = getelementptr inbounds i32* %591, i64 2
  store i32 0, i32* %592, align 4, !tbaa !23
  %593 = getelementptr inbounds i32* %591, i64 1
  store i32 0, i32* %593, align 4, !tbaa !23
  store i32 0, i32* %591, align 4, !tbaa !23
  %594 = load float* %precision, align 4, !tbaa !2
  %595 = fdiv float 1.000000e+00, %594
  %596 = load i32** @xdr3dfcoord.ip, align 8, !tbaa !18
  %597 = load i32* %lsize, align 4, !tbaa !23
  %598 = icmp sgt i32 %597, 0
  br i1 %598, label %.lr.ph117, label %.loopexit95

.lr.ph117:                                        ; preds = %590
  %599 = icmp eq i32 %bitsize.1, 0
  br label %600

; <label>:600                                     ; preds = %._crit_edge181, %.lr.ph117
  %601 = phi i32* [ %591, %.lr.ph117 ], [ %.pre182, %._crit_edge181 ]
  %.pn = phi i32 [ %576, %.lr.ph117 ], [ %smallnum.3, %._crit_edge181 ]
  %lfp.1115 = phi float* [ %fp, %.lr.ph117 ], [ %lfp.4, %._crit_edge181 ]
  %run.1114 = phi i32 [ 0, %.lr.ph117 ], [ %run.2, %._crit_edge181 ]
  %i.2113 = phi i32 [ 0, %.lr.ph117 ], [ %i.4, %._crit_edge181 ]
  %smaller.2112 = phi i32 [ %572, %.lr.ph117 ], [ %smaller.3, %._crit_edge181 ]
  %602 = mul nsw i32 %i.2113, 3
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i32* %596, i64 %603
  br i1 %599, label %605, label %613

; <label>:605                                     ; preds = %600
  %606 = call fastcc i32 @receivebits(i32* %601, i32 %bitsizeint.sroa.0.1) #13
  store i32 %606, i32* %604, align 4, !tbaa !23
  %607 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  %608 = call fastcc i32 @receivebits(i32* %607, i32 %bitsizeint.sroa.4.1) #13
  %.sum13 = add nsw i64 %603, 1
  %609 = getelementptr inbounds i32* %596, i64 %.sum13
  store i32 %608, i32* %609, align 4, !tbaa !23
  %610 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  %611 = call fastcc i32 @receivebits(i32* %610, i32 %bitsizeint.sroa.8.1) #13
  %.sum14 = add nsw i64 %603, 2
  %612 = getelementptr inbounds i32* %596, i64 %.sum14
  store i32 %611, i32* %612, align 4, !tbaa !23
  br label %614

; <label>:613                                     ; preds = %600
  call fastcc void @receiveints(i32* %601, i32 %bitsize.1, i32* %535, i32* %604) #13
  %.pre183 = add nsw i64 %603, 1
  %.pre184 = add nsw i64 %603, 2
  br label %614

; <label>:614                                     ; preds = %613, %605
  %.sum9.pre-phi = phi i64 [ %.pre184, %613 ], [ %.sum14, %605 ]
  %.sum.pre-phi = phi i64 [ %.pre183, %613 ], [ %.sum13, %605 ]
  %615 = add nsw i32 %i.2113, 1
  %616 = load i32* %519, align 4, !tbaa !23
  %617 = load i32* %604, align 4, !tbaa !23
  %618 = add nsw i32 %617, %616
  store i32 %618, i32* %604, align 4, !tbaa !23
  %619 = load i32* %521, align 4, !tbaa !23
  %620 = getelementptr inbounds i32* %596, i64 %.sum.pre-phi
  %621 = load i32* %620, align 4, !tbaa !23
  %622 = add nsw i32 %621, %619
  store i32 %622, i32* %620, align 4, !tbaa !23
  %623 = load i32* %523, align 4, !tbaa !23
  %624 = getelementptr inbounds i32* %596, i64 %.sum9.pre-phi
  %625 = load i32* %624, align 4, !tbaa !23
  %626 = add nsw i32 %625, %623
  store i32 %626, i32* %624, align 4, !tbaa !23
  %627 = load i32* %604, align 4, !tbaa !23
  %628 = load i32* %620, align 4, !tbaa !23
  %629 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  %630 = call fastcc i32 @receivebits(i32* %629, i32 1) #13
  %631 = icmp eq i32 %630, 1
  br i1 %631, label %632, label %638

; <label>:632                                     ; preds = %614
  %633 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  %634 = call fastcc i32 @receivebits(i32* %633, i32 5) #13
  %635 = srem i32 %634, 3
  %636 = sub nsw i32 %634, %635
  %637 = add nsw i32 %635, -1
  br label %638

; <label>:638                                     ; preds = %632, %614
  %is_smaller.3 = phi i32 [ %637, %632 ], [ 0, %614 ]
  %run.2 = phi i32 [ %636, %632 ], [ %run.1114, %614 ]
  %639 = icmp sgt i32 %run.2, 0
  br i1 %639, label %.lr.ph, label %683

.lr.ph:                                           ; preds = %638
  %.sum10 = add nsw i64 %603, 3
  %640 = getelementptr inbounds i32* %596, i64 %.sum10
  %.sum11 = add nsw i64 %603, 4
  %641 = getelementptr inbounds i32* %596, i64 %.sum11
  %.sum12 = add nsw i64 %603, 5
  %642 = getelementptr inbounds i32* %596, i64 %.sum12
  %643 = add i32 %run.2, -1
  %644 = udiv i32 %643, 3
  br label %645

; <label>:645                                     ; preds = %.lr.ph, %668
  %prevcoord.sroa.0.2108 = phi i32 [ %627, %.lr.ph ], [ %650, %668 ]
  %prevcoord.sroa.13.2107 = phi i32 [ %628, %.lr.ph ], [ %653, %668 ]
  %prevcoord.sroa.26.2106 = phi i32 [ %626, %.lr.ph ], [ %656, %668 ]
  %lfp.2105 = phi float* [ %lfp.1115, %.lr.ph ], [ %680, %668 ]
  %k.1103 = phi i32 [ 0, %.lr.ph ], [ %681, %668 ]
  %646 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  %647 = load i32* %smallidx, align 4, !tbaa !23
  call fastcc void @receiveints(i32* %646, i32 %647, i32* %579, i32* %640) #13
  %648 = sub i32 %prevcoord.sroa.0.2108, %.pn
  %649 = load i32* %640, align 4, !tbaa !23
  %650 = add nsw i32 %648, %649
  store i32 %650, i32* %640, align 4, !tbaa !23
  %651 = sub i32 %prevcoord.sroa.13.2107, %.pn
  %652 = load i32* %641, align 4, !tbaa !23
  %653 = add nsw i32 %651, %652
  store i32 %653, i32* %641, align 4, !tbaa !23
  %654 = sub nsw i32 %prevcoord.sroa.26.2106, %.pn
  %655 = load i32* %642, align 4, !tbaa !23
  %656 = add nsw i32 %655, %654
  store i32 %656, i32* %642, align 4, !tbaa !23
  %657 = icmp eq i32 %k.1103, 0
  br i1 %657, label %658, label %668

; <label>:658                                     ; preds = %645
  store i32 %prevcoord.sroa.0.2108, i32* %640, align 4, !tbaa !23
  store i32 %prevcoord.sroa.13.2107, i32* %641, align 4, !tbaa !23
  store i32 %prevcoord.sroa.26.2106, i32* %642, align 4, !tbaa !23
  %659 = sitofp i32 %650 to float
  %660 = fmul float %595, %659
  %661 = getelementptr inbounds float* %lfp.2105, i64 1
  store float %660, float* %lfp.2105, align 4, !tbaa !2
  %662 = sitofp i32 %653 to float
  %663 = fmul float %595, %662
  %664 = getelementptr inbounds float* %lfp.2105, i64 2
  store float %663, float* %661, align 4, !tbaa !2
  %665 = sitofp i32 %656 to float
  %666 = fmul float %595, %665
  %667 = getelementptr inbounds float* %lfp.2105, i64 3
  store float %666, float* %664, align 4, !tbaa !2
  br label %668

; <label>:668                                     ; preds = %645, %658
  %669 = phi i32 [ %prevcoord.sroa.26.2106, %658 ], [ %656, %645 ]
  %670 = phi i32 [ %prevcoord.sroa.13.2107, %658 ], [ %653, %645 ]
  %671 = phi i32 [ %prevcoord.sroa.0.2108, %658 ], [ %650, %645 ]
  %lfp.3 = phi float* [ %667, %658 ], [ %lfp.2105, %645 ]
  %672 = sitofp i32 %671 to float
  %673 = fmul float %595, %672
  %674 = getelementptr inbounds float* %lfp.3, i64 1
  store float %673, float* %lfp.3, align 4, !tbaa !2
  %675 = sitofp i32 %670 to float
  %676 = fmul float %595, %675
  %677 = getelementptr inbounds float* %lfp.3, i64 2
  store float %676, float* %674, align 4, !tbaa !2
  %678 = sitofp i32 %669 to float
  %679 = fmul float %595, %678
  %680 = getelementptr inbounds float* %lfp.3, i64 3
  store float %679, float* %677, align 4, !tbaa !2
  %681 = add nuw nsw i32 %k.1103, 3
  %682 = icmp slt i32 %681, %run.2
  br i1 %682, label %645, label %.loopexit

; <label>:683                                     ; preds = %638
  %684 = load i32* %604, align 4, !tbaa !23
  %685 = sitofp i32 %684 to float
  %686 = fmul float %595, %685
  %687 = getelementptr inbounds float* %lfp.1115, i64 1
  store float %686, float* %lfp.1115, align 4, !tbaa !2
  %688 = load i32* %620, align 4, !tbaa !23
  %689 = sitofp i32 %688 to float
  %690 = fmul float %595, %689
  %691 = getelementptr inbounds float* %lfp.1115, i64 2
  store float %690, float* %687, align 4, !tbaa !2
  %692 = load i32* %624, align 4, !tbaa !23
  %693 = sitofp i32 %692 to float
  %694 = fmul float %595, %693
  %695 = getelementptr inbounds float* %lfp.1115, i64 3
  store float %694, float* %691, align 4, !tbaa !2
  br label %698

.loopexit:                                        ; preds = %668
  %696 = add i32 %i.2113, 2
  %697 = add i32 %696, %644
  br label %698

; <label>:698                                     ; preds = %.loopexit, %683
  %i.4 = phi i32 [ %615, %683 ], [ %697, %.loopexit ]
  %lfp.4 = phi float* [ %695, %683 ], [ %680, %.loopexit ]
  %699 = load i32* %smallidx, align 4, !tbaa !23
  %700 = add nsw i32 %699, %is_smaller.3
  store i32 %700, i32* %smallidx, align 4, !tbaa !23
  %701 = icmp slt i32 %is_smaller.3, 0
  br i1 %701, label %702, label %710

; <label>:702                                     ; preds = %698
  %703 = icmp sgt i32 %700, 9
  br i1 %703, label %704, label %717

; <label>:704                                     ; preds = %702
  %705 = add nsw i32 %700, -1
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %706
  %708 = load i32* %707, align 4, !tbaa !23
  %709 = sdiv i32 %708, 2
  br label %717

; <label>:710                                     ; preds = %698
  %711 = icmp sgt i32 %is_smaller.3, 0
  br i1 %711, label %712, label %717

; <label>:712                                     ; preds = %710
  %713 = sext i32 %700 to i64
  %714 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %713
  %715 = load i32* %714, align 4, !tbaa !23
  %716 = sdiv i32 %715, 2
  br label %717

; <label>:717                                     ; preds = %702, %710, %712, %704
  %smallnum.3 = phi i32 [ %smaller.2112, %704 ], [ %716, %712 ], [ %.pn, %710 ], [ %smaller.2112, %702 ]
  %smaller.3 = phi i32 [ %709, %704 ], [ %.pn, %712 ], [ %smaller.2112, %710 ], [ 0, %702 ]
  %718 = sext i32 %700 to i64
  %719 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %718
  %720 = load i32* %719, align 4, !tbaa !23
  store i32 %720, i32* %577, align 4, !tbaa !23
  store i32 %720, i32* %578, align 4, !tbaa !23
  store i32 %720, i32* %579, align 4, !tbaa !23
  %721 = load i32* %lsize, align 4, !tbaa !23
  %722 = icmp slt i32 %i.4, %721
  br i1 %722, label %._crit_edge181, label %.loopexit95

._crit_edge181:                                   ; preds = %717
  %.pre182 = load i32** @xdr3dfcoord.buf, align 8, !tbaa !18
  br label %600

.loopexit95:                                      ; preds = %717, %590, %583, %568, %sizeofint.exit91, %442, %14, %458, %434, %21
  %.0 = phi i32 [ %23, %21 ], [ %441, %434 ], [ %460, %458 ], [ 0, %14 ], [ 0, %442 ], [ 0, %sizeofint.exit91 ], [ 0, %568 ], [ 0, %583 ], [ 1, %590 ], [ 1, %717 ]
  call void @llvm.lifetime.end(i64 120, i8* %1) #7
  ret i32 %.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i32 @xdr_int(%struct.XDR*, i32*) #3

; Function Attrs: optsize
declare i32 @xdr_vector(%struct.XDR*, i8*, i32, i32, i32 (%struct.XDR*, i8*, ...)*) #3

; Function Attrs: optsize
declare i32 @xdr_float(%struct.XDR*, float*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #5

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @sizeofints(i32* nocapture readonly %sizes) #8 {
  %bytes = alloca [32 x i32], align 16
  %1 = bitcast [32 x i32]* %bytes to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #7
  %2 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 0
  store i32 1, i32* %2, align 16, !tbaa !23
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge12, %0
  %indvars.iv19 = phi i64 [ 0, %0 ], [ %indvars.iv.next20, %._crit_edge12 ]
  %num_of_bytes.014 = phi i32 [ 1, %0 ], [ %bytecnt.1.lcssa, %._crit_edge12 ]
  %3 = icmp eq i32 %num_of_bytes.014, 0
  br i1 %3, label %._crit_edge12, label %.lr.ph6

.lr.ph6:                                          ; preds = %.preheader1
  %4 = getelementptr inbounds i32* %sizes, i64 %indvars.iv19
  %5 = load i32* %4, align 4, !tbaa !23
  %6 = add i32 %num_of_bytes.014, -1
  br label %8

.preheader:                                       ; preds = %8
  %7 = icmp eq i32 %14, 0
  br i1 %7, label %._crit_edge12, label %.lr.ph11

; <label>:8                                       ; preds = %8, %.lr.ph6
  %indvars.iv = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next, %8 ]
  %tmp.05 = phi i32 [ 0, %.lr.ph6 ], [ %14, %8 ]
  %9 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv
  %10 = load i32* %9, align 4, !tbaa !23
  %11 = mul i32 %5, %10
  %12 = add i32 %11, %tmp.05
  %13 = and i32 %12, 255
  store i32 %13, i32* %9, align 4, !tbaa !23
  %14 = lshr i32 %12, 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond, label %.preheader, label %8

.lr.ph11:                                         ; preds = %.preheader, %.lr.ph11
  %tmp.110 = phi i32 [ %19, %.lr.ph11 ], [ %14, %.preheader ]
  %bytecnt.19 = phi i32 [ %16, %.lr.ph11 ], [ %num_of_bytes.014, %.preheader ]
  %15 = and i32 %tmp.110, 255
  %16 = add i32 %bytecnt.19, 1
  %17 = zext i32 %bytecnt.19 to i64
  %18 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %17
  store i32 %15, i32* %18, align 4, !tbaa !23
  %19 = lshr i32 %tmp.110, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %._crit_edge12, label %.lr.ph11

._crit_edge12:                                    ; preds = %.lr.ph11, %.preheader1, %.preheader
  %bytecnt.1.lcssa = phi i32 [ %num_of_bytes.014, %.preheader ], [ 0, %.preheader1 ], [ %16, %.lr.ph11 ]
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond21 = icmp eq i64 %indvars.iv.next20, 3
  br i1 %exitcond21, label %21, label %.preheader1

; <label>:21                                      ; preds = %._crit_edge12
  %22 = add i32 %bytecnt.1.lcssa, -1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %23
  %25 = load i32* %24, align 4, !tbaa !23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %21, %.lr.ph
  %num_of_bits.03 = phi i32 [ %27, %.lr.ph ], [ 0, %21 ]
  %num.02 = phi i32 [ %28, %.lr.ph ], [ 1, %21 ]
  %27 = add i32 %num_of_bits.03, 1
  %28 = shl nsw i32 %num.02, 1
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %21
  %num_of_bits.0.lcssa = phi i32 [ 0, %21 ], [ %27, %.lr.ph ]
  %30 = shl i32 %22, 3
  %31 = add i32 %num_of_bits.0.lcssa, %30
  call void @llvm.lifetime.end(i64 128, i8* %1) #7
  ret i32 %31
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @sendbits(i32* nocapture %buf, i32 %num_of_bits, i32 %num) #4 {
  %1 = getelementptr inbounds i32* %buf, i64 3
  %2 = bitcast i32* %1 to i8*
  %3 = load i32* %buf, align 4, !tbaa !23
  %4 = getelementptr inbounds i32* %buf, i64 1
  %5 = load i32* %4, align 4, !tbaa !23
  %6 = getelementptr inbounds i32* %buf, i64 2
  %7 = load i32* %6, align 4, !tbaa !23
  %8 = icmp sgt i32 %num_of_bits, 7
  br i1 %8, label %.lr.ph, label %26

.lr.ph:                                           ; preds = %0
  %9 = add i32 %num_of_bits, -8
  %10 = lshr i32 %9, 3
  %11 = add i32 %3, %10
  %12 = shl nuw i32 %10, 3
  br label %13

; <label>:13                                      ; preds = %.lr.ph, %13
  %.03 = phi i32 [ %num_of_bits, %.lr.ph ], [ %15, %13 ]
  %lastbyte.02 = phi i32 [ %7, %.lr.ph ], [ %17, %13 ]
  %cnt.01 = phi i32 [ %3, %.lr.ph ], [ %20, %13 ]
  %14 = shl i32 %lastbyte.02, 8
  %15 = add nsw i32 %.03, -8
  %16 = ashr i32 %num, %15
  %17 = or i32 %16, %14
  %18 = lshr i32 %17, %5
  %19 = trunc i32 %18 to i8
  %20 = add i32 %cnt.01, 1
  %21 = zext i32 %cnt.01 to i64
  %22 = getelementptr inbounds i8* %2, i64 %21
  store i8 %19, i8* %22, align 1, !tbaa !17
  %23 = icmp sgt i32 %15, 7
  br i1 %23, label %13, label %._crit_edge

._crit_edge:                                      ; preds = %13
  %24 = add i32 %11, 1
  %25 = sub i32 %9, %12
  br label %26

; <label>:26                                      ; preds = %._crit_edge, %0
  %.0.lcssa = phi i32 [ %25, %._crit_edge ], [ %num_of_bits, %0 ]
  %lastbyte.0.lcssa = phi i32 [ %17, %._crit_edge ], [ %7, %0 ]
  %cnt.0.lcssa = phi i32 [ %24, %._crit_edge ], [ %3, %0 ]
  %27 = icmp sgt i32 %.0.lcssa, 0
  br i1 %27, label %28, label %40

; <label>:28                                      ; preds = %26
  %29 = shl i32 %lastbyte.0.lcssa, %.0.lcssa
  %30 = or i32 %29, %num
  %31 = add nsw i32 %.0.lcssa, %5
  %32 = icmp sgt i32 %31, 7
  br i1 %32, label %33, label %40

; <label>:33                                      ; preds = %28
  %34 = add nsw i32 %31, -8
  %35 = lshr i32 %30, %34
  %36 = trunc i32 %35 to i8
  %37 = add i32 %cnt.0.lcssa, 1
  %38 = zext i32 %cnt.0.lcssa to i64
  %39 = getelementptr inbounds i8* %2, i64 %38
  store i8 %36, i8* %39, align 1, !tbaa !17
  br label %40

; <label>:40                                      ; preds = %28, %33, %26
  %cnt.1 = phi i32 [ %37, %33 ], [ %cnt.0.lcssa, %28 ], [ %cnt.0.lcssa, %26 ]
  %lastbyte.1 = phi i32 [ %30, %33 ], [ %30, %28 ], [ %lastbyte.0.lcssa, %26 ]
  %lastbits.0 = phi i32 [ %34, %33 ], [ %31, %28 ], [ %5, %26 ]
  store i32 %cnt.1, i32* %buf, align 4, !tbaa !23
  store i32 %lastbits.0, i32* %4, align 4, !tbaa !23
  store i32 %lastbyte.1, i32* %6, align 4, !tbaa !23
  %41 = icmp sgt i32 %lastbits.0, 0
  br i1 %41, label %42, label %48

; <label>:42                                      ; preds = %40
  %43 = sub nsw i32 8, %lastbits.0
  %44 = shl i32 %lastbyte.1, %43
  %45 = trunc i32 %44 to i8
  %46 = zext i32 %cnt.1 to i64
  %47 = getelementptr inbounds i8* %2, i64 %46
  store i8 %45, i8* %47, align 1, !tbaa !17
  br label %48

; <label>:48                                      ; preds = %42, %40
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @sendints(i32* nocapture %buf, i32 %num_of_bits, i32* nocapture readonly %sizes, i32* nocapture readonly %nums) #4 {
  %bytes = alloca [32 x i32], align 16
  %1 = bitcast [32 x i32]* %bytes to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #7
  %2 = load i32* %nums, align 4, !tbaa !23
  br label %3

; <label>:3                                       ; preds = %3, %0
  %num_of_bytes.0 = phi i32 [ 0, %0 ], [ %5, %3 ]
  %tmp.0 = phi i32 [ %2, %0 ], [ %8, %3 ]
  %4 = and i32 %tmp.0, 255
  %5 = add i32 %num_of_bytes.0, 1
  %6 = zext i32 %num_of_bytes.0 to i64
  %7 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %6
  store i32 %4, i32* %7, align 4, !tbaa !23
  %8 = lshr i32 %tmp.0, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %.preheader4, label %3

.preheader4:                                      ; preds = %3, %._crit_edge22
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %._crit_edge22 ], [ 1, %3 ]
  %num_of_bytes.125 = phi i32 [ %bytecnt.1.lcssa, %._crit_edge22 ], [ %5, %3 ]
  %10 = getelementptr inbounds i32* %nums, i64 %indvars.iv42
  %11 = load i32* %10, align 4, !tbaa !23
  %12 = getelementptr inbounds i32* %sizes, i64 %indvars.iv42
  %13 = load i32* %12, align 4, !tbaa !23
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %.preheader3, label %17

.preheader3:                                      ; preds = %.preheader4
  %15 = icmp eq i32 %num_of_bytes.125, 0
  br i1 %15, label %.preheader2, label %.lr.ph16

.lr.ph16:                                         ; preds = %.preheader3
  %16 = add i32 %num_of_bytes.125, -1
  br label %21

; <label>:17                                      ; preds = %.preheader4
  %18 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), i32 %11, i32 %13) #10
  tail call void @exit(i32 1) #11
  unreachable

.preheader2:                                      ; preds = %21, %.preheader3
  %tmp.1.lcssa = phi i32 [ %11, %.preheader3 ], [ %27, %21 ]
  %bytecnt.0.lcssa = phi i32 [ 0, %.preheader3 ], [ %num_of_bytes.125, %21 ]
  %20 = icmp eq i32 %tmp.1.lcssa, 0
  br i1 %20, label %._crit_edge22, label %.lr.ph21

; <label>:21                                      ; preds = %21, %.lr.ph16
  %indvars.iv38 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next39, %21 ]
  %tmp.115 = phi i32 [ %11, %.lr.ph16 ], [ %27, %21 ]
  %22 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv38
  %23 = load i32* %22, align 4, !tbaa !23
  %24 = mul i32 %13, %23
  %25 = add i32 %24, %tmp.115
  %26 = and i32 %25, 255
  store i32 %26, i32* %22, align 4, !tbaa !23
  %27 = lshr i32 %25, 8
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %lftr.wideiv40 = trunc i64 %indvars.iv38 to i32
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %16
  br i1 %exitcond41, label %.preheader2, label %21

.lr.ph21:                                         ; preds = %.preheader2, %.lr.ph21
  %tmp.220 = phi i32 [ %32, %.lr.ph21 ], [ %tmp.1.lcssa, %.preheader2 ]
  %bytecnt.119 = phi i32 [ %29, %.lr.ph21 ], [ %bytecnt.0.lcssa, %.preheader2 ]
  %28 = and i32 %tmp.220, 255
  %29 = add i32 %bytecnt.119, 1
  %30 = zext i32 %bytecnt.119 to i64
  %31 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %30
  store i32 %28, i32* %31, align 4, !tbaa !23
  %32 = lshr i32 %tmp.220, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %._crit_edge22, label %.lr.ph21

._crit_edge22:                                    ; preds = %.lr.ph21, %.preheader2
  %bytecnt.1.lcssa = phi i32 [ %bytecnt.0.lcssa, %.preheader2 ], [ %29, %.lr.ph21 ]
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %34 = icmp slt i64 %indvars.iv.next43, 3
  br i1 %34, label %.preheader4, label %35

; <label>:35                                      ; preds = %._crit_edge22
  %36 = shl i32 %bytecnt.1.lcssa, 3
  %37 = icmp ugt i32 %36, %num_of_bits
  br i1 %37, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %35
  %38 = icmp eq i32 %bytecnt.1.lcssa, 0
  br i1 %38, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %.preheader1
  %39 = add i32 %bytecnt.1.lcssa, -1
  br label %43

.preheader:                                       ; preds = %35
  %40 = add i32 %bytecnt.1.lcssa, -1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %42 = add i32 %bytecnt.1.lcssa, -2
  br label %47

; <label>:43                                      ; preds = %43, %.lr.ph12
  %indvars.iv34 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next35, %43 ]
  %44 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv34
  %45 = load i32* %44, align 4, !tbaa !23
  tail call fastcc void @sendbits(i32* %buf, i32 8, i32 %45) #13
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %lftr.wideiv36 = trunc i64 %indvars.iv34 to i32
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %39
  br i1 %exitcond37, label %._crit_edge13, label %43

._crit_edge13:                                    ; preds = %43, %.preheader1
  %46 = sub i32 %num_of_bits, %36
  tail call fastcc void @sendbits(i32* %buf, i32 %46, i32 0) #13
  br label %56

; <label>:47                                      ; preds = %47, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %47 ]
  %48 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv
  %49 = load i32* %48, align 4, !tbaa !23
  tail call fastcc void @sendbits(i32* %buf, i32 8, i32 %49) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %42
  br i1 %exitcond, label %._crit_edge, label %47

._crit_edge:                                      ; preds = %47
  %50 = add i32 %bytecnt.1.lcssa, -1
  %phitmp = sext i32 %50 to i64
  br label %51

; <label>:51                                      ; preds = %.preheader, %._crit_edge
  %i.2.lcssa = phi i64 [ %phitmp, %._crit_edge ], [ 0, %.preheader ]
  %52 = shl i32 %40, 3
  %53 = sub i32 %num_of_bits, %52
  %54 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %i.2.lcssa
  %55 = load i32* %54, align 4, !tbaa !23
  tail call fastcc void @sendbits(i32* %buf, i32 %53, i32 %55) #13
  br label %56

; <label>:56                                      ; preds = %51, %._crit_edge13
  call void @llvm.lifetime.end(i64 128, i8* %1) #7
  ret void
}

; Function Attrs: optsize
declare i32 @xdr_opaque(%struct.XDR*, i8*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @receivebits(i32* nocapture %buf, i32 %num_of_bits) #4 {
  %1 = shl i32 1, %num_of_bits
  %2 = add nsw i32 %1, -1
  %3 = getelementptr inbounds i32* %buf, i64 3
  %4 = bitcast i32* %3 to i8*
  %5 = load i32* %buf, align 4, !tbaa !23
  %6 = getelementptr inbounds i32* %buf, i64 1
  %7 = load i32* %6, align 4, !tbaa !23
  %8 = getelementptr inbounds i32* %buf, i64 2
  %9 = load i32* %8, align 4, !tbaa !23
  %10 = icmp sgt i32 %num_of_bits, 7
  br i1 %10, label %.lr.ph, label %29

.lr.ph:                                           ; preds = %0
  %11 = sext i32 %5 to i64
  %12 = add i32 %num_of_bits, -8
  %13 = lshr i32 %12, 3
  %14 = shl nuw i32 %13, 3
  %15 = add i32 %5, %13
  br label %16

; <label>:16                                      ; preds = %.lr.ph, %16
  %indvars.iv = phi i64 [ %11, %.lr.ph ], [ %indvars.iv.next, %16 ]
  %.04 = phi i32 [ %num_of_bits, %.lr.ph ], [ %23, %16 ]
  %lastbyte.02 = phi i32 [ %9, %.lr.ph ], [ %21, %16 ]
  %num.01 = phi i32 [ 0, %.lr.ph ], [ %25, %16 ]
  %17 = shl i32 %lastbyte.02, 8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %18 = getelementptr inbounds i8* %4, i64 %indvars.iv
  %19 = load i8* %18, align 1, !tbaa !17
  %20 = zext i8 %19 to i32
  %21 = or i32 %20, %17
  %22 = lshr i32 %21, %7
  %23 = add nsw i32 %.04, -8
  %24 = shl i32 %22, %23
  %25 = or i32 %24, %num.01
  %26 = icmp sgt i32 %23, 7
  br i1 %26, label %16, label %._crit_edge

._crit_edge:                                      ; preds = %16
  %27 = sub i32 %12, %14
  %28 = add i32 %15, 1
  br label %29

; <label>:29                                      ; preds = %._crit_edge, %0
  %.0.lcssa = phi i32 [ %27, %._crit_edge ], [ %num_of_bits, %0 ]
  %cnt.0.lcssa = phi i32 [ %28, %._crit_edge ], [ %5, %0 ]
  %lastbyte.0.lcssa = phi i32 [ %21, %._crit_edge ], [ %9, %0 ]
  %num.0.lcssa = phi i32 [ %25, %._crit_edge ], [ 0, %0 ]
  %30 = icmp sgt i32 %.0.lcssa, 0
  br i1 %30, label %31, label %49

; <label>:31                                      ; preds = %29
  %32 = icmp ult i32 %7, %.0.lcssa
  br i1 %32, label %33, label %42

; <label>:33                                      ; preds = %31
  %34 = add i32 %7, 8
  %35 = shl i32 %lastbyte.0.lcssa, 8
  %36 = add nsw i32 %cnt.0.lcssa, 1
  %37 = sext i32 %cnt.0.lcssa to i64
  %38 = getelementptr inbounds i8* %4, i64 %37
  %39 = load i8* %38, align 1, !tbaa !17
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %35
  br label %42

; <label>:42                                      ; preds = %33, %31
  %lastbits.0 = phi i32 [ %34, %33 ], [ %7, %31 ]
  %lastbyte.1 = phi i32 [ %41, %33 ], [ %lastbyte.0.lcssa, %31 ]
  %cnt.1 = phi i32 [ %36, %33 ], [ %cnt.0.lcssa, %31 ]
  %43 = sub i32 %lastbits.0, %.0.lcssa
  %44 = lshr i32 %lastbyte.1, %43
  %45 = shl i32 1, %.0.lcssa
  %46 = add nsw i32 %45, -1
  %47 = and i32 %44, %46
  %48 = or i32 %47, %num.0.lcssa
  br label %49

; <label>:49                                      ; preds = %42, %29
  %num.1 = phi i32 [ %48, %42 ], [ %num.0.lcssa, %29 ]
  %lastbits.1 = phi i32 [ %43, %42 ], [ %7, %29 ]
  %lastbyte.2 = phi i32 [ %lastbyte.1, %42 ], [ %lastbyte.0.lcssa, %29 ]
  %cnt.2 = phi i32 [ %cnt.1, %42 ], [ %cnt.0.lcssa, %29 ]
  %50 = and i32 %num.1, %2
  store i32 %cnt.2, i32* %buf, align 4, !tbaa !23
  store i32 %lastbits.1, i32* %6, align 4, !tbaa !23
  store i32 %lastbyte.2, i32* %8, align 4, !tbaa !23
  ret i32 %50
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @receiveints(i32* nocapture %buf, i32 %num_of_bits, i32* nocapture readonly %sizes, i32* nocapture %nums) #4 {
  %bytes = alloca [32 x i32], align 16
  %1 = bitcast [32 x i32]* %bytes to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #7
  %2 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 3
  store i32 0, i32* %2, align 4, !tbaa !23
  %3 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 2
  store i32 0, i32* %3, align 8, !tbaa !23
  %4 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 1
  store i32 0, i32* %4, align 4, !tbaa !23
  %5 = icmp sgt i32 %num_of_bits, 8
  br i1 %5, label %.lr.ph8, label %17

.lr.ph8:                                          ; preds = %0
  %6 = add i32 %num_of_bits, -9
  %7 = lshr i32 %6, 3
  %8 = shl nuw i32 %7, 3
  br label %9

; <label>:9                                       ; preds = %.lr.ph8, %9
  %indvars.iv16 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next17, %9 ]
  %.06 = phi i32 [ %num_of_bits, %.lr.ph8 ], [ %12, %9 ]
  %10 = tail call fastcc i32 @receivebits(i32* %buf, i32 8) #13
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %11 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv16
  store i32 %10, i32* %11, align 4, !tbaa !23
  %12 = add nsw i32 %.06, -8
  %13 = icmp sgt i32 %12, 8
  br i1 %13, label %9, label %._crit_edge9

._crit_edge9:                                     ; preds = %9
  %14 = add i32 %num_of_bits, -8
  %15 = sub i32 %14, %8
  %16 = add nuw nsw i32 %7, 1
  br label %17

; <label>:17                                      ; preds = %._crit_edge9, %0
  %.0.lcssa = phi i32 [ %15, %._crit_edge9 ], [ %num_of_bits, %0 ]
  %num_of_bytes.0.lcssa = phi i32 [ %16, %._crit_edge9 ], [ 0, %0 ]
  %18 = icmp sgt i32 %.0.lcssa, 0
  br i1 %18, label %19, label %24

; <label>:19                                      ; preds = %17
  %20 = tail call fastcc i32 @receivebits(i32* %buf, i32 %.0.lcssa) #13
  %21 = add nsw i32 %num_of_bytes.0.lcssa, 1
  %22 = sext i32 %num_of_bytes.0.lcssa to i64
  %23 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %22
  store i32 %20, i32* %23, align 4, !tbaa !23
  br label %24

; <label>:24                                      ; preds = %19, %17
  %num_of_bytes.1 = phi i32 [ %21, %19 ], [ %num_of_bytes.0.lcssa, %17 ]
  %25 = icmp sgt i32 %num_of_bytes.1, 0
  %26 = sext i32 %num_of_bytes.1 to i64
  br label %.preheader

.preheader:                                       ; preds = %24, %._crit_edge
  %indvars.iv14 = phi i64 [ 2, %24 ], [ %indvars.iv.next15, %._crit_edge ]
  br i1 %25, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %27 = getelementptr inbounds i32* %sizes, i64 %indvars.iv14
  %28 = load i32* %27, align 4, !tbaa !23
  br label %29

; <label>:29                                      ; preds = %.lr.ph, %29
  %indvars.iv = phi i64 [ %26, %.lr.ph ], [ %indvars.iv.next, %29 ]
  %num.02 = phi i32 [ 0, %.lr.ph ], [ %36, %29 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %30 = shl i32 %num.02, 8
  %31 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv.next
  %32 = load i32* %31, align 4, !tbaa !23
  %33 = or i32 %32, %30
  %34 = udiv i32 %33, %28
  store i32 %34, i32* %31, align 4, !tbaa !23
  %35 = mul i32 %28, %34
  %36 = sub i32 %33, %35
  %37 = icmp sgt i64 %indvars.iv, 1
  br i1 %37, label %29, label %._crit_edge

._crit_edge:                                      ; preds = %29, %.preheader
  %num.0.lcssa = phi i32 [ 0, %.preheader ], [ %36, %29 ]
  %38 = getelementptr inbounds i32* %nums, i64 %indvars.iv14
  store i32 %num.0.lcssa, i32* %38, align 4, !tbaa !23
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, -1
  %39 = icmp sgt i64 %indvars.iv14, 1
  br i1 %39, label %.preheader, label %40

; <label>:40                                      ; preds = %._crit_edge
  %41 = bitcast [32 x i32]* %bytes to i64*
  %42 = load i64* %41, align 16
  %43 = trunc i64 %42 to i32
  %44 = lshr i64 %42, 24
  %.tr = trunc i64 %44 to i32
  %45 = and i32 %.tr, -256
  %46 = or i32 %45, %43
  %47 = bitcast i32* %3 to i64*
  %48 = load i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 %49, 16
  %51 = or i32 %46, %50
  %52 = lshr i64 %48, 8
  %.tr18 = trunc i64 %52 to i32
  %53 = and i32 %.tr18, -16777216
  %54 = or i32 %51, %53
  store i32 %54, i32* %nums, align 4, !tbaa !23
  call void @llvm.lifetime.end(i64 128, i8* %1) #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { readnone }
attributes #10 = { nounwind optsize }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"float", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = !{!9, !11, i64 12}
!9 = !{!"__sFILE", !10, i64 0, !11, i64 8, !11, i64 12, !12, i64 16, !12, i64 18, !13, i64 24, !11, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !13, i64 88, !10, i64 104, !11, i64 112, !4, i64 116, !4, i64 119, !13, i64 120, !11, i64 136, !14, i64 144}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"int", !4, i64 0}
!12 = !{!"short", !4, i64 0}
!13 = !{!"__sbuf", !10, i64 0, !11, i64 8}
!14 = !{!"long long", !4, i64 0}
!15 = !{!9, !11, i64 40}
!16 = !{!9, !10, i64 0}
!17 = !{!4, !4, i64 0}
!18 = !{!10, !10, i64 0}
!19 = !{!20, !10, i64 8}
!20 = !{!"XDR", !4, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40}
!21 = !{!22, !10, i64 56}
!22 = !{!"xdr_ops", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!23 = !{!11, !11, i64 0}
