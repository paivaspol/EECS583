; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [55 x i8] c"\0A fatal error in Graph_compress2(%p,%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A nvtx = %d\0A\00", align 1
@.str3 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A adjIVL is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [79 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A g->type = %d and g->vwghts is NULL\0A\00", align 1
@.str5 = private unnamed_addr constant [81 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A g->type = %d and g->ewghtIVL is NULL\0A\00", align 1
@.str6 = private unnamed_addr constant [61 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A IVmin(cmap) = %d\0A\00", align 1
@.str7 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A AdjIVL is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [81 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A g2->type = %d and g2->vwghts is NULL\0A\00", align 1
@.str9 = private unnamed_addr constant [83 x i8] c"\0A fatal error in Graph_compress(%p,%p,%d)\0A g2->type = %d and g2->ewghtIVL is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Graph* @Graph_compress2(%struct._Graph* %g, %struct._IV* %mapIV, i32 %coarseType) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !56), !dbg !93
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %mapIV}, i64 0, metadata !57), !dbg !94
  tail call void @llvm.dbg.value(metadata !{i32 %coarseType}, i64 0, metadata !58), !dbg !95
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !96
  %cmp1 = icmp eq %struct._IV* %mapIV, null, !dbg !96
  %or.cond = or i1 %cmp, %cmp1, !dbg !96
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !96

lor.lhs.false2:                                   ; preds = %entry
  %nvtx = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !96
  %0 = load i32* %nvtx, align 4, !dbg !96, !tbaa !97
  %call = tail call i32 @IV_size(%struct._IV* %mapIV) #5, !dbg !100
  %cmp3 = icmp ne i32 %0, %call, !dbg !100
  %1 = icmp ugt i32 %coarseType, 3, !dbg !100
  %or.cond32 = or i1 %cmp3, %1, !dbg !100
  br i1 %or.cond32, label %if.then, label %if.end16, !dbg !100

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !101, !tbaa !103
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), %struct._Graph* %g, %struct._IV* %mapIV, i32 %coarseType) #5, !dbg !101
  br i1 %cmp, label %if.end, label %if.then10, !dbg !104

if.then10:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !105, !tbaa !103
  %call11 = tail call i32 @Graph_writeStats(%struct._Graph* %g, %struct._IO_FILE* %3) #5, !dbg !105
  br label %if.end, !dbg !107

if.end:                                           ; preds = %if.then, %if.then10
  br i1 %cmp1, label %if.end15, label %if.then13, !dbg !108

if.then13:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !109, !tbaa !103
  %call14 = tail call i32 @IV_writeStats(%struct._IV* %mapIV, %struct._IO_FILE* %4) #5, !dbg !109
  br label %if.end15, !dbg !111

if.end15:                                         ; preds = %if.end, %if.then13
  tail call void @exit(i32 -1) #6, !dbg !112
  unreachable, !dbg !112

if.end16:                                         ; preds = %lor.lhs.false2
  %call17 = tail call i32* @IV_entries(%struct._IV* %mapIV) #5, !dbg !113
  %call18 = tail call %struct._Graph* @Graph_compress(%struct._Graph* %g, i32* %call17, i32 %coarseType) #7, !dbg !113
  ret %struct._Graph* %call18, !dbg !113
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare i32 @Graph_writeStats(%struct._Graph*, %struct._IO_FILE*) #2

; Function Attrs: optsize
declare i32 @IV_writeStats(%struct._IV*, %struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize uwtable
define %struct._Graph* @Graph_compress(%struct._Graph* %g, i32* %cmap, i32 %coarseType) #0 {
entry:
  %j = alloca i32, align 4
  %jsize = alloca i32, align 4
  %Jsize = alloca i32, align 4
  %jind = alloca i32*, align 8
  %Jind = alloca i32*, align 8
  %jwghts = alloca i32*, align 8
  %Jwghts = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !63), !dbg !114
  call void @llvm.dbg.value(metadata !{i32* %cmap}, i64 0, metadata !64), !dbg !115
  call void @llvm.dbg.value(metadata !{i32 %coarseType}, i64 0, metadata !65), !dbg !116
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !69), !dbg !117
  call void @llvm.dbg.declare(metadata !{i32* %jsize}, metadata !71), !dbg !117
  call void @llvm.dbg.declare(metadata !{i32* %Jsize}, metadata !73), !dbg !117
  call void @llvm.dbg.declare(metadata !{i32** %jind}, metadata !81), !dbg !118
  call void @llvm.dbg.declare(metadata !{i32** %Jind}, metadata !82), !dbg !118
  call void @llvm.dbg.declare(metadata !{i32** %jwghts}, metadata !83), !dbg !118
  call void @llvm.dbg.declare(metadata !{i32** %Jwghts}, metadata !84), !dbg !118
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !119
  %cmp1 = icmp eq i32* %cmap, null, !dbg !119
  %or.cond = or i1 %cmp, %cmp1, !dbg !119
  %0 = icmp ugt i32 %coarseType, 3, !dbg !119
  %or.cond389 = or i1 %or.cond, %0, !dbg !119
  br i1 %or.cond389, label %if.then, label %if.end, !dbg !119

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !120, !tbaa !103
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType) #5, !dbg !120
  call void @exit(i32 -1) #6, !dbg !122
  unreachable, !dbg !122

if.end:                                           ; preds = %entry
  %nvtx6 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !123
  %2 = load i32* %nvtx6, align 4, !dbg !123, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !77), !dbg !123
  %cmp7 = icmp slt i32 %2, 1, !dbg !123
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !123

if.then8:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !124, !tbaa !103
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType, i32 %2) #5, !dbg !124
  call void @exit(i32 -1) #6, !dbg !126
  unreachable, !dbg !126

if.end10:                                         ; preds = %if.end
  %adjIVL11 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6, !dbg !127
  %4 = load %struct._IVL** %adjIVL11, align 8, !dbg !127, !tbaa !103
  call void @llvm.dbg.value(metadata !{%struct._IVL* %4}, i64 0, metadata !89), !dbg !127
  %cmp12 = icmp eq %struct._IVL* %4, null, !dbg !127
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !127

if.then13:                                        ; preds = %if.end10
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !128, !tbaa !103
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([59 x i8]* @.str3, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType) #5, !dbg !128
  call void @exit(i32 -1) #6, !dbg !130
  unreachable, !dbg !130

if.end15:                                         ; preds = %if.end10
  %type = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0, !dbg !131
  %6 = load i32* %type, align 4, !dbg !131, !tbaa !97
  %rem = srem i32 %6, 2, !dbg !131
  %cmp16 = icmp eq i32 %rem, 1, !dbg !131
  br i1 %cmp16, label %land.lhs.true, label %if.end22, !dbg !131

land.lhs.true:                                    ; preds = %if.end15
  %vwghts17 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !131
  %7 = load i32** %vwghts17, align 8, !dbg !131, !tbaa !103
  call void @llvm.dbg.value(metadata !{i32* %7}, i64 0, metadata !87), !dbg !131
  %cmp18 = icmp eq i32* %7, null, !dbg !131
  br i1 %cmp18, label %if.then19, label %if.end22, !dbg !131

if.then19:                                        ; preds = %land.lhs.true
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !132, !tbaa !103
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([79 x i8]* @.str4, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType, i32 %6) #5, !dbg !132
  call void @exit(i32 -1) #6, !dbg !134
  unreachable, !dbg !134

if.end22:                                         ; preds = %land.lhs.true, %if.end15
  %vwghts.0 = phi i32* [ undef, %if.end15 ], [ %7, %land.lhs.true ]
  %cmp24 = icmp sgt i32 %6, 1, !dbg !135
  br i1 %cmp24, label %land.lhs.true25, label %if.end31, !dbg !135

