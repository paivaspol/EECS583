; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_mapping = type { %struct.t_xpmelmt, i8*, %struct.t_rgb }
%struct.t_xpmelmt = type { i8, i8 }
%struct.t_rgb = type { float, float, float }
%struct.t_matrix = type { i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, float*, float*, i16**, i32, %struct.t_mapping* }

@.str = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str1 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c\00", align 1
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
@debug = external global %struct._IO_FILE*
@.str22 = private unnamed_addr constant [13 x i8] c"%s %s %s %s\0A\00", align 1
@.str23 = private unnamed_addr constant [17 x i8] c"Invalid XPixMap\0A\00", align 1
@.str24 = private unnamed_addr constant [12 x i8] c"%d %d %d %d\00", align 1
@.str25 = private unnamed_addr constant [62 x i8] c"Sorry can only read xpm's with at most 2 caracters per pixel\0A\00", align 1
@.str26 = private unnamed_addr constant [40 x i8] c"mm->nx %d mm->ny %d mm->nmap %d nch %d\0A\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str28 = private unnamed_addr constant [15 x i8] c"%*s #%2x%2x%2x\00", align 1
@.str29 = private unnamed_addr constant [15 x i8] c"%*s #%4x%4x%4x\00", align 1
@.str30 = private unnamed_addr constant [45 x i8] c"Unsupported or invalid colormap in X PixMap\0A\00", align 1
@stderr = external global %struct._IO_FILE*
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

; Function Attrs: nounwind optsize uwtable
define float** @mk_matrix(i32 %nx, i32 %ny, i32 %b1D) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 55, i32 %nx, i32 8) #8
  %0 = bitcast i8* %call to float**
  %tobool = icmp ne i32 %b1D, 0
  br i1 %tobool, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  %mul = mul nsw i32 %ny, %nx
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 57, i32 %mul, i32 4) #8
  %1 = bitcast i8* %call1 to float*
  store float* %1, float** %0, align 8, !tbaa !0
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp26 = icmp sgt i32 %nx, 0
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv to i32
  %mul4 = mul nsw i32 %2, %ny
  %idxprom = sext i32 %mul4 to i64
  %3 = load float** %0, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds float* %3, i64 %idxprom
  %arrayidx8 = getelementptr inbounds float** %0, i64 %indvars.iv
  store float* %arrayidx6, float** %arrayidx8, align 8, !tbaa !0
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 63, i32 %ny, i32 4) #8
  %4 = bitcast i8* %call9 to float*
  %arrayidx11 = getelementptr inbounds float** %0, i64 %indvars.iv
  store float* %4, float** %arrayidx11, align 8, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nx
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  ret float** %0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @done_matrix(i32 %nx, float*** nocapture %m) #0 {
entry:
  %cmp5 = icmp sgt i32 %nx, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load float*** %m, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds float** %0, i64 %indvars.iv
  %1 = load float** %arrayidx, align 8, !tbaa !0
  %2 = bitcast float* %1 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 73, i8* %2) #8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nx
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %3 = load float*** %m, align 8, !tbaa !0
  %4 = bitcast float** %3 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 74, i8* %4) #8
  store float** null, float*** %m, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @clear_matrix(i32 %nx, i32 %ny, float** nocapture %m) #0 {
entry:
  %cmp15 = icmp sgt i32 %nx, 0
  br i1 %cmp15, label %for.cond1.preheader.lr.ph, label %for.end8

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp213 = icmp sgt i32 %ny, 0
  %0 = add i32 %ny, -1
  %1 = zext i32 %0 to i64
  %2 = shl nuw nsw i64 %1, 2
  %3 = add i64 %2, 4
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc6, %for.cond1.preheader.lr.ph
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next, %for.inc6 ]
  br i1 %cmp213, label %for.body3.lr.ph, label %for.inc6

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float** %m, i64 %indvars.iv
  %4 = load float** %arrayidx, align 8, !tbaa !0
  %5 = bitcast float* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 %3, i32 4, i1 false)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3.lr.ph, %for.cond1.preheader
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nx
  br i1 %exitcond, label %for.end8, label %for.cond1.preheader

for.end8:                                         ; preds = %for.inc6, %entry
  ret void
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @matelmt_cmp(i16 %e1.coerce, i16 %e2.coerce) #2 {
entry:
  %e1.sroa.0.0.extract.trunc = zext i16 %e1.coerce to i32
  %e2.sroa.0.0.extract.trunc = zext i16 %e2.coerce to i32
  %sext = shl i32 %e1.sroa.0.0.extract.trunc, 24
  %sext9 = shl i32 %e2.sroa.0.0.extract.trunc, 24
  %cmp = icmp eq i32 %sext, %sext9
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %e2.sroa.1.1.extract.shift = lshr i16 %e2.coerce, 8
  %e1.sroa.1.1.extract.shift = lshr i16 %e1.coerce, 8
  %cmp7 = icmp eq i16 %e1.sroa.1.1.extract.shift, %e2.sroa.1.1.extract.shift
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp7, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind optsize readonly uwtable
define signext i16 @searchcmap(i32 %n, %struct.t_mapping* nocapture %map, i16 %c.coerce) #3 {
entry:
  %cmp4 = icmp sgt i32 %n, 0
  br i1 %cmp4, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %entry
  %e2.sroa.0.0.extract.trunc.i = zext i16 %c.coerce to i32
  %sext9.i = shl i32 %e2.sroa.0.0.extract.trunc.i, 24
  %e2.sroa.1.1.extract.shift.i = lshr i16 %c.coerce, 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %code = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 0
  %0 = bitcast %struct.t_xpmelmt* %code to i16*
  %1 = load i16* %0, align 1
  %e1.sroa.0.0.extract.trunc.i = zext i16 %1 to i32
  %sext.i = shl i32 %e1.sroa.0.0.extract.trunc.i, 24
  %cmp.i = icmp eq i32 %sext.i, %sext9.i
  %e1.sroa.1.1.extract.shift.i = lshr i16 %1, 8
  %cmp7.i = icmp eq i16 %e1.sroa.1.1.extract.shift.i, %e2.sroa.1.1.extract.shift.i
  %or.cond = and i1 %cmp.i, %cmp7.i
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %conv = trunc i32 %i.05 to i16
  br label %return

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.05, 1
  %2 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %2, %n
  br i1 %cmp, label %for.body, label %return

return:                                           ; preds = %entry, %for.inc, %if.then
  %retval.0 = phi i16 [ %conv, %if.then ], [ -1, %for.inc ], [ -1, %entry ]
  ret i16 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @getcmap(%struct._IO_FILE* %in, i8* %fn, %struct.t_mapping** nocapture %map) #0 {
entry:
  %n = alloca i32, align 4
  %line = alloca [4096 x i8], align 16
  %code = alloca [4096 x i8], align 16
  %desc = alloca [4096 x i8], align 16
  %r = alloca double, align 8
  %g = alloca double, align 8
  %b = alloca double, align 8
  %0 = getelementptr inbounds [4096 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %0) #4
  %1 = getelementptr inbounds [4096 x i8]* %code, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #4
  %2 = getelementptr inbounds [4096 x i8]* %desc, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %2) #4
  %call = call i8* @fgets2(i8* %0, i32 4095, %struct._IO_FILE* %in) #8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([76 x i8]* @.str6, i64 0, i64 0), i8* %fn) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* %n) #8
  %3 = load i32* %n, align 4, !tbaa !3
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 115, i32 %3, i32 32) #8
  %4 = bitcast i8* %call3 to %struct.t_mapping*
  %5 = load i32* %n, align 4, !tbaa !3
  %cmp453 = icmp sgt i32 %5, 0
  br i1 %cmp453, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %if.end9
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end9 ], [ 0, %if.end ]
  %call6 = call i8* @fgets2(i8* %0, i32 4095, %struct._IO_FILE* %in) #8
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  %6 = load i32* %n, align 4, !tbaa !3
  %add = add nsw i32 %6, 1
  %7 = trunc i64 %indvars.iv to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i8* %fn, i32 %add, i32 %7) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %for.body
  %call13 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i8* %1, i8* %2, double* %r, double* %g, double* %b) #8
  %8 = load i8* %1, align 16, !tbaa !1
  %c1 = getelementptr inbounds %struct.t_mapping* %4, i64 %indvars.iv, i32 0, i32 0
  store i8 %8, i8* %c1, align 1, !tbaa !1
  %c2 = getelementptr inbounds %struct.t_mapping* %4, i64 %indvars.iv, i32 0, i32 1
  store i8 0, i8* %c2, align 1, !tbaa !1
  %call20 = call i8* @gmx_strdup(i8* %2) #8
  %desc23 = getelementptr inbounds %struct.t_mapping* %4, i64 %indvars.iv, i32 1
  store i8* %call20, i8** %desc23, align 8, !tbaa !0
  %9 = load double* %r, align 8, !tbaa !4
  %conv = fptrunc double %9 to float
  %r26 = getelementptr inbounds %struct.t_mapping* %4, i64 %indvars.iv, i32 2, i32 0
  store float %conv, float* %r26, align 4, !tbaa !5
  %10 = load double* %g, align 8, !tbaa !4
  %conv27 = fptrunc double %10 to float
  %g31 = getelementptr inbounds %struct.t_mapping* %4, i64 %indvars.iv, i32 2, i32 1
  store float %conv27, float* %g31, align 4, !tbaa !5
  %11 = load double* %b, align 8, !tbaa !4
  %conv32 = fptrunc double %11 to float
  %b36 = getelementptr inbounds %struct.t_mapping* %4, i64 %indvars.iv, i32 2, i32 2
  store float %conv32, float* %b36, align 4, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = load i32* %n, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %13, %12
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %if.end9, %if.end
  %14 = phi i32 [ %5, %if.end ], [ %12, %if.end9 ]
  store %struct.t_mapping* %4, %struct.t_mapping** %map, align 8, !tbaa !0
  call void @llvm.lifetime.end(i64 4096, i8* %2) #4
  call void @llvm.lifetime.end(i64 4096, i8* %1) #4
  call void @llvm.lifetime.end(i64 4096, i8* %0) #4
  ret i32 %14
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #5

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @readcmap(i8* %fn, %struct.t_mapping** nocapture %map) #0 {
entry:
  %call = tail call %struct._IO_FILE* @libopen(i8* %fn) #8
  %call1 = tail call i32 @getcmap(%struct._IO_FILE* %call, i8* %fn, %struct.t_mapping** %map) #9
  tail call void @ffclose(%struct._IO_FILE* %call) #8
  ret i32 %call1
}

; Function Attrs: optsize
declare %struct._IO_FILE* @libopen(i8*) #1

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind optsize uwtable
define void @printcmap(%struct._IO_FILE* nocapture %out, i32 %n, %struct.t_mapping* nocapture %map) #0 {
entry:
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32 %n) #8
  %cmp52 = icmp sgt i32 %n, 0
  br i1 %cmp52, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %c1 = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 0, i32 0
  %0 = load i8* %c1, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  %conv = sext i8 %0 to i32
  %.conv = select i1 %tobool, i32 32, i32 %conv
  %c2 = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 0, i32 1
  %1 = load i8* %c2, align 1, !tbaa !1
  %tobool10 = icmp eq i8 %1, 0
  %conv9 = sext i8 %1 to i32
  %cond19 = select i1 %tobool10, i32 32, i32 %conv9
  %desc = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 1
  %2 = load i8** %desc, align 8, !tbaa !0
  %r = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 2, i32 0
  %3 = load float* %r, align 4, !tbaa !5
  %conv24 = fpext float %3 to double
  %g = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 2, i32 1
  %4 = load float* %g, align 4, !tbaa !5
  %conv28 = fpext float %4 to double
  %b = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 2, i32 2
  %5 = load float* %b, align 4, !tbaa !5
  %conv32 = fpext float %5 to double
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([30 x i8]* @.str11, i64 0, i64 0), i32 %.conv, i32 %cond19, i8* %2, double %conv24, double %conv28, double %conv32) #8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #5

