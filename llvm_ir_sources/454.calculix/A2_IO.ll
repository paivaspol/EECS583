; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [45 x i8] c"\0A error in A2_readFromFile(%p,%s)\0A bad input\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"\0A error in A2_readFromFile(%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [97 x i8] c"\0A error in A2_readFromFile(%s)\0A bad A2 file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [54 x i8] c"\0A error in A2_readFromFormattedFile(%p,%p)\0A bad input\00", align 1
@.str6 = private unnamed_addr constant [60 x i8] c"\0A error in A2_readFromFormattedFile()\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [58 x i8] c"\0A error in A2_readFromFormattedFile\0A %d items of %d read\0A\00", align 1
@.str8 = private unnamed_addr constant [57 x i8] c"\0A fatal error in A2_readFromBinaryFile(%p,%p)\0A bad input\00", align 1
@.str9 = private unnamed_addr constant [55 x i8] c"\0A error in A2_readFromBinaryFile\0A %d items of %d read\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str10 = private unnamed_addr constant [31 x i8] c"\0A itemp = {%d, %d, %d, %d, %d}\00", align 1
@.str11 = private unnamed_addr constant [50 x i8] c"\0A fatal error in A2_writeToFile(%p,%s)\0A bad input\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str13 = private unnamed_addr constant [52 x i8] c"\0A error in A2_writeToFile()\0A unable to open file %s\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str16 = private unnamed_addr constant [50 x i8] c"\0A error in A2_writeToFile\0A unable to open file %s\00", align 1
@.str17 = private unnamed_addr constant [17 x i8] c"\0A %d %d %d %d %d\00", align 1
@.str18 = private unnamed_addr constant [56 x i8] c"\0A fatal error in A2_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"%19d\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"\0A%4d\00", align 1
@.str22 = private unnamed_addr constant [8 x i8] c"%19.11e\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"%36d\00", align 1
@.str24 = private unnamed_addr constant [19 x i8] c" (%16.9e,%16.9e*i)\00", align 1
@.str25 = private unnamed_addr constant [50 x i8] c"\0A fatal error in A2_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str26 = private unnamed_addr constant [32 x i8] c"\0A A2 : double 2D array object :\00", align 1
@.str27 = private unnamed_addr constant [40 x i8] c"\0A A2 : double complex 2D array object :\00", align 1
@.str28 = private unnamed_addr constant [126 x i8] c"\0A %d x %d matrix, inc1 = %d, inc2 = %d,\0A nowned = %d, %d entries allocated, occupies %d bytes\0A entries = %p, maxabs = %20.12e\00", align 1
@.str29 = private unnamed_addr constant [57 x i8] c"\0A fatal error in A2_writeForMatlab(%p,%p,%p)\0A bad input\0A\00", align 1
@.str30 = private unnamed_addr constant [24 x i8] c"\0A %s(%d,%d) = %24.16e ;\00", align 1
@.str31 = private unnamed_addr constant [36 x i8] c"\0A %s(%d,%d) = %24.16e + %24.16e*i ;\00", align 1
@.str32 = private unnamed_addr constant [5 x i8] c".a2f\00", align 1
@.str33 = private unnamed_addr constant [5 x i8] c".a2b\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @A2_readFromFile(%struct._A2* %mtx, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !26), !dbg !165
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !27), !dbg !166
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !85), !dbg !167
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !168
  %cmp1 = icmp eq i8* %fn, null, !dbg !168
  %or.cond = or i1 %cmp, %cmp1, !dbg !168
  br i1 %or.cond, label %if.then, label %if.end, !dbg !168

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !169, !tbaa !171
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._A2* %mtx, i8* %fn) #6, !dbg !169
  br label %return, !dbg !174

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #7, !dbg !175
  %conv = trunc i64 %call2 to i32, !dbg !175
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !84), !dbg !175
  tail call void @llvm.dbg.value(metadata !176, i64 0, metadata !86), !dbg !177
  %cmp5 = icmp sgt i32 %conv, 4, !dbg !178
  br i1 %cmp5, label %if.then7, label %if.else41, !dbg !178

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !179
  %sext = add i64 %sub, -17179869184, !dbg !179
  %idxprom = ashr exact i64 %sext, 32, !dbg !179
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !179
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #7, !dbg !179
  %cmp9 = icmp eq i32 %call8, 0, !dbg !179
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !179

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !181
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !28), !dbg !181
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !181
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !181

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !183, !tbaa !171
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i8* %fn, i8* %fn) #6, !dbg !183
  br label %return, !dbg !185

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @A2_readFromBinaryFile(%struct._A2* %mtx, %struct._IO_FILE* %call12) #8, !dbg !186
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !85), !dbg !186
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6, !dbg !188
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0)) #7, !dbg !189
  %cmp25 = icmp eq i32 %call24, 0, !dbg !189
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !189

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !190
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !28), !dbg !190
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !190
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !190

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !192, !tbaa !171
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i8* %fn, i8* %fn) #6, !dbg !192
  br label %return, !dbg !194

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @A2_readFromFormattedFile(%struct._A2* %mtx, %struct._IO_FILE* %call28) #8, !dbg !195
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !85), !dbg !195
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6, !dbg !197
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !198, !tbaa !171
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([97 x i8]* @.str4, i64 0, i64 0), i8* %fn, i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0)) #6, !dbg !198
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !85), !dbg !200
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !201, !tbaa !171
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([97 x i8]* @.str4, i64 0, i64 0), i8* %fn, i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0)) #6, !dbg !201
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !85), !dbg !203
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0, !dbg !204
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @A2_readFromBinaryFile(%struct._A2* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [5 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !101), !dbg !205
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !102), !dbg !206
  call void @llvm.dbg.declare(metadata !{[5 x i32]* %itemp}, metadata !105), !dbg !207
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !208
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !208
  %or.cond = or i1 %cmp, %cmp1, !dbg !208
  br i1 %or.cond, label %if.then, label %if.end, !dbg !208

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !209, !tbaa !171
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str8, i64 0, i64 0), %struct._A2* %mtx, %struct._IO_FILE* %fp) #6, !dbg !209
  br label %return, !dbg !211

if.end:                                           ; preds = %entry
  call void @A2_clearData(%struct._A2* %mtx) #6, !dbg !212
  %1 = bitcast [5 x i32]* %itemp to i8*, !dbg !213
  %call2 = call i64 @fread(i8* %1, i64 4, i64 5, %struct._IO_FILE* %fp) #6, !dbg !213
  %conv = trunc i64 %call2 to i32, !dbg !213
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !103), !dbg !213
  %cmp3 = icmp eq i32 %conv, 5, !dbg !213
  br i1 %cmp3, label %if.end7, label %if.then5, !dbg !213

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !214, !tbaa !171
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i32 %conv, i32 5) #6, !dbg !214
  br label %return, !dbg !216

if.end7:                                          ; preds = %if.end
  %3 = load %struct._IO_FILE** @stdout, align 8, !dbg !217, !tbaa !171
  %4 = bitcast [5 x i32]* %itemp to i64*, !dbg !217
  %5 = load i64* %4, align 16, !dbg !217
  %6 = trunc i64 %5 to i32, !dbg !217
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i32
  %arrayidx9 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 2, !dbg !217
  %9 = bitcast i32* %arrayidx9 to i64*, !dbg !217
  %10 = load i64* %9, align 8, !dbg !217
  %11 = trunc i64 %10 to i32, !dbg !217
  %12 = lshr i64 %10, 32
  %13 = trunc i64 %12 to i32
  %arrayidx11 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 4, !dbg !217
  %14 = load i32* %arrayidx11, align 16, !dbg !217, !tbaa !218
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([31 x i8]* @.str10, i64 0, i64 0), i32 %6, i32 %8, i32 %11, i32 %13, i32 %14) #6, !dbg !217
  %15 = load %struct._IO_FILE** @stdout, align 8, !dbg !219, !tbaa !171
  %call13 = call i32 @fflush(%struct._IO_FILE* %15) #6, !dbg !219
  call void @A2_init(%struct._A2* %mtx, i32 %6, i32 %8, i32 %11, i32 %13, i32 %14, double* null) #6, !dbg !220
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !221
  %16 = load i32* %n1, align 4, !dbg !221, !tbaa !218
  %sub = add nsw i32 %16, -1, !dbg !221
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !221
  %17 = load i32* %inc1, align 4, !dbg !221, !tbaa !218
  %mul = mul nsw i32 %sub, %17, !dbg !221
  %add = add nsw i32 %mul, 1, !dbg !221
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !221
  %18 = load i32* %n2, align 4, !dbg !221, !tbaa !218
  %sub19 = add nsw i32 %18, -1, !dbg !221
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !221
  %19 = load i32* %inc2, align 4, !dbg !221, !tbaa !218
  %mul20 = mul nsw i32 %sub19, %19, !dbg !221
  %add21 = add nsw i32 %add, %mul20, !dbg !221
  call void @llvm.dbg.value(metadata !{i32 %add21}, i64 0, metadata !104), !dbg !221
  %cmp22 = icmp sgt i32 %add21, 0, !dbg !221
  br i1 %cmp22, label %if.then24, label %return, !dbg !221

