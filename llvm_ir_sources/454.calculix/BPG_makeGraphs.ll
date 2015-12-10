; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._BPG = type { i32, i32, %struct._Graph* }

@stdout = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [51 x i8] c"\0A fatal error in BPG_makeGraphXbyX(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Graph* @BPG_makeGraphXbyX(%struct._BPG* %bpg) #0 {
entry:
  %xsize = alloca i32, align 4
  %ysize = alloca i32, align 4
  %xadj = alloca i32*, align 8
  %yadj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !55), !dbg !90
  call void @llvm.dbg.declare(metadata !{i32* %xsize}, metadata !63), !dbg !91
  call void @llvm.dbg.declare(metadata !{i32* %ysize}, metadata !65), !dbg !91
  call void @llvm.dbg.declare(metadata !{i32** %xadj}, metadata !69), !dbg !92
  call void @llvm.dbg.declare(metadata !{i32** %yadj}, metadata !70), !dbg !92
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !93
  br i1 %cmp, label %if.then, label %if.end, !dbg !93

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !94, !tbaa !96
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._BPG* null) #5, !dbg !94
  call void @exit(i32 -1) #6, !dbg !99
  unreachable, !dbg !99

if.end:                                           ; preds = %entry
  %graph1 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !100
  %1 = load %struct._Graph** %graph1, align 8, !dbg !100, !tbaa !96
  call void @llvm.dbg.value(metadata !{%struct._Graph* %1}, i64 0, metadata !56), !dbg !100
  %cmp2 = icmp eq %struct._Graph* %1, null, !dbg !100
  br i1 %cmp2, label %return, label %lor.lhs.false, !dbg !100

lor.lhs.false:                                    ; preds = %if.end
  %nX3 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !100
  %2 = load i32* %nX3, align 4, !dbg !100, !tbaa !101
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !61), !dbg !100
  %cmp4 = icmp slt i32 %2, 1, !dbg !100
  br i1 %cmp4, label %return, label %for.body.lr.ph, !dbg !100

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %call7 = call %struct._Graph* @Graph_new() #5, !dbg !102
  call void @llvm.dbg.value(metadata !{%struct._Graph* %call7}, i64 0, metadata !57), !dbg !102
  %type = getelementptr inbounds %struct._Graph* %1, i64 0, i32 0, !dbg !103
  %3 = load i32* %type, align 4, !dbg !103, !tbaa !101
  call void @Graph_init1(%struct._Graph* %call7, i32 %3, i32 %2, i32 0, i32 0, i32 1, i32 1) #5, !dbg !103
  %call8 = call i32* @IVinit(i32 %2, i32 -1) #5, !dbg !104
  call void @llvm.dbg.value(metadata !{i32* %call8}, i64 0, metadata !68), !dbg !104
  %call9 = call i32* @IVinit(i32 %2, i32 -1) #5, !dbg !105
  call void @llvm.dbg.value(metadata !{i32* %call9}, i64 0, metadata !67), !dbg !105
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !62), !dbg !106
  %adjIVL = getelementptr inbounds %struct._Graph* %call7, i64 0, i32 6, !dbg !108
  br label %for.body, !dbg !106

for.body:                                         ; preds = %for.inc37, %for.body.lr.ph
  %indvars.iv92 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next93, %for.inc37 ]
  %4 = trunc i64 %indvars.iv92 to i32, !dbg !111
  call void @Graph_adjAndSize(%struct._Graph* %1, i32 %4, i32* %xsize, i32** %xadj) #5, !dbg !111
  %arrayidx = getelementptr inbounds i32* %call8, i64 %indvars.iv92, !dbg !112
  store i32 %4, i32* %arrayidx, align 4, !dbg !112, !tbaa !101
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !59), !dbg !113
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !58), !dbg !113
  call void @llvm.dbg.value(metadata !{i32* %xsize}, i64 0, metadata !63), !dbg !113
  %5 = load i32* %xsize, align 4, !dbg !113, !tbaa !101
  %cmp1284 = icmp sgt i32 %5, 0, !dbg !113
  br i1 %cmp1284, label %for.body13, label %for.inc37, !dbg !113