; Function Attrs: nounwind optsize uwtable
define void @writecmap(i8* %fn, i32 %n, %struct.t_mapping* nocapture %map) #0 {
entry:
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #8
  tail call void @printcmap(%struct._IO_FILE* %call, i32 %n, %struct.t_mapping* %map) #9
  tail call void @ffclose(%struct._IO_FILE* %call) #8
  ret void
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @do_wmap(%struct._IO_FILE* nocapture %out, i32 %i0, i32 %imax, i32 %nlevels, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rhi.coerce0, float %rhi.coerce1, float %lo, float %hi) #0 {
entry:
  %cmp56 = icmp sgt i32 %imax, 0
  br i1 %cmp56, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rlo.sroa.0.0.vec.extract = extractelement <2 x float> %rlo.coerce0, i32 0
  %rhi.sroa.0.0.vec.extract = extractelement <2 x float> %rhi.coerce0, i32 0
  %conv6 = sitofp i32 %nlevels to float
  %rlo.sroa.0.4.vec.extract = extractelement <2 x float> %rlo.coerce0, i32 1
  %rhi.sroa.0.4.vec.extract = extractelement <2 x float> %rhi.coerce0, i32 1
  %0 = sext i32 %i0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = trunc i64 %indvars.iv to i32
  %sub = sub nsw i32 %nlevels, %1
  %conv = sitofp i32 %sub to float
  %mul = fmul float %rlo.sroa.0.0.vec.extract, %conv
  %conv3 = sitofp i32 %1 to float
  %mul5 = fmul float %rhi.sroa.0.0.vec.extract, %conv3
  %add = fadd float %mul5, %mul
  %div = fdiv float %add, %conv6
  %mul9 = fmul float %rlo.sroa.0.4.vec.extract, %conv
  %mul12 = fmul float %rhi.sroa.0.4.vec.extract, %conv3
  %add13 = fadd float %mul12, %mul9
  %div15 = fdiv float %add13, %conv6
  %mul18 = fmul float %conv, %rlo.coerce1
  %mul21 = fmul float %conv3, %rhi.coerce1
  %add22 = fadd float %mul21, %mul18
  %div24 = fdiv float %add22, %conv6
  %2 = add nsw i64 %indvars.iv, %0
  %arrayidx = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %2
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  %conv26 = sext i8 %3 to i32
  %mul28 = fmul float %conv, %lo
  %mul30 = fmul float %conv3, %hi
  %add31 = fadd float %mul30, %mul28
  %div33 = fdiv float %add31, %conv6
  %conv34 = fpext float %div33 to double
  %conv35 = fpext float %div to double
  %conv36 = fpext float %div15 to double
  %conv37 = fpext float %div24 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([28 x i8]* @.str13, i64 0, i64 0), i32 %conv26, double %conv34, double %conv35, double %conv36, double %conv37) #8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %imax
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i8* @fgetline(i8** nocapture %line, i32 %llmax, %struct._IO_FILE* nocapture %in) #0 {
entry:
  %0 = load i32* @fgetline.linelengthmax, align 4, !tbaa !3
  %cmp = icmp slt i32 %0, %llmax
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre5 = load i8** @fgetline.line0, align 8, !tbaa !0
  br label %if.end

if.then:                                          ; preds = %entry
  store i32 %llmax, i32* @fgetline.linelengthmax, align 4, !tbaa !3
  %1 = load i8** @fgetline.line0, align 8, !tbaa !0
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 190, i8* %1, i32 %llmax) #8
  store i8* %call, i8** @fgetline.line0, align 8, !tbaa !0
  %.pre = load i32* @fgetline.linelengthmax, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %2 = phi i8* [ %call, %if.then ], [ %.pre5, %entry.if.end_crit_edge ]
  %3 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %call2 = tail call i8* @fgets(i8* %2, i32 %3, %struct._IO_FILE* %in) #8
  %4 = load i8** @fgetline.line0, align 8, !tbaa !0
  store i8* %4, i8** %line, align 8, !tbaa !0
  tail call void @trim(i8* %4) #8
  ret i8* %call2
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: optsize
declare void @trim(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @skipstr(i8** nocapture %line) #0 {
entry:
  %0 = load i8** %line, align 8, !tbaa !0
  tail call void @ltrim(i8* %0) #8
  %.pre = load i8** %line, align 8, !tbaa !0
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = phi i8* [ %incdec.ptr, %while.body ], [ %.pre, %entry ]
  %2 = load i8* %1, align 1, !tbaa !1
  switch i8 %2, label %while.body [
    i8 32, label %while.end
    i8 0, label %while.end
  ]

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8* %1, i64 1
  store i8* %incdec.ptr, i8** %line, align 8, !tbaa !0
  br label %while.cond

while.end:                                        ; preds = %while.cond, %while.cond
  ret void
}

; Function Attrs: optsize
declare void @ltrim(i8*) #1

; Function Attrs: nounwind optsize uwtable
define i8* @line2string(i8** nocapture %line) #0 {
entry:
  %0 = load i8** %line, align 8, !tbaa !0
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %1 = load i8* %0, align 1, !tbaa !1
  %cmp150 = icmp eq i8 %1, 34
  %cmp551 = icmp ne i8 %1, 0
  %not.cmp152 = xor i1 %cmp150, true
  %.cmp553 = and i1 %cmp551, %not.cmp152
  br i1 %.cmp553, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %2 = phi i8* [ %incdec.ptr, %while.body ], [ %0, %while.cond.preheader ]
  %incdec.ptr = getelementptr inbounds i8* %2, i64 1
  store i8* %incdec.ptr, i8** %line, align 8, !tbaa !0
  %3 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp1 = icmp eq i8 %3, 34
  %cmp5 = icmp ne i8 %3, 0
  %not.cmp1 = xor i1 %cmp1, true
  %.cmp5 = and i1 %cmp5, %not.cmp1
  br i1 %.cmp5, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %cmp1.lcssa = phi i1 [ %cmp150, %while.cond.preheader ], [ %cmp1, %while.body ]
  %.lcssa = phi i8* [ %0, %while.cond.preheader ], [ %incdec.ptr, %while.body ]
  br i1 %cmp1.lcssa, label %if.end, label %return

if.end:                                           ; preds = %while.end
  %incdec.ptr12 = getelementptr inbounds i8* %.lcssa, i64 1
  store i8* %incdec.ptr12, i8** %line, align 8, !tbaa !0
  br label %while.cond13

while.cond13:                                     ; preds = %while.cond13, %if.end
  %indvars.iv = phi i64 [ %incdec.ptr12.sum, %while.cond13 ], [ 0, %if.end ]
  %incdec.ptr12.sum = add i64 %indvars.iv, 1
  %arrayidx14 = getelementptr inbounds i8* %.lcssa, i64 %incdec.ptr12.sum
  %4 = load i8* %arrayidx14, align 1, !tbaa !1
  %cmp16 = icmp eq i8 %4, 34
  %cmp22 = icmp ne i8 %4, 0
  %not.cmp16 = xor i1 %cmp16, true
  %.cmp22 = and i1 %cmp22, %not.cmp16
  br i1 %.cmp22, label %while.cond13, label %while.end26

while.end26:                                      ; preds = %while.cond13
  br i1 %cmp16, label %if.else, label %if.then32

if.then32:                                        ; preds = %while.end26
  store i8* null, i8** %line, align 8, !tbaa !0
  br label %return

if.else:                                          ; preds = %while.end26
  store i8 0, i8* %arrayidx14, align 1, !tbaa !1
  %.pre = load i8** %line, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %if.else, %if.then32, %entry, %while.end
  %retval.0 = phi i8* [ null, %while.end ], [ null, %entry ], [ null, %if.then32 ], [ %.pre, %if.else ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @parsestring(i8* %line, i8* nocapture %label, i8* %string) #0 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8, !tbaa !0
  %call = call i8* @strstr(i8* %line, i8* %label) #10
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call i8* @strchr(i8* %line, i32 34) #10
  %cmp = icmp ult i8* %call, %call2
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.then
  %call4 = call i8* @line2string(i8** %line.addr) #9
  %0 = load i8** %line.addr, align 8, !tbaa !0
  %call5 = call i8* @strcpy(i8* %string, i8* %0) #8
  br label %if.end6

if.end6:                                          ; preds = %entry, %if.then, %if.then3
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #6

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @read_xpm_entry(%struct._IO_FILE* nocapture %in, %struct.t_matrix* %mm) #0 {
entry:
  %line = alloca i8*, align 8
  %buf = alloca [256 x i8], align 16
  %nch = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %u = alloca double, align 8
  store i8* null, i8** %line, align 8, !tbaa !0
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %0) #4
  %arrayidx = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 3, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %arrayidx1 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 4, i64 0
  store i8 0, i8* %arrayidx1, align 1, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 5, i64 0
  store i8 0, i8* %arrayidx2, align 1, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 6, i64 0
  store i8 0, i8* %arrayidx3, align 1, !tbaa !1
  %matrix = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 10
  %axis_x = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 8
  %axis_y = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 9
  %bDiscrete = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 7
  %1 = bitcast i32* %bDiscrete to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 28, i32 4, i1 false)
  %call529 = call i8* @fgetline(i8** %line, i32 4096, %struct._IO_FILE* %in) #9
  %tobool530 = icmp eq i8* %call529, null
  br i1 %tobool530, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %entry, %while.body
  %2 = load i8** %line, align 8, !tbaa !0
  %call4 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i64 6) #10
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  call void @parsestring(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), i8* %arrayidx) #9
  %3 = load i8** %line, align 8, !tbaa !0
  call void @parsestring(i8* %3, i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), i8* %arrayidx1) #9
  %4 = load i8** %line, align 8, !tbaa !0
  call void @parsestring(i8* %4, i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0), i8* %arrayidx2) #9
  %5 = load i8** %line, align 8, !tbaa !0
  call void @parsestring(i8* %5, i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), i8* %arrayidx3) #9
  %6 = load i8** %line, align 8, !tbaa !0
  call void @parsestring(i8* %6, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i8* %0) #9
  %call = call i8* @fgetline(i8** %line, i32 4096, %struct._IO_FILE* %in) #9
  %tobool = icmp eq i8* %call, null
  br i1 %tobool, label %while.end, label %land.rhs

while.end:                                        ; preds = %while.body, %land.rhs, %entry
  %7 = load i8* %0, align 16, !tbaa !1
  %tobool14 = icmp eq i8 %7, 0
  br i1 %tobool14, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.end
  %call16 = call i32 @gmx_strcasecmp(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0)) #8
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %bDiscrete, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then, %land.lhs.true
  %8 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool20 = icmp eq %struct._IO_FILE* %8, null
  br i1 %tobool20, label %if.end31, label %if.then21

if.then21:                                        ; preds = %if.end
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0), i8* %arrayidx, i8* %arrayidx1, i8* %arrayidx2, i8* %arrayidx3) #8
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then21
  %9 = load i8** %line, align 8, !tbaa !0
  %call32 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i64 6) #10
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %while.cond37.preheader, label %if.then35

if.then35:                                        ; preds = %if.end31
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str23, i64 0, i64 0)) #8
  br label %while.cond37.preheader

while.cond37.preheader:                           ; preds = %if.end31, %if.then35
  %nx = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 0
  %ny = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 1
  %nmap = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 11
  br label %land.rhs39

while.cond37.outer.while.end74.split_crit_edge:   ; preds = %if.then61, %if.then66
  %10 = load i32* %nx, align 4, !tbaa !3
  %add = add nsw i32 %10, 10
  %cmp69 = icmp slt i32 %add, 4096
  %.add = select i1 %cmp69, i32 4096, i32 %add
  br label %while.end74.split

land.rhs39:                                       ; preds = %while.end56, %while.cond37.preheader
  %call40 = call i8* @fgetline(i8** %line, i32 4096, %struct._IO_FILE* %in) #9
  %tobool41 = icmp eq i8* %call40, null
  br i1 %tobool41, label %while.end74.split, label %while.cond44.preheader

while.cond44.preheader:                           ; preds = %land.rhs39
  %11 = load i8** %line, align 8, !tbaa !0
  %12 = load i8* %11, align 1, !tbaa !1
  %cmp47524 = icmp eq i8 %12, 34
  %cmp52525 = icmp ne i8 %12, 0
  %not.cmp47526 = xor i1 %cmp47524, true
  %.cmp52527 = and i1 %cmp52525, %not.cmp47526
  br i1 %.cmp52527, label %while.body55, label %while.end56

while.body55:                                     ; preds = %while.cond44.preheader, %while.body55
  %13 = phi i8* [ %incdec.ptr, %while.body55 ], [ %11, %while.cond44.preheader ]
  %incdec.ptr = getelementptr inbounds i8* %13, i64 1
  store i8* %incdec.ptr, i8** %line, align 8, !tbaa !0
  %14 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp47 = icmp eq i8 %14, 34
  %cmp52 = icmp ne i8 %14, 0
  %not.cmp47 = xor i1 %cmp47, true
  %.cmp52 = and i1 %cmp52, %not.cmp47
  br i1 %.cmp52, label %while.body55, label %while.end56

while.end56:                                      ; preds = %while.body55, %while.cond44.preheader
  %cmp47.lcssa = phi i1 [ %cmp47524, %while.cond44.preheader ], [ %cmp47, %while.body55 ]
  br i1 %cmp47.lcssa, label %if.then61, label %land.rhs39

if.then61:                                        ; preds = %while.end56
  %call62 = call i8* @line2string(i8** %line) #9
  %15 = load i8** %line, align 8, !tbaa !0
  %call63 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %15, i8* getelementptr inbounds ([12 x i8]* @.str24, i64 0, i64 0), i32* %nx, i32* %ny, i32* %nmap, i32* %nch) #8
  %16 = load i32* %nch, align 4, !tbaa !3
  %cmp64 = icmp sgt i32 %16, 2
  br i1 %cmp64, label %if.then66, label %while.cond37.outer.while.end74.split_crit_edge

if.then66:                                        ; preds = %if.then61
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([62 x i8]* @.str25, i64 0, i64 0)) #8
  br label %while.cond37.outer.while.end74.split_crit_edge

while.end74.split:                                ; preds = %land.rhs39, %while.cond37.outer.while.end74.split_crit_edge
  %llmax.0.ph532 = phi i32 [ %.add, %while.cond37.outer.while.end74.split_crit_edge ], [ 4096, %land.rhs39 ]
  %17 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool75 = icmp eq %struct._IO_FILE* %17, null
  br i1 %tobool75, label %if.end81, label %if.then76

if.then76:                                        ; preds = %while.end74.split
  %18 = load i32* %nx, align 4, !tbaa !3
  %19 = load i32* %ny, align 4, !tbaa !3
  %20 = load i32* %nmap, align 4, !tbaa !3
  %21 = load i32* %nch, align 4, !tbaa !3
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([40 x i8]* @.str26, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21) #8
  br label %if.end81

