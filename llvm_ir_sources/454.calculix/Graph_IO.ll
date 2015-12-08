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
  %cmp = icmp eq %struct._Graph* %graph, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._Graph* %graph, i8* %fn) #6
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #7
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 7
  br i1 %cmp5, label %if.then7, label %if.else41

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -30064771072
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str79, i64 0, i64 0)) #7
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #6
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #6
  br label %return

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @Graph_readFromBinaryFile(%struct._Graph* %graph, %struct._IO_FILE* %call12) #8
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0)) #7
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #6
  br label %return

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @Graph_readFromFormattedFile(%struct._Graph* %graph, %struct._IO_FILE* %call28) #8
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([106 x i8]* @.str4, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn, i8* getelementptr inbounds ([8 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0)) #6
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([106 x i8]* @.str4, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn, i8* getelementptr inbounds ([8 x i8]* @.str79, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0)) #6
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_readFromBinaryFile(%struct._Graph* %graph, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [6 x i32], align 16
  %cmp = icmp eq %struct._Graph* %graph, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str19, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp) #6
  br label %return

if.end:                                           ; preds = %entry
  call void @Graph_clearData(%struct._Graph* %graph) #6
  %1 = bitcast [6 x i32]* %itemp to i8*
  %call2 = call i64 @fread(i8* %1, i64 4, i64 6, %struct._IO_FILE* %fp) #6
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp eq i32 %conv, 6
  br i1 %cmp3, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([65 x i8]* @.str20, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %conv, i32 6) #6
  br label %return

if.end7:                                          ; preds = %if.end
  %3 = bitcast [6 x i32]* %itemp to i64*
  %4 = load i64* %3, align 16
  %5 = trunc i64 %4 to i32
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %arrayidx9 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 2
  %8 = bitcast i32* %arrayidx9 to i64*
  %9 = load i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %arrayidx11 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 4
  %13 = bitcast i32* %arrayidx11 to i64*
  %14 = load i64* %13, align 16
  %15 = trunc i64 %14 to i32
  %16 = lshr i64 %14, 32
  %17 = trunc i64 %16 to i32
  %call13 = call %struct._IVL* @IVL_new() #6
  call void @IVL_setDefaultFields(%struct._IVL* %call13) #6
  %type14 = getelementptr inbounds %struct._IVL* %call13, i64 0, i32 0
  store i32 1, i32* %type14, align 4, !tbaa !3
  %call15 = call i32 @IVL_readFromBinaryFile(%struct._IVL* %call13, %struct._IO_FILE* %fp) #6
  %cmp16 = icmp eq i32 %call15, 1
  br i1 %cmp16, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end7
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([116 x i8]* @.str21, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call15, %struct._IVL* %call13, %struct._IO_FILE* %fp) #6
  br label %return

if.end20:                                         ; preds = %if.end7
  %rem = srem i32 %5, 2
  %cmp21 = icmp eq i32 %rem, 1
  br i1 %cmp21, label %if.then23, label %if.end40

if.then23:                                        ; preds = %if.end20
  %add = add nsw i32 %10, %7
  %call24 = call i32* @IVinit2(i32 %add) #6
  %19 = bitcast i32* %call24 to i8*
  %conv25 = sext i32 %add to i64
  %call26 = call i64 @fread(i8* %19, i64 4, i64 %conv25, %struct._IO_FILE* %fp) #6
  %conv27 = trunc i64 %call26 to i32
  %cmp28 = icmp eq i32 %conv27, %add
  br i1 %cmp28, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.then23
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([65 x i8]* @.str20, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %conv27, i32 %add) #6
  br label %return

if.end33:                                         ; preds = %if.then23
  %call34 = call i32 @IVsum(i32 %add, i32* %call24) #6
  %cmp35 = icmp eq i32 %call34, %15
  br i1 %cmp35, label %if.end40, label %if.then37

if.then37:                                        ; preds = %if.end33
  %21 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([79 x i8]* @.str22, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %15, i32 %call34) #6
  br label %return

if.end40:                                         ; preds = %if.end20, %if.end33
  %vwghts.0 = phi i32* [ %call24, %if.end33 ], [ null, %if.end20 ]
  %cmp41 = icmp sgt i32 %5, 2
  br i1 %cmp41, label %if.then43, label %if.end60

if.then43:                                        ; preds = %if.end40
  %call45 = call %struct._IVL* @IVL_new() #6
  call void @IVL_setDefaultFields(%struct._IVL* %call45) #6
  %type46 = getelementptr inbounds %struct._IVL* %call45, i64 0, i32 0
  store i32 1, i32* %type46, align 4, !tbaa !3
  %call47 = call i32 @IVL_readFromBinaryFile(%struct._IVL* %call45, %struct._IO_FILE* %fp) #6
  %cmp48 = icmp eq i32 %call47, 1
  br i1 %cmp48, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.then43
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([118 x i8]* @.str23, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call47, %struct._IVL* %call45, %struct._IO_FILE* %fp) #6
  br label %return

if.end52:                                         ; preds = %if.then43
  %call53 = call i32 @IVL_sum(%struct._IVL* %call45) #6
  %cmp54 = icmp eq i32 %call53, %17
  br i1 %cmp54, label %if.end60, label %if.then56

if.then56:                                        ; preds = %if.end52
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([83 x i8]* @.str24, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %17, i32 %call53) #6
  br label %return

if.end60:                                         ; preds = %if.end40, %if.end52
  %ewghtIVL.0 = phi %struct._IVL* [ %call45, %if.end52 ], [ null, %if.end40 ]
  call void @Graph_init2(%struct._Graph* %graph, i32 %5, i32 %7, i32 %10, i32 %12, i32 %15, i32 %17, %struct._IVL* %call13, i32* %vwghts.0, %struct._IVL* %ewghtIVL.0) #6
  br label %return

return:                                           ; preds = %if.end60, %if.then56, %if.then50, %if.then37, %if.then30, %if.then18, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then18 ], [ 0, %if.then30 ], [ 0, %if.then37 ], [ 0, %if.then50 ], [ 0, %if.then56 ], [ 1, %if.end60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_readFromFormattedFile(%struct._Graph* %graph, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [6 x i32], align 16
  %cmp = icmp eq %struct._Graph* %graph, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str13, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp) #6
  br label %return

if.end:                                           ; preds = %entry
  call void @Graph_clearData(%struct._Graph* %graph) #6
  %arraydecay = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 0
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 6, i32* %arraydecay) #6
  %cmp3 = icmp eq i32 %call2, 6
  br i1 %cmp3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([68 x i8]* @.str14, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call2, i32 6) #6
  br label %return

