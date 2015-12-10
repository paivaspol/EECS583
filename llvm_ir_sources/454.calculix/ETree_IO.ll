; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A error in ETree_readFromFile(%p,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [61 x i8] c"\0A error in ETree_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [106 x i8] c"\0A error in ETree_readFromFile(%p,%s)\0A bad ETree file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [58 x i8] c"\0A error in ETree_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [68 x i8] c"\0A error in ETree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [61 x i8] c"\0A fatal error in ETree_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [76 x i8] c"\0A error in ETree_readFromBinaryFile(%p,%p)\0A itemp(2) : %d items of %d read\0A\00", align 1
@.str9 = private unnamed_addr constant [54 x i8] c"\0A fatal error in ETree_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str11 = private unnamed_addr constant [60 x i8] c"\0A error in ETree_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str14 = private unnamed_addr constant [63 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"\0A %d %d\00", align 1
@.str16 = private unnamed_addr constant [88 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str17 = private unnamed_addr constant [95 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing Tree to file\0A\00", align 1
@.str18 = private unnamed_addr constant [101 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing nodwghtsIV to file\0A\00", align 1
@.str19 = private unnamed_addr constant [101 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing bndwghtsIV to file\0A\00", align 1
@.str20 = private unnamed_addr constant [103 x i8] c"\0A fatal error in ETree_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing vtxToFrontIV to file\0A\00", align 1
@.str21 = private unnamed_addr constant [60 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str22 = private unnamed_addr constant [74 x i8] c"\0A error in ETree_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str23 = private unnamed_addr constant [92 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing Tree to file\0A\00", align 1
@.str24 = private unnamed_addr constant [98 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing nodwghtsIV to file\0A\00", align 1
@.str25 = private unnamed_addr constant [98 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing bndwghtsIV to file\0A\00", align 1
@.str26 = private unnamed_addr constant [100 x i8] c"\0A fatal error in ETree_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing vtxToFrontIV to file\0A\00", align 1
@.str27 = private unnamed_addr constant [59 x i8] c"\0A fatal error in ETree_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str28 = private unnamed_addr constant [94 x i8] c"\0A fatal error in ETree_writeForHumanEye(%p,%p)\0A rc = %d, return from ETree_writeStats(%p,%p)\0A\00", align 1
@.str29 = private unnamed_addr constant [57 x i8] c"\0A front    parent   fchild   sibling   nodwght   bndwght\00", align 1
@.str30 = private unnamed_addr constant [27 x i8] c"\0A %5d %9d %9d %9d %9d %9d \00", align 1
@.str31 = private unnamed_addr constant [24 x i8] c"\0A\0A vtxToFront IV object\00", align 1
@.str32 = private unnamed_addr constant [47 x i8] c"\0A error in ETree_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str33 = private unnamed_addr constant [63 x i8] c"\0A ETree : etree object, %d fronts, %d vertices, takes %d bytes\00", align 1
@.str34 = private unnamed_addr constant [72 x i8] c"\0A fatal error in ETree_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str35 = private unnamed_addr constant [8 x i8] c".etreef\00", align 1
@.str36 = private unnamed_addr constant [8 x i8] c".etreeb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_readFromFile(%struct._ETree* %etree, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !43), !dbg !162
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !44), !dbg !163
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !164
  %cmp1 = icmp eq i8* %fn, null, !dbg !164
  %or.cond = or i1 %cmp, %cmp1, !dbg !164
  br i1 %or.cond, label %if.then, label %if.end, !dbg !164

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !165, !tbaa !167
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree, i8* %fn) #6, !dbg !165
  br label %return, !dbg !170

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #7, !dbg !171
  %conv = trunc i64 %call2 to i32, !dbg !171
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !101), !dbg !171
  tail call void @llvm.dbg.value(metadata !172, i64 0, metadata !103), !dbg !173
  %cmp5 = icmp sgt i32 %conv, 7, !dbg !174
  br i1 %cmp5, label %if.then7, label %if.else41, !dbg !174

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !175
  %sext = add i64 %sub, -30064771072, !dbg !175
  %idxprom = ashr exact i64 %sext, 32, !dbg !175
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !175
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !175
  %cmp9 = icmp eq i32 %call8, 0, !dbg !175
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !175

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !177
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !45), !dbg !177
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !177
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !177

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !179, !tbaa !167
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #6, !dbg !179
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !102), !dbg !181
  br label %return, !dbg !182

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @ETree_readFromBinaryFile(%struct._ETree* %etree, %struct._IO_FILE* %call12) #8, !dbg !183
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !102), !dbg !183
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6, !dbg !185
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0)) #7, !dbg !186
  %cmp25 = icmp eq i32 %call24, 0, !dbg !186
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !186

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !187
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !45), !dbg !187
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !187
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !187

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !189, !tbaa !167
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #6, !dbg !189
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !102), !dbg !191
  br label %return, !dbg !192

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @ETree_readFromFormattedFile(%struct._ETree* %etree, %struct._IO_FILE* %call28) #8, !dbg !193
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !102), !dbg !193
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6, !dbg !195
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !196, !tbaa !167
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([106 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0)) #6, !dbg !196
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !102), !dbg !198
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !199, !tbaa !167
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([106 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0)) #6, !dbg !199
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !102), !dbg !201
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0, !dbg !202
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
define i32 @ETree_readFromBinaryFile(%struct._ETree* %etree, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !117), !dbg !203
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !118), !dbg !204
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %itemp}, metadata !120), !dbg !205
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !206
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !206
  %or.cond = or i1 %cmp, %cmp1, !dbg !206
  br i1 %or.cond, label %if.then, label %if.end, !dbg !206

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !207, !tbaa !167
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str7, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp) #6, !dbg !207
  br label %return, !dbg !209

