; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [51 x i8] c"\0A fatal error in SubMtx_sortRowsUp(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [94 x i8] c"\0A fatal error in SubMtx_sortRowsUp(%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"\0A fatal error in SubMtx_sortRowsUp(%p)\0A bad type = %d\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"\0A fatal error in SubMtx_sortColumnsUp(%p)\0A bad type = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_sortRowsUp(%struct._SubMtx* %mtx) #0 {
entry:
  %a2 = alloca %struct._A2, align 8
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %rowind = alloca i32*, align 8
  %entries11 = alloca double*, align 8
  %nent = alloca i32, align 4
  %nrow12 = alloca i32, align 4
  %indices = alloca i32*, align 8
  %rowind13 = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !37), !dbg !100
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !101
  br i1 %cmp, label %if.then, label %if.end, !dbg !101

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !102, !tbaa !104
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* null) #5, !dbg !102
  call void @exit(i32 -1) #6, !dbg !107
  unreachable, !dbg !107

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !108
  %1 = load i32* %type, align 4, !dbg !108, !tbaa !109
  %.off = add i32 %1, -1, !dbg !108
  %switch = icmp ult i32 %.off, 2, !dbg !108
  br i1 %switch, label %if.end7, label %if.then4, !dbg !108

if.then4:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !110, !tbaa !104
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([94 x i8]* @.str1, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %1) #5, !dbg !110
  call void @exit(i32 -1) #6, !dbg !112
  unreachable, !dbg !112

if.end7:                                          ; preds = %if.end
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !113
  %3 = load i32* %mode, align 4, !dbg !113, !tbaa !109
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ], !dbg !113

sw.bb:                                            ; preds = %if.end7, %if.end7
  call void @llvm.dbg.declare(metadata !{%struct._A2* %a2}, metadata !38), !dbg !114
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !52), !dbg !115
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !53), !dbg !116
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !54), !dbg !116
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !55), !dbg !116
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !56), !dbg !116
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !57), !dbg !117
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #5, !dbg !118
  call void @A2_setDefaultFields(%struct._A2* %a2) #5, !dbg !119
  %4 = load i32* %type, align 4, !dbg !120, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !56), !dbg !120
  %5 = load i32* %nrow, align 4, !dbg !120, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !55), !dbg !120
  %6 = load i32* %ncol, align 4, !dbg !120, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !53), !dbg !120
  %7 = load i32* %inc1, align 4, !dbg !120, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !54), !dbg !120
  %8 = load i32* %inc2, align 4, !dbg !120, !tbaa !109
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !52), !dbg !120
  %9 = load double** %entries, align 8, !dbg !120, !tbaa !104
  call void @A2_init(%struct._A2* %a2, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, double* %9) #5, !dbg !120
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #5, !dbg !121
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !56), !dbg !122
  %10 = load i32* %nrow, align 4, !dbg !122, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !57), !dbg !122
  %11 = load i32** %rowind, align 8, !dbg !122, !tbaa !104
  %call9 = call i32 @A2_sortRowsUp(%struct._A2* %a2, i32 %10, i32* %11) #5, !dbg !122
  br label %sw.epilog, !dbg !123

sw.bb10:                                          ; preds = %if.end7
  call void @llvm.dbg.declare(metadata !{double** %entries11}, metadata !59), !dbg !124
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !65), !dbg !125
  call void @llvm.dbg.declare(metadata !{i32* %nrow12}, metadata !66), !dbg !125
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !70), !dbg !126
  call void @llvm.dbg.declare(metadata !{i32** %rowind13}, metadata !72), !dbg !126
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !73), !dbg !126
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow12, i32* %nent, i32** %sizes, i32** %indices, double** %entries11) #5, !dbg !127
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow12, i32** %rowind13) #5, !dbg !128
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !65), !dbg !129
  %12 = load i32* %nent, align 4, !dbg !129, !tbaa !109
  %call14 = call i32* @IVinit(i32 %12, i32 -1) #5, !dbg !129
  call void @llvm.dbg.value(metadata !{i32* %call14}, i64 0, metadata !71), !dbg !129
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !64), !dbg !130
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !62), !dbg !130
  call void @llvm.dbg.value(metadata !{i32* %nrow12}, i64 0, metadata !66), !dbg !130
  %13 = load i32* %nrow12, align 4, !dbg !130, !tbaa !109
  %cmp15173 = icmp sgt i32 %13, 0, !dbg !130
  br i1 %cmp15173, label %for.body.lr.ph, label %sw.bb10.for.end26_crit_edge, !dbg !130

sw.bb10.for.end26_crit_edge:                      ; preds = %sw.bb10
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !73), !dbg !132
  %.pre187 = load i32** %sizes, align 8, !dbg !132, !tbaa !104
  br label %for.end26, !dbg !130

for.body.lr.ph:                                   ; preds = %sw.bb10
  call void @llvm.dbg.value(metadata !{i32** %rowind13}, i64 0, metadata !72), !dbg !133
  %14 = load i32** %rowind13, align 8, !dbg !133, !tbaa !104
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !73), !dbg !135
  %15 = load i32** %sizes, align 8, !dbg !135, !tbaa !104
  br label %for.body, !dbg !130

for.body:                                         ; preds = %for.body.lr.ph, %for.inc24
  %16 = phi i32 [ %13, %for.body.lr.ph ], [ %21, %for.inc24 ]
  %indvars.iv184 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next185, %for.inc24 ]
  %kk.0175 = phi i32 [ 0, %for.body.lr.ph ], [ %kk.1.lcssa, %for.inc24 ]
  call void @llvm.dbg.value(metadata !{i32** %rowind13}, i64 0, metadata !72), !dbg !133
  %arrayidx = getelementptr inbounds i32* %14, i64 %indvars.iv184, !dbg !133
  %17 = load i32* %arrayidx, align 4, !dbg !133, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !68), !dbg !133
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !73), !dbg !135
  %arrayidx17 = getelementptr inbounds i32* %15, i64 %indvars.iv184, !dbg !135
  %18 = load i32* %arrayidx17, align 4, !dbg !135, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !69), !dbg !135
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !61), !dbg !136
  %cmp19169 = icmp sgt i32 %18, 0, !dbg !136
  br i1 %cmp19169, label %for.body20.lr.ph, label %for.inc24, !dbg !136

for.body20.lr.ph:                                 ; preds = %for.body
  %19 = sext i32 %kk.0175 to i64
  br label %for.body20, !dbg !136

for.body20:                                       ; preds = %for.body20, %for.body20.lr.ph
  %indvars.iv181 = phi i64 [ %19, %for.body20.lr.ph ], [ %indvars.iv.next182, %for.body20 ]
  %ii.0171 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc, %for.body20 ]
  %arrayidx22 = getelementptr inbounds i32* %call14, i64 %indvars.iv181, !dbg !138
  store i32 %17, i32* %arrayidx22, align 4, !dbg !138, !tbaa !109
  %inc = add nsw i32 %ii.0171, 1, !dbg !136
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !61), !dbg !136
  %indvars.iv.next182 = add i64 %indvars.iv181, 1, !dbg !136
  call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !64), !dbg !136
  %exitcond = icmp eq i32 %inc, %18, !dbg !136
  br i1 %exitcond, label %for.cond18.for.inc24_crit_edge, label %for.body20, !dbg !136

for.cond18.for.inc24_crit_edge:                   ; preds = %for.body20
  %20 = add i32 %kk.0175, %18, !dbg !136
  call void @llvm.dbg.value(metadata !{i32* %nrow12}, i64 0, metadata !66), !dbg !130
  %.pre186 = load i32* %nrow12, align 4, !dbg !130, !tbaa !109
  br label %for.inc24, !dbg !136