for.body13:                                       ; preds = %for.body, %for.inc31
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.inc31 ], [ 0, %for.body ]
  %count.086 = phi i32 [ %count.1.lcssa, %for.inc31 ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata !{i32** %xadj}, i64 0, metadata !69), !dbg !115
  %6 = load i32** %xadj, align 8, !dbg !115, !tbaa !96
  %arrayidx15 = getelementptr inbounds i32* %6, i64 %indvars.iv90, !dbg !115
  %7 = load i32* %arrayidx15, align 4, !dbg !115, !tbaa !101
  call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !64), !dbg !115
  call void @Graph_adjAndSize(%struct._Graph* %1, i32 %7, i32* %ysize, i32** %yadj) #5, !dbg !117
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !60), !dbg !118
  call void @llvm.dbg.value(metadata !{i32* %ysize}, i64 0, metadata !65), !dbg !118
  %8 = load i32* %ysize, align 4, !dbg !118, !tbaa !101
  %cmp1781 = icmp sgt i32 %8, 0, !dbg !118
  br i1 %cmp1781, label %for.body18.lr.ph, label %for.inc31, !dbg !118

for.body18.lr.ph:                                 ; preds = %for.body13
  call void @llvm.dbg.value(metadata !{i32** %yadj}, i64 0, metadata !70), !dbg !120
  %9 = load i32** %yadj, align 8, !dbg !120, !tbaa !96
  br label %for.body18, !dbg !118

for.body18:                                       ; preds = %for.body18.lr.ph, %for.inc
  %10 = phi i32 [ %8, %for.body18.lr.ph ], [ %13, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body18.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %count.183 = phi i32 [ %count.086, %for.body18.lr.ph ], [ %count.2, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %yadj}, i64 0, metadata !70), !dbg !120
  %arrayidx20 = getelementptr inbounds i32* %9, i64 %indvars.iv, !dbg !120
  %11 = load i32* %arrayidx20, align 4, !dbg !120, !tbaa !101
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !66), !dbg !120
  %idxprom21 = sext i32 %11 to i64, !dbg !122
  %arrayidx22 = getelementptr inbounds i32* %call8, i64 %idxprom21, !dbg !122
  %12 = load i32* %arrayidx22, align 4, !dbg !122, !tbaa !101
  %cmp23 = icmp eq i32 %12, %4, !dbg !122
  br i1 %cmp23, label %for.inc, label %if.then24, !dbg !122

if.then24:                                        ; preds = %for.body18
  store i32 %4, i32* %arrayidx22, align 4, !dbg !123, !tbaa !101
  %inc = add nsw i32 %count.183, 1, !dbg !125
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !58), !dbg !125
  %idxprom27 = sext i32 %count.183 to i64, !dbg !125
  %arrayidx28 = getelementptr inbounds i32* %call9, i64 %idxprom27, !dbg !125
  store i32 %11, i32* %arrayidx28, align 4, !dbg !125, !tbaa !101
  call void @llvm.dbg.value(metadata !{i32* %ysize}, i64 0, metadata !65), !dbg !118
  %.pre = load i32* %ysize, align 4, !dbg !118, !tbaa !101
  br label %for.inc, !dbg !126