land.lhs.true25:                                  ; preds = %if.end22
  %ewghtIVL26 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8, !dbg !135
  %9 = load %struct._IVL** %ewghtIVL26, align 8, !dbg !135, !tbaa !103
  call void @llvm.dbg.value(metadata !{%struct._IVL* %9}, i64 0, metadata !91), !dbg !135
  %cmp27 = icmp eq %struct._IVL* %9, null, !dbg !135
  br i1 %cmp27, label %if.then28, label %if.end31, !dbg !135

if.then28:                                        ; preds = %land.lhs.true25
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !136, !tbaa !103
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([81 x i8]* @.str5, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType, i32 %6) #5, !dbg !136
  call void @exit(i32 -1) #6, !dbg !138
  unreachable, !dbg !138

if.end31:                                         ; preds = %land.lhs.true25, %if.end22
  %ewghtIVL.0 = phi %struct._IVL* [ %9, %land.lhs.true25 ], [ undef, %if.end22 ]
  %call32 = call i32 @IVmin(i32 %2, i32* %cmap, i32* %j) #5, !dbg !139
  %cmp33 = icmp slt i32 %call32, 0, !dbg !139
  br i1 %cmp33, label %if.then34, label %if.end37, !dbg !139

if.then34:                                        ; preds = %if.end31
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !140, !tbaa !103
  %call35 = call i32 @IVmin(i32 %2, i32* %cmap, i32* %j) #5, !dbg !142
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([61 x i8]* @.str6, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType, i32 %call35) #5, !dbg !142
  call void @exit(i32 -1) #6, !dbg !143
  unreachable, !dbg !143

if.end37:                                         ; preds = %if.end31
  %call38 = call i32 @IVmax(i32 %2, i32* %cmap, i32* %j) #5, !dbg !144
  %add = add nsw i32 %call38, 1, !dbg !144
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !76), !dbg !144
  %call39 = call %struct._Graph* @Graph_new() #5, !dbg !145
  call void @llvm.dbg.value(metadata !{%struct._Graph* %call39}, i64 0, metadata !66), !dbg !145
  call void @Graph_init1(%struct._Graph* %call39, i32 %coarseType, i32 %add, i32 0, i32 0, i32 1, i32 1) #5, !dbg !146
  %adjIVL40 = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 6, !dbg !147
  %12 = load %struct._IVL** %adjIVL40, align 8, !dbg !147, !tbaa !103
  call void @llvm.dbg.value(metadata !{%struct._IVL* %12}, i64 0, metadata !90), !dbg !147
  %cmp41 = icmp eq %struct._IVL* %12, null, !dbg !147
  br i1 %cmp41, label %if.then42, label %if.end44, !dbg !147

if.then42:                                        ; preds = %if.end37
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !148, !tbaa !103
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([59 x i8]* @.str7, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType) #5, !dbg !148
  call void @exit(i32 -1) #6, !dbg !150
  unreachable, !dbg !150

if.end44:                                         ; preds = %if.end37
  %type45 = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 0, !dbg !151
  %14 = load i32* %type45, align 4, !dbg !151, !tbaa !97
  %rem46 = srem i32 %14, 2, !dbg !151
  %cmp47 = icmp eq i32 %rem46, 1, !dbg !151
  br i1 %cmp47, label %land.lhs.true48, label %if.end54, !dbg !151

land.lhs.true48:                                  ; preds = %if.end44
  %vwghts49 = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 7, !dbg !151
  %15 = load i32** %vwghts49, align 8, !dbg !151, !tbaa !103
  call void @llvm.dbg.value(metadata !{i32* %15}, i64 0, metadata !88), !dbg !151
  %cmp50 = icmp eq i32* %15, null, !dbg !151
  br i1 %cmp50, label %if.then51, label %if.end54, !dbg !151

if.then51:                                        ; preds = %land.lhs.true48
  %16 = load %struct._IO_FILE** @stderr, align 8, !dbg !152, !tbaa !103
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([81 x i8]* @.str8, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType, i32 %14) #5, !dbg !152
  call void @exit(i32 -1) #6, !dbg !154
  unreachable, !dbg !154

if.end54:                                         ; preds = %land.lhs.true48, %if.end44
  %Vwghts.0 = phi i32* [ undef, %if.end44 ], [ %15, %land.lhs.true48 ]
  %cmp56 = icmp sgt i32 %14, 1, !dbg !155
  br i1 %cmp56, label %land.lhs.true57, label %if.end63, !dbg !155

land.lhs.true57:                                  ; preds = %if.end54
  %ewghtIVL58 = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 8, !dbg !155
  %17 = load %struct._IVL** %ewghtIVL58, align 8, !dbg !155, !tbaa !103
  call void @llvm.dbg.value(metadata !{%struct._IVL* %17}, i64 0, metadata !92), !dbg !155
  %cmp59 = icmp eq %struct._IVL* %17, null, !dbg !155
  br i1 %cmp59, label %if.then60, label %if.end63, !dbg !155

if.then60:                                        ; preds = %land.lhs.true57
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !156, !tbaa !103
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([83 x i8]* @.str9, i64 0, i64 0), %struct._Graph* %g, i32* %cmap, i32 %coarseType, i32 %14) #5, !dbg !156
  call void @exit(i32 -1) #6, !dbg !158
  unreachable, !dbg !158

if.end63:                                         ; preds = %land.lhs.true57, %if.end54
  %EwghtIVL.0 = phi %struct._IVL* [ %17, %land.lhs.true57 ], [ undef, %if.end54 ]
  %call64 = call i32* @IVinit(i32 %add, i32 -1) #5, !dbg !159
  call void @llvm.dbg.value(metadata !{i32* %call64}, i64 0, metadata !79), !dbg !159
  %call65 = call i32* @IVinit(i32 %2, i32 -1) #5, !dbg !160
  call void @llvm.dbg.value(metadata !{i32* %call65}, i64 0, metadata !85), !dbg !160
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !69), !dbg !161
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !69), !dbg !161
  store i32 0, i32* %j, align 4, !dbg !161, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !161
  %cmp66417 = icmp sgt i32 %2, 0, !dbg !161
  br i1 %cmp66417, label %for.body, label %for.end, !dbg !161

for.body:                                         ; preds = %if.end63, %for.body
  %storemerge418 = phi i32 [ %inc, %for.body ], [ 0, %if.end63 ]
  %idxprom = sext i32 %storemerge418 to i64, !dbg !163
  %arrayidx = getelementptr inbounds i32* %cmap, i64 %idxprom, !dbg !163
  %19 = load i32* %arrayidx, align 4, !dbg !163, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !72), !dbg !163
  %idxprom67 = sext i32 %19 to i64, !dbg !165
  %arrayidx68 = getelementptr inbounds i32* %call64, i64 %idxprom67, !dbg !165
  %20 = load i32* %arrayidx68, align 4, !dbg !165, !tbaa !97
  %arrayidx70 = getelementptr inbounds i32* %call65, i64 %idxprom, !dbg !165
  store i32 %20, i32* %arrayidx70, align 4, !dbg !165, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !166
  %21 = load i32* %j, align 4, !dbg !166, !tbaa !97
  store i32 %21, i32* %arrayidx68, align 4, !dbg !166, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !161
  %22 = load i32* %j, align 4, !dbg !161, !tbaa !97
  %inc = add nsw i32 %22, 1, !dbg !161
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !69), !dbg !161
  call void @llvm.dbg.value(metadata !{i32 %storemerge418}, i64 0, metadata !69), !dbg !161
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !69), !dbg !161
  store i32 %inc, i32* %j, align 4, !dbg !161, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !161
  %cmp66 = icmp slt i32 %inc, %2, !dbg !161
  br i1 %cmp66, label %for.body, label %for.end, !dbg !161

