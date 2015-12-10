; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [54 x i8] c"\0A fatal error in A2_permuteRows(%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"\0A fatal error in A2_permuteColumns(%p,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in A2_sortRowsUp(%p,%d,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [96 x i8] c"\0A fatal error in A2_sortRowsUp(%p,%d,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [56 x i8] c"\0A fatal error in A2_sortColumnsUp(%p,%d,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [99 x i8] c"\0A fatal error in A2_sortColumnsUp(%p,%d,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @A2_permuteRows(%struct._A2* %mtx, i32 %nrow, i32* %index) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !25), !dbg !67
  tail call void @llvm.dbg.value(metadata !{i32 %nrow}, i64 0, metadata !26), !dbg !68
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !27), !dbg !69
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !70
  %cmp1 = icmp slt i32 %nrow, 0, !dbg !70
  %or.cond = or i1 %cmp, %cmp1, !dbg !70
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !70

lor.lhs.false2:                                   ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !70
  %0 = load i32* %n1, align 4, !dbg !70, !tbaa !71
  %cmp3 = icmp slt i32 %0, %nrow, !dbg !70
  %cmp5 = icmp eq i32* %index, null, !dbg !70
  %or.cond20 = or i1 %cmp3, %cmp5, !dbg !70
  br i1 %or.cond20, label %if.then, label %if.end, !dbg !70

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !74, !tbaa !76
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._A2* %mtx, i32 %nrow, i32* %index) #5, !dbg !74
  tail call void @exit(i32 -1) #6, !dbg !77
  unreachable, !dbg !77

if.end:                                           ; preds = %lor.lhs.false2
  %call6 = tail call i32* @IVinit(i32 %nrow, i32 -1) #5, !dbg !78
  tail call void @llvm.dbg.value(metadata !{i32* %call6}, i64 0, metadata !28), !dbg !78
  tail call void @IVcopy(i32 %nrow, i32* %call6, i32* %index) #5, !dbg !79
  %call7 = tail call i32 @A2_sortRowsUp(%struct._A2* %mtx, i32 %nrow, i32* %call6) #7, !dbg !80
  tail call void @IVfree(i32* %call6) #5, !dbg !81
  ret void, !dbg !82
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @A2_sortRowsUp(%struct._A2* %mtx, i32 %nrow, i32* %rowids) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !39), !dbg !83
  tail call void @llvm.dbg.value(metadata !{i32 %nrow}, i64 0, metadata !40), !dbg !84
  tail call void @llvm.dbg.value(metadata !{i32* %rowids}, i64 0, metadata !41), !dbg !85
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !86
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false, !dbg !86

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !87, !tbaa !76
  %call147 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._A2* null, i32 %nrow, i32* %rowids) #5, !dbg !87
  br label %if.end, !dbg !89

lor.lhs.false:                                    ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !86
  %1 = load i32* %n1, align 4, !dbg !86, !tbaa !71
  %cmp1 = icmp slt i32 %1, %nrow, !dbg !86
  %cmp3 = icmp slt i32 %nrow, 0, !dbg !86
  %or.cond = or i1 %cmp1, %cmp3, !dbg !86
  %cmp5 = icmp eq i32* %rowids, null, !dbg !86
  %or.cond146 = or i1 %or.cond, %cmp5, !dbg !86
  br i1 %or.cond146, label %if.then7, label %if.end8, !dbg !86

if.then7:                                         ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !87, !tbaa !76
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._A2* %mtx, i32 %nrow, i32* %rowids) #5, !dbg !87
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !90, !tbaa !76
  tail call void @A2_writeStats(%struct._A2* %mtx, %struct._IO_FILE* %3) #5, !dbg !90
  br label %if.end, !dbg !92

if.end:                                           ; preds = %if.then.thread, %if.then7
  tail call void @exit(i32 -1) #6, !dbg !93
  unreachable, !dbg !93

if.end8:                                          ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !94
  %4 = load i32* %type, align 4, !dbg !94, !tbaa !71
  %.off = add i32 %4, -1, !dbg !94
  %switch = icmp ult i32 %.off, 2, !dbg !94
  br i1 %switch, label %if.end16, label %if.then13, !dbg !94

if.then13:                                        ; preds = %if.end8
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !95, !tbaa !76
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([96 x i8]* @.str3, i64 0, i64 0), %struct._A2* %mtx, i32 %nrow, i32* %rowids, i32 %4) #5, !dbg !95
  tail call void @exit(i32 -1) #6, !dbg !97
  unreachable, !dbg !97

if.end16:                                         ; preds = %if.end8
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !98
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !99
  %6 = load i32* %inc1, align 4, !dbg !99, !tbaa !71
  %cmp17 = icmp eq i32 %6, 1, !dbg !99
  br i1 %cmp17, label %if.then18, label %for.cond45.outer, !dbg !99

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32* @IVinit(i32 %nrow, i32 -1) #5, !dbg !100
  tail call void @llvm.dbg.value(metadata !{i32* %call19}, i64 0, metadata !51), !dbg !100
  %7 = load i32* %type, align 4, !dbg !101, !tbaa !71
  switch i32 %7, label %if.end29 [
    i32 1, label %if.then22
    i32 2, label %if.then26
  ], !dbg !101

