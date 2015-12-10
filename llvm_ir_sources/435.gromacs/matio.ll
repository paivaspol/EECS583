; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/matio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.t_mapping = type { %struct.t_xpmelmt, i8*, %struct.t_rgb }
%struct.t_xpmelmt = type { i8, i8 }
%struct.t_rgb = type { float, float, float }
%struct.t_matrix = type { i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, float*, float*, i16**, i32, %struct.t_mapping* }

@.str = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/matio.c\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"m[0]\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"m[i]\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"(*m)[i]\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"*m\00", align 1
@.str6 = private unnamed_addr constant [76 x i8] c"Not enough lines in colormap file %s(just wanted to read number of entries)\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str8 = private unnamed_addr constant [66 x i8] c"Not enough lines in colormap file %s(should be %d, found only %d)\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"%s%s%lf%lf%lf\00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str11 = private unnamed_addr constant [30 x i8] c"%c%c  %20s  %10g  %10g  %10g\0A\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str13 = private unnamed_addr constant [28 x i8] c"%c %10.3g %10g  %10g  %10g\0A\00", align 1
@mapper = internal global [89 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+{}|;:',<.>/?\00", align 16
@fgetline.line0 = internal unnamed_addr global i8* null, align 8
@fgetline.linelengthmax = internal unnamed_addr global i32 0, align 4
@.str14 = private unnamed_addr constant [6 x i8] c"line0\00", align 1
@.str15 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str17 = private unnamed_addr constant [7 x i8] c"legend\00", align 1
@.str18 = private unnamed_addr constant [8 x i8] c"x-label\00", align 1
@.str19 = private unnamed_addr constant [8 x i8] c"y-label\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"Discrete\00", align 1
@debug = external global %struct.__sFILE*
@.str22 = private unnamed_addr constant [13 x i8] c"%s %s %s %s\0A\00", align 1
@.str23 = private unnamed_addr constant [17 x i8] c"Invalid XPixMap\0A\00", align 1
@.str24 = private unnamed_addr constant [12 x i8] c"%d %d %d %d\00", align 1
@.str25 = private unnamed_addr constant [62 x i8] c"Sorry can only read xpm's with at most 2 caracters per pixel\0A\00", align 1
@.str26 = private unnamed_addr constant [40 x i8] c"mm->nx %d mm->ny %d mm->nmap %d nch %d\0A\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str28 = private unnamed_addr constant [15 x i8] c"%*s #%2x%2x%2x\00", align 1
@.str29 = private unnamed_addr constant [15 x i8] c"%*s #%4x%4x%4x\00", align 1
@.str30 = private unnamed_addr constant [45 x i8] c"Unsupported or invalid colormap in X PixMap\0A\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str31 = private unnamed_addr constant [26 x i8] c"Using white for color \22%s\00", align 1
@.str32 = private unnamed_addr constant [84 x i8] c"Number of read colors map entries (%d) does not match the number in the header (%d)\00", align 1
@.str33 = private unnamed_addr constant [7 x i8] c"x-axis\00", align 1
@.str34 = private unnamed_addr constant [11 x i8] c"mm->axis_x\00", align 1
@.str35 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str36 = private unnamed_addr constant [29 x i8] c"To many x-axis labels in xpm\00", align 1
@.str37 = private unnamed_addr constant [7 x i8] c"y-axis\00", align 1
@.str38 = private unnamed_addr constant [11 x i8] c"mm->axis_y\00", align 1
@.str39 = private unnamed_addr constant [29 x i8] c"To many y-axis labels in xpm\00", align 1
@.str40 = private unnamed_addr constant [11 x i8] c"mm->matrix\00", align 1
@.str41 = private unnamed_addr constant [14 x i8] c"mm->matrix[i]\00", align 1
@.str42 = private unnamed_addr constant [10 x i8] c"%3d%%\08\08\08\08\00", align 1
@.str43 = private unnamed_addr constant [46 x i8] c"Not enough caracters in row %d of the matrix\0A\00", align 1
@.str44 = private unnamed_addr constant [31 x i8] c"Not enough rows in the matrix\0A\00", align 1
@.str45 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str46 = private unnamed_addr constant [10 x i8] c"/* XPM */\00", align 1
@.str47 = private unnamed_addr constant [8 x i8] c"*matrix\00", align 1
@.str48 = private unnamed_addr constant [5 x i8] c"rmap\00", align 1
@.str49 = private unnamed_addr constant [88 x i8] c"Could not convert matrix to reals,\0Acolor map entry %d has a non-real description: \22%s\22\0A\00", align 1
@.str50 = private unnamed_addr constant [4 x i8] c"mat\00", align 1
@.str51 = private unnamed_addr constant [7 x i8] c"mat[i]\00", align 1
@.str52 = private unnamed_addr constant [50 x i8] c"Converted a %dx%d matrix with %d levels to reals\0A\00", align 1
@.str53 = private unnamed_addr constant [11 x i8] c"/* XPM */\0A\00", align 1
@.str54 = private unnamed_addr constant [23 x i8] c"/* Generated by %s */\0A\00", align 1
@.str55 = private unnamed_addr constant [71 x i8] c"/* This file can be converted to EPS by the GROMACS program xpm2ps */\0A\00", align 1
@.str56 = private unnamed_addr constant [21 x i8] c"/* title:   \22%s\22 */\0A\00", align 1
@.str57 = private unnamed_addr constant [21 x i8] c"/* legend:  \22%s\22 */\0A\00", align 1
@.str58 = private unnamed_addr constant [21 x i8] c"/* x-label: \22%s\22 */\0A\00", align 1
@.str59 = private unnamed_addr constant [21 x i8] c"/* y-label: \22%s\22 */\0A\00", align 1
@.str60 = private unnamed_addr constant [27 x i8] c"/* type:    \22Discrete\22 */\0A\00", align 1
@.str61 = private unnamed_addr constant [29 x i8] c"/* type:    \22Continuous\22 */\0A\00", align 1
@.str62 = private unnamed_addr constant [56 x i8] c"Warning, too many levels (%d) in matrix, using %d only\0A\00", align 1
@.str63 = private unnamed_addr constant [57 x i8] c"Warning, too few levels (%d) in matrix, using 2 instead\0A\00", align 1
@.str64 = private unnamed_addr constant [25 x i8] c"Lo: %f, Mid: %f, Hi: %f\0A\00", align 1
@.str65 = private unnamed_addr constant [32 x i8] c"static char *gromacs_xpm[] = {\0A\00", align 1
@.str66 = private unnamed_addr constant [18 x i8] c"\22%d %d   %d %d\22,\0A\00", align 1
@.str67 = private unnamed_addr constant [39 x i8] c"\22%c%c c #%02X%02X%02X \22 /* \22%.3g\22 */,\0A\00", align 1
@.str68 = private unnamed_addr constant [4 x i8] c"*/\0A\00", align 1
@.str69 = private unnamed_addr constant [14 x i8] c"/* %s-axis:  \00", align 1
@.str70 = private unnamed_addr constant [4 x i8] c"%g \00", align 1
@.str73 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str74 = private unnamed_addr constant [4 x i8] c"\22,\0A\00", align 1
@.str75 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str76 = private unnamed_addr constant [37 x i8] c"\22%c%c c #%02X%02X%02X \22 /* \22%s\22 */,\0A\00", align 1
@.str77 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str78 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str79 = private unnamed_addr constant [19 x i8] c"hi (%g) <= lo (%g)\00", align 1
@.str80 = private unnamed_addr constant [19 x i8] c"hi (%f) <= lo (%f)\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale

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

; Function Attrs: nounwind optsize ssp uwtable
define float** @mk_matrix(i32 %nx, i32 %ny, i32 %b1D) #3 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 55, i32 %nx, i32 8) #10
  %2 = bitcast i8* %1 to float**
  %3 = icmp ne i32 %b1D, 0
  br i1 %3, label %4, label %.preheader

; <label>:4                                       ; preds = %0
  %5 = mul nsw i32 %ny, %nx
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 57, i32 %5, i32 4) #10
  %7 = bitcast i8* %1 to i8**
  store i8* %6, i8** %7, align 8, !tbaa !14
  br label %.preheader

.preheader:                                       ; preds = %4, %0
  %8 = icmp sgt i32 %nx, 0
  br i1 %8, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %9 = sext i32 %ny to i64
  %10 = add i32 %nx, -1
  br label %11

; <label>:11                                      ; preds = %21, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %21 ]
  br i1 %3, label %12, label %17

; <label>:12                                      ; preds = %11
  %13 = mul nsw i64 %indvars.iv, %9
  %14 = load float** %2, align 8, !tbaa !14
  %15 = getelementptr inbounds float* %14, i64 %13
  %16 = getelementptr inbounds float** %2, i64 %indvars.iv
  store float* %15, float** %16, align 8, !tbaa !14
  br label %21

; <label>:17                                      ; preds = %11
  %18 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 63, i32 %ny, i32 4) #10
  %19 = getelementptr inbounds float** %2, i64 %indvars.iv
  %20 = bitcast float** %19 to i8**
  store i8* %18, i8** %20, align 8, !tbaa !14
  br label %21

; <label>:21                                      ; preds = %12, %17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %10
  br i1 %exitcond, label %._crit_edge, label %11

._crit_edge:                                      ; preds = %21, %.preheader
  ret float** %2
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @done_matrix(i32 %nx, float*** nocapture %m) #3 {
  %1 = icmp sgt i32 %nx, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = add i32 %nx, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = load float*** %m, align 8, !tbaa !14
  %5 = getelementptr inbounds float** %4, i64 %indvars.iv
  %6 = bitcast float** %5 to i8**
  %7 = load i8** %6, align 8, !tbaa !14
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 73, i8* %7) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %3, %0
  %8 = bitcast float*** %m to i8**
  %9 = load i8** %8, align 8, !tbaa !14
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 74, i8* %9) #10
  store float** null, float*** %m, align 8, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @clear_matrix(i32 %nx, i32 %ny, float** nocapture readonly %m) #3 {
  %1 = icmp sgt i32 %nx, 0
  br i1 %1, label %.preheader.lr.ph, label %._crit_edge3

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp sgt i32 %ny, 0
  %3 = add i32 %ny, -1
  %4 = zext i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 2
  %6 = add nuw nsw i64 %5, 4
  %7 = add i32 %nx, -1
  br label %.preheader

.preheader:                                       ; preds = %11, %.preheader.lr.ph
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %11 ]
  br i1 %2, label %.lr.ph, label %11

.lr.ph:                                           ; preds = %.preheader
  %8 = getelementptr inbounds float** %m, i64 %indvars.iv
  %9 = bitcast float** %8 to i8**
  %10 = load i8** %9, align 8, !tbaa !14
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 %6, i32 4, i1 false)
  br label %11

; <label>:11                                      ; preds = %.lr.ph, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %7
  br i1 %exitcond, label %._crit_edge3, label %.preheader

._crit_edge3:                                     ; preds = %11, %0
  ret void
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @matelmt_cmp(i16 %e1.coerce, i16 %e2.coerce) #4 {
  %1 = zext i16 %e1.coerce to i32
  %2 = zext i16 %e2.coerce to i32
  %sext = shl i32 %1, 24
  %sext1 = shl i32 %2, 24
  %3 = icmp eq i32 %sext, %sext1
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %.unshifted = xor i16 %e2.coerce, %e1.coerce
  %5 = icmp ult i16 %.unshifted, 256
  br label %6

; <label>:6                                       ; preds = %4, %0
  %7 = phi i1 [ false, %0 ], [ %5, %4 ]
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define signext i16 @searchcmap(i32 %n, %struct.t_mapping* nocapture readonly %map, i16 %c.coerce) #5 {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %0
  %2 = zext i16 %c.coerce to i32
  %sext1.i = shl i32 %2, 24
  %3 = sext i32 %n to i64
  br label %4

; <label>:4                                       ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ]
  %5 = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 0
  %6 = bitcast %struct.t_xpmelmt* %5 to i16*
  %7 = load i16* %6, align 1
  %8 = zext i16 %7 to i32
  %sext.i = shl i32 %8, 24
  %9 = icmp eq i32 %sext.i, %sext1.i
  %.unshifted.i = xor i16 %7, %c.coerce
  %10 = icmp ult i16 %.unshifted.i, 256
  %or.cond = and i1 %10, %9
  br i1 %or.cond, label %11, label %.critedge

; <label>:11                                      ; preds = %4
  %12 = trunc i64 %indvars.iv to i16
  br label %.loopexit

.critedge:                                        ; preds = %4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %13 = icmp slt i64 %indvars.iv.next, %3
  br i1 %13, label %4, label %.loopexit

.loopexit:                                        ; preds = %.critedge, %0, %11
  %.0 = phi i16 [ %12, %11 ], [ -1, %0 ], [ -1, %.critedge ]
  ret i16 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @getcmap(%struct.__sFILE* %in, i8* %fn, %struct.t_mapping** nocapture %map) #3 {
  %n = alloca i32, align 4
  %line = alloca [4096 x i8], align 16
  %code = alloca [4096 x i8], align 16
  %desc = alloca [4096 x i8], align 16
  %r = alloca double, align 8
  %g = alloca double, align 8
  %b = alloca double, align 8
  %1 = getelementptr inbounds [4096 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #6
  %2 = getelementptr inbounds [4096 x i8]* %code, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %2) #6
  %3 = getelementptr inbounds [4096 x i8]* %desc, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %3) #6
  %4 = call i8* @fgets2(i8* %1, i32 4095, %struct.__sFILE* %in) #10
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([76 x i8]* @.str6, i64 0, i64 0), i8* %fn) #10
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* %n) #10
  %9 = load i32* %n, align 4, !tbaa !15
  %10 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 115, i32 %9, i32 32) #10
  %11 = bitcast i8* %10 to %struct.t_mapping*
  %12 = load i32* %n, align 4, !tbaa !15
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %7, %20
  %indvars.iv = phi i64 [ %indvars.iv.next, %20 ], [ 0, %7 ]
  %14 = call i8* @fgets2(i8* %1, i32 4095, %struct.__sFILE* %in) #10
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %20

