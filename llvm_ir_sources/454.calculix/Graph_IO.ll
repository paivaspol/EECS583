; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A error in Graph_readFromFile(%p,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [61 x i8] c"\0A error in Graph_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [106 x i8] c"\0A error in Graph_readFromFile(%p,%s)\0A bad Graph file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [66 x i8] c"\0A error in Graph_readFromChacoFile(%p,%s)\0A unable to open file %s\00", align 1
@.str6 = private unnamed_addr constant [74 x i8] c"\0A error in Graph_readFromChacoFile()\0A error skipping comments in file %s\0A\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str8 = private unnamed_addr constant [76 x i8] c"\0A error in Graph_readFromChacoFile(%p,%s)\0A unable to read header of file %s\00", align 1
@.str9 = private unnamed_addr constant [58 x i8] c"\0A error in Graph_readFromChacoFile(%p,%s)\0A unknown format\00", align 1
@.str10 = private unnamed_addr constant [88 x i8] c"\0A error in Graph_readFromChacoFile()\0A error reading adjacency for vertex %d in file %s\0A\00", align 1
@.str11 = private unnamed_addr constant [110 x i8] c"\0A error in Graph_readFromChacoFile(%p,%s)\0A unable to read adjacency lists of file %s (line buffer too small)\0A\00", align 1
@.str12 = private unnamed_addr constant [126 x i8] c"\0A error in Graph_readFromChacoFile()\0A number of nodes/edges does not match with header of %s\0A k %d, nedges %d, v %d, nvtx %d\0A\00", align 1
@.str13 = private unnamed_addr constant [58 x i8] c"\0A error in Graph_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [68 x i8] c"\0A error in Graph_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str15 = private unnamed_addr constant [122 x i8] c"\0A error in Graph_readFromFormattedFile(%p,%p)\0A trying to read in adjIVL\0A return code %d from IVL_readFormattedFile(%p,%p)\00", align 1
@.str16 = private unnamed_addr constant [82 x i8] c"\0A error in Graph_readFromFormattedFile(%p,%p)\0A totvwght = %d, IVsum(vwghts) = %d\0A\00", align 1
@.str17 = private unnamed_addr constant [124 x i8] c"\0A error in Graph_readFromFormattedFile(%p,%p)\0A trying to read in ewghtIVL\0A return code %d from IVL_readFormattedFile(%p,%p)\00", align 1
@.str18 = private unnamed_addr constant [86 x i8] c"\0A error in Graph_readFromFormattedFile(%p,%p)\0A totewght = %d, IVL_sum(ewghtIVL) = %d\0A\00", align 1
@.str19 = private unnamed_addr constant [61 x i8] c"\0A fatal error in Graph_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str20 = private unnamed_addr constant [65 x i8] c"\0A error in Graph_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str21 = private unnamed_addr constant [116 x i8] c"\0A error in Graph_readFromBinaryFile(%p,%p)\0A trying to read in adjIVL\0A return code %d from IVL_readBinaryFile(%p,%p)\00", align 1
@.str22 = private unnamed_addr constant [79 x i8] c"\0A error in Graph_readFromBinaryFile(%p,%p)\0A totvwght = %d, IVsum(vwghts) = %d\0A\00", align 1
@.str23 = private unnamed_addr constant [118 x i8] c"\0A error in Graph_readFromBinaryFile(%p,%p)\0A trying to read in ewghtIVL\0A return code %d from IVL_readBinaryFile(%p,%p)\00", align 1
@.str24 = private unnamed_addr constant [83 x i8] c"\0A error in Graph_readFromBinaryFile(%p,%p)\0A totewght = %d, IVL_sum(ewghtIVL) = %d\0A\00", align 1
@.str25 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Graph_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str26 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Graph_writeToFile(%p,%s)\0A bad type = %d\00", align 1
@.str27 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str28 = private unnamed_addr constant [60 x i8] c"\0A error in Graph_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str29 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str30 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str31 = private unnamed_addr constant [63 x i8] c"\0A fatal error in Graph_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str32 = private unnamed_addr constant [66 x i8] c"\0A fatal error in Graph_writeToFormattedFile(%p,%p)\0A bad type = %d\00", align 1
@.str33 = private unnamed_addr constant [20 x i8] c"\0A %d %d %d %d %d %d\00", align 1
@.str34 = private unnamed_addr constant [88 x i8] c"\0A fatal error in Graph_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str35 = private unnamed_addr constant [144 x i8] c"\0A fatal error in Graph_writeToFormattedFile(%p,%p)\0A rc = %d, return from IVL_writeToFormattedFile(%p,%p)\0A while attempting to write out adjIVL\0A\00", align 1
@.str36 = private unnamed_addr constant [93 x i8] c"\0A fatal error in Graph_writeToFormattedFile(%p,%p)\0A graph->type = %d, graph->vwghts == NULL\0A\00", align 1
@.str37 = private unnamed_addr constant [92 x i8] c"\0A fatal error in Graph_writeToFormattedFile(%p,%p)\0A ierr = %d, return from vwghts[] IVfp80\0A\00", align 1
@.str38 = private unnamed_addr constant [95 x i8] c"\0A fatal error in Graph_writeToFormattedFile(%p,%p)\0A graph->type = %d, graph->ewghtIVL == NULL\0A\00", align 1
@.str39 = private unnamed_addr constant [146 x i8] c"\0A fatal error in Graph_writeToFormattedFile(%p,%p)\0A rc = %d, return from IVL_writeToFormattedFile(%p,%p)\0A while attempting to write out ewghtIVL\0A\00", align 1
@.str40 = private unnamed_addr constant [60 x i8] c"\0A fatal error in Graph_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str41 = private unnamed_addr constant [63 x i8] c"\0A fatal error in Graph_writeToBinaryFile(%p,%p)\0A bad type = %d\00", align 1
@.str42 = private unnamed_addr constant [74 x i8] c"\0A error in Graph_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str43 = private unnamed_addr constant [138 x i8] c"\0A fatal error in Graph_writeToBinaryFile(%p,%p)\0A rc = %d, return from IVL_writeToBinaryFile(%p,%p)\0A while attempting to write out adjIVL\0A\00", align 1
@.str44 = private unnamed_addr constant [90 x i8] c"\0A fatal error in Graph_writeToBinaryFile(%p,%p)\0A graph->type = %d, graph->vwghts == NULL\0A\00", align 1
@.str45 = private unnamed_addr constant [87 x i8] c"\0A fatal error in Graph_writeToBinaryFile(%p,%p)\0A rc = %d, return from vwghts[] fwrite\0A\00", align 1
@.str46 = private unnamed_addr constant [92 x i8] c"\0A fatal error in Graph_writeToBinaryFile(%p,%p)\0A graph->type = %d, graph->ewghtIVL == NULL\0A\00", align 1
@.str47 = private unnamed_addr constant [140 x i8] c"\0A fatal error in Graph_writeToBinaryFile(%p,%p)\0A rc = %d, return from IVL_writeToBinaryFile(%p,%p)\0A while attempting to write out ewghtIVL\0A\00", align 1
@.str48 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Graph_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str49 = private unnamed_addr constant [94 x i8] c"\0A fatal error in Graph_writeForHumanEye(%p,%p)\0A rc = %d, return from Graph_writeStats(%p,%p)\0A\00", align 1
@.str50 = private unnamed_addr constant [24 x i8] c"\0A\0A adjacency IVL object\00", align 1
@.str51 = private unnamed_addr constant [136 x i8] c"\0A fatal error in Graph_writeForHumanEye(%p,%p)\0A rc = %d, return from IVL_writeForHumanEye(%p,%p)\0A while attempting to write out adjIVL\0A\00", align 1
@.str52 = private unnamed_addr constant [89 x i8] c"\0A fatal error in Graph_writeForHumanEye(%p,%p)\0A graph->type = %d, graph->vwghts == NULL\0A\00", align 1
@.str53 = private unnamed_addr constant [19 x i8] c"\0A\0A vertex weights \00", align 1
@.str54 = private unnamed_addr constant [88 x i8] c"\0A fatal error in Graph_writeForHumanEye(%p,%p)\0A ierr = %d, return from vwghts[] IVfp80\0A\00", align 1
@.str55 = private unnamed_addr constant [91 x i8] c"\0A fatal error in Graph_writeForHumanEye(%p,%p)\0A graph->type = %d, graph->ewghtIVL == NULL\0A\00", align 1
@.str56 = private unnamed_addr constant [27 x i8] c"\0A\0A edge weights IVL object\00", align 1
@.str57 = private unnamed_addr constant [138 x i8] c"\0A fatal error in Graph_writeForHumanEye(%p,%p)\0A rc = %d, return from IVL_writeForHumanEye(%p,%p)\0A while attempting to write out ewghtIVL\0A\00", align 1
@.str58 = private unnamed_addr constant [47 x i8] c"\0A error in Graph_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str59 = private unnamed_addr constant [36 x i8] c"\0A Graph : unweighted graph object :\00", align 1
@.str60 = private unnamed_addr constant [43 x i8] c"\0A Graph : vertices weighted graph object :\00", align 1
@.str61 = private unnamed_addr constant [40 x i8] c"\0A Graph : edges weighted graph object :\00", align 1
@.str62 = private unnamed_addr constant [53 x i8] c"\0A Graph : vertices and edges weighted graph object :\00", align 1
@.str63 = private unnamed_addr constant [68 x i8] c"\0A fatal error in Graph_writeStats(%p,%p)\0A invalid graph->type = %d\0A\00", align 1
@.str64 = private unnamed_addr constant [55 x i8] c"\0A %d internal vertices, %d boundary vertices, %d edges\00", align 1
@.str65 = private unnamed_addr constant [55 x i8] c"\0A %d internal vertex weight, %d boundary vertex weight\00", align 1
@.str66 = private unnamed_addr constant [23 x i8] c"\0A %d total edge weight\00", align 1
@.str67 = private unnamed_addr constant [72 x i8] c"\0A fatal error in Graph_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str68 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Graph_writeToMetisFile(%p,%p)\0A bad input\0A\00", align 1
@.str69 = private unnamed_addr constant [10 x i8] c" %d %d   \00", align 1
@.str70 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str71 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str72 = private unnamed_addr constant [10 x i8] c" %d %d 10\00", align 1
@.str73 = private unnamed_addr constant [5 x i8] c"\0A %d\00", align 1
@.str74 = private unnamed_addr constant [10 x i8] c" %d %d  1\00", align 1
@.str76 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@.str77 = private unnamed_addr constant [10 x i8] c" %d %d 11\00", align 1
@.str78 = private unnamed_addr constant [8 x i8] c".graphf\00", align 1
@.str79 = private unnamed_addr constant [8 x i8] c".graphb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_readFromFile(%struct._Graph* %graph, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Graph* %graph}, i64 0, metadata !49), !dbg !229
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !50), !dbg !230
  %cmp = icmp eq %struct._Graph* %graph, null, !dbg !231
  %cmp1 = icmp eq i8* %fn, null, !dbg !231
  %or.cond = or i1 %cmp, %cmp1, !dbg !231
  br i1 %or.cond, label %if.then, label %if.end, !dbg !231

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !232, !tbaa !234
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._Graph* %graph, i8* %fn) #7, !dbg !232
  br label %return, !dbg !237

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #8, !dbg !238
  %conv = trunc i64 %call2 to i32, !dbg !238
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !107), !dbg !238
  tail call void @llvm.dbg.value(metadata !239, i64 0, metadata !109), !dbg !240
  %cmp5 = icmp sgt i32 %conv, 7, !dbg !241
  br i1 %cmp5, label %if.then7, label %if.else41, !dbg !241

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !242
  %sext = add i64 %sub, -30064771072, !dbg !242
  %idxprom = ashr exact i64 %sext, 32, !dbg !242
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !242
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str79, i64 0, i64 0)) #8, !dbg !242
  %cmp9 = icmp eq i32 %call8, 0, !dbg !242
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !242

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !244
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !51), !dbg !244
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !244
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !244

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !246, !tbaa !234
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #7, !dbg !246
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !108), !dbg !248
  br label %return, !dbg !249

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @Graph_readFromBinaryFile(%struct._Graph* %graph, %struct._IO_FILE* %call12) #9, !dbg !250
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !108), !dbg !250
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #7, !dbg !252
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0)) #8, !dbg !253
  %cmp25 = icmp eq i32 %call24, 0, !dbg !253
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !253

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !254
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !51), !dbg !254
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !254
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !254

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !256, !tbaa !234
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #7, !dbg !256
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !108), !dbg !258
  br label %return, !dbg !259

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @Graph_readFromFormattedFile(%struct._Graph* %graph, %struct._IO_FILE* %call28) #9, !dbg !260
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !108), !dbg !260
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #7, !dbg !262
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !263, !tbaa !234
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([106 x i8]* @.str4, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn, i8* getelementptr inbounds ([8 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0)) #7, !dbg !263
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !108), !dbg !265
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !266, !tbaa !234
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([106 x i8]* @.str4, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn, i8* getelementptr inbounds ([8 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0)) #7, !dbg !266
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !108), !dbg !268
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0, !dbg !269
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
define i32 @Graph_readFromBinaryFile(%struct._Graph* %graph, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [6 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._Graph* %graph}, i64 0, metadata !163), !dbg !270
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !164), !dbg !271
  call void @llvm.dbg.declare(metadata !{[6 x i32]* %itemp}, metadata !172), !dbg !272
  %cmp = icmp eq %struct._Graph* %graph, null, !dbg !273
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !273
  %or.cond = or i1 %cmp, %cmp1, !dbg !273
  br i1 %or.cond, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !274, !tbaa !234
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str19, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp) #7, !dbg !274
  br label %return, !dbg !276

if.end:                                           ; preds = %entry
  call void @Graph_clearData(%struct._Graph* %graph) #7, !dbg !277
  %1 = bitcast [6 x i32]* %itemp to i8*, !dbg !278
  %call2 = call i64 @fread(i8* %1, i64 4, i64 6, %struct._IO_FILE* %fp) #7, !dbg !278
  %conv = trunc i64 %call2 to i32, !dbg !278
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !168), !dbg !278
  %cmp3 = icmp eq i32 %conv, 6, !dbg !278
  br i1 %cmp3, label %if.end7, label %if.then5, !dbg !278

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !279, !tbaa !234
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([65 x i8]* @.str20, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %conv, i32 6) #7, !dbg !279
  br label %return, !dbg !281

if.end7:                                          ; preds = %if.end
  %3 = bitcast [6 x i32]* %itemp to i64*, !dbg !282
  %4 = load i64* %3, align 16, !dbg !282
  %5 = trunc i64 %4 to i32, !dbg !282
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !171), !dbg !282
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !167), !dbg !283
  %arrayidx9 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 2, !dbg !284
  %8 = bitcast i32* %arrayidx9 to i64*, !dbg !284
  %9 = load i64* %8, align 8, !dbg !284
  %10 = trunc i64 %9 to i32, !dbg !284
  call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !166), !dbg !284
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !165), !dbg !285
  %arrayidx11 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 4, !dbg !286
  %13 = bitcast i32* %arrayidx11 to i64*, !dbg !286
  %14 = load i64* %13, align 16, !dbg !286
  %15 = trunc i64 %14 to i32, !dbg !286
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !170), !dbg !286
  %16 = lshr i64 %14, 32
  %17 = trunc i64 %16 to i32
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !169), !dbg !287
  %call13 = call %struct._IVL* @IVL_new() #7, !dbg !288
  call void @llvm.dbg.value(metadata !{%struct._IVL* %call13}, i64 0, metadata !174), !dbg !288
  call void @IVL_setDefaultFields(%struct._IVL* %call13) #7, !dbg !289
  %type14 = getelementptr inbounds %struct._IVL* %call13, i64 0, i32 0, !dbg !290
  store i32 1, i32* %type14, align 4, !dbg !290, !tbaa !291
  %call15 = call i32 @IVL_readFromBinaryFile(%struct._IVL* %call13, %struct._IO_FILE* %fp) #7, !dbg !292
  call void @llvm.dbg.value(metadata !{i32 %call15}, i64 0, metadata !168), !dbg !292
  %cmp16 = icmp eq i32 %call15, 1, !dbg !293
  br i1 %cmp16, label %if.end20, label %if.then18, !dbg !293

if.then18:                                        ; preds = %if.end7
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !294, !tbaa !234
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([116 x i8]* @.str21, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call15, %struct._IVL* %call13, %struct._IO_FILE* %fp) #7, !dbg !294
  br label %return, !dbg !296

if.end20:                                         ; preds = %if.end7
  %rem = srem i32 %5, 2, !dbg !297
  %cmp21 = icmp eq i32 %rem, 1, !dbg !297
  br i1 %cmp21, label %if.then23, label %if.end40, !dbg !297

if.then23:                                        ; preds = %if.end20
  %add = add nsw i32 %10, %7, !dbg !298
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !176), !dbg !298
  %call24 = call i32* @IVinit2(i32 %add) #7, !dbg !299
  call void @llvm.dbg.value(metadata !{i32* %call24}, i64 0, metadata !173), !dbg !299
  %19 = bitcast i32* %call24 to i8*, !dbg !300
  %conv25 = sext i32 %add to i64, !dbg !300
  %call26 = call i64 @fread(i8* %19, i64 4, i64 %conv25, %struct._IO_FILE* %fp) #7, !dbg !300
  %conv27 = trunc i64 %call26 to i32, !dbg !300
  call void @llvm.dbg.value(metadata !{i32 %conv27}, i64 0, metadata !168), !dbg !300
  %cmp28 = icmp eq i32 %conv27, %add, !dbg !300
  br i1 %cmp28, label %if.end33, label %if.then30, !dbg !300

if.then30:                                        ; preds = %if.then23
  %20 = load %struct._IO_FILE** @stderr, align 8, !dbg !301, !tbaa !234
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([65 x i8]* @.str20, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %conv27, i32 %add) #7, !dbg !301
  br label %return, !dbg !303

if.end33:                                         ; preds = %if.then23
  %call34 = call i32 @IVsum(i32 %add, i32* %call24) #7, !dbg !304
  call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !178), !dbg !304
  %cmp35 = icmp eq i32 %call34, %15, !dbg !305
  br i1 %cmp35, label %if.end40, label %if.then37, !dbg !305

if.then37:                                        ; preds = %if.end33
  %21 = load %struct._IO_FILE** @stderr, align 8, !dbg !306, !tbaa !234
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([79 x i8]* @.str22, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %15, i32 %call34) #7, !dbg !306
  br label %return, !dbg !308

if.end40:                                         ; preds = %if.end20, %if.end33
  %vwghts.0 = phi i32* [ %call24, %if.end33 ], [ null, %if.end20 ]
  %cmp41 = icmp sgt i32 %5, 2, !dbg !309
  br i1 %cmp41, label %if.then43, label %if.end60, !dbg !309

if.then43:                                        ; preds = %if.end40
  %call45 = call %struct._IVL* @IVL_new() #7, !dbg !310
  call void @llvm.dbg.value(metadata !{%struct._IVL* %call45}, i64 0, metadata !175), !dbg !310
  call void @IVL_setDefaultFields(%struct._IVL* %call45) #7, !dbg !311
  %type46 = getelementptr inbounds %struct._IVL* %call45, i64 0, i32 0, !dbg !312
  store i32 1, i32* %type46, align 4, !dbg !312, !tbaa !291
  %call47 = call i32 @IVL_readFromBinaryFile(%struct._IVL* %call45, %struct._IO_FILE* %fp) #7, !dbg !313
  call void @llvm.dbg.value(metadata !{i32 %call47}, i64 0, metadata !168), !dbg !313
  %cmp48 = icmp eq i32 %call47, 1, !dbg !314
  br i1 %cmp48, label %if.end52, label %if.then50, !dbg !314