for.inc24:                                        ; preds = %for.cond18.for.inc24_crit_edge, %for.body
  %21 = phi i32 [ %.pre186, %for.cond18.for.inc24_crit_edge ], [ %16, %for.body ], !dbg !130
  %kk.1.lcssa = phi i32 [ %20, %for.cond18.for.inc24_crit_edge ], [ %kk.0175, %for.body ]
  %indvars.iv.next185 = add i64 %indvars.iv184, 1, !dbg !130
  call void @llvm.dbg.value(metadata !{i32* %nrow12}, i64 0, metadata !66), !dbg !130
  %22 = trunc i64 %indvars.iv.next185 to i32, !dbg !130
  %cmp15 = icmp slt i32 %22, %21, !dbg !130
  br i1 %cmp15, label %for.body, label %for.end26, !dbg !130

for.end26:                                        ; preds = %for.inc24, %sw.bb10.for.end26_crit_edge
  %23 = phi i32* [ %.pre187, %sw.bb10.for.end26_crit_edge ], [ %15, %for.inc24 ]
  %.lcssa = phi i32 [ %13, %sw.bb10.for.end26_crit_edge ], [ %21, %for.inc24 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !73), !dbg !132
  call void @IVzero(i32 %.lcssa, i32* %23) #5, !dbg !132
  %24 = load i32* %type, align 4, !dbg !140, !tbaa !109
  switch i32 %24, label %if.end34 [
    i32 1, label %if.then29
    i32 2, label %if.then32
  ], !dbg !140

if.then29:                                        ; preds = %for.end26
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !65), !dbg !141
  %25 = load i32* %nent, align 4, !dbg !141, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !70), !dbg !141
  %26 = load i32** %indices, align 8, !dbg !141, !tbaa !104
  call void @llvm.dbg.value(metadata !{double** %entries11}, i64 0, metadata !59), !dbg !141
  %27 = load double** %entries11, align 8, !dbg !141, !tbaa !104
  call void @IV2DVqsortUp(i32 %25, i32* %call14, i32* %26, double* %27) #5, !dbg !141
  br label %if.end34, !dbg !143

if.then32:                                        ; preds = %for.end26
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !65), !dbg !144
  %28 = load i32* %nent, align 4, !dbg !144, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !70), !dbg !144
  %29 = load i32** %indices, align 8, !dbg !144, !tbaa !104
  call void @llvm.dbg.value(metadata !{double** %entries11}, i64 0, metadata !59), !dbg !144
  %30 = load double** %entries11, align 8, !dbg !144, !tbaa !104
  call void @IV2ZVqsortUp(i32 %28, i32* %call14, i32* %29, double* %30) #5, !dbg !144
  br label %if.end34, !dbg !146

if.end34:                                         ; preds = %for.end26, %if.then32, %if.then29
  call void @llvm.dbg.value(metadata !{i32* %nrow12}, i64 0, metadata !66), !dbg !147
  %31 = load i32* %nrow12, align 4, !dbg !147, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32** %rowind13}, i64 0, metadata !72), !dbg !147
  %32 = load i32** %rowind13, align 8, !dbg !147, !tbaa !104
  call void @IVqsortUp(i32 %31, i32* %32) #5, !dbg !147
  %33 = load i32* %call14, align 4, !dbg !148, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32 %33}, i64 0, metadata !68), !dbg !148
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !67), !dbg !149
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !63), !dbg !149
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !69), !dbg !151
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !64), !dbg !151
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !65), !dbg !152
  %34 = load i32* %nent, align 4, !dbg !152, !tbaa !109
  %cmp36160 = icmp sgt i32 %34, 1, !dbg !152
  br i1 %cmp36160, label %while.body, label %while.cond72.preheader, !dbg !152

while.cond72.preheader:                           ; preds = %if.end69, %if.end34
  %size.0.lcssa = phi i32 [ 1, %if.end34 ], [ %size.1, %if.end69 ]
  %rowid.0.lcssa = phi i32 [ %33, %if.end34 ], [ %rowid.1, %if.end69 ]
  %offset.0.lcssa = phi i32 [ 0, %if.end34 ], [ %offset.1, %if.end69 ]
  %jrow.0.lcssa = phi i32 [ 0, %if.end34 ], [ %jrow.2, %if.end69 ]
  call void @llvm.dbg.value(metadata !{i32** %rowind13}, i64 0, metadata !72), !dbg !153
  %35 = load i32** %rowind13, align 8, !dbg !153, !tbaa !104
  %36 = sext i32 %jrow.0.lcssa to i64
  br label %while.cond72, !dbg !153

while.body:                                       ; preds = %if.end34, %if.end69
  %37 = phi i32 [ %49, %if.end69 ], [ %34, %if.end34 ]
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %if.end69 ], [ 1, %if.end34 ]
  %size.0165 = phi i32 [ %size.1, %if.end69 ], [ 1, %if.end34 ]
  %rowid.0164 = phi i32 [ %rowid.1, %if.end69 ], [ %33, %if.end34 ]
  %offset.0163 = phi i32 [ %offset.1, %if.end69 ], [ 0, %if.end34 ]
  %jrow.0161 = phi i32 [ %jrow.2, %if.end69 ], [ 0, %if.end34 ]
  %arrayidx38 = getelementptr inbounds i32* %call14, i64 %indvars.iv179, !dbg !154
  %38 = load i32* %arrayidx38, align 4, !dbg !154, !tbaa !109
  %cmp39 = icmp eq i32 %38, %rowid.0164, !dbg !154
  br i1 %cmp39, label %if.then40, label %while.cond43.preheader, !dbg !154

while.cond43.preheader:                           ; preds = %while.body
  call void @llvm.dbg.value(metadata !{i32** %rowind13}, i64 0, metadata !72), !dbg !156
  %39 = load i32** %rowind13, align 8, !dbg !156, !tbaa !104
  %40 = sext i32 %jrow.0161 to i64
  br label %while.cond43, !dbg !156

if.then40:                                        ; preds = %while.body
  %inc41 = add nsw i32 %size.0165, 1, !dbg !158
  call void @llvm.dbg.value(metadata !{i32 %inc41}, i64 0, metadata !69), !dbg !158
  br label %if.end69, !dbg !160

while.cond43:                                     ; preds = %while.cond43, %while.cond43.preheader
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %while.cond43 ], [ %40, %while.cond43.preheader ]
  %jrow.1 = phi i32 [ %inc48, %while.cond43 ], [ %jrow.0161, %while.cond43.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %rowind13}, i64 0, metadata !72), !dbg !156
  %arrayidx45 = getelementptr inbounds i32* %39, i64 %indvars.iv177, !dbg !156
  %41 = load i32* %arrayidx45, align 4, !dbg !156, !tbaa !109
  %cmp46 = icmp eq i32 %rowid.0164, %41, !dbg !156
  %indvars.iv.next178 = add i64 %indvars.iv177, 1, !dbg !156
  %inc48 = add nsw i32 %jrow.1, 1, !dbg !161
  call void @llvm.dbg.value(metadata !{i32 %inc48}, i64 0, metadata !63), !dbg !161
  br i1 %cmp46, label %while.end, label %while.cond43, !dbg !156

while.end:                                        ; preds = %while.cond43
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !73), !dbg !163
  %42 = load i32** %sizes, align 8, !dbg !163, !tbaa !104
  %arrayidx50 = getelementptr inbounds i32* %42, i64 %indvars.iv177, !dbg !163
  store i32 %size.0165, i32* %arrayidx50, align 4, !dbg !163, !tbaa !109
  %43 = load i32* %type, align 4, !dbg !164, !tbaa !109
  switch i32 %43, label %if.end65 [
    i32 1, label %if.then53
    i32 2, label %if.then59
  ], !dbg !164