; <label>:16                                      ; preds = %.lr.ph
  %17 = load i32* %n, align 4, !tbaa !15
  %18 = add nsw i32 %17, 1
  %19 = trunc i64 %indvars.iv to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i8* %fn, i32 %18, i32 %19) #10
  br label %20

; <label>:20                                      ; preds = %16, %.lr.ph
  %21 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i8* %2, i8* %3, double* %r, double* %g, double* %b) #10
  %22 = load i8* %2, align 16, !tbaa !13
  %23 = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv, i32 0, i32 0
  store i8 %22, i8* %23, align 1, !tbaa !16
  %24 = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv, i32 0, i32 1
  store i8 0, i8* %24, align 1, !tbaa !21
  %25 = call i8* @strdup(i8* %3) #10
  %26 = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv, i32 1
  store i8* %25, i8** %26, align 8, !tbaa !22
  %27 = load double* %r, align 8, !tbaa !23
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv, i32 2, i32 0
  store float %28, float* %29, align 4, !tbaa !25
  %30 = load double* %g, align 8, !tbaa !23
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv, i32 2, i32 1
  store float %31, float* %32, align 4, !tbaa !26
  %33 = load double* %b, align 8, !tbaa !23
  %34 = fptrunc double %33 to float
  %35 = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv, i32 2, i32 2
  store float %34, float* %35, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %36 = load i32* %n, align 4, !tbaa !15
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %indvars.iv.next, %37
  br i1 %38, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %20, %7
  %39 = phi i32 [ %12, %7 ], [ %36, %20 ]
  %40 = bitcast %struct.t_mapping** %map to i8**
  store i8* %10, i8** %40, align 8, !tbaa !14
  call void @llvm.lifetime.end(i64 4096, i8* %3) #6
  call void @llvm.lifetime.end(i64 4096, i8* %2) #6
  call void @llvm.lifetime.end(i64 4096, i8* %1) #6
  ret i32 %39
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct.__sFILE*) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #7

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define i32 @readcmap(i8* %fn, %struct.t_mapping** nocapture %map) #3 {
  %1 = tail call %struct.__sFILE* @libopen(i8* %fn) #10
  %2 = tail call i32 @getcmap(%struct.__sFILE* %1, i8* %fn, %struct.t_mapping** %map) #11
  tail call void @ffclose(%struct.__sFILE* %1) #10
  ret i32 %2
}

; Function Attrs: optsize
declare %struct.__sFILE* @libopen(i8*) #1

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @printcmap(%struct.__sFILE* nocapture %out, i32 %n, %struct.t_mapping* nocapture readonly %map) #3 {
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32 %n) #10
  %2 = icmp sgt i32 %n, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = add i32 %n, -1
  br label %4

; <label>:4                                       ; preds = %4, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %4 ]
  %5 = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 0, i32 0
  %6 = load i8* %5, align 1, !tbaa !16
  %7 = icmp eq i8 %6, 0
  %8 = sext i8 %6 to i32
  %. = select i1 %7, i32 32, i32 %8
  %9 = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 0, i32 1
  %10 = load i8* %9, align 1, !tbaa !21
  %11 = icmp eq i8 %10, 0
  %12 = sext i8 %10 to i32
  %13 = select i1 %11, i32 32, i32 %12
  %14 = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 1
  %15 = load i8** %14, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 2, i32 0
  %17 = load float* %16, align 4, !tbaa !25
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 2, i32 1
  %20 = load float* %19, align 4, !tbaa !26
  %21 = fpext float %20 to double
  %22 = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 2, i32 2
  %23 = load float* %22, align 4, !tbaa !27
  %24 = fpext float %23 to double
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([30 x i8]* @.str11, i64 0, i64 0), i32 %., i32 %13, i8* %15, double %18, double %21, double %24) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %4, %0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: nounwind optsize ssp uwtable
define void @writecmap(i8* %fn, i32 %n, %struct.t_mapping* nocapture readonly %map) #3 {
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #10
  tail call void @printcmap(%struct.__sFILE* %1, i32 %n, %struct.t_mapping* %map) #11
  tail call void @ffclose(%struct.__sFILE* %1) #10
  ret void
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @do_wmap(%struct.__sFILE* nocapture %out, i32 %i0, i32 %imax, i32 %nlevels, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rhi.coerce0, float %rhi.coerce1, float %lo, float %hi) #3 {
  %1 = icmp sgt i32 %imax, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = extractelement <2 x float> %rlo.coerce0, i32 0
  %3 = extractelement <2 x float> %rhi.coerce0, i32 0
  %4 = sitofp i32 %nlevels to float
  %5 = extractelement <2 x float> %rlo.coerce0, i32 1
  %6 = extractelement <2 x float> %rhi.coerce0, i32 1
  %7 = sext i32 %i0 to i64
  %8 = zext i32 %nlevels to i64
  %9 = add i32 %imax, -1
  br label %10

; <label>:10                                      ; preds = %10, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %10 ]
  %11 = sub i64 %8, %indvars.iv
  %12 = trunc i64 %11 to i32
  %13 = sitofp i32 %12 to float
  %14 = fmul float %2, %13
  %15 = trunc i64 %indvars.iv to i32
  %16 = sitofp i32 %15 to float
  %17 = fmul float %3, %16
  %18 = fadd float %17, %14
  %19 = fdiv float %18, %4
  %20 = fmul float %5, %13
  %21 = fmul float %6, %16
  %22 = fadd float %21, %20
  %23 = fdiv float %22, %4
  %24 = fmul float %13, %rlo.coerce1
  %25 = fmul float %16, %rhi.coerce1
  %26 = fadd float %25, %24
  %27 = fdiv float %26, %4
  %28 = add nsw i64 %indvars.iv, %7
  %29 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %28
  %30 = load i8* %29, align 1, !tbaa !13
  %31 = sext i8 %30 to i32
  %32 = fmul float %13, %lo
  %33 = fmul float %16, %hi
  %34 = fadd float %33, %32
  %35 = fdiv float %34, %4
  %36 = fpext float %35 to double
  %37 = fpext float %19 to double
  %38 = fpext float %23 to double
  %39 = fpext float %27 to double
  %40 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([28 x i8]* @.str13, i64 0, i64 0), i32 %31, double %36, double %37, double %38, double %39) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %15, %9
  br i1 %exitcond, label %._crit_edge, label %10

._crit_edge:                                      ; preds = %10, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @fgetline(i8** nocapture %line, i32 %llmax, %struct.__sFILE* nocapture %in) #3 {
  %1 = load i32* @fgetline.linelengthmax, align 4, !tbaa !15
  %2 = icmp slt i32 %1, %llmax
  br i1 %2, label %3, label %._crit_edge

._crit_edge:                                      ; preds = %0
  %.pre = load i8** @fgetline.line0, align 8, !tbaa !14
  br label %6

; <label>:3                                       ; preds = %0
  store i32 %llmax, i32* @fgetline.linelengthmax, align 4, !tbaa !15
  %4 = load i8** @fgetline.line0, align 8, !tbaa !14
  %5 = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 190, i8* %4, i32 %llmax) #10
  store i8* %5, i8** @fgetline.line0, align 8, !tbaa !14
  %.pre1 = load i32* @fgetline.linelengthmax, align 4, !tbaa !15
  br label %6

; <label>:6                                       ; preds = %._crit_edge, %3
  %7 = phi i32 [ %1, %._crit_edge ], [ %.pre1, %3 ]
  %8 = phi i8* [ %.pre, %._crit_edge ], [ %5, %3 ]
  %9 = tail call i8* @fgets(i8* %8, i32 %7, %struct.__sFILE* %in) #10
  %10 = load i8** @fgetline.line0, align 8, !tbaa !14
  store i8* %10, i8** %line, align 8, !tbaa !14
  tail call void @trim(i8* %10) #10
  ret i8* %9
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) #7

; Function Attrs: optsize
declare void @trim(i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @skipstr(i8** nocapture %line) #3 {
  %1 = load i8** %line, align 8, !tbaa !14
  tail call void @ltrim(i8* %1) #10
  %.pre = load i8** %line, align 8, !tbaa !14
  br label %2

; <label>:2                                       ; preds = %5, %0
  %3 = phi i8* [ %6, %5 ], [ %.pre, %0 ]
  %4 = load i8* %3, align 1, !tbaa !13
  switch i8 %4, label %5 [
    i8 32, label %.critedge
    i8 0, label %.critedge
  ]

; <label>:5                                       ; preds = %2
  %6 = getelementptr inbounds i8* %3, i64 1
  store i8* %6, i8** %line, align 8, !tbaa !14
  br label %2

.critedge:                                        ; preds = %2, %2
  ret void
}

; Function Attrs: optsize
declare void @ltrim(i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define i8* @line2string(i8** nocapture %line) #3 {
  %1 = load i8** %line, align 8, !tbaa !14
  %2 = icmp eq i8* %1, null
  br i1 %2, label %21, label %.preheader

.preheader:                                       ; preds = %0
  %3 = load i8* %1, align 1, !tbaa !13
  %4 = icmp eq i8 %3, 34
  %5 = icmp ne i8 %3, 0
  %not.6 = xor i1 %4, true
  %.7 = and i1 %5, %not.6
  br i1 %.7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %6 = phi i8* [ %7, %.lr.ph ], [ %1, %.preheader ]
  %7 = getelementptr inbounds i8* %6, i64 1
  store i8* %7, i8** %line, align 8, !tbaa !14
  %8 = load i8* %7, align 1, !tbaa !13
  %9 = icmp eq i8 %8, 34
  %10 = icmp ne i8 %8, 0
  %not. = xor i1 %9, true
  %. = and i1 %10, %not.
  br i1 %., label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa5 = phi i1 [ %4, %.preheader ], [ %9, %.lr.ph ]
  %.lcssa4 = phi i8* [ %1, %.preheader ], [ %7, %.lr.ph ]
  br i1 %.lcssa5, label %11, label %21

; <label>:11                                      ; preds = %._crit_edge
  %12 = getelementptr inbounds i8* %.lcssa4, i64 1
  store i8* %12, i8** %line, align 8, !tbaa !14
  br label %13

; <label>:13                                      ; preds = %13, %11
  %indvars.iv = phi i64 [ %.sum, %13 ], [ 0, %11 ]
  %.sum = add nuw i64 %indvars.iv, 1
  %14 = getelementptr inbounds i8* %.lcssa4, i64 %.sum
  %15 = load i8* %14, align 1, !tbaa !13
  %16 = icmp eq i8 %15, 34
  %17 = icmp ne i8 %15, 0
  %not.2 = xor i1 %16, true
  %.1 = and i1 %17, %not.2
  br i1 %.1, label %13, label %18

; <label>:18                                      ; preds = %13
  br i1 %16, label %20, label %19

; <label>:19                                      ; preds = %18
  store i8* null, i8** %line, align 8, !tbaa !14
  br label %21

; <label>:20                                      ; preds = %18
  store i8 0, i8* %14, align 1, !tbaa !13
  %.pre = load i8** %line, align 8, !tbaa !14
  br label %21

; <label>:21                                      ; preds = %20, %19, %0, %._crit_edge
  %.0 = phi i8* [ null, %._crit_edge ], [ null, %0 ], [ null, %19 ], [ %.pre, %20 ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @parsestring(i8* %line, i8* nocapture readonly %label, i8* %string) #3 {
  %1 = alloca i8*, align 8
  store i8* %line, i8** %1, align 8, !tbaa !14
  %2 = tail call i8* @strstr(i8* %line, i8* %label) #10
  %3 = icmp eq i8* %2, null
  br i1 %3, label %12, label %4

; <label>:4                                       ; preds = %0
  %5 = tail call i8* @strchr(i8* %line, i32 34) #10
  %6 = icmp ult i8* %2, %5
  br i1 %6, label %7, label %12

; <label>:7                                       ; preds = %4
  %8 = call i8* @line2string(i8** %1) #11
  %9 = load i8** %1, align 8, !tbaa !14
  %10 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %string, i1 false)
  %11 = tail call i8* @__strcpy_chk(i8* %string, i8* %9, i64 %10) #10
  br label %12

; <label>:12                                      ; preds = %0, %4, %7
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #8

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #8

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #7

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #9

; Function Attrs: nounwind optsize ssp uwtable
define void @read_xpm_entry(%struct.__sFILE* nocapture %in, %struct.t_matrix* %mm) #3 {
  %line = alloca i8*, align 8
  %buf = alloca [256 x i8], align 16
  %nch = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %u = alloca double, align 8
  store i8* null, i8** %line, align 8, !tbaa !14
  %1 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %1) #6
  %2 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 3, i64 0
  store i8 0, i8* %2, align 1, !tbaa !13
  %3 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 4, i64 0
  store i8 0, i8* %3, align 1, !tbaa !13
  %4 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 5, i64 0
  store i8 0, i8* %4, align 1, !tbaa !13
  %5 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 6, i64 0
  store i8 0, i8* %5, align 1, !tbaa !13
  %6 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 10
  %7 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 8
  %8 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 9
  %9 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 7
  %10 = bitcast i32* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 28, i32 4, i1 false)
  %11 = call i8* @fgetline(i8** %line, i32 4096, %struct.__sFILE* %in) #11
  %12 = icmp eq i8* %11, null
  br i1 %12, label %.critedge, label %.lr.ph53

.lr.ph53:                                         ; preds = %0, %16
  %13 = load i8** %line, align 8, !tbaa !14
  %14 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i64 6) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %.critedge, label %16