for.inc:                                          ; preds = %for.body18, %if.then24
  %13 = phi i32 [ %.pre, %if.then24 ], [ %10, %for.body18 ], !dbg !118
  %count.2 = phi i32 [ %inc, %if.then24 ], [ %count.183, %for.body18 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !118
  call void @llvm.dbg.value(metadata !{i32* %ysize}, i64 0, metadata !65), !dbg !118
  %14 = trunc i64 %indvars.iv.next to i32, !dbg !118
  %cmp17 = icmp slt i32 %14, %13, !dbg !118
  br i1 %cmp17, label %for.body18, label %for.inc31, !dbg !118

for.inc31:                                        ; preds = %for.inc, %for.body13
  %count.1.lcssa = phi i32 [ %count.086, %for.body13 ], [ %count.2, %for.inc ]
  %indvars.iv.next91 = add i64 %indvars.iv90, 1, !dbg !113
  call void @llvm.dbg.value(metadata !{i32* %xsize}, i64 0, metadata !63), !dbg !113
  %15 = load i32* %xsize, align 4, !dbg !113, !tbaa !101
  %16 = trunc i64 %indvars.iv.next91 to i32, !dbg !113
  %cmp12 = icmp slt i32 %16, %15, !dbg !113
  br i1 %cmp12, label %for.body13, label %for.end33, !dbg !113

for.end33:                                        ; preds = %for.inc31
  %cmp34 = icmp sgt i32 %count.1.lcssa, 0, !dbg !127
  br i1 %cmp34, label %if.then35, label %for.inc37, !dbg !127

if.then35:                                        ; preds = %for.end33
  call void @IVqsortUp(i32 %count.1.lcssa, i32* %call9) #5, !dbg !128
  %17 = load %struct._IVL** %adjIVL, align 8, !dbg !108, !tbaa !96
  call void @IVL_setList(%struct._IVL* %17, i32 %4, i32 %count.1.lcssa, i32* %call9) #5, !dbg !108
  br label %for.inc37, !dbg !129

for.inc37:                                        ; preds = %for.body, %for.end33, %if.then35
  %indvars.iv.next93 = add i64 %indvars.iv92, 1, !dbg !106
  %lftr.wideiv = trunc i64 %indvars.iv.next93 to i32, !dbg !106
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !106
  br i1 %exitcond, label %for.end39, label %for.body, !dbg !106

for.end39:                                        ; preds = %for.inc37
  call void @IVfree(i32* %call9) #5, !dbg !130
  call void @IVfree(i32* %call8) #5, !dbg !131
  %18 = load i32* %type, align 4, !dbg !132, !tbaa !101
  %rem = srem i32 %18, 2, !dbg !132
  %cmp41 = icmp eq i32 %rem, 1, !dbg !132
  br i1 %cmp41, label %if.then42, label %return, !dbg !132

if.then42:                                        ; preds = %for.end39
  %vwghts = getelementptr inbounds %struct._Graph* %call7, i64 0, i32 7, !dbg !133
  %19 = load i32** %vwghts, align 8, !dbg !133, !tbaa !96
  %vwghts43 = getelementptr inbounds %struct._Graph* %1, i64 0, i32 7, !dbg !133
  %20 = load i32** %vwghts43, align 8, !dbg !133, !tbaa !96
  call void @IVcopy(i32 %2, i32* %19, i32* %20) #5, !dbg !133
  br label %return, !dbg !135

return:                                           ; preds = %for.end39, %if.then42, %if.end, %lor.lhs.false
  %retval.0 = phi %struct._Graph* [ null, %lor.lhs.false ], [ null, %if.end ], [ %call7, %if.then42 ], [ %call7, %for.end39 ]
  ret %struct._Graph* %retval.0, !dbg !136
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare %struct._Graph* @Graph_new() #4

; Function Attrs: optsize
declare void @Graph_init1(%struct._Graph*, i32, i32, i32, i32, i32, i32) #4

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #4

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #4

; Function Attrs: nounwind optsize uwtable
define %struct._Graph* @BPG_makeGraphYbyY(%struct._BPG* %bpg) #0 {
entry:
  %xsize = alloca i32, align 4
  %ysize = alloca i32, align 4
  %xadj = alloca i32*, align 8
  %yadj = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._BPG* %bpg}, i64 0, metadata !73), !dbg !137
  call void @llvm.dbg.declare(metadata !{i32* %xsize}, metadata !82), !dbg !138
  call void @llvm.dbg.declare(metadata !{i32* %ysize}, metadata !84), !dbg !138
  call void @llvm.dbg.declare(metadata !{i32** %xadj}, metadata !88), !dbg !139
  call void @llvm.dbg.declare(metadata !{i32** %yadj}, metadata !89), !dbg !139
  %cmp = icmp eq %struct._BPG* %bpg, null, !dbg !140
  br i1 %cmp, label %if.then, label %if.end, !dbg !140

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !141, !tbaa !96
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._BPG* null) #5, !dbg !141
  call void @exit(i32 -1) #6, !dbg !143
  unreachable, !dbg !143