if.then50:                                        ; preds = %if.then43
  %22 = load %struct._IO_FILE** @stderr, align 8, !dbg !315, !tbaa !234
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([118 x i8]* @.str23, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call47, %struct._IVL* %call45, %struct._IO_FILE* %fp) #7, !dbg !315
  br label %return, !dbg !317

if.end52:                                         ; preds = %if.then43
  %call53 = call i32 @IVL_sum(%struct._IVL* %call45) #7, !dbg !318
  call void @llvm.dbg.value(metadata !{i32 %call53}, i64 0, metadata !179), !dbg !318
  %cmp54 = icmp eq i32 %call53, %17, !dbg !319
  br i1 %cmp54, label %if.end60, label %if.then56, !dbg !319

if.then56:                                        ; preds = %if.end52
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !320, !tbaa !234
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([83 x i8]* @.str24, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %17, i32 %call53) #7, !dbg !320
  br label %return, !dbg !322

if.end60:                                         ; preds = %if.end40, %if.end52
  %ewghtIVL.0 = phi %struct._IVL* [ %call45, %if.end52 ], [ null, %if.end40 ]
  call void @Graph_init2(%struct._Graph* %graph, i32 %5, i32 %7, i32 %10, i32 %12, i32 %15, i32 %17, %struct._IVL* %call13, i32* %vwghts.0, %struct._IVL* %ewghtIVL.0) #7, !dbg !323
  br label %return, !dbg !324

return:                                           ; preds = %if.end60, %if.then56, %if.then50, %if.then37, %if.then30, %if.then18, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then18 ], [ 0, %if.then30 ], [ 0, %if.then37 ], [ 0, %if.then50 ], [ 0, %if.then56 ], [ 1, %if.end60 ]
  ret i32 %retval.0, !dbg !324
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_readFromFormattedFile(%struct._Graph* %graph, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [6 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._Graph* %graph}, i64 0, metadata !140), !dbg !325
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !141), !dbg !326
  call void @llvm.dbg.declare(metadata !{[6 x i32]* %itemp}, metadata !149), !dbg !327
  %cmp = icmp eq %struct._Graph* %graph, null, !dbg !328
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !328
  %or.cond = or i1 %cmp, %cmp1, !dbg !328
  br i1 %or.cond, label %if.then, label %if.end, !dbg !328

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !329, !tbaa !234
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp) #7, !dbg !329
  br label %return, !dbg !331

if.end:                                           ; preds = %entry
  call void @Graph_clearData(%struct._Graph* %graph) #7, !dbg !332
  %arraydecay = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 0, !dbg !333
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 6, i32* %arraydecay) #7, !dbg !333
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !145), !dbg !333
  %cmp3 = icmp eq i32 %call2, 6, !dbg !333
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !333

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !334, !tbaa !234
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([68 x i8]* @.str14, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call2, i32 6) #7, !dbg !334
  br label %return, !dbg !336

if.end6:                                          ; preds = %if.end
  %2 = bitcast [6 x i32]* %itemp to i64*, !dbg !337
  %3 = load i64* %2, align 16, !dbg !337
  %4 = trunc i64 %3 to i32, !dbg !337
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !148), !dbg !337
  %5 = lshr i64 %3, 32
  %6 = trunc i64 %5 to i32
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !144), !dbg !338
  %arrayidx8 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 2, !dbg !339
  %7 = bitcast i32* %arrayidx8 to i64*, !dbg !339
  %8 = load i64* %7, align 8, !dbg !339
  %9 = trunc i64 %8 to i32, !dbg !339
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !143), !dbg !339
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !142), !dbg !340
  %arrayidx10 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 4, !dbg !341
  %12 = bitcast i32* %arrayidx10 to i64*, !dbg !341
  %13 = load i64* %12, align 16, !dbg !341
  %14 = trunc i64 %13 to i32, !dbg !341
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !147), !dbg !341
  %15 = lshr i64 %13, 32
  %16 = trunc i64 %15 to i32
  call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !146), !dbg !342
  %call12 = call %struct._IVL* @IVL_new() #7, !dbg !343
  call void @llvm.dbg.value(metadata !{%struct._IVL* %call12}, i64 0, metadata !154), !dbg !343
  call void @IVL_setDefaultFields(%struct._IVL* %call12) #7, !dbg !344
  %type13 = getelementptr inbounds %struct._IVL* %call12, i64 0, i32 0, !dbg !345
  store i32 1, i32* %type13, align 4, !dbg !345, !tbaa !291
  %call14 = call i32 @IVL_readFromFormattedFile(%struct._IVL* %call12, %struct._IO_FILE* %fp) #7, !dbg !346
  call void @llvm.dbg.value(metadata !{i32 %call14}, i64 0, metadata !145), !dbg !346
  %cmp15 = icmp eq i32 %call14, 1, !dbg !347
  br i1 %cmp15, label %if.end18, label %if.then16, !dbg !347

if.then16:                                        ; preds = %if.end6
  %17 = load %struct._IO_FILE** @stderr, align 8, !dbg !348, !tbaa !234
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([122 x i8]* @.str15, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call14, %struct._IVL* %call12, %struct._IO_FILE* %fp) #7, !dbg !348
  br label %return, !dbg !350

if.end18:                                         ; preds = %if.end6
  %rem = srem i32 %4, 2, !dbg !351
  %cmp19 = icmp eq i32 %rem, 1, !dbg !351
  br i1 %cmp19, label %if.then20, label %if.end32, !dbg !351

if.then20:                                        ; preds = %if.end18
  %add = add nsw i32 %9, %6, !dbg !352
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !156), !dbg !352
  %call21 = call i32* @IVinit2(i32 %add) #7, !dbg !353
  call void @llvm.dbg.value(metadata !{i32* %call21}, i64 0, metadata !153), !dbg !353
  %call22 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %add, i32* %call21) #7, !dbg !354
  call void @llvm.dbg.value(metadata !{i32 %call22}, i64 0, metadata !145), !dbg !354
  %cmp23 = icmp eq i32 %call22, %add, !dbg !354
  br i1 %cmp23, label %if.end26, label %if.then24, !dbg !354

if.then24:                                        ; preds = %if.then20
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !355, !tbaa !234
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([68 x i8]* @.str14, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call22, i32 %add) #7, !dbg !355
  br label %return, !dbg !357

if.end26:                                         ; preds = %if.then20
  %call27 = call i32 @IVsum(i32 %add, i32* %call21) #7, !dbg !358
  call void @llvm.dbg.value(metadata !{i32 %call27}, i64 0, metadata !158), !dbg !358
  %cmp28 = icmp eq i32 %call27, %14, !dbg !359
  br i1 %cmp28, label %if.end32, label %if.then29, !dbg !359

if.then29:                                        ; preds = %if.end26
  %19 = load %struct._IO_FILE** @stderr, align 8, !dbg !360, !tbaa !234
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([82 x i8]* @.str16, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %14, i32 %call27) #7, !dbg !360
  br label %return, !dbg !362

if.end32:                                         ; preds = %if.end18, %if.end26
  %vwghts.0 = phi i32* [ %call21, %if.end26 ], [ null, %if.end18 ]
  %cmp33 = icmp sgt i32 %4, 1, !dbg !363
  br i1 %cmp33, label %if.then34, label %if.end49, !dbg !363

if.then34:                                        ; preds = %if.end32
  %call36 = call %struct._IVL* @IVL_new() #7, !dbg !364
  call void @llvm.dbg.value(metadata !{%struct._IVL* %call36}, i64 0, metadata !155), !dbg !364
  call void @IVL_setDefaultFields(%struct._IVL* %call36) #7, !dbg !365
  %type37 = getelementptr inbounds %struct._IVL* %call36, i64 0, i32 0, !dbg !366
  store i32 1, i32* %type37, align 4, !dbg !366, !tbaa !291
  %call38 = call i32 @IVL_readFromFormattedFile(%struct._IVL* %call36, %struct._IO_FILE* %fp) #7, !dbg !367
  call void @llvm.dbg.value(metadata !{i32 %call38}, i64 0, metadata !145), !dbg !367
  %cmp39 = icmp eq i32 %call38, 1, !dbg !368
  br i1 %cmp39, label %if.end42, label %if.then40, !dbg !368

if.then40:                                        ; preds = %if.then34
  %20 = load %struct._IO_FILE** @stderr, align 8, !dbg !369, !tbaa !234
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([124 x i8]* @.str17, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call38, %struct._IVL* %call36, %struct._IO_FILE* %fp) #7, !dbg !369
  br label %return, !dbg !371

if.end42:                                         ; preds = %if.then34
  %call43 = call i32 @IVL_sum(%struct._IVL* %call36) #7, !dbg !372
  call void @llvm.dbg.value(metadata !{i32 %call43}, i64 0, metadata !159), !dbg !372
  %cmp44 = icmp eq i32 %call43, %16, !dbg !373
  br i1 %cmp44, label %if.end49, label %if.then45, !dbg !373

if.then45:                                        ; preds = %if.end42
  %21 = load %struct._IO_FILE** @stderr, align 8, !dbg !374, !tbaa !234
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([86 x i8]* @.str18, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %16, i32 %call43) #7, !dbg !374
  br label %return, !dbg !376

if.end49:                                         ; preds = %if.end32, %if.end42
  %ewghtIVL.0 = phi %struct._IVL* [ %call36, %if.end42 ], [ null, %if.end32 ]
  call void @Graph_init2(%struct._Graph* %graph, i32 %4, i32 %6, i32 %9, i32 %11, i32 %14, i32 %16, %struct._IVL* %call12, i32* %vwghts.0, %struct._IVL* %ewghtIVL.0) #7, !dbg !377
  br label %return, !dbg !378

return:                                           ; preds = %if.end49, %if.then45, %if.then40, %if.then29, %if.then24, %if.then16, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then16 ], [ 0, %if.then24 ], [ 0, %if.then29 ], [ 0, %if.then40 ], [ 0, %if.then45 ], [ 1, %if.end49 ]
  ret i32 %retval.0, !dbg !378
}

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_readFromChacoFile(%struct._Graph* %graph, i8* %fn) #0 {
entry:
  %nvtx = alloca i32, align 4
  %nedges = alloca i32, align 4
  %format = alloca i32, align 4
  %string = alloca [100000 x i8], align 16
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata !{%struct._Graph* %graph}, i64 0, metadata !112), !dbg !379
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !113), !dbg !380
  call void @llvm.dbg.declare(metadata !{i32* %nvtx}, metadata !116), !dbg !381
  call void @llvm.dbg.declare(metadata !{i32* %nedges}, metadata !117), !dbg !381
  call void @llvm.dbg.declare(metadata !{i32* %format}, metadata !118), !dbg !381
  %0 = getelementptr inbounds [100000 x i8]* %string, i64 0, i64 0, !dbg !382
  call void @llvm.lifetime.start(i64 100000, i8* %0) #4, !dbg !382
  call void @llvm.dbg.declare(metadata !{[100000 x i8]* %string}, metadata !119), !dbg !382
  call void @llvm.dbg.declare(metadata !{i8** %s1}, metadata !123), !dbg !382
  call void @llvm.dbg.declare(metadata !{i8** %s2}, metadata !124), !dbg !382
  %cmp = icmp eq %struct._Graph* %graph, null, !dbg !383
  %cmp1 = icmp eq i8* %fn, null, !dbg !383
  %or.cond = or i1 %cmp, %cmp1, !dbg !383
  br i1 %or.cond, label %if.then, label %if.end, !dbg !383

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !384, !tbaa !234
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._Graph* %graph, i8* %fn) #7, !dbg !384
  br label %cleanup, !dbg !386

if.end:                                           ; preds = %entry
  call void @Graph_clearData(%struct._Graph* %graph) #7, !dbg !387
  %call2 = call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !388
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call2}, i64 0, metadata !115), !dbg !388
  %cmp3 = icmp eq %struct._IO_FILE* %call2, null, !dbg !388
  br i1 %cmp3, label %if.then4, label %do.body, !dbg !388

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !389, !tbaa !234
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([66 x i8]* @.str5, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #7, !dbg !389
  br label %cleanup, !dbg !391

do.body:                                          ; preds = %if.end, %do.cond
  %call7 = call i8* @fgets(i8* %0, i32 100000, %struct._IO_FILE* %call2) #7, !dbg !392
  call void @llvm.dbg.value(metadata !{i8* %call7}, i64 0, metadata !114), !dbg !392
  %cmp8 = icmp eq i8* %call7, null, !dbg !394
  br i1 %cmp8, label %if.then9, label %do.cond, !dbg !394

if.then9:                                         ; preds = %do.body
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !395, !tbaa !234
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([74 x i8]* @.str6, i64 0, i64 0), i8* %fn) #7, !dbg !395
  br label %cleanup, !dbg !397

do.cond:                                          ; preds = %do.body
  %4 = load i8* %0, align 16, !dbg !398, !tbaa !235
  %cmp12 = icmp eq i8 %4, 37, !dbg !398
  br i1 %cmp12, label %do.body, label %do.end, !dbg !398

do.end:                                           ; preds = %do.cond
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !118), !dbg !399
  store i32 0, i32* %format, align 4, !dbg !399, !tbaa !291
  %call15 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i32* %nvtx, i32* %nedges, i32* %format) #7, !dbg !400
  %cmp16 = icmp slt i32 %call15, 2, !dbg !400
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !400

if.then18:                                        ; preds = %do.end
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !401, !tbaa !234
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([76 x i8]* @.str8, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #7, !dbg !401
  br label %cleanup, !dbg !403

if.end20:                                         ; preds = %do.end
  call void @llvm.dbg.value(metadata !{i32* %format}, i64 0, metadata !118), !dbg !404
  %6 = load i32* %format, align 4, !dbg !404, !tbaa !291
  %rem = srem i32 %6, 10, !dbg !404
  %cmp21 = icmp sgt i32 %rem, 0, !dbg !404
  %conv22 = zext i1 %cmp21 to i32, !dbg !404
  call void @llvm.dbg.value(metadata !{i32 %conv22}, i64 0, metadata !130), !dbg !404
  %div = sdiv i32 %6, 10, !dbg !405
  %rem23 = srem i32 %div, 10, !dbg !405
  %cmp24 = icmp sgt i32 %rem23, 0, !dbg !405
  %conv25 = zext i1 %cmp24 to i32, !dbg !405
  call void @llvm.dbg.value(metadata !{i32 %conv25}, i64 0, metadata !129), !dbg !405
  %cmp26 = icmp sgt i32 %6, 99, !dbg !406
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !406

if.then28:                                        ; preds = %if.end20
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !407, !tbaa !234
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), %struct._Graph* %graph, i8* %fn) #7, !dbg !407
  br label %cleanup, !dbg !409

if.end30:                                         ; preds = %if.end20
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !116), !dbg !410
  %8 = load i32* %nvtx, align 4, !dbg !410, !tbaa !291
  %call31 = call i32* @IVinit(i32 %8, i32 -1) #7, !dbg !410
  call void @llvm.dbg.value(metadata !{i32* %call31}, i64 0, metadata !131), !dbg !410
  br i1 %cmp21, label %if.then32, label %if.end34, !dbg !411

if.then32:                                        ; preds = %if.end30
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !116), !dbg !412
  %9 = load i32* %nvtx, align 4, !dbg !412, !tbaa !291
  %call33 = call i32* @IVinit(i32 %9, i32 -1) #7, !dbg !412
  call void @llvm.dbg.value(metadata !{i32* %call33}, i64 0, metadata !132), !dbg !412
  br label %if.end34, !dbg !414

if.end34:                                         ; preds = %if.end30, %if.then32
  %weights.0 = phi i32* [ %call33, %if.then32 ], [ null, %if.end30 ]
  call void @llvm.dbg.value(metadata !{i32* %nedges}, i64 0, metadata !117), !dbg !415
  %10 = load i32* %nedges, align 4, !dbg !415, !tbaa !291
  %mul = shl nsw i32 %10, 1, !dbg !415
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !117), !dbg !415
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !116), !dbg !416
  %11 = load i32* %nvtx, align 4, !dbg !416, !tbaa !291
  %add = add nsw i32 %mul, %11, !dbg !416
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !117), !dbg !416
  store i32 %add, i32* %nedges, align 4, !dbg !416, !tbaa !291
  %mul35 = shl nuw nsw i32 %conv22, 1, !dbg !417
  %add36 = or i32 %conv25, %mul35, !dbg !417
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !116), !dbg !417
  call void @Graph_init1(%struct._Graph* %graph, i32 %add36, i32 %11, i32 0, i32 %add, i32 1, i32 1) #7, !dbg !417
  %adjIVL37 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6, !dbg !418
  %12 = load %struct._IVL** %adjIVL37, align 8, !dbg !418, !tbaa !234
  call void @llvm.dbg.value(metadata !{%struct._IVL* %12}, i64 0, metadata !134), !dbg !418
  br i1 %cmp21, label %if.then39, label %if.end42, !dbg !419

if.then39:                                        ; preds = %if.end34
  %ewghtIVL40 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 8, !dbg !420
  %13 = load %struct._IVL** %ewghtIVL40, align 8, !dbg !420, !tbaa !234
  call void @llvm.dbg.value(metadata !{%struct._IVL* %13}, i64 0, metadata !135), !dbg !420
  store i32 0, i32* %weights.0, align 4, !dbg !422, !tbaa !291
  br label %if.end42, !dbg !423

if.end42:                                         ; preds = %if.then39, %if.end34
  %ewghtIVL.0 = phi %struct._IVL* [ %13, %if.then39 ], [ undef, %if.end34 ]
  br i1 %cmp24, label %if.then44, label %if.end46, !dbg !424

if.then44:                                        ; preds = %if.end42
  %vwghts45 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7, !dbg !424
  %14 = load i32** %vwghts45, align 8, !dbg !424, !tbaa !234
  call void @llvm.dbg.value(metadata !{i32* %14}, i64 0, metadata !133), !dbg !424
  br label %if.end46, !dbg !424

if.end46:                                         ; preds = %if.then44, %if.end42
  %vwghtsINT.0 = phi i32* [ %14, %if.then44 ], [ undef, %if.end42 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !125), !dbg !425
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !126), !dbg !426
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !116), !dbg !426
  %15 = load i32* %nvtx, align 4, !dbg !426, !tbaa !291
  %cmp47200 = icmp sgt i32 %15, 0, !dbg !426
  br i1 %cmp47200, label %do.body49.preheader, label %for.end, !dbg !426

do.body49.preheader:                              ; preds = %if.end46, %if.end110
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %if.end110 ], [ 0, %if.end46 ]
  %k.0202 = phi i32 [ %add111, %if.end110 ], [ 0, %if.end46 ]
  %v.0201 = phi i32 [ %inc112, %if.end110 ], [ 0, %if.end46 ]
  br label %do.body49, !dbg !428