; <label>:16                                      ; preds = %.lr.ph53
  call void @parsestring(i8* %13, i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), i8* %2) #11
  %17 = load i8** %line, align 8, !tbaa !14
  call void @parsestring(i8* %17, i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), i8* %3) #11
  %18 = load i8** %line, align 8, !tbaa !14
  call void @parsestring(i8* %18, i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0), i8* %4) #11
  %19 = load i8** %line, align 8, !tbaa !14
  call void @parsestring(i8* %19, i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), i8* %5) #11
  %20 = load i8** %line, align 8, !tbaa !14
  call void @parsestring(i8* %20, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i8* %1) #11
  %21 = call i8* @fgetline(i8** %line, i32 4096, %struct.__sFILE* %in) #11
  %22 = icmp eq i8* %21, null
  br i1 %22, label %.critedge, label %.lr.ph53

.critedge:                                        ; preds = %16, %.lr.ph53, %0
  %23 = load i8* %1, align 16, !tbaa !13
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

; <label>:25                                      ; preds = %.critedge
  %26 = call i32 @strcasecmp(i8* %1, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0)) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %25
  store i32 1, i32* %9, align 4, !tbaa !28
  br label %29

; <label>:29                                      ; preds = %.critedge, %28, %25
  %30 = load %struct.__sFILE** @debug, align 8, !tbaa !14
  %31 = icmp eq %struct.__sFILE* %30, null
  br i1 %31, label %34, label %32

; <label>:32                                      ; preds = %29
  %33 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %30, i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0), i8* %2, i8* %3, i8* %4, i8* %5) #10
  br label %34

; <label>:34                                      ; preds = %29, %32
  %35 = load i8** %line, align 8, !tbaa !14
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i64 6) #10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %.preheader18, label %38

; <label>:38                                      ; preds = %34
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str23, i64 0, i64 0)) #10
  br label %.preheader18

.preheader18:                                     ; preds = %34, %38
  %39 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 0
  %40 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 1
  %41 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 11
  br label %.outer19

.outer19:                                         ; preds = %.preheader18, %62
  %llmax.0.ph = phi i32 [ 4096, %.preheader18 ], [ %.5, %62 ]
  %bGetOnWithIt.0.ph = phi i1 [ true, %.preheader18 ], [ false, %62 ]
  br label %42

; <label>:42                                      ; preds = %.outer19, %._crit_edge50
  br i1 %bGetOnWithIt.0.ph, label %43, label %.critedge1

; <label>:43                                      ; preds = %42
  %44 = call i8* @fgetline(i8** %line, i32 %llmax.0.ph, %struct.__sFILE* %in) #11
  %45 = icmp eq i8* %44, null
  br i1 %45, label %.critedge1, label %.preheader17

.preheader17:                                     ; preds = %43
  %46 = load i8** %line, align 8, !tbaa !14
  %47 = load i8* %46, align 1, !tbaa !13
  %48 = icmp eq i8 %47, 34
  %49 = icmp ne i8 %47, 0
  %not.1447 = xor i1 %48, true
  %.48 = and i1 %49, %not.1447
  br i1 %.48, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %.preheader17, %.lr.ph49
  %50 = phi i8* [ %51, %.lr.ph49 ], [ %46, %.preheader17 ]
  %51 = getelementptr inbounds i8* %50, i64 1
  store i8* %51, i8** %line, align 8, !tbaa !14
  %52 = load i8* %51, align 1, !tbaa !13
  %53 = icmp eq i8 %52, 34
  %54 = icmp ne i8 %52, 0
  %not.14 = xor i1 %53, true
  %. = and i1 %54, %not.14
  br i1 %., label %.lr.ph49, label %._crit_edge50

._crit_edge50:                                    ; preds = %.lr.ph49, %.preheader17
  %.lcssa25 = phi i1 [ %48, %.preheader17 ], [ %53, %.lr.ph49 ]
  br i1 %.lcssa25, label %55, label %42

; <label>:55                                      ; preds = %._crit_edge50
  %56 = call i8* @line2string(i8** %line) #11
  %57 = load i8** %line, align 8, !tbaa !14
  %58 = call i32 (i8*, i8*, ...)* @sscanf(i8* %57, i8* getelementptr inbounds ([12 x i8]* @.str24, i64 0, i64 0), i32* %39, i32* %40, i32* %41, i32* %nch) #10
  %59 = load i32* %nch, align 4, !tbaa !15
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %62

; <label>:61                                      ; preds = %55
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([62 x i8]* @.str25, i64 0, i64 0)) #10
  br label %62

; <label>:62                                      ; preds = %61, %55
  %63 = load i32* %39, align 4, !tbaa !30
  %64 = add nsw i32 %63, 10
  %65 = icmp slt i32 %64, 4096
  %.5 = select i1 %65, i32 4096, i32 %64
  br label %.outer19

.critedge1:                                       ; preds = %43, %42
  %66 = load %struct.__sFILE** @debug, align 8, !tbaa !14
  %67 = icmp eq %struct.__sFILE* %66, null
  br i1 %67, label %74, label %68

; <label>:68                                      ; preds = %.critedge1
  %69 = load i32* %39, align 4, !tbaa !30
  %70 = load i32* %40, align 4, !tbaa !31
  %71 = load i32* %41, align 4, !tbaa !32
  %72 = load i32* %nch, align 4, !tbaa !15
  %73 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %66, i8* getelementptr inbounds ([40 x i8]* @.str26, i64 0, i64 0), i32 %69, i32 %70, i32 %71, i32 %72) #10
  br label %74

; <label>:74                                      ; preds = %.critedge1, %68
  %75 = load i32* %41, align 4, !tbaa !32
  %76 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 298, i32 %75, i32 32) #10
  %77 = bitcast i8* %76 to %struct.t_mapping*
  br label %.outer

.outer:                                           ; preds = %166, %74
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %166 ], [ 0, %74 ]
  br label %78

; <label>:78                                      ; preds = %.outer, %86
  %79 = load i32* %41, align 4, !tbaa !32
  %80 = sext i32 %79 to i64
  %81 = icmp slt i64 %indvars.iv73, %80
  %82 = trunc i64 %indvars.iv73 to i32
  br i1 %81, label %83, label %.critedge2

; <label>:83                                      ; preds = %78
  %84 = call i8* @fgetline(i8** %line, i32 %llmax.0.ph, %struct.__sFILE* %in) #11
  %85 = icmp eq i8* %84, null
  br i1 %85, label %..critedge2_crit_edge, label %86

..critedge2_crit_edge:                            ; preds = %83
  %.pre = load i32* %41, align 4, !tbaa !32
  br label %.critedge2

; <label>:86                                      ; preds = %83
  %87 = load i8** %line, align 8, !tbaa !14
  %88 = call i8* @strchr(i8* %87, i32 34) #10
  store i8* %88, i8** %line, align 8, !tbaa !14
  %89 = icmp eq i8* %88, null
  br i1 %89, label %78, label %90

; <label>:90                                      ; preds = %86
  %91 = getelementptr inbounds i8* %88, i64 1
  store i8* %91, i8** %line, align 8, !tbaa !14
  %92 = load i8* %91, align 1, !tbaa !13
  %93 = getelementptr inbounds %struct.t_mapping* %77, i64 %indvars.iv73, i32 0, i32 0
  store i8 %92, i8* %93, align 1, !tbaa !16
  %94 = load i32* %nch, align 4, !tbaa !15
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %99, label %96

; <label>:96                                      ; preds = %90
  %97 = getelementptr inbounds i8* %88, i64 2
  %98 = load i8* %97, align 1, !tbaa !13
  br label %99

; <label>:99                                      ; preds = %90, %96
  %.sink = phi i8 [ %98, %96 ], [ 0, %90 ]
  %100 = getelementptr inbounds %struct.t_mapping* %77, i64 %indvars.iv73, i32 0, i32 1
  store i8 %.sink, i8* %100, align 1
  %101 = load i32* %nch, align 4, !tbaa !15
  %102 = load i8** %line, align 8, !tbaa !14
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8* %102, i64 %103
  store i8* %104, i8** %line, align 8, !tbaa !14
  %105 = call i8* @strchr(i8* %104, i32 35) #10
  %106 = icmp eq i8* %105, null
  br i1 %106, label %154, label %.preheader16

.preheader16:                                     ; preds = %99
  %107 = getelementptr inbounds i8* %105, i64 1
  %108 = load i8* %107, align 1, !tbaa !13
  %109 = icmp slt i8 %108, 0
  br i1 %109, label %isxdigit.exit.thread.thread, label %isxdigit.exit

isxdigit.exit:                                    ; preds = %.preheader16, %115
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %115 ], [ 0, %.preheader16 ]
  %110 = phi i8 [ %117, %115 ], [ %108, %.preheader16 ]
  %111 = sext i8 %110 to i64
  %112 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %111
  %113 = load i32* %112, align 4, !tbaa !15
  %.lobit.i = and i32 %113, 65536
  %114 = icmp eq i32 %.lobit.i, 0
  br i1 %114, label %isxdigit.exit.thread, label %115

; <label>:115                                     ; preds = %isxdigit.exit
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %.sum = add nsw i64 %indvars.iv71, 2
  %116 = getelementptr inbounds i8* %105, i64 %.sum
  %117 = load i8* %116, align 1, !tbaa !13
  %118 = icmp slt i8 %117, 0
  br i1 %118, label %isxdigit.exit.thread, label %isxdigit.exit

isxdigit.exit.thread:                             ; preds = %115, %isxdigit.exit
  %indvars.iv.next72.sink = phi i64 [ %indvars.iv71, %isxdigit.exit ], [ %indvars.iv.next72, %115 ]
  %119 = trunc i64 %indvars.iv.next72.sink to i32
  switch i32 %119, label %isxdigit.exit.thread.thread [
    i32 6, label %120
    i32 12, label %137
  ]

; <label>:120                                     ; preds = %isxdigit.exit.thread
  %121 = call i32 (i8*, i8*, ...)* @sscanf(i8* %104, i8* getelementptr inbounds ([15 x i8]* @.str28, i64 0, i64 0), i32* %r, i32* %g, i32* %b) #10
  %122 = load i32* %r, align 4, !tbaa !15
  %123 = uitofp i32 %122 to double
  %124 = fdiv double %123, 2.550000e+02
  %125 = fptrunc double %124 to float
  %126 = getelementptr inbounds %struct.t_mapping* %77, i64 %indvars.iv73, i32 2, i32 0
  store float %125, float* %126, align 4, !tbaa !25
  %127 = load i32* %g, align 4, !tbaa !15
  %128 = uitofp i32 %127 to double
  %129 = fdiv double %128, 2.550000e+02
  %130 = fptrunc double %129 to float
  %131 = getelementptr inbounds %struct.t_mapping* %77, i64 %indvars.iv73, i32 2, i32 1
  store float %130, float* %131, align 4, !tbaa !26
  %132 = load i32* %b, align 4, !tbaa !15
  %133 = uitofp i32 %132 to double
  %134 = fdiv double %133, 2.550000e+02
  %135 = fptrunc double %134 to float
  %136 = getelementptr inbounds %struct.t_mapping* %77, i64 %indvars.iv73, i32 2, i32 2
  store float %135, float* %136, align 4, !tbaa !27
  br label %166

; <label>:137                                     ; preds = %isxdigit.exit.thread
  %138 = call i32 (i8*, i8*, ...)* @sscanf(i8* %104, i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i32* %r, i32* %g, i32* %b) #10
  %139 = load i32* %r, align 4, !tbaa !15
  %140 = uitofp i32 %139 to double
  %141 = fdiv double %140, 6.553500e+04
  %142 = fptrunc double %141 to float
  %143 = getelementptr inbounds %struct.t_mapping* %77, i64 %indvars.iv73, i32 2, i32 0
  store float %142, float* %143, align 4, !tbaa !25
  %144 = load i32* %g, align 4, !tbaa !15
  %145 = uitofp i32 %144 to double
  %146 = fdiv double %145, 6.553500e+04
  %147 = fptrunc double %146 to float
  %148 = getelementptr inbounds %struct.t_mapping* %77, i64 %indvars.iv73, i32 2, i32 1
  store float %147, float* %148, align 4, !tbaa !26
  %149 = load i32* %b, align 4, !tbaa !15
  %150 = uitofp i32 %149 to double
  %151 = fdiv double %150, 6.553500e+04
  %152 = fptrunc double %151 to float
  %153 = getelementptr inbounds %struct.t_mapping* %77, i64 %indvars.iv73, i32 2, i32 2
  store float %152, float* %153, align 4, !tbaa !27
  br label %166

isxdigit.exit.thread.thread:                      ; preds = %.preheader16, %isxdigit.exit.thread
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str30, i64 0, i64 0)) #10
  br label %166

; <label>:154                                     ; preds = %99
  %155 = call i8* @strchr(i8* %104, i32 99) #10
  %156 = icmp eq i8* %155, null
  br i1 %156, label %159, label %157

; <label>:157                                     ; preds = %154
  %158 = getelementptr inbounds i8* %155, i64 2
  br label %160

; <label>:159                                     ; preds = %154
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str30, i64 0, i64 0)) #10
  br label %160

; <label>:160                                     ; preds = %159, %157
  %str.0 = phi i8* [ %158, %157 ], [ null, %159 ]
  %161 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %162 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %161, i8* getelementptr inbounds ([26 x i8]* @.str31, i64 0, i64 0), i8* %str.0) #10
  %163 = getelementptr inbounds %struct.t_mapping* %77, i64 %indvars.iv73, i32 2, i32 0
  store float 1.000000e+00, float* %163, align 4, !tbaa !25
  %164 = getelementptr inbounds %struct.t_mapping* %77, i64 %indvars.iv73, i32 2, i32 1
  store float 1.000000e+00, float* %164, align 4, !tbaa !26
  %165 = getelementptr inbounds %struct.t_mapping* %77, i64 %indvars.iv73, i32 2, i32 2
  store float 1.000000e+00, float* %165, align 4, !tbaa !27
  br label %166

