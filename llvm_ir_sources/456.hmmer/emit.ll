; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }

@.str = private unnamed_addr constant [50 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c\00", align 1
@Alphabet_iupac = external global i32
@.str1 = private unnamed_addr constant [14 x i8] c"never happens\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"can't happen.\00", align 1
@Alphabet_size = external global i32
@Alphabet_type = external global i32
@Alphabet = external global [25 x i8]

; Function Attrs: nounwind optsize uwtable
define void @EmitSequence(%struct.plan7_s* %hmm, i8** %ret_dsq, i32* %ret_L, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  %t = alloca [4 x float], align 16
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !86), !dbg !142
  call void @llvm.dbg.value(metadata !{i8** %ret_dsq}, i64 0, metadata !87), !dbg !142
  call void @llvm.dbg.value(metadata !{i32* %ret_L}, i64 0, metadata !88), !dbg !142
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ret_tr}, i64 0, metadata !89), !dbg !142
  call void @llvm.dbg.declare(metadata !{%struct.p7trace_s** %tr}, metadata !90), !dbg !143
  call void @llvm.dbg.declare(metadata !{[4 x float]* %t}, metadata !99), !dbg !144
  call void @P7AllocTrace(i32 64, %struct.p7trace_s** %tr) #4, !dbg !145
  call void @llvm.dbg.value(metadata !146, i64 0, metadata !95), !dbg !147
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 59, i64 64) #4, !dbg !148
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !93), !dbg !148
  call void @llvm.dbg.value(metadata !146, i64 0, metadata !96), !dbg !149
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !90), !dbg !150
  %0 = load %struct.p7trace_s** %tr, align 8, !dbg !150, !tbaa !151
  call void @TraceSet(%struct.p7trace_s* %0, i32 0, i8 signext 4, i32 0, i32 0) #4, !dbg !150
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !90), !dbg !154
  %1 = load %struct.p7trace_s** %tr, align 8, !dbg !154, !tbaa !151
  call void @TraceSet(%struct.p7trace_s* %1, i32 1, i8 signext 5, i32 0, i32 0) #4, !dbg !154
  %2 = load i32* @Alphabet_iupac, align 4, !dbg !155, !tbaa !156
  %conv = trunc i32 %2 to i8, !dbg !155
  store i8 %conv, i8* %call, align 1, !dbg !155, !tbaa !152
  call void @llvm.dbg.value(metadata !157, i64 0, metadata !94), !dbg !158
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !159
  call void @llvm.dbg.value(metadata !160, i64 0, metadata !91), !dbg !161
  call void @llvm.dbg.value(metadata !162, i64 0, metadata !97), !dbg !163
  %arraydecay145 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 0, !dbg !164
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !166
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23, !dbg !167
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !168
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !168
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !170
  %t10 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !171
  %arraydecay = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0, !dbg !172
  %arraydecay31 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0, !dbg !173
  %arraydecay40 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0, !dbg !174
  %arraydecay49 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0, !dbg !175
  %arraydecay77 = getelementptr inbounds [4 x float]* %t, i64 0, i64 0, !dbg !176
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !178
  %arrayidx83 = getelementptr inbounds [4 x float]* %t, i64 0, i64 3, !dbg !178
  br label %while.cond.outer, !dbg !179

while.cond.outer:                                 ; preds = %if.then169, %entry
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %if.then169 ], [ 64, %entry ]
  %type.0.ph = phi i8 [ %type.1260, %if.then169 ], [ 5, %entry ]
  %k.0.ph = phi i32 [ %k.1261, %if.then169 ], [ 0, %entry ]
  %dsq.0.ph = phi i8* [ %call172, %if.then169 ], [ %call, %entry ]
  %L.0.ph = phi i32 [ %inc165, %if.then169 ], [ 1, %entry ]
  %alloc_tlen.0.ph = phi i32 [ %alloc_tlen.1, %if.then169 ], [ 64, %entry ]
  %tpos.0.ph = phi i32 [ %inc153, %if.then169 ], [ 2, %entry ]
  %3 = sext i32 %L.0.ph to i64
  br label %while.cond.outer268

while.cond.outer268:                              ; preds = %while.cond.outer, %if.then161
  %indvars.iv282 = phi i64 [ %3, %while.cond.outer ], [ %indvars.iv.next283, %if.then161 ]
  %type.0.ph269 = phi i8 [ %type.0.ph, %while.cond.outer ], [ %type.1260, %if.then161 ]
  %k.0.ph270 = phi i32 [ %k.0.ph, %while.cond.outer ], [ %k.1261, %if.then161 ]
  %L.0.ph271 = phi i32 [ %L.0.ph, %while.cond.outer ], [ %inc165, %if.then161 ]
  %alloc_tlen.0.ph272 = phi i32 [ %alloc_tlen.0.ph, %while.cond.outer ], [ %alloc_tlen.1, %if.then161 ]
  %tpos.0.ph274 = phi i32 [ %tpos.0.ph, %while.cond.outer ], [ %inc153, %if.then161 ]
  %4 = sext i32 %tpos.0.ph274 to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer268, %if.end158
  %indvars.iv = phi i64 [ %4, %while.cond.outer268 ], [ %indvars.iv.next, %if.end158 ]
  %type.0 = phi i8 [ %type.0.ph269, %while.cond.outer268 ], [ %type.1260, %if.end158 ]
  %k.0 = phi i32 [ %k.0.ph270, %while.cond.outer268 ], [ %k.1261, %if.end158 ]
  %alloc_tlen.0 = phi i32 [ %alloc_tlen.0.ph272, %while.cond.outer268 ], [ %alloc_tlen.1, %if.end158 ]
  %tpos.0 = phi i32 [ %tpos.0.ph274, %while.cond.outer268 ], [ %inc153, %if.end158 ]
  %cmp = icmp eq i8 %type.0, 9, !dbg !179
  br i1 %cmp, label %while.end, label %while.body, !dbg !179

while.body:                                       ; preds = %while.cond
  %conv1 = sext i8 %type.0 to i32, !dbg !179
  switch i32 %conv1, label %sw.default95 [
    i32 6, label %sw.bb
    i32 3, label %sw.bb9
    i32 5, label %sw.bb21
    i32 7, label %sw.bb28
    i32 8, label %sw.bb37
    i32 10, label %sw.bb46
    i32 2, label %sw.bb55
    i32 1, label %sw.bb72
  ], !dbg !180

sw.bb:                                            ; preds = %while.body
  %5 = load float* %tbd1, align 4, !dbg !168, !tbaa !181
  %6 = load float** %begin, align 8, !dbg !168, !tbaa !151
  store float %5, float* %6, align 4, !dbg !168, !tbaa !181
  %7 = load i32* %M, align 4, !dbg !170, !tbaa !156
  %add = add nsw i32 %7, 1, !dbg !170
  %call6 = call i32 @FChoose(float* %6, i32 %add) #4, !dbg !170
  call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !92), !dbg !170
  %cmp7 = icmp eq i32 %call6, 0, !dbg !182
  %. = select i1 %cmp7, i8 2, i8 1, !dbg !183
  %.call6 = select i1 %cmp7, i32 1, i32 %call6, !dbg !183
  br label %sw.epilog96, !dbg !183

sw.bb9:                                           ; preds = %while.body
  %idxprom = sext i32 %k.0 to i64, !dbg !171
  %8 = load float*** %t10, align 8, !dbg !171, !tbaa !151
  %arrayidx11 = getelementptr inbounds float** %8, i64 %idxprom, !dbg !171
  %9 = load float** %arrayidx11, align 8, !dbg !171, !tbaa !151
  %add.ptr = getelementptr inbounds float* %9, i64 3, !dbg !171
  %call12 = call i32 @FChoose(float* %add.ptr, i32 2) #4, !dbg !171
  %cmp13 = icmp eq i32 %call12, 0, !dbg !171
  %conv15 = select i1 %cmp13, i8 1, i8 3, !dbg !171
  call void @llvm.dbg.value(metadata !{i8 %conv15}, i64 0, metadata !91), !dbg !171
  %inc = zext i1 %cmp13 to i32, !dbg !171
  %inc.k.0 = add nsw i32 %inc, %k.0, !dbg !171
  br label %sw.epilog96, !dbg !171

sw.bb21:                                          ; preds = %while.body
  %call23 = call i32 @FChoose(float* %arraydecay, i32 2) #4, !dbg !172
  %cmp24 = icmp eq i32 %call23, 1, !dbg !172
  %conv27 = select i1 %cmp24, i8 5, i8 6, !dbg !172
  call void @llvm.dbg.value(metadata !{i8 %conv27}, i64 0, metadata !91), !dbg !172
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !172
  br label %sw.epilog96, !dbg !172

sw.bb28:                                          ; preds = %while.body
  %call32 = call i32 @FChoose(float* %arraydecay31, i32 2) #4, !dbg !173
  %cmp33 = icmp eq i32 %call32, 1, !dbg !173
  %conv36 = select i1 %cmp33, i8 10, i8 8, !dbg !173
  call void @llvm.dbg.value(metadata !{i8 %conv36}, i64 0, metadata !91), !dbg !173
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !173
  br label %sw.epilog96, !dbg !173

sw.bb37:                                          ; preds = %while.body
  %call41 = call i32 @FChoose(float* %arraydecay40, i32 2) #4, !dbg !174
  %cmp42 = icmp eq i32 %call41, 1, !dbg !174
  %conv45 = select i1 %cmp42, i8 8, i8 9, !dbg !174
  call void @llvm.dbg.value(metadata !{i8 %conv45}, i64 0, metadata !91), !dbg !174
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !174
  br label %sw.epilog96, !dbg !174

sw.bb46:                                          ; preds = %while.body
  %call50 = call i32 @FChoose(float* %arraydecay49, i32 2) #4, !dbg !175
  %cmp51 = icmp eq i32 %call50, 1, !dbg !175
  %conv54 = select i1 %cmp51, i8 10, i8 6, !dbg !175
  call void @llvm.dbg.value(metadata !{i8 %conv54}, i64 0, metadata !91), !dbg !175
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !175
  br label %sw.epilog96, !dbg !175