do.body49:                                        ; preds = %do.body49.preheader, %do.cond61
  %call51 = call i8* @fgets(i8* %0, i32 100000, %struct._IO_FILE* %call2) #7, !dbg !428
  call void @llvm.dbg.value(metadata !{i8* %call51}, i64 0, metadata !114), !dbg !428
  %cmp52 = icmp eq i8* %call51, null, !dbg !431
  br i1 %cmp52, label %if.then54, label %do.cond61, !dbg !431

if.then54:                                        ; preds = %do.body49
  %16 = load %struct._IO_FILE** @stderr, align 8, !dbg !432, !tbaa !234
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([88 x i8]* @.str10, i64 0, i64 0), i32 %v.0201, i8* %fn) #7, !dbg !432
  call void @IVfree(i32* %call31) #7, !dbg !434
  %cmp56 = icmp eq i32* %weights.0, null, !dbg !435
  br i1 %cmp56, label %cleanup, label %if.then58, !dbg !435

if.then58:                                        ; preds = %if.then54
  call void @IVfree(i32* %weights.0) #7, !dbg !436
  br label %cleanup, !dbg !438

do.cond61:                                        ; preds = %do.body49
  %17 = load i8* %0, align 16, !dbg !439, !tbaa !235
  %cmp64 = icmp eq i8 %17, 37, !dbg !439
  br i1 %cmp64, label %do.body49, label %do.end66, !dbg !439

do.end66:                                         ; preds = %do.cond61
  %call68 = call i64 @strlen(i8* %0) #8, !dbg !440
  %cmp69 = icmp eq i64 %call68, 99999, !dbg !440
  br i1 %cmp69, label %if.then71, label %if.end77, !dbg !440

if.then71:                                        ; preds = %do.end66
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !441, !tbaa !234
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([110 x i8]* @.str11, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #7, !dbg !441
  call void @IVfree(i32* %call31) #7, !dbg !443
  %cmp73 = icmp eq i32* %weights.0, null, !dbg !444
  br i1 %cmp73, label %cleanup, label %if.then75, !dbg !444

if.then75:                                        ; preds = %if.then71
  call void @IVfree(i32* %weights.0) #7, !dbg !445
  br label %cleanup, !dbg !447

if.end77:                                         ; preds = %do.end66
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !123), !dbg !448
  store i8* %0, i8** %s1, align 8, !dbg !448, !tbaa !234
  br i1 %cmp24, label %if.then80, label %if.end85, !dbg !449

if.then80:                                        ; preds = %if.end77
  %call82 = call i64 @strtol(i8* %0, i8** %s1, i32 10) #7, !dbg !449
  %conv83 = trunc i64 %call82 to i32, !dbg !449
  %arrayidx84 = getelementptr inbounds i32* %vwghtsINT.0, i64 %indvars.iv207, !dbg !449
  store i32 %conv83, i32* %arrayidx84, align 4, !dbg !449, !tbaa !291
  br label %if.end85, !dbg !449

if.end85:                                         ; preds = %if.then80, %if.end77
  %19 = trunc i64 %indvars.iv207 to i32, !dbg !450
  store i32 %19, i32* %call31, align 4, !dbg !450, !tbaa !291
  br i1 %cmp21, label %if.then88, label %while.cond.preheader, !dbg !451

if.then88:                                        ; preds = %if.end85
  store i32 0, i32* %weights.0, align 4, !dbg !452, !tbaa !291
  br label %while.cond.preheader, !dbg !454

while.cond.preheader:                             ; preds = %if.end85, %if.then88
  call void @llvm.dbg.value(metadata !{i8** %s1}, i64 0, metadata !123), !dbg !455
  %20 = load i8** %s1, align 8, !dbg !455, !tbaa !234
  %call91191 = call i64 @strtol(i8* %20, i8** %s2, i32 10) #7, !dbg !455
  %conv92192 = trunc i64 %call91191 to i32, !dbg !455
  call void @llvm.dbg.value(metadata !{i32 %conv92192}, i64 0, metadata !128), !dbg !455
  %cmp93193 = icmp sgt i32 %conv92192, 0, !dbg !455
  br i1 %cmp93193, label %while.body, label %while.end, !dbg !455

while.body:                                       ; preds = %while.cond.preheader, %if.end103
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end103 ], [ 1, %while.cond.preheader ]
  %conv92195 = phi i32 [ %conv92, %if.end103 ], [ %conv92192, %while.cond.preheader ]
  %vsize.0194 = phi i32 [ %inc, %if.end103 ], [ 1, %while.cond.preheader ]
  %dec = add nsw i32 %conv92195, -1, !dbg !456
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !128), !dbg !456
  %arrayidx96 = getelementptr inbounds i32* %call31, i64 %indvars.iv, !dbg !456
  store i32 %dec, i32* %arrayidx96, align 4, !dbg !456, !tbaa !291
  call void @llvm.dbg.value(metadata !{i8** %s2}, i64 0, metadata !124), !dbg !458
  %21 = load i8** %s2, align 8, !dbg !458, !tbaa !234
  call void @llvm.dbg.value(metadata !{i8* %21}, i64 0, metadata !123), !dbg !458
  br i1 %cmp21, label %if.then98, label %if.end103, !dbg !459

if.then98:                                        ; preds = %while.body
  %call99 = call i64 @strtol(i8* %21, i8** %s2, i32 10) #7, !dbg !460
  %conv100 = trunc i64 %call99 to i32, !dbg !460
  %arrayidx102 = getelementptr inbounds i32* %weights.0, i64 %indvars.iv, !dbg !460
  store i32 %conv100, i32* %arrayidx102, align 4, !dbg !460, !tbaa !291
  call void @llvm.dbg.value(metadata !{i8** %s2}, i64 0, metadata !124), !dbg !462
  %22 = load i8** %s2, align 8, !dbg !462, !tbaa !234
  call void @llvm.dbg.value(metadata !{i8* %22}, i64 0, metadata !123), !dbg !462
  br label %if.end103, !dbg !463

if.end103:                                        ; preds = %if.then98, %while.body
  %23 = phi i8* [ %22, %if.then98 ], [ %21, %while.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !455
  %inc = add nsw i32 %vsize.0194, 1, !dbg !464
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !127), !dbg !464
  call void @llvm.dbg.value(metadata !{i8** %s1}, i64 0, metadata !123), !dbg !455
  %call91 = call i64 @strtol(i8* %23, i8** %s2, i32 10) #7, !dbg !455
  %conv92 = trunc i64 %call91 to i32, !dbg !455
  call void @llvm.dbg.value(metadata !{i32 %conv92195}, i64 0, metadata !128), !dbg !455
  %cmp93 = icmp sgt i32 %conv92, 0, !dbg !455
  br i1 %cmp93, label %while.body, label %while.cond.while.end_crit_edge, !dbg !455

while.cond.while.end_crit_edge:                   ; preds = %if.end103
  call void @llvm.dbg.value(metadata !{i8* %23}, i64 0, metadata !123), !dbg !462
  store i8* %23, i8** %s1, align 8, !dbg !462, !tbaa !234
  br label %while.end, !dbg !455

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader
  %vsize.0.lcssa = phi i32 [ %inc, %while.cond.while.end_crit_edge ], [ 1, %while.cond.preheader ]
  br i1 %cmp21, label %if.then109, label %if.end107, !dbg !465

if.end107:                                        ; preds = %while.end
  call void @IVqsortUp(i32 %vsize.0.lcssa, i32* %call31) #7, !dbg !466
  call void @IVL_setList(%struct._IVL* %12, i32 %19, i32 %vsize.0.lcssa, i32* %call31) #7, !dbg !468
  br label %if.end110

if.then109:                                       ; preds = %while.end
  call void @IV2qsortUp(i32 %vsize.0.lcssa, i32* %call31, i32* %weights.0) #7, !dbg !469
  call void @IVL_setList(%struct._IVL* %12, i32 %19, i32 %vsize.0.lcssa, i32* %call31) #7, !dbg !468
  call void @IVL_setList(%struct._IVL* %ewghtIVL.0, i32 %19, i32 %vsize.0.lcssa, i32* %weights.0) #7, !dbg !471
  br label %if.end110, !dbg !471

if.end110:                                        ; preds = %if.end107, %if.then109
  %add111 = add nsw i32 %vsize.0.lcssa, %k.0202, !dbg !472
  call void @llvm.dbg.value(metadata !{i32 %add111}, i64 0, metadata !125), !dbg !472
  %indvars.iv.next208 = add i64 %indvars.iv207, 1, !dbg !426
  %inc112 = add nsw i32 %v.0201, 1, !dbg !426
  call void @llvm.dbg.value(metadata !{i32 %inc112}, i64 0, metadata !126), !dbg !426
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !116), !dbg !426
  %24 = load i32* %nvtx, align 4, !dbg !426, !tbaa !291
  %25 = trunc i64 %indvars.iv.next208 to i32, !dbg !426
  %cmp47 = icmp slt i32 %25, %24, !dbg !426
  br i1 %cmp47, label %do.body49.preheader, label %for.end, !dbg !426

for.end:                                          ; preds = %if.end110, %if.end46
  %k.0.lcssa = phi i32 [ 0, %if.end46 ], [ %add111, %if.end110 ]
  %v.0.lcssa = phi i32 [ 0, %if.end46 ], [ %inc112, %if.end110 ]
  %call113 = call i32 @fclose(%struct._IO_FILE* %call2) #7, !dbg !473
  call void @IVfree(i32* %call31) #7, !dbg !474
  %cmp114 = icmp eq i32* %weights.0, null, !dbg !475
  br i1 %cmp114, label %if.end117, label %if.then116, !dbg !475

if.then116:                                       ; preds = %for.end
  call void @IVfree(i32* %weights.0) #7, !dbg !476
  br label %if.end117, !dbg !478

if.end117:                                        ; preds = %for.end, %if.then116
  call void @llvm.dbg.value(metadata !{i32* %nedges}, i64 0, metadata !117), !dbg !479
  %26 = load i32* %nedges, align 4, !dbg !479, !tbaa !291
  %cmp118 = icmp eq i32 %k.0.lcssa, %26, !dbg !479
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !116), !dbg !479
  %27 = load i32* %nvtx, align 4, !dbg !479, !tbaa !291
  %cmp121 = icmp eq i32 %v.0.lcssa, %27, !dbg !479
  %or.cond209 = and i1 %cmp118, %cmp121, !dbg !479
  br i1 %or.cond209, label %cleanup, label %if.then123, !dbg !479

if.then123:                                       ; preds = %if.end117
  %28 = load %struct._IO_FILE** @stderr, align 8, !dbg !480, !tbaa !234
  call void @llvm.dbg.value(metadata !{i32* %nedges}, i64 0, metadata !117), !dbg !480
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !116), !dbg !480
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([126 x i8]* @.str12, i64 0, i64 0), i8* %fn, i32 %k.0.lcssa, i32 %26, i32 %v.0.lcssa, i32 %27) #7, !dbg !480
  br label %cleanup, !dbg !482

cleanup:                                          ; preds = %if.end117, %if.then75, %if.then71, %if.then58, %if.then54, %if.then123, %if.then28, %if.then18, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then9 ], [ 0, %if.then18 ], [ 0, %if.then28 ], [ 0, %if.then123 ], [ 0, %if.then54 ], [ 0, %if.then58 ], [ 0, %if.then71 ], [ 0, %if.then75 ], [ 1, %if.end117 ]
  call void @llvm.lifetime.end(i64 100000, i8* %0) #4, !dbg !483
  ret i32 %retval.0, !dbg !483
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @Graph_clearData(%struct._Graph*) #5

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #5

; Function Attrs: optsize
declare void @Graph_init1(%struct._Graph*, i32, i32, i32, i32, i32, i32) #5

; Function Attrs: optsize
declare void @IVfree(i32*) #5

; Function Attrs: nounwind optsize
declare i64 @strtol(i8*, i8** nocapture, i32) #2

; Function Attrs: optsize
declare void @IV2qsortUp(i32, i32*, i32*) #5

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #5

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #5

; Function Attrs: optsize
declare %struct._IVL* @IVL_new() #5

; Function Attrs: optsize
declare void @IVL_setDefaultFields(%struct._IVL*) #5

; Function Attrs: optsize
declare i32 @IVL_readFromFormattedFile(%struct._IVL*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare i32* @IVinit2(i32) #5

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #5

; Function Attrs: optsize
declare i32 @IVL_sum(%struct._IVL*) #5

; Function Attrs: optsize
declare void @Graph_init2(%struct._Graph*, i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL*) #5

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @IVL_readFromBinaryFile(%struct._IVL*, %struct._IO_FILE*) #5

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_writeToFile(%struct._Graph* %graph, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Graph* %graph}, i64 0, metadata !183), !dbg !484
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !184), !dbg !485
  %cmp = icmp eq %struct._Graph* %graph, null, !dbg !486
  %cmp1 = icmp eq i8* %fn, null, !dbg !486
  %or.cond = or i1 %cmp, %cmp1, !dbg !486
  br i1 %or.cond, label %if.then, label %if.end, !dbg !486

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !487, !tbaa !234
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str25, i64 0, i64 0), %struct._Graph* %graph, i8* %fn) #7, !dbg !487
  br label %return, !dbg !489

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 0, !dbg !490
  %1 = load i32* %type, align 4, !dbg !490, !tbaa !291
  %2 = icmp ugt i32 %1, 3, !dbg !490
  br i1 %2, label %if.then6, label %if.end9, !dbg !490

if.then6:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !491, !tbaa !234
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([57 x i8]* @.str26, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i32 %1) #7, !dbg !491
  br label %return, !dbg !493

if.end9:                                          ; preds = %if.end
  %call10 = tail call i64 @strlen(i8* %fn) #8, !dbg !494
  %conv = trunc i64 %call10 to i32, !dbg !494
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !186), !dbg !494
  tail call void @llvm.dbg.value(metadata !239, i64 0, metadata !188), !dbg !495
  %cmp13 = icmp sgt i32 %conv, 7, !dbg !496
  br i1 %cmp13, label %if.then15, label %if.else57, !dbg !496

if.then15:                                        ; preds = %if.end9
  %sub = shl i64 %call10, 32, !dbg !497
  %sext = add i64 %sub, -30064771072, !dbg !497
  %idxprom = ashr exact i64 %sext, 32, !dbg !497
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !497
  %call16 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str79, i64 0, i64 0)) #8, !dbg !497
  %cmp17 = icmp eq i32 %call16, 0, !dbg !497
  br i1 %cmp17, label %if.then19, label %if.else28, !dbg !497

if.then19:                                        ; preds = %if.then15
  %call20 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str27, i64 0, i64 0)) #7, !dbg !499
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call20}, i64 0, metadata !185), !dbg !499
  %cmp21 = icmp eq %struct._IO_FILE* %call20, null, !dbg !499
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !499

if.then23:                                        ; preds = %if.then19
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !501, !tbaa !234
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([60 x i8]* @.str28, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #7, !dbg !501
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !187), !dbg !503
  br label %return, !dbg !504

if.else:                                          ; preds = %if.then19
  %call25 = tail call i32 @Graph_writeToBinaryFile(%struct._Graph* %graph, %struct._IO_FILE* %call20) #9, !dbg !505
  tail call void @llvm.dbg.value(metadata !{i32 %call25}, i64 0, metadata !187), !dbg !505
  %call26 = tail call i32 @fclose(%struct._IO_FILE* %call20) #7, !dbg !507
  br label %return

if.else28:                                        ; preds = %if.then15
  %call32 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0)) #8, !dbg !508
  %cmp33 = icmp eq i32 %call32, 0, !dbg !508
  br i1 %cmp33, label %if.then35, label %if.else45, !dbg !508

if.then35:                                        ; preds = %if.else28
  %call36 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str29, i64 0, i64 0)) #7, !dbg !509
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call36}, i64 0, metadata !185), !dbg !509
  %cmp37 = icmp eq %struct._IO_FILE* %call36, null, !dbg !509
  br i1 %cmp37, label %if.then39, label %if.else41, !dbg !509

if.then39:                                        ; preds = %if.then35
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !511, !tbaa !234
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([60 x i8]* @.str28, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #7, !dbg !511
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !187), !dbg !513
  br label %return, !dbg !514

if.else41:                                        ; preds = %if.then35
  %call42 = tail call i32 @Graph_writeToFormattedFile(%struct._Graph* %graph, %struct._IO_FILE* %call36) #9, !dbg !515
  tail call void @llvm.dbg.value(metadata !{i32 %call42}, i64 0, metadata !187), !dbg !515
  %call43 = tail call i32 @fclose(%struct._IO_FILE* %call36) #7, !dbg !517
  br label %return

if.else45:                                        ; preds = %if.else28
  %call46 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0)) #7, !dbg !518
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call46}, i64 0, metadata !185), !dbg !518
  %cmp47 = icmp eq %struct._IO_FILE* %call46, null, !dbg !518
  br i1 %cmp47, label %if.then49, label %if.else51, !dbg !518

if.then49:                                        ; preds = %if.else45
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !520, !tbaa !234
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([60 x i8]* @.str28, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #7, !dbg !520
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !187), !dbg !522
  br label %return, !dbg !523

if.else51:                                        ; preds = %if.else45
  %call52 = tail call i32 @Graph_writeForHumanEye(%struct._Graph* %graph, %struct._IO_FILE* %call46) #9, !dbg !524
  tail call void @llvm.dbg.value(metadata !{i32 %call52}, i64 0, metadata !187), !dbg !524
  %call53 = tail call i32 @fclose(%struct._IO_FILE* %call46) #7, !dbg !526
  br label %return

if.else57:                                        ; preds = %if.end9
  %call58 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0)) #7, !dbg !527
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call58}, i64 0, metadata !185), !dbg !527
  %cmp59 = icmp eq %struct._IO_FILE* %call58, null, !dbg !527
  br i1 %cmp59, label %if.then61, label %if.else63, !dbg !527

if.then61:                                        ; preds = %if.else57
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !529, !tbaa !234
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([60 x i8]* @.str28, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #7, !dbg !529
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !187), !dbg !531
  br label %return, !dbg !532

if.else63:                                        ; preds = %if.else57
  %call64 = tail call i32 @Graph_writeForHumanEye(%struct._Graph* %graph, %struct._IO_FILE* %call58) #9, !dbg !533
  tail call void @llvm.dbg.value(metadata !{i32 %call64}, i64 0, metadata !187), !dbg !533
  %call65 = tail call i32 @fclose(%struct._IO_FILE* %call58) #7, !dbg !535
  br label %return

return:                                           ; preds = %if.else41, %if.then39, %if.else51, %if.then49, %if.then23, %if.else, %if.else63, %if.then61, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then23 ], [ %call25, %if.else ], [ 0, %if.then39 ], [ %call42, %if.else41 ], [ 0, %if.then49 ], [ %call52, %if.else51 ], [ 0, %if.then61 ], [ %call64, %if.else63 ]
  ret i32 %retval.0, !dbg !536
}

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_writeToBinaryFile(%struct._Graph* %graph, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [6 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._Graph* %graph}, i64 0, metadata !197), !dbg !537
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !198), !dbg !538
  call void @llvm.dbg.declare(metadata !{[6 x i32]* %itemp}, metadata !200), !dbg !539
  %cmp = icmp eq %struct._Graph* %graph, null, !dbg !540
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !540
  %or.cond = or i1 %cmp, %cmp1, !dbg !540
  br i1 %or.cond, label %if.then, label %if.end, !dbg !540

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !541, !tbaa !234
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str40, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp) #7, !dbg !541
  br label %return, !dbg !543

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 0, !dbg !544
  %1 = load i32* %type, align 4, !dbg !544, !tbaa !291
  %2 = icmp ugt i32 %1, 3, !dbg !544
  br i1 %2, label %if.then6, label %if.end9, !dbg !544