if.end:                                           ; preds = %entry
  %graph1 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 2, !dbg !144
  %1 = load %struct._Graph** %graph1, align 8, !dbg !144, !tbaa !96
  call void @llvm.dbg.value(metadata !{%struct._Graph* %1}, i64 0, metadata !74), !dbg !144
  %cmp2 = icmp eq %struct._Graph* %1, null, !dbg !144
  br i1 %cmp2, label %return, label %lor.lhs.false, !dbg !144

lor.lhs.false:                                    ; preds = %if.end
  %nY3 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 1, !dbg !144
  %2 = load i32* %nY3, align 4, !dbg !144, !tbaa !101
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !80), !dbg !144
  %cmp4 = icmp slt i32 %2, 1, !dbg !144
  br i1 %cmp4, label %return, label %for.body.lr.ph, !dbg !144

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %nX7 = getelementptr inbounds %struct._BPG* %bpg, i64 0, i32 0, !dbg !145
  %3 = load i32* %nX7, align 4, !dbg !145, !tbaa !101
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !79), !dbg !145
  %call8 = call %struct._Graph* @Graph_new() #5, !dbg !146
  call void @llvm.dbg.value(metadata !{%struct._Graph* %call8}, i64 0, metadata !75), !dbg !146
  %type = getelementptr inbounds %struct._Graph* %1, i64 0, i32 0, !dbg !147
  %4 = load i32* %type, align 4, !dbg !147, !tbaa !101
  call void @Graph_init1(%struct._Graph* %call8, i32 %4, i32 %2, i32 0, i32 0, i32 1, i32 1) #5, !dbg !147
  %call9 = call i32* @IVinit(i32 %2, i32 -1) #5, !dbg !148
  call void @llvm.dbg.value(metadata !{i32* %call9}, i64 0, metadata !87), !dbg !148
  %call10 = call i32* @IVinit(i32 %2, i32 -1) #5, !dbg !149
  call void @llvm.dbg.value(metadata !{i32* %call10}, i64 0, metadata !86), !dbg !149
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !83), !dbg !150
  %adjIVL = getelementptr inbounds %struct._Graph* %call8, i64 0, i32 6, !dbg !152
  %5 = zext i32 %3 to i64, !dbg !150
  br label %for.body, !dbg !150

for.body:                                         ; preds = %for.inc39, %for.body.lr.ph
  %indvars.iv97 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next98, %for.inc39 ]
  %6 = add nsw i64 %indvars.iv97, %5, !dbg !155
  %7 = trunc i64 %6 to i32, !dbg !155
  call void @Graph_adjAndSize(%struct._Graph* %1, i32 %7, i32* %ysize, i32** %yadj) #5, !dbg !155
  %arrayidx = getelementptr inbounds i32* %call9, i64 %indvars.iv97, !dbg !156
  %8 = trunc i64 %indvars.iv97 to i32, !dbg !156
  store i32 %8, i32* %arrayidx, align 4, !dbg !156, !tbaa !101
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !77), !dbg !157
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !76), !dbg !157
  call void @llvm.dbg.value(metadata !{i32* %ysize}, i64 0, metadata !84), !dbg !157
  %9 = load i32* %ysize, align 4, !dbg !157, !tbaa !101
  %cmp1389 = icmp sgt i32 %9, 0, !dbg !157
  br i1 %cmp1389, label %for.body14, label %for.inc39, !dbg !157

for.body14:                                       ; preds = %for.body, %for.inc32
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.inc32 ], [ 0, %for.body ]
  %count.091 = phi i32 [ %count.1.lcssa, %for.inc32 ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata !{i32** %yadj}, i64 0, metadata !89), !dbg !159
  %10 = load i32** %yadj, align 8, !dbg !159, !tbaa !96
  %arrayidx16 = getelementptr inbounds i32* %10, i64 %indvars.iv95, !dbg !159
  %11 = load i32* %arrayidx16, align 4, !dbg !159, !tbaa !101
  call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !81), !dbg !159
  call void @Graph_adjAndSize(%struct._Graph* %1, i32 %11, i32* %xsize, i32** %xadj) #5, !dbg !161
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !78), !dbg !162
  call void @llvm.dbg.value(metadata !{i32* %xsize}, i64 0, metadata !82), !dbg !162
  %12 = load i32* %xsize, align 4, !dbg !162, !tbaa !101
  %cmp1886 = icmp sgt i32 %12, 0, !dbg !162
  br i1 %cmp1886, label %for.body19.lr.ph, label %for.inc32, !dbg !162

