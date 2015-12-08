; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.fancyali_s = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c\00", align 1
@.str1 = private unnamed_addr constant [45 x i8] c"illegal state transition %s->%s in traceback\00", align 1
@.str2 = private unnamed_addr constant [30 x i8] c"illegal state %s in traceback\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"yo! you don't support J in Traces2Alignment(), remember?\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"Traces2Alignment reports unrecognized statetype %c\00", align 1
@Alphabet = external global [25 x i8]
@.str5 = private unnamed_addr constant [9 x i8] c"HMMER %s\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"2.3\00", align 1
@.str7 = private unnamed_addr constant [26 x i8] c"illegal %s->%s transition\00", align 1
@Alphabet_type = external global i32
@Alphabet_size = external global i32
@.str8 = private unnamed_addr constant [16 x i8] c"bogus statetype\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"  %16s %s\0A\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"CS\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"RF\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str13 = private unnamed_addr constant [24 x i8] c"  %10.10s %5d %s %-5d\0A\0A\00", align 1
@.str14 = private unnamed_addr constant [24 x i8] c"  %10.10s %5s %s %-5s\0A\0A\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str16 = private unnamed_addr constant [56 x i8] c"sanity check failed: didn't find a match state in trace\00", align 1
@.str17 = private unnamed_addr constant [25 x i8] c"never happens. Trust me.\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @P7AllocTrace(i32 %tlen, %struct.p7trace_s** nocapture %ret_tr) #0 {
entry:
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 40, i64 32) #6
  %0 = bitcast i8* %call to %struct.p7trace_s*
  %conv = sext i32 %tlen to i64
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 41, i64 %conv) #6
  %statetype = getelementptr inbounds i8* %call, i64 8
  %1 = bitcast i8* %statetype to i8**
  store i8* %call1, i8** %1, align 8, !tbaa !0
  %mul3 = shl nsw i64 %conv, 2
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 42, i64 %mul3) #6
  %2 = bitcast i8* %call4 to i32*
  %nodeidx = getelementptr inbounds i8* %call, i64 16
  %3 = bitcast i8* %nodeidx to i32**
  store i32* %2, i32** %3, align 8, !tbaa !0
  %call7 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 43, i64 %mul3) #6
  %4 = bitcast i8* %call7 to i32*
  %pos = getelementptr inbounds i8* %call, i64 24
  %5 = bitcast i8* %pos to i32**
  store i32* %4, i32** %5, align 8, !tbaa !0
  store %struct.p7trace_s* %0, %struct.p7trace_s** %ret_tr, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @P7ReallocTrace(%struct.p7trace_s* nocapture %tr, i32 %tlen) #0 {
entry:
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %0 = load i8** %statetype, align 8, !tbaa !0
  %conv = sext i32 %tlen to i64
  %call = tail call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 49, i8* %0, i64 %conv) #6
  store i8* %call, i8** %statetype, align 8, !tbaa !0
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2
  %1 = load i32** %nodeidx, align 8, !tbaa !0
  %2 = bitcast i32* %1 to i8*
  %mul3 = shl nsw i64 %conv, 2
  %call4 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 50, i8* %2, i64 %mul3) #6
  %3 = bitcast i8* %call4 to i32*
  store i32* %3, i32** %nodeidx, align 8, !tbaa !0
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3
  %4 = load i32** %pos, align 8, !tbaa !0
  %5 = bitcast i32* %4 to i8*
  %call8 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 51, i8* %5, i64 %mul3) #6
  %6 = bitcast i8* %call8 to i32*
  store i32* %6, i32** %pos, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @P7FreeTrace(%struct.p7trace_s* %tr) #0 {
entry:
  %cmp = icmp eq %struct.p7trace_s* %tr, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3
  %0 = load i32** %pos, align 8, !tbaa !0
  %1 = bitcast i32* %0 to i8*
  tail call void @free(i8* %1) #6
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2
  %2 = load i32** %nodeidx, align 8, !tbaa !0
  %3 = bitcast i32* %2 to i8*
  tail call void @free(i8* %3) #6
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %4 = load i8** %statetype, align 8, !tbaa !0
  tail call void @free(i8* %4) #6
  %5 = bitcast %struct.p7trace_s* %tr to i8*
  tail call void @free(i8* %5) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @TraceSet(%struct.p7trace_s* nocapture %tr, i32 %tpos, i8 signext %type, i32 %idx, i32 %pos) #0 {
entry:
  %idxprom = sext i32 %tpos to i64
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %0 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %0, i64 %idxprom
  store i8 %type, i8* %arrayidx, align 1, !tbaa !1
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2
  %1 = load i32** %nodeidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32* %1, i64 %idxprom
  store i32 %idx, i32* %arrayidx2, align 4, !tbaa !3
  %pos4 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3
  %2 = load i32** %pos4, align 8, !tbaa !0
  %arrayidx5 = getelementptr inbounds i32* %2, i64 %idxprom
  store i32 %pos, i32* %arrayidx5, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.p7trace_s** @MergeTraceArrays(%struct.p7trace_s** nocapture %t1, i32 %n1, %struct.p7trace_s** nocapture %t2, i32 %n2) #0 {
entry:
  %add = add nsw i32 %n2, %n1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 110, i64 %mul) #6
  %0 = bitcast i8* %call to %struct.p7trace_s**
  %cmp32 = icmp sgt i32 %n1, 0
  br i1 %cmp32, label %for.body, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.body, %entry
  %cmp530 = icmp sgt i32 %n2, 0
  br i1 %cmp530, label %for.body7.lr.ph, label %for.end15

for.body7.lr.ph:                                  ; preds = %for.cond4.preheader
  %1 = sext i32 %n1 to i64
  br label %for.body7

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.p7trace_s** %t1, i64 %indvars.iv35
  %2 = load %struct.p7trace_s** %arrayidx, align 8, !tbaa !0
  %arrayidx3 = getelementptr inbounds %struct.p7trace_s** %0, i64 %indvars.iv35
  store %struct.p7trace_s* %2, %struct.p7trace_s** %arrayidx3, align 8, !tbaa !0
  %indvars.iv.next36 = add i64 %indvars.iv35, 1
  %lftr.wideiv37 = trunc i64 %indvars.iv.next36 to i32
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %n1
  br i1 %exitcond38, label %for.cond4.preheader, label %for.body

for.body7:                                        ; preds = %for.body7, %for.body7.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next, %for.body7 ]
  %arrayidx9 = getelementptr inbounds %struct.p7trace_s** %t2, i64 %indvars.iv
  %3 = load %struct.p7trace_s** %arrayidx9, align 8, !tbaa !0
  %4 = add nsw i64 %indvars.iv, %1
  %arrayidx12 = getelementptr inbounds %struct.p7trace_s** %0, i64 %4
  store %struct.p7trace_s* %3, %struct.p7trace_s** %arrayidx12, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n2
  br i1 %exitcond, label %for.end15, label %for.body7

for.end15:                                        ; preds = %for.body7, %for.cond4.preheader
  %5 = bitcast %struct.p7trace_s** %t1 to i8*
  tail call void @free(i8* %5) #6
  %6 = bitcast %struct.p7trace_s** %t2 to i8*
  tail call void @free(i8* %6) #6
  ret %struct.p7trace_s** %0
}

; Function Attrs: nounwind optsize uwtable
define void @P7ReverseTrace(%struct.p7trace_s* nocapture %tr) #0 {
entry:
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0
  %0 = load i32* %tlen, align 4, !tbaa !3
  %conv = sext i32 %0 to i64
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 149, i64 %conv) #6
  %1 = load i32* %tlen, align 4, !tbaa !3
  %conv2 = sext i32 %1 to i64
  %mul3 = shl nsw i64 %conv2, 2
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 150, i64 %mul3) #6
  %2 = bitcast i8* %call4 to i32*
  %3 = load i32* %tlen, align 4, !tbaa !3
  %conv6 = sext i32 %3 to i64
  %mul7 = shl nsw i64 %conv6, 2
  %call8 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 151, i64 %mul7) #6
  %4 = bitcast i8* %call8 to i32*
  %5 = load i32* %tlen, align 4, !tbaa !3
  %cmp55 = icmp sgt i32 %5, 0
  %statetype12 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %nodeidx16 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2
  %pos21 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3
  br i1 %cmp55, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %6 = sext i32 %5 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv58 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next59, %for.body ]
  %indvars.iv = phi i64 [ %6, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %7 = load i8** %statetype12, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %7, i64 %indvars.iv.next
  %8 = load i8* %arrayidx, align 1, !tbaa !1
  %arrayidx14 = getelementptr inbounds i8* %call, i64 %indvars.iv58
  store i8 %8, i8* %arrayidx14, align 1, !tbaa !1
  %9 = load i32** %nodeidx16, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds i32* %9, i64 %indvars.iv.next
  %10 = load i32* %arrayidx17, align 4, !tbaa !3
  %arrayidx19 = getelementptr inbounds i32* %2, i64 %indvars.iv58
  store i32 %10, i32* %arrayidx19, align 4, !tbaa !3
  %11 = load i32** %pos21, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds i32* %11, i64 %indvars.iv.next
  %12 = load i32* %arrayidx22, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds i32* %4, i64 %indvars.iv58
  store i32 %12, i32* %arrayidx24, align 4, !tbaa !3
  %indvars.iv.next59 = add i64 %indvars.iv58, 1
  %13 = load i32* %tlen, align 4, !tbaa !3
  %14 = trunc i64 %indvars.iv.next59 to i32
  %cmp = icmp slt i32 %14, %13
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %entry, %for.body
  %15 = load i8** %statetype12, align 8, !tbaa !0
  tail call void @free(i8* %15) #6
  %16 = load i32** %nodeidx16, align 8, !tbaa !0
  %17 = bitcast i32* %16 to i8*
  tail call void @free(i8* %17) #6
  %18 = load i32** %pos21, align 8, !tbaa !0
  %19 = bitcast i32* %18 to i8*
  tail call void @free(i8* %19) #6
  store i8* %call, i8** %statetype12, align 8, !tbaa !0
  store i32* %2, i32** %nodeidx16, align 8, !tbaa !0
  store i32* %4, i32** %pos21, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @P7TraceCount(%struct.plan7_s* nocapture %hmm, i8* nocapture %dsq, float %wt, %struct.p7trace_s* nocapture %tr) #0 {
entry:
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0
  %0 = load i32* %tlen, align 4, !tbaa !3
  %cmp404 = icmp sgt i32 %0, 0
  br i1 %cmp404, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %arrayidx36 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0
  %arrayidx41 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1
  %nodeidx60 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27
  %arrayidx207 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0
  %arrayidx212 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1
  %arrayidx234 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0
  %arrayidx239 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1
  %arrayidx261 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0
  %arrayidx266 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %1 = load i32** %pos, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %3 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds i8* %3, i64 %indvars.iv
  %4 = load i8* %arrayidx2, align 1, !tbaa !1
  switch i8 %4, label %if.end25 [
    i8 1, label %if.then
    i8 3, label %if.then17
  ]

if.then:                                          ; preds = %for.body
  %5 = load i32** %nodeidx60, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds i32* %5, i64 %indvars.iv
  %6 = load i32* %arrayidx6, align 4, !tbaa !3
  %idxprom7 = sext i32 %6 to i64
  %7 = load float*** %mat, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds float** %7, i64 %idxprom7
  %8 = load float** %arrayidx8, align 8, !tbaa !0
  %idxprom9 = sext i32 %2 to i64
  %arrayidx10 = getelementptr inbounds i8* %dsq, i64 %idxprom9
  %9 = load i8* %arrayidx10, align 1, !tbaa !1
  tail call void @P7CountSymbol(float* %8, i8 signext %9, float %wt) #6
  br label %if.end25

if.then17:                                        ; preds = %for.body
  %10 = load i32** %nodeidx60, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i32* %10, i64 %indvars.iv
  %11 = load i32* %arrayidx20, align 4, !tbaa !3
  %idxprom21 = sext i32 %11 to i64
  %12 = load float*** %ins, align 8, !tbaa !0
  %arrayidx22 = getelementptr inbounds float** %12, i64 %idxprom21
  %13 = load float** %arrayidx22, align 8, !tbaa !0
  %idxprom23 = sext i32 %2 to i64
  %arrayidx24 = getelementptr inbounds i8* %dsq, i64 %idxprom23
  %14 = load i8* %arrayidx24, align 1, !tbaa !1
  tail call void @P7CountSymbol(float* %13, i8 signext %14, float %wt) #6
  br label %if.end25

if.end25:                                         ; preds = %for.body, %if.then17, %if.then
  %15 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds i8* %15, i64 %indvars.iv
  %16 = load i8* %arrayidx28, align 1, !tbaa !1
  %conv29 = sext i8 %16 to i32
  switch i32 %conv29, label %sw.default279 [
    i32 4, label %for.inc
    i32 5, label %sw.bb
    i32 6, label %sw.bb51
    i32 1, label %sw.bb78
    i32 3, label %sw.bb128
    i32 2, label %sw.bb163
    i32 7, label %sw.bb198
    i32 10, label %sw.bb225
    i32 8, label %sw.bb252
    i32 9, label %for.inc
  ]

sw.bb:                                            ; preds = %if.end25
  %17 = add nsw i64 %indvars.iv, 1
  %arrayidx32 = getelementptr inbounds i8* %15, i64 %17
  %18 = load i8* %arrayidx32, align 1, !tbaa !1
  %conv33 = sext i8 %18 to i32
  switch i32 %conv33, label %sw.default [
    i32 6, label %sw.bb34
    i32 5, label %sw.bb38
  ]

sw.bb34:                                          ; preds = %sw.bb
  %19 = load float* %arrayidx36, align 4, !tbaa !4
  %add37 = fadd float %19, %wt
  store float %add37, float* %arrayidx36, align 4, !tbaa !4
  br label %for.inc

sw.bb38:                                          ; preds = %sw.bb
  %20 = load float* %arrayidx41, align 4, !tbaa !4
  %add42 = fadd float %20, %wt
  store float %add42, float* %arrayidx41, align 4, !tbaa !4
  br label %for.inc

sw.default:                                       ; preds = %sw.bb
  %call = tail call i8* @Statetype(i8 signext %16) #6
  %21 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds i8* %21, i64 %17
  %22 = load i8* %arrayidx49, align 1, !tbaa !1
  %call50 = tail call i8* @Statetype(i8 signext %22) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call, i8* %call50) #6
  br label %for.inc

sw.bb51:                                          ; preds = %if.end25
  %23 = add nsw i64 %indvars.iv, 1
  %arrayidx55 = getelementptr inbounds i8* %15, i64 %23
  %24 = load i8* %arrayidx55, align 1, !tbaa !1
  %conv56 = sext i8 %24 to i32
  switch i32 %conv56, label %sw.default67 [
    i32 1, label %sw.bb57
    i32 2, label %sw.bb65
  ]

sw.bb57:                                          ; preds = %sw.bb51
  %25 = load i32** %nodeidx60, align 8, !tbaa !0
  %arrayidx61 = getelementptr inbounds i32* %25, i64 %23
  %26 = load i32* %arrayidx61, align 4, !tbaa !3
  %idxprom62 = sext i32 %26 to i64
  %27 = load float** %begin, align 8, !tbaa !0
  %arrayidx63 = getelementptr inbounds float* %27, i64 %idxprom62
  %28 = load float* %arrayidx63, align 4, !tbaa !4
  %add64 = fadd float %28, %wt
  store float %add64, float* %arrayidx63, align 4, !tbaa !4
  br label %for.inc

sw.bb65:                                          ; preds = %sw.bb51
  %29 = load float* %tbd1, align 4, !tbaa !4
  %add66 = fadd float %29, %wt
  store float %add66, float* %tbd1, align 4, !tbaa !4
  br label %for.inc

sw.default67:                                     ; preds = %sw.bb51
  %call71 = tail call i8* @Statetype(i8 signext %16) #6
  %30 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx75 = getelementptr inbounds i8* %30, i64 %23
  %31 = load i8* %arrayidx75, align 1, !tbaa !1
  %call76 = tail call i8* @Statetype(i8 signext %31) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call71, i8* %call76) #6
  br label %for.inc

sw.bb78:                                          ; preds = %if.end25
  %32 = add nsw i64 %indvars.iv, 1
  %arrayidx82 = getelementptr inbounds i8* %15, i64 %32
  %33 = load i8* %arrayidx82, align 1, !tbaa !1
  %conv83 = sext i8 %33 to i32
  switch i32 %conv83, label %sw.default117 [
    i32 1, label %sw.bb84
    i32 3, label %sw.bb92
    i32 2, label %sw.bb101
    i32 7, label %sw.bb110
  ]

sw.bb84:                                          ; preds = %sw.bb78
  %34 = load i32** %nodeidx60, align 8, !tbaa !0
  %arrayidx87 = getelementptr inbounds i32* %34, i64 %indvars.iv
  %35 = load i32* %arrayidx87, align 4, !tbaa !3
  %idxprom88 = sext i32 %35 to i64
  %36 = load float*** %t, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds float** %36, i64 %idxprom88
  %37 = load float** %arrayidx89, align 8, !tbaa !0
  %38 = load float* %37, align 4, !tbaa !4
  %add91 = fadd float %38, %wt
  store float %add91, float* %37, align 4, !tbaa !4
  br label %for.inc

sw.bb92:                                          ; preds = %sw.bb78
  %39 = load i32** %nodeidx60, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds i32* %39, i64 %indvars.iv
  %40 = load i32* %arrayidx95, align 4, !tbaa !3
  %idxprom96 = sext i32 %40 to i64
  %41 = load float*** %t, align 8, !tbaa !0
  %arrayidx98 = getelementptr inbounds float** %41, i64 %idxprom96
  %42 = load float** %arrayidx98, align 8, !tbaa !0
  %arrayidx99 = getelementptr inbounds float* %42, i64 1
  %43 = load float* %arrayidx99, align 4, !tbaa !4
  %add100 = fadd float %43, %wt
  store float %add100, float* %arrayidx99, align 4, !tbaa !4
  br label %for.inc

sw.bb101:                                         ; preds = %sw.bb78
  %44 = load i32** %nodeidx60, align 8, !tbaa !0
  %arrayidx104 = getelementptr inbounds i32* %44, i64 %indvars.iv
  %45 = load i32* %arrayidx104, align 4, !tbaa !3
  %idxprom105 = sext i32 %45 to i64
  %46 = load float*** %t, align 8, !tbaa !0
  %arrayidx107 = getelementptr inbounds float** %46, i64 %idxprom105
  %47 = load float** %arrayidx107, align 8, !tbaa !0
  %arrayidx108 = getelementptr inbounds float* %47, i64 2
  %48 = load float* %arrayidx108, align 4, !tbaa !4
  %add109 = fadd float %48, %wt
  store float %add109, float* %arrayidx108, align 4, !tbaa !4
  br label %for.inc

sw.bb110:                                         ; preds = %sw.bb78
  %49 = load i32** %nodeidx60, align 8, !tbaa !0
  %arrayidx113 = getelementptr inbounds i32* %49, i64 %indvars.iv
  %50 = load i32* %arrayidx113, align 4, !tbaa !3
  %idxprom114 = sext i32 %50 to i64
  %51 = load float** %end, align 8, !tbaa !0
  %arrayidx115 = getelementptr inbounds float* %51, i64 %idxprom114
  %52 = load float* %arrayidx115, align 4, !tbaa !4
  %add116 = fadd float %52, %wt
  store float %add116, float* %arrayidx115, align 4, !tbaa !4
  br label %for.inc

sw.default117:                                    ; preds = %sw.bb78
  %call121 = tail call i8* @Statetype(i8 signext %16) #6
  %53 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx125 = getelementptr inbounds i8* %53, i64 %32
  %54 = load i8* %arrayidx125, align 1, !tbaa !1
  %call126 = tail call i8* @Statetype(i8 signext %54) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call121, i8* %call126) #6
  br label %for.inc

sw.bb128:                                         ; preds = %if.end25
  %55 = add nsw i64 %indvars.iv, 1
  %arrayidx132 = getelementptr inbounds i8* %15, i64 %55
  %56 = load i8* %arrayidx132, align 1, !tbaa !1
  %conv133 = sext i8 %56 to i32
  switch i32 %conv133, label %sw.default152 [
    i32 1, label %sw.bb134
    i32 3, label %sw.bb143
  ]

sw.bb134:                                         ; preds = %sw.bb128
  %57 = load i32** %nodeidx60, align 8, !tbaa !0
  %arrayidx137 = getelementptr inbounds i32* %57, i64 %indvars.iv
  %58 = load i32* %arrayidx137, align 4, !tbaa !3
  %idxprom138 = sext i32 %58 to i64
  %59 = load float*** %t, align 8, !tbaa !0
  %arrayidx140 = getelementptr inbounds float** %59, i64 %idxprom138
  %60 = load float** %arrayidx140, align 8, !tbaa !0
  %arrayidx141 = getelementptr inbounds float* %60, i64 3
  %61 = load float* %arrayidx141, align 4, !tbaa !4
  %add142 = fadd float %61, %wt
  store float %add142, float* %arrayidx141, align 4, !tbaa !4
  br label %for.inc

sw.bb143:                                         ; preds = %sw.bb128
  %62 = load i32** %nodeidx60, align 8, !tbaa !0
  %arrayidx146 = getelementptr inbounds i32* %62, i64 %indvars.iv
  %63 = load i32* %arrayidx146, align 4, !tbaa !3
  %idxprom147 = sext i32 %63 to i64
  %64 = load float*** %t, align 8, !tbaa !0
  %arrayidx149 = getelementptr inbounds float** %64, i64 %idxprom147
  %65 = load float** %arrayidx149, align 8, !tbaa !0
  %arrayidx150 = getelementptr inbounds float* %65, i64 4
  %66 = load float* %arrayidx150, align 4, !tbaa !4
  %add151 = fadd float %66, %wt
  store float %add151, float* %arrayidx150, align 4, !tbaa !4
  br label %for.inc

sw.default152:                                    ; preds = %sw.bb128
  %call156 = tail call i8* @Statetype(i8 signext %16) #6
  %67 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx160 = getelementptr inbounds i8* %67, i64 %55
  %68 = load i8* %arrayidx160, align 1, !tbaa !1
  %call161 = tail call i8* @Statetype(i8 signext %68) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call156, i8* %call161) #6
  br label %for.inc