if.end81:                                         ; preds = %while.end74.split, %if.then76
  %22 = load i32* %nmap, align 4, !tbaa !3
  %call83 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 298, i32 %22, i32 32) #8
  %23 = bitcast i8* %call83 to %struct.t_mapping*
  br label %while.cond84.outer

while.cond84.outer:                               ; preds = %if.end198, %if.end81
  %indvars.iv544 = phi i64 [ %indvars.iv.next545, %if.end198 ], [ 0, %if.end81 ]
  %m.0.ph = phi i32 [ %inc205, %if.end198 ], [ 0, %if.end81 ]
  br label %while.cond84

while.cond84:                                     ; preds = %while.cond84.outer, %while.body92
  %24 = load i32* %nmap, align 4, !tbaa !3
  %25 = trunc i64 %indvars.iv544 to i32
  %cmp86 = icmp slt i32 %25, %24
  br i1 %cmp86, label %land.rhs88, label %while.end207

land.rhs88:                                       ; preds = %while.cond84
  %call89 = call i8* @fgetline(i8** %line, i32 %llmax.0.ph532, %struct._IO_FILE* %in) #9
  %tobool90 = icmp eq i8* %call89, null
  br i1 %tobool90, label %land.rhs88.while.end207_crit_edge, label %while.body92

land.rhs88.while.end207_crit_edge:                ; preds = %land.rhs88
  %.pre550 = load i32* %nmap, align 4, !tbaa !3
  br label %while.end207

while.body92:                                     ; preds = %land.rhs88
  %26 = load i8** %line, align 8, !tbaa !0
  %call93 = call i8* @strchr(i8* %26, i32 34) #10
  store i8* %call93, i8** %line, align 8, !tbaa !0
  %tobool94 = icmp eq i8* %call93, null
  br i1 %tobool94, label %while.cond84, label %if.then95

if.then95:                                        ; preds = %while.body92
  %incdec.ptr96 = getelementptr inbounds i8* %call93, i64 1
  store i8* %incdec.ptr96, i8** %line, align 8, !tbaa !0
  %27 = load i8* %incdec.ptr96, align 1, !tbaa !1
  %c1 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 0, i32 0
  store i8 %27, i8* %c1, align 1, !tbaa !1
  %28 = load i32* %nch, align 4, !tbaa !3
  %cmp99 = icmp eq i32 %28, 1
  br i1 %cmp99, label %if.then101, label %if.else

if.then101:                                       ; preds = %if.then95
  %c2 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 0, i32 1
  store i8 0, i8* %c2, align 1, !tbaa !1
  br label %if.end110

if.else:                                          ; preds = %if.then95
  %29 = load i8** %line, align 8, !tbaa !0
  %arrayidx105 = getelementptr inbounds i8* %29, i64 1
  %30 = load i8* %arrayidx105, align 1, !tbaa !1
  %c2109 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 0, i32 1
  store i8 %30, i8* %c2109, align 1, !tbaa !1
  br label %if.end110

if.end110:                                        ; preds = %if.else, %if.then101
  %31 = load i32* %nch, align 4, !tbaa !3
  %32 = load i8** %line, align 8, !tbaa !0
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %line, align 8, !tbaa !0
  %call111 = call i8* @strchr(i8* %add.ptr, i32 35) #10
  %tobool112 = icmp eq i8* %call111, null
  br i1 %tobool112, label %if.else178, label %while.cond115.preheader

while.cond115.preheader:                          ; preds = %if.end110
  %call120 = call i16** @__ctype_b_loc() #11
  %33 = load i16** %call120, align 8, !tbaa !0
  br label %while.cond115

while.cond115:                                    ; preds = %while.cond115, %while.cond115.preheader
  %indvars.iv542 = phi i64 [ %incdec.ptr114.sum, %while.cond115 ], [ 0, %while.cond115.preheader ]
  %col_len.0 = phi i32 [ %inc, %while.cond115 ], [ 0, %while.cond115.preheader ]
  %incdec.ptr114.sum = add i64 %indvars.iv542, 1
  %arrayidx117 = getelementptr inbounds i8* %call111, i64 %incdec.ptr114.sum
  %34 = load i8* %arrayidx117, align 1, !tbaa !1
  %idxprom119 = sext i8 %34 to i64
  %arrayidx121 = getelementptr inbounds i16* %33, i64 %idxprom119
  %35 = load i16* %arrayidx121, align 2, !tbaa !6
  %and = and i16 %35, 4096
  %tobool123 = icmp eq i16 %and, 0
  %inc = add nsw i32 %col_len.0, 1
  br i1 %tobool123, label %while.end125, label %while.cond115

while.end125:                                     ; preds = %while.cond115
  switch i32 %col_len.0, label %if.else175 [
    i32 6, label %if.then128
    i32 12, label %if.then152
  ]

if.then128:                                       ; preds = %while.end125
  %call129 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([15 x i8]* @.str28, i64 0, i64 0), i32* %r, i32* %g, i32* %b) #8
  %36 = load i32* %r, align 4, !tbaa !3
  %conv130 = uitofp i32 %36 to double
  %div = fdiv double %conv130, 2.550000e+02
  %conv131 = fptrunc double %div to float
  %r134 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 0
  store float %conv131, float* %r134, align 4, !tbaa !5
  %37 = load i32* %g, align 4, !tbaa !3
  %conv135 = uitofp i32 %37 to double
  %div136 = fdiv double %conv135, 2.550000e+02
  %conv137 = fptrunc double %div136 to float
  %g141 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 1
  store float %conv137, float* %g141, align 4, !tbaa !5
  %38 = load i32* %b, align 4, !tbaa !3
  %conv142 = uitofp i32 %38 to double
  %div143 = fdiv double %conv142, 2.550000e+02
  %conv144 = fptrunc double %div143 to float
  %b148 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 2
  store float %conv144, float* %b148, align 4, !tbaa !5
  br label %if.end198

if.then152:                                       ; preds = %while.end125
  %call153 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i32* %r, i32* %g, i32* %b) #8
  %39 = load i32* %r, align 4, !tbaa !3
  %conv154 = uitofp i32 %39 to double
  %div155 = fdiv double %conv154, 6.553500e+04
  %conv156 = fptrunc double %div155 to float
  %r160 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 0
  store float %conv156, float* %r160, align 4, !tbaa !5
  %40 = load i32* %g, align 4, !tbaa !3
  %conv161 = uitofp i32 %40 to double
  %div162 = fdiv double %conv161, 6.553500e+04
  %conv163 = fptrunc double %div162 to float
  %g167 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 1
  store float %conv163, float* %g167, align 4, !tbaa !5
  %41 = load i32* %b, align 4, !tbaa !3
  %conv168 = uitofp i32 %41 to double
  %div169 = fdiv double %conv168, 6.553500e+04
  %conv170 = fptrunc double %div169 to float
  %b174 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 2
  store float %conv170, float* %b174, align 4, !tbaa !5
  br label %if.end198

if.else175:                                       ; preds = %while.end125
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str30, i64 0, i64 0)) #8
  br label %if.end198

if.else178:                                       ; preds = %if.end110
  %call179 = call i8* @strchr(i8* %add.ptr, i32 99) #10
  %tobool180 = icmp eq i8* %call179, null
  br i1 %tobool180, label %if.else183, label %if.then181

if.then181:                                       ; preds = %if.else178
  %add.ptr182 = getelementptr inbounds i8* %call179, i64 2
  br label %if.end184

if.else183:                                       ; preds = %if.else178
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str30, i64 0, i64 0)) #8
  br label %if.end184

if.end184:                                        ; preds = %if.else183, %if.then181
  %str.0 = phi i8* [ %add.ptr182, %if.then181 ], [ null, %if.else183 ]
  %42 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([26 x i8]* @.str31, i64 0, i64 0), i8* %str.0) #8
  %r189 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 0
  store float 1.000000e+00, float* %r189, align 4, !tbaa !5
  %g193 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 1
  store float 1.000000e+00, float* %g193, align 4, !tbaa !5
  %b197 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 2
  store float 1.000000e+00, float* %b197, align 4, !tbaa !5
  br label %if.end198

if.end198:                                        ; preds = %if.then128, %if.else175, %if.then152, %if.end184
  %43 = load i8** %line, align 8, !tbaa !0
  %call199 = call i8* @strchr(i8* %43, i32 34) #10
  %incdec.ptr200 = getelementptr inbounds i8* %call199, i64 1
  store i8* %incdec.ptr200, i8** %line, align 8, !tbaa !0
  %call201 = call i8* @line2string(i8** %line) #9
  %44 = load i8** %line, align 8, !tbaa !0
  %call202 = call i8* @gmx_strdup(i8* %44) #8
  %desc = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 1
  store i8* %call202, i8** %desc, align 8, !tbaa !0
  %indvars.iv.next545 = add i64 %indvars.iv544, 1
  %inc205 = add nsw i32 %m.0.ph, 1
  br label %while.cond84.outer

while.end207:                                     ; preds = %land.rhs88.while.end207_crit_edge, %while.cond84
  %45 = phi i32 [ %.pre550, %land.rhs88.while.end207_crit_edge ], [ %24, %while.cond84 ]
  %cmp209 = icmp eq i32 %m.0.ph, %45
  br i1 %cmp209, label %if.end213, label %if.then211

if.then211:                                       ; preds = %while.end207
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([84 x i8]* @.str32, i64 0, i64 0), i32 %m.0.ph, i32 %45) #8
  br label %if.end213

if.end213:                                        ; preds = %while.end207, %if.then211
  %map214 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 12
  store %struct.t_mapping* %23, %struct.t_mapping** %map214, align 8, !tbaa !0
  br label %do.body

do.body:                                          ; preds = %land.rhs278, %if.end213
  %n_axis_x.0 = phi i32 [ 0, %if.end213 ], [ %n_axis_x.2, %land.rhs278 ]
  %n_axis_y.0 = phi i32 [ 0, %if.end213 ], [ %n_axis_y.2, %land.rhs278 ]
  %46 = load i8** %line, align 8, !tbaa !0
  %call215 = call i8* @strstr(i8* %46, i8* getelementptr inbounds ([7 x i8]* @.str33, i64 0, i64 0)) #10
  %tobool216 = icmp eq i8* %call215, null
  br i1 %tobool216, label %if.else243, label %if.then217

if.then217:                                       ; preds = %do.body
  store i8* %call215, i8** %line, align 8, !tbaa !0
  call void @ltrim(i8* %call215) #8
  %.pre.i = load i8** %line, align 8, !tbaa !0
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.then217
  %47 = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %.pre.i, %if.then217 ]
  %48 = load i8* %47, align 1, !tbaa !1
  switch i8 %48, label %while.body.i [
    i8 32, label %skipstr.exit
    i8 0, label %skipstr.exit
  ]

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr inbounds i8* %47, i64 1
  store i8* %incdec.ptr.i, i8** %line, align 8, !tbaa !0
  br label %while.cond.i

skipstr.exit:                                     ; preds = %while.cond.i, %while.cond.i
  %49 = load float** %axis_x, align 8, !tbaa !0
  %cmp220 = icmp eq float* %49, null
  br i1 %cmp220, label %if.then222, label %while.cond227.preheader

if.then222:                                       ; preds = %skipstr.exit
  %50 = load i32* %nx, align 4, !tbaa !3
  %call224 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 360, i32 %50, i32 4) #8
  %51 = bitcast i8* %call224 to float*
  store float* %51, float** %axis_x, align 8, !tbaa !0
  %.pre549 = load i8** %line, align 8, !tbaa !0
  br label %while.cond227.preheader

while.cond227.preheader:                          ; preds = %if.then222, %skipstr.exit
  %52 = phi i8* [ %.pre549, %if.then222 ], [ %47, %skipstr.exit ]
  %call228515 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %52, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %u) #8
  %cmp229516 = icmp eq i32 %call228515, 1
  br i1 %cmp229516, label %while.body231.lr.ph, label %do.cond

while.body231.lr.ph:                              ; preds = %while.cond227.preheader
  %53 = sext i32 %n_axis_x.0 to i64
  br label %while.body231

while.cond227.loopexit:                           ; preds = %while.cond.i489, %while.cond.i489
  %call228 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %59, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %u) #8
  %cmp229 = icmp eq i32 %call228, 1
  br i1 %cmp229, label %while.body231, label %do.cond

while.body231:                                    ; preds = %while.body231.lr.ph, %while.cond227.loopexit
  %indvars.iv538 = phi i64 [ %53, %while.body231.lr.ph ], [ %indvars.iv.next539, %while.cond227.loopexit ]
  %n_axis_x.1517 = phi i32 [ %n_axis_x.0, %while.body231.lr.ph ], [ %inc241, %while.cond227.loopexit ]
  %54 = load i32* %nx, align 4, !tbaa !3
  %55 = trunc i64 %indvars.iv538 to i32
  %cmp233 = icmp slt i32 %55, %54
  br i1 %cmp233, label %if.end236, label %if.then235

if.then235:                                       ; preds = %while.body231
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str36, i64 0, i64 0)) #8
  br label %if.end236

if.end236:                                        ; preds = %while.body231, %if.then235
  %56 = load double* %u, align 8, !tbaa !4
  %conv237 = fptrunc double %56 to float
  %57 = load float** %axis_x, align 8, !tbaa !0
  %arrayidx240 = getelementptr inbounds float* %57, i64 %indvars.iv538
  store float %conv237, float* %arrayidx240, align 4, !tbaa !5
  %indvars.iv.next539 = add i64 %indvars.iv538, 1
  %inc241 = add nsw i32 %n_axis_x.1517, 1
  %58 = load i8** %line, align 8, !tbaa !0
  call void @ltrim(i8* %58) #8
  %.pre.i488 = load i8** %line, align 8, !tbaa !0
  br label %while.cond.i489

