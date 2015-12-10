; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [64 x i8] c"\0A error in IV_readFromFile(%p,%s), file %s, line %d\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [69 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str3 = private unnamed_addr constant [58 x i8] c"\0A error in IV_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str5 = private unnamed_addr constant [100 x i8] c"\0A error in IV_readFromFile(%p,%s)\0A bad IV file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str6 = private unnamed_addr constant [55 x i8] c"\0A error in IV_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str8 = private unnamed_addr constant [65 x i8] c"\0A error in IV_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str9 = private unnamed_addr constant [58 x i8] c"\0A fatal error in IV_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [73 x i8] c"\0A error in IV_readFromBinaryFile(%p,%p)\0A itemp(3) : %d items of %d read\0A\00", align 1
@.str11 = private unnamed_addr constant [74 x i8] c"\0A error in IV_readFromBinaryFile(%p,%p)\0A sizes(%d) : %d items of %d read\0A\00", align 1
@.str12 = private unnamed_addr constant [51 x i8] c"\0A fatal error in IV_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str14 = private unnamed_addr constant [57 x i8] c"\0A error in IV_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str16 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str17 = private unnamed_addr constant [60 x i8] c"\0A fatal error in IV_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str18 = private unnamed_addr constant [16 x i8] c"\0A iv->size = %d\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"\0A %d\00", align 1
@.str20 = private unnamed_addr constant [85 x i8] c"\0A fatal error in IV_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str21 = private unnamed_addr constant [88 x i8] c"\0A fatal error in IV_writeToFormattedFile(%p,%p)\0A ierr = %d, return from sizes[] IVfp80\0A\00", align 1
@.str22 = private unnamed_addr constant [57 x i8] c"\0A fatal error in IV_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str23 = private unnamed_addr constant [71 x i8] c"\0A error in IV_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str24 = private unnamed_addr constant [75 x i8] c"\0A error in IV_writeToBinaryFile(%p,%p)\0A iv->sizes, %d of %d items written\0A\00", align 1
@.str25 = private unnamed_addr constant [56 x i8] c"\0A fatal error in IV_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str26 = private unnamed_addr constant [88 x i8] c"\0A fatal error in IV_writeForHumanEye(%p,%p)\0A rc = %d, return from IV_writeStats(%p,%p)\0A\00", align 1
@.str27 = private unnamed_addr constant [44 x i8] c"\0A error in IV_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str28 = private unnamed_addr constant [32 x i8] c"\0A IV : integer vector object : \00", align 1
@.str29 = private unnamed_addr constant [37 x i8] c" size = %d, maxsize = %d, owned = %d\00", align 1
@.str30 = private unnamed_addr constant [69 x i8] c"\0A fatal error in IV_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str31 = private unnamed_addr constant [47 x i8] c"\0A fatal error in IV_fp80(%p,%p,%p)\0A bad input\0A\00", align 1
@.str32 = private unnamed_addr constant [51 x i8] c"\0A error in IV_writeForMatlab(%p,%p,%p)\0A bad input\0A\00", align 1
@.str33 = private unnamed_addr constant [22 x i8] c"\0A %s = zeros(%d,%d) ;\00", align 1
@.str34 = private unnamed_addr constant [16 x i8] c"\0A %s(%d) = %d ;\00", align 1
@.str35 = private unnamed_addr constant [5 x i8] c".ivf\00", align 1
@.str36 = private unnamed_addr constant [5 x i8] c".ivb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @IV_readFromFile(%struct._IV* %iv, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !22), !dbg !151
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !23), !dbg !152
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !153
  %cmp1 = icmp eq i8* %fn, null, !dbg !153
  %or.cond = or i1 %cmp, %cmp1, !dbg !153
  br i1 %or.cond, label %if.then, label %if.end, !dbg !153

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !154, !tbaa !156
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 37) #6, !dbg !154
  br label %return, !dbg !159

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #7, !dbg !160
  %conv = trunc i64 %call2 to i32, !dbg !160
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !80), !dbg !160
  tail call void @llvm.dbg.value(metadata !161, i64 0, metadata !82), !dbg !162
  %cmp5 = icmp sgt i32 %conv, 4, !dbg !163
  br i1 %cmp5, label %if.then7, label %if.else41, !dbg !163

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !164
  %sext = add i64 %sub, -17179869184, !dbg !164
  %idxprom = ashr exact i64 %sext, 32, !dbg !164
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !164
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !164
  %cmp9 = icmp eq i32 %call8, 0, !dbg !164
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !164

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !166
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !24), !dbg !166
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !166
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !166

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !168, !tbaa !156
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn) #6, !dbg !168
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !81), !dbg !170
  br label %return, !dbg !171

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @IV_readFromBinaryFile(%struct._IV* %iv, %struct._IO_FILE* %call12) #8, !dbg !172
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !81), !dbg !172
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6, !dbg !174
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0)) #7, !dbg !175
  %cmp25 = icmp eq i32 %call24, 0, !dbg !175
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !175

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !176
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !24), !dbg !176
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !176
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !176

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !178, !tbaa !156
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn) #6, !dbg !178
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !81), !dbg !180
  br label %return, !dbg !181

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @IV_readFromFormattedFile(%struct._IV* %iv, %struct._IO_FILE* %call28) #8, !dbg !182
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !81), !dbg !182
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6, !dbg !184
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !185, !tbaa !156
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([100 x i8]* @.str5, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0)) #6, !dbg !185
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !81), !dbg !187
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !188, !tbaa !156
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([100 x i8]* @.str5, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0)) #6, !dbg !188
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !81), !dbg !190
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0, !dbg !191
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
define i32 @IV_readFromBinaryFile(%struct._IV* %iv, %struct._IO_FILE* %fp) #0 {
entry:
  %size = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !93), !dbg !192
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !94), !dbg !193
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !96), !dbg !194
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !195
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !195
  %or.cond = or i1 %cmp, %cmp1, !dbg !195
  br i1 %or.cond, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !196, !tbaa !156
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp) #6, !dbg !196
  br label %return, !dbg !198