sw.bb163:                                         ; preds = %if.end25
  %69 = add nsw i64 %indvars.iv, 1
  %arrayidx167 = getelementptr inbounds i8* %15, i64 %69
  %70 = load i8* %arrayidx167, align 1, !tbaa !1
  %conv168 = sext i8 %70 to i32
  switch i32 %conv168, label %sw.default187 [
    i32 1, label %sw.bb169
    i32 2, label %sw.bb178
    i32 7, label %for.inc
  ]

sw.bb169:                                         ; preds = %sw.bb163
  %71 = load i32** %nodeidx60, align 8, !tbaa !0
  %arrayidx172 = getelementptr inbounds i32* %71, i64 %indvars.iv
  %72 = load i32* %arrayidx172, align 4, !tbaa !3
  %idxprom173 = sext i32 %72 to i64
  %73 = load float*** %t, align 8, !tbaa !0
  %arrayidx175 = getelementptr inbounds float** %73, i64 %idxprom173
  %74 = load float** %arrayidx175, align 8, !tbaa !0
  %arrayidx176 = getelementptr inbounds float* %74, i64 5
  %75 = load float* %arrayidx176, align 4, !tbaa !4
  %add177 = fadd float %75, %wt
  store float %add177, float* %arrayidx176, align 4, !tbaa !4
  br label %for.inc

sw.bb178:                                         ; preds = %sw.bb163
  %76 = load i32** %nodeidx60, align 8, !tbaa !0
  %arrayidx181 = getelementptr inbounds i32* %76, i64 %indvars.iv
  %77 = load i32* %arrayidx181, align 4, !tbaa !3
  %idxprom182 = sext i32 %77 to i64
  %78 = load float*** %t, align 8, !tbaa !0
  %arrayidx184 = getelementptr inbounds float** %78, i64 %idxprom182
  %79 = load float** %arrayidx184, align 8, !tbaa !0
  %arrayidx185 = getelementptr inbounds float* %79, i64 6
  %80 = load float* %arrayidx185, align 4, !tbaa !4
  %add186 = fadd float %80, %wt
  store float %add186, float* %arrayidx185, align 4, !tbaa !4
  br label %for.inc

sw.default187:                                    ; preds = %sw.bb163
  %call191 = tail call i8* @Statetype(i8 signext %16) #6
  %81 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx195 = getelementptr inbounds i8* %81, i64 %69
  %82 = load i8* %arrayidx195, align 1, !tbaa !1
  %call196 = tail call i8* @Statetype(i8 signext %82) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call191, i8* %call196) #6
  br label %for.inc

sw.bb198:                                         ; preds = %if.end25
  %83 = add nsw i64 %indvars.iv, 1
  %arrayidx202 = getelementptr inbounds i8* %15, i64 %83
  %84 = load i8* %arrayidx202, align 1, !tbaa !1
  %conv203 = sext i8 %84 to i32
  switch i32 %conv203, label %sw.default214 [
    i32 8, label %sw.bb204
    i32 10, label %sw.bb209
  ]

sw.bb204:                                         ; preds = %sw.bb198
  %85 = load float* %arrayidx207, align 4, !tbaa !4
  %add208 = fadd float %85, %wt
  store float %add208, float* %arrayidx207, align 4, !tbaa !4
  br label %for.inc

sw.bb209:                                         ; preds = %sw.bb198
  %86 = load float* %arrayidx212, align 4, !tbaa !4
  %add213 = fadd float %86, %wt
  store float %add213, float* %arrayidx212, align 4, !tbaa !4
  br label %for.inc

sw.default214:                                    ; preds = %sw.bb198
  %call218 = tail call i8* @Statetype(i8 signext %16) #6
  %87 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx222 = getelementptr inbounds i8* %87, i64 %83
  %88 = load i8* %arrayidx222, align 1, !tbaa !1
  %call223 = tail call i8* @Statetype(i8 signext %88) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call218, i8* %call223) #6
  br label %for.inc

sw.bb225:                                         ; preds = %if.end25
  %89 = add nsw i64 %indvars.iv, 1
  %arrayidx229 = getelementptr inbounds i8* %15, i64 %89
  %90 = load i8* %arrayidx229, align 1, !tbaa !1
  %conv230 = sext i8 %90 to i32
  switch i32 %conv230, label %sw.default241 [
    i32 6, label %sw.bb231
    i32 10, label %sw.bb236
  ]

sw.bb231:                                         ; preds = %sw.bb225
  %91 = load float* %arrayidx234, align 4, !tbaa !4
  %add235 = fadd float %91, %wt
  store float %add235, float* %arrayidx234, align 4, !tbaa !4
  br label %for.inc

sw.bb236:                                         ; preds = %sw.bb225
  %92 = load float* %arrayidx239, align 4, !tbaa !4
  %add240 = fadd float %92, %wt
  store float %add240, float* %arrayidx239, align 4, !tbaa !4
  br label %for.inc

sw.default241:                                    ; preds = %sw.bb225
  %call245 = tail call i8* @Statetype(i8 signext %16) #6
  %93 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx249 = getelementptr inbounds i8* %93, i64 %89
  %94 = load i8* %arrayidx249, align 1, !tbaa !1
  %call250 = tail call i8* @Statetype(i8 signext %94) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call245, i8* %call250) #6
  br label %for.inc

sw.bb252:                                         ; preds = %if.end25
  %95 = add nsw i64 %indvars.iv, 1
  %arrayidx256 = getelementptr inbounds i8* %15, i64 %95
  %96 = load i8* %arrayidx256, align 1, !tbaa !1
  %conv257 = sext i8 %96 to i32
  switch i32 %conv257, label %sw.default268 [
    i32 9, label %sw.bb258
    i32 8, label %sw.bb263
  ]

sw.bb258:                                         ; preds = %sw.bb252
  %97 = load float* %arrayidx261, align 4, !tbaa !4
  %add262 = fadd float %97, %wt
  store float %add262, float* %arrayidx261, align 4, !tbaa !4
  br label %for.inc

sw.bb263:                                         ; preds = %sw.bb252
  %98 = load float* %arrayidx266, align 4, !tbaa !4
  %add267 = fadd float %98, %wt
  store float %add267, float* %arrayidx266, align 4, !tbaa !4
  br label %for.inc

sw.default268:                                    ; preds = %sw.bb252
  %call272 = tail call i8* @Statetype(i8 signext %16) #6
  %99 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx276 = getelementptr inbounds i8* %99, i64 %95
  %100 = load i8* %arrayidx276, align 1, !tbaa !1
  %call277 = tail call i8* @Statetype(i8 signext %100) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call272, i8* %call277) #6
  br label %for.inc

sw.default279:                                    ; preds = %if.end25
  %call283 = tail call i8* @Statetype(i8 signext %16) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0), i8* %call283) #6
  br label %for.inc

for.inc:                                          ; preds = %sw.bb163, %if.end25, %if.end25, %sw.default279, %sw.default, %sw.bb38, %sw.bb34, %sw.default67, %sw.bb65, %sw.bb57, %sw.default117, %sw.bb110, %sw.bb101, %sw.bb92, %sw.bb84, %sw.default152, %sw.bb143, %sw.bb134, %sw.default187, %sw.bb178, %sw.bb169, %sw.default214, %sw.bb209, %sw.bb204, %sw.default241, %sw.bb236, %sw.bb231, %sw.default268, %sw.bb263, %sw.bb258
  %indvars.iv.next = add i64 %indvars.iv, 1
  %101 = load i32* %tlen, align 4, !tbaa !3
  %102 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %102, %101
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: optsize
declare void @P7CountSymbol(float*, i8 signext, float) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: optsize
declare i8* @Statetype(i8 signext) #1

; Function Attrs: nounwind optsize uwtable
define float @P7TraceScore(%struct.plan7_s* nocapture %hmm, i8* nocapture %dsq, %struct.p7trace_s* nocapture %tr) #0 {
entry:
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0
  %0 = load i32* %tlen, align 4, !tbaa !3
  %sub69 = add nsw i32 %0, -1
  %cmp70 = icmp sgt i32 %sub69, 0
  br i1 %cmp70, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %nodeidx34 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end29
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end29 ]
  %score.072 = phi i32 [ 0, %for.body.lr.ph ], [ %add44, %if.end29 ]
  %1 = load i32** %pos, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds i8* %dsq, i64 %idxprom1
  %3 = load i8* %arrayidx2, align 1, !tbaa !1
  %4 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx4 = getelementptr inbounds i8* %4, i64 %indvars.iv
  %5 = load i8* %arrayidx4, align 1, !tbaa !1
  switch i8 %5, label %for.body.if.end29_crit_edge [
    i8 1, label %if.then
    i8 3, label %if.then20
  ]

for.body.if.end29_crit_edge:                      ; preds = %for.body
  %.pre = load i32** %nodeidx34, align 8, !tbaa !0
  %arrayidx35.phi.trans.insert = getelementptr inbounds i32* %.pre, i64 %indvars.iv
  %.pre73 = load i32* %arrayidx35.phi.trans.insert, align 4, !tbaa !3
  br label %if.end29

if.then:                                          ; preds = %for.body
  %6 = load i32** %nodeidx34, align 8, !tbaa !0
  %arrayidx9 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %7 = load i32* %arrayidx9, align 4, !tbaa !3
  %idxprom10 = sext i32 %7 to i64
  %idxprom11 = sext i8 %3 to i64
  %8 = load i32*** %msc, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds i32** %8, i64 %idxprom11
  %9 = load i32** %arrayidx12, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i32* %9, i64 %idxprom10
  %10 = load i32* %arrayidx13, align 4, !tbaa !3
  %add = add nsw i32 %10, %score.072
  br label %if.end29

if.then20:                                        ; preds = %for.body
  %11 = load i32** %nodeidx34, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds i32* %11, i64 %indvars.iv
  %12 = load i32* %arrayidx23, align 4, !tbaa !3
  %idxprom24 = sext i32 %12 to i64
  %idxprom25 = sext i8 %3 to i64
  %13 = load i32*** %isc, align 8, !tbaa !0
  %arrayidx26 = getelementptr inbounds i32** %13, i64 %idxprom25
  %14 = load i32** %arrayidx26, align 8, !tbaa !0
  %arrayidx27 = getelementptr inbounds i32* %14, i64 %idxprom24
  %15 = load i32* %arrayidx27, align 4, !tbaa !3
  %add28 = add nsw i32 %15, %score.072
  br label %if.end29

if.end29:                                         ; preds = %for.body.if.end29_crit_edge, %if.then20, %if.then
  %16 = phi i32 [ %7, %if.then ], [ %12, %if.then20 ], [ %.pre73, %for.body.if.end29_crit_edge ]
  %17 = phi i32* [ %6, %if.then ], [ %11, %if.then20 ], [ %.pre, %for.body.if.end29_crit_edge ]
  %score.1 = phi i32 [ %add, %if.then ], [ %add28, %if.then20 ], [ %score.072, %for.body.if.end29_crit_edge ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx39 = getelementptr inbounds i8* %4, i64 %indvars.iv.next
  %18 = load i8* %arrayidx39, align 1, !tbaa !1
  %arrayidx43 = getelementptr inbounds i32* %17, i64 %indvars.iv.next
  %19 = load i32* %arrayidx43, align 4, !tbaa !3
  %call = tail call i32 @TransitionScoreLookup(%struct.plan7_s* %hmm, i8 signext %5, i32 %16, i8 signext %18, i32 %19) #7
  %add44 = add nsw i32 %call, %score.1
  %20 = load i32* %tlen, align 4, !tbaa !3
  %sub = add nsw i32 %20, -1
  %21 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %21, %sub
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end29, %entry
  %score.0.lcssa = phi i32 [ 0, %entry ], [ %add44, %if.end29 ]
  %call45 = tail call float @Scorify(i32 %score.0.lcssa) #6
  ret float %call45
}

; Function Attrs: nounwind optsize uwtable
define i32 @TransitionScoreLookup(%struct.plan7_s* nocapture %hmm, i8 signext %st1, i32 %k1, i8 signext %st2, i32 %k2) #0 {
entry:
  %conv = sext i8 %st1 to i32
  switch i32 %conv, label %sw.default119 [
    i32 4, label %return
    i32 5, label %sw.bb1
    i32 6, label %sw.bb10
    i32 1, label %sw.bb20
    i32 3, label %sw.bb43
    i32 2, label %sw.bb59
    i32 7, label %sw.bb76
    i32 10, label %sw.bb90
    i32 8, label %sw.bb104
    i32 9, label %return
  ]

sw.bb1:                                           ; preds = %entry
  %conv2 = sext i8 %st2 to i32
  switch i32 %conv2, label %sw.default [
    i32 6, label %sw.bb3
    i32 5, label %sw.bb5
  ]

sw.bb3:                                           ; preds = %sw.bb1
  %arrayidx4 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0
  %0 = load i32* %arrayidx4, align 4, !tbaa !3
  br label %return

sw.bb5:                                           ; preds = %sw.bb1
  %arrayidx8 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1
  %1 = load i32* %arrayidx8, align 4, !tbaa !3
  br label %return

sw.default:                                       ; preds = %sw.bb1
  %call = tail call i8* @Statetype(i8 signext %st1) #6
  %call9 = tail call i8* @Statetype(i8 signext %st2) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call, i8* %call9) #6
  br label %return

sw.bb10:                                          ; preds = %entry
  %conv11 = sext i8 %st2 to i32
  switch i32 %conv11, label %sw.default16 [
    i32 1, label %sw.bb12
    i32 2, label %sw.bb14
  ]

sw.bb12:                                          ; preds = %sw.bb10
  %idxprom = sext i32 %k2 to i64
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34
  %2 = load i32** %bsc, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx13, align 4, !tbaa !3
  br label %return

sw.bb14:                                          ; preds = %sw.bb10
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24
  %4 = load float* %tbd1, align 4, !tbaa !4
  %call15 = tail call i32 @Prob2Score(float %4, float 1.000000e+00) #6
  br label %return

sw.default16:                                     ; preds = %sw.bb10
  %call17 = tail call i8* @Statetype(i8 signext %st1) #6
  %call18 = tail call i8* @Statetype(i8 signext %st2) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call17, i8* %call18) #6
  br label %return

sw.bb20:                                          ; preds = %entry
  %conv21 = sext i8 %st2 to i32
  switch i32 %conv21, label %sw.default39 [
    i32 1, label %sw.bb22
    i32 3, label %sw.bb26
    i32 2, label %sw.bb31
    i32 7, label %sw.bb36
  ]

sw.bb22:                                          ; preds = %sw.bb20
  %idxprom23 = sext i32 %k1 to i64
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %5 = load i32*** %tsc, align 8, !tbaa !0
  %6 = load i32** %5, align 8, !tbaa !0
  %arrayidx25 = getelementptr inbounds i32* %6, i64 %idxprom23
  %7 = load i32* %arrayidx25, align 4, !tbaa !3
  br label %return

sw.bb26:                                          ; preds = %sw.bb20
  %idxprom27 = sext i32 %k1 to i64
  %tsc28 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %8 = load i32*** %tsc28, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds i32** %8, i64 1
  %9 = load i32** %arrayidx29, align 8, !tbaa !0
  %arrayidx30 = getelementptr inbounds i32* %9, i64 %idxprom27
  %10 = load i32* %arrayidx30, align 4, !tbaa !3
  br label %return

sw.bb31:                                          ; preds = %sw.bb20
  %idxprom32 = sext i32 %k1 to i64
  %tsc33 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %11 = load i32*** %tsc33, align 8, !tbaa !0
  %arrayidx34 = getelementptr inbounds i32** %11, i64 2
  %12 = load i32** %arrayidx34, align 8, !tbaa !0
  %arrayidx35 = getelementptr inbounds i32* %12, i64 %idxprom32
  %13 = load i32* %arrayidx35, align 4, !tbaa !3
  br label %return

sw.bb36:                                          ; preds = %sw.bb20
  %idxprom37 = sext i32 %k1 to i64
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35
  %14 = load i32** %esc, align 8, !tbaa !0
  %arrayidx38 = getelementptr inbounds i32* %14, i64 %idxprom37
  %15 = load i32* %arrayidx38, align 4, !tbaa !3
  br label %return

sw.default39:                                     ; preds = %sw.bb20
  %call40 = tail call i8* @Statetype(i8 signext %st1) #6
  %call41 = tail call i8* @Statetype(i8 signext %st2) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call40, i8* %call41) #6
  br label %return

sw.bb43:                                          ; preds = %entry
  %conv44 = sext i8 %st2 to i32
  switch i32 %conv44, label %sw.default55 [
    i32 1, label %sw.bb45
    i32 3, label %sw.bb50
  ]

sw.bb45:                                          ; preds = %sw.bb43
  %idxprom46 = sext i32 %k1 to i64
  %tsc47 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %16 = load i32*** %tsc47, align 8, !tbaa !0
  %arrayidx48 = getelementptr inbounds i32** %16, i64 3
  %17 = load i32** %arrayidx48, align 8, !tbaa !0
  %arrayidx49 = getelementptr inbounds i32* %17, i64 %idxprom46
  %18 = load i32* %arrayidx49, align 4, !tbaa !3
  br label %return

sw.bb50:                                          ; preds = %sw.bb43
  %idxprom51 = sext i32 %k1 to i64
  %tsc52 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %19 = load i32*** %tsc52, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds i32** %19, i64 4
  %20 = load i32** %arrayidx53, align 8, !tbaa !0
  %arrayidx54 = getelementptr inbounds i32* %20, i64 %idxprom51
  %21 = load i32* %arrayidx54, align 4, !tbaa !3
  br label %return

sw.default55:                                     ; preds = %sw.bb43
  %call56 = tail call i8* @Statetype(i8 signext %st1) #6
  %call57 = tail call i8* @Statetype(i8 signext %st2) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call56, i8* %call57) #6
  br label %return

sw.bb59:                                          ; preds = %entry
  %conv60 = sext i8 %st2 to i32
  switch i32 %conv60, label %sw.default72 [
    i32 1, label %sw.bb61
    i32 2, label %sw.bb66
    i32 7, label %return
  ]

sw.bb61:                                          ; preds = %sw.bb59
  %idxprom62 = sext i32 %k1 to i64
  %tsc63 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %22 = load i32*** %tsc63, align 8, !tbaa !0
  %arrayidx64 = getelementptr inbounds i32** %22, i64 5
  %23 = load i32** %arrayidx64, align 8, !tbaa !0
  %arrayidx65 = getelementptr inbounds i32* %23, i64 %idxprom62
  %24 = load i32* %arrayidx65, align 4, !tbaa !3
  br label %return

sw.bb66:                                          ; preds = %sw.bb59
  %idxprom67 = sext i32 %k1 to i64
  %tsc68 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30
  %25 = load i32*** %tsc68, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds i32** %25, i64 6
  %26 = load i32** %arrayidx69, align 8, !tbaa !0
  %arrayidx70 = getelementptr inbounds i32* %26, i64 %idxprom67
  %27 = load i32* %arrayidx70, align 4, !tbaa !3
  br label %return

sw.default72:                                     ; preds = %sw.bb59
  %call73 = tail call i8* @Statetype(i8 signext %st1) #6
  %call74 = tail call i8* @Statetype(i8 signext %st2) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call73, i8* %call74) #6
  br label %return

sw.bb76:                                          ; preds = %entry
  %conv77 = sext i8 %st2 to i32
  switch i32 %conv77, label %sw.default86 [
    i32 8, label %sw.bb78
    i32 10, label %sw.bb82
  ]

sw.bb78:                                          ; preds = %sw.bb76
  %arrayidx81 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0
  %28 = load i32* %arrayidx81, align 4, !tbaa !3
  br label %return

sw.bb82:                                          ; preds = %sw.bb76
  %arrayidx85 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1
  %29 = load i32* %arrayidx85, align 4, !tbaa !3
  br label %return

sw.default86:                                     ; preds = %sw.bb76
  %call87 = tail call i8* @Statetype(i8 signext %st1) #6
  %call88 = tail call i8* @Statetype(i8 signext %st2) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call87, i8* %call88) #6
  br label %return

sw.bb90:                                          ; preds = %entry
  %conv91 = sext i8 %st2 to i32
  switch i32 %conv91, label %sw.default100 [
    i32 6, label %sw.bb92
    i32 10, label %sw.bb96
  ]

sw.bb92:                                          ; preds = %sw.bb90
  %arrayidx95 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0
  %30 = load i32* %arrayidx95, align 4, !tbaa !3
  br label %return

sw.bb96:                                          ; preds = %sw.bb90
  %arrayidx99 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1
  %31 = load i32* %arrayidx99, align 4, !tbaa !3
  br label %return

sw.default100:                                    ; preds = %sw.bb90
  %call101 = tail call i8* @Statetype(i8 signext %st1) #6
  %call102 = tail call i8* @Statetype(i8 signext %st2) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call101, i8* %call102) #6
  br label %return

sw.bb104:                                         ; preds = %entry
  %conv105 = sext i8 %st2 to i32
  switch i32 %conv105, label %sw.default114 [
    i32 9, label %sw.bb106
    i32 8, label %sw.bb110
  ]

sw.bb106:                                         ; preds = %sw.bb104
  %arrayidx109 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0
  %32 = load i32* %arrayidx109, align 4, !tbaa !3
  br label %return

sw.bb110:                                         ; preds = %sw.bb104
  %arrayidx113 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1
  %33 = load i32* %arrayidx113, align 4, !tbaa !3
  br label %return

sw.default114:                                    ; preds = %sw.bb104
  %call115 = tail call i8* @Statetype(i8 signext %st1) #6
  %call116 = tail call i8* @Statetype(i8 signext %st2) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call115, i8* %call116) #6
  br label %return

sw.default119:                                    ; preds = %entry
  %call120 = tail call i8* @Statetype(i8 signext %st1) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0), i8* %call120) #6
  br label %return