while.cond.i489:                                  ; preds = %while.body.i491, %if.end236
  %59 = phi i8* [ %incdec.ptr.i490, %while.body.i491 ], [ %.pre.i488, %if.end236 ]
  %60 = load i8* %59, align 1, !tbaa !1
  switch i8 %60, label %while.body.i491 [
    i8 32, label %while.cond227.loopexit
    i8 0, label %while.cond227.loopexit
  ]

while.body.i491:                                  ; preds = %while.cond.i489
  %incdec.ptr.i490 = getelementptr inbounds i8* %59, i64 1
  store i8* %incdec.ptr.i490, i8** %line, align 8, !tbaa !0
  br label %while.cond.i489

if.else243:                                       ; preds = %do.body
  %call244 = call i8* @strstr(i8* %46, i8* getelementptr inbounds ([7 x i8]* @.str37, i64 0, i64 0)) #10
  %tobool245 = icmp eq i8* %call244, null
  br i1 %tobool245, label %do.cond, label %if.then246

if.then246:                                       ; preds = %if.else243
  store i8* %call244, i8** %line, align 8, !tbaa !0
  call void @ltrim(i8* %call244) #8
  %.pre.i493 = load i8** %line, align 8, !tbaa !0
  br label %while.cond.i494

while.cond.i494:                                  ; preds = %while.body.i496, %if.then246
  %61 = phi i8* [ %incdec.ptr.i495, %while.body.i496 ], [ %.pre.i493, %if.then246 ]
  %62 = load i8* %61, align 1, !tbaa !1
  switch i8 %62, label %while.body.i496 [
    i8 32, label %skipstr.exit497
    i8 0, label %skipstr.exit497
  ]

while.body.i496:                                  ; preds = %while.cond.i494
  %incdec.ptr.i495 = getelementptr inbounds i8* %61, i64 1
  store i8* %incdec.ptr.i495, i8** %line, align 8, !tbaa !0
  br label %while.cond.i494

skipstr.exit497:                                  ; preds = %while.cond.i494, %while.cond.i494
  %63 = load float** %axis_y, align 8, !tbaa !0
  %cmp249 = icmp eq float* %63, null
  br i1 %cmp249, label %if.then251, label %while.cond256.preheader

if.then251:                                       ; preds = %skipstr.exit497
  %64 = load i32* %ny, align 4, !tbaa !3
  %call253 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 373, i32 %64, i32 4) #8
  %65 = bitcast i8* %call253 to float*
  store float* %65, float** %axis_y, align 8, !tbaa !0
  %.pre = load i8** %line, align 8, !tbaa !0
  br label %while.cond256.preheader

while.cond256.preheader:                          ; preds = %if.then251, %skipstr.exit497
  %66 = phi i8* [ %.pre, %if.then251 ], [ %61, %skipstr.exit497 ]
  %call257520 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %66, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %u) #8
  %cmp258521 = icmp eq i32 %call257520, 1
  br i1 %cmp258521, label %while.body260.lr.ph, label %do.cond

while.body260.lr.ph:                              ; preds = %while.cond256.preheader
  %67 = sext i32 %n_axis_y.0 to i64
  br label %while.body260

while.cond256.loopexit:                           ; preds = %while.cond.i499, %while.cond.i499
  %call257 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %73, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %u) #8
  %cmp258 = icmp eq i32 %call257, 1
  br i1 %cmp258, label %while.body260, label %do.cond

while.body260:                                    ; preds = %while.body260.lr.ph, %while.cond256.loopexit
  %indvars.iv540 = phi i64 [ %67, %while.body260.lr.ph ], [ %indvars.iv.next541, %while.cond256.loopexit ]
  %n_axis_y.1522 = phi i32 [ %n_axis_y.0, %while.body260.lr.ph ], [ %inc270, %while.cond256.loopexit ]
  %68 = load i32* %ny, align 4, !tbaa !3
  %69 = trunc i64 %indvars.iv540 to i32
  %cmp262 = icmp slt i32 %69, %68
  br i1 %cmp262, label %if.end265, label %if.then264

if.then264:                                       ; preds = %while.body260
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str39, i64 0, i64 0)) #8
  br label %if.end265

if.end265:                                        ; preds = %while.body260, %if.then264
  %70 = load double* %u, align 8, !tbaa !4
  %conv266 = fptrunc double %70 to float
  %71 = load float** %axis_y, align 8, !tbaa !0
  %arrayidx269 = getelementptr inbounds float* %71, i64 %indvars.iv540
  store float %conv266, float* %arrayidx269, align 4, !tbaa !5
  %indvars.iv.next541 = add i64 %indvars.iv540, 1
  %inc270 = add nsw i32 %n_axis_y.1522, 1
  %72 = load i8** %line, align 8, !tbaa !0
  call void @ltrim(i8* %72) #8
  %.pre.i498 = load i8** %line, align 8, !tbaa !0
  br label %while.cond.i499

while.cond.i499:                                  ; preds = %while.body.i501, %if.end265
  %73 = phi i8* [ %incdec.ptr.i500, %while.body.i501 ], [ %.pre.i498, %if.end265 ]
  %74 = load i8* %73, align 1, !tbaa !1
  switch i8 %74, label %while.body.i501 [
    i8 32, label %while.cond256.loopexit
    i8 0, label %while.cond256.loopexit
  ]

while.body.i501:                                  ; preds = %while.cond.i499
  %incdec.ptr.i500 = getelementptr inbounds i8* %73, i64 1
  store i8* %incdec.ptr.i500, i8** %line, align 8, !tbaa !0
  br label %while.cond.i499

do.cond:                                          ; preds = %while.cond256.preheader, %while.cond256.loopexit, %while.cond227.preheader, %while.cond227.loopexit, %if.else243
  %n_axis_x.2 = phi i32 [ %n_axis_x.0, %if.else243 ], [ %n_axis_x.0, %while.cond227.preheader ], [ %inc241, %while.cond227.loopexit ], [ %n_axis_x.0, %while.cond256.loopexit ], [ %n_axis_x.0, %while.cond256.preheader ]
  %n_axis_y.2 = phi i32 [ %n_axis_y.0, %if.else243 ], [ %n_axis_y.0, %while.cond227.preheader ], [ %n_axis_y.0, %while.cond227.loopexit ], [ %inc270, %while.cond256.loopexit ], [ %n_axis_y.0, %while.cond256.preheader ]
  %75 = load i8** %line, align 8, !tbaa !0
  %76 = load i8* %75, align 1, !tbaa !1
  %cmp276 = icmp eq i8 %76, 34
  br i1 %cmp276, label %do.end, label %land.rhs278

land.rhs278:                                      ; preds = %do.cond
  %call279 = call i8* @fgetline(i8** %line, i32 %llmax.0.ph532, %struct._IO_FILE* %in) #9
  %tobool280 = icmp eq i8* %call279, null
  br i1 %tobool280, label %do.end, label %do.body

do.end:                                           ; preds = %land.rhs278, %do.cond
  %77 = load i32* %nx, align 4, !tbaa !3
  %call283 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 385, i32 %77, i32 8) #8
  %78 = bitcast i8* %call283 to i16**
  store i16** %78, i16*** %matrix, align 8, !tbaa !0
  %79 = load i32* %nx, align 4, !tbaa !3
  %cmp286511 = icmp sgt i32 %79, 0
  %80 = load i32* %ny, align 4, !tbaa !3
  br i1 %cmp286511, label %for.body, label %for.end

for.body:                                         ; preds = %do.end, %for.body
  %indvars.iv536 = phi i64 [ %indvars.iv.next537, %for.body ], [ 0, %do.end ]
  %81 = phi i32 [ %86, %for.body ], [ %80, %do.end ]
  %call289 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 387, i32 %81, i32 2) #8
  %82 = bitcast i8* %call289 to i16*
  %83 = load i16*** %matrix, align 8, !tbaa !0
  %arrayidx292 = getelementptr inbounds i16** %83, i64 %indvars.iv536
  store i16* %82, i16** %arrayidx292, align 8, !tbaa !0
  %indvars.iv.next537 = add i64 %indvars.iv536, 1
  %84 = load i32* %nx, align 4, !tbaa !3
  %85 = trunc i64 %indvars.iv.next537 to i32
  %cmp286 = icmp slt i32 %85, %84
  %86 = load i32* %ny, align 4, !tbaa !3
  br i1 %cmp286, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %do.end
  %.lcssa510 = phi i32 [ %80, %do.end ], [ %86, %for.body ]
  %sub = add nsw i32 %.lcssa510, -1
  br label %do.body295

do.body295:                                       ; preds = %land.rhs365.do.body295_crit_edge, %for.end
  %87 = phi i32 [ %.lcssa510, %for.end ], [ %.pre551, %land.rhs365.do.body295_crit_edge ]
  %m.1 = phi i32 [ %sub, %for.end ], [ %m.2, %land.rhs365.do.body295_crit_edge ]
  %div297 = sdiv i32 %87, 100
  %add298 = add nsw i32 %div297, 1
  %rem = srem i32 %m.1, %add298
  %cmp299 = icmp eq i32 %rem, 0
  br i1 %cmp299, label %if.then301, label %while.cond308.preheader

if.then301:                                       ; preds = %do.body295
  %88 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %sub303 = sub nsw i32 %87, %m.1
  %mul = mul nsw i32 %sub303, 100
  %div305 = sdiv i32 %mul, %87
  %call306 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), i32 %div305) #8
  br label %while.cond308.preheader

while.cond308.preheader:                          ; preds = %if.then301, %do.body295
  %89 = load i8** %line, align 8, !tbaa !0
  %90 = load i8* %89, align 1, !tbaa !1
  %cmp311503 = icmp eq i8 %90, 34
  %cmp316504 = icmp ne i8 %90, 0
  %not.cmp311505 = xor i1 %cmp311503, true
  %.cmp316506 = and i1 %cmp316504, %not.cmp311505
  br i1 %.cmp316506, label %while.body319, label %while.end321

while.body319:                                    ; preds = %while.cond308.preheader, %while.body319
  %91 = phi i8* [ %incdec.ptr320, %while.body319 ], [ %89, %while.cond308.preheader ]
  %incdec.ptr320 = getelementptr inbounds i8* %91, i64 1
  store i8* %incdec.ptr320, i8** %line, align 8, !tbaa !0
  %92 = load i8* %incdec.ptr320, align 1, !tbaa !1
  %cmp311 = icmp eq i8 %92, 34
  %cmp316 = icmp ne i8 %92, 0
  %not.cmp311 = xor i1 %cmp311, true
  %.cmp316 = and i1 %cmp316, %not.cmp311
  br i1 %.cmp316, label %while.body319, label %while.end321

while.end321:                                     ; preds = %while.body319, %while.cond308.preheader
  %cmp311.lcssa = phi i1 [ %cmp311503, %while.cond308.preheader ], [ %cmp311, %while.body319 ]
  %.lcssa = phi i8* [ %89, %while.cond308.preheader ], [ %incdec.ptr320, %while.body319 ]
  br i1 %cmp311.lcssa, label %if.else328, label %if.then326

if.then326:                                       ; preds = %while.end321
  %add327 = add nsw i32 %m.1, 1
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str43, i64 0, i64 0), i32 %add327) #8
  br label %do.cond362

if.else328:                                       ; preds = %while.end321
  %incdec.ptr329 = getelementptr inbounds i8* %.lcssa, i64 1
  store i8* %incdec.ptr329, i8** %line, align 8, !tbaa !0
  %93 = load i32* %nx, align 4, !tbaa !3
  %cmp332508 = icmp sgt i32 %93, 0
  br i1 %cmp332508, label %for.body334.lr.ph, label %for.end360

for.body334.lr.ph:                                ; preds = %if.else328
  %idxprom353 = sext i32 %m.1 to i64
  %.pre548 = load i32* %nch, align 4, !tbaa !3
  br label %for.body334

for.body334:                                      ; preds = %for.body334.lr.ph, %if.end349
  %indvars.iv = phi i64 [ 0, %for.body334.lr.ph ], [ %indvars.iv.next, %if.end349 ]
  %94 = trunc i64 %indvars.iv to i32
  %mul335 = mul nsw i32 %.pre548, %94
  %idxprom336 = sext i32 %mul335 to i64
  %incdec.ptr329.sum = add i64 %idxprom336, 1
  %arrayidx337 = getelementptr inbounds i8* %.lcssa, i64 %incdec.ptr329.sum
  %95 = load i8* %arrayidx337, align 1, !tbaa !1
  %cmp339 = icmp eq i32 %.pre548, 1
  br i1 %cmp339, label %if.end349, label %if.else343

if.else343:                                       ; preds = %for.body334
  %add345 = add nsw i32 %mul335, 1
  %idxprom346 = sext i32 %add345 to i64
  %incdec.ptr329.sum552 = add i64 %idxprom346, 1
  %arrayidx347 = getelementptr inbounds i8* %.lcssa, i64 %incdec.ptr329.sum552
  %96 = load i8* %arrayidx347, align 1, !tbaa !1
  %phitmp = zext i8 %96 to i16
  %phitmp487 = shl nuw i16 %phitmp, 8
  br label %if.end349