if.end6:                                          ; preds = %if.end
  %2 = bitcast [6 x i32]* %itemp to i64*
  %3 = load i64* %2, align 16
  %4 = trunc i64 %3 to i32
  %5 = lshr i64 %3, 32
  %6 = trunc i64 %5 to i32
  %arrayidx8 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 2
  %7 = bitcast i32* %arrayidx8 to i64*
  %8 = load i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  %arrayidx10 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 4
  %12 = bitcast i32* %arrayidx10 to i64*
  %13 = load i64* %12, align 16
  %14 = trunc i64 %13 to i32
  %15 = lshr i64 %13, 32
  %16 = trunc i64 %15 to i32
  %call12 = call %struct._IVL* @IVL_new() #6
  call void @IVL_setDefaultFields(%struct._IVL* %call12) #6
  %type13 = getelementptr inbounds %struct._IVL* %call12, i64 0, i32 0
  store i32 1, i32* %type13, align 4, !tbaa !3
  %call14 = call i32 @IVL_readFromFormattedFile(%struct._IVL* %call12, %struct._IO_FILE* %fp) #6
  %cmp15 = icmp eq i32 %call14, 1
  br i1 %cmp15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end6
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([122 x i8]* @.str15, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call14, %struct._IVL* %call12, %struct._IO_FILE* %fp) #6
  br label %return

if.end18:                                         ; preds = %if.end6
  %rem = srem i32 %4, 2
  %cmp19 = icmp eq i32 %rem, 1
  br i1 %cmp19, label %if.then20, label %if.end32

if.then20:                                        ; preds = %if.end18
  %add = add nsw i32 %9, %6
  %call21 = call i32* @IVinit2(i32 %add) #6
  %call22 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %add, i32* %call21) #6
  %cmp23 = icmp eq i32 %call22, %add
  br i1 %cmp23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.then20
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([68 x i8]* @.str14, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call22, i32 %add) #6
  br label %return

if.end26:                                         ; preds = %if.then20
  %call27 = call i32 @IVsum(i32 %add, i32* %call21) #6
  %cmp28 = icmp eq i32 %call27, %14
  br i1 %cmp28, label %if.end32, label %if.then29

if.then29:                                        ; preds = %if.end26
  %19 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([82 x i8]* @.str16, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %14, i32 %call27) #6
  br label %return

if.end32:                                         ; preds = %if.end18, %if.end26
  %vwghts.0 = phi i32* [ %call21, %if.end26 ], [ null, %if.end18 ]
  %cmp33 = icmp sgt i32 %4, 1
  br i1 %cmp33, label %if.then34, label %if.end49

if.then34:                                        ; preds = %if.end32
  %call36 = call %struct._IVL* @IVL_new() #6
  call void @IVL_setDefaultFields(%struct._IVL* %call36) #6
  %type37 = getelementptr inbounds %struct._IVL* %call36, i64 0, i32 0
  store i32 1, i32* %type37, align 4, !tbaa !3
  %call38 = call i32 @IVL_readFromFormattedFile(%struct._IVL* %call36, %struct._IO_FILE* %fp) #6
  %cmp39 = icmp eq i32 %call38, 1
  br i1 %cmp39, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.then34
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([124 x i8]* @.str17, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call38, %struct._IVL* %call36, %struct._IO_FILE* %fp) #6
  br label %return

if.end42:                                         ; preds = %if.then34
  %call43 = call i32 @IVL_sum(%struct._IVL* %call36) #6
  %cmp44 = icmp eq i32 %call43, %16
  br i1 %cmp44, label %if.end49, label %if.then45

if.then45:                                        ; preds = %if.end42
  %21 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([86 x i8]* @.str18, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %16, i32 %call43) #6
  br label %return

if.end49:                                         ; preds = %if.end32, %if.end42
  %ewghtIVL.0 = phi %struct._IVL* [ %call36, %if.end42 ], [ null, %if.end32 ]
  call void @Graph_init2(%struct._Graph* %graph, i32 %4, i32 %6, i32 %9, i32 %11, i32 %14, i32 %16, %struct._IVL* %call12, i32* %vwghts.0, %struct._IVL* %ewghtIVL.0) #6
  br label %return

return:                                           ; preds = %if.end49, %if.then45, %if.then40, %if.then29, %if.then24, %if.then16, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then16 ], [ 0, %if.then24 ], [ 0, %if.then29 ], [ 0, %if.then40 ], [ 0, %if.then45 ], [ 1, %if.end49 ]
  ret i32 %retval.0
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
  %0 = getelementptr inbounds [100000 x i8]* %string, i64 0, i64 0
  call void @llvm.lifetime.start(i64 100000, i8* %0) #3
  %cmp = icmp eq %struct._Graph* %graph, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._Graph* %graph, i8* %fn) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @Graph_clearData(%struct._Graph* %graph) #6
  %call2 = call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp3 = icmp eq %struct._IO_FILE* %call2, null
  br i1 %cmp3, label %if.then4, label %do.body

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([66 x i8]* @.str5, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #6
  br label %cleanup

do.body:                                          ; preds = %if.end, %do.cond
  %call7 = call i8* @fgets(i8* %0, i32 100000, %struct._IO_FILE* %call2) #6
  %cmp8 = icmp eq i8* %call7, null
  br i1 %cmp8, label %if.then9, label %do.cond

if.then9:                                         ; preds = %do.body
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([74 x i8]* @.str6, i64 0, i64 0), i8* %fn) #6
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %4 = load i8* %0, align 16, !tbaa !1
  %cmp12 = icmp eq i8 %4, 37
  br i1 %cmp12, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %format, align 4, !tbaa !3
  %call15 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i32* %nvtx, i32* %nedges, i32* %format) #6
  %cmp16 = icmp slt i32 %call15, 2
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %do.end
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([76 x i8]* @.str8, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #6
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %6 = load i32* %format, align 4, !tbaa !3
  %rem = srem i32 %6, 10
  %cmp21 = icmp sgt i32 %rem, 0
  %conv22 = zext i1 %cmp21 to i32
  %div = sdiv i32 %6, 10
  %rem23 = srem i32 %div, 10
  %cmp24 = icmp sgt i32 %rem23, 0
  %conv25 = zext i1 %cmp24 to i32
  %cmp26 = icmp sgt i32 %6, 99
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end20
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), %struct._Graph* %graph, i8* %fn) #6
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %8 = load i32* %nvtx, align 4, !tbaa !3
  %call31 = call i32* @IVinit(i32 %8, i32 -1) #6
  br i1 %cmp21, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end30
  %9 = load i32* %nvtx, align 4, !tbaa !3
  %call33 = call i32* @IVinit(i32 %9, i32 -1) #6
  br label %if.end34

if.end34:                                         ; preds = %if.end30, %if.then32
  %weights.0 = phi i32* [ %call33, %if.then32 ], [ null, %if.end30 ]
  %10 = load i32* %nedges, align 4, !tbaa !3
  %mul = shl nsw i32 %10, 1
  %11 = load i32* %nvtx, align 4, !tbaa !3
  %add = add nsw i32 %mul, %11
  store i32 %add, i32* %nedges, align 4, !tbaa !3
  %mul35 = shl nuw nsw i32 %conv22, 1
  %add36 = or i32 %conv25, %mul35
  call void @Graph_init1(%struct._Graph* %graph, i32 %add36, i32 %11, i32 0, i32 %add, i32 1, i32 1) #6
  %adjIVL37 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6
  %12 = load %struct._IVL** %adjIVL37, align 8, !tbaa !0
  br i1 %cmp21, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end34
  %ewghtIVL40 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 8
  %13 = load %struct._IVL** %ewghtIVL40, align 8, !tbaa !0
  store i32 0, i32* %weights.0, align 4, !tbaa !3
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end34
  %ewghtIVL.0 = phi %struct._IVL* [ %13, %if.then39 ], [ undef, %if.end34 ]
  br i1 %cmp24, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end42
  %vwghts45 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7
  %14 = load i32** %vwghts45, align 8, !tbaa !0
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end42
  %vwghtsINT.0 = phi i32* [ %14, %if.then44 ], [ undef, %if.end42 ]
  %15 = load i32* %nvtx, align 4, !tbaa !3
  %cmp47200 = icmp sgt i32 %15, 0
  br i1 %cmp47200, label %do.body49.preheader, label %for.end