; <label>:166                                     ; preds = %120, %isxdigit.exit.thread.thread, %137, %160
  %167 = load i8** %line, align 8, !tbaa !14
  %168 = call i8* @strchr(i8* %167, i32 34) #10
  %169 = getelementptr inbounds i8* %168, i64 1
  store i8* %169, i8** %line, align 8, !tbaa !14
  %170 = call i8* @line2string(i8** %line) #11
  %171 = load i8** %line, align 8, !tbaa !14
  %172 = call i8* @strdup(i8* %171) #10
  %173 = getelementptr inbounds %struct.t_mapping* %77, i64 %indvars.iv73, i32 1
  store i8* %172, i8** %173, align 8, !tbaa !22
  %indvars.iv.next74 = add nuw i64 %indvars.iv73, 1
  br label %.outer

.critedge2:                                       ; preds = %78, %..critedge2_crit_edge
  %174 = phi i32 [ %.pre, %..critedge2_crit_edge ], [ %79, %78 ]
  %175 = icmp eq i32 %82, %174
  br i1 %175, label %177, label %176

; <label>:176                                     ; preds = %.critedge2
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([84 x i8]* @.str32, i64 0, i64 0), i32 %82, i32 %174) #10
  br label %177

; <label>:177                                     ; preds = %.critedge2, %176
  %178 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 12
  %179 = bitcast %struct.t_mapping** %178 to i8**
  store i8* %76, i8** %179, align 8, !tbaa !33
  %180 = bitcast float** %8 to i8**
  %181 = bitcast float** %7 to i8**
  br label %182

; <label>:182                                     ; preds = %260, %177
  %n_axis_x.0 = phi i32 [ 0, %177 ], [ %n_axis_x.2, %260 ]
  %n_axis_y.0 = phi i32 [ 0, %177 ], [ %n_axis_y.2, %260 ]
  %183 = load i8** %line, align 8, !tbaa !14
  %184 = call i8* @strstr(i8* %183, i8* getelementptr inbounds ([7 x i8]* @.str33, i64 0, i64 0)) #10
  %185 = icmp eq i8* %184, null
  br i1 %185, label %219, label %186

; <label>:186                                     ; preds = %182
  store i8* %184, i8** %line, align 8, !tbaa !14
  call void @ltrim(i8* %184) #10
  %.pre.i = load i8** %line, align 8, !tbaa !14
  br label %187

; <label>:187                                     ; preds = %190, %186
  %188 = phi i8* [ %191, %190 ], [ %.pre.i, %186 ]
  %189 = load i8* %188, align 1, !tbaa !13
  switch i8 %189, label %190 [
    i8 32, label %skipstr.exit
    i8 0, label %skipstr.exit
  ]

; <label>:190                                     ; preds = %187
  %191 = getelementptr inbounds i8* %188, i64 1
  store i8* %191, i8** %line, align 8, !tbaa !14
  br label %187

skipstr.exit:                                     ; preds = %187, %187
  %192 = load float** %7, align 8, !tbaa !34
  %193 = icmp eq float* %192, null
  br i1 %193, label %194, label %skipstr.exit9.preheader

; <label>:194                                     ; preds = %skipstr.exit
  %195 = load i32* %39, align 4, !tbaa !30
  %196 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 360, i32 %195, i32 4) #10
  store i8* %196, i8** %181, align 8, !tbaa !34
  %.pre75 = load i8** %line, align 8, !tbaa !14
  br label %skipstr.exit9.preheader

skipstr.exit9.preheader:                          ; preds = %194, %skipstr.exit
  %197 = phi i8* [ %.pre75, %194 ], [ %188, %skipstr.exit ]
  %198 = call i32 (i8*, i8*, ...)* @sscanf(i8* %197, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %u) #10
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %.lr.ph39, label %.loopexit

.lr.ph39:                                         ; preds = %skipstr.exit9.preheader
  %200 = sext i32 %n_axis_x.0 to i64
  br label %203

skipstr.exit9.loopexit:                           ; preds = %214, %214
  %201 = call i32 (i8*, i8*, ...)* @sscanf(i8* %215, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %u) #10
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %skipstr.exit9..loopexit15_crit_edge

; <label>:203                                     ; preds = %.lr.ph39, %skipstr.exit9.loopexit
  %indvars.iv67 = phi i64 [ %200, %.lr.ph39 ], [ %indvars.iv.next68, %skipstr.exit9.loopexit ]
  %204 = load i32* %39, align 4, !tbaa !30
  %205 = sext i32 %204 to i64
  %206 = icmp slt i64 %indvars.iv67, %205
  br i1 %206, label %208, label %207

; <label>:207                                     ; preds = %203
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str36, i64 0, i64 0)) #10
  br label %208

; <label>:208                                     ; preds = %203, %207
  %209 = load double* %u, align 8, !tbaa !23
  %210 = fptrunc double %209 to float
  %211 = load float** %7, align 8, !tbaa !34
  %212 = getelementptr inbounds float* %211, i64 %indvars.iv67
  store float %210, float* %212, align 4, !tbaa !35
  %indvars.iv.next68 = add i64 %indvars.iv67, 1
  %213 = load i8** %line, align 8, !tbaa !14
  call void @ltrim(i8* %213) #10
  %.pre.i8 = load i8** %line, align 8, !tbaa !14
  br label %214

; <label>:214                                     ; preds = %217, %208
  %215 = phi i8* [ %218, %217 ], [ %.pre.i8, %208 ]
  %216 = load i8* %215, align 1, !tbaa !13
  switch i8 %216, label %217 [
    i8 32, label %skipstr.exit9.loopexit
    i8 0, label %skipstr.exit9.loopexit
  ]

; <label>:217                                     ; preds = %214
  %218 = getelementptr inbounds i8* %215, i64 1
  store i8* %218, i8** %line, align 8, !tbaa !14
  br label %214

; <label>:219                                     ; preds = %182
  %220 = call i8* @strstr(i8* %183, i8* getelementptr inbounds ([7 x i8]* @.str37, i64 0, i64 0)) #10
  %221 = icmp eq i8* %220, null
  br i1 %221, label %.loopexit, label %222

; <label>:222                                     ; preds = %219
  store i8* %220, i8** %line, align 8, !tbaa !14
  call void @ltrim(i8* %220) #10
  %.pre.i10 = load i8** %line, align 8, !tbaa !14
  br label %223

; <label>:223                                     ; preds = %226, %222
  %224 = phi i8* [ %227, %226 ], [ %.pre.i10, %222 ]
  %225 = load i8* %224, align 1, !tbaa !13
  switch i8 %225, label %226 [
    i8 32, label %skipstr.exit11
    i8 0, label %skipstr.exit11
  ]

; <label>:226                                     ; preds = %223
  %227 = getelementptr inbounds i8* %224, i64 1
  store i8* %227, i8** %line, align 8, !tbaa !14
  br label %223

skipstr.exit11:                                   ; preds = %223, %223
  %228 = load float** %8, align 8, !tbaa !36
  %229 = icmp eq float* %228, null
  br i1 %229, label %230, label %skipstr.exit13.preheader

; <label>:230                                     ; preds = %skipstr.exit11
  %231 = load i32* %40, align 4, !tbaa !31
  %232 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 373, i32 %231, i32 4) #10
  store i8* %232, i8** %180, align 8, !tbaa !36
  %.pre76 = load i8** %line, align 8, !tbaa !14
  br label %skipstr.exit13.preheader

skipstr.exit13.preheader:                         ; preds = %230, %skipstr.exit11
  %233 = phi i8* [ %.pre76, %230 ], [ %224, %skipstr.exit11 ]
  %234 = call i32 (i8*, i8*, ...)* @sscanf(i8* %233, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %u) #10
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %.lr.ph42, label %.loopexit

.lr.ph42:                                         ; preds = %skipstr.exit13.preheader
  %236 = sext i32 %n_axis_y.0 to i64
  br label %239

skipstr.exit13.loopexit:                          ; preds = %250, %250
  %237 = call i32 (i8*, i8*, ...)* @sscanf(i8* %251, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %u) #10
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %skipstr.exit13..loopexit_crit_edge

; <label>:239                                     ; preds = %.lr.ph42, %skipstr.exit13.loopexit
  %indvars.iv69 = phi i64 [ %236, %.lr.ph42 ], [ %indvars.iv.next70, %skipstr.exit13.loopexit ]
  %240 = load i32* %40, align 4, !tbaa !31
  %241 = sext i32 %240 to i64
  %242 = icmp slt i64 %indvars.iv69, %241
  br i1 %242, label %244, label %243

; <label>:243                                     ; preds = %239
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str39, i64 0, i64 0)) #10
  br label %244

; <label>:244                                     ; preds = %239, %243
  %245 = load double* %u, align 8, !tbaa !23
  %246 = fptrunc double %245 to float
  %247 = load float** %8, align 8, !tbaa !36
  %248 = getelementptr inbounds float* %247, i64 %indvars.iv69
  store float %246, float* %248, align 4, !tbaa !35
  %indvars.iv.next70 = add i64 %indvars.iv69, 1
  %249 = load i8** %line, align 8, !tbaa !14
  call void @ltrim(i8* %249) #10
  %.pre.i12 = load i8** %line, align 8, !tbaa !14
  br label %250

; <label>:250                                     ; preds = %253, %244
  %251 = phi i8* [ %254, %253 ], [ %.pre.i12, %244 ]
  %252 = load i8* %251, align 1, !tbaa !13
  switch i8 %252, label %253 [
    i8 32, label %skipstr.exit13.loopexit
    i8 0, label %skipstr.exit13.loopexit
  ]

; <label>:253                                     ; preds = %250
  %254 = getelementptr inbounds i8* %251, i64 1
  store i8* %254, i8** %line, align 8, !tbaa !14
  br label %250

skipstr.exit13..loopexit_crit_edge:               ; preds = %skipstr.exit13.loopexit
  %255 = trunc i64 %indvars.iv.next70 to i32
  br label %.loopexit

skipstr.exit9..loopexit15_crit_edge:              ; preds = %skipstr.exit9.loopexit
  %256 = trunc i64 %indvars.iv.next68 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %skipstr.exit9.preheader, %skipstr.exit9..loopexit15_crit_edge, %skipstr.exit13.preheader, %skipstr.exit13..loopexit_crit_edge, %219
  %n_axis_x.2 = phi i32 [ %n_axis_x.0, %219 ], [ %n_axis_x.0, %skipstr.exit13..loopexit_crit_edge ], [ %n_axis_x.0, %skipstr.exit13.preheader ], [ %256, %skipstr.exit9..loopexit15_crit_edge ], [ %n_axis_x.0, %skipstr.exit9.preheader ]
  %n_axis_y.2 = phi i32 [ %n_axis_y.0, %219 ], [ %255, %skipstr.exit13..loopexit_crit_edge ], [ %n_axis_y.0, %skipstr.exit13.preheader ], [ %n_axis_y.0, %skipstr.exit9..loopexit15_crit_edge ], [ %n_axis_y.0, %skipstr.exit9.preheader ]
  %257 = load i8** %line, align 8, !tbaa !14
  %258 = load i8* %257, align 1, !tbaa !13
  %259 = icmp eq i8 %258, 34
  br i1 %259, label %.critedge3, label %260

; <label>:260                                     ; preds = %.loopexit
  %261 = call i8* @fgetline(i8** %line, i32 %llmax.0.ph, %struct.__sFILE* %in) #11
  %262 = icmp eq i8* %261, null
  br i1 %262, label %.critedge3, label %182

.critedge3:                                       ; preds = %260, %.loopexit
  %263 = load i32* %39, align 4, !tbaa !30
  %264 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 385, i32 %263, i32 8) #10
  %265 = bitcast i16*** %6 to i8**
  store i8* %264, i8** %265, align 8, !tbaa !37
  %266 = load i32* %39, align 4, !tbaa !30
  %267 = icmp sgt i32 %266, 0
  %268 = load i32* %40, align 4, !tbaa !31
  br i1 %267, label %.lr.ph34, label %._crit_edge35

.lr.ph34:                                         ; preds = %.critedge3, %.lr.ph34
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %.lr.ph34 ], [ 0, %.critedge3 ]
  %269 = phi i32 [ %277, %.lr.ph34 ], [ %268, %.critedge3 ]
  %270 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 387, i32 %269, i32 2) #10
  %271 = load i16*** %6, align 8, !tbaa !37
  %272 = getelementptr inbounds i16** %271, i64 %indvars.iv65
  %273 = bitcast i16** %272 to i8**
  store i8* %270, i8** %273, align 8, !tbaa !14
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %274 = load i32* %39, align 4, !tbaa !30
  %275 = sext i32 %274 to i64
  %276 = icmp slt i64 %indvars.iv.next66, %275
  %277 = load i32* %40, align 4, !tbaa !31
  br i1 %276, label %.lr.ph34, label %._crit_edge35

._crit_edge35:                                    ; preds = %.lr.ph34, %.critedge3
  %.lcssa23 = phi i32 [ %268, %.critedge3 ], [ %277, %.lr.ph34 ]
  %278 = add nsw i32 %.lcssa23, -1
  br label %279

; <label>:279                                     ; preds = %._crit_edge77, %._crit_edge35
  %280 = phi i32 [ %.lcssa23, %._crit_edge35 ], [ %.pre78, %._crit_edge77 ]
  %m.1 = phi i32 [ %278, %._crit_edge35 ], [ %m.2, %._crit_edge77 ]
  %281 = sdiv i32 %280, 100
  %282 = add nsw i32 %281, 1
  %283 = srem i32 %m.1, %282
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %.preheader