if.then22:                                        ; preds = %if.then18
  %call23 = tail call double* @DVinit(i32 %nrow, double 0.000000e+00) #5, !dbg !102
  tail call void @llvm.dbg.value(metadata !{double* %call23}, i64 0, metadata !47), !dbg !102
  br label %if.end29, !dbg !104

if.then26:                                        ; preds = %if.then18
  %mul = shl nsw i32 %nrow, 1, !dbg !105
  %call27 = tail call double* @DVinit(i32 %mul, double 0.000000e+00) #5, !dbg !105
  tail call void @llvm.dbg.value(metadata !{double* %call27}, i64 0, metadata !47), !dbg !105
  br label %if.end29, !dbg !107

if.end29:                                         ; preds = %if.then18, %if.then26, %if.then22
  %dvtmp.0 = phi double* [ %call23, %if.then22 ], [ %call27, %if.then26 ], [ undef, %if.then18 ]
  tail call void @IVramp(i32 %nrow, i32* %call19, i32 0, i32 1) #5, !dbg !108
  tail call void @IV2qsortUp(i32 %nrow, i32* %rowids, i32* %call19) #5, !dbg !109
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !110
  %8 = load i32* %n2, align 4, !dbg !110, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !50), !dbg !110
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !49), !dbg !111
  %cmp30148 = icmp sgt i32 %8, 0, !dbg !111
  br i1 %cmp30148, label %for.body, label %for.end, !dbg !111

for.body:                                         ; preds = %for.inc, %if.end29
  %jcol.0149 = phi i32 [ 0, %if.end29 ], [ %inc, %for.inc ]
  %9 = load i32* %type, align 4, !dbg !113, !tbaa !71
  switch i32 %9, label %for.inc [
    i32 1, label %if.then33
    i32 2, label %if.then39
  ], !dbg !113

if.then33:                                        ; preds = %for.body
  %call34 = tail call double* @A2_column(%struct._A2* %mtx, i32 %jcol.0149) #5, !dbg !115
  tail call void @DVcopy(i32 %nrow, double* %dvtmp.0, double* %call34) #5, !dbg !115
  %call35 = tail call double* @A2_column(%struct._A2* %mtx, i32 %jcol.0149) #5, !dbg !117
  tail call void @DVgather(i32 %nrow, double* %call35, double* %dvtmp.0, i32* %call19) #5, !dbg !117
  br label %for.inc, !dbg !118

if.then39:                                        ; preds = %for.body
  %call40 = tail call double* @A2_column(%struct._A2* %mtx, i32 %jcol.0149) #5, !dbg !119
  tail call void @ZVcopy(i32 %nrow, double* %dvtmp.0, double* %call40) #5, !dbg !119
  %call41 = tail call double* @A2_column(%struct._A2* %mtx, i32 %jcol.0149) #5, !dbg !121
  tail call void @ZVgather(i32 %nrow, double* %call41, double* %dvtmp.0, i32* %call19) #5, !dbg !121
  br label %for.inc, !dbg !122

for.inc:                                          ; preds = %for.body, %if.then33, %if.then39
  %inc = add nsw i32 %jcol.0149, 1, !dbg !111
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !49), !dbg !111
  %exitcond = icmp eq i32 %inc, %8, !dbg !111
  br i1 %exitcond, label %for.end, label %for.body, !dbg !111

for.end:                                          ; preds = %for.inc, %if.end29
  tail call void @IVfree(i32* %call19) #5, !dbg !123
  tail call void @DVfree(double* %dvtmp.0) #5, !dbg !124
  br label %if.end74, !dbg !125

for.cond45:                                       ; preds = %for.body47, %for.cond45.outer, %for.end60
  %indvars.iv161 = phi i64 [ %15, %for.cond45.outer ], [ %indvars.iv.next162, %for.end60 ], [ %indvars.iv.next162, %for.body47 ]
  %indvars.iv.in = phi i64 [ %15, %for.cond45.outer ], [ %indvars.iv, %for.end60 ], [ %indvars.iv, %for.body47 ]
  %target.0 = phi i32 [ %target.0.ph, %for.cond45.outer ], [ %add, %for.end60 ], [ %add, %for.body47 ]
  %indvars.iv = add i64 %indvars.iv.in, 1
  %10 = trunc i64 %indvars.iv161 to i32, !dbg !126
  %cmp46 = icmp slt i32 %10, %nrow, !dbg !126
  br i1 %cmp46, label %for.body47, label %if.end74, !dbg !126

for.body47:                                       ; preds = %for.cond45
  tail call void @llvm.dbg.value(metadata !{i32 %target.0}, i64 0, metadata !43), !dbg !129
  %arrayidx = getelementptr inbounds i32* %rowids, i64 %indvars.iv161, !dbg !131
  %11 = load i32* %arrayidx, align 4, !dbg !131, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !44), !dbg !131
  %indvars.iv.next162 = add i64 %indvars.iv161, 1, !dbg !132
  %add = add nsw i32 %target.0, 1, !dbg !133
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !42), !dbg !133
  %12 = trunc i64 %indvars.iv.next162 to i32, !dbg !133
  %cmp49150 = icmp slt i32 %12, %nrow, !dbg !133
  br i1 %cmp49150, label %for.body50, label %for.cond45, !dbg !133