if.then24:                                        ; preds = %if.end7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !222
  %20 = load i32* %type, align 4, !dbg !222, !tbaa !218
  switch i32 %20, label %return [
    i32 1, label %if.then27
    i32 2, label %if.then39
  ], !dbg !222

if.then27:                                        ; preds = %if.then24
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !224
  %21 = load double** %entries, align 8, !dbg !224, !tbaa !171
  %22 = bitcast double* %21 to i8*, !dbg !224
  %conv28 = sext i32 %add21 to i64, !dbg !224
  %call29 = call i64 @fread(i8* %22, i64 8, i64 %conv28, %struct._IO_FILE* %fp) #6, !dbg !224
  %conv30 = trunc i64 %call29 to i32, !dbg !224
  call void @llvm.dbg.value(metadata !{i32 %conv30}, i64 0, metadata !103), !dbg !224
  %cmp31 = icmp eq i32 %conv30, %add21, !dbg !224
  br i1 %cmp31, label %return, label %if.then33, !dbg !224

if.then33:                                        ; preds = %if.then27
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !226, !tbaa !171
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i32 %conv30, i32 %add21) #6, !dbg !226
  br label %return, !dbg !228

if.then39:                                        ; preds = %if.then24
  %entries40 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !229
  %24 = load double** %entries40, align 8, !dbg !229, !tbaa !171
  %25 = bitcast double* %24 to i8*, !dbg !229
  %mul41 = shl nsw i32 %add21, 1, !dbg !229
  %conv42 = sext i32 %mul41 to i64, !dbg !229
  %call43 = call i64 @fread(i8* %25, i64 8, i64 %conv42, %struct._IO_FILE* %fp) #6, !dbg !229
  %conv44 = trunc i64 %call43 to i32, !dbg !229
  call void @llvm.dbg.value(metadata !{i32 %conv44}, i64 0, metadata !103), !dbg !229
  %cmp46 = icmp eq i32 %conv44, %mul41, !dbg !229
  br i1 %cmp46, label %return, label %if.then48, !dbg !229

if.then48:                                        ; preds = %if.then39
  %26 = load %struct._IO_FILE** @stderr, align 8, !dbg !231, !tbaa !171
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i32 %conv44, i32 %mul41) #6, !dbg !231
  br label %return, !dbg !233

return:                                           ; preds = %if.end7, %if.then39, %if.then27, %if.then24, %if.then48, %if.then33, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then33 ], [ 0, %if.then48 ], [ 1, %if.then24 ], [ 1, %if.then27 ], [ 1, %if.then39 ], [ 1, %if.end7 ]
  ret i32 %retval.0, !dbg !234
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @A2_readFromFormattedFile(%struct._A2* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [5 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !91), !dbg !235
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !92), !dbg !236
  call void @llvm.dbg.declare(metadata !{[5 x i32]* %itemp}, metadata !95), !dbg !237
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !238
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !238
  %or.cond = or i1 %cmp, %cmp1, !dbg !238
  br i1 %or.cond, label %if.then, label %if.end, !dbg !238

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !239, !tbaa !171
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str5, i64 0, i64 0), %struct._A2* %mtx, %struct._IO_FILE* %fp) #6, !dbg !239
  br label %return, !dbg !241

if.end:                                           ; preds = %entry
  call void @A2_clearData(%struct._A2* %mtx) #6, !dbg !242
  %arraydecay = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 0, !dbg !243
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 5, i32* %arraydecay) #6, !dbg !243
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !93), !dbg !243
  %cmp3 = icmp eq i32 %call2, 5, !dbg !243
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !243

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !244, !tbaa !171
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8]* @.str6, i64 0, i64 0), i32 %call2, i32 5) #6, !dbg !244
  br label %return, !dbg !246

if.end6:                                          ; preds = %if.end
  %2 = bitcast [5 x i32]* %itemp to i64*, !dbg !247
  %3 = load i64* %2, align 16, !dbg !247
  %4 = trunc i64 %3 to i32, !dbg !247
  %5 = lshr i64 %3, 32
  %6 = trunc i64 %5 to i32
  %arrayidx8 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 2, !dbg !247
  %7 = bitcast i32* %arrayidx8 to i64*, !dbg !247
  %8 = load i64* %7, align 8, !dbg !247
  %9 = trunc i64 %8 to i32, !dbg !247
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  %arrayidx10 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 4, !dbg !247
  %12 = load i32* %arrayidx10, align 16, !dbg !247, !tbaa !218
  call void @A2_init(%struct._A2* %mtx, i32 %4, i32 %6, i32 %9, i32 %11, i32 %12, double* null) #6, !dbg !247
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !248
  %13 = load i32* %n1, align 4, !dbg !248, !tbaa !218
  %sub = add nsw i32 %13, -1, !dbg !248
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !248
  %14 = load i32* %inc1, align 4, !dbg !248, !tbaa !218
  %mul = mul nsw i32 %sub, %14, !dbg !248
  %add = add nsw i32 %mul, 1, !dbg !248
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !248
  %15 = load i32* %n2, align 4, !dbg !248, !tbaa !218
  %sub11 = add nsw i32 %15, -1, !dbg !248
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !248
  %16 = load i32* %inc2, align 4, !dbg !248, !tbaa !218
  %mul12 = mul nsw i32 %sub11, %16, !dbg !248
  %add13 = add nsw i32 %add, %mul12, !dbg !248
  call void @llvm.dbg.value(metadata !{i32 %add13}, i64 0, metadata !94), !dbg !248
  %cmp14 = icmp sgt i32 %add13, 0, !dbg !248
  br i1 %cmp14, label %if.then15, label %return, !dbg !248

if.then15:                                        ; preds = %if.end6
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !249
  %17 = load i32* %type, align 4, !dbg !249, !tbaa !218
  switch i32 %17, label %return [
    i32 1, label %if.then17
    i32 2, label %if.then25
  ], !dbg !249

if.then17:                                        ; preds = %if.then15
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !251
  %18 = load double** %entries, align 8, !dbg !251, !tbaa !171
  %call18 = call i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %add13, double* %18) #6, !dbg !251
  call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !93), !dbg !251
  %cmp19 = icmp eq i32 %call18, %add13, !dbg !251
  br i1 %cmp19, label %return, label %if.then20, !dbg !251

if.then20:                                        ; preds = %if.then17
  %19 = load %struct._IO_FILE** @stderr, align 8, !dbg !253, !tbaa !171
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([58 x i8]* @.str7, i64 0, i64 0), i32 %call18, i32 %add13) #6, !dbg !253
  br label %return, !dbg !255

if.then25:                                        ; preds = %if.then15
  %mul26 = shl nsw i32 %add13, 1, !dbg !256
  %entries27 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !256
  %20 = load double** %entries27, align 8, !dbg !256, !tbaa !171
  %call28 = call i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %mul26, double* %20) #6, !dbg !256
  call void @llvm.dbg.value(metadata !{i32 %call28}, i64 0, metadata !93), !dbg !256
  %cmp30 = icmp eq i32 %call28, %mul26, !dbg !256
  br i1 %cmp30, label %return, label %if.then31, !dbg !256

if.then31:                                        ; preds = %if.then25
  %21 = load %struct._IO_FILE** @stderr, align 8, !dbg !258, !tbaa !171
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([58 x i8]* @.str7, i64 0, i64 0), i32 %call28, i32 %mul26) #6, !dbg !258
  br label %return, !dbg !260

return:                                           ; preds = %if.end6, %if.then25, %if.then17, %if.then15, %if.then31, %if.then20, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then20 ], [ 0, %if.then31 ], [ 1, %if.then15 ], [ 1, %if.then17 ], [ 1, %if.then25 ], [ 1, %if.end6 ]
  ret i32 %retval.0, !dbg !261
}

; Function Attrs: optsize
declare void @A2_clearData(%struct._A2*) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #4

; Function Attrs: optsize
declare void @A2_init(%struct._A2*, i32, i32, i32, i32, i32, double*) #4

; Function Attrs: optsize
declare i32 @DVfscanf(%struct._IO_FILE*, i32, double*) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @A2_writeToFile(%struct._A2* %mtx, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !110), !dbg !262
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !111), !dbg !263
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !264
  %cmp1 = icmp eq i8* %fn, null, !dbg !264
  %or.cond = or i1 %cmp, %cmp1, !dbg !264
  br i1 %or.cond, label %if.then, label %if.end, !dbg !264

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !265, !tbaa !171
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str11, i64 0, i64 0), %struct._A2* %mtx, i8* %fn) #6, !dbg !265
  br label %if.end, !dbg !267

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i64 @strlen(i8* %fn) #7, !dbg !268
  %conv = trunc i64 %call2 to i32, !dbg !268
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !113), !dbg !268
  tail call void @llvm.dbg.value(metadata !176, i64 0, metadata !114), !dbg !269
  %cmp5 = icmp sgt i32 %conv, 4, !dbg !270
  br i1 %cmp5, label %if.then7, label %if.else46, !dbg !270

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !271
  %sext = add i64 %sub, -17179869184, !dbg !271
  %idxprom = ashr exact i64 %sext, 32, !dbg !271
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !271
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #7, !dbg !271
  %cmp9 = icmp eq i32 %call8, 0, !dbg !271
  br i1 %cmp9, label %if.then11, label %if.else19, !dbg !271

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0)) #6, !dbg !273
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !112), !dbg !273
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !273
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !273

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !275, !tbaa !171
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), i8* %fn) #6, !dbg !275
  br label %if.end55, !dbg !277

