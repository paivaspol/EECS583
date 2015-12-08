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
  call void @P7AllocTrace(i32 64, %struct.p7trace_s** %tr) #3
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 59, i64 64) #3
  %0 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  call void @TraceSet(%struct.p7trace_s* %0, i32 0, i8 signext 4, i32 0, i32 0) #3
  %1 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  call void @TraceSet(%struct.p7trace_s* %1, i32 1, i8 signext 5, i32 0, i32 0) #3
  %2 = load i32* @Alphabet_iupac, align 4, !tbaa !3
  %conv = trunc i32 %2 to i8
  store i8 %conv, i8* %call, align 1, !tbaa !1
  %arraydecay145 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 28, i64 0
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %t10 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  %arraydecay = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0
  %arraydecay31 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0
  %arraydecay40 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0
  %arraydecay49 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0
  %arraydecay77 = getelementptr inbounds [4 x float]* %t, i64 0, i64 0
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %arrayidx83 = getelementptr inbounds [4 x float]* %t, i64 0, i64 3
  br label %while.cond.outer

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
  %cmp = icmp eq i8 %type.0, 9
  br i1 %cmp, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %conv1 = sext i8 %type.0 to i32
  switch i32 %conv1, label %sw.default95 [
    i32 6, label %sw.bb
    i32 3, label %sw.bb9
    i32 5, label %sw.bb21
    i32 7, label %sw.bb28
    i32 8, label %sw.bb37
    i32 10, label %sw.bb46
    i32 2, label %sw.bb55
    i32 1, label %sw.bb72
  ]

sw.bb:                                            ; preds = %while.body
  %5 = load float* %tbd1, align 4, !tbaa !4
  %6 = load float** %begin, align 8, !tbaa !0
  store float %5, float* %6, align 4, !tbaa !4
  %7 = load i32* %M, align 4, !tbaa !3
  %add = add nsw i32 %7, 1
  %call6 = call i32 @FChoose(float* %6, i32 %add) #3
  %cmp7 = icmp eq i32 %call6, 0
  %. = select i1 %cmp7, i8 2, i8 1
  %.call6 = select i1 %cmp7, i32 1, i32 %call6
  br label %sw.epilog96

sw.bb9:                                           ; preds = %while.body
  %idxprom = sext i32 %k.0 to i64
  %8 = load float*** %t10, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds float** %8, i64 %idxprom
  %9 = load float** %arrayidx11, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds float* %9, i64 3
  %call12 = call i32 @FChoose(float* %add.ptr, i32 2) #3
  %cmp13 = icmp eq i32 %call12, 0
  %conv15 = select i1 %cmp13, i8 1, i8 3
  %inc = zext i1 %cmp13 to i32
  %inc.k.0 = add nsw i32 %inc, %k.0
  br label %sw.epilog96

sw.bb21:                                          ; preds = %while.body
  %call23 = call i32 @FChoose(float* %arraydecay, i32 2) #3
  %cmp24 = icmp eq i32 %call23, 1
  %conv27 = select i1 %cmp24, i8 5, i8 6
  br label %sw.epilog96

sw.bb28:                                          ; preds = %while.body
  %call32 = call i32 @FChoose(float* %arraydecay31, i32 2) #3
  %cmp33 = icmp eq i32 %call32, 1
  %conv36 = select i1 %cmp33, i8 10, i8 8
  br label %sw.epilog96

sw.bb37:                                          ; preds = %while.body
  %call41 = call i32 @FChoose(float* %arraydecay40, i32 2) #3
  %cmp42 = icmp eq i32 %call41, 1
  %conv45 = select i1 %cmp42, i8 8, i8 9
  br label %sw.epilog96

sw.bb46:                                          ; preds = %while.body
  %call50 = call i32 @FChoose(float* %arraydecay49, i32 2) #3
  %cmp51 = icmp eq i32 %call50, 1
  %conv54 = select i1 %cmp51, i8 10, i8 6
  br label %sw.epilog96

sw.bb55:                                          ; preds = %while.body
  %10 = load i32* %M, align 4, !tbaa !3
  %cmp57 = icmp slt i32 %k.0, %10
  br i1 %cmp57, label %if.then59, label %if.end149

if.then59:                                        ; preds = %sw.bb55
  %idxprom60 = sext i32 %k.0 to i64
  %11 = load float*** %t10, align 8, !tbaa !0
  %arrayidx62 = getelementptr inbounds float** %11, i64 %idxprom60
  %12 = load float** %arrayidx62, align 8, !tbaa !0
  %add.ptr63 = getelementptr inbounds float* %12, i64 5
  %call64 = call i32 @FChoose(float* %add.ptr63, i32 2) #3
  %cmp65 = icmp eq i32 %call64, 0
  %conv68 = select i1 %cmp65, i8 1, i8 2
  %inc69 = add nsw i32 %k.0, 1
  br label %sw.epilog96