if.end349:                                        ; preds = %for.body334, %if.else343
  %c.sroa.1.0 = phi i16 [ %phitmp487, %if.else343 ], [ 0, %for.body334 ]
  %97 = load i32* %nmap, align 4, !tbaa !3
  %98 = load %struct.t_mapping** %map214, align 8, !tbaa !0
  %c.sroa.0.0.insert.ext = zext i8 %95 to i16
  %c.sroa.0.0.insert.insert = or i16 %c.sroa.1.0, %c.sroa.0.0.insert.ext
  %call352 = call signext i16 @searchcmap(i32 %97, %struct.t_mapping* %98, i16 %c.sroa.0.0.insert.insert) #9
  %99 = load i16*** %matrix, align 8, !tbaa !0
  %arrayidx356 = getelementptr inbounds i16** %99, i64 %indvars.iv
  %100 = load i16** %arrayidx356, align 8, !tbaa !0
  %arrayidx357 = getelementptr inbounds i16* %100, i64 %idxprom353
  store i16 %call352, i16* %arrayidx357, align 2, !tbaa !6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %101 = trunc i64 %indvars.iv.next to i32
  %cmp332 = icmp slt i32 %101, %93
  br i1 %cmp332, label %for.body334, label %for.end360

for.end360:                                       ; preds = %if.end349, %if.else328
  %dec = add nsw i32 %m.1, -1
  br label %do.cond362

do.cond362:                                       ; preds = %if.then326, %for.end360
  %m.2 = phi i32 [ %m.1, %if.then326 ], [ %dec, %for.end360 ]
  %cmp363 = icmp sgt i32 %m.2, -1
  br i1 %cmp363, label %land.rhs365, label %if.end373

land.rhs365:                                      ; preds = %do.cond362
  %call366 = call i8* @fgetline(i8** %line, i32 %llmax.0.ph532, %struct._IO_FILE* %in) #9
  %tobool367 = icmp eq i8* %call366, null
  br i1 %tobool367, label %if.then372, label %land.rhs365.do.body295_crit_edge

land.rhs365.do.body295_crit_edge:                 ; preds = %land.rhs365
  %.pre551 = load i32* %ny, align 4, !tbaa !3
  br label %do.body295

if.then372:                                       ; preds = %land.rhs365
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([31 x i8]* @.str44, i64 0, i64 0)) #8
  br label %if.end373

if.end373:                                        ; preds = %do.cond362, %if.then372
  call void @llvm.lifetime.end(i64 256, i8* %0) #4
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: optsize
declare i32 @gmx_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: nounwind optsize uwtable
define i32 @read_xpm_matrix(i8* %fnm, %struct.t_matrix** nocapture %matrix) #0 {
entry:
  %line = alloca i8*, align 8
  %call = call %struct._IO_FILE* @ffopen(i8* %fnm, i8* getelementptr inbounds ([2 x i8]* @.str45, i64 0, i64 0)) #8
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.then ], [ 0, %entry ]
  %nmat.0.ph = phi i32 [ %add, %if.then ], [ 0, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %call1 = call i8* @fgetline(i8** %line, i32 4096, %struct._IO_FILE* %call) #9
  %tobool = icmp eq i8* %call1, null
  br i1 %tobool, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load i8** %line, align 8, !tbaa !0
  %call2 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str46, i64 0, i64 0)) #10
  %tobool3 = icmp eq i8* %call2, null
  br i1 %tobool3, label %while.cond, label %if.then

if.then:                                          ; preds = %while.body
  %1 = load %struct.t_matrix** %matrix, align 8, !tbaa !0
  %2 = bitcast %struct.t_matrix* %1 to i8*
  %indvars.iv.next = add i64 %indvars.iv, 1
  %add = add nsw i32 %nmat.0.ph, 1
  %3 = trunc i64 %indvars.iv.next to i32
  %mul = mul i32 %3, 1080
  %call5 = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 424, i8* %2, i32 %mul) #8
  %4 = bitcast i8* %call5 to %struct.t_matrix*
  store %struct.t_matrix* %4, %struct.t_matrix** %matrix, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.t_matrix* %4, i64 %indvars.iv
  call void @read_xpm_entry(%struct._IO_FILE* %call, %struct.t_matrix* %arrayidx) #9
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  call void @ffclose(%struct._IO_FILE* %call) #8
  %cmp = icmp eq i32 %nmat.0.ph, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str23, i64 0, i64 0)) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %while.end
  ret i32 %nmat.0.ph
}

; Function Attrs: nounwind optsize uwtable
define float** @matrix2real(%struct.t_matrix* nocapture %matrix, float** %mat) #0 {
entry:
  %tmp = alloca double, align 8
  %nmap5 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 11
  %0 = load i32* %nmap5, align 4, !tbaa !3
  %map6 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 12
  %1 = load %struct.t_mapping** %map6, align 8, !tbaa !0
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 446, i32 %0, i32 4) #8
  %2 = bitcast i8* %call to float*
  %cmp107 = icmp sgt i32 %0, 0
  br i1 %cmp107, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %if.end ], [ 0, %entry ]
  %i.0108 = phi i32 [ %inc, %if.end ], [ 0, %entry ]
  %desc = getelementptr inbounds %struct.t_mapping* %1, i64 %indvars.iv115, i32 1
  %3 = load i8** %desc, align 8, !tbaa !0
  %cmp7 = icmp eq i8* %3, null
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call11 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %tmp) #8
  %cmp12 = icmp eq i32 %call11, 1
  br i1 %cmp12, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  %.pre117 = load i8** %desc, align 8, !tbaa !0
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body
  %4 = phi i8* [ %.pre117, %lor.lhs.false.if.then_crit_edge ], [ null, %for.body ]
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([88 x i8]* @.str49, i64 0, i64 0), i32 %i.0108, i8* %4) #8
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 453, i8* %call) #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load double* %tmp, align 8, !tbaa !4
  %conv = fptrunc double %6 to float
  %arrayidx18 = getelementptr inbounds float* %2, i64 %indvars.iv115
  store float %conv, float* %arrayidx18, align 4, !tbaa !5
  %indvars.iv.next116 = add i64 %indvars.iv115, 1
  %inc = add nsw i32 %i.0108, 1
  %7 = trunc i64 %indvars.iv.next116 to i32
  %cmp = icmp slt i32 %7, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %entry
  %cmp19 = icmp eq float** %mat, null
  %nx = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 0
  %8 = load i32* %nx, align 4, !tbaa !3
  br i1 %cmp19, label %if.then21, label %if.end34

if.then21:                                        ; preds = %for.end
  %call22 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 460, i32 %8, i32 8) #8
  %9 = bitcast i8* %call22 to float**
  %10 = load i32* %nx, align 4, !tbaa !3
  %cmp25104 = icmp sgt i32 %10, 0
  br i1 %cmp25104, label %for.body27.lr.ph, label %if.end34.thread

if.end34.thread:                                  ; preds = %if.then21
  %nx36118 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 0
  br label %if.end34.for.end61_crit_edge

for.body27.lr.ph:                                 ; preds = %if.then21
  %ny = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 1
  br label %for.body27

for.body27:                                       ; preds = %for.body27.lr.ph, %for.body27
  %indvars.iv111 = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next112, %for.body27 ]
  %11 = load i32* %ny, align 4, !tbaa !3
  %call28 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 462, i32 %11, i32 4) #8
  %12 = bitcast i8* %call28 to float*
  %arrayidx30 = getelementptr inbounds float** %9, i64 %indvars.iv111
  store float* %12, float** %arrayidx30, align 8, !tbaa !0
  %indvars.iv.next112 = add i64 %indvars.iv111, 1
  %13 = load i32* %nx, align 4, !tbaa !3
  %14 = trunc i64 %indvars.iv.next112 to i32
  %cmp25 = icmp slt i32 %14, %13
  br i1 %cmp25, label %for.body27, label %if.end34

if.end34:                                         ; preds = %for.end, %for.body27
  %15 = phi i32 [ %13, %for.body27 ], [ %8, %for.end ]
  %mat.addr.0 = phi float** [ %9, %for.body27 ], [ %mat, %for.end ]
  %nx36 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 0
  %cmp37102 = icmp sgt i32 %15, 0
  br i1 %cmp37102, label %for.cond40.preheader.lr.ph, label %if.end34.for.end61_crit_edge

if.end34.for.end61_crit_edge:                     ; preds = %if.end34.thread, %if.end34
  %nx36123 = phi i32* [ %nx36118, %if.end34.thread ], [ %nx36, %if.end34 ]
  %mat.addr.0121 = phi float** [ %9, %if.end34.thread ], [ %mat.addr.0, %if.end34 ]
  %ny63.pre = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 1
  br label %for.end61

for.cond40.preheader.lr.ph:                       ; preds = %if.end34
  %ny41 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 1
  %16 = load i32* %ny41, align 4, !tbaa !3
  %cmp42100 = icmp sgt i32 %16, 0
  %matrix47 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 10
  br label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %for.cond40.preheader.lr.ph, %for.inc59
  %indvars.iv109 = phi i64 [ 0, %for.cond40.preheader.lr.ph ], [ %indvars.iv.next110, %for.inc59 ]
  br i1 %cmp42100, label %for.body44.lr.ph, label %for.inc59

for.body44.lr.ph:                                 ; preds = %for.cond40.preheader
  %17 = load i16*** %matrix47, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds i16** %17, i64 %indvars.iv109
  %18 = load i16** %arrayidx48, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds float** %mat.addr.0, i64 %indvars.iv109
  %19 = load float** %arrayidx54, align 8, !tbaa !0
  br label %for.body44

for.body44:                                       ; preds = %for.body44.lr.ph, %for.body44
  %indvars.iv = phi i64 [ 0, %for.body44.lr.ph ], [ %indvars.iv.next, %for.body44 ]
  %arrayidx49 = getelementptr inbounds i16* %18, i64 %indvars.iv
  %20 = load i16* %arrayidx49, align 2, !tbaa !6
  %idxprom50 = sext i16 %20 to i64
  %arrayidx51 = getelementptr inbounds float* %2, i64 %idxprom50
  %21 = load float* %arrayidx51, align 4, !tbaa !5
  %arrayidx55 = getelementptr inbounds float* %19, i64 %indvars.iv
  store float %21, float* %arrayidx55, align 4, !tbaa !5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %22 = trunc i64 %indvars.iv.next to i32
  %cmp42 = icmp slt i32 %22, %16
  br i1 %cmp42, label %for.body44, label %for.inc59

for.inc59:                                        ; preds = %for.body44, %for.cond40.preheader
  %indvars.iv.next110 = add i64 %indvars.iv109, 1
  %23 = trunc i64 %indvars.iv.next110 to i32
  %cmp37 = icmp slt i32 %23, %15
  br i1 %cmp37, label %for.cond40.preheader, label %for.end61

for.end61:                                        ; preds = %for.inc59, %if.end34.for.end61_crit_edge
  %nx36122 = phi i32* [ %nx36123, %if.end34.for.end61_crit_edge ], [ %nx36, %for.inc59 ]
  %mat.addr.0120 = phi float** [ %mat.addr.0121, %if.end34.for.end61_crit_edge ], [ %mat.addr.0, %for.inc59 ]
  %ny63.pre-phi = phi i32* [ %ny63.pre, %if.end34.for.end61_crit_edge ], [ %ny41, %for.inc59 ]
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 468, i8* %call) #8
  %24 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %25 = load i32* %nx36122, align 4, !tbaa !3
  %26 = load i32* %ny63.pre-phi, align 4, !tbaa !3
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([50 x i8]* @.str52, i64 0, i64 0), i32 %25, i32 %26, i32 %0) #8
  br label %return

return:                                           ; preds = %for.end61, %if.then
  %retval.0 = phi float** [ null, %if.then ], [ %mat.addr.0120, %for.end61 ]
  ret float** %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @write_xpm_header(%struct._IO_FILE* nocapture %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 %bDiscrete) #0 {
entry:
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str53, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %out)
  %call1 = tail call i8* @Program() #8
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str54, i64 0, i64 0), i8* %call1) #8
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([71 x i8]* @.str55, i64 0, i64 0), i64 70, i64 1, %struct._IO_FILE* %out)
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str56, i64 0, i64 0), i8* %title) #8
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str57, i64 0, i64 0), i8* %legend) #8
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str58, i64 0, i64 0), i8* %label_x) #8
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str59, i64 0, i64 0), i8* %label_y) #8
  %tobool = icmp eq i32 %bDiscrete, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str60, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %out)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str61, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %out)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: optsize
declare i8* @Program() #1

; Function Attrs: nounwind optsize uwtable
define void @write_xpm_map3(%struct._IO_FILE* nocapture %out, i32 %n_x, i32 %n_y, i32* nocapture %nlevels, float %lo, float %mid, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rmid.coerce0, float %rmid.coerce1, %struct.t_rgb* byval nocapture align 8 %rhi) #0 {
entry:
  %0 = load i32* %nlevels, align 4, !tbaa !3
  %conv = sext i32 %0 to i64
  %call = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %mul = mul i64 %call, %call
  %cmp = icmp ugt i64 %conv, %mul
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv7 = trunc i64 %mul to i32
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([56 x i8]* @.str62, i64 0, i64 0), i32 %0, i32 %conv7) #8
  %call9 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %mul11 = mul i64 %call9, %call9
  %conv12 = trunc i64 %mul11 to i32
  store i32 %conv12, i32* %nlevels, align 4, !tbaa !3
  br label %if.end17