if.end:                                           ; preds = %entry
  call void @ETree_clearData(%struct._ETree* %etree) #6, !dbg !210
  call void @ETree_init1(%struct._ETree* %etree, i32 0, i32 0) #6, !dbg !211
  %1 = bitcast [2 x i32]* %itemp to i8*, !dbg !212
  %call2 = call i64 @fread(i8* %1, i64 4, i64 2, %struct._IO_FILE* %fp) #6, !dbg !212
  %conv = trunc i64 %call2 to i32, !dbg !212
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !119), !dbg !212
  %cmp3 = icmp eq i32 %conv, 2, !dbg !212
  br i1 %cmp3, label %if.end7, label %if.then5, !dbg !212

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !213, !tbaa !167
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([76 x i8]* @.str8, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %conv, i32 2) #6, !dbg !213
  br label %return, !dbg !215

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !216
  %3 = load i32* %arrayidx, align 4, !dbg !216, !tbaa !217
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !216
  store i32 %3, i32* %nfront, align 4, !dbg !216, !tbaa !217
  %arrayidx8 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !218
  %4 = load i32* %arrayidx8, align 4, !dbg !218, !tbaa !217
  %nvtx = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !218
  store i32 %4, i32* %nvtx, align 4, !dbg !218, !tbaa !217
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !219
  %5 = load %struct._Tree** %tree, align 8, !dbg !219, !tbaa !167
  %call9 = call i32 @Tree_readFromBinaryFile(%struct._Tree* %5, %struct._IO_FILE* %fp) #6, !dbg !219
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !220
  %6 = load %struct._IV** %nodwghtsIV, align 8, !dbg !220, !tbaa !167
  %call10 = call i32 @IV_readFromBinaryFile(%struct._IV* %6, %struct._IO_FILE* %fp) #6, !dbg !220
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !221
  %7 = load %struct._IV** %bndwghtsIV, align 8, !dbg !221, !tbaa !167
  %call11 = call i32 @IV_readFromBinaryFile(%struct._IV* %7, %struct._IO_FILE* %fp) #6, !dbg !221
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !222
  %8 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !222, !tbaa !167
  %call12 = call i32 @IV_readFromBinaryFile(%struct._IV* %8, %struct._IO_FILE* %fp) #6, !dbg !222
  br label %return, !dbg !223

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 1, %if.end7 ]
  ret i32 %retval.0, !dbg !223
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_readFromFormattedFile(%struct._ETree* %etree, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !108), !dbg !224
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !109), !dbg !225
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %itemp}, metadata !111), !dbg !226
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !227
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !227
  %or.cond = or i1 %cmp, %cmp1, !dbg !227
  br i1 %or.cond, label %if.then, label %if.end, !dbg !227

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !228, !tbaa !167
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str5, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp) #6, !dbg !228
  br label %return, !dbg !230

if.end:                                           ; preds = %entry
  call void @ETree_clearData(%struct._ETree* %etree) #6, !dbg !231
  call void @ETree_init1(%struct._ETree* %etree, i32 0, i32 0) #6, !dbg !232
  %arraydecay = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !233
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 2, i32* %arraydecay) #6, !dbg !233
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !110), !dbg !233
  %cmp3 = icmp eq i32 %call2, 2, !dbg !233
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !233

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !234, !tbaa !167
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call2, i32 2) #6, !dbg !234
  br label %return, !dbg !236

if.end6:                                          ; preds = %if.end
  %2 = load i32* %arraydecay, align 4, !dbg !237, !tbaa !217
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !237
  store i32 %2, i32* %nfront, align 4, !dbg !237, !tbaa !217
  %arrayidx7 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !238
  %3 = load i32* %arrayidx7, align 4, !dbg !238, !tbaa !217
  %nvtx = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !238
  store i32 %3, i32* %nvtx, align 4, !dbg !238, !tbaa !217
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !239
  %4 = load %struct._Tree** %tree, align 8, !dbg !239, !tbaa !167
  %call8 = call i32 @Tree_readFromFormattedFile(%struct._Tree* %4, %struct._IO_FILE* %fp) #6, !dbg !239
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !240
  %5 = load %struct._IV** %nodwghtsIV, align 8, !dbg !240, !tbaa !167
  %call9 = call i32 @IV_readFromFormattedFile(%struct._IV* %5, %struct._IO_FILE* %fp) #6, !dbg !240
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !241
  %6 = load %struct._IV** %bndwghtsIV, align 8, !dbg !241, !tbaa !167
  %call10 = call i32 @IV_readFromFormattedFile(%struct._IV* %6, %struct._IO_FILE* %fp) #6, !dbg !241
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !242
  %7 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !242, !tbaa !167
  %call11 = call i32 @IV_readFromFormattedFile(%struct._IV* %7, %struct._IO_FILE* %fp) #6, !dbg !242
  br label %return, !dbg !243

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 1, %if.end6 ]
  ret i32 %retval.0, !dbg !243
}

; Function Attrs: optsize
declare void @ETree_clearData(%struct._ETree*) #4

; Function Attrs: optsize
declare void @ETree_init1(%struct._ETree*, i32, i32) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #4

; Function Attrs: optsize
declare i32 @Tree_readFromFormattedFile(%struct._Tree*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IV_readFromFormattedFile(%struct._IV*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @Tree_readFromBinaryFile(%struct._Tree*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IV_readFromBinaryFile(%struct._IV*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_writeToFile(%struct._ETree* %etree, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !123), !dbg !244
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !124), !dbg !245
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !246
  %cmp1 = icmp eq i8* %fn, null, !dbg !246
  %or.cond = or i1 %cmp, %cmp1, !dbg !246
  br i1 %or.cond, label %if.then, label %if.end, !dbg !246

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !247, !tbaa !167
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str9, i64 0, i64 0), %struct._ETree* %etree, i8* %fn) #6, !dbg !247
  br label %if.end, !dbg !249

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i64 @strlen(i8* %fn) #7, !dbg !250
  %conv = trunc i64 %call2 to i32, !dbg !250
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !126), !dbg !250
  tail call void @llvm.dbg.value(metadata !172, i64 0, metadata !128), !dbg !251
  %cmp5 = icmp sgt i32 %conv, 7, !dbg !252
  br i1 %cmp5, label %if.then7, label %if.else49, !dbg !252

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !253
  %sext = add i64 %sub, -30064771072, !dbg !253
  %idxprom = ashr exact i64 %sext, 32, !dbg !253
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !253
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !253
  %cmp9 = icmp eq i32 %call8, 0, !dbg !253
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !253

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0)) #6, !dbg !255
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !125), !dbg !255
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !255
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !255

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !257, !tbaa !167
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8]* @.str11, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #6, !dbg !257
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !127), !dbg !259
  br label %if.end59, !dbg !260

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @ETree_writeToBinaryFile(%struct._ETree* %etree, %struct._IO_FILE* %call12) #8, !dbg !261
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !127), !dbg !261
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6, !dbg !263
  br label %if.end59

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str35, i64 0, i64 0)) #7, !dbg !264
  %cmp25 = icmp eq i32 %call24, 0, !dbg !264
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !264

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #6, !dbg !265
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !125), !dbg !265
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !265
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !265

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !267, !tbaa !167
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str11, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #6, !dbg !267
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !127), !dbg !269
  br label %if.end59, !dbg !270

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @ETree_writeToFormattedFile(%struct._ETree* %etree, %struct._IO_FILE* %call28) #8, !dbg !271
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !127), !dbg !271
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6, !dbg !273
  br label %if.end59

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #6, !dbg !274
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call38}, i64 0, metadata !125), !dbg !274
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null, !dbg !274
  br i1 %cmp39, label %if.then41, label %if.else43, !dbg !274

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !276, !tbaa !167
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([60 x i8]* @.str11, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #6, !dbg !276
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !127), !dbg !278
  br label %if.end59, !dbg !279

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @ETree_writeForHumanEye(%struct._ETree* %etree, %struct._IO_FILE* %call38) #8, !dbg !280
  tail call void @llvm.dbg.value(metadata !{i32 %call44}, i64 0, metadata !127), !dbg !280
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #6, !dbg !282
  br label %if.end59

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #6, !dbg !283
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call50}, i64 0, metadata !125), !dbg !283
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null, !dbg !283
  br i1 %cmp51, label %if.then53, label %if.else55, !dbg !283

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !285, !tbaa !167
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([60 x i8]* @.str11, i64 0, i64 0), %struct._ETree* %etree, i8* %fn, i8* %fn) #6, !dbg !285
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !127), !dbg !287
  br label %if.end59, !dbg !288

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @ETree_writeForHumanEye(%struct._ETree* %etree, %struct._IO_FILE* %call50) #8, !dbg !289
  tail call void @llvm.dbg.value(metadata !{i32 %call56}, i64 0, metadata !127), !dbg !289
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #6, !dbg !291
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.else55, %if.else, %if.then15, %if.then41, %if.else43, %if.then31, %if.else33
  %rc.0 = phi i32 [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.then41 ], [ %call44, %if.else43 ], [ 0, %if.then53 ], [ %call56, %if.else55 ]
  ret i32 %rc.0, !dbg !292
}

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_writeToBinaryFile(%struct._ETree* %etree, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !136), !dbg !293
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !137), !dbg !294
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %itemp}, metadata !139), !dbg !295
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !296
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !296
  %or.cond = or i1 %cmp, %cmp1, !dbg !296
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !296