if.then53:                                        ; preds = %while.end
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !70), !dbg !165
  %44 = load i32** %indices, align 8, !dbg !165, !tbaa !104
  %idx.ext = sext i32 %offset.0163 to i64, !dbg !165
  %add.ptr = getelementptr inbounds i32* %44, i64 %idx.ext, !dbg !165
  call void @llvm.dbg.value(metadata !{double** %entries11}, i64 0, metadata !59), !dbg !165
  %45 = load double** %entries11, align 8, !dbg !165, !tbaa !104
  %add.ptr55 = getelementptr inbounds double* %45, i64 %idx.ext, !dbg !165
  call void @IVDVqsortUp(i32 %size.0165, i32* %add.ptr, double* %add.ptr55) #5, !dbg !165
  br label %if.end65, !dbg !167

if.then59:                                        ; preds = %while.end
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !70), !dbg !168
  %46 = load i32** %indices, align 8, !dbg !168, !tbaa !104
  %idx.ext60 = sext i32 %offset.0163 to i64, !dbg !168
  %add.ptr61 = getelementptr inbounds i32* %46, i64 %idx.ext60, !dbg !168
  call void @llvm.dbg.value(metadata !{double** %entries11}, i64 0, metadata !59), !dbg !168
  %47 = load double** %entries11, align 8, !dbg !168, !tbaa !104
  %mul = shl nsw i32 %offset.0163, 1, !dbg !168
  %idx.ext62 = sext i32 %mul to i64, !dbg !168
  %add.ptr63 = getelementptr inbounds double* %47, i64 %idx.ext62, !dbg !168
  call void @IVZVqsortUp(i32 %size.0165, i32* %add.ptr61, double* %add.ptr63) #5, !dbg !168
  br label %if.end65, !dbg !170

if.end65:                                         ; preds = %while.end, %if.then59, %if.then53
  %48 = load i32* %arrayidx38, align 4, !dbg !171, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32 %48}, i64 0, metadata !68), !dbg !171
  call void @llvm.dbg.value(metadata !{i32 %inc48}, i64 0, metadata !63), !dbg !172
  %add = add nsw i32 %size.0165, %offset.0163, !dbg !173
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !67), !dbg !173
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !69), !dbg !174
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !65), !dbg !152
  %.pre = load i32* %nent, align 4, !dbg !152, !tbaa !109
  br label %if.end69

if.end69:                                         ; preds = %if.end65, %if.then40
  %49 = phi i32 [ %37, %if.then40 ], [ %.pre, %if.end65 ], !dbg !152
  %jrow.2 = phi i32 [ %jrow.0161, %if.then40 ], [ %inc48, %if.end65 ]
  %offset.1 = phi i32 [ %offset.0163, %if.then40 ], [ %add, %if.end65 ]
  %rowid.1 = phi i32 [ %rowid.0164, %if.then40 ], [ %48, %if.end65 ]
  %size.1 = phi i32 [ %inc41, %if.then40 ], [ 1, %if.end65 ]
  %indvars.iv.next180 = add i64 %indvars.iv179, 1, !dbg !152
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !65), !dbg !152
  %50 = trunc i64 %indvars.iv.next180 to i32, !dbg !152
  %cmp36 = icmp slt i32 %50, %49, !dbg !152
  br i1 %cmp36, label %while.body, label %while.cond72.preheader, !dbg !152

while.cond72:                                     ; preds = %while.cond72, %while.cond72.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond72 ], [ %36, %while.cond72.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %rowind13}, i64 0, metadata !72), !dbg !153
  %arrayidx74 = getelementptr inbounds i32* %35, i64 %indvars.iv, !dbg !153
  %51 = load i32* %arrayidx74, align 4, !dbg !153, !tbaa !109
  %cmp75 = icmp eq i32 %rowid.0.lcssa, %51, !dbg !153
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !153
  br i1 %cmp75, label %while.end78, label %while.cond72, !dbg !153

while.end78:                                      ; preds = %while.cond72
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !73), !dbg !175
  %52 = load i32** %sizes, align 8, !dbg !175, !tbaa !104
  %arrayidx80 = getelementptr inbounds i32* %52, i64 %indvars.iv, !dbg !175
  store i32 %size.0.lcssa, i32* %arrayidx80, align 4, !dbg !175, !tbaa !109
  %53 = load i32* %type, align 4, !dbg !176, !tbaa !109
  switch i32 %53, label %if.end98 [
    i32 1, label %if.then83
    i32 2, label %if.then91
  ], !dbg !176

if.then83:                                        ; preds = %while.end78
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !70), !dbg !177
  %54 = load i32** %indices, align 8, !dbg !177, !tbaa !104
  %idx.ext84 = sext i32 %offset.0.lcssa to i64, !dbg !177
  %add.ptr85 = getelementptr inbounds i32* %54, i64 %idx.ext84, !dbg !177
  call void @llvm.dbg.value(metadata !{double** %entries11}, i64 0, metadata !59), !dbg !177
  %55 = load double** %entries11, align 8, !dbg !177, !tbaa !104
  %add.ptr87 = getelementptr inbounds double* %55, i64 %idx.ext84, !dbg !177
  call void @IVDVqsortUp(i32 %size.0.lcssa, i32* %add.ptr85, double* %add.ptr87) #5, !dbg !177
  br label %if.end98, !dbg !179

if.then91:                                        ; preds = %while.end78
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !70), !dbg !180
  %56 = load i32** %indices, align 8, !dbg !180, !tbaa !104
  %idx.ext92 = sext i32 %offset.0.lcssa to i64, !dbg !180
  %add.ptr93 = getelementptr inbounds i32* %56, i64 %idx.ext92, !dbg !180
  call void @llvm.dbg.value(metadata !{double** %entries11}, i64 0, metadata !59), !dbg !180
  %57 = load double** %entries11, align 8, !dbg !180, !tbaa !104
  %mul94 = shl nsw i32 %offset.0.lcssa, 1, !dbg !180
  %idx.ext95 = sext i32 %mul94 to i64, !dbg !180
  %add.ptr96 = getelementptr inbounds double* %57, i64 %idx.ext95, !dbg !180
  call void @IVZVqsortUp(i32 %size.0.lcssa, i32* %add.ptr93, double* %add.ptr96) #5, !dbg !180
  br label %if.end98, !dbg !182

if.end98:                                         ; preds = %while.end78, %if.then91, %if.then83
  call void @IVfree(i32* %call14) #5, !dbg !183
  br label %sw.epilog, !dbg !184

sw.default:                                       ; preds = %if.end7
  %58 = load %struct._IO_FILE** @stderr, align 8, !dbg !185, !tbaa !104
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %1) #5, !dbg !185
  call void @exit(i32 -1) #6, !dbg !186
  unreachable, !dbg !186

sw.epilog:                                        ; preds = %if.end98, %sw.bb
  ret void, !dbg !187
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #4

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #4

; Function Attrs: optsize
declare void @A2_init(%struct._A2*, i32, i32, i32, i32, i32, double*) #4

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare i32 @A2_sortRowsUp(%struct._A2*, i32, i32*) #4

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: optsize
declare void @IVzero(i32, i32*) #4

; Function Attrs: optsize
declare void @IV2DVqsortUp(i32, i32*, i32*, double*) #4

