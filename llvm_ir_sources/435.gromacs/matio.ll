; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_xpmelmt = type { i8, i8 }
%struct.t_mapping = type { %struct.t_xpmelmt, i8*, %struct.t_rgb }
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
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !30), !dbg !459
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !31), !dbg !459
  tail call void @llvm.dbg.value(metadata !{i32 %b1D}, i64 0, metadata !32), !dbg !459
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 55, i32 %nx, i32 8) #9, !dbg !460
  %0 = bitcast i8* %call to float**, !dbg !460
  tail call void @llvm.dbg.value(metadata !{float** %0}, i64 0, metadata !34), !dbg !460
  %tobool = icmp ne i32 %b1D, 0, !dbg !461
  br i1 %tobool, label %if.then, label %for.cond.preheader, !dbg !461

if.then:                                          ; preds = %entry
  %mul = mul nsw i32 %ny, %nx, !dbg !462
  %call1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 57, i32 %mul, i32 4) #9, !dbg !462
  %1 = bitcast i8* %call1 to float*, !dbg !462
  store float* %1, float** %0, align 8, !dbg !462, !tbaa !463
  br label %for.cond.preheader, !dbg !462

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp26 = icmp sgt i32 %nx, 0, !dbg !466
  br i1 %cmp26, label %for.body, label %for.end, !dbg !466

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  br i1 %tobool, label %if.then3, label %if.else, !dbg !468

if.then3:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv to i32, !dbg !469
  %mul4 = mul nsw i32 %2, %ny, !dbg !469
  %idxprom = sext i32 %mul4 to i64, !dbg !469
  %3 = load float** %0, align 8, !dbg !469, !tbaa !463
  %arrayidx6 = getelementptr inbounds float* %3, i64 %idxprom, !dbg !469
  %arrayidx8 = getelementptr inbounds float** %0, i64 %indvars.iv, !dbg !469
  store float* %arrayidx6, float** %arrayidx8, align 8, !dbg !469, !tbaa !463
  br label %for.inc, !dbg !469

if.else:                                          ; preds = %for.body
  %call9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 63, i32 %ny, i32 4) #9, !dbg !470
  %4 = bitcast i8* %call9 to float*, !dbg !470
  %arrayidx11 = getelementptr inbounds float** %0, i64 %indvars.iv, !dbg !470
  store float* %4, float** %arrayidx11, align 8, !dbg !470, !tbaa !463
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !466
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !466
  %exitcond = icmp eq i32 %lftr.wideiv, %nx, !dbg !466
  br i1 %exitcond, label %for.end, label %for.body, !dbg !466

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  ret float** %0, !dbg !471
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @done_matrix(i32 %nx, float*** nocapture %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !40), !dbg !472
  tail call void @llvm.dbg.value(metadata !{float*** %m}, i64 0, metadata !41), !dbg !472
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !42), !dbg !473
  %cmp5 = icmp sgt i32 %nx, 0, !dbg !473
  br i1 %cmp5, label %for.body, label %for.end, !dbg !473

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load float*** %m, align 8, !dbg !475, !tbaa !463
  %arrayidx = getelementptr inbounds float** %0, i64 %indvars.iv, !dbg !475
  %1 = load float** %arrayidx, align 8, !dbg !475, !tbaa !463
  %2 = bitcast float* %1 to i8*, !dbg !475
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 73, i8* %2) #9, !dbg !475
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !473
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !473
  %exitcond = icmp eq i32 %lftr.wideiv, %nx, !dbg !473
  br i1 %exitcond, label %for.end, label %for.body, !dbg !473

for.end:                                          ; preds = %for.body, %entry
  %3 = load float*** %m, align 8, !dbg !476, !tbaa !463
  %4 = bitcast float** %3 to i8*, !dbg !476
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 74, i8* %4) #9, !dbg !476
  store float** null, float*** %m, align 8, !dbg !477, !tbaa !463
  ret void, !dbg !478
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @clear_matrix(i32 %nx, i32 %ny, float** nocapture %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nx}, i64 0, metadata !47), !dbg !479
  tail call void @llvm.dbg.value(metadata !{i32 %ny}, i64 0, metadata !48), !dbg !479
  tail call void @llvm.dbg.value(metadata !{float** %m}, i64 0, metadata !49), !dbg !479
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !50), !dbg !480
  %cmp15 = icmp sgt i32 %nx, 0, !dbg !480
  br i1 %cmp15, label %for.cond1.preheader.lr.ph, label %for.end8, !dbg !480

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp213 = icmp sgt i32 %ny, 0, !dbg !482
  %0 = add i32 %ny, -1, !dbg !480
  %1 = zext i32 %0 to i64
  %2 = shl nuw nsw i64 %1, 2, !dbg !480
  %3 = add i64 %2, 4, !dbg !480
  br label %for.cond1.preheader, !dbg !480

for.cond1.preheader:                              ; preds = %for.inc6, %for.cond1.preheader.lr.ph
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next, %for.inc6 ]
  br i1 %cmp213, label %for.body3.lr.ph, label %for.inc6, !dbg !482

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float** %m, i64 %indvars.iv, !dbg !484
  %4 = load float** %arrayidx, align 8, !dbg !484, !tbaa !463
  %5 = bitcast float* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 %3, i32 4, i1 false), !dbg !484
  br label %for.inc6, !dbg !482

for.inc6:                                         ; preds = %for.body3.lr.ph, %for.cond1.preheader
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !480
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !480
  %exitcond = icmp eq i32 %lftr.wideiv, %nx, !dbg !480
  br i1 %exitcond, label %for.end8, label %for.cond1.preheader, !dbg !480

for.end8:                                         ; preds = %for.inc6, %entry
  ret void, !dbg !485
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @matelmt_cmp(i16 %e1.coerce, i16 %e2.coerce) #3 {
entry:
  %e1.sroa.0.0.extract.trunc = zext i16 %e1.coerce to i32
  tail call void @llvm.dbg.declare(metadata !486, metadata !63), !dbg !487
  %e2.sroa.0.0.extract.trunc = zext i16 %e2.coerce to i32
  tail call void @llvm.dbg.declare(metadata !486, metadata !64), !dbg !487
  %sext = shl i32 %e1.sroa.0.0.extract.trunc, 24, !dbg !488
  %sext9 = shl i32 %e2.sroa.0.0.extract.trunc, 24, !dbg !488
  %cmp = icmp eq i32 %sext, %sext9, !dbg !488
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !488

land.rhs:                                         ; preds = %entry
  %e2.sroa.1.1.extract.shift = lshr i16 %e2.coerce, 8
  %e1.sroa.1.1.extract.shift = lshr i16 %e1.coerce, 8
  %cmp7 = icmp eq i16 %e1.sroa.1.1.extract.shift, %e2.sroa.1.1.extract.shift, !dbg !488
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %cmp7, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext, !dbg !489
}

; Function Attrs: nounwind optsize readonly uwtable
define signext i16 @searchcmap(i32 %n, %struct.t_mapping* nocapture %map, i16 %c.coerce) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !85), !dbg !490
  tail call void @llvm.dbg.value(metadata !{%struct.t_mapping* %map}, i64 0, metadata !86), !dbg !490
  tail call void @llvm.dbg.declare(metadata !486, metadata !87), !dbg !490
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !88), !dbg !491
  %cmp4 = icmp sgt i32 %n, 0, !dbg !491
  br i1 %cmp4, label %for.body.lr.ph, label %return, !dbg !491

for.body.lr.ph:                                   ; preds = %entry
  %e2.sroa.0.0.extract.trunc.i = zext i16 %c.coerce to i32
  %sext9.i = shl i32 %e2.sroa.0.0.extract.trunc.i, 24, !dbg !493
  %e2.sroa.1.1.extract.shift.i = lshr i16 %c.coerce, 8
  br label %for.body, !dbg !491

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %code = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 0, !dbg !494
  %0 = bitcast %struct.t_xpmelmt* %code to i16*, !dbg !494
  %1 = load i16* %0, align 1, !dbg !494
  %e1.sroa.0.0.extract.trunc.i = zext i16 %1 to i32
  tail call void @llvm.dbg.declare(metadata !486, metadata !63), !dbg !495
  tail call void @llvm.dbg.declare(metadata !486, metadata !64), !dbg !495
  %sext.i = shl i32 %e1.sroa.0.0.extract.trunc.i, 24, !dbg !493
  %cmp.i = icmp eq i32 %sext.i, %sext9.i, !dbg !493
  %e1.sroa.1.1.extract.shift.i = lshr i16 %1, 8
  %cmp7.i = icmp eq i16 %e1.sroa.1.1.extract.shift.i, %e2.sroa.1.1.extract.shift.i, !dbg !493
  %or.cond = and i1 %cmp.i, %cmp7.i, !dbg !493
  br i1 %or.cond, label %if.then, label %for.inc, !dbg !493

if.then:                                          ; preds = %for.body
  %conv = trunc i32 %i.05 to i16, !dbg !496
  br label %return, !dbg !496

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !491
  %inc = add nsw i32 %i.05, 1, !dbg !491
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !88), !dbg !491
  %2 = trunc i64 %indvars.iv.next to i32, !dbg !491
  %cmp = icmp slt i32 %2, %n, !dbg !491
  br i1 %cmp, label %for.body, label %return, !dbg !491

return:                                           ; preds = %entry, %for.inc, %if.then
  %retval.0 = phi i16 [ %conv, %if.then ], [ -1, %for.inc ], [ -1, %entry ]
  ret i16 %retval.0, !dbg !497
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
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %in}, i64 0, metadata !149), !dbg !498
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !150), !dbg !498
  call void @llvm.dbg.value(metadata !{%struct.t_mapping** %map}, i64 0, metadata !151), !dbg !498
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !153), !dbg !499
  %0 = getelementptr inbounds [4096 x i8]* %line, i64 0, i64 0, !dbg !500
  call void @llvm.lifetime.start(i64 4096, i8* %0) #5, !dbg !500
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %line}, metadata !154), !dbg !500
  %1 = getelementptr inbounds [4096 x i8]* %code, i64 0, i64 0, !dbg !501
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5, !dbg !501
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %code}, metadata !158), !dbg !501
  %2 = getelementptr inbounds [4096 x i8]* %desc, i64 0, i64 0, !dbg !501
  call void @llvm.lifetime.start(i64 4096, i8* %2) #5, !dbg !501
  call void @llvm.dbg.declare(metadata !{[4096 x i8]* %desc}, metadata !159), !dbg !501
  call void @llvm.dbg.declare(metadata !{double* %r}, metadata !160), !dbg !502
  call void @llvm.dbg.declare(metadata !{double* %g}, metadata !162), !dbg !502
  call void @llvm.dbg.declare(metadata !{double* %b}, metadata !163), !dbg !502
  %call = call i8* @fgets2(i8* %0, i32 4095, %struct._IO_FILE* %in) #9, !dbg !503
  %cmp = icmp eq i8* %call, null, !dbg !503
  br i1 %cmp, label %if.then, label %if.end, !dbg !503

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([76 x i8]* @.str6, i64 0, i64 0), i8* %fn) #9, !dbg !504
  br label %if.end, !dbg !504

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* %n) #9, !dbg !505
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !153), !dbg !506
  %3 = load i32* %n, align 4, !dbg !506, !tbaa !507
  %call3 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 115, i32 %3, i32 32) #9, !dbg !506
  %4 = bitcast i8* %call3 to %struct.t_mapping*, !dbg !506
  call void @llvm.dbg.value(metadata !{%struct.t_mapping* %4}, i64 0, metadata !164), !dbg !506
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !152), !dbg !508
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !153), !dbg !508
  %5 = load i32* %n, align 4, !dbg !508, !tbaa !507
  %cmp453 = icmp sgt i32 %5, 0, !dbg !508
  br i1 %cmp453, label %for.body, label %for.end, !dbg !508

for.body:                                         ; preds = %if.end, %if.end9
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end9 ], [ 0, %if.end ]
  %call6 = call i8* @fgets2(i8* %0, i32 4095, %struct._IO_FILE* %in) #9, !dbg !510
  %cmp7 = icmp eq i8* %call6, null, !dbg !510
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !510

if.then8:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !153), !dbg !512
  %6 = load i32* %n, align 4, !dbg !512, !tbaa !507
  %add = add nsw i32 %6, 1, !dbg !512
  %7 = trunc i64 %indvars.iv to i32, !dbg !512
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), i8* %fn, i32 %add, i32 %7) #9, !dbg !512
  br label %if.end9, !dbg !512

if.end9:                                          ; preds = %if.then8, %for.body
  %call13 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i8* %1, i8* %2, double* %r, double* %g, double* %b) #9, !dbg !513
  %8 = load i8* %1, align 16, !dbg !514, !tbaa !464
  %c1 = getelementptr inbounds %struct.t_mapping* %4, i64 %indvars.iv, i32 0, i32 0, !dbg !514
  store i8 %8, i8* %c1, align 1, !dbg !514, !tbaa !464
  %c2 = getelementptr inbounds %struct.t_mapping* %4, i64 %indvars.iv, i32 0, i32 1, !dbg !515
  store i8 0, i8* %c2, align 1, !dbg !515, !tbaa !464
  %call20 = call noalias i8* @strdup(i8* %2) #9, !dbg !516
  %desc23 = getelementptr inbounds %struct.t_mapping* %4, i64 %indvars.iv, i32 1, !dbg !516
  store i8* %call20, i8** %desc23, align 8, !dbg !516, !tbaa !463
  call void @llvm.dbg.value(metadata !{double* %r}, i64 0, metadata !160), !dbg !517
  %9 = load double* %r, align 8, !dbg !517, !tbaa !518
  %conv = fptrunc double %9 to float, !dbg !517
  %r26 = getelementptr inbounds %struct.t_mapping* %4, i64 %indvars.iv, i32 2, i32 0, !dbg !517
  store float %conv, float* %r26, align 4, !dbg !517, !tbaa !519
  call void @llvm.dbg.value(metadata !{double* %g}, i64 0, metadata !162), !dbg !520
  %10 = load double* %g, align 8, !dbg !520, !tbaa !518
  %conv27 = fptrunc double %10 to float, !dbg !520
  %g31 = getelementptr inbounds %struct.t_mapping* %4, i64 %indvars.iv, i32 2, i32 1, !dbg !520
  store float %conv27, float* %g31, align 4, !dbg !520, !tbaa !519
  call void @llvm.dbg.value(metadata !{double* %b}, i64 0, metadata !163), !dbg !521
  %11 = load double* %b, align 8, !dbg !521, !tbaa !518
  %conv32 = fptrunc double %11 to float, !dbg !521
  %b36 = getelementptr inbounds %struct.t_mapping* %4, i64 %indvars.iv, i32 2, i32 2, !dbg !521
  store float %conv32, float* %b36, align 4, !dbg !521, !tbaa !519
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !508
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !153), !dbg !508
  %12 = load i32* %n, align 4, !dbg !508, !tbaa !507
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !508
  %cmp4 = icmp slt i32 %13, %12, !dbg !508
  br i1 %cmp4, label %for.body, label %for.end, !dbg !508

for.end:                                          ; preds = %if.end9, %if.end
  %14 = phi i32 [ %5, %if.end ], [ %12, %if.end9 ]
  store %struct.t_mapping* %4, %struct.t_mapping** %map, align 8, !dbg !522, !tbaa !463
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !153), !dbg !523
  call void @llvm.lifetime.end(i64 4096, i8* %2) #5, !dbg !524
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5, !dbg !524
  call void @llvm.lifetime.end(i64 4096, i8* %0) #5, !dbg !524
  ret i32 %14, !dbg !524
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #6

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define i32 @readcmap(i8* %fn, %struct.t_mapping** nocapture %map) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !169), !dbg !525
  tail call void @llvm.dbg.value(metadata !{%struct.t_mapping** %map}, i64 0, metadata !170), !dbg !525
  %call = tail call %struct._IO_FILE* @libopen(i8* %fn) #9, !dbg !526
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !171), !dbg !526
  %call1 = tail call i32 @getcmap(%struct._IO_FILE* %call, i8* %fn, %struct.t_mapping** %map) #10, !dbg !527
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !172), !dbg !527
  tail call void @ffclose(%struct._IO_FILE* %call) #9, !dbg !528
  ret i32 %call1, !dbg !529
}

; Function Attrs: optsize
declare %struct._IO_FILE* @libopen(i8*) #2

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind optsize uwtable
define void @printcmap(%struct._IO_FILE* nocapture %out, i32 %n, %struct.t_mapping* nocapture %map) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !177), !dbg !530
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !178), !dbg !530
  tail call void @llvm.dbg.value(metadata !{%struct.t_mapping* %map}, i64 0, metadata !179), !dbg !530
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), i32 %n) #9, !dbg !531
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !180), !dbg !532
  %cmp52 = icmp sgt i32 %n, 0, !dbg !532
  br i1 %cmp52, label %for.body, label %for.end, !dbg !532

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %c1 = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 0, i32 0, !dbg !534
  %0 = load i8* %c1, align 1, !dbg !534, !tbaa !464
  %tobool = icmp eq i8 %0, 0, !dbg !534
  %conv = sext i8 %0 to i32, !dbg !534
  %.conv = select i1 %tobool, i32 32, i32 %conv, !dbg !534
  %c2 = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 0, i32 1, !dbg !534
  %1 = load i8* %c2, align 1, !dbg !534, !tbaa !464
  %tobool10 = icmp eq i8 %1, 0, !dbg !534
  %conv9 = sext i8 %1 to i32, !dbg !534
  %cond19 = select i1 %tobool10, i32 32, i32 %conv9, !dbg !534
  %desc = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 1, !dbg !534
  %2 = load i8** %desc, align 8, !dbg !534, !tbaa !463
  %r = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 2, i32 0, !dbg !534
  %3 = load float* %r, align 4, !dbg !534, !tbaa !519
  %conv24 = fpext float %3 to double, !dbg !534
  %g = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 2, i32 1, !dbg !534
  %4 = load float* %g, align 4, !dbg !534, !tbaa !519
  %conv28 = fpext float %4 to double, !dbg !534
  %b = getelementptr inbounds %struct.t_mapping* %map, i64 %indvars.iv, i32 2, i32 2, !dbg !534
  %5 = load float* %b, align 4, !dbg !534, !tbaa !519
  %conv32 = fpext float %5 to double, !dbg !534
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([30 x i8]* @.str11, i64 0, i64 0), i32 %.conv, i32 %cond19, i8* %2, double %conv24, double %conv28, double %conv32) #9, !dbg !534
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !532
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !532
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !532
  br i1 %exitcond, label %for.end, label %for.body, !dbg !532

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !535
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #6

; Function Attrs: nounwind optsize uwtable
define void @writecmap(i8* %fn, i32 %n, %struct.t_mapping* nocapture %map) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !185), !dbg !536
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !186), !dbg !536
  tail call void @llvm.dbg.value(metadata !{%struct.t_mapping* %map}, i64 0, metadata !187), !dbg !536
  %call = tail call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #9, !dbg !537
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !188), !dbg !537
  tail call void @printcmap(%struct._IO_FILE* %call, i32 %n, %struct.t_mapping* %map) #10, !dbg !538
  tail call void @ffclose(%struct._IO_FILE* %call) #9, !dbg !539
  ret void, !dbg !540
}

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @do_wmap(%struct._IO_FILE* nocapture %out, i32 %i0, i32 %imax, i32 %nlevels, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rhi.coerce0, float %rhi.coerce1, float %lo, float %hi) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !193), !dbg !541
  tail call void @llvm.dbg.value(metadata !{i32 %i0}, i64 0, metadata !194), !dbg !541
  tail call void @llvm.dbg.value(metadata !{i32 %imax}, i64 0, metadata !195), !dbg !541
  tail call void @llvm.dbg.value(metadata !{i32 %nlevels}, i64 0, metadata !196), !dbg !542
  tail call void @llvm.dbg.declare(metadata !543, metadata !197), !dbg !542
  tail call void @llvm.dbg.declare(metadata !543, metadata !198), !dbg !542
  tail call void @llvm.dbg.value(metadata !{float %lo}, i64 0, metadata !199), !dbg !542
  tail call void @llvm.dbg.value(metadata !{float %hi}, i64 0, metadata !200), !dbg !542
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !201), !dbg !544
  %cmp56 = icmp sgt i32 %imax, 0, !dbg !544
  br i1 %cmp56, label %for.body.lr.ph, label %for.end, !dbg !544

for.body.lr.ph:                                   ; preds = %entry
  %rlo.sroa.0.0.vec.extract = extractelement <2 x float> %rlo.coerce0, i32 0, !dbg !546
  %rhi.sroa.0.0.vec.extract = extractelement <2 x float> %rhi.coerce0, i32 0, !dbg !546
  %conv6 = sitofp i32 %nlevels to float, !dbg !546
  %rlo.sroa.0.4.vec.extract = extractelement <2 x float> %rlo.coerce0, i32 1, !dbg !548
  %rhi.sroa.0.4.vec.extract = extractelement <2 x float> %rhi.coerce0, i32 1, !dbg !548
  %0 = sext i32 %i0 to i64, !dbg !544
  br label %for.body, !dbg !544

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = trunc i64 %indvars.iv to i32, !dbg !549
  %sub = sub nsw i32 %nlevels, %1, !dbg !549
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !202), !dbg !549
  %conv = sitofp i32 %sub to float, !dbg !546
  %mul = fmul float %rlo.sroa.0.0.vec.extract, %conv, !dbg !546
  %conv3 = sitofp i32 %1 to float, !dbg !546
  %mul5 = fmul float %rhi.sroa.0.0.vec.extract, %conv3, !dbg !546
  %add = fadd float %mul5, %mul, !dbg !546
  %div = fdiv float %add, %conv6, !dbg !546
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !203), !dbg !546
  %mul9 = fmul float %rlo.sroa.0.4.vec.extract, %conv, !dbg !548
  %mul12 = fmul float %rhi.sroa.0.4.vec.extract, %conv3, !dbg !548
  %add13 = fadd float %mul12, %mul9, !dbg !548
  %div15 = fdiv float %add13, %conv6, !dbg !548
  tail call void @llvm.dbg.value(metadata !{float %div15}, i64 0, metadata !204), !dbg !548
  %mul18 = fmul float %conv, %rlo.coerce1, !dbg !550
  %mul21 = fmul float %conv3, %rhi.coerce1, !dbg !550
  %add22 = fadd float %mul21, %mul18, !dbg !550
  %div24 = fdiv float %add22, %conv6, !dbg !550
  tail call void @llvm.dbg.value(metadata !{float %div24}, i64 0, metadata !205), !dbg !550
  %2 = add nsw i64 %indvars.iv, %0, !dbg !551
  %arrayidx = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %2, !dbg !551
  %3 = load i8* %arrayidx, align 1, !dbg !551, !tbaa !464
  %conv26 = sext i8 %3 to i32, !dbg !551
  %mul28 = fmul float %conv, %lo, !dbg !551
  %mul30 = fmul float %conv3, %hi, !dbg !551
  %add31 = fadd float %mul30, %mul28, !dbg !551
  %div33 = fdiv float %add31, %conv6, !dbg !551
  %conv34 = fpext float %div33 to double, !dbg !551
  %conv35 = fpext float %div to double, !dbg !551
  %conv36 = fpext float %div15 to double, !dbg !551
  %conv37 = fpext float %div24 to double, !dbg !551
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([28 x i8]* @.str13, i64 0, i64 0), i32 %conv26, double %conv34, double %conv35, double %conv36, double %conv37) #9, !dbg !551
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !544
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !544
  %exitcond = icmp eq i32 %lftr.wideiv, %imax, !dbg !544
  br i1 %exitcond, label %for.end, label %for.body, !dbg !544

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !552
}

; Function Attrs: nounwind optsize uwtable
define i8* @fgetline(i8** nocapture %line, i32 %llmax, %struct._IO_FILE* nocapture %in) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !211), !dbg !553
  tail call void @llvm.dbg.value(metadata !{i32 %llmax}, i64 0, metadata !212), !dbg !553
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %in}, i64 0, metadata !213), !dbg !553
  %0 = load i32* @fgetline.linelengthmax, align 4, !dbg !554, !tbaa !507
  %cmp = icmp slt i32 %0, %llmax, !dbg !554
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !554

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre5 = load i8** @fgetline.line0, align 8, !dbg !555, !tbaa !463
  br label %if.end, !dbg !554

if.then:                                          ; preds = %entry
  store i32 %llmax, i32* @fgetline.linelengthmax, align 4, !dbg !556, !tbaa !507
  %1 = load i8** @fgetline.line0, align 8, !dbg !558, !tbaa !463
  %call = tail call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 190, i8* %1, i32 %llmax) #9, !dbg !558
  store i8* %call, i8** @fgetline.line0, align 8, !dbg !558, !tbaa !463
  %.pre = load i32* @fgetline.linelengthmax, align 4, !dbg !555, !tbaa !507
  br label %if.end, !dbg !559

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %2 = phi i8* [ %call, %if.then ], [ %.pre5, %entry.if.end_crit_edge ]
  %3 = phi i32 [ %.pre, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %call2 = tail call i8* @fgets(i8* %2, i32 %3, %struct._IO_FILE* %in) #9, !dbg !555
  tail call void @llvm.dbg.value(metadata !{i8* %call2}, i64 0, metadata !214), !dbg !555
  %4 = load i8** @fgetline.line0, align 8, !dbg !560, !tbaa !463
  store i8* %4, i8** %line, align 8, !dbg !560, !tbaa !463
  tail call void @trim(i8* %4) #9, !dbg !561
  ret i8* %call2, !dbg !562
}

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #6

; Function Attrs: optsize
declare void @trim(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @skipstr(i8** nocapture %line) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !219), !dbg !563
  %0 = load i8** %line, align 8, !dbg !564, !tbaa !463
  tail call void @ltrim(i8* %0) #9, !dbg !564
  %.pre = load i8** %line, align 8, !dbg !565, !tbaa !463
  br label %while.cond, !dbg !565

while.cond:                                       ; preds = %while.body, %entry
  %1 = phi i8* [ %incdec.ptr, %while.body ], [ %.pre, %entry ]
  %2 = load i8* %1, align 1, !dbg !565, !tbaa !464
  switch i8 %2, label %while.body [
    i8 32, label %while.end
    i8 0, label %while.end
  ], !dbg !565

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8* %1, i64 1, !dbg !566
  store i8* %incdec.ptr, i8** %line, align 8, !dbg !566, !tbaa !463
  br label %while.cond, !dbg !566

while.end:                                        ; preds = %while.cond, %while.cond
  ret void, !dbg !567
}

; Function Attrs: optsize
declare void @ltrim(i8*) #2

; Function Attrs: nounwind optsize uwtable
define i8* @line2string(i8** nocapture %line) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !224), !dbg !568
  %0 = load i8** %line, align 8, !dbg !569, !tbaa !463
  %cmp = icmp eq i8* %0, null, !dbg !569
  br i1 %cmp, label %return, label %while.cond.preheader, !dbg !569

while.cond.preheader:                             ; preds = %entry
  %1 = load i8* %0, align 1, !dbg !570, !tbaa !464
  %cmp150 = icmp eq i8 %1, 34, !dbg !570
  %cmp551 = icmp ne i8 %1, 0, !dbg !570
  %not.cmp152 = xor i1 %cmp150, true, !dbg !570
  %.cmp553 = and i1 %cmp551, %not.cmp152, !dbg !570
  br i1 %.cmp553, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %2 = phi i8* [ %incdec.ptr, %while.body ], [ %0, %while.cond.preheader ]
  %incdec.ptr = getelementptr inbounds i8* %2, i64 1, !dbg !572
  store i8* %incdec.ptr, i8** %line, align 8, !dbg !572, !tbaa !463
  %3 = load i8* %incdec.ptr, align 1, !dbg !570, !tbaa !464
  %cmp1 = icmp eq i8 %3, 34, !dbg !570
  %cmp5 = icmp ne i8 %3, 0, !dbg !570
  %not.cmp1 = xor i1 %cmp1, true, !dbg !570
  %.cmp5 = and i1 %cmp5, %not.cmp1, !dbg !570
  br i1 %.cmp5, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %cmp1.lcssa = phi i1 [ %cmp150, %while.cond.preheader ], [ %cmp1, %while.body ]
  %.lcssa = phi i8* [ %0, %while.cond.preheader ], [ %incdec.ptr, %while.body ]
  br i1 %cmp1.lcssa, label %if.end, label %return, !dbg !573

if.end:                                           ; preds = %while.end
  %incdec.ptr12 = getelementptr inbounds i8* %.lcssa, i64 1, !dbg !574
  store i8* %incdec.ptr12, i8** %line, align 8, !dbg !574, !tbaa !463
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !225), !dbg !575
  br label %while.cond13, !dbg !576

while.cond13:                                     ; preds = %while.cond13, %if.end
  %indvars.iv = phi i64 [ %incdec.ptr12.sum, %while.cond13 ], [ 0, %if.end ]
  %incdec.ptr12.sum = add i64 %indvars.iv, 1, !dbg !576
  %arrayidx14 = getelementptr inbounds i8* %.lcssa, i64 %incdec.ptr12.sum, !dbg !576
  %4 = load i8* %arrayidx14, align 1, !dbg !576, !tbaa !464
  %cmp16 = icmp eq i8 %4, 34, !dbg !576
  %cmp22 = icmp ne i8 %4, 0, !dbg !576
  %not.cmp16 = xor i1 %cmp16, true, !dbg !576
  %.cmp22 = and i1 %cmp22, %not.cmp16, !dbg !576
  br i1 %.cmp22, label %while.cond13, label %while.end26

while.end26:                                      ; preds = %while.cond13
  br i1 %cmp16, label %if.else, label %if.then32, !dbg !577

if.then32:                                        ; preds = %while.end26
  store i8* null, i8** %line, align 8, !dbg !578, !tbaa !463
  br label %return, !dbg !578

if.else:                                          ; preds = %while.end26
  store i8 0, i8* %arrayidx14, align 1, !dbg !579, !tbaa !464
  %.pre = load i8** %line, align 8, !dbg !580, !tbaa !463
  br label %return

return:                                           ; preds = %if.else, %if.then32, %entry, %while.end
  %retval.0 = phi i8* [ null, %while.end ], [ null, %entry ], [ null, %if.then32 ], [ %.pre, %if.else ]
  ret i8* %retval.0, !dbg !581
}

; Function Attrs: nounwind optsize uwtable
define void @parsestring(i8* %line, i8* nocapture %label, i8* %string) #0 {
entry:
  %line.addr = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %line}, i64 0, metadata !230), !dbg !582
  store i8* %line, i8** %line.addr, align 8, !tbaa !463
  call void @llvm.dbg.declare(metadata !{i8** %line.addr}, metadata !230), !dbg !582
  call void @llvm.dbg.value(metadata !{i8* %label}, i64 0, metadata !231), !dbg !582
  call void @llvm.dbg.value(metadata !{i8* %string}, i64 0, metadata !232), !dbg !582
  %call = call i8* @strstr(i8* %line, i8* %label) #11, !dbg !583
  %tobool = icmp eq i8* %call, null, !dbg !583
  br i1 %tobool, label %if.end6, label %if.then, !dbg !583

if.then:                                          ; preds = %entry
  %call2 = call i8* @strchr(i8* %line, i32 34) #11, !dbg !584
  %cmp = icmp ult i8* %call, %call2, !dbg !584
  br i1 %cmp, label %if.then3, label %if.end6, !dbg !584