; <label>:285                                     ; preds = %279
  %286 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %287 = sub nsw i32 %280, %m.1
  %288 = mul nsw i32 %287, 100
  %289 = sdiv i32 %288, %280
  %290 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %286, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), i32 %289) #10
  br label %.preheader

.preheader:                                       ; preds = %285, %279
  %291 = load i8** %line, align 8, !tbaa !14
  %292 = load i8* %291, align 1, !tbaa !13
  %293 = icmp eq i8 %292, 34
  %294 = icmp ne i8 %292, 0
  %not.26 = xor i1 %293, true
  %.627 = and i1 %294, %not.26
  br i1 %.627, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %295 = phi i8* [ %296, %.lr.ph ], [ %291, %.preheader ]
  %296 = getelementptr inbounds i8* %295, i64 1
  store i8* %296, i8** %line, align 8, !tbaa !14
  %297 = load i8* %296, align 1, !tbaa !13
  %298 = icmp eq i8 %297, 34
  %299 = icmp ne i8 %297, 0
  %not. = xor i1 %298, true
  %.6 = and i1 %299, %not.
  br i1 %.6, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa20 = phi i1 [ %293, %.preheader ], [ %298, %.lr.ph ]
  %.lcssa = phi i8* [ %291, %.preheader ], [ %296, %.lr.ph ]
  br i1 %.lcssa20, label %302, label %300

; <label>:300                                     ; preds = %._crit_edge
  %301 = add nsw i32 %m.1, 1
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str43, i64 0, i64 0), i32 %301) #10
  br label %344

; <label>:302                                     ; preds = %._crit_edge
  %303 = getelementptr inbounds i8* %.lcssa, i64 1
  store i8* %303, i8** %line, align 8, !tbaa !14
  %304 = load i32* %39, align 4, !tbaa !30
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %302
  %306 = sext i32 %m.1 to i64
  %.pre79 = load i32* %nch, align 4, !tbaa !15
  br label %307

; <label>:307                                     ; preds = %.lr.ph31, %searchcmap.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph31 ], [ %indvars.iv.next, %searchcmap.exit ]
  %308 = trunc i64 %indvars.iv to i32
  %309 = mul nsw i32 %.pre79, %308
  %310 = sext i32 %309 to i64
  %.sum80 = add nsw i64 %310, 1
  %311 = getelementptr inbounds i8* %.lcssa, i64 %.sum80
  %312 = load i8* %311, align 1, !tbaa !13
  %313 = icmp eq i32 %.pre79, 1
  br i1 %313, label %319, label %314

; <label>:314                                     ; preds = %307
  %315 = add nsw i32 %309, 1
  %316 = sext i32 %315 to i64
  %.sum81 = add nsw i64 %316, 1
  %317 = getelementptr inbounds i8* %.lcssa, i64 %.sum81
  %318 = load i8* %317, align 1, !tbaa !13
  br label %319

; <label>:319                                     ; preds = %307, %314
  %c.sroa.2.0 = phi i8 [ %318, %314 ], [ 0, %307 ]
  %320 = load i32* %41, align 4, !tbaa !32
  %321 = load %struct.t_mapping** %178, align 8, !tbaa !33
  %322 = zext i8 %c.sroa.2.0 to i16
  %323 = shl nuw i16 %322, 8
  %324 = icmp sgt i32 %320, 0
  br i1 %324, label %.lr.ph.i, label %searchcmap.exit

.lr.ph.i:                                         ; preds = %319
  %325 = zext i8 %312 to i32
  %sext1.i.i = shl nuw i32 %325, 24
  %326 = sext i32 %320 to i64
  br label %327

; <label>:327                                     ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ]
  %328 = getelementptr inbounds %struct.t_mapping* %321, i64 %indvars.iv.i, i32 0
  %329 = bitcast %struct.t_xpmelmt* %328 to i16*
  %330 = load i16* %329, align 1
  %331 = zext i16 %330 to i32
  %sext.i.i = shl i32 %331, 24
  %332 = icmp eq i32 %sext.i.i, %sext1.i.i
  %.unshifted.i.i = xor i16 %330, %323
  %333 = icmp ult i16 %.unshifted.i.i, 256
  %or.cond.i = and i1 %333, %332
  br i1 %or.cond.i, label %334, label %.critedge.i

; <label>:334                                     ; preds = %327
  %335 = trunc i64 %indvars.iv.i to i16
  br label %searchcmap.exit

.critedge.i:                                      ; preds = %327
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %336 = icmp slt i64 %indvars.iv.next.i, %326
  br i1 %336, label %327, label %searchcmap.exit

searchcmap.exit:                                  ; preds = %.critedge.i, %319, %334
  %.0.i = phi i16 [ %335, %334 ], [ -1, %319 ], [ -1, %.critedge.i ]
  %337 = load i16*** %6, align 8, !tbaa !37
  %338 = getelementptr inbounds i16** %337, i64 %indvars.iv
  %339 = load i16** %338, align 8, !tbaa !14
  %340 = getelementptr inbounds i16* %339, i64 %306
  store i16 %.0.i, i16* %340, align 2, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %341 = sext i32 %304 to i64
  %342 = icmp slt i64 %indvars.iv.next, %341
  br i1 %342, label %307, label %._crit_edge32

._crit_edge32:                                    ; preds = %searchcmap.exit, %302
  %343 = add nsw i32 %m.1, -1
  br label %344

; <label>:344                                     ; preds = %300, %._crit_edge32
  %m.2 = phi i32 [ %m.1, %300 ], [ %343, %._crit_edge32 ]
  %345 = icmp sgt i32 %m.2, -1
  br i1 %345, label %346, label %.critedge7

; <label>:346                                     ; preds = %344
  %347 = call i8* @fgetline(i8** %line, i32 %llmax.0.ph, %struct.__sFILE* %in) #11
  %348 = icmp eq i8* %347, null
  br i1 %348, label %.critedge4, label %._crit_edge77

._crit_edge77:                                    ; preds = %346
  %.pre78 = load i32* %40, align 4, !tbaa !31
  br label %279

.critedge4:                                       ; preds = %346
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([31 x i8]* @.str44, i64 0, i64 0)) #10
  br label %.critedge7

.critedge7:                                       ; preds = %344, %.critedge4
  call void @llvm.lifetime.end(i64 256, i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #8

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #8

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_xpm_matrix(i8* %fnm, %struct.t_matrix** nocapture %matrix) #3 {
  %line = alloca i8*, align 8
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fnm, i8* getelementptr inbounds ([2 x i8]* @.str45, i64 0, i64 0)) #10
  %2 = bitcast %struct.t_matrix** %matrix to i8**
  br label %.outer

.outer:                                           ; preds = %10, %0
  %indvars.iv = phi i64 [ %indvars.iv.next, %10 ], [ 0, %0 ]
  br label %3

; <label>:3                                       ; preds = %.outer, %6
  %4 = call i8* @fgetline(i8** %line, i32 4096, %struct.__sFILE* %1) #11
  %5 = icmp eq i8* %4, null
  br i1 %5, label %17, label %6

; <label>:6                                       ; preds = %3
  %7 = load i8** %line, align 8, !tbaa !14
  %8 = tail call i8* @strstr(i8* %7, i8* getelementptr inbounds ([10 x i8]* @.str46, i64 0, i64 0)) #10
  %9 = icmp eq i8* %8, null
  br i1 %9, label %3, label %10

; <label>:10                                      ; preds = %6
  %11 = load i8** %2, align 8, !tbaa !14
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %12 = trunc i64 %indvars.iv.next to i32
  %13 = mul i32 %12, 1080
  %14 = tail call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 424, i8* %11, i32 %13) #10
  %15 = bitcast i8* %14 to %struct.t_matrix*
  store i8* %14, i8** %2, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.t_matrix* %15, i64 %indvars.iv
  tail call void @read_xpm_entry(%struct.__sFILE* %1, %struct.t_matrix* %16) #11
  br label %.outer

; <label>:17                                      ; preds = %3
  %18 = trunc i64 %indvars.iv to i32
  tail call void @ffclose(%struct.__sFILE* %1) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %17
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str23, i64 0, i64 0)) #10
  br label %21

; <label>:21                                      ; preds = %20, %17
  ret i32 %18
}

; Function Attrs: nounwind optsize ssp uwtable
define float** @matrix2real(%struct.t_matrix* nocapture readonly %matrix, float** readonly %mat) #3 {
  %tmp = alloca double, align 8
  %1 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 11
  %2 = load i32* %1, align 4, !tbaa !32
  %3 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 12
  %4 = load %struct.t_mapping** %3, align 8, !tbaa !33
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 446, i32 %2, i32 4) #10
  %6 = bitcast i8* %5 to float*
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %.lr.ph12, label %._crit_edge13

.lr.ph12:                                         ; preds = %0
  %8 = sext i32 %2 to i64
  br label %9

; <label>:9                                       ; preds = %.lr.ph12, %20
  %indvars.iv20 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next21, %20 ]
  %10 = getelementptr inbounds %struct.t_mapping* %4, i64 %indvars.iv20, i32 1
  %11 = load i8** %10, align 8, !tbaa !22
  %12 = icmp eq i8* %11, null
  %13 = trunc i64 %indvars.iv20 to i32
  br i1 %12, label %.loopexit32, label %14

; <label>:14                                      ; preds = %9
  %15 = call i32 (i8*, i8*, ...)* @sscanf(i8* %11, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %tmp) #10
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %20, label %._crit_edge23

._crit_edge23:                                    ; preds = %14
  %.pre24 = load i8** %10, align 8, !tbaa !22
  br label %.loopexit32

.loopexit32:                                      ; preds = %9, %._crit_edge23
  %17 = phi i8* [ %.pre24, %._crit_edge23 ], [ null, %9 ]
  %18 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %19 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([88 x i8]* @.str49, i64 0, i64 0), i32 %13, i8* %17) #10
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 453, i8* %5) #10
  br label %70

; <label>:20                                      ; preds = %14
  %21 = load double* %tmp, align 8, !tbaa !23
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds float* %6, i64 %indvars.iv20
  store float %22, float* %23, align 4, !tbaa !35
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %24 = icmp slt i64 %indvars.iv.next21, %8
  br i1 %24, label %9, label %._crit_edge13

._crit_edge13:                                    ; preds = %20, %0
  %25 = icmp eq float** %mat, null
  %26 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 0
  %27 = load i32* %26, align 4, !tbaa !30
  br i1 %25, label %28, label %.loopexit

; <label>:28                                      ; preds = %._crit_edge13
  %29 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 460, i32 %27, i32 8) #10
  %30 = bitcast i8* %29 to float**
  %31 = load i32* %26, align 4, !tbaa !30
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %.lr.ph9, label %._crit_edge25

.lr.ph9:                                          ; preds = %28
  %33 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 1
  br label %34

; <label>:34                                      ; preds = %.lr.ph9, %34
  %indvars.iv18 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next19, %34 ]
  %35 = load i32* %33, align 4, !tbaa !31
  %36 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 462, i32 %35, i32 4) #10
  %37 = getelementptr inbounds float** %30, i64 %indvars.iv18
  %38 = bitcast float** %37 to i8**
  store i8* %36, i8** %38, align 8, !tbaa !14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %39 = load i32* %26, align 4, !tbaa !30
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %indvars.iv.next19, %40
  br i1 %41, label %34, label %.loopexit

.loopexit:                                        ; preds = %34, %._crit_edge13
  %42 = phi i32 [ %27, %._crit_edge13 ], [ %39, %34 ]
  %.01 = phi float** [ %mat, %._crit_edge13 ], [ %30, %34 ]
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %.preheader.lr.ph, label %._crit_edge25

._crit_edge25:                                    ; preds = %28, %.loopexit
  %.0131 = phi float** [ %.01, %.loopexit ], [ %30, %28 ]
  %.pre26 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 1
  br label %._crit_edge6

.preheader.lr.ph:                                 ; preds = %.loopexit
  %44 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 1
  %45 = load i32* %44, align 4, !tbaa !31
  %46 = icmp sgt i32 %45, 0
  %47 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 10
  %48 = sext i32 %42 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv16 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next17, %._crit_edge ]
  br i1 %46, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %49 = load i16*** %47, align 8, !tbaa !37
  %50 = getelementptr inbounds i16** %49, i64 %indvars.iv16
  %51 = load i16** %50, align 8, !tbaa !14
  %52 = getelementptr inbounds float** %.01, i64 %indvars.iv16
  %53 = load float** %52, align 8, !tbaa !14
  %54 = sext i32 %45 to i64
  br label %55

; <label>:55                                      ; preds = %.lr.ph, %55
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %55 ]
  %56 = getelementptr inbounds i16* %51, i64 %indvars.iv
  %57 = load i16* %56, align 2, !tbaa !38
  %58 = sext i16 %57 to i64
  %59 = getelementptr inbounds float* %6, i64 %58
  %60 = bitcast float* %59 to i32*
  %61 = load i32* %60, align 4, !tbaa !35
  %62 = getelementptr inbounds float* %53, i64 %indvars.iv
  %63 = bitcast float* %62 to i32*
  store i32 %61, i32* %63, align 4, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %64 = icmp slt i64 %indvars.iv.next, %54
  br i1 %64, label %55, label %._crit_edge

._crit_edge:                                      ; preds = %55, %.preheader
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %65 = icmp slt i64 %indvars.iv.next17, %48
  br i1 %65, label %.preheader, label %._crit_edge6