for.end:                                          ; preds = %for.body, %if.end63
  %call73 = call i32* @IVinit2(i32 %add) #5, !dbg !167
  call void @llvm.dbg.value(metadata !{i32* %call73}, i64 0, metadata !80), !dbg !167
  %call74 = call i32* @IVinit(i32 %add, i32 -1) #5, !dbg !168
  call void @llvm.dbg.value(metadata !{i32* %call74}, i64 0, metadata !86), !dbg !168
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !72), !dbg !169
  %cmp76415 = icmp sgt i32 %call38, -1, !dbg !169
  br i1 %cmp76415, label %for.body77, label %for.end115, !dbg !169

for.body77:                                       ; preds = %for.end, %if.end112
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %if.end112 ], [ 0, %for.end ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !171
  store i32 0, i32* %Jsize, align 4, !dbg !171, !tbaa !97
  %arrayidx79 = getelementptr inbounds i32* %call64, i64 %indvars.iv431, !dbg !173
  %storemerge388412 = load i32* %arrayidx79, align 4, !dbg !173
  call void @llvm.dbg.value(metadata !{i32 %storemerge388412}, i64 0, metadata !69), !dbg !173
  store i32 %storemerge388412, i32* %j, align 4, !dbg !173, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !173
  %cmp81413 = icmp eq i32 %storemerge388412, -1, !dbg !173
  br i1 %cmp81413, label %if.end112, label %for.body82, !dbg !173

for.body82:                                       ; preds = %for.body77, %for.inc106
  %storemerge388414 = phi i32 [ %storemerge388, %for.inc106 ], [ %storemerge388412, %for.body77 ]
  call void @IVL_listAndSize(%struct._IVL* %4, i32 %storemerge388414, i32* %jsize, i32** %jind) #5, !dbg !175
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !68), !dbg !177
  call void @llvm.dbg.value(metadata !{i32* %jsize}, i64 0, metadata !71), !dbg !177
  %23 = load i32* %jsize, align 4, !dbg !177, !tbaa !97
  %cmp84410 = icmp sgt i32 %23, 0, !dbg !177
  br i1 %cmp84410, label %for.body85.lr.ph, label %for.inc106, !dbg !177

for.body85.lr.ph:                                 ; preds = %for.body82
  call void @llvm.dbg.value(metadata !{i32** %jind}, i64 0, metadata !81), !dbg !179
  %24 = load i32** %jind, align 8, !dbg !179, !tbaa !103
  br label %for.body85, !dbg !177

for.body85:                                       ; preds = %for.body85.lr.ph, %for.inc103
  %25 = phi i32 [ %23, %for.body85.lr.ph ], [ %31, %for.inc103 ]
  %indvars.iv429 = phi i64 [ 0, %for.body85.lr.ph ], [ %indvars.iv.next430, %for.inc103 ]
  call void @llvm.dbg.value(metadata !{i32** %jind}, i64 0, metadata !81), !dbg !179
  %arrayidx87 = getelementptr inbounds i32* %24, i64 %indvars.iv429, !dbg !179
  %26 = load i32* %arrayidx87, align 4, !dbg !179, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !74), !dbg !179
  %cmp88 = icmp slt i32 %26, %2, !dbg !179
  br i1 %cmp88, label %if.then89, label %for.inc103, !dbg !179

if.then89:                                        ; preds = %for.body85
  %idxprom90 = sext i32 %26 to i64, !dbg !181
  %arrayidx91 = getelementptr inbounds i32* %cmap, i64 %idxprom90, !dbg !181
  %27 = load i32* %arrayidx91, align 4, !dbg !181, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !75), !dbg !181
  %idxprom92 = sext i32 %27 to i64, !dbg !183
  %arrayidx93 = getelementptr inbounds i32* %call74, i64 %idxprom92, !dbg !183
  %28 = load i32* %arrayidx93, align 4, !dbg !183, !tbaa !97
  %29 = trunc i64 %indvars.iv431 to i32, !dbg !183
  %cmp94 = icmp eq i32 %28, %29, !dbg !183
  br i1 %cmp94, label %for.inc103, label %if.then95, !dbg !183

if.then95:                                        ; preds = %if.then89
  store i32 %29, i32* %arrayidx93, align 4, !dbg !184, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %Jsize}, i64 0, metadata !73), !dbg !186
  %30 = load i32* %Jsize, align 4, !dbg !186, !tbaa !97
  %inc98 = add nsw i32 %30, 1, !dbg !186
  call void @llvm.dbg.value(metadata !{i32 %inc98}, i64 0, metadata !73), !dbg !186
  store i32 %inc98, i32* %Jsize, align 4, !dbg !186, !tbaa !97
  %idxprom99 = sext i32 %30 to i64, !dbg !186
  %arrayidx100 = getelementptr inbounds i32* %call73, i64 %idxprom99, !dbg !186
  store i32 %27, i32* %arrayidx100, align 4, !dbg !186, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %jsize}, i64 0, metadata !71), !dbg !177
  %.pre437 = load i32* %jsize, align 4, !dbg !177, !tbaa !97
  br label %for.inc103, !dbg !187

for.inc103:                                       ; preds = %if.then89, %for.body85, %if.then95
  %31 = phi i32 [ %25, %if.then89 ], [ %25, %for.body85 ], [ %.pre437, %if.then95 ], !dbg !177
  %indvars.iv.next430 = add i64 %indvars.iv429, 1, !dbg !177
  call void @llvm.dbg.value(metadata !{i32* %jsize}, i64 0, metadata !71), !dbg !177
  %32 = trunc i64 %indvars.iv.next430 to i32, !dbg !177
  %cmp84 = icmp slt i32 %32, %31, !dbg !177
  br i1 %cmp84, label %for.body85, label %for.inc106, !dbg !177

for.inc106:                                       ; preds = %for.inc103, %for.body82
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !173
  %33 = load i32* %j, align 4, !dbg !173, !tbaa !97
  %idxprom107 = sext i32 %33 to i64, !dbg !173
  %arrayidx108 = getelementptr inbounds i32* %call65, i64 %idxprom107, !dbg !173
  %storemerge388 = load i32* %arrayidx108, align 4, !dbg !173
  call void @llvm.dbg.value(metadata !{i32 %storemerge388414}, i64 0, metadata !69), !dbg !173
  call void @llvm.dbg.value(metadata !{i32 %storemerge388}, i64 0, metadata !69), !dbg !173
  store i32 %storemerge388, i32* %j, align 4, !dbg !173, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !173
  %cmp81 = icmp eq i32 %storemerge388, -1, !dbg !173
  br i1 %cmp81, label %for.end109, label %for.body82, !dbg !173

for.end109:                                       ; preds = %for.inc106
  call void @llvm.dbg.value(metadata !{i32* %Jsize}, i64 0, metadata !73), !dbg !188
  %.pre435 = load i32* %Jsize, align 4, !dbg !188, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %Jsize}, i64 0, metadata !73), !dbg !188
  %cmp110 = icmp sgt i32 %.pre435, 0, !dbg !188
  br i1 %cmp110, label %if.then111, label %if.end112, !dbg !188

if.then111:                                       ; preds = %for.end109
  call void @IVqsortUp(i32 %.pre435, i32* %call73) #5, !dbg !189
  call void @llvm.dbg.value(metadata !{i32* %Jsize}, i64 0, metadata !73), !dbg !191
  %.pre436 = load i32* %Jsize, align 4, !dbg !191, !tbaa !97
  br label %if.end112, !dbg !192