if.then3:                                         ; preds = %if.then
  %call4 = call i8* @line2string(i8** %line.addr) #10, !dbg !586
  call void @llvm.dbg.value(metadata !{i8** %line.addr}, i64 0, metadata !230), !dbg !588
  %0 = load i8** %line.addr, align 8, !dbg !588, !tbaa !463
  %call5 = call i8* @strcpy(i8* %string, i8* %0) #9, !dbg !588
  br label %if.end6, !dbg !589

if.end6:                                          ; preds = %entry, %if.then, %if.then3
  ret void, !dbg !590
}

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #7

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #7

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #6

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
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %in}, i64 0, metadata !259), !dbg !591
  call void @llvm.dbg.value(metadata !{%struct.t_matrix* %mm}, i64 0, metadata !260), !dbg !591
  call void @llvm.dbg.declare(metadata !{i8** %line}, metadata !262), !dbg !592
  call void @llvm.dbg.value(metadata !593, i64 0, metadata !262), !dbg !592
  store i8* null, i8** %line, align 8, !dbg !592, !tbaa !463
  %0 = getelementptr inbounds [256 x i8]* %buf, i64 0, i64 0, !dbg !592
  call void @llvm.lifetime.start(i64 256, i8* %0) #5, !dbg !592
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !264), !dbg !592
  call void @llvm.dbg.declare(metadata !{i32* %nch}, metadata !268), !dbg !594
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !272), !dbg !595
  call void @llvm.dbg.declare(metadata !{i32* %g}, metadata !274), !dbg !595
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !275), !dbg !595
  call void @llvm.dbg.declare(metadata !{double* %u}, metadata !276), !dbg !596
  call void @llvm.dbg.declare(metadata !486, metadata !278), !dbg !597
  %arrayidx = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 3, i64 0, !dbg !598
  store i8 0, i8* %arrayidx, align 1, !dbg !598, !tbaa !464
  %arrayidx1 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 4, i64 0, !dbg !599
  store i8 0, i8* %arrayidx1, align 1, !dbg !599, !tbaa !464
  %arrayidx2 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 5, i64 0, !dbg !600
  store i8 0, i8* %arrayidx2, align 1, !dbg !600, !tbaa !464
  %arrayidx3 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 6, i64 0, !dbg !601
  store i8 0, i8* %arrayidx3, align 1, !dbg !601, !tbaa !464
  %matrix = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 10, !dbg !602
  %axis_x = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 8, !dbg !603
  %axis_y = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 9, !dbg !604
  %bDiscrete = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 7, !dbg !605
  call void @llvm.dbg.value(metadata !606, i64 0, metadata !271), !dbg !607
  %1 = bitcast i32* %bDiscrete to i8*, !dbg !608
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 28, i32 4, i1 false), !dbg !603
  %call529 = call i8* @fgetline(i8** %line, i32 4096, %struct._IO_FILE* %in) #10, !dbg !608
  %tobool530 = icmp eq i8* %call529, null, !dbg !608
  br i1 %tobool530, label %while.end, label %land.rhs, !dbg !608

land.rhs:                                         ; preds = %entry, %while.body
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !608
  %2 = load i8** %line, align 8, !dbg !608, !tbaa !463
  %call4 = call i32 @strncmp(i8* %2, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i64 6) #11, !dbg !608
  %cmp = icmp eq i32 %call4, 0, !dbg !608
  br i1 %cmp, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  call void @parsestring(i8* %2, i8* getelementptr inbounds ([6 x i8]* @.str16, i64 0, i64 0), i8* %arrayidx) #10, !dbg !609
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !611
  %3 = load i8** %line, align 8, !dbg !611, !tbaa !463
  call void @parsestring(i8* %3, i8* getelementptr inbounds ([7 x i8]* @.str17, i64 0, i64 0), i8* %arrayidx1) #10, !dbg !611
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !612
  %4 = load i8** %line, align 8, !dbg !612, !tbaa !463
  call void @parsestring(i8* %4, i8* getelementptr inbounds ([8 x i8]* @.str18, i64 0, i64 0), i8* %arrayidx2) #10, !dbg !612
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !613
  %5 = load i8** %line, align 8, !dbg !613, !tbaa !463
  call void @parsestring(i8* %5, i8* getelementptr inbounds ([8 x i8]* @.str19, i64 0, i64 0), i8* %arrayidx3) #10, !dbg !613
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !614
  %6 = load i8** %line, align 8, !dbg !614, !tbaa !463
  call void @parsestring(i8* %6, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i8* %0) #10, !dbg !614
  %call = call i8* @fgetline(i8** %line, i32 4096, %struct._IO_FILE* %in) #10, !dbg !608
  %tobool = icmp eq i8* %call, null, !dbg !608
  br i1 %tobool, label %while.end, label %land.rhs, !dbg !608

while.end:                                        ; preds = %while.body, %land.rhs, %entry
  %7 = load i8* %0, align 16, !dbg !615, !tbaa !464
  %tobool14 = icmp eq i8 %7, 0, !dbg !615
  br i1 %tobool14, label %if.end, label %land.lhs.true, !dbg !615

land.lhs.true:                                    ; preds = %while.end
  %call16 = call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0)) #11, !dbg !615
  %cmp17 = icmp eq i32 %call16, 0, !dbg !615
  br i1 %cmp17, label %if.then, label %if.end, !dbg !615

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %bDiscrete, align 4, !dbg !616, !tbaa !507
  br label %if.end, !dbg !616

if.end:                                           ; preds = %while.end, %if.then, %land.lhs.true
  %8 = load %struct._IO_FILE** @debug, align 8, !dbg !617, !tbaa !463
  %tobool20 = icmp eq %struct._IO_FILE* %8, null, !dbg !617
  br i1 %tobool20, label %if.end31, label %if.then21, !dbg !617

if.then21:                                        ; preds = %if.end
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0), i8* %arrayidx, i8* %arrayidx1, i8* %arrayidx2, i8* %arrayidx3) #9, !dbg !618
  br label %if.end31, !dbg !618

if.end31:                                         ; preds = %if.end, %if.then21
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !619
  %9 = load i8** %line, align 8, !dbg !619, !tbaa !463
  %call32 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([7 x i8]* @.str15, i64 0, i64 0), i64 6) #11, !dbg !619
  %cmp33 = icmp eq i32 %call32, 0, !dbg !619
  br i1 %cmp33, label %while.cond37.preheader, label %if.then35, !dbg !619

if.then35:                                        ; preds = %if.end31
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str23, i64 0, i64 0)) #9, !dbg !620
  br label %while.cond37.preheader, !dbg !620

while.cond37.preheader:                           ; preds = %if.end31, %if.then35
  %nx = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 0, !dbg !621
  %ny = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 1, !dbg !621
  %nmap = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 11, !dbg !621
  br label %land.rhs39

while.cond37.outer.while.end74.split_crit_edge:   ; preds = %if.then61, %if.then66
  %10 = load i32* %nx, align 4, !dbg !624, !tbaa !507
  %add = add nsw i32 %10, 10, !dbg !624
  call void @llvm.dbg.value(metadata !{i32 %.add}, i64 0, metadata !271), !dbg !624
  call void @llvm.dbg.value(metadata !625, i64 0, metadata !277), !dbg !626
  %cmp69 = icmp slt i32 %add, 4096, !dbg !624
  %.add = select i1 %cmp69, i32 4096, i32 %add, !dbg !624
  br label %while.end74.split

land.rhs39:                                       ; preds = %while.end56, %while.cond37.preheader
  %call40 = call i8* @fgetline(i8** %line, i32 4096, %struct._IO_FILE* %in) #10, !dbg !627
  %tobool41 = icmp eq i8* %call40, null, !dbg !627
  br i1 %tobool41, label %while.end74.split, label %while.cond44.preheader

while.cond44.preheader:                           ; preds = %land.rhs39
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !628
  %11 = load i8** %line, align 8, !dbg !628, !tbaa !463
  %12 = load i8* %11, align 1, !dbg !628, !tbaa !464
  %cmp47524 = icmp eq i8 %12, 34, !dbg !628
  %cmp52525 = icmp ne i8 %12, 0, !dbg !628
  %not.cmp47526 = xor i1 %cmp47524, true, !dbg !628
  %.cmp52527 = and i1 %cmp52525, %not.cmp47526, !dbg !628
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !629
  br i1 %.cmp52527, label %while.body55, label %while.end56

while.body55:                                     ; preds = %while.cond44.preheader, %while.body55
  %13 = phi i8* [ %incdec.ptr, %while.body55 ], [ %11, %while.cond44.preheader ]
  %incdec.ptr = getelementptr inbounds i8* %13, i64 1, !dbg !629
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !262), !dbg !629
  store i8* %incdec.ptr, i8** %line, align 8, !dbg !629, !tbaa !463
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !628
  %14 = load i8* %incdec.ptr, align 1, !dbg !628, !tbaa !464
  %cmp47 = icmp eq i8 %14, 34, !dbg !628
  %cmp52 = icmp ne i8 %14, 0, !dbg !628
  %not.cmp47 = xor i1 %cmp47, true, !dbg !628
  %.cmp52 = and i1 %cmp52, %not.cmp47, !dbg !628
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !629
  br i1 %.cmp52, label %while.body55, label %while.end56

while.end56:                                      ; preds = %while.body55, %while.cond44.preheader
  %cmp47.lcssa = phi i1 [ %cmp47524, %while.cond44.preheader ], [ %cmp47, %while.body55 ]
  br i1 %cmp47.lcssa, label %if.then61, label %land.rhs39, !dbg !630

if.then61:                                        ; preds = %while.end56
  %call62 = call i8* @line2string(i8** %line) #10, !dbg !631
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !621
  %15 = load i8** %line, align 8, !dbg !621, !tbaa !463
  %call63 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %15, i8* getelementptr inbounds ([12 x i8]* @.str24, i64 0, i64 0), i32* %nx, i32* %ny, i32* %nmap, i32* %nch) #9, !dbg !621
  call void @llvm.dbg.value(metadata !{i32* %nch}, i64 0, metadata !268), !dbg !632
  %16 = load i32* %nch, align 4, !dbg !632, !tbaa !507
  %cmp64 = icmp sgt i32 %16, 2, !dbg !632
  br i1 %cmp64, label %if.then66, label %while.cond37.outer.while.end74.split_crit_edge, !dbg !632

if.then66:                                        ; preds = %if.then61
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([62 x i8]* @.str25, i64 0, i64 0)) #9, !dbg !633
  br label %while.cond37.outer.while.end74.split_crit_edge, !dbg !633

while.end74.split:                                ; preds = %land.rhs39, %while.cond37.outer.while.end74.split_crit_edge
  %llmax.0.ph532 = phi i32 [ %.add, %while.cond37.outer.while.end74.split_crit_edge ], [ 4096, %land.rhs39 ]
  %17 = load %struct._IO_FILE** @debug, align 8, !dbg !634, !tbaa !463
  %tobool75 = icmp eq %struct._IO_FILE* %17, null, !dbg !634
  br i1 %tobool75, label %if.end81, label %if.then76, !dbg !634

if.then76:                                        ; preds = %while.end74.split
  %18 = load i32* %nx, align 4, !dbg !635, !tbaa !507
  %19 = load i32* %ny, align 4, !dbg !635, !tbaa !507
  %20 = load i32* %nmap, align 4, !dbg !635, !tbaa !507
  call void @llvm.dbg.value(metadata !{i32* %nch}, i64 0, metadata !268), !dbg !635
  %21 = load i32* %nch, align 4, !dbg !635, !tbaa !507
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([40 x i8]* @.str26, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21) #9, !dbg !635
  br label %if.end81, !dbg !635

if.end81:                                         ; preds = %while.end74.split, %if.then76
  %22 = load i32* %nmap, align 4, !dbg !636, !tbaa !507
  %call83 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 298, i32 %22, i32 32) #9, !dbg !636
  %23 = bitcast i8* %call83 to %struct.t_mapping*, !dbg !636
  call void @llvm.dbg.value(metadata !{%struct.t_mapping* %23}, i64 0, metadata !261), !dbg !636
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !266), !dbg !637
  br label %while.cond84.outer, !dbg !638

while.cond84.outer:                               ; preds = %if.end198, %if.end81
  %indvars.iv544 = phi i64 [ %indvars.iv.next545, %if.end198 ], [ 0, %if.end81 ]
  %m.0.ph = phi i32 [ %inc205, %if.end198 ], [ 0, %if.end81 ]
  br label %while.cond84

while.cond84:                                     ; preds = %while.cond84.outer, %while.body92
  %24 = load i32* %nmap, align 4, !dbg !638, !tbaa !507
  %25 = trunc i64 %indvars.iv544 to i32, !dbg !638
  %cmp86 = icmp slt i32 %25, %24, !dbg !638
  br i1 %cmp86, label %land.rhs88, label %while.end207, !dbg !638

land.rhs88:                                       ; preds = %while.cond84
  %call89 = call i8* @fgetline(i8** %line, i32 %llmax.0.ph532, %struct._IO_FILE* %in) #10, !dbg !638
  %tobool90 = icmp eq i8* %call89, null, !dbg !638
  br i1 %tobool90, label %land.rhs88.while.end207_crit_edge, label %while.body92

land.rhs88.while.end207_crit_edge:                ; preds = %land.rhs88
  %.pre550 = load i32* %nmap, align 4, !dbg !639, !tbaa !507
  br label %while.end207

while.body92:                                     ; preds = %land.rhs88
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !640
  %26 = load i8** %line, align 8, !dbg !640, !tbaa !463
  %call93 = call i8* @strchr(i8* %26, i32 34) #11, !dbg !640
  call void @llvm.dbg.value(metadata !{i8* %call93}, i64 0, metadata !262), !dbg !640
  call void @llvm.dbg.value(metadata !{i8* %call93}, i64 0, metadata !262), !dbg !640
  store i8* %call93, i8** %line, align 8, !dbg !640, !tbaa !463
  %tobool94 = icmp eq i8* %call93, null, !dbg !642
  br i1 %tobool94, label %while.cond84, label %if.then95, !dbg !642

if.then95:                                        ; preds = %while.body92
  %incdec.ptr96 = getelementptr inbounds i8* %call93, i64 1, !dbg !643
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr96}, i64 0, metadata !262), !dbg !643
  store i8* %incdec.ptr96, i8** %line, align 8, !dbg !643, !tbaa !463
  %27 = load i8* %incdec.ptr96, align 1, !dbg !645, !tbaa !464
  %c1 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 0, i32 0, !dbg !645
  store i8 %27, i8* %c1, align 1, !dbg !645, !tbaa !464
  call void @llvm.dbg.value(metadata !{i32* %nch}, i64 0, metadata !268), !dbg !646
  %28 = load i32* %nch, align 4, !dbg !646, !tbaa !507
  %cmp99 = icmp eq i32 %28, 1, !dbg !646
  br i1 %cmp99, label %if.then101, label %if.else, !dbg !646

if.then101:                                       ; preds = %if.then95
  %c2 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 0, i32 1, !dbg !647
  store i8 0, i8* %c2, align 1, !dbg !647, !tbaa !464
  br label %if.end110, !dbg !647

if.else:                                          ; preds = %if.then95
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !648
  %29 = load i8** %line, align 8, !dbg !648, !tbaa !463
  %arrayidx105 = getelementptr inbounds i8* %29, i64 1, !dbg !648
  %30 = load i8* %arrayidx105, align 1, !dbg !648, !tbaa !464
  %c2109 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 0, i32 1, !dbg !648
  store i8 %30, i8* %c2109, align 1, !dbg !648, !tbaa !464
  br label %if.end110

if.end110:                                        ; preds = %if.else, %if.then101
  call void @llvm.dbg.value(metadata !{i32* %nch}, i64 0, metadata !268), !dbg !649
  %31 = load i32* %nch, align 4, !dbg !649, !tbaa !507
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !649
  %32 = load i8** %line, align 8, !dbg !649, !tbaa !463
  %idx.ext = sext i32 %31 to i64, !dbg !649
  %add.ptr = getelementptr inbounds i8* %32, i64 %idx.ext, !dbg !649
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !262), !dbg !649
  store i8* %add.ptr, i8** %line, align 8, !dbg !649, !tbaa !463
  %call111 = call i8* @strchr(i8* %add.ptr, i32 35) #11, !dbg !650
  call void @llvm.dbg.value(metadata !{i8* %call111}, i64 0, metadata !263), !dbg !650
  %tobool112 = icmp eq i8* %call111, null, !dbg !651
  br i1 %tobool112, label %if.else178, label %while.cond115.preheader, !dbg !651

while.cond115.preheader:                          ; preds = %if.end110
  %call120 = call i16** @__ctype_b_loc() #12, !dbg !652
  %33 = load i16** %call120, align 8, !dbg !652, !tbaa !463
  br label %while.cond115, !dbg !652

while.cond115:                                    ; preds = %while.cond115, %while.cond115.preheader
  %indvars.iv542 = phi i64 [ %incdec.ptr114.sum, %while.cond115 ], [ 0, %while.cond115.preheader ]
  %col_len.0 = phi i32 [ %inc, %while.cond115 ], [ 0, %while.cond115.preheader ]
  %incdec.ptr114.sum = add i64 %indvars.iv542, 1, !dbg !652
  %arrayidx117 = getelementptr inbounds i8* %call111, i64 %incdec.ptr114.sum, !dbg !652
  %34 = load i8* %arrayidx117, align 1, !dbg !652, !tbaa !464
  %idxprom119 = sext i8 %34 to i64, !dbg !652
  %arrayidx121 = getelementptr inbounds i16* %33, i64 %idxprom119, !dbg !652
  %35 = load i16* %arrayidx121, align 2, !dbg !652, !tbaa !654
  %and = and i16 %35, 4096, !dbg !652
  %tobool123 = icmp eq i16 %and, 0, !dbg !652
  %inc = add nsw i32 %col_len.0, 1, !dbg !655
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !267), !dbg !655
  br i1 %tobool123, label %while.end125, label %while.cond115, !dbg !652

while.end125:                                     ; preds = %while.cond115
  switch i32 %col_len.0, label %if.else175 [
    i32 6, label %if.then128
    i32 12, label %if.then152
  ], !dbg !656

if.then128:                                       ; preds = %while.end125
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !657
  %call129 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([15 x i8]* @.str28, i64 0, i64 0), i32* %r, i32* %g, i32* %b) #9, !dbg !657
  call void @llvm.dbg.value(metadata !{i32* %r}, i64 0, metadata !272), !dbg !659
  %36 = load i32* %r, align 4, !dbg !659, !tbaa !507
  %conv130 = uitofp i32 %36 to double, !dbg !659
  %div = fdiv double %conv130, 2.550000e+02, !dbg !659
  %conv131 = fptrunc double %div to float, !dbg !659
  %r134 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 0, !dbg !659
  store float %conv131, float* %r134, align 4, !dbg !659, !tbaa !519
  call void @llvm.dbg.value(metadata !{i32* %g}, i64 0, metadata !274), !dbg !660
  %37 = load i32* %g, align 4, !dbg !660, !tbaa !507
  %conv135 = uitofp i32 %37 to double, !dbg !660
  %div136 = fdiv double %conv135, 2.550000e+02, !dbg !660
  %conv137 = fptrunc double %div136 to float, !dbg !660
  %g141 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 1, !dbg !660
  store float %conv137, float* %g141, align 4, !dbg !660, !tbaa !519
  call void @llvm.dbg.value(metadata !{i32* %b}, i64 0, metadata !275), !dbg !661
  %38 = load i32* %b, align 4, !dbg !661, !tbaa !507
  %conv142 = uitofp i32 %38 to double, !dbg !661
  %div143 = fdiv double %conv142, 2.550000e+02, !dbg !661
  %conv144 = fptrunc double %div143 to float, !dbg !661
  %b148 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 2, !dbg !661
  store float %conv144, float* %b148, align 4, !dbg !661, !tbaa !519
  br label %if.end198, !dbg !662

if.then152:                                       ; preds = %while.end125
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !663
  %call153 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i32* %r, i32* %g, i32* %b) #9, !dbg !663
  call void @llvm.dbg.value(metadata !{i32* %r}, i64 0, metadata !272), !dbg !665
  %39 = load i32* %r, align 4, !dbg !665, !tbaa !507
  %conv154 = uitofp i32 %39 to double, !dbg !665
  %div155 = fdiv double %conv154, 6.553500e+04, !dbg !665
  %conv156 = fptrunc double %div155 to float, !dbg !665
  %r160 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 0, !dbg !665
  store float %conv156, float* %r160, align 4, !dbg !665, !tbaa !519
  call void @llvm.dbg.value(metadata !{i32* %g}, i64 0, metadata !274), !dbg !666
  %40 = load i32* %g, align 4, !dbg !666, !tbaa !507
  %conv161 = uitofp i32 %40 to double, !dbg !666
  %div162 = fdiv double %conv161, 6.553500e+04, !dbg !666
  %conv163 = fptrunc double %div162 to float, !dbg !666
  %g167 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 1, !dbg !666
  store float %conv163, float* %g167, align 4, !dbg !666, !tbaa !519
  call void @llvm.dbg.value(metadata !{i32* %b}, i64 0, metadata !275), !dbg !667
  %41 = load i32* %b, align 4, !dbg !667, !tbaa !507
  %conv168 = uitofp i32 %41 to double, !dbg !667
  %div169 = fdiv double %conv168, 6.553500e+04, !dbg !667
  %conv170 = fptrunc double %div169 to float, !dbg !667
  %b174 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 2, !dbg !667
  store float %conv170, float* %b174, align 4, !dbg !667, !tbaa !519
  br label %if.end198, !dbg !668

if.else175:                                       ; preds = %while.end125
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str30, i64 0, i64 0)) #9, !dbg !669
  br label %if.end198

if.else178:                                       ; preds = %if.end110
  %call179 = call i8* @strchr(i8* %add.ptr, i32 99) #11, !dbg !670
  call void @llvm.dbg.value(metadata !{i8* %call179}, i64 0, metadata !263), !dbg !670
  %tobool180 = icmp eq i8* %call179, null, !dbg !672
  br i1 %tobool180, label %if.else183, label %if.then181, !dbg !672

if.then181:                                       ; preds = %if.else178
  %add.ptr182 = getelementptr inbounds i8* %call179, i64 2, !dbg !673
  call void @llvm.dbg.value(metadata !{i8* %add.ptr182}, i64 0, metadata !263), !dbg !673
  br label %if.end184, !dbg !673

if.else183:                                       ; preds = %if.else178
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str30, i64 0, i64 0)) #9, !dbg !674
  br label %if.end184

if.end184:                                        ; preds = %if.else183, %if.then181
  %str.0 = phi i8* [ %add.ptr182, %if.then181 ], [ null, %if.else183 ]
  %42 = load %struct._IO_FILE** @stderr, align 8, !dbg !675, !tbaa !463
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([26 x i8]* @.str31, i64 0, i64 0), i8* %str.0) #9, !dbg !675
  %r189 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 0, !dbg !676
  store float 1.000000e+00, float* %r189, align 4, !dbg !676, !tbaa !519
  %g193 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 1, !dbg !677
  store float 1.000000e+00, float* %g193, align 4, !dbg !677, !tbaa !519
  %b197 = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 2, i32 2, !dbg !678
  store float 1.000000e+00, float* %b197, align 4, !dbg !678, !tbaa !519
  br label %if.end198

if.end198:                                        ; preds = %if.then128, %if.else175, %if.then152, %if.end184
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !679
  %43 = load i8** %line, align 8, !dbg !679, !tbaa !463
  %call199 = call i8* @strchr(i8* %43, i32 34) #11, !dbg !679
  %incdec.ptr200 = getelementptr inbounds i8* %call199, i64 1, !dbg !680
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr200}, i64 0, metadata !262), !dbg !680
  store i8* %incdec.ptr200, i8** %line, align 8, !dbg !680, !tbaa !463
  %call201 = call i8* @line2string(i8** %line) #10, !dbg !681
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !682
  %44 = load i8** %line, align 8, !dbg !682, !tbaa !463
  %call202 = call noalias i8* @strdup(i8* %44) #9, !dbg !682
  %desc = getelementptr inbounds %struct.t_mapping* %23, i64 %indvars.iv544, i32 1, !dbg !682
  store i8* %call202, i8** %desc, align 8, !dbg !682, !tbaa !463
  %indvars.iv.next545 = add i64 %indvars.iv544, 1, !dbg !683
  %inc205 = add nsw i32 %m.0.ph, 1, !dbg !684
  call void @llvm.dbg.value(metadata !{i32 %inc205}, i64 0, metadata !266), !dbg !684
  br label %while.cond84.outer, !dbg !683

while.end207:                                     ; preds = %land.rhs88.while.end207_crit_edge, %while.cond84
  %45 = phi i32 [ %.pre550, %land.rhs88.while.end207_crit_edge ], [ %24, %while.cond84 ]
  %cmp209 = icmp eq i32 %m.0.ph, %45, !dbg !639
  br i1 %cmp209, label %if.end213, label %if.then211, !dbg !639

if.then211:                                       ; preds = %while.end207
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([84 x i8]* @.str32, i64 0, i64 0), i32 %m.0.ph, i32 %45) #9, !dbg !685
  br label %if.end213, !dbg !685

if.end213:                                        ; preds = %while.end207, %if.then211
  %map214 = getelementptr inbounds %struct.t_matrix* %mm, i64 0, i32 12, !dbg !686
  store %struct.t_mapping* %23, %struct.t_mapping** %map214, align 8, !dbg !686, !tbaa !463
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !269), !dbg !687
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !270), !dbg !688
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !277), !dbg !689
  br label %do.body, !dbg !690

do.body:                                          ; preds = %land.rhs278, %if.end213
  %n_axis_x.0 = phi i32 [ 0, %if.end213 ], [ %n_axis_x.2, %land.rhs278 ]
  %n_axis_y.0 = phi i32 [ 0, %if.end213 ], [ %n_axis_y.2, %land.rhs278 ]
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !691
  %46 = load i8** %line, align 8, !dbg !691, !tbaa !463
  %call215 = call i8* @strstr(i8* %46, i8* getelementptr inbounds ([7 x i8]* @.str33, i64 0, i64 0)) #11, !dbg !691
  %tobool216 = icmp eq i8* %call215, null, !dbg !691
  br i1 %tobool216, label %if.else243, label %if.then217, !dbg !691

if.then217:                                       ; preds = %do.body
  call void @llvm.dbg.value(metadata !{i8* %call215}, i64 0, metadata !262), !dbg !693
  store i8* %call215, i8** %line, align 8, !dbg !693, !tbaa !463
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !695) #5, !dbg !697
  call void @ltrim(i8* %call215) #9, !dbg !698
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !699
  %.pre.i = load i8** %line, align 8, !dbg !699, !tbaa !463
  br label %while.cond.i, !dbg !699

while.cond.i:                                     ; preds = %while.body.i, %if.then217
  %47 = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %.pre.i, %if.then217 ]
  %48 = load i8* %47, align 1, !dbg !699, !tbaa !464
  switch i8 %48, label %while.body.i [
    i8 32, label %skipstr.exit
    i8 0, label %skipstr.exit
  ], !dbg !699

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr inbounds i8* %47, i64 1, !dbg !700
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !262), !dbg !700
  store i8* %incdec.ptr.i, i8** %line, align 8, !dbg !700, !tbaa !463
  br label %while.cond.i, !dbg !700

skipstr.exit:                                     ; preds = %while.cond.i, %while.cond.i
  %49 = load float** %axis_x, align 8, !dbg !701, !tbaa !463
  %cmp220 = icmp eq float* %49, null, !dbg !701
  br i1 %cmp220, label %if.then222, label %while.cond227.preheader, !dbg !701

if.then222:                                       ; preds = %skipstr.exit
  %50 = load i32* %nx, align 4, !dbg !702, !tbaa !507
  %call224 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 360, i32 %50, i32 4) #9, !dbg !702
  %51 = bitcast i8* %call224 to float*, !dbg !702
  store float* %51, float** %axis_x, align 8, !dbg !702, !tbaa !463
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !703
  %.pre549 = load i8** %line, align 8, !dbg !703, !tbaa !463
  br label %while.cond227.preheader, !dbg !702

while.cond227.preheader:                          ; preds = %if.then222, %skipstr.exit
  %52 = phi i8* [ %.pre549, %if.then222 ], [ %47, %skipstr.exit ]
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !703
  %call228515 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %52, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %u) #9, !dbg !703
  %cmp229516 = icmp eq i32 %call228515, 1, !dbg !703
  br i1 %cmp229516, label %while.body231.lr.ph, label %do.cond, !dbg !703

while.body231.lr.ph:                              ; preds = %while.cond227.preheader
  %53 = sext i32 %n_axis_x.0 to i64
  br label %while.body231, !dbg !703

while.cond227.loopexit:                           ; preds = %while.cond.i489, %while.cond.i489
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !703
  %call228 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %59, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %u) #9, !dbg !703
  %cmp229 = icmp eq i32 %call228, 1, !dbg !703
  br i1 %cmp229, label %while.body231, label %do.cond, !dbg !703

while.body231:                                    ; preds = %while.body231.lr.ph, %while.cond227.loopexit
  %indvars.iv538 = phi i64 [ %53, %while.body231.lr.ph ], [ %indvars.iv.next539, %while.cond227.loopexit ]
  %n_axis_x.1517 = phi i32 [ %n_axis_x.0, %while.body231.lr.ph ], [ %inc241, %while.cond227.loopexit ]
  %54 = load i32* %nx, align 4, !dbg !704, !tbaa !507
  %55 = trunc i64 %indvars.iv538 to i32, !dbg !704
  %cmp233 = icmp slt i32 %55, %54, !dbg !704
  br i1 %cmp233, label %if.end236, label %if.then235, !dbg !704

if.then235:                                       ; preds = %while.body231
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str36, i64 0, i64 0)) #9, !dbg !706
  br label %if.end236, !dbg !706

if.end236:                                        ; preds = %while.body231, %if.then235
  call void @llvm.dbg.value(metadata !{double* %u}, i64 0, metadata !276), !dbg !707
  %56 = load double* %u, align 8, !dbg !707, !tbaa !518
  %conv237 = fptrunc double %56 to float, !dbg !707
  %57 = load float** %axis_x, align 8, !dbg !707, !tbaa !463
  %arrayidx240 = getelementptr inbounds float* %57, i64 %indvars.iv538, !dbg !707
  store float %conv237, float* %arrayidx240, align 4, !dbg !707, !tbaa !519
  %indvars.iv.next539 = add i64 %indvars.iv538, 1, !dbg !703
  %inc241 = add nsw i32 %n_axis_x.1517, 1, !dbg !708
  call void @llvm.dbg.value(metadata !{i32 %inc241}, i64 0, metadata !269), !dbg !708
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !709) #5, !dbg !711
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !712
  %58 = load i8** %line, align 8, !dbg !712, !tbaa !463
  call void @ltrim(i8* %58) #9, !dbg !712
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !713
  %.pre.i488 = load i8** %line, align 8, !dbg !713, !tbaa !463
  br label %while.cond.i489, !dbg !713

while.cond.i489:                                  ; preds = %while.body.i491, %if.end236
  %59 = phi i8* [ %incdec.ptr.i490, %while.body.i491 ], [ %.pre.i488, %if.end236 ]
  %60 = load i8* %59, align 1, !dbg !713, !tbaa !464
  switch i8 %60, label %while.body.i491 [
    i8 32, label %while.cond227.loopexit
    i8 0, label %while.cond227.loopexit
  ], !dbg !713