sw.bb55:                                          ; preds = %while.body
  %10 = load i32* %M, align 4, !dbg !185, !tbaa !156
  %cmp57 = icmp slt i32 %k.0, %10, !dbg !185
  br i1 %cmp57, label %if.then59, label %if.end149, !dbg !185

if.then59:                                        ; preds = %sw.bb55
  %idxprom60 = sext i32 %k.0 to i64, !dbg !186
  %11 = load float*** %t10, align 8, !dbg !186, !tbaa !151
  %arrayidx62 = getelementptr inbounds float** %11, i64 %idxprom60, !dbg !186
  %12 = load float** %arrayidx62, align 8, !dbg !186, !tbaa !151
  %add.ptr63 = getelementptr inbounds float* %12, i64 5, !dbg !186
  %call64 = call i32 @FChoose(float* %add.ptr63, i32 2) #4, !dbg !186
  %cmp65 = icmp eq i32 %call64, 0, !dbg !186
  %conv68 = select i1 %cmp65, i8 1, i8 2, !dbg !186
  call void @llvm.dbg.value(metadata !{i8 %conv68}, i64 0, metadata !91), !dbg !186
  %inc69 = add nsw i32 %k.0, 1, !dbg !188
  call void @llvm.dbg.value(metadata !{i32 %inc69}, i64 0, metadata !92), !dbg !188
  br label %sw.epilog96, !dbg !189

sw.bb72:                                          ; preds = %while.body
  %13 = load i32* %M, align 4, !dbg !190, !tbaa !156
  %cmp74 = icmp slt i32 %k.0, %13, !dbg !190
  br i1 %cmp74, label %if.then76, label %if.end149, !dbg !190

if.then76:                                        ; preds = %sw.bb72
  %idxprom78 = sext i32 %k.0 to i64, !dbg !176
  %14 = load float*** %t10, align 8, !dbg !176, !tbaa !151
  %arrayidx80 = getelementptr inbounds float** %14, i64 %idxprom78, !dbg !176
  %15 = load float** %arrayidx80, align 8, !dbg !176, !tbaa !151
  call void @FCopy(float* %arraydecay77, float* %15, i32 3) #4, !dbg !176
  %16 = load float** %end, align 8, !dbg !178, !tbaa !151
  %arrayidx82 = getelementptr inbounds float* %16, i64 %idxprom78, !dbg !178
  %17 = load float* %arrayidx82, align 4, !dbg !178, !tbaa !181
  store float %17, float* %arrayidx83, align 4, !dbg !178, !tbaa !181
  %call85 = call i32 @FChoose(float* %arraydecay77, i32 4) #4, !dbg !191
  switch i32 %call85, label %sw.default [
    i32 0, label %sw.epilog96.thread262
    i32 1, label %if.then108
    i32 2, label %sw.bb89
    i32 3, label %if.end149
  ], !dbg !191

sw.epilog96.thread262:                            ; preds = %if.then76
  %inc87 = add nsw i32 %k.0, 1, !dbg !192
  call void @llvm.dbg.value(metadata !{i32 %inc87}, i64 0, metadata !92), !dbg !192
  call void @llvm.dbg.value(metadata !194, i64 0, metadata !91), !dbg !192
  call void @llvm.dbg.value(metadata !195, i64 0, metadata !98), !dbg !196
  br label %if.then100, !dbg !166

sw.bb89:                                          ; preds = %if.then76
  %inc90 = add nsw i32 %k.0, 1, !dbg !197
  call void @llvm.dbg.value(metadata !{i32 %inc90}, i64 0, metadata !92), !dbg !197
  call void @llvm.dbg.value(metadata !198, i64 0, metadata !91), !dbg !197
  br label %if.end149, !dbg !197

sw.default:                                       ; preds = %if.then76
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !199
  br label %sw.epilog96, !dbg !200

sw.default95:                                     ; preds = %while.body
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !201
  br label %sw.epilog96, !dbg !202

sw.epilog96:                                      ; preds = %sw.bb9, %sw.bb, %sw.default, %if.then59, %sw.default95, %sw.bb46, %sw.bb37, %sw.bb28, %sw.bb21
  %type.1 = phi i8 [ %type.0, %sw.default95 ], [ %type.0, %sw.default ], [ %conv68, %if.then59 ], [ %conv54, %sw.bb46 ], [ %conv45, %sw.bb37 ], [ %conv36, %sw.bb28 ], [ %conv27, %sw.bb21 ], [ %., %sw.bb ], [ %conv15, %sw.bb9 ]
  %k.1 = phi i32 [ %k.0, %sw.default95 ], [ %k.0, %sw.default ], [ %inc69, %if.then59 ], [ 0, %sw.bb46 ], [ 0, %sw.bb37 ], [ 0, %sw.bb28 ], [ 0, %sw.bb21 ], [ %.call6, %sw.bb ], [ %inc.k.0, %sw.bb9 ]
  call void @llvm.dbg.value(metadata !195, i64 0, metadata !98), !dbg !196
  switch i8 %type.1, label %if.end149 [
    i8 1, label %if.then100
    i8 3, label %if.then108
    i8 5, label %land.lhs.true
    i8 8, label %land.lhs.true124
    i8 10, label %land.lhs.true136
  ], !dbg !166

if.then100:                                       ; preds = %sw.epilog96.thread262, %sw.epilog96
  %k.1264 = phi i32 [ %inc87, %sw.epilog96.thread262 ], [ %k.1, %sw.epilog96 ]
  %idxprom101 = sext i32 %k.1264 to i64, !dbg !166
  %18 = load float*** %mat, align 8, !dbg !166, !tbaa !151
  %arrayidx102 = getelementptr inbounds float** %18, i64 %idxprom101, !dbg !166
  %19 = load float** %arrayidx102, align 8, !dbg !166, !tbaa !151
  %20 = load i32* @Alphabet_size, align 4, !dbg !166, !tbaa !156
  %call103 = call i32 @FChoose(float* %19, i32 %20) #4, !dbg !166
  call void @llvm.dbg.value(metadata !{i32 %call103}, i64 0, metadata !98), !dbg !166
  br label %if.end149, !dbg !166

if.then108:                                       ; preds = %if.then76, %sw.epilog96
  %k.1267 = phi i32 [ %k.1, %sw.epilog96 ], [ %k.0, %if.then76 ]
  %idxprom109 = sext i32 %k.1267 to i64, !dbg !167
  %21 = load float*** %ins, align 8, !dbg !167, !tbaa !151
  %arrayidx110 = getelementptr inbounds float** %21, i64 %idxprom109, !dbg !167
  %22 = load float** %arrayidx110, align 8, !dbg !167, !tbaa !151
  %23 = load i32* @Alphabet_size, align 4, !dbg !167, !tbaa !156
  %call111 = call i32 @FChoose(float* %22, i32 %23) #4, !dbg !167
  call void @llvm.dbg.value(metadata !{i32 %call111}, i64 0, metadata !98), !dbg !167
  br label %if.end149, !dbg !167

land.lhs.true:                                    ; preds = %sw.epilog96
  %24 = add nsw i64 %indvars.iv, -1, !dbg !203
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !90), !dbg !203
  %25 = load %struct.p7trace_s** %tr, align 8, !dbg !203, !tbaa !151
  %statetype = getelementptr inbounds %struct.p7trace_s* %25, i64 0, i32 1, !dbg !203
  %26 = load i8** %statetype, align 8, !dbg !203, !tbaa !151
  %arrayidx117 = getelementptr inbounds i8* %26, i64 %24, !dbg !203
  %27 = load i8* %arrayidx117, align 1, !dbg !203, !tbaa !152
  %cmp119 = icmp eq i8 %27, 5, !dbg !203
  br i1 %cmp119, label %if.then144, label %if.end149, !dbg !203

land.lhs.true124:                                 ; preds = %sw.epilog96
  %28 = add nsw i64 %indvars.iv, -1, !dbg !203
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !90), !dbg !203
  %29 = load %struct.p7trace_s** %tr, align 8, !dbg !203, !tbaa !151
  %statetype127 = getelementptr inbounds %struct.p7trace_s* %29, i64 0, i32 1, !dbg !203
  %30 = load i8** %statetype127, align 8, !dbg !203, !tbaa !151
  %arrayidx128 = getelementptr inbounds i8* %30, i64 %28, !dbg !203
  %31 = load i8* %arrayidx128, align 1, !dbg !203, !tbaa !152
  %cmp130 = icmp eq i8 %31, 8, !dbg !203
  br i1 %cmp130, label %if.then144, label %if.end149, !dbg !203

land.lhs.true136:                                 ; preds = %sw.epilog96
  %32 = add nsw i64 %indvars.iv, -1, !dbg !203
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !90), !dbg !203
  %33 = load %struct.p7trace_s** %tr, align 8, !dbg !203, !tbaa !151
  %statetype139 = getelementptr inbounds %struct.p7trace_s* %33, i64 0, i32 1, !dbg !203
  %34 = load i8** %statetype139, align 8, !dbg !203, !tbaa !151
  %arrayidx140 = getelementptr inbounds i8* %34, i64 %32, !dbg !203
  %35 = load i8* %arrayidx140, align 1, !dbg !203, !tbaa !152
  %cmp142 = icmp eq i8 %35, 10, !dbg !203
  br i1 %cmp142, label %if.then144, label %if.end149, !dbg !203

if.then144:                                       ; preds = %land.lhs.true136, %land.lhs.true124, %land.lhs.true
  %36 = load i32* @Alphabet_size, align 4, !dbg !164, !tbaa !156
  %call146 = call i32 @FChoose(float* %arraydecay145, i32 %36) #4, !dbg !164
  call void @llvm.dbg.value(metadata !{i32 %call146}, i64 0, metadata !98), !dbg !164
  br label %if.end149, !dbg !164