do.body49.preheader:                              ; preds = %if.end46, %if.end110
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %if.end110 ], [ 0, %if.end46 ]
  %k.0202 = phi i32 [ %add111, %if.end110 ], [ 0, %if.end46 ]
  %v.0201 = phi i32 [ %inc112, %if.end110 ], [ 0, %if.end46 ]
  br label %do.body49

do.body49:                                        ; preds = %do.body49.preheader, %do.cond61
  %call51 = call i8* @fgets(i8* %0, i32 100000, %struct._IO_FILE* %call2) #6
  %cmp52 = icmp eq i8* %call51, null
  br i1 %cmp52, label %if.then54, label %do.cond61

if.then54:                                        ; preds = %do.body49
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([88 x i8]* @.str10, i64 0, i64 0), i32 %v.0201, i8* %fn) #6
  call void @IVfree(i32* %call31) #6
  %cmp56 = icmp eq i32* %weights.0, null
  br i1 %cmp56, label %cleanup, label %if.then58

if.then58:                                        ; preds = %if.then54
  call void @IVfree(i32* %weights.0) #6
  br label %cleanup

do.cond61:                                        ; preds = %do.body49
  %17 = load i8* %0, align 16, !tbaa !1
  %cmp64 = icmp eq i8 %17, 37
  br i1 %cmp64, label %do.body49, label %do.end66

do.end66:                                         ; preds = %do.cond61
  %call68 = call i64 @strlen(i8* %0) #7
  %cmp69 = icmp eq i64 %call68, 99999
  br i1 %cmp69, label %if.then71, label %if.end77

if.then71:                                        ; preds = %do.end66
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([110 x i8]* @.str11, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #6
  call void @IVfree(i32* %call31) #6
  %cmp73 = icmp eq i32* %weights.0, null
  br i1 %cmp73, label %cleanup, label %if.then75

if.then75:                                        ; preds = %if.then71
  call void @IVfree(i32* %weights.0) #6
  br label %cleanup

if.end77:                                         ; preds = %do.end66
  store i8* %0, i8** %s1, align 8, !tbaa !0
  br i1 %cmp24, label %if.then80, label %if.end85

if.then80:                                        ; preds = %if.end77
  %call82 = call i64 @strtol(i8* %0, i8** %s1, i32 10) #6
  %conv83 = trunc i64 %call82 to i32
  %arrayidx84 = getelementptr inbounds i32* %vwghtsINT.0, i64 %indvars.iv207
  store i32 %conv83, i32* %arrayidx84, align 4, !tbaa !3
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %if.end77
  %19 = trunc i64 %indvars.iv207 to i32
  store i32 %19, i32* %call31, align 4, !tbaa !3
  br i1 %cmp21, label %if.then88, label %while.cond.preheader

if.then88:                                        ; preds = %if.end85
  store i32 0, i32* %weights.0, align 4, !tbaa !3
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end85, %if.then88
  %20 = load i8** %s1, align 8, !tbaa !0
  %call91191 = call i64 @strtol(i8* %20, i8** %s2, i32 10) #6
  %conv92192 = trunc i64 %call91191 to i32
  %cmp93193 = icmp sgt i32 %conv92192, 0
  br i1 %cmp93193, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %if.end103
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end103 ], [ 1, %while.cond.preheader ]
  %conv92195 = phi i32 [ %conv92, %if.end103 ], [ %conv92192, %while.cond.preheader ]
  %vsize.0194 = phi i32 [ %inc, %if.end103 ], [ 1, %while.cond.preheader ]
  %dec = add nsw i32 %conv92195, -1
  %arrayidx96 = getelementptr inbounds i32* %call31, i64 %indvars.iv
  store i32 %dec, i32* %arrayidx96, align 4, !tbaa !3
  %21 = load i8** %s2, align 8, !tbaa !0
  br i1 %cmp21, label %if.then98, label %if.end103

if.then98:                                        ; preds = %while.body
  %call99 = call i64 @strtol(i8* %21, i8** %s2, i32 10) #6
  %conv100 = trunc i64 %call99 to i32
  %arrayidx102 = getelementptr inbounds i32* %weights.0, i64 %indvars.iv
  store i32 %conv100, i32* %arrayidx102, align 4, !tbaa !3
  %22 = load i8** %s2, align 8, !tbaa !0
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %while.body
  %23 = phi i8* [ %22, %if.then98 ], [ %21, %while.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %vsize.0194, 1
  %call91 = call i64 @strtol(i8* %23, i8** %s2, i32 10) #6
  %conv92 = trunc i64 %call91 to i32
  %cmp93 = icmp sgt i32 %conv92, 0
  br i1 %cmp93, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %if.end103
  store i8* %23, i8** %s1, align 8, !tbaa !0
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader
  %vsize.0.lcssa = phi i32 [ %inc, %while.cond.while.end_crit_edge ], [ 1, %while.cond.preheader ]
  br i1 %cmp21, label %if.then109, label %if.end107

if.end107:                                        ; preds = %while.end
  call void @IVqsortUp(i32 %vsize.0.lcssa, i32* %call31) #6
  call void @IVL_setList(%struct._IVL* %12, i32 %19, i32 %vsize.0.lcssa, i32* %call31) #6
  br label %if.end110

if.then109:                                       ; preds = %while.end
  call void @IV2qsortUp(i32 %vsize.0.lcssa, i32* %call31, i32* %weights.0) #6
  call void @IVL_setList(%struct._IVL* %12, i32 %19, i32 %vsize.0.lcssa, i32* %call31) #6
  call void @IVL_setList(%struct._IVL* %ewghtIVL.0, i32 %19, i32 %vsize.0.lcssa, i32* %weights.0) #6
  br label %if.end110

if.end110:                                        ; preds = %if.end107, %if.then109
  %add111 = add nsw i32 %vsize.0.lcssa, %k.0202
  %indvars.iv.next208 = add i64 %indvars.iv207, 1
  %inc112 = add nsw i32 %v.0201, 1
  %24 = load i32* %nvtx, align 4, !tbaa !3
  %25 = trunc i64 %indvars.iv.next208 to i32
  %cmp47 = icmp slt i32 %25, %24
  br i1 %cmp47, label %do.body49.preheader, label %for.end

for.end:                                          ; preds = %if.end110, %if.end46
  %k.0.lcssa = phi i32 [ 0, %if.end46 ], [ %add111, %if.end110 ]
  %v.0.lcssa = phi i32 [ 0, %if.end46 ], [ %inc112, %if.end110 ]
  %call113 = call i32 @fclose(%struct._IO_FILE* %call2) #6
  call void @IVfree(i32* %call31) #6
  %cmp114 = icmp eq i32* %weights.0, null
  br i1 %cmp114, label %if.end117, label %if.then116

if.then116:                                       ; preds = %for.end
  call void @IVfree(i32* %weights.0) #6
  br label %if.end117

if.end117:                                        ; preds = %for.end, %if.then116
  %26 = load i32* %nedges, align 4, !tbaa !3
  %cmp118 = icmp eq i32 %k.0.lcssa, %26
  %27 = load i32* %nvtx, align 4, !tbaa !3
  %cmp121 = icmp eq i32 %v.0.lcssa, %27
  %or.cond209 = and i1 %cmp118, %cmp121
  br i1 %or.cond209, label %cleanup, label %if.then123

if.then123:                                       ; preds = %if.end117
  %28 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call124 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([126 x i8]* @.str12, i64 0, i64 0), i8* %fn, i32 %k.0.lcssa, i32 %26, i32 %v.0.lcssa, i32 %27) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end117, %if.then75, %if.then71, %if.then58, %if.then54, %if.then123, %if.then28, %if.then18, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then9 ], [ 0, %if.then18 ], [ 0, %if.then28 ], [ 0, %if.then123 ], [ 0, %if.then54 ], [ 0, %if.then58 ], [ 0, %if.then71 ], [ 0, %if.then75 ], [ 1, %if.end117 ]
  call void @llvm.lifetime.end(i64 100000, i8* %0) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare void @Graph_clearData(%struct._Graph*) #4

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: optsize
declare void @Graph_init1(%struct._Graph*, i32, i32, i32, i32, i32, i32) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: nounwind optsize
declare i64 @strtol(i8*, i8** nocapture, i32) #1