while.body.i491:                                  ; preds = %while.cond.i489
  %incdec.ptr.i490 = getelementptr inbounds i8* %59, i64 1, !dbg !714
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i490}, i64 0, metadata !262), !dbg !714
  store i8* %incdec.ptr.i490, i8** %line, align 8, !dbg !714, !tbaa !463
  br label %while.cond.i489, !dbg !714

if.else243:                                       ; preds = %do.body
  %call244 = call i8* @strstr(i8* %46, i8* getelementptr inbounds ([7 x i8]* @.str37, i64 0, i64 0)) #11, !dbg !715
  %tobool245 = icmp eq i8* %call244, null, !dbg !715
  br i1 %tobool245, label %do.cond, label %if.then246, !dbg !715

if.then246:                                       ; preds = %if.else243
  call void @llvm.dbg.value(metadata !{i8* %call244}, i64 0, metadata !262), !dbg !716
  store i8* %call244, i8** %line, align 8, !dbg !716, !tbaa !463
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !718) #5, !dbg !720
  call void @ltrim(i8* %call244) #9, !dbg !721
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !722
  %.pre.i493 = load i8** %line, align 8, !dbg !722, !tbaa !463
  br label %while.cond.i494, !dbg !722

while.cond.i494:                                  ; preds = %while.body.i496, %if.then246
  %61 = phi i8* [ %incdec.ptr.i495, %while.body.i496 ], [ %.pre.i493, %if.then246 ]
  %62 = load i8* %61, align 1, !dbg !722, !tbaa !464
  switch i8 %62, label %while.body.i496 [
    i8 32, label %skipstr.exit497
    i8 0, label %skipstr.exit497
  ], !dbg !722

while.body.i496:                                  ; preds = %while.cond.i494
  %incdec.ptr.i495 = getelementptr inbounds i8* %61, i64 1, !dbg !723
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i495}, i64 0, metadata !262), !dbg !723
  store i8* %incdec.ptr.i495, i8** %line, align 8, !dbg !723, !tbaa !463
  br label %while.cond.i494, !dbg !723

skipstr.exit497:                                  ; preds = %while.cond.i494, %while.cond.i494
  %63 = load float** %axis_y, align 8, !dbg !724, !tbaa !463
  %cmp249 = icmp eq float* %63, null, !dbg !724
  br i1 %cmp249, label %if.then251, label %while.cond256.preheader, !dbg !724

if.then251:                                       ; preds = %skipstr.exit497
  %64 = load i32* %ny, align 4, !dbg !725, !tbaa !507
  %call253 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 373, i32 %64, i32 4) #9, !dbg !725
  %65 = bitcast i8* %call253 to float*, !dbg !725
  store float* %65, float** %axis_y, align 8, !dbg !725, !tbaa !463
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !726
  %.pre = load i8** %line, align 8, !dbg !726, !tbaa !463
  br label %while.cond256.preheader, !dbg !725

while.cond256.preheader:                          ; preds = %if.then251, %skipstr.exit497
  %66 = phi i8* [ %.pre, %if.then251 ], [ %61, %skipstr.exit497 ]
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !726
  %call257520 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %66, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %u) #9, !dbg !726
  %cmp258521 = icmp eq i32 %call257520, 1, !dbg !726
  br i1 %cmp258521, label %while.body260.lr.ph, label %do.cond, !dbg !726

while.body260.lr.ph:                              ; preds = %while.cond256.preheader
  %67 = sext i32 %n_axis_y.0 to i64
  br label %while.body260, !dbg !726

while.cond256.loopexit:                           ; preds = %while.cond.i499, %while.cond.i499
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !726
  %call257 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %73, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %u) #9, !dbg !726
  %cmp258 = icmp eq i32 %call257, 1, !dbg !726
  br i1 %cmp258, label %while.body260, label %do.cond, !dbg !726

while.body260:                                    ; preds = %while.body260.lr.ph, %while.cond256.loopexit
  %indvars.iv540 = phi i64 [ %67, %while.body260.lr.ph ], [ %indvars.iv.next541, %while.cond256.loopexit ]
  %n_axis_y.1522 = phi i32 [ %n_axis_y.0, %while.body260.lr.ph ], [ %inc270, %while.cond256.loopexit ]
  %68 = load i32* %ny, align 4, !dbg !727, !tbaa !507
  %69 = trunc i64 %indvars.iv540 to i32, !dbg !727
  %cmp262 = icmp slt i32 %69, %68, !dbg !727
  br i1 %cmp262, label %if.end265, label %if.then264, !dbg !727

if.then264:                                       ; preds = %while.body260
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str39, i64 0, i64 0)) #9, !dbg !729
  br label %if.end265, !dbg !729

if.end265:                                        ; preds = %while.body260, %if.then264
  call void @llvm.dbg.value(metadata !{double* %u}, i64 0, metadata !276), !dbg !730
  %70 = load double* %u, align 8, !dbg !730, !tbaa !518
  %conv266 = fptrunc double %70 to float, !dbg !730
  %71 = load float** %axis_y, align 8, !dbg !730, !tbaa !463
  %arrayidx269 = getelementptr inbounds float* %71, i64 %indvars.iv540, !dbg !730
  store float %conv266, float* %arrayidx269, align 4, !dbg !730, !tbaa !519
  %indvars.iv.next541 = add i64 %indvars.iv540, 1, !dbg !726
  %inc270 = add nsw i32 %n_axis_y.1522, 1, !dbg !731
  call void @llvm.dbg.value(metadata !{i32 %inc270}, i64 0, metadata !270), !dbg !731
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !732) #5, !dbg !734
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !735
  %72 = load i8** %line, align 8, !dbg !735, !tbaa !463
  call void @ltrim(i8* %72) #9, !dbg !735
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !736
  %.pre.i498 = load i8** %line, align 8, !dbg !736, !tbaa !463
  br label %while.cond.i499, !dbg !736

while.cond.i499:                                  ; preds = %while.body.i501, %if.end265
  %73 = phi i8* [ %incdec.ptr.i500, %while.body.i501 ], [ %.pre.i498, %if.end265 ]
  %74 = load i8* %73, align 1, !dbg !736, !tbaa !464
  switch i8 %74, label %while.body.i501 [
    i8 32, label %while.cond256.loopexit
    i8 0, label %while.cond256.loopexit
  ], !dbg !736

while.body.i501:                                  ; preds = %while.cond.i499
  %incdec.ptr.i500 = getelementptr inbounds i8* %73, i64 1, !dbg !737
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i500}, i64 0, metadata !262), !dbg !737
  store i8* %incdec.ptr.i500, i8** %line, align 8, !dbg !737, !tbaa !463
  br label %while.cond.i499, !dbg !737

do.cond:                                          ; preds = %while.cond256.preheader, %while.cond256.loopexit, %while.cond227.preheader, %while.cond227.loopexit, %if.else243
  %n_axis_x.2 = phi i32 [ %n_axis_x.0, %if.else243 ], [ %n_axis_x.0, %while.cond227.preheader ], [ %inc241, %while.cond227.loopexit ], [ %n_axis_x.0, %while.cond256.loopexit ], [ %n_axis_x.0, %while.cond256.preheader ]
  %n_axis_y.2 = phi i32 [ %n_axis_y.0, %if.else243 ], [ %n_axis_y.0, %while.cond227.preheader ], [ %n_axis_y.0, %while.cond227.loopexit ], [ %inc270, %while.cond256.loopexit ], [ %n_axis_y.0, %while.cond256.preheader ]
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !738
  %75 = load i8** %line, align 8, !dbg !738, !tbaa !463
  %76 = load i8* %75, align 1, !dbg !738, !tbaa !464
  %cmp276 = icmp eq i8 %76, 34, !dbg !738
  br i1 %cmp276, label %do.end, label %land.rhs278, !dbg !738

land.rhs278:                                      ; preds = %do.cond
  %call279 = call i8* @fgetline(i8** %line, i32 %llmax.0.ph532, %struct._IO_FILE* %in) #10, !dbg !739
  %tobool280 = icmp eq i8* %call279, null, !dbg !739
  br i1 %tobool280, label %do.end, label %do.body

do.end:                                           ; preds = %land.rhs278, %do.cond
  %77 = load i32* %nx, align 4, !dbg !740, !tbaa !507
  %call283 = call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str40, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 385, i32 %77, i32 8) #9, !dbg !740
  %78 = bitcast i8* %call283 to i16**, !dbg !740
  store i16** %78, i16*** %matrix, align 8, !dbg !740, !tbaa !463
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !265), !dbg !741
  %79 = load i32* %nx, align 4, !dbg !741, !tbaa !507
  %cmp286511 = icmp sgt i32 %79, 0, !dbg !741
  %80 = load i32* %ny, align 4, !dbg !743, !tbaa !507
  br i1 %cmp286511, label %for.body, label %for.end, !dbg !741

for.body:                                         ; preds = %do.end, %for.body
  %indvars.iv536 = phi i64 [ %indvars.iv.next537, %for.body ], [ 0, %do.end ]
  %81 = phi i32 [ %86, %for.body ], [ %80, %do.end ]
  %call289 = call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str41, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 387, i32 %81, i32 2) #9, !dbg !743
  %82 = bitcast i8* %call289 to i16*, !dbg !743
  %83 = load i16*** %matrix, align 8, !dbg !743, !tbaa !463
  %arrayidx292 = getelementptr inbounds i16** %83, i64 %indvars.iv536, !dbg !743
  store i16* %82, i16** %arrayidx292, align 8, !dbg !743, !tbaa !463
  %indvars.iv.next537 = add i64 %indvars.iv536, 1, !dbg !741
  %84 = load i32* %nx, align 4, !dbg !741, !tbaa !507
  %85 = trunc i64 %indvars.iv.next537 to i32, !dbg !741
  %cmp286 = icmp slt i32 %85, %84, !dbg !741
  %86 = load i32* %ny, align 4, !dbg !743, !tbaa !507
  br i1 %cmp286, label %for.body, label %for.end, !dbg !741

for.end:                                          ; preds = %for.body, %do.end
  %.lcssa510 = phi i32 [ %80, %do.end ], [ %86, %for.body ]
  %sub = add nsw i32 %.lcssa510, -1, !dbg !744
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !266), !dbg !744
  br label %do.body295, !dbg !745

do.body295:                                       ; preds = %land.rhs365.do.body295_crit_edge, %for.end
  %87 = phi i32 [ %.lcssa510, %for.end ], [ %.pre551, %land.rhs365.do.body295_crit_edge ]
  %m.1 = phi i32 [ %sub, %for.end ], [ %m.2, %land.rhs365.do.body295_crit_edge ]
  %div297 = sdiv i32 %87, 100, !dbg !746
  %add298 = add nsw i32 %div297, 1, !dbg !746
  %rem = srem i32 %m.1, %add298, !dbg !746
  %cmp299 = icmp eq i32 %rem, 0, !dbg !746
  br i1 %cmp299, label %if.then301, label %while.cond308.preheader, !dbg !746

if.then301:                                       ; preds = %do.body295
  %88 = load %struct._IO_FILE** @stderr, align 8, !dbg !748, !tbaa !463
  %sub303 = sub nsw i32 %87, %m.1, !dbg !748
  %mul = mul nsw i32 %sub303, 100, !dbg !748
  %div305 = sdiv i32 %mul, %87, !dbg !748
  %call306 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), i32 %div305) #9, !dbg !748
  br label %while.cond308.preheader, !dbg !748

while.cond308.preheader:                          ; preds = %if.then301, %do.body295
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !749
  %89 = load i8** %line, align 8, !dbg !749, !tbaa !463
  %90 = load i8* %89, align 1, !dbg !749, !tbaa !464
  %cmp311503 = icmp eq i8 %90, 34, !dbg !749
  %cmp316504 = icmp ne i8 %90, 0, !dbg !749
  %not.cmp311505 = xor i1 %cmp311503, true, !dbg !749
  %.cmp316506 = and i1 %cmp316504, %not.cmp311505, !dbg !749
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !750
  br i1 %.cmp316506, label %while.body319, label %while.end321

while.body319:                                    ; preds = %while.cond308.preheader, %while.body319
  %91 = phi i8* [ %incdec.ptr320, %while.body319 ], [ %89, %while.cond308.preheader ]
  %incdec.ptr320 = getelementptr inbounds i8* %91, i64 1, !dbg !750
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr320}, i64 0, metadata !262), !dbg !750
  store i8* %incdec.ptr320, i8** %line, align 8, !dbg !750, !tbaa !463
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !749
  %92 = load i8* %incdec.ptr320, align 1, !dbg !749, !tbaa !464
  %cmp311 = icmp eq i8 %92, 34, !dbg !749
  %cmp316 = icmp ne i8 %92, 0, !dbg !749
  %not.cmp311 = xor i1 %cmp311, true, !dbg !749
  %.cmp316 = and i1 %cmp316, %not.cmp311, !dbg !749
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !750
  br i1 %.cmp316, label %while.body319, label %while.end321

while.end321:                                     ; preds = %while.body319, %while.cond308.preheader
  %cmp311.lcssa = phi i1 [ %cmp311503, %while.cond308.preheader ], [ %cmp311, %while.body319 ]
  %.lcssa = phi i8* [ %89, %while.cond308.preheader ], [ %incdec.ptr320, %while.body319 ]
  br i1 %cmp311.lcssa, label %if.else328, label %if.then326, !dbg !751

if.then326:                                       ; preds = %while.end321
  %add327 = add nsw i32 %m.1, 1, !dbg !752
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str43, i64 0, i64 0), i32 %add327) #9, !dbg !752
  br label %do.cond362, !dbg !752

if.else328:                                       ; preds = %while.end321
  %incdec.ptr329 = getelementptr inbounds i8* %.lcssa, i64 1, !dbg !753
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr329}, i64 0, metadata !262), !dbg !753
  store i8* %incdec.ptr329, i8** %line, align 8, !dbg !753, !tbaa !463
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !265), !dbg !755
  %93 = load i32* %nx, align 4, !dbg !755, !tbaa !507
  %cmp332508 = icmp sgt i32 %93, 0, !dbg !755
  br i1 %cmp332508, label %for.body334.lr.ph, label %for.end360, !dbg !755

for.body334.lr.ph:                                ; preds = %if.else328
  %idxprom353 = sext i32 %m.1 to i64, !dbg !757
  call void @llvm.dbg.value(metadata !{i32* %nch}, i64 0, metadata !268), !dbg !759
  %.pre548 = load i32* %nch, align 4, !dbg !759, !tbaa !507
  br label %for.body334, !dbg !755

for.body334:                                      ; preds = %for.body334.lr.ph, %if.end349
  %indvars.iv = phi i64 [ 0, %for.body334.lr.ph ], [ %indvars.iv.next, %if.end349 ]
  call void @llvm.dbg.value(metadata !{i32* %nch}, i64 0, metadata !268), !dbg !759
  %94 = trunc i64 %indvars.iv to i32, !dbg !759
  %mul335 = mul nsw i32 %.pre548, %94, !dbg !759
  %idxprom336 = sext i32 %mul335 to i64, !dbg !759
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !262), !dbg !759
  %incdec.ptr329.sum = add i64 %idxprom336, 1, !dbg !759
  %arrayidx337 = getelementptr inbounds i8* %.lcssa, i64 %incdec.ptr329.sum, !dbg !759
  %95 = load i8* %arrayidx337, align 1, !dbg !759, !tbaa !464
  %cmp339 = icmp eq i32 %.pre548, 1, !dbg !760
  br i1 %cmp339, label %if.end349, label %if.else343, !dbg !760

if.else343:                                       ; preds = %for.body334
  %add345 = add nsw i32 %mul335, 1, !dbg !761
  %idxprom346 = sext i32 %add345 to i64, !dbg !761
  %incdec.ptr329.sum552 = add i64 %idxprom346, 1, !dbg !761
  %arrayidx347 = getelementptr inbounds i8* %.lcssa, i64 %incdec.ptr329.sum552, !dbg !761
  %96 = load i8* %arrayidx347, align 1, !dbg !761, !tbaa !464
  %phitmp = zext i8 %96 to i16
  %phitmp487 = shl nuw i16 %phitmp, 8
  br label %if.end349

if.end349:                                        ; preds = %for.body334, %if.else343
  %c.sroa.1.0 = phi i16 [ %phitmp487, %if.else343 ], [ 0, %for.body334 ]
  %97 = load i32* %nmap, align 4, !dbg !757, !tbaa !507
  %98 = load %struct.t_mapping** %map214, align 8, !dbg !757, !tbaa !463
  %c.sroa.0.0.insert.ext = zext i8 %95 to i16, !dbg !757
  %c.sroa.0.0.insert.insert = or i16 %c.sroa.1.0, %c.sroa.0.0.insert.ext, !dbg !757
  %call352 = call signext i16 @searchcmap(i32 %97, %struct.t_mapping* %98, i16 %c.sroa.0.0.insert.insert) #10, !dbg !757
  %99 = load i16*** %matrix, align 8, !dbg !757, !tbaa !463
  %arrayidx356 = getelementptr inbounds i16** %99, i64 %indvars.iv, !dbg !757
  %100 = load i16** %arrayidx356, align 8, !dbg !757, !tbaa !463
  %arrayidx357 = getelementptr inbounds i16* %100, i64 %idxprom353, !dbg !757
  store i16 %call352, i16* %arrayidx357, align 2, !dbg !757, !tbaa !654
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !755
  %101 = trunc i64 %indvars.iv.next to i32, !dbg !755
  %cmp332 = icmp slt i32 %101, %93, !dbg !755
  br i1 %cmp332, label %for.body334, label %for.end360, !dbg !755

for.end360:                                       ; preds = %if.end349, %if.else328
  %dec = add nsw i32 %m.1, -1, !dbg !762
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !266), !dbg !762
  br label %do.cond362

do.cond362:                                       ; preds = %if.then326, %for.end360
  %m.2 = phi i32 [ %m.1, %if.then326 ], [ %dec, %for.end360 ]
  %cmp363 = icmp sgt i32 %m.2, -1, !dbg !763
  br i1 %cmp363, label %land.rhs365, label %if.end373, !dbg !763

land.rhs365:                                      ; preds = %do.cond362
  %call366 = call i8* @fgetline(i8** %line, i32 %llmax.0.ph532, %struct._IO_FILE* %in) #10, !dbg !764
  %tobool367 = icmp eq i8* %call366, null, !dbg !764
  br i1 %tobool367, label %if.then372, label %land.rhs365.do.body295_crit_edge

land.rhs365.do.body295_crit_edge:                 ; preds = %land.rhs365
  %.pre551 = load i32* %ny, align 4, !dbg !746, !tbaa !507
  br label %do.body295

if.then372:                                       ; preds = %land.rhs365
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([31 x i8]* @.str44, i64 0, i64 0)) #9, !dbg !765
  br label %if.end373, !dbg !765

if.end373:                                        ; preds = %do.cond362, %if.then372
  call void @llvm.lifetime.end(i64 256, i8* %0) #5, !dbg !766
  ret void, !dbg !766
}

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #7

; Function Attrs: nounwind optsize readonly
declare i32 @strcasecmp(i8* nocapture, i8* nocapture) #7

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #8

; Function Attrs: nounwind optsize uwtable
define i32 @read_xpm_matrix(i8* %fnm, %struct.t_matrix** nocapture %matrix) #0 {
entry:
  %line = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{i8* %fnm}, i64 0, metadata !284), !dbg !767
  call void @llvm.dbg.value(metadata !{%struct.t_matrix** %matrix}, i64 0, metadata !285), !dbg !767
  call void @llvm.dbg.declare(metadata !{i8** %line}, metadata !287), !dbg !768
  %call = call %struct._IO_FILE* @ffopen(i8* %fnm, i8* getelementptr inbounds ([2 x i8]* @.str45, i64 0, i64 0)) #9, !dbg !769
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !286), !dbg !769
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !288), !dbg !770
  br label %while.cond.outer, !dbg !771

while.cond.outer:                                 ; preds = %if.then, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.then ], [ 0, %entry ]
  %nmat.0.ph = phi i32 [ %add, %if.then ], [ 0, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %call1 = call i8* @fgetline(i8** %line, i32 4096, %struct._IO_FILE* %call) #10, !dbg !771
  %tobool = icmp eq i8* %call1, null, !dbg !771
  br i1 %tobool, label %while.end, label %while.body, !dbg !771

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata !{i8** %line}, i64 0, metadata !287), !dbg !772
  %0 = load i8** %line, align 8, !dbg !772, !tbaa !463
  %call2 = call i8* @strstr(i8* %0, i8* getelementptr inbounds ([10 x i8]* @.str46, i64 0, i64 0)) #11, !dbg !772
  %tobool3 = icmp eq i8* %call2, null, !dbg !772
  br i1 %tobool3, label %while.cond, label %if.then, !dbg !772

if.then:                                          ; preds = %while.body
  %1 = load %struct.t_matrix** %matrix, align 8, !dbg !774, !tbaa !463
  %2 = bitcast %struct.t_matrix* %1 to i8*, !dbg !774
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !776
  %add = add nsw i32 %nmat.0.ph, 1, !dbg !774
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !774
  %mul = mul i32 %3, 1080, !dbg !774
  %call5 = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str47, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 424, i8* %2, i32 %mul) #9, !dbg !774
  %4 = bitcast i8* %call5 to %struct.t_matrix*, !dbg !774
  store %struct.t_matrix* %4, %struct.t_matrix** %matrix, align 8, !dbg !774, !tbaa !463
  %arrayidx = getelementptr inbounds %struct.t_matrix* %4, i64 %indvars.iv, !dbg !777
  call void @read_xpm_entry(%struct._IO_FILE* %call, %struct.t_matrix* %arrayidx) #10, !dbg !777
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !288), !dbg !778
  br label %while.cond.outer, !dbg !776

while.end:                                        ; preds = %while.cond
  call void @ffclose(%struct._IO_FILE* %call) #9, !dbg !779
  %cmp = icmp eq i32 %nmat.0.ph, 0, !dbg !780
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !780

if.then7:                                         ; preds = %while.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str23, i64 0, i64 0)) #9, !dbg !781
  br label %if.end8, !dbg !781

if.end8:                                          ; preds = %if.then7, %while.end
  ret i32 %nmat.0.ph, !dbg !782
}

; Function Attrs: nounwind optsize uwtable
define float** @matrix2real(%struct.t_matrix* nocapture %matrix, float** %mat) #0 {
entry:
  %tmp = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct.t_matrix* %matrix}, i64 0, metadata !293), !dbg !783
  call void @llvm.dbg.value(metadata !{float** %mat}, i64 0, metadata !294), !dbg !783
  call void @llvm.dbg.declare(metadata !{double* %tmp}, metadata !296), !dbg !784
  %nmap5 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 11, !dbg !785
  %0 = load i32* %nmap5, align 4, !dbg !785, !tbaa !507
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !300), !dbg !785
  %map6 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 12, !dbg !786
  %1 = load %struct.t_mapping** %map6, align 8, !dbg !786, !tbaa !463
  call void @llvm.dbg.value(metadata !{%struct.t_mapping* %1}, i64 0, metadata !295), !dbg !786
  %call = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 446, i32 %0, i32 4) #9, !dbg !787
  %2 = bitcast i8* %call to float*, !dbg !787
  call void @llvm.dbg.value(metadata !{float* %2}, i64 0, metadata !297), !dbg !787
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !298), !dbg !788
  %cmp107 = icmp sgt i32 %0, 0, !dbg !788
  br i1 %cmp107, label %for.body, label %for.end, !dbg !788

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %if.end ], [ 0, %entry ]
  %i.0108 = phi i32 [ %inc, %if.end ], [ 0, %entry ]
  %desc = getelementptr inbounds %struct.t_mapping* %1, i64 %indvars.iv115, i32 1, !dbg !790
  %3 = load i8** %desc, align 8, !dbg !790, !tbaa !463
  %cmp7 = icmp eq i8* %3, null, !dbg !790
  br i1 %cmp7, label %if.then, label %lor.lhs.false, !dbg !790

lor.lhs.false:                                    ; preds = %for.body
  %call11 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([4 x i8]* @.str35, i64 0, i64 0), double* %tmp) #9, !dbg !790
  %cmp12 = icmp eq i32 %call11, 1, !dbg !790
  br i1 %cmp12, label %if.end, label %lor.lhs.false.if.then_crit_edge, !dbg !790

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  %.pre117 = load i8** %desc, align 8, !dbg !792, !tbaa !463
  br label %if.then, !dbg !790

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body
  %4 = phi i8* [ %.pre117, %lor.lhs.false.if.then_crit_edge ], [ null, %for.body ]
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !792, !tbaa !463
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([88 x i8]* @.str49, i64 0, i64 0), i32 %i.0108, i8* %4) #9, !dbg !792
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 453, i8* %call) #9, !dbg !794
  br label %return, !dbg !795

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata !{double* %tmp}, i64 0, metadata !296), !dbg !796
  %6 = load double* %tmp, align 8, !dbg !796, !tbaa !518
  %conv = fptrunc double %6 to float, !dbg !796
  %arrayidx18 = getelementptr inbounds float* %2, i64 %indvars.iv115, !dbg !796
  store float %conv, float* %arrayidx18, align 4, !dbg !796, !tbaa !519
  %indvars.iv.next116 = add i64 %indvars.iv115, 1, !dbg !788
  %inc = add nsw i32 %i.0108, 1, !dbg !788
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !298), !dbg !788
  %7 = trunc i64 %indvars.iv.next116 to i32, !dbg !788
  %cmp = icmp slt i32 %7, %0, !dbg !788
  br i1 %cmp, label %for.body, label %for.end, !dbg !788

for.end:                                          ; preds = %if.end, %entry
  %cmp19 = icmp eq float** %mat, null, !dbg !797
  %nx = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 0, !dbg !798
  %8 = load i32* %nx, align 4, !dbg !798, !tbaa !507
  br i1 %cmp19, label %if.then21, label %if.end34, !dbg !797

if.then21:                                        ; preds = %for.end
  %call22 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str50, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 460, i32 %8, i32 8) #9, !dbg !798
  %9 = bitcast i8* %call22 to float**, !dbg !798
  call void @llvm.dbg.value(metadata !{float** %9}, i64 0, metadata !294), !dbg !798
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !298), !dbg !800
  %10 = load i32* %nx, align 4, !dbg !800, !tbaa !507
  %cmp25104 = icmp sgt i32 %10, 0, !dbg !800
  br i1 %cmp25104, label %for.body27.lr.ph, label %if.end34.thread, !dbg !800

if.end34.thread:                                  ; preds = %if.then21
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !298), !dbg !802
  %nx36118 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 0, !dbg !802
  br label %if.end34.for.end61_crit_edge, !dbg !802

for.body27.lr.ph:                                 ; preds = %if.then21
  %ny = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 1, !dbg !804
  br label %for.body27, !dbg !800

for.body27:                                       ; preds = %for.body27.lr.ph, %for.body27
  %indvars.iv111 = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next112, %for.body27 ]
  %11 = load i32* %ny, align 4, !dbg !804, !tbaa !507
  %call28 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str51, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 462, i32 %11, i32 4) #9, !dbg !804
  %12 = bitcast i8* %call28 to float*, !dbg !804
  %arrayidx30 = getelementptr inbounds float** %9, i64 %indvars.iv111, !dbg !804
  store float* %12, float** %arrayidx30, align 8, !dbg !804, !tbaa !463
  %indvars.iv.next112 = add i64 %indvars.iv111, 1, !dbg !800
  %13 = load i32* %nx, align 4, !dbg !800, !tbaa !507
  %14 = trunc i64 %indvars.iv.next112 to i32, !dbg !800
  %cmp25 = icmp slt i32 %14, %13, !dbg !800
  br i1 %cmp25, label %for.body27, label %if.end34, !dbg !800

if.end34:                                         ; preds = %for.end, %for.body27
  %15 = phi i32 [ %13, %for.body27 ], [ %8, %for.end ]
  %mat.addr.0 = phi float** [ %9, %for.body27 ], [ %mat, %for.end ]
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !298), !dbg !802
  %nx36 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 0, !dbg !802
  %cmp37102 = icmp sgt i32 %15, 0, !dbg !802
  br i1 %cmp37102, label %for.cond40.preheader.lr.ph, label %if.end34.for.end61_crit_edge, !dbg !802

if.end34.for.end61_crit_edge:                     ; preds = %if.end34.thread, %if.end34
  %nx36123 = phi i32* [ %nx36118, %if.end34.thread ], [ %nx36, %if.end34 ]
  %mat.addr.0121 = phi float** [ %9, %if.end34.thread ], [ %mat.addr.0, %if.end34 ]
  %ny63.pre = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 1, !dbg !805
  br label %for.end61, !dbg !802

for.cond40.preheader.lr.ph:                       ; preds = %if.end34
  %ny41 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 1, !dbg !806
  %16 = load i32* %ny41, align 4, !dbg !806, !tbaa !507
  %cmp42100 = icmp sgt i32 %16, 0, !dbg !806
  %matrix47 = getelementptr inbounds %struct.t_matrix* %matrix, i64 0, i32 10, !dbg !808
  br label %for.cond40.preheader, !dbg !802

for.cond40.preheader:                             ; preds = %for.cond40.preheader.lr.ph, %for.inc59
  %indvars.iv109 = phi i64 [ 0, %for.cond40.preheader.lr.ph ], [ %indvars.iv.next110, %for.inc59 ]
  br i1 %cmp42100, label %for.body44.lr.ph, label %for.inc59, !dbg !806

for.body44.lr.ph:                                 ; preds = %for.cond40.preheader
  %17 = load i16*** %matrix47, align 8, !dbg !808, !tbaa !463
  %arrayidx48 = getelementptr inbounds i16** %17, i64 %indvars.iv109, !dbg !808
  %18 = load i16** %arrayidx48, align 8, !dbg !808, !tbaa !463
  %arrayidx54 = getelementptr inbounds float** %mat.addr.0, i64 %indvars.iv109, !dbg !808
  %19 = load float** %arrayidx54, align 8, !dbg !808, !tbaa !463
  br label %for.body44, !dbg !806

for.body44:                                       ; preds = %for.body44.lr.ph, %for.body44
  %indvars.iv = phi i64 [ 0, %for.body44.lr.ph ], [ %indvars.iv.next, %for.body44 ]
  %arrayidx49 = getelementptr inbounds i16* %18, i64 %indvars.iv, !dbg !808
  %20 = load i16* %arrayidx49, align 2, !dbg !808, !tbaa !654
  %idxprom50 = sext i16 %20 to i64, !dbg !808
  %arrayidx51 = getelementptr inbounds float* %2, i64 %idxprom50, !dbg !808
  %21 = load float* %arrayidx51, align 4, !dbg !808, !tbaa !519
  %arrayidx55 = getelementptr inbounds float* %19, i64 %indvars.iv, !dbg !808
  store float %21, float* %arrayidx55, align 4, !dbg !808, !tbaa !519
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !806
  %22 = trunc i64 %indvars.iv.next to i32, !dbg !806
  %cmp42 = icmp slt i32 %22, %16, !dbg !806
  br i1 %cmp42, label %for.body44, label %for.inc59, !dbg !806

for.inc59:                                        ; preds = %for.body44, %for.cond40.preheader
  %indvars.iv.next110 = add i64 %indvars.iv109, 1, !dbg !802
  %23 = trunc i64 %indvars.iv.next110 to i32, !dbg !802
  %cmp37 = icmp slt i32 %23, %15, !dbg !802
  br i1 %cmp37, label %for.cond40.preheader, label %for.end61, !dbg !802

