; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A error in BPG_readFromFile(%p,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"\0A error in BPG_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [102 x i8] c"\0A error in BPG_readFromFile(%p,%s)\0A bad BPG file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [56 x i8] c"\0A error in BPG_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [66 x i8] c"\0A error in BPG_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [121 x i8] c"\0A error in BPG_readFromFormattedFile(%p,%p)\0A trying to read in Graph\0A return code %d from Graph_readFormattedFile(%p,%p)\00", align 1
@.str8 = private unnamed_addr constant [59 x i8] c"\0A fatal error in BPG_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [63 x i8] c"\0A error in BPG_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str10 = private unnamed_addr constant [115 x i8] c"\0A error in BPG_readFromBinaryFile(%p,%p)\0A trying to read in Graph\0A return code %d from Graph_readBinaryFile(%p,%p)\00", align 1
@.str11 = private unnamed_addr constant [52 x i8] c"\0A fatal error in BPG_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str13 = private unnamed_addr constant [58 x i8] c"\0A error in BPG_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str16 = private unnamed_addr constant [61 x i8] c"\0A fatal error in BPG_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str17 = private unnamed_addr constant [8 x i8] c"\0A %d %d\00", align 1
@.str18 = private unnamed_addr constant [86 x i8] c"\0A fatal error in BPG_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str19 = private unnamed_addr constant [143 x i8] c"\0A fatal error in BPG_writeToFormattedFile(%p,%p)\0A rc = %d, return from Graph_writeToFormattedFile(%p,%p)\0A while attempting to write out graph\0A\00", align 1
@.str20 = private unnamed_addr constant [58 x i8] c"\0A fatal error in BPG_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str21 = private unnamed_addr constant [72 x i8] c"\0A error in BPG_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str22 = private unnamed_addr constant [137 x i8] c"\0A fatal error in BPG_writeToBinaryFile(%p,%p)\0A rc = %d, return from Graph_writeToBinaryFile(%p,%p)\0A while attempting to write out graph\0A\00", align 1
@.str23 = private unnamed_addr constant [57 x i8] c"\0A fatal error in BPG_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [90 x i8] c"\0A fatal error in BPG_writeForHumanEye(%p,%p)\0A rc = %d, return from BPG_writeStats(%p,%p)\0A\00", align 1
@.str25 = private unnamed_addr constant [16 x i8] c"\0A\0A Graph object\00", align 1
@.str26 = private unnamed_addr constant [135 x i8] c"\0A fatal error in BPG_writeForHumanEye(%p,%p)\0A rc = %d, return from Graph_writeForHumanEye(%p,%p)\0A while attempting to write out graph\0A\00", align 1
@.str27 = private unnamed_addr constant [45 x i8] c"\0A error in BPG_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str28 = private unnamed_addr constant [55 x i8] c"\0A warning in BPG_writeStats(%p,%p)\0A bpg->graph = NULL\0A\00", align 1
@.str29 = private unnamed_addr constant [32 x i8] c"\0A BPG : unweighted bpg object :\00", align 1
@.str30 = private unnamed_addr constant [39 x i8] c"\0A BPG : vertices weighted bpg object :\00", align 1
@.str31 = private unnamed_addr constant [36 x i8] c"\0A BPG : edges weighted bpg object :\00", align 1
@.str32 = private unnamed_addr constant [49 x i8] c"\0A BPG : vertices and edges weighted bpg object :\00", align 1
@.str33 = private unnamed_addr constant [67 x i8] c"\0A fatal error in BPG_writeStats(%p,%p)\0A invalid bpg->g->type = %d\0A\00", align 1
@.str34 = private unnamed_addr constant [18 x i8] c" nX = %d, nY = %d\00", align 1
@.str35 = private unnamed_addr constant [21 x i8] c", |X| = %d, |Y| = %d\00", align 1
@.str36 = private unnamed_addr constant [70 x i8] c"\0A fatal error in BPG_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str37 = private unnamed_addr constant [6 x i8] c".bpgf\00", align 1
@.str38 = private unnamed_addr constant [6 x i8] c".bpgb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_readFromFile(%struct._BPG* %bpg, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !57), !dbg !180
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !58), !dbg !181
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !182
  %cmp1 = icmp eq i8* %fn, null, !dbg !182
  %or.cond = or i1 %cmp, %cmp1, !dbg !182
  br i1 %or.cond, label %if.then, label %if.end, !dbg !182

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !183, !tbaa !185
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn) #6, !dbg !183
  br label %return, !dbg !188

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #7, !dbg !189
  %conv = trunc i64 %call2 to i32, !dbg !189
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !115), !dbg !189
  tail call void @llvm.dbg.value(metadata !190, i64 0, metadata !117), !dbg !191
  %cmp5 = icmp sgt i32 %conv, 5, !dbg !192
  br i1 %cmp5, label %if.then7, label %if.else41, !dbg !192

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !193
  %sext = add i64 %sub, -21474836480, !dbg !193
  %idxprom = ashr exact i64 %sext, 32, !dbg !193
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !193
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([6 x i8]* @.str38, i64 0, i64 0)) #7, !dbg !193
  %cmp9 = icmp eq i32 %call8, 0, !dbg !193
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !193

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !195
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !59), !dbg !195
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !195
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !195

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !197, !tbaa !185
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #6, !dbg !197
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !116), !dbg !199
  br label %return, !dbg !200

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @BPG_readFromBinaryFile(%struct._BPG* %bpg, %struct._IO_FILE* %call12) #8, !dbg !201
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !116), !dbg !201
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6, !dbg !203
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0)) #7, !dbg !204
  %cmp25 = icmp eq i32 %call24, 0, !dbg !204
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !204

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !205
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !59), !dbg !205
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !205
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !205

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !207, !tbaa !185
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #6, !dbg !207
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !116), !dbg !209
  br label %return, !dbg !210

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @BPG_readFromFormattedFile(%struct._BPG* %bpg, %struct._IO_FILE* %call28) #8, !dbg !211
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !116), !dbg !211
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6, !dbg !213
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !214, !tbaa !185
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([102 x i8]* @.str4, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn, i8* getelementptr inbounds ([6 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0)) #6, !dbg !214
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !116), !dbg !216
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !217, !tbaa !185
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([102 x i8]* @.str4, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn, i8* getelementptr inbounds ([6 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0)) #6, !dbg !217
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !116), !dbg !219
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0, !dbg !220
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
define i32 @BPG_readFromBinaryFile(%struct._BPG* %bpg, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !134), !dbg !221
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !135), !dbg !222
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %itemp}, metadata !140), !dbg !223
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !224
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !224
  %or.cond = or i1 %cmp, %cmp1, !dbg !224
  br i1 %or.cond, label %if.then, label %if.end, !dbg !224

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !225, !tbaa !185
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str8, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp) #6, !dbg !225
  br label %return, !dbg !227