for.body19.lr.ph:                                 ; preds = %for.body14
  call void @llvm.dbg.value(metadata !{i32** %xadj}, i64 0, metadata !88), !dbg !164
  %13 = load i32** %xadj, align 8, !dbg !164, !tbaa !96
  br label %for.body19, !dbg !162

for.body19:                                       ; preds = %for.body19.lr.ph, %for.inc
  %14 = phi i32 [ %12, %for.body19.lr.ph ], [ %17, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %count.188 = phi i32 [ %count.091, %for.body19.lr.ph ], [ %count.2, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %xadj}, i64 0, metadata !88), !dbg !164
  %arrayidx21 = getelementptr inbounds i32* %13, i64 %indvars.iv, !dbg !164
  %15 = load i32* %arrayidx21, align 4, !dbg !164, !tbaa !101
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !85), !dbg !164
  %idxprom22 = sext i32 %15 to i64, !dbg !166
  %arrayidx23 = getelementptr inbounds i32* %call9, i64 %idxprom22, !dbg !166
  %16 = load i32* %arrayidx23, align 4, !dbg !166, !tbaa !101
  %cmp24 = icmp eq i32 %16, %8, !dbg !166
  br i1 %cmp24, label %for.inc, label %if.then25, !dbg !166

if.then25:                                        ; preds = %for.body19
  store i32 %8, i32* %arrayidx23, align 4, !dbg !167, !tbaa !101
  %inc = add nsw i32 %count.188, 1, !dbg !169
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !76), !dbg !169
  %idxprom28 = sext i32 %count.188 to i64, !dbg !169
  %arrayidx29 = getelementptr inbounds i32* %call10, i64 %idxprom28, !dbg !169
  store i32 %15, i32* %arrayidx29, align 4, !dbg !169, !tbaa !101
  call void @llvm.dbg.value(metadata !{i32* %xsize}, i64 0, metadata !82), !dbg !162
  %.pre = load i32* %xsize, align 4, !dbg !162, !tbaa !101
  br label %for.inc, !dbg !170