return:                                           ; preds = %sw.default, %sw.default16, %sw.default39, %sw.default55, %sw.default72, %sw.default86, %sw.default100, %sw.default114, %sw.default119, %entry, %sw.bb59, %entry, %sw.bb110, %sw.bb106, %sw.bb96, %sw.bb92, %sw.bb82, %sw.bb78, %sw.bb66, %sw.bb61, %sw.bb50, %sw.bb45, %sw.bb36, %sw.bb31, %sw.bb26, %sw.bb22, %sw.bb14, %sw.bb12, %sw.bb5, %sw.bb3
  %retval.0 = phi i32 [ %33, %sw.bb110 ], [ %32, %sw.bb106 ], [ %31, %sw.bb96 ], [ %30, %sw.bb92 ], [ %29, %sw.bb82 ], [ %28, %sw.bb78 ], [ %27, %sw.bb66 ], [ %24, %sw.bb61 ], [ %21, %sw.bb50 ], [ %18, %sw.bb45 ], [ %15, %sw.bb36 ], [ %13, %sw.bb31 ], [ %10, %sw.bb26 ], [ %7, %sw.bb22 ], [ %call15, %sw.bb14 ], [ %3, %sw.bb12 ], [ %1, %sw.bb5 ], [ %0, %sw.bb3 ], [ 0, %entry ], [ 0, %sw.bb59 ], [ 0, %entry ], [ 0, %sw.default119 ], [ 0, %sw.default114 ], [ 0, %sw.default100 ], [ 0, %sw.default86 ], [ 0, %sw.default72 ], [ 0, %sw.default55 ], [ 0, %sw.default39 ], [ 0, %sw.default16 ], [ 0, %sw.default ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare float @Scorify(i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @P7Traces2Alignment(i8** nocapture %dsq, %struct.seqinfo_s* %sqinfo, float* nocapture %wgt, i32 %nseq, i32 %mlen, %struct.p7trace_s** nocapture %tr, i32 %matchonly) #0 {
entry:
  %add = add i32 %mlen, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 408, i64 %mul) #6
  %0 = bitcast i8* %call to i32*
  %cmp711 = icmp slt i32 %mlen, 0
  br i1 %cmp711, label %for.cond2.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %1 = zext i32 %mlen to i64
  %2 = shl nuw nsw i64 %1, 2
  %3 = add i64 %2, 4
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %3, i32 4, i1 false)
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.body.lr.ph, %entry
  %cmp3709 = icmp sgt i32 %nseq, 0
  br i1 %cmp3709, label %for.cond6.preheader.lr.ph, label %for.end91

for.cond6.preheader.lr.ph:                        ; preds = %for.cond2.preheader
  %idxprom70 = sext i32 %mlen to i64
  %arrayidx71 = getelementptr inbounds i32* %0, i64 %idxprom70
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.inc89, %for.cond6.preheader.lr.ph
  %indvars.iv753 = phi i64 [ 0, %for.cond6.preheader.lr.ph ], [ %indvars.iv.next754, %for.inc89 ]
  %arrayidx8 = getelementptr inbounds %struct.p7trace_s** %tr, i64 %indvars.iv753
  %4 = load %struct.p7trace_s** %arrayidx8, align 8, !tbaa !0
  %tlen705 = getelementptr inbounds %struct.p7trace_s* %4, i64 0, i32 0
  %5 = load i32* %tlen705, align 4, !tbaa !3
  %cmp9706 = icmp sgt i32 %5, 0
  br i1 %cmp9706, label %for.body11, label %for.inc89

for.body11:                                       ; preds = %for.cond6.preheader, %for.inc86
  %indvars.iv749 = phi i64 [ %indvars.iv.next750, %for.inc86 ], [ 0, %for.cond6.preheader ]
  %6 = phi %struct.p7trace_s* [ %19, %for.inc86 ], [ %4, %for.cond6.preheader ]
  %nins.0708 = phi i32 [ %nins.1, %for.inc86 ], [ 0, %for.cond6.preheader ]
  %statetype15 = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 1
  %7 = load i8** %statetype15, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i8* %7, i64 %indvars.iv749
  %8 = load i8* %arrayidx16, align 1, !tbaa !1
  %conv17 = sext i8 %8 to i32
  switch i32 %conv17, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %sw.bb19
    i32 8, label %sw.bb29
    i32 1, label %sw.bb42
    i32 2, label %sw.bb42
    i32 6, label %sw.bb62
    i32 9, label %sw.bb69
    i32 4, label %for.inc86
    i32 7, label %for.inc86
    i32 10, label %sw.bb79
  ]

sw.bb:                                            ; preds = %for.body11
  %inc18 = add nsw i32 %nins.0708, 1
  br label %for.inc86

sw.bb19:                                          ; preds = %for.body11
  %9 = add nsw i64 %indvars.iv749, -1
  %arrayidx24 = getelementptr inbounds i8* %7, i64 %9
  %10 = load i8* %arrayidx24, align 1, !tbaa !1
  %cmp26 = icmp eq i8 %10, 5
  %inc28 = zext i1 %cmp26 to i32
  %inc28.nins.0 = add nsw i32 %inc28, %nins.0708
  br label %for.inc86

sw.bb29:                                          ; preds = %for.body11
  %11 = add nsw i64 %indvars.iv749, -1
  %arrayidx35 = getelementptr inbounds i8* %7, i64 %11
  %12 = load i8* %arrayidx35, align 1, !tbaa !1
  %cmp37 = icmp eq i8 %12, 8
  %inc40 = zext i1 %cmp37 to i32
  %inc40.nins.0 = add nsw i32 %inc40, %nins.0708
  br label %for.inc86

sw.bb42:                                          ; preds = %for.body11, %for.body11
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 2
  %13 = load i32** %nodeidx, align 8, !tbaa !0
  %arrayidx46 = getelementptr inbounds i32* %13, i64 %indvars.iv749
  %14 = load i32* %arrayidx46, align 4, !tbaa !3
  %sub47 = add nsw i32 %14, -1
  %idxprom48 = sext i32 %sub47 to i64
  %arrayidx49 = getelementptr inbounds i32* %0, i64 %idxprom48
  %15 = load i32* %arrayidx49, align 4, !tbaa !3
  %cmp50 = icmp sgt i32 %nins.0708, %15
  br i1 %cmp50, label %if.then52, label %for.inc86

if.then52:                                        ; preds = %sw.bb42
  store i32 %nins.0708, i32* %arrayidx49, align 4, !tbaa !3
  br label %for.inc86

sw.bb62:                                          ; preds = %for.body11
  %16 = load i32* %0, align 4, !tbaa !3
  %cmp64 = icmp sgt i32 %nins.0708, %16
  br i1 %cmp64, label %if.then66, label %for.inc86

if.then66:                                        ; preds = %sw.bb62
  store i32 %nins.0708, i32* %0, align 4, !tbaa !3
  br label %for.inc86

sw.bb69:                                          ; preds = %for.body11
  %17 = load i32* %arrayidx71, align 4, !tbaa !3
  %cmp72 = icmp sgt i32 %nins.0708, %17
  br i1 %cmp72, label %if.then74, label %for.inc86

if.then74:                                        ; preds = %sw.bb69
  store i32 %nins.0708, i32* %arrayidx71, align 4, !tbaa !3
  br label %for.inc86

sw.bb79:                                          ; preds = %for.body11
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0)) #6
  %.pre763 = load %struct.p7trace_s** %arrayidx8, align 8, !tbaa !0
  %statetype83.phi.trans.insert = getelementptr inbounds %struct.p7trace_s* %.pre763, i64 0, i32 1
  %.pre764 = load i8** %statetype83.phi.trans.insert, align 8, !tbaa !0
  %arrayidx84.phi.trans.insert = getelementptr inbounds i8* %.pre764, i64 %indvars.iv749
  %.pre765 = load i8* %arrayidx84.phi.trans.insert, align 1, !tbaa !1
  br label %sw.default

sw.default:                                       ; preds = %for.body11, %sw.bb79
  %18 = phi i8 [ %8, %for.body11 ], [ %.pre765, %sw.bb79 ]
  %call85 = tail call i8* @Statetype(i8 signext %18) #6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i8* %call85) #6
  %.pre766 = load %struct.p7trace_s** %arrayidx8, align 8, !tbaa !0
  br label %for.inc86

for.inc86:                                        ; preds = %sw.bb29, %sw.bb19, %sw.bb62, %if.then66, %sw.bb42, %if.then52, %sw.bb, %sw.default, %if.then74, %sw.bb69, %for.body11, %for.body11
  %19 = phi %struct.p7trace_s* [ %.pre766, %sw.default ], [ %6, %for.body11 ], [ %6, %for.body11 ], [ %6, %if.then74 ], [ %6, %sw.bb69 ], [ %6, %sw.bb ], [ %6, %sw.bb19 ], [ %6, %sw.bb29 ], [ %6, %if.then52 ], [ %6, %sw.bb42 ], [ %6, %if.then66 ], [ %6, %sw.bb62 ]
  %nins.1 = phi i32 [ %nins.0708, %sw.default ], [ %nins.0708, %for.body11 ], [ %nins.0708, %for.body11 ], [ %nins.0708, %if.then74 ], [ %nins.0708, %sw.bb69 ], [ %inc18, %sw.bb ], [ %inc28.nins.0, %sw.bb19 ], [ %inc40.nins.0, %sw.bb29 ], [ 0, %if.then52 ], [ 0, %sw.bb42 ], [ 0, %if.then66 ], [ 0, %sw.bb62 ]
  %indvars.iv.next750 = add i64 %indvars.iv749, 1
  %tlen = getelementptr inbounds %struct.p7trace_s* %19, i64 0, i32 0
  %20 = load i32* %tlen, align 4, !tbaa !3
  %21 = trunc i64 %indvars.iv.next750 to i32
  %cmp9 = icmp slt i32 %21, %20
  br i1 %cmp9, label %for.body11, label %for.inc89

for.inc89:                                        ; preds = %for.inc86, %for.cond6.preheader
  %indvars.iv.next754 = add i64 %indvars.iv753, 1
  %lftr.wideiv755 = trunc i64 %indvars.iv.next754 to i32
  %exitcond756 = icmp eq i32 %lftr.wideiv755, %nseq
  br i1 %exitcond756, label %for.end91, label %for.cond6.preheader

for.end91:                                        ; preds = %for.inc89, %for.cond2.preheader
  %tobool = icmp ne i32 %matchonly, 0
  %tobool.not = xor i1 %tobool, true
  %brmerge = or i1 %cmp711, %tobool.not
  br i1 %brmerge, label %if.end108, label %for.body96

for.body96:                                       ; preds = %for.end91, %for.inc105
  %indvars.iv745 = phi i64 [ %indvars.iv.next746, %for.inc105 ], [ 0, %for.end91 ]
  %arrayidx98 = getelementptr inbounds i32* %0, i64 %indvars.iv745
  %22 = load i32* %arrayidx98, align 4, !tbaa !3
  %cmp99 = icmp sgt i32 %22, 1
  br i1 %cmp99, label %if.then101, label %for.inc105

if.then101:                                       ; preds = %for.body96
  store i32 1, i32* %arrayidx98, align 4, !tbaa !3
  br label %for.inc105

for.inc105:                                       ; preds = %for.body96, %if.then101
  %indvars.iv.next746 = add i64 %indvars.iv745, 1
  %lftr.wideiv747 = trunc i64 %indvars.iv.next746 to i32
  %exitcond748 = icmp eq i32 %lftr.wideiv747, %add
  br i1 %exitcond748, label %if.end108, label %for.body96

if.end108:                                        ; preds = %for.end91, %for.inc105
  %call112 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 453, i64 %mul) #6
  %23 = bitcast i8* %call112 to i32*
  store i32 -1, i32* %23, align 4, !tbaa !3
  %24 = load i32* %0, align 4, !tbaa !3
  %cmp116700 = icmp slt i32 %mlen, 1
  br i1 %cmp116700, label %for.end127, label %for.body118

for.body118:                                      ; preds = %if.end108, %for.body118
  %indvars.iv741 = phi i64 [ %indvars.iv.next742, %for.body118 ], [ 1, %if.end108 ]
  %alen.0702 = phi i32 [ %add124, %for.body118 ], [ %24, %if.end108 ]
  %arrayidx120 = getelementptr inbounds i32* %23, i64 %indvars.iv741
  store i32 %alen.0702, i32* %arrayidx120, align 4, !tbaa !3
  %arrayidx122 = getelementptr inbounds i32* %0, i64 %indvars.iv741
  %25 = load i32* %arrayidx122, align 4, !tbaa !3
  %add123 = add i32 %alen.0702, 1
  %add124 = add i32 %add123, %25
  %indvars.iv.next742 = add i64 %indvars.iv741, 1
  %lftr.wideiv743 = trunc i64 %indvars.iv.next742 to i32
  %exitcond744 = icmp eq i32 %lftr.wideiv743, %add
  br i1 %exitcond744, label %for.end127, label %for.body118

for.end127:                                       ; preds = %for.body118, %if.end108
  %alen.0.lcssa = phi i32 [ %24, %if.end108 ], [ %add124, %for.body118 ]
  %call128 = tail call %struct.msa_struct* @MSAAlloc(i32 %nseq, i32 %alen.0.lcssa) #6
  br i1 %cmp3709, label %for.cond133.preheader.lr.ph, label %for.end431.critedge

for.cond133.preheader.lr.ph:                      ; preds = %for.end127
  %cmp134688 = icmp sgt i32 %alen.0.lcssa, 0
  %idxprom158 = sext i32 %alen.0.lcssa to i64
  %aseq160 = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 0
  %cmp294696 = icmp sgt i32 %mlen, 1
  %idxprom276 = sext i32 %mlen to i64
  %arrayidx277 = getelementptr inbounds i32* %23, i64 %idxprom276
  br label %for.cond133.preheader

for.cond133.preheader:                            ; preds = %for.inc338, %for.cond133.preheader.lr.ph
  %indvars.iv737 = phi i64 [ 0, %for.cond133.preheader.lr.ph ], [ %indvars.iv.next738, %for.inc338 ]
  br i1 %cmp134688, label %for.body136, label %for.cond144.loopexit

for.body136:                                      ; preds = %for.cond133.preheader, %for.body136
  %indvars.iv721 = phi i64 [ %indvars.iv.next722, %for.body136 ], [ 0, %for.cond133.preheader ]
  %26 = load i8*** %aseq160, align 8, !tbaa !0
  %arrayidx139 = getelementptr inbounds i8** %26, i64 %indvars.iv737
  %27 = load i8** %arrayidx139, align 8, !tbaa !0
  %arrayidx140 = getelementptr inbounds i8* %27, i64 %indvars.iv721
  store i8 46, i8* %arrayidx140, align 1, !tbaa !1
  %indvars.iv.next722 = add i64 %indvars.iv721, 1
  %lftr.wideiv723 = trunc i64 %indvars.iv.next722 to i32
  %exitcond724 = icmp eq i32 %lftr.wideiv723, %alen.0.lcssa
  br i1 %exitcond724, label %for.cond144.loopexit, label %for.body136

for.cond144.loopexit:                             ; preds = %for.body136, %for.cond133.preheader
  br i1 %cmp116700, label %for.end157, label %for.body147

for.body147:                                      ; preds = %for.cond144.loopexit, %for.body147
  %indvars.iv725 = phi i64 [ %indvars.iv.next726, %for.body147 ], [ 1, %for.cond144.loopexit ]
  %arrayidx149 = getelementptr inbounds i32* %23, i64 %indvars.iv725
  %28 = load i32* %arrayidx149, align 4, !tbaa !3
  %idxprom150 = sext i32 %28 to i64
  %29 = load i8*** %aseq160, align 8, !tbaa !0
  %arrayidx153 = getelementptr inbounds i8** %29, i64 %indvars.iv737
  %30 = load i8** %arrayidx153, align 8, !tbaa !0
  %arrayidx154 = getelementptr inbounds i8* %30, i64 %idxprom150
  store i8 45, i8* %arrayidx154, align 1, !tbaa !1
  %indvars.iv.next726 = add i64 %indvars.iv725, 1
  %lftr.wideiv727 = trunc i64 %indvars.iv.next726 to i32
  %exitcond728 = icmp eq i32 %lftr.wideiv727, %add
  br i1 %exitcond728, label %for.end157, label %for.body147

for.end157:                                       ; preds = %for.body147, %for.cond144.loopexit
  %31 = load i8*** %aseq160, align 8, !tbaa !0
  %arrayidx161 = getelementptr inbounds i8** %31, i64 %indvars.iv737
  %32 = load i8** %arrayidx161, align 8, !tbaa !0
  %arrayidx162 = getelementptr inbounds i8* %32, i64 %idxprom158
  store i8 0, i8* %arrayidx162, align 1, !tbaa !1
  %arrayidx165 = getelementptr inbounds %struct.p7trace_s** %tr, i64 %indvars.iv737
  %33 = load %struct.p7trace_s** %arrayidx165, align 8, !tbaa !0
  %tlen166692 = getelementptr inbounds %struct.p7trace_s* %33, i64 0, i32 0
  %34 = load i32* %tlen166692, align 4, !tbaa !3
  %cmp167693 = icmp sgt i32 %34, 0
  br i1 %cmp167693, label %for.body169.lr.ph, label %for.end286

for.body169.lr.ph:                                ; preds = %for.end157
  %arrayidx192 = getelementptr inbounds i8** %dsq, i64 %indvars.iv737
  br label %for.body169

for.body169:                                      ; preds = %for.body169.lr.ph, %for.inc284
  %indvars.iv729 = phi i64 [ 0, %for.body169.lr.ph ], [ %indvars.iv.next730, %for.inc284 ]
  %35 = phi %struct.p7trace_s* [ %33, %for.body169.lr.ph ], [ %64, %for.inc284 ]
  %apos.1694 = phi i32 [ 0, %for.body169.lr.ph ], [ %apos.2, %for.inc284 ]
  %statetype173 = getelementptr inbounds %struct.p7trace_s* %35, i64 0, i32 1
  %36 = load i8** %statetype173, align 8, !tbaa !0
  %arrayidx174 = getelementptr inbounds i8* %36, i64 %indvars.iv729
  %37 = load i8* %arrayidx174, align 1, !tbaa !1
  %pos = getelementptr inbounds %struct.p7trace_s* %35, i64 0, i32 3
  %38 = load i32** %pos, align 8, !tbaa !0
  %arrayidx179 = getelementptr inbounds i32* %38, i64 %indvars.iv729
  %39 = load i32* %arrayidx179, align 4, !tbaa !3
  %nodeidx183 = getelementptr inbounds %struct.p7trace_s* %35, i64 0, i32 2
  %40 = load i32** %nodeidx183, align 8, !tbaa !0
  %arrayidx184 = getelementptr inbounds i32* %40, i64 %indvars.iv729
  %41 = load i32* %arrayidx184, align 4, !tbaa !3
  switch i8 %37, label %for.inc284 [
    i8 1, label %if.then187
    i8 2, label %if.then205
    i8 3, label %if.then212
    i8 8, label %land.lhs.true
    i8 5, label %land.lhs.true
    i8 7, label %if.then275
  ]

if.then187:                                       ; preds = %for.body169
  %idxprom188 = sext i32 %41 to i64
  %arrayidx189 = getelementptr inbounds i32* %23, i64 %idxprom188
  %42 = load i32* %arrayidx189, align 4, !tbaa !3
  %idxprom190 = sext i32 %39 to i64
  %43 = load i8** %arrayidx192, align 8, !tbaa !0
  %arrayidx193 = getelementptr inbounds i8* %43, i64 %idxprom190
  %44 = load i8* %arrayidx193, align 1, !tbaa !1
  %idxprom195 = sext i8 %44 to i64
  %arrayidx196 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom195
  %45 = load i8* %arrayidx196, align 1, !tbaa !1
  %idxprom197 = sext i32 %42 to i64
  %46 = load i8*** %aseq160, align 8, !tbaa !0
  %arrayidx200 = getelementptr inbounds i8** %46, i64 %indvars.iv737
  %47 = load i8** %arrayidx200, align 8, !tbaa !0
  %arrayidx201 = getelementptr inbounds i8* %47, i64 %idxprom197
  store i8 %45, i8* %arrayidx201, align 1, !tbaa !1
  %inc202 = add nsw i32 %42, 1
  br label %for.inc284

if.then205:                                       ; preds = %for.body169
  %idxprom206 = sext i32 %41 to i64
  %arrayidx207 = getelementptr inbounds i32* %23, i64 %idxprom206
  %48 = load i32* %arrayidx207, align 4, !tbaa !3
  %add208 = add nsw i32 %48, 1
  br label %for.inc284

if.then212:                                       ; preds = %for.body169
  br i1 %tobool, label %if.then214, label %if.else220

if.then214:                                       ; preds = %if.then212
  %idxprom215 = sext i32 %apos.1694 to i64
  %49 = load i8*** %aseq160, align 8, !tbaa !0
  %arrayidx218 = getelementptr inbounds i8** %49, i64 %indvars.iv737
  %50 = load i8** %arrayidx218, align 8, !tbaa !0
  %arrayidx219 = getelementptr inbounds i8* %50, i64 %idxprom215
  store i8 42, i8* %arrayidx219, align 1, !tbaa !1
  br label %for.inc284

if.else220:                                       ; preds = %if.then212
  %idxprom221 = sext i32 %39 to i64
  %51 = load i8** %arrayidx192, align 8, !tbaa !0
  %arrayidx224 = getelementptr inbounds i8* %51, i64 %idxprom221
  %52 = load i8* %arrayidx224, align 1, !tbaa !1
  %idxprom226 = sext i8 %52 to i64
  %arrayidx227 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom226
  %53 = load i8* %arrayidx227, align 1, !tbaa !1
  %conv228 = sext i8 %53 to i32
  %call229 = tail call i32 @tolower(i32 %conv228) #6
  %conv230 = trunc i32 %call229 to i8
  %idxprom231 = sext i32 %apos.1694 to i64
  %54 = load i8*** %aseq160, align 8, !tbaa !0
  %arrayidx234 = getelementptr inbounds i8** %54, i64 %indvars.iv737
  %55 = load i8** %arrayidx234, align 8, !tbaa !0
  %arrayidx235 = getelementptr inbounds i8* %55, i64 %idxprom231
  store i8 %conv230, i8* %arrayidx235, align 1, !tbaa !1
  %inc236 = add nsw i32 %apos.1694, 1
  br label %for.inc284

land.lhs.true:                                    ; preds = %for.body169, %for.body169
  %cmp243 = icmp sgt i32 %39, 0
  br i1 %cmp243, label %if.then245, label %if.else272

if.then245:                                       ; preds = %land.lhs.true
  br i1 %tobool, label %if.then247, label %if.else253

if.then247:                                       ; preds = %if.then245
  %idxprom248 = sext i32 %apos.1694 to i64
  %56 = load i8*** %aseq160, align 8, !tbaa !0
  %arrayidx251 = getelementptr inbounds i8** %56, i64 %indvars.iv737
  %57 = load i8** %arrayidx251, align 8, !tbaa !0
  %arrayidx252 = getelementptr inbounds i8* %57, i64 %idxprom248
  store i8 42, i8* %arrayidx252, align 1, !tbaa !1
  br label %for.inc284