lor.lhs.false2:                                   ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !296
  %0 = load %struct._Tree** %tree, align 8, !dbg !296, !tbaa !167
  %cmp3 = icmp eq %struct._Tree* %0, null, !dbg !296
  br i1 %cmp3, label %if.then, label %if.end, !dbg !296

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !297, !tbaa !167
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8]* @.str21, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp) #6, !dbg !297
  call void @exit(i32 -1) #9, !dbg !299
  unreachable, !dbg !299

if.end:                                           ; preds = %lor.lhs.false2
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !300
  %2 = load i32* %nfront, align 4, !dbg !300, !tbaa !217
  %arrayidx = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !300
  store i32 %2, i32* %arrayidx, align 4, !dbg !300, !tbaa !217
  %nvtx = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !301
  %3 = load i32* %nvtx, align 4, !dbg !301, !tbaa !217
  %arrayidx4 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !301
  store i32 %3, i32* %arrayidx4, align 4, !dbg !301, !tbaa !217
  %4 = bitcast [2 x i32]* %itemp to i8*, !dbg !302
  %call5 = call i64 @fwrite(i8* %4, i64 4, i64 2, %struct._IO_FILE* %fp) #6, !dbg !302
  %conv = trunc i64 %call5 to i32, !dbg !302
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !138), !dbg !302
  %cmp6 = icmp eq i32 %conv, 2, !dbg !303
  br i1 %cmp6, label %if.end10, label %if.then8, !dbg !303

if.then8:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !304, !tbaa !167
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([74 x i8]* @.str22, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %conv, i32 2) #6, !dbg !304
  br label %return, !dbg !306

if.end10:                                         ; preds = %if.end
  %6 = load %struct._Tree** %tree, align 8, !dbg !307, !tbaa !167
  %call12 = call i32 @Tree_writeToBinaryFile(%struct._Tree* %6, %struct._IO_FILE* %fp) #6, !dbg !307
  call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !138), !dbg !307
  %cmp13 = icmp slt i32 %call12, 0, !dbg !308
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !308

if.then15:                                        ; preds = %if.end10
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !309, !tbaa !167
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([92 x i8]* @.str23, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call12) #6, !dbg !309
  br label %return, !dbg !311

if.end17:                                         ; preds = %if.end10
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !312
  %8 = load %struct._IV** %nodwghtsIV, align 8, !dbg !312, !tbaa !167
  %call18 = call i32 @IV_writeToBinaryFile(%struct._IV* %8, %struct._IO_FILE* %fp) #6, !dbg !312
  call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !138), !dbg !312
  %cmp19 = icmp slt i32 %call18, 0, !dbg !313
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !313

if.then21:                                        ; preds = %if.end17
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !314, !tbaa !167
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([98 x i8]* @.str24, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call18) #6, !dbg !314
  br label %return, !dbg !316

if.end23:                                         ; preds = %if.end17
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !317
  %10 = load %struct._IV** %bndwghtsIV, align 8, !dbg !317, !tbaa !167
  %call24 = call i32 @IV_writeToBinaryFile(%struct._IV* %10, %struct._IO_FILE* %fp) #6, !dbg !317
  call void @llvm.dbg.value(metadata !{i32 %call24}, i64 0, metadata !138), !dbg !317
  %cmp25 = icmp slt i32 %call24, 0, !dbg !318
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !318

if.then27:                                        ; preds = %if.end23
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !319, !tbaa !167
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([98 x i8]* @.str25, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call24) #6, !dbg !319
  br label %return, !dbg !321

if.end29:                                         ; preds = %if.end23
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !322
  %12 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !322, !tbaa !167
  %call30 = call i32 @IV_writeToBinaryFile(%struct._IV* %12, %struct._IO_FILE* %fp) #6, !dbg !322
  call void @llvm.dbg.value(metadata !{i32 %call30}, i64 0, metadata !138), !dbg !322
  %cmp31 = icmp slt i32 %call30, 0, !dbg !323
  br i1 %cmp31, label %if.then33, label %return, !dbg !323

if.then33:                                        ; preds = %if.end29
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !324, !tbaa !167
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([100 x i8]* @.str26, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call30) #6, !dbg !324
  br label %return, !dbg !326

return:                                           ; preds = %if.end29, %if.then33, %if.then27, %if.then21, %if.then15, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 0, %if.then15 ], [ 0, %if.then21 ], [ 0, %if.then27 ], [ 0, %if.then33 ], [ 1, %if.end29 ]
  ret i32 %retval.0, !dbg !327
}

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_writeToFormattedFile(%struct._ETree* %etree, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !131), !dbg !328
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !132), !dbg !329
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !330
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !330
  %or.cond = or i1 %cmp, %cmp1, !dbg !330
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !330

lor.lhs.false2:                                   ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !330
  %0 = load %struct._Tree** %tree, align 8, !dbg !330, !tbaa !167
  %cmp3 = icmp eq %struct._Tree* %0, null, !dbg !330
  br i1 %cmp3, label %if.then, label %if.end, !dbg !330

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !331, !tbaa !167
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([63 x i8]* @.str14, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp) #6, !dbg !331
  tail call void @exit(i32 -1) #9, !dbg !333
  unreachable, !dbg !333