if.end149:                                        ; preds = %sw.epilog96, %if.then76, %sw.bb72, %sw.bb55, %land.lhs.true124, %land.lhs.true, %sw.bb89, %if.then108, %if.then144, %land.lhs.true136, %if.then100
  %k.1261 = phi i32 [ %k.1264, %if.then100 ], [ %k.1267, %if.then108 ], [ %k.1, %if.then144 ], [ %k.1, %land.lhs.true136 ], [ %inc90, %sw.bb89 ], [ %k.1, %land.lhs.true ], [ %k.1, %land.lhs.true124 ], [ 0, %sw.bb55 ], [ 0, %sw.bb72 ], [ 0, %if.then76 ], [ %k.1, %sw.epilog96 ]
  %type.1260 = phi i8 [ 1, %if.then100 ], [ 3, %if.then108 ], [ %type.1, %if.then144 ], [ 10, %land.lhs.true136 ], [ 2, %sw.bb89 ], [ 5, %land.lhs.true ], [ 8, %land.lhs.true124 ], [ 7, %sw.bb55 ], [ 7, %sw.bb72 ], [ 7, %if.then76 ], [ %type.1, %sw.epilog96 ]
  %sym.0 = phi i32 [ %call103, %if.then100 ], [ %call111, %if.then108 ], [ %call146, %if.then144 ], [ -1, %land.lhs.true136 ], [ -1, %sw.bb89 ], [ -1, %land.lhs.true ], [ -1, %land.lhs.true124 ], [ -1, %sw.bb55 ], [ -1, %sw.bb72 ], [ -1, %if.then76 ], [ -1, %sw.epilog96 ]
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !90), !dbg !204
  %37 = load %struct.p7trace_s** %tr, align 8, !dbg !204, !tbaa !151
  %cmp150 = icmp ne i32 %sym.0, -1, !dbg !204
  %38 = trunc i64 %indvars.iv282 to i32, !dbg !204
  %cond152 = select i1 %cmp150, i32 %38, i32 0, !dbg !204
  %39 = trunc i64 %indvars.iv to i32, !dbg !204
  call void @TraceSet(%struct.p7trace_s* %37, i32 %39, i8 signext %type.1260, i32 %k.1261, i32 %cond152) #4, !dbg !204
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !205
  %inc153 = add nsw i32 %tpos.0, 1, !dbg !206
  call void @llvm.dbg.value(metadata !{i32 %inc153}, i64 0, metadata !97), !dbg !206
  %40 = trunc i64 %indvars.iv.next to i32, !dbg !207
  %cmp154 = icmp eq i32 %40, %alloc_tlen.0, !dbg !207
  br i1 %cmp154, label %if.then156, label %if.end158, !dbg !207

if.then156:                                       ; preds = %if.end149
  %add157 = add nsw i32 %alloc_tlen.0, 64, !dbg !208
  call void @llvm.dbg.value(metadata !{i32 %add157}, i64 0, metadata !95), !dbg !208
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !90), !dbg !210
  %41 = load %struct.p7trace_s** %tr, align 8, !dbg !210, !tbaa !151
  call void @P7ReallocTrace(%struct.p7trace_s* %41, i32 %add157) #4, !dbg !210
  br label %if.end158, !dbg !211

if.end158:                                        ; preds = %if.then156, %if.end149
  %alloc_tlen.1 = phi i32 [ %add157, %if.then156 ], [ %alloc_tlen.0, %if.end149 ]
  br i1 %cmp150, label %if.then161, label %while.cond, !dbg !205

if.then161:                                       ; preds = %if.end158
  %conv162 = trunc i32 %sym.0 to i8, !dbg !212
  %arrayidx164 = getelementptr inbounds i8* %dsq.0.ph, i64 %indvars.iv282, !dbg !212
  store i8 %conv162, i8* %arrayidx164, align 1, !dbg !212, !tbaa !152
  %indvars.iv.next283 = add i64 %indvars.iv282, 1, !dbg !214
  %inc165 = add nsw i32 %L.0.ph271, 1, !dbg !215
  call void @llvm.dbg.value(metadata !{i32 %inc165}, i64 0, metadata !94), !dbg !215
  %42 = add nsw i64 %indvars.iv282, 2, !dbg !214
  %43 = trunc i64 %42 to i32, !dbg !214
  %44 = trunc i64 %indvars.iv285 to i32, !dbg !214
  %cmp167 = icmp eq i32 %43, %44, !dbg !214
  br i1 %cmp167, label %if.then169, label %while.cond.outer268, !dbg !214

if.then169:                                       ; preds = %if.then161
  %indvars.iv.next286 = add i64 %indvars.iv285, 64, !dbg !216
  %call172 = call i8* @sre_realloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 146, i8* %dsq.0.ph, i64 %indvars.iv.next286) #4, !dbg !218
  call void @llvm.dbg.value(metadata !{i8* %call172}, i64 0, metadata !93), !dbg !218
  br label %while.cond.outer, !dbg !216

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !90), !dbg !219
  %45 = load %struct.p7trace_s** %tr, align 8, !dbg !219, !tbaa !151
  %tlen = getelementptr inbounds %struct.p7trace_s* %45, i64 0, i32 0, !dbg !219
  store i32 %tpos.0, i32* %tlen, align 4, !dbg !219, !tbaa !156
  %46 = load i32* @Alphabet_iupac, align 4, !dbg !220, !tbaa !156
  %conv175 = trunc i32 %46 to i8, !dbg !220
  %idxprom176 = sext i32 %L.0.ph271 to i64, !dbg !220
  %arrayidx177 = getelementptr inbounds i8* %dsq.0.ph, i64 %idxprom176, !dbg !220
  store i8 %conv175, i8* %arrayidx177, align 1, !dbg !220, !tbaa !152
  %add178 = add nsw i32 %L.0.ph271, 1, !dbg !221
  %idxprom179 = sext i32 %add178 to i64, !dbg !221
  %arrayidx180 = getelementptr inbounds i8* %dsq.0.ph, i64 %idxprom179, !dbg !221
  store i8 0, i8* %arrayidx180, align 1, !dbg !221, !tbaa !152
  %dec = add nsw i32 %L.0.ph271, -1, !dbg !222
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !94), !dbg !222
  %cmp181 = icmp eq i8** %ret_dsq, null, !dbg !223
  br i1 %cmp181, label %if.else184, label %if.then183, !dbg !223

if.then183:                                       ; preds = %while.end
  store i8* %dsq.0.ph, i8** %ret_dsq, align 8, !dbg !223, !tbaa !151
  br label %if.end185, !dbg !223

if.else184:                                       ; preds = %while.end
  call void @free(i8* %dsq.0.ph) #4, !dbg !223
  br label %if.end185

if.end185:                                        ; preds = %if.else184, %if.then183
  %cmp186 = icmp eq i32* %ret_L, null, !dbg !224
  br i1 %cmp186, label %if.end189, label %if.then188, !dbg !224

if.then188:                                       ; preds = %if.end185
  store i32 %dec, i32* %ret_L, align 4, !dbg !224, !tbaa !156
  br label %if.end189, !dbg !224

if.end189:                                        ; preds = %if.end185, %if.then188
  %cmp190 = icmp eq %struct.p7trace_s** %ret_tr, null, !dbg !225
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !90), !dbg !225
  %47 = load %struct.p7trace_s** %tr, align 8, !dbg !225, !tbaa !151
  br i1 %cmp190, label %if.else193, label %if.then192, !dbg !225

if.then192:                                       ; preds = %if.end189
  store %struct.p7trace_s* %47, %struct.p7trace_s** %ret_tr, align 8, !dbg !225, !tbaa !151
  br label %if.end194, !dbg !225

if.else193:                                       ; preds = %if.end189
  call void @P7FreeTrace(%struct.p7trace_s* %47) #4, !dbg !225
  br label %if.end194

if.end194:                                        ; preds = %if.else193, %if.then192
  ret void, !dbg !226
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @P7AllocTrace(i32, %struct.p7trace_s**) #2

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: optsize
declare void @TraceSet(%struct.p7trace_s*, i32, i8 signext, i32, i32) #2

; Function Attrs: optsize
declare i32 @FChoose(float*, i32) #2

; Function Attrs: optsize
declare void @FCopy(float*, float*, i32) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare void @P7ReallocTrace(%struct.p7trace_s*, i32) #2

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare void @P7FreeTrace(%struct.p7trace_s*) #2

; Function Attrs: nounwind optsize uwtable
define void @EmitConsensusSequence(%struct.plan7_s* nocapture %hmm, i8** %ret_seq, i8** %ret_dsq, i32* %ret_L, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  %mp = alloca float*, align 8
  %ip = alloca float*, align 8
  %dp = alloca float*, align 8
  call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !106), !dbg !227
  call void @llvm.dbg.value(metadata !{i8** %ret_seq}, i64 0, metadata !107), !dbg !227
  call void @llvm.dbg.value(metadata !{i8** %ret_dsq}, i64 0, metadata !108), !dbg !227
  call void @llvm.dbg.value(metadata !{i32* %ret_L}, i64 0, metadata !109), !dbg !227
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ret_tr}, i64 0, metadata !110), !dbg !227
  call void @llvm.dbg.declare(metadata !{%struct.p7trace_s** %tr}, metadata !111), !dbg !228
  call void @llvm.dbg.declare(metadata !{float** %mp}, metadata !114), !dbg !229
  call void @llvm.dbg.declare(metadata !{float** %ip}, metadata !115), !dbg !229
  call void @llvm.dbg.declare(metadata !{float** %dp}, metadata !116), !dbg !229
  %0 = load i32* @Alphabet_type, align 4, !dbg !230, !tbaa !156
  %cmp = icmp eq i32 %0, 3, !dbg !230
  %. = select i1 %cmp, float 5.000000e-01, float 0x3FECCCCCC0000000, !dbg !230
  call void @StateOccupancy(%struct.plan7_s* %hmm, float** %mp, float** %ip, float** %dp) #5, !dbg !231
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !119), !dbg !232
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !118), !dbg !232
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !117), !dbg !232
  call void @llvm.dbg.value(metadata !157, i64 0, metadata !120), !dbg !233
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !233
  %1 = load i32* %M, align 4, !dbg !233, !tbaa !156
  %cmp1216 = icmp slt i32 %1, 1, !dbg !233
  br i1 %cmp1216, label %for.end, label %for.body.lr.ph, !dbg !233