if.else253:                                       ; preds = %if.then245
  %idxprom255 = sext i32 %39 to i64
  %58 = load i8** %arrayidx192, align 8, !tbaa !0
  %arrayidx258 = getelementptr inbounds i8* %58, i64 %idxprom255
  %59 = load i8* %arrayidx258, align 1, !tbaa !1
  %idxprom260 = sext i8 %59 to i64
  %arrayidx261 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom260
  %60 = load i8* %arrayidx261, align 1, !tbaa !1
  %conv262 = sext i8 %60 to i32
  %call263 = tail call i32 @tolower(i32 %conv262) #6
  %conv264 = trunc i32 %call263 to i8
  %idxprom265 = sext i32 %apos.1694 to i64
  %61 = load i8*** %aseq160, align 8, !tbaa !0
  %arrayidx268 = getelementptr inbounds i8** %61, i64 %indvars.iv737
  %62 = load i8** %arrayidx268, align 8, !tbaa !0
  %arrayidx269 = getelementptr inbounds i8* %62, i64 %idxprom265
  store i8 %conv264, i8* %arrayidx269, align 1, !tbaa !1
  %inc270 = add nsw i32 %apos.1694, 1
  br label %for.inc284

if.else272:                                       ; preds = %land.lhs.true
  %cmp273 = icmp eq i8 %37, 7
  br i1 %cmp273, label %if.then275, label %for.inc284

if.then275:                                       ; preds = %if.else272, %for.body169
  %63 = load i32* %arrayidx277, align 4, !tbaa !3
  %add278 = add nsw i32 %63, 1
  br label %for.inc284

for.inc284:                                       ; preds = %for.body169, %if.then187, %if.else220, %if.then214, %if.else272, %if.then275, %if.then247, %if.else253, %if.then205
  %apos.2 = phi i32 [ %inc202, %if.then187 ], [ %add208, %if.then205 ], [ %apos.1694, %if.then214 ], [ %inc236, %if.else220 ], [ %apos.1694, %if.then247 ], [ %inc270, %if.else253 ], [ %add278, %if.then275 ], [ %apos.1694, %if.else272 ], [ %apos.1694, %for.body169 ]
  %indvars.iv.next730 = add i64 %indvars.iv729, 1
  %64 = load %struct.p7trace_s** %arrayidx165, align 8, !tbaa !0
  %tlen166 = getelementptr inbounds %struct.p7trace_s* %64, i64 0, i32 0
  %65 = load i32* %tlen166, align 4, !tbaa !3
  %66 = trunc i64 %indvars.iv.next730 to i32
  %cmp167 = icmp slt i32 %66, %65
  br i1 %cmp167, label %for.body169, label %for.end286

for.end286:                                       ; preds = %for.inc284, %for.end157
  br i1 %tobool, label %for.inc338, label %if.then288

if.then288:                                       ; preds = %for.end286
  %67 = load i8*** %aseq160, align 8, !tbaa !0
  %arrayidx291 = getelementptr inbounds i8** %67, i64 %indvars.iv737
  %68 = load i8** %arrayidx291, align 8, !tbaa !0
  %69 = load i32* %0, align 4, !tbaa !3
  tail call fastcc void @rightjustify(i8* %68, i32 %69) #7
  br i1 %cmp294696, label %for.body296, label %for.inc338

for.body296:                                      ; preds = %if.then288, %for.inc334
  %indvars.iv733 = phi i64 [ %indvars.iv.next734, %for.inc334 ], [ 1, %if.then288 ]
  %arrayidx298 = getelementptr inbounds i32* %0, i64 %indvars.iv733
  %70 = load i32* %arrayidx298, align 4, !tbaa !3
  %cmp299 = icmp sgt i32 %70, 1
  br i1 %cmp299, label %if.then301, label %for.inc334

if.then301:                                       ; preds = %for.body296
  %arrayidx303 = getelementptr inbounds i32* %23, i64 %indvars.iv733
  %71 = load i32* %arrayidx303, align 4, !tbaa !3
  %72 = load i8*** %aseq160, align 8, !tbaa !0
  %arrayidx309 = getelementptr inbounds i8** %72, i64 %indvars.iv737
  %73 = load i8** %arrayidx309, align 8, !tbaa !0
  %call313 = tail call i16** @__ctype_b_loc() #8
  %74 = load i16** %call313, align 8, !tbaa !0
  %75 = sext i32 %71 to i64
  br label %for.cond305

for.cond305:                                      ; preds = %for.cond305, %if.then301
  %indvars.iv731 = phi i64 [ %indvars.iv.next732, %for.cond305 ], [ %75, %if.then301 ]
  %nins.2 = phi i32 [ %inc318, %for.cond305 ], [ 0, %if.then301 ]
  %indvars.iv.next732 = add i64 %indvars.iv731, 1
  %arrayidx310 = getelementptr inbounds i8* %73, i64 %indvars.iv.next732
  %76 = load i8* %arrayidx310, align 1, !tbaa !1
  %idxprom312 = sext i8 %76 to i64
  %arrayidx314 = getelementptr inbounds i16* %74, i64 %idxprom312
  %77 = load i16* %arrayidx314, align 2, !tbaa !5
  %and = and i16 %77, 512
  %tobool316 = icmp eq i16 %and, 0
  %inc318 = add nsw i32 %nins.2, 1
  br i1 %tobool316, label %for.end321, label %for.cond305

for.end321:                                       ; preds = %for.cond305
  %div = sdiv i32 %nins.2, 2
  %idx.ext328 = sext i32 %div to i64
  %add.ptr.sum = add i64 %idx.ext328, 1
  %add.ptr327.sum = add i64 %add.ptr.sum, %75
  %add.ptr329 = getelementptr inbounds i8* %73, i64 %add.ptr327.sum
  %sub332 = sub nsw i32 %70, %div
  tail call fastcc void @rightjustify(i8* %add.ptr329, i32 %sub332) #7
  br label %for.inc334

for.inc334:                                       ; preds = %for.body296, %for.end321
  %indvars.iv.next734 = add i64 %indvars.iv733, 1
  %lftr.wideiv735 = trunc i64 %indvars.iv.next734 to i32
  %exitcond736 = icmp eq i32 %lftr.wideiv735, %mlen
  br i1 %exitcond736, label %for.inc338, label %for.body296

for.inc338:                                       ; preds = %if.then288, %for.inc334, %for.end286
  %indvars.iv.next738 = add i64 %indvars.iv737, 1
  %lftr.wideiv739 = trunc i64 %indvars.iv.next738 to i32
  %exitcond740 = icmp eq i32 %lftr.wideiv739, %nseq
  br i1 %exitcond740, label %for.end340, label %for.cond133.preheader

for.end340:                                       ; preds = %for.inc338
  %nseq341 = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 4
  store i32 %nseq, i32* %nseq341, align 4, !tbaa !3
  %alen342 = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 3
  store i32 %alen.0.lcssa, i32* %alen342, align 4, !tbaa !3
  %call343 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 529, i64 10) #6
  %au = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 10
  store i8* %call343, i8** %au, align 8, !tbaa !0
  %call345 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %call343, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0)) #6
  br i1 %cmp3709, label %for.body349.lr.ph, label %for.end431

for.body349.lr.ph:                                ; preds = %for.end340
  %sqname = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 1
  %wgt427 = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 2
  %sa = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 17
  %conv408 = sext i32 %nseq to i64
  %mul409 = shl nsw i64 %conv408, 3
  %aseq414 = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 0
  %ss = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 16
  br label %for.body349

for.body349:                                      ; preds = %if.end423, %for.body349.lr.ph
  %indvars.iv717 = phi i64 [ 0, %for.body349.lr.ph ], [ %indvars.iv.next718, %if.end423 ]
  %arraydecay = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv717, i32 1, i64 0
  %call352 = tail call i8* @sre_strdup(i8* %arraydecay, i32 -1) #6
  %78 = load i8*** %sqname, align 8, !tbaa !0
  %arrayidx354 = getelementptr inbounds i8** %78, i64 %indvars.iv717
  store i8* %call352, i8** %arrayidx354, align 8, !tbaa !0
  %flags = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv717, i32 0
  %79 = load i32* %flags, align 4, !tbaa !3
  %and357 = and i32 %79, 4
  %tobool358 = icmp eq i32 %and357, 0
  br i1 %tobool358, label %if.end363, label %if.then359

if.then359:                                       ; preds = %for.body349
  %arraydecay362 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv717, i32 3, i64 0
  %80 = trunc i64 %indvars.iv717 to i32
  tail call void @MSASetSeqAccession(%struct.msa_struct* %call128, i32 %80, i8* %arraydecay362) #6
  %.pre = load i32* %flags, align 4, !tbaa !3
  br label %if.end363

if.end363:                                        ; preds = %for.body349, %if.then359
  %81 = phi i32 [ %79, %for.body349 ], [ %.pre, %if.then359 ]
  %and367 = and i32 %81, 8
  %tobool368 = icmp eq i32 %and367, 0
  br i1 %tobool368, label %if.end373, label %if.then369

if.then369:                                       ; preds = %if.end363
  %arraydecay372 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv717, i32 4, i64 0
  %82 = trunc i64 %indvars.iv717 to i32
  tail call void @MSASetSeqDescription(%struct.msa_struct* %call128, i32 %82, i8* %arraydecay372) #6
  %.pre761 = load i32* %flags, align 4, !tbaa !3
  br label %if.end373

if.end373:                                        ; preds = %if.end363, %if.then369
  %83 = phi i32 [ %81, %if.end363 ], [ %.pre761, %if.then369 ]
  %and377 = and i32 %83, 512
  %tobool378 = icmp eq i32 %and377, 0
  br i1 %tobool378, label %if.end398, label %if.then379

if.then379:                                       ; preds = %if.end373
  %84 = load i8*** %ss, align 8, !tbaa !0
  %cmp380 = icmp eq i8** %84, null
  br i1 %cmp380, label %if.then382, label %if.end387

if.then382:                                       ; preds = %if.then379
  %call385 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 541, i64 %mul409) #6
  %85 = bitcast i8* %call385 to i8**
  store i8** %85, i8*** %ss, align 8, !tbaa !0
  br label %if.end387

if.end387:                                        ; preds = %if.then382, %if.then379
  %86 = phi i8** [ %85, %if.then382 ], [ %84, %if.then379 ]
  %87 = load i8*** %aseq414, align 8, !tbaa !0
  %arrayidx390 = getelementptr inbounds i8** %87, i64 %indvars.iv717
  %88 = load i8** %arrayidx390, align 8, !tbaa !0
  %ss393 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv717, i32 10
  %89 = load i8** %ss393, align 8, !tbaa !0
  %arrayidx396 = getelementptr inbounds i8** %86, i64 %indvars.iv717
  %call397 = tail call i32 @MakeAlignedString(i8* %88, i32 %alen.0.lcssa, i8* %89, i8** %arrayidx396) #6
  %.pre762 = load i32* %flags, align 4, !tbaa !3
  br label %if.end398

if.end398:                                        ; preds = %if.end373, %if.end387
  %90 = phi i32 [ %83, %if.end373 ], [ %.pre762, %if.end387 ]
  %and402 = and i32 %90, 1024
  %tobool403 = icmp eq i32 %and402, 0
  br i1 %tobool403, label %if.end423, label %if.then404

if.then404:                                       ; preds = %if.end398
  %91 = load i8*** %sa, align 8, !tbaa !0
  %cmp405 = icmp eq i8** %91, null
  br i1 %cmp405, label %if.then407, label %if.end412

if.then407:                                       ; preds = %if.then404
  %call410 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 546, i64 %mul409) #6
  %92 = bitcast i8* %call410 to i8**
  store i8** %92, i8*** %sa, align 8, !tbaa !0
  br label %if.end412

if.end412:                                        ; preds = %if.then407, %if.then404
  %93 = phi i8** [ %92, %if.then407 ], [ %91, %if.then404 ]
  %94 = load i8*** %aseq414, align 8, !tbaa !0
  %arrayidx415 = getelementptr inbounds i8** %94, i64 %indvars.iv717
  %95 = load i8** %arrayidx415, align 8, !tbaa !0
  %sa418 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv717, i32 11
  %96 = load i8** %sa418, align 8, !tbaa !0
  %arrayidx421 = getelementptr inbounds i8** %93, i64 %indvars.iv717
  %call422 = tail call i32 @MakeAlignedString(i8* %95, i32 %alen.0.lcssa, i8* %96, i8** %arrayidx421) #6
  br label %if.end423

if.end423:                                        ; preds = %if.end398, %if.end412
  %arrayidx425 = getelementptr inbounds float* %wgt, i64 %indvars.iv717
  %97 = load float* %arrayidx425, align 4, !tbaa !4
  %98 = load float** %wgt427, align 8, !tbaa !0
  %arrayidx428 = getelementptr inbounds float* %98, i64 %indvars.iv717
  store float %97, float* %arrayidx428, align 4, !tbaa !4
  %indvars.iv.next718 = add i64 %indvars.iv717, 1
  %lftr.wideiv719 = trunc i64 %indvars.iv.next718 to i32
  %exitcond720 = icmp eq i32 %lftr.wideiv719, %nseq
  br i1 %exitcond720, label %for.end431, label %for.body349

for.end431.critedge:                              ; preds = %for.end127
  %nseq341.c = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 4
  store i32 %nseq, i32* %nseq341.c, align 4, !tbaa !3
  %alen342.c = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 3
  store i32 %alen.0.lcssa, i32* %alen342.c, align 4, !tbaa !3
  %call343.c = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 529, i64 10) #6
  %au.c = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 10
  store i8* %call343.c, i8** %au.c, align 8, !tbaa !0
  %call345.c = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %call343.c, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0)) #6
  br label %for.end431

for.end431:                                       ; preds = %for.end431.critedge, %if.end423, %for.end340
  %add432 = add nsw i32 %alen.0.lcssa, 1
  %conv433 = sext i32 %add432 to i64
  %call435 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 555, i64 %conv433) #6
  %rf = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 13
  store i8* %call435, i8** %rf, align 8, !tbaa !0
  %cmp437684 = icmp sgt i32 %alen.0.lcssa, 0
  br i1 %cmp437684, label %for.body439, label %for.cond446.preheader

for.cond446.preheader:                            ; preds = %for.body439, %for.end431
  br i1 %cmp116700, label %for.end457, label %for.body449

for.body439:                                      ; preds = %for.end431, %for.body439.for.body439_crit_edge
  %99 = phi i8* [ %.pre767, %for.body439.for.body439_crit_edge ], [ %call435, %for.end431 ]
  %indvars.iv713 = phi i64 [ %indvars.iv.next714, %for.body439.for.body439_crit_edge ], [ 0, %for.end431 ]
  %arrayidx442 = getelementptr inbounds i8* %99, i64 %indvars.iv713
  store i8 46, i8* %arrayidx442, align 1, !tbaa !1
  %indvars.iv.next714 = add i64 %indvars.iv713, 1
  %lftr.wideiv715 = trunc i64 %indvars.iv.next714 to i32
  %exitcond716 = icmp eq i32 %lftr.wideiv715, %alen.0.lcssa
  br i1 %exitcond716, label %for.cond446.preheader, label %for.body439.for.body439_crit_edge

for.body439.for.body439_crit_edge:                ; preds = %for.body439
  %.pre767 = load i8** %rf, align 8, !tbaa !0
  br label %for.body439

for.body449:                                      ; preds = %for.body449, %for.cond446.preheader
  %indvars.iv = phi i64 [ 1, %for.cond446.preheader ], [ %indvars.iv.next, %for.body449 ]
  %arrayidx451 = getelementptr inbounds i32* %23, i64 %indvars.iv
  %100 = load i32* %arrayidx451, align 4, !tbaa !3
  %idxprom452 = sext i32 %100 to i64
  %101 = load i8** %rf, align 8, !tbaa !0
  %arrayidx454 = getelementptr inbounds i8* %101, i64 %idxprom452
  store i8 120, i8* %arrayidx454, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %add
  br i1 %exitcond, label %for.end457, label %for.body449

for.end457:                                       ; preds = %for.body449, %for.cond446.preheader
  %idxprom458 = sext i32 %alen.0.lcssa to i64
  %102 = load i8** %rf, align 8, !tbaa !0
  %arrayidx460 = getelementptr inbounds i8* %102, i64 %idxprom458
  store i8 0, i8* %arrayidx460, align 1, !tbaa !1
  tail call void @free(i8* %call) #6
  tail call void @free(i8* %call112) #6
  ret %struct.msa_struct* %call128
}

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @tolower(i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @rightjustify(i8* nocapture %s, i32 %n) #0 {
entry:
  %sub = add nsw i32 %n, -1
  %cmp6165 = icmp sgt i32 %n, 0
  br i1 %cmp6165, label %while.body.lr.ph.lr.ph, label %while.cond33.preheader

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %0 = sext i32 %n to i64
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.else
  %indvars.iv73.in = phi i64 [ %0, %while.body.lr.ph.lr.ph ], [ %indvars.iv73, %if.else ]
  %opos.0.ph67 = phi i32 [ %sub, %while.body.lr.ph.lr.ph ], [ %dec27, %if.else ]
  %npos.0.ph66 = phi i32 [ %sub, %while.body.lr.ph.lr.ph ], [ %dec30, %if.else ]
  %indvars.iv73 = add i64 %indvars.iv73.in, -1
  %1 = sext i32 %opos.0.ph67 to i64
  br label %while.body

while.cond33.preheader:                           ; preds = %entry, %if.else, %if.then
  %npos.0.ph64 = phi i32 [ %npos.0.ph66, %if.then ], [ %sub, %entry ], [ %dec30, %if.else ]
  %cmp3458 = icmp sgt i32 %npos.0.ph64, -1
  br i1 %cmp3458, label %while.body36.lr.ph, label %while.end40

while.body36.lr.ph:                               ; preds = %while.cond33.preheader
  %2 = sext i32 %npos.0.ph64 to i64
  br label %while.body36

while.body:                                       ; preds = %while.body.lr.ph, %if.then
  %indvars.iv70 = phi i64 [ %1, %while.body.lr.ph ], [ %indvars.iv.next71, %if.then ]
  %opos.062 = phi i32 [ %opos.0.ph67, %while.body.lr.ph ], [ %dec, %if.then ]
  %arrayidx = getelementptr inbounds i8* %s, i64 %indvars.iv70
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  switch i8 %3, label %if.else [
    i8 32, label %if.then
    i8 46, label %if.then
    i8 95, label %if.then
    i8 45, label %if.then
    i8 126, label %if.then
  ]

if.then:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  %indvars.iv.next71 = add i64 %indvars.iv70, -1
  %dec = add nsw i32 %opos.062, -1
  %4 = trunc i64 %indvars.iv70 to i32
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %while.body, label %while.cond33.preheader

if.else:                                          ; preds = %while.body
  %dec27 = add nsw i32 %opos.062, -1
  %dec30 = add nsw i32 %npos.0.ph66, -1
  %arrayidx32 = getelementptr inbounds i8* %s, i64 %indvars.iv73
  store i8 %3, i8* %arrayidx32, align 1, !tbaa !1
  %cmp61 = icmp sgt i32 %opos.062, 0
  br i1 %cmp61, label %while.body.lr.ph, label %while.cond33.preheader

while.body36:                                     ; preds = %while.body36.lr.ph, %while.body36
  %indvars.iv = phi i64 [ %2, %while.body36.lr.ph ], [ %indvars.iv.next, %while.body36 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %arrayidx39 = getelementptr inbounds i8* %s, i64 %indvars.iv
  store i8 46, i8* %arrayidx39, align 1, !tbaa !1
  %5 = trunc i64 %indvars.iv to i32
  %cmp34 = icmp sgt i32 %5, 0
  br i1 %cmp34, label %while.body36, label %while.end40

while.end40:                                      ; preds = %while.body36, %while.cond33.preheader
  ret void
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #1

; Function Attrs: optsize
declare void @MSASetSeqAccession(%struct.msa_struct*, i32, i8*) #1

; Function Attrs: optsize
declare void @MSASetSeqDescription(%struct.msa_struct*, i32, i8*) #1

; Function Attrs: optsize
declare i32 @MakeAlignedString(i8*, i32, i8*, i8**) #1

; Function Attrs: optsize
declare i32 @Prob2Score(float, float) #1

; Function Attrs: nounwind optsize uwtable
define %struct.fancyali_s* @CreateFancyAli(%struct.p7trace_s* nocapture %tr, %struct.plan7_s* nocapture %hmm, i8* nocapture %dsq, i8* %name) #0 {
entry:
  %call = tail call %struct.fancyali_s* @AllocFancyAli() #6
  %rfline = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 0
  %csline = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 1
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0
  %0 = bitcast %struct.fancyali_s* %call to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  %1 = load i32* %tlen, align 4, !tbaa !3
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 680, i64 %conv) #6
  %model = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 2
  store i8* %call1, i8** %model, align 8, !tbaa !0
  %2 = load i32* %tlen, align 4, !tbaa !3
  %add3 = add nsw i32 %2, 1
  %conv4 = sext i32 %add3 to i64
  %call6 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 681, i64 %conv4) #6
  %mline = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 3
  store i8* %call6, i8** %mline, align 8, !tbaa !0
  %3 = load i32* %tlen, align 4, !tbaa !3
  %add8 = add nsw i32 %3, 1
  %conv9 = sext i32 %add8 to i64
  %call11 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 682, i64 %conv9) #6
  %aseq = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 4
  store i8* %call11, i8** %aseq, align 8, !tbaa !0
  %4 = load i8** %model, align 8, !tbaa !0
  %5 = load i32* %tlen, align 4, !tbaa !3
  %conv14 = sext i32 %5 to i64
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 32, i64 %conv14, i32 1, i1 false)
  %6 = load i8** %mline, align 8, !tbaa !0
  %7 = load i32* %tlen, align 4, !tbaa !3
  %conv17 = sext i32 %7 to i64
  tail call void @llvm.memset.p0i8.i64(i8* %6, i8 32, i64 %conv17, i32 1, i1 false)
  %8 = load i8** %aseq, align 8, !tbaa !0
  %9 = load i32* %tlen, align 4, !tbaa !3
  %conv20 = sext i32 %9 to i64
  tail call void @llvm.memset.p0i8.i64(i8* %8, i8 32, i64 %conv20, i32 1, i1 false)
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %10 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %10, 4
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load i32* %tlen, align 4, !tbaa !3
  %add22 = add nsw i32 %11, 1
  %conv23 = sext i32 %add22 to i64
  %call25 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 690, i64 %conv23) #6
  store i8* %call25, i8** %rfline, align 8, !tbaa !0
  %12 = load i32* %tlen, align 4, !tbaa !3
  %conv29 = sext i32 %12 to i64
  tail call void @llvm.memset.p0i8.i64(i8* %call25, i8 32, i64 %conv29, i32 1, i1 false)
  %.pre = load i32* %flags, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %13 = phi i32 [ %10, %entry ], [ %.pre, %if.then ]
  %and31 = and i32 %13, 8
  %tobool32 = icmp eq i32 %and31, 0
  br i1 %tobool32, label %if.end43, label %if.then33