for.inc:                                          ; preds = %for.body19, %if.then25
  %17 = phi i32 [ %.pre, %if.then25 ], [ %14, %for.body19 ], !dbg !162
  %count.2 = phi i32 [ %inc, %if.then25 ], [ %count.188, %for.body19 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !162
  call void @llvm.dbg.value(metadata !{i32* %xsize}, i64 0, metadata !82), !dbg !162
  %18 = trunc i64 %indvars.iv.next to i32, !dbg !162
  %cmp18 = icmp slt i32 %18, %17, !dbg !162
  br i1 %cmp18, label %for.body19, label %for.inc32, !dbg !162

for.inc32:                                        ; preds = %for.inc, %for.body14
  %count.1.lcssa = phi i32 [ %count.091, %for.body14 ], [ %count.2, %for.inc ]
  %indvars.iv.next96 = add i64 %indvars.iv95, 1, !dbg !157
  call void @llvm.dbg.value(metadata !{i32* %ysize}, i64 0, metadata !84), !dbg !157
  %19 = load i32* %ysize, align 4, !dbg !157, !tbaa !101
  %20 = trunc i64 %indvars.iv.next96 to i32, !dbg !157
  %cmp13 = icmp slt i32 %20, %19, !dbg !157
  br i1 %cmp13, label %for.body14, label %for.end34, !dbg !157

for.end34:                                        ; preds = %for.inc32
  %cmp35 = icmp sgt i32 %count.1.lcssa, 0, !dbg !171
  br i1 %cmp35, label %if.then36, label %for.inc39, !dbg !171

if.then36:                                        ; preds = %for.end34
  call void @IVqsortUp(i32 %count.1.lcssa, i32* %call10) #5, !dbg !172
  %21 = load %struct._IVL** %adjIVL, align 8, !dbg !152, !tbaa !96
  call void @IVL_setList(%struct._IVL* %21, i32 %7, i32 %count.1.lcssa, i32* %call10) #5, !dbg !152
  br label %for.inc39, !dbg !173

for.inc39:                                        ; preds = %for.body, %for.end34, %if.then36
  %indvars.iv.next98 = add i64 %indvars.iv97, 1, !dbg !150
  %lftr.wideiv = trunc i64 %indvars.iv.next98 to i32, !dbg !150
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !150
  br i1 %exitcond, label %for.end41, label %for.body, !dbg !150

for.end41:                                        ; preds = %for.inc39
  call void @IVfree(i32* %call10) #5, !dbg !174
  call void @IVfree(i32* %call9) #5, !dbg !175
  %22 = load i32* %type, align 4, !dbg !176, !tbaa !101
  %rem = srem i32 %22, 2, !dbg !176
  %cmp43 = icmp eq i32 %rem, 1, !dbg !176
  br i1 %cmp43, label %if.then44, label %return, !dbg !176

if.then44:                                        ; preds = %for.end41
  %vwghts = getelementptr inbounds %struct._Graph* %call8, i64 0, i32 7, !dbg !177
  %23 = load i32** %vwghts, align 8, !dbg !177, !tbaa !96
  %vwghts45 = getelementptr inbounds %struct._Graph* %1, i64 0, i32 7, !dbg !177
  %24 = load i32** %vwghts45, align 8, !dbg !177, !tbaa !96
  %idx.ext = sext i32 %3 to i64, !dbg !177
  %add.ptr = getelementptr inbounds i32* %24, i64 %idx.ext, !dbg !177
  call void @IVcopy(i32 %2, i32* %23, i32* %add.ptr) #5, !dbg !177
  br label %return, !dbg !179

return:                                           ; preds = %for.end41, %if.then44, %if.end, %lor.lhs.false
  %retval.0 = phi %struct._Graph* [ null, %lor.lhs.false ], [ null, %if.end ], [ %call8, %if.then44 ], [ %call8, %for.end41 ]
  ret %struct._Graph* %retval.0, !dbg !180
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !71}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_makeGraphXbyX", metadata !"BPG_makeGraphXbyX", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Graph* (%struct._BPG*)* @BPG_makeGraphXbyX, null, null, metadata !54, i32 19} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 19] [BPG_makeGraphXbyX]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !46}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../../Graph/Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BPG]
!47 = metadata !{i32 786454, metadata !1, null, metadata !"BPG", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [BPG] [line 21, size 0, align 0, offset 0] [from _BPG]
!48 = metadata !{i32 786451, metadata !49, null, metadata !"_BPG", i32 22, i64 128, i64 64, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [_BPG] [line 22, size 128, align 64, offset 0] [from ]
!49 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/../BPG.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!50 = metadata !{metadata !51, metadata !52, metadata !53}
!51 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"nX", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nX] [line 23, size 32, align 32, offset 0] [from int]
!52 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"nY", i32 24, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nY] [line 24, size 32, align 32, offset 32] [from int]
!53 = metadata !{i32 786445, metadata !49, metadata !48, metadata !"graph", i32 25, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [graph] [line 25, size 64, align 64, offset 64] [from ]
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70}
!55 = metadata !{i32 786689, metadata !4, metadata !"bpg", metadata !5, i32 16777234, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 18]
!56 = metadata !{i32 786688, metadata !4, metadata !"graph", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [graph] [line 20]
!57 = metadata !{i32 786688, metadata !4, metadata !"gXbyX", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gXbyX] [line 20]
!58 = metadata !{i32 786688, metadata !4, metadata !"count", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 21]
!59 = metadata !{i32 786688, metadata !4, metadata !"ii", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 21]
!60 = metadata !{i32 786688, metadata !4, metadata !"jj", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 21]
!61 = metadata !{i32 786688, metadata !4, metadata !"nX", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nX] [line 21]
!62 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 21]
!63 = metadata !{i32 786688, metadata !4, metadata !"xsize", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xsize] [line 21]
!64 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 21]
!65 = metadata !{i32 786688, metadata !4, metadata !"ysize", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ysize] [line 21]
!66 = metadata !{i32 786688, metadata !4, metadata !"z", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 21]
!67 = metadata !{i32 786688, metadata !4, metadata !"list", metadata !5, i32 22, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list] [line 22]
!68 = metadata !{i32 786688, metadata !4, metadata !"mark", metadata !5, i32 22, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mark] [line 22]
!69 = metadata !{i32 786688, metadata !4, metadata !"xadj", metadata !5, i32 22, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xadj] [line 22]
!70 = metadata !{i32 786688, metadata !4, metadata !"yadj", metadata !5, i32 22, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yadj] [line 22]
!71 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BPG_makeGraphYbyY", metadata !"BPG_makeGraphYbyY", metadata !"", i32 98, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Graph* (%struct._BPG*)* @BPG_makeGraphYbyY, null, null, metadata !72, i32 100} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 100] [BPG_makeGraphYbyY]
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89}
!73 = metadata !{i32 786689, metadata !71, metadata !"bpg", metadata !5, i32 16777315, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bpg] [line 99]
!74 = metadata !{i32 786688, metadata !71, metadata !"graph", metadata !5, i32 101, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [graph] [line 101]
!75 = metadata !{i32 786688, metadata !71, metadata !"gYbyY", metadata !5, i32 101, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gYbyY] [line 101]
!76 = metadata !{i32 786688, metadata !71, metadata !"count", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 102]
!77 = metadata !{i32 786688, metadata !71, metadata !"ii", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 102]
!78 = metadata !{i32 786688, metadata !71, metadata !"jj", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 102]
!79 = metadata !{i32 786688, metadata !71, metadata !"nX", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nX] [line 102]
!80 = metadata !{i32 786688, metadata !71, metadata !"nY", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nY] [line 102]
!81 = metadata !{i32 786688, metadata !71, metadata !"x", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 102]
!82 = metadata !{i32 786688, metadata !71, metadata !"xsize", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xsize] [line 102]
!83 = metadata !{i32 786688, metadata !71, metadata !"y", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 102]
!84 = metadata !{i32 786688, metadata !71, metadata !"ysize", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ysize] [line 102]
!85 = metadata !{i32 786688, metadata !71, metadata !"z", metadata !5, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 102]
!86 = metadata !{i32 786688, metadata !71, metadata !"list", metadata !5, i32 103, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list] [line 103]
!87 = metadata !{i32 786688, metadata !71, metadata !"mark", metadata !5, i32 103, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mark] [line 103]
!88 = metadata !{i32 786688, metadata !71, metadata !"xadj", metadata !5, i32 103, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xadj] [line 103]
!89 = metadata !{i32 786688, metadata !71, metadata !"yadj", metadata !5, i32 103, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yadj] [line 103]
!90 = metadata !{i32 18, i32 0, metadata !4, null}
!91 = metadata !{i32 21, i32 0, metadata !4, null}
!92 = metadata !{i32 22, i32 0, metadata !4, null}
!93 = metadata !{i32 28, i32 0, metadata !4, null}
!94 = metadata !{i32 29, i32 0, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!96 = metadata !{metadata !"any pointer", metadata !97}
!97 = metadata !{metadata !"omnipotent char", metadata !98}
!98 = metadata !{metadata !"Simple C/C++ TBAA"}
!99 = metadata !{i32 31, i32 0, metadata !95, null}
!100 = metadata !{i32 38, i32 0, metadata !4, null}
!101 = metadata !{metadata !"int", metadata !97}
!102 = metadata !{i32 46, i32 0, metadata !4, null}
!103 = metadata !{i32 47, i32 0, metadata !4, null}
!104 = metadata !{i32 53, i32 0, metadata !4, null}
!105 = metadata !{i32 54, i32 0, metadata !4, null}
!106 = metadata !{i32 55, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !4, i32 55, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!108 = metadata !{i32 71, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !110, i32 69, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!110 = metadata !{i32 786443, metadata !1, metadata !107, i32 55, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!111 = metadata !{i32 56, i32 0, metadata !110, null}
!112 = metadata !{i32 57, i32 0, metadata !110, null}
!113 = metadata !{i32 58, i32 0, metadata !114, null} ; [ DW_TAG_imported_module ]
!114 = metadata !{i32 786443, metadata !1, metadata !110, i32 58, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!115 = metadata !{i32 59, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !114, i32 58, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!117 = metadata !{i32 60, i32 0, metadata !116, null}
!118 = metadata !{i32 61, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !116, i32 61, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!120 = metadata !{i32 62, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !119, i32 61, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!122 = metadata !{i32 63, i32 0, metadata !121, null}
!123 = metadata !{i32 64, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !121, i32 63, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!125 = metadata !{i32 65, i32 0, metadata !124, null}
!126 = metadata !{i32 66, i32 0, metadata !124, null}
!127 = metadata !{i32 69, i32 0, metadata !110, null}
!128 = metadata !{i32 70, i32 0, metadata !109, null}
!129 = metadata !{i32 72, i32 0, metadata !109, null}
!130 = metadata !{i32 74, i32 0, metadata !4, null}
!131 = metadata !{i32 75, i32 0, metadata !4, null}
!132 = metadata !{i32 81, i32 0, metadata !4, null}
!133 = metadata !{i32 82, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !4, i32 81, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!135 = metadata !{i32 83, i32 0, metadata !134, null}
!136 = metadata !{i32 85, i32 0, metadata !4, null}
!137 = metadata !{i32 99, i32 0, metadata !71, null}
!138 = metadata !{i32 102, i32 0, metadata !71, null}
!139 = metadata !{i32 103, i32 0, metadata !71, null}
!140 = metadata !{i32 109, i32 0, metadata !71, null}
!141 = metadata !{i32 110, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !71, i32 109, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!143 = metadata !{i32 112, i32 0, metadata !142, null}
!144 = metadata !{i32 119, i32 0, metadata !71, null}
!145 = metadata !{i32 122, i32 0, metadata !71, null}
!146 = metadata !{i32 128, i32 0, metadata !71, null}
!147 = metadata !{i32 129, i32 0, metadata !71, null}
!148 = metadata !{i32 135, i32 0, metadata !71, null}
!149 = metadata !{i32 136, i32 0, metadata !71, null}
!150 = metadata !{i32 137, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !71, i32 137, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!152 = metadata !{i32 153, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !154, i32 151, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!154 = metadata !{i32 786443, metadata !1, metadata !151, i32 137, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!155 = metadata !{i32 138, i32 0, metadata !154, null}
!156 = metadata !{i32 139, i32 0, metadata !154, null}
!157 = metadata !{i32 140, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !154, i32 140, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!159 = metadata !{i32 141, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !158, i32 140, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!161 = metadata !{i32 142, i32 0, metadata !160, null}
!162 = metadata !{i32 143, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !160, i32 143, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!164 = metadata !{i32 144, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !163, i32 143, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!166 = metadata !{i32 145, i32 0, metadata !165, null}
!167 = metadata !{i32 146, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !165, i32 145, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!169 = metadata !{i32 147, i32 0, metadata !168, null}
!170 = metadata !{i32 148, i32 0, metadata !168, null}
!171 = metadata !{i32 151, i32 0, metadata !154, null}
!172 = metadata !{i32 152, i32 0, metadata !153, null}
!173 = metadata !{i32 154, i32 0, metadata !153, null}
!174 = metadata !{i32 156, i32 0, metadata !71, null}
!175 = metadata !{i32 157, i32 0, metadata !71, null}
!176 = metadata !{i32 163, i32 0, metadata !71, null}
!177 = metadata !{i32 164, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !71, i32 163, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BPG/src/BPG_makeGraphs.c]
!179 = metadata !{i32 165, i32 0, metadata !178, null}
!180 = metadata !{i32 167, i32 0, metadata !71, null}
