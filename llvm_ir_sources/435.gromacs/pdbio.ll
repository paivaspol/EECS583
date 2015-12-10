; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pdbio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@bWideFormat = internal unnamed_addr global i32 0, align 4
@bTER = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"HEADER    %s\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"REMARK    This file does not adhere to the PDB standard\0A\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"REMARK    As a result of, some programs may not like it\0A\00", align 1
@.str3 = private unnamed_addr constant [36 x i8] c"REMARK    THIS IS A SIMULATION BOX\0A\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"CRYST1%9.3f%9.3f%9.3f%7.2f%7.2f%7.2f P 1           1\0A\00", align 1
@.str5 = private unnamed_addr constant [11 x i8] c"MODEL %8d\0A\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"MODEL\0A\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str7 = private unnamed_addr constant [75 x i8] c"WARNING: Writing out atom name (%s) longer than 4 characters to .pdb file\0A\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"%8.4f%8.4f\0A\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"%6.2f%6.2f\0A\00", align 1
@pdbtp = internal unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([7 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str34, i32 0, i32 0)], align 16
@.str10 = private unnamed_addr constant [5 x i8] c"TER\0A\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"ENDMDL\0A\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str13 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pdbio.c\00", align 1
@read_pdbfile.symtab = internal global %struct.t_symtab zeroinitializer, align 8
@read_pdbfile.bFirst = internal unnamed_addr global i1 false
@.str14 = private unnamed_addr constant [19 x i8] c"%*s%s%s%s%lf%lf%lf\00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str17 = private unnamed_addr constant [10 x i8] c"MOLECULE:\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str19 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str20 = private unnamed_addr constant [6 x i8] c"%*s%d\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"TER\00", align 1
@.str22 = private unnamed_addr constant [7 x i8] c"ENDMDL\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"ATOM  \00", align 1
@.str24 = private unnamed_addr constant [7 x i8] c"HETATM\00", align 1
@.str25 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str26 = private unnamed_addr constant [46 x i8] c"%-6s%5u  %-4.4s%3.3s %c%4d    %8.3f%8.3f%8.3f\00", align 1
@.str27 = private unnamed_addr constant [46 x i8] c"%-6s%5u %-4.4s %3.3s %c%4d    %8.3f%8.3f%8.3f\00", align 1
@.str28 = private unnamed_addr constant [7 x i8] c"ANISOU\00", align 1
@.str29 = private unnamed_addr constant [7 x i8] c"CRYST1\00", align 1
@.str30 = private unnamed_addr constant [7 x i8] c"COMPND\00", align 1
@.str31 = private unnamed_addr constant [6 x i8] c"MODEL\00", align 1
@.str32 = private unnamed_addr constant [7 x i8] c"HEADER\00", align 1
@.str33 = private unnamed_addr constant [6 x i8] c"TITLE\00", align 1
@.str34 = private unnamed_addr constant [7 x i8] c"REMARK\00", align 1
@read_atom.oldresnm = internal global [12 x i8] zeroinitializer, align 1
@read_atom.oldresnr = internal global [12 x i8] zeroinitializer, align 1
@.str35 = private unnamed_addr constant [54 x i8] c"\0AFound more atoms (%d) in pdb file than expected (%d)\00", align 1
@.str36 = private unnamed_addr constant [4 x i8] c"OXT\00", align 1
@.str37 = private unnamed_addr constant [3 x i8] c"O2\00", align 1
@.str38 = private unnamed_addr constant [47 x i8] c"Skipping ANISOU record (atom %s %d not found)\0A\00", align 1
@.str39 = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str40 = private unnamed_addr constant [35 x i8] c"Invalid ANISOU record for atom %d\0A\00", align 1

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

; Function Attrs: nounwind optsize ssp uwtable
define void @set_pdb_wide_format(i32 %bSet) #4 {
  store i32 %bSet, i32* @bWideFormat, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @pdb_use_ter(i32 %bSet) #4 {
  store i32 %bSet, i32* @bTER, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_pdbfile_indexed(%struct.__sFILE* nocapture %out, i8* %title, %struct.t_atoms* nocapture readonly %atoms, [3 x float]* nocapture readonly %x, [3 x float]* readonly %box, i8 signext %chain, i32 %model_nr, i32 %nindex, i32* nocapture readonly %index) #4 {
  %resnm = alloca [6 x i8], align 1
  %nm = alloca [6 x i8], align 1
  %pdbform = alloca [128 x i8], align 16
  %1 = getelementptr inbounds [128 x i8]* %pdbform, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %1) #5
  %2 = icmp eq i8* %title, null
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = load i8* %title, align 1, !tbaa !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %3, %0
  %7 = tail call i8* @bromacs() #10
  br label %8

; <label>:8                                       ; preds = %3, %6
  %9 = phi i8* [ %7, %6 ], [ %title, %3 ]
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0), i8* %9) #10
  %11 = load i32* @bWideFormat, align 4, !tbaa !18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %8
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), i64 56, i64 1, %struct.__sFILE* %out)
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), i64 56, i64 1, %struct.__sFILE* %out)
  br label %16

; <label>:16                                      ; preds = %8, %13
  %17 = icmp eq [3 x float]* %box, null
  br i1 %17, label %145, label %18

; <label>:18                                      ; preds = %16
  %19 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %20 = load float* %19, align 4, !tbaa !14
  %21 = fmul float %20, %20
  %22 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %23 = load float* %22, align 4, !tbaa !14
  %24 = fmul float %23, %23
  %25 = fadd float %21, %24
  %26 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %27 = load float* %26, align 4, !tbaa !14
  %28 = fmul float %27, %27
  %29 = fadd float %25, %28
  %30 = fpext float %29 to double
  %31 = fcmp ogt double %30, 1.200000e-38
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  br i1 %31, label %._crit_edge14, label %32

._crit_edge14:                                    ; preds = %18
  %.phi.trans.insert15 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %.pre16 = load float* %.phi.trans.insert15, align 4, !tbaa !14
  %.phi.trans.insert17 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %.pre18 = load float* %.phi.trans.insert17, align 4, !tbaa !14
  br label %58

; <label>:32                                      ; preds = %18
  %33 = fmul float %.pre, %.pre
  %34 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %35 = load float* %34, align 4, !tbaa !14
  %36 = fmul float %35, %35
  %37 = fadd float %33, %36
  %38 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %39 = load float* %38, align 4, !tbaa !14
  %40 = fmul float %39, %39
  %41 = fadd float %37, %40
  %42 = fpext float %41 to double
  %43 = fcmp ogt double %42, 1.200000e-38
  br i1 %43, label %58, label %44

; <label>:44                                      ; preds = %32
  %45 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %46 = load float* %45, align 4, !tbaa !14
  %47 = fmul float %46, %46
  %48 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %49 = load float* %48, align 4, !tbaa !14
  %50 = fmul float %49, %49
  %51 = fadd float %47, %50
  %52 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %53 = load float* %52, align 4, !tbaa !14
  %54 = fmul float %53, %53
  %55 = fadd float %51, %54
  %56 = fpext float %55 to double
  %57 = fcmp ogt double %56, 1.200000e-38
  br i1 %57, label %58, label %145

; <label>:58                                      ; preds = %._crit_edge14, %44, %32
  %.pre-phi21 = phi float* [ %.phi.trans.insert17, %._crit_edge14 ], [ %38, %44 ], [ %38, %32 ]
  %.pre-phi20 = phi float* [ %.phi.trans.insert15, %._crit_edge14 ], [ %34, %44 ], [ %34, %32 ]
  %59 = phi float [ %.pre18, %._crit_edge14 ], [ %39, %44 ], [ %39, %32 ]
  %60 = phi float [ %.pre16, %._crit_edge14 ], [ %35, %44 ], [ %35, %32 ]
  %61 = fmul float %.pre, %.pre
  %62 = fmul float %60, %60
  %63 = fadd float %61, %62
  %64 = fmul float %59, %59
  %65 = fadd float %63, %64
  %66 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %67 = load float* %66, align 4, !tbaa !14
  %68 = fmul float %67, %67
  %69 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %70 = load float* %69, align 4, !tbaa !14
  %71 = fmul float %70, %70
  %72 = fadd float %68, %71
  %73 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %74 = load float* %73, align 4, !tbaa !14
  %75 = fmul float %74, %74
  %76 = fadd float %72, %75
  %77 = fmul float %65, %76
  %78 = fpext float %77 to double
  %79 = fcmp ogt double %78, 1.200000e-38
  br i1 %79, label %80, label %86