sw.bb72:                                          ; preds = %while.body
  %13 = load i32* %M, align 4, !tbaa !3
  %cmp74 = icmp slt i32 %k.0, %13
  br i1 %cmp74, label %if.then76, label %if.end149

if.then76:                                        ; preds = %sw.bb72
  %idxprom78 = sext i32 %k.0 to i64
  %14 = load float*** %t10, align 8, !tbaa !0
  %arrayidx80 = getelementptr inbounds float** %14, i64 %idxprom78
  %15 = load float** %arrayidx80, align 8, !tbaa !0
  call void @FCopy(float* %arraydecay77, float* %15, i32 3) #3
  %16 = load float** %end, align 8, !tbaa !0
  %arrayidx82 = getelementptr inbounds float* %16, i64 %idxprom78
  %17 = load float* %arrayidx82, align 4, !tbaa !4
  store float %17, float* %arrayidx83, align 4, !tbaa !4
  %call85 = call i32 @FChoose(float* %arraydecay77, i32 4) #3
  switch i32 %call85, label %sw.default [
    i32 0, label %sw.epilog96.thread262
    i32 1, label %if.then108
    i32 2, label %sw.bb89
    i32 3, label %if.end149
  ]

sw.epilog96.thread262:                            ; preds = %if.then76
  %inc87 = add nsw i32 %k.0, 1
  br label %if.then100

sw.bb89:                                          ; preds = %if.then76
  %inc90 = add nsw i32 %k.0, 1
  br label %if.end149

sw.default:                                       ; preds = %if.then76
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str1, i64 0, i64 0)) #3
  br label %sw.epilog96

sw.default95:                                     ; preds = %while.body
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0)) #3
  br label %sw.epilog96

sw.epilog96:                                      ; preds = %sw.bb9, %sw.bb, %sw.default, %if.then59, %sw.default95, %sw.bb46, %sw.bb37, %sw.bb28, %sw.bb21
  %type.1 = phi i8 [ %type.0, %sw.default95 ], [ %type.0, %sw.default ], [ %conv68, %if.then59 ], [ %conv54, %sw.bb46 ], [ %conv45, %sw.bb37 ], [ %conv36, %sw.bb28 ], [ %conv27, %sw.bb21 ], [ %., %sw.bb ], [ %conv15, %sw.bb9 ]
  %k.1 = phi i32 [ %k.0, %sw.default95 ], [ %k.0, %sw.default ], [ %inc69, %if.then59 ], [ 0, %sw.bb46 ], [ 0, %sw.bb37 ], [ 0, %sw.bb28 ], [ 0, %sw.bb21 ], [ %.call6, %sw.bb ], [ %inc.k.0, %sw.bb9 ]
  switch i8 %type.1, label %if.end149 [
    i8 1, label %if.then100
    i8 3, label %if.then108
    i8 5, label %land.lhs.true
    i8 8, label %land.lhs.true124
    i8 10, label %land.lhs.true136
  ]

if.then100:                                       ; preds = %sw.epilog96.thread262, %sw.epilog96
  %k.1264 = phi i32 [ %inc87, %sw.epilog96.thread262 ], [ %k.1, %sw.epilog96 ]
  %idxprom101 = sext i32 %k.1264 to i64
  %18 = load float*** %mat, align 8, !tbaa !0
  %arrayidx102 = getelementptr inbounds float** %18, i64 %idxprom101
  %19 = load float** %arrayidx102, align 8, !tbaa !0
  %20 = load i32* @Alphabet_size, align 4, !tbaa !3
  %call103 = call i32 @FChoose(float* %19, i32 %20) #3
  br label %if.end149

if.then108:                                       ; preds = %if.then76, %sw.epilog96
  %k.1267 = phi i32 [ %k.1, %sw.epilog96 ], [ %k.0, %if.then76 ]
  %idxprom109 = sext i32 %k.1267 to i64
  %21 = load float*** %ins, align 8, !tbaa !0
  %arrayidx110 = getelementptr inbounds float** %21, i64 %idxprom109
  %22 = load float** %arrayidx110, align 8, !tbaa !0
  %23 = load i32* @Alphabet_size, align 4, !tbaa !3
  %call111 = call i32 @FChoose(float* %22, i32 %23) #3
  br label %if.end149

land.lhs.true:                                    ; preds = %sw.epilog96
  %24 = add nsw i64 %indvars.iv, -1
  %25 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype = getelementptr inbounds %struct.p7trace_s* %25, i64 0, i32 1
  %26 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx117 = getelementptr inbounds i8* %26, i64 %24
  %27 = load i8* %arrayidx117, align 1, !tbaa !1
  %cmp119 = icmp eq i8 %27, 5
  br i1 %cmp119, label %if.then144, label %if.end149