if.end:                                           ; preds = %entry
  call void @BPG_clearData(%struct._BPG* %bpg) #6, !dbg !228
  %1 = bitcast [2 x i32]* %itemp to i8*, !dbg !229
  %call2 = call i64 @fread(i8* %1, i64 4, i64 2, %struct._IO_FILE* %fp) #6, !dbg !229
  %conv = trunc i64 %call2 to i32, !dbg !229
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !139), !dbg !229
  %cmp3 = icmp eq i32 %conv, 2, !dbg !229
  br i1 %cmp3, label %if.end7, label %if.then5, !dbg !229

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !230, !tbaa !185
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([63 x i8]* @.str9, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %conv, i32 2) #6, !dbg !230
  br label %return, !dbg !232

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !233
  %3 = load i32* %arrayidx, align 4, !dbg !233, !tbaa !234
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !137), !dbg !233
  %arrayidx8 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !235
  %4 = load i32* %arrayidx8, align 4, !dbg !235, !tbaa !234
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !138), !dbg !235
  %call9 = call %struct._Graph* @Graph_new() #6, !dbg !236
  call void @llvm.dbg.value(metadata !{%struct._Graph* %call9}, i64 0, metadata !136), !dbg !236
  call void @Graph_setDefaultFields(%struct._Graph* %call9) #6, !dbg !237
  %call10 = call i32 @Graph_readFromBinaryFile(%struct._Graph* %call9, %struct._IO_FILE* %fp) #6, !dbg !238
  call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !139), !dbg !238
  %cmp11 = icmp eq i32 %call10, 1, !dbg !239
  br i1 %cmp11, label %if.end15, label %if.then13, !dbg !239

if.then13:                                        ; preds = %if.end7
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !240, !tbaa !185
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([115 x i8]* @.str10, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %call10, %struct._Graph* %call9, %struct._IO_FILE* %fp) #6, !dbg !240
  br label %return, !dbg !242

if.end15:                                         ; preds = %if.end7
  call void @BPG_init(%struct._BPG* %bpg, i32 %3, i32 %4, %struct._Graph* %call9) #6, !dbg !243
  br label %return, !dbg !244

return:                                           ; preds = %if.end15, %if.then13, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then13 ], [ 1, %if.end15 ]
  ret i32 %retval.0, !dbg !244
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_readFromFormattedFile(%struct._BPG* %bpg, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !122), !dbg !245
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !123), !dbg !246
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %itemp}, metadata !128), !dbg !247
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !248
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !248
  %or.cond = or i1 %cmp, %cmp1, !dbg !248
  br i1 %or.cond, label %if.then, label %if.end, !dbg !248

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !249, !tbaa !185
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str5, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp) #6, !dbg !249
  br label %return, !dbg !251

if.end:                                           ; preds = %entry
  call void @BPG_clearData(%struct._BPG* %bpg) #6, !dbg !252
  %arraydecay = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !253
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 2, i32* %arraydecay) #6, !dbg !253
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !127), !dbg !253
  %cmp3 = icmp eq i32 %call2, 2, !dbg !253
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !253

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !254, !tbaa !185
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([66 x i8]* @.str6, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %call2, i32 2) #6, !dbg !254
  br label %return, !dbg !256

if.end6:                                          ; preds = %if.end
  %2 = load i32* %arraydecay, align 4, !dbg !257, !tbaa !234
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !125), !dbg !257
  %arrayidx7 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !258
  %3 = load i32* %arrayidx7, align 4, !dbg !258, !tbaa !234
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !126), !dbg !258
  %call8 = call %struct._Graph* @Graph_new() #6, !dbg !259
  call void @llvm.dbg.value(metadata !{%struct._Graph* %call8}, i64 0, metadata !124), !dbg !259
  call void @Graph_setDefaultFields(%struct._Graph* %call8) #6, !dbg !260
  %call9 = call i32 @Graph_readFromFormattedFile(%struct._Graph* %call8, %struct._IO_FILE* %fp) #6, !dbg !261
  call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !127), !dbg !261
  %cmp10 = icmp eq i32 %call9, 1, !dbg !262
  br i1 %cmp10, label %if.end13, label %if.then11, !dbg !262

if.then11:                                        ; preds = %if.end6
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !263, !tbaa !185
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([121 x i8]* @.str7, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %call9, %struct._Graph* %call8, %struct._IO_FILE* %fp) #6, !dbg !263
  br label %return, !dbg !265

if.end13:                                         ; preds = %if.end6
  call void @BPG_init(%struct._BPG* %bpg, i32 %2, i32 %3, %struct._Graph* %call8) #6, !dbg !266
  br label %return, !dbg !267

return:                                           ; preds = %if.end13, %if.then11, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then11 ], [ 1, %if.end13 ]
  ret i32 %retval.0, !dbg !267
}

; Function Attrs: optsize
declare void @BPG_clearData(%struct._BPG*) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #4

; Function Attrs: optsize
declare %struct._Graph* @Graph_new() #4

; Function Attrs: optsize
declare void @Graph_setDefaultFields(%struct._Graph*) #4