for.end61:                                        ; preds = %for.inc59, %if.end34.for.end61_crit_edge
  %nx36122 = phi i32* [ %nx36123, %if.end34.for.end61_crit_edge ], [ %nx36, %for.inc59 ]
  %mat.addr.0120 = phi float** [ %mat.addr.0121, %if.end34.for.end61_crit_edge ], [ %mat.addr.0, %for.inc59 ]
  %ny63.pre-phi = phi i32* [ %ny63.pre, %if.end34.for.end61_crit_edge ], [ %ny41, %for.inc59 ], !dbg !805
  call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str48, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 468, i8* %call) #9, !dbg !809
  %24 = load %struct._IO_FILE** @stderr, align 8, !dbg !805, !tbaa !463
  %25 = load i32* %nx36122, align 4, !dbg !805, !tbaa !507
  %26 = load i32* %ny63.pre-phi, align 4, !dbg !805, !tbaa !507
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([50 x i8]* @.str52, i64 0, i64 0), i32 %25, i32 %26, i32 %0) #9, !dbg !805
  br label %return, !dbg !810

return:                                           ; preds = %for.end61, %if.then
  %retval.0 = phi float** [ null, %if.then ], [ %mat.addr.0120, %for.end61 ]
  ret float** %retval.0, !dbg !811
}

; Function Attrs: nounwind optsize uwtable
define void @write_xpm_header(%struct._IO_FILE* nocapture %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 %bDiscrete) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !305), !dbg !812
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !306), !dbg !813
  tail call void @llvm.dbg.value(metadata !{i8* %legend}, i64 0, metadata !307), !dbg !813
  tail call void @llvm.dbg.value(metadata !{i8* %label_x}, i64 0, metadata !308), !dbg !813
  tail call void @llvm.dbg.value(metadata !{i8* %label_y}, i64 0, metadata !309), !dbg !813
  tail call void @llvm.dbg.value(metadata !{i32 %bDiscrete}, i64 0, metadata !310), !dbg !814
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str53, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %out), !dbg !815
  %call1 = tail call i8* @Program() #9, !dbg !816
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str54, i64 0, i64 0), i8* %call1) #9, !dbg !816
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([71 x i8]* @.str55, i64 0, i64 0), i64 70, i64 1, %struct._IO_FILE* %out), !dbg !817
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str56, i64 0, i64 0), i8* %title) #9, !dbg !818
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str57, i64 0, i64 0), i8* %legend) #9, !dbg !819
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str58, i64 0, i64 0), i8* %label_x) #9, !dbg !820
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str59, i64 0, i64 0), i8* %label_y) #9, !dbg !821
  %tobool = icmp eq i32 %bDiscrete, 0, !dbg !822
  br i1 %tobool, label %if.else, label %if.then, !dbg !822

if.then:                                          ; preds = %entry
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str60, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %out), !dbg !823
  br label %if.end, !dbg !823

if.else:                                          ; preds = %entry
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str61, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %out), !dbg !824
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !825
}

; Function Attrs: optsize
declare i8* @Program() #2

; Function Attrs: nounwind optsize uwtable
define void @write_xpm_map3(%struct._IO_FILE* nocapture %out, i32 %n_x, i32 %n_y, i32* nocapture %nlevels, float %lo, float %mid, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rmid.coerce0, float %rmid.coerce1, %struct.t_rgb* byval nocapture align 8 %rhi) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !316), !dbg !826
  tail call void @llvm.dbg.value(metadata !{i32 %n_x}, i64 0, metadata !317), !dbg !826
  tail call void @llvm.dbg.value(metadata !{i32 %n_y}, i64 0, metadata !318), !dbg !826
  tail call void @llvm.dbg.value(metadata !{i32* %nlevels}, i64 0, metadata !319), !dbg !826
  tail call void @llvm.dbg.value(metadata !{float %lo}, i64 0, metadata !320), !dbg !827
  tail call void @llvm.dbg.value(metadata !{float %mid}, i64 0, metadata !321), !dbg !827
  tail call void @llvm.dbg.value(metadata !{float %hi}, i64 0, metadata !322), !dbg !827
  tail call void @llvm.dbg.declare(metadata !543, metadata !323), !dbg !828
  tail call void @llvm.dbg.declare(metadata !543, metadata !324), !dbg !828
  tail call void @llvm.dbg.declare(metadata !{%struct.t_rgb* %rhi}, metadata !325), !dbg !828
  %0 = load i32* %nlevels, align 4, !dbg !829, !tbaa !507
  %conv = sext i32 %0 to i64, !dbg !829
  %call = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #11, !dbg !829
  %mul = mul i64 %call, %call, !dbg !829
  %cmp = icmp ugt i64 %conv, %mul, !dbg !829
  br i1 %cmp, label %if.then, label %if.else, !dbg !829

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !830, !tbaa !463
  %conv7 = trunc i64 %mul to i32, !dbg !832
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([56 x i8]* @.str62, i64 0, i64 0), i32 %0, i32 %conv7) #9, !dbg !832
  %call9 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #11, !dbg !833
  %mul11 = mul i64 %call9, %call9, !dbg !833
  %conv12 = trunc i64 %mul11 to i32, !dbg !833
  store i32 %conv12, i32* %nlevels, align 4, !dbg !833, !tbaa !507
  br label %if.end17, !dbg !834

if.else:                                          ; preds = %entry
  %cmp13 = icmp slt i32 %0, 2, !dbg !835
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !835

if.then15:                                        ; preds = %if.else
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !836, !tbaa !463
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str63, i64 0, i64 0), i32 %0) #9, !dbg !836
  store i32 2, i32* %nlevels, align 4, !dbg !838, !tbaa !507
  br label %if.end17, !dbg !839

if.end17:                                         ; preds = %if.else, %if.then15, %if.then
  %cmp18 = fcmp ogt float %mid, %lo, !dbg !840
  %cmp20 = fcmp olt float %mid, %hi, !dbg !840
  %or.cond = and i1 %cmp18, %cmp20, !dbg !840
  br i1 %or.cond, label %if.end26, label %if.then22, !dbg !840

if.then22:                                        ; preds = %if.end17
  %conv23 = fpext float %lo to double, !dbg !841
  %conv24 = fpext float %mid to double, !dbg !841
  %conv25 = fpext float %hi to double, !dbg !841
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([25 x i8]* @.str64, i64 0, i64 0), double %conv23, double %conv24, double %conv25) #9, !dbg !841
  br label %if.end26, !dbg !841

if.end26:                                         ; preds = %if.end17, %if.then22
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str65, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %out), !dbg !842
  %4 = load i32* %nlevels, align 4, !dbg !843, !tbaa !507
  %conv28 = sext i32 %4 to i64, !dbg !843
  %call29 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #11, !dbg !844
  %cmp30 = icmp ule i64 %conv28, %call29, !dbg !844
  %cond = select i1 %cmp30, i32 1, i32 2, !dbg !844
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str66, i64 0, i64 0), i32 %n_x, i32 %n_y, i32 %4, i32 %cond) #9, !dbg !844
  %5 = load i32* %nlevels, align 4, !dbg !845, !tbaa !507
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !846), !dbg !847
  tail call void @llvm.dbg.value(metadata !{float %lo}, i64 0, metadata !848), !dbg !847
  tail call void @llvm.dbg.value(metadata !{float %mid}, i64 0, metadata !849), !dbg !847
  tail call void @llvm.dbg.value(metadata !{float %hi}, i64 0, metadata !850), !dbg !847
  %sub.i = fsub float %mid, %lo, !dbg !851
  %sub1.i = fsub float %hi, %lo, !dbg !851
  %div.i = fdiv float %sub.i, %sub1.i, !dbg !851
  %sub2.i = add nsw i32 %5, -1, !dbg !851
  %conv.i = sitofp i32 %sub2.i to float, !dbg !851
  %mul.i = fmul float %div.i, %conv.i, !dbg !851
  %cmp.i = fcmp olt float %mul.i, 1.000000e+00, !dbg !851
  %cond.i = select i1 %cmp.i, float 1.000000e+00, float %mul.i, !dbg !851
  %cmp12.not.i = fcmp uge float %cond.i, %conv.i, !dbg !851
  %brmerge.i = or i1 %cmp12.not.i, %cmp.i, !dbg !851
  %conv.mux.i = select i1 %cmp12.not.i, float %conv.i, float 1.000000e+00, !dbg !851
  %cond37.i = select i1 %brmerge.i, float %conv.mux.i, float %mul.i, !dbg !851
  %conv38.i = fptosi float %cond37.i to i32, !dbg !851
  tail call void @llvm.dbg.value(metadata !{i32 %conv38.i}, i64 0, metadata !328), !dbg !845
  %conv34 = sitofp i32 %conv38.i to float, !dbg !852
  tail call void @llvm.dbg.value(metadata !{float %conv34}, i64 0, metadata !332), !dbg !852
  %sub = sub nsw i32 %5, %conv38.i, !dbg !853
  %conv35 = sitofp i32 %sub to float, !dbg !853
  tail call void @llvm.dbg.value(metadata !{float %conv35}, i64 0, metadata !333), !dbg !853
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !326), !dbg !854
  %cmp36250 = icmp sgt i32 %conv38.i, 0, !dbg !854
  br i1 %cmp36250, label %for.body.lr.ph, label %for.cond95.preheader, !dbg !854

for.body.lr.ph:                                   ; preds = %if.end26
  %rlo.sroa.0.0.vec.extract = extractelement <2 x float> %rlo.coerce0, i32 0, !dbg !856
  %rmid.sroa.0.0.vec.extract = extractelement <2 x float> %rmid.coerce0, i32 0, !dbg !856
  %sub43 = fsub float %rmid.sroa.0.0.vec.extract, %rlo.sroa.0.0.vec.extract, !dbg !856
  %rlo.sroa.0.4.vec.extract = extractelement <2 x float> %rlo.coerce0, i32 1, !dbg !858
  %rmid.sroa.0.4.vec.extract = extractelement <2 x float> %rmid.coerce0, i32 1, !dbg !858
  %sub49 = fsub float %rmid.sroa.0.4.vec.extract, %rlo.sroa.0.4.vec.extract, !dbg !858
  %sub57 = fsub float %rmid.coerce1, %rlo.coerce1, !dbg !859
  br label %for.body, !dbg !854

for.cond95.preheader:                             ; preds = %cond.end, %if.end26
  %6 = phi i32 [ %5, %if.end26 ], [ %.pre, %cond.end ]
  %cmp96248 = icmp slt i32 %conv38.i, %6, !dbg !860
  br i1 %cmp96248, label %for.body98.lr.ph, label %for.end168, !dbg !860

for.body98.lr.ph:                                 ; preds = %for.cond95.preheader
  %rmid.sroa.0.0.vec.extract204 = extractelement <2 x float> %rmid.coerce0, i32 0, !dbg !862
  %r102 = getelementptr inbounds %struct.t_rgb* %rhi, i64 0, i32 0, !dbg !862
  %7 = load float* %r102, align 8, !dbg !862, !tbaa !519
  %sub104 = fsub float %7, %rmid.sroa.0.0.vec.extract204, !dbg !862
  %rmid.sroa.0.4.vec.extract208 = extractelement <2 x float> %rmid.coerce0, i32 1, !dbg !864
  %g110 = getelementptr inbounds %struct.t_rgb* %rhi, i64 0, i32 1, !dbg !864
  %8 = load float* %g110, align 4, !dbg !864, !tbaa !519
  %sub112 = fsub float %8, %rmid.sroa.0.4.vec.extract208, !dbg !864
  %b118 = getelementptr inbounds %struct.t_rgb* %rhi, i64 0, i32 2, !dbg !865
  %9 = load float* %b118, align 8, !dbg !865, !tbaa !519
  %sub120 = fsub float %9, %rmid.coerce1, !dbg !865
  %10 = sext i32 %conv38.i to i64
  br label %for.body98, !dbg !860

for.body:                                         ; preds = %cond.end, %for.body.lr.ph
  %11 = phi i32 [ %5, %for.body.lr.ph ], [ %.pre, %cond.end ]
  %indvars.iv253 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next254, %cond.end ]
  %12 = trunc i64 %indvars.iv253 to i32, !dbg !866
  %sub38 = sub nsw i32 %conv38.i, %12, !dbg !866
  tail call void @llvm.dbg.value(metadata !{i32 %sub38}, i64 0, metadata !327), !dbg !866
  %conv40 = sitofp i32 %12 to float, !dbg !856
  %mul44 = fmul float %sub43, %conv40, !dbg !856
  %div = fdiv float %mul44, %conv34, !dbg !856
  %add = fadd float %rlo.sroa.0.0.vec.extract, %div, !dbg !856
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !329), !dbg !856
  %mul50 = fmul float %sub49, %conv40, !dbg !858
  %div51 = fdiv float %mul50, %conv34, !dbg !858
  %add52 = fadd float %rlo.sroa.0.4.vec.extract, %div51, !dbg !858
  tail call void @llvm.dbg.value(metadata !{float %add52}, i64 0, metadata !330), !dbg !858
  %mul58 = fmul float %sub57, %conv40, !dbg !859
  %div59 = fdiv float %mul58, %conv34, !dbg !859
  %add60 = fadd float %div59, %rlo.coerce1, !dbg !859
  tail call void @llvm.dbg.value(metadata !{float %add60}, i64 0, metadata !331), !dbg !859
  %call62 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #11, !dbg !867
  %rem = urem i64 %indvars.iv253, %call62, !dbg !867
  %arrayidx = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %rem, !dbg !867
  %13 = load i8* %arrayidx, align 1, !dbg !867, !tbaa !464
  %conv63 = sext i8 %13 to i32, !dbg !867
  %conv64 = sext i32 %11 to i64, !dbg !867
  %cmp66 = icmp ugt i64 %conv64, %call62, !dbg !868
  br i1 %cmp66, label %cond.false, label %cond.end, !dbg !868

cond.false:                                       ; preds = %for.body
  %div70 = udiv i64 %indvars.iv253, %call62, !dbg !868
  %arrayidx71 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %div70, !dbg !868
  %14 = load i8* %arrayidx71, align 1, !dbg !868, !tbaa !464
  %conv72 = sext i8 %14 to i32, !dbg !868
  br label %cond.end, !dbg !868

cond.end:                                         ; preds = %for.body, %cond.false
  %cond73 = phi i32 [ %conv72, %cond.false ], [ 32, %for.body ], !dbg !868
  %mul74 = fmul float %add, 2.550000e+02, !dbg !868
  %conv75 = fpext float %mul74 to double, !dbg !868
  %add76 = fadd double %conv75, 5.000000e-01, !dbg !868
  %conv77 = fptosi double %add76 to i32, !dbg !868
  %mul78 = fmul float %add52, 2.550000e+02, !dbg !868
  %conv79 = fpext float %mul78 to double, !dbg !868
  %add80 = fadd double %conv79, 5.000000e-01, !dbg !868
  %conv81 = fptosi double %add80 to i32, !dbg !868
  %mul82 = fmul float %add60, 2.550000e+02, !dbg !868
  %conv83 = fpext float %mul82 to double, !dbg !868
  %add84 = fadd double %conv83, 5.000000e-01, !dbg !868
  %conv85 = fptosi double %add84 to i32, !dbg !868
  %conv86 = sitofp i32 %sub38 to float, !dbg !868
  %mul87 = fmul float %conv86, %lo, !dbg !868
  %mul89 = fmul float %conv40, %mid, !dbg !868
  %add90 = fadd float %mul89, %mul87, !dbg !868
  %div92 = fdiv float %add90, %conv34, !dbg !868
  %conv93 = fpext float %div92 to double, !dbg !868
  %call94 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([39 x i8]* @.str67, i64 0, i64 0), i32 %conv63, i32 %cond73, i32 %conv77, i32 %conv81, i32 %conv85, double %conv93) #9, !dbg !868
  %indvars.iv.next254 = add i64 %indvars.iv253, 1, !dbg !854
  %lftr.wideiv = trunc i64 %indvars.iv.next254 to i32, !dbg !854
  %exitcond = icmp eq i32 %lftr.wideiv, %conv38.i, !dbg !854
  %.pre = load i32* %nlevels, align 4, !dbg !860, !tbaa !507
  br i1 %exitcond, label %for.cond95.preheader, label %for.body, !dbg !854

for.body98:                                       ; preds = %for.body98.lr.ph, %cond.end142
  %indvars.iv = phi i64 [ %10, %for.body98.lr.ph ], [ %indvars.iv.next, %cond.end142 ]
  %15 = phi i32 [ %6, %for.body98.lr.ph ], [ %20, %cond.end142 ]
  %16 = trunc i64 %indvars.iv to i32, !dbg !869
  %sub99 = sub nsw i32 %15, %16, !dbg !869
  tail call void @llvm.dbg.value(metadata !{i32 %sub99}, i64 0, metadata !327), !dbg !869
  %conv101 = sitofp i32 %16 to float, !dbg !862
  %mul105 = fmul float %conv101, %sub104, !dbg !862
  %div106 = fdiv float %mul105, %conv35, !dbg !862
  %add107 = fadd float %rmid.sroa.0.0.vec.extract204, %div106, !dbg !862
  tail call void @llvm.dbg.value(metadata !{float %add107}, i64 0, metadata !329), !dbg !862
  %mul113 = fmul float %conv101, %sub112, !dbg !864
  %div114 = fdiv float %mul113, %conv35, !dbg !864
  %add115 = fadd float %rmid.sroa.0.4.vec.extract208, %div114, !dbg !864
  tail call void @llvm.dbg.value(metadata !{float %add115}, i64 0, metadata !330), !dbg !864
  %mul121 = fmul float %conv101, %sub120, !dbg !865
  %div122 = fdiv float %mul121, %conv35, !dbg !865
  %add123 = fadd float %div122, %rmid.coerce1, !dbg !865
  tail call void @llvm.dbg.value(metadata !{float %add123}, i64 0, metadata !331), !dbg !865
  %17 = add nsw i64 %indvars.iv, %10, !dbg !870
  %call126 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #11, !dbg !871
  %rem127 = urem i64 %17, %call126, !dbg !871
  %arrayidx128 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %rem127, !dbg !871
  %18 = load i8* %arrayidx128, align 1, !dbg !871, !tbaa !464
  %conv129 = sext i8 %18 to i32, !dbg !871
  %conv130 = sext i32 %15 to i64, !dbg !871
  %cmp132 = icmp ugt i64 %conv130, %call126, !dbg !872
  br i1 %cmp132, label %cond.false135, label %cond.end142, !dbg !872

cond.false135:                                    ; preds = %for.body98
  %div139 = udiv i64 %17, %call126, !dbg !872
  %arrayidx140 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %div139, !dbg !872
  %19 = load i8* %arrayidx140, align 1, !dbg !872, !tbaa !464
  %conv141 = sext i8 %19 to i32, !dbg !872
  br label %cond.end142, !dbg !872

cond.end142:                                      ; preds = %for.body98, %cond.false135
  %cond143 = phi i32 [ %conv141, %cond.false135 ], [ 32, %for.body98 ], !dbg !872
  %mul144 = fmul float %add107, 2.550000e+02, !dbg !872
  %conv145 = fpext float %mul144 to double, !dbg !872
  %add146 = fadd double %conv145, 5.000000e-01, !dbg !872
  %conv147 = fptosi double %add146 to i32, !dbg !872
  %mul148 = fmul float %add115, 2.550000e+02, !dbg !872
  %conv149 = fpext float %mul148 to double, !dbg !872
  %add150 = fadd double %conv149, 5.000000e-01, !dbg !872
  %conv151 = fptosi double %add150 to i32, !dbg !872
  %mul152 = fmul float %add123, 2.550000e+02, !dbg !872
  %conv153 = fpext float %mul152 to double, !dbg !872
  %add154 = fadd double %conv153, 5.000000e-01, !dbg !872
  %conv155 = fptosi double %add154 to i32, !dbg !872
  %conv156 = sitofp i32 %sub99 to float, !dbg !872
  %mul157 = fmul float %conv156, %mid, !dbg !872
  %mul159 = fmul float %conv101, %hi, !dbg !872
  %add160 = fadd float %mul159, %mul157, !dbg !872
  %sub161 = sub nsw i32 %15, %conv38.i, !dbg !872
  %conv162 = sitofp i32 %sub161 to float, !dbg !872
  %div163 = fdiv float %add160, %conv162, !dbg !872
  %conv164 = fpext float %div163 to double, !dbg !872
  %call165 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([39 x i8]* @.str67, i64 0, i64 0), i32 %conv129, i32 %cond143, i32 %conv147, i32 %conv151, i32 %conv155, double %conv164) #9, !dbg !872
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !860
  %20 = load i32* %nlevels, align 4, !dbg !860, !tbaa !507
  %21 = trunc i64 %indvars.iv.next to i32, !dbg !860
  %cmp96 = icmp slt i32 %21, %20, !dbg !860
  br i1 %cmp96, label %for.body98, label %for.end168, !dbg !860

for.end168:                                       ; preds = %cond.end142, %for.cond95.preheader
  ret void, !dbg !873
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: nounwind optsize uwtable
define void @write_xpm_map(%struct._IO_FILE* nocapture %out, i32 %n_x, i32 %n_y, i32* nocapture %nlevels, float %lo, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rhi.coerce0, float %rhi.coerce1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !338), !dbg !874
  tail call void @llvm.dbg.value(metadata !{i32 %n_x}, i64 0, metadata !339), !dbg !874
  tail call void @llvm.dbg.value(metadata !{i32 %n_y}, i64 0, metadata !340), !dbg !874
  tail call void @llvm.dbg.value(metadata !{i32* %nlevels}, i64 0, metadata !341), !dbg !874
  tail call void @llvm.dbg.value(metadata !{float %lo}, i64 0, metadata !342), !dbg !874
  tail call void @llvm.dbg.value(metadata !{float %hi}, i64 0, metadata !343), !dbg !874
  tail call void @llvm.dbg.declare(metadata !543, metadata !344), !dbg !875
  tail call void @llvm.dbg.declare(metadata !543, metadata !345), !dbg !875
  %0 = load i32* %nlevels, align 4, !dbg !876, !tbaa !507
  %conv = sext i32 %0 to i64, !dbg !876
  %call = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #11, !dbg !876
  %mul = mul i64 %call, %call, !dbg !876
  %cmp = icmp ugt i64 %conv, %mul, !dbg !876
  br i1 %cmp, label %if.then, label %if.else, !dbg !876

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !877, !tbaa !463
  %conv7 = trunc i64 %mul to i32, !dbg !879
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([56 x i8]* @.str62, i64 0, i64 0), i32 %0, i32 %conv7) #9, !dbg !879
  %call9 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #11, !dbg !880
  %mul11 = mul i64 %call9, %call9, !dbg !880
  %conv12 = trunc i64 %mul11 to i32, !dbg !880
  store i32 %conv12, i32* %nlevels, align 4, !dbg !880, !tbaa !507
  br label %if.end17, !dbg !881

if.else:                                          ; preds = %entry
  %cmp13 = icmp slt i32 %0, 2, !dbg !882
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !882

if.then15:                                        ; preds = %if.else
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !883, !tbaa !463
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str63, i64 0, i64 0), i32 %0) #9, !dbg !883
  store i32 2, i32* %nlevels, align 4, !dbg !885, !tbaa !507
  br label %if.end17, !dbg !886

if.end17:                                         ; preds = %if.else, %if.then15, %if.then
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str65, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %out), !dbg !887
  %4 = load i32* %nlevels, align 4, !dbg !888, !tbaa !507
  %conv19 = sext i32 %4 to i64, !dbg !888
  %call20 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #11, !dbg !889
  %cmp21 = icmp ule i64 %conv19, %call20, !dbg !889
  %cond = select i1 %cmp21, i32 1, i32 2, !dbg !889
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str66, i64 0, i64 0), i32 %n_x, i32 %n_y, i32 %4, i32 %cond) #9, !dbg !889
  %5 = load i32* %nlevels, align 4, !dbg !890, !tbaa !507
  %sub = add nsw i32 %5, -1, !dbg !890
  %conv24 = sitofp i32 %sub to double, !dbg !890
  %div = fdiv double 1.000000e+00, %conv24, !dbg !890
  %conv25 = fptrunc double %div to float, !dbg !890
  tail call void @llvm.dbg.value(metadata !{float %conv25}, i64 0, metadata !348), !dbg !890
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !346), !dbg !891
  %cmp26117 = icmp sgt i32 %5, 0, !dbg !891
  br i1 %cmp26117, label %for.body.lr.ph, label %for.end, !dbg !891

for.body.lr.ph:                                   ; preds = %if.end17
  %rlo.sroa.0.0.vec.extract = extractelement <2 x float> %rlo.coerce0, i32 0, !dbg !893
  %rhi.sroa.0.0.vec.extract = extractelement <2 x float> %rhi.coerce0, i32 0, !dbg !893
  %rlo.sroa.0.4.vec.extract = extractelement <2 x float> %rlo.coerce0, i32 1, !dbg !895
  %rhi.sroa.0.4.vec.extract = extractelement <2 x float> %rhi.coerce0, i32 1, !dbg !895
  br label %for.body, !dbg !891

for.body:                                         ; preds = %for.body.lr.ph, %cond.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %6 = phi i32 [ %5, %for.body.lr.ph ], [ %10, %cond.end ]
  %7 = trunc i64 %indvars.iv to i32, !dbg !896
  %sub28 = xor i32 %7, -1, !dbg !896
  %sub29 = add i32 %6, %sub28, !dbg !896
  tail call void @llvm.dbg.value(metadata !{i32 %sub29}, i64 0, metadata !347), !dbg !896
  %conv30 = sitofp i32 %sub29 to float, !dbg !893
  %mul32 = fmul float %rlo.sroa.0.0.vec.extract, %conv30, !dbg !893
  %conv33 = sitofp i32 %7 to float, !dbg !893
  %mul35 = fmul float %rhi.sroa.0.0.vec.extract, %conv33, !dbg !893
  %add = fadd float %mul35, %mul32, !dbg !893
  %mul36 = fmul float %conv25, %add, !dbg !893
  tail call void @llvm.dbg.value(metadata !{float %mul36}, i64 0, metadata !349), !dbg !893
  %mul39 = fmul float %rlo.sroa.0.4.vec.extract, %conv30, !dbg !895
  %mul42 = fmul float %rhi.sroa.0.4.vec.extract, %conv33, !dbg !895
  %add43 = fadd float %mul42, %mul39, !dbg !895
  %mul44 = fmul float %conv25, %add43, !dbg !895
  tail call void @llvm.dbg.value(metadata !{float %mul44}, i64 0, metadata !350), !dbg !895
  %mul47 = fmul float %conv30, %rlo.coerce1, !dbg !897
  %mul50 = fmul float %conv33, %rhi.coerce1, !dbg !897
  %add51 = fadd float %mul50, %mul47, !dbg !897
  %mul52 = fmul float %conv25, %add51, !dbg !897
  tail call void @llvm.dbg.value(metadata !{float %mul52}, i64 0, metadata !351), !dbg !897
  %call54 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #11, !dbg !898
  %rem = urem i64 %indvars.iv, %call54, !dbg !898
  %arrayidx = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %rem, !dbg !898
  %8 = load i8* %arrayidx, align 1, !dbg !898, !tbaa !464
  %conv55 = sext i8 %8 to i32, !dbg !898
  %conv56 = sext i32 %6 to i64, !dbg !898
  %cmp58 = icmp ugt i64 %conv56, %call54, !dbg !898
  br i1 %cmp58, label %cond.false, label %cond.end, !dbg !898

cond.false:                                       ; preds = %for.body
  %div62 = udiv i64 %indvars.iv, %call54, !dbg !898
  %arrayidx63 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %div62, !dbg !898
  %9 = load i8* %arrayidx63, align 1, !dbg !898, !tbaa !464
  %conv64 = sext i8 %9 to i32, !dbg !898
  br label %cond.end, !dbg !898

cond.end:                                         ; preds = %for.body, %cond.false
  %cond65 = phi i32 [ %conv64, %cond.false ], [ 32, %for.body ], !dbg !898
  %mul66 = fmul float %mul36, 2.550000e+02, !dbg !898
  %conv67 = fpext float %mul66 to double, !dbg !898
  %add68 = fadd double %conv67, 5.000000e-01, !dbg !898
  %conv69 = fptosi double %add68 to i32, !dbg !898
  %mul70 = fmul float %mul44, 2.550000e+02, !dbg !898
  %conv71 = fpext float %mul70 to double, !dbg !898
  %add72 = fadd double %conv71, 5.000000e-01, !dbg !898
  %conv73 = fptosi double %add72 to i32, !dbg !898
  %mul74 = fmul float %mul52, 2.550000e+02, !dbg !898
  %conv75 = fpext float %mul74 to double, !dbg !898
  %add76 = fadd double %conv75, 5.000000e-01, !dbg !898
  %conv77 = fptosi double %add76 to i32, !dbg !898
  %mul79 = fmul float %conv30, %lo, !dbg !898
  %mul81 = fmul float %conv33, %hi, !dbg !898
  %add82 = fadd float %mul81, %mul79, !dbg !898
  %mul83 = fmul float %conv25, %add82, !dbg !898
  %conv84 = fpext float %mul83 to double, !dbg !898
  %call85 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([39 x i8]* @.str67, i64 0, i64 0), i32 %conv55, i32 %cond65, i32 %conv69, i32 %conv73, i32 %conv77, double %conv84) #9, !dbg !898
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !891
  %10 = load i32* %nlevels, align 4, !dbg !891, !tbaa !507
  %11 = trunc i64 %indvars.iv.next to i32, !dbg !891
  %cmp26 = icmp slt i32 %11, %10, !dbg !891
  br i1 %cmp26, label %for.body, label %for.end, !dbg !891

for.end:                                          ; preds = %cond.end, %if.end17
  ret void, !dbg !899
}

; Function Attrs: nounwind optsize uwtable
define void @write_xpm_axis(%struct._IO_FILE* nocapture %out, i8* %axis, i32 %n, float* %label) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !356), !dbg !900
  tail call void @llvm.dbg.value(metadata !{i8* %axis}, i64 0, metadata !357), !dbg !900
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !358), !dbg !900
  tail call void @llvm.dbg.value(metadata !{float* %label}, i64 0, metadata !359), !dbg !900
  %tobool = icmp eq float* %label, null, !dbg !901
  br i1 %tobool, label %if.end9, label %for.cond.preheader, !dbg !901

for.cond.preheader:                               ; preds = %entry
  %cmp18 = icmp sgt i32 %n, 0, !dbg !902
  br i1 %cmp18, label %for.body, label %for.end, !dbg !902

for.body:                                         ; preds = %for.cond.preheader, %if.end6
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end6 ], [ 0, %for.cond.preheader ]
  %0 = trunc i64 %indvars.iv to i32, !dbg !905
  %rem = srem i32 %0, 80, !dbg !905
  %cmp1 = icmp eq i32 %rem, 0, !dbg !905
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !905

if.then2:                                         ; preds = %for.body
  %tobool3 = icmp eq i32 %0, 0, !dbg !907
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !907

if.then4:                                         ; preds = %if.then2
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %out), !dbg !909
  br label %if.end, !dbg !909

if.end:                                           ; preds = %if.then2, %if.then4
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([14 x i8]* @.str69, i64 0, i64 0), i8* %axis) #9, !dbg !910
  br label %if.end6, !dbg !911

if.end6:                                          ; preds = %if.end, %for.body
  %arrayidx = getelementptr inbounds float* %label, i64 %indvars.iv, !dbg !912
  %2 = load float* %arrayidx, align 4, !dbg !912, !tbaa !519
  %conv = fpext float %2 to double, !dbg !912
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([4 x i8]* @.str70, i64 0, i64 0), double %conv) #9, !dbg !912
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !902
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !902
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !902
  br i1 %exitcond, label %for.end, label %for.body, !dbg !902