._crit_edge6:                                     ; preds = %._crit_edge, %._crit_edge25
  %.0130 = phi float** [ %.0131, %._crit_edge25 ], [ %.01, %._crit_edge ]
  %.pre-phi27 = phi i32* [ %.pre26, %._crit_edge25 ], [ %44, %._crit_edge ]
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 468, i8* %5) #10
  %66 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %67 = load i32* %26, align 4, !tbaa !30
  %68 = load i32* %.pre-phi27, align 4, !tbaa !31
  %69 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %66, i8* getelementptr inbounds ([50 x i8]* @.str52, i64 0, i64 0), i32 %67, i32 %68, i32 %2) #10
  br label %70

; <label>:70                                      ; preds = %._crit_edge6, %.loopexit32
  %.0 = phi float** [ null, %.loopexit32 ], [ %.0130, %._crit_edge6 ]
  ret float** %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_xpm_header(%struct.__sFILE* nocapture %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 %bDiscrete) #3 {
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str53, i64 0, i64 0), i64 10, i64 1, %struct.__sFILE* %out)
  %2 = tail call i8* @Program() #10
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str54, i64 0, i64 0), i8* %2) #10
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([71 x i8]* @.str55, i64 0, i64 0), i64 70, i64 1, %struct.__sFILE* %out)
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str56, i64 0, i64 0), i8* %title) #10
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str57, i64 0, i64 0), i8* %legend) #10
  %7 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str58, i64 0, i64 0), i8* %label_x) #10
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str59, i64 0, i64 0), i8* %label_y) #10
  %9 = icmp eq i32 %bDiscrete, 0
  br i1 %9, label %12, label %10

; <label>:10                                      ; preds = %0
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str60, i64 0, i64 0), i64 26, i64 1, %struct.__sFILE* %out)
  br label %14

; <label>:12                                      ; preds = %0
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str61, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %out)
  br label %14

; <label>:14                                      ; preds = %12, %10
  ret void
}

; Function Attrs: optsize
declare i8* @Program() #1

; Function Attrs: nounwind optsize ssp uwtable
define void @write_xpm_map3(%struct.__sFILE* nocapture %out, i32 %n_x, i32 %n_y, i32* nocapture %nlevels, float %lo, float %mid, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rmid.coerce0, float %rmid.coerce1, %struct.t_rgb* byval nocapture readonly align 8 %rhi) #3 {
  %1 = load i32* %nlevels, align 4, !tbaa !15
  %2 = sext i32 %1 to i64
  %3 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %4 = mul i64 %3, %3
  %5 = icmp ugt i64 %2, %4
  br i1 %5, label %6, label %13

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %8 = trunc i64 %4 to i32
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([56 x i8]* @.str62, i64 0, i64 0), i32 %1, i32 %8) #10
  %10 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %11 = mul i64 %10, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %nlevels, align 4, !tbaa !15
  br label %18

; <label>:13                                      ; preds = %0
  %14 = icmp slt i32 %1, 2
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %13
  %16 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([57 x i8]* @.str63, i64 0, i64 0), i32 %1) #10
  store i32 2, i32* %nlevels, align 4, !tbaa !15
  br label %18

; <label>:18                                      ; preds = %13, %15, %6
  %19 = fcmp ogt float %mid, %lo
  %20 = fcmp olt float %mid, %hi
  %or.cond = and i1 %19, %20
  br i1 %or.cond, label %25, label %21

; <label>:21                                      ; preds = %18
  %22 = fpext float %lo to double
  %23 = fpext float %mid to double
  %24 = fpext float %hi to double
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str64, i64 0, i64 0), double %22, double %23, double %24) #10
  br label %25

; <label>:25                                      ; preds = %18, %21
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str65, i64 0, i64 0), i64 31, i64 1, %struct.__sFILE* %out)
  %27 = load i32* %nlevels, align 4, !tbaa !15
  %28 = sext i32 %27 to i64
  %29 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %30 = icmp ule i64 %28, %29
  %31 = select i1 %30, i32 1, i32 2
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str66, i64 0, i64 0), i32 %n_x, i32 %n_y, i32 %27, i32 %31) #10
  %33 = load i32* %nlevels, align 4, !tbaa !15
  %34 = fsub float %mid, %lo
  %35 = fsub float %hi, %lo
  %36 = fdiv float %34, %35
  %37 = add nsw i32 %33, -1
  %38 = sitofp i32 %37 to float
  %39 = fmul float %36, %38
  %40 = fcmp olt float %39, 1.000000e+00
  %41 = select i1 %40, float 1.000000e+00, float %39
  %.not.i = fcmp uge float %41, %38
  %brmerge.i = or i1 %40, %.not.i
  %.mux.i = select i1 %.not.i, float %38, float 1.000000e+00
  %42 = select i1 %brmerge.i, float %.mux.i, float %39
  %43 = fptosi float %42 to i32
  %44 = sitofp i32 %43 to float
  %45 = sub nsw i32 %33, %43
  %46 = sitofp i32 %45 to float
  %47 = icmp sgt i32 %43, 0
  br i1 %47, label %.lr.ph6, label %.preheader

.lr.ph6:                                          ; preds = %25
  %48 = extractelement <2 x float> %rlo.coerce0, i32 0
  %49 = extractelement <2 x float> %rmid.coerce0, i32 0
  %50 = fsub float %49, %48
  %51 = extractelement <2 x float> %rlo.coerce0, i32 1
  %52 = extractelement <2 x float> %rmid.coerce0, i32 1
  %53 = fsub float %52, %51
  %54 = fsub float %rmid.coerce1, %rlo.coerce1
  %55 = zext i32 %43 to i64
  %56 = add i32 %43, -1
  br label %71

..preheader_crit_edge:                            ; preds = %97
  %.pre10 = load i32* %nlevels, align 4, !tbaa !15
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %25
  %57 = phi i32 [ %.pre10, %..preheader_crit_edge ], [ %33, %25 ]
  %58 = icmp sgt i32 %57, %43
  br i1 %58, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %59 = extractelement <2 x float> %rmid.coerce0, i32 0
  %60 = getelementptr inbounds %struct.t_rgb* %rhi, i64 0, i32 0
  %61 = load float* %60, align 8, !tbaa !39
  %62 = fsub float %61, %59
  %63 = extractelement <2 x float> %rmid.coerce0, i32 1
  %64 = getelementptr inbounds %struct.t_rgb* %rhi, i64 0, i32 1
  %65 = load float* %64, align 4, !tbaa !40
  %66 = fsub float %65, %63
  %67 = getelementptr inbounds %struct.t_rgb* %rhi, i64 0, i32 2
  %68 = load float* %67, align 8, !tbaa !41
  %69 = fsub float %68, %rmid.coerce1
  %70 = sext i32 %43 to i64
  br label %119

; <label>:71                                      ; preds = %._crit_edge9, %.lr.ph6
  %72 = phi i32 [ %33, %.lr.ph6 ], [ %.pre, %._crit_edge9 ]
  %indvars.iv7 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next8, %._crit_edge9 ]
  %73 = sub i64 %55, %indvars.iv7
  %74 = trunc i64 %indvars.iv7 to i32
  %75 = sitofp i32 %74 to float
  %76 = fmul float %50, %75
  %77 = fdiv float %76, %44
  %78 = fadd float %48, %77
  %79 = fmul float %53, %75
  %80 = fdiv float %79, %44
  %81 = fadd float %51, %80
  %82 = fmul float %54, %75
  %83 = fdiv float %82, %44
  %84 = fadd float %83, %rlo.coerce1
  %85 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %86 = urem i64 %indvars.iv7, %85
  %87 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %86
  %88 = load i8* %87, align 1, !tbaa !13
  %89 = sext i8 %88 to i32
  %90 = sext i32 %72 to i64
  %91 = icmp ugt i64 %90, %85
  br i1 %91, label %92, label %97

; <label>:92                                      ; preds = %71
  %93 = udiv i64 %indvars.iv7, %85
  %94 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %93
  %95 = load i8* %94, align 1, !tbaa !13
  %96 = sext i8 %95 to i32
  br label %97

; <label>:97                                      ; preds = %71, %92
  %98 = phi i32 [ %96, %92 ], [ 32, %71 ]
  %99 = fmul float %78, 2.550000e+02
  %100 = fpext float %99 to double
  %101 = fadd double %100, 5.000000e-01
  %102 = fptosi double %101 to i32
  %103 = fmul float %81, 2.550000e+02
  %104 = fpext float %103 to double
  %105 = fadd double %104, 5.000000e-01
  %106 = fptosi double %105 to i32
  %107 = fmul float %84, 2.550000e+02
  %108 = fpext float %107 to double
  %109 = fadd double %108, 5.000000e-01
  %110 = fptosi double %109 to i32
  %111 = trunc i64 %73 to i32
  %112 = sitofp i32 %111 to float
  %113 = fmul float %112, %lo
  %114 = fmul float %75, %mid
  %115 = fadd float %114, %113
  %116 = fdiv float %115, %44
  %117 = fpext float %116 to double
  %118 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([39 x i8]* @.str67, i64 0, i64 0), i32 %89, i32 %98, i32 %102, i32 %106, i32 %110, double %117) #10
  %exitcond = icmp eq i32 %74, %56
  br i1 %exitcond, label %..preheader_crit_edge, label %._crit_edge9

._crit_edge9:                                     ; preds = %97
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %.pre = load i32* %nlevels, align 4, !tbaa !15
  br label %71

; <label>:119                                     ; preds = %.lr.ph, %146
  %indvars.iv = phi i64 [ %70, %.lr.ph ], [ %indvars.iv.next, %146 ]
  %120 = phi i32 [ %57, %.lr.ph ], [ %169, %146 ]
  %121 = trunc i64 %indvars.iv to i32
  %122 = sub nsw i32 %120, %121
  %123 = sitofp i32 %121 to float
  %124 = fmul float %123, %62
  %125 = fdiv float %124, %46
  %126 = fadd float %59, %125
  %127 = fmul float %123, %66
  %128 = fdiv float %127, %46
  %129 = fadd float %63, %128
  %130 = fmul float %123, %69
  %131 = fdiv float %130, %46
  %132 = fadd float %131, %rmid.coerce1
  %133 = add nsw i64 %indvars.iv, %70
  %134 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %135 = urem i64 %133, %134
  %136 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %135
  %137 = load i8* %136, align 1, !tbaa !13
  %138 = sext i8 %137 to i32
  %139 = sext i32 %120 to i64
  %140 = icmp ugt i64 %139, %134
  br i1 %140, label %141, label %146

; <label>:141                                     ; preds = %119
  %142 = udiv i64 %133, %134
  %143 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %142
  %144 = load i8* %143, align 1, !tbaa !13
  %145 = sext i8 %144 to i32
  br label %146

; <label>:146                                     ; preds = %119, %141
  %147 = phi i32 [ %145, %141 ], [ 32, %119 ]
  %148 = fmul float %126, 2.550000e+02
  %149 = fpext float %148 to double
  %150 = fadd double %149, 5.000000e-01
  %151 = fptosi double %150 to i32
  %152 = fmul float %129, 2.550000e+02
  %153 = fpext float %152 to double
  %154 = fadd double %153, 5.000000e-01
  %155 = fptosi double %154 to i32
  %156 = fmul float %132, 2.550000e+02
  %157 = fpext float %156 to double
  %158 = fadd double %157, 5.000000e-01
  %159 = fptosi double %158 to i32
  %160 = sitofp i32 %122 to float
  %161 = fmul float %160, %mid
  %162 = fmul float %123, %hi
  %163 = fadd float %162, %161
  %164 = sub nsw i32 %120, %43
  %165 = sitofp i32 %164 to float
  %166 = fdiv float %163, %165
  %167 = fpext float %166 to double
  %168 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([39 x i8]* @.str67, i64 0, i64 0), i32 %138, i32 %147, i32 %151, i32 %155, i32 %159, double %167) #10
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %169 = load i32* %nlevels, align 4, !tbaa !15
  %170 = sext i32 %169 to i64
  %171 = icmp sgt i64 %170, %indvars.iv.next
  br i1 %171, label %119, label %._crit_edge

._crit_edge:                                      ; preds = %146, %.preheader
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #8

; Function Attrs: nounwind optsize ssp uwtable
define void @write_xpm_map(%struct.__sFILE* nocapture %out, i32 %n_x, i32 %n_y, i32* nocapture %nlevels, float %lo, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rhi.coerce0, float %rhi.coerce1) #3 {
  %1 = load i32* %nlevels, align 4, !tbaa !15
  %2 = sext i32 %1 to i64
  %3 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %4 = mul i64 %3, %3
  %5 = icmp ugt i64 %2, %4
  br i1 %5, label %6, label %13

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %8 = trunc i64 %4 to i32
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([56 x i8]* @.str62, i64 0, i64 0), i32 %1, i32 %8) #10
  %10 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %11 = mul i64 %10, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %nlevels, align 4, !tbaa !15
  br label %18

; <label>:13                                      ; preds = %0
  %14 = icmp slt i32 %1, 2
  br i1 %14, label %15, label %18

; <label>:15                                      ; preds = %13
  %16 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %16, i8* getelementptr inbounds ([57 x i8]* @.str63, i64 0, i64 0), i32 %1) #10
  store i32 2, i32* %nlevels, align 4, !tbaa !15
  br label %18

; <label>:18                                      ; preds = %13, %15, %6
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str65, i64 0, i64 0), i64 31, i64 1, %struct.__sFILE* %out)
  %20 = load i32* %nlevels, align 4, !tbaa !15
  %21 = sext i32 %20 to i64
  %22 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %23 = icmp ule i64 %21, %22
  %24 = select i1 %23, i32 1, i32 2
  %25 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str66, i64 0, i64 0), i32 %n_x, i32 %n_y, i32 %20, i32 %24) #10
  %26 = load i32* %nlevels, align 4, !tbaa !15
  %27 = add nsw i32 %26, -1
  %28 = sitofp i32 %27 to double
  %29 = fdiv double 1.000000e+00, %28
  %30 = fptrunc double %29 to float
  %31 = icmp sgt i32 %26, 0
  br i1 %31, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %18
  %32 = extractelement <2 x float> %rlo.coerce0, i32 0
  %33 = extractelement <2 x float> %rhi.coerce0, i32 0
  %34 = extractelement <2 x float> %rlo.coerce0, i32 1
  %35 = extractelement <2 x float> %rhi.coerce0, i32 1
  br label %36