if.end:                                           ; preds = %lor.lhs.false2
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !334
  %2 = load i32* %nfront, align 4, !dbg !334, !tbaa !217
  %nvtx = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !334
  %3 = load i32* %nvtx, align 4, !dbg !334, !tbaa !217
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 %2, i32 %3) #6, !dbg !334
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !133), !dbg !334
  %cmp5 = icmp slt i32 %call4, 0, !dbg !335
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !335

if.then6:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !336, !tbaa !167
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([88 x i8]* @.str16, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call4) #6, !dbg !336
  br label %return, !dbg !338

if.end8:                                          ; preds = %if.end
  %5 = load %struct._Tree** %tree, align 8, !dbg !339, !tbaa !167
  %call10 = tail call i32 @Tree_writeToFormattedFile(%struct._Tree* %5, %struct._IO_FILE* %fp) #6, !dbg !339
  tail call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !133), !dbg !339
  %cmp11 = icmp slt i32 %call10, 0, !dbg !340
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !340

if.then12:                                        ; preds = %if.end8
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !341, !tbaa !167
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([95 x i8]* @.str17, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call10) #6, !dbg !341
  br label %return, !dbg !343

if.end14:                                         ; preds = %if.end8
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !344
  %7 = load %struct._IV** %nodwghtsIV, align 8, !dbg !344, !tbaa !167
  %call15 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %7, %struct._IO_FILE* %fp) #6, !dbg !344
  tail call void @llvm.dbg.value(metadata !{i32 %call15}, i64 0, metadata !133), !dbg !344
  %cmp16 = icmp slt i32 %call15, 0, !dbg !345
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !345

if.then17:                                        ; preds = %if.end14
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !346, !tbaa !167
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([101 x i8]* @.str18, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call15) #6, !dbg !346
  br label %return, !dbg !348

if.end19:                                         ; preds = %if.end14
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !349
  %9 = load %struct._IV** %bndwghtsIV, align 8, !dbg !349, !tbaa !167
  %call20 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %9, %struct._IO_FILE* %fp) #6, !dbg !349
  tail call void @llvm.dbg.value(metadata !{i32 %call20}, i64 0, metadata !133), !dbg !349
  %cmp21 = icmp slt i32 %call20, 0, !dbg !350
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !350

if.then22:                                        ; preds = %if.end19
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !351, !tbaa !167
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([101 x i8]* @.str19, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call20) #6, !dbg !351
  br label %return, !dbg !353

if.end24:                                         ; preds = %if.end19
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !354
  %11 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !354, !tbaa !167
  %call25 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %11, %struct._IO_FILE* %fp) #6, !dbg !354
  tail call void @llvm.dbg.value(metadata !{i32 %call25}, i64 0, metadata !133), !dbg !354
  %cmp26 = icmp slt i32 %call25, 0, !dbg !355
  br i1 %cmp26, label %if.then27, label %return, !dbg !355

if.then27:                                        ; preds = %if.end24
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !356, !tbaa !167
  %call28 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([103 x i8]* @.str20, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call25) #6, !dbg !356
  br label %return, !dbg !358

return:                                           ; preds = %if.end24, %if.then27, %if.then22, %if.then17, %if.then12, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then12 ], [ 0, %if.then17 ], [ 0, %if.then22 ], [ 0, %if.then27 ], [ 1, %if.end24 ]
  ret i32 %retval.0, !dbg !359
}

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_writeForHumanEye(%struct._ETree* %etree, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !142), !dbg !360
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !143), !dbg !361
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !362
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !362
  %or.cond = or i1 %cmp, %cmp1, !dbg !362
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !362

lor.lhs.false2:                                   ; preds = %entry
  %nfront3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !362
  %0 = load i32* %nfront3, align 4, !dbg !362, !tbaa !217
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !144), !dbg !362
  %cmp4 = icmp slt i32 %0, 1, !dbg !362
  br i1 %cmp4, label %if.then, label %if.end, !dbg !362

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !363, !tbaa !167
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str27, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp) #6, !dbg !363
  tail call void @exit(i32 -1) #9, !dbg !365
  unreachable, !dbg !365

if.end:                                           ; preds = %lor.lhs.false2
  %call5 = tail call i32 @ETree_writeStats(%struct._ETree* %etree, %struct._IO_FILE* %fp) #8, !dbg !366
  tail call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !145), !dbg !366
  %cmp6 = icmp eq i32 %call5, 0, !dbg !366
  br i1 %cmp6, label %if.then7, label %for.body.lr.ph, !dbg !366

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !367, !tbaa !167
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([94 x i8]* @.str28, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 0, %struct._ETree* %etree, %struct._IO_FILE* %fp) #6, !dbg !367
  br label %return, !dbg !369

for.body.lr.ph:                                   ; preds = %if.end
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !370
  %3 = load %struct._Tree** %tree, align 8, !dbg !370, !tbaa !167
  %par10 = getelementptr inbounds %struct._Tree* %3, i64 0, i32 2, !dbg !370
  %4 = load i32** %par10, align 8, !dbg !370, !tbaa !167
  tail call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !150), !dbg !370
  %fch12 = getelementptr inbounds %struct._Tree* %3, i64 0, i32 3, !dbg !371
  %5 = load i32** %fch12, align 8, !dbg !371, !tbaa !167
  tail call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !148), !dbg !371
  %sib14 = getelementptr inbounds %struct._Tree* %3, i64 0, i32 4, !dbg !372
  %6 = load i32** %sib14, align 8, !dbg !372, !tbaa !167
  tail call void @llvm.dbg.value(metadata !{i32* %6}, i64 0, metadata !151), !dbg !372
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !373
  %7 = load %struct._IV** %nodwghtsIV, align 8, !dbg !373, !tbaa !167
  %call15 = tail call i32* @IV_entries(%struct._IV* %7) #6, !dbg !373
  tail call void @llvm.dbg.value(metadata !{i32* %call15}, i64 0, metadata !149), !dbg !373
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !374
  %8 = load %struct._IV** %bndwghtsIV, align 8, !dbg !374, !tbaa !167
  %call16 = tail call i32* @IV_entries(%struct._IV* %8) #6, !dbg !374
  tail call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !147), !dbg !374
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([57 x i8]* @.str29, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %fp) #10, !dbg !375
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !146), !dbg !376
  br label %for.body, !dbg !376

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv, !dbg !378
  %10 = load i32* %arrayidx, align 4, !dbg !378, !tbaa !217
  %arrayidx20 = getelementptr inbounds i32* %5, i64 %indvars.iv, !dbg !378
  %11 = load i32* %arrayidx20, align 4, !dbg !378, !tbaa !217
  %arrayidx22 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !378
  %12 = load i32* %arrayidx22, align 4, !dbg !378, !tbaa !217
  %arrayidx24 = getelementptr inbounds i32* %call15, i64 %indvars.iv, !dbg !378
  %13 = load i32* %arrayidx24, align 4, !dbg !378, !tbaa !217
  %arrayidx26 = getelementptr inbounds i32* %call16, i64 %indvars.iv, !dbg !378
  %14 = load i32* %arrayidx26, align 4, !dbg !378, !tbaa !217
  %15 = trunc i64 %indvars.iv to i32, !dbg !378
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str30, i64 0, i64 0), i32 %15, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) #6, !dbg !378
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !376
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !376
  %exitcond = icmp eq i32 %lftr.wideiv, %0, !dbg !376
  br i1 %exitcond, label %for.end, label %for.body, !dbg !376