if.else:                                          ; preds = %if.then11
  tail call void @A2_writeToBinaryFile(%struct._A2* %mtx, %struct._IO_FILE* %call12) #8, !dbg !278
  %call17 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6, !dbg !280
  br label %if.end55

if.else19:                                        ; preds = %if.then7
  %call23 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0)) #7, !dbg !281
  %cmp24 = icmp eq i32 %call23, 0, !dbg !281
  br i1 %cmp24, label %if.then26, label %if.else35, !dbg !281

if.then26:                                        ; preds = %if.else19
  %call27 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #6, !dbg !282
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call27}, i64 0, metadata !112), !dbg !282
  %cmp28 = icmp eq %struct._IO_FILE* %call27, null, !dbg !282
  br i1 %cmp28, label %if.then30, label %if.else32, !dbg !282

if.then30:                                        ; preds = %if.then26
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !284, !tbaa !171
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), i8* %fn) #6, !dbg !284
  br label %if.end55, !dbg !286

if.else32:                                        ; preds = %if.then26
  tail call void @A2_writeToFormattedFile(%struct._A2* %mtx, %struct._IO_FILE* %call27) #8, !dbg !287
  %call33 = tail call i32 @fclose(%struct._IO_FILE* %call27) #6, !dbg !289
  br label %if.end55

if.else35:                                        ; preds = %if.else19
  %call36 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #6, !dbg !290
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call36}, i64 0, metadata !112), !dbg !290
  %cmp37 = icmp eq %struct._IO_FILE* %call36, null, !dbg !290
  br i1 %cmp37, label %if.then39, label %if.else41, !dbg !290

if.then39:                                        ; preds = %if.else35
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !292, !tbaa !171
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), i8* %fn) #6, !dbg !292
  br label %if.end55, !dbg !294

if.else41:                                        ; preds = %if.else35
  tail call void @A2_writeForHumanEye(%struct._A2* %mtx, %struct._IO_FILE* %call36) #8, !dbg !295
  %call42 = tail call i32 @fclose(%struct._IO_FILE* %call36) #6, !dbg !297
  br label %if.end55

if.else46:                                        ; preds = %if.end
  %call47 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #6, !dbg !298
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call47}, i64 0, metadata !112), !dbg !298
  %cmp48 = icmp eq %struct._IO_FILE* %call47, null, !dbg !298
  br i1 %cmp48, label %if.then50, label %if.else52, !dbg !298

if.then50:                                        ; preds = %if.else46
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !300, !tbaa !171
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([50 x i8]* @.str16, i64 0, i64 0), i8* %fn) #6, !dbg !300
  br label %if.end55, !dbg !302

if.else52:                                        ; preds = %if.else46
  tail call void @A2_writeForHumanEye(%struct._A2* %mtx, %struct._IO_FILE* %call47) #8, !dbg !303
  %call53 = tail call i32 @fclose(%struct._IO_FILE* %call47) #6, !dbg !305
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %if.else52, %if.else, %if.then15, %if.then39, %if.else41, %if.then30, %if.else32
  ret void, !dbg !306
}

; Function Attrs: nounwind optsize uwtable
define void @A2_writeToBinaryFile(%struct._A2* nocapture %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !124), !dbg !307
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !125), !dbg !308
  %cmp = icmp eq %struct._IO_FILE* %fp, null, !dbg !309
  br i1 %cmp, label %return, label %if.end, !dbg !309

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !310
  %0 = bitcast %struct._A2* %mtx to i8*, !dbg !310
  %call = tail call i64 @fwrite(i8* %0, i64 4, i64 1, %struct._IO_FILE* %fp) #6, !dbg !310
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !311
  %1 = bitcast i32* %n1 to i8*, !dbg !311
  %call1 = tail call i64 @fwrite(i8* %1, i64 4, i64 1, %struct._IO_FILE* %fp) #6, !dbg !311
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !312
  %2 = bitcast i32* %n2 to i8*, !dbg !312
  %call2 = tail call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %fp) #6, !dbg !312
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !313
  %3 = bitcast i32* %inc1 to i8*, !dbg !313
  %call3 = tail call i64 @fwrite(i8* %3, i64 4, i64 1, %struct._IO_FILE* %fp) #6, !dbg !313
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !314
  %4 = bitcast i32* %inc2 to i8*, !dbg !314
  %call4 = tail call i64 @fwrite(i8* %4, i64 4, i64 1, %struct._IO_FILE* %fp) #6, !dbg !314
  %5 = load i32* %n1, align 4, !dbg !315, !tbaa !218
  %sub = add nsw i32 %5, -1, !dbg !315
  %6 = load i32* %inc1, align 4, !dbg !315, !tbaa !218
  %mul = mul nsw i32 %sub, %6, !dbg !315
  %add = add nsw i32 %mul, 1, !dbg !315
  %7 = load i32* %n2, align 4, !dbg !315, !tbaa !218
  %sub8 = add nsw i32 %7, -1, !dbg !315
  %8 = load i32* %inc2, align 4, !dbg !315, !tbaa !218
  %mul10 = mul nsw i32 %sub8, %8, !dbg !315
  %add11 = add nsw i32 %add, %mul10, !dbg !315
  tail call void @llvm.dbg.value(metadata !{i32 %add11}, i64 0, metadata !126), !dbg !315
  %cmp12 = icmp sgt i32 %add11, 0, !dbg !315
  br i1 %cmp12, label %land.lhs.true, label %return, !dbg !315

land.lhs.true:                                    ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !315
  %9 = load double** %entries, align 8, !dbg !315, !tbaa !171
  %cmp13 = icmp eq double* %9, null, !dbg !315
  br i1 %cmp13, label %return, label %if.then14, !dbg !315

if.then14:                                        ; preds = %land.lhs.true
  %10 = load i32* %type, align 4, !dbg !316, !tbaa !218
  switch i32 %10, label %return [
    i32 1, label %if.then17
    i32 2, label %if.then23
  ], !dbg !316

if.then17:                                        ; preds = %if.then14
  %11 = bitcast double** %entries to i8*, !dbg !318
  %conv = sext i32 %add11 to i64, !dbg !318
  %call19 = tail call i64 @fwrite(i8* %11, i64 8, i64 %conv, %struct._IO_FILE* %fp) #6, !dbg !318
  br label %return, !dbg !320

if.then23:                                        ; preds = %if.then14
  %12 = bitcast double** %entries to i8*, !dbg !321
  %mul25 = shl nsw i32 %add11, 1, !dbg !321
  %conv26 = sext i32 %mul25 to i64, !dbg !321
  %call27 = tail call i64 @fwrite(i8* %12, i64 8, i64 %conv26, %struct._IO_FILE* %fp) #6, !dbg !321
  br label %return, !dbg !323

return:                                           ; preds = %if.then14, %land.lhs.true, %if.end, %if.then23, %if.then17, %entry
  ret void, !dbg !324
}

; Function Attrs: nounwind optsize uwtable
define void @A2_writeToFormattedFile(%struct._A2* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !119), !dbg !325
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !120), !dbg !326
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !327
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !327
  %or.cond = or i1 %cmp, %cmp1, !dbg !327
  br i1 %or.cond, label %return, label %if.end, !dbg !327

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !328
  %0 = load i32* %type, align 4, !dbg !328, !tbaa !218
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !328
  %1 = load i32* %n1, align 4, !dbg !328, !tbaa !218
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !328
  %2 = load i32* %n2, align 4, !dbg !328, !tbaa !218
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !328
  %3 = load i32* %inc1, align 4, !dbg !328, !tbaa !218
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !328
  %4 = load i32* %inc2, align 4, !dbg !328, !tbaa !218
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #6, !dbg !328
  %5 = load i32* %n1, align 4, !dbg !329, !tbaa !218
  %sub = add nsw i32 %5, -1, !dbg !329
  %6 = load i32* %inc1, align 4, !dbg !329, !tbaa !218
  %mul = mul nsw i32 %sub, %6, !dbg !329
  %add = add nsw i32 %mul, 1, !dbg !329
  %7 = load i32* %n2, align 4, !dbg !329, !tbaa !218
  %sub5 = add nsw i32 %7, -1, !dbg !329
  %8 = load i32* %inc2, align 4, !dbg !329, !tbaa !218
  %mul7 = mul nsw i32 %sub5, %8, !dbg !329
  %add8 = add nsw i32 %add, %mul7, !dbg !329
  tail call void @llvm.dbg.value(metadata !{i32 %add8}, i64 0, metadata !121), !dbg !329
  %cmp9 = icmp sgt i32 %add8, 0, !dbg !329
  br i1 %cmp9, label %land.lhs.true, label %return, !dbg !329

land.lhs.true:                                    ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !329
  %9 = load double** %entries, align 8, !dbg !329, !tbaa !171
  %cmp10 = icmp eq double* %9, null, !dbg !329
  br i1 %cmp10, label %return, label %if.then11, !dbg !329

if.then11:                                        ; preds = %land.lhs.true
  %10 = load i32* %type, align 4, !dbg !330, !tbaa !218
  switch i32 %10, label %return [
    i32 1, label %if.then14
    i32 2, label %if.then18
  ], !dbg !330