; <label>:80                                      ; preds = %58
  %81 = tail call fastcc float @cos_angle_no_table(float* %.phi.trans.insert, float* %66) #12
  %82 = fpext float %81 to double
  %83 = tail call double @acos(double %82) #13
  %84 = fmul double %83, 0x404CA5DC1A63C1F8
  %85 = fptrunc double %84 to float
  %phitmp = fpext float %85 to double
  br label %86

; <label>:86                                      ; preds = %58, %80
  %alpha.0 = phi double [ %phitmp, %80 ], [ 9.000000e+01, %58 ]
  %87 = fmul float %29, %76
  %88 = fpext float %87 to double
  %89 = fcmp ogt double %88, 1.200000e-38
  br i1 %89, label %90, label %96

; <label>:90                                      ; preds = %86
  %91 = tail call fastcc float @cos_angle_no_table(float* %19, float* %66) #12
  %92 = fpext float %91 to double
  %93 = tail call double @acos(double %92) #13
  %94 = fmul double %93, 0x404CA5DC1A63C1F8
  %95 = fptrunc double %94 to float
  %phitmp6 = fpext float %95 to double
  br label %96

; <label>:96                                      ; preds = %86, %90
  %beta.0 = phi double [ %phitmp6, %90 ], [ 9.000000e+01, %86 ]
  %97 = load float* %.pre-phi20, align 4, !tbaa !14
  %98 = fmul float %97, %97
  %99 = fadd float %61, %98
  %100 = load float* %.pre-phi21, align 4, !tbaa !14
  %101 = fmul float %100, %100
  %102 = fadd float %99, %101
  %103 = fmul float %29, %102
  %104 = fpext float %103 to double
  %105 = fcmp ogt double %104, 1.200000e-38
  br i1 %105, label %106, label %112

; <label>:106                                     ; preds = %96
  %107 = tail call fastcc float @cos_angle_no_table(float* %19, float* %.phi.trans.insert) #12
  %108 = fpext float %107 to double
  %109 = tail call double @acos(double %108) #13
  %110 = fmul double %109, 0x404CA5DC1A63C1F8
  %111 = fptrunc double %110 to float
  %phitmp7 = fpext float %111 to double
  br label %112

; <label>:112                                     ; preds = %96, %106
  %gamma.0 = phi double [ %phitmp7, %106 ], [ 9.000000e+01, %96 ]
  %113 = tail call i64 @fwrite(i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), i64 35, i64 1, %struct.__sFILE* %out)
  %114 = load float* %19, align 4, !tbaa !14
  %115 = fmul float %114, %114
  %116 = load float* %22, align 4, !tbaa !14
  %117 = fmul float %116, %116
  %118 = fadd float %115, %117
  %119 = load float* %26, align 4, !tbaa !14
  %120 = fmul float %119, %119
  %121 = fadd float %118, %120
  %sqrtf.i5 = tail call float @sqrtf(float %121) #7
  %122 = fmul float %sqrtf.i5, 1.000000e+01
  %123 = fpext float %122 to double
  %124 = load float* %.phi.trans.insert, align 4, !tbaa !14
  %125 = fmul float %124, %124
  %126 = load float* %.pre-phi20, align 4, !tbaa !14
  %127 = fmul float %126, %126
  %128 = fadd float %125, %127
  %129 = load float* %.pre-phi21, align 4, !tbaa !14
  %130 = fmul float %129, %129
  %131 = fadd float %128, %130
  %sqrtf.i4 = tail call float @sqrtf(float %131) #7
  %132 = fmul float %sqrtf.i4, 1.000000e+01
  %133 = fpext float %132 to double
  %134 = load float* %66, align 4, !tbaa !14
  %135 = fmul float %134, %134
  %136 = load float* %69, align 4, !tbaa !14
  %137 = fmul float %136, %136
  %138 = fadd float %135, %137
  %139 = load float* %73, align 4, !tbaa !14
  %140 = fmul float %139, %139
  %141 = fadd float %138, %140
  %sqrtf.i = tail call float @sqrtf(float %141) #7
  %142 = fmul float %sqrtf.i, 1.000000e+01
  %143 = fpext float %142 to double
  %144 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), double %123, double %133, double %143, double %alpha.0, double %beta.0, double %gamma.0) #10
  br label %145

; <label>:145                                     ; preds = %16, %112, %44
  %146 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11
  %147 = load %struct.t_pdbinfo** %146, align 8, !tbaa !19
  %148 = icmp eq %struct.t_pdbinfo* %147, null
  br i1 %148, label %.critedge, label %.preheader8

.preheader8:                                      ; preds = %145
  %149 = icmp sgt i32 %nindex, 0
  br i1 %149, label %.lr.ph11, label %.critedge

.lr.ph11:                                         ; preds = %.preheader8
  %150 = sext i32 %nindex to i64
  br label %151

; <label>:151                                     ; preds = %.lr.ph11, %151
  %indvars.iv12 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next13, %151 ]
  %152 = getelementptr inbounds i32* %index, i64 %indvars.iv12
  %153 = load i32* %152, align 4, !tbaa !18
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.t_pdbinfo* %147, i64 %154, i32 4
  %156 = load float* %155, align 4, !tbaa !22
  %fabsf = tail call float @fabsf(float %156) #7
  %157 = fpext float %fabsf to double
  %158 = fcmp olt double %157, 1.200000e-38
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %159 = icmp slt i64 %indvars.iv.next13, %150
  %or.cond3 = and i1 %159, %158
  br i1 %or.cond3, label %151, label %..critedge.loopexit_crit_edge

..critedge.loopexit_crit_edge:                    ; preds = %151
  %160 = zext i1 %158 to i32
  br label %.critedge

.critedge:                                        ; preds = %.preheader8, %..critedge.loopexit_crit_edge, %145
  %bOccup.1 = phi i32 [ 0, %145 ], [ %160, %..critedge.loopexit_crit_edge ], [ 1, %.preheader8 ]
  %161 = load i32* @bTER, align 4, !tbaa !18
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %.preheader

; <label>:163                                     ; preds = %.critedge
  %164 = icmp sgt i32 %model_nr, 0
  br i1 %164, label %165, label %167

; <label>:165                                     ; preds = %163
  %166 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([11 x i8]* @.str5, i64 0, i64 0), i32 %model_nr) #10
  br label %.preheader

; <label>:167                                     ; preds = %163
  %168 = icmp eq i32 %model_nr, 0
  br i1 %168, label %169, label %.preheader

; <label>:169                                     ; preds = %167
  %170 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str6, i64 0, i64 0), i64 6, i64 1, %struct.__sFILE* %out)
  br label %.preheader

.preheader:                                       ; preds = %.critedge, %165, %169, %167
  %171 = icmp sgt i32 %nindex, 0
  br i1 %171, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %172 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %173 = getelementptr inbounds [6 x i8]* %resnm, i64 0, i64 0
  %174 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  %175 = getelementptr inbounds [6 x i8]* %nm, i64 0, i64 0
  %176 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %177 = icmp eq i8 %chain, 0
  %178 = icmp eq i32 %bOccup.1, 0
  %179 = add i32 %nindex, -1
  br label %180

; <label>:180                                     ; preds = %240, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %240 ]
  %181 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %182 = load i32* %181, align 4, !tbaa !18
  %183 = sext i32 %182 to i64
  %184 = load %struct.t_atom** %172, align 8, !tbaa !24
  %185 = getelementptr inbounds %struct.t_atom* %184, i64 %183, i32 7
  %186 = load i32* %185, align 4, !tbaa !25
  %187 = sext i32 %186 to i64
  %188 = load i8**** %174, align 8, !tbaa !27
  %189 = getelementptr inbounds i8*** %188, i64 %187
  %190 = load i8*** %189, align 8, !tbaa !28
  %191 = load i8** %190, align 8, !tbaa !28
  %192 = call i8* @__strcpy_chk(i8* %173, i8* %191, i64 6) #10
  %193 = load i8**** %176, align 8, !tbaa !29
  %194 = getelementptr inbounds i8*** %193, i64 %183
  %195 = load i8*** %194, align 8, !tbaa !28
  %196 = load i8** %195, align 8, !tbaa !28
  %197 = call i8* @__strcpy_chk(i8* %175, i8* %196, i64 6) #10
  %198 = add nsw i32 %186, 1
  %199 = icmp sgt i32 %186, 9998
  br i1 %199, label %200, label %202

; <label>:200                                     ; preds = %180
  %201 = srem i32 %198, 10000
  br label %202

; <label>:202                                     ; preds = %200, %180
  %resnr.0 = phi i32 [ %201, %200 ], [ %198, %180 ]
  br i1 %177, label %203, label %208