if.end:                                           ; preds = %entry
  call void @IV_clearData(%struct._IV* %iv) #6, !dbg !199
  %1 = bitcast i32* %size to i8*, !dbg !200
  %call2 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %fp) #6, !dbg !200
  %conv = trunc i64 %call2 to i32, !dbg !200
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !95), !dbg !200
  %cmp3 = icmp eq i32 %conv, 1, !dbg !200
  br i1 %cmp3, label %if.end7, label %if.then5, !dbg !200

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !201, !tbaa !156
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([73 x i8]* @.str10, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %conv, i32 1) #6, !dbg !201
  br label %return, !dbg !203

if.end7:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !96), !dbg !204
  %3 = load i32* %size, align 4, !dbg !204, !tbaa !205
  call void @IV_init(%struct._IV* %iv, i32 %3, i32* null) #6, !dbg !204
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !96), !dbg !206
  %size8 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !206
  store i32 %3, i32* %size8, align 4, !dbg !206, !tbaa !205
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !207
  %4 = load i32** %vec, align 8, !dbg !207, !tbaa !156
  %5 = bitcast i32* %4 to i8*, !dbg !207
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !96), !dbg !207
  %conv9 = sext i32 %3 to i64, !dbg !207
  %call10 = call i64 @fread(i8* %5, i64 4, i64 %conv9, %struct._IO_FILE* %fp) #6, !dbg !207
  %conv11 = trunc i64 %call10 to i32, !dbg !207
  call void @llvm.dbg.value(metadata !{i32 %conv11}, i64 0, metadata !95), !dbg !207
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !96), !dbg !207
  %cmp12 = icmp eq i32 %conv11, %3, !dbg !207
  br i1 %cmp12, label %return, label %if.then14, !dbg !207

if.then14:                                        ; preds = %if.end7
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !208, !tbaa !156
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([74 x i8]* @.str11, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %3, i32 %conv11, i32 %3) #6, !dbg !208
  br label %return, !dbg !210

return:                                           ; preds = %if.end7, %if.then14, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then14 ], [ 1, %if.end7 ]
  ret i32 %retval.0, !dbg !211
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @IV_readFromFormattedFile(%struct._IV* %iv, %struct._IO_FILE* %fp) #0 {
entry:
  %size = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !87), !dbg !212
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !88), !dbg !213
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !90), !dbg !214
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !215
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !215
  %or.cond = or i1 %cmp, %cmp1, !dbg !215
  br i1 %or.cond, label %if.then, label %if.end, !dbg !215

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !216, !tbaa !156
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str6, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp) #6, !dbg !216
  br label %return, !dbg !218

if.end:                                           ; preds = %entry
  call void @IV_clearData(%struct._IV* %iv) #6, !dbg !219
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* %size) #6, !dbg !220
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !89), !dbg !220
  %cmp3 = icmp eq i32 %call2, 1, !dbg !220
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !220

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !221, !tbaa !156
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %call2, i32 1) #6, !dbg !221
  br label %return, !dbg !223

if.end6:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !90), !dbg !224
  %2 = load i32* %size, align 4, !dbg !224, !tbaa !205
  call void @IV_init(%struct._IV* %iv, i32 %2, i32* null) #6, !dbg !224
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !90), !dbg !225
  %3 = load i32* %size, align 4, !dbg !225, !tbaa !205
  %size7 = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !225
  store i32 %3, i32* %size7, align 4, !dbg !225, !tbaa !205
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !90), !dbg !226
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !226
  %4 = load i32** %vec, align 8, !dbg !226, !tbaa !156
  %call8 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %3, i32* %4) #6, !dbg !226
  call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !89), !dbg !226
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !90), !dbg !226
  %5 = load i32* %size, align 4, !dbg !226, !tbaa !205
  %cmp9 = icmp eq i32 %call8, %5, !dbg !226
  br i1 %cmp9, label %return, label %if.then10, !dbg !226

if.then10:                                        ; preds = %if.end6
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !227, !tbaa !156
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %call8, i32 %5) #6, !dbg !227
  br label %return, !dbg !229

return:                                           ; preds = %if.end6, %if.then10, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then10 ], [ 1, %if.end6 ]
  ret i32 %retval.0, !dbg !230
}

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #4

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @IV_writeToFile(%struct._IV* %iv, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !99), !dbg !231
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !100), !dbg !232
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !233
  %cmp1 = icmp eq i8* %fn, null, !dbg !233
  %or.cond = or i1 %cmp, %cmp1, !dbg !233
  br i1 %or.cond, label %if.then, label %if.end, !dbg !233

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !234, !tbaa !156
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str12, i64 0, i64 0), %struct._IV* %iv, i8* %fn) #6, !dbg !234
  br label %if.end, !dbg !236

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i64 @strlen(i8* %fn) #7, !dbg !237
  %conv = trunc i64 %call2 to i32, !dbg !237
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !102), !dbg !237
  tail call void @llvm.dbg.value(metadata !161, i64 0, metadata !104), !dbg !238
  %cmp5 = icmp sgt i32 %conv, 4, !dbg !239
  br i1 %cmp5, label %if.then7, label %if.else49, !dbg !239

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !240
  %sext = add i64 %sub, -17179869184, !dbg !240
  %idxprom = ashr exact i64 %sext, 32, !dbg !240
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !240
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !240
  %cmp9 = icmp eq i32 %call8, 0, !dbg !240
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !240

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #6, !dbg !242
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !101), !dbg !242
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !242
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !242

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !244, !tbaa !156
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn) #6, !dbg !244
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !103), !dbg !246
  br label %if.end59, !dbg !247

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @IV_writeToBinaryFile(%struct._IV* %iv, %struct._IO_FILE* %call12) #8, !dbg !248
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !103), !dbg !248
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6, !dbg !250
  br label %if.end59

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0)) #7, !dbg !251
  %cmp25 = icmp eq i32 %call24, 0, !dbg !251
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !251

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #6, !dbg !252
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !101), !dbg !252
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !252
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !252

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !254, !tbaa !156
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn) #6, !dbg !254
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !103), !dbg !256
  br label %if.end59, !dbg !257

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %iv, %struct._IO_FILE* %call28) #8, !dbg !258
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !103), !dbg !258
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6, !dbg !260
  br label %if.end59

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0)) #6, !dbg !261
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call38}, i64 0, metadata !101), !dbg !261
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null, !dbg !261
  br i1 %cmp39, label %if.then41, label %if.else43, !dbg !261

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !263, !tbaa !156
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn) #6, !dbg !263
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !103), !dbg !265
  br label %if.end59, !dbg !266

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @IV_writeForHumanEye(%struct._IV* %iv, %struct._IO_FILE* %call38) #8, !dbg !267
  tail call void @llvm.dbg.value(metadata !{i32 %call44}, i64 0, metadata !103), !dbg !267
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #6, !dbg !269
  br label %if.end59

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0)) #6, !dbg !270
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call50}, i64 0, metadata !101), !dbg !270
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null, !dbg !270
  br i1 %cmp51, label %if.then53, label %if.else55, !dbg !270

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !272, !tbaa !156
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._IV* %iv, i8* %fn, i8* %fn) #6, !dbg !272
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !103), !dbg !274
  br label %if.end59, !dbg !275

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @IV_writeForHumanEye(%struct._IV* %iv, %struct._IO_FILE* %call50) #8, !dbg !276
  tail call void @llvm.dbg.value(metadata !{i32 %call56}, i64 0, metadata !103), !dbg !276
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #6, !dbg !278
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.else55, %if.else, %if.then15, %if.then41, %if.else43, %if.then31, %if.else33
  %rc.0 = phi i32 [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.then41 ], [ %call44, %if.else43 ], [ 0, %if.then53 ], [ %call56, %if.else55 ]
  ret i32 %rc.0, !dbg !279
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_writeToBinaryFile(%struct._IV* %iv, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !113), !dbg !280
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !114), !dbg !281
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !282
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !282
  %or.cond = or i1 %cmp, %cmp1, !dbg !282
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !282