for.body.lr.ph:                                   ; preds = %entry
  call void @llvm.dbg.value(metadata !{float** %mp}, i64 0, metadata !114), !dbg !235
  %2 = load float** %mp, align 8, !dbg !235, !tbaa !151
  call void @llvm.dbg.value(metadata !{float** %ip}, i64 0, metadata !115), !dbg !237
  %3 = load float** %ip, align 8, !dbg !237, !tbaa !151
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !238
  br label %for.body, !dbg !233

for.body:                                         ; preds = %for.inc.thread, %for.body.lr.ph
  %indvars.iv227 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next228232, %for.inc.thread ]
  %nmat.0220 = phi i32 [ 0, %for.body.lr.ph ], [ %nmat.1, %for.inc.thread ]
  %nins.0218 = phi i32 [ 0, %for.body.lr.ph ], [ %nins.1.ph, %for.inc.thread ]
  %ndel.0217 = phi i32 [ 0, %for.body.lr.ph ], [ %ndel.1, %for.inc.thread ]
  call void @llvm.dbg.value(metadata !{float** %mp}, i64 0, metadata !114), !dbg !235
  %arrayidx = getelementptr inbounds float* %2, i64 %indvars.iv227, !dbg !235
  %4 = load float* %arrayidx, align 4, !dbg !235, !tbaa !181
  %cmp2 = fcmp ult float %4, 5.000000e-01, !dbg !235
  %inc6 = zext i1 %cmp2 to i32, !dbg !235
  %ndel.1 = add nsw i32 %inc6, %ndel.0217, !dbg !235
  %inc = xor i32 %inc6, 1, !dbg !235
  %nmat.1 = add nsw i32 %inc, %nmat.0220, !dbg !235
  %5 = trunc i64 %indvars.iv227 to i32, !dbg !237
  %cmp9 = icmp slt i32 %5, %1, !dbg !237
  br i1 %cmp9, label %land.lhs.true, label %for.cond.for.end_crit_edge, !dbg !237

land.lhs.true:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata !{float** %ip}, i64 0, metadata !115), !dbg !237
  %arrayidx12 = getelementptr inbounds float* %3, i64 %indvars.iv227, !dbg !237
  %6 = load float* %arrayidx12, align 4, !dbg !237, !tbaa !181
  %cmp14 = fcmp ult float %6, 5.000000e-01, !dbg !237
  br i1 %cmp14, label %for.inc.thread, label %if.then16, !dbg !237

if.then16:                                        ; preds = %land.lhs.true
  %7 = load float*** %t, align 8, !dbg !238, !tbaa !151
  %arrayidx18 = getelementptr inbounds float** %7, i64 %indvars.iv227, !dbg !238
  %8 = load float** %arrayidx18, align 8, !dbg !238, !tbaa !151
  %arrayidx19 = getelementptr inbounds float* %8, i64 4, !dbg !238
  %9 = load float* %arrayidx19, align 4, !dbg !238, !tbaa !181
  %sub = fsub float 1.000000e+00, %9, !dbg !238
  %div = fdiv float 1.000000e+00, %sub, !dbg !238
  %conv20 = fptosi float %div to i32, !dbg !238
  %add = add nsw i32 %conv20, %nins.0218, !dbg !238
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !119), !dbg !238
  br label %for.inc.thread, !dbg !238

for.inc.thread:                                   ; preds = %land.lhs.true, %if.then16
  %nins.1.ph = phi i32 [ %nins.0218, %land.lhs.true ], [ %add, %if.then16 ]
  %indvars.iv.next228232 = add i64 %indvars.iv227, 1, !dbg !233
  br label %for.body, !dbg !233

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = add i32 %ndel.1, 6, !dbg !233
  br label %for.end, !dbg !233

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %nmat.0.lcssa = phi i32 [ %nmat.1, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %nins.0.lcssa = phi i32 [ %nins.0218, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %ndel.0.lcssa = phi i32 [ %phitmp, %for.cond.for.end_crit_edge ], [ 6, %entry ]
  %add24 = add i32 %ndel.0.lcssa, %nins.0.lcssa, !dbg !239
  %add25 = add i32 %add24, %nmat.0.lcssa, !dbg !239
  call void @P7AllocTrace(i32 %add25, %struct.p7trace_s** %tr) #4, !dbg !239
  %add26 = add nsw i32 %nmat.0.lcssa, %nins.0.lcssa, !dbg !240
  %add27 = add nsw i32 %add26, 3, !dbg !240
  %conv28 = sext i32 %add27 to i64, !dbg !240
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 327, i64 %conv28) #4, !dbg !240
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !112), !dbg !240
  %add30 = add nsw i32 %add26, 1, !dbg !241
  %conv31 = sext i32 %add30 to i64, !dbg !241
  %call33 = call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 328, i64 %conv31) #4, !dbg !241
  call void @llvm.dbg.value(metadata !{i8* %call33}, i64 0, metadata !113), !dbg !241
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !111), !dbg !242
  %10 = load %struct.p7trace_s** %tr, align 8, !dbg !242, !tbaa !151
  call void @TraceSet(%struct.p7trace_s* %10, i32 0, i8 signext 4, i32 0, i32 0) #4, !dbg !242
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !111), !dbg !243
  %11 = load %struct.p7trace_s** %tr, align 8, !dbg !243, !tbaa !151
  call void @TraceSet(%struct.p7trace_s* %11, i32 1, i8 signext 5, i32 0, i32 0) #4, !dbg !243
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !111), !dbg !244
  %12 = load %struct.p7trace_s** %tr, align 8, !dbg !244, !tbaa !151
  call void @TraceSet(%struct.p7trace_s* %12, i32 2, i8 signext 6, i32 0, i32 0) #4, !dbg !244
  %13 = load i32* @Alphabet_iupac, align 4, !dbg !245, !tbaa !156
  %conv34 = trunc i32 %13 to i8, !dbg !245
  store i8 %conv34, i8* %call, align 1, !dbg !245, !tbaa !152
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !121), !dbg !247
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !122), !dbg !248
  call void @llvm.dbg.value(metadata !157, i64 0, metadata !120), !dbg !249
  %14 = load i32* %M, align 4, !dbg !249, !tbaa !156
  %cmp38210 = icmp slt i32 %14, 1, !dbg !249
  call void @llvm.dbg.value(metadata !{float** %mp}, i64 0, metadata !114), !dbg !250
  %.pre229 = load float** %mp, align 8, !dbg !250, !tbaa !151
  call void @llvm.dbg.value(metadata !{float** %ip}, i64 0, metadata !115), !dbg !251
  %.pre230 = load float** %ip, align 8, !dbg !251, !tbaa !151
  br i1 %cmp38210, label %for.end110, label %for.body40.lr.ph, !dbg !249

for.body40.lr.ph:                                 ; preds = %for.end
  %t91 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !252
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !254
  br label %for.body40, !dbg !249

for.body40:                                       ; preds = %for.inc108, %for.body40.lr.ph
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %for.inc108 ], [ 1, %for.body40.lr.ph ]
  %i.0213 = phi i32 [ %i.3, %for.inc108 ], [ 0, %for.body40.lr.ph ]
  %tpos.0212 = phi i32 [ %tpos.3, %for.inc108 ], [ 3, %for.body40.lr.ph ]
  call void @llvm.dbg.value(metadata !{float** %mp}, i64 0, metadata !114), !dbg !255
  %arrayidx42 = getelementptr inbounds float* %.pre229, i64 %indvars.iv225, !dbg !255
  %15 = load float* %arrayidx42, align 4, !dbg !255, !tbaa !181
  %cmp44 = fcmp ult float %15, 5.000000e-01, !dbg !255
  br i1 %cmp44, label %if.else77, label %if.then46, !dbg !255

if.then46:                                        ; preds = %for.body40
  %16 = load float*** %mat, align 8, !dbg !254, !tbaa !151
  %arrayidx48 = getelementptr inbounds float** %16, i64 %indvars.iv225, !dbg !254
  %17 = load float** %arrayidx48, align 8, !dbg !254, !tbaa !151
  %18 = load i32* @Alphabet_size, align 4, !dbg !254, !tbaa !156
  %call49 = call i32 @FArgMax(float* %17, i32 %18) #4, !dbg !254
  call void @llvm.dbg.value(metadata !{i32 %call49}, i64 0, metadata !123), !dbg !254
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !111), !dbg !256
  %19 = load %struct.p7trace_s** %tr, align 8, !dbg !256, !tbaa !151
  %add50 = add nsw i32 %i.0213, 1, !dbg !256
  %20 = trunc i64 %indvars.iv225 to i32, !dbg !256
  call void @TraceSet(%struct.p7trace_s* %19, i32 %tpos.0212, i8 signext 1, i32 %20, i32 %add50) #4, !dbg !256
  %idxprom51 = sext i32 %call49 to i64, !dbg !257
  %arrayidx52 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom51, !dbg !257
  %21 = load i8* %arrayidx52, align 1, !dbg !257, !tbaa !152
  %idxprom53 = sext i32 %i.0213 to i64, !dbg !257
  %arrayidx54 = getelementptr inbounds i8* %call33, i64 %idxprom53, !dbg !257
  store i8 %21, i8* %arrayidx54, align 1, !dbg !257, !tbaa !152
  %conv55 = trunc i32 %call49 to i8, !dbg !258
  %idxprom57 = sext i32 %add50 to i64, !dbg !258
  %arrayidx58 = getelementptr inbounds i8* %call, i64 %idxprom57, !dbg !258
  store i8 %conv55, i8* %arrayidx58, align 1, !dbg !258, !tbaa !152
  %22 = load float*** %mat, align 8, !dbg !259, !tbaa !151
  %arrayidx62 = getelementptr inbounds float** %22, i64 %indvars.iv225, !dbg !259
  %23 = load float** %arrayidx62, align 8, !dbg !259, !tbaa !151
  %arrayidx63 = getelementptr inbounds float* %23, i64 %idxprom51, !dbg !259
  %24 = load float* %arrayidx63, align 4, !dbg !259, !tbaa !181
  %cmp64 = fcmp olt float %24, %., !dbg !259
  br i1 %cmp64, label %if.then66, label %if.end79, !dbg !259