; <label>:203                                     ; preds = %202
  %204 = load %struct.t_atom** %172, align 8, !tbaa !24
  %205 = getelementptr inbounds %struct.t_atom* %204, i64 %183, i32 9
  %206 = load i8* %205, align 1, !tbaa !30
  %207 = icmp eq i8 %206, 0
  %. = select i1 %207, i8 32, i8 %206
  br label %208

; <label>:208                                     ; preds = %203, %202
  %ch.0 = phi i8 [ %chain, %202 ], [ %., %203 ]
  %209 = load %struct.t_pdbinfo** %146, align 8, !tbaa !19
  %210 = icmp eq %struct.t_pdbinfo* %209, null
  br i1 %210, label %223, label %211

; <label>:211                                     ; preds = %208
  %212 = getelementptr inbounds %struct.t_pdbinfo* %209, i64 %183, i32 0
  %213 = load i32* %212, align 4, !tbaa !31
  br i1 %178, label %214, label %218

; <label>:214                                     ; preds = %211
  %215 = getelementptr inbounds %struct.t_pdbinfo* %209, i64 %183, i32 4
  %216 = load float* %215, align 4, !tbaa !22
  %217 = fpext float %216 to double
  br label %218

; <label>:218                                     ; preds = %211, %214
  %219 = phi double [ %217, %214 ], [ 1.000000e+00, %211 ]
  %220 = fptrunc double %219 to float
  %221 = getelementptr inbounds %struct.t_pdbinfo* %209, i64 %183, i32 5
  %222 = load float* %221, align 4, !tbaa !32
  br label %223

; <label>:223                                     ; preds = %208, %218
  %type.0 = phi i32 [ %213, %218 ], [ 0, %208 ]
  %occup.0 = phi float [ %220, %218 ], [ 1.000000e+00, %208 ]
  %bfac.0 = phi float [ %222, %218 ], [ 0.000000e+00, %208 ]
  %224 = call i64 @strlen(i8* %175) #10
  %225 = icmp ult i64 %224, 4
  br i1 %225, label %226, label %227

; <label>:226                                     ; preds = %223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([46 x i8]* @.str26, i64 0, i64 0), i64 46, i32 1, i1 false)
  br label %233

; <label>:227                                     ; preds = %223
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([46 x i8]* @.str27, i64 0, i64 0), i64 46, i32 1, i1 false)
  %228 = call i64 @strlen(i8* %175) #10
  %229 = icmp ugt i64 %228, 4
  br i1 %229, label %230, label %233

; <label>:230                                     ; preds = %227
  %231 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !28
  %232 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %231, i8* getelementptr inbounds ([75 x i8]* @.str7, i64 0, i64 0), i8* %175) #10
  br label %233

; <label>:233                                     ; preds = %227, %230, %226
  %234 = load i32* @bWideFormat, align 4, !tbaa !18
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

; <label>:236                                     ; preds = %233
  %237 = call i8* @__strcat_chk(i8* %1, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i64 128) #10
  br label %240

; <label>:238                                     ; preds = %233
  %239 = call i8* @__strcat_chk(i8* %1, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0), i64 128) #10
  br label %240

; <label>:240                                     ; preds = %238, %236
  %241 = sext i32 %type.0 to i64
  %242 = getelementptr inbounds [11 x i8*]* @pdbtp, i64 0, i64 %241
  %243 = load i8** %242, align 8, !tbaa !28
  %244 = add nsw i32 %182, 1
  %245 = srem i32 %244, 100000
  %246 = sext i8 %ch.0 to i32
  %247 = getelementptr inbounds [3 x float]* %x, i64 %183, i64 0
  %248 = load float* %247, align 4, !tbaa !14
  %249 = fmul float %248, 1.000000e+01
  %250 = fpext float %249 to double
  %251 = getelementptr inbounds [3 x float]* %x, i64 %183, i64 1
  %252 = load float* %251, align 4, !tbaa !14
  %253 = fmul float %252, 1.000000e+01
  %254 = fpext float %253 to double
  %255 = getelementptr inbounds [3 x float]* %x, i64 %183, i64 2
  %256 = load float* %255, align 4, !tbaa !14
  %257 = fmul float %256, 1.000000e+01
  %258 = fpext float %257 to double
  %259 = fpext float %occup.0 to double
  %260 = fpext float %bfac.0 to double
  %261 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* %1, i8* %243, i32 %245, i8* %175, i8* %173, i32 %246, i32 %resnr.0, double %250, double %254, double %258, double %259, double %260) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %179
  br i1 %exitcond, label %._crit_edge, label %180

._crit_edge:                                      ; preds = %240, %.preheader
  %262 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* %out)
  %263 = icmp slt i32 %model_nr, 0
  %264 = load i32* @bTER, align 4
  %265 = icmp ne i32 %264, 0
  %or.cond = or i1 %263, %265
  br i1 %or.cond, label %268, label %266

; <label>:266                                     ; preds = %._crit_edge
  %267 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0), i64 7, i64 1, %struct.__sFILE* %out)
  br label %268

; <label>:268                                     ; preds = %._crit_edge, %266
  call void @llvm.lifetime.end(i64 128, i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: optsize
declare i8* @bromacs() #1

; Function Attrs: nounwind optsize readnone
declare double @acos(double) #7

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc float @cos_angle_no_table(float* nocapture readonly %a, float* nocapture readonly %b) #8 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %ip.02 = phi double [ 0.000000e+00, %0 ], [ %13, %1 ]
  %2 = phi <2 x double> [ zeroinitializer, %0 ], [ %15, %1 ]
  %3 = getelementptr inbounds float* %a, i64 %indvars.iv
  %4 = load float* %3, align 4, !tbaa !14
  %5 = getelementptr inbounds float* %b, i64 %indvars.iv
  %6 = load float* %5, align 4, !tbaa !14
  %7 = insertelement <2 x float> undef, float %6, i32 0
  %8 = insertelement <2 x float> %7, float %4, i32 1
  %9 = fpext <2 x float> %8 to <2 x double>
  %10 = extractelement <2 x double> %9, i32 0
  %11 = extractelement <2 x double> %9, i32 1
  %12 = fmul double %11, %10
  %13 = fadd double %ip.02, %12
  %14 = fmul <2 x double> %9, %9
  %15 = fadd <2 x double> %2, %14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %16, label %1

; <label>:16                                      ; preds = %1
  %17 = extractelement <2 x double> %15, i32 0
  %18 = extractelement <2 x double> %15, i32 1
  %19 = fmul double %18, %17
  %20 = tail call double @sqrt(double %19) #13
  %21 = fdiv double %13, %20
  %22 = fptrunc double %21 to float
  %23 = fcmp ogt float %22, 1.000000e+00
  br i1 %23, label %26, label %24

; <label>:24                                      ; preds = %16
  %25 = fcmp olt float %22, -1.000000e+00
  %. = select i1 %25, float -1.000000e+00, float %22
  br label %26

; <label>:26                                      ; preds = %24, %16
  %.0 = phi float [ 1.000000e+00, %16 ], [ %., %24 ]
  ret float %.0
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #7

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #6

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #9

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @write_pdbfile(%struct.__sFILE* nocapture %out, i8* %title, %struct.t_atoms* nocapture readonly %atoms, [3 x float]* nocapture readonly %x, [3 x float]* readonly %box, i8 signext %chain, i32 %model_nr) #4 {
  %1 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !33
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 191, i32 %2, i32 4) #10
  %4 = bitcast i8* %3 to i32*
  %5 = load i32* %1, align 4, !tbaa !33
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %0 ]
  %7 = getelementptr inbounds i32* %4, i64 %indvars.iv
  %8 = trunc i64 %indvars.iv to i32
  store i32 %8, i32* %7, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32* %1, align 4, !tbaa !33
  %10 = sext i32 %9 to i64
  %11 = icmp slt i64 %indvars.iv.next, %10
  br i1 %11, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %0
  %.lcssa = phi i32 [ %5, %0 ], [ %9, %.lr.ph ]
  tail call void @write_pdbfile_indexed(%struct.__sFILE* %out, i8* %title, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i8 signext %chain, i32 %model_nr, i32 %.lcssa, i32* %4) #12
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i32 195, i8* %3) #10
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @line2type(i8* nocapture readonly %line) #8 {
  %type = alloca [8 x i8], align 1
  %type5 = getelementptr inbounds [8 x i8]* %type, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %type5, i8* %line, i64 6, i32 1, i1 false)
  %1 = getelementptr inbounds [8 x i8]* %type, i64 0, i64 6
  store i8 0, i8* %1, align 1, !tbaa !13
  %2 = getelementptr inbounds [8 x i8]* %type, i64 0, i64 0
  br label %3