; Function Attrs: optsize
declare void @IV2qsortUp(i32, i32*, i32*) #4

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #4

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #4

; Function Attrs: optsize
declare %struct._IVL* @IVL_new() #4

; Function Attrs: optsize
declare void @IVL_setDefaultFields(%struct._IVL*) #4

; Function Attrs: optsize
declare i32 @IVL_readFromFormattedFile(%struct._IVL*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32* @IVinit2(i32) #4

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #4

; Function Attrs: optsize
declare i32 @IVL_sum(%struct._IVL*) #4

; Function Attrs: optsize
declare void @Graph_init2(%struct._Graph*, i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL*) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @IVL_readFromBinaryFile(%struct._IVL*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_writeToFile(%struct._Graph* %graph, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._Graph* %graph, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str25, i64 0, i64 0), %struct._Graph* %graph, i8* %fn) #6
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %2 = icmp ugt i32 %1, 3
  br i1 %2, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([57 x i8]* @.str26, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i32 %1) #6
  br label %return

if.end9:                                          ; preds = %if.end
  %call10 = tail call i64 @strlen(i8* %fn) #7
  %conv = trunc i64 %call10 to i32
  %cmp13 = icmp sgt i32 %conv, 7
  br i1 %cmp13, label %if.then15, label %if.else57

if.then15:                                        ; preds = %if.end9
  %sub = shl i64 %call10, 32
  %sext = add i64 %sub, -30064771072
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call16 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str79, i64 0, i64 0)) #7
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.else28

if.then19:                                        ; preds = %if.then15
  %call20 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str27, i64 0, i64 0)) #6
  %cmp21 = icmp eq %struct._IO_FILE* %call20, null
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then19
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([60 x i8]* @.str28, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #6
  br label %return

if.else:                                          ; preds = %if.then19
  %call25 = tail call i32 @Graph_writeToBinaryFile(%struct._Graph* %graph, %struct._IO_FILE* %call20) #8
  %call26 = tail call i32 @fclose(%struct._IO_FILE* %call20) #6
  br label %return

if.else28:                                        ; preds = %if.then15
  %call32 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([8 x i8]* @.str78, i64 0, i64 0)) #7
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.else45

if.then35:                                        ; preds = %if.else28
  %call36 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str29, i64 0, i64 0)) #6
  %cmp37 = icmp eq %struct._IO_FILE* %call36, null
  br i1 %cmp37, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.then35
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([60 x i8]* @.str28, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #6
  br label %return

if.else41:                                        ; preds = %if.then35
  %call42 = tail call i32 @Graph_writeToFormattedFile(%struct._Graph* %graph, %struct._IO_FILE* %call36) #8
  %call43 = tail call i32 @fclose(%struct._IO_FILE* %call36) #6
  br label %return

if.else45:                                        ; preds = %if.else28
  %call46 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0)) #6
  %cmp47 = icmp eq %struct._IO_FILE* %call46, null
  br i1 %cmp47, label %if.then49, label %if.else51

if.then49:                                        ; preds = %if.else45
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([60 x i8]* @.str28, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #6
  br label %return

if.else51:                                        ; preds = %if.else45
  %call52 = tail call i32 @Graph_writeForHumanEye(%struct._Graph* %graph, %struct._IO_FILE* %call46) #8
  %call53 = tail call i32 @fclose(%struct._IO_FILE* %call46) #6
  br label %return

if.else57:                                        ; preds = %if.end9
  %call58 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str30, i64 0, i64 0)) #6
  %cmp59 = icmp eq %struct._IO_FILE* %call58, null
  br i1 %cmp59, label %if.then61, label %if.else63

if.then61:                                        ; preds = %if.else57
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call62 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([60 x i8]* @.str28, i64 0, i64 0), %struct._Graph* %graph, i8* %fn, i8* %fn) #6
  br label %return

if.else63:                                        ; preds = %if.else57
  %call64 = tail call i32 @Graph_writeForHumanEye(%struct._Graph* %graph, %struct._IO_FILE* %call58) #8
  %call65 = tail call i32 @fclose(%struct._IO_FILE* %call58) #6
  br label %return