if.end112:                                        ; preds = %for.body77, %if.then111, %for.end109
  %34 = phi i32 [ %.pre436, %if.then111 ], [ %.pre435, %for.end109 ], [ 0, %for.body77 ]
  call void @llvm.dbg.value(metadata !{i32* %Jsize}, i64 0, metadata !73), !dbg !191
  %35 = trunc i64 %indvars.iv431 to i32, !dbg !191
  call void @IVL_setList(%struct._IVL* %12, i32 %35, i32 %34, i32* %call73) #5, !dbg !191
  %indvars.iv.next432 = add i64 %indvars.iv431, 1, !dbg !169
  %36 = trunc i64 %indvars.iv.next432 to i32, !dbg !169
  %cmp76 = icmp slt i32 %36, %add, !dbg !169
  br i1 %cmp76, label %for.body77, label %for.end115, !dbg !169

for.end115:                                       ; preds = %if.end112, %for.end
  %tsize = getelementptr inbounds %struct._IVL* %12, i64 0, i32 3, !dbg !193
  %37 = load i32* %tsize, align 4, !dbg !193, !tbaa !97
  %nedges = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 3, !dbg !193
  store i32 %37, i32* %nedges, align 4, !dbg !193, !tbaa !97
  call void @IVfree(i32* %call73) #5, !dbg !194
  call void @IVfree(i32* %call74) #5, !dbg !195
  %rem116 = srem i32 %coarseType, 2, !dbg !196
  %cmp117 = icmp eq i32 %rem116, 1, !dbg !196
  br i1 %cmp117, label %for.cond119.preheader, label %if.else146, !dbg !196

for.cond119.preheader:                            ; preds = %for.end115
  br i1 %cmp76415, label %for.body121, label %for.end144, !dbg !197

for.body121:                                      ; preds = %for.cond119.preheader, %for.end139
  %indvars.iv427 = phi i64 [ %indvars.iv.next428, %for.end139 ], [ 0, %for.cond119.preheader ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !78), !dbg !200
  %arrayidx123 = getelementptr inbounds i32* %call64, i64 %indvars.iv427, !dbg !202
  %storemerge387404 = load i32* %arrayidx123, align 4, !dbg !202
  call void @llvm.dbg.value(metadata !{i32 %storemerge387404}, i64 0, metadata !69), !dbg !202
  store i32 %storemerge387404, i32* %j, align 4, !dbg !202, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !202
  %cmp125405 = icmp eq i32 %storemerge387404, -1, !dbg !202
  br i1 %cmp125405, label %for.end139, label %for.body126.lr.ph, !dbg !202

for.body126.lr.ph:                                ; preds = %for.body121
  %.pre434 = load i32* %type, align 4, !dbg !204, !tbaa !97
  br label %for.body126, !dbg !202

for.body126:                                      ; preds = %for.body126.lr.ph, %for.inc136
  %38 = phi i32 [ %storemerge387404, %for.body126.lr.ph ], [ %storemerge387, %for.inc136 ]
  %wght.0406 = phi i32 [ 0, %for.body126.lr.ph ], [ %wght.1, %for.inc136 ]
  %rem128 = srem i32 %.pre434, 2, !dbg !204
  %cmp129 = icmp eq i32 %rem128, 1, !dbg !204
  %idxprom131 = sext i32 %38 to i64, !dbg !206
  br i1 %cmp129, label %if.then130, label %for.inc136, !dbg !204

if.then130:                                       ; preds = %for.body126
  %arrayidx132 = getelementptr inbounds i32* %vwghts.0, i64 %idxprom131, !dbg !206
  %39 = load i32* %arrayidx132, align 4, !dbg !206, !tbaa !97
  br label %for.inc136, !dbg !208

for.inc136:                                       ; preds = %for.body126, %if.then130
  %.pn = phi i32 [ %39, %if.then130 ], [ 1, %for.body126 ]
  %wght.1 = add nsw i32 %.pn, %wght.0406, !dbg !206
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !202
  %arrayidx138 = getelementptr inbounds i32* %call65, i64 %idxprom131, !dbg !202
  %storemerge387 = load i32* %arrayidx138, align 4, !dbg !202
  call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !69), !dbg !202
  call void @llvm.dbg.value(metadata !{i32 %storemerge387}, i64 0, metadata !69), !dbg !202
  store i32 %storemerge387, i32* %j, align 4, !dbg !202, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !202
  %cmp125 = icmp eq i32 %storemerge387, -1, !dbg !202
  br i1 %cmp125, label %for.end139, label %for.body126, !dbg !202

for.end139:                                       ; preds = %for.inc136, %for.body121
  %wght.0.lcssa = phi i32 [ 0, %for.body121 ], [ %wght.1, %for.inc136 ]
  %arrayidx141 = getelementptr inbounds i32* %Vwghts.0, i64 %indvars.iv427, !dbg !209
  store i32 %wght.0.lcssa, i32* %arrayidx141, align 4, !dbg !209, !tbaa !97
  %indvars.iv.next428 = add i64 %indvars.iv427, 1, !dbg !197
  %40 = trunc i64 %indvars.iv.next428 to i32, !dbg !197
  %cmp120 = icmp slt i32 %40, %add, !dbg !197
  br i1 %cmp120, label %for.body121, label %for.end144, !dbg !197

for.end144:                                       ; preds = %for.end139, %for.cond119.preheader
  %call145 = call i32 @IVsum(i32 %add, i32* %Vwghts.0) #5, !dbg !210
  %totvwght = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 4, !dbg !210
  store i32 %call145, i32* %totvwght, align 4, !dbg !210, !tbaa !97
  br label %if.end148, !dbg !211

if.else146:                                       ; preds = %for.end115
  %totvwght147 = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 4, !dbg !212
  store i32 %add, i32* %totvwght147, align 4, !dbg !212, !tbaa !97
  br label %if.end148

if.end148:                                        ; preds = %if.else146, %for.end144
  %cmp149 = icmp sgt i32 %coarseType, 1, !dbg !214
  br i1 %cmp149, label %for.cond151.preheader, label %if.else235, !dbg !214

for.cond151.preheader:                            ; preds = %if.end148
  br i1 %cmp76415, label %for.body153, label %for.end156, !dbg !215

for.body153:                                      ; preds = %for.cond151.preheader, %for.body153
  %J.2403 = phi i32 [ %inc155, %for.body153 ], [ 0, %for.cond151.preheader ]
  call void @IVL_listAndSize(%struct._IVL* %12, i32 %J.2403, i32* %Jsize, i32** %Jind) #5, !dbg !218
  call void @llvm.dbg.value(metadata !{i32* %Jsize}, i64 0, metadata !73), !dbg !220
  %41 = load i32* %Jsize, align 4, !dbg !220, !tbaa !97
  call void @IVL_setList(%struct._IVL* %EwghtIVL.0, i32 %J.2403, i32 %41, i32* null) #5, !dbg !220
  %inc155 = add nsw i32 %J.2403, 1, !dbg !215
  call void @llvm.dbg.value(metadata !{i32 %inc155}, i64 0, metadata !72), !dbg !215
  %cmp152 = icmp slt i32 %inc155, %add, !dbg !215
  br i1 %cmp152, label %for.body153, label %for.end156, !dbg !215

for.end156:                                       ; preds = %for.body153, %for.cond151.preheader
  %42 = load i32* %type, align 4, !dbg !221, !tbaa !97
  %cmp158 = icmp sgt i32 %42, 1, !dbg !221
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !69), !dbg !222
  store i32 0, i32* %j, align 4, !dbg !222, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !222
  br i1 %cmp158, label %for.cond160.preheader, label %for.cond198.preheader, !dbg !221