if.then6:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !545, !tbaa !234
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([63 x i8]* @.str41, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %1) #7, !dbg !545
  br label %return, !dbg !547

if.end9:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 0, !dbg !548
  store i32 %1, i32* %arrayidx, align 16, !dbg !548, !tbaa !291
  %nvtx = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1, !dbg !549
  %4 = load i32* %nvtx, align 4, !dbg !549, !tbaa !291
  %arrayidx11 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 1, !dbg !549
  store i32 %4, i32* %arrayidx11, align 4, !dbg !549, !tbaa !291
  %nvbnd = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 2, !dbg !550
  %5 = load i32* %nvbnd, align 4, !dbg !550, !tbaa !291
  %arrayidx12 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 2, !dbg !550
  store i32 %5, i32* %arrayidx12, align 8, !dbg !550, !tbaa !291
  %nedges = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 3, !dbg !551
  %6 = load i32* %nedges, align 4, !dbg !551, !tbaa !291
  %arrayidx13 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 3, !dbg !551
  store i32 %6, i32* %arrayidx13, align 4, !dbg !551, !tbaa !291
  %totvwght = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 4, !dbg !552
  %7 = load i32* %totvwght, align 4, !dbg !552, !tbaa !291
  %arrayidx14 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 4, !dbg !552
  store i32 %7, i32* %arrayidx14, align 16, !dbg !552, !tbaa !291
  %totewght = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 5, !dbg !553
  %8 = load i32* %totewght, align 4, !dbg !553, !tbaa !291
  %arrayidx15 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 5, !dbg !553
  store i32 %8, i32* %arrayidx15, align 4, !dbg !553, !tbaa !291
  %9 = bitcast [6 x i32]* %itemp to i8*, !dbg !554
  %call16 = call i64 @fwrite(i8* %9, i64 4, i64 6, %struct._IO_FILE* %fp) #7, !dbg !554
  %conv = trunc i64 %call16 to i32, !dbg !554
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !199), !dbg !554
  %cmp17 = icmp eq i32 %conv, 6, !dbg !555
  br i1 %cmp17, label %if.end21, label %if.then19, !dbg !555

if.then19:                                        ; preds = %if.end9
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !556, !tbaa !234
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([74 x i8]* @.str42, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %conv, i32 6) #7, !dbg !556
  br label %return, !dbg !558

if.end21:                                         ; preds = %if.end9
  %adjIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6, !dbg !559
  %11 = load %struct._IVL** %adjIVL, align 8, !dbg !559, !tbaa !234
  %call22 = call i32 @IVL_writeToBinaryFile(%struct._IVL* %11, %struct._IO_FILE* %fp) #7, !dbg !559
  call void @llvm.dbg.value(metadata !{i32 %call22}, i64 0, metadata !199), !dbg !559
  %cmp23 = icmp slt i32 %call22, 0, !dbg !560
  br i1 %cmp23, label %if.then25, label %if.end28, !dbg !560

if.then25:                                        ; preds = %if.end21
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !561, !tbaa !234
  %13 = load %struct._IVL** %adjIVL, align 8, !dbg !561, !tbaa !234
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([138 x i8]* @.str43, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call22, %struct._IVL* %13, %struct._IO_FILE* %fp) #7, !dbg !561
  br label %return, !dbg !563

if.end28:                                         ; preds = %if.end21
  %14 = load i32* %type, align 4, !dbg !564, !tbaa !291
  %rem = srem i32 %14, 2, !dbg !564
  %cmp30 = icmp eq i32 %rem, 1, !dbg !564
  br i1 %cmp30, label %if.then32, label %if.end50, !dbg !564

if.then32:                                        ; preds = %if.end28
  %vwghts = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7, !dbg !565
  %15 = load i32** %vwghts, align 8, !dbg !565, !tbaa !234
  %cmp33 = icmp eq i32* %15, null, !dbg !565
  br i1 %cmp33, label %if.then35, label %if.end38, !dbg !565

if.then35:                                        ; preds = %if.then32
  %16 = load %struct._IO_FILE** @stderr, align 8, !dbg !567, !tbaa !234
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([90 x i8]* @.str44, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %14) #7, !dbg !567
  br label %return, !dbg !569

if.end38:                                         ; preds = %if.then32
  %17 = bitcast i32* %15 to i8*, !dbg !570
  %18 = load i32* %nvtx, align 4, !dbg !570, !tbaa !291
  %19 = load i32* %nvbnd, align 4, !dbg !570, !tbaa !291
  %add = add nsw i32 %19, %18, !dbg !570
  %conv42 = sext i32 %add to i64, !dbg !570
  %call43 = call i64 @fwrite(i8* %17, i64 4, i64 %conv42, %struct._IO_FILE* %fp) #7, !dbg !570
  %conv44 = trunc i64 %call43 to i32, !dbg !570
  call void @llvm.dbg.value(metadata !{i32 %conv44}, i64 0, metadata !199), !dbg !570
  %cmp45 = icmp slt i32 %conv44, 0, !dbg !571
  br i1 %cmp45, label %if.then47, label %if.end50thread-pre-split, !dbg !571

if.then47:                                        ; preds = %if.end38
  %20 = load %struct._IO_FILE** @stderr, align 8, !dbg !572, !tbaa !234
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([87 x i8]* @.str45, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %conv44) #7, !dbg !572
  br label %return, !dbg !574

if.end50thread-pre-split:                         ; preds = %if.end38
  %.pr = load i32* %type, align 4, !dbg !575, !tbaa !291
  br label %if.end50

if.end50:                                         ; preds = %if.end50thread-pre-split, %if.end28
  %21 = phi i32 [ %.pr, %if.end50thread-pre-split ], [ %14, %if.end28 ], !dbg !575
  %cmp52 = icmp sgt i32 %21, 1, !dbg !575
  br i1 %cmp52, label %if.then54, label %return, !dbg !575

if.then54:                                        ; preds = %if.end50
  %ewghtIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 8, !dbg !576
  %22 = load %struct._IVL** %ewghtIVL, align 8, !dbg !576, !tbaa !234
  %cmp55 = icmp eq %struct._IVL* %22, null, !dbg !576
  br i1 %cmp55, label %if.then57, label %if.end60, !dbg !576

if.then57:                                        ; preds = %if.then54
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !578, !tbaa !234
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([92 x i8]* @.str46, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %21) #7, !dbg !578
  br label %return, !dbg !580

if.end60:                                         ; preds = %if.then54
  %call62 = call i32 @IVL_writeToBinaryFile(%struct._IVL* %22, %struct._IO_FILE* %fp) #7, !dbg !581
  call void @llvm.dbg.value(metadata !{i32 %call62}, i64 0, metadata !199), !dbg !581
  %cmp63 = icmp slt i32 %call62, 0, !dbg !582
  br i1 %cmp63, label %if.then65, label %return, !dbg !582

if.then65:                                        ; preds = %if.end60
  %24 = load %struct._IO_FILE** @stderr, align 8, !dbg !583, !tbaa !234
  %25 = load %struct._IVL** %ewghtIVL, align 8, !dbg !583, !tbaa !234
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([140 x i8]* @.str47, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call62, %struct._IVL* %25, %struct._IO_FILE* %fp) #7, !dbg !583
  br label %return, !dbg !585

return:                                           ; preds = %if.end50, %if.end60, %if.then65, %if.then57, %if.then47, %if.then35, %if.then25, %if.then19, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then19 ], [ 0, %if.then25 ], [ 0, %if.then35 ], [ 0, %if.then47 ], [ 0, %if.then57 ], [ 0, %if.then65 ], [ 1, %if.end60 ], [ 1, %if.end50 ]
  ret i32 %retval.0, !dbg !586
}

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_writeToFormattedFile(%struct._Graph* %graph, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Graph* %graph}, i64 0, metadata !191), !dbg !587
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !192), !dbg !588
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !193), !dbg !589
  %cmp = icmp eq %struct._Graph* %graph, null, !dbg !590
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !590
  %or.cond = or i1 %cmp, %cmp1, !dbg !590
  br i1 %or.cond, label %if.then, label %if.end, !dbg !590

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !591, !tbaa !234
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str31, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp) #7, !dbg !591
  br label %return, !dbg !593

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 0, !dbg !594
  %1 = load i32* %type, align 4, !dbg !594, !tbaa !291
  %2 = icmp ugt i32 %1, 3, !dbg !594
  br i1 %2, label %if.then6, label %if.end9, !dbg !594

if.then6:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !595, !tbaa !234
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([66 x i8]* @.str32, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %1) #7, !dbg !595
  br label %return, !dbg !597

if.end9:                                          ; preds = %if.end
  %nvtx = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1, !dbg !598
  %4 = load i32* %nvtx, align 4, !dbg !598, !tbaa !291
  %nvbnd = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 2, !dbg !598
  %5 = load i32* %nvbnd, align 4, !dbg !598, !tbaa !291
  %nedges = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 3, !dbg !598
  %6 = load i32* %nedges, align 4, !dbg !598, !tbaa !291
  %totvwght = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 4, !dbg !598
  %7 = load i32* %totvwght, align 4, !dbg !598, !tbaa !291
  %totewght = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 5, !dbg !598
  %8 = load i32* %totewght, align 4, !dbg !598, !tbaa !291
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str33, i64 0, i64 0), i32 %1, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #7, !dbg !598
  call void @llvm.dbg.value(metadata !{i32 %call11}, i64 0, metadata !194), !dbg !598
  %cmp12 = icmp slt i32 %call11, 0, !dbg !599
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !599

if.then13:                                        ; preds = %if.end9
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !600, !tbaa !234
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([88 x i8]* @.str34, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call11) #7, !dbg !600
  br label %return, !dbg !602

if.end15:                                         ; preds = %if.end9
  %adjIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6, !dbg !603
  %10 = load %struct._IVL** %adjIVL, align 8, !dbg !603, !tbaa !234
  %call16 = call i32 @IVL_writeToFormattedFile(%struct._IVL* %10, %struct._IO_FILE* %fp) #7, !dbg !603
  call void @llvm.dbg.value(metadata !{i32 %call16}, i64 0, metadata !194), !dbg !603
  %cmp17 = icmp slt i32 %call16, 0, !dbg !604
  br i1 %cmp17, label %if.then18, label %if.end21, !dbg !604

if.then18:                                        ; preds = %if.end15
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !605, !tbaa !234
  %12 = load %struct._IVL** %adjIVL, align 8, !dbg !605, !tbaa !234
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([144 x i8]* @.str35, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call16, %struct._IVL* %12, %struct._IO_FILE* %fp) #7, !dbg !605
  br label %return, !dbg !607

if.end21:                                         ; preds = %if.end15
  %13 = load i32* %type, align 4, !dbg !608, !tbaa !291
  %rem = srem i32 %13, 2, !dbg !608
  %cmp23 = icmp eq i32 %rem, 1, !dbg !608
  br i1 %cmp23, label %if.then24, label %if.end38, !dbg !608

if.then24:                                        ; preds = %if.end21
  %vwghts = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7, !dbg !609
  %14 = load i32** %vwghts, align 8, !dbg !609, !tbaa !234
  %cmp25 = icmp eq i32* %14, null, !dbg !609
  br i1 %cmp25, label %if.then26, label %if.end29, !dbg !609

if.then26:                                        ; preds = %if.then24
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !611, !tbaa !234
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([93 x i8]* @.str36, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %13) #7, !dbg !611
  br label %return, !dbg !613

if.end29:                                         ; preds = %if.then24
  %16 = load i32* %nvtx, align 4, !dbg !614, !tbaa !291
  %17 = load i32* %nvbnd, align 4, !dbg !614, !tbaa !291
  %add = add nsw i32 %17, %16, !dbg !614
  %call33 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %add, i32* %14, i32 80, i32* %ierr) #7, !dbg !614
  call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !193), !dbg !615
  %18 = load i32* %ierr, align 4, !dbg !615, !tbaa !291
  %cmp34 = icmp slt i32 %18, 0, !dbg !615
  br i1 %cmp34, label %if.then35, label %if.end38thread-pre-split, !dbg !615

if.then35:                                        ; preds = %if.end29
  %19 = load %struct._IO_FILE** @stderr, align 8, !dbg !616, !tbaa !234
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([92 x i8]* @.str37, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %18) #7, !dbg !616
  br label %return, !dbg !618

if.end38thread-pre-split:                         ; preds = %if.end29
  %.pr = load i32* %type, align 4, !dbg !619, !tbaa !291
  br label %if.end38

if.end38:                                         ; preds = %if.end38thread-pre-split, %if.end21
  %20 = phi i32 [ %.pr, %if.end38thread-pre-split ], [ %13, %if.end21 ], !dbg !619
  %cmp40 = icmp sgt i32 %20, 1, !dbg !619
  br i1 %cmp40, label %if.then41, label %return, !dbg !619

if.then41:                                        ; preds = %if.end38
  %ewghtIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 8, !dbg !620
  %21 = load %struct._IVL** %ewghtIVL, align 8, !dbg !620, !tbaa !234
  %cmp42 = icmp eq %struct._IVL* %21, null, !dbg !620
  br i1 %cmp42, label %if.then43, label %if.end46, !dbg !620

if.then43:                                        ; preds = %if.then41
  %22 = load %struct._IO_FILE** @stderr, align 8, !dbg !622, !tbaa !234
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([95 x i8]* @.str38, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %20) #7, !dbg !622
  br label %return, !dbg !624

if.end46:                                         ; preds = %if.then41
  %call48 = call i32 @IVL_writeToFormattedFile(%struct._IVL* %21, %struct._IO_FILE* %fp) #7, !dbg !625
  call void @llvm.dbg.value(metadata !{i32 %call48}, i64 0, metadata !194), !dbg !625
  %cmp49 = icmp slt i32 %call48, 0, !dbg !626
  br i1 %cmp49, label %if.then50, label %return, !dbg !626

if.then50:                                        ; preds = %if.end46
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !627, !tbaa !234
  %24 = load %struct._IVL** %ewghtIVL, align 8, !dbg !627, !tbaa !234
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([146 x i8]* @.str39, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call48, %struct._IVL* %24, %struct._IO_FILE* %fp) #7, !dbg !627
  br label %return, !dbg !629

return:                                           ; preds = %if.end38, %if.end46, %if.then50, %if.then43, %if.then35, %if.then26, %if.then18, %if.then13, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then13 ], [ 0, %if.then18 ], [ 0, %if.then26 ], [ 0, %if.then35 ], [ 0, %if.then43 ], [ 0, %if.then50 ], [ 1, %if.end46 ], [ 1, %if.end38 ]
  ret i32 %retval.0, !dbg !630
}

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_writeForHumanEye(%struct._Graph* %graph, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Graph* %graph}, i64 0, metadata !203), !dbg !631
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !204), !dbg !632
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !205), !dbg !633
  %cmp = icmp eq %struct._Graph* %graph, null, !dbg !634
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !634
  %or.cond = or i1 %cmp, %cmp1, !dbg !634
  br i1 %or.cond, label %if.then, label %if.end, !dbg !634

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !635, !tbaa !234
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str48, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp) #7, !dbg !635
  call void @exit(i32 -1) #10, !dbg !637
  unreachable, !dbg !637

if.end:                                           ; preds = %entry
  %call2 = call i32 @Graph_writeStats(%struct._Graph* %graph, %struct._IO_FILE* %fp) #9, !dbg !638
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !206), !dbg !638
  %cmp3 = icmp eq i32 %call2, 0, !dbg !638
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !638

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !639, !tbaa !234
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([94 x i8]* @.str49, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 0, %struct._Graph* %graph, %struct._IO_FILE* %fp) #7, !dbg !639
  br label %return, !dbg !641

if.end6:                                          ; preds = %if.end
  %adjIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6, !dbg !642
  %2 = load %struct._IVL** %adjIVL, align 8, !dbg !642, !tbaa !234
  %cmp7 = icmp eq %struct._IVL* %2, null, !dbg !642
  br i1 %cmp7, label %if.end17, label %if.then8, !dbg !642

if.then8:                                         ; preds = %if.end6
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str50, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %fp) #4, !dbg !643
  %4 = load %struct._IVL** %adjIVL, align 8, !dbg !645, !tbaa !234
  %call11 = call i32 @IVL_writeForHumanEye(%struct._IVL* %4, %struct._IO_FILE* %fp) #7, !dbg !645
  call void @llvm.dbg.value(metadata !{i32 %call11}, i64 0, metadata !206), !dbg !645
  %cmp12 = icmp slt i32 %call11, 0, !dbg !646
  br i1 %cmp12, label %if.then13, label %if.end17, !dbg !646

if.then13:                                        ; preds = %if.then8
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !647, !tbaa !234
  %6 = load %struct._IVL** %adjIVL, align 8, !dbg !647, !tbaa !234
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([136 x i8]* @.str51, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call11, %struct._IVL* %6, %struct._IO_FILE* %fp) #7, !dbg !647
  br label %return, !dbg !649

if.end17:                                         ; preds = %if.end6, %if.then8
  %type = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 0, !dbg !650
  %7 = load i32* %type, align 4, !dbg !650, !tbaa !291
  %rem = srem i32 %7, 2, !dbg !650
  %cmp18 = icmp eq i32 %rem, 1, !dbg !650
  br i1 %cmp18, label %if.then19, label %if.end32, !dbg !650

if.then19:                                        ; preds = %if.end17
  %vwghts = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7, !dbg !651
  %8 = load i32** %vwghts, align 8, !dbg !651, !tbaa !234
  %cmp20 = icmp eq i32* %8, null, !dbg !651
  br i1 %cmp20, label %if.then21, label %if.end24, !dbg !651

if.then21:                                        ; preds = %if.then19
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !653, !tbaa !234
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([89 x i8]* @.str52, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %7) #7, !dbg !653
  br label %return, !dbg !655

if.end24:                                         ; preds = %if.then19
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str53, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %fp) #4, !dbg !656
  %nvtx = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1, !dbg !657
  %11 = load i32* %nvtx, align 4, !dbg !657, !tbaa !291
  %nvbnd = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 2, !dbg !657
  %12 = load i32* %nvbnd, align 4, !dbg !657, !tbaa !291
  %add = add nsw i32 %12, %11, !dbg !657
  %13 = load i32** %vwghts, align 8, !dbg !657, !tbaa !234
  %call27 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %add, i32* %13, i32 80, i32* %ierr) #7, !dbg !657
  call void @llvm.dbg.value(metadata !{i32* %ierr}, i64 0, metadata !205), !dbg !658
  %14 = load i32* %ierr, align 4, !dbg !658, !tbaa !291
  %cmp28 = icmp slt i32 %14, 0, !dbg !658
  br i1 %cmp28, label %if.then29, label %if.end32thread-pre-split, !dbg !658

if.then29:                                        ; preds = %if.end24
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !659, !tbaa !234
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([88 x i8]* @.str54, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %14) #7, !dbg !659
  br label %return, !dbg !661