; <label>:3                                       ; preds = %0, %10
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %10 ]
  %k.11 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %4 = getelementptr inbounds [11 x i8*]* @pdbtp, i64 0, i64 %indvars.iv
  %5 = load i8** %4, align 8, !tbaa !28
  %6 = tail call i64 @strlen(i8* %5) #10
  %7 = call i32 @strncmp(i8* %2, i8* %5, i64 %6) #10
  %8 = icmp eq i32 %7, 0
  %9 = trunc i64 %indvars.iv to i32
  br i1 %8, label %13, label %10

; <label>:10                                      ; preds = %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = add nuw nsw i32 %k.11, 1
  %12 = icmp slt i64 %indvars.iv.next, 11
  br i1 %12, label %3, label %13

; <label>:13                                      ; preds = %3, %10
  %k.1.lcssa = phi i32 [ %9, %3 ], [ %11, %10 ]
  ret i32 %k.1.lcssa
}

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #9

; Function Attrs: nounwind optsize ssp uwtable
define i32 @is_hydrogen(i8* %nm) #4 {
  %buf = alloca [30 x i8], align 16
  %1 = getelementptr inbounds [30 x i8]* %buf, i64 0, i64 0
  %2 = call i8* @__strcpy_chk(i8* %1, i8* %nm, i64 30) #10
  call void @trim(i8* %1) #10
  %3 = bitcast [30 x i8]* %buf to i16*
  %4 = load i16* %3, align 16
  %5 = trunc i16 %4 to i8
  %6 = icmp eq i8 %5, 72
  br i1 %6, label %10, label %7

; <label>:7                                       ; preds = %0
  %8 = sext i8 %5 to i32
  %isdigittmp = add nsw i32 %8, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %.mask = and i16 %4, -256
  %9 = icmp eq i16 %.mask, 18432
  %or.cond = and i1 %isdigit, %9
  %. = zext i1 %or.cond to i32
  ret i32 %.

; <label>:10                                      ; preds = %0
  ret i32 1
}

; Function Attrs: optsize
declare void @trim(i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @is_dummymass(i8* %nm) #4 {
  %buf = alloca [30 x i8], align 16
  %1 = getelementptr inbounds [30 x i8]* %buf, i64 0, i64 0
  %2 = call i8* @__strcpy_chk(i8* %1, i8* %nm, i64 30) #10
  call void @trim(i8* %1) #10
  %3 = load i8* %1, align 16, !tbaa !13
  %4 = icmp eq i8 %3, 77
  br i1 %4, label %5, label %11

; <label>:5                                       ; preds = %0
  %6 = call i64 @strlen(i8* %1) #10
  %7 = add i64 %6, -1
  %8 = getelementptr inbounds [30 x i8]* %buf, i64 0, i64 %7
  %9 = load i8* %8, align 1, !tbaa !13
  %10 = sext i8 %9 to i32
  %isdigittmp = add nsw i32 %10, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %12, label %11

; <label>:11                                      ; preds = %5, %0
  br label %12

; <label>:12                                      ; preds = %5, %11
  %.0 = phi i32 [ 0, %11 ], [ 1, %5 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_pdbfile(%struct.__sFILE* %in, i8* %title, i32* %model_nr, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, [3 x float]* %box, i32 %bChange) #4 {
  %resnm.i = alloca [12 x i8], align 4
  %resnr.i = alloca [12 x i8], align 4
  %xc.i = alloca [12 x i8], align 8
  %yc.i = alloca [12 x i8], align 8
  %zc.i = alloca [12 x i8], align 8
  %occup.i = alloca [12 x i8], align 1
  %bfac.i = alloca [12 x i8], align 1
  %pdbresnr.i = alloca [12 x i8], align 4
  %anr.i = alloca [12 x i8], align 1
  %anm.i = alloca [12 x i8], align 4
  %line = alloca [4097 x i8], align 16
  %sa = alloca [12 x i8], align 1
  %sb = alloca [12 x i8], align 1
  %sc = alloca [12 x i8], align 1
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %gamma = alloca double, align 8
  %1 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4097, i8* %1) #5
  %2 = icmp ne [3 x float]* %box, null
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = bitcast [3 x float]* %box to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 36, i32 4, i1 false) #5
  br label %5

; <label>:5                                       ; preds = %3, %0
  %.b = load i1* @read_pdbfile.bFirst, align 1
  br i1 %.b, label %7, label %6

; <label>:6                                       ; preds = %5
  tail call void @open_symtab(%struct.t_symtab* @read_pdbfile.symtab) #10
  store i1 true, i1* @read_pdbfile.bFirst, align 1
  br label %7

; <label>:7                                       ; preds = %5, %6
  store i8 0, i8* %title, align 1, !tbaa !13
  %8 = getelementptr inbounds [12 x i8]* %anr.i, i64 0, i64 0
  %9 = getelementptr inbounds [12 x i8]* %anm.i, i64 0, i64 0
  %10 = getelementptr inbounds [12 x i8]* %resnm.i, i64 0, i64 0
  %11 = getelementptr inbounds [12 x i8]* %resnr.i, i64 0, i64 0
  %12 = getelementptr inbounds [12 x i8]* %xc.i, i64 0, i64 0
  %13 = getelementptr inbounds [12 x i8]* %yc.i, i64 0, i64 0
  %14 = getelementptr inbounds [12 x i8]* %zc.i, i64 0, i64 0
  %15 = getelementptr inbounds [12 x i8]* %occup.i, i64 0, i64 0
  %16 = getelementptr inbounds [12 x i8]* %bfac.i, i64 0, i64 0
  %17 = getelementptr inbounds [12 x i8]* %pdbresnr.i, i64 0, i64 0
  %18 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %scevgep93.i = getelementptr [4097 x i8]* %line, i64 0, i64 6
  %19 = getelementptr inbounds [12 x i8]* %anr.i, i64 0, i64 5
  %scevgep86.i = getelementptr [4097 x i8]* %line, i64 0, i64 12
  %20 = bitcast i8* %scevgep86.i to i32*
  %21 = bitcast [12 x i8]* %anm.i to i32*
  %22 = getelementptr inbounds [12 x i8]* %anm.i, i64 0, i64 4
  %23 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 16
  %24 = bitcast [12 x i8]* %resnm.i to i32*
  %25 = getelementptr inbounds [12 x i8]* %resnm.i, i64 0, i64 4
  %.phi.trans.insert.i = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 21
  %scevgep67.i = getelementptr [4097 x i8]* %line, i64 0, i64 22
  %26 = bitcast i8* %scevgep67.i to i32*
  %27 = bitcast [12 x i8]* %resnr.i to i32*
  %28 = bitcast [12 x i8]* %pdbresnr.i to i32*
  %29 = getelementptr inbounds [12 x i8]* %resnr.i, i64 0, i64 4
  %30 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 26
  %31 = getelementptr inbounds [12 x i8]* %pdbresnr.i, i64 0, i64 4
  %32 = getelementptr inbounds [12 x i8]* %pdbresnr.i, i64 0, i64 5
  %scevgep62.i = getelementptr [4097 x i8]* %line, i64 0, i64 30
  %33 = bitcast i8* %scevgep62.i to i64*
  %34 = bitcast [12 x i8]* %xc.i to i64*
  %35 = getelementptr inbounds [12 x i8]* %xc.i, i64 0, i64 8
  %scevgep57.i = getelementptr [4097 x i8]* %line, i64 0, i64 38
  %36 = bitcast i8* %scevgep57.i to i64*
  %37 = bitcast [12 x i8]* %yc.i to i64*
  %38 = getelementptr inbounds [12 x i8]* %yc.i, i64 0, i64 8
  %scevgep52.i = getelementptr [4097 x i8]* %line, i64 0, i64 46
  %39 = bitcast i8* %scevgep52.i to i64*
  %40 = bitcast [12 x i8]* %zc.i to i64*
  %41 = getelementptr inbounds [12 x i8]* %zc.i, i64 0, i64 8
  %scevgep47.i = getelementptr [4097 x i8]* %line, i64 0, i64 54
  %42 = getelementptr inbounds [12 x i8]* %occup.i, i64 0, i64 6
  %scevgep.i8 = getelementptr [4097 x i8]* %line, i64 0, i64 60
  %43 = getelementptr inbounds [12 x i8]* %bfac.i, i64 0, i64 7
  %44 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %45 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 11
  %46 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  %47 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  %48 = icmp eq i32 %bChange, 0
  %49 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %50 = getelementptr inbounds [4097 x i8]* %line, i64 0, i64 29
  %51 = getelementptr inbounds [12 x i8]* %sa, i64 0, i64 0
  %52 = getelementptr inbounds [12 x i8]* %sb, i64 0, i64 0
  %53 = getelementptr inbounds [12 x i8]* %sc, i64 0, i64 0
  %54 = bitcast [3 x float]* %box to i8*
  %55 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %56 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %57 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %58 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %59 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %60 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %61 = call i64 @llvm.objectsize.i64.p0i8(i8* %title, i1 false)
  %62 = icmp eq i32* %model_nr, null
  %63 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %in) #10
  %64 = icmp eq i8* %63, null
  br i1 %64, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %7, %select.unfold.backedge.thread.backedge
  %natom.01127 = phi i32 [ %natom.011.be, %select.unfold.backedge.thread.backedge ], [ 0, %7 ]
  %bCOMPND.01326 = phi i32 [ %bCOMPND.013.be, %select.unfold.backedge.thread.backedge ], [ 0, %7 ]
  %65 = call i32 @line2type(i8* %1) #12
  switch i32 %65, label %select.unfold.backedge.thread.backedge [
    i32 0, label %69
    i32 1, label %69
    i32 2, label %175
    i32 3, label %217
    i32 9, label %.preheader21
    i32 8, label %.preheader21
    i32 4, label %284
    i32 7, label %select.unfold.backedge
    i32 5, label %315
    i32 6, label %.critedge
  ]