for.end:                                          ; preds = %for.body
  %call28 = tail call i32 @fflush(%struct._IO_FILE* %fp) #6, !dbg !380
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str31, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %fp) #10, !dbg !381
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !382
  %17 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !382, !tbaa !167
  %call30 = tail call i32 @IV_writeForHumanEye(%struct._IV* %17, %struct._IO_FILE* %fp) #6, !dbg !382
  %call31 = tail call i32 @fflush(%struct._IO_FILE* %fp) #6, !dbg !383
  br label %return, !dbg !384

return:                                           ; preds = %for.end, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 1, %for.end ]
  ret i32 %retval.0, !dbg !384
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: optsize
declare i32 @Tree_writeToFormattedFile(%struct._Tree*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IV_writeToFormattedFile(%struct._IV*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @Tree_writeToBinaryFile(%struct._Tree*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IV_writeToBinaryFile(%struct._IV*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_writeStats(%struct._ETree* %etree, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !154), !dbg !385
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !155), !dbg !386
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !387
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !387
  %or.cond = or i1 %cmp, %cmp1, !dbg !387
  br i1 %or.cond, label %if.then, label %if.end, !dbg !387

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !388, !tbaa !167
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str32, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp) #6, !dbg !388
  tail call void @exit(i32 -1) #9, !dbg !390
  unreachable, !dbg !390

if.end:                                           ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !391
  %1 = load i32* %nfront, align 4, !dbg !391, !tbaa !217
  %nvtx = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !391
  %2 = load i32* %nvtx, align 4, !dbg !391, !tbaa !217
  %call2 = tail call i32 @ETree_sizeOf(%struct._ETree* %etree) #6, !dbg !392
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([63 x i8]* @.str33, i64 0, i64 0), i32 %1, i32 %2, i32 %call2) #6, !dbg !392
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !156), !dbg !392
  %cmp4 = icmp slt i32 %call3, 0, !dbg !393
  br i1 %cmp4, label %if.then5, label %return, !dbg !393

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !394, !tbaa !167
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([72 x i8]* @.str34, i64 0, i64 0), %struct._ETree* %etree, %struct._IO_FILE* %fp, i32 %call3) #6, !dbg !394
  br label %return, !dbg !396