for.end:                                          ; preds = %if.end6, %for.cond.preheader
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str68, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %out), !dbg !913
  br label %if.end9, !dbg !914

if.end9:                                          ; preds = %entry, %for.end
  ret void, !dbg !915
}

; Function Attrs: nounwind optsize uwtable
define void @write_xpm_data(%struct._IO_FILE* nocapture %out, i32 %n_x, i32 %n_y, float** nocapture %matrix, float %lo, float %hi, i32 %nlevels) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !365), !dbg !916
  tail call void @llvm.dbg.value(metadata !{i32 %n_x}, i64 0, metadata !366), !dbg !916
  tail call void @llvm.dbg.value(metadata !{i32 %n_y}, i64 0, metadata !367), !dbg !916
  tail call void @llvm.dbg.value(metadata !{float** %matrix}, i64 0, metadata !368), !dbg !916
  tail call void @llvm.dbg.value(metadata !{float %lo}, i64 0, metadata !369), !dbg !917
  tail call void @llvm.dbg.value(metadata !{float %hi}, i64 0, metadata !370), !dbg !917
  tail call void @llvm.dbg.value(metadata !{i32 %nlevels}, i64 0, metadata !371), !dbg !917
  %sub = add nsw i32 %nlevels, -1, !dbg !918
  %conv = sitofp i32 %sub to float, !dbg !918
  %sub1 = fsub float %hi, %lo, !dbg !918
  %div = fdiv float %conv, %sub1, !dbg !918
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !375), !dbg !918
  %cmp82 = icmp sgt i32 %n_y, 0, !dbg !919
  br i1 %cmp82, label %for.body.lr.ph, label %for.end59, !dbg !919

for.body.lr.ph:                                   ; preds = %entry
  %div4 = sdiv i32 %n_y, 100, !dbg !921
  %add = add nsw i32 %div4, 1, !dbg !921
  %cmp1179 = icmp sgt i32 %n_x, 0, !dbg !923
  %conv30 = sext i32 %nlevels to i64, !dbg !925
  %0 = sext i32 %n_y to i64
  br label %for.body, !dbg !919

for.body:                                         ; preds = %for.cond.backedge.thread, %for.body.lr.ph
  %indvars.iv84 = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next85, %for.cond.backedge.thread ]
  %indvars.iv.next85 = add i64 %indvars.iv84, -1, !dbg !919
  %1 = trunc i64 %indvars.iv.next85 to i32, !dbg !921
  %rem = srem i32 %1, %add, !dbg !921
  %cmp5 = icmp eq i32 %rem, 0, !dbg !921
  br i1 %cmp5, label %if.then, label %if.end, !dbg !921

if.then:                                          ; preds = %for.body
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !927, !tbaa !463
  %sub7 = sub nsw i32 %n_y, %1, !dbg !927
  %mul = mul nsw i32 %sub7, 100, !dbg !927
  %div8 = sdiv i32 %mul, %n_y, !dbg !927
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), i32 %div8) #9, !dbg !927
  br label %if.end, !dbg !927

if.end:                                           ; preds = %if.then, %for.body
  %fputc78 = tail call i32 @fputc(i32 34, %struct._IO_FILE* %out), !dbg !928
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !372), !dbg !923
  br i1 %cmp1179, label %for.body13, label %for.end, !dbg !923

for.body13:                                       ; preds = %if.end, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds float** %matrix, i64 %indvars.iv, !dbg !929
  %3 = load float** %arrayidx, align 8, !dbg !929, !tbaa !463
  %arrayidx15 = getelementptr inbounds float* %3, i64 %indvars.iv.next85, !dbg !929
  %4 = load float* %arrayidx15, align 4, !dbg !929, !tbaa !519
  %sub16 = fsub float %4, %lo, !dbg !929
  %mul17 = fmul float %div, %sub16, !dbg !929
  %conv18 = fpext float %mul17 to double, !dbg !929
  %add19 = fadd double %conv18, 5.000000e-01, !dbg !929
  %conv20 = fptosi double %add19 to i32, !dbg !929
  tail call void @llvm.dbg.value(metadata !{i32 %conv20}, i64 0, metadata !374), !dbg !929
  %cmp21 = icmp slt i32 %conv20, 0, !dbg !930
  %.conv20 = select i1 %cmp21, i32 0, i32 %conv20, !dbg !930
  tail call void @llvm.dbg.value(metadata !{i32 %.conv20}, i64 0, metadata !374), !dbg !930
  %cmp25 = icmp slt i32 %.conv20, %nlevels, !dbg !931
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !374), !dbg !931
  %.conv20.sub = select i1 %cmp25, i32 %.conv20, i32 %sub, !dbg !931
  %call31 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #11, !dbg !925
  %cmp32 = icmp ugt i64 %conv30, %call31, !dbg !925
  %idxprom35 = sext i32 %.conv20.sub to i64, !dbg !932
  br i1 %cmp32, label %if.else, label %if.then34, !dbg !925

if.then34:                                        ; preds = %for.body13
  %arrayidx36 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %idxprom35, !dbg !932
  %5 = load i8* %arrayidx36, align 1, !dbg !932, !tbaa !464
  %conv37 = sext i8 %5 to i32, !dbg !932
  %fputc = tail call i32 @fputc(i32 %conv37, %struct._IO_FILE* %out), !dbg !932
  br label %for.inc, !dbg !932

if.else:                                          ; preds = %for.body13
  %rem41 = urem i64 %idxprom35, %call31, !dbg !933
  %arrayidx42 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %rem41, !dbg !933
  %6 = load i8* %arrayidx42, align 1, !dbg !933, !tbaa !464
  %conv43 = sext i8 %6 to i32, !dbg !933
  %div46 = udiv i64 %idxprom35, %call31, !dbg !933
  %arrayidx47 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %div46, !dbg !933
  %7 = load i8* %arrayidx47, align 1, !dbg !933, !tbaa !464
  %conv48 = sext i8 %7 to i32, !dbg !933
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i32 %conv43, i32 %conv48) #9, !dbg !933
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !923
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !923
  %exitcond = icmp eq i32 %lftr.wideiv, %n_x, !dbg !923
  br i1 %exitcond, label %for.end, label %for.body13, !dbg !923

for.end:                                          ; preds = %for.inc, %if.end
  %cmp51 = icmp sgt i32 %1, 0, !dbg !934
  br i1 %cmp51, label %for.cond.backedge.thread, label %for.cond.for.end59_crit_edge, !dbg !934

for.cond.backedge.thread:                         ; preds = %for.end
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str74, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %out), !dbg !935
  br label %for.body, !dbg !919

for.cond.for.end59_crit_edge:                     ; preds = %for.end
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %out), !dbg !936
  br label %for.end59, !dbg !919

for.end59:                                        ; preds = %for.cond.for.end59_crit_edge, %entry
  ret void, !dbg !937
}

; Function Attrs: nounwind optsize uwtable
define void @write_xpm_data3(%struct._IO_FILE* nocapture %out, i32 %n_x, i32 %n_y, float** nocapture %matrix, float %lo, float %mid, float %hi, i32 %nlevels) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !380), !dbg !938
  tail call void @llvm.dbg.value(metadata !{i32 %n_x}, i64 0, metadata !381), !dbg !938
  tail call void @llvm.dbg.value(metadata !{i32 %n_y}, i64 0, metadata !382), !dbg !938
  tail call void @llvm.dbg.value(metadata !{float** %matrix}, i64 0, metadata !383), !dbg !938
  tail call void @llvm.dbg.value(metadata !{float %lo}, i64 0, metadata !384), !dbg !939
  tail call void @llvm.dbg.value(metadata !{float %mid}, i64 0, metadata !385), !dbg !939
  tail call void @llvm.dbg.value(metadata !{float %hi}, i64 0, metadata !386), !dbg !939
  tail call void @llvm.dbg.value(metadata !{i32 %nlevels}, i64 0, metadata !387), !dbg !939
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !390), !dbg !940
  tail call void @llvm.dbg.value(metadata !{i32 %nlevels}, i64 0, metadata !941), !dbg !943
  tail call void @llvm.dbg.value(metadata !{float %lo}, i64 0, metadata !944), !dbg !943
  tail call void @llvm.dbg.value(metadata !{float %mid}, i64 0, metadata !945), !dbg !943
  tail call void @llvm.dbg.value(metadata !{float %hi}, i64 0, metadata !946), !dbg !943
  %sub.i = fsub float %mid, %lo, !dbg !947
  %sub1.i = fsub float %hi, %lo, !dbg !947
  %div.i = fdiv float %sub.i, %sub1.i, !dbg !947
  %sub2.i = add nsw i32 %nlevels, -1, !dbg !947
  %conv.i = sitofp i32 %sub2.i to float, !dbg !947
  %mul.i = fmul float %conv.i, %div.i, !dbg !947
  %cmp.i = fcmp olt float %mul.i, 1.000000e+00, !dbg !947
  %cond.i = select i1 %cmp.i, float 1.000000e+00, float %mul.i, !dbg !947
  %cmp12.not.i = fcmp uge float %cond.i, %conv.i, !dbg !947
  %brmerge.i = or i1 %cmp12.not.i, %cmp.i, !dbg !947
  %conv.mux.i = select i1 %cmp12.not.i, float %conv.i, float 1.000000e+00, !dbg !947
  %cond37.i = select i1 %brmerge.i, float %conv.mux.i, float %mul.i, !dbg !947
  %conv38.i = fptosi float %cond37.i to i32, !dbg !947
  tail call void @llvm.dbg.value(metadata !{i32 %conv38.i}, i64 0, metadata !391), !dbg !942
  %sub = sub nsw i32 %nlevels, %conv38.i, !dbg !948
  %conv = sitofp i32 %sub to float, !dbg !948
  %sub1 = fsub float %hi, %mid, !dbg !948
  %div = fdiv float %conv, %sub1, !dbg !948
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !393), !dbg !948
  %conv2 = sitofp i32 %conv38.i to float, !dbg !949
  %div4 = fdiv float %conv2, %sub.i, !dbg !949
  tail call void @llvm.dbg.value(metadata !{float %div4}, i64 0, metadata !392), !dbg !949
  %cmp122 = icmp sgt i32 %n_y, 0, !dbg !950
  br i1 %cmp122, label %for.body.lr.ph, label %for.end83, !dbg !950

for.body.lr.ph:                                   ; preds = %entry
  %div7 = sdiv i32 %n_y, 100, !dbg !952
  %add = add nsw i32 %div7, 1, !dbg !952
  %cmp15118 = icmp sgt i32 %n_x, 0, !dbg !954
  %conv53 = sext i32 %nlevels to i64, !dbg !956
  %0 = sext i32 %n_y to i64
  br label %for.body, !dbg !950

for.body:                                         ; preds = %for.cond.backedge.thread, %for.body.lr.ph
  %indvars.iv125 = phi i64 [ %0, %for.body.lr.ph ], [ %indvars.iv.next126, %for.cond.backedge.thread ]
  %c.0123 = phi i32 [ 0, %for.body.lr.ph ], [ %c.1.lcssa, %for.cond.backedge.thread ]
  %indvars.iv.next126 = add i64 %indvars.iv125, -1, !dbg !950
  %1 = trunc i64 %indvars.iv.next126 to i32, !dbg !952
  %rem = srem i32 %1, %add, !dbg !952
  %cmp8 = icmp eq i32 %rem, 0, !dbg !952
  br i1 %cmp8, label %if.then, label %if.end, !dbg !952

if.then:                                          ; preds = %for.body
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !958, !tbaa !463
  %sub10 = sub nsw i32 %n_y, %1, !dbg !958
  %mul = mul nsw i32 %sub10, 100, !dbg !958
  %div11 = sdiv i32 %mul, %n_y, !dbg !958
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), i32 %div11) #9, !dbg !958
  br label %if.end, !dbg !958

if.end:                                           ; preds = %if.then, %for.body
  %fputc117 = tail call i32 @fputc(i32 34, %struct._IO_FILE* %out), !dbg !959
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !388), !dbg !954
  br i1 %cmp15118, label %for.body17, label %for.end, !dbg !954

for.body17:                                       ; preds = %if.end, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ]
  %c.1119 = phi i32 [ %c.4, %for.inc ], [ %c.0123, %if.end ]
  %conv18 = sitofp i32 %c.1119 to float, !dbg !960
  %cmp19 = fcmp ult float %conv18, %mid, !dbg !960
  br i1 %cmp19, label %if.else, label %if.then21, !dbg !960

if.then21:                                        ; preds = %for.body17
  %arrayidx = getelementptr inbounds float** %matrix, i64 %indvars.iv, !dbg !961
  %3 = load float** %arrayidx, align 8, !dbg !961, !tbaa !463
  %arrayidx23 = getelementptr inbounds float* %3, i64 %indvars.iv.next126, !dbg !961
  %4 = load float* %arrayidx23, align 4, !dbg !961, !tbaa !519
  %sub24 = fsub float %4, %mid, !dbg !961
  %mul25 = fmul float %div, %sub24, !dbg !961
  %conv26 = fpext float %mul25 to double, !dbg !961
  %add27 = fadd double %conv26, 5.000000e-01, !dbg !961
  %conv28 = fptosi double %add27 to i32, !dbg !961
  tail call void @llvm.dbg.value(metadata !{i32 %conv28}, i64 0, metadata !390), !dbg !961
  br label %if.end43, !dbg !961

if.else:                                          ; preds = %for.body17
  %cmp30 = fcmp ult float %conv18, %lo, !dbg !962
  br i1 %cmp30, label %if.end43, label %if.then32, !dbg !962

if.then32:                                        ; preds = %if.else
  %arrayidx35 = getelementptr inbounds float** %matrix, i64 %indvars.iv, !dbg !963
  %5 = load float** %arrayidx35, align 8, !dbg !963, !tbaa !463
  %arrayidx36 = getelementptr inbounds float* %5, i64 %indvars.iv.next126, !dbg !963
  %6 = load float* %arrayidx36, align 4, !dbg !963, !tbaa !519
  %sub37 = fsub float %6, %lo, !dbg !963
  %mul38 = fmul float %div4, %sub37, !dbg !963
  %conv39 = fpext float %mul38 to double, !dbg !963
  %add40 = fadd double %conv39, 5.000000e-01, !dbg !963
  %conv41 = fptosi double %add40 to i32, !dbg !963
  tail call void @llvm.dbg.value(metadata !{i32 %conv41}, i64 0, metadata !390), !dbg !963
  br label %if.end43, !dbg !963

if.end43:                                         ; preds = %if.else, %if.then32, %if.then21
  %c.2 = phi i32 [ %conv28, %if.then21 ], [ %conv41, %if.then32 ], [ %c.1119, %if.else ]
  %cmp44 = icmp slt i32 %c.2, 0, !dbg !964
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !390), !dbg !965
  %.c.2 = select i1 %cmp44, i32 0, i32 %c.2, !dbg !964
  %cmp48 = icmp slt i32 %.c.2, %nlevels, !dbg !966
  tail call void @llvm.dbg.value(metadata !{i32 %sub2.i}, i64 0, metadata !390), !dbg !967
  %c.4 = select i1 %cmp48, i32 %.c.2, i32 %sub2.i, !dbg !966
  %call54 = tail call i64 @strlen(i8* getelementptr inbounds ([89 x i8]* @mapper, i64 0, i64 0)) #11, !dbg !956
  %cmp55 = icmp ugt i64 %conv53, %call54, !dbg !956
  %idxprom58 = sext i32 %c.4 to i64, !dbg !968
  br i1 %cmp55, label %if.else62, label %if.then57, !dbg !956

if.then57:                                        ; preds = %if.end43
  %arrayidx59 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %idxprom58, !dbg !968
  %7 = load i8* %arrayidx59, align 1, !dbg !968, !tbaa !464
  %conv60 = sext i8 %7 to i32, !dbg !968
  %fputc = tail call i32 @fputc(i32 %conv60, %struct._IO_FILE* %out), !dbg !968
  br label %for.inc, !dbg !968

if.else62:                                        ; preds = %if.end43
  %rem65 = urem i64 %idxprom58, %call54, !dbg !969
  %arrayidx66 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %rem65, !dbg !969
  %8 = load i8* %arrayidx66, align 1, !dbg !969, !tbaa !464
  %conv67 = sext i8 %8 to i32, !dbg !969
  %div70 = udiv i64 %idxprom58, %call54, !dbg !969
  %arrayidx71 = getelementptr inbounds [89 x i8]* @mapper, i64 0, i64 %div70, !dbg !969
  %9 = load i8* %arrayidx71, align 1, !dbg !969, !tbaa !464
  %conv72 = sext i8 %9 to i32, !dbg !969
  %call73 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i32 %conv67, i32 %conv72) #9, !dbg !969
  br label %for.inc

for.inc:                                          ; preds = %if.then57, %if.else62
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !954
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !954
  %exitcond = icmp eq i32 %lftr.wideiv, %n_x, !dbg !954
  br i1 %exitcond, label %for.end, label %for.body17, !dbg !954

for.end:                                          ; preds = %for.inc, %if.end
  %c.1.lcssa = phi i32 [ %c.0123, %if.end ], [ %c.4, %for.inc ]
  %cmp75 = icmp sgt i32 %1, 0, !dbg !970
  br i1 %cmp75, label %for.cond.backedge.thread, label %for.cond.for.end83_crit_edge, !dbg !970

for.cond.backedge.thread:                         ; preds = %for.end
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str74, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %out), !dbg !971
  br label %for.body, !dbg !950

for.cond.for.end83_crit_edge:                     ; preds = %for.end
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %out), !dbg !972
  br label %for.end83, !dbg !950

for.end83:                                        ; preds = %for.cond.for.end83_crit_edge, %entry
  ret void, !dbg !973
}

; Function Attrs: nounwind optsize uwtable
define void @write_xpm_m(%struct._IO_FILE* nocapture %out, %struct.t_matrix* byval align 8 %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !398), !dbg !974
  tail call void @llvm.dbg.declare(metadata !{%struct.t_matrix* %m}, metadata !399), !dbg !974
  tail call void @llvm.dbg.declare(metadata !486, metadata !403), !dbg !975
  %map = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 12, !dbg !976
  %0 = load %struct.t_mapping** %map, align 8, !dbg !976, !tbaa !463
  %c2 = getelementptr inbounds %struct.t_mapping* %0, i64 0, i32 0, i32 1, !dbg !976
  %1 = load i8* %c2, align 1, !dbg !976, !tbaa !464
  %cmp = icmp eq i8 %1, 0, !dbg !976
  %arraydecay = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 3, i64 0, !dbg !977
  %arraydecay2 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 4, i64 0, !dbg !977
  %arraydecay3 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 5, i64 0, !dbg !977
  %arraydecay4 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 6, i64 0, !dbg !977
  %bDiscrete = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 7, !dbg !977
  %2 = load i32* %bDiscrete, align 4, !dbg !977, !tbaa !507
  tail call void @write_xpm_header(%struct._IO_FILE* %out, i8* %arraydecay, i8* %arraydecay2, i8* %arraydecay3, i8* %arraydecay4, i32 %2) #10, !dbg !977
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str65, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %out), !dbg !978
  %nx = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 0, !dbg !979
  %4 = bitcast %struct.t_matrix* %m to i64*, !dbg !979
  %5 = load i64* %4, align 8, !dbg !979
  %6 = trunc i64 %5 to i32, !dbg !979
  %ny = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 1, !dbg !979
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i32
  %nmap = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 11, !dbg !979
  %9 = load i32* %nmap, align 8, !dbg !979, !tbaa !507
  %cond = select i1 %cmp, i32 1, i32 2, !dbg !979
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str66, i64 0, i64 0), i32 %6, i32 %8, i32 %9, i32 %cond) #9, !dbg !979
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !400), !dbg !980
  %10 = load i32* %nmap, align 8, !dbg !980, !tbaa !507
  %cmp7155 = icmp sgt i32 %10, 0, !dbg !980
  br i1 %cmp7155, label %for.body, label %for.end, !dbg !980

for.body:                                         ; preds = %entry, %cond.end
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %cond.end ], [ 0, %entry ]
  %11 = load %struct.t_mapping** %map, align 8, !dbg !982, !tbaa !463
  %c1 = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv161, i32 0, i32 0, !dbg !982
  %12 = load i8* %c1, align 1, !dbg !982, !tbaa !464
  %conv12 = sext i8 %12 to i32, !dbg !982
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !982

cond.false:                                       ; preds = %for.body
  %c218 = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv161, i32 0, i32 1, !dbg !982
  %13 = load i8* %c218, align 1, !dbg !982, !tbaa !464
  %conv19 = sext i8 %13 to i32, !dbg !982
  br label %cond.end, !dbg !982

cond.end:                                         ; preds = %for.body, %cond.false
  %cond20 = phi i32 [ %conv19, %cond.false ], [ 32, %for.body ], !dbg !982
  %r = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv161, i32 2, i32 0, !dbg !982
  %14 = load float* %r, align 4, !dbg !982, !tbaa !519
  %mul = fmul float %14, 2.550000e+02, !dbg !982
  %conv24 = fpext float %mul to double, !dbg !982
  %add = fadd double %conv24, 5.000000e-01, !dbg !982
  %conv25 = fptosi double %add to i32, !dbg !982
  %g = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv161, i32 2, i32 1, !dbg !982
  %15 = load float* %g, align 4, !dbg !982, !tbaa !519
  %mul30 = fmul float %15, 2.550000e+02, !dbg !982
  %conv31 = fpext float %mul30 to double, !dbg !982
  %add32 = fadd double %conv31, 5.000000e-01, !dbg !982
  %conv33 = fptosi double %add32 to i32, !dbg !982
  %b = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv161, i32 2, i32 2, !dbg !982
  %16 = load float* %b, align 4, !dbg !982, !tbaa !519
  %mul38 = fmul float %16, 2.550000e+02, !dbg !982
  %conv39 = fpext float %mul38 to double, !dbg !982
  %add40 = fadd double %conv39, 5.000000e-01, !dbg !982
  %conv41 = fptosi double %add40 to i32, !dbg !982
  %desc = getelementptr inbounds %struct.t_mapping* %11, i64 %indvars.iv161, i32 1, !dbg !982
  %17 = load i8** %desc, align 8, !dbg !982, !tbaa !463
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([37 x i8]* @.str76, i64 0, i64 0), i32 %conv12, i32 %cond20, i32 %conv25, i32 %conv33, i32 %conv41, i8* %17) #9, !dbg !982
  %indvars.iv.next162 = add i64 %indvars.iv161, 1, !dbg !980
  %18 = load i32* %nmap, align 8, !dbg !980, !tbaa !507
  %19 = trunc i64 %indvars.iv.next162 to i32, !dbg !980
  %cmp7 = icmp slt i32 %19, %18, !dbg !980
  br i1 %cmp7, label %for.body, label %for.end, !dbg !980

for.end:                                          ; preds = %cond.end, %entry
  %20 = load i32* %nx, align 8, !dbg !983, !tbaa !507
  %axis_x = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 8, !dbg !983
  %21 = load float** %axis_x, align 8, !dbg !983, !tbaa !463
  tail call void @write_xpm_axis(%struct._IO_FILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str77, i64 0, i64 0), i32 %20, float* %21) #10, !dbg !983
  %22 = load i32* %ny, align 4, !dbg !984, !tbaa !507
  %axis_y = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 9, !dbg !984
  %23 = load float** %axis_y, align 8, !dbg !984, !tbaa !463
  tail call void @write_xpm_axis(%struct._IO_FILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str78, i64 0, i64 0), i32 %22, float* %23) #10, !dbg !984
  %24 = load i32* %ny, align 4, !dbg !985, !tbaa !507
  %cmp50153 = icmp sgt i32 %24, 0, !dbg !985
  br i1 %cmp50153, label %for.body52.lr.ph, label %for.end116, !dbg !985

for.body52.lr.ph:                                 ; preds = %for.end
  %matrix92 = getelementptr inbounds %struct.t_matrix* %m, i64 0, i32 10, !dbg !987
  %25 = sext i32 %24 to i64
  br label %for.body52, !dbg !985

for.body52:                                       ; preds = %for.cond49.backedge.for.body52_crit_edge, %for.body52.lr.ph
  %26 = phi i32 [ %24, %for.body52.lr.ph ], [ %.pre, %for.cond49.backedge.for.body52_crit_edge ]
  %indvars.iv159 = phi i64 [ %25, %for.body52.lr.ph ], [ %indvars.iv.next160, %for.cond49.backedge.for.body52_crit_edge ]
  %indvars.iv.next160 = add i64 %indvars.iv159, -1, !dbg !985
  %div = sdiv i32 %26, 100, !dbg !991
  %add54 = add nsw i32 %div, 1, !dbg !991
  %27 = trunc i64 %indvars.iv.next160 to i32, !dbg !991
  %rem = srem i32 %27, %add54, !dbg !991
  %cmp55 = icmp eq i32 %rem, 0, !dbg !991
  br i1 %cmp55, label %if.then, label %if.end, !dbg !991

if.then:                                          ; preds = %for.body52
  %28 = load %struct._IO_FILE** @stderr, align 8, !dbg !992, !tbaa !463
  %sub58 = sub nsw i32 %26, %27, !dbg !992
  %mul59 = mul nsw i32 %sub58, 100, !dbg !992
  %div61 = sdiv i32 %mul59, %26, !dbg !992
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([10 x i8]* @.str42, i64 0, i64 0), i32 %div61) #9, !dbg !992
  br label %if.end, !dbg !992

if.end:                                           ; preds = %if.then, %for.body52
  %fputc146 = tail call i32 @fputc(i32 34, %struct._IO_FILE* %out), !dbg !993
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !400), !dbg !994
  %29 = load i32* %nx, align 8, !dbg !994, !tbaa !507
  %cmp68150 = icmp sgt i32 %29, 0, !dbg !994
  br i1 %cmp, label %for.cond66.preheader, label %for.cond85.preheader, !dbg !996

for.cond66.preheader:                             ; preds = %if.end
  br i1 %cmp68150, label %for.body70, label %if.end107, !dbg !994

for.cond85.preheader:                             ; preds = %if.end
  br i1 %cmp68150, label %for.body89, label %if.end107, !dbg !997

for.body70:                                       ; preds = %for.cond66.preheader, %for.body70
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %for.body70 ], [ 0, %for.cond66.preheader ]
  %30 = load i16*** %matrix92, align 8, !dbg !998, !tbaa !463
  %arrayidx73 = getelementptr inbounds i16** %30, i64 %indvars.iv157, !dbg !998
  %31 = load i16** %arrayidx73, align 8, !dbg !998, !tbaa !463
  %arrayidx74 = getelementptr inbounds i16* %31, i64 %indvars.iv.next160, !dbg !998
  %32 = load i16* %arrayidx74, align 2, !dbg !998, !tbaa !654
  %idxprom75 = sext i16 %32 to i64, !dbg !998
  %33 = load %struct.t_mapping** %map, align 8, !dbg !998, !tbaa !463
  %c179 = getelementptr inbounds %struct.t_mapping* %33, i64 %idxprom75, i32 0, i32 0, !dbg !998
  %34 = load i8* %c179, align 1, !dbg !998, !tbaa !464
  %conv80 = sext i8 %34 to i32, !dbg !998
  %fputc = tail call i32 @fputc(i32 %conv80, %struct._IO_FILE* %out), !dbg !998
  %indvars.iv.next158 = add i64 %indvars.iv157, 1, !dbg !994
  %35 = load i32* %nx, align 8, !dbg !994, !tbaa !507
  %36 = trunc i64 %indvars.iv.next158 to i32, !dbg !994
  %cmp68 = icmp slt i32 %36, %35, !dbg !994
  br i1 %cmp68, label %for.body70, label %if.end107, !dbg !994

for.body89:                                       ; preds = %for.cond85.preheader, %for.body89
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body89 ], [ 0, %for.cond85.preheader ]
  %37 = load i16*** %matrix92, align 8, !dbg !987, !tbaa !463
  %arrayidx93 = getelementptr inbounds i16** %37, i64 %indvars.iv, !dbg !987
  %38 = load i16** %arrayidx93, align 8, !dbg !987, !tbaa !463
  %arrayidx94 = getelementptr inbounds i16* %38, i64 %indvars.iv.next160, !dbg !987
  %39 = load i16* %arrayidx94, align 2, !dbg !987, !tbaa !654
  %idxprom95 = sext i16 %39 to i64, !dbg !987
  %40 = load %struct.t_mapping** %map, align 8, !dbg !987, !tbaa !463
  %c.sroa.0.0.idx = getelementptr inbounds %struct.t_mapping* %40, i64 %idxprom95, i32 0, i32 0, !dbg !987
  %c.sroa.0.0.copyload = load i8* %c.sroa.0.0.idx, align 1, !dbg !987
  %c.sroa.1.1.idx = getelementptr inbounds %struct.t_mapping* %40, i64 %idxprom95, i32 0, i32 1, !dbg !987
  %c.sroa.1.1.copyload = load i8* %c.sroa.1.1.idx, align 1, !dbg !987
  %conv100 = sext i8 %c.sroa.0.0.copyload to i32, !dbg !999
  %conv102 = sext i8 %c.sroa.1.1.copyload to i32, !dbg !999
  %call103 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i32 %conv100, i32 %conv102) #9, !dbg !999
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !997
  %41 = load i32* %nx, align 8, !dbg !997, !tbaa !507
  %42 = trunc i64 %indvars.iv.next to i32, !dbg !997
  %cmp87 = icmp slt i32 %42, %41, !dbg !997
  br i1 %cmp87, label %for.body89, label %if.end107, !dbg !997

if.end107:                                        ; preds = %for.cond66.preheader, %for.body70, %for.cond85.preheader, %for.body89
  %cmp108 = icmp sgt i32 %27, 0, !dbg !1000
  br i1 %cmp108, label %for.cond49.backedge.for.body52_crit_edge, label %for.cond49.for.end116_crit_edge, !dbg !1000

for.cond49.backedge.for.body52_crit_edge:         ; preds = %if.end107
  %43 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str74, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %out), !dbg !1001
  %.pre = load i32* %ny, align 4, !dbg !991, !tbaa !507
  br label %for.body52, !dbg !985

for.cond49.for.end116_crit_edge:                  ; preds = %if.end107
  %44 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str75, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %out), !dbg !1002
  br label %for.end116, !dbg !985

for.end116:                                       ; preds = %for.cond49.for.end116_crit_edge, %for.end
  ret void, !dbg !1003
}