; Function Attrs: optsize
declare void @IV2ZVqsortUp(i32, i32*, i32*, double*) #4

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #4

; Function Attrs: optsize
declare void @IVDVqsortUp(i32, i32*, double*) #4

; Function Attrs: optsize
declare void @IVZVqsortUp(i32, i32*, double*) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_sortColumnsUp(%struct._SubMtx* %mtx) #0 {
entry:
  %a2 = alloca %struct._A2, align 8
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %entries2 = alloca double*, align 8
  %ncol3 = alloca i32, align 4
  %nent = alloca i32, align 4
  %colind4 = alloca i32*, align 8
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !76), !dbg !188
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !189
  %0 = load i32* %mode, align 4, !dbg !189, !tbaa !109
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
  ], !dbg !189

sw.bb:                                            ; preds = %entry, %entry
  call void @llvm.dbg.declare(metadata !{%struct._A2* %a2}, metadata !77), !dbg !190
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !80), !dbg !191
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !81), !dbg !192
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !82), !dbg !192
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !83), !dbg !192
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !84), !dbg !192
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !85), !dbg !193
  call void @A2_setDefaultFields(%struct._A2* %a2) #5, !dbg !194
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #5, !dbg !195
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !196
  %1 = load i32* %type, align 4, !dbg !196, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !84), !dbg !196
  %2 = load i32* %nrow, align 4, !dbg !196, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !83), !dbg !196
  %3 = load i32* %ncol, align 4, !dbg !196, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !81), !dbg !196
  %4 = load i32* %inc1, align 4, !dbg !196, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !82), !dbg !196
  %5 = load i32* %inc2, align 4, !dbg !196, !tbaa !109
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !80), !dbg !196
  %6 = load double** %entries, align 8, !dbg !196, !tbaa !104
  call void @A2_init(%struct._A2* %a2, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, double* %6) #5, !dbg !196
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #5, !dbg !197
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !83), !dbg !198
  %7 = load i32* %ncol, align 4, !dbg !198, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !85), !dbg !198
  %8 = load i32** %colind, align 8, !dbg !198, !tbaa !104
  %call = call i32 @A2_sortColumnsUp(%struct._A2* %a2, i32 %7, i32* %8) #5, !dbg !198
  br label %sw.epilog, !dbg !199

sw.bb1:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata !{double** %entries2}, metadata !86), !dbg !200
  call void @llvm.dbg.declare(metadata !{i32* %ncol3}, metadata !92), !dbg !201
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !93), !dbg !201
  call void @llvm.dbg.declare(metadata !{i32** %colind4}, metadata !96), !dbg !202
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !97), !dbg !202
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !99), !dbg !202
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol3, i32* %nent, i32** %sizes, i32** %indices, double** %entries2) #5, !dbg !203
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol3, i32** %colind4) #5, !dbg !204
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !93), !dbg !205
  %9 = load i32* %nent, align 4, !dbg !205, !tbaa !109
  %call5 = call i32* @IVinit(i32 %9, i32 -1) #5, !dbg !205
  call void @llvm.dbg.value(metadata !{i32* %call5}, i64 0, metadata !98), !dbg !205
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !206
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !90), !dbg !206
  call void @llvm.dbg.value(metadata !{i32* %ncol3}, i64 0, metadata !92), !dbg !206
  %10 = load i32* %ncol3, align 4, !dbg !206, !tbaa !109
  %cmp158 = icmp sgt i32 %10, 0, !dbg !206
  br i1 %cmp158, label %for.body.lr.ph, label %sw.bb1.for.end16_crit_edge, !dbg !206

sw.bb1.for.end16_crit_edge:                       ; preds = %sw.bb1
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !99), !dbg !208
  %.pre172 = load i32** %sizes, align 8, !dbg !208, !tbaa !104
  br label %for.end16, !dbg !206

for.body.lr.ph:                                   ; preds = %sw.bb1
  call void @llvm.dbg.value(metadata !{i32** %colind4}, i64 0, metadata !96), !dbg !209
  %11 = load i32** %colind4, align 8, !dbg !209, !tbaa !104
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !99), !dbg !211
  %12 = load i32** %sizes, align 8, !dbg !211, !tbaa !104
  br label %for.body, !dbg !206

for.body:                                         ; preds = %for.body.lr.ph, %for.inc14
  %13 = phi i32 [ %10, %for.body.lr.ph ], [ %18, %for.inc14 ]
  %indvars.iv169 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next170, %for.inc14 ]
  %kk.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %kk.1.lcssa, %for.inc14 ]
  call void @llvm.dbg.value(metadata !{i32** %colind4}, i64 0, metadata !96), !dbg !209
  %arrayidx = getelementptr inbounds i32* %11, i64 %indvars.iv169, !dbg !209
  %14 = load i32* %arrayidx, align 4, !dbg !209, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !88), !dbg !209
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !99), !dbg !211
  %arrayidx7 = getelementptr inbounds i32* %12, i64 %indvars.iv169, !dbg !211
  %15 = load i32* %arrayidx7, align 4, !dbg !211, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !95), !dbg !211
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !89), !dbg !212
  %cmp9154 = icmp sgt i32 %15, 0, !dbg !212
  br i1 %cmp9154, label %for.body10.lr.ph, label %for.inc14, !dbg !212

for.body10.lr.ph:                                 ; preds = %for.body
  %16 = sext i32 %kk.0160 to i64
  br label %for.body10, !dbg !212

for.body10:                                       ; preds = %for.body10, %for.body10.lr.ph
  %indvars.iv166 = phi i64 [ %16, %for.body10.lr.ph ], [ %indvars.iv.next167, %for.body10 ]
  %ii.0155 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %for.body10 ]
  %arrayidx12 = getelementptr inbounds i32* %call5, i64 %indvars.iv166, !dbg !214
  store i32 %14, i32* %arrayidx12, align 4, !dbg !214, !tbaa !109
  %inc = add nsw i32 %ii.0155, 1, !dbg !212
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !89), !dbg !212
  %indvars.iv.next167 = add i64 %indvars.iv166, 1, !dbg !212
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !91), !dbg !212
  %exitcond = icmp eq i32 %inc, %15, !dbg !212
  br i1 %exitcond, label %for.cond8.for.inc14_crit_edge, label %for.body10, !dbg !212

for.cond8.for.inc14_crit_edge:                    ; preds = %for.body10
  %17 = add i32 %kk.0160, %15, !dbg !212
  call void @llvm.dbg.value(metadata !{i32* %ncol3}, i64 0, metadata !92), !dbg !206
  %.pre171 = load i32* %ncol3, align 4, !dbg !206, !tbaa !109
  br label %for.inc14, !dbg !212

for.inc14:                                        ; preds = %for.cond8.for.inc14_crit_edge, %for.body
  %18 = phi i32 [ %.pre171, %for.cond8.for.inc14_crit_edge ], [ %13, %for.body ], !dbg !206
  %kk.1.lcssa = phi i32 [ %17, %for.cond8.for.inc14_crit_edge ], [ %kk.0160, %for.body ]
  %indvars.iv.next170 = add i64 %indvars.iv169, 1, !dbg !206
  call void @llvm.dbg.value(metadata !{i32* %ncol3}, i64 0, metadata !92), !dbg !206
  %19 = trunc i64 %indvars.iv.next170 to i32, !dbg !206
  %cmp = icmp slt i32 %19, %18, !dbg !206
  br i1 %cmp, label %for.body, label %for.end16, !dbg !206