return:                                           ; preds = %if.end, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.end ]
  ret i32 %retval.0, !dbg !397
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @ETree_sizeOf(%struct._ETree*) #4

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !157, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !104, metadata !115, metadata !121, metadata !129, metadata !134, metadata !140, metadata !152}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_readFromFile", metadata !"ETree_readFromFile", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*, i8*)* @ETree_readFromFile, null, null, metadata !42, i32 26} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 26] [ETree_readFromFile]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !40}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ETree]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"ETree", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ETree] [line 31, size 0, align 0, offset 0] [from _ETree]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_ETree", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ETree] [line 32, size 320, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../ETree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !28, metadata !38, metadata !39}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nfront", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [nfront] [line 33, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nvtx", i32 34, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [nvtx] [line 34, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"tree", i32 35, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [tree] [line 35, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!18 = metadata !{i32 786454, metadata !12, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !26, metadata !27}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!28 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nodwghtsIV", i32 36, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [nodwghtsIV] [line 36, size 64, align 64, offset 128] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!30 = metadata !{i32 786454, metadata !12, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!38 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"bndwghtsIV", i32 37, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [bndwghtsIV] [line 37, size 64, align 64, offset 192] [from ]
!39 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"vtxToFrontIV", i32 38, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [vtxToFrontIV] [line 38, size 64, align 64, offset 256] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!41 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !101, metadata !102, metadata !103}
!43 = metadata !{i32 786689, metadata !4, metadata !"etree", metadata !5, i32 16777240, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 24]
!44 = metadata !{i32 786689, metadata !4, metadata !"fn", metadata !5, i32 33554457, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 25]
!45 = metadata !{i32 786688, metadata !4, metadata !"fp", metadata !5, i32 27, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 27]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!47 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!48 = metadata !{i32 786451, metadata !49, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!49 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!50 = metadata !{metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !71, metadata !72, metadata !73, metadata !74, metadata !77, metadata !79, metadata !81, metadata !85, metadata !87, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !96, metadata !97}
!51 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!52 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!53 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!54 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!55 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!56 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!57 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!58 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!59 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!60 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!61 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!62 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!63 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !64} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!64 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!65 = metadata !{i32 786451, metadata !49, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !66, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!66 = metadata !{metadata !67, metadata !68, metadata !70}
!67 = metadata !{i32 786445, metadata !49, metadata !65, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!68 = metadata !{i32 786445, metadata !49, metadata !65, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!69 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!70 = metadata !{i32 786445, metadata !49, metadata !65, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!71 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !69} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!72 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!73 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!74 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !75} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!75 = metadata !{i32 786454, metadata !49, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!76 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!77 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !78} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!78 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!79 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !80} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!80 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!81 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !82} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!82 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !41, metadata !83, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!83 = metadata !{metadata !84}
!84 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!85 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !86} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!87 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !88} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!88 = metadata !{i32 786454, metadata !49, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!89 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !86} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!90 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !86} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!91 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !86} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!92 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !86} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!93 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !94} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!94 = metadata !{i32 786454, metadata !49, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!95 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!96 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!97 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !98} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!98 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !41, metadata !99, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!99 = metadata !{metadata !100}
!100 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!101 = metadata !{i32 786688, metadata !4, metadata !"fnlength", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 28]
!102 = metadata !{i32 786688, metadata !4, metadata !"rc", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 28]
!103 = metadata !{i32 786688, metadata !4, metadata !"sulength", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 28]
!104 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_readFromFormattedFile", metadata !"ETree_readFromFormattedFile", metadata !"", i32 92, metadata !105, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*, %struct._IO_FILE*)* @ETree_readFromFormattedFile, null, null, metadata !107, i32 95} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 95] [ETree_readFromFormattedFile]
!105 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!106 = metadata !{metadata !8, metadata !9, metadata !46}
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111}
!108 = metadata !{i32 786689, metadata !104, metadata !"etree", metadata !5, i32 16777309, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 93]
!109 = metadata !{i32 786689, metadata !104, metadata !"fp", metadata !5, i32 33554526, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 94]
!110 = metadata !{i32 786688, metadata !104, metadata !"rc", metadata !5, i32 96, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 96]
!111 = metadata !{i32 786688, metadata !104, metadata !"itemp", metadata !5, i32 97, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 97]
!112 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !8, metadata !113, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!113 = metadata !{metadata !114}
!114 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!115 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_readFromBinaryFile", metadata !"ETree_readFromBinaryFile", metadata !"", i32 170, metadata !105, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*, %struct._IO_FILE*)* @ETree_readFromBinaryFile, null, null, metadata !116, i32 173} ; [ DW_TAG_subprogram ] [line 170] [def] [scope 173] [ETree_readFromBinaryFile]
!116 = metadata !{metadata !117, metadata !118, metadata !119, metadata !120}
!117 = metadata !{i32 786689, metadata !115, metadata !"etree", metadata !5, i32 16777387, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 171]
!118 = metadata !{i32 786689, metadata !115, metadata !"fp", metadata !5, i32 33554604, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 172]
!119 = metadata !{i32 786688, metadata !115, metadata !"rc", metadata !5, i32 174, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 174]
!120 = metadata !{i32 786688, metadata !115, metadata !"itemp", metadata !5, i32 175, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 175]
!121 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_writeToFile", metadata !"ETree_writeToFile", metadata !"", i32 255, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*, i8*)* @ETree_writeToFile, null, null, metadata !122, i32 258} ; [ DW_TAG_subprogram ] [line 255] [def] [scope 258] [ETree_writeToFile]
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128}
!123 = metadata !{i32 786689, metadata !121, metadata !"etree", metadata !5, i32 16777472, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 256]
!124 = metadata !{i32 786689, metadata !121, metadata !"fn", metadata !5, i32 33554689, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 257]
!125 = metadata !{i32 786688, metadata !121, metadata !"fp", metadata !5, i32 259, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 259]
!126 = metadata !{i32 786688, metadata !121, metadata !"fnlength", metadata !5, i32 260, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 260]
!127 = metadata !{i32 786688, metadata !121, metadata !"rc", metadata !5, i32 260, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 260]
!128 = metadata !{i32 786688, metadata !121, metadata !"sulength", metadata !5, i32 260, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 260]
!129 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_writeToFormattedFile", metadata !"ETree_writeToFormattedFile", metadata !"", i32 329, metadata !105, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*, %struct._IO_FILE*)* @ETree_writeToFormattedFile, null, null, metadata !130, i32 332} ; [ DW_TAG_subprogram ] [line 329] [def] [scope 332] [ETree_writeToFormattedFile]
!130 = metadata !{metadata !131, metadata !132, metadata !133}
!131 = metadata !{i32 786689, metadata !129, metadata !"etree", metadata !5, i32 16777546, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 330]
!132 = metadata !{i32 786689, metadata !129, metadata !"fp", metadata !5, i32 33554763, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 331]
!133 = metadata !{i32 786688, metadata !129, metadata !"rc", metadata !5, i32 333, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 333]
!134 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_writeToBinaryFile", metadata !"ETree_writeToBinaryFile", metadata !"", i32 417, metadata !105, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*, %struct._IO_FILE*)* @ETree_writeToBinaryFile, null, null, metadata !135, i32 420} ; [ DW_TAG_subprogram ] [line 417] [def] [scope 420] [ETree_writeToBinaryFile]
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139}
!136 = metadata !{i32 786689, metadata !134, metadata !"etree", metadata !5, i32 16777634, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 418]
!137 = metadata !{i32 786689, metadata !134, metadata !"fp", metadata !5, i32 33554851, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 419]
!138 = metadata !{i32 786688, metadata !134, metadata !"rc", metadata !5, i32 421, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 421]
!139 = metadata !{i32 786688, metadata !134, metadata !"itemp", metadata !5, i32 422, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 422]
!140 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_writeForHumanEye", metadata !"ETree_writeForHumanEye", metadata !"", i32 508, metadata !105, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*, %struct._IO_FILE*)* @ETree_writeForHumanEye, null, null, metadata !141, i32 511} ; [ DW_TAG_subprogram ] [line 508] [def] [scope 511] [ETree_writeForHumanEye]
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151}
!142 = metadata !{i32 786689, metadata !140, metadata !"etree", metadata !5, i32 16777725, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 509]
!143 = metadata !{i32 786689, metadata !140, metadata !"fp", metadata !5, i32 33554942, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 510]
!144 = metadata !{i32 786688, metadata !140, metadata !"nfront", metadata !5, i32 512, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 512]
!145 = metadata !{i32 786688, metadata !140, metadata !"rc", metadata !5, i32 512, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 512]
!146 = metadata !{i32 786688, metadata !140, metadata !"v", metadata !5, i32 512, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 512]
!147 = metadata !{i32 786688, metadata !140, metadata !"bndwghts", metadata !5, i32 513, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts] [line 513]
!148 = metadata !{i32 786688, metadata !140, metadata !"fch", metadata !5, i32 513, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch] [line 513]
!149 = metadata !{i32 786688, metadata !140, metadata !"nodwghts", metadata !5, i32 513, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts] [line 513]
!150 = metadata !{i32 786688, metadata !140, metadata !"par", metadata !5, i32 513, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par] [line 513]
!151 = metadata !{i32 786688, metadata !140, metadata !"sib", metadata !5, i32 513, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib] [line 513]
!152 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_writeStats", metadata !"ETree_writeStats", metadata !"", i32 555, metadata !105, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*, %struct._IO_FILE*)* @ETree_writeStats, null, null, metadata !153, i32 558} ; [ DW_TAG_subprogram ] [line 555] [def] [scope 558] [ETree_writeStats]
!153 = metadata !{metadata !154, metadata !155, metadata !156}
!154 = metadata !{i32 786689, metadata !152, metadata !"etree", metadata !5, i32 16777772, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 556]
!155 = metadata !{i32 786689, metadata !152, metadata !"fp", metadata !5, i32 33554989, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 557]
!156 = metadata !{i32 786688, metadata !152, metadata !"rc", metadata !5, i32 559, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 559]
!157 = metadata !{metadata !158, metadata !161}
!158 = metadata !{i32 786484, i32 0, null, metadata !"suffixf", metadata !"suffixf", metadata !"", metadata !5, i32 6, metadata !159, i32 1, i32 1, null, null}
!159 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!160 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!161 = metadata !{i32 786484, i32 0, null, metadata !"suffixb", metadata !"suffixb", metadata !"", metadata !5, i32 5, metadata !159, i32 1, i32 1, null, null}
!162 = metadata !{i32 24, i32 0, metadata !4, null}
!163 = metadata !{i32 25, i32 0, metadata !4, null}
!164 = metadata !{i32 34, i32 0, metadata !4, null}
!165 = metadata !{i32 35, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!167 = metadata !{metadata !"any pointer", metadata !168}
!168 = metadata !{metadata !"omnipotent char", metadata !169}
!169 = metadata !{metadata !"Simple C/C++ TBAA"}
!170 = metadata !{i32 37, i32 0, metadata !166, null}
!171 = metadata !{i32 44, i32 0, metadata !4, null}
!172 = metadata !{i32 7}
!173 = metadata !{i32 45, i32 0, metadata !4, null}
!174 = metadata !{i32 46, i32 0, metadata !4, null}
!175 = metadata !{i32 47, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!177 = metadata !{i32 48, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !176, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!179 = metadata !{i32 49, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !178, i32 48, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!181 = metadata !{i32 51, i32 0, metadata !180, null}
!182 = metadata !{i32 52, i32 0, metadata !180, null}
!183 = metadata !{i32 53, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !178, i32 52, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!185 = metadata !{i32 54, i32 0, metadata !184, null}
!186 = metadata !{i32 56, i32 0, metadata !176, null}
!187 = metadata !{i32 57, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !176, i32 56, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!189 = metadata !{i32 58, i32 0, metadata !190, null} ; [ DW_TAG_imported_module ]
!190 = metadata !{i32 786443, metadata !1, metadata !188, i32 57, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!191 = metadata !{i32 60, i32 0, metadata !190, null}
!192 = metadata !{i32 61, i32 0, metadata !190, null}
!193 = metadata !{i32 62, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !188, i32 61, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!195 = metadata !{i32 63, i32 0, metadata !194, null}
!196 = metadata !{i32 66, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !176, i32 65, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!198 = metadata !{i32 70, i32 0, metadata !197, null}
!199 = metadata !{i32 73, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !4, i32 72, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!201 = metadata !{i32 77, i32 0, metadata !200, null}
!202 = metadata !{i32 79, i32 0, metadata !4, null}
!203 = metadata !{i32 171, i32 0, metadata !115, null}
!204 = metadata !{i32 172, i32 0, metadata !115, null}
!205 = metadata !{i32 175, i32 0, metadata !115, null}
!206 = metadata !{i32 181, i32 0, metadata !115, null}
!207 = metadata !{i32 182, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !115, i32 181, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!209 = metadata !{i32 184, i32 0, metadata !208, null}
!210 = metadata !{i32 191, i32 0, metadata !115, null}
!211 = metadata !{i32 197, i32 0, metadata !115, null}
!212 = metadata !{i32 203, i32 0, metadata !115, null}
!213 = metadata !{i32 204, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !115, i32 203, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!215 = metadata !{i32 206, i32 0, metadata !214, null}
!216 = metadata !{i32 208, i32 0, metadata !115, null}
!217 = metadata !{metadata !"int", metadata !168}
!218 = metadata !{i32 209, i32 0, metadata !115, null}
!219 = metadata !{i32 215, i32 0, metadata !115, null}
!220 = metadata !{i32 221, i32 0, metadata !115, null}
!221 = metadata !{i32 227, i32 0, metadata !115, null}
!222 = metadata !{i32 233, i32 0, metadata !115, null}
!223 = metadata !{i32 235, i32 0, metadata !115, null}
!224 = metadata !{i32 93, i32 0, metadata !104, null}
!225 = metadata !{i32 94, i32 0, metadata !104, null}
!226 = metadata !{i32 97, i32 0, metadata !104, null}
!227 = metadata !{i32 103, i32 0, metadata !104, null}
!228 = metadata !{i32 104, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !104, i32 103, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!230 = metadata !{i32 106, i32 0, metadata !229, null}
!231 = metadata !{i32 113, i32 0, metadata !104, null}
!232 = metadata !{i32 119, i32 0, metadata !104, null}
!233 = metadata !{i32 125, i32 0, metadata !104, null}
!234 = metadata !{i32 126, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !104, i32 125, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!236 = metadata !{i32 128, i32 0, metadata !235, null}
!237 = metadata !{i32 130, i32 0, metadata !104, null}
!238 = metadata !{i32 131, i32 0, metadata !104, null}
!239 = metadata !{i32 137, i32 0, metadata !104, null}
!240 = metadata !{i32 143, i32 0, metadata !104, null}
!241 = metadata !{i32 149, i32 0, metadata !104, null}
!242 = metadata !{i32 155, i32 0, metadata !104, null}
!243 = metadata !{i32 157, i32 0, metadata !104, null}
!244 = metadata !{i32 256, i32 0, metadata !121, null}
!245 = metadata !{i32 257, i32 0, metadata !121, null}
!246 = metadata !{i32 266, i32 0, metadata !121, null}
!247 = metadata !{i32 267, i32 0, metadata !248, null}
!248 = metadata !{i32 786443, metadata !1, metadata !121, i32 266, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!249 = metadata !{i32 269, i32 0, metadata !248, null}
!250 = metadata !{i32 275, i32 0, metadata !121, null}
!251 = metadata !{i32 276, i32 0, metadata !121, null}
!252 = metadata !{i32 277, i32 0, metadata !121, null}
!253 = metadata !{i32 278, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !121, i32 277, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!255 = metadata !{i32 279, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !254, i32 278, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!257 = metadata !{i32 280, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !256, i32 279, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!259 = metadata !{i32 282, i32 0, metadata !258, null}
!260 = metadata !{i32 283, i32 0, metadata !258, null}
!261 = metadata !{i32 284, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !256, i32 283, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!263 = metadata !{i32 285, i32 0, metadata !262, null}
!264 = metadata !{i32 287, i32 0, metadata !254, null}
!265 = metadata !{i32 288, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !254, i32 287, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!267 = metadata !{i32 289, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !266, i32 288, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!269 = metadata !{i32 291, i32 0, metadata !268, null}
!270 = metadata !{i32 292, i32 0, metadata !268, null}
!271 = metadata !{i32 293, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !266, i32 292, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!273 = metadata !{i32 294, i32 0, metadata !272, null}
!274 = metadata !{i32 297, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !254, i32 296, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!276 = metadata !{i32 298, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !275, i32 297, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!278 = metadata !{i32 300, i32 0, metadata !277, null}
!279 = metadata !{i32 301, i32 0, metadata !277, null}
!280 = metadata !{i32 302, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !275, i32 301, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!282 = metadata !{i32 303, i32 0, metadata !281, null}
!283 = metadata !{i32 307, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !121, i32 306, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!285 = metadata !{i32 308, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !284, i32 307, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!287 = metadata !{i32 310, i32 0, metadata !286, null}
!288 = metadata !{i32 311, i32 0, metadata !286, null}
!289 = metadata !{i32 312, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !284, i32 311, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!291 = metadata !{i32 313, i32 0, metadata !290, null}
!292 = metadata !{i32 316, i32 0, metadata !121, null}
!293 = metadata !{i32 418, i32 0, metadata !134, null}
!294 = metadata !{i32 419, i32 0, metadata !134, null}
!295 = metadata !{i32 422, i32 0, metadata !134, null}
!296 = metadata !{i32 428, i32 0, metadata !134, null}
!297 = metadata !{i32 429, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !1, metadata !134, i32 428, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!299 = metadata !{i32 431, i32 0, metadata !298, null}
!300 = metadata !{i32 438, i32 0, metadata !134, null}
!301 = metadata !{i32 439, i32 0, metadata !134, null}
!302 = metadata !{i32 440, i32 0, metadata !134, null}
!303 = metadata !{i32 441, i32 0, metadata !134, null}
!304 = metadata !{i32 442, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !1, metadata !134, i32 441, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!306 = metadata !{i32 444, i32 0, metadata !305, null}
!307 = metadata !{i32 451, i32 0, metadata !134, null}
!308 = metadata !{i32 452, i32 0, metadata !134, null}
!309 = metadata !{i32 453, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !134, i32 452, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!311 = metadata !{i32 456, i32 0, metadata !310, null}
!312 = metadata !{i32 463, i32 0, metadata !134, null}
!313 = metadata !{i32 464, i32 0, metadata !134, null}
!314 = metadata !{i32 465, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !134, i32 464, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!316 = metadata !{i32 468, i32 0, metadata !315, null}
!317 = metadata !{i32 475, i32 0, metadata !134, null}
!318 = metadata !{i32 476, i32 0, metadata !134, null}
!319 = metadata !{i32 477, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !134, i32 476, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!321 = metadata !{i32 480, i32 0, metadata !320, null}
!322 = metadata !{i32 487, i32 0, metadata !134, null}
!323 = metadata !{i32 488, i32 0, metadata !134, null}
!324 = metadata !{i32 489, i32 0, metadata !325, null}
!325 = metadata !{i32 786443, metadata !1, metadata !134, i32 488, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!326 = metadata !{i32 492, i32 0, metadata !325, null}
!327 = metadata !{i32 495, i32 0, metadata !134, null}
!328 = metadata !{i32 330, i32 0, metadata !129, null}
!329 = metadata !{i32 331, i32 0, metadata !129, null}
!330 = metadata !{i32 339, i32 0, metadata !129, null}
!331 = metadata !{i32 340, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !129, i32 339, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!333 = metadata !{i32 342, i32 0, metadata !332, null}
!334 = metadata !{i32 349, i32 0, metadata !129, null}
!335 = metadata !{i32 350, i32 0, metadata !129, null}
!336 = metadata !{i32 351, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !129, i32 350, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!338 = metadata !{i32 353, i32 0, metadata !337, null}
!339 = metadata !{i32 360, i32 0, metadata !129, null}
!340 = metadata !{i32 361, i32 0, metadata !129, null}
!341 = metadata !{i32 362, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !129, i32 361, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!343 = metadata !{i32 365, i32 0, metadata !342, null}
!344 = metadata !{i32 372, i32 0, metadata !129, null}
!345 = metadata !{i32 373, i32 0, metadata !129, null}
!346 = metadata !{i32 374, i32 0, metadata !347, null}
!347 = metadata !{i32 786443, metadata !1, metadata !129, i32 373, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!348 = metadata !{i32 377, i32 0, metadata !347, null}
!349 = metadata !{i32 384, i32 0, metadata !129, null}
!350 = metadata !{i32 385, i32 0, metadata !129, null}
!351 = metadata !{i32 386, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !129, i32 385, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!353 = metadata !{i32 389, i32 0, metadata !352, null}
!354 = metadata !{i32 396, i32 0, metadata !129, null}
!355 = metadata !{i32 397, i32 0, metadata !129, null}
!356 = metadata !{i32 398, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !129, i32 397, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!358 = metadata !{i32 401, i32 0, metadata !357, null}
!359 = metadata !{i32 404, i32 0, metadata !129, null}
!360 = metadata !{i32 509, i32 0, metadata !140, null}
!361 = metadata !{i32 510, i32 0, metadata !140, null}
!362 = metadata !{i32 515, i32 0, metadata !140, null}
!363 = metadata !{i32 516, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !140, i32 515, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!365 = metadata !{i32 518, i32 0, metadata !364, null}
!366 = metadata !{i32 520, i32 0, metadata !140, null}
!367 = metadata !{i32 521, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !140, i32 520, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!369 = metadata !{i32 524, i32 0, metadata !368, null}
!370 = metadata !{i32 526, i32 0, metadata !140, null}
!371 = metadata !{i32 527, i32 0, metadata !140, null}
!372 = metadata !{i32 528, i32 0, metadata !140, null}
!373 = metadata !{i32 529, i32 0, metadata !140, null}
!374 = metadata !{i32 530, i32 0, metadata !140, null}
!375 = metadata !{i32 531, i32 0, metadata !140, null}
!376 = metadata !{i32 533, i32 0, metadata !377, null}
!377 = metadata !{i32 786443, metadata !1, metadata !140, i32 533, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!378 = metadata !{i32 534, i32 0, metadata !379, null}
!379 = metadata !{i32 786443, metadata !1, metadata !377, i32 533, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!380 = metadata !{i32 537, i32 0, metadata !140, null}
!381 = metadata !{i32 538, i32 0, metadata !140, null}
!382 = metadata !{i32 539, i32 0, metadata !140, null}
!383 = metadata !{i32 540, i32 0, metadata !140, null}
!384 = metadata !{i32 542, i32 0, metadata !140, null}
!385 = metadata !{i32 556, i32 0, metadata !152, null}
!386 = metadata !{i32 557, i32 0, metadata !152, null}
!387 = metadata !{i32 565, i32 0, metadata !152, null}
!388 = metadata !{i32 566, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !152, i32 565, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!390 = metadata !{i32 568, i32 0, metadata !389, null}
!391 = metadata !{i32 570, i32 0, metadata !152, null}
!392 = metadata !{i32 572, i32 0, metadata !152, null}
!393 = metadata !{i32 573, i32 0, metadata !152, null}
!394 = metadata !{i32 574, i32 0, metadata !395, null}
!395 = metadata !{i32 786443, metadata !1, metadata !152, i32 573, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_IO.c]
!396 = metadata !{i32 576, i32 0, metadata !395, null}
!397 = metadata !{i32 578, i32 0, metadata !152, null}