; Function Attrs: nounwind optsize uwtable
define void @write_xpm3(%struct._IO_FILE* nocapture %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 %n_x, i32 %n_y, float* %axis_x, float* %axis_y, float** nocapture %matrix, float %lo, float %mid, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rmid.coerce0, float %rmid.coerce1, %struct.t_rgb* byval nocapture align 8 %rhi, i32* nocapture %nlevels) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !408), !dbg !1004
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !409), !dbg !1005
  tail call void @llvm.dbg.value(metadata !{i8* %legend}, i64 0, metadata !410), !dbg !1005
  tail call void @llvm.dbg.value(metadata !{i8* %label_x}, i64 0, metadata !411), !dbg !1005
  tail call void @llvm.dbg.value(metadata !{i8* %label_y}, i64 0, metadata !412), !dbg !1005
  tail call void @llvm.dbg.value(metadata !{i32 %n_x}, i64 0, metadata !413), !dbg !1006
  tail call void @llvm.dbg.value(metadata !{i32 %n_y}, i64 0, metadata !414), !dbg !1006
  tail call void @llvm.dbg.value(metadata !{float* %axis_x}, i64 0, metadata !415), !dbg !1006
  tail call void @llvm.dbg.value(metadata !{float* %axis_y}, i64 0, metadata !416), !dbg !1006
  tail call void @llvm.dbg.value(metadata !{float** %matrix}, i64 0, metadata !417), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{float %lo}, i64 0, metadata !418), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{float %mid}, i64 0, metadata !419), !dbg !1007
  tail call void @llvm.dbg.value(metadata !{float %hi}, i64 0, metadata !420), !dbg !1007
  tail call void @llvm.dbg.declare(metadata !543, metadata !421), !dbg !1008
  tail call void @llvm.dbg.declare(metadata !543, metadata !422), !dbg !1008
  tail call void @llvm.dbg.declare(metadata !{%struct.t_rgb* %rhi}, metadata !423), !dbg !1008
  tail call void @llvm.dbg.value(metadata !{i32* %nlevels}, i64 0, metadata !424), !dbg !1008
  %cmp = fcmp ugt float %hi, %lo, !dbg !1009
  br i1 %cmp, label %if.end, label %if.then, !dbg !1009

if.then:                                          ; preds = %entry
  %conv = fpext float %hi to double, !dbg !1010
  %conv2 = fpext float %lo to double, !dbg !1010
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([19 x i8]* @.str79, i64 0, i64 0), double %conv, double %conv2) #9, !dbg !1010
  br label %if.end, !dbg !1010

if.end:                                           ; preds = %entry, %if.then
  tail call void @write_xpm_header(%struct._IO_FILE* %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 0) #10, !dbg !1011
  tail call void @write_xpm_map3(%struct._IO_FILE* %out, i32 %n_x, i32 %n_y, i32* %nlevels, float %lo, float %mid, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rmid.coerce0, float %rmid.coerce1, %struct.t_rgb* byval align 8 %rhi) #10, !dbg !1012
  tail call void @write_xpm_axis(%struct._IO_FILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str77, i64 0, i64 0), i32 %n_x, float* %axis_x) #10, !dbg !1013
  tail call void @write_xpm_axis(%struct._IO_FILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str78, i64 0, i64 0), i32 %n_y, float* %axis_y) #10, !dbg !1014
  %0 = load i32* %nlevels, align 4, !dbg !1015, !tbaa !507
  tail call void @write_xpm_data3(%struct._IO_FILE* %out, i32 %n_x, i32 %n_y, float** %matrix, float %lo, float %mid, float %hi, i32 %0) #10, !dbg !1015
  ret void, !dbg !1016
}

; Function Attrs: nounwind optsize uwtable
define void @write_xpm(%struct._IO_FILE* nocapture %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 %n_x, i32 %n_y, float* %axis_x, float* %axis_y, float** nocapture %matrix, float %lo, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rhi.coerce0, float %rhi.coerce1, i32* nocapture %nlevels) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %out}, i64 0, metadata !429), !dbg !1017
  tail call void @llvm.dbg.value(metadata !{i8* %title}, i64 0, metadata !430), !dbg !1018
  tail call void @llvm.dbg.value(metadata !{i8* %legend}, i64 0, metadata !431), !dbg !1018
  tail call void @llvm.dbg.value(metadata !{i8* %label_x}, i64 0, metadata !432), !dbg !1018
  tail call void @llvm.dbg.value(metadata !{i8* %label_y}, i64 0, metadata !433), !dbg !1018
  tail call void @llvm.dbg.value(metadata !{i32 %n_x}, i64 0, metadata !434), !dbg !1019
  tail call void @llvm.dbg.value(metadata !{i32 %n_y}, i64 0, metadata !435), !dbg !1019
  tail call void @llvm.dbg.value(metadata !{float* %axis_x}, i64 0, metadata !436), !dbg !1019
  tail call void @llvm.dbg.value(metadata !{float* %axis_y}, i64 0, metadata !437), !dbg !1019
  tail call void @llvm.dbg.value(metadata !{float** %matrix}, i64 0, metadata !438), !dbg !1020
  tail call void @llvm.dbg.value(metadata !{float %lo}, i64 0, metadata !439), !dbg !1020
  tail call void @llvm.dbg.value(metadata !{float %hi}, i64 0, metadata !440), !dbg !1020
  tail call void @llvm.dbg.declare(metadata !543, metadata !441), !dbg !1021
  tail call void @llvm.dbg.declare(metadata !543, metadata !442), !dbg !1021
  tail call void @llvm.dbg.value(metadata !{i32* %nlevels}, i64 0, metadata !443), !dbg !1021
  %cmp = fcmp ugt float %hi, %lo, !dbg !1022
  br i1 %cmp, label %if.end, label %if.then, !dbg !1022

if.then:                                          ; preds = %entry
  %conv = fpext float %hi to double, !dbg !1023
  %conv2 = fpext float %lo to double, !dbg !1023
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([19 x i8]* @.str80, i64 0, i64 0), double %conv, double %conv2) #9, !dbg !1023
  br label %if.end, !dbg !1023