for.cond198.preheader:                            ; preds = %for.end156
  br i1 %cmp66417, label %for.body200, label %if.end233, !dbg !225

for.cond160.preheader:                            ; preds = %for.end156
  br i1 %cmp66417, label %for.body162, label %if.end233, !dbg !222

for.body162:                                      ; preds = %for.cond160.preheader, %for.inc194
  %43 = phi i32 [ %inc195, %for.inc194 ], [ 0, %for.cond160.preheader ]
  %idxprom163 = sext i32 %43 to i64, !dbg !228
  %arrayidx164 = getelementptr inbounds i32* %cmap, i64 %idxprom163, !dbg !228
  %44 = load i32* %arrayidx164, align 4, !dbg !228, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32 %44}, i64 0, metadata !72), !dbg !228
  call void @IVL_listAndSize(%struct._IVL* %4, i32 %43, i32* %jsize, i32** %jind) #5, !dbg !230
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !231
  %45 = load i32* %j, align 4, !dbg !231, !tbaa !97
  call void @IVL_listAndSize(%struct._IVL* %ewghtIVL.0, i32 %45, i32* %jsize, i32** %jwghts) #5, !dbg !231
  call void @IVL_listAndSize(%struct._IVL* %12, i32 %44, i32* %Jsize, i32** %Jind) #5, !dbg !232
  call void @IVL_listAndSize(%struct._IVL* %EwghtIVL.0, i32 %44, i32* %Jsize, i32** %Jwghts) #5, !dbg !233
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !68), !dbg !234
  call void @llvm.dbg.value(metadata !{i32* %jsize}, i64 0, metadata !71), !dbg !234
  %46 = load i32* %jsize, align 4, !dbg !234, !tbaa !97
  %cmp166393 = icmp sgt i32 %46, 0, !dbg !234
  br i1 %cmp166393, label %for.body167.lr.ph, label %for.inc194, !dbg !234

for.body167.lr.ph:                                ; preds = %for.body162
  call void @llvm.dbg.value(metadata !{i32** %jind}, i64 0, metadata !81), !dbg !236
  %47 = load i32** %jind, align 8, !dbg !236, !tbaa !103
  call void @llvm.dbg.value(metadata !{i32** %Jind}, i64 0, metadata !82), !dbg !238
  %48 = load i32** %Jind, align 8, !dbg !238, !tbaa !103
  call void @llvm.dbg.value(metadata !{i32** %jwghts}, i64 0, metadata !83), !dbg !242
  %49 = load i32** %jwghts, align 8, !dbg !242, !tbaa !103
  call void @llvm.dbg.value(metadata !{i32** %Jwghts}, i64 0, metadata !84), !dbg !242
  %50 = load i32** %Jwghts, align 8, !dbg !242, !tbaa !103
  br label %for.body167, !dbg !234

for.body167:                                      ; preds = %for.body167.lr.ph, %for.inc191
  %51 = phi i32 [ %46, %for.body167.lr.ph ], [ %59, %for.inc191 ]
  %indvars.iv420 = phi i64 [ 0, %for.body167.lr.ph ], [ %indvars.iv.next421, %for.inc191 ]
  call void @llvm.dbg.value(metadata !{i32** %jind}, i64 0, metadata !81), !dbg !236
  %arrayidx169 = getelementptr inbounds i32* %47, i64 %indvars.iv420, !dbg !236
  %52 = load i32* %arrayidx169, align 4, !dbg !236, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32 %52}, i64 0, metadata !74), !dbg !236
  %cmp170 = icmp slt i32 %52, %2, !dbg !244
  br i1 %cmp170, label %if.then171, label %for.inc191, !dbg !244

if.then171:                                       ; preds = %for.body167
  %idxprom172 = sext i32 %52 to i64, !dbg !245
  %arrayidx173 = getelementptr inbounds i32* %cmap, i64 %idxprom172, !dbg !245
  %53 = load i32* %arrayidx173, align 4, !dbg !245, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32 %53}, i64 0, metadata !75), !dbg !245
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !70), !dbg !246
  call void @llvm.dbg.value(metadata !{i32* %Jsize}, i64 0, metadata !73), !dbg !246
  %54 = load i32* %Jsize, align 4, !dbg !246, !tbaa !97
  %cmp175391 = icmp sgt i32 %54, 0, !dbg !246
  br i1 %cmp175391, label %for.body176, label %for.inc191, !dbg !246

for.cond174:                                      ; preds = %for.body176
  call void @llvm.dbg.value(metadata !{i32* %Jsize}, i64 0, metadata !73), !dbg !246
  %55 = trunc i64 %indvars.iv.next to i32, !dbg !246
  %cmp175 = icmp slt i32 %55, %54, !dbg !246
  br i1 %cmp175, label %for.body176, label %for.inc191, !dbg !246

for.body176:                                      ; preds = %if.then171, %for.cond174
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond174 ], [ 0, %if.then171 ]
  call void @llvm.dbg.value(metadata !{i32** %Jind}, i64 0, metadata !82), !dbg !238
  %arrayidx178 = getelementptr inbounds i32* %48, i64 %indvars.iv, !dbg !238
  %56 = load i32* %arrayidx178, align 4, !dbg !238, !tbaa !97
  %cmp179 = icmp eq i32 %56, %53, !dbg !238
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !246
  br i1 %cmp179, label %if.then180, label %for.cond174, !dbg !238

if.then180:                                       ; preds = %for.body176
  call void @llvm.dbg.value(metadata !{i32** %jwghts}, i64 0, metadata !83), !dbg !242
  %arrayidx182 = getelementptr inbounds i32* %49, i64 %indvars.iv420, !dbg !242
  %57 = load i32* %arrayidx182, align 4, !dbg !242, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32** %Jwghts}, i64 0, metadata !84), !dbg !242
  %arrayidx184 = getelementptr inbounds i32* %50, i64 %indvars.iv, !dbg !242
  %58 = load i32* %arrayidx184, align 4, !dbg !242, !tbaa !97
  %add185 = add nsw i32 %58, %57, !dbg !242
  store i32 %add185, i32* %arrayidx184, align 4, !dbg !242, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %jsize}, i64 0, metadata !71), !dbg !234
  %.pre = load i32* %jsize, align 4, !dbg !234, !tbaa !97
  br label %for.inc191, !dbg !247

for.inc191:                                       ; preds = %if.then171, %for.cond174, %for.body167, %if.then180
  %59 = phi i32 [ %51, %for.body167 ], [ %.pre, %if.then180 ], [ %51, %for.cond174 ], [ %51, %if.then171 ], !dbg !234
  %indvars.iv.next421 = add i64 %indvars.iv420, 1, !dbg !234
  call void @llvm.dbg.value(metadata !{i32* %jsize}, i64 0, metadata !71), !dbg !234
  %60 = trunc i64 %indvars.iv.next421 to i32, !dbg !234
  %cmp166 = icmp slt i32 %60, %59, !dbg !234
  br i1 %cmp166, label %for.body167, label %for.inc194, !dbg !234

for.inc194:                                       ; preds = %for.inc191, %for.body162
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !222
  %61 = load i32* %j, align 4, !dbg !222, !tbaa !97
  %inc195 = add nsw i32 %61, 1, !dbg !222
  call void @llvm.dbg.value(metadata !{i32 %inc195}, i64 0, metadata !69), !dbg !222
  store i32 %inc195, i32* %j, align 4, !dbg !222, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !222
  %cmp161 = icmp slt i32 %inc195, %2, !dbg !222
  br i1 %cmp161, label %for.body162, label %if.end233, !dbg !222