for.end16:                                        ; preds = %for.inc14, %sw.bb1.for.end16_crit_edge
  %20 = phi i32* [ %.pre172, %sw.bb1.for.end16_crit_edge ], [ %12, %for.inc14 ]
  %.lcssa = phi i32 [ %10, %sw.bb1.for.end16_crit_edge ], [ %18, %for.inc14 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !99), !dbg !208
  call void @IVzero(i32 %.lcssa, i32* %20) #5, !dbg !208
  %type17 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !216
  %21 = load i32* %type17, align 4, !dbg !216, !tbaa !109
  switch i32 %21, label %if.end22 [
    i32 1, label %if.then
    i32 2, label %if.then21
  ], !dbg !216

if.then:                                          ; preds = %for.end16
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !93), !dbg !217
  %22 = load i32* %nent, align 4, !dbg !217, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !97), !dbg !217
  %23 = load i32** %indices, align 8, !dbg !217, !tbaa !104
  call void @llvm.dbg.value(metadata !{double** %entries2}, i64 0, metadata !86), !dbg !217
  %24 = load double** %entries2, align 8, !dbg !217, !tbaa !104
  call void @IV2DVqsortUp(i32 %22, i32* %call5, i32* %23, double* %24) #5, !dbg !217
  br label %if.end22, !dbg !219

if.then21:                                        ; preds = %for.end16
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !93), !dbg !220
  %25 = load i32* %nent, align 4, !dbg !220, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !97), !dbg !220
  %26 = load i32** %indices, align 8, !dbg !220, !tbaa !104
  call void @llvm.dbg.value(metadata !{double** %entries2}, i64 0, metadata !86), !dbg !220
  %27 = load double** %entries2, align 8, !dbg !220, !tbaa !104
  call void @IV2ZVqsortUp(i32 %25, i32* %call5, i32* %26, double* %27) #5, !dbg !220
  br label %if.end22, !dbg !222

if.end22:                                         ; preds = %for.end16, %if.then21, %if.then
  call void @llvm.dbg.value(metadata !{i32* %ncol3}, i64 0, metadata !92), !dbg !223
  %28 = load i32* %ncol3, align 4, !dbg !223, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32** %colind4}, i64 0, metadata !96), !dbg !223
  %29 = load i32** %colind4, align 8, !dbg !223, !tbaa !104
  call void @IVqsortUp(i32 %28, i32* %29) #5, !dbg !223
  %30 = load i32* %call5, align 4, !dbg !224, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !88), !dbg !224
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !94), !dbg !225
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !90), !dbg !225
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !95), !dbg !226
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !91), !dbg !226
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !93), !dbg !227
  %31 = load i32* %nent, align 4, !dbg !227, !tbaa !109
  %cmp24145 = icmp sgt i32 %31, 1, !dbg !227
  br i1 %cmp24145, label %while.body, label %while.cond60.preheader, !dbg !227

while.cond60.preheader:                           ; preds = %if.end57, %if.end22
  %colid.0.lcssa = phi i32 [ %30, %if.end22 ], [ %colid.1, %if.end57 ]
  %size.0.lcssa = phi i32 [ 1, %if.end22 ], [ %size.1, %if.end57 ]
  %offset.0.lcssa = phi i32 [ 0, %if.end22 ], [ %offset.1, %if.end57 ]
  %jcol.1.lcssa = phi i32 [ 0, %if.end22 ], [ %jcol.3, %if.end57 ]
  call void @llvm.dbg.value(metadata !{i32** %colind4}, i64 0, metadata !96), !dbg !228
  %32 = load i32** %colind4, align 8, !dbg !228, !tbaa !104
  %33 = sext i32 %jcol.1.lcssa to i64
  br label %while.cond60, !dbg !228

while.body:                                       ; preds = %if.end22, %if.end57
  %34 = phi i32 [ %46, %if.end57 ], [ %31, %if.end22 ]
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %if.end57 ], [ 1, %if.end22 ]
  %colid.0150 = phi i32 [ %colid.1, %if.end57 ], [ %30, %if.end22 ]
  %size.0149 = phi i32 [ %size.1, %if.end57 ], [ 1, %if.end22 ]
  %offset.0148 = phi i32 [ %offset.1, %if.end57 ], [ 0, %if.end22 ]
  %jcol.1146 = phi i32 [ %jcol.3, %if.end57 ], [ 0, %if.end22 ]
  %arrayidx26 = getelementptr inbounds i32* %call5, i64 %indvars.iv164, !dbg !229
  %35 = load i32* %arrayidx26, align 4, !dbg !229, !tbaa !109
  %cmp27 = icmp eq i32 %35, %colid.0150, !dbg !229
  br i1 %cmp27, label %if.then28, label %while.cond31.preheader, !dbg !229

while.cond31.preheader:                           ; preds = %while.body
  call void @llvm.dbg.value(metadata !{i32** %colind4}, i64 0, metadata !96), !dbg !231
  %36 = load i32** %colind4, align 8, !dbg !231, !tbaa !104
  %37 = sext i32 %jcol.1146 to i64
  br label %while.cond31, !dbg !231

if.then28:                                        ; preds = %while.body
  %inc29 = add nsw i32 %size.0149, 1, !dbg !233
  call void @llvm.dbg.value(metadata !{i32 %inc29}, i64 0, metadata !95), !dbg !233
  br label %if.end57, !dbg !235

while.cond31:                                     ; preds = %while.cond31, %while.cond31.preheader
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %while.cond31 ], [ %37, %while.cond31.preheader ]
  %jcol.2 = phi i32 [ %inc36, %while.cond31 ], [ %jcol.1146, %while.cond31.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %colind4}, i64 0, metadata !96), !dbg !231
  %arrayidx33 = getelementptr inbounds i32* %36, i64 %indvars.iv162, !dbg !231
  %38 = load i32* %arrayidx33, align 4, !dbg !231, !tbaa !109
  %cmp34 = icmp eq i32 %colid.0150, %38, !dbg !231
  %indvars.iv.next163 = add i64 %indvars.iv162, 1, !dbg !231
  %inc36 = add nsw i32 %jcol.2, 1, !dbg !236
  call void @llvm.dbg.value(metadata !{i32 %inc36}, i64 0, metadata !90), !dbg !236
  br i1 %cmp34, label %while.end, label %while.cond31, !dbg !231

while.end:                                        ; preds = %while.cond31
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !99), !dbg !238
  %39 = load i32** %sizes, align 8, !dbg !238, !tbaa !104
  %arrayidx38 = getelementptr inbounds i32* %39, i64 %indvars.iv162, !dbg !238
  store i32 %size.0149, i32* %arrayidx38, align 4, !dbg !238, !tbaa !109
  %40 = load i32* %type17, align 4, !dbg !239, !tbaa !109
  switch i32 %40, label %if.end53 [
    i32 1, label %if.then41
    i32 2, label %if.then47
  ], !dbg !239

if.then41:                                        ; preds = %while.end
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !97), !dbg !240
  %41 = load i32** %indices, align 8, !dbg !240, !tbaa !104
  %idx.ext = sext i32 %offset.0148 to i64, !dbg !240
  %add.ptr = getelementptr inbounds i32* %41, i64 %idx.ext, !dbg !240
  call void @llvm.dbg.value(metadata !{double** %entries2}, i64 0, metadata !86), !dbg !240
  %42 = load double** %entries2, align 8, !dbg !240, !tbaa !104
  %add.ptr43 = getelementptr inbounds double* %42, i64 %idx.ext, !dbg !240
  call void @IVDVqsortUp(i32 %size.0149, i32* %add.ptr, double* %add.ptr43) #5, !dbg !240
  br label %if.end53, !dbg !242