if.else:                                          ; preds = %entry
  %cmp13 = icmp slt i32 %0, 2
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str63, i64 0, i64 0), i32 %0) #8
  store i32 2, i32* %nlevels, align 4, !tbaa !3
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15, %if.then
  %cmp18 = fcmp ogt float %mid, %lo
  %cmp20 = fcmp olt float %mid, %hi
  %or.cond = and i1 %cmp18, %cmp20
  br i1 %or.cond, label %if.end26, label %if.then22

if.then22:                                        ; preds = %if.end17
  %conv23 = fpext float %lo to double
  %conv24 = fpext float %mid to double
  %conv25 = fpext float %hi to double
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str64, i64 0, i64 0), double %conv23, double %conv24, double %conv25) #8
  br label %if.end26

if.end26:                                         ; preds = %if.end17, %if.then22
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str65, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %out)
  %4 = load i32* %nlevels, align 4, !tbaa !3
  %conv28 = sext i32 %4 to i64
  %call29 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %cmp30 = icmp ule i64 %conv28, %call29
  %cond = select i1 %cmp30, i32 1, i32 2
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str66, i64 0, i64 0), i32 %n_x, i32 %n_y, i32 %4, i32 %cond) #8
  %5 = load i32* %nlevels, align 4, !tbaa !3
  %sub.i = fsub float %mid, %lo
  %sub1.i = fsub float %hi, %lo
  %div.i = fdiv float %sub.i, %sub1.i
  %sub2.i = add nsw i32 %5, -1
  %conv.i = sitofp i32 %sub2.i to float
  %mul.i = fmul float %div.i, %conv.i
  %cmp.i = fcmp olt float %mul.i, 1.000000e+00
  %cond.i = select i1 %cmp.i, float 1.000000e+00, float %mul.i
  %cmp12.not.i = fcmp uge float %cond.i, %conv.i
  %brmerge.i = or i1 %cmp12.not.i, %cmp.i
  %conv.mux.i = select i1 %cmp12.not.i, float %conv.i, float 1.000000e+00
  %cond37.i = select i1 %brmerge.i, float %conv.mux.i, float %mul.i
  %conv38.i = fptosi float %cond37.i to i32
  %conv34 = sitofp i32 %conv38.i to float
  %sub = sub nsw i32 %5, %conv38.i
  %conv35 = sitofp i32 %sub to float
  %cmp36250 = icmp sgt i32 %conv38.i, 0
  br i1 %cmp36250, label %for.body.lr.ph, label %for.cond95.preheader

for.body.lr.ph:                                   ; preds = %if.end26
  %rlo.sroa.0.0.vec.extract = extractelement <2 x float> %rlo.coerce0, i32 0
  %rmid.sroa.0.0.vec.extract = extractelement <2 x float> %rmid.coerce0, i32 0
  %sub43 = fsub float %rmid.sroa.0.0.vec.extract, %rlo.sroa.0.0.vec.extract
  %rlo.sroa.0.4.vec.extract = extractelement <2 x float> %rlo.coerce0, i32 1
  %rmid.sroa.0.4.vec.extract = extractelement <2 x float> %rmid.coerce0, i32 1
  %sub49 = fsub float %rmid.sroa.0.4.vec.extract, %rlo.sroa.0.4.vec.extract
  %sub57 = fsub float %rmid.coerce1, %rlo.coerce1
  br label %for.body

for.cond95.preheader:                             ; preds = %cond.end, %if.end26
  %6 = phi i32 [ %5, %if.end26 ], [ %.pre, %cond.end ]
  %cmp96248 = icmp slt i32 %conv38.i, %6
  br i1 %cmp96248, label %for.body98.lr.ph, label %for.end168

for.body98.lr.ph:                                 ; preds = %for.cond95.preheader
  %rmid.sroa.0.0.vec.extract204 = extractelement <2 x float> %rmid.coerce0, i32 0
  %r102 = getelementptr inbounds %struct.t_rgb* %rhi, i64 0, i32 0
  %7 = load float* %r102, align 8, !tbaa !5
  %sub104 = fsub float %7, %rmid.sroa.0.0.vec.extract204
  %rmid.sroa.0.4.vec.extract208 = extractelement <2 x float> %rmid.coerce0, i32 1
  %g110 = getelementptr inbounds %struct.t_rgb* %rhi, i64 0, i32 1
  %8 = load float* %g110, align 4, !tbaa !5
  %sub112 = fsub float %8, %rmid.sroa.0.4.vec.extract208
  %b118 = getelementptr inbounds %struct.t_rgb* %rhi, i64 0, i32 2
  %9 = load float* %b118, align 8, !tbaa !5
  %sub120 = fsub float %9, %rmid.coerce1
  %10 = sext i32 %conv38.i to i64
  br label %for.body98

for.body:                                         ; preds = %cond.end, %for.body.lr.ph
  %11 = phi i32 [ %5, %for.body.lr.ph ], [ %.pre, %cond.end ]
  %indvars.iv253 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next254, %cond.end ]
  %12 = trunc i64 %indvars.iv253 to i32
  %sub38 = sub nsw i32 %conv38.i, %12
  %conv40 = sitofp i32 %12 to float
  %mul44 = fmul float %sub43, %conv40
  %div = fdiv float %mul44, %conv34
  %add = fadd float %rlo.sroa.0.0.vec.extract, %div
  %mul50 = fmul float %sub49, %conv40
  %div51 = fdiv float %mul50, %conv34
  %add52 = fadd float %rlo.sroa.0.4.vec.extract, %div51
  %mul58 = fmul float %sub57, %conv40
  %div59 = fdiv float %mul58, %conv34
  %add60 = fadd float %div59, %rlo.coerce1
  %call62 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %rem = urem i64 %indvars.iv253, %call62
  %arrayidx = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %rem
  %13 = load i8* %arrayidx, align 1, !tbaa !1
  %conv63 = sext i8 %13 to i32
  %conv64 = sext i32 %11 to i64
  %cmp66 = icmp ugt i64 %conv64, %call62
  br i1 %cmp66, label %cond.false, label %cond.end

cond.false:                                       ; preds = %for.body
  %div70 = udiv i64 %indvars.iv253, %call62
  %arrayidx71 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %div70
  %14 = load i8* %arrayidx71, align 1, !tbaa !1
  %conv72 = sext i8 %14 to i32
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.false
  %cond73 = phi i32 [ %conv72, %cond.false ], [ 32, %for.body ]
  %mul74 = fmul float %add, 2.550000e+02
  %conv75 = fpext float %mul74 to double
  %add76 = fadd double %conv75, 5.000000e-01
  %conv77 = fptosi double %add76 to i32
  %mul78 = fmul float %add52, 2.550000e+02
  %conv79 = fpext float %mul78 to double
  %add80 = fadd double %conv79, 5.000000e-01
  %conv81 = fptosi double %add80 to i32
  %mul82 = fmul float %add60, 2.550000e+02
  %conv83 = fpext float %mul82 to double
  %add84 = fadd double %conv83, 5.000000e-01
  %conv85 = fptosi double %add84 to i32
  %conv86 = sitofp i32 %sub38 to float
  %mul87 = fmul float %conv86, %lo
  %mul89 = fmul float %conv40, %mid
  %add90 = fadd float %mul89, %mul87
  %div92 = fdiv float %add90, %conv34
  %conv93 = fpext float %div92 to double
  %call94 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([39 x i8]* @.str67, i64 0, i64 0), i32 %conv63, i32 %cond73, i32 %conv77, i32 %conv81, i32 %conv85, double %conv93) #8
  %indvars.iv.next254 = add i64 %indvars.iv253, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next254 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %conv38.i
  %.pre = load i32* %nlevels, align 4, !tbaa !3
  br i1 %exitcond, label %for.cond95.preheader, label %for.body

for.body98:                                       ; preds = %for.body98.lr.ph, %cond.end142
  %indvars.iv = phi i64 [ %10, %for.body98.lr.ph ], [ %indvars.iv.next, %cond.end142 ]
  %15 = phi i32 [ %6, %for.body98.lr.ph ], [ %20, %cond.end142 ]
  %16 = trunc i64 %indvars.iv to i32
  %sub99 = sub nsw i32 %15, %16
  %conv101 = sitofp i32 %16 to float
  %mul105 = fmul float %conv101, %sub104
  %div106 = fdiv float %mul105, %conv35
  %add107 = fadd float %rmid.sroa.0.0.vec.extract204, %div106
  %mul113 = fmul float %conv101, %sub112
  %div114 = fdiv float %mul113, %conv35
  %add115 = fadd float %rmid.sroa.0.4.vec.extract208, %div114
  %mul121 = fmul float %conv101, %sub120
  %div122 = fdiv float %mul121, %conv35
  %add123 = fadd float %div122, %rmid.coerce1
  %17 = add nsw i64 %indvars.iv, %10
  %call126 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %rem127 = urem i64 %17, %call126
  %arrayidx128 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %rem127
  %18 = load i8* %arrayidx128, align 1, !tbaa !1
  %conv129 = sext i8 %18 to i32
  %conv130 = sext i32 %15 to i64
  %cmp132 = icmp ugt i64 %conv130, %call126
  br i1 %cmp132, label %cond.false135, label %cond.end142

cond.false135:                                    ; preds = %for.body98
  %div139 = udiv i64 %17, %call126
  %arrayidx140 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %div139
  %19 = load i8* %arrayidx140, align 1, !tbaa !1
  %conv141 = sext i8 %19 to i32
  br label %cond.end142

cond.end142:                                      ; preds = %for.body98, %cond.false135
  %cond143 = phi i32 [ %conv141, %cond.false135 ], [ 32, %for.body98 ]
  %mul144 = fmul float %add107, 2.550000e+02
  %conv145 = fpext float %mul144 to double
  %add146 = fadd double %conv145, 5.000000e-01
  %conv147 = fptosi double %add146 to i32
  %mul148 = fmul float %add115, 2.550000e+02
  %conv149 = fpext float %mul148 to double
  %add150 = fadd double %conv149, 5.000000e-01
  %conv151 = fptosi double %add150 to i32
  %mul152 = fmul float %add123, 2.550000e+02
  %conv153 = fpext float %mul152 to double
  %add154 = fadd double %conv153, 5.000000e-01
  %conv155 = fptosi double %add154 to i32
  %conv156 = sitofp i32 %sub99 to float
  %mul157 = fmul float %conv156, %mid
  %mul159 = fmul float %conv101, %hi
  %add160 = fadd float %mul159, %mul157
  %sub161 = sub nsw i32 %15, %conv38.i
  %conv162 = sitofp i32 %sub161 to float
  %div163 = fdiv float %add160, %conv162
  %conv164 = fpext float %div163 to double
  %call165 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([39 x i8]* @.str67, i64 0, i64 0), i32 %conv129, i32 %cond143, i32 %conv147, i32 %conv151, i32 %conv155, double %conv164) #8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %20 = load i32* %nlevels, align 4, !tbaa !3
  %21 = trunc i64 %indvars.iv.next to i32
  %cmp96 = icmp slt i32 %21, %20
  br i1 %cmp96, label %for.body98, label %for.end168

for.end168:                                       ; preds = %cond.end142, %for.cond95.preheader
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define void @write_xpm_map(%struct._IO_FILE* nocapture %out, i32 %n_x, i32 %n_y, i32* nocapture %nlevels, float %lo, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rhi.coerce0, float %rhi.coerce1) #0 {
entry:
  %0 = load i32* %nlevels, align 4, !tbaa !3
  %conv = sext i32 %0 to i64
  %call = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %mul = mul i64 %call, %call
  %cmp = icmp ugt i64 %conv, %mul
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv7 = trunc i64 %mul to i32
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([56 x i8]* @.str62, i64 0, i64 0), i32 %0, i32 %conv7) #8
  %call9 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %mul11 = mul i64 %call9, %call9
  %conv12 = trunc i64 %mul11 to i32
  store i32 %conv12, i32* %nlevels, align 4, !tbaa !3
  br label %if.end17