if.then66:                                        ; preds = %if.then46
  %25 = load i8* %arrayidx54, align 1, !dbg !260, !tbaa !152
  %conv69 = sext i8 %25 to i32, !dbg !260
  %call70 = call i32 @tolower(i32 %conv69) #4, !dbg !260
  call void @llvm.dbg.value(metadata !{i32 %call70}, i64 0, metadata !125), !dbg !260
  %conv71 = trunc i32 %call70 to i8, !dbg !262
  store i8 %conv71, i8* %arrayidx54, align 1, !dbg !262, !tbaa !152
  br label %if.end79, !dbg !262

if.else77:                                        ; preds = %for.body40
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !111), !dbg !263
  %26 = load %struct.p7trace_s** %tr, align 8, !dbg !263, !tbaa !151
  %27 = trunc i64 %indvars.iv225 to i32, !dbg !263
  call void @TraceSet(%struct.p7trace_s* %26, i32 %tpos.0212, i8 signext 2, i32 %27, i32 0) #4, !dbg !263
  br label %if.end79

if.end79:                                         ; preds = %if.then46, %if.then66, %if.else77
  %i.1 = phi i32 [ %i.0213, %if.else77 ], [ %add50, %if.then66 ], [ %add50, %if.then46 ]
  %tpos.1 = add i32 %tpos.0212, 1, !dbg !265
  %28 = load i32* %M, align 4, !dbg !266, !tbaa !156
  %29 = trunc i64 %indvars.iv225 to i32, !dbg !266
  %cmp81 = icmp slt i32 %29, %28, !dbg !266
  br i1 %cmp81, label %land.lhs.true83, label %for.inc108, !dbg !266

land.lhs.true83:                                  ; preds = %if.end79
  call void @llvm.dbg.value(metadata !{float** %ip}, i64 0, metadata !115), !dbg !266
  %arrayidx85 = getelementptr inbounds float* %.pre230, i64 %indvars.iv225, !dbg !266
  %30 = load float* %arrayidx85, align 4, !dbg !266, !tbaa !181
  %cmp87 = fcmp ult float %30, 5.000000e-01, !dbg !266
  br i1 %cmp87, label %for.inc108, label %if.then89, !dbg !266

if.then89:                                        ; preds = %land.lhs.true83
  %31 = load float*** %t91, align 8, !dbg !252, !tbaa !151
  %arrayidx92 = getelementptr inbounds float** %31, i64 %indvars.iv225, !dbg !252
  %32 = load float** %arrayidx92, align 8, !dbg !252, !tbaa !151
  %arrayidx93 = getelementptr inbounds float* %32, i64 4, !dbg !252
  %33 = load float* %arrayidx93, align 4, !dbg !252, !tbaa !181
  %sub94 = fsub float 1.000000e+00, %33, !dbg !252
  %div95 = fdiv float 1.000000e+00, %sub94, !dbg !252
  %conv96 = fptosi float %div95 to i32, !dbg !252
  call void @llvm.dbg.value(metadata !{i32 %conv96}, i64 0, metadata !123), !dbg !252
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !123), !dbg !267
  %tobool205 = icmp eq i32 %conv96, 0, !dbg !267
  br i1 %tobool205, label %for.inc108, label %while.body.lr.ph, !dbg !267

while.body.lr.ph:                                 ; preds = %if.then89
  %34 = sext i32 %i.1 to i64
  %35 = add i32 %tpos.1, %conv96, !dbg !267
  br label %while.body, !dbg !267

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ %34, %while.body.lr.ph ], [ %indvars.iv.next, %while.body ]
  %x.0208 = phi i32 [ %conv96, %while.body.lr.ph ], [ %dec, %while.body ]
  %tpos.2206 = phi i32 [ %tpos.1, %while.body.lr.ph ], [ %inc106, %while.body ]
  %dec = add nsw i32 %x.0208, -1, !dbg !267
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !111), !dbg !268
  %36 = load %struct.p7trace_s** %tr, align 8, !dbg !268, !tbaa !151
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !267
  %37 = trunc i64 %indvars.iv.next to i32, !dbg !268
  call void @TraceSet(%struct.p7trace_s* %36, i32 %tpos.2206, i8 signext 3, i32 %29, i32 %37) #4, !dbg !268
  %arrayidx99 = getelementptr inbounds i8* %call33, i64 %indvars.iv, !dbg !270
  store i8 120, i8* %arrayidx99, align 1, !dbg !270, !tbaa !152
  %38 = load i32* @Alphabet_iupac, align 4, !dbg !271, !tbaa !156
  %sub100 = add nsw i32 %38, 255, !dbg !271
  %conv101 = trunc i32 %sub100 to i8, !dbg !271
  %arrayidx104 = getelementptr inbounds i8* %call, i64 %indvars.iv.next, !dbg !271
  store i8 %conv101, i8* %arrayidx104, align 1, !dbg !271, !tbaa !152
  call void @llvm.dbg.value(metadata !{i32 %39}, i64 0, metadata !122), !dbg !272
  %inc106 = add nsw i32 %tpos.2206, 1, !dbg !273
  call void @llvm.dbg.value(metadata !{i32 %35}, i64 0, metadata !121), !dbg !273
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !123), !dbg !267
  %tobool = icmp eq i32 %dec, 0, !dbg !267
  br i1 %tobool, label %while.cond.for.inc108.loopexit_crit_edge, label %while.body, !dbg !267

while.cond.for.inc108.loopexit_crit_edge:         ; preds = %while.body
  %39 = add i32 %i.1, %conv96, !dbg !267
  %.pre.pre = load i32* %M, align 4, !dbg !249, !tbaa !156
  br label %for.inc108, !dbg !267

for.inc108:                                       ; preds = %if.then89, %while.cond.for.inc108.loopexit_crit_edge, %land.lhs.true83, %if.end79
  %40 = phi i32 [ %28, %land.lhs.true83 ], [ %28, %if.end79 ], [ %.pre.pre, %while.cond.for.inc108.loopexit_crit_edge ], [ %28, %if.then89 ]
  %tpos.3 = phi i32 [ %tpos.1, %land.lhs.true83 ], [ %tpos.1, %if.end79 ], [ %35, %while.cond.for.inc108.loopexit_crit_edge ], [ %tpos.1, %if.then89 ]
  %i.3 = phi i32 [ %i.1, %land.lhs.true83 ], [ %i.1, %if.end79 ], [ %39, %while.cond.for.inc108.loopexit_crit_edge ], [ %i.1, %if.then89 ]
  %indvars.iv.next226 = add i64 %indvars.iv225, 1, !dbg !249
  %cmp38 = icmp slt i32 %29, %40, !dbg !249
  br i1 %cmp38, label %for.body40, label %for.end110, !dbg !249

for.end110:                                       ; preds = %for.end, %for.inc108
  %i.0.lcssa = phi i32 [ %i.3, %for.inc108 ], [ 0, %for.end ]
  %tpos.0.lcssa = phi i32 [ %tpos.3, %for.inc108 ], [ 3, %for.end ]
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !111), !dbg !274
  %41 = load %struct.p7trace_s** %tr, align 8, !dbg !274, !tbaa !151
  call void @TraceSet(%struct.p7trace_s* %41, i32 %tpos.0.lcssa, i8 signext 7, i32 0, i32 0) #4, !dbg !274
  %inc111 = add nsw i32 %tpos.0.lcssa, 1, !dbg !274
  call void @llvm.dbg.value(metadata !{i32 %inc111}, i64 0, metadata !121), !dbg !274
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !111), !dbg !275
  %42 = load %struct.p7trace_s** %tr, align 8, !dbg !275, !tbaa !151
  call void @TraceSet(%struct.p7trace_s* %42, i32 %inc111, i8 signext 8, i32 0, i32 0) #4, !dbg !275
  %inc112 = add nsw i32 %tpos.0.lcssa, 2, !dbg !275
  call void @llvm.dbg.value(metadata !{i32 %inc112}, i64 0, metadata !121), !dbg !275
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !111), !dbg !276
  %43 = load %struct.p7trace_s** %tr, align 8, !dbg !276, !tbaa !151
  call void @TraceSet(%struct.p7trace_s* %43, i32 %inc112, i8 signext 9, i32 0, i32 0) #4, !dbg !276
  %44 = load i32* @Alphabet_iupac, align 4, !dbg !277, !tbaa !156
  %conv114 = trunc i32 %44 to i8, !dbg !277
  %add115 = add nsw i32 %i.0.lcssa, 1, !dbg !277
  %idxprom116 = sext i32 %add115 to i64, !dbg !277
  %arrayidx117 = getelementptr inbounds i8* %call, i64 %idxprom116, !dbg !277
  store i8 %conv114, i8* %arrayidx117, align 1, !dbg !277, !tbaa !152
  call void @llvm.dbg.value(metadata !{float** %mp}, i64 0, metadata !114), !dbg !250
  %45 = bitcast float* %.pre229 to i8*, !dbg !250
  call void @free(i8* %45) #4, !dbg !250
  call void @llvm.dbg.value(metadata !{float** %ip}, i64 0, metadata !115), !dbg !251
  %46 = bitcast float* %.pre230 to i8*, !dbg !251
  call void @free(i8* %46) #4, !dbg !251
  call void @llvm.dbg.value(metadata !{float** %dp}, i64 0, metadata !116), !dbg !278
  %47 = load float** %dp, align 8, !dbg !278, !tbaa !151
  %48 = bitcast float* %47 to i8*, !dbg !278
  call void @free(i8* %48) #4, !dbg !278
  %cmp118 = icmp eq i8** %ret_seq, null, !dbg !279
  br i1 %cmp118, label %if.else121, label %if.then120, !dbg !279

if.then120:                                       ; preds = %for.end110
  store i8* %call33, i8** %ret_seq, align 8, !dbg !279, !tbaa !151
  br label %if.end122, !dbg !279

if.else121:                                       ; preds = %for.end110
  call void @free(i8* %call33) #4, !dbg !279
  br label %if.end122