return:                                           ; preds = %if.else41, %if.then39, %if.else51, %if.then49, %if.then23, %if.else, %if.else63, %if.then61, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then23 ], [ %call25, %if.else ], [ 0, %if.then39 ], [ %call42, %if.else41 ], [ 0, %if.then49 ], [ %call52, %if.else51 ], [ 0, %if.then61 ], [ %call64, %if.else63 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_writeToBinaryFile(%struct._Graph* %graph, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [6 x i32], align 16
  %cmp = icmp eq %struct._Graph* %graph, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str40, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp) #6
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %2 = icmp ugt i32 %1, 3
  br i1 %2, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([63 x i8]* @.str41, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %1) #6
  br label %return

if.end9:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 0
  store i32 %1, i32* %arrayidx, align 16, !tbaa !3
  %nvtx = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1
  %4 = load i32* %nvtx, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 1
  store i32 %4, i32* %arrayidx11, align 4, !tbaa !3
  %nvbnd = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 2
  %5 = load i32* %nvbnd, align 4, !tbaa !3
  %arrayidx12 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 2
  store i32 %5, i32* %arrayidx12, align 8, !tbaa !3
  %nedges = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 3
  %6 = load i32* %nedges, align 4, !tbaa !3
  %arrayidx13 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 3
  store i32 %6, i32* %arrayidx13, align 4, !tbaa !3
  %totvwght = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 4
  %7 = load i32* %totvwght, align 4, !tbaa !3
  %arrayidx14 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 4
  store i32 %7, i32* %arrayidx14, align 16, !tbaa !3
  %totewght = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 5
  %8 = load i32* %totewght, align 4, !tbaa !3
  %arrayidx15 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 5
  store i32 %8, i32* %arrayidx15, align 4, !tbaa !3
  %9 = bitcast [6 x i32]* %itemp to i8*
  %call16 = call i64 @fwrite(i8* %9, i64 4, i64 6, %struct._IO_FILE* %fp) #6
  %conv = trunc i64 %call16 to i32
  %cmp17 = icmp eq i32 %conv, 6
  br i1 %cmp17, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end9
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([74 x i8]* @.str42, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %conv, i32 6) #6
  br label %return

if.end21:                                         ; preds = %if.end9
  %adjIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6
  %11 = load %struct._IVL** %adjIVL, align 8, !tbaa !0
  %call22 = call i32 @IVL_writeToBinaryFile(%struct._IVL* %11, %struct._IO_FILE* %fp) #6
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %13 = load %struct._IVL** %adjIVL, align 8, !tbaa !0
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([138 x i8]* @.str43, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call22, %struct._IVL* %13, %struct._IO_FILE* %fp) #6
  br label %return

if.end28:                                         ; preds = %if.end21
  %14 = load i32* %type, align 4, !tbaa !3
  %rem = srem i32 %14, 2
  %cmp30 = icmp eq i32 %rem, 1
  br i1 %cmp30, label %if.then32, label %if.end50

if.then32:                                        ; preds = %if.end28
  %vwghts = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7
  %15 = load i32** %vwghts, align 8, !tbaa !0
  %cmp33 = icmp eq i32* %15, null
  br i1 %cmp33, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.then32
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([90 x i8]* @.str44, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %14) #6
  br label %return

if.end38:                                         ; preds = %if.then32
  %17 = bitcast i32* %15 to i8*
  %18 = load i32* %nvtx, align 4, !tbaa !3
  %19 = load i32* %nvbnd, align 4, !tbaa !3
  %add = add nsw i32 %19, %18
  %conv42 = sext i32 %add to i64
  %call43 = call i64 @fwrite(i8* %17, i64 4, i64 %conv42, %struct._IO_FILE* %fp) #6
  %conv44 = trunc i64 %call43 to i32
  %cmp45 = icmp slt i32 %conv44, 0
  br i1 %cmp45, label %if.then47, label %if.end50thread-pre-split

if.then47:                                        ; preds = %if.end38
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([87 x i8]* @.str45, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %conv44) #6
  br label %return

if.end50thread-pre-split:                         ; preds = %if.end38
  %.pr = load i32* %type, align 4, !tbaa !3
  br label %if.end50

if.end50:                                         ; preds = %if.end50thread-pre-split, %if.end28
  %21 = phi i32 [ %.pr, %if.end50thread-pre-split ], [ %14, %if.end28 ]
  %cmp52 = icmp sgt i32 %21, 1
  br i1 %cmp52, label %if.then54, label %return

if.then54:                                        ; preds = %if.end50
  %ewghtIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 8
  %22 = load %struct._IVL** %ewghtIVL, align 8, !tbaa !0
  %cmp55 = icmp eq %struct._IVL* %22, null
  br i1 %cmp55, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.then54
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([92 x i8]* @.str46, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %21) #6
  br label %return

if.end60:                                         ; preds = %if.then54
  %call62 = call i32 @IVL_writeToBinaryFile(%struct._IVL* %22, %struct._IO_FILE* %fp) #6
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then65, label %return

if.then65:                                        ; preds = %if.end60
  %24 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %25 = load %struct._IVL** %ewghtIVL, align 8, !tbaa !0
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([140 x i8]* @.str47, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call62, %struct._IVL* %25, %struct._IO_FILE* %fp) #6
  br label %return

return:                                           ; preds = %if.end50, %if.end60, %if.then65, %if.then57, %if.then47, %if.then35, %if.then25, %if.then19, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then19 ], [ 0, %if.then25 ], [ 0, %if.then35 ], [ 0, %if.then47 ], [ 0, %if.then57 ], [ 0, %if.then65 ], [ 1, %if.end60 ], [ 1, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_writeToFormattedFile(%struct._Graph* %graph, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._Graph* %graph, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str31, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp) #6
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %2 = icmp ugt i32 %1, 3
  br i1 %2, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([66 x i8]* @.str32, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %1) #6
  br label %return

if.end9:                                          ; preds = %if.end
  %nvtx = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1
  %4 = load i32* %nvtx, align 4, !tbaa !3
  %nvbnd = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 2
  %5 = load i32* %nvbnd, align 4, !tbaa !3
  %nedges = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 3
  %6 = load i32* %nedges, align 4, !tbaa !3
  %totvwght = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 4
  %7 = load i32* %totvwght, align 4, !tbaa !3
  %totewght = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 5
  %8 = load i32* %totewght, align 4, !tbaa !3
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str33, i64 0, i64 0), i32 %1, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #6
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([88 x i8]* @.str34, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call11) #6
  br label %return

if.end15:                                         ; preds = %if.end9
  %adjIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6
  %10 = load %struct._IVL** %adjIVL, align 8, !tbaa !0
  %call16 = call i32 @IVL_writeToFormattedFile(%struct._IVL* %10, %struct._IO_FILE* %fp) #6
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end15
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %12 = load %struct._IVL** %adjIVL, align 8, !tbaa !0
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([144 x i8]* @.str35, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call16, %struct._IVL* %12, %struct._IO_FILE* %fp) #6
  br label %return

if.end21:                                         ; preds = %if.end15
  %13 = load i32* %type, align 4, !tbaa !3
  %rem = srem i32 %13, 2
  %cmp23 = icmp eq i32 %rem, 1
  br i1 %cmp23, label %if.then24, label %if.end38

if.then24:                                        ; preds = %if.end21
  %vwghts = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7
  %14 = load i32** %vwghts, align 8, !tbaa !0
  %cmp25 = icmp eq i32* %14, null
  br i1 %cmp25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.then24
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([93 x i8]* @.str36, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %13) #6
  br label %return

if.end29:                                         ; preds = %if.then24
  %16 = load i32* %nvtx, align 4, !tbaa !3
  %17 = load i32* %nvbnd, align 4, !tbaa !3
  %add = add nsw i32 %17, %16
  %call33 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %add, i32* %14, i32 80, i32* %ierr) #6
  %18 = load i32* %ierr, align 4, !tbaa !3
  %cmp34 = icmp slt i32 %18, 0
  br i1 %cmp34, label %if.then35, label %if.end38thread-pre-split

if.then35:                                        ; preds = %if.end29
  %19 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([92 x i8]* @.str37, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %18) #6
  br label %return

if.end38thread-pre-split:                         ; preds = %if.end29
  %.pr = load i32* %type, align 4, !tbaa !3
  br label %if.end38