if.then14:                                        ; preds = %if.then11
  tail call void @DVfprintf(%struct._IO_FILE* %fp, i32 %add8, double* %9) #6, !dbg !332
  br label %return, !dbg !334

if.then18:                                        ; preds = %if.then11
  %mul19 = shl nsw i32 %add8, 1, !dbg !335
  tail call void @DVfprintf(%struct._IO_FILE* %fp, i32 %mul19, double* %9) #6, !dbg !335
  br label %return, !dbg !337

return:                                           ; preds = %if.then11, %land.lhs.true, %if.end, %if.then18, %if.then14, %entry
  ret void, !dbg !338
}

; Function Attrs: nounwind optsize uwtable
define void @A2_writeForHumanEye(%struct._A2* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !129), !dbg !339
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !130), !dbg !340
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !341
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !341
  %or.cond = or i1 %cmp, %cmp1, !dbg !341
  br i1 %or.cond, label %if.then, label %if.end, !dbg !341

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !342, !tbaa !171
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str18, i64 0, i64 0), %struct._A2* %mtx, %struct._IO_FILE* %fp) #6, !dbg !342
  tail call void @exit(i32 -1) #9, !dbg !344
  unreachable, !dbg !344

if.end:                                           ; preds = %entry
  tail call void @A2_writeStats(%struct._A2* %mtx, %struct._IO_FILE* %fp) #8, !dbg !345
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !346
  %1 = load i32* %type, align 4, !dbg !346, !tbaa !218
  switch i32 %1, label %if.end88 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond37.preheader
  ], !dbg !346

for.cond37.preheader:                             ; preds = %if.end
  %n238 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !347
  %2 = load i32* %n238, align 4, !dbg !347, !tbaa !218
  %cmp39171 = icmp sgt i32 %2, 0, !dbg !347
  br i1 %cmp39171, label %for.body40.lr.ph, label %if.end88, !dbg !347

for.body40.lr.ph:                                 ; preds = %for.cond37.preheader
  %n157 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !350
  %inc164 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !353
  %inc266 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !353
  %entries71 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !357
  br label %for.body40, !dbg !347

for.cond.preheader:                               ; preds = %if.end
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !358
  %3 = load i32* %n2, align 4, !dbg !358, !tbaa !218
  %cmp4160 = icmp sgt i32 %3, 0, !dbg !358
  br i1 %cmp4160, label %for.body.lr.ph, label %if.end88, !dbg !358

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !361
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !364
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !364
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !364
  br label %for.body, !dbg !358

for.body:                                         ; preds = %for.body.lr.ph, %for.inc31
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %12, %for.inc31 ]
  %jfirst.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %add32, %for.inc31 ]
  %add152 = or i32 %jfirst.0161, 3, !dbg !368
  tail call void @llvm.dbg.value(metadata !{i32 %add152}, i64 0, metadata !134), !dbg !368
  %cmp6 = icmp slt i32 %add152, %4, !dbg !369
  %sub = add nsw i32 %4, -1, !dbg !370
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !134), !dbg !370
  %add152.sub = select i1 %cmp6, i32 %add152, i32 %sub, !dbg !369
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %fp) #10, !dbg !372
  tail call void @llvm.dbg.value(metadata !{i32 %jfirst.0161}, i64 0, metadata !132), !dbg !373
  %cmp12153 = icmp sgt i32 %jfirst.0161, %add152.sub, !dbg !373
  br i1 %cmp12153, label %for.cond15.loopexit, label %for.body13, !dbg !373

for.body13:                                       ; preds = %for.body, %for.body13
  %j.0154 = phi i32 [ %inc, %for.body13 ], [ %jfirst.0161, %for.body ]
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i32 %j.0154) #6, !dbg !375
  %inc = add nsw i32 %j.0154, 1, !dbg !373
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !132), !dbg !373
  %exitcond = icmp eq i32 %j.0154, %add152.sub, !dbg !373
  br i1 %exitcond, label %for.cond15.loopexit, label %for.body13, !dbg !373

for.cond15.loopexit:                              ; preds = %for.body13, %for.body
  %6 = load i32* %n1, align 4, !dbg !361, !tbaa !218
  %cmp16157 = icmp sgt i32 %6, 0, !dbg !361
  br i1 %cmp16157, label %for.body17, label %for.inc31, !dbg !361

for.body17:                                       ; preds = %for.cond15.loopexit, %for.inc28
  %i.0158 = phi i32 [ %inc29, %for.inc28 ], [ 0, %for.cond15.loopexit ]
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i32 %i.0158) #6, !dbg !377
  tail call void @llvm.dbg.value(metadata !{i32 %jfirst.0161}, i64 0, metadata !132), !dbg !378
  br i1 %cmp12153, label %for.inc28, label %for.body21, !dbg !378

for.body21:                                       ; preds = %for.body17, %for.body21
  %j.1156 = phi i32 [ %inc26, %for.body21 ], [ %jfirst.0161, %for.body17 ]
  %7 = load i32* %inc1, align 4, !dbg !364, !tbaa !218
  %mul = mul nsw i32 %7, %i.0158, !dbg !364
  %8 = load i32* %inc2, align 4, !dbg !364, !tbaa !218
  %mul22 = mul nsw i32 %8, %j.1156, !dbg !364
  %add23 = add nsw i32 %mul22, %mul, !dbg !364
  %idxprom = sext i32 %add23 to i64, !dbg !364
  %9 = load double** %entries, align 8, !dbg !364, !tbaa !171
  %arrayidx = getelementptr inbounds double* %9, i64 %idxprom, !dbg !364
  %10 = load double* %arrayidx, align 8, !dbg !364, !tbaa !379
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), double %10) #6, !dbg !364
  %inc26 = add nsw i32 %j.1156, 1, !dbg !378
  tail call void @llvm.dbg.value(metadata !{i32 %inc26}, i64 0, metadata !132), !dbg !378
  %exitcond174 = icmp eq i32 %j.1156, %add152.sub, !dbg !378
  br i1 %exitcond174, label %for.inc28, label %for.body21, !dbg !378

for.inc28:                                        ; preds = %for.body21, %for.body17
  %inc29 = add nsw i32 %i.0158, 1, !dbg !361
  tail call void @llvm.dbg.value(metadata !{i32 %inc29}, i64 0, metadata !131), !dbg !361
  %11 = load i32* %n1, align 4, !dbg !361, !tbaa !218
  %cmp16 = icmp slt i32 %inc29, %11, !dbg !361
  br i1 %cmp16, label %for.body17, label %for.inc31, !dbg !361

for.inc31:                                        ; preds = %for.inc28, %for.cond15.loopexit
  %add32 = add nsw i32 %jfirst.0161, 4, !dbg !358
  tail call void @llvm.dbg.value(metadata !{i32 %add32}, i64 0, metadata !133), !dbg !358
  %12 = load i32* %n2, align 4, !dbg !358, !tbaa !218
  %cmp4 = icmp slt i32 %add32, %12, !dbg !358
  br i1 %cmp4, label %for.body, label %if.end88, !dbg !358

for.body40:                                       ; preds = %for.body40.lr.ph, %for.inc84
  %13 = phi i32 [ %2, %for.body40.lr.ph ], [ %22, %for.inc84 ]
  %jfirst.1172 = phi i32 [ 0, %for.body40.lr.ph ], [ %add85, %for.inc84 ]
  %add41150 = or i32 %jfirst.1172, 1, !dbg !380
  tail call void @llvm.dbg.value(metadata !{i32 %add41150}, i64 0, metadata !134), !dbg !380
  %cmp43 = icmp slt i32 %add41150, %13, !dbg !381
  %sub46 = add nsw i32 %13, -1, !dbg !382
  tail call void @llvm.dbg.value(metadata !{i32 %sub46}, i64 0, metadata !134), !dbg !382
  %add41150.sub46 = select i1 %cmp43, i32 %add41150, i32 %sub46, !dbg !381
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %fp) #10, !dbg !384
  tail call void @llvm.dbg.value(metadata !{i32 %jfirst.1172}, i64 0, metadata !132), !dbg !385
  %cmp50163 = icmp sgt i32 %jfirst.1172, %add41150.sub46, !dbg !385
  br i1 %cmp50163, label %for.cond56.loopexit, label %for.body51, !dbg !385

for.body51:                                       ; preds = %for.body40, %for.body51
  %j.2164 = phi i32 [ %inc54, %for.body51 ], [ %jfirst.1172, %for.body40 ]
  %call52 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i32 %j.2164) #6, !dbg !387
  %inc54 = add nsw i32 %j.2164, 1, !dbg !385
  tail call void @llvm.dbg.value(metadata !{i32 %inc54}, i64 0, metadata !132), !dbg !385
  %exitcond175 = icmp eq i32 %j.2164, %add41150.sub46, !dbg !385
  br i1 %exitcond175, label %for.cond56.loopexit, label %for.body51, !dbg !385

for.cond56.loopexit:                              ; preds = %for.body51, %for.body40
  %15 = load i32* %n157, align 4, !dbg !350, !tbaa !218
  %cmp58167 = icmp sgt i32 %15, 0, !dbg !350
  br i1 %cmp58167, label %for.body59, label %for.inc84, !dbg !350