lor.lhs.false2:                                   ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !282
  %0 = load i32* %size, align 4, !dbg !282, !tbaa !205
  %cmp3 = icmp slt i32 %0, 1, !dbg !282
  br i1 %cmp3, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !283, !tbaa !156
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str22, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp) #6, !dbg !283
  tail call void @exit(i32 -1) #9, !dbg !285
  unreachable, !dbg !285

if.end:                                           ; preds = %lor.lhs.false2
  %2 = bitcast %struct._IV* %iv to i8*, !dbg !286
  %call5 = tail call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %fp) #6, !dbg !286
  %conv = trunc i64 %call5 to i32, !dbg !286
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !115), !dbg !286
  %cmp6 = icmp eq i32 %conv, 1, !dbg !287
  br i1 %cmp6, label %if.end10, label %if.then8, !dbg !287

if.then8:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !288, !tbaa !156
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([71 x i8]* @.str23, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %conv, i32 1) #6, !dbg !288
  br label %return, !dbg !290

if.end10:                                         ; preds = %if.end
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !291
  %4 = load i32** %vec, align 8, !dbg !291, !tbaa !156
  %5 = bitcast i32* %4 to i8*, !dbg !291
  %6 = load i32* %size, align 4, !dbg !291, !tbaa !205
  %conv12 = sext i32 %6 to i64, !dbg !291
  %call13 = tail call i64 @fwrite(i8* %5, i64 4, i64 %conv12, %struct._IO_FILE* %fp) #6, !dbg !291
  %conv14 = trunc i64 %call13 to i32, !dbg !291
  tail call void @llvm.dbg.value(metadata !{i32 %conv14}, i64 0, metadata !115), !dbg !291
  %7 = load i32* %size, align 4, !dbg !292, !tbaa !205
  %cmp16 = icmp eq i32 %conv14, %7, !dbg !292
  br i1 %cmp16, label %return, label %if.then18, !dbg !292

if.then18:                                        ; preds = %if.end10
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !293, !tbaa !156
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([75 x i8]* @.str24, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %conv14, i32 %7) #6, !dbg !293
  br label %return, !dbg !295

return:                                           ; preds = %if.end10, %if.then18, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then18 ], [ 1, %if.end10 ]
  ret i32 %retval.0, !dbg !296
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_writeToFormattedFile(%struct._IV* %iv, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !107), !dbg !297
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !108), !dbg !298
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !109), !dbg !299
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !300
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !300
  %or.cond = or i1 %cmp, %cmp1, !dbg !300
  %size4.pre = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !301
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !300

lor.lhs.false2:                                   ; preds = %entry
  %0 = load i32* %size4.pre, align 4, !dbg !300, !tbaa !205
  %cmp3 = icmp slt i32 %0, 1, !dbg !300
  br i1 %cmp3, label %if.then, label %if.end, !dbg !300

if.then:                                          ; preds = %entry, %lor.lhs.false2
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !303, !tbaa !156
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8]* @.str17, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp) #6, !dbg !303
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !301, !tbaa !156
  %3 = load i32* %size4.pre, align 4, !dbg !301, !tbaa !205
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0), i32 %3) #6, !dbg !301
  call void @exit(i32 -1) #9, !dbg !304
  unreachable, !dbg !304

if.end:                                           ; preds = %lor.lhs.false2
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i32 %0) #6, !dbg !305
  call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !110), !dbg !305
  %cmp8 = icmp slt i32 %call7, 0, !dbg !306
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !306

if.then9:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !307, !tbaa !156
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([85 x i8]* @.str20, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %call7) #6, !dbg !307
  br label %return, !dbg !309

if.end11:                                         ; preds = %if.end
  %5 = load i32* %size4.pre, align 4, !dbg !310, !tbaa !205
  %cmp13 = icmp sgt i32 %5, 0, !dbg !310
  br i1 %cmp13, label %if.then14, label %return, !dbg !310

if.then14:                                        ; preds = %if.end11
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !311
  %6 = load i32** %vec, align 8, !dbg !311, !tbaa !156
  %call16 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %5, i32* %6, i32 80, i32* %ierr) #6, !dbg !311
  call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !109), !dbg !313
  %7 = load i32* %ierr, align 4, !dbg !313, !tbaa !205
  %cmp17 = icmp slt i32 %7, 0, !dbg !313
  br i1 %cmp17, label %if.then18, label %return, !dbg !313

if.then18:                                        ; preds = %if.then14
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !314, !tbaa !156
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([88 x i8]* @.str21, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %7) #6, !dbg !314
  br label %return, !dbg !316