land.lhs.true124:                                 ; preds = %sw.epilog96
  %28 = add nsw i64 %indvars.iv, -1
  %29 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype127 = getelementptr inbounds %struct.p7trace_s* %29, i64 0, i32 1
  %30 = load i8** %statetype127, align 8, !tbaa !0
  %arrayidx128 = getelementptr inbounds i8* %30, i64 %28
  %31 = load i8* %arrayidx128, align 1, !tbaa !1
  %cmp130 = icmp eq i8 %31, 8
  br i1 %cmp130, label %if.then144, label %if.end149

land.lhs.true136:                                 ; preds = %sw.epilog96
  %32 = add nsw i64 %indvars.iv, -1
  %33 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype139 = getelementptr inbounds %struct.p7trace_s* %33, i64 0, i32 1
  %34 = load i8** %statetype139, align 8, !tbaa !0
  %arrayidx140 = getelementptr inbounds i8* %34, i64 %32
  %35 = load i8* %arrayidx140, align 1, !tbaa !1
  %cmp142 = icmp eq i8 %35, 10
  br i1 %cmp142, label %if.then144, label %if.end149

if.then144:                                       ; preds = %land.lhs.true136, %land.lhs.true124, %land.lhs.true
  %36 = load i32* @Alphabet_size, align 4, !tbaa !3
  %call146 = call i32 @FChoose(float* %arraydecay145, i32 %36) #3
  br label %if.end149

if.end149:                                        ; preds = %sw.epilog96, %if.then76, %sw.bb72, %sw.bb55, %land.lhs.true124, %land.lhs.true, %sw.bb89, %if.then108, %if.then144, %land.lhs.true136, %if.then100
  %k.1261 = phi i32 [ %k.1264, %if.then100 ], [ %k.1267, %if.then108 ], [ %k.1, %if.then144 ], [ %k.1, %land.lhs.true136 ], [ %inc90, %sw.bb89 ], [ %k.1, %land.lhs.true ], [ %k.1, %land.lhs.true124 ], [ 0, %sw.bb55 ], [ 0, %sw.bb72 ], [ 0, %if.then76 ], [ %k.1, %sw.epilog96 ]
  %type.1260 = phi i8 [ 1, %if.then100 ], [ 3, %if.then108 ], [ %type.1, %if.then144 ], [ 10, %land.lhs.true136 ], [ 2, %sw.bb89 ], [ 5, %land.lhs.true ], [ 8, %land.lhs.true124 ], [ 7, %sw.bb55 ], [ 7, %sw.bb72 ], [ 7, %if.then76 ], [ %type.1, %sw.epilog96 ]
  %sym.0 = phi i32 [ %call103, %if.then100 ], [ %call111, %if.then108 ], [ %call146, %if.then144 ], [ -1, %land.lhs.true136 ], [ -1, %sw.bb89 ], [ -1, %land.lhs.true ], [ -1, %land.lhs.true124 ], [ -1, %sw.bb55 ], [ -1, %sw.bb72 ], [ -1, %if.then76 ], [ -1, %sw.epilog96 ]
  %37 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %cmp150 = icmp ne i32 %sym.0, -1
  %38 = trunc i64 %indvars.iv282 to i32
  %cond152 = select i1 %cmp150, i32 %38, i32 0
  %39 = trunc i64 %indvars.iv to i32
  call void @TraceSet(%struct.p7trace_s* %37, i32 %39, i8 signext %type.1260, i32 %k.1261, i32 %cond152) #3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc153 = add nsw i32 %tpos.0, 1
  %40 = trunc i64 %indvars.iv.next to i32
  %cmp154 = icmp eq i32 %40, %alloc_tlen.0
  br i1 %cmp154, label %if.then156, label %if.end158

if.then156:                                       ; preds = %if.end149
  %add157 = add nsw i32 %alloc_tlen.0, 64
  %41 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  call void @P7ReallocTrace(%struct.p7trace_s* %41, i32 %add157) #3
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %if.end149
  %alloc_tlen.1 = phi i32 [ %add157, %if.then156 ], [ %alloc_tlen.0, %if.end149 ]
  br i1 %cmp150, label %if.then161, label %while.cond

if.then161:                                       ; preds = %if.end158
  %conv162 = trunc i32 %sym.0 to i8
  %arrayidx164 = getelementptr inbounds i8* %dsq.0.ph, i64 %indvars.iv282
  store i8 %conv162, i8* %arrayidx164, align 1, !tbaa !1
  %indvars.iv.next283 = add i64 %indvars.iv282, 1
  %inc165 = add nsw i32 %L.0.ph271, 1
  %42 = add nsw i64 %indvars.iv282, 2
  %43 = trunc i64 %42 to i32
  %44 = trunc i64 %indvars.iv285 to i32
  %cmp167 = icmp eq i32 %43, %44
  br i1 %cmp167, label %if.then169, label %while.cond.outer268