; <label>:36                                      ; preds = %.lr.ph, %67
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %67 ]
  %37 = phi i32 [ %26, %.lr.ph ], [ %87, %67 ]
  %38 = trunc i64 %indvars.iv to i32
  %39 = xor i32 %38, -1
  %40 = add i32 %37, %39
  %41 = sitofp i32 %40 to float
  %42 = fmul float %32, %41
  %43 = sitofp i32 %38 to float
  %44 = fmul float %33, %43
  %45 = fadd float %44, %42
  %46 = fmul float %30, %45
  %47 = fmul float %34, %41
  %48 = fmul float %35, %43
  %49 = fadd float %48, %47
  %50 = fmul float %30, %49
  %51 = fmul float %41, %rlo.coerce1
  %52 = fmul float %43, %rhi.coerce1
  %53 = fadd float %52, %51
  %54 = fmul float %30, %53
  %55 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %56 = urem i64 %indvars.iv, %55
  %57 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %56
  %58 = load i8* %57, align 1, !tbaa !13
  %59 = sext i8 %58 to i32
  %60 = sext i32 %37 to i64
  %61 = icmp ugt i64 %60, %55
  br i1 %61, label %62, label %67

; <label>:62                                      ; preds = %36
  %63 = udiv i64 %indvars.iv, %55
  %64 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %63
  %65 = load i8* %64, align 1, !tbaa !13
  %66 = sext i8 %65 to i32
  br label %67

; <label>:67                                      ; preds = %36, %62
  %68 = phi i32 [ %66, %62 ], [ 32, %36 ]
  %69 = fmul float %46, 2.550000e+02
  %70 = fpext float %69 to double
  %71 = fadd double %70, 5.000000e-01
  %72 = fptosi double %71 to i32
  %73 = fmul float %50, 2.550000e+02
  %74 = fpext float %73 to double
  %75 = fadd double %74, 5.000000e-01
  %76 = fptosi double %75 to i32
  %77 = fmul float %54, 2.550000e+02
  %78 = fpext float %77 to double
  %79 = fadd double %78, 5.000000e-01
  %80 = fptosi double %79 to i32
  %81 = fmul float %41, %lo
  %82 = fmul float %43, %hi
  %83 = fadd float %82, %81
  %84 = fmul float %30, %83
  %85 = fpext float %84 to double
  %86 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([39 x i8]* @.str67, i64 0, i64 0), i32 %59, i32 %68, i32 %72, i32 %76, i32 %80, double %85) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %87 = load i32* %nlevels, align 4, !tbaa !15
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %indvars.iv.next, %88
  br i1 %89, label %36, label %._crit_edge

._crit_edge:                                      ; preds = %67, %18
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_xpm_axis(%struct.__sFILE* nocapture %out, i8* %axis, i32 %n, float* readonly %label) #3 {
  %1 = icmp eq float* %label, null
  br i1 %1, label %20, label %.preheader

.preheader:                                       ; preds = %0
  %2 = icmp sgt i32 %n, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %3 = add i32 %n, -1
  br label %4

; <label>:4                                       ; preds = %14, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %14 ]
  %5 = trunc i64 %indvars.iv to i32
  %6 = srem i32 %5, 80
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

; <label>:8                                       ; preds = %4
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %12, label %10

; <label>:10                                      ; preds = %8
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %out)
  br label %12

; <label>:12                                      ; preds = %8, %10
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([14 x i8]* @.str69, i64 0, i64 0), i8* %axis) #10
  br label %14

; <label>:14                                      ; preds = %12, %4
  %15 = getelementptr inbounds float* %label, i64 %indvars.iv
  %16 = load float* %15, align 4, !tbaa !35
  %17 = fpext float %16 to double
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str70, i64 0, i64 0), double %17) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %5, %3
  br i1 %exitcond, label %._crit_edge, label %4

._crit_edge:                                      ; preds = %14, %.preheader
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %out)
  br label %20

; <label>:20                                      ; preds = %0, %._crit_edge
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_xpm_data(%struct.__sFILE* nocapture %out, i32 %n_x, i32 %n_y, float** nocapture readonly %matrix, float %lo, float %hi, i32 %nlevels) #3 {
  %1 = add nsw i32 %nlevels, -1
  %2 = sitofp i32 %1 to float
  %3 = fsub float %hi, %lo
  %4 = fdiv float %2, %3
  %5 = icmp sgt i32 %n_y, 0
  br i1 %5, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %0
  %6 = sdiv i32 %n_y, 100
  %7 = add nsw i32 %6, 1
  %8 = icmp sgt i32 %n_x, 0
  %9 = sext i32 %nlevels to i64
  %10 = add i32 %n_x, -1
  %11 = sext i32 %n_y to i64
  br label %12

; <label>:12                                      ; preds = %.lr.ph7, %.backedge
  %indvars.iv9 = phi i64 [ %11, %.lr.ph7 ], [ %indvars.iv.next10, %.backedge ]
  %j.05.in = phi i32 [ %n_y, %.lr.ph7 ], [ %j.05, %.backedge ]
  %indvars.iv.next10 = add nsw i64 %indvars.iv9, -1
  %j.05 = add nsw i32 %j.05.in, -1
  %13 = trunc i64 %indvars.iv.next10 to i32
  %14 = srem i32 %13, %7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

; <label>:16                                      ; preds = %12
  %17 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %18 = sub nsw i64 %11, %indvars.iv.next10
  %19 = mul nsw i64 %18, 100
  %20 = trunc i64 %19 to i32
  %21 = sdiv i32 %20, %n_y
  %22 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), i32 %21) #10
  br label %23

; <label>:23                                      ; preds = %16, %12
  %fputc1 = tail call i32 @fputc(i32 34, %struct.__sFILE* %out)
  br i1 %8, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %23, %52
  %indvars.iv = phi i64 [ %indvars.iv.next, %52 ], [ 0, %23 ]
  %24 = getelementptr inbounds float** %matrix, i64 %indvars.iv
  %25 = load float** %24, align 8, !tbaa !14
  %26 = getelementptr inbounds float* %25, i64 %indvars.iv.next10
  %27 = load float* %26, align 4, !tbaa !35
  %28 = fsub float %27, %lo
  %29 = fmul float %4, %28
  %30 = fpext float %29 to double
  %31 = fadd double %30, 5.000000e-01
  %32 = fptosi double %31 to i32
  %33 = icmp slt i32 %32, 0
  %. = select i1 %33, i32 0, i32 %32
  %34 = icmp slt i32 %., %nlevels
  %.. = select i1 %34, i32 %., i32 %1
  %35 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %36 = icmp ugt i64 %9, %35
  %37 = sext i32 %.. to i64
  br i1 %36, label %42, label %38

; <label>:38                                      ; preds = %.lr.ph
  %39 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %37
  %40 = load i8* %39, align 1, !tbaa !13
  %41 = sext i8 %40 to i32
  %fputc = tail call i32 @fputc(i32 %41, %struct.__sFILE* %out)
  br label %52

; <label>:42                                      ; preds = %.lr.ph
  %43 = urem i64 %37, %35
  %44 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %43
  %45 = load i8* %44, align 1, !tbaa !13
  %46 = sext i8 %45 to i32
  %47 = udiv i64 %37, %35
  %48 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %47
  %49 = load i8* %48, align 1, !tbaa !13
  %50 = sext i8 %49 to i32
  %51 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i32 %46, i32 %50) #10
  br label %52

; <label>:52                                      ; preds = %38, %42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %10
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %52, %23
  %53 = icmp sgt i32 %j.05.in, 1
  br i1 %53, label %54, label %57

; <label>:54                                      ; preds = %._crit_edge
  %55 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str74, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %out)
  br label %.backedge

.backedge:                                        ; preds = %54, %57
  %56 = icmp sgt i64 %indvars.iv9, 1
  br i1 %56, label %12, label %._crit_edge8

; <label>:57                                      ; preds = %._crit_edge
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %out)
  br label %.backedge

._crit_edge8:                                     ; preds = %.backedge, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_xpm_data3(%struct.__sFILE* nocapture %out, i32 %n_x, i32 %n_y, float** nocapture readonly %matrix, float %lo, float %mid, float %hi, i32 %nlevels) #3 {
  %1 = fsub float %mid, %lo
  %2 = fsub float %hi, %lo
  %3 = fdiv float %1, %2
  %4 = add nsw i32 %nlevels, -1
  %5 = sitofp i32 %4 to float
  %6 = fmul float %5, %3
  %7 = fcmp olt float %6, 1.000000e+00
  %8 = select i1 %7, float 1.000000e+00, float %6
  %.not.i = fcmp uge float %8, %5
  %brmerge.i = or i1 %7, %.not.i
  %.mux.i = select i1 %.not.i, float %5, float 1.000000e+00
  %9 = select i1 %brmerge.i, float %.mux.i, float %6
  %10 = fptosi float %9 to i32
  %11 = sub nsw i32 %nlevels, %10
  %12 = sitofp i32 %11 to float
  %13 = fsub float %hi, %mid
  %14 = fdiv float %12, %13
  %15 = sitofp i32 %10 to float
  %16 = fdiv float %15, %1
  %17 = icmp sgt i32 %n_y, 0
  br i1 %17, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %0
  %18 = sdiv i32 %n_y, 100
  %19 = add nsw i32 %18, 1
  %20 = icmp sgt i32 %n_x, 0
  %21 = sext i32 %nlevels to i64
  %22 = add i32 %n_x, -1
  %23 = sext i32 %n_y to i64
  br label %24

; <label>:24                                      ; preds = %.lr.ph9, %.backedge
  %indvars.iv11 = phi i64 [ %23, %.lr.ph9 ], [ %indvars.iv.next12, %.backedge ]
  %j.07.in = phi i32 [ %n_y, %.lr.ph9 ], [ %j.07, %.backedge ]
  %c.05 = phi i32 [ 0, %.lr.ph9 ], [ %c.1.lcssa, %.backedge ]
  %indvars.iv.next12 = add nsw i64 %indvars.iv11, -1
  %j.07 = add nsw i32 %j.07.in, -1
  %25 = trunc i64 %indvars.iv.next12 to i32
  %26 = srem i32 %25, %19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

; <label>:28                                      ; preds = %24
  %29 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %30 = sub nsw i64 %23, %indvars.iv.next12
  %31 = mul nsw i64 %30, 100
  %32 = trunc i64 %31 to i32
  %33 = sdiv i32 %32, %n_y
  %34 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %29, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), i32 %33) #10
  br label %35

; <label>:35                                      ; preds = %28, %24
  %fputc1 = tail call i32 @fputc(i32 34, %struct.__sFILE* %out)
  br i1 %20, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %35, %80
  %indvars.iv = phi i64 [ %indvars.iv.next, %80 ], [ 0, %35 ]
  %c.12 = phi i32 [ %c.4, %80 ], [ %c.05, %35 ]
  %36 = sitofp i32 %c.12 to float
  %37 = fcmp ult float %36, %mid
  br i1 %37, label %48, label %38

; <label>:38                                      ; preds = %.lr.ph
  %39 = getelementptr inbounds float** %matrix, i64 %indvars.iv
  %40 = load float** %39, align 8, !tbaa !14
  %41 = getelementptr inbounds float* %40, i64 %indvars.iv.next12
  %42 = load float* %41, align 4, !tbaa !35
  %43 = fsub float %42, %mid
  %44 = fmul float %14, %43
  %45 = fpext float %44 to double
  %46 = fadd double %45, 5.000000e-01
  %47 = fptosi double %46 to i32
  br label %60

; <label>:48                                      ; preds = %.lr.ph
  %49 = fcmp ult float %36, %lo
  br i1 %49, label %60, label %50

; <label>:50                                      ; preds = %48
  %51 = getelementptr inbounds float** %matrix, i64 %indvars.iv
  %52 = load float** %51, align 8, !tbaa !14
  %53 = getelementptr inbounds float* %52, i64 %indvars.iv.next12
  %54 = load float* %53, align 4, !tbaa !35
  %55 = fsub float %54, %lo
  %56 = fmul float %16, %55
  %57 = fpext float %56 to double
  %58 = fadd double %57, 5.000000e-01
  %59 = fptosi double %58 to i32
  br label %60

; <label>:60                                      ; preds = %48, %50, %38
  %c.2 = phi i32 [ %47, %38 ], [ %59, %50 ], [ %c.12, %48 ]
  %61 = icmp slt i32 %c.2, 0
  %.c.2 = select i1 %61, i32 0, i32 %c.2
  %62 = icmp slt i32 %.c.2, %nlevels
  %c.4 = select i1 %62, i32 %.c.2, i32 %4
  %63 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %64 = icmp ugt i64 %21, %63
  %65 = sext i32 %c.4 to i64
  br i1 %64, label %70, label %66

; <label>:66                                      ; preds = %60
  %67 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %65
  %68 = load i8* %67, align 1, !tbaa !13
  %69 = sext i8 %68 to i32
  %fputc = tail call i32 @fputc(i32 %69, %struct.__sFILE* %out)
  br label %80

; <label>:70                                      ; preds = %60
  %71 = urem i64 %65, %63
  %72 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %71
  %73 = load i8* %72, align 1, !tbaa !13
  %74 = sext i8 %73 to i32
  %75 = udiv i64 %65, %63
  %76 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %75
  %77 = load i8* %76, align 1, !tbaa !13
  %78 = sext i8 %77 to i32
  %79 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i32 %74, i32 %78) #10
  br label %80