if.end122:                                        ; preds = %if.else121, %if.then120
  %cmp123 = icmp eq i8** %ret_dsq, null, !dbg !280
  br i1 %cmp123, label %if.else126, label %if.then125, !dbg !280

if.then125:                                       ; preds = %if.end122
  store i8* %call, i8** %ret_dsq, align 8, !dbg !280, !tbaa !151
  br label %if.end127, !dbg !280

if.else126:                                       ; preds = %if.end122
  call void @free(i8* %call) #4, !dbg !280
  br label %if.end127

if.end127:                                        ; preds = %if.else126, %if.then125
  %cmp128 = icmp eq i32* %ret_L, null, !dbg !281
  br i1 %cmp128, label %if.end131, label %if.then130, !dbg !281

if.then130:                                       ; preds = %if.end127
  store i32 %i.0.lcssa, i32* %ret_L, align 4, !dbg !281, !tbaa !156
  br label %if.end131, !dbg !281

if.end131:                                        ; preds = %if.end127, %if.then130
  %cmp132 = icmp eq %struct.p7trace_s** %ret_tr, null, !dbg !282
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !111), !dbg !282
  %49 = load %struct.p7trace_s** %tr, align 8, !dbg !282, !tbaa !151
  br i1 %cmp132, label %if.else135, label %if.then134, !dbg !282

if.then134:                                       ; preds = %if.end131
  store %struct.p7trace_s* %49, %struct.p7trace_s** %ret_tr, align 8, !dbg !282, !tbaa !151
  br label %if.end136, !dbg !282

if.else135:                                       ; preds = %if.end131
  call void @P7FreeTrace(%struct.p7trace_s* %49) #4, !dbg !282
  br label %if.end136

if.end136:                                        ; preds = %if.else135, %if.then134
  ret void, !dbg !283
}

; Function Attrs: nounwind optsize uwtable
define void @StateOccupancy(%struct.plan7_s* nocapture %hmm, float** nocapture %ret_mp, float** nocapture %ret_ip, float** nocapture %ret_dp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !134), !dbg !284
  tail call void @llvm.dbg.value(metadata !{float** %ret_mp}, i64 0, metadata !135), !dbg !284
  tail call void @llvm.dbg.value(metadata !{float** %ret_ip}, i64 0, metadata !136), !dbg !284
  tail call void @llvm.dbg.value(metadata !{float** %ret_dp}, i64 0, metadata !137), !dbg !284
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20, !dbg !285
  %0 = load i32* %M, align 4, !dbg !285, !tbaa !156
  %add = add nsw i32 %0, 1, !dbg !285
  %conv = sext i32 %add to i64, !dbg !285
  %mul = shl nsw i64 %conv, 2, !dbg !285
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 414, i64 %mul) #4, !dbg !285
  %1 = bitcast i8* %call to float*, !dbg !285
  tail call void @llvm.dbg.value(metadata !{float* %1}, i64 0, metadata !138), !dbg !285
  %2 = load i32* %M, align 4, !dbg !286, !tbaa !156
  %conv2 = sext i32 %2 to i64, !dbg !286
  %mul3 = shl nsw i64 %conv2, 2, !dbg !286
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 415, i64 %mul3) #4, !dbg !286
  %3 = bitcast i8* %call4 to float*, !dbg !286
  tail call void @llvm.dbg.value(metadata !{float* %3}, i64 0, metadata !139), !dbg !286
  %4 = load i32* %M, align 4, !dbg !287, !tbaa !156
  %add6 = add nsw i32 %4, 1, !dbg !287
  %conv7 = sext i32 %add6 to i64, !dbg !287
  %mul8 = shl nsw i64 %conv7, 2, !dbg !287
  %call9 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 416, i64 %mul8) #4, !dbg !287
  %5 = bitcast i8* %call9 to float*, !dbg !287
  tail call void @llvm.dbg.value(metadata !{float* %5}, i64 0, metadata !140), !dbg !287
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !288
  %6 = load float* %tbd1, align 4, !dbg !288, !tbaa !181
  %arrayidx = getelementptr inbounds i8* %call9, i64 4, !dbg !288
  %7 = bitcast i8* %arrayidx to float*, !dbg !288
  store float %6, float* %7, align 4, !dbg !288, !tbaa !181
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !289
  %8 = load float** %begin, align 8, !dbg !289, !tbaa !151
  %arrayidx10 = getelementptr inbounds float* %8, i64 1, !dbg !289
  %9 = load float* %arrayidx10, align 4, !dbg !289, !tbaa !181
  %arrayidx11 = getelementptr inbounds i8* %call, i64 4, !dbg !289
  %10 = bitcast i8* %arrayidx11 to float*, !dbg !289
  store float %9, float* %10, align 4, !dbg !289, !tbaa !181
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !290
  %11 = load float*** %t, align 8, !dbg !290, !tbaa !151
  %arrayidx13 = getelementptr inbounds float** %11, i64 1, !dbg !290
  %12 = load float** %arrayidx13, align 8, !dbg !290, !tbaa !151
  %arrayidx14 = getelementptr inbounds float* %12, i64 1, !dbg !290
  %13 = load float* %arrayidx14, align 4, !dbg !290, !tbaa !181
  %mul15 = fmul float %9, %13, !dbg !290
  %arrayidx16 = getelementptr inbounds i8* %call4, i64 4, !dbg !290
  %14 = bitcast i8* %arrayidx16 to float*, !dbg !290
  store float %mul15, float* %14, align 4, !dbg !290, !tbaa !181
  tail call void @llvm.dbg.value(metadata !162, i64 0, metadata !141), !dbg !291
  %15 = load i32* %M, align 4, !dbg !291, !tbaa !156
  %cmp149 = icmp slt i32 %15, 2, !dbg !291
  br i1 %cmp149, label %for.end, label %for.body.lr.ph, !dbg !291

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx32.phi.trans.insert = getelementptr inbounds i8* %call9, i64 4
  %16 = bitcast i8* %arrayidx32.phi.trans.insert to float*
  %.pre = load float* %16, align 4, !dbg !293, !tbaa !181
  br label %for.body, !dbg !291

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %17 = phi float* [ %.pre153, %if.end.for.body_crit_edge ], [ %12, %for.body.lr.ph ]
  %18 = phi float [ %div93, %if.end.for.body_crit_edge ], [ %.pre, %for.body.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end.for.body_crit_edge ], [ 2, %for.body.lr.ph ]
  %19 = add nsw i64 %indvars.iv, -1, !dbg !293
  %arrayidx19 = getelementptr inbounds float* %1, i64 %19, !dbg !293
  %20 = load float* %arrayidx19, align 4, !dbg !293, !tbaa !181
  %21 = load float* %17, align 4, !dbg !293, !tbaa !181
  %mul25 = fmul float %20, %21, !dbg !293
  %arrayidx28 = getelementptr inbounds float* %3, i64 %19, !dbg !293
  %22 = load float* %arrayidx28, align 4, !dbg !293, !tbaa !181
  %add29 = fadd float %mul25, %22, !dbg !293
  %arrayidx32 = getelementptr inbounds float* %5, i64 %19, !dbg !293
  %arrayidx37 = getelementptr inbounds float* %17, i64 5, !dbg !293
  %23 = load float* %arrayidx37, align 4, !dbg !293, !tbaa !181
  %mul38 = fmul float %18, %23, !dbg !293
  %add39 = fadd float %add29, %mul38, !dbg !293
  %arrayidx42 = getelementptr inbounds float* %8, i64 %indvars.iv, !dbg !293
  %24 = load float* %arrayidx42, align 4, !dbg !293, !tbaa !181
  %add43 = fadd float %add39, %24, !dbg !293
  %arrayidx45 = getelementptr inbounds float* %1, i64 %indvars.iv, !dbg !293
  store float %add43, float* %arrayidx45, align 4, !dbg !293, !tbaa !181
  %arrayidx53 = getelementptr inbounds float* %17, i64 2, !dbg !295
  %25 = load float* %arrayidx53, align 4, !dbg !295, !tbaa !181
  %mul54 = fmul float %20, %25, !dbg !295
  %26 = load float* %arrayidx32, align 4, !dbg !295, !tbaa !181
  %arrayidx62 = getelementptr inbounds float* %17, i64 6, !dbg !295
  %27 = load float* %arrayidx62, align 4, !dbg !295, !tbaa !181
  %mul63 = fmul float %26, %27, !dbg !295
  %add64 = fadd float %mul54, %mul63, !dbg !295
  %arrayidx66 = getelementptr inbounds float* %5, i64 %indvars.iv, !dbg !295
  store float %add64, float* %arrayidx66, align 4, !dbg !295, !tbaa !181
  %28 = trunc i64 %indvars.iv to i32, !dbg !296
  %cmp68 = icmp slt i32 %28, %15, !dbg !296
  br i1 %cmp68, label %if.then, label %if.end, !dbg !296

if.then:                                          ; preds = %for.body
  %29 = load float* %arrayidx45, align 4, !dbg !297, !tbaa !181
  %arrayidx74 = getelementptr inbounds float** %11, i64 %indvars.iv, !dbg !297
  %30 = load float** %arrayidx74, align 8, !dbg !297, !tbaa !151
  %arrayidx75 = getelementptr inbounds float* %30, i64 1, !dbg !297
  %31 = load float* %arrayidx75, align 4, !dbg !297, !tbaa !181
  %mul76 = fmul float %29, %31, !dbg !297
  %arrayidx78 = getelementptr inbounds float* %3, i64 %indvars.iv, !dbg !297
  store float %mul76, float* %arrayidx78, align 4, !dbg !297, !tbaa !181
  %.pre152 = load float* %arrayidx66, align 4, !dbg !299, !tbaa !181
  br label %if.end, !dbg !300