if.then169:                                       ; preds = %if.then161
  %indvars.iv.next286 = add i64 %indvars.iv285, 64
  %call172 = call i8* @sre_realloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 146, i8* %dsq.0.ph, i64 %indvars.iv.next286) #3
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  %45 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %tlen = getelementptr inbounds %struct.p7trace_s* %45, i64 0, i32 0
  store i32 %tpos.0, i32* %tlen, align 4, !tbaa !3
  %46 = load i32* @Alphabet_iupac, align 4, !tbaa !3
  %conv175 = trunc i32 %46 to i8
  %idxprom176 = sext i32 %L.0.ph271 to i64
  %arrayidx177 = getelementptr inbounds i8* %dsq.0.ph, i64 %idxprom176
  store i8 %conv175, i8* %arrayidx177, align 1, !tbaa !1
  %add178 = add nsw i32 %L.0.ph271, 1
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds i8* %dsq.0.ph, i64 %idxprom179
  store i8 0, i8* %arrayidx180, align 1, !tbaa !1
  %dec = add nsw i32 %L.0.ph271, -1
  %cmp181 = icmp eq i8** %ret_dsq, null
  br i1 %cmp181, label %if.else184, label %if.then183

if.then183:                                       ; preds = %while.end
  store i8* %dsq.0.ph, i8** %ret_dsq, align 8, !tbaa !0
  br label %if.end185

if.else184:                                       ; preds = %while.end
  call void @free(i8* %dsq.0.ph) #3
  br label %if.end185

if.end185:                                        ; preds = %if.else184, %if.then183
  %cmp186 = icmp eq i32* %ret_L, null
  br i1 %cmp186, label %if.end189, label %if.then188

if.then188:                                       ; preds = %if.end185
  store i32 %dec, i32* %ret_L, align 4, !tbaa !3
  br label %if.end189

if.end189:                                        ; preds = %if.end185, %if.then188
  %cmp190 = icmp eq %struct.p7trace_s** %ret_tr, null
  %47 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  br i1 %cmp190, label %if.else193, label %if.then192

if.then192:                                       ; preds = %if.end189
  store %struct.p7trace_s* %47, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  br label %if.end194

if.else193:                                       ; preds = %if.end189
  call void @P7FreeTrace(%struct.p7trace_s* %47) #3
  br label %if.end194

if.end194:                                        ; preds = %if.else193, %if.then192
  ret void
}

; Function Attrs: optsize
declare void @P7AllocTrace(i32, %struct.p7trace_s**) #1

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: optsize
declare void @TraceSet(%struct.p7trace_s*, i32, i8 signext, i32, i32) #1

; Function Attrs: optsize
declare i32 @FChoose(float*, i32) #1

; Function Attrs: optsize
declare void @FCopy(float*, float*, i32) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: optsize
declare void @P7ReallocTrace(%struct.p7trace_s*, i32) #1

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare void @P7FreeTrace(%struct.p7trace_s*) #1

; Function Attrs: nounwind optsize uwtable
define void @EmitConsensusSequence(%struct.plan7_s* nocapture %hmm, i8** %ret_seq, i8** %ret_dsq, i32* %ret_L, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  %mp = alloca float*, align 8
  %ip = alloca float*, align 8
  %dp = alloca float*, align 8
  %0 = load i32* @Alphabet_type, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 3
  %. = select i1 %cmp, float 5.000000e-01, float 0x3FECCCCCC0000000
  call void @StateOccupancy(%struct.plan7_s* %hmm, float** %mp, float** %ip, float** %dp) #4
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %1 = load i32* %M, align 4, !tbaa !3
  %cmp1216 = icmp slt i32 %1, 1
  br i1 %cmp1216, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %2 = load float** %mp, align 8, !tbaa !0
  %3 = load float** %ip, align 8, !tbaa !0
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.thread, %for.body.lr.ph
  %indvars.iv227 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next228232, %for.inc.thread ]
  %nmat.0220 = phi i32 [ 0, %for.body.lr.ph ], [ %nmat.1, %for.inc.thread ]
  %nins.0218 = phi i32 [ 0, %for.body.lr.ph ], [ %nins.1.ph, %for.inc.thread ]
  %ndel.0217 = phi i32 [ 0, %for.body.lr.ph ], [ %ndel.1, %for.inc.thread ]
  %arrayidx = getelementptr inbounds float* %2, i64 %indvars.iv227
  %4 = load float* %arrayidx, align 4, !tbaa !4
  %cmp2 = fcmp ult float %4, 5.000000e-01
  %inc6 = zext i1 %cmp2 to i32
  %ndel.1 = add nsw i32 %inc6, %ndel.0217
  %inc = xor i32 %inc6, 1
  %nmat.1 = add nsw i32 %inc, %nmat.0220
  %5 = trunc i64 %indvars.iv227 to i32
  %cmp9 = icmp slt i32 %5, %1
  br i1 %cmp9, label %land.lhs.true, label %for.cond.for.end_crit_edge