for.body59:                                       ; preds = %for.cond56.loopexit, %for.inc81
  %i.1168 = phi i32 [ %inc82, %for.inc81 ], [ 0, %for.cond56.loopexit ]
  %call60 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i32 %i.1168) #6, !dbg !389
  tail call void @llvm.dbg.value(metadata !{i32 %jfirst.1172}, i64 0, metadata !132), !dbg !390
  br i1 %cmp50163, label %for.inc81, label %for.body63, !dbg !390

for.body63:                                       ; preds = %for.body59, %for.body63
  %j.3166 = phi i32 [ %inc79, %for.body63 ], [ %jfirst.1172, %for.body59 ]
  %16 = load i32* %inc164, align 4, !dbg !353, !tbaa !218
  %mul65 = mul nsw i32 %16, %i.1168, !dbg !353
  %17 = load i32* %inc266, align 4, !dbg !353, !tbaa !218
  %mul67 = mul nsw i32 %17, %j.3166, !dbg !353
  %add68 = add nsw i32 %mul67, %mul65, !dbg !353
  %mul69 = shl nsw i32 %add68, 1, !dbg !353
  tail call void @llvm.dbg.value(metadata !{i32 %mul69}, i64 0, metadata !135), !dbg !353
  %idxprom70 = sext i32 %mul69 to i64, !dbg !357
  %18 = load double** %entries71, align 8, !dbg !357, !tbaa !171
  %arrayidx72 = getelementptr inbounds double* %18, i64 %idxprom70, !dbg !357
  %19 = load double* %arrayidx72, align 8, !dbg !357, !tbaa !379
  %add73151 = or i32 %mul69, 1, !dbg !357
  %idxprom74 = sext i32 %add73151 to i64, !dbg !357
  %arrayidx76 = getelementptr inbounds double* %18, i64 %idxprom74, !dbg !357
  %20 = load double* %arrayidx76, align 8, !dbg !357, !tbaa !379
  %call77 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str24, i64 0, i64 0), double %19, double %20) #6, !dbg !357
  %inc79 = add nsw i32 %j.3166, 1, !dbg !390
  tail call void @llvm.dbg.value(metadata !{i32 %inc79}, i64 0, metadata !132), !dbg !390
  %exitcond176 = icmp eq i32 %j.3166, %add41150.sub46, !dbg !390
  br i1 %exitcond176, label %for.inc81, label %for.body63, !dbg !390

for.inc81:                                        ; preds = %for.body63, %for.body59
  %inc82 = add nsw i32 %i.1168, 1, !dbg !350
  tail call void @llvm.dbg.value(metadata !{i32 %inc82}, i64 0, metadata !131), !dbg !350
  %21 = load i32* %n157, align 4, !dbg !350, !tbaa !218
  %cmp58 = icmp slt i32 %inc82, %21, !dbg !350
  br i1 %cmp58, label %for.body59, label %for.inc84, !dbg !350

for.inc84:                                        ; preds = %for.inc81, %for.cond56.loopexit
  %add85 = add nsw i32 %jfirst.1172, 2, !dbg !347
  tail call void @llvm.dbg.value(metadata !{i32 %add85}, i64 0, metadata !133), !dbg !347
  %22 = load i32* %n238, align 4, !dbg !347, !tbaa !218
  %cmp39 = icmp slt i32 %add85, %22, !dbg !347
  br i1 %cmp39, label %for.body40, label %if.end88, !dbg !347

if.end88:                                         ; preds = %for.cond37.preheader, %for.inc84, %for.cond.preheader, %for.inc31, %if.end
  ret void, !dbg !391
}

; Function Attrs: optsize
declare void @DVfprintf(%struct._IO_FILE*, i32, double*) #4

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: nounwind optsize uwtable
define void @A2_writeStats(%struct._A2* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !138), !dbg !392
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !139), !dbg !393
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !394
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !394
  %or.cond = or i1 %cmp, %cmp1, !dbg !394
  br i1 %or.cond, label %if.then, label %if.end, !dbg !394

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !395, !tbaa !171
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str25, i64 0, i64 0), %struct._A2* %mtx, %struct._IO_FILE* %fp) #6, !dbg !395
  tail call void @exit(i32 -1) #9, !dbg !397
  unreachable, !dbg !397

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !398
  %1 = load i32* %type, align 4, !dbg !398, !tbaa !218
  switch i32 %1, label %if.end10 [
    i32 1, label %if.then3
    i32 2, label %if.then7
  ], !dbg !398

if.then3:                                         ; preds = %if.end
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str26, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %fp) #10, !dbg !399
  br label %if.end10, !dbg !401

if.then7:                                         ; preds = %if.end
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str27, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %fp) #10, !dbg !402
  br label %if.end10, !dbg !404

if.end10:                                         ; preds = %if.end, %if.then7, %if.then3
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !405
  %4 = load i32* %n1, align 4, !dbg !405, !tbaa !218
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !405
  %5 = load i32* %n2, align 4, !dbg !405, !tbaa !218
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !405
  %6 = load i32* %inc1, align 4, !dbg !405, !tbaa !218
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !405
  %7 = load i32* %inc2, align 4, !dbg !405, !tbaa !218
  %nowned = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5, !dbg !405
  %8 = load i32* %nowned, align 4, !dbg !405, !tbaa !218
  %mul = mul nsw i32 %5, %4, !dbg !405
  %call13 = tail call i32 @A2_sizeOf(%struct._A2* %mtx) #6, !dbg !406
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !406
  %9 = load double** %entries, align 8, !dbg !406, !tbaa !171
  %call14 = tail call double @A2_maxabs(%struct._A2* %mtx) #6, !dbg !406
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([126 x i8]* @.str28, i64 0, i64 0), i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %mul, i32 %call13, double* %9, double %call14) #6, !dbg !406
  ret void, !dbg !407
}

; Function Attrs: optsize
declare i32 @A2_sizeOf(%struct._A2*) #4

; Function Attrs: optsize
declare double @A2_maxabs(%struct._A2*) #4

; Function Attrs: nounwind optsize uwtable
define void @A2_writeForMatlab(%struct._A2* %mtx, i8* %mtxname, %struct._IO_FILE* %fp) #0 {
entry:
  %value = alloca double, align 8
  %imag = alloca double, align 8
  %real = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !144), !dbg !408
  call void @llvm.dbg.value(metadata !{i8* %mtxname}, i64 0, metadata !145), !dbg !409
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !146), !dbg !410
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !411
  %cmp1 = icmp eq i8* %mtxname, null, !dbg !411
  %or.cond = or i1 %cmp, %cmp1, !dbg !411
  %cmp3 = icmp eq %struct._IO_FILE* %fp, null, !dbg !411
  %or.cond47 = or i1 %or.cond, %cmp3, !dbg !411
  br i1 %or.cond47, label %if.then, label %if.end, !dbg !411

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !412, !tbaa !171
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str29, i64 0, i64 0), %struct._A2* %mtx, i8* %mtxname, %struct._IO_FILE* %fp) #6, !dbg !412
  call void @exit(i32 -1) #9, !dbg !414
  unreachable, !dbg !414

if.end:                                           ; preds = %entry
  %call4 = call i32 @A2_nrow(%struct._A2* %mtx) #6, !dbg !415
  call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !150), !dbg !415
  %call5 = call i32 @A2_ncol(%struct._A2* %mtx) #6, !dbg !416
  call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !149), !dbg !416
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !147), !dbg !417
  %cmp650 = icmp sgt i32 %call4, 0, !dbg !417
  br i1 %cmp650, label %for.cond7.preheader.lr.ph, label %for.end24, !dbg !417

for.cond7.preheader.lr.ph:                        ; preds = %if.end
  %cmp848 = icmp sgt i32 %call5, 0, !dbg !418
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !419
  br label %for.cond7.preheader, !dbg !417

for.cond7.preheader:                              ; preds = %for.inc22, %for.cond7.preheader.lr.ph
  %irow.051 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %add, %for.inc22 ]
  %add = add nsw i32 %irow.051, 1, !dbg !420
  br i1 %cmp848, label %for.body9, label %for.inc22, !dbg !418

for.body9:                                        ; preds = %for.cond7.preheader, %for.inc
  %jcol.049 = phi i32 [ %inc.pre-phi, %for.inc ], [ 0, %for.cond7.preheader ]
  %1 = load i32* %type, align 4, !dbg !419, !tbaa !218
  switch i32 %1, label %for.body9.for.inc_crit_edge [
    i32 1, label %if.then11
    i32 2, label %if.then16
  ], !dbg !419

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  %inc.pre = add nsw i32 %jcol.049, 1, !dbg !418
  br label %for.inc, !dbg !419

if.then11:                                        ; preds = %for.body9
  call void @llvm.dbg.declare(metadata !{double* %value}, metadata !151), !dbg !421
  call void @A2_realEntry(%struct._A2* %mtx, i32 %irow.051, i32 %jcol.049, double* %value) #6, !dbg !422
  %add12 = add nsw i32 %jcol.049, 1, !dbg !420
  call void @llvm.dbg.value(metadata !{double* %value}, i64 0, metadata !151), !dbg !420
  %2 = load double* %value, align 8, !dbg !420, !tbaa !379
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str30, i64 0, i64 0), i8* %mtxname, i32 %add, i32 %add12, double %2) #6, !dbg !420
  br label %for.inc, !dbg !423