if.then33:                                        ; preds = %if.end
  %14 = load i32* %tlen, align 4, !tbaa !3
  %add35 = add nsw i32 %14, 1
  %conv36 = sext i32 %add35 to i64
  %call38 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 695, i64 %conv36) #6
  store i8* %call38, i8** %csline, align 8, !tbaa !0
  %15 = load i32* %tlen, align 4, !tbaa !3
  %conv42 = sext i32 %15 to i64
  tail call void @llvm.memset.p0i8.i64(i8* %call38, i8 32, i64 %conv42, i32 1, i1 false)
  br label %if.end43

if.end43:                                         ; preds = %if.end, %if.then33
  %name44 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0
  %16 = load i8** %name44, align 8, !tbaa !0
  %call45 = tail call i8* @Strdup(i8* %16) #6
  %query = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 6
  store i8* %call45, i8** %query, align 8, !tbaa !0
  %call46 = tail call i8* @Strdup(i8* %name) #6
  %target = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 7
  store i8* %call46, i8** %target, align 8, !tbaa !0
  %17 = load i32* @Alphabet_type, align 4, !tbaa !3
  %cmp = icmp eq i32 %17, 3
  %. = select i1 %cmp, float 5.000000e-01, float 0x3FECCCCCC0000000
  %18 = load i32* %tlen, align 4, !tbaa !3
  %cmp51567 = icmp sgt i32 %18, 0
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3
  br i1 %cmp51567, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end43
  %19 = load i32** %pos, align 8, !tbaa !0
  br label %for.body

for.cond:                                         ; preds = %for.body
  %20 = trunc i64 %indvars.iv.next574 to i32
  %cmp51 = icmp slt i32 %20, %18
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv573 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next574, %for.cond ]
  %arrayidx = getelementptr inbounds i32* %19, i64 %indvars.iv573
  %21 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp53 = icmp sgt i32 %21, 0
  %indvars.iv.next574 = add i64 %indvars.iv573, 1
  br i1 %cmp53, label %if.then55, label %for.cond

if.then55:                                        ; preds = %for.body
  %sqfrom = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 8
  store i32 %21, i32* %sqfrom, align 4, !tbaa !3
  %.pre575 = load i32* %tlen, align 4, !tbaa !3
  br label %for.end

for.end:                                          ; preds = %if.end43, %for.cond, %if.then55
  %22 = phi i32 [ %.pre575, %if.then55 ], [ %18, %for.cond ], [ %18, %if.end43 ]
  %23 = sext i32 %22 to i64
  br label %for.cond61

for.cond61:                                       ; preds = %for.body64, %for.end
  %indvars.iv569 = phi i64 [ %indvars.iv.next570, %for.body64 ], [ %23, %for.end ]
  %indvars.iv.next570 = add i64 %indvars.iv569, -1
  %24 = trunc i64 %indvars.iv569 to i32
  %cmp62 = icmp sgt i32 %24, 0
  br i1 %cmp62, label %for.body64, label %for.cond77.preheader

for.body64:                                       ; preds = %for.cond61
  %25 = load i32** %pos, align 8, !tbaa !0
  %arrayidx67 = getelementptr inbounds i32* %25, i64 %indvars.iv.next570
  %26 = load i32* %arrayidx67, align 4, !tbaa !3
  %cmp68 = icmp sgt i32 %26, 0
  br i1 %cmp68, label %if.then70, label %for.cond61

if.then70:                                        ; preds = %for.body64
  %sqto = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 9
  store i32 %26, i32* %sqto, align 4, !tbaa !3
  %.pre576 = load i32* %tlen, align 4, !tbaa !3
  br label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %for.cond61, %if.then70
  %27 = phi i32 [ %.pre576, %if.then70 ], [ %22, %for.cond61 ]
  %cmp79564 = icmp sgt i32 %27, 0
  br i1 %cmp79564, label %for.body81.lr.ph, label %for.end370

for.body81.lr.ph:                                 ; preds = %for.cond77.preheader
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %nodeidx150 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31
  %cs = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 4
  %rf = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 3
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32
  br label %for.body81

for.body81:                                       ; preds = %for.body81.lr.ph, %for.inc368
  %indvars.iv = phi i64 [ 0, %for.body81.lr.ph ], [ %indvars.iv.next, %for.inc368 ]
  %tpos.2565 = phi i32 [ 0, %for.body81.lr.ph ], [ %inc369, %for.inc368 ]
  %28 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx83 = getelementptr inbounds i8* %28, i64 %indvars.iv
  %29 = load i8* %arrayidx83, align 1, !tbaa !1
  %conv84 = sext i8 %29 to i32
  switch i32 %conv84, label %sw.default [
    i32 4, label %sw.bb
    i32 9, label %sw.bb
    i32 5, label %sw.bb88
    i32 10, label %sw.bb88
    i32 8, label %sw.bb88
    i32 6, label %sw.bb115
    i32 7, label %sw.bb119
    i32 1, label %sw.bb123
    i32 2, label %sw.bb261
    i32 3, label %sw.bb329
  ]

sw.bb:                                            ; preds = %for.body81, %for.body81
  %30 = load i8** %model, align 8, !tbaa !0
  %arrayidx87 = getelementptr inbounds i8* %30, i64 %indvars.iv
  store i8 42, i8* %arrayidx87, align 1, !tbaa !1
  br label %for.inc368

sw.bb88:                                          ; preds = %for.body81, %for.body81, %for.body81
  %31 = load i8** %model, align 8, !tbaa !0
  %arrayidx91 = getelementptr inbounds i8* %31, i64 %indvars.iv
  store i8 45, i8* %arrayidx91, align 1, !tbaa !1
  %32 = load i32** %pos, align 8, !tbaa !0
  %arrayidx94 = getelementptr inbounds i32* %32, i64 %indvars.iv
  %33 = load i32* %arrayidx94, align 4, !tbaa !3
  %cmp95 = icmp sgt i32 %33, 0
  br i1 %cmp95, label %if.then97, label %for.inc368

if.then97:                                        ; preds = %sw.bb88
  %idxprom101 = sext i32 %33 to i64
  %arrayidx102 = getelementptr inbounds i8* %dsq, i64 %idxprom101
  %34 = load i8* %arrayidx102, align 1, !tbaa !1
  %idxprom104 = sext i8 %34 to i64
  %arrayidx105 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom104
  %35 = load i8* %arrayidx105, align 1, !tbaa !1
  %idxprom107 = sext i8 %35 to i64
  %call108 = tail call i32** @__ctype_tolower_loc() #8
  %36 = load i32** %call108, align 8, !tbaa !0
  %arrayidx109 = getelementptr inbounds i32* %36, i64 %idxprom107
  %37 = load i32* %arrayidx109, align 4, !tbaa !3
  %conv110 = trunc i32 %37 to i8
  %38 = load i8** %aseq, align 8, !tbaa !0
  %arrayidx113 = getelementptr inbounds i8* %38, i64 %indvars.iv
  store i8 %conv110, i8* %arrayidx113, align 1, !tbaa !1
  br label %for.inc368

sw.bb115:                                         ; preds = %for.body81
  %39 = load i8** %model, align 8, !tbaa !0
  %arrayidx118 = getelementptr inbounds i8* %39, i64 %indvars.iv
  store i8 62, i8* %arrayidx118, align 1, !tbaa !1
  br label %for.inc368

sw.bb119:                                         ; preds = %for.body81
  %40 = load i8** %model, align 8, !tbaa !0
  %arrayidx122 = getelementptr inbounds i8* %40, i64 %indvars.iv
  store i8 60, i8* %arrayidx122, align 1, !tbaa !1
  br label %for.inc368

sw.bb123:                                         ; preds = %for.body81
  %41 = load i32* %flags, align 4, !tbaa !3
  %and125 = and i32 %41, 4
  %tobool126 = icmp eq i32 %and125, 0
  br i1 %tobool126, label %if.end135, label %if.then127

if.then127:                                       ; preds = %sw.bb123
  %42 = load i32** %nodeidx150, align 8, !tbaa !0
  %arrayidx129 = getelementptr inbounds i32* %42, i64 %indvars.iv
  %43 = load i32* %arrayidx129, align 4, !tbaa !3
  %idxprom130 = sext i32 %43 to i64
  %44 = load i8** %rf, align 8, !tbaa !0
  %arrayidx131 = getelementptr inbounds i8* %44, i64 %idxprom130
  %45 = load i8* %arrayidx131, align 1, !tbaa !1
  %46 = load i8** %rfline, align 8, !tbaa !0
  %arrayidx134 = getelementptr inbounds i8* %46, i64 %indvars.iv
  store i8 %45, i8* %arrayidx134, align 1, !tbaa !1
  %.pre578 = load i32* %flags, align 4, !tbaa !3
  br label %if.end135

if.end135:                                        ; preds = %sw.bb123, %if.then127
  %47 = phi i32 [ %41, %sw.bb123 ], [ %.pre578, %if.then127 ]
  %and137 = and i32 %47, 8
  %tobool138 = icmp eq i32 %and137, 0
  br i1 %tobool138, label %if.end148, label %if.then139

if.then139:                                       ; preds = %if.end135
  %48 = load i32** %nodeidx150, align 8, !tbaa !0
  %arrayidx142 = getelementptr inbounds i32* %48, i64 %indvars.iv
  %49 = load i32* %arrayidx142, align 4, !tbaa !3
  %idxprom143 = sext i32 %49 to i64
  %50 = load i8** %cs, align 8, !tbaa !0
  %arrayidx144 = getelementptr inbounds i8* %50, i64 %idxprom143
  %51 = load i8* %arrayidx144, align 1, !tbaa !1
  %52 = load i8** %csline, align 8, !tbaa !0
  %arrayidx147 = getelementptr inbounds i8* %52, i64 %indvars.iv
  store i8 %51, i8* %arrayidx147, align 1, !tbaa !1
  br label %if.end148

if.end148:                                        ; preds = %if.end135, %if.then139
  %53 = load i32** %nodeidx150, align 8, !tbaa !0
  %arrayidx151 = getelementptr inbounds i32* %53, i64 %indvars.iv
  %54 = load i32* %arrayidx151, align 4, !tbaa !3
  %idxprom152 = sext i32 %54 to i64
  %55 = load float*** %mat, align 8, !tbaa !0
  %arrayidx153 = getelementptr inbounds float** %55, i64 %idxprom152
  %56 = load float** %arrayidx153, align 8, !tbaa !0
  %57 = load i32* @Alphabet_size, align 4, !tbaa !3
  %call154 = tail call i32 @FArgMax(float* %56, i32 %57) #6
  %idxprom155 = sext i32 %call154 to i64
  %arrayidx156 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom155
  %58 = load i8* %arrayidx156, align 1, !tbaa !1
  %59 = load i8** %model, align 8, !tbaa !0
  %arrayidx159 = getelementptr inbounds i8* %59, i64 %indvars.iv
  store i8 %58, i8* %arrayidx159, align 1, !tbaa !1
  %60 = load i32** %nodeidx150, align 8, !tbaa !0
  %arrayidx163 = getelementptr inbounds i32* %60, i64 %indvars.iv
  %61 = load i32* %arrayidx163, align 4, !tbaa !3
  %idxprom164 = sext i32 %61 to i64
  %62 = load float*** %mat, align 8, !tbaa !0
  %arrayidx166 = getelementptr inbounds float** %62, i64 %idxprom164
  %63 = load float** %arrayidx166, align 8, !tbaa !0
  %arrayidx167 = getelementptr inbounds float* %63, i64 %idxprom155
  %64 = load float* %arrayidx167, align 4, !tbaa !4
  %cmp168 = fcmp olt float %64, %.
  br i1 %cmp168, label %if.then170, label %if.end183

if.then170:                                       ; preds = %if.end148
  %65 = load i8** %model, align 8, !tbaa !0
  %arrayidx174 = getelementptr inbounds i8* %65, i64 %indvars.iv
  %66 = load i8* %arrayidx174, align 1, !tbaa !1
  %idxprom176 = sext i8 %66 to i64
  %call177 = tail call i32** @__ctype_tolower_loc() #8
  %67 = load i32** %call177, align 8, !tbaa !0
  %arrayidx178 = getelementptr inbounds i32* %67, i64 %idxprom176
  %68 = load i32* %arrayidx178, align 4, !tbaa !3
  %conv179 = trunc i32 %68 to i8
  store i8 %conv179, i8* %arrayidx174, align 1, !tbaa !1
  br label %if.end183

if.end183:                                        ; preds = %if.then170, %if.end148
  %69 = load i32** %pos, align 8, !tbaa !0
  %arrayidx186 = getelementptr inbounds i32* %69, i64 %indvars.iv
  %70 = load i32* %arrayidx186, align 4, !tbaa !3
  %idxprom187 = sext i32 %70 to i64
  %arrayidx188 = getelementptr inbounds i8* %dsq, i64 %idxprom187
  %71 = load i8* %arrayidx188, align 1, !tbaa !1
  %conv189 = sext i8 %71 to i32
  %cmp190 = icmp eq i32 %conv189, %call154
  br i1 %cmp190, label %if.then192, label %if.else228

if.then192:                                       ; preds = %if.end183
  %idxprom199 = sext i8 %71 to i64
  %arrayidx200 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom199
  %72 = load i8* %arrayidx200, align 1, !tbaa !1
  %73 = load i8** %mline, align 8, !tbaa !0
  %arrayidx203 = getelementptr inbounds i8* %73, i64 %indvars.iv
  store i8 %72, i8* %arrayidx203, align 1, !tbaa !1
  %74 = load i32** %nodeidx150, align 8, !tbaa !0
  %arrayidx207 = getelementptr inbounds i32* %74, i64 %indvars.iv
  %75 = load i32* %arrayidx207, align 4, !tbaa !3
  %idxprom208 = sext i32 %75 to i64
  %76 = load float*** %mat, align 8, !tbaa !0
  %arrayidx210 = getelementptr inbounds float** %76, i64 %idxprom208
  %77 = load float** %arrayidx210, align 8, !tbaa !0
  %arrayidx211 = getelementptr inbounds float* %77, i64 %idxprom155
  %78 = load float* %arrayidx211, align 4, !tbaa !4
  %cmp212 = fcmp olt float %78, %.
  br i1 %cmp212, label %if.then214, label %if.end249

if.then214:                                       ; preds = %if.then192
  %79 = load i8** %mline, align 8, !tbaa !0
  %arrayidx218 = getelementptr inbounds i8* %79, i64 %indvars.iv
  %80 = load i8* %arrayidx218, align 1, !tbaa !1
  %idxprom220 = sext i8 %80 to i64
  %call221 = tail call i32** @__ctype_tolower_loc() #8
  %81 = load i32** %call221, align 8, !tbaa !0
  %arrayidx222 = getelementptr inbounds i32* %81, i64 %idxprom220
  %82 = load i32* %arrayidx222, align 4, !tbaa !3
  %conv223 = trunc i32 %82 to i8
  store i8 %conv223, i8* %arrayidx218, align 1, !tbaa !1
  br label %if.end249

if.else228:                                       ; preds = %if.end183
  %83 = load i32** %nodeidx150, align 8, !tbaa !0
  %arrayidx231 = getelementptr inbounds i32* %83, i64 %indvars.iv
  %84 = load i32* %arrayidx231, align 4, !tbaa !3
  %idxprom232 = sext i32 %84 to i64
  %idxprom239 = sext i8 %71 to i64
  %85 = load i32*** %msc, align 8, !tbaa !0
  %arrayidx240 = getelementptr inbounds i32** %85, i64 %idxprom239
  %86 = load i32** %arrayidx240, align 8, !tbaa !0
  %arrayidx241 = getelementptr inbounds i32* %86, i64 %idxprom232
  %87 = load i32* %arrayidx241, align 4, !tbaa !3
  %cmp242 = icmp sgt i32 %87, 0
  br i1 %cmp242, label %if.then244, label %if.end249

if.then244:                                       ; preds = %if.else228
  %88 = load i8** %mline, align 8, !tbaa !0
  %arrayidx247 = getelementptr inbounds i8* %88, i64 %indvars.iv
  store i8 43, i8* %arrayidx247, align 1, !tbaa !1
  br label %if.end249

if.end249:                                        ; preds = %if.then192, %if.else228, %if.then244, %if.then214
  %89 = load i32** %pos, align 8, !tbaa !0
  %arrayidx252 = getelementptr inbounds i32* %89, i64 %indvars.iv
  %90 = load i32* %arrayidx252, align 4, !tbaa !3
  %idxprom253 = sext i32 %90 to i64
  %arrayidx254 = getelementptr inbounds i8* %dsq, i64 %idxprom253
  %91 = load i8* %arrayidx254, align 1, !tbaa !1
  %idxprom256 = sext i8 %91 to i64
  %arrayidx257 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom256
  %92 = load i8* %arrayidx257, align 1, !tbaa !1
  %93 = load i8** %aseq, align 8, !tbaa !0
  %arrayidx260 = getelementptr inbounds i8* %93, i64 %indvars.iv
  store i8 %92, i8* %arrayidx260, align 1, !tbaa !1
  br label %for.inc368

sw.bb261:                                         ; preds = %for.body81
  %94 = load i32* %flags, align 4, !tbaa !3
  %and263 = and i32 %94, 4
  %tobool264 = icmp eq i32 %and263, 0
  br i1 %tobool264, label %if.end275, label %if.then265

if.then265:                                       ; preds = %sw.bb261
  %95 = load i32** %nodeidx150, align 8, !tbaa !0
  %arrayidx268 = getelementptr inbounds i32* %95, i64 %indvars.iv
  %96 = load i32* %arrayidx268, align 4, !tbaa !3
  %idxprom269 = sext i32 %96 to i64
  %97 = load i8** %rf, align 8, !tbaa !0
  %arrayidx271 = getelementptr inbounds i8* %97, i64 %idxprom269
  %98 = load i8* %arrayidx271, align 1, !tbaa !1
  %99 = load i8** %rfline, align 8, !tbaa !0
  %arrayidx274 = getelementptr inbounds i8* %99, i64 %indvars.iv
  store i8 %98, i8* %arrayidx274, align 1, !tbaa !1
  %.pre579 = load i32* %flags, align 4, !tbaa !3
  br label %if.end275

if.end275:                                        ; preds = %sw.bb261, %if.then265
  %100 = phi i32 [ %94, %sw.bb261 ], [ %.pre579, %if.then265 ]
  %and277 = and i32 %100, 8
  %tobool278 = icmp eq i32 %and277, 0
  br i1 %tobool278, label %if.end289, label %if.then279

if.then279:                                       ; preds = %if.end275
  %101 = load i32** %nodeidx150, align 8, !tbaa !0
  %arrayidx282 = getelementptr inbounds i32* %101, i64 %indvars.iv
  %102 = load i32* %arrayidx282, align 4, !tbaa !3
  %idxprom283 = sext i32 %102 to i64
  %103 = load i8** %cs, align 8, !tbaa !0
  %arrayidx285 = getelementptr inbounds i8* %103, i64 %idxprom283
  %104 = load i8* %arrayidx285, align 1, !tbaa !1
  %105 = load i8** %csline, align 8, !tbaa !0
  %arrayidx288 = getelementptr inbounds i8* %105, i64 %indvars.iv
  store i8 %104, i8* %arrayidx288, align 1, !tbaa !1
  br label %if.end289

if.end289:                                        ; preds = %if.end275, %if.then279
  %106 = load i32** %nodeidx150, align 8, !tbaa !0
  %arrayidx292 = getelementptr inbounds i32* %106, i64 %indvars.iv
  %107 = load i32* %arrayidx292, align 4, !tbaa !3
  %idxprom293 = sext i32 %107 to i64
  %108 = load float*** %mat, align 8, !tbaa !0
  %arrayidx295 = getelementptr inbounds float** %108, i64 %idxprom293
  %109 = load float** %arrayidx295, align 8, !tbaa !0
  %110 = load i32* @Alphabet_size, align 4, !tbaa !3
  %call296 = tail call i32 @FArgMax(float* %109, i32 %110) #6
  %idxprom297 = sext i32 %call296 to i64
  %arrayidx298 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom297
  %111 = load i8* %arrayidx298, align 1, !tbaa !1
  %112 = load i8** %model, align 8, !tbaa !0
  %arrayidx301 = getelementptr inbounds i8* %112, i64 %indvars.iv
  store i8 %111, i8* %arrayidx301, align 1, !tbaa !1
  %113 = load i32** %nodeidx150, align 8, !tbaa !0
  %arrayidx305 = getelementptr inbounds i32* %113, i64 %indvars.iv
  %114 = load i32* %arrayidx305, align 4, !tbaa !3
  %idxprom306 = sext i32 %114 to i64
  %115 = load float*** %mat, align 8, !tbaa !0
  %arrayidx308 = getelementptr inbounds float** %115, i64 %idxprom306
  %116 = load float** %arrayidx308, align 8, !tbaa !0
  %arrayidx309 = getelementptr inbounds float* %116, i64 %idxprom297
  %117 = load float* %arrayidx309, align 4, !tbaa !4
  %cmp310 = fcmp olt float %117, %.
  br i1 %cmp310, label %if.then312, label %if.end325

if.then312:                                       ; preds = %if.end289
  %118 = load i8** %model, align 8, !tbaa !0
  %arrayidx316 = getelementptr inbounds i8* %118, i64 %indvars.iv
  %119 = load i8* %arrayidx316, align 1, !tbaa !1
  %idxprom318 = sext i8 %119 to i64
  %call319 = tail call i32** @__ctype_tolower_loc() #8
  %120 = load i32** %call319, align 8, !tbaa !0
  %arrayidx320 = getelementptr inbounds i32* %120, i64 %idxprom318
  %121 = load i32* %arrayidx320, align 4, !tbaa !3
  %conv321 = trunc i32 %121 to i8
  store i8 %conv321, i8* %arrayidx316, align 1, !tbaa !1
  br label %if.end325