if.end:                                           ; preds = %if.then, %for.body
  %32 = phi float [ %.pre152, %if.then ], [ %add64, %for.body ]
  %33 = load float* %arrayidx45, align 4, !dbg !299, !tbaa !181
  %add83 = fadd float %33, %32, !dbg !299
  %div = fdiv float %33, %add83, !dbg !299
  store float %div, float* %arrayidx45, align 4, !dbg !299, !tbaa !181
  %34 = load float* %arrayidx66, align 4, !dbg !301, !tbaa !181
  %add90 = fadd float %div, %34, !dbg !301
  %div93 = fdiv float %34, %add90, !dbg !301
  store float %div93, float* %arrayidx66, align 4, !dbg !301, !tbaa !181
  br i1 %cmp68, label %if.end.for.body_crit_edge, label %for.end, !dbg !291

if.end.for.body_crit_edge:                        ; preds = %if.end
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !291
  %arrayidx23.phi.trans.insert = getelementptr inbounds float** %11, i64 %indvars.iv
  %.pre153 = load float** %arrayidx23.phi.trans.insert, align 8, !dbg !293, !tbaa !151
  br label %for.body, !dbg !291

for.end:                                          ; preds = %if.end, %entry
  store float* %1, float** %ret_mp, align 8, !dbg !302, !tbaa !151
  store float* %5, float** %ret_dp, align 8, !dbg !303, !tbaa !151
  store float* %3, float** %ret_ip, align 8, !dbg !304, !tbaa !151
  ret void, !dbg !305
}