land.lhs.true:                                    ; preds = %for.body
  %arrayidx12 = getelementptr inbounds float* %3, i64 %indvars.iv227
  %6 = load float* %arrayidx12, align 4, !tbaa !4
  %cmp14 = fcmp ult float %6, 5.000000e-01
  br i1 %cmp14, label %for.inc.thread, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  %7 = load float*** %t, align 8, !tbaa !0
  %arrayidx18 = getelementptr inbounds float** %7, i64 %indvars.iv227
  %8 = load float** %arrayidx18, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds float* %8, i64 4
  %9 = load float* %arrayidx19, align 4, !tbaa !4
  %sub = fsub float 1.000000e+00, %9
  %div = fdiv float 1.000000e+00, %sub
  %conv20 = fptosi float %div to i32
  %add = add nsw i32 %conv20, %nins.0218
  br label %for.inc.thread

for.inc.thread:                                   ; preds = %land.lhs.true, %if.then16
  %nins.1.ph = phi i32 [ %nins.0218, %land.lhs.true ], [ %add, %if.then16 ]
  %indvars.iv.next228232 = add i64 %indvars.iv227, 1
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = add i32 %ndel.1, 6
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %nmat.0.lcssa = phi i32 [ %nmat.1, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %nins.0.lcssa = phi i32 [ %nins.0218, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %ndel.0.lcssa = phi i32 [ %phitmp, %for.cond.for.end_crit_edge ], [ 6, %entry ]
  %add24 = add i32 %ndel.0.lcssa, %nins.0.lcssa
  %add25 = add i32 %add24, %nmat.0.lcssa
  call void @P7AllocTrace(i32 %add25, %struct.p7trace_s** %tr) #3
  %add26 = add nsw i32 %nmat.0.lcssa, %nins.0.lcssa
  %add27 = add nsw i32 %add26, 3
  %conv28 = sext i32 %add27 to i64
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 327, i64 %conv28) #3
  %add30 = add nsw i32 %add26, 1
  %conv31 = sext i32 %add30 to i64
  %call33 = call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 328, i64 %conv31) #3
  %10 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  call void @TraceSet(%struct.p7trace_s* %10, i32 0, i8 signext 4, i32 0, i32 0) #3
  %11 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  call void @TraceSet(%struct.p7trace_s* %11, i32 1, i8 signext 5, i32 0, i32 0) #3
  %12 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  call void @TraceSet(%struct.p7trace_s* %12, i32 2, i8 signext 6, i32 0, i32 0) #3
  %13 = load i32* @Alphabet_iupac, align 4, !tbaa !3
  %conv34 = trunc i32 %13 to i8
  store i8 %conv34, i8* %call, align 1, !tbaa !1
  %14 = load i32* %M, align 4, !tbaa !3
  %cmp38210 = icmp slt i32 %14, 1
  %.pre229 = load float** %mp, align 8, !tbaa !0
  %.pre230 = load float** %ip, align 8, !tbaa !0
  br i1 %cmp38210, label %for.end110, label %for.body40.lr.ph

for.body40.lr.ph:                                 ; preds = %for.end
  %t91 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  br label %for.body40

for.body40:                                       ; preds = %for.inc108, %for.body40.lr.ph
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %for.inc108 ], [ 1, %for.body40.lr.ph ]
  %i.0213 = phi i32 [ %i.3, %for.inc108 ], [ 0, %for.body40.lr.ph ]
  %tpos.0212 = phi i32 [ %tpos.3, %for.inc108 ], [ 3, %for.body40.lr.ph ]
  %arrayidx42 = getelementptr inbounds float* %.pre229, i64 %indvars.iv225
  %15 = load float* %arrayidx42, align 4, !tbaa !4
  %cmp44 = fcmp ult float %15, 5.000000e-01
  br i1 %cmp44, label %if.else77, label %if.then46

if.then46:                                        ; preds = %for.body40
  %16 = load float*** %mat, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds float** %16, i64 %indvars.iv225
  %17 = load float** %arrayidx48, align 8, !tbaa !0
  %18 = load i32* @Alphabet_size, align 4, !tbaa !3
  %call49 = call i32 @FArgMax(float* %17, i32 %18) #3
  %19 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %add50 = add nsw i32 %i.0213, 1
  %20 = trunc i64 %indvars.iv225 to i32
  call void @TraceSet(%struct.p7trace_s* %19, i32 %tpos.0212, i8 signext 1, i32 %20, i32 %add50) #3
  %idxprom51 = sext i32 %call49 to i64
  %arrayidx52 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom51
  %21 = load i8* %arrayidx52, align 1, !tbaa !1
  %idxprom53 = sext i32 %i.0213 to i64
  %arrayidx54 = getelementptr inbounds i8* %call33, i64 %idxprom53
  store i8 %21, i8* %arrayidx54, align 1, !tbaa !1
  %conv55 = trunc i32 %call49 to i8
  %idxprom57 = sext i32 %add50 to i64
  %arrayidx58 = getelementptr inbounds i8* %call, i64 %idxprom57
  store i8 %conv55, i8* %arrayidx58, align 1, !tbaa !1
  %22 = load float*** %mat, align 8, !tbaa !0
  %arrayidx62 = getelementptr inbounds float** %22, i64 %indvars.iv225
  %23 = load float** %arrayidx62, align 8, !tbaa !0
  %arrayidx63 = getelementptr inbounds float* %23, i64 %idxprom51
  %24 = load float* %arrayidx63, align 4, !tbaa !4
  %cmp64 = fcmp olt float %24, %.
  br i1 %cmp64, label %if.then66, label %if.end79