for.body50:                                       ; preds = %for.body47, %for.body50
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %for.body50 ], [ %indvars.iv, %for.body47 ], !dbg !132
  %ii.0153 = phi i32 [ %inc59, %for.body50 ], [ %add, %for.body47 ]
  %minrow.0152 = phi i32 [ %ii.0.minrow.0, %for.body50 ], [ %target.0, %for.body47 ]
  %minrowid.0151 = phi i32 [ %.minrowid.0, %for.body50 ], [ %11, %for.body47 ]
  %arrayidx52 = getelementptr inbounds i32* %rowids, i64 %indvars.iv156, !dbg !135
  %13 = load i32* %arrayidx52, align 4, !dbg !135, !tbaa !71
  %cmp53 = icmp sgt i32 %minrowid.0151, %13, !dbg !135
  tail call void @llvm.dbg.value(metadata !{i32 %ii.0153}, i64 0, metadata !43), !dbg !137
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !44), !dbg !139
  %.minrowid.0 = select i1 %cmp53, i32 %13, i32 %minrowid.0151, !dbg !135
  %14 = trunc i64 %indvars.iv156 to i32, !dbg !135
  %ii.0.minrow.0 = select i1 %cmp53, i32 %14, i32 %minrow.0152, !dbg !135
  %inc59 = add nsw i32 %ii.0153, 1, !dbg !133
  tail call void @llvm.dbg.value(metadata !{i32 %inc59}, i64 0, metadata !42), !dbg !133
  %indvars.iv.next157 = add i64 %indvars.iv156, 1, !dbg !133
  %exitcond159 = icmp eq i32 %inc59, %nrow, !dbg !133
  br i1 %exitcond159, label %for.end60, label %for.body50, !dbg !133

for.end60:                                        ; preds = %for.body50
  %cmp61 = icmp eq i32 %ii.0.minrow.0, %10, !dbg !132
  br i1 %cmp61, label %for.cond45, label %if.then62, !dbg !132

if.then62:                                        ; preds = %for.end60
  %idxprom65 = sext i32 %ii.0.minrow.0 to i64, !dbg !140
  %arrayidx66 = getelementptr inbounds i32* %rowids, i64 %idxprom65, !dbg !140
  store i32 %11, i32* %arrayidx66, align 4, !dbg !140, !tbaa !71
  store i32 %.minrowid.0, i32* %arrayidx, align 4, !dbg !142, !tbaa !71
  tail call void @A2_swapRows(%struct._A2* %mtx, i32 %target.0, i32 %ii.0.minrow.0) #5, !dbg !143
  %inc69 = add nsw i32 %nswap.0.ph, 1, !dbg !144
  tail call void @llvm.dbg.value(metadata !{i32 %inc69}, i64 0, metadata !45), !dbg !144
  br label %for.cond45.outer, !dbg !145

for.cond45.outer:                                 ; preds = %if.end16, %if.then62
  %nswap.0.ph = phi i32 [ %inc69, %if.then62 ], [ 0, %if.end16 ]
  %target.0.ph = phi i32 [ %add, %if.then62 ], [ 0, %if.end16 ]
  %15 = sext i32 %target.0.ph to i64
  br label %for.cond45

if.end74:                                         ; preds = %for.cond45, %for.end
  %nswap.2 = phi i32 [ 0, %for.end ], [ %nswap.0.ph, %for.cond45 ]
  ret i32 %nswap.2, !dbg !146
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @A2_permuteColumns(%struct._A2* %mtx, i32 %ncol, i32* %index) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !31), !dbg !147
  tail call void @llvm.dbg.value(metadata !{i32 %ncol}, i64 0, metadata !32), !dbg !148
  tail call void @llvm.dbg.value(metadata !{i32* %index}, i64 0, metadata !33), !dbg !149
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !150
  %cmp1 = icmp slt i32 %ncol, 0, !dbg !150
  %or.cond = or i1 %cmp, %cmp1, !dbg !150
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !150

lor.lhs.false2:                                   ; preds = %entry
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !150
  %0 = load i32* %n2, align 4, !dbg !150, !tbaa !71
  %cmp3 = icmp slt i32 %0, %ncol, !dbg !150
  %cmp5 = icmp eq i32* %index, null, !dbg !150
  %or.cond20 = or i1 %cmp3, %cmp5, !dbg !150
  br i1 %or.cond20, label %if.then, label %if.end, !dbg !150

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !151, !tbaa !76
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), %struct._A2* %mtx, i32 %ncol, i32* %index) #5, !dbg !151
  tail call void @exit(i32 -1) #6, !dbg !153
  unreachable, !dbg !153

if.end:                                           ; preds = %lor.lhs.false2
  %call6 = tail call i32* @IVinit(i32 %ncol, i32 -1) #5, !dbg !154
  tail call void @llvm.dbg.value(metadata !{i32* %call6}, i64 0, metadata !34), !dbg !154
  tail call void @IVcopy(i32 %ncol, i32* %call6, i32* %index) #5, !dbg !155
  %call7 = tail call i32 @A2_sortColumnsUp(%struct._A2* %mtx, i32 %ncol, i32* %call6) #7, !dbg !156
  tail call void @IVfree(i32* %call6) #5, !dbg !157
  ret void, !dbg !158
}