if.end32thread-pre-split:                         ; preds = %if.end24
  %.pr = load i32* %type, align 4, !dbg !662, !tbaa !291
  br label %if.end32

if.end32:                                         ; preds = %if.end32thread-pre-split, %if.end17
  %16 = phi i32 [ %.pr, %if.end32thread-pre-split ], [ %7, %if.end17 ], !dbg !662
  %cmp34 = icmp sgt i32 %16, 1, !dbg !662
  br i1 %cmp34, label %if.then35, label %return, !dbg !662

if.then35:                                        ; preds = %if.end32
  %ewghtIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 8, !dbg !663
  %17 = load %struct._IVL** %ewghtIVL, align 8, !dbg !663, !tbaa !234
  %cmp36 = icmp eq %struct._IVL* %17, null, !dbg !663
  br i1 %cmp36, label %if.then37, label %if.end40, !dbg !663

if.then37:                                        ; preds = %if.then35
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !665, !tbaa !234
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([91 x i8]* @.str55, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %16) #7, !dbg !665
  br label %return, !dbg !667

if.end40:                                         ; preds = %if.then35
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str56, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %fp) #4, !dbg !668
  %20 = load %struct._IVL** %ewghtIVL, align 8, !dbg !669, !tbaa !234
  %call43 = call i32 @IVL_writeForHumanEye(%struct._IVL* %20, %struct._IO_FILE* %fp) #7, !dbg !669
  call void @llvm.dbg.value(metadata !{i32 %call43}, i64 0, metadata !206), !dbg !669
  %cmp44 = icmp slt i32 %call43, 0, !dbg !670
  br i1 %cmp44, label %if.then45, label %return, !dbg !670

if.then45:                                        ; preds = %if.end40
  %21 = load %struct._IO_FILE** @stderr, align 8, !dbg !671, !tbaa !234
  %22 = load %struct._IVL** %ewghtIVL, align 8, !dbg !671, !tbaa !234
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([138 x i8]* @.str57, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call43, %struct._IVL* %22, %struct._IO_FILE* %fp) #7, !dbg !671
  br label %return, !dbg !673

return:                                           ; preds = %if.end32, %if.end40, %if.then45, %if.then37, %if.then29, %if.then21, %if.then13, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then13 ], [ 0, %if.then21 ], [ 0, %if.then29 ], [ 0, %if.then37 ], [ 0, %if.then45 ], [ 1, %if.end40 ], [ 1, %if.end32 ]
  ret i32 %retval.0, !dbg !674
}

; Function Attrs: optsize
declare i32 @IVL_writeToFormattedFile(%struct._IVL*, %struct._IO_FILE*) #5

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #5

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @IVL_writeToBinaryFile(%struct._IVL*, %struct._IO_FILE*) #5

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #6

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_writeStats(%struct._Graph* %graph, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Graph* %graph}, i64 0, metadata !209), !dbg !675
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !210), !dbg !676
  %cmp = icmp eq %struct._Graph* %graph, null, !dbg !677
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !677
  %or.cond = or i1 %cmp, %cmp1, !dbg !677
  br i1 %or.cond, label %if.then, label %if.end, !dbg !677

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !678, !tbaa !234
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str58, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp) #7, !dbg !678
  tail call void @exit(i32 -1) #10, !dbg !680
  unreachable, !dbg !680

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 0, !dbg !681
  %1 = load i32* %type, align 4, !dbg !681, !tbaa !291
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ], !dbg !681

sw.bb:                                            ; preds = %if.end
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str59, i64 0, i64 0)) #7, !dbg !682
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !211), !dbg !682
  br label %sw.epilog, !dbg !684

sw.bb3:                                           ; preds = %if.end
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([43 x i8]* @.str60, i64 0, i64 0)) #7, !dbg !685
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !211), !dbg !685
  br label %sw.epilog, !dbg !686

sw.bb5:                                           ; preds = %if.end
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([40 x i8]* @.str61, i64 0, i64 0)) #7, !dbg !687
  tail call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !211), !dbg !687
  br label %sw.epilog, !dbg !688

sw.bb7:                                           ; preds = %if.end
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([53 x i8]* @.str62, i64 0, i64 0)) #7, !dbg !689
  tail call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !211), !dbg !689
  br label %sw.epilog, !dbg !690

sw.default:                                       ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !691, !tbaa !234
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([68 x i8]* @.str63, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %1) #7, !dbg !691
  br label %return, !dbg !692

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  %rc.0 = phi i32 [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb ]
  %cmp11 = icmp slt i32 %rc.0, 0, !dbg !693
  br i1 %cmp11, label %IO_error, label %if.end13, !dbg !693

if.end13:                                         ; preds = %sw.epilog
  %call14 = tail call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !694
  %nvtx = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1, !dbg !695
  %3 = load i32* %nvtx, align 4, !dbg !695, !tbaa !291
  %nvbnd = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 2, !dbg !695
  %4 = load i32* %nvbnd, align 4, !dbg !695, !tbaa !291
  %nedges = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 3, !dbg !695
  %5 = load i32* %nedges, align 4, !dbg !695, !tbaa !291
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([55 x i8]* @.str64, i64 0, i64 0), i32 %3, i32 %4, i32 %5) #7, !dbg !695
  tail call void @llvm.dbg.value(metadata !{i32 %call15}, i64 0, metadata !211), !dbg !695
  %cmp16 = icmp slt i32 %call15, 0, !dbg !696
  br i1 %cmp16, label %IO_error, label %if.end18, !dbg !696

if.end18:                                         ; preds = %if.end13
  %call19 = tail call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !697
  %vwghts = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7, !dbg !698
  %6 = load i32** %vwghts, align 8, !dbg !698, !tbaa !234
  %cmp20 = icmp eq i32* %6, null, !dbg !698
  %7 = load i32* %nvtx, align 4, !dbg !699, !tbaa !291
  br i1 %cmp20, label %cond.end.thread, label %cond.end, !dbg !698

cond.end.thread:                                  ; preds = %if.end18
  %8 = load i32* %nvbnd, align 4, !dbg !700, !tbaa !291
  br label %cond.end34, !dbg !699

cond.end:                                         ; preds = %if.end18
  %call23 = tail call i32 @IVsum(i32 %7, i32* %6) #7, !dbg !699
  %.pr = load i32** %vwghts, align 8, !dbg !699, !tbaa !234
  %cmp26 = icmp eq i32* %.pr, null, !dbg !699
  %9 = load i32* %nvbnd, align 4, !dbg !700, !tbaa !291
  br i1 %cmp26, label %cond.end34, label %cond.true27, !dbg !699

cond.true27:                                      ; preds = %cond.end
  %10 = load i32* %nvtx, align 4, !dbg !700, !tbaa !291
  %idx.ext = sext i32 %10 to i64, !dbg !700
  %add.ptr = getelementptr inbounds i32* %.pr, i64 %idx.ext, !dbg !700
  %call31 = tail call i32 @IVsum(i32 %9, i32* %add.ptr) #7, !dbg !700
  br label %cond.end34, !dbg !700

cond.end34:                                       ; preds = %cond.end.thread, %cond.end, %cond.true27
  %cond83 = phi i32 [ %call23, %cond.true27 ], [ %call23, %cond.end ], [ %7, %cond.end.thread ]
  %cond35 = phi i32 [ %call31, %cond.true27 ], [ %9, %cond.end ], [ %8, %cond.end.thread ], !dbg !700
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([55 x i8]* @.str65, i64 0, i64 0), i32 %cond83, i32 %cond35) #7, !dbg !700
  tail call void @llvm.dbg.value(metadata !{i32 %call36}, i64 0, metadata !211), !dbg !700
  %cmp37 = icmp slt i32 %call36, 0, !dbg !701
  br i1 %cmp37, label %IO_error, label %if.end39, !dbg !701

if.end39:                                         ; preds = %cond.end34
  %11 = load i32* %type, align 4, !dbg !702, !tbaa !291
  %cmp41 = icmp sgt i32 %11, 1, !dbg !702
  br i1 %cmp41, label %if.end44, label %return, !dbg !702

if.end44:                                         ; preds = %if.end39
  %totewght = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 5, !dbg !703
  %12 = load i32* %totewght, align 4, !dbg !703, !tbaa !291
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str66, i64 0, i64 0), i32 %12) #7, !dbg !703
  tail call void @llvm.dbg.value(metadata !{i32 %call43}, i64 0, metadata !211), !dbg !703
  %cmp45 = icmp slt i32 %call43, 0, !dbg !705
  br i1 %cmp45, label %IO_error, label %return, !dbg !705

IO_error:                                         ; preds = %if.end44, %cond.end34, %if.end13, %sw.epilog
  %rc.2 = phi i32 [ %rc.0, %sw.epilog ], [ %call15, %if.end13 ], [ %call36, %cond.end34 ], [ %call43, %if.end44 ]
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !706, !tbaa !234
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([72 x i8]* @.str67, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %rc.2) #7, !dbg !706
  br label %return, !dbg !707

return:                                           ; preds = %if.end39, %if.end44, %IO_error, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %IO_error ], [ 1, %if.end44 ], [ 1, %if.end39 ]
  ret i32 %retval.0, !dbg !707
}

; Function Attrs: optsize
declare i32 @IVL_writeForHumanEye(%struct._IVL*, %struct._IO_FILE*) #5

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_writeToMetisFile(%struct._Graph* %g, %struct._IO_FILE* %fp) #0 {
entry:
  %vsize = alloca i32, align 4
  %vewghts = alloca i32*, align 8
  %vadj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !214), !dbg !708
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !215), !dbg !709
  call void @llvm.dbg.declare(metadata !{i32* %vsize}, metadata !220), !dbg !710
  call void @llvm.dbg.declare(metadata !{i32** %vewghts}, metadata !222), !dbg !711
  call void @llvm.dbg.declare(metadata !{i32** %vadj}, metadata !223), !dbg !711
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !712
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !712
  %or.cond = or i1 %cmp, %cmp1, !dbg !712
  br i1 %or.cond, label %if.then, label %if.end, !dbg !712

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !713, !tbaa !234
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str68, i64 0, i64 0), %struct._Graph* %g, %struct._IO_FILE* %fp) #7, !dbg !713
  call void @exit(i32 -1) #10, !dbg !715
  unreachable, !dbg !715

if.end:                                           ; preds = %entry
  %nvtx2 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !716
  %1 = load i32* %nvtx2, align 4, !dbg !716, !tbaa !291
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !218), !dbg !716
  %nedges = getelementptr inbounds %struct._Graph* %g, i64 0, i32 3, !dbg !717
  %2 = load i32* %nedges, align 4, !dbg !717, !tbaa !291
  %sub = sub nsw i32 %2, %1, !dbg !717
  %div = sdiv i32 %sub, 2, !dbg !717
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !217), !dbg !717
  %type = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0, !dbg !718
  %3 = load i32* %type, align 4, !dbg !718, !tbaa !291
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
    i32 2, label %sw.bb43
    i32 3, label %sw.bb69
  ], !dbg !718

sw.bb:                                            ; preds = %if.end
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str69, i64 0, i64 0), i32 %1, i32 %div) #7, !dbg !719
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !219), !dbg !721
  %cmp4183 = icmp sgt i32 %1, 0, !dbg !721
  br i1 %cmp4183, label %for.body, label %sw.epilog, !dbg !721

for.body:                                         ; preds = %sw.bb, %for.inc14
  %v.0184 = phi i32 [ %inc15, %for.inc14 ], [ 0, %sw.bb ]
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str70, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp) #4, !dbg !723
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %v.0184, i32* %vsize, i32** %vadj) #7, !dbg !725
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !216), !dbg !726
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !220), !dbg !726
  %5 = load i32* %vsize, align 4, !dbg !726, !tbaa !291
  %cmp7181 = icmp sgt i32 %5, 0, !dbg !726
  br i1 %cmp7181, label %for.body8, label %for.inc14, !dbg !726

for.body8:                                        ; preds = %for.inc, %for.body
  %6 = phi i32 [ %5, %for.body ], [ %9, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !223), !dbg !728
  %7 = load i32** %vadj, align 8, !dbg !728, !tbaa !234
  %arrayidx = getelementptr inbounds i32* %7, i64 %indvars.iv, !dbg !728
  %8 = load i32* %arrayidx, align 4, !dbg !728, !tbaa !291
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !221), !dbg !728
  %cmp9 = icmp ne i32 %8, %v.0184, !dbg !730
  %cmp10 = icmp slt i32 %8, %1, !dbg !730
  %or.cond177 = and i1 %cmp9, %cmp10, !dbg !730
  br i1 %or.cond177, label %if.then11, label %for.inc, !dbg !730

if.then11:                                        ; preds = %for.body8
  %add = add nsw i32 %8, 1, !dbg !731
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str71, i64 0, i64 0), i32 %add) #7, !dbg !731
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !220), !dbg !726
  %.pre = load i32* %vsize, align 4, !dbg !726, !tbaa !291
  br label %for.inc, !dbg !733

for.inc:                                          ; preds = %for.body8, %if.then11
  %9 = phi i32 [ %6, %for.body8 ], [ %.pre, %if.then11 ], !dbg !726
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !726
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !220), !dbg !726
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !726
  %cmp7 = icmp slt i32 %10, %9, !dbg !726
  br i1 %cmp7, label %for.body8, label %for.inc14, !dbg !726

for.inc14:                                        ; preds = %for.inc, %for.body
  %inc15 = add nsw i32 %v.0184, 1, !dbg !721
  call void @llvm.dbg.value(metadata !{i32 %inc15}, i64 0, metadata !219), !dbg !721
  %exitcond = icmp eq i32 %inc15, %1, !dbg !721
  br i1 %exitcond, label %sw.epilog, label %for.body, !dbg !721

sw.bb17:                                          ; preds = %if.end
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str72, i64 0, i64 0), i32 %1, i32 %div) #7, !dbg !734
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !219), !dbg !735
  %cmp20188 = icmp sgt i32 %1, 0, !dbg !735
  br i1 %cmp20188, label %for.body21.lr.ph, label %sw.epilog, !dbg !735

for.body21.lr.ph:                                 ; preds = %sw.bb17
  %vwghts = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !737
  br label %for.body21, !dbg !735

for.body21:                                       ; preds = %for.inc40, %for.body21.lr.ph
  %indvars.iv202 = phi i64 [ 0, %for.body21.lr.ph ], [ %indvars.iv.next203, %for.inc40 ]
  %11 = load i32** %vwghts, align 8, !dbg !737, !tbaa !234
  %arrayidx23 = getelementptr inbounds i32* %11, i64 %indvars.iv202, !dbg !737
  %12 = load i32* %arrayidx23, align 4, !dbg !737, !tbaa !291
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i32 %12) #7, !dbg !737
  %13 = trunc i64 %indvars.iv202 to i32, !dbg !739
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %13, i32* %vsize, i32** %vadj) #7, !dbg !739
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !216), !dbg !740
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !220), !dbg !740
  %14 = load i32* %vsize, align 4, !dbg !740, !tbaa !291
  %cmp26185 = icmp sgt i32 %14, 0, !dbg !740
  br i1 %cmp26185, label %for.body27, label %for.inc40, !dbg !740

for.body27:                                       ; preds = %for.inc37, %for.body21
  %15 = phi i32 [ %14, %for.body21 ], [ %18, %for.inc37 ]
  %indvars.iv200 = phi i64 [ 0, %for.body21 ], [ %indvars.iv.next201, %for.inc37 ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !223), !dbg !742
  %16 = load i32** %vadj, align 8, !dbg !742, !tbaa !234
  %arrayidx29 = getelementptr inbounds i32* %16, i64 %indvars.iv200, !dbg !742
  %17 = load i32* %arrayidx29, align 4, !dbg !742, !tbaa !291
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !221), !dbg !742
  %cmp30 = icmp ne i32 %17, %13, !dbg !744
  %cmp32 = icmp slt i32 %17, %1, !dbg !744
  %or.cond178 = and i1 %cmp30, %cmp32, !dbg !744
  br i1 %or.cond178, label %if.then33, label %for.inc37, !dbg !744

if.then33:                                        ; preds = %for.body27
  %add34 = add nsw i32 %17, 1, !dbg !745
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str71, i64 0, i64 0), i32 %add34) #7, !dbg !745
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !220), !dbg !740
  %.pre214 = load i32* %vsize, align 4, !dbg !740, !tbaa !291
  br label %for.inc37, !dbg !747

for.inc37:                                        ; preds = %for.body27, %if.then33
  %18 = phi i32 [ %15, %for.body27 ], [ %.pre214, %if.then33 ], !dbg !740
  %indvars.iv.next201 = add i64 %indvars.iv200, 1, !dbg !740
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !220), !dbg !740
  %19 = trunc i64 %indvars.iv.next201 to i32, !dbg !740
  %cmp26 = icmp slt i32 %19, %18, !dbg !740
  br i1 %cmp26, label %for.body27, label %for.inc40, !dbg !740

for.inc40:                                        ; preds = %for.inc37, %for.body21
  %indvars.iv.next203 = add i64 %indvars.iv202, 1, !dbg !735
  %lftr.wideiv = trunc i64 %indvars.iv.next203 to i32, !dbg !735
  %exitcond204 = icmp eq i32 %lftr.wideiv, %1, !dbg !735
  br i1 %exitcond204, label %sw.epilog, label %for.body21, !dbg !735

sw.bb43:                                          ; preds = %if.end
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str74, i64 0, i64 0), i32 %1, i32 %div) #7, !dbg !748
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !219), !dbg !749
  %cmp46193 = icmp sgt i32 %1, 0, !dbg !749
  br i1 %cmp46193, label %for.body47, label %sw.epilog, !dbg !749

for.body47:                                       ; preds = %sw.bb43, %for.inc66
  %v.2194 = phi i32 [ %inc67, %for.inc66 ], [ 0, %sw.bb43 ]
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !751
  call void @Graph_adjAndEweights(%struct._Graph* %g, i32 %v.2194, i32* %vsize, i32** %vadj, i32** %vewghts) #7, !dbg !753
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !216), !dbg !754
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !220), !dbg !754
  %20 = load i32* %vsize, align 4, !dbg !754, !tbaa !291
  %cmp50190 = icmp sgt i32 %20, 0, !dbg !754
  br i1 %cmp50190, label %for.body51, label %for.inc66, !dbg !754

for.body51:                                       ; preds = %for.inc63, %for.body47
  %21 = phi i32 [ %20, %for.body47 ], [ %26, %for.inc63 ]
  %indvars.iv205 = phi i64 [ 0, %for.body47 ], [ %indvars.iv.next206, %for.inc63 ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !223), !dbg !756
  %22 = load i32** %vadj, align 8, !dbg !756, !tbaa !234
  %arrayidx53 = getelementptr inbounds i32* %22, i64 %indvars.iv205, !dbg !756
  %23 = load i32* %arrayidx53, align 4, !dbg !756, !tbaa !291
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !221), !dbg !756
  %cmp54 = icmp ne i32 %23, %v.2194, !dbg !758
  %cmp56 = icmp slt i32 %23, %1, !dbg !758
  %or.cond179 = and i1 %cmp54, %cmp56, !dbg !758
  br i1 %or.cond179, label %if.then57, label %for.inc63, !dbg !758