if.then16:                                        ; preds = %for.body9
  call void @llvm.dbg.declare(metadata !{double* %imag}, metadata !157), !dbg !424
  call void @llvm.dbg.declare(metadata !{double* %real}, metadata !159), !dbg !424
  call void @A2_complexEntry(%struct._A2* %mtx, i32 %irow.051, i32 %jcol.049, double* %real, double* %imag) #6, !dbg !425
  %add18 = add nsw i32 %jcol.049, 1, !dbg !426
  call void @llvm.dbg.value(metadata !{double* %real}, i64 0, metadata !159), !dbg !426
  %3 = load double* %real, align 8, !dbg !426, !tbaa !379
  call void @llvm.dbg.value(metadata !{double* %imag}, i64 0, metadata !157), !dbg !426
  %4 = load double* %imag, align 8, !dbg !426, !tbaa !379
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str31, i64 0, i64 0), i8* %mtxname, i32 %add, i32 %add18, double %3, double %4) #6, !dbg !426
  br label %for.inc, !dbg !427

for.inc:                                          ; preds = %for.body9.for.inc_crit_edge, %if.then11, %if.then16
  %inc.pre-phi = phi i32 [ %inc.pre, %for.body9.for.inc_crit_edge ], [ %add12, %if.then11 ], [ %add18, %if.then16 ], !dbg !418
  call void @llvm.dbg.value(metadata !{i32 %inc.pre-phi}, i64 0, metadata !148), !dbg !418
  %exitcond = icmp eq i32 %inc.pre-phi, %call5, !dbg !418
  br i1 %exitcond, label %for.inc22, label %for.body9, !dbg !418

for.inc22:                                        ; preds = %for.cond7.preheader, %for.inc
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !147), !dbg !417
  %exitcond52 = icmp eq i32 %add, %call4, !dbg !417
  br i1 %exitcond52, label %for.end24, label %for.cond7.preheader, !dbg !417

for.end24:                                        ; preds = %for.inc22, %if.end
  ret void, !dbg !428
}

; Function Attrs: optsize
declare i32 @A2_nrow(%struct._A2*) #4

; Function Attrs: optsize
declare i32 @A2_ncol(%struct._A2*) #4

; Function Attrs: optsize
declare void @A2_realEntry(%struct._A2*, i32, i32, double*) #4