if.then66:                                        ; preds = %if.then46
  %25 = load i8* %arrayidx54, align 1, !tbaa !1
  %conv69 = sext i8 %25 to i32
  %call70 = call i32 @tolower(i32 %conv69) #3
  %conv71 = trunc i32 %call70 to i8
  store i8 %conv71, i8* %arrayidx54, align 1, !tbaa !1
  br label %if.end79

if.else77:                                        ; preds = %for.body40
  %26 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %27 = trunc i64 %indvars.iv225 to i32
  call void @TraceSet(%struct.p7trace_s* %26, i32 %tpos.0212, i8 signext 2, i32 %27, i32 0) #3
  br label %if.end79

if.end79:                                         ; preds = %if.then46, %if.then66, %if.else77
  %i.1 = phi i32 [ %i.0213, %if.else77 ], [ %add50, %if.then66 ], [ %add50, %if.then46 ]
  %tpos.1 = add i32 %tpos.0212, 1
  %28 = load i32* %M, align 4, !tbaa !3
  %29 = trunc i64 %indvars.iv225 to i32
  %cmp81 = icmp slt i32 %29, %28
  br i1 %cmp81, label %land.lhs.true83, label %for.inc108

land.lhs.true83:                                  ; preds = %if.end79
  %arrayidx85 = getelementptr inbounds float* %.pre230, i64 %indvars.iv225
  %30 = load float* %arrayidx85, align 4, !tbaa !4
  %cmp87 = fcmp ult float %30, 5.000000e-01
  br i1 %cmp87, label %for.inc108, label %if.then89

if.then89:                                        ; preds = %land.lhs.true83
  %31 = load float*** %t91, align 8, !tbaa !0
  %arrayidx92 = getelementptr inbounds float** %31, i64 %indvars.iv225
  %32 = load float** %arrayidx92, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds float* %32, i64 4
  %33 = load float* %arrayidx93, align 4, !tbaa !4
  %sub94 = fsub float 1.000000e+00, %33
  %div95 = fdiv float 1.000000e+00, %sub94
  %conv96 = fptosi float %div95 to i32
  %tobool205 = icmp eq i32 %conv96, 0
  br i1 %tobool205, label %for.inc108, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then89
  %34 = sext i32 %i.1 to i64
  %35 = add i32 %tpos.1, %conv96
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ %34, %while.body.lr.ph ], [ %indvars.iv.next, %while.body ]
  %x.0208 = phi i32 [ %conv96, %while.body.lr.ph ], [ %dec, %while.body ]
  %tpos.2206 = phi i32 [ %tpos.1, %while.body.lr.ph ], [ %inc106, %while.body ]
  %dec = add nsw i32 %x.0208, -1
  %36 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %37 = trunc i64 %indvars.iv.next to i32
  call void @TraceSet(%struct.p7trace_s* %36, i32 %tpos.2206, i8 signext 3, i32 %29, i32 %37) #3
  %arrayidx99 = getelementptr inbounds i8* %call33, i64 %indvars.iv
  store i8 120, i8* %arrayidx99, align 1, !tbaa !1
  %38 = load i32* @Alphabet_iupac, align 4, !tbaa !3
  %sub100 = add nsw i32 %38, 255
  %conv101 = trunc i32 %sub100 to i8
  %arrayidx104 = getelementptr inbounds i8* %call, i64 %indvars.iv.next
  store i8 %conv101, i8* %arrayidx104, align 1, !tbaa !1
  %inc106 = add nsw i32 %tpos.2206, 1
  %tobool = icmp eq i32 %dec, 0
  br i1 %tobool, label %while.cond.for.inc108.loopexit_crit_edge, label %while.body

while.cond.for.inc108.loopexit_crit_edge:         ; preds = %while.body
  %39 = add i32 %i.1, %conv96
  %.pre.pre = load i32* %M, align 4, !tbaa !3
  br label %for.inc108

for.inc108:                                       ; preds = %if.then89, %while.cond.for.inc108.loopexit_crit_edge, %land.lhs.true83, %if.end79
  %40 = phi i32 [ %28, %land.lhs.true83 ], [ %28, %if.end79 ], [ %.pre.pre, %while.cond.for.inc108.loopexit_crit_edge ], [ %28, %if.then89 ]
  %tpos.3 = phi i32 [ %tpos.1, %land.lhs.true83 ], [ %tpos.1, %if.end79 ], [ %35, %while.cond.for.inc108.loopexit_crit_edge ], [ %tpos.1, %if.then89 ]
  %i.3 = phi i32 [ %i.1, %land.lhs.true83 ], [ %i.1, %if.end79 ], [ %39, %while.cond.for.inc108.loopexit_crit_edge ], [ %i.1, %if.then89 ]
  %indvars.iv.next226 = add i64 %indvars.iv225, 1
  %cmp38 = icmp slt i32 %29, %40
  br i1 %cmp38, label %for.body40, label %for.end110