if.end325:                                        ; preds = %if.then312, %if.end289
  %122 = load i8** %aseq, align 8, !tbaa !0
  %arrayidx328 = getelementptr inbounds i8* %122, i64 %indvars.iv
  store i8 45, i8* %arrayidx328, align 1, !tbaa !1
  br label %for.inc368

sw.bb329:                                         ; preds = %for.body81
  %123 = load i8** %model, align 8, !tbaa !0
  %arrayidx332 = getelementptr inbounds i8* %123, i64 %indvars.iv
  store i8 46, i8* %arrayidx332, align 1, !tbaa !1
  %124 = load i32** %nodeidx150, align 8, !tbaa !0
  %arrayidx335 = getelementptr inbounds i32* %124, i64 %indvars.iv
  %125 = load i32* %arrayidx335, align 4, !tbaa !3
  %idxprom336 = sext i32 %125 to i64
  %126 = load i32** %pos, align 8, !tbaa !0
  %arrayidx339 = getelementptr inbounds i32* %126, i64 %indvars.iv
  %127 = load i32* %arrayidx339, align 4, !tbaa !3
  %idxprom340 = sext i32 %127 to i64
  %arrayidx341 = getelementptr inbounds i8* %dsq, i64 %idxprom340
  %128 = load i8* %arrayidx341, align 1, !tbaa !1
  %idxprom343 = sext i8 %128 to i64
  %129 = load i32*** %isc, align 8, !tbaa !0
  %arrayidx344 = getelementptr inbounds i32** %129, i64 %idxprom343
  %130 = load i32** %arrayidx344, align 8, !tbaa !0
  %arrayidx345 = getelementptr inbounds i32* %130, i64 %idxprom336
  %131 = load i32* %arrayidx345, align 4, !tbaa !3
  %cmp346 = icmp sgt i32 %131, 0
  br i1 %cmp346, label %if.then348, label %if.end352

if.then348:                                       ; preds = %sw.bb329
  %132 = load i8** %mline, align 8, !tbaa !0
  %arrayidx351 = getelementptr inbounds i8* %132, i64 %indvars.iv
  store i8 43, i8* %arrayidx351, align 1, !tbaa !1
  %.pre580 = load i32** %pos, align 8, !tbaa !0
  %arrayidx356.phi.trans.insert = getelementptr inbounds i32* %.pre580, i64 %indvars.iv
  %.pre581 = load i32* %arrayidx356.phi.trans.insert, align 4, !tbaa !3
  %idxprom357.phi.trans.insert = sext i32 %.pre581 to i64
  %arrayidx358.phi.trans.insert = getelementptr inbounds i8* %dsq, i64 %idxprom357.phi.trans.insert
  %.pre582 = load i8* %arrayidx358.phi.trans.insert, align 1, !tbaa !1
  br label %if.end352

if.end352:                                        ; preds = %if.then348, %sw.bb329
  %133 = phi i8 [ %.pre582, %if.then348 ], [ %128, %sw.bb329 ]
  %idxprom360 = sext i8 %133 to i64
  %arrayidx361 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom360
  %134 = load i8* %arrayidx361, align 1, !tbaa !1
  %conv362 = sext i8 %134 to i32
  %call363 = tail call i32 @tolower(i32 %conv362) #6
  %conv364 = trunc i32 %call363 to i8
  %135 = load i8** %aseq, align 8, !tbaa !0
  %arrayidx367 = getelementptr inbounds i8* %135, i64 %indvars.iv
  store i8 %conv364, i8* %arrayidx367, align 1, !tbaa !1
  br label %for.inc368

sw.default:                                       ; preds = %for.body81
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0)) #6
  br label %for.inc368

for.inc368:                                       ; preds = %sw.bb, %sw.bb115, %sw.bb119, %if.end249, %if.end325, %if.end352, %sw.default, %if.then97, %sw.bb88
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc369 = add nsw i32 %tpos.2565, 1
  %136 = load i32* %tlen, align 4, !tbaa !3
  %137 = trunc i64 %indvars.iv.next to i32
  %cmp79 = icmp slt i32 %137, %136
  br i1 %cmp79, label %for.body81, label %for.end370

for.end370:                                       ; preds = %for.inc368, %for.cond77.preheader
  %tpos.2.lcssa = phi i32 [ 0, %for.cond77.preheader ], [ %inc369, %for.inc368 ]
  %len = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 5
  store i32 %tpos.2.lcssa, i32* %len, align 4, !tbaa !3
  %138 = load i32* %flags, align 4, !tbaa !3
  %and372 = and i32 %138, 4
  %tobool373 = icmp eq i32 %and372, 0
  br i1 %tobool373, label %if.end378, label %if.then374

if.then374:                                       ; preds = %for.end370
  %idxprom375 = sext i32 %tpos.2.lcssa to i64
  %139 = load i8** %rfline, align 8, !tbaa !0
  %arrayidx377 = getelementptr inbounds i8* %139, i64 %idxprom375
  store i8 0, i8* %arrayidx377, align 1, !tbaa !1
  %.pre577 = load i32* %flags, align 4, !tbaa !3
  br label %if.end378

if.end378:                                        ; preds = %for.end370, %if.then374
  %140 = phi i32 [ %138, %for.end370 ], [ %.pre577, %if.then374 ]
  %and380 = and i32 %140, 8
  %tobool381 = icmp eq i32 %and380, 0
  %idxprom387.pre = sext i32 %tpos.2.lcssa to i64
  br i1 %tobool381, label %if.end386, label %if.then382

if.then382:                                       ; preds = %if.end378
  %141 = load i8** %csline, align 8, !tbaa !0
  %arrayidx385 = getelementptr inbounds i8* %141, i64 %idxprom387.pre
  store i8 0, i8* %arrayidx385, align 1, !tbaa !1
  br label %if.end386

if.end386:                                        ; preds = %if.end378, %if.then382
  %142 = load i8** %model, align 8, !tbaa !0
  %arrayidx389 = getelementptr inbounds i8* %142, i64 %idxprom387.pre
  store i8 0, i8* %arrayidx389, align 1, !tbaa !1
  %143 = load i8** %mline, align 8, !tbaa !0
  %arrayidx392 = getelementptr inbounds i8* %143, i64 %idxprom387.pre
  store i8 0, i8* %arrayidx392, align 1, !tbaa !1
  %144 = load i8** %aseq, align 8, !tbaa !0
  %arrayidx395 = getelementptr inbounds i8* %144, i64 %idxprom387.pre
  store i8 0, i8* %arrayidx395, align 1, !tbaa !1
  ret %struct.fancyali_s* %call
}

; Function Attrs: optsize
declare %struct.fancyali_s* @AllocFancyAli() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: optsize
declare i8* @Strdup(i8*) #1

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_tolower_loc() #3

; Function Attrs: optsize
declare i32 @FArgMax(float*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @PrintFancyAli(%struct._IO_FILE* nocapture %fp, %struct.fancyali_s* nocapture %ali) #0 {
entry:
  %buffer = alloca [51 x i8], align 16
  %0 = getelementptr inbounds [51 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 51, i8* %0) #4
  %arrayidx = getelementptr inbounds [51 x i8]* %buffer, i64 0, i64 50
  store i8 0, i8* %arrayidx, align 2, !tbaa !1
  %len = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 5
  %1 = load i32* %len, align 4, !tbaa !3
  %cmp155 = icmp sgt i32 %1, 0
  br i1 %cmp155, label %for.body.lr.ph, label %for.end104

for.body.lr.ph:                                   ; preds = %entry
  %sqfrom = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 8
  %2 = load i32* %sqfrom, align 4, !tbaa !3
  %sub = add nsw i32 %2, -1
  %aseq = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 4
  %csline = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 1
  %rfline = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 0
  %model = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 2
  %mline = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 3
  %target = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc102.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv161 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next162, %for.inc102.for.body_crit_edge ]
  %endi.0157 = phi i32 [ %sub, %for.body.lr.ph ], [ %endi.1.lcssa, %for.inc102.for.body_crit_edge ]
  %pos.0156 = phi i32 [ 0, %for.body.lr.ph ], [ %add103, %for.inc102.for.body_crit_edge ]
  %add = add nsw i32 %endi.0157, 1
  %3 = load i8** %aseq, align 8, !tbaa !0
  %arrayidx2149 = getelementptr inbounds i8* %3, i64 %indvars.iv161
  %4 = load i8* %arrayidx2149, align 1, !tbaa !1
  %cmp3150 = icmp eq i8 %4, 0
  br i1 %cmp3150, label %for.end, label %for.body8

for.body8:                                        ; preds = %for.body, %for.inc
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %for.inc ], [ %indvars.iv161, %for.body ]
  %5 = phi i8 [ %6, %for.inc ], [ %4, %for.body ]
  %endi.1153 = phi i32 [ %endi.2, %for.inc ], [ %endi.0157, %for.body ]
  %i.0152 = phi i32 [ %inc42, %for.inc ], [ %pos.0156, %for.body ]
  switch i8 %5, label %if.then [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ]

if.then:                                          ; preds = %for.body8
  %inc = add nsw i32 %endi.1153, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body8, %for.body8, %for.body8, %for.body8, %for.body8, %if.then
  %endi.2 = phi i32 [ %endi.1153, %for.body8 ], [ %inc, %if.then ], [ %endi.1153, %for.body8 ], [ %endi.1153, %for.body8 ], [ %endi.1153, %for.body8 ], [ %endi.1153, %for.body8 ]
  %inc42 = add nsw i32 %i.0152, 1
  %idxprom = sext i32 %inc42 to i64
  %arrayidx2 = getelementptr inbounds i8* %3, i64 %idxprom
  %6 = load i8* %arrayidx2, align 1, !tbaa !1
  %cmp3 = icmp ne i8 %6, 0
  %7 = add nsw i64 %indvars.iv161, 49
  %8 = trunc i64 %indvars.iv158 to i32
  %9 = trunc i64 %7 to i32
  %cmp6 = icmp slt i32 %8, %9
  %or.cond = and i1 %cmp3, %cmp6
  %indvars.iv.next159 = add i64 %indvars.iv158, 1
  br i1 %or.cond, label %for.body8, label %for.end

for.end:                                          ; preds = %for.inc, %for.body
  %endi.1.lcssa = phi i32 [ %endi.0157, %for.body ], [ %endi.2, %for.inc ]
  %10 = load i8** %csline, align 8, !tbaa !0
  %cmp43 = icmp eq i8* %10, null
  br i1 %cmp43, label %if.end49, label %if.then45

if.then45:                                        ; preds = %for.end
  %add.ptr = getelementptr inbounds i8* %10, i64 %indvars.iv161
  %call = call i8* @strncpy(i8* %0, i8* %add.ptr, i64 50) #6
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i8* %0) #6
  br label %if.end49

if.end49:                                         ; preds = %for.end, %if.then45
  %11 = load i8** %rfline, align 8, !tbaa !0
  %cmp50 = icmp eq i8* %11, null
  br i1 %cmp50, label %if.end60, label %if.then52

if.then52:                                        ; preds = %if.end49
  %add.ptr56 = getelementptr inbounds i8* %11, i64 %indvars.iv161
  %call57 = call i8* @strncpy(i8* %0, i8* %add.ptr56, i64 50) #6
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* %0) #6
  br label %if.end60

if.end60:                                         ; preds = %if.end49, %if.then52
  %12 = load i8** %model, align 8, !tbaa !0
  %cmp61 = icmp eq i8* %12, null
  br i1 %cmp61, label %if.end71, label %if.then63

if.then63:                                        ; preds = %if.end60
  %add.ptr67 = getelementptr inbounds i8* %12, i64 %indvars.iv161
  %call68 = call i8* @strncpy(i8* %0, i8* %add.ptr67, i64 50) #6
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0), i8* %0) #6
  br label %if.end71

if.end71:                                         ; preds = %if.end60, %if.then63
  %13 = load i8** %mline, align 8, !tbaa !0
  %cmp72 = icmp eq i8* %13, null
  br i1 %cmp72, label %if.end82, label %if.then74

if.then74:                                        ; preds = %if.end71
  %add.ptr78 = getelementptr inbounds i8* %13, i64 %indvars.iv161
  %call79 = call i8* @strncpy(i8* %0, i8* %add.ptr78, i64 50) #6
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0), i8* %0) #6
  br label %if.end82

if.end82:                                         ; preds = %if.end71, %if.then74
  %14 = load i8** %aseq, align 8, !tbaa !0
  %cmp84 = icmp eq i8* %14, null
  br i1 %cmp84, label %for.inc102, label %if.then86

if.then86:                                        ; preds = %if.end82
  %add.ptr90 = getelementptr inbounds i8* %14, i64 %indvars.iv161
  %call91 = call i8* @strncpy(i8* %0, i8* %add.ptr90, i64 50) #6
  %cmp92 = icmp slt i32 %endi.1.lcssa, %add
  %15 = load i8** %target, align 8, !tbaa !0
  br i1 %cmp92, label %if.else, label %if.then94

if.then94:                                        ; preds = %if.then86
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str13, i64 0, i64 0), i8* %15, i32 %add, i8* %0, i32 %endi.1.lcssa) #6
  br label %for.inc102

if.else:                                          ; preds = %if.then86
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str14, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0), i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #6
  br label %for.inc102

for.inc102:                                       ; preds = %if.end82, %if.else, %if.then94
  %indvars.iv.next162 = add i64 %indvars.iv161, 50
  %16 = load i32* %len, align 4, !tbaa !3
  %17 = trunc i64 %indvars.iv.next162 to i32
  %cmp = icmp slt i32 %17, %16
  br i1 %cmp, label %for.inc102.for.body_crit_edge, label %for.end104

for.inc102.for.body_crit_edge:                    ; preds = %for.inc102
  %add103 = add nsw i32 %pos.0156, 50
  br label %for.body

for.end104:                                       ; preds = %for.inc102, %entry
  %call105 = call i32 @fflush(%struct._IO_FILE* %fp) #6
  call void @llvm.lifetime.end(i64 51, i8* %0) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @TraceDecompose(%struct.p7trace_s* nocapture %otr, %struct.p7trace_s*** nocapture %ret_tr, i32* nocapture %ret_ntr) #0 {
entry:
  %tlen = getelementptr inbounds %struct.p7trace_s* %otr, i64 0, i32 0
  %0 = load i32* %tlen, align 4, !tbaa !3
  %cmp218 = icmp sgt i32 %0, 0
  br i1 %cmp218, label %for.body.lr.ph, label %if.then6

for.body.lr.ph:                                   ; preds = %entry
  %statetype = getelementptr inbounds %struct.p7trace_s* %otr, i64 0, i32 1
  %1 = load i8** %statetype, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv226 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next227, %for.body ]
  %ntr.0219 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.ntr.0, %for.body ]
  %arrayidx = getelementptr inbounds i8* %1, i64 %indvars.iv226
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp1 = icmp eq i8 %2, 6
  %inc = zext i1 %cmp1 to i32
  %inc.ntr.0 = add nsw i32 %inc, %ntr.0219
  %indvars.iv.next227 = add i64 %indvars.iv226, 1
  %3 = trunc i64 %indvars.iv.next227 to i32
  %cmp = icmp slt i32 %3, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %cmp4 = icmp eq i32 %inc.ntr.0, 0
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %entry, %for.end
  store i32 0, i32* %ret_ntr, align 4, !tbaa !3
  store %struct.p7trace_s** null, %struct.p7trace_s*** %ret_tr, align 8, !tbaa !0
  br label %return

if.end7:                                          ; preds = %for.end
  %conv8 = sext i32 %inc.ntr.0 to i64
  %mul = shl nsw i64 %conv8, 3
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 893, i64 %mul) #6
  %4 = bitcast i8* %call to %struct.p7trace_s**
  %5 = load i32* %tlen, align 4, !tbaa !3
  %cmp11215 = icmp sgt i32 %5, 0
  br i1 %cmp11215, label %for.body13.lr.ph, label %for.end137

for.body13.lr.ph:                                 ; preds = %if.end7
  %statetype15 = getelementptr inbounds %struct.p7trace_s* %otr, i64 0, i32 1
  %nodeidx76 = getelementptr inbounds %struct.p7trace_s* %otr, i64 0, i32 2
  %pos84 = getelementptr inbounds %struct.p7trace_s* %otr, i64 0, i32 3
  br label %for.body13

for.body13:                                       ; preds = %for.inc135, %for.body13.lr.ph
  %6 = phi i32 [ %5, %for.body13.lr.ph ], [ %41, %for.inc135 ]
  %idx.0217 = phi i32 [ 0, %for.body13.lr.ph ], [ %idx.1, %for.inc135 ]
  %i.1216 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc136, %for.inc135 ]
  %idxprom14 = sext i32 %i.1216 to i64
  %7 = load i8** %statetype15, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i8* %7, i64 %idxprom14
  %8 = load i8* %arrayidx16, align 1, !tbaa !1
  %cmp18 = icmp eq i8 %8, 6
  br i1 %cmp18, label %for.cond21, label %for.inc135

for.cond21:                                       ; preds = %for.body13, %for.body25
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body25 ], [ %idxprom14, %for.body13 ]
  %j.0.in = phi i32 [ %j.0, %for.body25 ], [ %i.1216, %for.body13 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %j.0 = add nsw i32 %j.0.in, 1
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp23 = icmp slt i32 %9, %6
  br i1 %cmp23, label %for.body25, label %for.end36

for.body25:                                       ; preds = %for.cond21
  %arrayidx28 = getelementptr inbounds i8* %7, i64 %indvars.iv.next
  %10 = load i8* %arrayidx28, align 1, !tbaa !1
  %cmp30 = icmp eq i8 %10, 7
  br i1 %cmp30, label %for.end36, label %for.cond21

for.end36:                                        ; preds = %for.body25, %for.cond21
  %sub = sub nsw i32 %j.0, %i.1216
  %add37 = add nsw i32 %sub, 5
  %idxprom38 = sext i32 %idx.0217 to i64
  %arrayidx39 = getelementptr inbounds %struct.p7trace_s** %4, i64 %idxprom38
  tail call void @P7AllocTrace(i32 %add37, %struct.p7trace_s** %arrayidx39) #7
  %11 = load %struct.p7trace_s** %arrayidx39, align 8, !tbaa !0
  %tlen44 = getelementptr inbounds %struct.p7trace_s* %11, i64 0, i32 0
  store i32 %add37, i32* %tlen44, align 4, !tbaa !3
  %statetype47 = getelementptr inbounds %struct.p7trace_s* %11, i64 0, i32 1
  %12 = load i8** %statetype47, align 8, !tbaa !0
  store i8 4, i8* %12, align 1, !tbaa !1
  %13 = load %struct.p7trace_s** %arrayidx39, align 8, !tbaa !0
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %13, i64 0, i32 2
  %14 = load i32** %nodeidx, align 8, !tbaa !0
  store i32 0, i32* %14, align 4, !tbaa !3
  %pos = getelementptr inbounds %struct.p7trace_s* %13, i64 0, i32 3
  %15 = load i32** %pos, align 8, !tbaa !0
  store i32 0, i32* %15, align 4, !tbaa !3
  %statetype57 = getelementptr inbounds %struct.p7trace_s* %13, i64 0, i32 1
  %16 = load i8** %statetype57, align 8, !tbaa !0
  %arrayidx58 = getelementptr inbounds i8* %16, i64 1
  store i8 5, i8* %arrayidx58, align 1, !tbaa !1
  %17 = load %struct.p7trace_s** %arrayidx39, align 8, !tbaa !0
  %nodeidx61 = getelementptr inbounds %struct.p7trace_s* %17, i64 0, i32 2
  %18 = load i32** %nodeidx61, align 8, !tbaa !0
  %arrayidx62 = getelementptr inbounds i32* %18, i64 1
  store i32 0, i32* %arrayidx62, align 4, !tbaa !3
  %pos65 = getelementptr inbounds %struct.p7trace_s* %17, i64 0, i32 3
  %19 = load i32** %pos65, align 8, !tbaa !0
  %arrayidx66 = getelementptr inbounds i32* %19, i64 1
  store i32 0, i32* %arrayidx66, align 4, !tbaa !3
  %.pre228 = load i8** %statetype15, align 8, !tbaa !0
  br label %while.body

while.body:                                       ; preds = %for.end36, %if.end98
  %20 = phi %struct.p7trace_s* [ %17, %for.end36 ], [ %26, %if.end98 ]
  %21 = phi i8* [ %.pre228, %for.end36 ], [ %31, %if.end98 ]
  %indvars.iv224 = phi i64 [ 2, %for.end36 ], [ %indvars.iv.next225, %if.end98 ]
  %indvars.iv222 = phi i64 [ %idxprom14, %for.end36 ], [ %indvars.iv.next223, %if.end98 ]
  %i.2 = phi i32 [ %i.1216, %for.end36 ], [ %inc99, %if.end98 ]
  %j.1 = phi i32 [ 2, %for.end36 ], [ %inc100, %if.end98 ]
  %arrayidx69 = getelementptr inbounds i8* %21, i64 %indvars.iv222
  %22 = load i8* %arrayidx69, align 1, !tbaa !1
  %statetype73 = getelementptr inbounds %struct.p7trace_s* %20, i64 0, i32 1
  %23 = load i8** %statetype73, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds i8* %23, i64 %indvars.iv224
  store i8 %22, i8* %arrayidx74, align 1, !tbaa !1
  %24 = load i32** %nodeidx76, align 8, !tbaa !0
  %arrayidx77 = getelementptr inbounds i32* %24, i64 %indvars.iv222
  %25 = load i32* %arrayidx77, align 4, !tbaa !3
  %26 = load %struct.p7trace_s** %arrayidx39, align 8, !tbaa !0
  %nodeidx81 = getelementptr inbounds %struct.p7trace_s* %26, i64 0, i32 2
  %27 = load i32** %nodeidx81, align 8, !tbaa !0
  %arrayidx82 = getelementptr inbounds i32* %27, i64 %indvars.iv224
  store i32 %25, i32* %arrayidx82, align 4, !tbaa !3
  %28 = load i32** %pos84, align 8, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32* %28, i64 %indvars.iv222
  %29 = load i32* %arrayidx85, align 4, !tbaa !3
  %pos89 = getelementptr inbounds %struct.p7trace_s* %26, i64 0, i32 3
  %30 = load i32** %pos89, align 8, !tbaa !0
  %arrayidx90 = getelementptr inbounds i32* %30, i64 %indvars.iv224
  store i32 %29, i32* %arrayidx90, align 4, !tbaa !3
  %31 = load i8** %statetype15, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds i8* %31, i64 %indvars.iv222
  %32 = load i8* %arrayidx93, align 1, !tbaa !1
  %cmp95 = icmp eq i8 %32, 7
  br i1 %cmp95, label %while.end, label %if.end98

if.end98:                                         ; preds = %while.body
  %indvars.iv.next223 = add i64 %indvars.iv222, 1
  %inc99 = add nsw i32 %i.2, 1
  %indvars.iv.next225 = add i64 %indvars.iv224, 1
  %inc100 = add nsw i32 %j.1, 1
  br label %while.body

while.end:                                        ; preds = %while.body
  %inc101 = add nsw i32 %j.1, 1
  %idxprom102 = sext i32 %inc101 to i64
  %statetype105 = getelementptr inbounds %struct.p7trace_s* %26, i64 0, i32 1
  %33 = load i8** %statetype105, align 8, !tbaa !0
  %arrayidx106 = getelementptr inbounds i8* %33, i64 %idxprom102
  store i8 8, i8* %arrayidx106, align 1, !tbaa !1
  %34 = load %struct.p7trace_s** %arrayidx39, align 8, !tbaa !0
  %nodeidx110 = getelementptr inbounds %struct.p7trace_s* %34, i64 0, i32 2
  %35 = load i32** %nodeidx110, align 8, !tbaa !0
  %arrayidx111 = getelementptr inbounds i32* %35, i64 %idxprom102
  store i32 0, i32* %arrayidx111, align 4, !tbaa !3
  %pos115 = getelementptr inbounds %struct.p7trace_s* %34, i64 0, i32 3
  %36 = load i32** %pos115, align 8, !tbaa !0
  %arrayidx116 = getelementptr inbounds i32* %36, i64 %idxprom102
  store i32 0, i32* %arrayidx116, align 4, !tbaa !3
  %inc117 = add nsw i32 %j.1, 2
  %idxprom118 = sext i32 %inc117 to i64
  %statetype121 = getelementptr inbounds %struct.p7trace_s* %34, i64 0, i32 1
  %37 = load i8** %statetype121, align 8, !tbaa !0
  %arrayidx122 = getelementptr inbounds i8* %37, i64 %idxprom118
  store i8 9, i8* %arrayidx122, align 1, !tbaa !1
  %38 = load %struct.p7trace_s** %arrayidx39, align 8, !tbaa !0
  %nodeidx126 = getelementptr inbounds %struct.p7trace_s* %38, i64 0, i32 2
  %39 = load i32** %nodeidx126, align 8, !tbaa !0
  %arrayidx127 = getelementptr inbounds i32* %39, i64 %idxprom118
  store i32 0, i32* %arrayidx127, align 4, !tbaa !3
  %pos131 = getelementptr inbounds %struct.p7trace_s* %38, i64 0, i32 3
  %40 = load i32** %pos131, align 8, !tbaa !0
  %arrayidx132 = getelementptr inbounds i32* %40, i64 %idxprom118
  store i32 0, i32* %arrayidx132, align 4, !tbaa !3
  %inc133 = add nsw i32 %idx.0217, 1
  %.pre = load i32* %tlen, align 4, !tbaa !3
  br label %for.inc135

for.inc135:                                       ; preds = %for.body13, %while.end
  %41 = phi i32 [ %.pre, %while.end ], [ %6, %for.body13 ]
  %i.3 = phi i32 [ %i.2, %while.end ], [ %i.1216, %for.body13 ]
  %idx.1 = phi i32 [ %inc133, %while.end ], [ %idx.0217, %for.body13 ]
  %inc136 = add nsw i32 %i.3, 1
  %cmp11 = icmp slt i32 %inc136, %41
  br i1 %cmp11, label %for.body13, label %for.end137

for.end137:                                       ; preds = %for.inc135, %if.end7
  store %struct.p7trace_s** %4, %struct.p7trace_s*** %ret_tr, align 8, !tbaa !0
  store i32 %inc.ntr.0, i32* %ret_ntr, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %for.end137, %if.then6
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @TraceDomainNumber(%struct.p7trace_s* nocapture %tr) #5 {
entry:
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0
  %0 = load i32* %tlen, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %0, 0
  br i1 %cmp8, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %1 = load i8** %statetype, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %ndom.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.ndom.0, %for.body ]
  %arrayidx = getelementptr inbounds i8* %1, i64 %indvars.iv
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp1 = icmp eq i8 %2, 6
  %inc = zext i1 %cmp1 to i32
  %inc.ndom.0 = add nsw i32 %inc, %ndom.010
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %3, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %ndom.0.lcssa = phi i32 [ 0, %entry ], [ %inc.ndom.0, %for.body ]
  ret i32 %ndom.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @TraceSimpleBounds(%struct.p7trace_s* nocapture %tr, i32* nocapture %ret_i1, i32* nocapture %ret_i2, i32* nocapture %ret_k1, i32* nocapture %ret_k2) #0 {