; Function Attrs: optsize
declare void @A2_complexEntry(%struct._A2*, i32, i32, double*, double*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !160, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !87, metadata !99, metadata !106, metadata !115, metadata !122, metadata !127, metadata !136, metadata !140}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_readFromFile", metadata !"A2_readFromFile", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._A2*, i8*)* @A2_readFromFile, null, null, metadata !25, i32 26} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 26] [A2_readFromFile]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !23}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from A2]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"A2", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [A2] [line 49, size 0, align 0, offset 0] [from _A2]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_A2", i32 41, i64 256, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_A2] [line 41, size 256, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/../A2.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 42, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"n1", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [n1] [line 43, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"n2", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [n2] [line 44, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inc1", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [inc1] [line 45, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inc2", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [inc2] [line 46, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nowned", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [nowned] [line 47, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"entries", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [entries] [line 48, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!22 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!24 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !84, metadata !85, metadata !86}
!26 = metadata !{i32 786689, metadata !4, metadata !"mtx", metadata !5, i32 16777240, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 24]
!27 = metadata !{i32 786689, metadata !4, metadata !"fn", metadata !5, i32 33554457, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 25]
!28 = metadata !{i32 786688, metadata !4, metadata !"fp", metadata !5, i32 27, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 27]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!30 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!32 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !54, metadata !55, metadata !56, metadata !57, metadata !60, metadata !62, metadata !64, metadata !68, metadata !70, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !79, metadata !80}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!38 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!39 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!40 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!41 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!42 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!43 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!44 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!45 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!46 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !47} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!48 = metadata !{i32 786451, metadata !32, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !51, metadata !53}
!50 = metadata !{i32 786445, metadata !32, metadata !48, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!51 = metadata !{i32 786445, metadata !32, metadata !48, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!53 = metadata !{i32 786445, metadata !32, metadata !48, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!54 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !52} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!55 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!56 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!57 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !58} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!58 = metadata !{i32 786454, metadata !32, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!59 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!60 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !61} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!61 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!62 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !63} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!63 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!64 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !65} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!65 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !24, metadata !66, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!68 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !69} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!69 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!70 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !71} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!71 = metadata !{i32 786454, metadata !32, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!72 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !69} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!73 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !69} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!74 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !69} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!75 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !69} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!76 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !77} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!77 = metadata !{i32 786454, metadata !32, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!78 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!79 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!80 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !81} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!81 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !24, metadata !82, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!84 = metadata !{i32 786688, metadata !4, metadata !"fnlength", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 28]
!85 = metadata !{i32 786688, metadata !4, metadata !"rc", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 28]
!86 = metadata !{i32 786688, metadata !4, metadata !"sulength", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 28]
!87 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_readFromFormattedFile", metadata !"A2_readFromFormattedFile", metadata !"", i32 90, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._A2*, %struct._IO_FILE*)* @A2_readFromFormattedFile, null, null, metadata !90, i32 93} ; [ DW_TAG_subprogram ] [line 90] [def] [scope 93] [A2_readFromFormattedFile]
!88 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{metadata !8, metadata !9, metadata !29}
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94, metadata !95}
!91 = metadata !{i32 786689, metadata !87, metadata !"mtx", metadata !5, i32 16777307, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 91]
!92 = metadata !{i32 786689, metadata !87, metadata !"fp", metadata !5, i32 33554524, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 92]
!93 = metadata !{i32 786688, metadata !87, metadata !"rc", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 94]
!94 = metadata !{i32 786688, metadata !87, metadata !"size", metadata !5, i32 94, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 94]
!95 = metadata !{i32 786688, metadata !87, metadata !"itemp", metadata !5, i32 95, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 95]
!96 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 32, i32 0, i32 0, metadata !8, metadata !97, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 32, offset 0] [from int]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ] [0, 4]
!99 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_readFromBinaryFile", metadata !"A2_readFromBinaryFile", metadata !"", i32 162, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._A2*, %struct._IO_FILE*)* @A2_readFromBinaryFile, null, null, metadata !100, i32 165} ; [ DW_TAG_subprogram ] [line 162] [def] [scope 165] [A2_readFromBinaryFile]
!100 = metadata !{metadata !101, metadata !102, metadata !103, metadata !104, metadata !105}
!101 = metadata !{i32 786689, metadata !99, metadata !"mtx", metadata !5, i32 16777379, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 163]
!102 = metadata !{i32 786689, metadata !99, metadata !"fp", metadata !5, i32 33554596, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 164]
!103 = metadata !{i32 786688, metadata !99, metadata !"rc", metadata !5, i32 166, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 166]
!104 = metadata !{i32 786688, metadata !99, metadata !"size", metadata !5, i32 166, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 166]
!105 = metadata !{i32 786688, metadata !99, metadata !"itemp", metadata !5, i32 167, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 167]
!106 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_writeToFile", metadata !"A2_writeToFile", metadata !"", i32 244, metadata !107, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, i8*)* @A2_writeToFile, null, null, metadata !109, i32 247} ; [ DW_TAG_subprogram ] [line 244] [def] [scope 247] [A2_writeToFile]
!107 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!108 = metadata !{null, metadata !9, metadata !23}
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113, metadata !114}
!110 = metadata !{i32 786689, metadata !106, metadata !"mtx", metadata !5, i32 16777461, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 245]
!111 = metadata !{i32 786689, metadata !106, metadata !"fn", metadata !5, i32 33554678, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 246]
!112 = metadata !{i32 786688, metadata !106, metadata !"fp", metadata !5, i32 248, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 248]
!113 = metadata !{i32 786688, metadata !106, metadata !"fnlength", metadata !5, i32 249, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 249]
!114 = metadata !{i32 786688, metadata !106, metadata !"sulength", metadata !5, i32 249, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 249]
!115 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_writeToFormattedFile", metadata !"A2_writeToFormattedFile", metadata !"", i32 312, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._IO_FILE*)* @A2_writeToFormattedFile, null, null, metadata !118, i32 315} ; [ DW_TAG_subprogram ] [line 312] [def] [scope 315] [A2_writeToFormattedFile]
!116 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!117 = metadata !{null, metadata !9, metadata !29}
!118 = metadata !{metadata !119, metadata !120, metadata !121}
!119 = metadata !{i32 786689, metadata !115, metadata !"mtx", metadata !5, i32 16777529, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 313]
!120 = metadata !{i32 786689, metadata !115, metadata !"fp", metadata !5, i32 33554746, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 314]
!121 = metadata !{i32 786688, metadata !115, metadata !"size", metadata !5, i32 316, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 316]
!122 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_writeToBinaryFile", metadata !"A2_writeToBinaryFile", metadata !"", i32 343, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._IO_FILE*)* @A2_writeToBinaryFile, null, null, metadata !123, i32 346} ; [ DW_TAG_subprogram ] [line 343] [def] [scope 346] [A2_writeToBinaryFile]
!123 = metadata !{metadata !124, metadata !125, metadata !126}
!124 = metadata !{i32 786689, metadata !122, metadata !"mtx", metadata !5, i32 16777560, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 344]
!125 = metadata !{i32 786689, metadata !122, metadata !"fp", metadata !5, i32 33554777, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 345]
!126 = metadata !{i32 786688, metadata !122, metadata !"size", metadata !5, i32 347, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 347]
!127 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_writeForHumanEye", metadata !"A2_writeForHumanEye", metadata !"", i32 377, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._IO_FILE*)* @A2_writeForHumanEye, null, null, metadata !128, i32 380} ; [ DW_TAG_subprogram ] [line 377] [def] [scope 380] [A2_writeForHumanEye]
!128 = metadata !{metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135}
!129 = metadata !{i32 786689, metadata !127, metadata !"mtx", metadata !5, i32 16777594, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 378]
!130 = metadata !{i32 786689, metadata !127, metadata !"fp", metadata !5, i32 33554811, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 379]
!131 = metadata !{i32 786688, metadata !127, metadata !"i", metadata !5, i32 381, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 381]
!132 = metadata !{i32 786688, metadata !127, metadata !"j", metadata !5, i32 381, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 381]
!133 = metadata !{i32 786688, metadata !127, metadata !"jfirst", metadata !5, i32 381, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jfirst] [line 381]
!134 = metadata !{i32 786688, metadata !127, metadata !"jlast", metadata !5, i32 381, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jlast] [line 381]
!135 = metadata !{i32 786688, metadata !127, metadata !"loc", metadata !5, i32 381, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 381]
!136 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_writeStats", metadata !"A2_writeStats", metadata !"", i32 438, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._IO_FILE*)* @A2_writeStats, null, null, metadata !137, i32 441} ; [ DW_TAG_subprogram ] [line 438] [def] [scope 441] [A2_writeStats]
!137 = metadata !{metadata !138, metadata !139}
!138 = metadata !{i32 786689, metadata !136, metadata !"mtx", metadata !5, i32 16777655, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 439]
!139 = metadata !{i32 786689, metadata !136, metadata !"fp", metadata !5, i32 33554872, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 440]
!140 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_writeForMatlab", metadata !"A2_writeForMatlab", metadata !"", i32 471, metadata !141, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, i8*, %struct._IO_FILE*)* @A2_writeForMatlab, null, null, metadata !143, i32 475} ; [ DW_TAG_subprogram ] [line 471] [def] [scope 475] [A2_writeForMatlab]
!141 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!142 = metadata !{null, metadata !9, metadata !23, metadata !29}
!143 = metadata !{metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !157, metadata !159}
!144 = metadata !{i32 786689, metadata !140, metadata !"mtx", metadata !5, i32 16777688, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 472]
!145 = metadata !{i32 786689, metadata !140, metadata !"mtxname", metadata !5, i32 33554905, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxname] [line 473]
!146 = metadata !{i32 786689, metadata !140, metadata !"fp", metadata !5, i32 50332122, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 474]
!147 = metadata !{i32 786688, metadata !140, metadata !"irow", metadata !5, i32 476, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 476]
!148 = metadata !{i32 786688, metadata !140, metadata !"jcol", metadata !5, i32 476, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 476]
!149 = metadata !{i32 786688, metadata !140, metadata !"ncol", metadata !5, i32 476, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 476]
!150 = metadata !{i32 786688, metadata !140, metadata !"nrow", metadata !5, i32 476, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 476]
!151 = metadata !{i32 786688, metadata !152, metadata !"value", metadata !5, i32 488, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 488]
!152 = metadata !{i32 786443, metadata !1, metadata !153, i32 487, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!153 = metadata !{i32 786443, metadata !1, metadata !154, i32 486, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!154 = metadata !{i32 786443, metadata !1, metadata !155, i32 486, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!155 = metadata !{i32 786443, metadata !1, metadata !156, i32 485, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!156 = metadata !{i32 786443, metadata !1, metadata !140, i32 485, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!157 = metadata !{i32 786688, metadata !158, metadata !"imag", metadata !5, i32 493, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imag] [line 493]
!158 = metadata !{i32 786443, metadata !1, metadata !153, i32 492, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!159 = metadata !{i32 786688, metadata !158, metadata !"real", metadata !5, i32 493, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [real] [line 493]
!160 = metadata !{metadata !161, metadata !164}
!161 = metadata !{i32 786484, i32 0, null, metadata !"suffixf", metadata !"suffixf", metadata !"", metadata !5, i32 6, metadata !162, i32 1, i32 1, null, null}
!162 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !163} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!163 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!164 = metadata !{i32 786484, i32 0, null, metadata !"suffixb", metadata !"suffixb", metadata !"", metadata !5, i32 5, metadata !162, i32 1, i32 1, null, null}
!165 = metadata !{i32 24, i32 0, metadata !4, null}
!166 = metadata !{i32 25, i32 0, metadata !4, null}
!167 = metadata !{i32 28, i32 0, metadata !4, null}
!168 = metadata !{i32 34, i32 0, metadata !4, null}
!169 = metadata !{i32 35, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!171 = metadata !{metadata !"any pointer", metadata !172}
!172 = metadata !{metadata !"omnipotent char", metadata !173}
!173 = metadata !{metadata !"Simple C/C++ TBAA"}
!174 = metadata !{i32 37, i32 0, metadata !170, null}
!175 = metadata !{i32 44, i32 0, metadata !4, null}
!176 = metadata !{i32 4}
!177 = metadata !{i32 45, i32 0, metadata !4, null}
!178 = metadata !{i32 46, i32 0, metadata !4, null}
!179 = metadata !{i32 47, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!181 = metadata !{i32 48, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !180, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!183 = metadata !{i32 49, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !182, i32 48, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!185 = metadata !{i32 51, i32 0, metadata !184, null}
!186 = metadata !{i32 52, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !182, i32 51, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!188 = metadata !{i32 53, i32 0, metadata !187, null}
!189 = metadata !{i32 55, i32 0, metadata !180, null}
!190 = metadata !{i32 56, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !180, i32 55, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!192 = metadata !{i32 57, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !191, i32 56, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!194 = metadata !{i32 59, i32 0, metadata !193, null}
!195 = metadata !{i32 60, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !191, i32 59, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!197 = metadata !{i32 61, i32 0, metadata !196, null}
!198 = metadata !{i32 64, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !180, i32 63, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!200 = metadata !{i32 68, i32 0, metadata !199, null}
!201 = metadata !{i32 71, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !4, i32 70, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!203 = metadata !{i32 75, i32 0, metadata !202, null}
!204 = metadata !{i32 77, i32 0, metadata !4, null}
!205 = metadata !{i32 163, i32 0, metadata !99, null}
!206 = metadata !{i32 164, i32 0, metadata !99, null}
!207 = metadata !{i32 167, i32 0, metadata !99, null}
!208 = metadata !{i32 173, i32 0, metadata !99, null}
!209 = metadata !{i32 174, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !99, i32 173, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!211 = metadata !{i32 176, i32 0, metadata !210, null}
!212 = metadata !{i32 183, i32 0, metadata !99, null}
!213 = metadata !{i32 189, i32 0, metadata !99, null}
!214 = metadata !{i32 190, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !99, i32 189, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!216 = metadata !{i32 192, i32 0, metadata !215, null}
!217 = metadata !{i32 194, i32 0, metadata !99, null}
!218 = metadata !{metadata !"int", metadata !172}
!219 = metadata !{i32 196, i32 0, metadata !99, null}
!220 = metadata !{i32 202, i32 0, metadata !99, null}
!221 = metadata !{i32 208, i32 0, metadata !99, null}
!222 = metadata !{i32 209, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !99, i32 208, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!224 = metadata !{i32 210, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !223, i32 209, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!226 = metadata !{i32 212, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !225, i32 211, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!228 = metadata !{i32 214, i32 0, metadata !227, null}
!229 = metadata !{i32 217, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !223, i32 216, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!231 = metadata !{i32 219, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !230, i32 218, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!233 = metadata !{i32 221, i32 0, metadata !232, null}
!234 = metadata !{i32 226, i32 0, metadata !99, null}
!235 = metadata !{i32 91, i32 0, metadata !87, null}
!236 = metadata !{i32 92, i32 0, metadata !87, null}
!237 = metadata !{i32 95, i32 0, metadata !87, null}
!238 = metadata !{i32 101, i32 0, metadata !87, null}
!239 = metadata !{i32 102, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !87, i32 101, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!241 = metadata !{i32 104, i32 0, metadata !240, null}
!242 = metadata !{i32 111, i32 0, metadata !87, null}
!243 = metadata !{i32 117, i32 0, metadata !87, null}
!244 = metadata !{i32 118, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !87, i32 117, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!246 = metadata !{i32 120, i32 0, metadata !245, null}
!247 = metadata !{i32 127, i32 0, metadata !87, null}
!248 = metadata !{i32 133, i32 0, metadata !87, null}
!249 = metadata !{i32 134, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !87, i32 133, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!251 = metadata !{i32 135, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !250, i32 134, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!253 = metadata !{i32 136, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !252, i32 135, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!255 = metadata !{i32 138, i32 0, metadata !254, null}
!256 = metadata !{i32 141, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !250, i32 140, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!258 = metadata !{i32 142, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !257, i32 141, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!260 = metadata !{i32 144, i32 0, metadata !259, null}
!261 = metadata !{i32 149, i32 0, metadata !87, null}
!262 = metadata !{i32 245, i32 0, metadata !106, null}
!263 = metadata !{i32 246, i32 0, metadata !106, null}
!264 = metadata !{i32 255, i32 0, metadata !106, null}
!265 = metadata !{i32 256, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !106, i32 255, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!267 = metadata !{i32 258, i32 0, metadata !266, null}
!268 = metadata !{i32 264, i32 0, metadata !106, null}
!269 = metadata !{i32 265, i32 0, metadata !106, null}
!270 = metadata !{i32 266, i32 0, metadata !106, null}
!271 = metadata !{i32 267, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !106, i32 266, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!273 = metadata !{i32 268, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !272, i32 267, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!275 = metadata !{i32 269, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !274, i32 268, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!277 = metadata !{i32 271, i32 0, metadata !276, null}
!278 = metadata !{i32 272, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !274, i32 271, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!280 = metadata !{i32 273, i32 0, metadata !279, null}
!281 = metadata !{i32 275, i32 0, metadata !272, null}
!282 = metadata !{i32 276, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !272, i32 275, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!284 = metadata !{i32 277, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !283, i32 276, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!286 = metadata !{i32 279, i32 0, metadata !285, null}
!287 = metadata !{i32 280, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !283, i32 279, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!289 = metadata !{i32 281, i32 0, metadata !288, null}
!290 = metadata !{i32 284, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !272, i32 283, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!292 = metadata !{i32 285, i32 0, metadata !293, null}
!293 = metadata !{i32 786443, metadata !1, metadata !291, i32 284, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!294 = metadata !{i32 287, i32 0, metadata !293, null}
!295 = metadata !{i32 288, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !291, i32 287, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!297 = metadata !{i32 289, i32 0, metadata !296, null}
!298 = metadata !{i32 293, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !106, i32 292, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!300 = metadata !{i32 294, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !299, i32 293, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!302 = metadata !{i32 296, i32 0, metadata !301, null}
!303 = metadata !{i32 297, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !299, i32 296, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!305 = metadata !{i32 298, i32 0, metadata !304, null}
!306 = metadata !{i32 301, i32 0, metadata !106, null}
!307 = metadata !{i32 344, i32 0, metadata !122, null}
!308 = metadata !{i32 345, i32 0, metadata !122, null}
!309 = metadata !{i32 349, i32 0, metadata !122, null}
!310 = metadata !{i32 352, i32 0, metadata !122, null}
!311 = metadata !{i32 353, i32 0, metadata !122, null}
!312 = metadata !{i32 354, i32 0, metadata !122, null}
!313 = metadata !{i32 355, i32 0, metadata !122, null}
!314 = metadata !{i32 356, i32 0, metadata !122, null}
!315 = metadata !{i32 357, i32 0, metadata !122, null}
!316 = metadata !{i32 359, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !122, i32 358, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!318 = metadata !{i32 360, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !317, i32 359, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!320 = metadata !{i32 361, i32 0, metadata !319, null}
!321 = metadata !{i32 362, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !317, i32 361, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!323 = metadata !{i32 363, i32 0, metadata !322, null}
!324 = metadata !{i32 366, i32 0, metadata !122, null}
!325 = metadata !{i32 313, i32 0, metadata !115, null}
!326 = metadata !{i32 314, i32 0, metadata !115, null}
!327 = metadata !{i32 318, i32 0, metadata !115, null}
!328 = metadata !{i32 321, i32 0, metadata !115, null}
!329 = metadata !{i32 323, i32 0, metadata !115, null}
!330 = metadata !{i32 325, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !115, i32 324, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!332 = metadata !{i32 326, i32 0, metadata !333, null}
!333 = metadata !{i32 786443, metadata !1, metadata !331, i32 325, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!334 = metadata !{i32 327, i32 0, metadata !333, null}
!335 = metadata !{i32 328, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !331, i32 327, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!337 = metadata !{i32 329, i32 0, metadata !336, null}
!338 = metadata !{i32 332, i32 0, metadata !115, null}
!339 = metadata !{i32 378, i32 0, metadata !127, null}
!340 = metadata !{i32 379, i32 0, metadata !127, null}
!341 = metadata !{i32 383, i32 0, metadata !127, null}
!342 = metadata !{i32 384, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !127, i32 383, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!344 = metadata !{i32 386, i32 0, metadata !343, null}
!345 = metadata !{i32 388, i32 0, metadata !127, null}
!346 = metadata !{i32 389, i32 0, metadata !127, null}
!347 = metadata !{i32 408, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !349, i32 408, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!349 = metadata !{i32 786443, metadata !1, metadata !127, i32 407, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!350 = metadata !{i32 417, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !352, i32 417, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!352 = metadata !{i32 786443, metadata !1, metadata !348, i32 408, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!353 = metadata !{i32 420, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !355, i32 419, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!355 = metadata !{i32 786443, metadata !1, metadata !356, i32 419, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!356 = metadata !{i32 786443, metadata !1, metadata !351, i32 417, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!357 = metadata !{i32 421, i32 0, metadata !354, null}
!358 = metadata !{i32 390, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !1, metadata !360, i32 390, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!360 = metadata !{i32 786443, metadata !1, metadata !127, i32 389, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!361 = metadata !{i32 399, i32 0, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !363, i32 399, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!363 = metadata !{i32 786443, metadata !1, metadata !359, i32 390, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!364 = metadata !{i32 402, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !366, i32 401, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!366 = metadata !{i32 786443, metadata !1, metadata !367, i32 401, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!367 = metadata !{i32 786443, metadata !1, metadata !362, i32 399, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!368 = metadata !{i32 391, i32 0, metadata !363, null}
!369 = metadata !{i32 392, i32 0, metadata !363, null}
!370 = metadata !{i32 393, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !363, i32 392, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!372 = metadata !{i32 395, i32 0, metadata !363, null}
!373 = metadata !{i32 396, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !363, i32 396, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!375 = metadata !{i32 397, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !374, i32 396, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!377 = metadata !{i32 400, i32 0, metadata !367, null}
!378 = metadata !{i32 401, i32 0, metadata !366, null}
!379 = metadata !{metadata !"double", metadata !172}
!380 = metadata !{i32 409, i32 0, metadata !352, null}
!381 = metadata !{i32 410, i32 0, metadata !352, null}
!382 = metadata !{i32 411, i32 0, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !352, i32 410, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!384 = metadata !{i32 413, i32 0, metadata !352, null}
!385 = metadata !{i32 414, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !352, i32 414, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!387 = metadata !{i32 415, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !386, i32 414, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!389 = metadata !{i32 418, i32 0, metadata !356, null}
!390 = metadata !{i32 419, i32 0, metadata !355, null}
!391 = metadata !{i32 427, i32 0, metadata !127, null}
!392 = metadata !{i32 439, i32 0, metadata !136, null}
!393 = metadata !{i32 440, i32 0, metadata !136, null}
!394 = metadata !{i32 442, i32 0, metadata !136, null}
!395 = metadata !{i32 443, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !136, i32 442, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!397 = metadata !{i32 445, i32 0, metadata !396, null}
!398 = metadata !{i32 447, i32 0, metadata !136, null}
!399 = metadata !{i32 448, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !136, i32 447, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!401 = metadata !{i32 449, i32 0, metadata !400, null}
!402 = metadata !{i32 450, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !136, i32 449, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!404 = metadata !{i32 451, i32 0, metadata !403, null}
!405 = metadata !{i32 452, i32 0, metadata !136, null}
!406 = metadata !{i32 458, i32 0, metadata !136, null}
!407 = metadata !{i32 460, i32 0, metadata !136, null}
!408 = metadata !{i32 472, i32 0, metadata !140, null}
!409 = metadata !{i32 473, i32 0, metadata !140, null}
!410 = metadata !{i32 474, i32 0, metadata !140, null}
!411 = metadata !{i32 478, i32 0, metadata !140, null}
!412 = metadata !{i32 479, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !140, i32 478, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c]
!414 = metadata !{i32 481, i32 0, metadata !413, null}
!415 = metadata !{i32 483, i32 0, metadata !140, null}
!416 = metadata !{i32 484, i32 0, metadata !140, null}
!417 = metadata !{i32 485, i32 0, metadata !156, null}
!418 = metadata !{i32 486, i32 0, metadata !154, null}
!419 = metadata !{i32 487, i32 0, metadata !153, null}
!420 = metadata !{i32 490, i32 0, metadata !152, null}
!421 = metadata !{i32 488, i32 0, metadata !152, null}
!422 = metadata !{i32 489, i32 0, metadata !152, null}
!423 = metadata !{i32 492, i32 0, metadata !152, null}
!424 = metadata !{i32 493, i32 0, metadata !158, null}
!425 = metadata !{i32 494, i32 0, metadata !158, null}
!426 = metadata !{i32 495, i32 0, metadata !158, null}
!427 = metadata !{i32 497, i32 0, metadata !158, null}
!428 = metadata !{i32 500, i32 0, metadata !140, null}