return:                                           ; preds = %if.end11, %if.then14, %if.then18, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then18 ], [ 1, %if.then14 ], [ 1, %if.end11 ]
  ret i32 %retval.0, !dbg !317
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_writeForHumanEye(%struct._IV* %iv, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !118), !dbg !318
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !119), !dbg !319
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !120), !dbg !320
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !321
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !321
  %or.cond = or i1 %cmp, %cmp1, !dbg !321
  br i1 %or.cond, label %if.then, label %if.end, !dbg !321

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !322, !tbaa !156
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str25, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp) #6, !dbg !322
  call void @exit(i32 -1) #9, !dbg !324
  unreachable, !dbg !324

if.end:                                           ; preds = %entry
  %call2 = call i32 @IV_writeStats(%struct._IV* %iv, %struct._IO_FILE* %fp) #8, !dbg !325
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !121), !dbg !325
  %cmp3 = icmp eq i32 %call2, 0, !dbg !325
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !325

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !326, !tbaa !156
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([88 x i8]* @.str26, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 0, %struct._IV* %iv, %struct._IO_FILE* %fp) #6, !dbg !326
  br label %return, !dbg !328

if.end6:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !329
  %2 = load i32* %size, align 4, !dbg !329, !tbaa !205
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !329
  %3 = load i32** %vec, align 8, !dbg !329, !tbaa !156
  %call7 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %2, i32* %3, i32 80, i32* %ierr) #6, !dbg !329
  br label %return, !dbg !330

return:                                           ; preds = %if.end6, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 1, %if.end6 ]
  ret i32 %retval.0, !dbg !330
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #4

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @IV_writeStats(%struct._IV* %iv, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !124), !dbg !331
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !125), !dbg !332
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !333
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !333
  %or.cond = or i1 %cmp, %cmp1, !dbg !333
  br i1 %or.cond, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !334, !tbaa !156
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str27, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp) #6, !dbg !334
  tail call void @exit(i32 -1) #9, !dbg !336
  unreachable, !dbg !336

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str28, i64 0, i64 0)) #6, !dbg !337
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !126), !dbg !337
  %cmp3 = icmp slt i32 %call2, 0, !dbg !338
  br i1 %cmp3, label %IO_error, label %if.end5, !dbg !338

if.end5:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !339
  %1 = load i32* %size, align 4, !dbg !339, !tbaa !205
  %maxsize = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !339
  %2 = load i32* %maxsize, align 4, !dbg !339, !tbaa !205
  %owned = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !339
  %3 = load i32* %owned, align 4, !dbg !339, !tbaa !205
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([37 x i8]* @.str29, i64 0, i64 0), i32 %1, i32 %2, i32 %3) #6, !dbg !339
  tail call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !126), !dbg !339
  %cmp7 = icmp slt i32 %call6, 0, !dbg !340
  br i1 %cmp7, label %IO_error, label %return, !dbg !340

IO_error:                                         ; preds = %if.end5, %if.end
  %rc.0 = phi i32 [ %call2, %if.end ], [ %call6, %if.end5 ]
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !341, !tbaa !156
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([69 x i8]* @.str30, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32 %rc.0) #6, !dbg !341
  br label %return, !dbg !342

return:                                           ; preds = %if.end5, %IO_error
  %retval.0 = phi i32 [ 0, %IO_error ], [ 1, %if.end5 ]
  ret i32 %retval.0, !dbg !342
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_fp80(%struct._IV* %iv, %struct._IO_FILE* %fp, i32 %column, i32* %pierr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !131), !dbg !343
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !132), !dbg !344
  tail call void @llvm.dbg.value(metadata !{i32 %column}, i64 0, metadata !133), !dbg !345
  tail call void @llvm.dbg.value(metadata !{i32* %pierr}, i64 0, metadata !134), !dbg !346
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !347
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !347
  %or.cond = or i1 %cmp, %cmp1, !dbg !347
  %cmp3 = icmp eq i32* %pierr, null, !dbg !347
  %or.cond21 = or i1 %or.cond, %cmp3, !dbg !347
  br i1 %or.cond21, label %if.then, label %if.end, !dbg !347

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !348, !tbaa !156
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str31, i64 0, i64 0), %struct._IV* %iv, %struct._IO_FILE* %fp, i32* %pierr) #6, !dbg !348
  tail call void @exit(i32 -1) #9, !dbg !350
  unreachable, !dbg !350

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !351
  %1 = load i32* %size, align 4, !dbg !351, !tbaa !205
  %cmp4 = icmp sgt i32 %1, 0, !dbg !351
  br i1 %cmp4, label %land.lhs.true, label %if.end10, !dbg !351

land.lhs.true:                                    ; preds = %if.end
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !351
  %2 = load i32** %vec, align 8, !dbg !351, !tbaa !156
  %cmp5 = icmp eq i32* %2, null, !dbg !351
  br i1 %cmp5, label %if.end10, label %if.then6, !dbg !351

if.then6:                                         ; preds = %land.lhs.true
  %call9 = tail call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %1, i32* %2, i32 %column, i32* %pierr) #6, !dbg !352
  tail call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !133), !dbg !352
  br label %if.end10, !dbg !354

if.end10:                                         ; preds = %land.lhs.true, %if.then6, %if.end
  %column.addr.0 = phi i32 [ %call9, %if.then6 ], [ %column, %land.lhs.true ], [ %column, %if.end ]
  ret i32 %column.addr.0, !dbg !355
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_writeForMatlab(%struct._IV* %iv, i8* %name, %struct._IO_FILE* %fp) #0 {
entry:
  %size = alloca i32, align 4
  %entries = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !139), !dbg !356
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !140), !dbg !357
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !141), !dbg !358
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !144), !dbg !359
  call void @llvm.dbg.declare(metadata !{i32** %entries}, metadata !145), !dbg !360
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !361
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !361
  %or.cond = or i1 %cmp, %cmp1, !dbg !361
  br i1 %or.cond, label %if.then, label %if.end, !dbg !361

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !362, !tbaa !156
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str32, i64 0, i64 0), %struct._IV* %iv, i8* %name, %struct._IO_FILE* %fp) #6, !dbg !362
  call void @exit(i32 -1) #9, !dbg !364
  unreachable, !dbg !364