entry:
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0
  %0 = load i32* %tlen, align 4, !tbaa !3
  %cmp145 = icmp sgt i32 %0, 0
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2
  br i1 %cmp145, label %for.body.lr.ph, label %if.then31

for.body.lr.ph:                                   ; preds = %entry
  %1 = load i8** %statetype, align 8, !tbaa !0
  br label %for.body

for.cond:                                         ; preds = %if.end.thread, %if.end
  %k1.1161 = phi i32 [ -1, %if.end.thread ], [ %k1.1, %if.end ]
  %indvars.iv.next155162 = add i64 %indvars.iv154, 1
  %inc = add nsw i32 %tpos.0147, 1
  %2 = trunc i64 %indvars.iv.next155162 to i32
  %cmp = icmp slt i32 %2, %0
  br i1 %cmp, label %for.body, label %if.then31

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv154 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next155162, %for.cond ]
  %tpos.0147 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %k1.0146 = phi i32 [ -1, %for.body.lr.ph ], [ %k1.1161, %for.cond ]
  %cmp1 = icmp eq i32 %k1.0146, -1
  %arrayidx = getelementptr inbounds i8* %1, i64 %indvars.iv154
  %3 = load i8* %arrayidx, align 1, !tbaa !1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %.off = add i8 %3, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then, label %if.end.thread

if.end.thread:                                    ; preds = %land.lhs.true
  br label %for.cond

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32** %nodeidx, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds i32* %4, i64 %indvars.iv154
  %5 = load i32* %arrayidx11, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %k1.1 = phi i32 [ %5, %if.then ], [ %k1.0146, %for.body ]
  %cmp16 = icmp eq i8 %3, 1
  br i1 %cmp16, label %for.end, label %for.cond

for.end:                                          ; preds = %if.end
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3
  %6 = load i32** %pos, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i32* %6, i64 %indvars.iv154
  %7 = load i32* %arrayidx20, align 4, !tbaa !3
  %cmp23 = icmp eq i32 %tpos.0147, %0
  %cmp26 = icmp eq i32 %7, -1
  %or.cond = or i1 %cmp23, %cmp26
  %cmp29 = icmp eq i32 %k1.1, -1
  %or.cond115 = or i1 %or.cond, %cmp29
  br i1 %or.cond115, label %if.then31, label %if.end32

if.then31:                                        ; preds = %entry, %for.cond, %for.end
  %k1.2128 = phi i32 [ %k1.1, %for.end ], [ %k1.1161, %for.cond ], [ -1, %entry ]
  %i1.0126 = phi i32 [ %7, %for.end ], [ -1, %for.cond ], [ -1, %entry ]
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([56 x i8]* @.str16, i64 0, i64 0)) #6
  %.pre = load i32* %tlen, align 4, !tbaa !3
  br label %if.end32

if.end32:                                         ; preds = %for.end, %if.then31
  %8 = phi i32 [ %0, %for.end ], [ %.pre, %if.then31 ]
  %k1.2127 = phi i32 [ %k1.1, %for.end ], [ %k1.2128, %if.then31 ]
  %i1.0125 = phi i32 [ %7, %for.end ], [ %i1.0126, %if.then31 ]
  %9 = sext i32 %8 to i64
  br label %for.cond34

for.cond34:                                       ; preds = %land.lhs.true40, %if.end58, %if.end32
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end58 ], [ %9, %if.end32 ], [ %indvars.iv.next, %land.lhs.true40 ]
  %k2.0 = phi i32 [ %k2.1, %if.end58 ], [ -1, %if.end32 ], [ -1, %land.lhs.true40 ]
  %tpos.1.in = phi i32 [ %tpos.1, %if.end58 ], [ %8, %if.end32 ], [ %tpos.1, %land.lhs.true40 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %tpos.1 = add nsw i32 %tpos.1.in, -1
  %10 = trunc i64 %indvars.iv to i32
  %cmp35 = icmp sgt i32 %10, 0
  br i1 %cmp35, label %for.body37, label %if.then81

for.body37:                                       ; preds = %for.cond34
  %cmp38 = icmp eq i32 %k2.0, -1
  %11 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx43 = getelementptr inbounds i8* %11, i64 %indvars.iv.next
  %12 = load i8* %arrayidx43, align 1, !tbaa !1
  br i1 %cmp38, label %land.lhs.true40, label %if.end58

land.lhs.true40:                                  ; preds = %for.body37
  %.off118 = add i8 %12, -1
  %switch119 = icmp ult i8 %.off118, 2
  br i1 %switch119, label %if.then54, label %for.cond34

if.then54:                                        ; preds = %land.lhs.true40
  %13 = load i32** %nodeidx, align 8, !tbaa !0
  %arrayidx57 = getelementptr inbounds i32* %13, i64 %indvars.iv.next
  %14 = load i32* %arrayidx57, align 4, !tbaa !3
  br label %if.end58

if.end58:                                         ; preds = %for.body37, %if.then54
  %k2.1 = phi i32 [ %14, %if.then54 ], [ %k2.0, %for.body37 ]
  %cmp63 = icmp eq i8 %12, 1
  br i1 %cmp63, label %for.end71, label %for.cond34

for.end71:                                        ; preds = %if.end58
  %pos67 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3
  %15 = load i32** %pos67, align 8, !tbaa !0
  %arrayidx68 = getelementptr inbounds i32* %15, i64 %indvars.iv.next
  %16 = load i32* %arrayidx68, align 4, !tbaa !3
  %cmp73 = icmp eq i32 %tpos.1, %8
  %cmp76 = icmp eq i32 %16, -1
  %or.cond116 = or i1 %cmp73, %cmp76
  %cmp79 = icmp eq i32 %k2.1, -1
  %or.cond117 = or i1 %or.cond116, %cmp79
  br i1 %or.cond117, label %if.then81, label %if.end82

if.then81:                                        ; preds = %for.cond34, %for.end71
  %k2.2137 = phi i32 [ %k2.1, %for.end71 ], [ %k2.0, %for.cond34 ]
  %i2.0135 = phi i32 [ %16, %for.end71 ], [ -1, %for.cond34 ]
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([56 x i8]* @.str16, i64 0, i64 0)) #6
  br label %if.end82

if.end82:                                         ; preds = %for.end71, %if.then81
  %k2.2136 = phi i32 [ %k2.1, %for.end71 ], [ %k2.2137, %if.then81 ]
  %i2.0134 = phi i32 [ %16, %for.end71 ], [ %i2.0135, %if.then81 ]
  store i32 %k1.2127, i32* %ret_k1, align 4, !tbaa !3
  store i32 %i1.0125, i32* %ret_i1, align 4, !tbaa !3
  store i32 %k2.2136, i32* %ret_k2, align 4, !tbaa !3
  store i32 %i2.0134, i32* %ret_i2, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.p7trace_s* @MasterTraceFromMap(i32* nocapture %map, i32 %M, i32 %alen) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  %add = add nsw i32 %alen, 6
  call void @P7AllocTrace(i32 %add, %struct.p7trace_s** %tr) #7
  %0 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %statetype.i = getelementptr inbounds %struct.p7trace_s* %0, i64 0, i32 1
  %1 = load i8** %statetype.i, align 8, !tbaa !0
  store i8 4, i8* %1, align 1, !tbaa !1
  %nodeidx.i = getelementptr inbounds %struct.p7trace_s* %0, i64 0, i32 2
  %2 = load i32** %nodeidx.i, align 8, !tbaa !0
  store i32 0, i32* %2, align 4, !tbaa !3
  %pos4.i = getelementptr inbounds %struct.p7trace_s* %0, i64 0, i32 3
  %3 = load i32** %pos4.i, align 8, !tbaa !0
  store i32 0, i32* %3, align 4, !tbaa !3
  %4 = load i8** %statetype.i, align 8, !tbaa !0
  %arrayidx.i132 = getelementptr inbounds i8* %4, i64 1
  store i8 5, i8* %arrayidx.i132, align 1, !tbaa !1
  %5 = load i32** %nodeidx.i, align 8, !tbaa !0
  %arrayidx2.i134 = getelementptr inbounds i32* %5, i64 1
  store i32 0, i32* %arrayidx2.i134, align 4, !tbaa !3
  %6 = load i32** %pos4.i, align 8, !tbaa !0
  %arrayidx5.i136 = getelementptr inbounds i32* %6, i64 1
  store i32 0, i32* %arrayidx5.i136, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %map, i64 1
  %7 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp175 = icmp sgt i32 %7, 1
  %8 = load i8** %statetype.i, align 8, !tbaa !0
  %arrayidx.i126177 = getelementptr inbounds i8* %8, i64 2
  br i1 %cmp175, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %for.body ], [ 2, %entry ]
  %arrayidx.i126181 = phi i8* [ %arrayidx.i126, %for.body ], [ %arrayidx.i126177, %entry ]
  %apos.0179 = phi i32 [ %inc3, %for.body ], [ 1, %entry ]
  %tpos.0178 = phi i32 [ %inc2, %for.body ], [ 2, %entry ]
  store i8 5, i8* %arrayidx.i126181, align 1, !tbaa !1
  %9 = load i32** %nodeidx.i, align 8, !tbaa !0
  %arrayidx2.i128 = getelementptr inbounds i32* %9, i64 %indvars.iv200
  store i32 0, i32* %arrayidx2.i128, align 4, !tbaa !3
  %10 = load i32** %pos4.i, align 8, !tbaa !0
  %arrayidx5.i130 = getelementptr inbounds i32* %10, i64 %indvars.iv200
  store i32 %apos.0179, i32* %arrayidx5.i130, align 4, !tbaa !3
  %indvars.iv.next201 = add i64 %indvars.iv200, 1
  %inc2 = add nsw i32 %tpos.0178, 1
  %inc3 = add nsw i32 %apos.0179, 1
  %11 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp = icmp slt i32 %inc3, %11
  %12 = load i8** %statetype.i, align 8, !tbaa !0
  %arrayidx.i126 = getelementptr inbounds i8* %12, i64 %indvars.iv.next201
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = add i32 %tpos.0178, 2
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %arrayidx.i126.lcssa = phi i8* [ %arrayidx.i126, %for.cond.for.end_crit_edge ], [ %arrayidx.i126177, %entry ]
  %idxprom.i124.lcssa = phi i64 [ %indvars.iv.next201, %for.cond.for.end_crit_edge ], [ 2, %entry ]
  %apos.0.lcssa = phi i32 [ %inc3, %for.cond.for.end_crit_edge ], [ 1, %entry ]
  %tpos.0.lcssa = phi i32 [ %phitmp, %for.cond.for.end_crit_edge ], [ 3, %entry ]
  store i8 6, i8* %arrayidx.i126.lcssa, align 1, !tbaa !1
  %13 = load i32** %nodeidx.i, align 8, !tbaa !0
  %arrayidx2.i121 = getelementptr inbounds i32* %13, i64 %idxprom.i124.lcssa
  store i32 0, i32* %arrayidx2.i121, align 4, !tbaa !3
  %14 = load i32** %pos4.i, align 8, !tbaa !0
  %arrayidx5.i123 = getelementptr inbounds i32* %14, i64 %idxprom.i124.lcssa
  store i32 0, i32* %arrayidx5.i123, align 4, !tbaa !3
  %cmp6158 = icmp sgt i32 %M, 1
  %15 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %idxprom.i110159 = sext i32 %tpos.0.lcssa to i64
  %statetype.i111160 = getelementptr inbounds %struct.p7trace_s* %15, i64 0, i32 1
  %16 = load i8** %statetype.i111160, align 8, !tbaa !0
  %arrayidx.i112161 = getelementptr inbounds i8* %16, i64 %idxprom.i110159
  store i8 1, i8* %arrayidx.i112161, align 1, !tbaa !1
  %nodeidx.i113162 = getelementptr inbounds %struct.p7trace_s* %15, i64 0, i32 2
  %17 = load i32** %nodeidx.i113162, align 8, !tbaa !0
  %arrayidx2.i114163 = getelementptr inbounds i32* %17, i64 %idxprom.i110159
  %pos4.i108 = getelementptr inbounds %struct.p7trace_s* %15, i64 0, i32 3
  br i1 %cmp6158, label %for.body7, label %for.end21

for.cond5.loopexit:                               ; preds = %for.body14, %for.body7
  %tpos.2.lcssa = phi i32 [ %tpos.2150, %for.body7 ], [ %tpos.2, %for.body14 ]
  %apos.2.lcssa = phi i32 [ %apos.2149, %for.body7 ], [ %apos.2, %for.body14 ]
  %idxprom.i110 = sext i32 %tpos.2.lcssa to i64
  %18 = load i8** %statetype.i111160, align 8, !tbaa !0
  %arrayidx.i112 = getelementptr inbounds i8* %18, i64 %idxprom.i110
  store i8 1, i8* %arrayidx.i112, align 1, !tbaa !1
  %19 = load i32** %nodeidx.i113162, align 8, !tbaa !0
  %arrayidx2.i114 = getelementptr inbounds i32* %19, i64 %idxprom.i110
  %lftr.wideiv = trunc i64 %indvars.iv.next196 to i32
  %exitcond197 = icmp eq i32 %lftr.wideiv, %M
  br i1 %exitcond197, label %for.end21, label %for.body7

for.body7:                                        ; preds = %for.end, %for.cond5.loopexit
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %for.cond5.loopexit ], [ 1, %for.end ]
  %arrayidx2.i114168 = phi i32* [ %arrayidx2.i114, %for.cond5.loopexit ], [ %arrayidx2.i114163, %for.end ]
  %idxprom.i110167 = phi i64 [ %idxprom.i110, %for.cond5.loopexit ], [ %idxprom.i110159, %for.end ]
  %apos.1165 = phi i32 [ %apos.2.lcssa, %for.cond5.loopexit ], [ %apos.0.lcssa, %for.end ]
  %tpos.1164 = phi i32 [ %tpos.2.lcssa, %for.cond5.loopexit ], [ %tpos.0.lcssa, %for.end ]
  %20 = trunc i64 %indvars.iv195 to i32
  store i32 %20, i32* %arrayidx2.i114168, align 4, !tbaa !3
  %21 = load i32** %pos4.i108, align 8, !tbaa !0
  %arrayidx5.i116 = getelementptr inbounds i32* %21, i64 %idxprom.i110167
  store i32 %apos.1165, i32* %arrayidx5.i116, align 4, !tbaa !3
  %apos.2149 = add nsw i32 %apos.1165, 1
  %tpos.2150 = add i32 %tpos.1164, 1
  %indvars.iv.next196 = add i64 %indvars.iv195, 1
  %arrayidx12 = getelementptr inbounds i32* %map, i64 %indvars.iv.next196
  %22 = load i32* %arrayidx12, align 4, !tbaa !3
  %cmp13151 = icmp slt i32 %apos.2149, %22
  br i1 %cmp13151, label %for.body14.lr.ph, label %for.cond5.loopexit

for.body14.lr.ph:                                 ; preds = %for.body7
  %23 = sext i32 %tpos.2150 to i64
  br label %for.body14

for.body14:                                       ; preds = %for.body14.lr.ph, %for.body14
  %indvars.iv = phi i64 [ %23, %for.body14.lr.ph ], [ %indvars.iv.next, %for.body14 ]
  %tpos.2153 = phi i32 [ %tpos.2150, %for.body14.lr.ph ], [ %tpos.2, %for.body14 ]
  %apos.2152 = phi i32 [ %apos.2149, %for.body14.lr.ph ], [ %apos.2, %for.body14 ]
  %24 = load i8** %statetype.i111160, align 8, !tbaa !0
  %arrayidx.i105 = getelementptr inbounds i8* %24, i64 %indvars.iv
  store i8 3, i8* %arrayidx.i105, align 1, !tbaa !1
  %25 = load i32** %nodeidx.i113162, align 8, !tbaa !0
  %arrayidx2.i107 = getelementptr inbounds i32* %25, i64 %indvars.iv
  store i32 %20, i32* %arrayidx2.i107, align 4, !tbaa !3
  %26 = load i32** %pos4.i108, align 8, !tbaa !0
  %arrayidx5.i109 = getelementptr inbounds i32* %26, i64 %indvars.iv
  store i32 %apos.2152, i32* %arrayidx5.i109, align 4, !tbaa !3
  %apos.2 = add nsw i32 %apos.2152, 1
  %tpos.2 = add nsw i32 %tpos.2153, 1
  %27 = load i32* %arrayidx12, align 4, !tbaa !3
  %cmp13 = icmp slt i32 %apos.2, %27
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp13, label %for.body14, label %for.cond5.loopexit