if.end38:                                         ; preds = %if.end38thread-pre-split, %if.end21
  %20 = phi i32 [ %.pr, %if.end38thread-pre-split ], [ %13, %if.end21 ]
  %cmp40 = icmp sgt i32 %20, 1
  br i1 %cmp40, label %if.then41, label %return

if.then41:                                        ; preds = %if.end38
  %ewghtIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 8
  %21 = load %struct._IVL** %ewghtIVL, align 8, !tbaa !0
  %cmp42 = icmp eq %struct._IVL* %21, null
  br i1 %cmp42, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.then41
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([95 x i8]* @.str38, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %20) #6
  br label %return

if.end46:                                         ; preds = %if.then41
  %call48 = call i32 @IVL_writeToFormattedFile(%struct._IVL* %21, %struct._IO_FILE* %fp) #6
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %return

if.then50:                                        ; preds = %if.end46
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %24 = load %struct._IVL** %ewghtIVL, align 8, !tbaa !0
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([146 x i8]* @.str39, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call48, %struct._IVL* %24, %struct._IO_FILE* %fp) #6
  br label %return

return:                                           ; preds = %if.end38, %if.end46, %if.then50, %if.then43, %if.then35, %if.then26, %if.then18, %if.then13, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 0, %if.then13 ], [ 0, %if.then18 ], [ 0, %if.then26 ], [ 0, %if.then35 ], [ 0, %if.then43 ], [ 0, %if.then50 ], [ 1, %if.end46 ], [ 1, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_writeForHumanEye(%struct._Graph* %graph, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._Graph* %graph, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str48, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp) #6
  call void @exit(i32 -1) #9
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 @Graph_writeStats(%struct._Graph* %graph, %struct._IO_FILE* %fp) #8
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([94 x i8]* @.str49, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 0, %struct._Graph* %graph, %struct._IO_FILE* %fp) #6
  br label %return

if.end6:                                          ; preds = %if.end
  %adjIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6
  %2 = load %struct._IVL** %adjIVL, align 8, !tbaa !0
  %cmp7 = icmp eq %struct._IVL* %2, null
  br i1 %cmp7, label %if.end17, label %if.then8

if.then8:                                         ; preds = %if.end6
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str50, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %fp) #3
  %4 = load %struct._IVL** %adjIVL, align 8, !tbaa !0
  %call11 = call i32 @IVL_writeForHumanEye(%struct._IVL* %4, %struct._IO_FILE* %fp) #6
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.then8
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %6 = load %struct._IVL** %adjIVL, align 8, !tbaa !0
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([136 x i8]* @.str51, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call11, %struct._IVL* %6, %struct._IO_FILE* %fp) #6
  br label %return

if.end17:                                         ; preds = %if.end6, %if.then8
  %type = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 0
  %7 = load i32* %type, align 4, !tbaa !3
  %rem = srem i32 %7, 2
  %cmp18 = icmp eq i32 %rem, 1
  br i1 %cmp18, label %if.then19, label %if.end32

if.then19:                                        ; preds = %if.end17
  %vwghts = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7
  %8 = load i32** %vwghts, align 8, !tbaa !0
  %cmp20 = icmp eq i32* %8, null
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.then19
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([89 x i8]* @.str52, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %7) #6
  br label %return

if.end24:                                         ; preds = %if.then19
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str53, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %fp) #3
  %nvtx = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1
  %11 = load i32* %nvtx, align 4, !tbaa !3
  %nvbnd = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 2
  %12 = load i32* %nvbnd, align 4, !tbaa !3
  %add = add nsw i32 %12, %11
  %13 = load i32** %vwghts, align 8, !tbaa !0
  %call27 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %add, i32* %13, i32 80, i32* %ierr) #6
  %14 = load i32* %ierr, align 4, !tbaa !3
  %cmp28 = icmp slt i32 %14, 0
  br i1 %cmp28, label %if.then29, label %if.end32thread-pre-split

if.then29:                                        ; preds = %if.end24
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([88 x i8]* @.str54, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %14) #6
  br label %return

if.end32thread-pre-split:                         ; preds = %if.end24
  %.pr = load i32* %type, align 4, !tbaa !3
  br label %if.end32

if.end32:                                         ; preds = %if.end32thread-pre-split, %if.end17
  %16 = phi i32 [ %.pr, %if.end32thread-pre-split ], [ %7, %if.end17 ]
  %cmp34 = icmp sgt i32 %16, 1
  br i1 %cmp34, label %if.then35, label %return

if.then35:                                        ; preds = %if.end32
  %ewghtIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 8
  %17 = load %struct._IVL** %ewghtIVL, align 8, !tbaa !0
  %cmp36 = icmp eq %struct._IVL* %17, null
  br i1 %cmp36, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.then35
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([91 x i8]* @.str55, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %16) #6
  br label %return

if.end40:                                         ; preds = %if.then35
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str56, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %fp) #3
  %20 = load %struct._IVL** %ewghtIVL, align 8, !tbaa !0
  %call43 = call i32 @IVL_writeForHumanEye(%struct._IVL* %20, %struct._IO_FILE* %fp) #6
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.then45, label %return

if.then45:                                        ; preds = %if.end40
  %21 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %22 = load %struct._IVL** %ewghtIVL, align 8, !tbaa !0
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([138 x i8]* @.str57, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %call43, %struct._IVL* %22, %struct._IO_FILE* %fp) #6
  br label %return

return:                                           ; preds = %if.end32, %if.end40, %if.then45, %if.then37, %if.then29, %if.then21, %if.then13, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %if.then13 ], [ 0, %if.then21 ], [ 0, %if.then29 ], [ 0, %if.then37 ], [ 0, %if.then45 ], [ 1, %if.end40 ], [ 1, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @IVL_writeToFormattedFile(%struct._IVL*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #4

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @IVL_writeToBinaryFile(%struct._IVL*, %struct._IO_FILE*) #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_writeStats(%struct._Graph* %graph, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._Graph* %graph, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str58, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp) #6
  tail call void @exit(i32 -1) #9
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str59, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([43 x i8]* @.str60, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([40 x i8]* @.str61, i64 0, i64 0)) #6
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([53 x i8]* @.str62, i64 0, i64 0)) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([68 x i8]* @.str63, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %1) #6
  br label %return

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  %rc.0 = phi i32 [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb ]
  %cmp11 = icmp slt i32 %rc.0, 0
  br i1 %cmp11, label %IO_error, label %if.end13

if.end13:                                         ; preds = %sw.epilog
  %call14 = tail call i32 @fflush(%struct._IO_FILE* %fp) #6
  %nvtx = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1
  %3 = load i32* %nvtx, align 4, !tbaa !3
  %nvbnd = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 2
  %4 = load i32* %nvbnd, align 4, !tbaa !3
  %nedges = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 3
  %5 = load i32* %nedges, align 4, !tbaa !3
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([55 x i8]* @.str64, i64 0, i64 0), i32 %3, i32 %4, i32 %5) #6
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %IO_error, label %if.end18