if.then47:                                        ; preds = %while.end
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !97), !dbg !243
  %43 = load i32** %indices, align 8, !dbg !243, !tbaa !104
  %idx.ext48 = sext i32 %offset.0148 to i64, !dbg !243
  %add.ptr49 = getelementptr inbounds i32* %43, i64 %idx.ext48, !dbg !243
  call void @llvm.dbg.value(metadata !{double** %entries2}, i64 0, metadata !86), !dbg !243
  %44 = load double** %entries2, align 8, !dbg !243, !tbaa !104
  %mul = shl nsw i32 %offset.0148, 1, !dbg !243
  %idx.ext50 = sext i32 %mul to i64, !dbg !243
  %add.ptr51 = getelementptr inbounds double* %44, i64 %idx.ext50, !dbg !243
  call void @IVZVqsortUp(i32 %size.0149, i32* %add.ptr49, double* %add.ptr51) #5, !dbg !243
  br label %if.end53, !dbg !245

if.end53:                                         ; preds = %while.end, %if.then47, %if.then41
  %45 = load i32* %arrayidx26, align 4, !dbg !246, !tbaa !109
  call void @llvm.dbg.value(metadata !{i32 %45}, i64 0, metadata !88), !dbg !246
  call void @llvm.dbg.value(metadata !{i32 %inc36}, i64 0, metadata !90), !dbg !247
  %add = add nsw i32 %size.0149, %offset.0148, !dbg !248
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !94), !dbg !248
  call void @llvm.dbg.value(metadata !150, i64 0, metadata !95), !dbg !249
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !93), !dbg !227
  %.pre = load i32* %nent, align 4, !dbg !227, !tbaa !109
  br label %if.end57

if.end57:                                         ; preds = %if.end53, %if.then28
  %46 = phi i32 [ %34, %if.then28 ], [ %.pre, %if.end53 ], !dbg !227
  %jcol.3 = phi i32 [ %jcol.1146, %if.then28 ], [ %inc36, %if.end53 ]
  %offset.1 = phi i32 [ %offset.0148, %if.then28 ], [ %add, %if.end53 ]
  %size.1 = phi i32 [ %inc29, %if.then28 ], [ 1, %if.end53 ]
  %colid.1 = phi i32 [ %colid.0150, %if.then28 ], [ %45, %if.end53 ]
  %indvars.iv.next165 = add i64 %indvars.iv164, 1, !dbg !227
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !93), !dbg !227
  %47 = trunc i64 %indvars.iv.next165 to i32, !dbg !227
  %cmp24 = icmp slt i32 %47, %46, !dbg !227
  br i1 %cmp24, label %while.body, label %while.cond60.preheader, !dbg !227

while.cond60:                                     ; preds = %while.cond60, %while.cond60.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond60 ], [ %33, %while.cond60.preheader ]
  call void @llvm.dbg.value(metadata !{i32** %colind4}, i64 0, metadata !96), !dbg !228
  %arrayidx62 = getelementptr inbounds i32* %32, i64 %indvars.iv, !dbg !228
  %48 = load i32* %arrayidx62, align 4, !dbg !228, !tbaa !109
  %cmp63 = icmp eq i32 %colid.0.lcssa, %48, !dbg !228
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !228
  br i1 %cmp63, label %while.end66, label %while.cond60, !dbg !228

while.end66:                                      ; preds = %while.cond60
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !99), !dbg !250
  %49 = load i32** %sizes, align 8, !dbg !250, !tbaa !104
  %arrayidx68 = getelementptr inbounds i32* %49, i64 %indvars.iv, !dbg !250
  store i32 %size.0.lcssa, i32* %arrayidx68, align 4, !dbg !250, !tbaa !109
  %50 = load i32* %type17, align 4, !dbg !251, !tbaa !109
  switch i32 %50, label %if.end86 [
    i32 1, label %if.then71
    i32 2, label %if.then79
  ], !dbg !251

if.then71:                                        ; preds = %while.end66
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !97), !dbg !252
  %51 = load i32** %indices, align 8, !dbg !252, !tbaa !104
  %idx.ext72 = sext i32 %offset.0.lcssa to i64, !dbg !252
  %add.ptr73 = getelementptr inbounds i32* %51, i64 %idx.ext72, !dbg !252
  call void @llvm.dbg.value(metadata !{double** %entries2}, i64 0, metadata !86), !dbg !252
  %52 = load double** %entries2, align 8, !dbg !252, !tbaa !104
  %add.ptr75 = getelementptr inbounds double* %52, i64 %idx.ext72, !dbg !252
  call void @IVDVqsortUp(i32 %size.0.lcssa, i32* %add.ptr73, double* %add.ptr75) #5, !dbg !252
  br label %if.end86, !dbg !254

if.then79:                                        ; preds = %while.end66
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !97), !dbg !255
  %53 = load i32** %indices, align 8, !dbg !255, !tbaa !104
  %idx.ext80 = sext i32 %offset.0.lcssa to i64, !dbg !255
  %add.ptr81 = getelementptr inbounds i32* %53, i64 %idx.ext80, !dbg !255
  call void @llvm.dbg.value(metadata !{double** %entries2}, i64 0, metadata !86), !dbg !255
  %54 = load double** %entries2, align 8, !dbg !255, !tbaa !104
  %mul82 = shl nsw i32 %offset.0.lcssa, 1, !dbg !255
  %idx.ext83 = sext i32 %mul82 to i64, !dbg !255
  %add.ptr84 = getelementptr inbounds double* %54, i64 %idx.ext83, !dbg !255
  call void @IVZVqsortUp(i32 %size.0.lcssa, i32* %add.ptr81, double* %add.ptr84) #5, !dbg !255
  br label %if.end86, !dbg !257

if.end86:                                         ; preds = %while.end66, %if.then79, %if.then71
  call void @IVfree(i32* %call5) #5, !dbg !258
  br label %sw.epilog, !dbg !259

sw.default:                                       ; preds = %entry
  %55 = load %struct._IO_FILE** @stderr, align 8, !dbg !260, !tbaa !104
  %type87 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !260
  %56 = load i32* %type87, align 4, !dbg !260, !tbaa !109
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %mtx, i32 %56) #5, !dbg !260
  %57 = load %struct._IO_FILE** @stderr, align 8, !dbg !261, !tbaa !104
  %call89 = call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx, %struct._IO_FILE* %57) #5, !dbg !261
  call void @exit(i32 -1) #6, !dbg !262
  unreachable, !dbg !262