if.then57:                                        ; preds = %for.body51
  %add58 = add nsw i32 %23, 1, !dbg !759
  call void @llvm.dbg.value(metadata !{i32** %vewghts}, i64 0, metadata !222), !dbg !759
  %24 = load i32** %vewghts, align 8, !dbg !759, !tbaa !234
  %arrayidx60 = getelementptr inbounds i32* %24, i64 %indvars.iv205, !dbg !759
  %25 = load i32* %arrayidx60, align 4, !dbg !759, !tbaa !291
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str76, i64 0, i64 0), i32 %add58, i32 %25) #7, !dbg !759
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !220), !dbg !754
  %.pre215 = load i32* %vsize, align 4, !dbg !754, !tbaa !291
  br label %for.inc63, !dbg !761

for.inc63:                                        ; preds = %for.body51, %if.then57
  %26 = phi i32 [ %21, %for.body51 ], [ %.pre215, %if.then57 ], !dbg !754
  %indvars.iv.next206 = add i64 %indvars.iv205, 1, !dbg !754
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !220), !dbg !754
  %27 = trunc i64 %indvars.iv.next206 to i32, !dbg !754
  %cmp50 = icmp slt i32 %27, %26, !dbg !754
  br i1 %cmp50, label %for.body51, label %for.inc66, !dbg !754

for.inc66:                                        ; preds = %for.inc63, %for.body47
  %inc67 = add nsw i32 %v.2194, 1, !dbg !749
  call void @llvm.dbg.value(metadata !{i32 %inc67}, i64 0, metadata !219), !dbg !749
  %exitcond207 = icmp eq i32 %inc67, %1, !dbg !749
  br i1 %exitcond207, label %sw.epilog, label %for.body47, !dbg !749

sw.bb69:                                          ; preds = %if.end
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str77, i64 0, i64 0), i32 %1, i32 %div) #7, !dbg !762
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !219), !dbg !763
  %cmp72198 = icmp sgt i32 %1, 0, !dbg !763
  br i1 %cmp72198, label %for.body73.lr.ph, label %sw.epilog, !dbg !763

for.body73.lr.ph:                                 ; preds = %sw.bb69
  %vwghts75 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !765
  br label %for.body73, !dbg !763

for.body73:                                       ; preds = %for.inc95, %for.body73.lr.ph
  %indvars.iv210 = phi i64 [ 0, %for.body73.lr.ph ], [ %indvars.iv.next211, %for.inc95 ]
  %28 = load i32** %vwghts75, align 8, !dbg !765, !tbaa !234
  %arrayidx76 = getelementptr inbounds i32* %28, i64 %indvars.iv210, !dbg !765
  %29 = load i32* %arrayidx76, align 4, !dbg !765, !tbaa !291
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i32 %29) #7, !dbg !765
  %30 = trunc i64 %indvars.iv210 to i32, !dbg !767
  call void @Graph_adjAndEweights(%struct._Graph* %g, i32 %30, i32* %vsize, i32** %vadj, i32** %vewghts) #7, !dbg !767
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !216), !dbg !768
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !220), !dbg !768
  %31 = load i32* %vsize, align 4, !dbg !768, !tbaa !291
  %cmp79195 = icmp sgt i32 %31, 0, !dbg !768
  br i1 %cmp79195, label %for.body80, label %for.inc95, !dbg !768

for.body80:                                       ; preds = %for.inc92, %for.body73
  %32 = phi i32 [ %31, %for.body73 ], [ %37, %for.inc92 ]
  %indvars.iv208 = phi i64 [ 0, %for.body73 ], [ %indvars.iv.next209, %for.inc92 ]
  call void @llvm.dbg.value(metadata !{i32** %vadj}, i64 0, metadata !223), !dbg !770
  %33 = load i32** %vadj, align 8, !dbg !770, !tbaa !234
  %arrayidx82 = getelementptr inbounds i32* %33, i64 %indvars.iv208, !dbg !770
  %34 = load i32* %arrayidx82, align 4, !dbg !770, !tbaa !291
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !221), !dbg !770
  %cmp83 = icmp ne i32 %34, %30, !dbg !772
  %cmp85 = icmp slt i32 %34, %1, !dbg !772
  %or.cond180 = and i1 %cmp83, %cmp85, !dbg !772
  br i1 %or.cond180, label %if.then86, label %for.inc92, !dbg !772

if.then86:                                        ; preds = %for.body80
  %add87 = add nsw i32 %34, 1, !dbg !773
  call void @llvm.dbg.value(metadata !{i32** %vewghts}, i64 0, metadata !222), !dbg !773
  %35 = load i32** %vewghts, align 8, !dbg !773, !tbaa !234
  %arrayidx89 = getelementptr inbounds i32* %35, i64 %indvars.iv208, !dbg !773
  %36 = load i32* %arrayidx89, align 4, !dbg !773, !tbaa !291
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str76, i64 0, i64 0), i32 %add87, i32 %36) #7, !dbg !773
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !220), !dbg !768
  %.pre216 = load i32* %vsize, align 4, !dbg !768, !tbaa !291
  br label %for.inc92, !dbg !775

for.inc92:                                        ; preds = %for.body80, %if.then86
  %37 = phi i32 [ %32, %for.body80 ], [ %.pre216, %if.then86 ], !dbg !768
  %indvars.iv.next209 = add i64 %indvars.iv208, 1, !dbg !768
  call void @llvm.dbg.value(metadata !{i32* %vsize}, i64 0, metadata !220), !dbg !768
  %38 = trunc i64 %indvars.iv.next209 to i32, !dbg !768
  %cmp79 = icmp slt i32 %38, %37, !dbg !768
  br i1 %cmp79, label %for.body80, label %for.inc95, !dbg !768

for.inc95:                                        ; preds = %for.inc92, %for.body73
  %indvars.iv.next211 = add i64 %indvars.iv210, 1, !dbg !763
  %lftr.wideiv212 = trunc i64 %indvars.iv.next211 to i32, !dbg !763
  %exitcond213 = icmp eq i32 %lftr.wideiv212, %1, !dbg !763
  br i1 %exitcond213, label %sw.epilog, label %for.body73, !dbg !763

sw.epilog:                                        ; preds = %sw.bb69, %for.inc95, %sw.bb43, %for.inc66, %sw.bb17, %for.inc40, %sw.bb, %for.inc14, %if.end
  ret i32 1, !dbg !776
}

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #5