for.end110:                                       ; preds = %for.end, %for.inc108
  %i.0.lcssa = phi i32 [ %i.3, %for.inc108 ], [ 0, %for.end ]
  %tpos.0.lcssa = phi i32 [ %tpos.3, %for.inc108 ], [ 3, %for.end ]
  %41 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  call void @TraceSet(%struct.p7trace_s* %41, i32 %tpos.0.lcssa, i8 signext 7, i32 0, i32 0) #3
  %inc111 = add nsw i32 %tpos.0.lcssa, 1
  %42 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  call void @TraceSet(%struct.p7trace_s* %42, i32 %inc111, i8 signext 8, i32 0, i32 0) #3
  %inc112 = add nsw i32 %tpos.0.lcssa, 2
  %43 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  call void @TraceSet(%struct.p7trace_s* %43, i32 %inc112, i8 signext 9, i32 0, i32 0) #3
  %44 = load i32* @Alphabet_iupac, align 4, !tbaa !3
  %conv114 = trunc i32 %44 to i8
  %add115 = add nsw i32 %i.0.lcssa, 1
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds i8* %call, i64 %idxprom116
  store i8 %conv114, i8* %arrayidx117, align 1, !tbaa !1
  %45 = bitcast float* %.pre229 to i8*
  call void @free(i8* %45) #3
  %46 = bitcast float* %.pre230 to i8*
  call void @free(i8* %46) #3
  %47 = load float** %dp, align 8, !tbaa !0
  %48 = bitcast float* %47 to i8*
  call void @free(i8* %48) #3
  %cmp118 = icmp eq i8** %ret_seq, null
  br i1 %cmp118, label %if.else121, label %if.then120

if.then120:                                       ; preds = %for.end110
  store i8* %call33, i8** %ret_seq, align 8, !tbaa !0
  br label %if.end122

if.else121:                                       ; preds = %for.end110
  call void @free(i8* %call33) #3
  br label %if.end122

if.end122:                                        ; preds = %if.else121, %if.then120
  %cmp123 = icmp eq i8** %ret_dsq, null
  br i1 %cmp123, label %if.else126, label %if.then125

if.then125:                                       ; preds = %if.end122
  store i8* %call, i8** %ret_dsq, align 8, !tbaa !0
  br label %if.end127

if.else126:                                       ; preds = %if.end122
  call void @free(i8* %call) #3
  br label %if.end127

if.end127:                                        ; preds = %if.else126, %if.then125
  %cmp128 = icmp eq i32* %ret_L, null
  br i1 %cmp128, label %if.end131, label %if.then130

if.then130:                                       ; preds = %if.end127
  store i32 %i.0.lcssa, i32* %ret_L, align 4, !tbaa !3
  br label %if.end131

if.end131:                                        ; preds = %if.end127, %if.then130
  %cmp132 = icmp eq %struct.p7trace_s** %ret_tr, null
  %49 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  br i1 %cmp132, label %if.else135, label %if.then134

if.then134:                                       ; preds = %if.end131
  store %struct.p7trace_s* %49, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  br label %if.end136

if.else135:                                       ; preds = %if.end131
  call void @P7FreeTrace(%struct.p7trace_s* %49) #3
  br label %if.end136