sw.epilog:                                        ; preds = %if.end86, %sw.bb
  ret void, !dbg !263
}

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare i32 @A2_sortColumnsUp(%struct._A2*, i32, i32*) #4

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare i32 @SubMtx_writeForHumanEye(%struct._SubMtx*, %struct._IO_FILE*) #4

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !74}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_sortRowsUp", metadata !"SubMtx_sortRowsUp", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*)* @SubMtx_sortRowsUp, null, null, metadata !36, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [SubMtx_sortRowsUp]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !24, metadata !33}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!23 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!25 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!32 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!33 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!35 = metadata !{i32 786454, metadata !11, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!36 = metadata !{metadata !37, metadata !38, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !59, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73}
!37 = metadata !{i32 786689, metadata !4, metadata !"mtx", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 17]
!38 = metadata !{i32 786688, metadata !39, metadata !"a2", metadata !5, i32 38, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a2] [line 38]
!39 = metadata !{i32 786443, metadata !1, metadata !40, i32 37, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!40 = metadata !{i32 786443, metadata !1, metadata !4, i32 35, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!41 = metadata !{i32 786454, metadata !1, null, metadata !"A2", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [A2] [line 49, size 0, align 0, offset 0] [from _A2]
!42 = metadata !{i32 786451, metadata !43, null, metadata !"_A2", i32 41, i64 256, i64 64, i32 0, i32 0, null, metadata !44, i32 0, null, null} ; [ DW_TAG_structure_type ] [_A2] [line 41, size 256, align 64, offset 0] [from ]
!43 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../A2/A2.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51}
!45 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"type", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 42, size 32, align 32, offset 0] [from int]
!46 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"n1", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [n1] [line 43, size 32, align 32, offset 32] [from int]
!47 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"n2", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [n2] [line 44, size 32, align 32, offset 64] [from int]
!48 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"inc1", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [inc1] [line 45, size 32, align 32, offset 96] [from int]
!49 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"inc2", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [inc2] [line 46, size 32, align 32, offset 128] [from int]
!50 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"nowned", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nowned] [line 47, size 32, align 32, offset 160] [from int]
!51 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"entries", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [entries] [line 48, size 64, align 64, offset 192] [from ]
!52 = metadata !{i32 786688, metadata !39, metadata !"entries", metadata !5, i32 39, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 39]
!53 = metadata !{i32 786688, metadata !39, metadata !"inc1", metadata !5, i32 40, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 40]
!54 = metadata !{i32 786688, metadata !39, metadata !"inc2", metadata !5, i32 40, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 40]
!55 = metadata !{i32 786688, metadata !39, metadata !"ncol", metadata !5, i32 40, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 40]
!56 = metadata !{i32 786688, metadata !39, metadata !"nrow", metadata !5, i32 40, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 40]
!57 = metadata !{i32 786688, metadata !39, metadata !"rowind", metadata !5, i32 41, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 41]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!59 = metadata !{i32 786688, metadata !60, metadata !"entries", metadata !5, i32 50, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 50]
!60 = metadata !{i32 786443, metadata !1, metadata !40, i32 49, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!61 = metadata !{i32 786688, metadata !60, metadata !"ii", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 51]
!62 = metadata !{i32 786688, metadata !60, metadata !"irow", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 51]
!63 = metadata !{i32 786688, metadata !60, metadata !"jrow", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 51]
!64 = metadata !{i32 786688, metadata !60, metadata !"kk", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 51]
!65 = metadata !{i32 786688, metadata !60, metadata !"nent", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 51]
!66 = metadata !{i32 786688, metadata !60, metadata !"nrow", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 51]
!67 = metadata !{i32 786688, metadata !60, metadata !"offset", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 51]
!68 = metadata !{i32 786688, metadata !60, metadata !"rowid", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowid] [line 51]
!69 = metadata !{i32 786688, metadata !60, metadata !"size", metadata !5, i32 51, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 51]
!70 = metadata !{i32 786688, metadata !60, metadata !"indices", metadata !5, i32 52, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 52]
!71 = metadata !{i32 786688, metadata !60, metadata !"ivtemp", metadata !5, i32 52, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivtemp] [line 52]
!72 = metadata !{i32 786688, metadata !60, metadata !"rowind", metadata !5, i32 52, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 52]
!73 = metadata !{i32 786688, metadata !60, metadata !"sizes", metadata !5, i32 52, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 52]
!74 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_sortColumnsUp", metadata !"SubMtx_sortColumnsUp", metadata !"", i32 166, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*)* @SubMtx_sortColumnsUp, null, null, metadata !75, i32 168} ; [ DW_TAG_subprogram ] [line 166] [def] [scope 168] [SubMtx_sortColumnsUp]
!75 = metadata !{metadata !76, metadata !77, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99}
!76 = metadata !{i32 786689, metadata !74, metadata !"mtx", metadata !5, i32 16777383, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 167]
!77 = metadata !{i32 786688, metadata !78, metadata !"a2", metadata !5, i32 172, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a2] [line 172]
!78 = metadata !{i32 786443, metadata !1, metadata !79, i32 171, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!79 = metadata !{i32 786443, metadata !1, metadata !74, i32 169, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!80 = metadata !{i32 786688, metadata !78, metadata !"entries", metadata !5, i32 173, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 173]
!81 = metadata !{i32 786688, metadata !78, metadata !"inc1", metadata !5, i32 174, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 174]
!82 = metadata !{i32 786688, metadata !78, metadata !"inc2", metadata !5, i32 174, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 174]
!83 = metadata !{i32 786688, metadata !78, metadata !"ncol", metadata !5, i32 174, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 174]
!84 = metadata !{i32 786688, metadata !78, metadata !"nrow", metadata !5, i32 174, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 174]
!85 = metadata !{i32 786688, metadata !78, metadata !"colind", metadata !5, i32 175, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 175]
!86 = metadata !{i32 786688, metadata !87, metadata !"entries", metadata !5, i32 184, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 184]
!87 = metadata !{i32 786443, metadata !1, metadata !79, i32 183, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!88 = metadata !{i32 786688, metadata !87, metadata !"colid", metadata !5, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colid] [line 185]
!89 = metadata !{i32 786688, metadata !87, metadata !"ii", metadata !5, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 185]
!90 = metadata !{i32 786688, metadata !87, metadata !"jcol", metadata !5, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 185]
!91 = metadata !{i32 786688, metadata !87, metadata !"kk", metadata !5, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 185]
!92 = metadata !{i32 786688, metadata !87, metadata !"ncol", metadata !5, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 185]
!93 = metadata !{i32 786688, metadata !87, metadata !"nent", metadata !5, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 185]
!94 = metadata !{i32 786688, metadata !87, metadata !"offset", metadata !5, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 185]
!95 = metadata !{i32 786688, metadata !87, metadata !"size", metadata !5, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 185]
!96 = metadata !{i32 786688, metadata !87, metadata !"colind", metadata !5, i32 186, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 186]
!97 = metadata !{i32 786688, metadata !87, metadata !"indices", metadata !5, i32 186, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 186]
!98 = metadata !{i32 786688, metadata !87, metadata !"ivtemp", metadata !5, i32 186, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivtemp] [line 186]
!99 = metadata !{i32 786688, metadata !87, metadata !"sizes", metadata !5, i32 186, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 186]
!100 = metadata !{i32 17, i32 0, metadata !4, null}
!101 = metadata !{i32 24, i32 0, metadata !4, null}
!102 = metadata !{i32 25, i32 0, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !4, i32 24, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!104 = metadata !{metadata !"any pointer", metadata !105}
!105 = metadata !{metadata !"omnipotent char", metadata !106}
!106 = metadata !{metadata !"Simple C/C++ TBAA"}
!107 = metadata !{i32 27, i32 0, metadata !103, null}
!108 = metadata !{i32 29, i32 0, metadata !4, null}
!109 = metadata !{metadata !"int", metadata !105}
!110 = metadata !{i32 30, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !4, i32 29, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!112 = metadata !{i32 33, i32 0, metadata !111, null}
!113 = metadata !{i32 35, i32 0, metadata !4, null}
!114 = metadata !{i32 38, i32 0, metadata !39, null}
!115 = metadata !{i32 39, i32 0, metadata !39, null}
!116 = metadata !{i32 40, i32 0, metadata !39, null}
!117 = metadata !{i32 41, i32 0, metadata !39, null}
!118 = metadata !{i32 43, i32 0, metadata !39, null}
!119 = metadata !{i32 44, i32 0, metadata !39, null}
!120 = metadata !{i32 45, i32 0, metadata !39, null}
!121 = metadata !{i32 46, i32 0, metadata !39, null}
!122 = metadata !{i32 47, i32 0, metadata !39, null}
!123 = metadata !{i32 48, i32 0, metadata !40, null}
!124 = metadata !{i32 50, i32 0, metadata !60, null}
!125 = metadata !{i32 51, i32 0, metadata !60, null}
!126 = metadata !{i32 52, i32 0, metadata !60, null}
!127 = metadata !{i32 54, i32 0, metadata !60, null}
!128 = metadata !{i32 55, i32 0, metadata !60, null}
!129 = metadata !{i32 61, i32 0, metadata !60, null}
!130 = metadata !{i32 62, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !60, i32 62, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!132 = metadata !{i32 84, i32 0, metadata !60, null}
!133 = metadata !{i32 63, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !131, i32 62, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!135 = metadata !{i32 64, i32 0, metadata !134, null}
!136 = metadata !{i32 69, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !134, i32 69, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!138 = metadata !{i32 70, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !137, i32 69, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!140 = metadata !{i32 85, i32 0, metadata !60, null}
!141 = metadata !{i32 86, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !60, i32 85, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!143 = metadata !{i32 87, i32 0, metadata !142, null}
!144 = metadata !{i32 88, i32 0, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !60, i32 87, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!146 = metadata !{i32 89, i32 0, metadata !145, null}
!147 = metadata !{i32 95, i32 0, metadata !60, null}
!148 = metadata !{i32 106, i32 0, metadata !60, null}
!149 = metadata !{i32 107, i32 0, metadata !60, null}
!150 = metadata !{i32 1}
!151 = metadata !{i32 108, i32 0, metadata !60, null}
!152 = metadata !{i32 109, i32 0, metadata !60, null}
!153 = metadata !{i32 134, i32 0, metadata !60, null}
!154 = metadata !{i32 110, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !60, i32 109, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!156 = metadata !{i32 113, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !155, i32 112, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!158 = metadata !{i32 111, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !155, i32 110, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!160 = metadata !{i32 112, i32 0, metadata !159, null}
!161 = metadata !{i32 119, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !157, i32 113, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!163 = metadata !{i32 121, i32 0, metadata !157, null}
!164 = metadata !{i32 122, i32 0, metadata !157, null}
!165 = metadata !{i32 123, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !157, i32 122, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!167 = metadata !{i32 124, i32 0, metadata !166, null}
!168 = metadata !{i32 125, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !157, i32 124, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!170 = metadata !{i32 126, i32 0, metadata !169, null}
!171 = metadata !{i32 127, i32 0, metadata !157, null}
!172 = metadata !{i32 128, i32 0, metadata !157, null}
!173 = metadata !{i32 129, i32 0, metadata !157, null}
!174 = metadata !{i32 130, i32 0, metadata !157, null}
!175 = metadata !{i32 142, i32 0, metadata !60, null}
!176 = metadata !{i32 143, i32 0, metadata !60, null}
!177 = metadata !{i32 144, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !60, i32 143, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!179 = metadata !{i32 145, i32 0, metadata !178, null}
!180 = metadata !{i32 146, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !60, i32 145, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!182 = metadata !{i32 147, i32 0, metadata !181, null}
!183 = metadata !{i32 148, i32 0, metadata !60, null}
!184 = metadata !{i32 149, i32 0, metadata !40, null}
!185 = metadata !{i32 151, i32 0, metadata !40, null}
!186 = metadata !{i32 153, i32 0, metadata !40, null}
!187 = metadata !{i32 155, i32 0, metadata !4, null}
!188 = metadata !{i32 167, i32 0, metadata !74, null}
!189 = metadata !{i32 169, i32 0, metadata !74, null}
!190 = metadata !{i32 172, i32 0, metadata !78, null}
!191 = metadata !{i32 173, i32 0, metadata !78, null}
!192 = metadata !{i32 174, i32 0, metadata !78, null}
!193 = metadata !{i32 175, i32 0, metadata !78, null}
!194 = metadata !{i32 177, i32 0, metadata !78, null}
!195 = metadata !{i32 178, i32 0, metadata !78, null}
!196 = metadata !{i32 179, i32 0, metadata !78, null}
!197 = metadata !{i32 180, i32 0, metadata !78, null}
!198 = metadata !{i32 181, i32 0, metadata !78, null}
!199 = metadata !{i32 182, i32 0, metadata !79, null}
!200 = metadata !{i32 184, i32 0, metadata !87, null}
!201 = metadata !{i32 185, i32 0, metadata !87, null}
!202 = metadata !{i32 186, i32 0, metadata !87, null}
!203 = metadata !{i32 188, i32 0, metadata !87, null}
!204 = metadata !{i32 190, i32 0, metadata !87, null}
!205 = metadata !{i32 196, i32 0, metadata !87, null}
!206 = metadata !{i32 197, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !87, i32 197, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!208 = metadata !{i32 215, i32 0, metadata !87, null}
!209 = metadata !{i32 198, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !207, i32 197, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!211 = metadata !{i32 199, i32 0, metadata !210, null}
!212 = metadata !{i32 200, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !210, i32 200, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!214 = metadata !{i32 201, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !213, i32 200, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!216 = metadata !{i32 216, i32 0, metadata !87, null}
!217 = metadata !{i32 217, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !87, i32 216, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!219 = metadata !{i32 218, i32 0, metadata !218, null}
!220 = metadata !{i32 219, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !87, i32 218, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!222 = metadata !{i32 220, i32 0, metadata !221, null}
!223 = metadata !{i32 226, i32 0, metadata !87, null}
!224 = metadata !{i32 237, i32 0, metadata !87, null}
!225 = metadata !{i32 238, i32 0, metadata !87, null}
!226 = metadata !{i32 239, i32 0, metadata !87, null}
!227 = metadata !{i32 240, i32 0, metadata !87, null}
!228 = metadata !{i32 265, i32 0, metadata !87, null}
!229 = metadata !{i32 241, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !87, i32 240, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!231 = metadata !{i32 244, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !230, i32 243, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!233 = metadata !{i32 242, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !230, i32 241, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!235 = metadata !{i32 243, i32 0, metadata !234, null}
!236 = metadata !{i32 250, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !232, i32 244, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!238 = metadata !{i32 252, i32 0, metadata !232, null}
!239 = metadata !{i32 253, i32 0, metadata !232, null}
!240 = metadata !{i32 254, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !232, i32 253, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!242 = metadata !{i32 255, i32 0, metadata !241, null}
!243 = metadata !{i32 256, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !232, i32 255, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!245 = metadata !{i32 257, i32 0, metadata !244, null}
!246 = metadata !{i32 258, i32 0, metadata !232, null}
!247 = metadata !{i32 259, i32 0, metadata !232, null}
!248 = metadata !{i32 260, i32 0, metadata !232, null}
!249 = metadata !{i32 261, i32 0, metadata !232, null}
!250 = metadata !{i32 273, i32 0, metadata !87, null}
!251 = metadata !{i32 274, i32 0, metadata !87, null}
!252 = metadata !{i32 275, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !87, i32 274, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!254 = metadata !{i32 276, i32 0, metadata !253, null}
!255 = metadata !{i32 277, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !87, i32 276, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_sort.c]
!257 = metadata !{i32 278, i32 0, metadata !256, null}
!258 = metadata !{i32 279, i32 0, metadata !87, null}
!259 = metadata !{i32 280, i32 0, metadata !79, null}
!260 = metadata !{i32 282, i32 0, metadata !79, null}
!261 = metadata !{i32 284, i32 0, metadata !79, null}
!262 = metadata !{i32 285, i32 0, metadata !79, null}
!263 = metadata !{i32 287, i32 0, metadata !74, null}