; Function Attrs: optsize
declare i32 @FArgMax(float*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @tolower(i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !102, metadata !130}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"EmitSequence", metadata !"EmitSequence", metadata !"", i32 42, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, i8**, i32*, %struct.p7trace_s**)* @EmitSequence, null, null, metadata !85, i32 43} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 43] [EmitSequence]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !76, metadata !25, metadata !77}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!9 = metadata !{i32 786451, metadata !10, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !11, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!10 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !23, metadata !24, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !41, metadata !42, metadata !43, metadata !44, metadata !49, metadata !50, metadata !51, metadata !55, metadata !56, metadata !58, metadata !59, metadata !60, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!12 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!14 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!15 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!16 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !13} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!17 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !13} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!18 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !13} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!19 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !13} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!20 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !13} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!21 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!22 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!23 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !13} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!24 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !25} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!26 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !22} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!27 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !25} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!28 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !25} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!29 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !25} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!30 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !31} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!31 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!32 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !31} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!33 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !31} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!34 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !31} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!35 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !31} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!36 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !31} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!37 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !22} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!38 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !39} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!41 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !39} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!42 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !39} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!43 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !31} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!44 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !45} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!45 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !31, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!46 = metadata !{metadata !47, metadata !48}
!47 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!48 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!49 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !40} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!50 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !40} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!51 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !52} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!52 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !31, metadata !53, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!55 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !31} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!56 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !57} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !57} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!59 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !57} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!60 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !61} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!61 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !22, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!62 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !25} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!63 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !25} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!64 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !25} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!65 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !25} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!66 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !25} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!67 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !25} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!68 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !25} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!69 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !57} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!70 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !57} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!71 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !22} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!72 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !22} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!73 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !31} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!74 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !31} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!75 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !22} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from p7trace_s]
!79 = metadata !{i32 786451, metadata !10, null, metadata !"p7trace_s", i32 374, i64 256, i64 64, i32 0, i32 0, null, metadata !80, i32 0, null, null} ; [ DW_TAG_structure_type ] [p7trace_s] [line 374, size 256, align 64, offset 0] [from ]
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84}
!81 = metadata !{i32 786445, metadata !10, metadata !79, metadata !"tlen", i32 375, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [tlen] [line 375, size 32, align 32, offset 0] [from int]
!82 = metadata !{i32 786445, metadata !10, metadata !79, metadata !"statetype", i32 376, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ] [statetype] [line 376, size 64, align 64, offset 64] [from ]
!83 = metadata !{i32 786445, metadata !10, metadata !79, metadata !"nodeidx", i32 377, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [nodeidx] [line 377, size 64, align 64, offset 128] [from ]
!84 = metadata !{i32 786445, metadata !10, metadata !79, metadata !"pos", i32 378, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [pos] [line 378, size 64, align 64, offset 192] [from ]
!85 = metadata !{metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99}
!86 = metadata !{i32 786689, metadata !4, metadata !"hmm", metadata !5, i32 16777258, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 42]
!87 = metadata !{i32 786689, metadata !4, metadata !"ret_dsq", metadata !5, i32 33554474, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_dsq] [line 42]
!88 = metadata !{i32 786689, metadata !4, metadata !"ret_L", metadata !5, i32 50331690, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_L] [line 42]
!89 = metadata !{i32 786689, metadata !4, metadata !"ret_tr", metadata !5, i32 67108906, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 42]
!90 = metadata !{i32 786688, metadata !4, metadata !"tr", metadata !5, i32 44, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 44]
!91 = metadata !{i32 786688, metadata !4, metadata !"type", metadata !5, i32 45, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 45]
!92 = metadata !{i32 786688, metadata !4, metadata !"k", metadata !5, i32 46, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 46]
!93 = metadata !{i32 786688, metadata !4, metadata !"dsq", metadata !5, i32 47, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dsq] [line 47]
!94 = metadata !{i32 786688, metadata !4, metadata !"L", metadata !5, i32 48, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 48]
!95 = metadata !{i32 786688, metadata !4, metadata !"alloc_tlen", metadata !5, i32 49, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alloc_tlen] [line 49]
!96 = metadata !{i32 786688, metadata !4, metadata !"alloc_L", metadata !5, i32 50, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alloc_L] [line 50]
!97 = metadata !{i32 786688, metadata !4, metadata !"tpos", metadata !5, i32 51, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 51]
!98 = metadata !{i32 786688, metadata !4, metadata !"sym", metadata !5, i32 52, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 52]
!99 = metadata !{i32 786688, metadata !4, metadata !"t", metadata !5, i32 53, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 53]
!100 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !31, metadata !101, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from float]
!101 = metadata !{metadata !47}
!102 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"EmitConsensusSequence", metadata !"EmitConsensusSequence", metadata !"", i32 296, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, i8**, i8**, i32*, %struct.p7trace_s**)* @EmitConsensusSequence, null, null, metadata !105, i32 297} ; [ DW_TAG_subprogram ] [line 296] [def] [scope 297] [EmitConsensusSequence]
!103 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!104 = metadata !{null, metadata !8, metadata !76, metadata !76, metadata !25, metadata !77}
!105 = metadata !{metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125}
!106 = metadata !{i32 786689, metadata !102, metadata !"hmm", metadata !5, i32 16777512, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 296]
!107 = metadata !{i32 786689, metadata !102, metadata !"ret_seq", metadata !5, i32 33554728, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_seq] [line 296]
!108 = metadata !{i32 786689, metadata !102, metadata !"ret_dsq", metadata !5, i32 50331944, metadata !76, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_dsq] [line 296]
!109 = metadata !{i32 786689, metadata !102, metadata !"ret_L", metadata !5, i32 67109160, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_L] [line 296]
!110 = metadata !{i32 786689, metadata !102, metadata !"ret_tr", metadata !5, i32 83886376, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 296]
!111 = metadata !{i32 786688, metadata !102, metadata !"tr", metadata !5, i32 298, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 298]
!112 = metadata !{i32 786688, metadata !102, metadata !"dsq", metadata !5, i32 299, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dsq] [line 299]
!113 = metadata !{i32 786688, metadata !102, metadata !"seq", metadata !5, i32 299, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seq] [line 299]
!114 = metadata !{i32 786688, metadata !102, metadata !"mp", metadata !5, i32 300, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mp] [line 300]
!115 = metadata !{i32 786688, metadata !102, metadata !"ip", metadata !5, i32 300, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 300]
!116 = metadata !{i32 786688, metadata !102, metadata !"dp", metadata !5, i32 300, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dp] [line 300]
!117 = metadata !{i32 786688, metadata !102, metadata !"nmat", metadata !5, i32 301, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nmat] [line 301]
!118 = metadata !{i32 786688, metadata !102, metadata !"ndel", metadata !5, i32 301, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndel] [line 301]
!119 = metadata !{i32 786688, metadata !102, metadata !"nins", metadata !5, i32 301, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nins] [line 301]
!120 = metadata !{i32 786688, metadata !102, metadata !"k", metadata !5, i32 302, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 302]
!121 = metadata !{i32 786688, metadata !102, metadata !"tpos", metadata !5, i32 303, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 303]
!122 = metadata !{i32 786688, metadata !102, metadata !"i", metadata !5, i32 304, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 304]
!123 = metadata !{i32 786688, metadata !102, metadata !"x", metadata !5, i32 305, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 305]
!124 = metadata !{i32 786688, metadata !102, metadata !"mthresh", metadata !5, i32 306, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mthresh] [line 306]
!125 = metadata !{i32 786688, metadata !126, metadata !"__res", metadata !5, i32 348, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 348]
!126 = metadata !{i32 786443, metadata !1, metadata !127, i32 348, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!127 = metadata !{i32 786443, metadata !1, metadata !128, i32 342, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!128 = metadata !{i32 786443, metadata !1, metadata !129, i32 340, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!129 = metadata !{i32 786443, metadata !1, metadata !102, i32 339, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!130 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"StateOccupancy", metadata !"StateOccupancy", metadata !"", i32 407, metadata !131, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, float**, float**, float**)* @StateOccupancy, null, null, metadata !133, i32 408} ; [ DW_TAG_subprogram ] [line 407] [def] [scope 408] [StateOccupancy]
!131 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!132 = metadata !{null, metadata !8, metadata !39, metadata !39, metadata !39}
!133 = metadata !{metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141}
!134 = metadata !{i32 786689, metadata !130, metadata !"hmm", metadata !5, i32 16777623, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 407]
!135 = metadata !{i32 786689, metadata !130, metadata !"ret_mp", metadata !5, i32 33554839, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_mp] [line 407]
!136 = metadata !{i32 786689, metadata !130, metadata !"ret_ip", metadata !5, i32 50332055, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_ip] [line 407]
!137 = metadata !{i32 786689, metadata !130, metadata !"ret_dp", metadata !5, i32 67109271, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_dp] [line 407]
!138 = metadata !{i32 786688, metadata !130, metadata !"fmp", metadata !5, i32 409, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmp] [line 409]
!139 = metadata !{i32 786688, metadata !130, metadata !"fip", metadata !5, i32 409, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fip] [line 409]
!140 = metadata !{i32 786688, metadata !130, metadata !"fdp", metadata !5, i32 409, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fdp] [line 409]
!141 = metadata !{i32 786688, metadata !130, metadata !"k", metadata !5, i32 410, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 410]
!142 = metadata !{i32 42, i32 0, metadata !4, null}
!143 = metadata !{i32 44, i32 0, metadata !4, null}
!144 = metadata !{i32 53, i32 0, metadata !4, null}
!145 = metadata !{i32 57, i32 0, metadata !4, null}
!146 = metadata !{i32 64}
!147 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!148 = metadata !{i32 59, i32 0, metadata !4, null}
!149 = metadata !{i32 60, i32 0, metadata !4, null}
!150 = metadata !{i32 62, i32 0, metadata !4, null}
!151 = metadata !{metadata !"any pointer", metadata !152}
!152 = metadata !{metadata !"omnipotent char", metadata !153}
!153 = metadata !{metadata !"Simple C/C++ TBAA"}
!154 = metadata !{i32 63, i32 0, metadata !4, null}
!155 = metadata !{i32 64, i32 0, metadata !4, null}
!156 = metadata !{metadata !"int", metadata !152}
!157 = metadata !{i32 1}
!158 = metadata !{i32 65, i32 0, metadata !4, null}
!159 = metadata !{i32 66, i32 0, metadata !4, null}
!160 = metadata !{i8 5}
!161 = metadata !{i32 67, i32 0, metadata !4, null}
!162 = metadata !{i32 2}
!163 = metadata !{i32 68, i32 0, metadata !4, null}
!164 = metadata !{i32 128, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !4, i32 71, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!166 = metadata !{i32 123, i32 0, metadata !165, null}
!167 = metadata !{i32 124, i32 0, metadata !165, null}
!168 = metadata !{i32 76, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !165, i32 74, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!170 = metadata !{i32 77, i32 0, metadata !169, null}
!171 = metadata !{i32 81, i32 0, metadata !169, null}
!172 = metadata !{i32 82, i32 0, metadata !169, null}
!173 = metadata !{i32 83, i32 0, metadata !169, null}
!174 = metadata !{i32 84, i32 0, metadata !169, null}
!175 = metadata !{i32 85, i32 0, metadata !169, null}
!176 = metadata !{i32 99, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !169, i32 98, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!178 = metadata !{i32 100, i32 0, metadata !177, null}
!179 = metadata !{i32 70, i32 0, metadata !4, null}
!180 = metadata !{i32 74, i32 0, metadata !165, null}
!181 = metadata !{metadata !"float", metadata !152}
!182 = metadata !{i32 78, i32 0, metadata !169, null}
!183 = metadata !{i32 78, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !169, i32 78, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!185 = metadata !{i32 88, i32 0, metadata !169, null}
!186 = metadata !{i32 89, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !169, i32 88, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!188 = metadata !{i32 90, i32 0, metadata !187, null}
!189 = metadata !{i32 91, i32 0, metadata !187, null}
!190 = metadata !{i32 98, i32 0, metadata !169, null}
!191 = metadata !{i32 101, i32 0, metadata !177, null}
!192 = metadata !{i32 102, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !177, i32 101, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!194 = metadata !{i8 1}
!195 = metadata !{i32 -1}
!196 = metadata !{i32 122, i32 0, metadata !165, null}
!197 = metadata !{i32 104, i32 0, metadata !193, null}
!198 = metadata !{i8 2}
!199 = metadata !{i32 106, i32 0, metadata !193, null}
!200 = metadata !{i32 107, i32 0, metadata !193, null}
!201 = metadata !{i32 117, i32 0, metadata !169, null}
!202 = metadata !{i32 118, i32 0, metadata !169, null}
!203 = metadata !{i32 125, i32 0, metadata !165, null}
!204 = metadata !{i32 132, i32 0, metadata !165, null}
!205 = metadata !{i32 141, i32 0, metadata !165, null}
!206 = metadata !{i32 133, i32 0, metadata !165, null}
!207 = metadata !{i32 134, i32 0, metadata !165, null}
!208 = metadata !{i32 135, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !165, i32 134, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!210 = metadata !{i32 136, i32 0, metadata !209, null}
!211 = metadata !{i32 137, i32 0, metadata !209, null}
!212 = metadata !{i32 142, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !165, i32 141, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!214 = metadata !{i32 144, i32 0, metadata !213, null}
!215 = metadata !{i32 143, i32 0, metadata !213, null}
!216 = metadata !{i32 147, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !213, i32 144, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!218 = metadata !{i32 146, i32 0, metadata !217, null}
!219 = metadata !{i32 153, i32 0, metadata !4, null}
!220 = metadata !{i32 158, i32 0, metadata !4, null}
!221 = metadata !{i32 159, i32 0, metadata !4, null}
!222 = metadata !{i32 160, i32 0, metadata !4, null}
!223 = metadata !{i32 164, i32 0, metadata !4, null}
!224 = metadata !{i32 165, i32 0, metadata !4, null}
!225 = metadata !{i32 166, i32 0, metadata !4, null}
!226 = metadata !{i32 167, i32 0, metadata !4, null}
!227 = metadata !{i32 296, i32 0, metadata !102, null}
!228 = metadata !{i32 298, i32 0, metadata !102, null}
!229 = metadata !{i32 300, i32 0, metadata !102, null}
!230 = metadata !{i32 308, i32 0, metadata !102, null}
!231 = metadata !{i32 311, i32 0, metadata !102, null}
!232 = metadata !{i32 316, i32 0, metadata !102, null}
!233 = metadata !{i32 317, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !102, i32 317, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!235 = metadata !{i32 319, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !234, i32 318, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!237 = metadata !{i32 320, i32 0, metadata !236, null}
!238 = metadata !{i32 321, i32 0, metadata !236, null}
!239 = metadata !{i32 326, i32 0, metadata !102, null}
!240 = metadata !{i32 327, i32 0, metadata !102, null}
!241 = metadata !{i32 328, i32 0, metadata !102, null}
!242 = metadata !{i32 333, i32 0, metadata !102, null}
!243 = metadata !{i32 334, i32 0, metadata !102, null}
!244 = metadata !{i32 335, i32 0, metadata !102, null}
!245 = metadata !{i32 336, i32 0, metadata !102, null}
!246 = metadata !{i32 3}
!247 = metadata !{i32 337, i32 0, metadata !102, null}
!248 = metadata !{i32 338, i32 0, metadata !102, null}
!249 = metadata !{i32 339, i32 0, metadata !129, null}
!250 = metadata !{i32 376, i32 0, metadata !102, null}
!251 = metadata !{i32 377, i32 0, metadata !102, null}
!252 = metadata !{i32 360, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !128, i32 359, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!254 = metadata !{i32 343, i32 0, metadata !127, null}
!255 = metadata !{i32 341, i32 0, metadata !128, null}
!256 = metadata !{i32 344, i32 0, metadata !127, null}
!257 = metadata !{i32 345, i32 0, metadata !127, null}
!258 = metadata !{i32 346, i32 0, metadata !127, null}
!259 = metadata !{i32 347, i32 0, metadata !127, null}
!260 = metadata !{i32 348, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !126, i32 348, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!262 = metadata !{i32 348, i32 0, metadata !126, null}
!263 = metadata !{i32 354, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !128, i32 353, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!265 = metadata !{i32 350, i32 0, metadata !127, null}
!266 = metadata !{i32 358, i32 0, metadata !128, null}
!267 = metadata !{i32 361, i32 0, metadata !253, null}
!268 = metadata !{i32 363, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !253, i32 362, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!270 = metadata !{i32 364, i32 0, metadata !269, null}
!271 = metadata !{i32 365, i32 0, metadata !269, null}
!272 = metadata !{i32 366, i32 0, metadata !269, null}
!273 = metadata !{i32 367, i32 0, metadata !269, null}
!274 = metadata !{i32 371, i32 0, metadata !102, null}
!275 = metadata !{i32 372, i32 0, metadata !102, null}
!276 = metadata !{i32 373, i32 0, metadata !102, null}
!277 = metadata !{i32 374, i32 0, metadata !102, null}
!278 = metadata !{i32 378, i32 0, metadata !102, null}
!279 = metadata !{i32 379, i32 0, metadata !102, null}
!280 = metadata !{i32 380, i32 0, metadata !102, null}
!281 = metadata !{i32 381, i32 0, metadata !102, null}
!282 = metadata !{i32 382, i32 0, metadata !102, null}
!283 = metadata !{i32 383, i32 0, metadata !102, null}
!284 = metadata !{i32 407, i32 0, metadata !130, null}
!285 = metadata !{i32 414, i32 0, metadata !130, null}
!286 = metadata !{i32 415, i32 0, metadata !130, null}
!287 = metadata !{i32 416, i32 0, metadata !130, null}
!288 = metadata !{i32 420, i32 0, metadata !130, null}
!289 = metadata !{i32 421, i32 0, metadata !130, null}
!290 = metadata !{i32 422, i32 0, metadata !130, null}
!291 = metadata !{i32 423, i32 0, metadata !292, null}
!292 = metadata !{i32 786443, metadata !1, metadata !130, i32 423, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!293 = metadata !{i32 426, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !292, i32 424, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!295 = metadata !{i32 431, i32 0, metadata !294, null}
!296 = metadata !{i32 434, i32 0, metadata !294, null}
!297 = metadata !{i32 435, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !1, metadata !294, i32 434, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/emit.c]
!299 = metadata !{i32 439, i32 0, metadata !294, null}
!300 = metadata !{i32 436, i32 0, metadata !298, null}
!301 = metadata !{i32 440, i32 0, metadata !294, null}
!302 = metadata !{i32 454, i32 0, metadata !130, null}
!303 = metadata !{i32 455, i32 0, metadata !130, null}
!304 = metadata !{i32 456, i32 0, metadata !130, null}
!305 = metadata !{i32 457, i32 0, metadata !130, null}