select.unfold.backedge.thread.backedge:           ; preds = %.lr.ph, %316, %315, %287, %282, %280, %._crit_edge, %268, %217, %read_anisou.exit, %175, %read_atom.exit, %306, %310, %313, %select.unfold.backedge
  %bCOMPND.013.be = phi i32 [ %bCOMPND.01326, %select.unfold.backedge ], [ 1, %313 ], [ 1, %310 ], [ 1, %306 ], [ %bCOMPND.01326, %read_atom.exit ], [ %bCOMPND.01326, %175 ], [ %bCOMPND.01326, %read_anisou.exit ], [ %bCOMPND.01326, %217 ], [ %bCOMPND.01326, %268 ], [ %bCOMPND.01326, %._crit_edge ], [ %bCOMPND.01326, %280 ], [ %bCOMPND.01326, %282 ], [ %bCOMPND.01326, %287 ], [ %bCOMPND.01326, %315 ], [ %bCOMPND.01326, %316 ], [ %bCOMPND.01326, %.lr.ph ]
  %natom.011.be = phi i32 [ %natom.01127, %select.unfold.backedge ], [ %natom.01127, %313 ], [ %natom.01127, %310 ], [ %natom.01127, %306 ], [ %174, %read_atom.exit ], [ %natom.01127, %175 ], [ %natom.01127, %read_anisou.exit ], [ %natom.01127, %217 ], [ %natom.01127, %268 ], [ %natom.01127, %._crit_edge ], [ %natom.01127, %280 ], [ %natom.01127, %282 ], [ %natom.01127, %287 ], [ %natom.01127, %315 ], [ %natom.01127, %316 ], [ %natom.01127, %.lr.ph ]
  %66 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %in) #10
  %67 = icmp eq i8* %66, null
  br i1 %67, label %.critedge, label %.lr.ph

select.unfold.backedge:                           ; preds = %.lr.ph
  %68 = load i32* @bTER, align 4, !tbaa !18
  %not. = icmp eq i32 %68, 0
  br i1 %not., label %select.unfold.backedge.thread.backedge, label %.critedge

; <label>:69                                      ; preds = %.lr.ph, %.lr.ph
  call void @llvm.lifetime.start(i64 12, i8* %8)
  call void @llvm.lifetime.start(i64 12, i8* %9)
  call void @llvm.lifetime.start(i64 12, i8* %10)
  call void @llvm.lifetime.start(i64 12, i8* %11)
  call void @llvm.lifetime.start(i64 12, i8* %12)
  call void @llvm.lifetime.start(i64 12, i8* %13)
  call void @llvm.lifetime.start(i64 12, i8* %14)
  call void @llvm.lifetime.start(i64 12, i8* %15)
  call void @llvm.lifetime.start(i64 12, i8* %16)
  call void @llvm.lifetime.start(i64 12, i8* %17)
  %70 = load i32* %18, align 4, !tbaa !33
  %71 = icmp sgt i32 %70, %natom.01127
  br i1 %71, label %74, label %72

; <label>:72                                      ; preds = %69
  %73 = add nsw i32 %natom.01127, 1
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([54 x i8]* @.str35, i64 0, i64 0), i32 %73, i32 %70) #10
  br label %74

; <label>:74                                      ; preds = %72, %69
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %scevgep93.i, i64 5, i32 1, i1 false) #5
  store i8 0, i8* %19, align 1, !tbaa !13
  call void @trim(i8* %8) #10
  %75 = load i32* %20, align 4
  store i32 %75, i32* %21, align 4
  store i8 0, i8* %22, align 4, !tbaa !13
  call void @trim(i8* %9) #10
  %76 = bitcast i8* %23 to i64*
  %77 = load i64* %76, align 16
  %78 = trunc i64 %77 to i8
  %79 = lshr i64 %77, 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %24, align 4
  store i8 0, i8* %25, align 4, !tbaa !13
  call void @trim(i8* %10) #10
  %.pre.i = load i8* %.phi.trans.insert.i, align 1, !tbaa !13
  %81 = load i32* %26, align 2
  store i32 %81, i32* %27, align 4
  store i32 %81, i32* %28, align 4
  store i8 0, i8* %29, align 4, !tbaa !13
  call void @trim(i8* %11) #10
  %82 = load i8* %30, align 2, !tbaa !13
  store i8 %82, i8* %31, align 4, !tbaa !13
  store i8 0, i8* %32, align 1, !tbaa !13
  call void @trim(i8* %17) #10
  %83 = load i64* %33, align 2
  store i64 %83, i64* %34, align 8
  store i8 0, i8* %35, align 8, !tbaa !13
  %84 = load i64* %36, align 2
  store i64 %84, i64* %37, align 8
  store i8 0, i8* %38, align 8, !tbaa !13
  %85 = load i64* %39, align 2
  store i64 %85, i64* %40, align 8
  store i8 0, i8* %41, align 8, !tbaa !13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %scevgep47.i, i64 6, i32 1, i1 false) #5
  store i8 0, i8* %42, align 1, !tbaa !13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %scevgep.i8, i64 7, i32 1, i1 false) #5
  store i8 0, i8* %43, align 1, !tbaa !13
  %86 = load %struct.t_atom** %44, align 8, !tbaa !24
  %87 = icmp eq %struct.t_atom* %86, null
  %.pre95.i = sext i32 %natom.01127 to i64
  br i1 %87, label %._crit_edge94.i, label %88

; <label>:88                                      ; preds = %74
  %89 = icmp eq i32 %natom.01127, 0
  br i1 %89, label %.critedge.i, label %90

; <label>:90                                      ; preds = %88
  %91 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnr, i64 0, i64 0), i8* %17) #10
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

; <label>:93                                      ; preds = %90
  %94 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnm, i64 0, i64 0), i8* %10) #10
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %113, label %98

.critedge.i:                                      ; preds = %88
  %96 = call i8* @__strcpy_chk(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnr, i64 0, i64 0), i8* %17, i64 12) #10
  %97 = call i8* @__strcpy_chk(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnm, i64 0, i64 0), i8* %10, i64 12) #10
  br label %107

; <label>:98                                      ; preds = %93, %90
  %99 = call i8* @__strcpy_chk(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnr, i64 0, i64 0), i8* %17, i64 12) #10
  %100 = call i8* @__strcpy_chk(i8* getelementptr inbounds ([12 x i8]* @read_atom.oldresnm, i64 0, i64 0), i8* %10, i64 12) #10
  %101 = add nsw i32 %natom.01127, -1
  %102 = sext i32 %101 to i64
  %103 = load %struct.t_atom** %44, align 8, !tbaa !24
  %104 = getelementptr inbounds %struct.t_atom* %103, i64 %102, i32 7
  %105 = load i32* %104, align 4, !tbaa !25
  %106 = add nsw i32 %105, 1
  br label %107

; <label>:107                                     ; preds = %98, %.critedge.i
  %newres.0.i = phi i32 [ %106, %98 ], [ 0, %.critedge.i ]
  %108 = add nsw i32 %newres.0.i, 1
  store i32 %108, i32* %46, align 4, !tbaa !34
  %109 = call i8** @put_symtab(%struct.t_symtab* @read_pdbfile.symtab, i8* %10) #10
  %110 = sext i32 %newres.0.i to i64
  %111 = load i8**** %47, align 8, !tbaa !27
  %112 = getelementptr inbounds i8*** %111, i64 %110
  store i8** %109, i8*** %112, align 8, !tbaa !28
  br label %118