; Function Attrs: optsize
declare void @Graph_adjAndEweights(%struct._Graph*, i32, i32*, i32**, i32**) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !224, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !110, metadata !136, metadata !161, metadata !181, metadata !189, metadata !195, metadata !201, metadata !207, metadata !212}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_readFromFile", metadata !"Graph_readFromFile", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Graph*, i8*)* @Graph_readFromFile, null, null, metadata !48, i32 28} ; [ DW_TAG_subprogram ] [line 25] [def] [scope 28] [Graph_readFromFile]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !46}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !44, metadata !45}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!22 = metadata !{i32 786454, metadata !12, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !35}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!29 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!30 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!34 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!35 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!37 = metadata !{i32 786454, metadata !24, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!38 = metadata !{i32 786451, metadata !24, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !39, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43}
!40 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!41 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!42 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!43 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!44 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!45 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!47 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!48 = metadata !{metadata !49, metadata !50, metadata !51, metadata !107, metadata !108, metadata !109}
!49 = metadata !{i32 786689, metadata !4, metadata !"graph", metadata !5, i32 16777242, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 26]
!50 = metadata !{i32 786689, metadata !4, metadata !"fn", metadata !5, i32 33554459, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 27]
!51 = metadata !{i32 786688, metadata !4, metadata !"fp", metadata !5, i32 29, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 29]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!53 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!54 = metadata !{i32 786451, metadata !55, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !56, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!55 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !77, metadata !78, metadata !79, metadata !80, metadata !83, metadata !85, metadata !87, metadata !91, metadata !93, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !102, metadata !103}
!57 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!58 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!59 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!60 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!61 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!62 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!63 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!64 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!65 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!66 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!67 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!68 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !46} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!69 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !70} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!71 = metadata !{i32 786451, metadata !55, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !72, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!72 = metadata !{metadata !73, metadata !74, metadata !76}
!73 = metadata !{i32 786445, metadata !55, metadata !71, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!74 = metadata !{i32 786445, metadata !55, metadata !71, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !75} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!76 = metadata !{i32 786445, metadata !55, metadata !71, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!77 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !75} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!78 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!79 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!80 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !81} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!81 = metadata !{i32 786454, metadata !55, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!82 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!83 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !84} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!84 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!85 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !86} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!86 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!87 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !88} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!88 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !47, metadata !89, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!89 = metadata !{metadata !90}
!90 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!91 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !92} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!93 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !94} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!94 = metadata !{i32 786454, metadata !55, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!95 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !92} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!96 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !92} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!97 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !92} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!98 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !92} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!99 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !100} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!100 = metadata !{i32 786454, metadata !55, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!101 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!102 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!103 = metadata !{i32 786445, metadata !55, metadata !54, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !104} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!104 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !47, metadata !105, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!107 = metadata !{i32 786688, metadata !4, metadata !"fnlength", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 30]
!108 = metadata !{i32 786688, metadata !4, metadata !"rc", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 30]
!109 = metadata !{i32 786688, metadata !4, metadata !"sulength", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 30]
!110 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_readFromChacoFile", metadata !"Graph_readFromChacoFile", metadata !"", i32 98, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Graph*, i8*)* @Graph_readFromChacoFile, null, null, metadata !111, i32 101} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 101] [Graph_readFromChacoFile]
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135}
!112 = metadata !{i32 786689, metadata !110, metadata !"graph", metadata !5, i32 16777315, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 99]
!113 = metadata !{i32 786689, metadata !110, metadata !"fn", metadata !5, i32 33554532, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 100]
!114 = metadata !{i32 786688, metadata !110, metadata !"rc", metadata !5, i32 102, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 102]
!115 = metadata !{i32 786688, metadata !110, metadata !"fp", metadata !5, i32 103, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 103]
!116 = metadata !{i32 786688, metadata !110, metadata !"nvtx", metadata !5, i32 104, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 104]
!117 = metadata !{i32 786688, metadata !110, metadata !"nedges", metadata !5, i32 104, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nedges] [line 104]
!118 = metadata !{i32 786688, metadata !110, metadata !"format", metadata !5, i32 104, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [format] [line 104]
!119 = metadata !{i32 786688, metadata !110, metadata !"string", metadata !5, i32 105, metadata !120, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [string] [line 105]
!120 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !47, metadata !121, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!121 = metadata !{metadata !122}
!122 = metadata !{i32 786465, i64 0, i64 100000}  ; [ DW_TAG_subrange_type ] [0, 99999]
!123 = metadata !{i32 786688, metadata !110, metadata !"s1", metadata !5, i32 105, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 105]
!124 = metadata !{i32 786688, metadata !110, metadata !"s2", metadata !5, i32 105, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 105]
!125 = metadata !{i32 786688, metadata !110, metadata !"k", metadata !5, i32 106, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 106]
!126 = metadata !{i32 786688, metadata !110, metadata !"v", metadata !5, i32 106, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 106]
!127 = metadata !{i32 786688, metadata !110, metadata !"vsize", metadata !5, i32 106, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vsize] [line 106]
!128 = metadata !{i32 786688, metadata !110, metadata !"w", metadata !5, i32 106, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 106]
!129 = metadata !{i32 786688, metadata !110, metadata !"vwghts", metadata !5, i32 106, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vwghts] [line 106]
!130 = metadata !{i32 786688, metadata !110, metadata !"ewghts", metadata !5, i32 106, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ewghts] [line 106]
!131 = metadata !{i32 786688, metadata !110, metadata !"adjncy", metadata !5, i32 107, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adjncy] [line 107]
!132 = metadata !{i32 786688, metadata !110, metadata !"weights", metadata !5, i32 107, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weights] [line 107]
!133 = metadata !{i32 786688, metadata !110, metadata !"vwghtsINT", metadata !5, i32 107, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vwghtsINT] [line 107]
!134 = metadata !{i32 786688, metadata !110, metadata !"adjIVL", metadata !5, i32 108, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adjIVL] [line 108]
!135 = metadata !{i32 786688, metadata !110, metadata !"ewghtIVL", metadata !5, i32 108, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ewghtIVL] [line 108]
!136 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_readFromFormattedFile", metadata !"Graph_readFromFormattedFile", metadata !"", i32 313, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Graph*, %struct._IO_FILE*)* @Graph_readFromFormattedFile, null, null, metadata !139, i32 316} ; [ DW_TAG_subprogram ] [line 313] [def] [scope 316] [Graph_readFromFormattedFile]
!137 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!138 = metadata !{metadata !8, metadata !9, metadata !52}
!139 = metadata !{metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !153, metadata !154, metadata !155, metadata !156, metadata !158, metadata !159}
!140 = metadata !{i32 786689, metadata !136, metadata !"graph", metadata !5, i32 16777530, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 314]
!141 = metadata !{i32 786689, metadata !136, metadata !"fp", metadata !5, i32 33554747, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 315]
!142 = metadata !{i32 786688, metadata !136, metadata !"nedges", metadata !5, i32 317, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nedges] [line 317]
!143 = metadata !{i32 786688, metadata !136, metadata !"nvbnd", metadata !5, i32 317, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvbnd] [line 317]
!144 = metadata !{i32 786688, metadata !136, metadata !"nvtx", metadata !5, i32 317, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 317]
!145 = metadata !{i32 786688, metadata !136, metadata !"rc", metadata !5, i32 317, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 317]
!146 = metadata !{i32 786688, metadata !136, metadata !"totewght", metadata !5, i32 317, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totewght] [line 317]
!147 = metadata !{i32 786688, metadata !136, metadata !"totvwght", metadata !5, i32 317, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totvwght] [line 317]
!148 = metadata !{i32 786688, metadata !136, metadata !"type", metadata !5, i32 317, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 317]
!149 = metadata !{i32 786688, metadata !136, metadata !"itemp", metadata !5, i32 318, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 318]
!150 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !8, metadata !151, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!151 = metadata !{metadata !152}
!152 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!153 = metadata !{i32 786688, metadata !136, metadata !"vwghts", metadata !5, i32 319, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vwghts] [line 319]
!154 = metadata !{i32 786688, metadata !136, metadata !"adjIVL", metadata !5, i32 320, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adjIVL] [line 320]
!155 = metadata !{i32 786688, metadata !136, metadata !"ewghtIVL", metadata !5, i32 320, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ewghtIVL] [line 320]
!156 = metadata !{i32 786688, metadata !157, metadata !"nvtot", metadata !5, i32 372, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtot] [line 372]
!157 = metadata !{i32 786443, metadata !1, metadata !136, i32 371, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!158 = metadata !{i32 786688, metadata !157, metadata !"wght", metadata !5, i32 372, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wght] [line 372]
!159 = metadata !{i32 786688, metadata !160, metadata !"wght", metadata !5, i32 396, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wght] [line 396]
!160 = metadata !{i32 786443, metadata !1, metadata !136, i32 395, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!161 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_readFromBinaryFile", metadata !"Graph_readFromBinaryFile", metadata !"", i32 445, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Graph*, %struct._IO_FILE*)* @Graph_readFromBinaryFile, null, null, metadata !162, i32 448} ; [ DW_TAG_subprogram ] [line 445] [def] [scope 448] [Graph_readFromBinaryFile]
!162 = metadata !{metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !178, metadata !179}
!163 = metadata !{i32 786689, metadata !161, metadata !"graph", metadata !5, i32 16777662, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 446]
!164 = metadata !{i32 786689, metadata !161, metadata !"fp", metadata !5, i32 33554879, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 447]
!165 = metadata !{i32 786688, metadata !161, metadata !"nedges", metadata !5, i32 449, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nedges] [line 449]
!166 = metadata !{i32 786688, metadata !161, metadata !"nvbnd", metadata !5, i32 449, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvbnd] [line 449]
!167 = metadata !{i32 786688, metadata !161, metadata !"nvtx", metadata !5, i32 449, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 449]
!168 = metadata !{i32 786688, metadata !161, metadata !"rc", metadata !5, i32 449, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 449]
!169 = metadata !{i32 786688, metadata !161, metadata !"totewght", metadata !5, i32 449, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totewght] [line 449]
!170 = metadata !{i32 786688, metadata !161, metadata !"totvwght", metadata !5, i32 449, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totvwght] [line 449]
!171 = metadata !{i32 786688, metadata !161, metadata !"type", metadata !5, i32 449, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 449]
!172 = metadata !{i32 786688, metadata !161, metadata !"itemp", metadata !5, i32 450, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 450]
!173 = metadata !{i32 786688, metadata !161, metadata !"vwghts", metadata !5, i32 451, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vwghts] [line 451]
!174 = metadata !{i32 786688, metadata !161, metadata !"adjIVL", metadata !5, i32 452, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adjIVL] [line 452]
!175 = metadata !{i32 786688, metadata !161, metadata !"ewghtIVL", metadata !5, i32 452, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ewghtIVL] [line 452]
!176 = metadata !{i32 786688, metadata !177, metadata !"nvtot", metadata !5, i32 504, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtot] [line 504]
!177 = metadata !{i32 786443, metadata !1, metadata !161, i32 503, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!178 = metadata !{i32 786688, metadata !177, metadata !"wght", metadata !5, i32 504, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wght] [line 504]
!179 = metadata !{i32 786688, metadata !180, metadata !"wght", metadata !5, i32 528, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wght] [line 528]
!180 = metadata !{i32 786443, metadata !1, metadata !161, i32 527, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!181 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_writeToFile", metadata !"Graph_writeToFile", metadata !"", i32 584, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Graph*, i8*)* @Graph_writeToFile, null, null, metadata !182, i32 587} ; [ DW_TAG_subprogram ] [line 584] [def] [scope 587] [Graph_writeToFile]
!182 = metadata !{metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188}
!183 = metadata !{i32 786689, metadata !181, metadata !"graph", metadata !5, i32 16777801, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 585]
!184 = metadata !{i32 786689, metadata !181, metadata !"fn", metadata !5, i32 33555018, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 586]
!185 = metadata !{i32 786688, metadata !181, metadata !"fp", metadata !5, i32 588, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 588]
!186 = metadata !{i32 786688, metadata !181, metadata !"fnlength", metadata !5, i32 589, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 589]
!187 = metadata !{i32 786688, metadata !181, metadata !"rc", metadata !5, i32 589, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 589]
!188 = metadata !{i32 786688, metadata !181, metadata !"sulength", metadata !5, i32 589, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 589]
!189 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_writeToFormattedFile", metadata !"Graph_writeToFormattedFile", metadata !"", i32 664, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Graph*, %struct._IO_FILE*)* @Graph_writeToFormattedFile, null, null, metadata !190, i32 667} ; [ DW_TAG_subprogram ] [line 664] [def] [scope 667] [Graph_writeToFormattedFile]
!190 = metadata !{metadata !191, metadata !192, metadata !193, metadata !194}
!191 = metadata !{i32 786689, metadata !189, metadata !"graph", metadata !5, i32 16777881, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 665]
!192 = metadata !{i32 786689, metadata !189, metadata !"fp", metadata !5, i32 33555098, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 666]
!193 = metadata !{i32 786688, metadata !189, metadata !"ierr", metadata !5, i32 668, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 668]
!194 = metadata !{i32 786688, metadata !189, metadata !"rc", metadata !5, i32 668, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 668]
!195 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_writeToBinaryFile", metadata !"Graph_writeToBinaryFile", metadata !"", i32 769, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Graph*, %struct._IO_FILE*)* @Graph_writeToBinaryFile, null, null, metadata !196, i32 772} ; [ DW_TAG_subprogram ] [line 769] [def] [scope 772] [Graph_writeToBinaryFile]
!196 = metadata !{metadata !197, metadata !198, metadata !199, metadata !200}
!197 = metadata !{i32 786689, metadata !195, metadata !"graph", metadata !5, i32 16777986, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 770]
!198 = metadata !{i32 786689, metadata !195, metadata !"fp", metadata !5, i32 33555203, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 771]
!199 = metadata !{i32 786688, metadata !195, metadata !"rc", metadata !5, i32 773, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 773]
!200 = metadata !{i32 786688, metadata !195, metadata !"itemp", metadata !5, i32 774, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 774]
!201 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_writeForHumanEye", metadata !"Graph_writeForHumanEye", metadata !"", i32 879, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Graph*, %struct._IO_FILE*)* @Graph_writeForHumanEye, null, null, metadata !202, i32 882} ; [ DW_TAG_subprogram ] [line 879] [def] [scope 882] [Graph_writeForHumanEye]
!202 = metadata !{metadata !203, metadata !204, metadata !205, metadata !206}
!203 = metadata !{i32 786689, metadata !201, metadata !"graph", metadata !5, i32 16778096, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 880]
!204 = metadata !{i32 786689, metadata !201, metadata !"fp", metadata !5, i32 33555313, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 881]
!205 = metadata !{i32 786688, metadata !201, metadata !"ierr", metadata !5, i32 883, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 883]
!206 = metadata !{i32 786688, metadata !201, metadata !"rc", metadata !5, i32 883, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 883]
!207 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_writeStats", metadata !"Graph_writeStats", metadata !"", i32 978, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Graph*, %struct._IO_FILE*)* @Graph_writeStats, null, null, metadata !208, i32 981} ; [ DW_TAG_subprogram ] [line 978] [def] [scope 981] [Graph_writeStats]
!208 = metadata !{metadata !209, metadata !210, metadata !211}
!209 = metadata !{i32 786689, metadata !207, metadata !"graph", metadata !5, i32 16778195, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [graph] [line 979]
!210 = metadata !{i32 786689, metadata !207, metadata !"fp", metadata !5, i32 33555412, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 980]
!211 = metadata !{i32 786688, metadata !207, metadata !"rc", metadata !5, i32 982, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 982]
!212 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_writeToMetisFile", metadata !"Graph_writeToMetisFile", metadata !"", i32 1047, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Graph*, %struct._IO_FILE*)* @Graph_writeToMetisFile, null, null, metadata !213, i32 1050} ; [ DW_TAG_subprogram ] [line 1047] [def] [scope 1050] [Graph_writeToMetisFile]
!213 = metadata !{metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223}
!214 = metadata !{i32 786689, metadata !212, metadata !"g", metadata !5, i32 16778264, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 1048]
!215 = metadata !{i32 786689, metadata !212, metadata !"fp", metadata !5, i32 33555481, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 1049]
!216 = metadata !{i32 786688, metadata !212, metadata !"ii", metadata !5, i32 1051, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1051]
!217 = metadata !{i32 786688, metadata !212, metadata !"nedge", metadata !5, i32 1051, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nedge] [line 1051]
!218 = metadata !{i32 786688, metadata !212, metadata !"nvtx", metadata !5, i32 1051, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 1051]
!219 = metadata !{i32 786688, metadata !212, metadata !"v", metadata !5, i32 1051, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 1051]
!220 = metadata !{i32 786688, metadata !212, metadata !"vsize", metadata !5, i32 1051, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vsize] [line 1051]
!221 = metadata !{i32 786688, metadata !212, metadata !"w", metadata !5, i32 1051, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 1051]
!222 = metadata !{i32 786688, metadata !212, metadata !"vewghts", metadata !5, i32 1052, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vewghts] [line 1052]
!223 = metadata !{i32 786688, metadata !212, metadata !"vadj", metadata !5, i32 1052, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vadj] [line 1052]
!224 = metadata !{metadata !225, metadata !228}
!225 = metadata !{i32 786484, i32 0, null, metadata !"suffixf", metadata !"suffixf", metadata !"", metadata !5, i32 8, metadata !226, i32 1, i32 1, null, null}
!226 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !227} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!227 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!228 = metadata !{i32 786484, i32 0, null, metadata !"suffixb", metadata !"suffixb", metadata !"", metadata !5, i32 7, metadata !226, i32 1, i32 1, null, null}
!229 = metadata !{i32 26, i32 0, metadata !4, null}
!230 = metadata !{i32 27, i32 0, metadata !4, null}
!231 = metadata !{i32 36, i32 0, metadata !4, null}
!232 = metadata !{i32 37, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !4, i32 36, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!234 = metadata !{metadata !"any pointer", metadata !235}
!235 = metadata !{metadata !"omnipotent char", metadata !236}
!236 = metadata !{metadata !"Simple C/C++ TBAA"}
!237 = metadata !{i32 39, i32 0, metadata !233, null}
!238 = metadata !{i32 46, i32 0, metadata !4, null}
!239 = metadata !{i32 7}
!240 = metadata !{i32 47, i32 0, metadata !4, null}
!241 = metadata !{i32 48, i32 0, metadata !4, null}
!242 = metadata !{i32 49, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !4, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!244 = metadata !{i32 50, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !243, i32 49, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!246 = metadata !{i32 51, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !245, i32 50, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!248 = metadata !{i32 53, i32 0, metadata !247, null}
!249 = metadata !{i32 54, i32 0, metadata !247, null}
!250 = metadata !{i32 55, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !245, i32 54, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!252 = metadata !{i32 56, i32 0, metadata !251, null}
!253 = metadata !{i32 58, i32 0, metadata !243, null} ; [ DW_TAG_imported_module ]
!254 = metadata !{i32 59, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !243, i32 58, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!256 = metadata !{i32 60, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !255, i32 59, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!258 = metadata !{i32 62, i32 0, metadata !257, null}
!259 = metadata !{i32 63, i32 0, metadata !257, null}
!260 = metadata !{i32 64, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !255, i32 63, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!262 = metadata !{i32 65, i32 0, metadata !261, null}
!263 = metadata !{i32 68, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !243, i32 67, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!265 = metadata !{i32 72, i32 0, metadata !264, null}
!266 = metadata !{i32 75, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !4, i32 74, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!268 = metadata !{i32 79, i32 0, metadata !267, null}
!269 = metadata !{i32 81, i32 0, metadata !4, null}
!270 = metadata !{i32 446, i32 0, metadata !161, null}
!271 = metadata !{i32 447, i32 0, metadata !161, null}
!272 = metadata !{i32 450, i32 0, metadata !161, null}
!273 = metadata !{i32 458, i32 0, metadata !161, null}
!274 = metadata !{i32 459, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !161, i32 458, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!276 = metadata !{i32 461, i32 0, metadata !275, null}
!277 = metadata !{i32 468, i32 0, metadata !161, null}
!278 = metadata !{i32 475, i32 0, metadata !161, null}
!279 = metadata !{i32 476, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !161, i32 475, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!281 = metadata !{i32 478, i32 0, metadata !280, null}
!282 = metadata !{i32 480, i32 0, metadata !161, null}
!283 = metadata !{i32 481, i32 0, metadata !161, null}
!284 = metadata !{i32 482, i32 0, metadata !161, null}
!285 = metadata !{i32 483, i32 0, metadata !161, null}
!286 = metadata !{i32 484, i32 0, metadata !161, null}
!287 = metadata !{i32 485, i32 0, metadata !161, null}
!288 = metadata !{i32 492, i32 0, metadata !161, null}
!289 = metadata !{i32 493, i32 0, metadata !161, null}
!290 = metadata !{i32 494, i32 0, metadata !161, null}
!291 = metadata !{metadata !"int", metadata !235}
!292 = metadata !{i32 495, i32 0, metadata !161, null}
!293 = metadata !{i32 496, i32 0, metadata !161, null}
!294 = metadata !{i32 497, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !161, i32 496, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!296 = metadata !{i32 501, i32 0, metadata !295, null}
!297 = metadata !{i32 503, i32 0, metadata !161, null}
!298 = metadata !{i32 510, i32 0, metadata !177, null}
!299 = metadata !{i32 511, i32 0, metadata !177, null}
!300 = metadata !{i32 512, i32 0, metadata !177, null}
!301 = metadata !{i32 513, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !177, i32 512, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!303 = metadata !{i32 515, i32 0, metadata !302, null}
!304 = metadata !{i32 517, i32 0, metadata !177, null}
!305 = metadata !{i32 518, i32 0, metadata !177, null}
!306 = metadata !{i32 519, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !177, i32 518, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!308 = metadata !{i32 522, i32 0, metadata !307, null}
!309 = metadata !{i32 527, i32 0, metadata !161, null}
!310 = metadata !{i32 535, i32 0, metadata !180, null}
!311 = metadata !{i32 536, i32 0, metadata !180, null}
!312 = metadata !{i32 537, i32 0, metadata !180, null}
!313 = metadata !{i32 538, i32 0, metadata !180, null}
!314 = metadata !{i32 539, i32 0, metadata !180, null}
!315 = metadata !{i32 540, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !180, i32 539, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!317 = metadata !{i32 544, i32 0, metadata !316, null}
!318 = metadata !{i32 546, i32 0, metadata !180, null}
!319 = metadata !{i32 547, i32 0, metadata !180, null}
!320 = metadata !{i32 548, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !180, i32 547, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!322 = metadata !{i32 551, i32 0, metadata !321, null}
!323 = metadata !{i32 561, i32 0, metadata !161, null}
!324 = metadata !{i32 564, i32 0, metadata !161, null}
!325 = metadata !{i32 314, i32 0, metadata !136, null}
!326 = metadata !{i32 315, i32 0, metadata !136, null}
!327 = metadata !{i32 318, i32 0, metadata !136, null}
!328 = metadata !{i32 326, i32 0, metadata !136, null}
!329 = metadata !{i32 327, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !136, i32 326, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!331 = metadata !{i32 329, i32 0, metadata !330, null}
!332 = metadata !{i32 336, i32 0, metadata !136, null}
!333 = metadata !{i32 343, i32 0, metadata !136, null}
!334 = metadata !{i32 344, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !136, i32 343, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!336 = metadata !{i32 346, i32 0, metadata !335, null}
!337 = metadata !{i32 348, i32 0, metadata !136, null}
!338 = metadata !{i32 349, i32 0, metadata !136, null}
!339 = metadata !{i32 350, i32 0, metadata !136, null}
!340 = metadata !{i32 351, i32 0, metadata !136, null}
!341 = metadata !{i32 352, i32 0, metadata !136, null}
!342 = metadata !{i32 353, i32 0, metadata !136, null}
!343 = metadata !{i32 360, i32 0, metadata !136, null}
!344 = metadata !{i32 361, i32 0, metadata !136, null}
!345 = metadata !{i32 362, i32 0, metadata !136, null}
!346 = metadata !{i32 363, i32 0, metadata !136, null}
!347 = metadata !{i32 364, i32 0, metadata !136, null}
!348 = metadata !{i32 365, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !136, i32 364, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!350 = metadata !{i32 369, i32 0, metadata !349, null}
!351 = metadata !{i32 371, i32 0, metadata !136, null}
!352 = metadata !{i32 378, i32 0, metadata !157, null}
!353 = metadata !{i32 379, i32 0, metadata !157, null}
!354 = metadata !{i32 380, i32 0, metadata !157, null}
!355 = metadata !{i32 381, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !157, i32 380, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!357 = metadata !{i32 383, i32 0, metadata !356, null}
!358 = metadata !{i32 385, i32 0, metadata !157, null}
!359 = metadata !{i32 386, i32 0, metadata !157, null}
!360 = metadata !{i32 387, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !157, i32 386, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!362 = metadata !{i32 390, i32 0, metadata !361, null}
!363 = metadata !{i32 395, i32 0, metadata !136, null}
!364 = metadata !{i32 403, i32 0, metadata !160, null}
!365 = metadata !{i32 404, i32 0, metadata !160, null}
!366 = metadata !{i32 405, i32 0, metadata !160, null}
!367 = metadata !{i32 406, i32 0, metadata !160, null}
!368 = metadata !{i32 407, i32 0, metadata !160, null}
!369 = metadata !{i32 408, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !160, i32 407, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!371 = metadata !{i32 412, i32 0, metadata !370, null}
!372 = metadata !{i32 414, i32 0, metadata !160, null}
!373 = metadata !{i32 415, i32 0, metadata !160, null}
!374 = metadata !{i32 416, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !160, i32 415, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!376 = metadata !{i32 419, i32 0, metadata !375, null}
!377 = metadata !{i32 429, i32 0, metadata !136, null}
!378 = metadata !{i32 432, i32 0, metadata !136, null}
!379 = metadata !{i32 99, i32 0, metadata !110, null}
!380 = metadata !{i32 100, i32 0, metadata !110, null}
!381 = metadata !{i32 104, i32 0, metadata !110, null}
!382 = metadata !{i32 105, i32 0, metadata !110, null}
!383 = metadata !{i32 114, i32 0, metadata !110, null}
!384 = metadata !{i32 115, i32 0, metadata !385, null}
!385 = metadata !{i32 786443, metadata !1, metadata !110, i32 114, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!386 = metadata !{i32 117, i32 0, metadata !385, null}
!387 = metadata !{i32 124, i32 0, metadata !110, null}
!388 = metadata !{i32 130, i32 0, metadata !110, null}
!389 = metadata !{i32 131, i32 0, metadata !390, null}
!390 = metadata !{i32 786443, metadata !1, metadata !110, i32 130, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!391 = metadata !{i32 133, i32 0, metadata !390, null}
!392 = metadata !{i32 141, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !110, i32 140, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!394 = metadata !{i32 142, i32 0, metadata !393, null}
!395 = metadata !{i32 143, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !393, i32 142, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!397 = metadata !{i32 145, i32 0, metadata !396, null}
!398 = metadata !{i32 147, i32 0, metadata !393, null}
!399 = metadata !{i32 153, i32 0, metadata !110, null}
!400 = metadata !{i32 154, i32 0, metadata !110, null}
!401 = metadata !{i32 155, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !110, i32 154, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!403 = metadata !{i32 157, i32 0, metadata !402, null}
!404 = metadata !{i32 159, i32 0, metadata !110, null}
!405 = metadata !{i32 160, i32 0, metadata !110, null}
!406 = metadata !{i32 161, i32 0, metadata !110, null}
!407 = metadata !{i32 162, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !1, metadata !110, i32 161, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!409 = metadata !{i32 164, i32 0, metadata !408, null}
!410 = metadata !{i32 171, i32 0, metadata !110, null}
!411 = metadata !{i32 172, i32 0, metadata !110, null}
!412 = metadata !{i32 173, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !110, i32 172, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!414 = metadata !{i32 174, i32 0, metadata !413, null}
!415 = metadata !{i32 182, i32 0, metadata !110, null}
!416 = metadata !{i32 183, i32 0, metadata !110, null}
!417 = metadata !{i32 184, i32 0, metadata !110, null}
!418 = metadata !{i32 186, i32 0, metadata !110, null}
!419 = metadata !{i32 187, i32 0, metadata !110, null}
!420 = metadata !{i32 188, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !110, i32 187, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!422 = metadata !{i32 189, i32 0, metadata !421, null}
!423 = metadata !{i32 190, i32 0, metadata !421, null}
!424 = metadata !{i32 191, i32 0, metadata !110, null}
!425 = metadata !{i32 197, i32 0, metadata !110, null}
!426 = metadata !{i32 198, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !110, i32 198, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!428 = metadata !{i32 205, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !1, metadata !430, i32 204, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!430 = metadata !{i32 786443, metadata !1, metadata !427, i32 198, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!431 = metadata !{i32 206, i32 0, metadata !429, null}
!432 = metadata !{i32 207, i32 0, metadata !433, null}
!433 = metadata !{i32 786443, metadata !1, metadata !429, i32 206, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!434 = metadata !{i32 210, i32 0, metadata !433, null}
!435 = metadata !{i32 211, i32 0, metadata !433, null}
!436 = metadata !{i32 212, i32 0, metadata !437, null}
!437 = metadata !{i32 786443, metadata !1, metadata !433, i32 211, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!438 = metadata !{i32 213, i32 0, metadata !437, null}
!439 = metadata !{i32 216, i32 0, metadata !429, null}
!440 = metadata !{i32 222, i32 0, metadata !430, null}
!441 = metadata !{i32 223, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !430, i32 222, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!443 = metadata !{i32 226, i32 0, metadata !442, null}
!444 = metadata !{i32 227, i32 0, metadata !442, null}
!445 = metadata !{i32 228, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !442, i32 227, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!447 = metadata !{i32 229, i32 0, metadata !446, null}
!448 = metadata !{i32 238, i32 0, metadata !430, null}
!449 = metadata !{i32 239, i32 0, metadata !430, null}
!450 = metadata !{i32 240, i32 0, metadata !430, null}
!451 = metadata !{i32 241, i32 0, metadata !430, null}
!452 = metadata !{i32 242, i32 0, metadata !453, null}
!453 = metadata !{i32 786443, metadata !1, metadata !430, i32 241, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!454 = metadata !{i32 243, i32 0, metadata !453, null}
!455 = metadata !{i32 245, i32 0, metadata !430, null}
!456 = metadata !{i32 246, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !430, i32 245, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!458 = metadata !{i32 247, i32 0, metadata !457, null}
!459 = metadata !{i32 248, i32 0, metadata !457, null}
!460 = metadata !{i32 249, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !457, i32 249, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!462 = metadata !{i32 250, i32 0, metadata !461, null}
!463 = metadata !{i32 251, i32 0, metadata !461, null}
!464 = metadata !{i32 252, i32 0, metadata !457, null}
!465 = metadata !{i32 259, i32 0, metadata !430, null}
!466 = metadata !{i32 262, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !430, i32 261, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!468 = metadata !{i32 269, i32 0, metadata !430, null}
!469 = metadata !{i32 260, i32 0, metadata !470, null}
!470 = metadata !{i32 786443, metadata !1, metadata !430, i32 259, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!471 = metadata !{i32 270, i32 0, metadata !430, null}
!472 = metadata !{i32 271, i32 0, metadata !430, null}
!473 = metadata !{i32 278, i32 0, metadata !110, null}
!474 = metadata !{i32 284, i32 0, metadata !110, null}
!475 = metadata !{i32 285, i32 0, metadata !110, null}
!476 = metadata !{i32 286, i32 0, metadata !477, null}
!477 = metadata !{i32 786443, metadata !1, metadata !110, i32 285, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!478 = metadata !{i32 287, i32 0, metadata !477, null}
!479 = metadata !{i32 293, i32 0, metadata !110, null}
!480 = metadata !{i32 294, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !110, i32 293, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!482 = metadata !{i32 298, i32 0, metadata !481, null}
!483 = metadata !{i32 300, i32 0, metadata !110, null}
!484 = metadata !{i32 585, i32 0, metadata !181, null}
!485 = metadata !{i32 586, i32 0, metadata !181, null}
!486 = metadata !{i32 595, i32 0, metadata !181, null}
!487 = metadata !{i32 596, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !181, i32 595, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!489 = metadata !{i32 598, i32 0, metadata !488, null}
!490 = metadata !{i32 600, i32 0, metadata !181, null}
!491 = metadata !{i32 601, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !181, i32 600, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!493 = metadata !{i32 603, i32 0, metadata !492, null}
!494 = metadata !{i32 610, i32 0, metadata !181, null}
!495 = metadata !{i32 611, i32 0, metadata !181, null}
!496 = metadata !{i32 612, i32 0, metadata !181, null}
!497 = metadata !{i32 613, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !181, i32 612, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!499 = metadata !{i32 614, i32 0, metadata !500, null}
!500 = metadata !{i32 786443, metadata !1, metadata !498, i32 613, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!501 = metadata !{i32 615, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !500, i32 614, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!503 = metadata !{i32 617, i32 0, metadata !502, null}
!504 = metadata !{i32 618, i32 0, metadata !502, null}
!505 = metadata !{i32 619, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !500, i32 618, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!507 = metadata !{i32 620, i32 0, metadata !506, null}
!508 = metadata !{i32 622, i32 0, metadata !498, null}
!509 = metadata !{i32 623, i32 0, metadata !510, null}
!510 = metadata !{i32 786443, metadata !1, metadata !498, i32 622, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!511 = metadata !{i32 624, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !510, i32 623, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!513 = metadata !{i32 626, i32 0, metadata !512, null}
!514 = metadata !{i32 627, i32 0, metadata !512, null}
!515 = metadata !{i32 628, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !510, i32 627, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!517 = metadata !{i32 629, i32 0, metadata !516, null}
!518 = metadata !{i32 632, i32 0, metadata !519, null}
!519 = metadata !{i32 786443, metadata !1, metadata !498, i32 631, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!520 = metadata !{i32 633, i32 0, metadata !521, null}
!521 = metadata !{i32 786443, metadata !1, metadata !519, i32 632, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!522 = metadata !{i32 635, i32 0, metadata !521, null}
!523 = metadata !{i32 636, i32 0, metadata !521, null}
!524 = metadata !{i32 637, i32 0, metadata !525, null}
!525 = metadata !{i32 786443, metadata !1, metadata !519, i32 636, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!526 = metadata !{i32 638, i32 0, metadata !525, null}
!527 = metadata !{i32 642, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !1, metadata !181, i32 641, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!529 = metadata !{i32 643, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !528, i32 642, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!531 = metadata !{i32 645, i32 0, metadata !530, null}
!532 = metadata !{i32 646, i32 0, metadata !530, null}
!533 = metadata !{i32 647, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !1, metadata !528, i32 646, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!535 = metadata !{i32 648, i32 0, metadata !534, null}
!536 = metadata !{i32 651, i32 0, metadata !181, null}
!537 = metadata !{i32 770, i32 0, metadata !195, null}
!538 = metadata !{i32 771, i32 0, metadata !195, null}
!539 = metadata !{i32 774, i32 0, metadata !195, null}
!540 = metadata !{i32 780, i32 0, metadata !195, null}
!541 = metadata !{i32 781, i32 0, metadata !542, null}
!542 = metadata !{i32 786443, metadata !1, metadata !195, i32 780, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!543 = metadata !{i32 783, i32 0, metadata !542, null}
!544 = metadata !{i32 785, i32 0, metadata !195, null}
!545 = metadata !{i32 786, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !195, i32 785, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!547 = metadata !{i32 788, i32 0, metadata !546, null}
!548 = metadata !{i32 795, i32 0, metadata !195, null}
!549 = metadata !{i32 796, i32 0, metadata !195, null}
!550 = metadata !{i32 797, i32 0, metadata !195, null}
!551 = metadata !{i32 798, i32 0, metadata !195, null}
!552 = metadata !{i32 799, i32 0, metadata !195, null}
!553 = metadata !{i32 800, i32 0, metadata !195, null}
!554 = metadata !{i32 801, i32 0, metadata !195, null}
!555 = metadata !{i32 802, i32 0, metadata !195, null}
!556 = metadata !{i32 803, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !1, metadata !195, i32 802, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!558 = metadata !{i32 805, i32 0, metadata !557, null}
!559 = metadata !{i32 812, i32 0, metadata !195, null}
!560 = metadata !{i32 813, i32 0, metadata !195, null}
!561 = metadata !{i32 814, i32 0, metadata !562, null}
!562 = metadata !{i32 786443, metadata !1, metadata !195, i32 813, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!563 = metadata !{i32 818, i32 0, metadata !562, null}
!564 = metadata !{i32 825, i32 0, metadata !195, null}
!565 = metadata !{i32 826, i32 0, metadata !566, null}
!566 = metadata !{i32 786443, metadata !1, metadata !195, i32 825, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!567 = metadata !{i32 827, i32 0, metadata !568, null}
!568 = metadata !{i32 786443, metadata !1, metadata !566, i32 826, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!569 = metadata !{i32 831, i32 0, metadata !568, null}
!570 = metadata !{i32 833, i32 0, metadata !566, null}
!571 = metadata !{i32 835, i32 0, metadata !566, null}
!572 = metadata !{i32 836, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !566, i32 835, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!574 = metadata !{i32 839, i32 0, metadata !573, null}
!575 = metadata !{i32 847, i32 0, metadata !195, null}
!576 = metadata !{i32 848, i32 0, metadata !577, null}
!577 = metadata !{i32 786443, metadata !1, metadata !195, i32 847, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!578 = metadata !{i32 849, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !577, i32 848, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!580 = metadata !{i32 853, i32 0, metadata !579, null}
!581 = metadata !{i32 855, i32 0, metadata !577, null}
!582 = metadata !{i32 856, i32 0, metadata !577, null}
!583 = metadata !{i32 857, i32 0, metadata !584, null}
!584 = metadata !{i32 786443, metadata !1, metadata !577, i32 856, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!585 = metadata !{i32 862, i32 0, metadata !584, null}
!586 = metadata !{i32 866, i32 0, metadata !195, null}
!587 = metadata !{i32 665, i32 0, metadata !189, null}
!588 = metadata !{i32 666, i32 0, metadata !189, null}
!589 = metadata !{i32 668, i32 0, metadata !189, null}
!590 = metadata !{i32 674, i32 0, metadata !189, null}
!591 = metadata !{i32 675, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !1, metadata !189, i32 674, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!593 = metadata !{i32 677, i32 0, metadata !592, null}
!594 = metadata !{i32 679, i32 0, metadata !189, null}
!595 = metadata !{i32 680, i32 0, metadata !596, null}
!596 = metadata !{i32 786443, metadata !1, metadata !189, i32 679, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!597 = metadata !{i32 682, i32 0, metadata !596, null}
!598 = metadata !{i32 689, i32 0, metadata !189, null}
!599 = metadata !{i32 692, i32 0, metadata !189, null}
!600 = metadata !{i32 693, i32 0, metadata !601, null}
!601 = metadata !{i32 786443, metadata !1, metadata !189, i32 692, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!602 = metadata !{i32 695, i32 0, metadata !601, null}
!603 = metadata !{i32 702, i32 0, metadata !189, null}
!604 = metadata !{i32 703, i32 0, metadata !189, null}
!605 = metadata !{i32 704, i32 0, metadata !606, null}
!606 = metadata !{i32 786443, metadata !1, metadata !189, i32 703, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!607 = metadata !{i32 708, i32 0, metadata !606, null}
!608 = metadata !{i32 715, i32 0, metadata !189, null}
!609 = metadata !{i32 716, i32 0, metadata !610, null}
!610 = metadata !{i32 786443, metadata !1, metadata !189, i32 715, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!611 = metadata !{i32 717, i32 0, metadata !612, null}
!612 = metadata !{i32 786443, metadata !1, metadata !610, i32 716, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!613 = metadata !{i32 721, i32 0, metadata !612, null}
!614 = metadata !{i32 723, i32 0, metadata !610, null}
!615 = metadata !{i32 724, i32 0, metadata !610, null}
!616 = metadata !{i32 725, i32 0, metadata !617, null}
!617 = metadata !{i32 786443, metadata !1, metadata !610, i32 724, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!618 = metadata !{i32 729, i32 0, metadata !617, null}
!619 = metadata !{i32 737, i32 0, metadata !189, null}
!620 = metadata !{i32 738, i32 0, metadata !621, null}
!621 = metadata !{i32 786443, metadata !1, metadata !189, i32 737, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!622 = metadata !{i32 739, i32 0, metadata !623, null}
!623 = metadata !{i32 786443, metadata !1, metadata !621, i32 738, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!624 = metadata !{i32 743, i32 0, metadata !623, null}
!625 = metadata !{i32 745, i32 0, metadata !621, null}
!626 = metadata !{i32 746, i32 0, metadata !621, null}
!627 = metadata !{i32 747, i32 0, metadata !628, null}
!628 = metadata !{i32 786443, metadata !1, metadata !621, i32 746, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!629 = metadata !{i32 752, i32 0, metadata !628, null}
!630 = metadata !{i32 756, i32 0, metadata !189, null}
!631 = metadata !{i32 880, i32 0, metadata !201, null}
!632 = metadata !{i32 881, i32 0, metadata !201, null}
!633 = metadata !{i32 883, i32 0, metadata !201, null}
!634 = metadata !{i32 885, i32 0, metadata !201, null}
!635 = metadata !{i32 886, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !201, i32 885, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!637 = metadata !{i32 888, i32 0, metadata !636, null}
!638 = metadata !{i32 895, i32 0, metadata !201, null}
!639 = metadata !{i32 896, i32 0, metadata !640, null}
!640 = metadata !{i32 786443, metadata !1, metadata !201, i32 895, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!641 = metadata !{i32 899, i32 0, metadata !640, null}
!642 = metadata !{i32 901, i32 0, metadata !201, null}
!643 = metadata !{i32 907, i32 0, metadata !644, null}
!644 = metadata !{i32 786443, metadata !1, metadata !201, i32 901, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!645 = metadata !{i32 908, i32 0, metadata !644, null}
!646 = metadata !{i32 909, i32 0, metadata !644, null}
!647 = metadata !{i32 910, i32 0, metadata !648, null}
!648 = metadata !{i32 786443, metadata !1, metadata !644, i32 909, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!649 = metadata !{i32 914, i32 0, metadata !648, null}
!650 = metadata !{i32 922, i32 0, metadata !201, null}
!651 = metadata !{i32 923, i32 0, metadata !652, null}
!652 = metadata !{i32 786443, metadata !1, metadata !201, i32 922, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!653 = metadata !{i32 924, i32 0, metadata !654, null}
!654 = metadata !{i32 786443, metadata !1, metadata !652, i32 923, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!655 = metadata !{i32 928, i32 0, metadata !654, null}
!656 = metadata !{i32 930, i32 0, metadata !652, null}
!657 = metadata !{i32 931, i32 0, metadata !652, null}
!658 = metadata !{i32 932, i32 0, metadata !652, null}
!659 = metadata !{i32 933, i32 0, metadata !660, null}
!660 = metadata !{i32 786443, metadata !1, metadata !652, i32 932, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!661 = metadata !{i32 937, i32 0, metadata !660, null}
!662 = metadata !{i32 945, i32 0, metadata !201, null}
!663 = metadata !{i32 946, i32 0, metadata !664, null}
!664 = metadata !{i32 786443, metadata !1, metadata !201, i32 945, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!665 = metadata !{i32 947, i32 0, metadata !666, null}
!666 = metadata !{i32 786443, metadata !1, metadata !664, i32 946, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!667 = metadata !{i32 951, i32 0, metadata !666, null}
!668 = metadata !{i32 953, i32 0, metadata !664, null}
!669 = metadata !{i32 954, i32 0, metadata !664, null}
!670 = metadata !{i32 955, i32 0, metadata !664, null}
!671 = metadata !{i32 956, i32 0, metadata !672, null}
!672 = metadata !{i32 786443, metadata !1, metadata !664, i32 955, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!673 = metadata !{i32 961, i32 0, metadata !672, null}
!674 = metadata !{i32 965, i32 0, metadata !201, null}
!675 = metadata !{i32 979, i32 0, metadata !207, null}
!676 = metadata !{i32 980, i32 0, metadata !207, null}
!677 = metadata !{i32 988, i32 0, metadata !207, null}
!678 = metadata !{i32 989, i32 0, metadata !679, null}
!679 = metadata !{i32 786443, metadata !1, metadata !207, i32 988, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!680 = metadata !{i32 991, i32 0, metadata !679, null}
!681 = metadata !{i32 993, i32 0, metadata !207, null}
!682 = metadata !{i32 995, i32 0, metadata !683, null}
!683 = metadata !{i32 786443, metadata !1, metadata !207, i32 993, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!684 = metadata !{i32 996, i32 0, metadata !683, null}
!685 = metadata !{i32 998, i32 0, metadata !683, null}
!686 = metadata !{i32 999, i32 0, metadata !683, null}
!687 = metadata !{i32 1001, i32 0, metadata !683, null}
!688 = metadata !{i32 1002, i32 0, metadata !683, null}
!689 = metadata !{i32 1004, i32 0, metadata !683, null}
!690 = metadata !{i32 1006, i32 0, metadata !683, null}
!691 = metadata !{i32 1008, i32 0, metadata !683, null}
!692 = metadata !{i32 1010, i32 0, metadata !683, null}
!693 = metadata !{i32 1012, i32 0, metadata !207, null}
!694 = metadata !{i32 1013, i32 0, metadata !207, null}
!695 = metadata !{i32 1014, i32 0, metadata !207, null}
!696 = metadata !{i32 1017, i32 0, metadata !207, null}
!697 = metadata !{i32 1018, i32 0, metadata !207, null}
!698 = metadata !{i32 1019, i32 0, metadata !207, null}
!699 = metadata !{i32 1021, i32 0, metadata !207, null}
!700 = metadata !{i32 1022, i32 0, metadata !207, null}
!701 = metadata !{i32 1023, i32 0, metadata !207, null}
!702 = metadata !{i32 1024, i32 0, metadata !207, null}
!703 = metadata !{i32 1025, i32 0, metadata !704, null}
!704 = metadata !{i32 786443, metadata !1, metadata !207, i32 1024, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!705 = metadata !{i32 1028, i32 0, metadata !207, null}
!706 = metadata !{i32 1033, i32 0, metadata !207, null}
!707 = metadata !{i32 1035, i32 0, metadata !207, null}
!708 = metadata !{i32 1048, i32 0, metadata !212, null}
!709 = metadata !{i32 1049, i32 0, metadata !212, null}
!710 = metadata !{i32 1051, i32 0, metadata !212, null}
!711 = metadata !{i32 1052, i32 0, metadata !212, null}
!712 = metadata !{i32 1058, i32 0, metadata !212, null}
!713 = metadata !{i32 1059, i32 0, metadata !714, null}
!714 = metadata !{i32 786443, metadata !1, metadata !212, i32 1058, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!715 = metadata !{i32 1061, i32 0, metadata !714, null}
!716 = metadata !{i32 1063, i32 0, metadata !212, null}
!717 = metadata !{i32 1064, i32 0, metadata !212, null}
!718 = metadata !{i32 1065, i32 0, metadata !212, null}
!719 = metadata !{i32 1067, i32 0, metadata !720, null}
!720 = metadata !{i32 786443, metadata !1, metadata !212, i32 1065, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!721 = metadata !{i32 1068, i32 0, metadata !722, null}
!722 = metadata !{i32 786443, metadata !1, metadata !720, i32 1068, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!723 = metadata !{i32 1069, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !1, metadata !722, i32 1068, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!725 = metadata !{i32 1070, i32 0, metadata !724, null}
!726 = metadata !{i32 1071, i32 0, metadata !727, null}
!727 = metadata !{i32 786443, metadata !1, metadata !724, i32 1071, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!728 = metadata !{i32 1072, i32 0, metadata !729, null}
!729 = metadata !{i32 786443, metadata !1, metadata !727, i32 1071, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!730 = metadata !{i32 1073, i32 0, metadata !729, null}
!731 = metadata !{i32 1074, i32 0, metadata !732, null}
!732 = metadata !{i32 786443, metadata !1, metadata !729, i32 1073, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!733 = metadata !{i32 1075, i32 0, metadata !732, null}
!734 = metadata !{i32 1080, i32 0, metadata !720, null}
!735 = metadata !{i32 1081, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !720, i32 1081, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!737 = metadata !{i32 1082, i32 0, metadata !738, null}
!738 = metadata !{i32 786443, metadata !1, metadata !736, i32 1081, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!739 = metadata !{i32 1083, i32 0, metadata !738, null}
!740 = metadata !{i32 1084, i32 0, metadata !741, null}
!741 = metadata !{i32 786443, metadata !1, metadata !738, i32 1084, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!742 = metadata !{i32 1085, i32 0, metadata !743, null}
!743 = metadata !{i32 786443, metadata !1, metadata !741, i32 1084, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!744 = metadata !{i32 1086, i32 0, metadata !743, null}
!745 = metadata !{i32 1087, i32 0, metadata !746, null}
!746 = metadata !{i32 786443, metadata !1, metadata !743, i32 1086, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!747 = metadata !{i32 1088, i32 0, metadata !746, null}
!748 = metadata !{i32 1093, i32 0, metadata !720, null}
!749 = metadata !{i32 1094, i32 0, metadata !750, null}
!750 = metadata !{i32 786443, metadata !1, metadata !720, i32 1094, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!751 = metadata !{i32 1095, i32 0, metadata !752, null}
!752 = metadata !{i32 786443, metadata !1, metadata !750, i32 1094, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!753 = metadata !{i32 1096, i32 0, metadata !752, null}
!754 = metadata !{i32 1097, i32 0, metadata !755, null}
!755 = metadata !{i32 786443, metadata !1, metadata !752, i32 1097, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!756 = metadata !{i32 1098, i32 0, metadata !757, null}
!757 = metadata !{i32 786443, metadata !1, metadata !755, i32 1097, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!758 = metadata !{i32 1099, i32 0, metadata !757, null}
!759 = metadata !{i32 1100, i32 0, metadata !760, null}
!760 = metadata !{i32 786443, metadata !1, metadata !757, i32 1099, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!761 = metadata !{i32 1101, i32 0, metadata !760, null}
!762 = metadata !{i32 1106, i32 0, metadata !720, null}
!763 = metadata !{i32 1107, i32 0, metadata !764, null}
!764 = metadata !{i32 786443, metadata !1, metadata !720, i32 1107, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!765 = metadata !{i32 1108, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !764, i32 1107, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!767 = metadata !{i32 1109, i32 0, metadata !766, null}
!768 = metadata !{i32 1110, i32 0, metadata !769, null}
!769 = metadata !{i32 786443, metadata !1, metadata !766, i32 1110, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!770 = metadata !{i32 1111, i32 0, metadata !771, null}
!771 = metadata !{i32 786443, metadata !1, metadata !769, i32 1110, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!772 = metadata !{i32 1112, i32 0, metadata !771, null}
!773 = metadata !{i32 1113, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !771, i32 1112, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_IO.c]
!775 = metadata !{i32 1114, i32 0, metadata !774, null}
!776 = metadata !{i32 1119, i32 0, metadata !212, null}