; Function Attrs: optsize
declare i32 @Graph_readFromFormattedFile(%struct._Graph*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare void @BPG_init(%struct._BPG*, i32, i32, %struct._Graph*) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @Graph_readFromBinaryFile(%struct._Graph*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_writeToFile(%struct._BPG* %bpg, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !143), !dbg !268
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !144), !dbg !269
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !270
  %cmp1 = icmp eq i8* %fn, null, !dbg !270
  %or.cond = or i1 %cmp, %cmp1, !dbg !270
  br i1 %or.cond, label %if.then, label %if.end, !dbg !270

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !271, !tbaa !185
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str11, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn) #6, !dbg !271
  br label %return, !dbg !273

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #7, !dbg !274
  %conv = trunc i64 %call2 to i32, !dbg !274
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !146), !dbg !274
  tail call void @llvm.dbg.value(metadata !190, i64 0, metadata !148), !dbg !275
  %cmp5 = icmp sgt i32 %conv, 5, !dbg !276
  br i1 %cmp5, label %if.then7, label %if.else49, !dbg !276

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !277
  %sext = add i64 %sub, -21474836480, !dbg !277
  %idxprom = ashr exact i64 %sext, 32, !dbg !277
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !277
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([6 x i8]* @.str38, i64 0, i64 0)) #7, !dbg !277
  %cmp9 = icmp eq i32 %call8, 0, !dbg !277
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !277

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0)) #6, !dbg !279
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !145), !dbg !279
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !279
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !279

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !281, !tbaa !185
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #6, !dbg !281
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !147), !dbg !283
  br label %return, !dbg !284

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @BPG_writeToBinaryFile(%struct._BPG* %bpg, %struct._IO_FILE* %call12) #8, !dbg !285
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !147), !dbg !285
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6, !dbg !287
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([6 x i8]* @.str37, i64 0, i64 0)) #7, !dbg !288
  %cmp25 = icmp eq i32 %call24, 0, !dbg !288
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !288

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #6, !dbg !289
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !145), !dbg !289
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !289
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !289

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !291, !tbaa !185
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #6, !dbg !291
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !147), !dbg !293
  br label %return, !dbg !294

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @BPG_writeToFormattedFile(%struct._BPG* %bpg, %struct._IO_FILE* %call28) #8, !dbg !295
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !147), !dbg !295
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6, !dbg !297
  br label %return

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #6, !dbg !298
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call38}, i64 0, metadata !145), !dbg !298
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null, !dbg !298
  br i1 %cmp39, label %if.then41, label %if.else43, !dbg !298

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !300, !tbaa !185
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #6, !dbg !300
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !147), !dbg !302
  br label %return, !dbg !303

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @BPG_writeForHumanEye(%struct._BPG* %bpg, %struct._IO_FILE* %call38) #8, !dbg !304
  tail call void @llvm.dbg.value(metadata !{i32 %call44}, i64 0, metadata !147), !dbg !304
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #6, !dbg !306
  br label %return

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #6, !dbg !307
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call50}, i64 0, metadata !145), !dbg !307
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null, !dbg !307
  br i1 %cmp51, label %if.then53, label %if.else55, !dbg !307

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !309, !tbaa !185
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), %struct._BPG* %bpg, i8* %fn, i8* %fn) #6, !dbg !309
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !147), !dbg !311
  br label %return, !dbg !312

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @BPG_writeForHumanEye(%struct._BPG* %bpg, %struct._IO_FILE* %call50) #8, !dbg !313
  tail call void @llvm.dbg.value(metadata !{i32 %call56}, i64 0, metadata !147), !dbg !313
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #6, !dbg !315
  br label %return

return:                                           ; preds = %if.else33, %if.then31, %if.else43, %if.then41, %if.then15, %if.else, %if.else55, %if.then53, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.then41 ], [ %call44, %if.else43 ], [ 0, %if.then53 ], [ %call56, %if.else55 ]
  ret i32 %retval.0, !dbg !316
}

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_writeToBinaryFile(%struct._BPG* %bpg, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [6 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !157), !dbg !317
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !158), !dbg !318
  call void @llvm.dbg.declare(metadata !{[6 x i32]* %itemp}, metadata !160), !dbg !319
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !320
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !320
  %or.cond = or i1 %cmp, %cmp1, !dbg !320
  br i1 %or.cond, label %if.then, label %if.end, !dbg !320

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !321, !tbaa !185
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str20, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp) #6, !dbg !321
  br label %return, !dbg !323

if.end:                                           ; preds = %entry
  %nX = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !324
  %1 = load i32* %nX, align 4, !dbg !324, !tbaa !234
  %arrayidx = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 0, !dbg !324
  store i32 %1, i32* %arrayidx, align 16, !dbg !324, !tbaa !234
  %nY = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !325
  %2 = load i32* %nY, align 4, !dbg !325, !tbaa !234
  %arrayidx2 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 1, !dbg !325
  store i32 %2, i32* %arrayidx2, align 4, !dbg !325, !tbaa !234
  %3 = bitcast [6 x i32]* %itemp to i8*, !dbg !326
  %call3 = call i64 @fwrite(i8* %3, i64 4, i64 6, %struct._IO_FILE* %fp) #6, !dbg !326
  %conv = trunc i64 %call3 to i32, !dbg !326
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !159), !dbg !326
  %cmp4 = icmp eq i32 %conv, 6, !dbg !327
  br i1 %cmp4, label %if.end8, label %if.then6, !dbg !327

if.then6:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !328, !tbaa !185
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([72 x i8]* @.str21, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %conv, i32 6) #6, !dbg !328
  br label %return, !dbg !330

if.end8:                                          ; preds = %if.end
  %graph = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !331
  %5 = load %struct._Graph** %graph, align 8, !dbg !331, !tbaa !185
  %call9 = call i32 @Graph_writeToBinaryFile(%struct._Graph* %5, %struct._IO_FILE* %fp) #6, !dbg !331
  call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !159), !dbg !331
  %cmp10 = icmp slt i32 %call9, 0, !dbg !332
  br i1 %cmp10, label %if.then12, label %return, !dbg !332

if.then12:                                        ; preds = %if.end8
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !333, !tbaa !185
  %7 = load %struct._Graph** %graph, align 8, !dbg !333, !tbaa !185
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([137 x i8]* @.str22, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %call9, %struct._Graph* %7, %struct._IO_FILE* %fp) #6, !dbg !333
  br label %return, !dbg !335

return:                                           ; preds = %if.end8, %if.then12, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then12 ], [ 1, %if.end8 ]
  ret i32 %retval.0, !dbg !336
}

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_writeToFormattedFile(%struct._BPG* %bpg, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !151), !dbg !337
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !152), !dbg !338
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !339
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !339
  %or.cond = or i1 %cmp, %cmp1, !dbg !339
  br i1 %or.cond, label %if.then, label %if.end, !dbg !339

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !340, !tbaa !185
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str16, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp) #6, !dbg !340
  br label %return, !dbg !342

if.end:                                           ; preds = %entry
  %nX = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !343
  %1 = load i32* %nX, align 4, !dbg !343, !tbaa !234
  %nY = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !343
  %2 = load i32* %nY, align 4, !dbg !343, !tbaa !234
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str17, i64 0, i64 0), i32 %1, i32 %2) #6, !dbg !343
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !154), !dbg !343
  %cmp3 = icmp slt i32 %call2, 0, !dbg !344
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !344

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !345, !tbaa !185
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([86 x i8]* @.str18, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %call2) #6, !dbg !345
  br label %return, !dbg !347

if.end6:                                          ; preds = %if.end
  %graph = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !348
  %4 = load %struct._Graph** %graph, align 8, !dbg !348, !tbaa !185
  %call7 = tail call i32 @Graph_writeToFormattedFile(%struct._Graph* %4, %struct._IO_FILE* %fp) #6, !dbg !348
  tail call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !154), !dbg !348
  %cmp8 = icmp slt i32 %call7, 0, !dbg !349
  br i1 %cmp8, label %if.then9, label %return, !dbg !349

if.then9:                                         ; preds = %if.end6
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !350, !tbaa !185
  %6 = load %struct._Graph** %graph, align 8, !dbg !350, !tbaa !185
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([143 x i8]* @.str19, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %call7, %struct._Graph* %6, %struct._IO_FILE* %fp) #6, !dbg !350
  br label %return, !dbg !352