if.end18:                                         ; preds = %if.end13
  %call19 = tail call i32 @fflush(%struct._IO_FILE* %fp) #6
  %vwghts = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 7
  %6 = load i32** %vwghts, align 8, !tbaa !0
  %cmp20 = icmp eq i32* %6, null
  %7 = load i32* %nvtx, align 4, !tbaa !3
  br i1 %cmp20, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.end18
  %8 = load i32* %nvbnd, align 4, !tbaa !3
  br label %cond.end34

cond.end:                                         ; preds = %if.end18
  %call23 = tail call i32 @IVsum(i32 %7, i32* %6) #6
  %.pr = load i32** %vwghts, align 8, !tbaa !0
  %cmp26 = icmp eq i32* %.pr, null
  %9 = load i32* %nvbnd, align 4, !tbaa !3
  br i1 %cmp26, label %cond.end34, label %cond.true27

cond.true27:                                      ; preds = %cond.end
  %10 = load i32* %nvtx, align 4, !tbaa !3
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i32* %.pr, i64 %idx.ext
  %call31 = tail call i32 @IVsum(i32 %9, i32* %add.ptr) #6
  br label %cond.end34

cond.end34:                                       ; preds = %cond.end.thread, %cond.end, %cond.true27
  %cond83 = phi i32 [ %call23, %cond.true27 ], [ %call23, %cond.end ], [ %7, %cond.end.thread ]
  %cond35 = phi i32 [ %call31, %cond.true27 ], [ %9, %cond.end ], [ %8, %cond.end.thread ]
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([55 x i8]* @.str65, i64 0, i64 0), i32 %cond83, i32 %cond35) #6
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %IO_error, label %if.end39

if.end39:                                         ; preds = %cond.end34
  %11 = load i32* %type, align 4, !tbaa !3
  %cmp41 = icmp sgt i32 %11, 1
  br i1 %cmp41, label %if.end44, label %return

if.end44:                                         ; preds = %if.end39
  %totewght = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 5
  %12 = load i32* %totewght, align 4, !tbaa !3
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str66, i64 0, i64 0), i32 %12) #6
  %cmp45 = icmp slt i32 %call43, 0
  br i1 %cmp45, label %IO_error, label %return

IO_error:                                         ; preds = %if.end44, %cond.end34, %if.end13, %sw.epilog
  %rc.2 = phi i32 [ %rc.0, %sw.epilog ], [ %call15, %if.end13 ], [ %call36, %cond.end34 ], [ %call43, %if.end44 ]
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call48 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([72 x i8]* @.str67, i64 0, i64 0), %struct._Graph* %graph, %struct._IO_FILE* %fp, i32 %rc.2) #6
  br label %return

return:                                           ; preds = %if.end39, %if.end44, %IO_error, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %IO_error ], [ 1, %if.end44 ], [ 1, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @IVL_writeForHumanEye(%struct._IVL*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @Graph_writeToMetisFile(%struct._Graph* %g, %struct._IO_FILE* %fp) #0 {
entry:
  %vsize = alloca i32, align 4
  %vewghts = alloca i32*, align 8
  %vadj = alloca i32*, align 8
  %cmp = icmp eq %struct._Graph* %g, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str68, i64 0, i64 0), %struct._Graph* %g, %struct._IO_FILE* %fp) #6
  call void @exit(i32 -1) #9
  unreachable

if.end:                                           ; preds = %entry
  %nvtx2 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %1 = load i32* %nvtx2, align 4, !tbaa !3
  %nedges = getelementptr inbounds %struct._Graph* %g, i64 0, i32 3
  %2 = load i32* %nedges, align 4, !tbaa !3
  %sub = sub nsw i32 %2, %1
  %div = sdiv i32 %sub, 2
  %type = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !3
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
    i32 2, label %sw.bb43
    i32 3, label %sw.bb69
  ]

sw.bb:                                            ; preds = %if.end
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str69, i64 0, i64 0), i32 %1, i32 %div) #6
  %cmp4183 = icmp sgt i32 %1, 0
  br i1 %cmp4183, label %for.body, label %sw.epilog

for.body:                                         ; preds = %sw.bb, %for.inc14
  %v.0184 = phi i32 [ %inc15, %for.inc14 ], [ 0, %sw.bb ]
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str70, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp) #3
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %v.0184, i32* %vsize, i32** %vadj) #6
  %5 = load i32* %vsize, align 4, !tbaa !3
  %cmp7181 = icmp sgt i32 %5, 0
  br i1 %cmp7181, label %for.body8, label %for.inc14

for.body8:                                        ; preds = %for.inc, %for.body
  %6 = phi i32 [ %5, %for.body ], [ %9, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.inc ]
  %7 = load i32** %vadj, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %7, i64 %indvars.iv
  %8 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp9 = icmp ne i32 %8, %v.0184
  %cmp10 = icmp slt i32 %8, %1
  %or.cond177 = and i1 %cmp9, %cmp10
  br i1 %or.cond177, label %if.then11, label %for.inc

if.then11:                                        ; preds = %for.body8
  %add = add nsw i32 %8, 1
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str71, i64 0, i64 0), i32 %add) #6
  %.pre = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body8, %if.then11
  %9 = phi i32 [ %6, %for.body8 ], [ %.pre, %if.then11 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp7 = icmp slt i32 %10, %9
  br i1 %cmp7, label %for.body8, label %for.inc14

for.inc14:                                        ; preds = %for.inc, %for.body
  %inc15 = add nsw i32 %v.0184, 1
  %exitcond = icmp eq i32 %inc15, %1
  br i1 %exitcond, label %sw.epilog, label %for.body

sw.bb17:                                          ; preds = %if.end
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str72, i64 0, i64 0), i32 %1, i32 %div) #6
  %cmp20188 = icmp sgt i32 %1, 0
  br i1 %cmp20188, label %for.body21.lr.ph, label %sw.epilog

for.body21.lr.ph:                                 ; preds = %sw.bb17
  %vwghts = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7
  br label %for.body21

for.body21:                                       ; preds = %for.inc40, %for.body21.lr.ph
  %indvars.iv202 = phi i64 [ 0, %for.body21.lr.ph ], [ %indvars.iv.next203, %for.inc40 ]
  %11 = load i32** %vwghts, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds i32* %11, i64 %indvars.iv202
  %12 = load i32* %arrayidx23, align 4, !tbaa !3
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i32 %12) #6
  %13 = trunc i64 %indvars.iv202 to i32
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %13, i32* %vsize, i32** %vadj) #6
  %14 = load i32* %vsize, align 4, !tbaa !3
  %cmp26185 = icmp sgt i32 %14, 0
  br i1 %cmp26185, label %for.body27, label %for.inc40

for.body27:                                       ; preds = %for.inc37, %for.body21
  %15 = phi i32 [ %14, %for.body21 ], [ %18, %for.inc37 ]
  %indvars.iv200 = phi i64 [ 0, %for.body21 ], [ %indvars.iv.next201, %for.inc37 ]
  %16 = load i32** %vadj, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds i32* %16, i64 %indvars.iv200
  %17 = load i32* %arrayidx29, align 4, !tbaa !3
  %cmp30 = icmp ne i32 %17, %13
  %cmp32 = icmp slt i32 %17, %1
  %or.cond178 = and i1 %cmp30, %cmp32
  br i1 %or.cond178, label %if.then33, label %for.inc37