if.end136:                                        ; preds = %if.else135, %if.then134
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @StateOccupancy(%struct.plan7_s* nocapture %hmm, float** nocapture %ret_mp, float** nocapture %ret_ip, float** nocapture %ret_dp) #0 {
entry:
  %M = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 20
  %0 = load i32* %M, align 4, !tbaa !3
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 414, i64 %mul) #3
  %1 = bitcast i8* %call to float*
  %2 = load i32* %M, align 4, !tbaa !3
  %conv2 = sext i32 %2 to i64
  %mul3 = shl nsw i64 %conv2, 2
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 415, i64 %mul3) #3
  %3 = bitcast i8* %call4 to float*
  %4 = load i32* %M, align 4, !tbaa !3
  %add6 = add nsw i32 %4, 1
  %conv7 = sext i32 %add6 to i64
  %mul8 = shl nsw i64 %conv7, 2
  %call9 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), i32 416, i64 %mul8) #3
  %5 = bitcast i8* %call9 to float*
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  %6 = load float* %tbd1, align 4, !tbaa !4
  %arrayidx = getelementptr inbounds i8* %call9, i64 4
  %7 = bitcast i8* %arrayidx to float*
  store float %6, float* %7, align 4, !tbaa !4
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %8 = load float** %begin, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds float* %8, i64 1
  %9 = load float* %arrayidx10, align 4, !tbaa !4
  %arrayidx11 = getelementptr inbounds i8* %call, i64 4
  %10 = bitcast i8* %arrayidx11 to float*
  store float %9, float* %10, align 4, !tbaa !4
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  %11 = load float*** %t, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds float** %11, i64 1
  %12 = load float** %arrayidx13, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds float* %12, i64 1
  %13 = load float* %arrayidx14, align 4, !tbaa !4
  %mul15 = fmul float %9, %13
  %arrayidx16 = getelementptr inbounds i8* %call4, i64 4
  %14 = bitcast i8* %arrayidx16 to float*
  store float %mul15, float* %14, align 4, !tbaa !4
  %15 = load i32* %M, align 4, !tbaa !3
  %cmp149 = icmp slt i32 %15, 2
  br i1 %cmp149, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx32.phi.trans.insert = getelementptr inbounds i8* %call9, i64 4
  %16 = bitcast i8* %arrayidx32.phi.trans.insert to float*
  %.pre = load float* %16, align 4, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %17 = phi float* [ %.pre153, %if.end.for.body_crit_edge ], [ %12, %for.body.lr.ph ]
  %18 = phi float [ %div93, %if.end.for.body_crit_edge ], [ %.pre, %for.body.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end.for.body_crit_edge ], [ 2, %for.body.lr.ph ]
  %19 = add nsw i64 %indvars.iv, -1
  %arrayidx19 = getelementptr inbounds float* %1, i64 %19
  %20 = load float* %arrayidx19, align 4, !tbaa !4
  %21 = load float* %17, align 4, !tbaa !4
  %mul25 = fmul float %20, %21
  %arrayidx28 = getelementptr inbounds float* %3, i64 %19
  %22 = load float* %arrayidx28, align 4, !tbaa !4
  %add29 = fadd float %mul25, %22
  %arrayidx32 = getelementptr inbounds float* %5, i64 %19
  %arrayidx37 = getelementptr inbounds float* %17, i64 5
  %23 = load float* %arrayidx37, align 4, !tbaa !4
  %mul38 = fmul float %18, %23
  %add39 = fadd float %add29, %mul38
  %arrayidx42 = getelementptr inbounds float* %8, i64 %indvars.iv
  %24 = load float* %arrayidx42, align 4, !tbaa !4
  %add43 = fadd float %add39, %24
  %arrayidx45 = getelementptr inbounds float* %1, i64 %indvars.iv
  store float %add43, float* %arrayidx45, align 4, !tbaa !4
  %arrayidx53 = getelementptr inbounds float* %17, i64 2
  %25 = load float* %arrayidx53, align 4, !tbaa !4
  %mul54 = fmul float %20, %25
  %26 = load float* %arrayidx32, align 4, !tbaa !4
  %arrayidx62 = getelementptr inbounds float* %17, i64 6
  %27 = load float* %arrayidx62, align 4, !tbaa !4
  %mul63 = fmul float %26, %27
  %add64 = fadd float %mul54, %mul63
  %arrayidx66 = getelementptr inbounds float* %5, i64 %indvars.iv
  store float %add64, float* %arrayidx66, align 4, !tbaa !4
  %28 = trunc i64 %indvars.iv to i32
  %cmp68 = icmp slt i32 %28, %15
  br i1 %cmp68, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %29 = load float* %arrayidx45, align 4, !tbaa !4
  %arrayidx74 = getelementptr inbounds float** %11, i64 %indvars.iv
  %30 = load float** %arrayidx74, align 8, !tbaa !0
  %arrayidx75 = getelementptr inbounds float* %30, i64 1
  %31 = load float* %arrayidx75, align 4, !tbaa !4
  %mul76 = fmul float %29, %31
  %arrayidx78 = getelementptr inbounds float* %3, i64 %indvars.iv
  store float %mul76, float* %arrayidx78, align 4, !tbaa !4
  %.pre152 = load float* %arrayidx66, align 4, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %32 = phi float [ %.pre152, %if.then ], [ %add64, %for.body ]
  %33 = load float* %arrayidx45, align 4, !tbaa !4
  %add83 = fadd float %33, %32
  %div = fdiv float %33, %add83
  store float %div, float* %arrayidx45, align 4, !tbaa !4
  %34 = load float* %arrayidx66, align 4, !tbaa !4
  %add90 = fadd float %div, %34
  %div93 = fdiv float %34, %add90
  store float %div93, float* %arrayidx66, align 4, !tbaa !4
  br i1 %cmp68, label %if.end.for.body_crit_edge, label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx23.phi.trans.insert = getelementptr inbounds float** %11, i64 %indvars.iv
  %.pre153 = load float** %arrayidx23.phi.trans.insert, align 8, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %if.end, %entry
  store float* %1, float** %ret_mp, align 8, !tbaa !0
  store float* %5, float** %ret_dp, align 8, !tbaa !0
  store float* %3, float** %ret_ip, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32 @FArgMax(float*, i32) #1

; Function Attrs: nounwind optsize
declare i32 @tolower(i32) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