return:                                           ; preds = %if.end6, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then9 ], [ 1, %if.end6 ]
  ret i32 %retval.0, !dbg !353
}

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_writeForHumanEye(%struct._BPG* %bpg, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !166), !dbg !354
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !167), !dbg !355
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !356
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !356
  %or.cond = or i1 %cmp, %cmp1, !dbg !356
  br i1 %or.cond, label %if.then, label %if.end, !dbg !356

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !357, !tbaa !185
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str23, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp) #6, !dbg !357
  tail call void @exit(i32 -1) #9, !dbg !359
  unreachable, !dbg !359

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @BPG_writeStats(%struct._BPG* %bpg, %struct._IO_FILE* %fp) #8, !dbg !360
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !169), !dbg !360
  %cmp3 = icmp eq i32 %call2, 0, !dbg !360
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !360

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !361, !tbaa !185
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([90 x i8]* @.str24, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 0, %struct._BPG* %bpg, %struct._IO_FILE* %fp) #6, !dbg !361
  br label %return, !dbg !363

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @fflush(%struct._IO_FILE* %fp) #6, !dbg !364
  %graph = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !365
  %2 = load %struct._Graph** %graph, align 8, !dbg !365, !tbaa !185
  %cmp8 = icmp eq %struct._Graph* %2, null, !dbg !365
  br i1 %cmp8, label %return, label %if.then9, !dbg !365

if.then9:                                         ; preds = %if.end6
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str25, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %fp) #10, !dbg !366
  %4 = load %struct._Graph** %graph, align 8, !dbg !368, !tbaa !185
  %call12 = tail call i32 @Graph_writeForHumanEye(%struct._Graph* %4, %struct._IO_FILE* %fp) #6, !dbg !368
  tail call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !169), !dbg !368
  %cmp13 = icmp slt i32 %call12, 0, !dbg !369
  br i1 %cmp13, label %if.then14, label %return, !dbg !369

if.then14:                                        ; preds = %if.then9
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !370, !tbaa !185
  %6 = load %struct._Graph** %graph, align 8, !dbg !370, !tbaa !185
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([135 x i8]* @.str26, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %call12, %struct._Graph* %6, %struct._IO_FILE* %fp) #6, !dbg !370
  br label %return, !dbg !372

return:                                           ; preds = %if.then9, %if.end6, %if.then14, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then14 ], [ 1, %if.end6 ], [ 1, %if.then9 ]
  ret i32 %retval.0, !dbg !373
}

; Function Attrs: optsize
declare i32 @Graph_writeToFormattedFile(%struct._Graph*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @Graph_writeToBinaryFile(%struct._Graph*, %struct._IO_FILE*) #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: nounwind optsize uwtable
define i32 @BPG_writeStats(%struct._BPG* %bpg, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !172), !dbg !374
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !173), !dbg !375
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !376
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !376
  %or.cond = or i1 %cmp, %cmp1, !dbg !376
  br i1 %or.cond, label %if.then, label %if.end, !dbg !376

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !377, !tbaa !185
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str27, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp) #6, !dbg !377
  tail call void @exit(i32 -1) #9, !dbg !379
  unreachable, !dbg !379

if.end:                                           ; preds = %entry
  %graph = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !380
  %1 = load %struct._Graph** %graph, align 8, !dbg !380, !tbaa !185
  %cmp2 = icmp eq %struct._Graph* %1, null, !dbg !380
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !380

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !381, !tbaa !185
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str28, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp) #6, !dbg !381
  br label %return, !dbg !383

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct._Graph* %1, i64 0, i32 0, !dbg !384
  %3 = load i32* %type, align 4, !dbg !384, !tbaa !234
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb10
    i32 3, label %sw.bb12
  ], !dbg !384

sw.bb:                                            ; preds = %if.end5
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str29, i64 0, i64 0)) #6, !dbg !385
  tail call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !174), !dbg !385
  br label %sw.epilog, !dbg !387

sw.bb8:                                           ; preds = %if.end5
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str30, i64 0, i64 0)) #6, !dbg !388
  tail call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !174), !dbg !388
  br label %sw.epilog, !dbg !389

sw.bb10:                                          ; preds = %if.end5
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str31, i64 0, i64 0)) #6, !dbg !390
  tail call void @llvm.dbg.value(metadata !{i32 %call11}, i64 0, metadata !174), !dbg !390
  br label %sw.epilog, !dbg !391

sw.bb12:                                          ; preds = %if.end5
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([49 x i8]* @.str32, i64 0, i64 0)) #6, !dbg !392
  tail call void @llvm.dbg.value(metadata !{i32 %call13}, i64 0, metadata !174), !dbg !392
  br label %sw.epilog, !dbg !393

sw.default:                                       ; preds = %if.end5
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !394, !tbaa !185
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([67 x i8]* @.str33, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %3) #6, !dbg !394
  br label %return, !dbg !395

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb
  %rc.0 = phi i32 [ %call13, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb ]
  %cmp17 = icmp slt i32 %rc.0, 0, !dbg !396
  br i1 %cmp17, label %IO_error, label %if.end19, !dbg !396

if.end19:                                         ; preds = %sw.epilog
  %call20 = tail call i32 @fflush(%struct._IO_FILE* %fp) #6, !dbg !397
  %nX = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !398
  %5 = load i32* %nX, align 4, !dbg !398, !tbaa !234
  %nY = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !398
  %6 = load i32* %nY, align 4, !dbg !398, !tbaa !234
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str34, i64 0, i64 0), i32 %5, i32 %6) #6, !dbg !398
  tail call void @llvm.dbg.value(metadata !{i32 %call21}, i64 0, metadata !174), !dbg !398
  %cmp22 = icmp slt i32 %call21, 0, !dbg !399
  br i1 %cmp22, label %IO_error, label %if.end24, !dbg !399

if.end24:                                         ; preds = %if.end19
  %call25 = tail call i32 @fflush(%struct._IO_FILE* %fp) #6, !dbg !400
  %7 = load %struct._Graph** %graph, align 8, !dbg !401, !tbaa !185
  %cmp27 = icmp eq %struct._Graph* %7, null, !dbg !401
  br i1 %cmp27, label %if.end49, label %if.then28, !dbg !401

if.then28:                                        ; preds = %if.end24
  %vwghts = getelementptr inbounds %struct._Graph* %7, i64 0, i32 7, !dbg !402
  %8 = load i32** %vwghts, align 8, !dbg !402, !tbaa !185
  %cmp30 = icmp eq i32* %8, null, !dbg !402
  %9 = load i32* %nX, align 4, !dbg !404, !tbaa !234
  br i1 %cmp30, label %if.else, label %if.then31, !dbg !402