; Function Attrs: nounwind optsize uwtable
define i32 @A2_sortColumnsUp(%struct._A2* %mtx, i32 %ncol, i32* %colids) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !54), !dbg !159
  tail call void @llvm.dbg.value(metadata !{i32 %ncol}, i64 0, metadata !55), !dbg !160
  tail call void @llvm.dbg.value(metadata !{i32* %colids}, i64 0, metadata !56), !dbg !161
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !162
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false, !dbg !162

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !163, !tbaa !76
  %call147 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0), %struct._A2* null, i32 %ncol, i32* %colids) #5, !dbg !163
  br label %if.end, !dbg !165

lor.lhs.false:                                    ; preds = %entry
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !162
  %1 = load i32* %n2, align 4, !dbg !162, !tbaa !71
  %cmp1 = icmp slt i32 %1, %ncol, !dbg !162
  %cmp3 = icmp slt i32 %ncol, 0, !dbg !162
  %or.cond = or i1 %cmp1, %cmp3, !dbg !162
  %cmp5 = icmp eq i32* %colids, null, !dbg !162
  %or.cond146 = or i1 %or.cond, %cmp5, !dbg !162
  br i1 %or.cond146, label %if.then7, label %if.end8, !dbg !162

if.then7:                                         ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !163, !tbaa !76
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0), %struct._A2* %mtx, i32 %ncol, i32* %colids) #5, !dbg !163
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !166, !tbaa !76
  tail call void @A2_writeStats(%struct._A2* %mtx, %struct._IO_FILE* %3) #5, !dbg !166
  br label %if.end, !dbg !168

if.end:                                           ; preds = %if.then.thread, %if.then7
  tail call void @exit(i32 -1) #6, !dbg !169
  unreachable, !dbg !169

if.end8:                                          ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !170
  %4 = load i32* %type, align 4, !dbg !170, !tbaa !71
  %.off = add i32 %4, -1, !dbg !170
  %switch = icmp ult i32 %.off, 2, !dbg !170
  br i1 %switch, label %if.end16, label %if.then13, !dbg !170

if.then13:                                        ; preds = %if.end8
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !171, !tbaa !76
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([99 x i8]* @.str5, i64 0, i64 0), %struct._A2* %mtx, i32 %ncol, i32* %colids, i32 %4) #5, !dbg !171
  tail call void @exit(i32 -1) #6, !dbg !173
  unreachable, !dbg !173

if.end16:                                         ; preds = %if.end8
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !60), !dbg !174
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !175
  %6 = load i32* %inc2, align 4, !dbg !175, !tbaa !71
  %cmp17 = icmp eq i32 %6, 1, !dbg !175
  br i1 %cmp17, label %if.then18, label %for.cond45.outer, !dbg !175

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32* @IVinit(i32 %ncol, i32 -1) #5, !dbg !176
  tail call void @llvm.dbg.value(metadata !{i32* %call19}, i64 0, metadata !66), !dbg !176
  %7 = load i32* %type, align 4, !dbg !177, !tbaa !71
  switch i32 %7, label %if.end29 [
    i32 1, label %if.then22
    i32 2, label %if.then26
  ], !dbg !177

if.then22:                                        ; preds = %if.then18
  %call23 = tail call double* @DVinit(i32 %ncol, double 0.000000e+00) #5, !dbg !178
  tail call void @llvm.dbg.value(metadata !{double* %call23}, i64 0, metadata !62), !dbg !178
  br label %if.end29, !dbg !180

if.then26:                                        ; preds = %if.then18
  %mul = shl nsw i32 %ncol, 1, !dbg !181
  %call27 = tail call double* @DVinit(i32 %mul, double 0.000000e+00) #5, !dbg !181
  tail call void @llvm.dbg.value(metadata !{double* %call27}, i64 0, metadata !62), !dbg !181
  br label %if.end29, !dbg !183

if.end29:                                         ; preds = %if.then18, %if.then26, %if.then22
  %dvtmp.0 = phi double* [ %call23, %if.then22 ], [ %call27, %if.then26 ], [ undef, %if.then18 ]
  tail call void @IVramp(i32 %ncol, i32* %call19, i32 0, i32 1) #5, !dbg !184
  tail call void @IV2qsortUp(i32 %ncol, i32* %colids, i32* %call19) #5, !dbg !185
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !186
  %8 = load i32* %n1, align 4, !dbg !186, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !65), !dbg !186
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !64), !dbg !187
  %cmp30148 = icmp sgt i32 %8, 0, !dbg !187
  br i1 %cmp30148, label %for.body, label %for.end, !dbg !187

for.body:                                         ; preds = %for.inc, %if.end29
  %irow.0149 = phi i32 [ 0, %if.end29 ], [ %inc, %for.inc ]
  %9 = load i32* %type, align 4, !dbg !189, !tbaa !71
  switch i32 %9, label %for.inc [
    i32 1, label %if.then33
    i32 2, label %if.then39
  ], !dbg !189

if.then33:                                        ; preds = %for.body
  %call34 = tail call double* @A2_row(%struct._A2* %mtx, i32 %irow.0149) #5, !dbg !191
  tail call void @DVcopy(i32 %ncol, double* %dvtmp.0, double* %call34) #5, !dbg !191
  %call35 = tail call double* @A2_row(%struct._A2* %mtx, i32 %irow.0149) #5, !dbg !193
  tail call void @DVgather(i32 %ncol, double* %call35, double* %dvtmp.0, i32* %call19) #5, !dbg !193
  br label %for.inc, !dbg !194