for.body200:                                      ; preds = %for.cond198.preheader, %for.inc230
  %62 = phi i32 [ %inc231, %for.inc230 ], [ 0, %for.cond198.preheader ]
  %idxprom201 = sext i32 %62 to i64, !dbg !248
  %arrayidx202 = getelementptr inbounds i32* %cmap, i64 %idxprom201, !dbg !248
  %63 = load i32* %arrayidx202, align 4, !dbg !248, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32 %63}, i64 0, metadata !72), !dbg !248
  call void @IVL_listAndSize(%struct._IVL* %4, i32 %62, i32* %jsize, i32** %jind) #5, !dbg !250
  call void @IVL_listAndSize(%struct._IVL* %12, i32 %63, i32* %Jsize, i32** %Jind) #5, !dbg !251
  call void @IVL_listAndSize(%struct._IVL* %EwghtIVL.0, i32 %63, i32* %Jsize, i32** %Jwghts) #5, !dbg !252
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !68), !dbg !253
  call void @llvm.dbg.value(metadata !{i32* %jsize}, i64 0, metadata !71), !dbg !253
  %64 = load i32* %jsize, align 4, !dbg !253, !tbaa !97
  %cmp204398 = icmp sgt i32 %64, 0, !dbg !253
  br i1 %cmp204398, label %for.body205.lr.ph, label %for.inc230, !dbg !253

for.body205.lr.ph:                                ; preds = %for.body200
  call void @llvm.dbg.value(metadata !{i32** %jind}, i64 0, metadata !81), !dbg !255
  %65 = load i32** %jind, align 8, !dbg !255, !tbaa !103
  call void @llvm.dbg.value(metadata !{i32** %Jind}, i64 0, metadata !82), !dbg !257
  %66 = load i32** %Jind, align 8, !dbg !257, !tbaa !103
  call void @llvm.dbg.value(metadata !{i32** %Jwghts}, i64 0, metadata !84), !dbg !261
  %67 = load i32** %Jwghts, align 8, !dbg !261, !tbaa !103
  br label %for.body205, !dbg !253

for.body205:                                      ; preds = %for.body205.lr.ph, %for.inc227
  %68 = phi i32 [ %64, %for.body205.lr.ph ], [ %75, %for.inc227 ]
  %indvars.iv425 = phi i64 [ 0, %for.body205.lr.ph ], [ %indvars.iv.next426, %for.inc227 ]
  call void @llvm.dbg.value(metadata !{i32** %jind}, i64 0, metadata !81), !dbg !255
  %arrayidx207 = getelementptr inbounds i32* %65, i64 %indvars.iv425, !dbg !255
  %69 = load i32* %arrayidx207, align 4, !dbg !255, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32 %69}, i64 0, metadata !74), !dbg !255
  %cmp208 = icmp slt i32 %69, %2, !dbg !263
  br i1 %cmp208, label %if.then209, label %for.inc227, !dbg !263

if.then209:                                       ; preds = %for.body205
  %idxprom210 = sext i32 %69 to i64, !dbg !264
  %arrayidx211 = getelementptr inbounds i32* %cmap, i64 %idxprom210, !dbg !264
  %70 = load i32* %arrayidx211, align 4, !dbg !264, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32 %70}, i64 0, metadata !75), !dbg !264
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !70), !dbg !265
  call void @llvm.dbg.value(metadata !{i32* %Jsize}, i64 0, metadata !73), !dbg !265
  %71 = load i32* %Jsize, align 4, !dbg !265, !tbaa !97
  %cmp213396 = icmp sgt i32 %71, 0, !dbg !265
  br i1 %cmp213396, label %for.body214, label %for.inc227, !dbg !265

for.cond212:                                      ; preds = %for.body214
  call void @llvm.dbg.value(metadata !{i32* %Jsize}, i64 0, metadata !73), !dbg !265
  %72 = trunc i64 %indvars.iv.next424 to i32, !dbg !265
  %cmp213 = icmp slt i32 %72, %71, !dbg !265
  br i1 %cmp213, label %for.body214, label %for.inc227, !dbg !265

for.body214:                                      ; preds = %if.then209, %for.cond212
  %indvars.iv423 = phi i64 [ %indvars.iv.next424, %for.cond212 ], [ 0, %if.then209 ]
  call void @llvm.dbg.value(metadata !{i32** %Jind}, i64 0, metadata !82), !dbg !257
  %arrayidx216 = getelementptr inbounds i32* %66, i64 %indvars.iv423, !dbg !257
  %73 = load i32* %arrayidx216, align 4, !dbg !257, !tbaa !97
  %cmp217 = icmp eq i32 %73, %70, !dbg !257
  %indvars.iv.next424 = add i64 %indvars.iv423, 1, !dbg !265
  br i1 %cmp217, label %if.then218, label %for.cond212, !dbg !257

if.then218:                                       ; preds = %for.body214
  call void @llvm.dbg.value(metadata !{i32** %Jwghts}, i64 0, metadata !84), !dbg !261
  %arrayidx220 = getelementptr inbounds i32* %67, i64 %indvars.iv423, !dbg !261
  %74 = load i32* %arrayidx220, align 4, !dbg !261, !tbaa !97
  %inc221 = add nsw i32 %74, 1, !dbg !261
  store i32 %inc221, i32* %arrayidx220, align 4, !dbg !261, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %jsize}, i64 0, metadata !71), !dbg !253
  %.pre433 = load i32* %jsize, align 4, !dbg !253, !tbaa !97
  br label %for.inc227, !dbg !266

for.inc227:                                       ; preds = %if.then209, %for.cond212, %for.body205, %if.then218
  %75 = phi i32 [ %68, %for.body205 ], [ %.pre433, %if.then218 ], [ %68, %for.cond212 ], [ %68, %if.then209 ], !dbg !253
  %indvars.iv.next426 = add i64 %indvars.iv425, 1, !dbg !253
  call void @llvm.dbg.value(metadata !{i32* %jsize}, i64 0, metadata !71), !dbg !253
  %76 = trunc i64 %indvars.iv.next426 to i32, !dbg !253
  %cmp204 = icmp slt i32 %76, %75, !dbg !253
  br i1 %cmp204, label %for.body205, label %for.inc230, !dbg !253

for.inc230:                                       ; preds = %for.inc227, %for.body200
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !225
  %77 = load i32* %j, align 4, !dbg !225, !tbaa !97
  %inc231 = add nsw i32 %77, 1, !dbg !225
  call void @llvm.dbg.value(metadata !{i32 %inc231}, i64 0, metadata !69), !dbg !225
  store i32 %inc231, i32* %j, align 4, !dbg !225, !tbaa !97
  call void @llvm.dbg.value(metadata !{i32* %j}, i64 0, metadata !69), !dbg !225
  %cmp199 = icmp slt i32 %inc231, %2, !dbg !225
  br i1 %cmp199, label %for.body200, label %if.end233, !dbg !225

if.end233:                                        ; preds = %for.cond198.preheader, %for.inc230, %for.cond160.preheader, %for.inc194
  %call234 = call i32 @IVL_sum(%struct._IVL* %EwghtIVL.0) #5, !dbg !267
  %totewght = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 5, !dbg !267
  store i32 %call234, i32* %totewght, align 4, !dbg !267, !tbaa !97
  br label %if.end238, !dbg !268

if.else235:                                       ; preds = %if.end148
  %78 = load i32* %nedges, align 4, !dbg !269, !tbaa !97
  %totewght237 = getelementptr inbounds %struct._Graph* %call39, i64 0, i32 5, !dbg !269
  store i32 %78, i32* %totewght237, align 4, !dbg !269, !tbaa !97
  br label %if.end238

if.end238:                                        ; preds = %if.else235, %if.end233
  call void @IVfree(i32* %call64) #5, !dbg !271
  call void @IVfree(i32* %call65) #5, !dbg !272
  ret %struct._Graph* %call39, !dbg !273
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #2