if.then31:                                        ; preds = %if.then28
  %call35 = tail call i32 @IVsum(i32 %9, i32* %8) #6, !dbg !404
  %10 = load i32* %nY, align 4, !dbg !406, !tbaa !234
  %11 = load %struct._Graph** %graph, align 8, !dbg !406, !tbaa !185
  %vwghts38 = getelementptr inbounds %struct._Graph* %11, i64 0, i32 7, !dbg !406
  %12 = load i32** %vwghts38, align 8, !dbg !406, !tbaa !185
  %13 = load i32* %nX, align 4, !dbg !406, !tbaa !234
  %idx.ext = sext i32 %13 to i64, !dbg !406
  %add.ptr = getelementptr inbounds i32* %12, i64 %idx.ext, !dbg !406
  %call40 = tail call i32 @IVsum(i32 %10, i32* %add.ptr) #6, !dbg !406
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str35, i64 0, i64 0), i32 %call35, i32 %call40) #6, !dbg !406
  tail call void @llvm.dbg.value(metadata !{i32 %call41}, i64 0, metadata !174), !dbg !406
  br label %if.end46, !dbg !407

if.else:                                          ; preds = %if.then28
  %14 = load i32* %nY, align 4, !dbg !408, !tbaa !234
  %call44 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str35, i64 0, i64 0), i32 %9, i32 %14) #6, !dbg !408
  tail call void @llvm.dbg.value(metadata !{i32 %call44}, i64 0, metadata !174), !dbg !408
  br label %if.end46

if.end46:                                         ; preds = %if.then31, %if.else
  %rc.1 = phi i32 [ %call41, %if.then31 ], [ %call44, %if.else ]
  %cmp47 = icmp slt i32 %rc.1, 0, !dbg !410
  br i1 %cmp47, label %IO_error, label %if.end49, !dbg !410

if.end49:                                         ; preds = %if.end24, %if.end46
  %call50 = tail call i32 @fflush(%struct._IO_FILE* %fp) #6, !dbg !411
  br label %return, !dbg !412

IO_error:                                         ; preds = %if.end46, %if.end19, %sw.epilog
  %rc.2 = phi i32 [ %rc.0, %sw.epilog ], [ %call21, %if.end19 ], [ %rc.1, %if.end46 ]
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !413, !tbaa !185
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([70 x i8]* @.str36, i64 0, i64 0), %struct._BPG* %bpg, %struct._IO_FILE* %fp, i32 %rc.2) #6, !dbg !413
  br label %return, !dbg !414