if.end:                                           ; preds = %entry, %if.then
  tail call void @write_xpm_header(%struct._IO_FILE* %out, i8* %title, i8* %legend, i8* %label_x, i8* %label_y, i32 0) #10, !dbg !1024
  tail call void @write_xpm_map(%struct._IO_FILE* %out, i32 %n_x, i32 %n_y, i32* %nlevels, float %lo, float %hi, <2 x float> %rlo.coerce0, float %rlo.coerce1, <2 x float> %rhi.coerce0, float %rhi.coerce1) #10, !dbg !1025
  tail call void @write_xpm_axis(%struct._IO_FILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str77, i64 0, i64 0), i32 %n_x, float* %axis_x) #10, !dbg !1026
  tail call void @write_xpm_axis(%struct._IO_FILE* %out, i8* getelementptr inbounds ([2 x i8]* @.str78, i64 0, i64 0), i32 %n_y, float* %axis_y) #10, !dbg !1027
  %0 = load i32* %nlevels, align 4, !dbg !1028, !tbaa !507
  tail call void @write_xpm_data(%struct._IO_FILE* %out, i32 %n_x, i32 %n_y, float** %matrix, float %lo, float %hi, i32 %0) #10, !dbg !1028
  ret void, !dbg !1029
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize readonly }
attributes #12 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !452, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !35, metadata !43, metadata !52, metadata !65, metadata !89, metadata !165, metadata !173, metadata !181, metadata !189, metadata !206, metadata !215, metadata !220, metadata !226, metadata !233, metadata !279, metadata !289, metadata !301, metadata !311, metadata !334, metadata !352, metadata !361, metadata !376, metadata !394, metadata !404, metadata !425, metadata !444}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"mk_matrix", metadata !"mk_matrix", metadata !"", i32 50, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float** (i32, i32, i32)* @mk_matrix, null, null, metadata !29, i32 51} ; [ DW_TAG_subprogram ] [line 50] [def] [scope 51] [mk_matrix]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !28, metadata !28, metadata !28}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!26 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!27 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!28 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!30 = metadata !{i32 786689, metadata !20, metadata !"nx", metadata !21, i32 16777266, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 50]
!31 = metadata !{i32 786689, metadata !20, metadata !"ny", metadata !21, i32 33554482, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 50]
!32 = metadata !{i32 786689, metadata !20, metadata !"b1D", metadata !21, i32 50331698, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b1D] [line 50]
!33 = metadata !{i32 786688, metadata !20, metadata !"i", metadata !21, i32 52, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 52]
!34 = metadata !{i32 786688, metadata !20, metadata !"m", metadata !21, i32 53, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 53]
!35 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"done_matrix", metadata !"done_matrix", metadata !"", i32 68, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, float***)* @done_matrix, null, null, metadata !39, i32 69} ; [ DW_TAG_subprogram ] [line 68] [def] [scope 69] [done_matrix]
!36 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{null, metadata !28, metadata !38}
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !41, metadata !42}
!40 = metadata !{i32 786689, metadata !35, metadata !"nx", metadata !21, i32 16777284, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 68]
!41 = metadata !{i32 786689, metadata !35, metadata !"m", metadata !21, i32 33554500, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m] [line 68]
!42 = metadata !{i32 786688, metadata !35, metadata !"i", metadata !21, i32 70, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 70]
!43 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"clear_matrix", metadata !"clear_matrix", metadata !"", i32 78, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, float**)* @clear_matrix, null, null, metadata !46, i32 79} ; [ DW_TAG_subprogram ] [line 78] [def] [scope 79] [clear_matrix]
!44 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!45 = metadata !{null, metadata !28, metadata !28, metadata !24}
!46 = metadata !{metadata !47, metadata !48, metadata !49, metadata !50, metadata !51}
!47 = metadata !{i32 786689, metadata !43, metadata !"nx", metadata !21, i32 16777294, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nx] [line 78]
!48 = metadata !{i32 786689, metadata !43, metadata !"ny", metadata !21, i32 33554510, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ny] [line 78]
!49 = metadata !{i32 786689, metadata !43, metadata !"m", metadata !21, i32 50331726, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m] [line 78]
!50 = metadata !{i32 786688, metadata !43, metadata !"x", metadata !21, i32 80, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 80]
!51 = metadata !{i32 786688, metadata !43, metadata !"y", metadata !21, i32 80, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 80]
!52 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"matelmt_cmp", metadata !"matelmt_cmp", metadata !"", i32 87, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i16, i16)* @matelmt_cmp, null, null, metadata !62, i32 88} ; [ DW_TAG_subprogram ] [line 87] [def] [scope 88] [matelmt_cmp]
!53 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{metadata !28, metadata !55, metadata !55}
!55 = metadata !{i32 786454, metadata !1, null, metadata !"t_xpmelmt", i32 46, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [t_xpmelmt] [line 46, size 0, align 0, offset 0] [from ]
!56 = metadata !{i32 786451, metadata !57, null, metadata !"", i32 40, i64 16, i64 8, i32 0, i32 0, null, metadata !58, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 16, align 8, offset 0] [from ]
!57 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/matrix.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!58 = metadata !{metadata !59, metadata !61}
!59 = metadata !{i32 786445, metadata !57, metadata !56, metadata !"c1", i32 41, i64 8, i64 8, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ] [c1] [line 41, size 8, align 8, offset 0] [from char]
!60 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!61 = metadata !{i32 786445, metadata !57, metadata !56, metadata !"c2", i32 42, i64 8, i64 8, i64 8, i32 0, metadata !60} ; [ DW_TAG_member ] [c2] [line 42, size 8, align 8, offset 8] [from char]
!62 = metadata !{metadata !63, metadata !64}
!63 = metadata !{i32 786689, metadata !52, metadata !"e1", metadata !21, i32 16777303, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e1] [line 87]
!64 = metadata !{i32 786689, metadata !52, metadata !"e2", metadata !21, i32 33554519, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e2] [line 87]
!65 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"searchcmap", metadata !"searchcmap", metadata !"", i32 92, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i16 (i32, %struct.t_mapping*, i16)* @searchcmap, null, null, metadata !84, i32 93} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 93] [searchcmap]
!66 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{metadata !68, metadata !28, metadata !70, metadata !55}
!68 = metadata !{i32 786454, metadata !1, null, metadata !"t_matelmt", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [t_matelmt] [line 48, size 0, align 0, offset 0] [from short]
!69 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_mapping]
!71 = metadata !{i32 786454, metadata !1, null, metadata !"t_mapping", i32 54, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [t_mapping] [line 54, size 0, align 0, offset 0] [from ]
!72 = metadata !{i32 786451, metadata !57, null, metadata !"", i32 50, i64 256, i64 64, i32 0, i32 0, null, metadata !73, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 50, size 256, align 64, offset 0] [from ]
!73 = metadata !{metadata !74, metadata !75, metadata !77}
!74 = metadata !{i32 786445, metadata !57, metadata !72, metadata !"code", i32 51, i64 16, i64 8, i64 0, i32 0, metadata !55} ; [ DW_TAG_member ] [code] [line 51, size 16, align 8, offset 0] [from t_xpmelmt]
!75 = metadata !{i32 786445, metadata !57, metadata !72, metadata !"desc", i32 52, i64 64, i64 64, i64 64, i32 0, metadata !76} ; [ DW_TAG_member ] [desc] [line 52, size 64, align 64, offset 64] [from ]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!77 = metadata !{i32 786445, metadata !57, metadata !72, metadata !"rgb", i32 53, i64 96, i64 32, i64 128, i32 0, metadata !78} ; [ DW_TAG_member ] [rgb] [line 53, size 96, align 32, offset 128] [from t_rgb]
!78 = metadata !{i32 786454, metadata !57, null, metadata !"t_rgb", i32 38, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [t_rgb] [line 38, size 0, align 0, offset 0] [from ]
!79 = metadata !{i32 786451, metadata !57, null, metadata !"", i32 36, i64 96, i64 32, i32 0, i32 0, null, metadata !80, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 96, align 32, offset 0] [from ]
!80 = metadata !{metadata !81, metadata !82, metadata !83}
!81 = metadata !{i32 786445, metadata !57, metadata !79, metadata !"r", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [r] [line 37, size 32, align 32, offset 0] [from real]
!82 = metadata !{i32 786445, metadata !57, metadata !79, metadata !"g", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [g] [line 37, size 32, align 32, offset 32] [from real]
!83 = metadata !{i32 786445, metadata !57, metadata !79, metadata !"b", i32 37, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [b] [line 37, size 32, align 32, offset 64] [from real]
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88}
!85 = metadata !{i32 786689, metadata !65, metadata !"n", metadata !21, i32 16777308, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 92]
!86 = metadata !{i32 786689, metadata !65, metadata !"map", metadata !21, i32 33554524, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [map] [line 92]
!87 = metadata !{i32 786689, metadata !65, metadata !"c", metadata !21, i32 50331740, metadata !55, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 92]
!88 = metadata !{i32 786688, metadata !65, metadata !"i", metadata !21, i32 94, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 94]
!89 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"getcmap", metadata !"getcmap", metadata !"", i32 103, metadata !90, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IO_FILE*, i8*, %struct.t_mapping**)* @getcmap, null, null, metadata !148, i32 104} ; [ DW_TAG_subprogram ] [line 103] [def] [scope 104] [getcmap]
!90 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!91 = metadata !{metadata !28, metadata !92, metadata !76, metadata !147}
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!93 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!94 = metadata !{i32 786451, metadata !95, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !96, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!95 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !117, metadata !118, metadata !119, metadata !120, metadata !123, metadata !125, metadata !127, metadata !131, metadata !133, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !142, metadata !143}
!97 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!98 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!99 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!100 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!101 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!102 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!103 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!104 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!105 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!106 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!107 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!108 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !76} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!109 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !110} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!111 = metadata !{i32 786451, metadata !95, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !112, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!112 = metadata !{metadata !113, metadata !114, metadata !116}
!113 = metadata !{i32 786445, metadata !95, metadata !111, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!114 = metadata !{i32 786445, metadata !95, metadata !111, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !115} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!115 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!116 = metadata !{i32 786445, metadata !95, metadata !111, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!117 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !115} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!118 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !28} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!119 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !28} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!120 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !121} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!121 = metadata !{i32 786454, metadata !95, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!122 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!123 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !124} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!124 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!125 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !126} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!126 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!127 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !128} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!128 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !60, metadata !129, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!129 = metadata !{metadata !130}
!130 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!131 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !132} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!133 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !134} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!134 = metadata !{i32 786454, metadata !95, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !122} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!135 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !132} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!136 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !132} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!137 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !132} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!138 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !132} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!139 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !140} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!140 = metadata !{i32 786454, metadata !95, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!141 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!142 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !28} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!143 = metadata !{i32 786445, metadata !95, metadata !94, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !144} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!144 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !60, metadata !145, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!145 = metadata !{metadata !146}
!146 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!147 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!148 = metadata !{metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !158, metadata !159, metadata !160, metadata !162, metadata !163, metadata !164}
!149 = metadata !{i32 786689, metadata !89, metadata !"in", metadata !21, i32 16777319, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 103]
!150 = metadata !{i32 786689, metadata !89, metadata !"fn", metadata !21, i32 33554535, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 103]
!151 = metadata !{i32 786689, metadata !89, metadata !"map", metadata !21, i32 50331751, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [map] [line 103]
!152 = metadata !{i32 786688, metadata !89, metadata !"i", metadata !21, i32 105, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 105]
!153 = metadata !{i32 786688, metadata !89, metadata !"n", metadata !21, i32 105, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 105]
!154 = metadata !{i32 786688, metadata !89, metadata !"line", metadata !21, i32 106, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 106]
!155 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32768, i64 8, i32 0, i32 0, metadata !60, metadata !156, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 32768, align 8, offset 0] [from char]
!156 = metadata !{metadata !157}
!157 = metadata !{i32 786465, i64 0, i64 4096}    ; [ DW_TAG_subrange_type ] [0, 4095]
!158 = metadata !{i32 786688, metadata !89, metadata !"code", metadata !21, i32 107, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 107]
!159 = metadata !{i32 786688, metadata !89, metadata !"desc", metadata !21, i32 107, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [desc] [line 107]
!160 = metadata !{i32 786688, metadata !89, metadata !"r", metadata !21, i32 108, metadata !161, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 108]
!161 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!162 = metadata !{i32 786688, metadata !89, metadata !"g", metadata !21, i32 108, metadata !161, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 108]
!163 = metadata !{i32 786688, metadata !89, metadata !"b", metadata !21, i32 108, metadata !161, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 108]
!164 = metadata !{i32 786688, metadata !89, metadata !"m", metadata !21, i32 109, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 109]
!165 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"readcmap", metadata !"readcmap", metadata !"", i32 133, metadata !166, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.t_mapping**)* @readcmap, null, null, metadata !168, i32 134} ; [ DW_TAG_subprogram ] [line 133] [def] [scope 134] [readcmap]
!166 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !167, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!167 = metadata !{metadata !28, metadata !76, metadata !147}
!168 = metadata !{metadata !169, metadata !170, metadata !171, metadata !172}
!169 = metadata !{i32 786689, metadata !165, metadata !"fn", metadata !21, i32 16777349, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 133]
!170 = metadata !{i32 786689, metadata !165, metadata !"map", metadata !21, i32 33554565, metadata !147, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [map] [line 133]
!171 = metadata !{i32 786688, metadata !165, metadata !"in", metadata !21, i32 135, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 135]
!172 = metadata !{i32 786688, metadata !165, metadata !"n", metadata !21, i32 136, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 136]
!173 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"printcmap", metadata !"printcmap", metadata !"", i32 145, metadata !174, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, %struct.t_mapping*)* @printcmap, null, null, metadata !176, i32 146} ; [ DW_TAG_subprogram ] [line 145] [def] [scope 146] [printcmap]
!174 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!175 = metadata !{null, metadata !92, metadata !28, metadata !70}
!176 = metadata !{metadata !177, metadata !178, metadata !179, metadata !180}
!177 = metadata !{i32 786689, metadata !173, metadata !"out", metadata !21, i32 16777361, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 145]
!178 = metadata !{i32 786689, metadata !173, metadata !"n", metadata !21, i32 33554577, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 145]
!179 = metadata !{i32 786689, metadata !173, metadata !"map", metadata !21, i32 50331793, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [map] [line 145]
!180 = metadata !{i32 786688, metadata !173, metadata !"i", metadata !21, i32 147, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 147]
!181 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"writecmap", metadata !"writecmap", metadata !"", i32 157, metadata !182, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, %struct.t_mapping*)* @writecmap, null, null, metadata !184, i32 158} ; [ DW_TAG_subprogram ] [line 157] [def] [scope 158] [writecmap]
!182 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!183 = metadata !{null, metadata !76, metadata !28, metadata !70}
!184 = metadata !{metadata !185, metadata !186, metadata !187, metadata !188}
!185 = metadata !{i32 786689, metadata !181, metadata !"fn", metadata !21, i32 16777373, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 157]
!186 = metadata !{i32 786689, metadata !181, metadata !"n", metadata !21, i32 33554589, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 157]
!187 = metadata !{i32 786689, metadata !181, metadata !"map", metadata !21, i32 50331805, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [map] [line 157]
!188 = metadata !{i32 786688, metadata !181, metadata !"out", metadata !21, i32 159, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out] [line 159]
!189 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"do_wmap", metadata !"do_wmap", metadata !"", i32 166, metadata !190, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, i32, <2 x float>, float, <2 x float>, float, float, float)* @do_wmap, null, null, metadata !192, i32 168} ; [ DW_TAG_subprogram ] [line 166] [def] [scope 168] [do_wmap]
!190 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!191 = metadata !{null, metadata !92, metadata !28, metadata !28, metadata !28, metadata !78, metadata !78, metadata !26, metadata !26}
!192 = metadata !{metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205}
!193 = metadata !{i32 786689, metadata !189, metadata !"out", metadata !21, i32 16777382, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 166]
!194 = metadata !{i32 786689, metadata !189, metadata !"i0", metadata !21, i32 33554598, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i0] [line 166]
!195 = metadata !{i32 786689, metadata !189, metadata !"imax", metadata !21, i32 50331814, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imax] [line 166]
!196 = metadata !{i32 786689, metadata !189, metadata !"nlevels", metadata !21, i32 67109031, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nlevels] [line 167]
!197 = metadata !{i32 786689, metadata !189, metadata !"rlo", metadata !21, i32 83886247, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rlo] [line 167]
!198 = metadata !{i32 786689, metadata !189, metadata !"rhi", metadata !21, i32 100663463, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rhi] [line 167]
!199 = metadata !{i32 786689, metadata !189, metadata !"lo", metadata !21, i32 117440679, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lo] [line 167]
!200 = metadata !{i32 786689, metadata !189, metadata !"hi", metadata !21, i32 134217895, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hi] [line 167]
!201 = metadata !{i32 786688, metadata !189, metadata !"i", metadata !21, i32 169, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 169]
!202 = metadata !{i32 786688, metadata !189, metadata !"nlo", metadata !21, i32 169, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nlo] [line 169]
!203 = metadata !{i32 786688, metadata !189, metadata !"r", metadata !21, i32 170, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 170]
!204 = metadata !{i32 786688, metadata !189, metadata !"g", metadata !21, i32 170, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 170]
!205 = metadata !{i32 786688, metadata !189, metadata !"b", metadata !21, i32 170, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 170]
!206 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"fgetline", metadata !"fgetline", metadata !"", i32 182, metadata !207, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8**, i32, %struct._IO_FILE*)* @fgetline, null, null, metadata !210, i32 183} ; [ DW_TAG_subprogram ] [line 182] [def] [scope 183] [fgetline]
!207 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!208 = metadata !{metadata !76, metadata !209, metadata !28, metadata !92}
!209 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!210 = metadata !{metadata !211, metadata !212, metadata !213, metadata !214}
!211 = metadata !{i32 786689, metadata !206, metadata !"line", metadata !21, i32 16777398, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 182]
!212 = metadata !{i32 786689, metadata !206, metadata !"llmax", metadata !21, i32 33554614, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [llmax] [line 182]
!213 = metadata !{i32 786689, metadata !206, metadata !"in", metadata !21, i32 50331830, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 182]
!214 = metadata !{i32 786688, metadata !206, metadata !"fg", metadata !21, i32 186, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fg] [line 186]
!215 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"skipstr", metadata !"skipstr", metadata !"", i32 199, metadata !216, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**)* @skipstr, null, null, metadata !218, i32 200} ; [ DW_TAG_subprogram ] [line 199] [def] [scope 200] [skipstr]
!216 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!217 = metadata !{null, metadata !209}
!218 = metadata !{metadata !219}
!219 = metadata !{i32 786689, metadata !215, metadata !"line", metadata !21, i32 16777415, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 199]
!220 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"line2string", metadata !"line2string", metadata !"", i32 206, metadata !221, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8**)* @line2string, null, null, metadata !223, i32 207} ; [ DW_TAG_subprogram ] [line 206] [def] [scope 207] [line2string]
!221 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!222 = metadata !{metadata !76, metadata !209}
!223 = metadata !{metadata !224, metadata !225}
!224 = metadata !{i32 786689, metadata !220, metadata !"line", metadata !21, i32 16777422, metadata !209, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 206]
!225 = metadata !{i32 786688, metadata !220, metadata !"i", metadata !21, i32 208, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 208]
!226 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"parsestring", metadata !"parsestring", metadata !"", i32 231, metadata !227, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i8*)* @parsestring, null, null, metadata !229, i32 232} ; [ DW_TAG_subprogram ] [line 231] [def] [scope 232] [parsestring]
!227 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !228, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!228 = metadata !{null, metadata !76, metadata !76, metadata !76}
!229 = metadata !{metadata !230, metadata !231, metadata !232}
!230 = metadata !{i32 786689, metadata !226, metadata !"line", metadata !21, i32 16777447, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 231]
!231 = metadata !{i32 786689, metadata !226, metadata !"label", metadata !21, i32 33554663, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [label] [line 231]
!232 = metadata !{i32 786689, metadata !226, metadata !"string", metadata !21, i32 50331879, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 231]
!233 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_xpm_entry", metadata !"read_xpm_entry", metadata !"", i32 241, metadata !234, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_matrix*)* @read_xpm_entry, null, null, metadata !258, i32 242} ; [ DW_TAG_subprogram ] [line 241] [def] [scope 242] [read_xpm_entry]
!234 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!235 = metadata !{null, metadata !92, metadata !236}
!236 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !237} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_matrix]
!237 = metadata !{i32 786454, metadata !1, null, metadata !"t_matrix", i32 69, i64 0, i64 0, i64 0, i32 0, metadata !238} ; [ DW_TAG_typedef ] [t_matrix] [line 69, size 0, align 0, offset 0] [from ]
!238 = metadata !{i32 786451, metadata !57, null, metadata !"", i32 56, i64 8640, i64 64, i32 0, i32 0, null, metadata !239, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 56, size 8640, align 64, offset 0] [from ]
!239 = metadata !{metadata !240, metadata !241, metadata !242, metadata !243, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !256, metadata !257}
!240 = metadata !{i32 786445, metadata !57, metadata !238, metadata !"nx", i32 57, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [nx] [line 57, size 32, align 32, offset 0] [from int]
!241 = metadata !{i32 786445, metadata !57, metadata !238, metadata !"ny", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !28} ; [ DW_TAG_member ] [ny] [line 57, size 32, align 32, offset 32] [from int]
!242 = metadata !{i32 786445, metadata !57, metadata !238, metadata !"y0", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [y0] [line 58, size 32, align 32, offset 64] [from int]
!243 = metadata !{i32 786445, metadata !57, metadata !238, metadata !"title", i32 59, i64 2048, i64 8, i64 96, i32 0, metadata !244} ; [ DW_TAG_member ] [title] [line 59, size 2048, align 8, offset 96] [from ]
!244 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !60, metadata !245, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!245 = metadata !{metadata !246}
!246 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!247 = metadata !{i32 786445, metadata !57, metadata !238, metadata !"legend", i32 60, i64 2048, i64 8, i64 2144, i32 0, metadata !244} ; [ DW_TAG_member ] [legend] [line 60, size 2048, align 8, offset 2144] [from ]
!248 = metadata !{i32 786445, metadata !57, metadata !238, metadata !"label_x", i32 61, i64 2048, i64 8, i64 4192, i32 0, metadata !244} ; [ DW_TAG_member ] [label_x] [line 61, size 2048, align 8, offset 4192] [from ]
!249 = metadata !{i32 786445, metadata !57, metadata !238, metadata !"label_y", i32 62, i64 2048, i64 8, i64 6240, i32 0, metadata !244} ; [ DW_TAG_member ] [label_y] [line 62, size 2048, align 8, offset 6240] [from ]
!250 = metadata !{i32 786445, metadata !57, metadata !238, metadata !"bDiscrete", i32 63, i64 32, i64 32, i64 8288, i32 0, metadata !28} ; [ DW_TAG_member ] [bDiscrete] [line 63, size 32, align 32, offset 8288] [from int]
!251 = metadata !{i32 786445, metadata !57, metadata !238, metadata !"axis_x", i32 64, i64 64, i64 64, i64 8320, i32 0, metadata !25} ; [ DW_TAG_member ] [axis_x] [line 64, size 64, align 64, offset 8320] [from ]
!252 = metadata !{i32 786445, metadata !57, metadata !238, metadata !"axis_y", i32 65, i64 64, i64 64, i64 8384, i32 0, metadata !25} ; [ DW_TAG_member ] [axis_y] [line 65, size 64, align 64, offset 8384] [from ]
!253 = metadata !{i32 786445, metadata !57, metadata !238, metadata !"matrix", i32 66, i64 64, i64 64, i64 8448, i32 0, metadata !254} ; [ DW_TAG_member ] [matrix] [line 66, size 64, align 64, offset 8448] [from ]
!254 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !255} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!255 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_matelmt]
!256 = metadata !{i32 786445, metadata !57, metadata !238, metadata !"nmap", i32 67, i64 32, i64 32, i64 8512, i32 0, metadata !28} ; [ DW_TAG_member ] [nmap] [line 67, size 32, align 32, offset 8512] [from int]
!257 = metadata !{i32 786445, metadata !57, metadata !238, metadata !"map", i32 68, i64 64, i64 64, i64 8576, i32 0, metadata !70} ; [ DW_TAG_member ] [map] [line 68, size 64, align 64, offset 8576] [from ]
!258 = metadata !{metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278}
!259 = metadata !{i32 786689, metadata !233, metadata !"in", metadata !21, i32 16777457, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 241]
!260 = metadata !{i32 786689, metadata !233, metadata !"mm", metadata !21, i32 33554673, metadata !236, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mm] [line 241]
!261 = metadata !{i32 786688, metadata !233, metadata !"map", metadata !21, i32 243, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 243]
!262 = metadata !{i32 786688, metadata !233, metadata !"line", metadata !21, i32 244, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 244]
!263 = metadata !{i32 786688, metadata !233, metadata !"str", metadata !21, i32 244, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [str] [line 244]
!264 = metadata !{i32 786688, metadata !233, metadata !"buf", metadata !21, i32 244, metadata !244, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 244]
!265 = metadata !{i32 786688, metadata !233, metadata !"i", metadata !21, i32 245, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 245]
!266 = metadata !{i32 786688, metadata !233, metadata !"m", metadata !21, i32 245, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 245]
!267 = metadata !{i32 786688, metadata !233, metadata !"col_len", metadata !21, i32 245, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col_len] [line 245]
!268 = metadata !{i32 786688, metadata !233, metadata !"nch", metadata !21, i32 245, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nch] [line 245]
!269 = metadata !{i32 786688, metadata !233, metadata !"n_axis_x", metadata !21, i32 245, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_axis_x] [line 245]
!270 = metadata !{i32 786688, metadata !233, metadata !"n_axis_y", metadata !21, i32 245, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n_axis_y] [line 245]
!271 = metadata !{i32 786688, metadata !233, metadata !"llmax", metadata !21, i32 245, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [llmax] [line 245]
!272 = metadata !{i32 786688, metadata !233, metadata !"r", metadata !21, i32 246, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 246]
!273 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!274 = metadata !{i32 786688, metadata !233, metadata !"g", metadata !21, i32 246, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 246]
!275 = metadata !{i32 786688, metadata !233, metadata !"b", metadata !21, i32 246, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 246]
!276 = metadata !{i32 786688, metadata !233, metadata !"u", metadata !21, i32 247, metadata !161, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 247]
!277 = metadata !{i32 786688, metadata !233, metadata !"bGetOnWithIt", metadata !21, i32 248, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bGetOnWithIt] [line 248]
!278 = metadata !{i32 786688, metadata !233, metadata !"c", metadata !21, i32 249, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 249]
!279 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"read_xpm_matrix", metadata !"read_xpm_matrix", metadata !"", i32 413, metadata !280, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, %struct.t_matrix**)* @read_xpm_matrix, null, null, metadata !283, i32 414} ; [ DW_TAG_subprogram ] [line 413] [def] [scope 414] [read_xpm_matrix]
!280 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!281 = metadata !{metadata !28, metadata !76, metadata !282}
!282 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!283 = metadata !{metadata !284, metadata !285, metadata !286, metadata !287, metadata !288}
!284 = metadata !{i32 786689, metadata !279, metadata !"fnm", metadata !21, i32 16777629, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fnm] [line 413]
!285 = metadata !{i32 786689, metadata !279, metadata !"matrix", metadata !21, i32 33554845, metadata !282, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [matrix] [line 413]
!286 = metadata !{i32 786688, metadata !279, metadata !"in", metadata !21, i32 415, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in] [line 415]
!287 = metadata !{i32 786688, metadata !279, metadata !"line", metadata !21, i32 416, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 416]
!288 = metadata !{i32 786688, metadata !279, metadata !"nmat", metadata !21, i32 417, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmat] [line 417]
!289 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"matrix2real", metadata !"matrix2real", metadata !"", i32 437, metadata !290, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float** (%struct.t_matrix*, float**)* @matrix2real, null, null, metadata !292, i32 438} ; [ DW_TAG_subprogram ] [line 437] [def] [scope 438] [matrix2real]
!290 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !291, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!291 = metadata !{metadata !24, metadata !236, metadata !24}
!292 = metadata !{metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300}
!293 = metadata !{i32 786689, metadata !289, metadata !"matrix", metadata !21, i32 16777653, metadata !236, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [matrix] [line 437]
!294 = metadata !{i32 786689, metadata !289, metadata !"mat", metadata !21, i32 33554869, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mat] [line 437]
!295 = metadata !{i32 786688, metadata !289, metadata !"map", metadata !21, i32 439, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 439]
!296 = metadata !{i32 786688, metadata !289, metadata !"tmp", metadata !21, i32 440, metadata !161, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 440]
!297 = metadata !{i32 786688, metadata !289, metadata !"rmap", metadata !21, i32 441, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rmap] [line 441]
!298 = metadata !{i32 786688, metadata !289, metadata !"i", metadata !21, i32 442, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 442]
!299 = metadata !{i32 786688, metadata !289, metadata !"j", metadata !21, i32 442, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 442]
!300 = metadata !{i32 786688, metadata !289, metadata !"nmap", metadata !21, i32 442, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmap] [line 442]
!301 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"write_xpm_header", metadata !"write_xpm_header", metadata !"", i32 476, metadata !302, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, i8*, i8*, i8*, i32)* @write_xpm_header, null, null, metadata !304, i32 479} ; [ DW_TAG_subprogram ] [line 476] [def] [scope 479] [write_xpm_header]
!302 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!303 = metadata !{null, metadata !92, metadata !76, metadata !76, metadata !76, metadata !76, metadata !28}
!304 = metadata !{metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310}
!305 = metadata !{i32 786689, metadata !301, metadata !"out", metadata !21, i32 16777692, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 476]
!306 = metadata !{i32 786689, metadata !301, metadata !"title", metadata !21, i32 33554909, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 477]
!307 = metadata !{i32 786689, metadata !301, metadata !"legend", metadata !21, i32 50332125, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [legend] [line 477]
!308 = metadata !{i32 786689, metadata !301, metadata !"label_x", metadata !21, i32 67109341, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [label_x] [line 477]
!309 = metadata !{i32 786689, metadata !301, metadata !"label_y", metadata !21, i32 83886557, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [label_y] [line 477]
!310 = metadata !{i32 786689, metadata !301, metadata !"bDiscrete", metadata !21, i32 100663774, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bDiscrete] [line 478]
!311 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"write_xpm_map3", metadata !"write_xpm_map3", metadata !"", i32 501, metadata !312, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, i32*, float, float, float, <2 x float>, float, <2 x float>, float, %struct.t_rgb*)* @write_xpm_map3, null, null, metadata !315, i32 504} ; [ DW_TAG_subprogram ] [line 501] [def] [scope 504] [write_xpm_map3]
!312 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!313 = metadata !{null, metadata !92, metadata !28, metadata !28, metadata !314, metadata !26, metadata !26, metadata !26, metadata !78, metadata !78, metadata !78}
!314 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!315 = metadata !{metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333}
!316 = metadata !{i32 786689, metadata !311, metadata !"out", metadata !21, i32 16777717, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 501]
!317 = metadata !{i32 786689, metadata !311, metadata !"n_x", metadata !21, i32 33554933, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_x] [line 501]
!318 = metadata !{i32 786689, metadata !311, metadata !"n_y", metadata !21, i32 50332149, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_y] [line 501]
!319 = metadata !{i32 786689, metadata !311, metadata !"nlevels", metadata !21, i32 67109365, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nlevels] [line 501]
!320 = metadata !{i32 786689, metadata !311, metadata !"lo", metadata !21, i32 83886582, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lo] [line 502]
!321 = metadata !{i32 786689, metadata !311, metadata !"mid", metadata !21, i32 100663798, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mid] [line 502]
!322 = metadata !{i32 786689, metadata !311, metadata !"hi", metadata !21, i32 117441014, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hi] [line 502]
!323 = metadata !{i32 786689, metadata !311, metadata !"rlo", metadata !21, i32 134218231, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rlo] [line 503]
!324 = metadata !{i32 786689, metadata !311, metadata !"rmid", metadata !21, i32 150995447, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rmid] [line 503]
!325 = metadata !{i32 786689, metadata !311, metadata !"rhi", metadata !21, i32 167772663, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rhi] [line 503]
!326 = metadata !{i32 786688, metadata !311, metadata !"i", metadata !21, i32 505, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 505]
!327 = metadata !{i32 786688, metadata !311, metadata !"nlo", metadata !21, i32 505, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nlo] [line 505]
!328 = metadata !{i32 786688, metadata !311, metadata !"nmid", metadata !21, i32 505, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmid] [line 505]
!329 = metadata !{i32 786688, metadata !311, metadata !"r", metadata !21, i32 506, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 506]
!330 = metadata !{i32 786688, metadata !311, metadata !"g", metadata !21, i32 506, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 506]
!331 = metadata !{i32 786688, metadata !311, metadata !"b", metadata !21, i32 506, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 506]
!332 = metadata !{i32 786688, metadata !311, metadata !"clev_lo", metadata !21, i32 506, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clev_lo] [line 506]
!333 = metadata !{i32 786688, metadata !311, metadata !"clev_hi", metadata !21, i32 506, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clev_hi] [line 506]
!334 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"write_xpm_map", metadata !"write_xpm_map", metadata !"", i32 557, metadata !335, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, i32*, float, float, <2 x float>, float, <2 x float>, float)* @write_xpm_map, null, null, metadata !337, i32 559} ; [ DW_TAG_subprogram ] [line 557] [def] [scope 559] [write_xpm_map]
!335 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!336 = metadata !{null, metadata !92, metadata !28, metadata !28, metadata !314, metadata !26, metadata !26, metadata !78, metadata !78}
!337 = metadata !{metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351}
!338 = metadata !{i32 786689, metadata !334, metadata !"out", metadata !21, i32 16777773, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 557]
!339 = metadata !{i32 786689, metadata !334, metadata !"n_x", metadata !21, i32 33554989, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_x] [line 557]
!340 = metadata !{i32 786689, metadata !334, metadata !"n_y", metadata !21, i32 50332205, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_y] [line 557]
!341 = metadata !{i32 786689, metadata !334, metadata !"nlevels", metadata !21, i32 67109421, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nlevels] [line 557]
!342 = metadata !{i32 786689, metadata !334, metadata !"lo", metadata !21, i32 83886637, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lo] [line 557]
!343 = metadata !{i32 786689, metadata !334, metadata !"hi", metadata !21, i32 100663853, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hi] [line 557]
!344 = metadata !{i32 786689, metadata !334, metadata !"rlo", metadata !21, i32 117441070, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rlo] [line 558]
!345 = metadata !{i32 786689, metadata !334, metadata !"rhi", metadata !21, i32 134218286, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rhi] [line 558]
!346 = metadata !{i32 786688, metadata !334, metadata !"i", metadata !21, i32 560, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 560]
!347 = metadata !{i32 786688, metadata !334, metadata !"nlo", metadata !21, i32 560, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nlo] [line 560]
!348 = metadata !{i32 786688, metadata !334, metadata !"invlevel", metadata !21, i32 561, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [invlevel] [line 561]
!349 = metadata !{i32 786688, metadata !334, metadata !"r", metadata !21, i32 561, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 561]
!350 = metadata !{i32 786688, metadata !334, metadata !"g", metadata !21, i32 561, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 561]
!351 = metadata !{i32 786688, metadata !334, metadata !"b", metadata !21, i32 561, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 561]
!352 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"write_xpm_axis", metadata !"write_xpm_axis", metadata !"", i32 592, metadata !353, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, i32, float*)* @write_xpm_axis, null, null, metadata !355, i32 593} ; [ DW_TAG_subprogram ] [line 592] [def] [scope 593] [write_xpm_axis]
!353 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !354, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!354 = metadata !{null, metadata !92, metadata !76, metadata !28, metadata !25}
!355 = metadata !{metadata !356, metadata !357, metadata !358, metadata !359, metadata !360}
!356 = metadata !{i32 786689, metadata !352, metadata !"out", metadata !21, i32 16777808, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 592]
!357 = metadata !{i32 786689, metadata !352, metadata !"axis", metadata !21, i32 33555024, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [axis] [line 592]
!358 = metadata !{i32 786689, metadata !352, metadata !"n", metadata !21, i32 50332240, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 592]
!359 = metadata !{i32 786689, metadata !352, metadata !"label", metadata !21, i32 67109456, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [label] [line 592]
!360 = metadata !{i32 786688, metadata !352, metadata !"i", metadata !21, i32 594, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 594]
!361 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"write_xpm_data", metadata !"write_xpm_data", metadata !"", i32 609, metadata !362, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, float**, float, float, i32)* @write_xpm_data, null, null, metadata !364, i32 611} ; [ DW_TAG_subprogram ] [line 609] [def] [scope 611] [write_xpm_data]
!362 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !363, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!363 = metadata !{null, metadata !92, metadata !28, metadata !28, metadata !24, metadata !26, metadata !26, metadata !28}
!364 = metadata !{metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375}
!365 = metadata !{i32 786689, metadata !361, metadata !"out", metadata !21, i32 16777825, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 609]
!366 = metadata !{i32 786689, metadata !361, metadata !"n_x", metadata !21, i32 33555041, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_x] [line 609]
!367 = metadata !{i32 786689, metadata !361, metadata !"n_y", metadata !21, i32 50332257, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_y] [line 609]
!368 = metadata !{i32 786689, metadata !361, metadata !"matrix", metadata !21, i32 67109473, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [matrix] [line 609]
!369 = metadata !{i32 786689, metadata !361, metadata !"lo", metadata !21, i32 83886690, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lo] [line 610]
!370 = metadata !{i32 786689, metadata !361, metadata !"hi", metadata !21, i32 100663906, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hi] [line 610]
!371 = metadata !{i32 786689, metadata !361, metadata !"nlevels", metadata !21, i32 117441122, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nlevels] [line 610]
!372 = metadata !{i32 786688, metadata !361, metadata !"i", metadata !21, i32 612, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 612]
!373 = metadata !{i32 786688, metadata !361, metadata !"j", metadata !21, i32 612, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 612]
!374 = metadata !{i32 786688, metadata !361, metadata !"c", metadata !21, i32 612, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 612]
!375 = metadata !{i32 786688, metadata !361, metadata !"invlevel", metadata !21, i32 613, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [invlevel] [line 613]
!376 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"write_xpm_data3", metadata !"write_xpm_data3", metadata !"", i32 636, metadata !377, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i32, i32, float**, float, float, float, i32)* @write_xpm_data3, null, null, metadata !379, i32 638} ; [ DW_TAG_subprogram ] [line 636] [def] [scope 638] [write_xpm_data3]
!377 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !378, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!378 = metadata !{null, metadata !92, metadata !28, metadata !28, metadata !24, metadata !26, metadata !26, metadata !26, metadata !28}
!379 = metadata !{metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393}
!380 = metadata !{i32 786689, metadata !376, metadata !"out", metadata !21, i32 16777852, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 636]
!381 = metadata !{i32 786689, metadata !376, metadata !"n_x", metadata !21, i32 33555068, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_x] [line 636]
!382 = metadata !{i32 786689, metadata !376, metadata !"n_y", metadata !21, i32 50332284, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_y] [line 636]
!383 = metadata !{i32 786689, metadata !376, metadata !"matrix", metadata !21, i32 67109500, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [matrix] [line 636]
!384 = metadata !{i32 786689, metadata !376, metadata !"lo", metadata !21, i32 83886717, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lo] [line 637]
!385 = metadata !{i32 786689, metadata !376, metadata !"mid", metadata !21, i32 100663933, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mid] [line 637]
!386 = metadata !{i32 786689, metadata !376, metadata !"hi", metadata !21, i32 117441149, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hi] [line 637]
!387 = metadata !{i32 786689, metadata !376, metadata !"nlevels", metadata !21, i32 134218365, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nlevels] [line 637]
!388 = metadata !{i32 786688, metadata !376, metadata !"i", metadata !21, i32 639, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 639]
!389 = metadata !{i32 786688, metadata !376, metadata !"j", metadata !21, i32 639, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 639]
!390 = metadata !{i32 786688, metadata !376, metadata !"c", metadata !21, i32 639, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 639]
!391 = metadata !{i32 786688, metadata !376, metadata !"nmid", metadata !21, i32 639, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmid] [line 639]
!392 = metadata !{i32 786688, metadata !376, metadata !"invlev_lo", metadata !21, i32 640, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [invlev_lo] [line 640]
!393 = metadata !{i32 786688, metadata !376, metadata !"invlev_hi", metadata !21, i32 640, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [invlev_hi] [line 640]
!394 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"write_xpm_m", metadata !"write_xpm_m", metadata !"", i32 672, metadata !395, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.t_matrix*)* @write_xpm_m, null, null, metadata !397, i32 673} ; [ DW_TAG_subprogram ] [line 672] [def] [scope 673] [write_xpm_m]
!395 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !396, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!396 = metadata !{null, metadata !92, metadata !237}
!397 = metadata !{metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403}
!398 = metadata !{i32 786689, metadata !394, metadata !"out", metadata !21, i32 16777888, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 672]
!399 = metadata !{i32 786689, metadata !394, metadata !"m", metadata !21, i32 33555104, metadata !237, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m] [line 672]
!400 = metadata !{i32 786688, metadata !394, metadata !"i", metadata !21, i32 676, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 676]
!401 = metadata !{i32 786688, metadata !394, metadata !"j", metadata !21, i32 676, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 676]
!402 = metadata !{i32 786688, metadata !394, metadata !"bOneChar", metadata !21, i32 677, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bOneChar] [line 677]
!403 = metadata !{i32 786688, metadata !394, metadata !"c", metadata !21, i32 678, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 678]
!404 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"write_xpm3", metadata !"write_xpm3", metadata !"", i32 713, metadata !405, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, i8*, i8*, i8*, i32, i32, float*, float*, float**, float, float, float, <2 x float>, float, <2 x float>, float, %struct.t_rgb*, i32*)* @write_xpm3, null, null, metadata !407, i32 718} ; [ DW_TAG_subprogram ] [line 713] [def] [scope 718] [write_xpm3]
!405 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !406, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!406 = metadata !{null, metadata !92, metadata !76, metadata !76, metadata !76, metadata !76, metadata !28, metadata !28, metadata !25, metadata !25, metadata !24, metadata !26, metadata !26, metadata !26, metadata !78, metadata !78, metadata !78, metadata !314}
!407 = metadata !{metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424}
!408 = metadata !{i32 786689, metadata !404, metadata !"out", metadata !21, i32 16777929, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 713]
!409 = metadata !{i32 786689, metadata !404, metadata !"title", metadata !21, i32 33555146, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 714]
!410 = metadata !{i32 786689, metadata !404, metadata !"legend", metadata !21, i32 50332362, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [legend] [line 714]
!411 = metadata !{i32 786689, metadata !404, metadata !"label_x", metadata !21, i32 67109578, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [label_x] [line 714]
!412 = metadata !{i32 786689, metadata !404, metadata !"label_y", metadata !21, i32 83886794, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [label_y] [line 714]
!413 = metadata !{i32 786689, metadata !404, metadata !"n_x", metadata !21, i32 100664011, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_x] [line 715]
!414 = metadata !{i32 786689, metadata !404, metadata !"n_y", metadata !21, i32 117441227, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_y] [line 715]
!415 = metadata !{i32 786689, metadata !404, metadata !"axis_x", metadata !21, i32 134218443, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [axis_x] [line 715]
!416 = metadata !{i32 786689, metadata !404, metadata !"axis_y", metadata !21, i32 150995659, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [axis_y] [line 715]
!417 = metadata !{i32 786689, metadata !404, metadata !"matrix", metadata !21, i32 167772876, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [matrix] [line 716]
!418 = metadata !{i32 786689, metadata !404, metadata !"lo", metadata !21, i32 184550092, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lo] [line 716]
!419 = metadata !{i32 786689, metadata !404, metadata !"mid", metadata !21, i32 201327308, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mid] [line 716]
!420 = metadata !{i32 786689, metadata !404, metadata !"hi", metadata !21, i32 218104524, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hi] [line 716]
!421 = metadata !{i32 786689, metadata !404, metadata !"rlo", metadata !21, i32 234881741, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rlo] [line 717]
!422 = metadata !{i32 786689, metadata !404, metadata !"rmid", metadata !21, i32 251658957, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rmid] [line 717]
!423 = metadata !{i32 786689, metadata !404, metadata !"rhi", metadata !21, i32 268436173, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rhi] [line 717]
!424 = metadata !{i32 786689, metadata !404, metadata !"nlevels", metadata !21, i32 285213389, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nlevels] [line 717]
!425 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"write_xpm", metadata !"write_xpm", metadata !"", i32 733, metadata !426, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, i8*, i8*, i8*, i8*, i32, i32, float*, float*, float**, float, float, <2 x float>, float, <2 x float>, float, i32*)* @write_xpm, null, null, metadata !428, i32 738} ; [ DW_TAG_subprogram ] [line 733] [def] [scope 738] [write_xpm]
!426 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !427, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!427 = metadata !{null, metadata !92, metadata !76, metadata !76, metadata !76, metadata !76, metadata !28, metadata !28, metadata !25, metadata !25, metadata !24, metadata !26, metadata !26, metadata !78, metadata !78, metadata !314}
!428 = metadata !{metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443}
!429 = metadata !{i32 786689, metadata !425, metadata !"out", metadata !21, i32 16777949, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 733]
!430 = metadata !{i32 786689, metadata !425, metadata !"title", metadata !21, i32 33555166, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [title] [line 734]
!431 = metadata !{i32 786689, metadata !425, metadata !"legend", metadata !21, i32 50332382, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [legend] [line 734]
!432 = metadata !{i32 786689, metadata !425, metadata !"label_x", metadata !21, i32 67109598, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [label_x] [line 734]
!433 = metadata !{i32 786689, metadata !425, metadata !"label_y", metadata !21, i32 83886814, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [label_y] [line 734]
!434 = metadata !{i32 786689, metadata !425, metadata !"n_x", metadata !21, i32 100664031, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_x] [line 735]
!435 = metadata !{i32 786689, metadata !425, metadata !"n_y", metadata !21, i32 117441247, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_y] [line 735]
!436 = metadata !{i32 786689, metadata !425, metadata !"axis_x", metadata !21, i32 134218463, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [axis_x] [line 735]
!437 = metadata !{i32 786689, metadata !425, metadata !"axis_y", metadata !21, i32 150995679, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [axis_y] [line 735]
!438 = metadata !{i32 786689, metadata !425, metadata !"matrix", metadata !21, i32 167772896, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [matrix] [line 736]
!439 = metadata !{i32 786689, metadata !425, metadata !"lo", metadata !21, i32 184550112, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lo] [line 736]
!440 = metadata !{i32 786689, metadata !425, metadata !"hi", metadata !21, i32 201327328, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hi] [line 736]
!441 = metadata !{i32 786689, metadata !425, metadata !"rlo", metadata !21, i32 218104545, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rlo] [line 737]
!442 = metadata !{i32 786689, metadata !425, metadata !"rhi", metadata !21, i32 234881761, metadata !78, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rhi] [line 737]
!443 = metadata !{i32 786689, metadata !425, metadata !"nlevels", metadata !21, i32 251658977, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nlevels] [line 737]
!444 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"calc_nmid", metadata !"calc_nmid", metadata !"", i32 493, metadata !445, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !447, i32 494} ; [ DW_TAG_subprogram ] [line 493] [local] [def] [scope 494] [calc_nmid]
!445 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !446, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!446 = metadata !{metadata !28, metadata !28, metadata !26, metadata !26, metadata !26}
!447 = metadata !{metadata !448, metadata !449, metadata !450, metadata !451}
!448 = metadata !{i32 786689, metadata !444, metadata !"nlevels", metadata !21, i32 16777709, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nlevels] [line 493]
!449 = metadata !{i32 786689, metadata !444, metadata !"lo", metadata !21, i32 33554925, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lo] [line 493]
!450 = metadata !{i32 786689, metadata !444, metadata !"mid", metadata !21, i32 50332141, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mid] [line 493]
!451 = metadata !{i32 786689, metadata !444, metadata !"hi", metadata !21, i32 67109357, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hi] [line 493]
!452 = metadata !{metadata !453, metadata !454, metadata !455}
!453 = metadata !{i32 786484, i32 0, metadata !206, metadata !"line0", metadata !"line0", metadata !"", metadata !21, i32 184, metadata !76, i32 1, i32 1, i8** @fgetline.line0, null} ; [ DW_TAG_variable ] [line0] [line 184] [local] [def]
!454 = metadata !{i32 786484, i32 0, metadata !206, metadata !"linelengthmax", metadata !"linelengthmax", metadata !"", metadata !21, i32 185, metadata !28, i32 1, i32 1, i32* @fgetline.linelengthmax, null} ; [ DW_TAG_variable ] [linelengthmax] [line 185] [local] [def]
!455 = metadata !{i32 786484, i32 0, null, metadata !"mapper", metadata !"mapper", metadata !"", metadata !21, i32 45, metadata !456, i32 1, i32 1, [89 x i8]* @mapper, null} ; [ DW_TAG_variable ] [mapper] [line 45] [local] [def]
!456 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 712, i64 8, i32 0, i32 0, metadata !60, metadata !457, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 712, align 8, offset 0] [from char]
!457 = metadata !{metadata !458}
!458 = metadata !{i32 786465, i64 0, i64 89}      ; [ DW_TAG_subrange_type ] [0, 88]
!459 = metadata !{i32 50, i32 0, metadata !20, null}
!460 = metadata !{i32 55, i32 0, metadata !20, null}
!461 = metadata !{i32 56, i32 0, metadata !20, null}
!462 = metadata !{i32 57, i32 0, metadata !20, null}
!463 = metadata !{metadata !"any pointer", metadata !464}
!464 = metadata !{metadata !"omnipotent char", metadata !465}
!465 = metadata !{metadata !"Simple C/C++ TBAA"}
!466 = metadata !{i32 59, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !20, i32 59, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!468 = metadata !{i32 60, i32 0, metadata !467, null}
!469 = metadata !{i32 61, i32 0, metadata !467, null}
!470 = metadata !{i32 63, i32 0, metadata !467, null}
!471 = metadata !{i32 65, i32 0, metadata !20, null}
!472 = metadata !{i32 68, i32 0, metadata !35, null}
!473 = metadata !{i32 72, i32 0, metadata !474, null}
!474 = metadata !{i32 786443, metadata !1, metadata !35, i32 72, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!475 = metadata !{i32 73, i32 0, metadata !474, null}
!476 = metadata !{i32 74, i32 0, metadata !35, null}
!477 = metadata !{i32 75, i32 0, metadata !35, null}
!478 = metadata !{i32 76, i32 0, metadata !35, null}
!479 = metadata !{i32 78, i32 0, metadata !43, null}
!480 = metadata !{i32 82, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !43, i32 82, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!482 = metadata !{i32 83, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !481, i32 83, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!484 = metadata !{i32 84, i32 0, metadata !483, null}
!485 = metadata !{i32 85, i32 0, metadata !43, null}
!486 = metadata !{%struct.t_xpmelmt* undef}
!487 = metadata !{i32 87, i32 0, metadata !52, null}
!488 = metadata !{i32 89, i32 0, metadata !52, null}
!489 = metadata !{i32 90, i32 0, metadata !52, null}
!490 = metadata !{i32 92, i32 0, metadata !65, null}
!491 = metadata !{i32 96, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !65, i32 96, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!493 = metadata !{i32 89, i32 0, metadata !52, metadata !494}
!494 = metadata !{i32 97, i32 0, metadata !492, null}
!495 = metadata !{i32 87, i32 0, metadata !52, metadata !494}
!496 = metadata !{i32 98, i32 0, metadata !492, null}
!497 = metadata !{i32 101, i32 0, metadata !65, null}
!498 = metadata !{i32 103, i32 0, metadata !89, null}
!499 = metadata !{i32 105, i32 0, metadata !89, null}
!500 = metadata !{i32 106, i32 0, metadata !89, null}
!501 = metadata !{i32 107, i32 0, metadata !89, null}
!502 = metadata !{i32 108, i32 0, metadata !89, null}
!503 = metadata !{i32 111, i32 0, metadata !89, null}
!504 = metadata !{i32 112, i32 0, metadata !89, null}
!505 = metadata !{i32 114, i32 0, metadata !89, null}
!506 = metadata !{i32 115, i32 0, metadata !89, null}
!507 = metadata !{metadata !"int", metadata !464}
!508 = metadata !{i32 116, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !89, i32 116, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!510 = metadata !{i32 117, i32 0, metadata !511, null}
!511 = metadata !{i32 786443, metadata !1, metadata !509, i32 116, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!512 = metadata !{i32 118, i32 0, metadata !511, null}
!513 = metadata !{i32 120, i32 0, metadata !511, null}
!514 = metadata !{i32 121, i32 0, metadata !511, null}
!515 = metadata !{i32 122, i32 0, metadata !511, null}
!516 = metadata !{i32 123, i32 0, metadata !511, null}
!517 = metadata !{i32 124, i32 0, metadata !511, null}
!518 = metadata !{metadata !"double", metadata !464}
!519 = metadata !{metadata !"float", metadata !464}
!520 = metadata !{i32 125, i32 0, metadata !511, null}
!521 = metadata !{i32 126, i32 0, metadata !511, null}
!522 = metadata !{i32 128, i32 0, metadata !89, null}
!523 = metadata !{i32 130, i32 0, metadata !89, null}
!524 = metadata !{i32 131, i32 0, metadata !89, null}
!525 = metadata !{i32 133, i32 0, metadata !165, null}
!526 = metadata !{i32 138, i32 0, metadata !165, null}
!527 = metadata !{i32 139, i32 0, metadata !165, null}
!528 = metadata !{i32 140, i32 0, metadata !165, null}
!529 = metadata !{i32 142, i32 0, metadata !165, null}
!530 = metadata !{i32 145, i32 0, metadata !173, null}
!531 = metadata !{i32 149, i32 0, metadata !173, null}
!532 = metadata !{i32 150, i32 0, metadata !533, null}
!533 = metadata !{i32 786443, metadata !1, metadata !173, i32 150, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!534 = metadata !{i32 151, i32 0, metadata !533, null}
!535 = metadata !{i32 155, i32 0, metadata !173, null}
!536 = metadata !{i32 157, i32 0, metadata !181, null}
!537 = metadata !{i32 161, i32 0, metadata !181, null}
!538 = metadata !{i32 162, i32 0, metadata !181, null}
!539 = metadata !{i32 163, i32 0, metadata !181, null}
!540 = metadata !{i32 164, i32 0, metadata !181, null}
!541 = metadata !{i32 166, i32 0, metadata !189, null}
!542 = metadata !{i32 167, i32 0, metadata !189, null}
!543 = metadata !{%struct.t_rgb* undef}
!544 = metadata !{i32 172, i32 0, metadata !545, null}
!545 = metadata !{i32 786443, metadata !1, metadata !189, i32 172, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!546 = metadata !{i32 174, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !545, i32 172, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!548 = metadata !{i32 175, i32 0, metadata !547, null}
!549 = metadata !{i32 173, i32 0, metadata !547, null}
!550 = metadata !{i32 176, i32 0, metadata !547, null}
!551 = metadata !{i32 177, i32 0, metadata !547, null}
!552 = metadata !{i32 180, i32 0, metadata !189, null}
!553 = metadata !{i32 182, i32 0, metadata !206, null}
!554 = metadata !{i32 188, i32 0, metadata !206, null}
!555 = metadata !{i32 192, i32 0, metadata !206, null}
!556 = metadata !{i32 189, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !1, metadata !206, i32 188, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!558 = metadata !{i32 190, i32 0, metadata !557, null}
!559 = metadata !{i32 191, i32 0, metadata !557, null}
!560 = metadata !{i32 193, i32 0, metadata !206, null}
!561 = metadata !{i32 194, i32 0, metadata !206, null}
!562 = metadata !{i32 196, i32 0, metadata !206, null}
!563 = metadata !{i32 199, i32 0, metadata !215, null}
!564 = metadata !{i32 201, i32 0, metadata !215, null}
!565 = metadata !{i32 202, i32 0, metadata !215, null}
!566 = metadata !{i32 203, i32 0, metadata !215, null}
!567 = metadata !{i32 204, i32 0, metadata !215, null}
!568 = metadata !{i32 206, i32 0, metadata !220, null}
!569 = metadata !{i32 210, i32 0, metadata !220, null}
!570 = metadata !{i32 211, i32 0, metadata !571, null}
!571 = metadata !{i32 786443, metadata !1, metadata !220, i32 210, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!572 = metadata !{i32 212, i32 0, metadata !571, null}
!573 = metadata !{i32 214, i32 0, metadata !571, null}
!574 = metadata !{i32 216, i32 0, metadata !571, null}
!575 = metadata !{i32 218, i32 0, metadata !571, null}
!576 = metadata !{i32 219, i32 0, metadata !571, null}
!577 = metadata !{i32 222, i32 0, metadata !571, null}
!578 = metadata !{i32 223, i32 0, metadata !571, null}
!579 = metadata !{i32 225, i32 0, metadata !571, null}
!580 = metadata !{i32 228, i32 0, metadata !220, null}
!581 = metadata !{i32 229, i32 0, metadata !220, null}
!582 = metadata !{i32 231, i32 0, metadata !226, null}
!583 = metadata !{i32 233, i32 0, metadata !226, null}
!584 = metadata !{i32 234, i32 0, metadata !585, null}
!585 = metadata !{i32 786443, metadata !1, metadata !226, i32 233, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!586 = metadata !{i32 235, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !585, i32 234, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!588 = metadata !{i32 236, i32 0, metadata !587, null}
!589 = metadata !{i32 237, i32 0, metadata !587, null}
!590 = metadata !{i32 239, i32 0, metadata !226, null}
!591 = metadata !{i32 241, i32 0, metadata !233, null}
!592 = metadata !{i32 244, i32 0, metadata !233, null}
!593 = metadata !{i8* null}
!594 = metadata !{i32 245, i32 0, metadata !233, null}
!595 = metadata !{i32 246, i32 0, metadata !233, null}
!596 = metadata !{i32 247, i32 0, metadata !233, null}
!597 = metadata !{i32 249, i32 0, metadata !233, null}
!598 = metadata !{i32 251, i32 0, metadata !233, null}
!599 = metadata !{i32 252, i32 0, metadata !233, null}
!600 = metadata !{i32 253, i32 0, metadata !233, null}
!601 = metadata !{i32 254, i32 0, metadata !233, null}
!602 = metadata !{i32 255, i32 0, metadata !233, null}
!603 = metadata !{i32 256, i32 0, metadata !233, null}
!604 = metadata !{i32 257, i32 0, metadata !233, null}
!605 = metadata !{i32 258, i32 0, metadata !233, null}
!606 = metadata !{i32 4096}
!607 = metadata !{i32 260, i32 0, metadata !233, null}
!608 = metadata !{i32 262, i32 0, metadata !233, null}
!609 = metadata !{i32 263, i32 0, metadata !610, null}
!610 = metadata !{i32 786443, metadata !1, metadata !233, i32 262, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!611 = metadata !{i32 264, i32 0, metadata !610, null}
!612 = metadata !{i32 265, i32 0, metadata !610, null}
!613 = metadata !{i32 266, i32 0, metadata !610, null}
!614 = metadata !{i32 267, i32 0, metadata !610, null}
!615 = metadata !{i32 269, i32 0, metadata !233, null}
!616 = metadata !{i32 270, i32 0, metadata !233, null}
!617 = metadata !{i32 272, i32 0, metadata !233, null}
!618 = metadata !{i32 273, i32 0, metadata !233, null}
!619 = metadata !{i32 276, i32 0, metadata !233, null}
!620 = metadata !{i32 277, i32 0, metadata !233, null}
!621 = metadata !{i32 286, i32 0, metadata !622, null}
!622 = metadata !{i32 786443, metadata !1, metadata !623, i32 284, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!623 = metadata !{i32 786443, metadata !1, metadata !233, i32 280, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!624 = metadata !{i32 289, i32 0, metadata !622, null}
!625 = metadata !{i32 1}
!626 = metadata !{i32 290, i32 0, metadata !622, null}
!627 = metadata !{i32 280, i32 0, metadata !233, null}
!628 = metadata !{i32 281, i32 0, metadata !623, null}
!629 = metadata !{i32 282, i32 0, metadata !623, null}
!630 = metadata !{i32 284, i32 0, metadata !623, null}
!631 = metadata !{i32 285, i32 0, metadata !622, null}
!632 = metadata !{i32 287, i32 0, metadata !622, null}
!633 = metadata !{i32 288, i32 0, metadata !622, null}
!634 = metadata !{i32 293, i32 0, metadata !233, null}
!635 = metadata !{i32 294, i32 0, metadata !233, null}
!636 = metadata !{i32 298, i32 0, metadata !233, null}
!637 = metadata !{i32 299, i32 0, metadata !233, null}
!638 = metadata !{i32 300, i32 0, metadata !233, null}
!639 = metadata !{i32 347, i32 0, metadata !233, null}
!640 = metadata !{i32 301, i32 0, metadata !641, null}
!641 = metadata !{i32 786443, metadata !1, metadata !233, i32 300, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!642 = metadata !{i32 302, i32 0, metadata !641, null}
!643 = metadata !{i32 303, i32 0, metadata !644, null}
!644 = metadata !{i32 786443, metadata !1, metadata !641, i32 302, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!645 = metadata !{i32 305, i32 0, metadata !644, null}
!646 = metadata !{i32 306, i32 0, metadata !644, null}
!647 = metadata !{i32 307, i32 0, metadata !644, null}
!648 = metadata !{i32 309, i32 0, metadata !644, null}
!649 = metadata !{i32 310, i32 0, metadata !644, null}
!650 = metadata !{i32 311, i32 0, metadata !644, null}
!651 = metadata !{i32 312, i32 0, metadata !644, null}
!652 = metadata !{i32 315, i32 0, metadata !653, null}
!653 = metadata !{i32 786443, metadata !1, metadata !644, i32 312, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!654 = metadata !{metadata !"short", metadata !464}
!655 = metadata !{i32 316, i32 0, metadata !653, null}
!656 = metadata !{i32 317, i32 0, metadata !653, null}
!657 = metadata !{i32 318, i32 0, metadata !658, null}
!658 = metadata !{i32 786443, metadata !1, metadata !653, i32 317, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!659 = metadata !{i32 319, i32 0, metadata !658, null}
!660 = metadata !{i32 320, i32 0, metadata !658, null}
!661 = metadata !{i32 321, i32 0, metadata !658, null}
!662 = metadata !{i32 322, i32 0, metadata !658, null}
!663 = metadata !{i32 323, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !653, i32 322, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!665 = metadata !{i32 324, i32 0, metadata !664, null}
!666 = metadata !{i32 325, i32 0, metadata !664, null}
!667 = metadata !{i32 326, i32 0, metadata !664, null}
!668 = metadata !{i32 327, i32 0, metadata !664, null}
!669 = metadata !{i32 328, i32 0, metadata !653, null}
!670 = metadata !{i32 330, i32 0, metadata !671, null}
!671 = metadata !{i32 786443, metadata !1, metadata !644, i32 329, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!672 = metadata !{i32 331, i32 0, metadata !671, null}
!673 = metadata !{i32 332, i32 0, metadata !671, null}
!674 = metadata !{i32 334, i32 0, metadata !671, null}
!675 = metadata !{i32 335, i32 0, metadata !671, null}
!676 = metadata !{i32 336, i32 0, metadata !671, null}
!677 = metadata !{i32 337, i32 0, metadata !671, null}
!678 = metadata !{i32 338, i32 0, metadata !671, null}
!679 = metadata !{i32 340, i32 0, metadata !644, null}
!680 = metadata !{i32 341, i32 0, metadata !644, null}
!681 = metadata !{i32 342, i32 0, metadata !644, null}
!682 = metadata !{i32 343, i32 0, metadata !644, null}
!683 = metadata !{i32 345, i32 0, metadata !644, null}
!684 = metadata !{i32 344, i32 0, metadata !644, null}
!685 = metadata !{i32 348, i32 0, metadata !233, null}
!686 = metadata !{i32 349, i32 0, metadata !233, null}
!687 = metadata !{i32 352, i32 0, metadata !233, null}
!688 = metadata !{i32 353, i32 0, metadata !233, null}
!689 = metadata !{i32 354, i32 0, metadata !233, null}
!690 = metadata !{i32 355, i32 0, metadata !233, null}
!691 = metadata !{i32 356, i32 0, metadata !692, null}
!692 = metadata !{i32 786443, metadata !1, metadata !233, i32 355, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!693 = metadata !{i32 357, i32 0, metadata !694, null}
!694 = metadata !{i32 786443, metadata !1, metadata !692, i32 356, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!695 = metadata !{i32 786689, metadata !215, metadata !"line", metadata !21, i32 16777415, metadata !209, i32 0, metadata !696} ; [ DW_TAG_arg_variable ] [line] [line 199]
!696 = metadata !{i32 358, i32 0, metadata !694, null}
!697 = metadata !{i32 199, i32 0, metadata !215, metadata !696}
!698 = metadata !{i32 201, i32 0, metadata !215, metadata !696}
!699 = metadata !{i32 202, i32 0, metadata !215, metadata !696}
!700 = metadata !{i32 203, i32 0, metadata !215, metadata !696}
!701 = metadata !{i32 359, i32 0, metadata !694, null}
!702 = metadata !{i32 360, i32 0, metadata !694, null}
!703 = metadata !{i32 361, i32 0, metadata !694, null}
!704 = metadata !{i32 362, i32 0, metadata !705, null}
!705 = metadata !{i32 786443, metadata !1, metadata !694, i32 361, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!706 = metadata !{i32 363, i32 0, metadata !705, null}
!707 = metadata !{i32 364, i32 0, metadata !705, null}
!708 = metadata !{i32 365, i32 0, metadata !705, null}
!709 = metadata !{i32 786689, metadata !215, metadata !"line", metadata !21, i32 16777415, metadata !209, i32 0, metadata !710} ; [ DW_TAG_arg_variable ] [line] [line 199]
!710 = metadata !{i32 366, i32 0, metadata !705, null}
!711 = metadata !{i32 199, i32 0, metadata !215, metadata !710}
!712 = metadata !{i32 201, i32 0, metadata !215, metadata !710}
!713 = metadata !{i32 202, i32 0, metadata !215, metadata !710}
!714 = metadata !{i32 203, i32 0, metadata !215, metadata !710}
!715 = metadata !{i32 369, i32 0, metadata !692, null}
!716 = metadata !{i32 370, i32 0, metadata !717, null}
!717 = metadata !{i32 786443, metadata !1, metadata !692, i32 369, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!718 = metadata !{i32 786689, metadata !215, metadata !"line", metadata !21, i32 16777415, metadata !209, i32 0, metadata !719} ; [ DW_TAG_arg_variable ] [line] [line 199]
!719 = metadata !{i32 371, i32 0, metadata !717, null}
!720 = metadata !{i32 199, i32 0, metadata !215, metadata !719}
!721 = metadata !{i32 201, i32 0, metadata !215, metadata !719}
!722 = metadata !{i32 202, i32 0, metadata !215, metadata !719}
!723 = metadata !{i32 203, i32 0, metadata !215, metadata !719}
!724 = metadata !{i32 372, i32 0, metadata !717, null}
!725 = metadata !{i32 373, i32 0, metadata !717, null}
!726 = metadata !{i32 374, i32 0, metadata !717, null}
!727 = metadata !{i32 375, i32 0, metadata !728, null}
!728 = metadata !{i32 786443, metadata !1, metadata !717, i32 374, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!729 = metadata !{i32 376, i32 0, metadata !728, null}
!730 = metadata !{i32 377, i32 0, metadata !728, null}
!731 = metadata !{i32 378, i32 0, metadata !728, null}
!732 = metadata !{i32 786689, metadata !215, metadata !"line", metadata !21, i32 16777415, metadata !209, i32 0, metadata !733} ; [ DW_TAG_arg_variable ] [line] [line 199]
!733 = metadata !{i32 379, i32 0, metadata !728, null}
!734 = metadata !{i32 199, i32 0, metadata !215, metadata !733}
!735 = metadata !{i32 201, i32 0, metadata !215, metadata !733}
!736 = metadata !{i32 202, i32 0, metadata !215, metadata !733}
!737 = metadata !{i32 203, i32 0, metadata !215, metadata !733}
!738 = metadata !{i32 382, i32 0, metadata !692, null}
!739 = metadata !{i32 382, i32 0, metadata !233, null}
!740 = metadata !{i32 385, i32 0, metadata !233, null}
!741 = metadata !{i32 386, i32 0, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !233, i32 386, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!743 = metadata !{i32 387, i32 0, metadata !742, null}
!744 = metadata !{i32 388, i32 0, metadata !233, null}
!745 = metadata !{i32 389, i32 0, metadata !233, null}
!746 = metadata !{i32 390, i32 0, metadata !747, null}
!747 = metadata !{i32 786443, metadata !1, metadata !233, i32 389, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!748 = metadata !{i32 391, i32 0, metadata !747, null}
!749 = metadata !{i32 392, i32 0, metadata !747, null}
!750 = metadata !{i32 393, i32 0, metadata !747, null}
!751 = metadata !{i32 394, i32 0, metadata !747, null}
!752 = metadata !{i32 395, i32 0, metadata !747, null}
!753 = metadata !{i32 397, i32 0, metadata !754, null}
!754 = metadata !{i32 786443, metadata !1, metadata !747, i32 396, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!755 = metadata !{i32 398, i32 0, metadata !756, null}
!756 = metadata !{i32 786443, metadata !1, metadata !754, i32 398, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!757 = metadata !{i32 404, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !1, metadata !756, i32 398, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!759 = metadata !{i32 399, i32 0, metadata !758, null}
!760 = metadata !{i32 400, i32 0, metadata !758, null}
!761 = metadata !{i32 403, i32 0, metadata !758, null}
!762 = metadata !{i32 406, i32 0, metadata !754, null}
!763 = metadata !{i32 408, i32 0, metadata !747, null}
!764 = metadata !{i32 408, i32 0, metadata !233, null}
!765 = metadata !{i32 410, i32 0, metadata !233, null}
!766 = metadata !{i32 411, i32 0, metadata !233, null}
!767 = metadata !{i32 413, i32 0, metadata !279, null}
!768 = metadata !{i32 416, i32 0, metadata !279, null}
!769 = metadata !{i32 419, i32 0, metadata !279, null}
!770 = metadata !{i32 421, i32 0, metadata !279, null}
!771 = metadata !{i32 422, i32 0, metadata !279, null}
!772 = metadata !{i32 423, i32 0, metadata !773, null}
!773 = metadata !{i32 786443, metadata !1, metadata !279, i32 422, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!774 = metadata !{i32 424, i32 0, metadata !775, null}
!775 = metadata !{i32 786443, metadata !1, metadata !773, i32 423, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!776 = metadata !{i32 427, i32 0, metadata !775, null}
!777 = metadata !{i32 425, i32 0, metadata !775, null}
!778 = metadata !{i32 426, i32 0, metadata !775, null}
!779 = metadata !{i32 429, i32 0, metadata !279, null}
!780 = metadata !{i32 431, i32 0, metadata !279, null}
!781 = metadata !{i32 432, i32 0, metadata !279, null}
!782 = metadata !{i32 434, i32 0, metadata !279, null}
!783 = metadata !{i32 437, i32 0, metadata !289, null}
!784 = metadata !{i32 440, i32 0, metadata !289, null}
!785 = metadata !{i32 444, i32 0, metadata !289, null}
!786 = metadata !{i32 445, i32 0, metadata !289, null}
!787 = metadata !{i32 446, i32 0, metadata !289, null}
!788 = metadata !{i32 448, i32 0, metadata !789, null}
!789 = metadata !{i32 786443, metadata !1, metadata !289, i32 448, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!790 = metadata !{i32 449, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !789, i32 448, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!792 = metadata !{i32 450, i32 0, metadata !793, null}
!793 = metadata !{i32 786443, metadata !1, metadata !791, i32 449, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!794 = metadata !{i32 453, i32 0, metadata !793, null}
!795 = metadata !{i32 454, i32 0, metadata !793, null}
!796 = metadata !{i32 456, i32 0, metadata !791, null}
!797 = metadata !{i32 459, i32 0, metadata !289, null}
!798 = metadata !{i32 460, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !289, i32 459, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!800 = metadata !{i32 461, i32 0, metadata !801, null}
!801 = metadata !{i32 786443, metadata !1, metadata !799, i32 461, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!802 = metadata !{i32 464, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !289, i32 464, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!804 = metadata !{i32 462, i32 0, metadata !801, null}
!805 = metadata !{i32 470, i32 0, metadata !289, null}
!806 = metadata !{i32 465, i32 0, metadata !807, null}
!807 = metadata !{i32 786443, metadata !1, metadata !803, i32 465, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!808 = metadata !{i32 466, i32 0, metadata !807, null}
!809 = metadata !{i32 468, i32 0, metadata !289, null}
!810 = metadata !{i32 473, i32 0, metadata !289, null}
!811 = metadata !{i32 474, i32 0, metadata !289, null}
!812 = metadata !{i32 476, i32 0, metadata !301, null}
!813 = metadata !{i32 477, i32 0, metadata !301, null}
!814 = metadata !{i32 478, i32 0, metadata !301, null}
!815 = metadata !{i32 480, i32 0, metadata !301, null}
!816 = metadata !{i32 481, i32 0, metadata !301, null}
!817 = metadata !{i32 482, i32 0, metadata !301, null}
!818 = metadata !{i32 483, i32 0, metadata !301, null}
!819 = metadata !{i32 484, i32 0, metadata !301, null}
!820 = metadata !{i32 485, i32 0, metadata !301, null}
!821 = metadata !{i32 486, i32 0, metadata !301, null}
!822 = metadata !{i32 487, i32 0, metadata !301, null}
!823 = metadata !{i32 488, i32 0, metadata !301, null}
!824 = metadata !{i32 490, i32 0, metadata !301, null}
!825 = metadata !{i32 491, i32 0, metadata !301, null}
!826 = metadata !{i32 501, i32 0, metadata !311, null}
!827 = metadata !{i32 502, i32 0, metadata !311, null}
!828 = metadata !{i32 503, i32 0, metadata !311, null}
!829 = metadata !{i32 508, i32 0, metadata !311, null}
!830 = metadata !{i32 509, i32 0, metadata !831, null}
!831 = metadata !{i32 786443, metadata !1, metadata !311, i32 508, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!832 = metadata !{i32 510, i32 0, metadata !831, null}
!833 = metadata !{i32 511, i32 0, metadata !831, null}
!834 = metadata !{i32 512, i32 0, metadata !831, null}
!835 = metadata !{i32 513, i32 0, metadata !311, null}
!836 = metadata !{i32 514, i32 0, metadata !837, null}
!837 = metadata !{i32 786443, metadata !1, metadata !311, i32 513, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!838 = metadata !{i32 516, i32 0, metadata !837, null}
!839 = metadata !{i32 517, i32 0, metadata !837, null}
!840 = metadata !{i32 518, i32 0, metadata !311, null}
!841 = metadata !{i32 519, i32 0, metadata !311, null}
!842 = metadata !{i32 521, i32 0, metadata !311, null}
!843 = metadata !{i32 522, i32 0, metadata !311, null}
!844 = metadata !{i32 523, i32 0, metadata !311, null}
!845 = metadata !{i32 525, i32 0, metadata !311, null}
!846 = metadata !{i32 786689, metadata !444, metadata !"nlevels", metadata !21, i32 16777709, metadata !28, i32 0, metadata !845} ; [ DW_TAG_arg_variable ] [nlevels] [line 493]
!847 = metadata !{i32 493, i32 0, metadata !444, metadata !845}
!848 = metadata !{i32 786689, metadata !444, metadata !"lo", metadata !21, i32 33554925, metadata !26, i32 0, metadata !845} ; [ DW_TAG_arg_variable ] [lo] [line 493]
!849 = metadata !{i32 786689, metadata !444, metadata !"mid", metadata !21, i32 50332141, metadata !26, i32 0, metadata !845} ; [ DW_TAG_arg_variable ] [mid] [line 493]
!850 = metadata !{i32 786689, metadata !444, metadata !"hi", metadata !21, i32 67109357, metadata !26, i32 0, metadata !845} ; [ DW_TAG_arg_variable ] [hi] [line 493]
!851 = metadata !{i32 498, i32 0, metadata !444, metadata !845}
!852 = metadata !{i32 526, i32 0, metadata !311, null}
!853 = metadata !{i32 527, i32 0, metadata !311, null}
!854 = metadata !{i32 528, i32 0, metadata !855, null}
!855 = metadata !{i32 786443, metadata !1, metadata !311, i32 528, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!856 = metadata !{i32 530, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !1, metadata !855, i32 528, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!858 = metadata !{i32 531, i32 0, metadata !857, null}
!859 = metadata !{i32 532, i32 0, metadata !857, null}
!860 = metadata !{i32 541, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !311, i32 541, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!862 = metadata !{i32 543, i32 0, metadata !863, null}
!863 = metadata !{i32 786443, metadata !1, metadata !861, i32 541, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!864 = metadata !{i32 544, i32 0, metadata !863, null}
!865 = metadata !{i32 545, i32 0, metadata !863, null}
!866 = metadata !{i32 529, i32 0, metadata !857, null}
!867 = metadata !{i32 534, i32 0, metadata !857, null}
!868 = metadata !{i32 535, i32 0, metadata !857, null}
!869 = metadata !{i32 542, i32 0, metadata !863, null}
!870 = metadata !{i32 546, i32 0, metadata !863, null}
!871 = metadata !{i32 547, i32 0, metadata !863, null}
!872 = metadata !{i32 548, i32 0, metadata !863, null}
!873 = metadata !{i32 554, i32 0, metadata !311, null}
!874 = metadata !{i32 557, i32 0, metadata !334, null}
!875 = metadata !{i32 558, i32 0, metadata !334, null}
!876 = metadata !{i32 563, i32 0, metadata !334, null}
!877 = metadata !{i32 564, i32 0, metadata !878, null}
!878 = metadata !{i32 786443, metadata !1, metadata !334, i32 563, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!879 = metadata !{i32 565, i32 0, metadata !878, null}
!880 = metadata !{i32 566, i32 0, metadata !878, null}
!881 = metadata !{i32 567, i32 0, metadata !878, null}
!882 = metadata !{i32 568, i32 0, metadata !334, null}
!883 = metadata !{i32 569, i32 0, metadata !884, null}
!884 = metadata !{i32 786443, metadata !1, metadata !334, i32 568, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!885 = metadata !{i32 570, i32 0, metadata !884, null}
!886 = metadata !{i32 571, i32 0, metadata !884, null}
!887 = metadata !{i32 573, i32 0, metadata !334, null}
!888 = metadata !{i32 574, i32 0, metadata !334, null}
!889 = metadata !{i32 575, i32 0, metadata !334, null}
!890 = metadata !{i32 577, i32 0, metadata !334, null}
!891 = metadata !{i32 578, i32 0, metadata !892, null}
!892 = metadata !{i32 786443, metadata !1, metadata !334, i32 578, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!893 = metadata !{i32 580, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !892, i32 578, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!895 = metadata !{i32 581, i32 0, metadata !894, null}
!896 = metadata !{i32 579, i32 0, metadata !894, null}
!897 = metadata !{i32 582, i32 0, metadata !894, null}
!898 = metadata !{i32 584, i32 0, metadata !894, null}
!899 = metadata !{i32 590, i32 0, metadata !334, null}
!900 = metadata !{i32 592, i32 0, metadata !352, null}
!901 = metadata !{i32 596, i32 0, metadata !352, null}
!902 = metadata !{i32 597, i32 0, metadata !903, null}
!903 = metadata !{i32 786443, metadata !1, metadata !904, i32 597, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!904 = metadata !{i32 786443, metadata !1, metadata !352, i32 596, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!905 = metadata !{i32 598, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !1, metadata !903, i32 597, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!907 = metadata !{i32 599, i32 0, metadata !908, null}
!908 = metadata !{i32 786443, metadata !1, metadata !906, i32 598, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!909 = metadata !{i32 600, i32 0, metadata !908, null}
!910 = metadata !{i32 601, i32 0, metadata !908, null}
!911 = metadata !{i32 602, i32 0, metadata !908, null}
!912 = metadata !{i32 603, i32 0, metadata !906, null}
!913 = metadata !{i32 605, i32 0, metadata !904, null}
!914 = metadata !{i32 606, i32 0, metadata !904, null}
!915 = metadata !{i32 607, i32 0, metadata !352, null}
!916 = metadata !{i32 609, i32 0, metadata !361, null}
!917 = metadata !{i32 610, i32 0, metadata !361, null}
!918 = metadata !{i32 615, i32 0, metadata !361, null}
!919 = metadata !{i32 616, i32 0, metadata !920, null}
!920 = metadata !{i32 786443, metadata !1, metadata !361, i32 616, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!921 = metadata !{i32 617, i32 0, metadata !922, null}
!922 = metadata !{i32 786443, metadata !1, metadata !920, i32 616, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!923 = metadata !{i32 620, i32 0, metadata !924, null}
!924 = metadata !{i32 786443, metadata !1, metadata !922, i32 620, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!925 = metadata !{i32 624, i32 0, metadata !926, null}
!926 = metadata !{i32 786443, metadata !1, metadata !924, i32 620, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!927 = metadata !{i32 618, i32 0, metadata !922, null}
!928 = metadata !{i32 619, i32 0, metadata !922, null}
!929 = metadata !{i32 621, i32 0, metadata !926, null}
!930 = metadata !{i32 622, i32 0, metadata !926, null}
!931 = metadata !{i32 623, i32 0, metadata !926, null}
!932 = metadata !{i32 625, i32 0, metadata !926, null}
!933 = metadata !{i32 627, i32 0, metadata !926, null}
!934 = metadata !{i32 629, i32 0, metadata !922, null}
!935 = metadata !{i32 630, i32 0, metadata !922, null}
!936 = metadata !{i32 632, i32 0, metadata !922, null}
!937 = metadata !{i32 634, i32 0, metadata !361, null}
!938 = metadata !{i32 636, i32 0, metadata !376, null}
!939 = metadata !{i32 637, i32 0, metadata !376, null}
!940 = metadata !{i32 639, i32 0, metadata !376, null}
!941 = metadata !{i32 786689, metadata !444, metadata !"nlevels", metadata !21, i32 16777709, metadata !28, i32 0, metadata !942} ; [ DW_TAG_arg_variable ] [nlevels] [line 493]
!942 = metadata !{i32 642, i32 0, metadata !376, null}
!943 = metadata !{i32 493, i32 0, metadata !444, metadata !942}
!944 = metadata !{i32 786689, metadata !444, metadata !"lo", metadata !21, i32 33554925, metadata !26, i32 0, metadata !942} ; [ DW_TAG_arg_variable ] [lo] [line 493]
!945 = metadata !{i32 786689, metadata !444, metadata !"mid", metadata !21, i32 50332141, metadata !26, i32 0, metadata !942} ; [ DW_TAG_arg_variable ] [mid] [line 493]
!946 = metadata !{i32 786689, metadata !444, metadata !"hi", metadata !21, i32 67109357, metadata !26, i32 0, metadata !942} ; [ DW_TAG_arg_variable ] [hi] [line 493]
!947 = metadata !{i32 498, i32 0, metadata !444, metadata !942}
!948 = metadata !{i32 643, i32 0, metadata !376, null}
!949 = metadata !{i32 644, i32 0, metadata !376, null}
!950 = metadata !{i32 646, i32 0, metadata !951, null}
!951 = metadata !{i32 786443, metadata !1, metadata !376, i32 646, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!952 = metadata !{i32 647, i32 0, metadata !953, null}
!953 = metadata !{i32 786443, metadata !1, metadata !951, i32 646, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!954 = metadata !{i32 650, i32 0, metadata !955, null}
!955 = metadata !{i32 786443, metadata !1, metadata !953, i32 650, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!956 = metadata !{i32 660, i32 0, metadata !957, null}
!957 = metadata !{i32 786443, metadata !1, metadata !955, i32 650, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!958 = metadata !{i32 648, i32 0, metadata !953, null}
!959 = metadata !{i32 649, i32 0, metadata !953, null}
!960 = metadata !{i32 651, i32 0, metadata !957, null}
!961 = metadata !{i32 652, i32 0, metadata !957, null}
!962 = metadata !{i32 653, i32 0, metadata !957, null}
!963 = metadata !{i32 654, i32 0, metadata !957, null}
!964 = metadata !{i32 656, i32 0, metadata !957, null}
!965 = metadata !{i32 657, i32 0, metadata !957, null}
!966 = metadata !{i32 658, i32 0, metadata !957, null}
!967 = metadata !{i32 659, i32 0, metadata !957, null}
!968 = metadata !{i32 661, i32 0, metadata !957, null}
!969 = metadata !{i32 663, i32 0, metadata !957, null}
!970 = metadata !{i32 665, i32 0, metadata !953, null}
!971 = metadata !{i32 666, i32 0, metadata !953, null}
!972 = metadata !{i32 668, i32 0, metadata !953, null}
!973 = metadata !{i32 670, i32 0, metadata !376, null}
!974 = metadata !{i32 672, i32 0, metadata !394, null}
!975 = metadata !{i32 678, i32 0, metadata !394, null}
!976 = metadata !{i32 680, i32 0, metadata !394, null}
!977 = metadata !{i32 681, i32 0, metadata !394, null}
!978 = metadata !{i32 683, i32 0, metadata !394, null}
!979 = metadata !{i32 684, i32 0, metadata !394, null}
!980 = metadata !{i32 685, i32 0, metadata !981, null}
!981 = metadata !{i32 786443, metadata !1, metadata !394, i32 685, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!982 = metadata !{i32 686, i32 0, metadata !981, null}
!983 = metadata !{i32 692, i32 0, metadata !394, null}
!984 = metadata !{i32 693, i32 0, metadata !394, null}
!985 = metadata !{i32 694, i32 0, metadata !986, null}
!986 = metadata !{i32 786443, metadata !1, metadata !394, i32 694, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!987 = metadata !{i32 703, i32 0, metadata !988, null}
!988 = metadata !{i32 786443, metadata !1, metadata !989, i32 702, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!989 = metadata !{i32 786443, metadata !1, metadata !990, i32 702, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!990 = metadata !{i32 786443, metadata !1, metadata !986, i32 694, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!991 = metadata !{i32 695, i32 0, metadata !990, null}
!992 = metadata !{i32 696, i32 0, metadata !990, null}
!993 = metadata !{i32 697, i32 0, metadata !990, null}
!994 = metadata !{i32 699, i32 0, metadata !995, null}
!995 = metadata !{i32 786443, metadata !1, metadata !990, i32 699, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/matio.c]
!996 = metadata !{i32 698, i32 0, metadata !990, null}
!997 = metadata !{i32 702, i32 0, metadata !989, null}
!998 = metadata !{i32 700, i32 0, metadata !995, null}
!999 = metadata !{i32 704, i32 0, metadata !988, null}
!1000 = metadata !{i32 706, i32 0, metadata !990, null}
!1001 = metadata !{i32 707, i32 0, metadata !990, null}
!1002 = metadata !{i32 709, i32 0, metadata !990, null}
!1003 = metadata !{i32 711, i32 0, metadata !394, null}
!1004 = metadata !{i32 713, i32 0, metadata !404, null}
!1005 = metadata !{i32 714, i32 0, metadata !404, null}
!1006 = metadata !{i32 715, i32 0, metadata !404, null}
!1007 = metadata !{i32 716, i32 0, metadata !404, null}
!1008 = metadata !{i32 717, i32 0, metadata !404, null}
!1009 = metadata !{i32 723, i32 0, metadata !404, null}
!1010 = metadata !{i32 724, i32 0, metadata !404, null}
!1011 = metadata !{i32 726, i32 0, metadata !404, null}
!1012 = metadata !{i32 727, i32 0, metadata !404, null}
!1013 = metadata !{i32 728, i32 0, metadata !404, null}
!1014 = metadata !{i32 729, i32 0, metadata !404, null}
!1015 = metadata !{i32 730, i32 0, metadata !404, null}
!1016 = metadata !{i32 731, i32 0, metadata !404, null}
!1017 = metadata !{i32 733, i32 0, metadata !425, null}
!1018 = metadata !{i32 734, i32 0, metadata !425, null}
!1019 = metadata !{i32 735, i32 0, metadata !425, null}
!1020 = metadata !{i32 736, i32 0, metadata !425, null}
!1021 = metadata !{i32 737, i32 0, metadata !425, null}
!1022 = metadata !{i32 755, i32 0, metadata !425, null}
!1023 = metadata !{i32 756, i32 0, metadata !425, null}
!1024 = metadata !{i32 758, i32 0, metadata !425, null}
!1025 = metadata !{i32 759, i32 0, metadata !425, null}
!1026 = metadata !{i32 760, i32 0, metadata !425, null}
!1027 = metadata !{i32 761, i32 0, metadata !425, null}
!1028 = metadata !{i32 762, i32 0, metadata !425, null}
!1029 = metadata !{i32 763, i32 0, metadata !425, null}