if.end:                                           ; preds = %entry
  call void @IV_sizeAndEntries(%struct._IV* %iv, i32* %size, i32** %entries) #6, !dbg !365
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !144), !dbg !366
  %1 = load i32* %size, align 4, !dbg !366, !tbaa !205
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str33, i64 0, i64 0), i8* %name, i32 %1, i32 %1) #6, !dbg !366
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !142), !dbg !367
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !144), !dbg !367
  %2 = load i32* %size, align 4, !dbg !367, !tbaa !205
  %cmp316 = icmp sgt i32 %2, 0, !dbg !367
  br i1 %cmp316, label %for.body, label %for.end, !dbg !367

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !367
  call void @llvm.dbg.value(metadata !{i32** %entries}, i64 0, metadata !145), !dbg !369
  %3 = load i32** %entries, align 8, !dbg !369, !tbaa !156
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv, !dbg !369
  %4 = load i32* %arrayidx, align 4, !dbg !369, !tbaa !205
  %add4 = add nsw i32 %4, 1, !dbg !369
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !369
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([16 x i8]* @.str34, i64 0, i64 0), i8* %name, i32 %5, i32 %add4) #6, !dbg !369
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !144), !dbg !367
  %6 = load i32* %size, align 4, !dbg !367, !tbaa !205
  %cmp3 = icmp slt i32 %5, %6, !dbg !367
  br i1 %cmp3, label %for.body, label %for.end, !dbg !367