; <label>:113                                     ; preds = %93
  %114 = add nsw i32 %natom.01127, -1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.t_atom* %86, i64 %115, i32 7
  %117 = load i32* %116, align 4, !tbaa !25
  br label %118

; <label>:118                                     ; preds = %113, %107
  %newres.1.i = phi i32 [ %newres.0.i, %107 ], [ %117, %113 ]
  br i1 %48, label %gromacs_name.exit.i, label %119

; <label>:119                                     ; preds = %118
  %120 = call i64 @strlen(i8* %9) #10
  %121 = trunc i64 %120 to i32
  %122 = load i8* %9, align 4, !tbaa !13
  %123 = sext i8 %122 to i32
  %isdigittmp.i.i = add nsw i32 %123, -48
  %isdigit.i.i = icmp ult i32 %isdigittmp.i.i, 10
  br i1 %isdigit.i.i, label %.preheader.i.i, label %134

.preheader.i.i:                                   ; preds = %119
  %124 = icmp sgt i32 %121, 1
  br i1 %124, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %125 = add i32 %121, -1
  br label %126

; <label>:126                                     ; preds = %126, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %126 ]
  %127 = getelementptr inbounds [12 x i8]* %anm.i, i64 0, i64 %indvars.iv.i.i
  %128 = load i8* %127, align 1, !tbaa !13
  %129 = add nsw i64 %indvars.iv.i.i, -1
  %130 = getelementptr inbounds [12 x i8]* %anm.i, i64 0, i64 %129
  store i8 %128, i8* %130, align 1, !tbaa !13
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %125
  br i1 %exitcond, label %._crit_edge.i.i, label %126

._crit_edge.i.i:                                  ; preds = %126, %.preheader.i.i
  %131 = shl i64 %120, 32
  %sext.i.i = add i64 %131, -4294967296
  %132 = ashr exact i64 %sext.i.i, 32
  %133 = getelementptr inbounds [12 x i8]* %anm.i, i64 0, i64 %132
  store i8 %122, i8* %133, align 1, !tbaa !13
  br label %134

; <label>:134                                     ; preds = %._crit_edge.i.i, %119
  %135 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([4 x i8]* @.str36, i64 0, i64 0)) #10
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %gromacs_name.exit.i

; <label>:137                                     ; preds = %134
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* getelementptr inbounds ([3 x i8]* @.str37, i64 0, i64 0), i64 3, i32 1, i1 false) #5
  br label %gromacs_name.exit.i

gromacs_name.exit.i:                              ; preds = %137, %134, %118
  %138 = call i8** @put_symtab(%struct.t_symtab* @read_pdbfile.symtab, i8* %9) #10
  %139 = load i8**** %49, align 8, !tbaa !29
  %140 = getelementptr inbounds i8*** %139, i64 %.pre95.i
  store i8** %138, i8*** %140, align 8, !tbaa !28
  %141 = getelementptr inbounds %struct.t_atom* %86, i64 %.pre95.i, i32 9
  store i8 %.pre.i, i8* %141, align 1, !tbaa !30
  %142 = getelementptr inbounds %struct.t_atom* %86, i64 %.pre95.i, i32 7
  store i32 %newres.1.i, i32* %142, align 4, !tbaa !25
  %143 = getelementptr inbounds %struct.t_atom* %86, i64 %.pre95.i, i32 0
  store float 0.000000e+00, float* %143, align 4, !tbaa !35
  %144 = getelementptr inbounds %struct.t_atom* %86, i64 %.pre95.i, i32 1
  store float 0.000000e+00, float* %144, align 4, !tbaa !36
  br label %._crit_edge94.i

._crit_edge94.i:                                  ; preds = %gromacs_name.exit.i, %74
  %145 = call double @atof(i8* %12) #10
  %146 = fmul double %145, 1.000000e-01
  %147 = fptrunc double %146 to float
  %148 = getelementptr inbounds [3 x float]* %x, i64 %.pre95.i, i64 0
  store float %147, float* %148, align 4, !tbaa !14
  %149 = call double @atof(i8* %13) #10
  %150 = fmul double %149, 1.000000e-01
  %151 = fptrunc double %150 to float
  %152 = getelementptr inbounds [3 x float]* %x, i64 %.pre95.i, i64 1
  store float %151, float* %152, align 4, !tbaa !14
  %153 = call double @atof(i8* %14) #10
  %154 = fmul double %153, 1.000000e-01
  %155 = fptrunc double %154 to float
  %156 = getelementptr inbounds [3 x float]* %x, i64 %.pre95.i, i64 2
  store float %155, float* %156, align 4, !tbaa !14
  %157 = load %struct.t_pdbinfo** %45, align 8, !tbaa !19
  %158 = icmp eq %struct.t_pdbinfo* %157, null
  br i1 %158, label %read_atom.exit, label %159

; <label>:159                                     ; preds = %._crit_edge94.i
  %160 = getelementptr inbounds %struct.t_pdbinfo* %157, i64 %.pre95.i, i32 0
  store i32 %65, i32* %160, align 4, !tbaa !31
  %161 = call i32 @atoi(i8* %8) #10
  %162 = getelementptr inbounds %struct.t_pdbinfo* %157, i64 %.pre95.i, i32 1
  store i32 %161, i32* %162, align 4, !tbaa !37
  %163 = getelementptr inbounds %struct.t_pdbinfo* %157, i64 %.pre95.i, i32 2
  store i8 %78, i8* %163, align 1, !tbaa !38
  %164 = getelementptr inbounds %struct.t_pdbinfo* %157, i64 %.pre95.i, i32 3, i64 0
  %165 = call i64 @llvm.objectsize.i64.p0i8(i8* %164, i1 false) #5
  %166 = call i8* @__strcpy_chk(i8* %164, i8* %17, i64 %165) #10
  %167 = call double @atof(i8* %16) #10
  %168 = fptrunc double %167 to float
  %169 = load %struct.t_pdbinfo** %45, align 8, !tbaa !19
  %170 = getelementptr inbounds %struct.t_pdbinfo* %169, i64 %.pre95.i, i32 5
  store float %168, float* %170, align 4, !tbaa !32
  %171 = call double @atof(i8* %15) #10
  %172 = fptrunc double %171 to float
  %173 = getelementptr inbounds %struct.t_pdbinfo* %169, i64 %.pre95.i, i32 4
  store float %172, float* %173, align 4, !tbaa !22
  br label %read_atom.exit

read_atom.exit:                                   ; preds = %._crit_edge94.i, %159
  %174 = add nsw i32 %natom.01127, 1
  call void @llvm.lifetime.end(i64 12, i8* %8)
  call void @llvm.lifetime.end(i64 12, i8* %9)
  call void @llvm.lifetime.end(i64 12, i8* %10)
  call void @llvm.lifetime.end(i64 12, i8* %11)
  call void @llvm.lifetime.end(i64 12, i8* %12)
  call void @llvm.lifetime.end(i64 12, i8* %13)
  call void @llvm.lifetime.end(i64 12, i8* %14)
  call void @llvm.lifetime.end(i64 12, i8* %15)
  call void @llvm.lifetime.end(i64 12, i8* %16)
  call void @llvm.lifetime.end(i64 12, i8* %17)
  br label %select.unfold.backedge.thread.backedge

; <label>:175                                     ; preds = %.lr.ph
  %176 = load %struct.t_pdbinfo** %45, align 8, !tbaa !19
  %177 = icmp eq %struct.t_pdbinfo* %176, null
  br i1 %177, label %select.unfold.backedge.thread.backedge, label %178

; <label>:178                                     ; preds = %175
  call void @llvm.lifetime.start(i64 12, i8* %8)
  call void @llvm.lifetime.start(i64 12, i8* %9)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %scevgep93.i, i64 5, i32 1, i1 false) #5
  store i8 0, i8* %19, align 1, !tbaa !13
  %179 = load i32* %20, align 4
  store i32 %179, i32* %21, align 4
  store i8 0, i8* %22, align 4, !tbaa !13
  call void @trim(i8* %9) #10
  %180 = call i32 @atoi(i8* %8) #10
  %181 = icmp sgt i32 %natom.01127, 0
  br i1 %181, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %178
  %182 = load i8**** %49, align 8, !tbaa !29
  %183 = sext i32 %natom.01127 to i64
  br label %184