return:                                           ; preds = %IO_error, %if.end49, %sw.default, %if.then3
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %sw.default ], [ 0, %IO_error ], [ 1, %if.end49 ]
  ret i32 %retval.0, !dbg !414
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @Graph_writeForHumanEye(%struct._Graph*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #4

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !175, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !118, metadata !132, metadata !141, metadata !149, metadata !155, metadata !164, metadata !170}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_readFromFile", metadata !"BPG_readFromFile", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._BPG*, i8*)* @BPG_readFromFile, null, null, metadata !56, i32 26} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 26] [BPG_readFromFile]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !54}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BPG]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"BPG", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [BPG] [line 21, size 0, align 0, offset 0] [from _BPG]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_BPG", i32 22, i64 128, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_BPG] [line 22, size 128, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../BPG.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nX", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [nX] [line 23, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nY", i32 24, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [nY] [line 24, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"graph", i32 25, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [graph] [line 25, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!18 = metadata !{i32 786454, metadata !12, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../../Graph/Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !52, metadata !53}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!25 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!28 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!30 = metadata !{i32 786454, metadata !20, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !40, metadata !42, metadata !43}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!38 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!40 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !41} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!43 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !44} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!45 = metadata !{i32 786454, metadata !32, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!46 = metadata !{i32 786451, metadata !32, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !47, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51}
!48 = metadata !{i32 786445, metadata !32, metadata !46, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!49 = metadata !{i32 786445, metadata !32, metadata !46, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!50 = metadata !{i32 786445, metadata !32, metadata !46, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!51 = metadata !{i32 786445, metadata !32, metadata !46, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!52 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !39} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!53 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !29} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!55 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !115, metadata !116, metadata !117}
!57 = metadata !{i32 786689, metadata !4, metadata !"bpg", metadata !5, i32 16777240, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 24]
!58 = metadata !{i32 786689, metadata !4, metadata !"fn", metadata !5, i32 33554457, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 25]
!59 = metadata !{i32 786688, metadata !4, metadata !"fp", metadata !5, i32 27, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 27]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!61 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!62 = metadata !{i32 786451, metadata !63, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !64, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!63 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!64 = metadata !{metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !85, metadata !86, metadata !87, metadata !88, metadata !91, metadata !93, metadata !95, metadata !99, metadata !101, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !110, metadata !111}
!65 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!66 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!67 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !54} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!68 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !54} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!69 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !54} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!70 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !54} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!71 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !54} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!72 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !54} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!73 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !54} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!74 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !54} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!75 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !54} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!76 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !54} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!77 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !78} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!79 = metadata !{i32 786451, metadata !63, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !80, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!80 = metadata !{metadata !81, metadata !82, metadata !84}
!81 = metadata !{i32 786445, metadata !63, metadata !79, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!82 = metadata !{i32 786445, metadata !63, metadata !79, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !83} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!84 = metadata !{i32 786445, metadata !63, metadata !79, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!85 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !83} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!86 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!87 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!88 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !89} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!89 = metadata !{i32 786454, metadata !63, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!90 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!91 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !92} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!92 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!93 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !94} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!94 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!95 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !96} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!96 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !55, metadata !97, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!97 = metadata !{metadata !98}
!98 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!99 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !100} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!101 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !102} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!102 = metadata !{i32 786454, metadata !63, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!103 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !100} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!104 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !100} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!105 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !100} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!106 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !100} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!107 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !108} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!108 = metadata !{i32 786454, metadata !63, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!109 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!110 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!111 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !112} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!112 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !55, metadata !113, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!113 = metadata !{metadata !114}
!114 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!115 = metadata !{i32 786688, metadata !4, metadata !"fnlength", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 28]
!116 = metadata !{i32 786688, metadata !4, metadata !"rc", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 28]
!117 = metadata !{i32 786688, metadata !4, metadata !"sulength", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 28]
!118 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_readFromFormattedFile", metadata !"BPG_readFromFormattedFile", metadata !"", i32 92, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._BPG*, %struct._IO_FILE*)* @BPG_readFromFormattedFile, null, null, metadata !121, i32 95} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 95] [BPG_readFromFormattedFile]
!119 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{metadata !8, metadata !9, metadata !60}
!121 = metadata !{metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128}
!122 = metadata !{i32 786689, metadata !118, metadata !"bpg", metadata !5, i32 16777309, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 93]
!123 = metadata !{i32 786689, metadata !118, metadata !"fp", metadata !5, i32 33554526, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 94]
!124 = metadata !{i32 786688, metadata !118, metadata !"graph", metadata !5, i32 96, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [graph] [line 96]
!125 = metadata !{i32 786688, metadata !118, metadata !"nX", metadata !5, i32 97, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nX] [line 97]
!126 = metadata !{i32 786688, metadata !118, metadata !"nY", metadata !5, i32 97, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nY] [line 97]
!127 = metadata !{i32 786688, metadata !118, metadata !"rc", metadata !5, i32 97, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 97]
!128 = metadata !{i32 786688, metadata !118, metadata !"itemp", metadata !5, i32 98, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 98]
!129 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !8, metadata !130, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!130 = metadata !{metadata !131}
!131 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!132 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_readFromBinaryFile", metadata !"BPG_readFromBinaryFile", metadata !"", i32 162, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._BPG*, %struct._IO_FILE*)* @BPG_readFromBinaryFile, null, null, metadata !133, i32 165} ; [ DW_TAG_subprogram ] [line 162] [def] [scope 165] [BPG_readFromBinaryFile]
!133 = metadata !{metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140}
!134 = metadata !{i32 786689, metadata !132, metadata !"bpg", metadata !5, i32 16777379, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 163]
!135 = metadata !{i32 786689, metadata !132, metadata !"fp", metadata !5, i32 33554596, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 164]
!136 = metadata !{i32 786688, metadata !132, metadata !"graph", metadata !5, i32 166, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [graph] [line 166]
!137 = metadata !{i32 786688, metadata !132, metadata !"nX", metadata !5, i32 167, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nX] [line 167]
!138 = metadata !{i32 786688, metadata !132, metadata !"nY", metadata !5, i32 167, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nY] [line 167]
!139 = metadata !{i32 786688, metadata !132, metadata !"rc", metadata !5, i32 167, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 167]
!140 = metadata !{i32 786688, metadata !132, metadata !"itemp", metadata !5, i32 168, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 168]
!141 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_writeToFile", metadata !"BPG_writeToFile", metadata !"", i32 239, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._BPG*, i8*)* @BPG_writeToFile, null, null, metadata !142, i32 242} ; [ DW_TAG_subprogram ] [line 239] [def] [scope 242] [BPG_writeToFile]
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148}
!143 = metadata !{i32 786689, metadata !141, metadata !"bpg", metadata !5, i32 16777456, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 240]
!144 = metadata !{i32 786689, metadata !141, metadata !"fn", metadata !5, i32 33554673, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 241]
!145 = metadata !{i32 786688, metadata !141, metadata !"fp", metadata !5, i32 243, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 243]
!146 = metadata !{i32 786688, metadata !141, metadata !"fnlength", metadata !5, i32 244, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 244]
!147 = metadata !{i32 786688, metadata !141, metadata !"rc", metadata !5, i32 244, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 244]
!148 = metadata !{i32 786688, metadata !141, metadata !"sulength", metadata !5, i32 244, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 244]
!149 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_writeToFormattedFile", metadata !"BPG_writeToFormattedFile", metadata !"", i32 314, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._BPG*, %struct._IO_FILE*)* @BPG_writeToFormattedFile, null, null, metadata !150, i32 317} ; [ DW_TAG_subprogram ] [line 314] [def] [scope 317] [BPG_writeToFormattedFile]
!150 = metadata !{metadata !151, metadata !152, metadata !153, metadata !154}
!151 = metadata !{i32 786689, metadata !149, metadata !"bpg", metadata !5, i32 16777531, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 315]
!152 = metadata !{i32 786689, metadata !149, metadata !"fp", metadata !5, i32 33554748, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 316]
!153 = metadata !{i32 786688, metadata !149, metadata !"ierr", metadata !5, i32 318, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 318]
!154 = metadata !{i32 786688, metadata !149, metadata !"rc", metadata !5, i32 318, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 318]
!155 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_writeToBinaryFile", metadata !"BPG_writeToBinaryFile", metadata !"", i32 367, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._BPG*, %struct._IO_FILE*)* @BPG_writeToBinaryFile, null, null, metadata !156, i32 370} ; [ DW_TAG_subprogram ] [line 367] [def] [scope 370] [BPG_writeToBinaryFile]
!156 = metadata !{metadata !157, metadata !158, metadata !159, metadata !160}
!157 = metadata !{i32 786689, metadata !155, metadata !"bpg", metadata !5, i32 16777584, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 368]
!158 = metadata !{i32 786689, metadata !155, metadata !"fp", metadata !5, i32 33554801, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 369]
!159 = metadata !{i32 786688, metadata !155, metadata !"rc", metadata !5, i32 371, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 371]
!160 = metadata !{i32 786688, metadata !155, metadata !"itemp", metadata !5, i32 372, metadata !161, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 372]
!161 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !8, metadata !162, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!162 = metadata !{metadata !163}
!163 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!164 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_writeForHumanEye", metadata !"BPG_writeForHumanEye", metadata !"", i32 423, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._BPG*, %struct._IO_FILE*)* @BPG_writeForHumanEye, null, null, metadata !165, i32 426} ; [ DW_TAG_subprogram ] [line 423] [def] [scope 426] [BPG_writeForHumanEye]
!165 = metadata !{metadata !166, metadata !167, metadata !168, metadata !169}
!166 = metadata !{i32 786689, metadata !164, metadata !"bpg", metadata !5, i32 16777640, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 424]
!167 = metadata !{i32 786689, metadata !164, metadata !"fp", metadata !5, i32 33554857, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 425]
!168 = metadata !{i32 786688, metadata !164, metadata !"ierr", metadata !5, i32 427, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 427]
!169 = metadata !{i32 786688, metadata !164, metadata !"rc", metadata !5, i32 427, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 427]
!170 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_writeStats", metadata !"BPG_writeStats", metadata !"", i32 476, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._BPG*, %struct._IO_FILE*)* @BPG_writeStats, null, null, metadata !171, i32 479} ; [ DW_TAG_subprogram ] [line 476] [def] [scope 479] [BPG_writeStats]
!171 = metadata !{metadata !172, metadata !173, metadata !174}
!172 = metadata !{i32 786689, metadata !170, metadata !"bpg", metadata !5, i32 16777693, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 477]
!173 = metadata !{i32 786689, metadata !170, metadata !"fp", metadata !5, i32 33554910, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 478]
!174 = metadata !{i32 786688, metadata !170, metadata !"rc", metadata !5, i32 480, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 480]
!175 = metadata !{metadata !176, metadata !179}
!176 = metadata !{i32 786484, i32 0, null, metadata !"suffixf", metadata !"suffixf", metadata !"", metadata !5, i32 6, metadata !177, i32 1, i32 1, null, null}
!177 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !178} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!178 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!179 = metadata !{i32 786484, i32 0, null, metadata !"suffixb", metadata !"suffixb", metadata !"", metadata !5, i32 5, metadata !177, i32 1, i32 1, null, null}
!180 = metadata !{i32 24, i32 0, metadata !4, null}
!181 = metadata !{i32 25, i32 0, metadata !4, null}
!182 = metadata !{i32 34, i32 0, metadata !4, null}
!183 = metadata !{i32 35, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!185 = metadata !{metadata !"any pointer", metadata !186}
!186 = metadata !{metadata !"omnipotent char", metadata !187}
!187 = metadata !{metadata !"Simple C/C++ TBAA"}
!188 = metadata !{i32 37, i32 0, metadata !184, null}
!189 = metadata !{i32 44, i32 0, metadata !4, null}
!190 = metadata !{i32 5}
!191 = metadata !{i32 45, i32 0, metadata !4, null}
!192 = metadata !{i32 46, i32 0, metadata !4, null}
!193 = metadata !{i32 47, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!195 = metadata !{i32 48, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !194, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!197 = metadata !{i32 49, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !196, i32 48, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!199 = metadata !{i32 51, i32 0, metadata !198, null}
!200 = metadata !{i32 52, i32 0, metadata !198, null}
!201 = metadata !{i32 53, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !196, i32 52, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!203 = metadata !{i32 54, i32 0, metadata !202, null}
!204 = metadata !{i32 56, i32 0, metadata !194, null}
!205 = metadata !{i32 57, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !194, i32 56, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!207 = metadata !{i32 58, i32 0, metadata !208, null} ; [ DW_TAG_imported_module ]
!208 = metadata !{i32 786443, metadata !1, metadata !206, i32 57, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!209 = metadata !{i32 60, i32 0, metadata !208, null}
!210 = metadata !{i32 61, i32 0, metadata !208, null}
!211 = metadata !{i32 62, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !206, i32 61, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!213 = metadata !{i32 63, i32 0, metadata !212, null}
!214 = metadata !{i32 66, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !194, i32 65, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!216 = metadata !{i32 70, i32 0, metadata !215, null}
!217 = metadata !{i32 73, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !4, i32 72, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!219 = metadata !{i32 77, i32 0, metadata !218, null}
!220 = metadata !{i32 79, i32 0, metadata !4, null}
!221 = metadata !{i32 163, i32 0, metadata !132, null}
!222 = metadata !{i32 164, i32 0, metadata !132, null}
!223 = metadata !{i32 168, i32 0, metadata !132, null}
!224 = metadata !{i32 174, i32 0, metadata !132, null}
!225 = metadata !{i32 175, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !132, i32 174, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!227 = metadata !{i32 177, i32 0, metadata !226, null}
!228 = metadata !{i32 184, i32 0, metadata !132, null}
!229 = metadata !{i32 190, i32 0, metadata !132, null}
!230 = metadata !{i32 191, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !132, i32 190, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!232 = metadata !{i32 193, i32 0, metadata !231, null}
!233 = metadata !{i32 195, i32 0, metadata !132, null}
!234 = metadata !{metadata !"int", metadata !186}
!235 = metadata !{i32 196, i32 0, metadata !132, null}
!236 = metadata !{i32 202, i32 0, metadata !132, null}
!237 = metadata !{i32 203, i32 0, metadata !132, null}
!238 = metadata !{i32 204, i32 0, metadata !132, null}
!239 = metadata !{i32 205, i32 0, metadata !132, null}
!240 = metadata !{i32 206, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !132, i32 205, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!242 = metadata !{i32 210, i32 0, metadata !241, null}
!243 = metadata !{i32 217, i32 0, metadata !132, null}
!244 = metadata !{i32 219, i32 0, metadata !132, null}
!245 = metadata !{i32 93, i32 0, metadata !118, null}
!246 = metadata !{i32 94, i32 0, metadata !118, null}
!247 = metadata !{i32 98, i32 0, metadata !118, null}
!248 = metadata !{i32 104, i32 0, metadata !118, null}
!249 = metadata !{i32 105, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !118, i32 104, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!251 = metadata !{i32 107, i32 0, metadata !250, null}
!252 = metadata !{i32 114, i32 0, metadata !118, null}
!253 = metadata !{i32 120, i32 0, metadata !118, null}
!254 = metadata !{i32 121, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !118, i32 120, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!256 = metadata !{i32 123, i32 0, metadata !255, null}
!257 = metadata !{i32 125, i32 0, metadata !118, null}
!258 = metadata !{i32 126, i32 0, metadata !118, null}
!259 = metadata !{i32 132, i32 0, metadata !118, null}
!260 = metadata !{i32 133, i32 0, metadata !118, null}
!261 = metadata !{i32 134, i32 0, metadata !118, null}
!262 = metadata !{i32 135, i32 0, metadata !118, null}
!263 = metadata !{i32 136, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !118, i32 135, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!265 = metadata !{i32 140, i32 0, metadata !264, null}
!266 = metadata !{i32 147, i32 0, metadata !118, null}
!267 = metadata !{i32 149, i32 0, metadata !118, null}
!268 = metadata !{i32 240, i32 0, metadata !141, null}
!269 = metadata !{i32 241, i32 0, metadata !141, null}
!270 = metadata !{i32 250, i32 0, metadata !141, null}
!271 = metadata !{i32 251, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !141, i32 250, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!273 = metadata !{i32 253, i32 0, metadata !272, null}
!274 = metadata !{i32 260, i32 0, metadata !141, null}
!275 = metadata !{i32 261, i32 0, metadata !141, null}
!276 = metadata !{i32 262, i32 0, metadata !141, null}
!277 = metadata !{i32 263, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !141, i32 262, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!279 = metadata !{i32 264, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !278, i32 263, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!281 = metadata !{i32 265, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !280, i32 264, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!283 = metadata !{i32 267, i32 0, metadata !282, null}
!284 = metadata !{i32 268, i32 0, metadata !282, null}
!285 = metadata !{i32 269, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !280, i32 268, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!287 = metadata !{i32 270, i32 0, metadata !286, null}
!288 = metadata !{i32 272, i32 0, metadata !278, null}
!289 = metadata !{i32 273, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !278, i32 272, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!291 = metadata !{i32 274, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !290, i32 273, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!293 = metadata !{i32 276, i32 0, metadata !292, null}
!294 = metadata !{i32 277, i32 0, metadata !292, null}
!295 = metadata !{i32 278, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !290, i32 277, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!297 = metadata !{i32 279, i32 0, metadata !296, null}
!298 = metadata !{i32 282, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !278, i32 281, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!300 = metadata !{i32 283, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !299, i32 282, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!302 = metadata !{i32 285, i32 0, metadata !301, null}
!303 = metadata !{i32 286, i32 0, metadata !301, null}
!304 = metadata !{i32 287, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !1, metadata !299, i32 286, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!306 = metadata !{i32 288, i32 0, metadata !305, null}
!307 = metadata !{i32 292, i32 0, metadata !308, null}
!308 = metadata !{i32 786443, metadata !1, metadata !141, i32 291, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!309 = metadata !{i32 293, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !308, i32 292, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!311 = metadata !{i32 295, i32 0, metadata !310, null}
!312 = metadata !{i32 296, i32 0, metadata !310, null}
!313 = metadata !{i32 297, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !308, i32 296, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!315 = metadata !{i32 298, i32 0, metadata !314, null}
!316 = metadata !{i32 301, i32 0, metadata !141, null}
!317 = metadata !{i32 368, i32 0, metadata !155, null}
!318 = metadata !{i32 369, i32 0, metadata !155, null}
!319 = metadata !{i32 372, i32 0, metadata !155, null}
!320 = metadata !{i32 378, i32 0, metadata !155, null}
!321 = metadata !{i32 379, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !155, i32 378, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!323 = metadata !{i32 381, i32 0, metadata !322, null}
!324 = metadata !{i32 388, i32 0, metadata !155, null}
!325 = metadata !{i32 389, i32 0, metadata !155, null}
!326 = metadata !{i32 390, i32 0, metadata !155, null}
!327 = metadata !{i32 391, i32 0, metadata !155, null}
!328 = metadata !{i32 392, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !155, i32 391, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!330 = metadata !{i32 394, i32 0, metadata !329, null}
!331 = metadata !{i32 401, i32 0, metadata !155, null}
!332 = metadata !{i32 402, i32 0, metadata !155, null}
!333 = metadata !{i32 403, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !155, i32 402, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!335 = metadata !{i32 407, i32 0, metadata !334, null}
!336 = metadata !{i32 410, i32 0, metadata !155, null}
!337 = metadata !{i32 315, i32 0, metadata !149, null}
!338 = metadata !{i32 316, i32 0, metadata !149, null}
!339 = metadata !{i32 324, i32 0, metadata !149, null}
!340 = metadata !{i32 325, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !149, i32 324, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!342 = metadata !{i32 327, i32 0, metadata !341, null}
!343 = metadata !{i32 334, i32 0, metadata !149, null}
!344 = metadata !{i32 335, i32 0, metadata !149, null}
!345 = metadata !{i32 336, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !149, i32 335, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!347 = metadata !{i32 338, i32 0, metadata !346, null}
!348 = metadata !{i32 345, i32 0, metadata !149, null}
!349 = metadata !{i32 346, i32 0, metadata !149, null}
!350 = metadata !{i32 347, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !149, i32 346, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!352 = metadata !{i32 351, i32 0, metadata !351, null}
!353 = metadata !{i32 354, i32 0, metadata !149, null}
!354 = metadata !{i32 424, i32 0, metadata !164, null}
!355 = metadata !{i32 425, i32 0, metadata !164, null}
!356 = metadata !{i32 429, i32 0, metadata !164, null}
!357 = metadata !{i32 430, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !164, i32 429, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!359 = metadata !{i32 432, i32 0, metadata !358, null}
!360 = metadata !{i32 439, i32 0, metadata !164, null}
!361 = metadata !{i32 440, i32 0, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !164, i32 439, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!363 = metadata !{i32 443, i32 0, metadata !362, null}
!364 = metadata !{i32 445, i32 0, metadata !164, null}
!365 = metadata !{i32 446, i32 0, metadata !164, null}
!366 = metadata !{i32 452, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !164, i32 446, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!368 = metadata !{i32 453, i32 0, metadata !367, null}
!369 = metadata !{i32 454, i32 0, metadata !367, null}
!370 = metadata !{i32 455, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !367, i32 454, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!372 = metadata !{i32 459, i32 0, metadata !371, null}
!373 = metadata !{i32 463, i32 0, metadata !164, null}
!374 = metadata !{i32 477, i32 0, metadata !170, null}
!375 = metadata !{i32 478, i32 0, metadata !170, null}
!376 = metadata !{i32 486, i32 0, metadata !170, null}
!377 = metadata !{i32 487, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !170, i32 486, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!379 = metadata !{i32 489, i32 0, metadata !378, null}
!380 = metadata !{i32 491, i32 0, metadata !170, null}
!381 = metadata !{i32 492, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !1, metadata !170, i32 491, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!383 = metadata !{i32 494, i32 0, metadata !382, null}
!384 = metadata !{i32 496, i32 0, metadata !170, null}
!385 = metadata !{i32 498, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !170, i32 496, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!387 = metadata !{i32 499, i32 0, metadata !386, null}
!388 = metadata !{i32 501, i32 0, metadata !386, null}
!389 = metadata !{i32 502, i32 0, metadata !386, null}
!390 = metadata !{i32 504, i32 0, metadata !386, null}
!391 = metadata !{i32 505, i32 0, metadata !386, null}
!392 = metadata !{i32 507, i32 0, metadata !386, null}
!393 = metadata !{i32 509, i32 0, metadata !386, null}
!394 = metadata !{i32 511, i32 0, metadata !386, null}
!395 = metadata !{i32 514, i32 0, metadata !386, null}
!396 = metadata !{i32 516, i32 0, metadata !170, null}
!397 = metadata !{i32 517, i32 0, metadata !170, null}
!398 = metadata !{i32 518, i32 0, metadata !170, null}
!399 = metadata !{i32 519, i32 0, metadata !170, null}
!400 = metadata !{i32 520, i32 0, metadata !170, null}
!401 = metadata !{i32 521, i32 0, metadata !170, null}
!402 = metadata !{i32 522, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !170, i32 521, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!404 = metadata !{i32 524, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !403, i32 522, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!406 = metadata !{i32 525, i32 0, metadata !405, null}
!407 = metadata !{i32 526, i32 0, metadata !405, null}
!408 = metadata !{i32 527, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !403, i32 526, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_IO.c]
!410 = metadata !{i32 530, i32 0, metadata !170, null}
!411 = metadata !{i32 531, i32 0, metadata !170, null}
!412 = metadata !{i32 533, i32 0, metadata !170, null}
!413 = metadata !{i32 536, i32 0, metadata !170, null}
!414 = metadata !{i32 538, i32 0, metadata !170, null}