if.then39:                                        ; preds = %for.body
  %call40 = tail call double* @A2_row(%struct._A2* %mtx, i32 %irow.0149) #5, !dbg !195
  tail call void @ZVcopy(i32 %ncol, double* %dvtmp.0, double* %call40) #5, !dbg !195
  %call41 = tail call double* @A2_row(%struct._A2* %mtx, i32 %irow.0149) #5, !dbg !197
  tail call void @ZVgather(i32 %ncol, double* %call41, double* %dvtmp.0, i32* %call19) #5, !dbg !197
  br label %for.inc, !dbg !198

for.inc:                                          ; preds = %for.body, %if.then33, %if.then39
  %inc = add nsw i32 %irow.0149, 1, !dbg !187
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !64), !dbg !187
  %exitcond = icmp eq i32 %inc, %8, !dbg !187
  br i1 %exitcond, label %for.end, label %for.body, !dbg !187

for.end:                                          ; preds = %for.inc, %if.end29
  tail call void @IVfree(i32* %call19) #5, !dbg !199
  tail call void @DVfree(double* %dvtmp.0) #5, !dbg !200
  br label %if.end74, !dbg !201

for.cond45:                                       ; preds = %for.body47, %for.cond45.outer, %for.end60
  %indvars.iv161 = phi i64 [ %15, %for.cond45.outer ], [ %indvars.iv.next162, %for.end60 ], [ %indvars.iv.next162, %for.body47 ]
  %indvars.iv.in = phi i64 [ %15, %for.cond45.outer ], [ %indvars.iv, %for.end60 ], [ %indvars.iv, %for.body47 ]
  %target.0 = phi i32 [ %target.0.ph, %for.cond45.outer ], [ %add, %for.end60 ], [ %add, %for.body47 ]
  %indvars.iv = add i64 %indvars.iv.in, 1
  %10 = trunc i64 %indvars.iv161 to i32, !dbg !202
  %cmp46 = icmp slt i32 %10, %ncol, !dbg !202
  br i1 %cmp46, label %for.body47, label %if.end74, !dbg !202

for.body47:                                       ; preds = %for.cond45
  tail call void @llvm.dbg.value(metadata !{i32 %target.0}, i64 0, metadata !58), !dbg !205
  %arrayidx = getelementptr inbounds i32* %colids, i64 %indvars.iv161, !dbg !207
  %11 = load i32* %arrayidx, align 4, !dbg !207, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !59), !dbg !207
  %indvars.iv.next162 = add i64 %indvars.iv161, 1, !dbg !208
  %add = add nsw i32 %target.0, 1, !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !57), !dbg !209
  %12 = trunc i64 %indvars.iv.next162 to i32, !dbg !209
  %cmp49150 = icmp slt i32 %12, %ncol, !dbg !209
  br i1 %cmp49150, label %for.body50, label %for.cond45, !dbg !209

for.body50:                                       ; preds = %for.body47, %for.body50
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %for.body50 ], [ %indvars.iv, %for.body47 ], !dbg !208
  %ii.0153 = phi i32 [ %inc59, %for.body50 ], [ %add, %for.body47 ]
  %mincol.0152 = phi i32 [ %ii.0.mincol.0, %for.body50 ], [ %target.0, %for.body47 ]
  %mincolid.0151 = phi i32 [ %.mincolid.0, %for.body50 ], [ %11, %for.body47 ]
  %arrayidx52 = getelementptr inbounds i32* %colids, i64 %indvars.iv156, !dbg !211
  %13 = load i32* %arrayidx52, align 4, !dbg !211, !tbaa !71
  %cmp53 = icmp sgt i32 %mincolid.0151, %13, !dbg !211
  tail call void @llvm.dbg.value(metadata !{i32 %ii.0153}, i64 0, metadata !58), !dbg !213
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !59), !dbg !215
  %.mincolid.0 = select i1 %cmp53, i32 %13, i32 %mincolid.0151, !dbg !211
  %14 = trunc i64 %indvars.iv156 to i32, !dbg !211
  %ii.0.mincol.0 = select i1 %cmp53, i32 %14, i32 %mincol.0152, !dbg !211
  %inc59 = add nsw i32 %ii.0153, 1, !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %inc59}, i64 0, metadata !57), !dbg !209
  %indvars.iv.next157 = add i64 %indvars.iv156, 1, !dbg !209
  %exitcond159 = icmp eq i32 %inc59, %ncol, !dbg !209
  br i1 %exitcond159, label %for.end60, label %for.body50, !dbg !209

for.end60:                                        ; preds = %for.body50
  %cmp61 = icmp eq i32 %ii.0.mincol.0, %10, !dbg !208
  br i1 %cmp61, label %for.cond45, label %if.then62, !dbg !208

if.then62:                                        ; preds = %for.end60
  %idxprom65 = sext i32 %ii.0.mincol.0 to i64, !dbg !216
  %arrayidx66 = getelementptr inbounds i32* %colids, i64 %idxprom65, !dbg !216
  store i32 %11, i32* %arrayidx66, align 4, !dbg !216, !tbaa !71
  store i32 %.mincolid.0, i32* %arrayidx, align 4, !dbg !218, !tbaa !71
  tail call void @A2_swapColumns(%struct._A2* %mtx, i32 %target.0, i32 %ii.0.mincol.0) #5, !dbg !219
  %inc69 = add nsw i32 %nswap.0.ph, 1, !dbg !220
  tail call void @llvm.dbg.value(metadata !{i32 %inc69}, i64 0, metadata !60), !dbg !220
  br label %for.cond45.outer, !dbg !221