; <label>:184                                     ; preds = %.backedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %183, %.lr.ph.i ], [ %indvars.iv.next.i, %.backedge.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %185 = getelementptr inbounds i8*** %182, i64 %indvars.iv.next.i
  %186 = load i8*** %185, align 8, !tbaa !28
  %187 = load i8** %186, align 8, !tbaa !28
  %188 = call i32 @strcmp(i8* %9, i8* %187) #10
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %191, label %.backedge.i

.backedge.i:                                      ; preds = %191, %184
  %190 = icmp sgt i64 %indvars.iv.i, 1
  br i1 %190, label %184, label %._crit_edge.i

; <label>:191                                     ; preds = %184
  %192 = load %struct.t_pdbinfo** %45, align 8, !tbaa !19
  %193 = getelementptr inbounds %struct.t_pdbinfo* %192, i64 %indvars.iv.next.i, i32 1
  %194 = load i32* %193, align 4, !tbaa !37
  %195 = icmp eq i32 %180, %194
  br i1 %195, label %198, label %.backedge.i

._crit_edge.i:                                    ; preds = %.backedge.i, %178
  %196 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !28
  %197 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %196, i8* getelementptr inbounds ([47 x i8]* @.str38, i64 0, i64 0), i8* %9, i32 %180) #10
  br label %read_anisou.exit

; <label>:198                                     ; preds = %191
  %sext.i = shl i64 %indvars.iv.next.i, 32
  %199 = ashr exact i64 %sext.i, 32
  %200 = getelementptr inbounds %struct.t_pdbinfo* %192, i64 %199, i32 7, i64 0
  %201 = getelementptr inbounds %struct.t_pdbinfo* %192, i64 %199, i32 7, i64 1
  %202 = getelementptr inbounds %struct.t_pdbinfo* %192, i64 %199, i32 7, i64 2
  %203 = getelementptr inbounds %struct.t_pdbinfo* %192, i64 %199, i32 7, i64 3
  %204 = getelementptr inbounds %struct.t_pdbinfo* %192, i64 %199, i32 7, i64 4
  %205 = getelementptr inbounds %struct.t_pdbinfo* %192, i64 %199, i32 7, i64 5
  %206 = call i32 (i8*, i8*, ...)* @sscanf(i8* %50, i8* getelementptr inbounds ([13 x i8]* @.str39, i64 0, i64 0), i32* %200, i32* %201, i32* %202, i32* %203, i32* %204, i32* %205) #10
  %207 = icmp eq i32 %206, 6
  br i1 %207, label %208, label %211

; <label>:208                                     ; preds = %198
  %209 = load %struct.t_pdbinfo** %45, align 8, !tbaa !19
  %210 = getelementptr inbounds %struct.t_pdbinfo* %209, i64 %199, i32 6
  store i32 1, i32* %210, align 4, !tbaa !39
  br label %read_anisou.exit

; <label>:211                                     ; preds = %198
  %212 = trunc i64 %indvars.iv.next.i to i32
  %213 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !28
  %214 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %213, i8* getelementptr inbounds ([35 x i8]* @.str40, i64 0, i64 0), i32 %212) #10
  %215 = load %struct.t_pdbinfo** %45, align 8, !tbaa !19
  %216 = getelementptr inbounds %struct.t_pdbinfo* %215, i64 %199, i32 6
  store i32 0, i32* %216, align 4, !tbaa !39
  br label %read_anisou.exit

read_anisou.exit:                                 ; preds = %._crit_edge.i, %208, %211
  call void @llvm.lifetime.end(i64 12, i8* %8)
  call void @llvm.lifetime.end(i64 12, i8* %9)
  br label %select.unfold.backedge.thread.backedge

; <label>:217                                     ; preds = %.lr.ph
  br i1 %2, label %218, label %select.unfold.backedge.thread.backedge

; <label>:218                                     ; preds = %217
  %219 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), i8* %51, i8* %52, i8* %53, double* %alpha, double* %beta, double* %gamma) #10
  %220 = call double @atof(i8* %51) #10
  %221 = fmul double %220, 1.000000e-01
  %222 = call double @atof(i8* %52) #10
  %223 = fmul double %222, 1.000000e-01
  %224 = call double @atof(i8* %53) #10
  %225 = fmul double %224, 1.000000e-01
  call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 36, i32 4, i1 false) #5
  %226 = fptrunc double %221 to float
  store float %226, float* %55, align 4, !tbaa !14
  %227 = load double* %alpha, align 8, !tbaa !16
  %228 = fadd double %227, -9.000000e+01
  %229 = call double @fabs(double %228) #13
  %230 = fcmp ogt double %229, 1.200000e-38
  %.pre19 = load double* %beta, align 8, !tbaa !16
  br i1 %230, label %._crit_edge, label %231

; <label>:231                                     ; preds = %218
  %232 = fadd double %.pre19, -9.000000e+01
  %233 = call double @fabs(double %232) #13
  %234 = fcmp ogt double %233, 1.200000e-38
  br i1 %234, label %._crit_edge, label %235

; <label>:235                                     ; preds = %231
  %236 = load double* %gamma, align 8, !tbaa !16
  %237 = fadd double %236, -9.000000e+01
  %238 = call double @fabs(double %237) #13
  %239 = fcmp ogt double %238, 1.200000e-38
  br i1 %239, label %._crit_edge, label %268

._crit_edge:                                      ; preds = %218, %235, %231
  %240 = fmul double %227, 0x3F91DF46A2529D39
  store double %240, double* %alpha, align 8, !tbaa !16
  %241 = fmul double %.pre19, 0x3F91DF46A2529D39
  store double %241, double* %beta, align 8, !tbaa !16
  %242 = load double* %gamma, align 8, !tbaa !16
  %243 = fmul double %242, 0x3F91DF46A2529D39
  store double %243, double* %gamma, align 8, !tbaa !16
  %244 = call double @cos(double %243) #13
  %245 = fmul double %223, %244
  %246 = fptrunc double %245 to float
  store float %246, float* %56, align 4, !tbaa !14
  %247 = call double @sin(double %243) #13
  %248 = fmul double %223, %247
  %249 = fptrunc double %248 to float
  store float %249, float* %57, align 4, !tbaa !14
  %250 = call double @cos(double %241) #13
  %251 = fmul double %225, %250
  %252 = fptrunc double %251 to float
  store float %252, float* %58, align 4, !tbaa !14
  %253 = call double @cos(double %240) #13
  %254 = fmul double %250, %244
  %255 = fsub double %253, %254
  %256 = fmul double %225, %255
  %257 = fdiv double %256, %247
  %258 = fptrunc double %257 to float
  store float %258, float* %59, align 4, !tbaa !14
  %259 = fmul double %225, %225
  %260 = fmul float %252, %252
  %261 = fpext float %260 to double
  %262 = fsub double %259, %261
  %263 = fmul float %258, %258
  %264 = fpext float %263 to double
  %265 = fsub double %262, %264
  %266 = call double @sqrt(double %265) #13
  %267 = fptrunc double %266 to float
  store float %267, float* %60, align 4, !tbaa !14
  br label %select.unfold.backedge.thread.backedge

; <label>:268                                     ; preds = %235
  %269 = fptrunc double %223 to float
  store float %269, float* %57, align 4, !tbaa !14
  %270 = fptrunc double %225 to float
  store float %270, float* %60, align 4, !tbaa !14
  br label %select.unfold.backedge.thread.backedge

.preheader21:                                     ; preds = %.lr.ph, %.lr.ph, %.preheader21
  %c.0 = phi i8* [ %273, %.preheader21 ], [ %scevgep93.i, %.lr.ph ], [ %scevgep93.i, %.lr.ph ]
  %271 = load i8* %c.0, align 1, !tbaa !13
  %272 = icmp eq i8 %271, 32
  %273 = getelementptr inbounds i8* %c.0, i64 1
  br i1 %272, label %.critedge1..critedge1_crit_edge, label %.preheader21

.critedge1..critedge1_crit_edge:                  ; preds = %.preheader21, %.critedge1..critedge1_crit_edge
  %c.0.pn = phi i8* [ %274, %.critedge1..critedge1_crit_edge ], [ %c.0, %.preheader21 ]
  %274 = getelementptr inbounds i8* %c.0.pn, i64 1
  %.pre17 = load i8* %274, align 1, !tbaa !13
  %275 = icmp eq i8 %.pre17, 32
  br i1 %275, label %.critedge1..critedge1_crit_edge, label %276

; <label>:276                                     ; preds = %.critedge1..critedge1_crit_edge
  %277 = call i8* @strstr(i8* %274, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0)) #10
  %278 = icmp eq i8* %277, null
  br i1 %278, label %280, label %279