for.end21:                                        ; preds = %for.end, %for.cond5.loopexit
  %arrayidx2.i114.lcssa = phi i32* [ %arrayidx2.i114, %for.cond5.loopexit ], [ %arrayidx2.i114163, %for.end ]
  %idxprom.i110.lcssa = phi i64 [ %idxprom.i110, %for.cond5.loopexit ], [ %idxprom.i110159, %for.end ]
  %apos.1.lcssa = phi i32 [ %apos.2.lcssa, %for.cond5.loopexit ], [ %apos.0.lcssa, %for.end ]
  %tpos.1.lcssa = phi i32 [ %tpos.2.lcssa, %for.cond5.loopexit ], [ %tpos.0.lcssa, %for.end ]
  store i32 %M, i32* %arrayidx2.i114.lcssa, align 4, !tbaa !3
  %28 = load i32** %pos4.i108, align 8, !tbaa !0
  %arrayidx5.i102 = getelementptr inbounds i32* %28, i64 %idxprom.i110.lcssa
  store i32 %apos.1.lcssa, i32* %arrayidx5.i102, align 4, !tbaa !3
  %inc22 = add nsw i32 %tpos.1.lcssa, 1
  %idxprom.i89 = sext i32 %inc22 to i64
  %29 = load i8** %statetype.i111160, align 8, !tbaa !0
  %arrayidx.i91 = getelementptr inbounds i8* %29, i64 %idxprom.i89
  store i8 7, i8* %arrayidx.i91, align 1, !tbaa !1
  %30 = load i32** %nodeidx.i113162, align 8, !tbaa !0
  %arrayidx2.i93 = getelementptr inbounds i32* %30, i64 %idxprom.i89
  store i32 0, i32* %arrayidx2.i93, align 4, !tbaa !3
  %31 = load i32** %pos4.i108, align 8, !tbaa !0
  %arrayidx5.i95 = getelementptr inbounds i32* %31, i64 %idxprom.i89
  store i32 0, i32* %arrayidx5.i95, align 4, !tbaa !3
  %inc24 = add nsw i32 %tpos.1.lcssa, 2
  %idxprom.i82 = sext i32 %inc24 to i64
  %32 = load i8** %statetype.i111160, align 8, !tbaa !0
  %arrayidx.i84 = getelementptr inbounds i8* %32, i64 %idxprom.i82
  store i8 8, i8* %arrayidx.i84, align 1, !tbaa !1
  %33 = load i32** %nodeidx.i113162, align 8, !tbaa !0
  %arrayidx2.i86 = getelementptr inbounds i32* %33, i64 %idxprom.i82
  store i32 0, i32* %arrayidx2.i86, align 4, !tbaa !3
  %34 = load i32** %pos4.i108, align 8, !tbaa !0
  %arrayidx5.i88 = getelementptr inbounds i32* %34, i64 %idxprom.i82
  store i32 0, i32* %arrayidx5.i88, align 4, !tbaa !3
  %inc25 = add nsw i32 %tpos.1.lcssa, 3
  %cmp27138 = icmp slt i32 %apos.1.lcssa, %alen
  %idxprom.i75139 = sext i32 %inc25 to i64
  %35 = load i8** %statetype.i111160, align 8, !tbaa !0
  %arrayidx.i77141 = getelementptr inbounds i8* %35, i64 %idxprom.i75139
  br i1 %cmp27138, label %for.body28.lr.ph, label %for.end32

for.body28.lr.ph:                                 ; preds = %for.end21
  %36 = add i32 %tpos.1.lcssa, 4
  %37 = add i32 %alen, -1
  %38 = sub i32 %37, %apos.1.lcssa
  %39 = zext i32 %38 to i64
  %40 = add i32 %tpos.1.lcssa, %alen
  %41 = add i32 %40, 3
  br label %for.body28

for.body28:                                       ; preds = %for.body28, %for.body28.lr.ph
  %arrayidx.i77145 = phi i8* [ %arrayidx.i77141, %for.body28.lr.ph ], [ %arrayidx.i77, %for.body28 ]
  %idxprom.i75144 = phi i64 [ %idxprom.i75139, %for.body28.lr.ph ], [ %idxprom.i75, %for.body28 ]
  %apos.3143.in = phi i32 [ %apos.1.lcssa, %for.body28.lr.ph ], [ %apos.3143, %for.body28 ]
  %tpos.3142 = phi i32 [ %inc25, %for.body28.lr.ph ], [ %inc29, %for.body28 ]
  %apos.3143 = add nsw i32 %apos.3143.in, 1
  store i8 8, i8* %arrayidx.i77145, align 1, !tbaa !1
  %42 = load i32** %nodeidx.i113162, align 8, !tbaa !0
  %arrayidx2.i79 = getelementptr inbounds i32* %42, i64 %idxprom.i75144
  store i32 0, i32* %arrayidx2.i79, align 4, !tbaa !3
  %43 = load i32** %pos4.i108, align 8, !tbaa !0
  %arrayidx5.i81 = getelementptr inbounds i32* %43, i64 %idxprom.i75144
  store i32 %apos.3143, i32* %arrayidx5.i81, align 4, !tbaa !3
  %inc29 = add nsw i32 %tpos.3142, 1
  %idxprom.i75 = sext i32 %inc29 to i64
  %44 = load i8** %statetype.i111160, align 8, !tbaa !0
  %arrayidx.i77 = getelementptr inbounds i8* %44, i64 %idxprom.i75
  %exitcond = icmp eq i32 %apos.3143, %alen
  br i1 %exitcond, label %for.cond26.for.end32_crit_edge, label %for.body28

for.cond26.for.end32_crit_edge:                   ; preds = %for.body28
  %45 = sext i32 %36 to i64
  %46 = add i64 %45, %39
  %47 = sub i32 %41, %apos.1.lcssa
  br label %for.end32

for.end32:                                        ; preds = %for.cond26.for.end32_crit_edge, %for.end21
  %arrayidx.i77.lcssa = phi i8* [ %arrayidx.i77, %for.cond26.for.end32_crit_edge ], [ %arrayidx.i77141, %for.end21 ]
  %idxprom.i75.lcssa = phi i64 [ %46, %for.cond26.for.end32_crit_edge ], [ %idxprom.i75139, %for.end21 ]
  %tpos.3.lcssa = phi i32 [ %47, %for.cond26.for.end32_crit_edge ], [ %inc25, %for.end21 ]
  store i8 9, i8* %arrayidx.i77.lcssa, align 1, !tbaa !1
  %48 = load i32** %nodeidx.i113162, align 8, !tbaa !0
  %arrayidx2.i = getelementptr inbounds i32* %48, i64 %idxprom.i75.lcssa
  store i32 0, i32* %arrayidx2.i, align 4, !tbaa !3
  %49 = load i32** %pos4.i108, align 8, !tbaa !0
  %arrayidx5.i = getelementptr inbounds i32* %49, i64 %idxprom.i75.lcssa
  store i32 0, i32* %arrayidx5.i, align 4, !tbaa !3
  %inc33 = add nsw i32 %tpos.3.lcssa, 1
  %50 = load %struct.p7trace_s** %tr, align 8, !tbaa !0
  %tlen = getelementptr inbounds %struct.p7trace_s* %50, i64 0, i32 0
  store i32 %inc33, i32* %tlen, align 4, !tbaa !3
  ret %struct.p7trace_s* %50
}

; Function Attrs: nounwind optsize uwtable
define void @ImposeMasterTrace(i8** nocapture %aseq, i32 %nseq, %struct.p7trace_s* nocapture %mtr, %struct.p7trace_s*** nocapture %ret_tr) #0 {
entry:
  %conv = sext i32 %nseq to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 1126, i64 %mul) #6
  %0 = bitcast i8* %call to %struct.p7trace_s**
  %cmp399 = icmp sgt i32 %nseq, 0
  br i1 %cmp399, label %for.body.lr.ph, label %for.end245

for.body.lr.ph:                                   ; preds = %entry
  %tlen = getelementptr inbounds %struct.p7trace_s* %mtr, i64 0, i32 0
  %statetype = getelementptr inbounds %struct.p7trace_s* %mtr, i64 0, i32 1
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %mtr, i64 0, i32 2
  %pos = getelementptr inbounds %struct.p7trace_s* %mtr, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %indvars.iv401 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next402, %for.end ]
  %1 = load i32* %tlen, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.p7trace_s** %0, i64 %indvars.iv401
  tail call void @P7AllocTrace(i32 %1, %struct.p7trace_s** %arrayidx) #7
  %2 = load i32* %tlen, align 4, !tbaa !3
  %cmp4394 = icmp sgt i32 %2, 0
  br i1 %cmp4394, label %for.body6.lr.ph, label %for.end

for.body6.lr.ph:                                  ; preds = %for.body
  %arrayidx22 = getelementptr inbounds i8** %aseq, i64 %indvars.iv401
  br label %for.body6

for.body6:                                        ; preds = %for.inc, %for.body6.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %tpos.0396 = phi i32 [ 0, %for.body6.lr.ph ], [ %tpos.1, %for.inc ]
  %i.0395 = phi i32 [ 1, %for.body6.lr.ph ], [ %i.2, %for.inc ]
  %3 = load i8** %statetype, align 8, !tbaa !0
  %arrayidx8 = getelementptr inbounds i8* %3, i64 %indvars.iv
  %4 = load i8* %arrayidx8, align 1, !tbaa !1
  %conv9 = sext i8 %4 to i32
  switch i32 %conv9, label %for.inc [
    i32 4, label %sw.bb
    i32 6, label %sw.bb
    i32 2, label %sw.bb
    i32 7, label %sw.bb
    i32 9, label %sw.bb
    i32 1, label %sw.bb17
    i32 3, label %sw.bb86
    i32 10, label %sw.bb155
    i32 5, label %sw.bb155
    i32 8, label %sw.bb155
    i32 0, label %sw.bb238
  ]

sw.bb:                                            ; preds = %for.body6, %for.body6, %for.body6, %for.body6, %for.body6
  %5 = load %struct.p7trace_s** %arrayidx, align 8, !tbaa !0
  %6 = load i32** %nodeidx, align 8, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %7 = load i32* %arrayidx16, align 4, !tbaa !3
  %idxprom.i = sext i32 %tpos.0396 to i64
  %statetype.i = getelementptr inbounds %struct.p7trace_s* %5, i64 0, i32 1
  %8 = load i8** %statetype.i, align 8, !tbaa !0
  %arrayidx.i = getelementptr inbounds i8* %8, i64 %idxprom.i
  store i8 %4, i8* %arrayidx.i, align 1, !tbaa !1
  %nodeidx.i = getelementptr inbounds %struct.p7trace_s* %5, i64 0, i32 2
  %9 = load i32** %nodeidx.i, align 8, !tbaa !0
  %arrayidx2.i = getelementptr inbounds i32* %9, i64 %idxprom.i
  store i32 %7, i32* %arrayidx2.i, align 4, !tbaa !3
  %pos4.i = getelementptr inbounds %struct.p7trace_s* %5, i64 0, i32 3
  %10 = load i32** %pos4.i, align 8, !tbaa !0
  %arrayidx5.i = getelementptr inbounds i32* %10, i64 %idxprom.i
  store i32 0, i32* %arrayidx5.i, align 4, !tbaa !3
  %inc = add nsw i32 %tpos.0396, 1
  br label %for.inc

sw.bb17:                                          ; preds = %for.body6
  %11 = load i32** %pos, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds i32* %11, i64 %indvars.iv
  %12 = load i32* %arrayidx19, align 4, !tbaa !3
  %sub = add nsw i32 %12, -1
  %idxprom20 = sext i32 %sub to i64
  %13 = load i8** %arrayidx22, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds i8* %13, i64 %idxprom20
  %14 = load i8* %arrayidx23, align 1, !tbaa !1
  switch i8 %14, label %if.else [
    i8 32, label %if.then
    i8 46, label %if.then
    i8 95, label %if.then
    i8 45, label %if.then
    i8 126, label %if.then
  ]

if.then:                                          ; preds = %sw.bb17, %sw.bb17, %sw.bb17, %sw.bb17, %sw.bb17
  %15 = load %struct.p7trace_s** %arrayidx, align 8, !tbaa !0
  %16 = load i32** %nodeidx, align 8, !tbaa !0
  %arrayidx78 = getelementptr inbounds i32* %16, i64 %indvars.iv
  %17 = load i32* %arrayidx78, align 4, !tbaa !3
  %idxprom.i387 = sext i32 %tpos.0396 to i64
  %statetype.i388 = getelementptr inbounds %struct.p7trace_s* %15, i64 0, i32 1
  %18 = load i8** %statetype.i388, align 8, !tbaa !0
  %arrayidx.i389 = getelementptr inbounds i8* %18, i64 %idxprom.i387
  store i8 2, i8* %arrayidx.i389, align 1, !tbaa !1
  %nodeidx.i390 = getelementptr inbounds %struct.p7trace_s* %15, i64 0, i32 2
  %19 = load i32** %nodeidx.i390, align 8, !tbaa !0
  %arrayidx2.i391 = getelementptr inbounds i32* %19, i64 %idxprom.i387
  store i32 %17, i32* %arrayidx2.i391, align 4, !tbaa !3
  %pos4.i392 = getelementptr inbounds %struct.p7trace_s* %15, i64 0, i32 3
  %20 = load i32** %pos4.i392, align 8, !tbaa !0
  %arrayidx5.i393 = getelementptr inbounds i32* %20, i64 %idxprom.i387
  store i32 0, i32* %arrayidx5.i393, align 4, !tbaa !3
  br label %if.end

if.else:                                          ; preds = %sw.bb17
  %21 = load %struct.p7trace_s** %arrayidx, align 8, !tbaa !0
  %22 = load i32** %nodeidx, align 8, !tbaa !0
  %arrayidx83 = getelementptr inbounds i32* %22, i64 %indvars.iv
  %23 = load i32* %arrayidx83, align 4, !tbaa !3
  %idxprom.i380 = sext i32 %tpos.0396 to i64
  %statetype.i381 = getelementptr inbounds %struct.p7trace_s* %21, i64 0, i32 1
  %24 = load i8** %statetype.i381, align 8, !tbaa !0
  %arrayidx.i382 = getelementptr inbounds i8* %24, i64 %idxprom.i380
  store i8 1, i8* %arrayidx.i382, align 1, !tbaa !1
  %nodeidx.i383 = getelementptr inbounds %struct.p7trace_s* %21, i64 0, i32 2
  %25 = load i32** %nodeidx.i383, align 8, !tbaa !0
  %arrayidx2.i384 = getelementptr inbounds i32* %25, i64 %idxprom.i380
  store i32 %23, i32* %arrayidx2.i384, align 4, !tbaa !3
  %pos4.i385 = getelementptr inbounds %struct.p7trace_s* %21, i64 0, i32 3
  %26 = load i32** %pos4.i385, align 8, !tbaa !0
  %arrayidx5.i386 = getelementptr inbounds i32* %26, i64 %idxprom.i380
  store i32 %i.0395, i32* %arrayidx5.i386, align 4, !tbaa !3
  %inc84 = add nsw i32 %i.0395, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %i.1 = phi i32 [ %i.0395, %if.then ], [ %inc84, %if.else ]
  %inc85 = add nsw i32 %tpos.0396, 1
  br label %for.inc

sw.bb86:                                          ; preds = %for.body6
  %27 = load i32** %pos, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds i32* %27, i64 %indvars.iv
  %28 = load i32* %arrayidx89, align 4, !tbaa !3
  %sub90 = add nsw i32 %28, -1
  %idxprom91 = sext i32 %sub90 to i64
  %29 = load i8** %arrayidx22, align 8, !tbaa !0
  %arrayidx94 = getelementptr inbounds i8* %29, i64 %idxprom91
  %30 = load i8* %arrayidx94, align 1, !tbaa !1
  switch i8 %30, label %if.then146 [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ]

if.then146:                                       ; preds = %sw.bb86
  %31 = load %struct.p7trace_s** %arrayidx, align 8, !tbaa !0
  %32 = load i32** %nodeidx, align 8, !tbaa !0
  %arrayidx151 = getelementptr inbounds i32* %32, i64 %indvars.iv
  %33 = load i32* %arrayidx151, align 4, !tbaa !3
  %idxprom.i373 = sext i32 %tpos.0396 to i64
  %statetype.i374 = getelementptr inbounds %struct.p7trace_s* %31, i64 0, i32 1
  %34 = load i8** %statetype.i374, align 8, !tbaa !0
  %arrayidx.i375 = getelementptr inbounds i8* %34, i64 %idxprom.i373
  store i8 3, i8* %arrayidx.i375, align 1, !tbaa !1
  %nodeidx.i376 = getelementptr inbounds %struct.p7trace_s* %31, i64 0, i32 2
  %35 = load i32** %nodeidx.i376, align 8, !tbaa !0
  %arrayidx2.i377 = getelementptr inbounds i32* %35, i64 %idxprom.i373
  store i32 %33, i32* %arrayidx2.i377, align 4, !tbaa !3
  %pos4.i378 = getelementptr inbounds %struct.p7trace_s* %31, i64 0, i32 3
  %36 = load i32** %pos4.i378, align 8, !tbaa !0
  %arrayidx5.i379 = getelementptr inbounds i32* %36, i64 %idxprom.i373
  store i32 %i.0395, i32* %arrayidx5.i379, align 4, !tbaa !3
  %inc152 = add nsw i32 %i.0395, 1
  %inc153 = add nsw i32 %tpos.0396, 1
  br label %for.inc

sw.bb155:                                         ; preds = %for.body6, %for.body6, %for.body6
  %37 = load i32** %pos, align 8, !tbaa !0
  %arrayidx158 = getelementptr inbounds i32* %37, i64 %indvars.iv
  %38 = load i32* %arrayidx158, align 4, !tbaa !3
  %cmp159 = icmp eq i32 %38, 0
  br i1 %cmp159, label %if.then161, label %if.else168

if.then161:                                       ; preds = %sw.bb155
  %39 = load %struct.p7trace_s** %arrayidx, align 8, !tbaa !0
  %idxprom.i366 = sext i32 %tpos.0396 to i64
  %statetype.i367 = getelementptr inbounds %struct.p7trace_s* %39, i64 0, i32 1
  %40 = load i8** %statetype.i367, align 8, !tbaa !0
  %arrayidx.i368 = getelementptr inbounds i8* %40, i64 %idxprom.i366
  store i8 %4, i8* %arrayidx.i368, align 1, !tbaa !1
  %nodeidx.i369 = getelementptr inbounds %struct.p7trace_s* %39, i64 0, i32 2
  %41 = load i32** %nodeidx.i369, align 8, !tbaa !0
  %arrayidx2.i370 = getelementptr inbounds i32* %41, i64 %idxprom.i366
  store i32 0, i32* %arrayidx2.i370, align 4, !tbaa !3
  %pos4.i371 = getelementptr inbounds %struct.p7trace_s* %39, i64 0, i32 3
  %42 = load i32** %pos4.i371, align 8, !tbaa !0
  %arrayidx5.i372 = getelementptr inbounds i32* %42, i64 %idxprom.i366
  store i32 0, i32* %arrayidx5.i372, align 4, !tbaa !3
  %inc167 = add nsw i32 %tpos.0396, 1
  br label %for.inc

if.else168:                                       ; preds = %sw.bb155
  %sub172 = add nsw i32 %38, -1
  %idxprom173 = sext i32 %sub172 to i64
  %43 = load i8** %arrayidx22, align 8, !tbaa !0
  %arrayidx176 = getelementptr inbounds i8* %43, i64 %idxprom173
  %44 = load i8* %arrayidx176, align 1, !tbaa !1
  switch i8 %44, label %if.then228 [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ]

if.then228:                                       ; preds = %if.else168
  %45 = load %struct.p7trace_s** %arrayidx, align 8, !tbaa !0
  %idxprom.i359 = sext i32 %tpos.0396 to i64
  %statetype.i360 = getelementptr inbounds %struct.p7trace_s* %45, i64 0, i32 1
  %46 = load i8** %statetype.i360, align 8, !tbaa !0
  %arrayidx.i361 = getelementptr inbounds i8* %46, i64 %idxprom.i359
  store i8 %4, i8* %arrayidx.i361, align 1, !tbaa !1
  %nodeidx.i362 = getelementptr inbounds %struct.p7trace_s* %45, i64 0, i32 2
  %47 = load i32** %nodeidx.i362, align 8, !tbaa !0
  %arrayidx2.i363 = getelementptr inbounds i32* %47, i64 %idxprom.i359
  store i32 0, i32* %arrayidx2.i363, align 4, !tbaa !3
  %pos4.i364 = getelementptr inbounds %struct.p7trace_s* %45, i64 0, i32 3
  %48 = load i32** %pos4.i364, align 8, !tbaa !0
  %arrayidx5.i365 = getelementptr inbounds i32* %48, i64 %idxprom.i359
  store i32 %i.0395, i32* %arrayidx5.i365, align 4, !tbaa !3
  %inc234 = add nsw i32 %i.0395, 1
  %inc235 = add nsw i32 %tpos.0396, 1
  br label %for.inc

sw.bb238:                                         ; preds = %for.body6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([25 x i8]* @.str17, i64 0, i64 0)) #6
  br label %for.inc

for.inc:                                          ; preds = %if.else168, %if.else168, %if.else168, %if.else168, %if.else168, %sw.bb86, %sw.bb86, %sw.bb86, %sw.bb86, %sw.bb86, %sw.bb, %if.end, %for.body6, %sw.bb238, %if.then146, %if.then228, %if.then161
  %i.2 = phi i32 [ %i.0395, %for.body6 ], [ %i.0395, %sw.bb238 ], [ %i.0395, %if.then161 ], [ %i.0395, %if.else168 ], [ %inc234, %if.then228 ], [ %i.0395, %sw.bb86 ], [ %inc152, %if.then146 ], [ %i.1, %if.end ], [ %i.0395, %sw.bb ], [ %i.0395, %sw.bb86 ], [ %i.0395, %sw.bb86 ], [ %i.0395, %sw.bb86 ], [ %i.0395, %sw.bb86 ], [ %i.0395, %if.else168 ], [ %i.0395, %if.else168 ], [ %i.0395, %if.else168 ], [ %i.0395, %if.else168 ]
  %tpos.1 = phi i32 [ %tpos.0396, %for.body6 ], [ %tpos.0396, %sw.bb238 ], [ %inc167, %if.then161 ], [ %tpos.0396, %if.else168 ], [ %inc235, %if.then228 ], [ %tpos.0396, %sw.bb86 ], [ %inc153, %if.then146 ], [ %inc85, %if.end ], [ %inc, %sw.bb ], [ %tpos.0396, %sw.bb86 ], [ %tpos.0396, %sw.bb86 ], [ %tpos.0396, %sw.bb86 ], [ %tpos.0396, %sw.bb86 ], [ %tpos.0396, %if.else168 ], [ %tpos.0396, %if.else168 ], [ %tpos.0396, %if.else168 ], [ %tpos.0396, %if.else168 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %49 = load i32* %tlen, align 4, !tbaa !3
  %50 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %50, %49
  br i1 %cmp4, label %for.body6, label %for.end

for.end:                                          ; preds = %for.inc, %for.body
  %tpos.0.lcssa = phi i32 [ 0, %for.body ], [ %tpos.1, %for.inc ]
  %51 = load %struct.p7trace_s** %arrayidx, align 8, !tbaa !0
  %tlen242 = getelementptr inbounds %struct.p7trace_s* %51, i64 0, i32 0
  store i32 %tpos.0.lcssa, i32* %tlen242, align 4, !tbaa !3
  %indvars.iv.next402 = add i64 %indvars.iv401, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next402 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq
  br i1 %exitcond, label %for.end245, label %for.body

for.end245:                                       ; preds = %for.end, %entry
  store %struct.p7trace_s** %0, %struct.p7trace_s*** %ret_tr, align 8, !tbaa !0
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