; <label>:80                                      ; preds = %66, %70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %22
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %80, %35
  %c.1.lcssa = phi i32 [ %c.05, %35 ], [ %c.4, %80 ]
  %81 = icmp sgt i32 %j.07.in, 1
  br i1 %81, label %82, label %85

; <label>:82                                      ; preds = %._crit_edge
  %83 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str74, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %out)
  br label %.backedge

.backedge:                                        ; preds = %82, %85
  %84 = icmp sgt i64 %indvars.iv11, 1
  br i1 %84, label %24, label %._crit_edge10

; <label>:85                                      ; preds = %._crit_edge
  %86 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %out)
  br label %.backedge

._crit_edge10:                                    ; preds = %.backedge, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_xpm_m(%struct.__sFILE* nocapture %out, %struct.t_matrix* byval align 8 %m) #3 {
  %1 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 12
  %2 = load %struct.t_mapping** %1, align 8, !tbaa !33
  %3 = getelementptr inbounds %struct.t_mapping* %2, i64 0, i32 0, i32 1
  %4 = load i8* %3, align 1, !tbaa !21
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 3, i64 0
  %7 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 4, i64 0
  %8 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 5, i64 0
  %9 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 6, i64 0
  %10 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 7
  %11 = load i32* %10, align 4, !tbaa !28
  call void @write_xpm_header(%struct.__sFILE* %out, i8* %6, i8* %7, i8* %8, i8* %9, i32 %11) #11
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str65, i64 0, i64 0), i64 31, i64 1, %struct.__sFILE* %out)
  %13 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 0
  %14 = bitcast %struct.t_matrix* %m to i64*
  %15 = load i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 1
  %18 = lshr i64 %15, 32
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 11
  %21 = load i32* %20, align 8, !tbaa !32
  %22 = select i1 %5, i32 1, i32 2
  %23 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str66, i64 0, i64 0), i32 %16, i32 %19, i32 %21, i32 %22) #10
  %24 = load i32* %20, align 8, !tbaa !32
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %.lr.ph13, label %._crit_edge14

.lr.ph13:                                         ; preds = %0, %34
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %34 ], [ 0, %0 ]
  %26 = load %struct.t_mapping** %1, align 8, !tbaa !33
  %27 = getelementptr inbounds %struct.t_mapping* %26, i64 %indvars.iv19, i32 0, i32 0
  %28 = load i8* %27, align 1, !tbaa !16
  %29 = sext i8 %28 to i32
  br i1 %5, label %34, label %30

; <label>:30                                      ; preds = %.lr.ph13
  %31 = getelementptr inbounds %struct.t_mapping* %26, i64 %indvars.iv19, i32 0, i32 1
  %32 = load i8* %31, align 1, !tbaa !21
  %33 = sext i8 %32 to i32
  br label %34

; <label>:34                                      ; preds = %.lr.ph13, %30
  %35 = phi i32 [ %33, %30 ], [ 32, %.lr.ph13 ]
  %36 = getelementptr inbounds %struct.t_mapping* %26, i64 %indvars.iv19, i32 2, i32 0
  %37 = load float* %36, align 4, !tbaa !25
  %38 = fmul float %37, 2.550000e+02
  %39 = fpext float %38 to double
  %40 = fadd double %39, 5.000000e-01
  %41 = fptosi double %40 to i32
  %42 = getelementptr inbounds %struct.t_mapping* %26, i64 %indvars.iv19, i32 2, i32 1
  %43 = load float* %42, align 4, !tbaa !26
  %44 = fmul float %43, 2.550000e+02
  %45 = fpext float %44 to double
  %46 = fadd double %45, 5.000000e-01
  %47 = fptosi double %46 to i32
  %48 = getelementptr inbounds %struct.t_mapping* %26, i64 %indvars.iv19, i32 2, i32 2
  %49 = load float* %48, align 4, !tbaa !27
  %50 = fmul float %49, 2.550000e+02
  %51 = fpext float %50 to double
  %52 = fadd double %51, 5.000000e-01
  %53 = fptosi double %52 to i32
  %54 = getelementptr inbounds %struct.t_mapping* %26, i64 %indvars.iv19, i32 1
  %55 = load i8** %54, align 8, !tbaa !22
  %56 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([37 x i8]* @.str76, i64 0, i64 0), i32 %29, i32 %35, i32 %41, i32 %47, i32 %53, i8* %55) #10
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %57 = load i32* %20, align 8, !tbaa !32
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %indvars.iv.next20, %58
  br i1 %59, label %.lr.ph13, label %._crit_edge14

._crit_edge14:                                    ; preds = %34, %0
  %60 = load i32* %13, align 8, !tbaa !30
  %61 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 8
  %62 = load float** %61, align 8, !tbaa !34
  call void @write_xpm_axis(%struct.__sFILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str77, i64 0, i64 0), i32 %60, float* %62) #11
  %63 = load i32* %17, align 4, !tbaa !31
  %64 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 9
  %65 = load float** %64, align 8, !tbaa !36
  call void @write_xpm_axis(%struct.__sFILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str78, i64 0, i64 0), i32 %63, float* %65) #11
  %66 = load i32* %17, align 4, !tbaa !31
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %.lr.ph10, label %._crit_edge

.lr.ph10:                                         ; preds = %._crit_edge14
  %68 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 10
  %69 = sext i32 %66 to i64
  br label %70

; <label>:70                                      ; preds = %.backedge._crit_edge, %.lr.ph10
  %71 = phi i32 [ %66, %.lr.ph10 ], [ %.pre, %.backedge._crit_edge ]
  %indvars.iv17 = phi i64 [ %69, %.lr.ph10 ], [ %indvars.iv.next18, %.backedge._crit_edge ]
  %j.09.in = phi i32 [ %66, %.lr.ph10 ], [ %j.09, %.backedge._crit_edge ]
  %indvars.iv.next18 = add nsw i64 %indvars.iv17, -1
  %j.09 = add nsw i32 %j.09.in, -1
  %72 = sdiv i32 %71, 100
  %73 = add nsw i32 %72, 1
  %74 = trunc i64 %indvars.iv.next18 to i32
  %75 = srem i32 %74, %73
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %83

; <label>:77                                      ; preds = %70
  %78 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !14
  %79 = sub nsw i32 %71, %74
  %80 = mul nsw i32 %79, 100
  %81 = sdiv i32 %80, %71
  %82 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %78, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), i32 %81) #10
  br label %83

; <label>:83                                      ; preds = %77, %70
  %fputc1 = call i32 @fputc(i32 34, %struct.__sFILE* %out)
  %84 = load i32* %13, align 8, !tbaa !30
  %85 = icmp sgt i32 %84, 0
  br i1 %5, label %.preheader, label %.preheader2

.preheader2:                                      ; preds = %83
  br i1 %85, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %83
  br i1 %85, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %.preheader, %.lr.ph6
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %.lr.ph6 ], [ 0, %.preheader ]
  %86 = load i16*** %68, align 8, !tbaa !37
  %87 = getelementptr inbounds i16** %86, i64 %indvars.iv15
  %88 = load i16** %87, align 8, !tbaa !14
  %89 = getelementptr inbounds i16* %88, i64 %indvars.iv.next18
  %90 = load i16* %89, align 2, !tbaa !38
  %91 = sext i16 %90 to i64
  %92 = load %struct.t_mapping** %1, align 8, !tbaa !33
  %93 = getelementptr inbounds %struct.t_mapping* %92, i64 %91, i32 0, i32 0
  %94 = load i8* %93, align 1, !tbaa !16
  %95 = sext i8 %94 to i32
  %fputc = call i32 @fputc(i32 %95, %struct.__sFILE* %out)
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %96 = load i32* %13, align 8, !tbaa !30
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %indvars.iv.next16, %97
  br i1 %98, label %.lr.ph6, label %.loopexit

.lr.ph:                                           ; preds = %.preheader2, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader2 ]
  %99 = load i16*** %68, align 8, !tbaa !37
  %100 = getelementptr inbounds i16** %99, i64 %indvars.iv
  %101 = load i16** %100, align 8, !tbaa !14
  %102 = getelementptr inbounds i16* %101, i64 %indvars.iv.next18
  %103 = load i16* %102, align 2, !tbaa !38
  %104 = sext i16 %103 to i64
  %105 = load %struct.t_mapping** %1, align 8, !tbaa !33
  %106 = getelementptr inbounds %struct.t_mapping* %105, i64 %104, i32 0, i32 0
  %107 = load i8* %106, align 1
  %108 = getelementptr inbounds %struct.t_mapping* %105, i64 %104, i32 0, i32 1
  %109 = load i8* %108, align 1
  %110 = sext i8 %107 to i32
  %111 = sext i8 %109 to i32
  %112 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i32 %110, i32 %111) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %113 = load i32* %13, align 8, !tbaa !30
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %indvars.iv.next, %114
  br i1 %115, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph6, %.preheader2, %.preheader
  %116 = icmp sgt i32 %j.09.in, 1
  br i1 %116, label %117, label %120

; <label>:117                                     ; preds = %.loopexit
  %118 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str74, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* %out)
  br label %.backedge

.backedge:                                        ; preds = %117, %120
  %119 = icmp sgt i64 %indvars.iv17, 1
  br i1 %119, label %.backedge._crit_edge, label %._crit_edge

.backedge._crit_edge:                             ; preds = %.backedge
  %.pre = load i32* %17, align 4, !tbaa !31
  br label %70

; <label>:120                                     ; preds = %.loopexit
  %121 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %out)
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %._crit_edge14
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_xpm3(%struct.__sFILE* nocapture %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 %n_x, i32 %n_y, float* readonly %axis_x, float* readonly %axis_y, float** nocapture readonly %matrix, float %lo, float %mid, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rmid.coerce0, float %rmid.coerce1, %struct.t_rgb* byval nocapture readonly align 8 %rhi, i32* nocapture %nlevels) #3 {
  %1 = fcmp ugt float %hi, %lo
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = fpext float %hi to double
  %4 = fpext float %lo to double
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([19 x i8]* @.str79, i64 0, i64 0), double %3, double %4) #10
  br label %5

; <label>:5                                       ; preds = %0, %2
  tail call void @write_xpm_header(%struct.__sFILE* %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 0) #11
  call void @write_xpm_map3(%struct.__sFILE* %out, i32 %n_x, i32 %n_y, i32* %nlevels, float %lo, float %mid, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rmid.coerce0, float %rmid.coerce1, %struct.t_rgb* byval align 8 %rhi) #11
  tail call void @write_xpm_axis(%struct.__sFILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str77, i64 0, i64 0), i32 %n_x, float* %axis_x) #11
  tail call void @write_xpm_axis(%struct.__sFILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str78, i64 0, i64 0), i32 %n_y, float* %axis_y) #11
  %6 = load i32* %nlevels, align 4, !tbaa !15
  tail call void @write_xpm_data3(%struct.__sFILE* %out, i32 %n_x, i32 %n_y, float** %matrix, float %lo, float %mid, float %hi, i32 %6) #11
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @write_xpm(%struct.__sFILE* nocapture %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 %n_x, i32 %n_y, float* readonly %axis_x, float* readonly %axis_y, float** nocapture readonly %matrix, float %lo, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rhi.coerce0, float %rhi.coerce1, i32* nocapture %nlevels) #3 {
  %1 = fcmp ugt float %hi, %lo
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = fpext float %hi to double
  %4 = fpext float %lo to double
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([19 x i8]* @.str80, i64 0, i64 0), double %3, double %4) #10
  br label %5

; <label>:5                                       ; preds = %0, %2
  tail call void @write_xpm_header(%struct.__sFILE* %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 0) #11
  tail call void @write_xpm_map(%struct.__sFILE* %out, i32 %n_x, i32 %n_y, i32* %nlevels, float %lo, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rhi.coerce0, float %rhi.coerce1) #11
  tail call void @write_xpm_axis(%struct.__sFILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str77, i64 0, i64 0), i32 %n_x, float* %axis_x) #11
  tail call void @write_xpm_axis(%struct.__sFILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str78, i64 0, i64 0), i32 %n_y, float* %axis_y) #11
  %6 = load i32* %nlevels, align 4, !tbaa !15
  tail call void @write_xpm_data(%struct.__sFILE* %out, i32 %n_x, i32 %n_y, float** %matrix, float %lo, float %hi, i32 %6) #11
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind optsize }
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
!14 = !{!4, !4, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !5, i64 0}
!17 = !{!"", !18, i64 0, !4, i64 8, !19, i64 16}
!18 = !{!"", !5, i64 0, !5, i64 1}
!19 = !{!"", !20, i64 0, !20, i64 4, !20, i64 8}
!20 = !{!"float", !5, i64 0}
!21 = !{!17, !5, i64 1}
!22 = !{!17, !4, i64 8}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !5, i64 0}
!25 = !{!17, !20, i64 16}
!26 = !{!17, !20, i64 20}
!27 = !{!17, !20, i64 24}
!28 = !{!29, !7, i64 1036}
!29 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !5, i64 12, !5, i64 268, !5, i64 524, !5, i64 780, !7, i64 1036, !4, i64 1040, !4, i64 1048, !4, i64 1056, !7, i64 1064, !4, i64 1072}
!30 = !{!29, !7, i64 0}
!31 = !{!29, !7, i64 4}
!32 = !{!29, !7, i64 1064}
!33 = !{!29, !4, i64 1072}
!34 = !{!29, !4, i64 1040}
!35 = !{!20, !20, i64 0}
!36 = !{!29, !4, i64 1048}
!37 = !{!29, !4, i64 1056}
!38 = !{!8, !8, i64 0}
!39 = !{!19, !20, i64 0}
!40 = !{!19, !20, i64 4}
!41 = !{!19, !20, i64 8}