; <label>:279                                     ; preds = %276
  store i8 0, i8* %277, align 1, !tbaa !13
  %strlenfirst3.pre = load i8* %274, align 1
  br label %280

; <label>:280                                     ; preds = %276, %279
  %strlenfirst3 = phi i8 [ %.pre17, %276 ], [ %strlenfirst3.pre, %279 ]
  %281 = icmp eq i8 %strlenfirst3, 0
  br i1 %281, label %select.unfold.backedge.thread.backedge, label %282

; <label>:282                                     ; preds = %280
  %283 = call i8* @__strcpy_chk(i8* %title, i8* %274, i64 %61) #10
  br label %select.unfold.backedge.thread.backedge

; <label>:284                                     ; preds = %.lr.ph
  %285 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0)) #10
  %286 = icmp eq i8* %285, null
  br i1 %286, label %290, label %287

; <label>:287                                     ; preds = %284
  %288 = call i8* @strstr(i8* %scevgep93.i, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0)) #10
  %289 = icmp eq i8* %288, null
  br i1 %289, label %select.unfold.backedge.thread.backedge, label %290

; <label>:290                                     ; preds = %287, %284
  %291 = call i8* @strstr(i8* %scevgep93.i, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0)) #10
  %292 = icmp eq i8* %291, null
  %. = select i1 %292, i8* %1, i8* %291
  br label %293

; <label>:293                                     ; preds = %293, %290
  %c.2 = phi i8* [ %296, %293 ], [ %., %290 ]
  %294 = load i8* %c.2, align 1, !tbaa !13
  %295 = icmp eq i8 %294, 32
  %296 = getelementptr inbounds i8* %c.2, i64 1
  br i1 %295, label %.critedge2..critedge2_crit_edge, label %293

.critedge2..critedge2_crit_edge:                  ; preds = %293, %.critedge2..critedge2_crit_edge
  %c.2.pn = phi i8* [ %297, %.critedge2..critedge2_crit_edge ], [ %c.2, %293 ]
  %297 = getelementptr inbounds i8* %c.2.pn, i64 1
  %.pre = load i8* %297, align 1, !tbaa !13
  %298 = icmp eq i8 %.pre, 32
  br i1 %298, label %.critedge2..critedge2_crit_edge, label %.critedge4

.critedge4:                                       ; preds = %.critedge2..critedge2_crit_edge
  %299 = call i8* @strstr(i8* %297, i8* getelementptr inbounds ([4 x i8]* @.str18, i64 0, i64 0)) #10
  %300 = icmp eq i8* %299, null
  br i1 %300, label %306, label %.preheader

.preheader:                                       ; preds = %.critedge4, %.preheader
  %d.0 = phi i8* [ %301, %.preheader ], [ %299, %.critedge4 ]
  %301 = getelementptr inbounds i8* %d.0, i64 -1
  %302 = load i8* %301, align 1, !tbaa !13
  %303 = icmp eq i8 %302, 59
  %304 = icmp ugt i8* %d.0, %297
  %.5 = and i1 %304, %303
  br i1 %.5, label %.preheader, label %305

; <label>:305                                     ; preds = %.preheader
  store i8 0, i8* %d.0, align 1, !tbaa !13
  %strlenfirst.pre = load i8* %297, align 1
  br label %306

; <label>:306                                     ; preds = %.critedge4, %305
  %strlenfirst = phi i8 [ %.pre, %.critedge4 ], [ %strlenfirst.pre, %305 ]
  %307 = icmp eq i8 %strlenfirst, 0
  br i1 %307, label %select.unfold.backedge.thread.backedge, label %308

; <label>:308                                     ; preds = %306
  %309 = icmp eq i32 %bCOMPND.01326, 0
  br i1 %309, label %313, label %310

; <label>:310                                     ; preds = %308
  %311 = call i8* @__strcat_chk(i8* %title, i8* getelementptr inbounds ([3 x i8]* @.str19, i64 0, i64 0), i64 %61) #10
  %312 = call i8* @__strcat_chk(i8* %title, i8* %297, i64 %61) #10
  br label %select.unfold.backedge.thread.backedge

; <label>:313                                     ; preds = %308
  %314 = call i8* @__strcpy_chk(i8* %title, i8* %297, i64 %61) #10
  br label %select.unfold.backedge.thread.backedge

; <label>:315                                     ; preds = %.lr.ph
  br i1 %62, label %select.unfold.backedge.thread.backedge, label %316

; <label>:316                                     ; preds = %315
  %317 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str20, i64 0, i64 0), i32* %model_nr) #10
  br label %select.unfold.backedge.thread.backedge

.critedge:                                        ; preds = %select.unfold.backedge.thread.backedge, %.lr.ph, %select.unfold.backedge, %7
  %natom.011.lcssa = phi i32 [ 0, %7 ], [ %natom.01127, %select.unfold.backedge ], [ %natom.01127, %.lr.ph ], [ %natom.011.be, %select.unfold.backedge.thread.backedge ]
  call void @llvm.lifetime.end(i64 4097, i8* %1) #5
  ret i32 %natom.011.lcssa
}

; Function Attrs: optsize
declare void @open_symtab(%struct.t_symtab*) #1

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct.__sFILE*) #1

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #6

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #9

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #7

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #7

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #7

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #9

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @get_pdb_coordnum(%struct.__sFILE* %in, i32* nocapture %natoms) #4 {
  %line = alloca [4096 x i8], align 16
  %1 = getelementptr inbounds [4096 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5
  store i32 0, i32* %natoms, align 4, !tbaa !18
  %2 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %in) #10
  %3 = icmp eq i8* %2, null
  br i1 %3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0, %.backedge
  %4 = load i32* @bTER, align 4, !tbaa !18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %.thread, label %6

; <label>:6                                       ; preds = %.lr.ph
  %7 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i64 3) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %._crit_edge, label %11

.thread:                                          ; preds = %.lr.ph
  %9 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str22, i64 0, i64 0), i64 6) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %._crit_edge, label %11

; <label>:11                                      ; preds = %6, %.thread
  %12 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i64 6) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

; <label>:14                                      ; preds = %11
  %15 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i64 6) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %.backedge

; <label>:17                                      ; preds = %14, %11
  %18 = load i32* %natoms, align 4, !tbaa !18
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %natoms, align 4, !tbaa !18
  br label %.backedge

.backedge:                                        ; preds = %17, %14
  %20 = call i8* @fgets2(i8* %1, i32 4096, %struct.__sFILE* %in) #10
  %21 = icmp eq i8* %20, null
  br i1 %21, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread, %6, %.backedge, %0
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @read_pdb_conf(i8* %infile, i8* %title, %struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, [3 x float]* %box, i32 %bChange) #4 {
  %1 = tail call %struct.__sFILE* @ffopen(i8* %infile, i8* getelementptr inbounds ([2 x i8]* @.str25, i64 0, i64 0)) #10
  %2 = tail call i32 @read_pdbfile(%struct.__sFILE* %1, i8* %title, i32* null, %struct.t_atoms* %atoms, [3 x float]* %x, [3 x float]* %box, i32 %bChange) #12
  tail call void @ffclose(%struct.__sFILE* %1) #10
  ret void
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #1

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #9

; Function Attrs: optsize
declare i8** @put_symtab(%struct.t_symtab*, i8*) #1

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #9

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare float @fabsf(float)

declare float @sqrtf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind optsize }
attributes #11 = { readnone }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize readnone }

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
!19 = !{!20, !4, i64 1272}
!20 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !21, i64 72, !5, i64 1128, !4, i64 1272}
!21 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!22 = !{!23, !15, i64 16}
!23 = !{!"", !7, i64 0, !7, i64 4, !5, i64 8, !5, i64 9, !15, i64 16, !15, i64 20, !7, i64 24, !5, i64 28}
!24 = !{!20, !4, i64 8}
!25 = !{!26, !7, i64 24}
!26 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !8, i64 16, !8, i64 18, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 37}
!27 = !{!20, !4, i64 48}
!28 = !{!4, !4, i64 0}
!29 = !{!20, !4, i64 16}
!30 = !{!26, !5, i64 37}
!31 = !{!23, !7, i64 0}
!32 = !{!23, !15, i64 20}
!33 = !{!20, !7, i64 0}
!34 = !{!20, !7, i64 40}
!35 = !{!26, !15, i64 0}
!36 = !{!26, !15, i64 4}
!37 = !{!23, !7, i64 4}
!38 = !{!23, !5, i64 8}
!39 = !{!23, !7, i64 24}