; Function Attrs: optsize
declare i32 @IVmin(i32, i32*, i32*) #2

; Function Attrs: optsize
declare i32 @IVmax(i32, i32*, i32*) #2

; Function Attrs: optsize
declare %struct._Graph* @Graph_new() #2

; Function Attrs: optsize
declare void @Graph_init1(%struct._Graph*, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #2

; Function Attrs: optsize
declare i32* @IVinit2(i32) #2

; Function Attrs: optsize
declare void @IVL_listAndSize(%struct._IVL*, i32, i32*, i32**) #2

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #2

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #2

; Function Attrs: optsize
declare void @IVfree(i32*) #2

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #2

; Function Attrs: optsize
declare i32 @IVL_sum(%struct._IVL*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !59}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_compress2", metadata !"Graph_compress2", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Graph* (%struct._Graph*, %struct._IV*, i32)* @Graph_compress2, null, null, metadata !55, i32 24} ; [ DW_TAG_subprogram ] [line 20] [def] [scope 24] [Graph_compress2]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !46, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !44, metadata !45}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!22 = metadata !{i32 786454, metadata !11, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !35}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!29 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!30 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!34 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!35 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!37 = metadata !{i32 786454, metadata !24, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!38 = metadata !{i32 786451, metadata !24, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !39, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43}
!40 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!41 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!42 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!43 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!45 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!47 = metadata !{i32 786454, metadata !1, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!48 = metadata !{i32 786451, metadata !49, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!49 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!50 = metadata !{metadata !51, metadata !52, metadata !53, metadata !54}
!51 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!52 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!53 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!54 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!55 = metadata !{metadata !56, metadata !57, metadata !58}
!56 = metadata !{i32 786689, metadata !4, metadata !"g", metadata !5, i32 16777237, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 21]
!57 = metadata !{i32 786689, metadata !4, metadata !"mapIV", metadata !5, i32 33554454, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mapIV] [line 22]
!58 = metadata !{i32 786689, metadata !4, metadata !"coarseType", metadata !5, i32 50331671, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coarseType] [line 23]
!59 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_compress", metadata !"Graph_compress", metadata !"", i32 57, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Graph* (%struct._Graph*, i32*, i32)* @Graph_compress, null, null, metadata !62, i32 61} ; [ DW_TAG_subprogram ] [line 57] [def] [scope 61] [Graph_compress]
!60 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!61 = metadata !{metadata !8, metadata !8, metadata !31, metadata !14}
!62 = metadata !{metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92}
!63 = metadata !{i32 786689, metadata !59, metadata !"g", metadata !5, i32 16777274, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 58]
!64 = metadata !{i32 786689, metadata !59, metadata !"cmap", metadata !5, i32 33554491, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmap] [line 59]
!65 = metadata !{i32 786689, metadata !59, metadata !"coarseType", metadata !5, i32 50331708, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coarseType] [line 60]
!66 = metadata !{i32 786688, metadata !59, metadata !"g2", metadata !5, i32 62, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g2] [line 62]
!67 = metadata !{i32 786688, metadata !59, metadata !"ierr", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 63]
!68 = metadata !{i32 786688, metadata !59, metadata !"ii", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 63]
!69 = metadata !{i32 786688, metadata !59, metadata !"j", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 63]
!70 = metadata !{i32 786688, metadata !59, metadata !"jj", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 63]
!71 = metadata !{i32 786688, metadata !59, metadata !"jsize", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jsize] [line 63]
!72 = metadata !{i32 786688, metadata !59, metadata !"J", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 63]
!73 = metadata !{i32 786688, metadata !59, metadata !"Jsize", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Jsize] [line 63]
!74 = metadata !{i32 786688, metadata !59, metadata !"k", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 63]
!75 = metadata !{i32 786688, metadata !59, metadata !"K", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 63]
!76 = metadata !{i32 786688, metadata !59, metadata !"ncvtx", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncvtx] [line 63]
!77 = metadata !{i32 786688, metadata !59, metadata !"nvtx", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 63]
!78 = metadata !{i32 786688, metadata !59, metadata !"wght", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wght] [line 63]
!79 = metadata !{i32 786688, metadata !59, metadata !"head", metadata !5, i32 64, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head] [line 64]
!80 = metadata !{i32 786688, metadata !59, metadata !"indices", metadata !5, i32 64, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 64]
!81 = metadata !{i32 786688, metadata !59, metadata !"jind", metadata !5, i32 64, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jind] [line 64]
!82 = metadata !{i32 786688, metadata !59, metadata !"Jind", metadata !5, i32 64, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Jind] [line 64]
!83 = metadata !{i32 786688, metadata !59, metadata !"jwghts", metadata !5, i32 64, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jwghts] [line 64]
!84 = metadata !{i32 786688, metadata !59, metadata !"Jwghts", metadata !5, i32 64, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Jwghts] [line 64]
!85 = metadata !{i32 786688, metadata !59, metadata !"link", metadata !5, i32 65, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [link] [line 65]
!86 = metadata !{i32 786688, metadata !59, metadata !"mark", metadata !5, i32 65, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mark] [line 65]
!87 = metadata !{i32 786688, metadata !59, metadata !"vwghts", metadata !5, i32 65, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vwghts] [line 65]
!88 = metadata !{i32 786688, metadata !59, metadata !"Vwghts", metadata !5, i32 65, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Vwghts] [line 65]
!89 = metadata !{i32 786688, metadata !59, metadata !"adjIVL", metadata !5, i32 66, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adjIVL] [line 66]
!90 = metadata !{i32 786688, metadata !59, metadata !"AdjIVL", metadata !5, i32 66, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [AdjIVL] [line 66]
!91 = metadata !{i32 786688, metadata !59, metadata !"ewghtIVL", metadata !5, i32 66, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ewghtIVL] [line 66]
!92 = metadata !{i32 786688, metadata !59, metadata !"EwghtIVL", metadata !5, i32 66, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [EwghtIVL] [line 66]
!93 = metadata !{i32 21, i32 0, metadata !4, null}
!94 = metadata !{i32 22, i32 0, metadata !4, null}
!95 = metadata !{i32 23, i32 0, metadata !4, null}
!96 = metadata !{i32 30, i32 0, metadata !4, null}
!97 = metadata !{metadata !"int", metadata !98}
!98 = metadata !{metadata !"omnipotent char", metadata !99}
!99 = metadata !{metadata !"Simple C/C++ TBAA"}
!100 = metadata !{i32 31, i32 0, metadata !4, null}
!101 = metadata !{i32 33, i32 0, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !4, i32 32, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!103 = metadata !{metadata !"any pointer", metadata !98}
!104 = metadata !{i32 35, i32 0, metadata !102, null}
!105 = metadata !{i32 36, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !102, i32 35, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!107 = metadata !{i32 37, i32 0, metadata !106, null}
!108 = metadata !{i32 38, i32 0, metadata !102, null}
!109 = metadata !{i32 39, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !102, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!111 = metadata !{i32 40, i32 0, metadata !110, null}
!112 = metadata !{i32 41, i32 0, metadata !102, null}
!113 = metadata !{i32 43, i32 0, metadata !4, null}
!114 = metadata !{i32 58, i32 0, metadata !59, null} ; [ DW_TAG_imported_module ]
!115 = metadata !{i32 59, i32 0, metadata !59, null}
!116 = metadata !{i32 60, i32 0, metadata !59, null}
!117 = metadata !{i32 63, i32 0, metadata !59, null}
!118 = metadata !{i32 64, i32 0, metadata !59, null}
!119 = metadata !{i32 78, i32 0, metadata !59, null}
!120 = metadata !{i32 79, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !59, i32 78, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!122 = metadata !{i32 81, i32 0, metadata !121, null}
!123 = metadata !{i32 83, i32 0, metadata !59, null}
!124 = metadata !{i32 84, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !59, i32 83, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!126 = metadata !{i32 86, i32 0, metadata !125, null}
!127 = metadata !{i32 88, i32 0, metadata !59, null}
!128 = metadata !{i32 89, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !59, i32 88, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!130 = metadata !{i32 91, i32 0, metadata !129, null}
!131 = metadata !{i32 93, i32 0, metadata !59, null}
!132 = metadata !{i32 94, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !59, i32 93, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!134 = metadata !{i32 97, i32 0, metadata !133, null}
!135 = metadata !{i32 99, i32 0, metadata !59, null}
!136 = metadata !{i32 100, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !59, i32 99, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!138 = metadata !{i32 103, i32 0, metadata !137, null}
!139 = metadata !{i32 105, i32 0, metadata !59, null}
!140 = metadata !{i32 106, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !59, i32 105, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!142 = metadata !{i32 108, i32 0, metadata !141, null}
!143 = metadata !{i32 109, i32 0, metadata !141, null}
!144 = metadata !{i32 111, i32 0, metadata !59, null}
!145 = metadata !{i32 121, i32 0, metadata !59, null}
!146 = metadata !{i32 122, i32 0, metadata !59, null}
!147 = metadata !{i32 123, i32 0, metadata !59, null}
!148 = metadata !{i32 124, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !59, i32 123, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!150 = metadata !{i32 126, i32 0, metadata !149, null}
!151 = metadata !{i32 128, i32 0, metadata !59, null}
!152 = metadata !{i32 129, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !59, i32 128, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!154 = metadata !{i32 132, i32 0, metadata !153, null}
!155 = metadata !{i32 134, i32 0, metadata !59, null}
!156 = metadata !{i32 135, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !59, i32 134, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!158 = metadata !{i32 138, i32 0, metadata !157, null}
!159 = metadata !{i32 150, i32 0, metadata !59, null}
!160 = metadata !{i32 151, i32 0, metadata !59, null}
!161 = metadata !{i32 152, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !59, i32 152, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!163 = metadata !{i32 153, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !162, i32 152, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!165 = metadata !{i32 154, i32 0, metadata !164, null}
!166 = metadata !{i32 155, i32 0, metadata !164, null}
!167 = metadata !{i32 162, i32 0, metadata !59, null}
!168 = metadata !{i32 163, i32 0, metadata !59, null}
!169 = metadata !{i32 164, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !59, i32 164, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!171 = metadata !{i32 168, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !170, i32 164, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!173 = metadata !{i32 169, i32 0, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !172, i32 169, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!175 = metadata !{i32 170, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !174, i32 169, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!177 = metadata !{i32 175, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !176, i32 175, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!179 = metadata !{i32 176, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !178, i32 175, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!181 = metadata !{i32 177, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !180, i32 176, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!183 = metadata !{i32 181, i32 0, metadata !182, null}
!184 = metadata !{i32 185, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !182, i32 181, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!186 = metadata !{i32 186, i32 0, metadata !185, null}
!187 = metadata !{i32 187, i32 0, metadata !185, null}
!188 = metadata !{i32 191, i32 0, metadata !172, null}
!189 = metadata !{i32 192, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !172, i32 191, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!191 = metadata !{i32 194, i32 0, metadata !172, null}
!192 = metadata !{i32 193, i32 0, metadata !190, null}
!193 = metadata !{i32 200, i32 0, metadata !59, null}
!194 = metadata !{i32 201, i32 0, metadata !59, null}
!195 = metadata !{i32 202, i32 0, metadata !59, null}
!196 = metadata !{i32 204, i32 0, metadata !59, null}
!197 = metadata !{i32 210, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !199, i32 210, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!199 = metadata !{i32 786443, metadata !1, metadata !59, i32 204, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!200 = metadata !{i32 211, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !198, i32 210, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!202 = metadata !{i32 212, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !201, i32 212, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!204 = metadata !{i32 213, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !203, i32 212, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!206 = metadata !{i32 214, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !205, i32 213, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!208 = metadata !{i32 215, i32 0, metadata !207, null}
!209 = metadata !{i32 219, i32 0, metadata !201, null}
!210 = metadata !{i32 221, i32 0, metadata !199, null}
!211 = metadata !{i32 229, i32 0, metadata !199, null}
!212 = metadata !{i32 236, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !59, i32 229, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!214 = metadata !{i32 238, i32 0, metadata !59, null}
!215 = metadata !{i32 244, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !217, i32 244, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!217 = metadata !{i32 786443, metadata !1, metadata !59, i32 238, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!218 = metadata !{i32 245, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !216, i32 244, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!220 = metadata !{i32 246, i32 0, metadata !219, null}
!221 = metadata !{i32 248, i32 0, metadata !217, null}
!222 = metadata !{i32 254, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !224, i32 254, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!224 = metadata !{i32 786443, metadata !1, metadata !217, i32 248, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!225 = metadata !{i32 279, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !227, i32 279, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!227 = metadata !{i32 786443, metadata !1, metadata !217, i32 273, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!228 = metadata !{i32 255, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !223, i32 254, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!230 = metadata !{i32 256, i32 0, metadata !229, null}
!231 = metadata !{i32 257, i32 0, metadata !229, null}
!232 = metadata !{i32 258, i32 0, metadata !229, null}
!233 = metadata !{i32 259, i32 0, metadata !229, null}
!234 = metadata !{i32 260, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !229, i32 260, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!236 = metadata !{i32 261, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !235, i32 260, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!238 = metadata !{i32 265, i32 0, metadata !239, null}
!239 = metadata !{i32 786443, metadata !1, metadata !240, i32 264, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!240 = metadata !{i32 786443, metadata !1, metadata !241, i32 264, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!241 = metadata !{i32 786443, metadata !1, metadata !237, i32 262, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!242 = metadata !{i32 266, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !239, i32 265, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!244 = metadata !{i32 262, i32 0, metadata !237, null}
!245 = metadata !{i32 263, i32 0, metadata !241, null}
!246 = metadata !{i32 264, i32 0, metadata !240, null}
!247 = metadata !{i32 267, i32 0, metadata !243, null}
!248 = metadata !{i32 280, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !226, i32 279, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!250 = metadata !{i32 281, i32 0, metadata !249, null}
!251 = metadata !{i32 282, i32 0, metadata !249, null}
!252 = metadata !{i32 283, i32 0, metadata !249, null}
!253 = metadata !{i32 284, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !249, i32 284, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!255 = metadata !{i32 285, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !254, i32 284, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!257 = metadata !{i32 289, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !259, i32 288, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!259 = metadata !{i32 786443, metadata !1, metadata !260, i32 288, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!260 = metadata !{i32 786443, metadata !1, metadata !256, i32 286, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!261 = metadata !{i32 290, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !258, i32 289, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!263 = metadata !{i32 286, i32 0, metadata !256, null}
!264 = metadata !{i32 287, i32 0, metadata !260, null}
!265 = metadata !{i32 288, i32 0, metadata !259, null}
!266 = metadata !{i32 291, i32 0, metadata !262, null}
!267 = metadata !{i32 298, i32 0, metadata !217, null}
!268 = metadata !{i32 299, i32 0, metadata !217, null}
!269 = metadata !{i32 306, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !59, i32 299, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_compress.c]
!271 = metadata !{i32 313, i32 0, metadata !59, null}
!272 = metadata !{i32 314, i32 0, metadata !59, null}
!273 = metadata !{i32 316, i32 0, metadata !59, null}