if.else:                                          ; preds = %entry
  %cmp13 = icmp slt i32 %0, 2
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str63, i64 0, i64 0), i32 %0) #8
  store i32 2, i32* %nlevels, align 4, !tbaa !3
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15, %if.then
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str65, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %out)
  %4 = load i32* %nlevels, align 4, !tbaa !3
  %conv19 = sext i32 %4 to i64
  %call20 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %cmp21 = icmp ule i64 %conv19, %call20
  %cond = select i1 %cmp21, i32 1, i32 2
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str66, i64 0, i64 0), i32 %n_x, i32 %n_y, i32 %4, i32 %cond) #8
  %5 = load i32* %nlevels, align 4, !tbaa !3
  %sub = add nsw i32 %5, -1
  %conv24 = sitofp i32 %sub to double
  %div = fdiv double 1.000000e+00, %conv24
  %conv25 = fptrunc double %div to float
  %cmp26117 = icmp sgt i32 %5, 0
  br i1 %cmp26117, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %rlo.sroa.0.0.vec.extract = extractelement <2 x float> %rlo.coerce0, i32 0
  %rhi.sroa.0.0.vec.extract = extractelement <2 x float> %rhi.coerce0, i32 0
  %rlo.sroa.0.4.vec.extract = extractelement <2 x float> %rlo.coerce0, i32 1
  %rhi.sroa.0.4.vec.extract = extractelement <2 x float> %rhi.coerce0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %cond.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %6 = phi i32 [ %5, %for.body.lr.ph ], [ %10, %cond.end ]
  %7 = trunc i64 %indvars.iv to i32
  %sub28 = xor i32 %7, -1
  %sub29 = add i32 %6, %sub28
  %conv30 = sitofp i32 %sub29 to float
  %mul32 = fmul float %rlo.sroa.0.0.vec.extract, %conv30
  %conv33 = sitofp i32 %7 to float
  %mul35 = fmul float %rhi.sroa.0.0.vec.extract, %conv33
  %add = fadd float %mul35, %mul32
  %mul36 = fmul float %conv25, %add
  %mul39 = fmul float %rlo.sroa.0.4.vec.extract, %conv30
  %mul42 = fmul float %rhi.sroa.0.4.vec.extract, %conv33
  %add43 = fadd float %mul42, %mul39
  %mul44 = fmul float %conv25, %add43
  %mul47 = fmul float %conv30, %rlo.coerce1
  %mul50 = fmul float %conv33, %rhi.coerce1
  %add51 = fadd float %mul50, %mul47
  %mul52 = fmul float %conv25, %add51
  %call54 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %rem = urem i64 %indvars.iv, %call54
  %arrayidx = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %rem
  %8 = load i8* %arrayidx, align 1, !tbaa !1
  %conv55 = sext i8 %8 to i32
  %conv56 = sext i32 %6 to i64
  %cmp58 = icmp ugt i64 %conv56, %call54
  br i1 %cmp58, label %cond.false, label %cond.end

cond.false:                                       ; preds = %for.body
  %div62 = udiv i64 %indvars.iv, %call54
  %arrayidx63 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %div62
  %9 = load i8* %arrayidx63, align 1, !tbaa !1
  %conv64 = sext i8 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.false
  %cond65 = phi i32 [ %conv64, %cond.false ], [ 32, %for.body ]
  %mul66 = fmul float %mul36, 2.550000e+02
  %conv67 = fpext float %mul66 to double
  %add68 = fadd double %conv67, 5.000000e-01
  %conv69 = fptosi double %add68 to i32
  %mul70 = fmul float %mul44, 2.550000e+02
  %conv71 = fpext float %mul70 to double
  %add72 = fadd double %conv71, 5.000000e-01
  %conv73 = fptosi double %add72 to i32
  %mul74 = fmul float %mul52, 2.550000e+02
  %conv75 = fpext float %mul74 to double
  %add76 = fadd double %conv75, 5.000000e-01
  %conv77 = fptosi double %add76 to i32
  %mul79 = fmul float %conv30, %lo
  %mul81 = fmul float %conv33, %hi
  %add82 = fadd float %mul81, %mul79
  %mul83 = fmul float %conv25, %add82
  %conv84 = fpext float %mul83 to double
  %call85 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([39 x i8]* @.str67, i64 0, i64 0), i32 %conv55, i32 %cond65, i32 %conv69, i32 %conv73, i32 %conv77, double %conv84) #8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %10 = load i32* %nlevels, align 4, !tbaa !3
  %11 = trunc i64 %indvars.iv.next to i32
  %cmp26 = icmp slt i32 %11, %10
  br i1 %cmp26, label %for.body, label %for.end

for.end:                                          ; preds = %cond.end, %if.end17
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_xpm_axis(%struct._IO_FILE* nocapture %out, i8* %axis, i32 %n, float* %label) #0 {
entry:
  %tobool = icmp eq float* %label, null
  br i1 %tobool, label %if.end9, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp18 = icmp sgt i32 %n, 0
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %if.end6
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end6 ], [ 0, %for.cond.preheader ]
  %0 = trunc i64 %indvars.iv to i32
  %rem = srem i32 %0, 80
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %for.body
  %tobool3 = icmp eq i32 %0, 0
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then2
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %out)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then4
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([14 x i8]* @.str69, i64 0, i64 0), i8* %axis) #8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %for.body
  %arrayidx = getelementptr inbounds float* %label, i64 %indvars.iv
  %2 = load float* %arrayidx, align 4, !tbaa !5
  %conv = fpext float %2 to double
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str70, i64 0, i64 0), double %conv) #8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end6, %for.cond.preheader
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %out)
  br label %if.end9

if.end9:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_xpm_data(%struct._IO_FILE* nocapture %out, i32 %n_x, i32 %n_y, float** nocapture %matrix, float %lo, float %hi, i32 %nlevels) #0 {
entry:
  %sub = add nsw i32 %nlevels, -1
  %conv = sitofp i32 %sub to float
  %sub1 = fsub float %hi, %lo
  %div = fdiv float %conv, %sub1
  %cmp82 = icmp sgt i32 %n_y, 0
  br i1 %cmp82, label %for.body.lr.ph, label %for.end59

for.body.lr.ph:                                   ; preds = %entry
  %div4 = sdiv i32 %n_y, 100
  %add = add nsw i32 %div4, 1
  %cmp1179 = icmp sgt i32 %n_x, 0
  %conv30 = sext i32 %nlevels to i64
  %0 = sext i32 %n_y to i64
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.thread, %for.body.lr.ph
  %indvars.iv84 = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next85, %for.cond.backedge.thread ]
  %indvars.iv.next85 = add i64 %indvars.iv84, -1
  %1 = trunc i64 %indvars.iv.next85 to i32
  %rem = srem i32 %1, %add
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %sub7 = sub nsw i32 %n_y, %1
  %mul = mul nsw i32 %sub7, 100
  %div8 = sdiv i32 %mul, %n_y
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), i32 %div8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %fputc78 = tail call i32 @fputc(i32 34, %struct._IO_FILE* %out)
  br i1 %cmp1179, label %for.body13, label %for.end

for.body13:                                       ; preds = %if.end, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds float** %matrix, i64 %indvars.iv
  %3 = load float** %arrayidx, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds float* %3, i64 %indvars.iv.next85
  %4 = load float* %arrayidx15, align 4, !tbaa !5
  %sub16 = fsub float %4, %lo
  %mul17 = fmul float %div, %sub16
  %conv18 = fpext float %mul17 to double
  %add19 = fadd double %conv18, 5.000000e-01
  %conv20 = fptosi double %add19 to i32
  %cmp21 = icmp slt i32 %conv20, 0
  %.conv20 = select i1 %cmp21, i32 0, i32 %conv20
  %cmp25 = icmp slt i32 %.conv20, %nlevels
  %.conv20.sub = select i1 %cmp25, i32 %.conv20, i32 %sub
  %call31 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %cmp32 = icmp ugt i64 %conv30, %call31
  %idxprom35 = sext i32 %.conv20.sub to i64
  br i1 %cmp32, label %if.else, label %if.then34

if.then34:                                        ; preds = %for.body13
  %arrayidx36 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %idxprom35
  %5 = load i8* %arrayidx36, align 1, !tbaa !1
  %conv37 = sext i8 %5 to i32
  %fputc = tail call i32 @fputc(i32 %conv37, %struct._IO_FILE* %out)
  br label %for.inc

if.else:                                          ; preds = %for.body13
  %rem41 = urem i64 %idxprom35, %call31
  %arrayidx42 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %rem41
  %6 = load i8* %arrayidx42, align 1, !tbaa !1
  %conv43 = sext i8 %6 to i32
  %div46 = udiv i64 %idxprom35, %call31
  %arrayidx47 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %div46
  %7 = load i8* %arrayidx47, align 1, !tbaa !1
  %conv48 = sext i8 %7 to i32
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i32 %conv43, i32 %conv48) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n_x
  br i1 %exitcond, label %for.end, label %for.body13

for.end:                                          ; preds = %for.inc, %if.end
  %cmp51 = icmp sgt i32 %1, 0
  br i1 %cmp51, label %for.cond.backedge.thread, label %for.cond.for.end59_crit_edge

for.cond.backedge.thread:                         ; preds = %for.end
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str74, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %out)
  br label %for.body

for.cond.for.end59_crit_edge:                     ; preds = %for.end
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %out)
  br label %for.end59

for.end59:                                        ; preds = %for.cond.for.end59_crit_edge, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_xpm_data3(%struct._IO_FILE* nocapture %out, i32 %n_x, i32 %n_y, float** nocapture %matrix, float %lo, float %mid, float %hi, i32 %nlevels) #0 {
entry:
  %sub.i = fsub float %mid, %lo
  %sub1.i = fsub float %hi, %lo
  %div.i = fdiv float %sub.i, %sub1.i
  %sub2.i = add nsw i32 %nlevels, -1
  %conv.i = sitofp i32 %sub2.i to float
  %mul.i = fmul float %conv.i, %div.i
  %cmp.i = fcmp olt float %mul.i, 1.000000e+00
  %cond.i = select i1 %cmp.i, float 1.000000e+00, float %mul.i
  %cmp12.not.i = fcmp uge float %cond.i, %conv.i
  %brmerge.i = or i1 %cmp12.not.i, %cmp.i
  %conv.mux.i = select i1 %cmp12.not.i, float %conv.i, float 1.000000e+00
  %cond37.i = select i1 %brmerge.i, float %conv.mux.i, float %mul.i
  %conv38.i = fptosi float %cond37.i to i32
  %sub = sub nsw i32 %nlevels, %conv38.i
  %conv = sitofp i32 %sub to float
  %sub1 = fsub float %hi, %mid
  %div = fdiv float %conv, %sub1
  %conv2 = sitofp i32 %conv38.i to float
  %div4 = fdiv float %conv2, %sub.i
  %cmp122 = icmp sgt i32 %n_y, 0
  br i1 %cmp122, label %for.body.lr.ph, label %for.end83

for.body.lr.ph:                                   ; preds = %entry
  %div7 = sdiv i32 %n_y, 100
  %add = add nsw i32 %div7, 1
  %cmp15118 = icmp sgt i32 %n_x, 0
  %conv53 = sext i32 %nlevels to i64
  %0 = sext i32 %n_y to i64
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.thread, %for.body.lr.ph
  %indvars.iv125 = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next126, %for.cond.backedge.thread ]
  %c.0123 = phi i32 [ 0, %for.body.lr.ph ], [ %c.1.lcssa, %for.cond.backedge.thread ]
  %indvars.iv.next126 = add i64 %indvars.iv125, -1
  %1 = trunc i64 %indvars.iv.next126 to i32
  %rem = srem i32 %1, %add
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %sub10 = sub nsw i32 %n_y, %1
  %mul = mul nsw i32 %sub10, 100
  %div11 = sdiv i32 %mul, %n_y
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), i32 %div11) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %fputc117 = tail call i32 @fputc(i32 34, %struct._IO_FILE* %out)
  br i1 %cmp15118, label %for.body17, label %for.end

for.body17:                                       ; preds = %if.end, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ]
  %c.1119 = phi i32 [ %c.4, %for.inc ], [ %c.0123, %if.end ]
  %conv18 = sitofp i32 %c.1119 to float
  %cmp19 = fcmp ult float %conv18, %mid
  br i1 %cmp19, label %if.else, label %if.then21

if.then21:                                        ; preds = %for.body17
  %arrayidx = getelementptr inbounds float** %matrix, i64 %indvars.iv
  %3 = load float** %arrayidx, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds float* %3, i64 %indvars.iv.next126
  %4 = load float* %arrayidx23, align 4, !tbaa !5
  %sub24 = fsub float %4, %mid
  %mul25 = fmul float %div, %sub24
  %conv26 = fpext float %mul25 to double
  %add27 = fadd double %conv26, 5.000000e-01
  %conv28 = fptosi double %add27 to i32
  br label %if.end43

if.else:                                          ; preds = %for.body17
  %cmp30 = fcmp ult float %conv18, %lo
  br i1 %cmp30, label %if.end43, label %if.then32

if.then32:                                        ; preds = %if.else
  %arrayidx35 = getelementptr inbounds float** %matrix, i64 %indvars.iv
  %5 = load float** %arrayidx35, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds float* %5, i64 %indvars.iv.next126
  %6 = load float* %arrayidx36, align 4, !tbaa !5
  %sub37 = fsub float %6, %lo
  %mul38 = fmul float %div4, %sub37
  %conv39 = fpext float %mul38 to double
  %add40 = fadd double %conv39, 5.000000e-01
  %conv41 = fptosi double %add40 to i32
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then32, %if.then21
  %c.2 = phi i32 [ %conv28, %if.then21 ], [ %conv41, %if.then32 ], [ %c.1119, %if.else ]
  %cmp44 = icmp slt i32 %c.2, 0
  %.c.2 = select i1 %cmp44, i32 0, i32 %c.2
  %cmp48 = icmp slt i32 %.c.2, %nlevels
  %c.4 = select i1 %cmp48, i32 %.c.2, i32 %sub2.i
  %call54 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #10
  %cmp55 = icmp ugt i64 %conv53, %call54
  %idxprom58 = sext i32 %c.4 to i64
  br i1 %cmp55, label %if.else62, label %if.then57

if.then57:                                        ; preds = %if.end43
  %arrayidx59 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %idxprom58
  %7 = load i8* %arrayidx59, align 1, !tbaa !1
  %conv60 = sext i8 %7 to i32
  %fputc = tail call i32 @fputc(i32 %conv60, %struct._IO_FILE* %out)
  br label %for.inc