if.then33:                                        ; preds = %for.body27
  %add34 = add nsw i32 %17, 1
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str71, i64 0, i64 0), i32 %add34) #6
  %.pre214 = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc37

for.inc37:                                        ; preds = %for.body27, %if.then33
  %18 = phi i32 [ %15, %for.body27 ], [ %.pre214, %if.then33 ]
  %indvars.iv.next201 = add i64 %indvars.iv200, 1
  %19 = trunc i64 %indvars.iv.next201 to i32
  %cmp26 = icmp slt i32 %19, %18
  br i1 %cmp26, label %for.body27, label %for.inc40

for.inc40:                                        ; preds = %for.inc37, %for.body21
  %indvars.iv.next203 = add i64 %indvars.iv202, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next203 to i32
  %exitcond204 = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond204, label %sw.epilog, label %for.body21

sw.bb43:                                          ; preds = %if.end
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str74, i64 0, i64 0), i32 %1, i32 %div) #6
  %cmp46193 = icmp sgt i32 %1, 0
  br i1 %cmp46193, label %for.body47, label %sw.epilog

for.body47:                                       ; preds = %sw.bb43, %for.inc66
  %v.2194 = phi i32 [ %inc67, %for.inc66 ], [ 0, %sw.bb43 ]
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  call void @Graph_adjAndEweights(%struct._Graph* %g, i32 %v.2194, i32* %vsize, i32** %vadj, i32** %vewghts) #6
  %20 = load i32* %vsize, align 4, !tbaa !3
  %cmp50190 = icmp sgt i32 %20, 0
  br i1 %cmp50190, label %for.body51, label %for.inc66

for.body51:                                       ; preds = %for.inc63, %for.body47
  %21 = phi i32 [ %20, %for.body47 ], [ %26, %for.inc63 ]
  %indvars.iv205 = phi i64 [ 0, %for.body47 ], [ %indvars.iv.next206, %for.inc63 ]
  %22 = load i32** %vadj, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i32* %22, i64 %indvars.iv205
  %23 = load i32* %arrayidx53, align 4, !tbaa !3
  %cmp54 = icmp ne i32 %23, %v.2194
  %cmp56 = icmp slt i32 %23, %1
  %or.cond179 = and i1 %cmp54, %cmp56
  br i1 %or.cond179, label %if.then57, label %for.inc63

if.then57:                                        ; preds = %for.body51
  %add58 = add nsw i32 %23, 1
  %24 = load i32** %vewghts, align 8, !tbaa !0
  %arrayidx60 = getelementptr inbounds i32* %24, i64 %indvars.iv205
  %25 = load i32* %arrayidx60, align 4, !tbaa !3
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str76, i64 0, i64 0), i32 %add58, i32 %25) #6
  %.pre215 = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc63

for.inc63:                                        ; preds = %for.body51, %if.then57
  %26 = phi i32 [ %21, %for.body51 ], [ %.pre215, %if.then57 ]
  %indvars.iv.next206 = add i64 %indvars.iv205, 1
  %27 = trunc i64 %indvars.iv.next206 to i32
  %cmp50 = icmp slt i32 %27, %26
  br i1 %cmp50, label %for.body51, label %for.inc66

for.inc66:                                        ; preds = %for.inc63, %for.body47
  %inc67 = add nsw i32 %v.2194, 1
  %exitcond207 = icmp eq i32 %inc67, %1
  br i1 %exitcond207, label %sw.epilog, label %for.body47

sw.bb69:                                          ; preds = %if.end
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str77, i64 0, i64 0), i32 %1, i32 %div) #6
  %cmp72198 = icmp sgt i32 %1, 0
  br i1 %cmp72198, label %for.body73.lr.ph, label %sw.epilog

for.body73.lr.ph:                                 ; preds = %sw.bb69
  %vwghts75 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7
  br label %for.body73

for.body73:                                       ; preds = %for.inc95, %for.body73.lr.ph
  %indvars.iv210 = phi i64 [ 0, %for.body73.lr.ph ], [ %indvars.iv.next211, %for.inc95 ]
  %28 = load i32** %vwghts75, align 8, !tbaa !0
  %arrayidx76 = getelementptr inbounds i32* %28, i64 %indvars.iv210
  %29 = load i32* %arrayidx76, align 4, !tbaa !3
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str73, i64 0, i64 0), i32 %29) #6
  %30 = trunc i64 %indvars.iv210 to i32
  call void @Graph_adjAndEweights(%struct._Graph* %g, i32 %30, i32* %vsize, i32** %vadj, i32** %vewghts) #6
  %31 = load i32* %vsize, align 4, !tbaa !3
  %cmp79195 = icmp sgt i32 %31, 0
  br i1 %cmp79195, label %for.body80, label %for.inc95

for.body80:                                       ; preds = %for.inc92, %for.body73
  %32 = phi i32 [ %31, %for.body73 ], [ %37, %for.inc92 ]
  %indvars.iv208 = phi i64 [ 0, %for.body73 ], [ %indvars.iv.next209, %for.inc92 ]
  %33 = load i32** %vadj, align 8, !tbaa !0
  %arrayidx82 = getelementptr inbounds i32* %33, i64 %indvars.iv208
  %34 = load i32* %arrayidx82, align 4, !tbaa !3
  %cmp83 = icmp ne i32 %34, %30
  %cmp85 = icmp slt i32 %34, %1
  %or.cond180 = and i1 %cmp83, %cmp85
  br i1 %or.cond180, label %if.then86, label %for.inc92

if.then86:                                        ; preds = %for.body80
  %add87 = add nsw i32 %34, 1
  %35 = load i32** %vewghts, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds i32* %35, i64 %indvars.iv208
  %36 = load i32* %arrayidx89, align 4, !tbaa !3
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str76, i64 0, i64 0), i32 %add87, i32 %36) #6
  %.pre216 = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc92

for.inc92:                                        ; preds = %for.body80, %if.then86
  %37 = phi i32 [ %32, %for.body80 ], [ %.pre216, %if.then86 ]
  %indvars.iv.next209 = add i64 %indvars.iv208, 1
  %38 = trunc i64 %indvars.iv.next209 to i32
  %cmp79 = icmp slt i32 %38, %37
  br i1 %cmp79, label %for.body80, label %for.inc95

for.inc95:                                        ; preds = %for.inc92, %for.body73
  %indvars.iv.next211 = add i64 %indvars.iv210, 1
  %lftr.wideiv212 = trunc i64 %indvars.iv.next211 to i32
  %exitcond213 = icmp eq i32 %lftr.wideiv212, %1
  br i1 %exitcond213, label %sw.epilog, label %for.body73

sw.epilog:                                        ; preds = %sw.bb69, %for.inc95, %sw.bb43, %for.inc66, %sw.bb17, %for.inc40, %sw.bb, %for.inc14, %if.end
  ret i32 1
}

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare void @Graph_adjAndEweights(%struct._Graph*, i32, i32*, i32**, i32**) #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