for.end:                                          ; preds = %for.body, %if.end
  ret i32 1, !dbg !371
}

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #4

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

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !146, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !83, metadata !91, metadata !97, metadata !105, metadata !111, metadata !116, metadata !122, metadata !127, metadata !135}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_readFromFile", metadata !"IV_readFromFile", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IV*, i8*)* @IV_readFromFile, null, null, metadata !21, i32 26} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 26] [IV_readFromFile]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !19}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/../IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!20 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !80, metadata !81, metadata !82}
!22 = metadata !{i32 786689, metadata !4, metadata !"iv", metadata !5, i32 16777240, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 24]
!23 = metadata !{i32 786689, metadata !4, metadata !"fn", metadata !5, i32 33554457, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 25]
!24 = metadata !{i32 786688, metadata !4, metadata !"fp", metadata !5, i32 27, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 27]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!26 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!27 = metadata !{i32 786451, metadata !28, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!28 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !50, metadata !51, metadata !52, metadata !53, metadata !56, metadata !58, metadata !60, metadata !64, metadata !66, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !75, metadata !76}
!30 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!32 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!33 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!34 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!35 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!36 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!37 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!38 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!39 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!40 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!41 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !19} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!42 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !43} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!44 = metadata !{i32 786451, metadata !28, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !45, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!45 = metadata !{metadata !46, metadata !47, metadata !49}
!46 = metadata !{i32 786445, metadata !28, metadata !44, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!47 = metadata !{i32 786445, metadata !28, metadata !44, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !48} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!49 = metadata !{i32 786445, metadata !28, metadata !44, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!50 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !48} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!51 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!52 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!53 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !54} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!54 = metadata !{i32 786454, metadata !28, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!55 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!56 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !57} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!57 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!58 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !59} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!59 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!60 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !61} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!61 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !20, metadata !62, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!64 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !65} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!66 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !67} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!67 = metadata !{i32 786454, metadata !28, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!68 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !65} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!69 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !65} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!70 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !65} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!71 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !65} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!72 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !73} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!73 = metadata !{i32 786454, metadata !28, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!74 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!75 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!76 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !77} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!77 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !20, metadata !78, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!80 = metadata !{i32 786688, metadata !4, metadata !"fnlength", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 28]
!81 = metadata !{i32 786688, metadata !4, metadata !"rc", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 28]
!82 = metadata !{i32 786688, metadata !4, metadata !"sulength", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 28]
!83 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_readFromFormattedFile", metadata !"IV_readFromFormattedFile", metadata !"", i32 93, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IV*, %struct._IO_FILE*)* @IV_readFromFormattedFile, null, null, metadata !86, i32 96} ; [ DW_TAG_subprogram ] [line 93] [def] [scope 96] [IV_readFromFormattedFile]
!84 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!85 = metadata !{metadata !8, metadata !9, metadata !25}
!86 = metadata !{metadata !87, metadata !88, metadata !89, metadata !90}
!87 = metadata !{i32 786689, metadata !83, metadata !"iv", metadata !5, i32 16777310, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 94]
!88 = metadata !{i32 786689, metadata !83, metadata !"fp", metadata !5, i32 33554527, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 95]
!89 = metadata !{i32 786688, metadata !83, metadata !"rc", metadata !5, i32 97, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 97]
!90 = metadata !{i32 786688, metadata !83, metadata !"size", metadata !5, i32 97, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 97]
!91 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_readFromBinaryFile", metadata !"IV_readFromBinaryFile", metadata !"", i32 149, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IV*, %struct._IO_FILE*)* @IV_readFromBinaryFile, null, null, metadata !92, i32 152} ; [ DW_TAG_subprogram ] [line 149] [def] [scope 152] [IV_readFromBinaryFile]
!92 = metadata !{metadata !93, metadata !94, metadata !95, metadata !96}
!93 = metadata !{i32 786689, metadata !91, metadata !"iv", metadata !5, i32 16777366, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 150]
!94 = metadata !{i32 786689, metadata !91, metadata !"fp", metadata !5, i32 33554583, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 151]
!95 = metadata !{i32 786688, metadata !91, metadata !"rc", metadata !5, i32 153, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 153]
!96 = metadata !{i32 786688, metadata !91, metadata !"size", metadata !5, i32 153, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 153]
!97 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_writeToFile", metadata !"IV_writeToFile", metadata !"", i32 213, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IV*, i8*)* @IV_writeToFile, null, null, metadata !98, i32 216} ; [ DW_TAG_subprogram ] [line 213] [def] [scope 216] [IV_writeToFile]
!98 = metadata !{metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104}
!99 = metadata !{i32 786689, metadata !97, metadata !"iv", metadata !5, i32 16777430, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 214]
!100 = metadata !{i32 786689, metadata !97, metadata !"fn", metadata !5, i32 33554647, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 215]
!101 = metadata !{i32 786688, metadata !97, metadata !"fp", metadata !5, i32 217, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 217]
!102 = metadata !{i32 786688, metadata !97, metadata !"fnlength", metadata !5, i32 218, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 218]
!103 = metadata !{i32 786688, metadata !97, metadata !"rc", metadata !5, i32 218, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 218]
!104 = metadata !{i32 786688, metadata !97, metadata !"sulength", metadata !5, i32 218, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 218]
!105 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_writeToFormattedFile", metadata !"IV_writeToFormattedFile", metadata !"", i32 287, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IV*, %struct._IO_FILE*)* @IV_writeToFormattedFile, null, null, metadata !106, i32 290} ; [ DW_TAG_subprogram ] [line 287] [def] [scope 290] [IV_writeToFormattedFile]
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110}
!107 = metadata !{i32 786689, metadata !105, metadata !"iv", metadata !5, i32 16777504, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 288]
!108 = metadata !{i32 786689, metadata !105, metadata !"fp", metadata !5, i32 33554721, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 289]
!109 = metadata !{i32 786688, metadata !105, metadata !"ierr", metadata !5, i32 291, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 291]
!110 = metadata !{i32 786688, metadata !105, metadata !"rc", metadata !5, i32 291, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 291]
!111 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_writeToBinaryFile", metadata !"IV_writeToBinaryFile", metadata !"", i32 338, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IV*, %struct._IO_FILE*)* @IV_writeToBinaryFile, null, null, metadata !112, i32 341} ; [ DW_TAG_subprogram ] [line 338] [def] [scope 341] [IV_writeToBinaryFile]
!112 = metadata !{metadata !113, metadata !114, metadata !115}
!113 = metadata !{i32 786689, metadata !111, metadata !"iv", metadata !5, i32 16777555, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 339]
!114 = metadata !{i32 786689, metadata !111, metadata !"fp", metadata !5, i32 33554772, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 340]
!115 = metadata !{i32 786688, metadata !111, metadata !"rc", metadata !5, i32 342, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 342]
!116 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_writeForHumanEye", metadata !"IV_writeForHumanEye", metadata !"", i32 379, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IV*, %struct._IO_FILE*)* @IV_writeForHumanEye, null, null, metadata !117, i32 382} ; [ DW_TAG_subprogram ] [line 379] [def] [scope 382] [IV_writeForHumanEye]
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121}
!118 = metadata !{i32 786689, metadata !116, metadata !"iv", metadata !5, i32 16777596, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 380]
!119 = metadata !{i32 786689, metadata !116, metadata !"fp", metadata !5, i32 33554813, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 381]
!120 = metadata !{i32 786688, metadata !116, metadata !"ierr", metadata !5, i32 383, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 383]
!121 = metadata !{i32 786688, metadata !116, metadata !"rc", metadata !5, i32 383, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 383]
!122 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_writeStats", metadata !"IV_writeStats", metadata !"", i32 411, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IV*, %struct._IO_FILE*)* @IV_writeStats, null, null, metadata !123, i32 414} ; [ DW_TAG_subprogram ] [line 411] [def] [scope 414] [IV_writeStats]
!123 = metadata !{metadata !124, metadata !125, metadata !126}
!124 = metadata !{i32 786689, metadata !122, metadata !"iv", metadata !5, i32 16777628, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 412]
!125 = metadata !{i32 786689, metadata !122, metadata !"fp", metadata !5, i32 33554845, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 413]
!126 = metadata !{i32 786688, metadata !122, metadata !"rc", metadata !5, i32 415, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 415]
!127 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_fp80", metadata !"IV_fp80", metadata !"", i32 458, metadata !128, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IV*, %struct._IO_FILE*, i32, i32*)* @IV_fp80, null, null, metadata !130, i32 463} ; [ DW_TAG_subprogram ] [line 458] [def] [scope 463] [IV_fp80]
!128 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!129 = metadata !{metadata !8, metadata !9, metadata !25, metadata !8, metadata !18}
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134}
!131 = metadata !{i32 786689, metadata !127, metadata !"iv", metadata !5, i32 16777675, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 459]
!132 = metadata !{i32 786689, metadata !127, metadata !"fp", metadata !5, i32 33554892, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 460]
!133 = metadata !{i32 786689, metadata !127, metadata !"column", metadata !5, i32 50332109, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [column] [line 461]
!134 = metadata !{i32 786689, metadata !127, metadata !"pierr", metadata !5, i32 67109326, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pierr] [line 462]
!135 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_writeForMatlab", metadata !"IV_writeForMatlab", metadata !"", i32 491, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IV*, i8*, %struct._IO_FILE*)* @IV_writeForMatlab, null, null, metadata !138, i32 495} ; [ DW_TAG_subprogram ] [line 491] [def] [scope 495] [IV_writeForMatlab]
!136 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!137 = metadata !{metadata !8, metadata !9, metadata !19, metadata !25}
!138 = metadata !{metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145}
!139 = metadata !{i32 786689, metadata !135, metadata !"iv", metadata !5, i32 16777708, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 492]
!140 = metadata !{i32 786689, metadata !135, metadata !"name", metadata !5, i32 33554925, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 493]
!141 = metadata !{i32 786689, metadata !135, metadata !"fp", metadata !5, i32 50332142, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 494]
!142 = metadata !{i32 786688, metadata !135, metadata !"ii", metadata !5, i32 496, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 496]
!143 = metadata !{i32 786688, metadata !135, metadata !"rc", metadata !5, i32 496, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 496]
!144 = metadata !{i32 786688, metadata !135, metadata !"size", metadata !5, i32 496, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 496]
!145 = metadata !{i32 786688, metadata !135, metadata !"entries", metadata !5, i32 497, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 497]
!146 = metadata !{metadata !147, metadata !150}
!147 = metadata !{i32 786484, i32 0, null, metadata !"suffixf", metadata !"suffixf", metadata !"", metadata !5, i32 6, metadata !148, i32 1, i32 1, null, null}
!148 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !149} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!149 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!150 = metadata !{i32 786484, i32 0, null, metadata !"suffixb", metadata !"suffixb", metadata !"", metadata !5, i32 5, metadata !148, i32 1, i32 1, null, null}
!151 = metadata !{i32 24, i32 0, metadata !4, null}
!152 = metadata !{i32 25, i32 0, metadata !4, null}
!153 = metadata !{i32 34, i32 0, metadata !4, null}
!154 = metadata !{i32 35, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!156 = metadata !{metadata !"any pointer", metadata !157}
!157 = metadata !{metadata !"omnipotent char", metadata !158}
!158 = metadata !{metadata !"Simple C/C++ TBAA"}
!159 = metadata !{i32 38, i32 0, metadata !155, null}
!160 = metadata !{i32 45, i32 0, metadata !4, null}
!161 = metadata !{i32 4}
!162 = metadata !{i32 46, i32 0, metadata !4, null}
!163 = metadata !{i32 47, i32 0, metadata !4, null}
!164 = metadata !{i32 48, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !4, i32 47, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!166 = metadata !{i32 49, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !165, i32 48, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!168 = metadata !{i32 50, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !167, i32 49, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!170 = metadata !{i32 52, i32 0, metadata !169, null}
!171 = metadata !{i32 53, i32 0, metadata !169, null}
!172 = metadata !{i32 54, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !167, i32 53, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!174 = metadata !{i32 55, i32 0, metadata !173, null}
!175 = metadata !{i32 57, i32 0, metadata !165, null}
!176 = metadata !{i32 58, i32 0, metadata !177, null} ; [ DW_TAG_imported_module ]
!177 = metadata !{i32 786443, metadata !1, metadata !165, i32 57, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!178 = metadata !{i32 59, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !177, i32 58, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!180 = metadata !{i32 61, i32 0, metadata !179, null}
!181 = metadata !{i32 62, i32 0, metadata !179, null}
!182 = metadata !{i32 63, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !177, i32 62, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!184 = metadata !{i32 64, i32 0, metadata !183, null}
!185 = metadata !{i32 67, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !165, i32 66, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!187 = metadata !{i32 71, i32 0, metadata !186, null}
!188 = metadata !{i32 74, i32 0, metadata !189, null}
!189 = metadata !{i32 786443, metadata !1, metadata !4, i32 73, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!190 = metadata !{i32 78, i32 0, metadata !189, null}
!191 = metadata !{i32 80, i32 0, metadata !4, null}
!192 = metadata !{i32 150, i32 0, metadata !91, null}
!193 = metadata !{i32 151, i32 0, metadata !91, null}
!194 = metadata !{i32 153, i32 0, metadata !91, null}
!195 = metadata !{i32 159, i32 0, metadata !91, null}
!196 = metadata !{i32 160, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !91, i32 159, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!198 = metadata !{i32 162, i32 0, metadata !197, null}
!199 = metadata !{i32 164, i32 0, metadata !91, null}
!200 = metadata !{i32 170, i32 0, metadata !91, null}
!201 = metadata !{i32 171, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !91, i32 170, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!203 = metadata !{i32 173, i32 0, metadata !202, null}
!204 = metadata !{i32 180, i32 0, metadata !91, null}
!205 = metadata !{metadata !"int", metadata !157}
!206 = metadata !{i32 181, i32 0, metadata !91, null}
!207 = metadata !{i32 187, i32 0, metadata !91, null}
!208 = metadata !{i32 188, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !91, i32 187, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!210 = metadata !{i32 191, i32 0, metadata !209, null}
!211 = metadata !{i32 193, i32 0, metadata !91, null}
!212 = metadata !{i32 94, i32 0, metadata !83, null}
!213 = metadata !{i32 95, i32 0, metadata !83, null}
!214 = metadata !{i32 97, i32 0, metadata !83, null}
!215 = metadata !{i32 103, i32 0, metadata !83, null}
!216 = metadata !{i32 104, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !83, i32 103, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!218 = metadata !{i32 106, i32 0, metadata !217, null}
!219 = metadata !{i32 108, i32 0, metadata !83, null}
!220 = metadata !{i32 114, i32 0, metadata !83, null}
!221 = metadata !{i32 115, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !83, i32 114, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!223 = metadata !{i32 117, i32 0, metadata !222, null}
!224 = metadata !{i32 124, i32 0, metadata !83, null}
!225 = metadata !{i32 125, i32 0, metadata !83, null}
!226 = metadata !{i32 131, i32 0, metadata !83, null}
!227 = metadata !{i32 132, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !83, i32 131, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!229 = metadata !{i32 134, i32 0, metadata !228, null}
!230 = metadata !{i32 136, i32 0, metadata !83, null}
!231 = metadata !{i32 214, i32 0, metadata !97, null}
!232 = metadata !{i32 215, i32 0, metadata !97, null}
!233 = metadata !{i32 224, i32 0, metadata !97, null}
!234 = metadata !{i32 225, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !97, i32 224, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!236 = metadata !{i32 227, i32 0, metadata !235, null}
!237 = metadata !{i32 233, i32 0, metadata !97, null}
!238 = metadata !{i32 234, i32 0, metadata !97, null}
!239 = metadata !{i32 235, i32 0, metadata !97, null}
!240 = metadata !{i32 236, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !97, i32 235, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!242 = metadata !{i32 237, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !241, i32 236, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!244 = metadata !{i32 238, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !243, i32 237, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!246 = metadata !{i32 240, i32 0, metadata !245, null}
!247 = metadata !{i32 241, i32 0, metadata !245, null}
!248 = metadata !{i32 242, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !243, i32 241, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!250 = metadata !{i32 243, i32 0, metadata !249, null}
!251 = metadata !{i32 245, i32 0, metadata !241, null}
!252 = metadata !{i32 246, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !241, i32 245, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!254 = metadata !{i32 247, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !253, i32 246, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!256 = metadata !{i32 249, i32 0, metadata !255, null}
!257 = metadata !{i32 250, i32 0, metadata !255, null}
!258 = metadata !{i32 251, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !253, i32 250, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!260 = metadata !{i32 252, i32 0, metadata !259, null}
!261 = metadata !{i32 255, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !241, i32 254, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!263 = metadata !{i32 256, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !262, i32 255, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!265 = metadata !{i32 258, i32 0, metadata !264, null}
!266 = metadata !{i32 259, i32 0, metadata !264, null}
!267 = metadata !{i32 260, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !262, i32 259, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!269 = metadata !{i32 261, i32 0, metadata !268, null}
!270 = metadata !{i32 265, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !97, i32 264, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!272 = metadata !{i32 266, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !271, i32 265, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!274 = metadata !{i32 268, i32 0, metadata !273, null}
!275 = metadata !{i32 269, i32 0, metadata !273, null}
!276 = metadata !{i32 270, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !271, i32 269, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!278 = metadata !{i32 271, i32 0, metadata !277, null}
!279 = metadata !{i32 274, i32 0, metadata !97, null}
!280 = metadata !{i32 339, i32 0, metadata !111, null}
!281 = metadata !{i32 340, i32 0, metadata !111, null}
!282 = metadata !{i32 348, i32 0, metadata !111, null}
!283 = metadata !{i32 349, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !111, i32 348, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!285 = metadata !{i32 351, i32 0, metadata !284, null}
!286 = metadata !{i32 353, i32 0, metadata !111, null}
!287 = metadata !{i32 354, i32 0, metadata !111, null}
!288 = metadata !{i32 355, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !111, i32 354, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!290 = metadata !{i32 357, i32 0, metadata !289, null}
!291 = metadata !{i32 359, i32 0, metadata !111, null}
!292 = metadata !{i32 360, i32 0, metadata !111, null}
!293 = metadata !{i32 361, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !111, i32 360, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!295 = metadata !{i32 364, i32 0, metadata !294, null}
!296 = metadata !{i32 366, i32 0, metadata !111, null}
!297 = metadata !{i32 288, i32 0, metadata !105, null}
!298 = metadata !{i32 289, i32 0, metadata !105, null}
!299 = metadata !{i32 291, i32 0, metadata !105, null}
!300 = metadata !{i32 297, i32 0, metadata !105, null}
!301 = metadata !{i32 300, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !105, i32 297, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!303 = metadata !{i32 298, i32 0, metadata !302, null}
!304 = metadata !{i32 301, i32 0, metadata !302, null}
!305 = metadata !{i32 308, i32 0, metadata !105, null}
!306 = metadata !{i32 309, i32 0, metadata !105, null}
!307 = metadata !{i32 310, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !105, i32 309, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!309 = metadata !{i32 312, i32 0, metadata !308, null}
!310 = metadata !{i32 314, i32 0, metadata !105, null}
!311 = metadata !{i32 315, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !105, i32 314, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!313 = metadata !{i32 316, i32 0, metadata !312, null}
!314 = metadata !{i32 317, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !312, i32 316, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!316 = metadata !{i32 321, i32 0, metadata !315, null}
!317 = metadata !{i32 325, i32 0, metadata !105, null}
!318 = metadata !{i32 380, i32 0, metadata !116, null}
!319 = metadata !{i32 381, i32 0, metadata !116, null}
!320 = metadata !{i32 383, i32 0, metadata !116, null}
!321 = metadata !{i32 385, i32 0, metadata !116, null}
!322 = metadata !{i32 386, i32 0, metadata !323, null}
!323 = metadata !{i32 786443, metadata !1, metadata !116, i32 385, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!324 = metadata !{i32 388, i32 0, metadata !323, null}
!325 = metadata !{i32 390, i32 0, metadata !116, null}
!326 = metadata !{i32 391, i32 0, metadata !327, null}
!327 = metadata !{i32 786443, metadata !1, metadata !116, i32 390, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!328 = metadata !{i32 394, i32 0, metadata !327, null}
!329 = metadata !{i32 396, i32 0, metadata !116, null}
!330 = metadata !{i32 398, i32 0, metadata !116, null}
!331 = metadata !{i32 412, i32 0, metadata !122, null}
!332 = metadata !{i32 413, i32 0, metadata !122, null}
!333 = metadata !{i32 421, i32 0, metadata !122, null}
!334 = metadata !{i32 422, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !122, i32 421, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!336 = metadata !{i32 424, i32 0, metadata !335, null}
!337 = metadata !{i32 426, i32 0, metadata !122, null}
!338 = metadata !{i32 427, i32 0, metadata !122, null}
!339 = metadata !{i32 428, i32 0, metadata !122, null}
!340 = metadata !{i32 430, i32 0, metadata !122, null}
!341 = metadata !{i32 434, i32 0, metadata !122, null}
!342 = metadata !{i32 436, i32 0, metadata !122, null}
!343 = metadata !{i32 459, i32 0, metadata !127, null}
!344 = metadata !{i32 460, i32 0, metadata !127, null}
!345 = metadata !{i32 461, i32 0, metadata !127, null}
!346 = metadata !{i32 462, i32 0, metadata !127, null}
!347 = metadata !{i32 469, i32 0, metadata !127, null}
!348 = metadata !{i32 470, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !127, i32 469, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!350 = metadata !{i32 472, i32 0, metadata !349, null}
!351 = metadata !{i32 474, i32 0, metadata !127, null}
!352 = metadata !{i32 475, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !127, i32 474, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!354 = metadata !{i32 476, i32 0, metadata !353, null}
!355 = metadata !{i32 478, i32 0, metadata !127, null}
!356 = metadata !{i32 492, i32 0, metadata !135, null}
!357 = metadata !{i32 493, i32 0, metadata !135, null}
!358 = metadata !{i32 494, i32 0, metadata !135, null}
!359 = metadata !{i32 496, i32 0, metadata !135, null}
!360 = metadata !{i32 497, i32 0, metadata !135, null}
!361 = metadata !{i32 503, i32 0, metadata !135, null}
!362 = metadata !{i32 504, i32 0, metadata !363, null}
!363 = metadata !{i32 786443, metadata !1, metadata !135, i32 503, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!364 = metadata !{i32 506, i32 0, metadata !363, null}
!365 = metadata !{i32 508, i32 0, metadata !135, null}
!366 = metadata !{i32 509, i32 0, metadata !135, null}
!367 = metadata !{i32 510, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !135, i32 510, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!369 = metadata !{i32 511, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !368, i32 510, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_IO.c]
!371 = metadata !{i32 513, i32 0, metadata !135, null}