for.cond45.outer:                                 ; preds = %if.end16, %if.then62
  %nswap.0.ph = phi i32 [ %inc69, %if.then62 ], [ 0, %if.end16 ]
  %target.0.ph = phi i32 [ %add, %if.then62 ], [ 0, %if.end16 ]
  %15 = sext i32 %target.0.ph to i64
  br label %for.cond45

if.end74:                                         ; preds = %for.cond45, %for.end
  %nswap.2 = phi i32 [ 0, %for.end ], [ %nswap.0.ph, %for.cond45 ]
  ret i32 %nswap.2, !dbg !222
}

; Function Attrs: optsize
declare void @A2_writeStats(%struct._A2*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare double* @DVinit(i32, double) #3

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: optsize
declare void @IV2qsortUp(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @DVcopy(i32, double*, double*) #3

; Function Attrs: optsize
declare double* @A2_column(%struct._A2*, i32) #3

; Function Attrs: optsize
declare void @DVgather(i32, double*, double*, i32*) #3

; Function Attrs: optsize
declare void @ZVcopy(i32, double*, double*) #3

; Function Attrs: optsize
declare void @ZVgather(i32, double*, double*, i32*) #3

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: optsize
declare void @A2_swapRows(%struct._A2*, i32, i32) #3

; Function Attrs: optsize
declare double* @A2_row(%struct._A2*, i32) #3

; Function Attrs: optsize
declare void @A2_swapColumns(%struct._A2*, i32, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !29, metadata !35, metadata !52}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_permuteRows", metadata !"A2_permuteRows", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, i32, i32*)* @A2_permuteRows, null, null, metadata !24, i32 21} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 21] [A2_permuteRows]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !23}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from A2]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"A2", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [A2] [line 49, size 0, align 0, offset 0] [from _A2]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_A2", i32 41, i64 256, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_A2] [line 41, size 256, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/../A2.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 42, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"n1", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [n1] [line 43, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"n2", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [n2] [line 44, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inc1", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [inc1] [line 45, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inc2", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [inc2] [line 46, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nowned", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nowned] [line 47, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [entries] [line 48, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!22 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!24 = metadata !{metadata !25, metadata !26, metadata !27, metadata !28}
!25 = metadata !{i32 786689, metadata !4, metadata !"mtx", metadata !5, i32 16777234, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 18]
!26 = metadata !{i32 786689, metadata !4, metadata !"nrow", metadata !5, i32 33554451, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrow] [line 19]
!27 = metadata !{i32 786689, metadata !4, metadata !"index", metadata !5, i32 50331668, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 20]
!28 = metadata !{i32 786688, metadata !4, metadata !"rowids", metadata !5, i32 22, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 22]
!29 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_permuteColumns", metadata !"A2_permuteColumns", metadata !"", i32 52, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, i32, i32*)* @A2_permuteColumns, null, null, metadata !30, i32 56} ; [ DW_TAG_subprogram ] [line 52] [def] [scope 56] [A2_permuteColumns]
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34}
!31 = metadata !{i32 786689, metadata !29, metadata !"mtx", metadata !5, i32 16777269, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 53]
!32 = metadata !{i32 786689, metadata !29, metadata !"ncol", metadata !5, i32 33554486, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncol] [line 54]
!33 = metadata !{i32 786689, metadata !29, metadata !"index", metadata !5, i32 50331703, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index] [line 55]
!34 = metadata !{i32 786688, metadata !29, metadata !"colids", metadata !5, i32 57, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 57]
!35 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_sortRowsUp", metadata !"A2_sortRowsUp", metadata !"", i32 87, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._A2*, i32, i32*)* @A2_sortRowsUp, null, null, metadata !38, i32 91} ; [ DW_TAG_subprogram ] [line 87] [def] [scope 91] [A2_sortRowsUp]
!36 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{metadata !14, metadata !8, metadata !14, metadata !23}
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !49, metadata !50, metadata !51}
!39 = metadata !{i32 786689, metadata !35, metadata !"mtx", metadata !5, i32 16777304, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 88]
!40 = metadata !{i32 786689, metadata !35, metadata !"nrow", metadata !5, i32 33554521, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrow] [line 89]
!41 = metadata !{i32 786689, metadata !35, metadata !"rowids", metadata !5, i32 50331738, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowids] [line 90]
!42 = metadata !{i32 786688, metadata !35, metadata !"ii", metadata !5, i32 92, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 92]
!43 = metadata !{i32 786688, metadata !35, metadata !"minrow", metadata !5, i32 92, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minrow] [line 92]
!44 = metadata !{i32 786688, metadata !35, metadata !"minrowid", metadata !5, i32 92, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [minrowid] [line 92]
!45 = metadata !{i32 786688, metadata !35, metadata !"nswap", metadata !5, i32 92, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nswap] [line 92]
!46 = metadata !{i32 786688, metadata !35, metadata !"target", metadata !5, i32 92, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [target] [line 92]
!47 = metadata !{i32 786688, metadata !48, metadata !"dvtmp", metadata !5, i32 114, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvtmp] [line 114]
!48 = metadata !{i32 786443, metadata !1, metadata !35, i32 113, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!49 = metadata !{i32 786688, metadata !48, metadata !"jcol", metadata !5, i32 115, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 115]
!50 = metadata !{i32 786688, metadata !48, metadata !"ncol", metadata !5, i32 115, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 115]
!51 = metadata !{i32 786688, metadata !48, metadata !"ivtmp", metadata !5, i32 116, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivtmp] [line 116]
!52 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_sortColumnsUp", metadata !"A2_sortColumnsUp", metadata !"", i32 180, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._A2*, i32, i32*)* @A2_sortColumnsUp, null, null, metadata !53, i32 184} ; [ DW_TAG_subprogram ] [line 180] [def] [scope 184] [A2_sortColumnsUp]
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !64, metadata !65, metadata !66}
!54 = metadata !{i32 786689, metadata !52, metadata !"mtx", metadata !5, i32 16777397, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 181]
!55 = metadata !{i32 786689, metadata !52, metadata !"ncol", metadata !5, i32 33554614, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncol] [line 182]
!56 = metadata !{i32 786689, metadata !52, metadata !"colids", metadata !5, i32 50331831, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colids] [line 183]
!57 = metadata !{i32 786688, metadata !52, metadata !"ii", metadata !5, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 185]
!58 = metadata !{i32 786688, metadata !52, metadata !"mincol", metadata !5, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mincol] [line 185]
!59 = metadata !{i32 786688, metadata !52, metadata !"mincolid", metadata !5, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mincolid] [line 185]
!60 = metadata !{i32 786688, metadata !52, metadata !"nswap", metadata !5, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nswap] [line 185]
!61 = metadata !{i32 786688, metadata !52, metadata !"target", metadata !5, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [target] [line 185]
!62 = metadata !{i32 786688, metadata !63, metadata !"dvtmp", metadata !5, i32 207, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvtmp] [line 207]
!63 = metadata !{i32 786443, metadata !1, metadata !52, i32 206, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!64 = metadata !{i32 786688, metadata !63, metadata !"irow", metadata !5, i32 208, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 208]
!65 = metadata !{i32 786688, metadata !63, metadata !"nrow", metadata !5, i32 208, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 208]
!66 = metadata !{i32 786688, metadata !63, metadata !"ivtmp", metadata !5, i32 209, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivtmp] [line 209]
!67 = metadata !{i32 18, i32 0, metadata !4, null}
!68 = metadata !{i32 19, i32 0, metadata !4, null}
!69 = metadata !{i32 20, i32 0, metadata !4, null}
!70 = metadata !{i32 28, i32 0, metadata !4, null}
!71 = metadata !{metadata !"int", metadata !72}
!72 = metadata !{metadata !"omnipotent char", metadata !73}
!73 = metadata !{metadata !"Simple C/C++ TBAA"}
!74 = metadata !{i32 29, i32 0, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!76 = metadata !{metadata !"any pointer", metadata !72}
!77 = metadata !{i32 31, i32 0, metadata !75, null}
!78 = metadata !{i32 33, i32 0, metadata !4, null}
!79 = metadata !{i32 34, i32 0, metadata !4, null}
!80 = metadata !{i32 35, i32 0, metadata !4, null}
!81 = metadata !{i32 36, i32 0, metadata !4, null}
!82 = metadata !{i32 38, i32 0, metadata !4, null}
!83 = metadata !{i32 88, i32 0, metadata !35, null}
!84 = metadata !{i32 89, i32 0, metadata !35, null}
!85 = metadata !{i32 90, i32 0, metadata !35, null}
!86 = metadata !{i32 98, i32 0, metadata !35, null}
!87 = metadata !{i32 99, i32 0, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !35, i32 98, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!89 = metadata !{i32 101, i32 0, metadata !88, null}
!90 = metadata !{i32 102, i32 0, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !88, i32 101, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!92 = metadata !{i32 103, i32 0, metadata !91, null}
!93 = metadata !{i32 104, i32 0, metadata !88, null}
!94 = metadata !{i32 106, i32 0, metadata !35, null}
!95 = metadata !{i32 107, i32 0, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !35, i32 106, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!97 = metadata !{i32 110, i32 0, metadata !96, null}
!98 = metadata !{i32 112, i32 0, metadata !35, null}
!99 = metadata !{i32 113, i32 0, metadata !35, null}
!100 = metadata !{i32 122, i32 0, metadata !48, null}
!101 = metadata !{i32 123, i32 0, metadata !48, null}
!102 = metadata !{i32 124, i32 0, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !48, i32 123, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!104 = metadata !{i32 125, i32 0, metadata !103, null}
!105 = metadata !{i32 126, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !48, i32 125, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!107 = metadata !{i32 127, i32 0, metadata !106, null}
!108 = metadata !{i32 128, i32 0, metadata !48, null}
!109 = metadata !{i32 129, i32 0, metadata !48, null}
!110 = metadata !{i32 130, i32 0, metadata !48, null}
!111 = metadata !{i32 131, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !48, i32 131, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!113 = metadata !{i32 132, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !112, i32 131, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!115 = metadata !{i32 133, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !114, i32 132, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!117 = metadata !{i32 134, i32 0, metadata !116, null}
!118 = metadata !{i32 135, i32 0, metadata !116, null}
!119 = metadata !{i32 136, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !114, i32 135, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!121 = metadata !{i32 137, i32 0, metadata !120, null}
!122 = metadata !{i32 138, i32 0, metadata !120, null}
!123 = metadata !{i32 140, i32 0, metadata !48, null}
!124 = metadata !{i32 141, i32 0, metadata !48, null}
!125 = metadata !{i32 142, i32 0, metadata !48, null}
!126 = metadata !{i32 148, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !128, i32 148, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!128 = metadata !{i32 786443, metadata !1, metadata !35, i32 142, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!129 = metadata !{i32 149, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !127, i32 148, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!131 = metadata !{i32 150, i32 0, metadata !130, null}
!132 = metadata !{i32 157, i32 0, metadata !130, null}
!133 = metadata !{i32 151, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !130, i32 151, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!135 = metadata !{i32 152, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !134, i32 151, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!137 = metadata !{i32 153, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !136, i32 152, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!139 = metadata !{i32 154, i32 0, metadata !138, null}
!140 = metadata !{i32 158, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !130, i32 157, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!142 = metadata !{i32 159, i32 0, metadata !141, null}
!143 = metadata !{i32 160, i32 0, metadata !141, null}
!144 = metadata !{i32 161, i32 0, metadata !141, null}
!145 = metadata !{i32 162, i32 0, metadata !141, null}
!146 = metadata !{i32 166, i32 0, metadata !35, null}
!147 = metadata !{i32 53, i32 0, metadata !29, null}
!148 = metadata !{i32 54, i32 0, metadata !29, null}
!149 = metadata !{i32 55, i32 0, metadata !29, null}
!150 = metadata !{i32 63, i32 0, metadata !29, null}
!151 = metadata !{i32 64, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !29, i32 63, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!153 = metadata !{i32 66, i32 0, metadata !152, null}
!154 = metadata !{i32 68, i32 0, metadata !29, null}
!155 = metadata !{i32 69, i32 0, metadata !29, null}
!156 = metadata !{i32 70, i32 0, metadata !29, null}
!157 = metadata !{i32 71, i32 0, metadata !29, null}
!158 = metadata !{i32 73, i32 0, metadata !29, null}
!159 = metadata !{i32 181, i32 0, metadata !52, null}
!160 = metadata !{i32 182, i32 0, metadata !52, null}
!161 = metadata !{i32 183, i32 0, metadata !52, null}
!162 = metadata !{i32 191, i32 0, metadata !52, null}
!163 = metadata !{i32 192, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !52, i32 191, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!165 = metadata !{i32 194, i32 0, metadata !164, null}
!166 = metadata !{i32 195, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !164, i32 194, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!168 = metadata !{i32 196, i32 0, metadata !167, null}
!169 = metadata !{i32 197, i32 0, metadata !164, null}
!170 = metadata !{i32 199, i32 0, metadata !52, null}
!171 = metadata !{i32 200, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !52, i32 199, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!173 = metadata !{i32 203, i32 0, metadata !172, null}
!174 = metadata !{i32 205, i32 0, metadata !52, null}
!175 = metadata !{i32 206, i32 0, metadata !52, null}
!176 = metadata !{i32 215, i32 0, metadata !63, null}
!177 = metadata !{i32 216, i32 0, metadata !63, null}
!178 = metadata !{i32 217, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !63, i32 216, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!180 = metadata !{i32 218, i32 0, metadata !179, null}
!181 = metadata !{i32 219, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !63, i32 218, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!183 = metadata !{i32 220, i32 0, metadata !182, null}
!184 = metadata !{i32 221, i32 0, metadata !63, null}
!185 = metadata !{i32 222, i32 0, metadata !63, null}
!186 = metadata !{i32 223, i32 0, metadata !63, null}
!187 = metadata !{i32 224, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !63, i32 224, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!189 = metadata !{i32 225, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !188, i32 224, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!191 = metadata !{i32 226, i32 0, metadata !192, null}
!192 = metadata !{i32 786443, metadata !1, metadata !190, i32 225, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!193 = metadata !{i32 227, i32 0, metadata !192, null}
!194 = metadata !{i32 228, i32 0, metadata !192, null}
!195 = metadata !{i32 229, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !190, i32 228, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!197 = metadata !{i32 230, i32 0, metadata !196, null}
!198 = metadata !{i32 231, i32 0, metadata !196, null}
!199 = metadata !{i32 233, i32 0, metadata !63, null}
!200 = metadata !{i32 234, i32 0, metadata !63, null}
!201 = metadata !{i32 235, i32 0, metadata !63, null}
!202 = metadata !{i32 241, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !204, i32 241, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!204 = metadata !{i32 786443, metadata !1, metadata !52, i32 235, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!205 = metadata !{i32 242, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !203, i32 241, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!207 = metadata !{i32 243, i32 0, metadata !206, null}
!208 = metadata !{i32 250, i32 0, metadata !206, null}
!209 = metadata !{i32 244, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !206, i32 244, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!211 = metadata !{i32 245, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !210, i32 244, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!213 = metadata !{i32 246, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !212, i32 245, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!215 = metadata !{i32 247, i32 0, metadata !214, null}
!216 = metadata !{i32 251, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !206, i32 250, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_sort.c]
!218 = metadata !{i32 252, i32 0, metadata !217, null}
!219 = metadata !{i32 253, i32 0, metadata !217, null}
!220 = metadata !{i32 254, i32 0, metadata !217, null}
!221 = metadata !{i32 255, i32 0, metadata !217, null}
!222 = metadata !{i32 258, i32 0, metadata !52, null}