if.else62:                                        ; preds = %if.end43
  %rem65 = urem i64 %idxprom58, %call54
  %arrayidx66 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %rem65
  %8 = load i8* %arrayidx66, align 1, !tbaa !1
  %conv67 = sext i8 %8 to i32
  %div70 = udiv i64 %idxprom58, %call54
  %arrayidx71 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %div70
  %9 = load i8* %arrayidx71, align 1, !tbaa !1
  %conv72 = sext i8 %9 to i32
  %call73 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i32 %conv67, i32 %conv72) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then57, %if.else62
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n_x
  br i1 %exitcond, label %for.end, label %for.body17

for.end:                                          ; preds = %for.inc, %if.end
  %c.1.lcssa = phi i32 [ %c.0123, %if.end ], [ %c.4, %for.inc ]
  %cmp75 = icmp sgt i32 %1, 0
  br i1 %cmp75, label %for.cond.backedge.thread, label %for.cond.for.end83_crit_edge

for.cond.backedge.thread:                         ; preds = %for.end
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str74, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %out)
  br label %for.body

for.cond.for.end83_crit_edge:                     ; preds = %for.end
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %out)
  br label %for.end83

for.end83:                                        ; preds = %for.cond.for.end83_crit_edge, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_xpm_m(%struct._IO_FILE* nocapture %out, %struct.t_matrix* byval align 8 %m) #0 {
entry:
  %map = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 12
  %0 = load %struct.t_mapping** %map, align 8, !tbaa !0
  %c2 = getelementptr inbounds %struct.t_mapping* %0, i64 0, i32 0, i32 1
  %1 = load i8* %c2, align 1, !tbaa !1
  %cmp = icmp eq i8 %1, 0
  %arraydecay = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 3, i64 0
  %arraydecay2 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 4, i64 0
  %arraydecay3 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 5, i64 0
  %arraydecay4 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 6, i64 0
  %bDiscrete = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 7
  %2 = load i32* %bDiscrete, align 4, !tbaa !3
  tail call void @write_xpm_header(%struct._IO_FILE* %out, i8* %arraydecay, i8* %arraydecay2, i8* %arraydecay3, i8* %arraydecay4, i32 %2) #9
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str65, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %out)
  %nx = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 0
  %4 = bitcast %struct.t_matrix* %m to i64*
  %5 = load i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %ny = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 1
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i32
  %nmap = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 11
  %9 = load i32* %nmap, align 8, !tbaa !3
  %cond = select i1 %cmp, i32 1, i32 2
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str66, i64 0, i64 0), i32 %6, i32 %8, i32 %9, i32 %cond) #8
  %10 = load i32* %nmap, align 8, !tbaa !3
  %cmp7155 = icmp sgt i32 %10, 0
  br i1 %cmp7155, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %cond.end
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %cond.end ], [ 0, %entry ]
  %11 = load %struct.t_mapping** %map, align 8, !tbaa !0
  %c1 = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv161, i32 0, i32 0
  %12 = load i8* %c1, align 1, !tbaa !1
  %conv12 = sext i8 %12 to i32
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.body
  %c218 = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv161, i32 0, i32 1
  %13 = load i8* %c218, align 1, !tbaa !1
  %conv19 = sext i8 %13 to i32
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.false
  %cond20 = phi i32 [ %conv19, %cond.false ], [ 32, %for.body ]
  %r = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv161, i32 2, i32 0
  %14 = load float* %r, align 4, !tbaa !5
  %mul = fmul float %14, 2.550000e+02
  %conv24 = fpext float %mul to double
  %add = fadd double %conv24, 5.000000e-01
  %conv25 = fptosi double %add to i32
  %g = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv161, i32 2, i32 1
  %15 = load float* %g, align 4, !tbaa !5
  %mul30 = fmul float %15, 2.550000e+02
  %conv31 = fpext float %mul30 to double
  %add32 = fadd double %conv31, 5.000000e-01
  %conv33 = fptosi double %add32 to i32
  %b = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv161, i32 2, i32 2
  %16 = load float* %b, align 4, !tbaa !5
  %mul38 = fmul float %16, 2.550000e+02
  %conv39 = fpext float %mul38 to double
  %add40 = fadd double %conv39, 5.000000e-01
  %conv41 = fptosi double %add40 to i32
  %desc = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv161, i32 1
  %17 = load i8** %desc, align 8, !tbaa !0
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([37 x i8]* @.str76, i64 0, i64 0), i32 %conv12, i32 %cond20, i32 %conv25, i32 %conv33, i32 %conv41, i8* %17) #8
  %indvars.iv.next162 = add i64 %indvars.iv161, 1
  %18 = load i32* %nmap, align 8, !tbaa !3
  %19 = trunc i64 %indvars.iv.next162 to i32
  %cmp7 = icmp slt i32 %19, %18
  br i1 %cmp7, label %for.body, label %for.end

for.end:                                          ; preds = %cond.end, %entry
  %20 = load i32* %nx, align 8, !tbaa !3
  %axis_x = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 8
  %21 = load float** %axis_x, align 8, !tbaa !0
  tail call void @write_xpm_axis(%struct._IO_FILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str77, i64 0, i64 0), i32 %20, float* %21) #9
  %22 = load i32* %ny, align 4, !tbaa !3
  %axis_y = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 9
  %23 = load float** %axis_y, align 8, !tbaa !0
  tail call void @write_xpm_axis(%struct._IO_FILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str78, i64 0, i64 0), i32 %22, float* %23) #9
  %24 = load i32* %ny, align 4, !tbaa !3
  %cmp50153 = icmp sgt i32 %24, 0
  br i1 %cmp50153, label %for.body52.lr.ph, label %for.end116

for.body52.lr.ph:                                 ; preds = %for.end
  %matrix92 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 10
  %25 = sext i32 %24 to i64
  br label %for.body52

for.body52:                                       ; preds = %for.cond49.backedge.for.body52_crit_edge, %for.body52.lr.ph
  %26 = phi i32 [ %24, %for.body52.lr.ph ], [ %.pre, %for.cond49.backedge.for.body52_crit_edge ]
  %indvars.iv159 = phi i64 [ %25, %for.body52.lr.ph ], [ %indvars.iv.next160, %for.cond49.backedge.for.body52_crit_edge ]
  %indvars.iv.next160 = add i64 %indvars.iv159, -1
  %div = sdiv i32 %26, 100
  %add54 = add nsw i32 %div, 1
  %27 = trunc i64 %indvars.iv.next160 to i32
  %rem = srem i32 %27, %add54
  %cmp55 = icmp eq i32 %rem, 0
  br i1 %cmp55, label %if.then, label %if.end

if.then:                                          ; preds = %for.body52
  %28 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %sub58 = sub nsw i32 %26, %27
  %mul59 = mul nsw i32 %sub58, 100
  %div61 = sdiv i32 %mul59, %26
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), i32 %div61) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body52
  %fputc146 = tail call i32 @fputc(i32 34, %struct._IO_FILE* %out)
  %29 = load i32* %nx, align 8, !tbaa !3
  %cmp68150 = icmp sgt i32 %29, 0
  br i1 %cmp, label %for.cond66.preheader, label %for.cond85.preheader

for.cond66.preheader:                             ; preds = %if.end
  br i1 %cmp68150, label %for.body70, label %if.end107

for.cond85.preheader:                             ; preds = %if.end
  br i1 %cmp68150, label %for.body89, label %if.end107

for.body70:                                       ; preds = %for.cond66.preheader, %for.body70
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %for.body70 ], [ 0, %for.cond66.preheader ]
  %30 = load i16*** %matrix92, align 8, !tbaa !0
  %arrayidx73 = getelementptr inbounds i16** %30, i64 %indvars.iv157
  %31 = load i16** %arrayidx73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds i16* %31, i64 %indvars.iv.next160
  %32 = load i16* %arrayidx74, align 2, !tbaa !6
  %idxprom75 = sext i16 %32 to i64
  %33 = load %struct.t_mapping** %map, align 8, !tbaa !0
  %c179 = getelementptr inbounds %struct.t_mapping* %33, i64 %idxprom75, i32 0, i32 0
  %34 = load i8* %c179, align 1, !tbaa !1
  %conv80 = sext i8 %34 to i32
  %fputc = tail call i32 @fputc(i32 %conv80, %struct._IO_FILE* %out)
  %indvars.iv.next158 = add i64 %indvars.iv157, 1
  %35 = load i32* %nx, align 8, !tbaa !3
  %36 = trunc i64 %indvars.iv.next158 to i32
  %cmp68 = icmp slt i32 %36, %35
  br i1 %cmp68, label %for.body70, label %if.end107

for.body89:                                       ; preds = %for.cond85.preheader, %for.body89
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body89 ], [ 0, %for.cond85.preheader ]
  %37 = load i16*** %matrix92, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds i16** %37, i64 %indvars.iv
  %38 = load i16** %arrayidx93, align 8, !tbaa !0
  %arrayidx94 = getelementptr inbounds i16* %38, i64 %indvars.iv.next160
  %39 = load i16* %arrayidx94, align 2, !tbaa !6
  %idxprom95 = sext i16 %39 to i64
  %40 = load %struct.t_mapping** %map, align 8, !tbaa !0
  %c.sroa.0.0.idx = getelementptr inbounds %struct.t_mapping* %40, i64 %idxprom95, i32 0, i32 0
  %c.sroa.0.0.copyload = load i8* %c.sroa.0.0.idx, align 1
  %c.sroa.1.1.idx = getelementptr inbounds %struct.t_mapping* %40, i64 %idxprom95, i32 0, i32 1
  %c.sroa.1.1.copyload = load i8* %c.sroa.1.1.idx, align 1
  %conv100 = sext i8 %c.sroa.0.0.copyload to i32
  %conv102 = sext i8 %c.sroa.1.1.copyload to i32
  %call103 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i32 %conv100, i32 %conv102) #8
  %indvars.iv.next = add i64 %indvars.iv, 1
  %41 = load i32* %nx, align 8, !tbaa !3
  %42 = trunc i64 %indvars.iv.next to i32
  %cmp87 = icmp slt i32 %42, %41
  br i1 %cmp87, label %for.body89, label %if.end107

if.end107:                                        ; preds = %for.cond66.preheader, %for.body70, %for.cond85.preheader, %for.body89
  %cmp108 = icmp sgt i32 %27, 0
  br i1 %cmp108, label %for.cond49.backedge.for.body52_crit_edge, label %for.cond49.for.end116_crit_edge

for.cond49.backedge.for.body52_crit_edge:         ; preds = %if.end107
  %43 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str74, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %out)
  %.pre = load i32* %ny, align 4, !tbaa !3
  br label %for.body52

for.cond49.for.end116_crit_edge:                  ; preds = %if.end107
  %44 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %out)
  br label %for.end116

for.end116:                                       ; preds = %for.cond49.for.end116_crit_edge, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_xpm3(%struct._IO_FILE* nocapture %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 %n_x, i32 %n_y, float* %axis_x, float* %axis_y, float** nocapture %matrix, float %lo, float %mid, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rmid.coerce0, float %rmid.coerce1, %struct.t_rgb* byval nocapture align 8 %rhi, i32* nocapture %nlevels) #0 {
entry:
  %cmp = fcmp ugt float %hi, %lo
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = fpext float %hi to double
  %conv2 = fpext float %lo to double
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([19 x i8]* @.str79, i64 0, i64 0), double %conv, double %conv2) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  tail call void @write_xpm_header(%struct._IO_FILE* %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 0) #9
  tail call void @write_xpm_map3(%struct._IO_FILE* %out, i32 %n_x, i32 %n_y, i32* %nlevels, float %lo, float %mid, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rmid.coerce0, float %rmid.coerce1, %struct.t_rgb* byval align 8 %rhi) #9
  tail call void @write_xpm_axis(%struct._IO_FILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str77, i64 0, i64 0), i32 %n_x, float* %axis_x) #9
  tail call void @write_xpm_axis(%struct._IO_FILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str78, i64 0, i64 0), i32 %n_y, float* %axis_y) #9
  %0 = load i32* %nlevels, align 4, !tbaa !3
  tail call void @write_xpm_data3(%struct._IO_FILE* %out, i32 %n_x, i32 %n_y, float** %matrix, float %lo, float %mid, float %hi, i32 %0) #9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @write_xpm(%struct._IO_FILE* nocapture %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 %n_x, i32 %n_y, float* %axis_x, float* %axis_y, float** nocapture %matrix, float %lo, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rhi.coerce0, float %rhi.coerce1, i32* nocapture %nlevels) #0 {
entry:
  %cmp = fcmp ugt float %hi, %lo
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %conv = fpext float %hi to double
  %conv2 = fpext float %lo to double
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([19 x i8]* @.str80, i64 0, i64 0), double %conv, double %conv2) #8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  tail call void @write_xpm_header(%struct._IO_FILE* %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 0) #9
  tail call void @write_xpm_map(%struct._IO_FILE* %out, i32 %n_x, i32 %n_y, i32* %nlevels, float %lo, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rhi.coerce0, float %rhi.coerce1) #9
  tail call void @write_xpm_axis(%struct._IO_FILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str77, i64 0, i64 0), i32 %n_x, float* %axis_x) #9
  tail call void @write_xpm_axis(%struct._IO_FILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str78, i64 0, i64 0), i32 %n_y, float* %axis_y) #9
  %0 = load i32* %nlevels, align 4, !tbaa !3
  tail call void @write_xpm_data(%struct._IO_FILE* %out, i32 %n_x, i32 %n_y, float** %matrix, float %lo, float %hi, i32 %0) #9
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize readonly }
attributes #11 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
!6 = metadata !{metadata !"short", metadata !1}
