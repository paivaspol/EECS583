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
  tail call void @llvm.dbg.value(metadata !{i32 %tlen}, i64 0, metadata !38), !dbg !474
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %ret_tr}, i64 0, metadata !39), !dbg !474
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 40, i64 32) #7, !dbg !475
  %0 = bitcast i8* %call to %struct.p7trace_s*, !dbg !475
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %0}, i64 0, metadata !40), !dbg !475
  %conv = sext i32 %tlen to i64, !dbg !476
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 41, i64 %conv) #7, !dbg !476
  %statetype = getelementptr inbounds i8* %call, i64 8, !dbg !476
  %1 = bitcast i8* %statetype to i8**, !dbg !476
  store i8* %call1, i8** %1, align 8, !dbg !476, !tbaa !477
  %mul3 = shl nsw i64 %conv, 2, !dbg !480
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 42, i64 %mul3) #7, !dbg !480
  %2 = bitcast i8* %call4 to i32*, !dbg !480
  %nodeidx = getelementptr inbounds i8* %call, i64 16, !dbg !480
  %3 = bitcast i8* %nodeidx to i32**, !dbg !480
  store i32* %2, i32** %3, align 8, !dbg !480, !tbaa !477
  %call7 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 43, i64 %mul3) #7, !dbg !481
  %4 = bitcast i8* %call7 to i32*, !dbg !481
  %pos = getelementptr inbounds i8* %call, i64 24, !dbg !481
  %5 = bitcast i8* %pos to i32**, !dbg !481
  store i32* %4, i32** %5, align 8, !dbg !481, !tbaa !477
  store %struct.p7trace_s* %0, %struct.p7trace_s** %ret_tr, align 8, !dbg !482, !tbaa !477
  ret void, !dbg !483
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @P7ReallocTrace(%struct.p7trace_s* nocapture %tr, i32 %tlen) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %tr}, i64 0, metadata !45), !dbg !484
  tail call void @llvm.dbg.value(metadata !{i32 %tlen}, i64 0, metadata !46), !dbg !484
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1, !dbg !485
  %0 = load i8** %statetype, align 8, !dbg !485, !tbaa !477
  %conv = sext i32 %tlen to i64, !dbg !485
  %call = tail call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 49, i8* %0, i64 %conv) #7, !dbg !485
  store i8* %call, i8** %statetype, align 8, !dbg !485, !tbaa !477
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2, !dbg !486
  %1 = load i32** %nodeidx, align 8, !dbg !486, !tbaa !477
  %2 = bitcast i32* %1 to i8*, !dbg !486
  %mul3 = shl nsw i64 %conv, 2, !dbg !486
  %call4 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 50, i8* %2, i64 %mul3) #7, !dbg !486
  %3 = bitcast i8* %call4 to i32*, !dbg !486
  store i32* %3, i32** %nodeidx, align 8, !dbg !486, !tbaa !477
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3, !dbg !487
  %4 = load i32** %pos, align 8, !dbg !487, !tbaa !477
  %5 = bitcast i32* %4 to i8*, !dbg !487
  %call8 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 51, i8* %5, i64 %mul3) #7, !dbg !487
  %6 = bitcast i8* %call8 to i32*, !dbg !487
  store i32* %6, i32** %pos, align 8, !dbg !487, !tbaa !477
  ret void, !dbg !488
}

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @P7FreeTrace(%struct.p7trace_s* %tr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %tr}, i64 0, metadata !51), !dbg !489
  %cmp = icmp eq %struct.p7trace_s* %tr, null, !dbg !490
  br i1 %cmp, label %return, label %if.end, !dbg !490

if.end:                                           ; preds = %entry
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3, !dbg !491
  %0 = load i32** %pos, align 8, !dbg !491, !tbaa !477
  %1 = bitcast i32* %0 to i8*, !dbg !491
  tail call void @free(i8* %1) #7, !dbg !491
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2, !dbg !492
  %2 = load i32** %nodeidx, align 8, !dbg !492, !tbaa !477
  %3 = bitcast i32* %2 to i8*, !dbg !492
  tail call void @free(i8* %3) #7, !dbg !492
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1, !dbg !493
  %4 = load i8** %statetype, align 8, !dbg !493, !tbaa !477
  tail call void @free(i8* %4) #7, !dbg !493
  %5 = bitcast %struct.p7trace_s* %tr to i8*, !dbg !494
  tail call void @free(i8* %5) #7, !dbg !494
  br label %return, !dbg !494

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !494
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @TraceSet(%struct.p7trace_s* nocapture %tr, i32 %tpos, i8 signext %type, i32 %idx, i32 %pos) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %tr}, i64 0, metadata !56), !dbg !495
  tail call void @llvm.dbg.value(metadata !{i32 %tpos}, i64 0, metadata !57), !dbg !495
  tail call void @llvm.dbg.value(metadata !{i8 %type}, i64 0, metadata !58), !dbg !495
  tail call void @llvm.dbg.value(metadata !{i32 %idx}, i64 0, metadata !59), !dbg !495
  tail call void @llvm.dbg.value(metadata !{i32 %pos}, i64 0, metadata !60), !dbg !495
  %idxprom = sext i32 %tpos to i64, !dbg !496
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1, !dbg !496
  %0 = load i8** %statetype, align 8, !dbg !496, !tbaa !477
  %arrayidx = getelementptr inbounds i8* %0, i64 %idxprom, !dbg !496
  store i8 %type, i8* %arrayidx, align 1, !dbg !496, !tbaa !478
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2, !dbg !497
  %1 = load i32** %nodeidx, align 8, !dbg !497, !tbaa !477
  %arrayidx2 = getelementptr inbounds i32* %1, i64 %idxprom, !dbg !497
  store i32 %idx, i32* %arrayidx2, align 4, !dbg !497, !tbaa !498
  %pos4 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3, !dbg !499
  %2 = load i32** %pos4, align 8, !dbg !499, !tbaa !477
  %arrayidx5 = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !499
  store i32 %pos, i32* %arrayidx5, align 4, !dbg !499, !tbaa !498
  ret void, !dbg !500
}

; Function Attrs: nounwind optsize uwtable
define %struct.p7trace_s** @MergeTraceArrays(%struct.p7trace_s** nocapture %t1, i32 %n1, %struct.p7trace_s** nocapture %t2, i32 %n2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %t1}, i64 0, metadata !65), !dbg !501
  tail call void @llvm.dbg.value(metadata !{i32 %n1}, i64 0, metadata !66), !dbg !501
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %t2}, i64 0, metadata !67), !dbg !501
  tail call void @llvm.dbg.value(metadata !{i32 %n2}, i64 0, metadata !68), !dbg !501
  %add = add nsw i32 %n2, %n1, !dbg !502
  %conv = sext i32 %add to i64, !dbg !502
  %mul = shl nsw i64 %conv, 3, !dbg !502
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 110, i64 %mul) #7, !dbg !502
  %0 = bitcast i8* %call to %struct.p7trace_s**, !dbg !502
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %0}, i64 0, metadata !69), !dbg !502
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !70), !dbg !503
  %cmp32 = icmp sgt i32 %n1, 0, !dbg !503
  br i1 %cmp32, label %for.body, label %for.cond4.preheader, !dbg !503

for.cond4.preheader:                              ; preds = %for.body, %entry
  %cmp530 = icmp sgt i32 %n2, 0, !dbg !505
  br i1 %cmp530, label %for.body7.lr.ph, label %for.end15, !dbg !505

for.body7.lr.ph:                                  ; preds = %for.cond4.preheader
  %1 = sext i32 %n1 to i64, !dbg !505
  br label %for.body7, !dbg !505

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds %struct.p7trace_s** %t1, i64 %indvars.iv35, !dbg !503
  %2 = load %struct.p7trace_s** %arrayidx, align 8, !dbg !503, !tbaa !477
  %arrayidx3 = getelementptr inbounds %struct.p7trace_s** %0, i64 %indvars.iv35, !dbg !503
  store %struct.p7trace_s* %2, %struct.p7trace_s** %arrayidx3, align 8, !dbg !503, !tbaa !477
  %indvars.iv.next36 = add i64 %indvars.iv35, 1, !dbg !503
  %lftr.wideiv37 = trunc i64 %indvars.iv.next36 to i32, !dbg !503
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %n1, !dbg !503
  br i1 %exitcond38, label %for.cond4.preheader, label %for.body, !dbg !503

for.body7:                                        ; preds = %for.body7, %for.body7.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next, %for.body7 ]
  %arrayidx9 = getelementptr inbounds %struct.p7trace_s** %t2, i64 %indvars.iv, !dbg !505
  %3 = load %struct.p7trace_s** %arrayidx9, align 8, !dbg !505, !tbaa !477
  %4 = add nsw i64 %indvars.iv, %1, !dbg !505
  %arrayidx12 = getelementptr inbounds %struct.p7trace_s** %0, i64 %4, !dbg !505
  store %struct.p7trace_s* %3, %struct.p7trace_s** %arrayidx12, align 8, !dbg !505, !tbaa !477
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !505
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !505
  %exitcond = icmp eq i32 %lftr.wideiv, %n2, !dbg !505
  br i1 %exitcond, label %for.end15, label %for.body7, !dbg !505

for.end15:                                        ; preds = %for.body7, %for.cond4.preheader
  %5 = bitcast %struct.p7trace_s** %t1 to i8*, !dbg !507
  tail call void @free(i8* %5) #7, !dbg !507
  %6 = bitcast %struct.p7trace_s** %t2 to i8*, !dbg !508
  tail call void @free(i8* %6) #7, !dbg !508
  ret %struct.p7trace_s** %0, !dbg !509
}

; Function Attrs: nounwind optsize uwtable
define void @P7ReverseTrace(%struct.p7trace_s* nocapture %tr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %tr}, i64 0, metadata !73), !dbg !510
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0, !dbg !511
  %0 = load i32* %tlen, align 4, !dbg !511, !tbaa !498
  %conv = sext i32 %0 to i64, !dbg !511
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 149, i64 %conv) #7, !dbg !511
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !74), !dbg !511
  %1 = load i32* %tlen, align 4, !dbg !512, !tbaa !498
  %conv2 = sext i32 %1 to i64, !dbg !512
  %mul3 = shl nsw i64 %conv2, 2, !dbg !512
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 150, i64 %mul3) #7, !dbg !512
  %2 = bitcast i8* %call4 to i32*, !dbg !512
  tail call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !75), !dbg !512
  %3 = load i32* %tlen, align 4, !dbg !513, !tbaa !498
  %conv6 = sext i32 %3 to i64, !dbg !513
  %mul7 = shl nsw i64 %conv6, 2, !dbg !513
  %call8 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 151, i64 %mul7) #7, !dbg !513
  %4 = bitcast i8* %call8 to i32*, !dbg !513
  tail call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !76), !dbg !513
  %5 = load i32* %tlen, align 4, !dbg !514, !tbaa !498
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !78), !dbg !514
  %cmp55 = icmp sgt i32 %5, 0, !dbg !514
  %statetype12 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1, !dbg !516
  %nodeidx16 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2, !dbg !518
  %pos21 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3, !dbg !519
  br i1 %cmp55, label %for.body.lr.ph, label %for.end, !dbg !514

for.body.lr.ph:                                   ; preds = %entry
  %6 = sext i32 %5 to i64
  br label %for.body, !dbg !514

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv58 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next59, %for.body ], !dbg !514
  %indvars.iv = phi i64 [ %6, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !514
  %7 = load i8** %statetype12, align 8, !dbg !516, !tbaa !477
  %arrayidx = getelementptr inbounds i8* %7, i64 %indvars.iv.next, !dbg !516
  %8 = load i8* %arrayidx, align 1, !dbg !516, !tbaa !478
  %arrayidx14 = getelementptr inbounds i8* %call, i64 %indvars.iv58, !dbg !516
  store i8 %8, i8* %arrayidx14, align 1, !dbg !516, !tbaa !478
  %9 = load i32** %nodeidx16, align 8, !dbg !518, !tbaa !477
  %arrayidx17 = getelementptr inbounds i32* %9, i64 %indvars.iv.next, !dbg !518
  %10 = load i32* %arrayidx17, align 4, !dbg !518, !tbaa !498
  %arrayidx19 = getelementptr inbounds i32* %2, i64 %indvars.iv58, !dbg !518
  store i32 %10, i32* %arrayidx19, align 4, !dbg !518, !tbaa !498
  %11 = load i32** %pos21, align 8, !dbg !519, !tbaa !477
  %arrayidx22 = getelementptr inbounds i32* %11, i64 %indvars.iv.next, !dbg !519
  %12 = load i32* %arrayidx22, align 4, !dbg !519, !tbaa !498
  %arrayidx24 = getelementptr inbounds i32* %4, i64 %indvars.iv58, !dbg !519
  store i32 %12, i32* %arrayidx24, align 4, !dbg !519, !tbaa !498
  %indvars.iv.next59 = add i64 %indvars.iv58, 1, !dbg !514
  %13 = load i32* %tlen, align 4, !dbg !514, !tbaa !498
  %14 = trunc i64 %indvars.iv.next59 to i32, !dbg !514
  %cmp = icmp slt i32 %14, %13, !dbg !514
  br i1 %cmp, label %for.body, label %for.end, !dbg !514

for.end:                                          ; preds = %entry, %for.body
  %15 = load i8** %statetype12, align 8, !dbg !520, !tbaa !477
  tail call void @free(i8* %15) #7, !dbg !520
  %16 = load i32** %nodeidx16, align 8, !dbg !521, !tbaa !477
  %17 = bitcast i32* %16 to i8*, !dbg !521
  tail call void @free(i8* %17) #7, !dbg !521
  %18 = load i32** %pos21, align 8, !dbg !522, !tbaa !477
  %19 = bitcast i32* %18 to i8*, !dbg !522
  tail call void @free(i8* %19) #7, !dbg !522
  store i8* %call, i8** %statetype12, align 8, !dbg !523, !tbaa !477
  store i32* %2, i32** %nodeidx16, align 8, !dbg !524, !tbaa !477
  store i32* %4, i32** %pos21, align 8, !dbg !525, !tbaa !477
  ret void, !dbg !526
}

; Function Attrs: nounwind optsize uwtable
define void @P7TraceCount(%struct.plan7_s* nocapture %hmm, i8* nocapture %dsq, float %wt, %struct.p7trace_s* nocapture %tr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !146), !dbg !527
  tail call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !147), !dbg !527
  tail call void @llvm.dbg.value(metadata !{float %wt}, i64 0, metadata !148), !dbg !527
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %tr}, i64 0, metadata !149), !dbg !527
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !150), !dbg !528
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0, !dbg !528
  %0 = load i32* %tlen, align 4, !dbg !528, !tbaa !498
  %cmp404 = icmp sgt i32 %0, 0, !dbg !528
  br i1 %cmp404, label %for.body.lr.ph, label %for.end, !dbg !528

for.body.lr.ph:                                   ; preds = %entry
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3, !dbg !530
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1, !dbg !532
  %arrayidx36 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 0, !dbg !533
  %arrayidx41 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 0, i64 1, !dbg !536
  %nodeidx60 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2, !dbg !537
  %begin = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 26, !dbg !537
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !539
  %t = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 21, !dbg !540
  %end = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 27, !dbg !542
  %arrayidx207 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 0, !dbg !543
  %arrayidx212 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 1, i64 1, !dbg !545
  %arrayidx234 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 0, !dbg !546
  %arrayidx239 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 3, i64 1, !dbg !548
  %arrayidx261 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 0, !dbg !549
  %arrayidx266 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 25, i64 2, i64 1, !dbg !551
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !552
  %ins = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 23, !dbg !553
  br label %for.body, !dbg !528

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %1 = load i32** %pos, align 8, !dbg !530, !tbaa !477
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv, !dbg !530
  %2 = load i32* %arrayidx, align 4, !dbg !530, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !151), !dbg !530
  %3 = load i8** %statetype, align 8, !dbg !532, !tbaa !477
  %arrayidx2 = getelementptr inbounds i8* %3, i64 %indvars.iv, !dbg !532
  %4 = load i8* %arrayidx2, align 1, !dbg !532, !tbaa !478
  switch i8 %4, label %if.end25 [
    i8 1, label %if.then
    i8 3, label %if.then17
  ], !dbg !532

if.then:                                          ; preds = %for.body
  %5 = load i32** %nodeidx60, align 8, !dbg !552, !tbaa !477
  %arrayidx6 = getelementptr inbounds i32* %5, i64 %indvars.iv, !dbg !552
  %6 = load i32* %arrayidx6, align 4, !dbg !552, !tbaa !498
  %idxprom7 = sext i32 %6 to i64, !dbg !552
  %7 = load float*** %mat, align 8, !dbg !552, !tbaa !477
  %arrayidx8 = getelementptr inbounds float** %7, i64 %idxprom7, !dbg !552
  %8 = load float** %arrayidx8, align 8, !dbg !552, !tbaa !477
  %idxprom9 = sext i32 %2 to i64, !dbg !552
  %arrayidx10 = getelementptr inbounds i8* %dsq, i64 %idxprom9, !dbg !552
  %9 = load i8* %arrayidx10, align 1, !dbg !552, !tbaa !478
  tail call void @P7CountSymbol(float* %8, i8 signext %9, float %wt) #7, !dbg !552
  br label %if.end25, !dbg !552

if.then17:                                        ; preds = %for.body
  %10 = load i32** %nodeidx60, align 8, !dbg !553, !tbaa !477
  %arrayidx20 = getelementptr inbounds i32* %10, i64 %indvars.iv, !dbg !553
  %11 = load i32* %arrayidx20, align 4, !dbg !553, !tbaa !498
  %idxprom21 = sext i32 %11 to i64, !dbg !553
  %12 = load float*** %ins, align 8, !dbg !553, !tbaa !477
  %arrayidx22 = getelementptr inbounds float** %12, i64 %idxprom21, !dbg !553
  %13 = load float** %arrayidx22, align 8, !dbg !553, !tbaa !477
  %idxprom23 = sext i32 %2 to i64, !dbg !553
  %arrayidx24 = getelementptr inbounds i8* %dsq, i64 %idxprom23, !dbg !553
  %14 = load i8* %arrayidx24, align 1, !dbg !553, !tbaa !478
  tail call void @P7CountSymbol(float* %13, i8 signext %14, float %wt) #7, !dbg !553
  br label %if.end25, !dbg !553

if.end25:                                         ; preds = %for.body, %if.then17, %if.then
  %15 = load i8** %statetype, align 8, !dbg !554, !tbaa !477
  %arrayidx28 = getelementptr inbounds i8* %15, i64 %indvars.iv, !dbg !554
  %16 = load i8* %arrayidx28, align 1, !dbg !554, !tbaa !478
  %conv29 = sext i8 %16 to i32, !dbg !554
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
  ], !dbg !554

sw.bb:                                            ; preds = %if.end25
  %17 = add nsw i64 %indvars.iv, 1, !dbg !555
  %arrayidx32 = getelementptr inbounds i8* %15, i64 %17, !dbg !555
  %18 = load i8* %arrayidx32, align 1, !dbg !555, !tbaa !478
  %conv33 = sext i8 %18 to i32, !dbg !555
  switch i32 %conv33, label %sw.default [
    i32 6, label %sw.bb34
    i32 5, label %sw.bb38
  ], !dbg !555

sw.bb34:                                          ; preds = %sw.bb
  %19 = load float* %arrayidx36, align 4, !dbg !533, !tbaa !556
  %add37 = fadd float %19, %wt, !dbg !533
  store float %add37, float* %arrayidx36, align 4, !dbg !533, !tbaa !556
  br label %for.inc, !dbg !533

sw.bb38:                                          ; preds = %sw.bb
  %20 = load float* %arrayidx41, align 4, !dbg !536, !tbaa !556
  %add42 = fadd float %20, %wt, !dbg !536
  store float %add42, float* %arrayidx41, align 4, !dbg !536, !tbaa !556
  br label %for.inc, !dbg !536

sw.default:                                       ; preds = %sw.bb
  %call = tail call i8* @Statetype(i8 signext %16) #7, !dbg !557
  %21 = load i8** %statetype, align 8, !dbg !558, !tbaa !477
  %arrayidx49 = getelementptr inbounds i8* %21, i64 %17, !dbg !558
  %22 = load i8* %arrayidx49, align 1, !dbg !558, !tbaa !478
  %call50 = tail call i8* @Statetype(i8 signext %22) #7, !dbg !558
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call, i8* %call50) #7, !dbg !558
  br label %for.inc, !dbg !559

sw.bb51:                                          ; preds = %if.end25
  %23 = add nsw i64 %indvars.iv, 1, !dbg !560
  %arrayidx55 = getelementptr inbounds i8* %15, i64 %23, !dbg !560
  %24 = load i8* %arrayidx55, align 1, !dbg !560, !tbaa !478
  %conv56 = sext i8 %24 to i32, !dbg !560
  switch i32 %conv56, label %sw.default67 [
    i32 1, label %sw.bb57
    i32 2, label %sw.bb65
  ], !dbg !560

sw.bb57:                                          ; preds = %sw.bb51
  %25 = load i32** %nodeidx60, align 8, !dbg !537, !tbaa !477
  %arrayidx61 = getelementptr inbounds i32* %25, i64 %23, !dbg !537
  %26 = load i32* %arrayidx61, align 4, !dbg !537, !tbaa !498
  %idxprom62 = sext i32 %26 to i64, !dbg !537
  %27 = load float** %begin, align 8, !dbg !537, !tbaa !477
  %arrayidx63 = getelementptr inbounds float* %27, i64 %idxprom62, !dbg !537
  %28 = load float* %arrayidx63, align 4, !dbg !537, !tbaa !556
  %add64 = fadd float %28, %wt, !dbg !537
  store float %add64, float* %arrayidx63, align 4, !dbg !537, !tbaa !556
  br label %for.inc, !dbg !537

sw.bb65:                                          ; preds = %sw.bb51
  %29 = load float* %tbd1, align 4, !dbg !539, !tbaa !556
  %add66 = fadd float %29, %wt, !dbg !539
  store float %add66, float* %tbd1, align 4, !dbg !539, !tbaa !556
  br label %for.inc, !dbg !539

sw.default67:                                     ; preds = %sw.bb51
  %call71 = tail call i8* @Statetype(i8 signext %16) #7, !dbg !561
  %30 = load i8** %statetype, align 8, !dbg !562, !tbaa !477
  %arrayidx75 = getelementptr inbounds i8* %30, i64 %23, !dbg !562
  %31 = load i8* %arrayidx75, align 1, !dbg !562, !tbaa !478
  %call76 = tail call i8* @Statetype(i8 signext %31) #7, !dbg !562
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call71, i8* %call76) #7, !dbg !562
  br label %for.inc, !dbg !563

sw.bb78:                                          ; preds = %if.end25
  %32 = add nsw i64 %indvars.iv, 1, !dbg !564
  %arrayidx82 = getelementptr inbounds i8* %15, i64 %32, !dbg !564
  %33 = load i8* %arrayidx82, align 1, !dbg !564, !tbaa !478
  %conv83 = sext i8 %33 to i32, !dbg !564
  switch i32 %conv83, label %sw.default117 [
    i32 1, label %sw.bb84
    i32 3, label %sw.bb92
    i32 2, label %sw.bb101
    i32 7, label %sw.bb110
  ], !dbg !564

sw.bb84:                                          ; preds = %sw.bb78
  %34 = load i32** %nodeidx60, align 8, !dbg !540, !tbaa !477
  %arrayidx87 = getelementptr inbounds i32* %34, i64 %indvars.iv, !dbg !540
  %35 = load i32* %arrayidx87, align 4, !dbg !540, !tbaa !498
  %idxprom88 = sext i32 %35 to i64, !dbg !540
  %36 = load float*** %t, align 8, !dbg !540, !tbaa !477
  %arrayidx89 = getelementptr inbounds float** %36, i64 %idxprom88, !dbg !540
  %37 = load float** %arrayidx89, align 8, !dbg !540, !tbaa !477
  %38 = load float* %37, align 4, !dbg !540, !tbaa !556
  %add91 = fadd float %38, %wt, !dbg !540
  store float %add91, float* %37, align 4, !dbg !540, !tbaa !556
  br label %for.inc, !dbg !540

sw.bb92:                                          ; preds = %sw.bb78
  %39 = load i32** %nodeidx60, align 8, !dbg !565, !tbaa !477
  %arrayidx95 = getelementptr inbounds i32* %39, i64 %indvars.iv, !dbg !565
  %40 = load i32* %arrayidx95, align 4, !dbg !565, !tbaa !498
  %idxprom96 = sext i32 %40 to i64, !dbg !565
  %41 = load float*** %t, align 8, !dbg !565, !tbaa !477
  %arrayidx98 = getelementptr inbounds float** %41, i64 %idxprom96, !dbg !565
  %42 = load float** %arrayidx98, align 8, !dbg !565, !tbaa !477
  %arrayidx99 = getelementptr inbounds float* %42, i64 1, !dbg !565
  %43 = load float* %arrayidx99, align 4, !dbg !565, !tbaa !556
  %add100 = fadd float %43, %wt, !dbg !565
  store float %add100, float* %arrayidx99, align 4, !dbg !565, !tbaa !556
  br label %for.inc, !dbg !565

sw.bb101:                                         ; preds = %sw.bb78
  %44 = load i32** %nodeidx60, align 8, !dbg !566, !tbaa !477
  %arrayidx104 = getelementptr inbounds i32* %44, i64 %indvars.iv, !dbg !566
  %45 = load i32* %arrayidx104, align 4, !dbg !566, !tbaa !498
  %idxprom105 = sext i32 %45 to i64, !dbg !566
  %46 = load float*** %t, align 8, !dbg !566, !tbaa !477
  %arrayidx107 = getelementptr inbounds float** %46, i64 %idxprom105, !dbg !566
  %47 = load float** %arrayidx107, align 8, !dbg !566, !tbaa !477
  %arrayidx108 = getelementptr inbounds float* %47, i64 2, !dbg !566
  %48 = load float* %arrayidx108, align 4, !dbg !566, !tbaa !556
  %add109 = fadd float %48, %wt, !dbg !566
  store float %add109, float* %arrayidx108, align 4, !dbg !566, !tbaa !556
  br label %for.inc, !dbg !566

sw.bb110:                                         ; preds = %sw.bb78
  %49 = load i32** %nodeidx60, align 8, !dbg !542, !tbaa !477
  %arrayidx113 = getelementptr inbounds i32* %49, i64 %indvars.iv, !dbg !542
  %50 = load i32* %arrayidx113, align 4, !dbg !542, !tbaa !498
  %idxprom114 = sext i32 %50 to i64, !dbg !542
  %51 = load float** %end, align 8, !dbg !542, !tbaa !477
  %arrayidx115 = getelementptr inbounds float* %51, i64 %idxprom114, !dbg !542
  %52 = load float* %arrayidx115, align 4, !dbg !542, !tbaa !556
  %add116 = fadd float %52, %wt, !dbg !542
  store float %add116, float* %arrayidx115, align 4, !dbg !542, !tbaa !556
  br label %for.inc, !dbg !542

sw.default117:                                    ; preds = %sw.bb78
  %call121 = tail call i8* @Statetype(i8 signext %16) #7, !dbg !567
  %53 = load i8** %statetype, align 8, !dbg !568, !tbaa !477
  %arrayidx125 = getelementptr inbounds i8* %53, i64 %32, !dbg !568
  %54 = load i8* %arrayidx125, align 1, !dbg !568, !tbaa !478
  %call126 = tail call i8* @Statetype(i8 signext %54) #7, !dbg !568
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call121, i8* %call126) #7, !dbg !568
  br label %for.inc, !dbg !569

sw.bb128:                                         ; preds = %if.end25
  %55 = add nsw i64 %indvars.iv, 1, !dbg !570
  %arrayidx132 = getelementptr inbounds i8* %15, i64 %55, !dbg !570
  %56 = load i8* %arrayidx132, align 1, !dbg !570, !tbaa !478
  %conv133 = sext i8 %56 to i32, !dbg !570
  switch i32 %conv133, label %sw.default152 [
    i32 1, label %sw.bb134
    i32 3, label %sw.bb143
  ], !dbg !570

sw.bb134:                                         ; preds = %sw.bb128
  %57 = load i32** %nodeidx60, align 8, !dbg !571, !tbaa !477
  %arrayidx137 = getelementptr inbounds i32* %57, i64 %indvars.iv, !dbg !571
  %58 = load i32* %arrayidx137, align 4, !dbg !571, !tbaa !498
  %idxprom138 = sext i32 %58 to i64, !dbg !571
  %59 = load float*** %t, align 8, !dbg !571, !tbaa !477
  %arrayidx140 = getelementptr inbounds float** %59, i64 %idxprom138, !dbg !571
  %60 = load float** %arrayidx140, align 8, !dbg !571, !tbaa !477
  %arrayidx141 = getelementptr inbounds float* %60, i64 3, !dbg !571
  %61 = load float* %arrayidx141, align 4, !dbg !571, !tbaa !556
  %add142 = fadd float %61, %wt, !dbg !571
  store float %add142, float* %arrayidx141, align 4, !dbg !571, !tbaa !556
  br label %for.inc, !dbg !571

sw.bb143:                                         ; preds = %sw.bb128
  %62 = load i32** %nodeidx60, align 8, !dbg !573, !tbaa !477
  %arrayidx146 = getelementptr inbounds i32* %62, i64 %indvars.iv, !dbg !573
  %63 = load i32* %arrayidx146, align 4, !dbg !573, !tbaa !498
  %idxprom147 = sext i32 %63 to i64, !dbg !573
  %64 = load float*** %t, align 8, !dbg !573, !tbaa !477
  %arrayidx149 = getelementptr inbounds float** %64, i64 %idxprom147, !dbg !573
  %65 = load float** %arrayidx149, align 8, !dbg !573, !tbaa !477
  %arrayidx150 = getelementptr inbounds float* %65, i64 4, !dbg !573
  %66 = load float* %arrayidx150, align 4, !dbg !573, !tbaa !556
  %add151 = fadd float %66, %wt, !dbg !573
  store float %add151, float* %arrayidx150, align 4, !dbg !573, !tbaa !556
  br label %for.inc, !dbg !573

sw.default152:                                    ; preds = %sw.bb128
  %call156 = tail call i8* @Statetype(i8 signext %16) #7, !dbg !574
  %67 = load i8** %statetype, align 8, !dbg !575, !tbaa !477
  %arrayidx160 = getelementptr inbounds i8* %67, i64 %55, !dbg !575
  %68 = load i8* %arrayidx160, align 1, !dbg !575, !tbaa !478
  %call161 = tail call i8* @Statetype(i8 signext %68) #7, !dbg !575
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call156, i8* %call161) #7, !dbg !575
  br label %for.inc, !dbg !576

sw.bb163:                                         ; preds = %if.end25
  %69 = add nsw i64 %indvars.iv, 1, !dbg !577
  %arrayidx167 = getelementptr inbounds i8* %15, i64 %69, !dbg !577
  %70 = load i8* %arrayidx167, align 1, !dbg !577, !tbaa !478
  %conv168 = sext i8 %70 to i32, !dbg !577
  switch i32 %conv168, label %sw.default187 [
    i32 1, label %sw.bb169
    i32 2, label %sw.bb178
    i32 7, label %for.inc
  ], !dbg !577

sw.bb169:                                         ; preds = %sw.bb163
  %71 = load i32** %nodeidx60, align 8, !dbg !578, !tbaa !477
  %arrayidx172 = getelementptr inbounds i32* %71, i64 %indvars.iv, !dbg !578
  %72 = load i32* %arrayidx172, align 4, !dbg !578, !tbaa !498
  %idxprom173 = sext i32 %72 to i64, !dbg !578
  %73 = load float*** %t, align 8, !dbg !578, !tbaa !477
  %arrayidx175 = getelementptr inbounds float** %73, i64 %idxprom173, !dbg !578
  %74 = load float** %arrayidx175, align 8, !dbg !578, !tbaa !477
  %arrayidx176 = getelementptr inbounds float* %74, i64 5, !dbg !578
  %75 = load float* %arrayidx176, align 4, !dbg !578, !tbaa !556
  %add177 = fadd float %75, %wt, !dbg !578
  store float %add177, float* %arrayidx176, align 4, !dbg !578, !tbaa !556
  br label %for.inc, !dbg !578

sw.bb178:                                         ; preds = %sw.bb163
  %76 = load i32** %nodeidx60, align 8, !dbg !580, !tbaa !477
  %arrayidx181 = getelementptr inbounds i32* %76, i64 %indvars.iv, !dbg !580
  %77 = load i32* %arrayidx181, align 4, !dbg !580, !tbaa !498
  %idxprom182 = sext i32 %77 to i64, !dbg !580
  %78 = load float*** %t, align 8, !dbg !580, !tbaa !477
  %arrayidx184 = getelementptr inbounds float** %78, i64 %idxprom182, !dbg !580
  %79 = load float** %arrayidx184, align 8, !dbg !580, !tbaa !477
  %arrayidx185 = getelementptr inbounds float* %79, i64 6, !dbg !580
  %80 = load float* %arrayidx185, align 4, !dbg !580, !tbaa !556
  %add186 = fadd float %80, %wt, !dbg !580
  store float %add186, float* %arrayidx185, align 4, !dbg !580, !tbaa !556
  br label %for.inc, !dbg !580

sw.default187:                                    ; preds = %sw.bb163
  %call191 = tail call i8* @Statetype(i8 signext %16) #7, !dbg !581
  %81 = load i8** %statetype, align 8, !dbg !582, !tbaa !477
  %arrayidx195 = getelementptr inbounds i8* %81, i64 %69, !dbg !582
  %82 = load i8* %arrayidx195, align 1, !dbg !582, !tbaa !478
  %call196 = tail call i8* @Statetype(i8 signext %82) #7, !dbg !582
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call191, i8* %call196) #7, !dbg !582
  br label %for.inc, !dbg !583

sw.bb198:                                         ; preds = %if.end25
  %83 = add nsw i64 %indvars.iv, 1, !dbg !584
  %arrayidx202 = getelementptr inbounds i8* %15, i64 %83, !dbg !584
  %84 = load i8* %arrayidx202, align 1, !dbg !584, !tbaa !478
  %conv203 = sext i8 %84 to i32, !dbg !584
  switch i32 %conv203, label %sw.default214 [
    i32 8, label %sw.bb204
    i32 10, label %sw.bb209
  ], !dbg !584

sw.bb204:                                         ; preds = %sw.bb198
  %85 = load float* %arrayidx207, align 4, !dbg !543, !tbaa !556
  %add208 = fadd float %85, %wt, !dbg !543
  store float %add208, float* %arrayidx207, align 4, !dbg !543, !tbaa !556
  br label %for.inc, !dbg !543

sw.bb209:                                         ; preds = %sw.bb198
  %86 = load float* %arrayidx212, align 4, !dbg !545, !tbaa !556
  %add213 = fadd float %86, %wt, !dbg !545
  store float %add213, float* %arrayidx212, align 4, !dbg !545, !tbaa !556
  br label %for.inc, !dbg !545

sw.default214:                                    ; preds = %sw.bb198
  %call218 = tail call i8* @Statetype(i8 signext %16) #7, !dbg !585
  %87 = load i8** %statetype, align 8, !dbg !586, !tbaa !477
  %arrayidx222 = getelementptr inbounds i8* %87, i64 %83, !dbg !586
  %88 = load i8* %arrayidx222, align 1, !dbg !586, !tbaa !478
  %call223 = tail call i8* @Statetype(i8 signext %88) #7, !dbg !586
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call218, i8* %call223) #7, !dbg !586
  br label %for.inc, !dbg !587

sw.bb225:                                         ; preds = %if.end25
  %89 = add nsw i64 %indvars.iv, 1, !dbg !588
  %arrayidx229 = getelementptr inbounds i8* %15, i64 %89, !dbg !588
  %90 = load i8* %arrayidx229, align 1, !dbg !588, !tbaa !478
  %conv230 = sext i8 %90 to i32, !dbg !588
  switch i32 %conv230, label %sw.default241 [
    i32 6, label %sw.bb231
    i32 10, label %sw.bb236
  ], !dbg !588

sw.bb231:                                         ; preds = %sw.bb225
  %91 = load float* %arrayidx234, align 4, !dbg !546, !tbaa !556
  %add235 = fadd float %91, %wt, !dbg !546
  store float %add235, float* %arrayidx234, align 4, !dbg !546, !tbaa !556
  br label %for.inc, !dbg !546

sw.bb236:                                         ; preds = %sw.bb225
  %92 = load float* %arrayidx239, align 4, !dbg !548, !tbaa !556
  %add240 = fadd float %92, %wt, !dbg !548
  store float %add240, float* %arrayidx239, align 4, !dbg !548, !tbaa !556
  br label %for.inc, !dbg !548

sw.default241:                                    ; preds = %sw.bb225
  %call245 = tail call i8* @Statetype(i8 signext %16) #7, !dbg !589
  %93 = load i8** %statetype, align 8, !dbg !590, !tbaa !477
  %arrayidx249 = getelementptr inbounds i8* %93, i64 %89, !dbg !590
  %94 = load i8* %arrayidx249, align 1, !dbg !590, !tbaa !478
  %call250 = tail call i8* @Statetype(i8 signext %94) #7, !dbg !590
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call245, i8* %call250) #7, !dbg !590
  br label %for.inc, !dbg !591

sw.bb252:                                         ; preds = %if.end25
  %95 = add nsw i64 %indvars.iv, 1, !dbg !592
  %arrayidx256 = getelementptr inbounds i8* %15, i64 %95, !dbg !592
  %96 = load i8* %arrayidx256, align 1, !dbg !592, !tbaa !478
  %conv257 = sext i8 %96 to i32, !dbg !592
  switch i32 %conv257, label %sw.default268 [
    i32 9, label %sw.bb258
    i32 8, label %sw.bb263
  ], !dbg !592

sw.bb258:                                         ; preds = %sw.bb252
  %97 = load float* %arrayidx261, align 4, !dbg !549, !tbaa !556
  %add262 = fadd float %97, %wt, !dbg !549
  store float %add262, float* %arrayidx261, align 4, !dbg !549, !tbaa !556
  br label %for.inc, !dbg !549

sw.bb263:                                         ; preds = %sw.bb252
  %98 = load float* %arrayidx266, align 4, !dbg !551, !tbaa !556
  %add267 = fadd float %98, %wt, !dbg !551
  store float %add267, float* %arrayidx266, align 4, !dbg !551, !tbaa !556
  br label %for.inc, !dbg !551

sw.default268:                                    ; preds = %sw.bb252
  %call272 = tail call i8* @Statetype(i8 signext %16) #7, !dbg !593
  %99 = load i8** %statetype, align 8, !dbg !594, !tbaa !477
  %arrayidx276 = getelementptr inbounds i8* %99, i64 %95, !dbg !594
  %100 = load i8* %arrayidx276, align 1, !dbg !594, !tbaa !478
  %call277 = tail call i8* @Statetype(i8 signext %100) #7, !dbg !594
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([45 x i8]* @.str1, i64 0, i64 0), i8* %call272, i8* %call277) #7, !dbg !594
  br label %for.inc, !dbg !595

sw.default279:                                    ; preds = %if.end25
  %call283 = tail call i8* @Statetype(i8 signext %16) #7, !dbg !596
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0), i8* %call283) #7, !dbg !596
  br label %for.inc, !dbg !597

for.inc:                                          ; preds = %sw.bb163, %if.end25, %if.end25, %sw.default279, %sw.default, %sw.bb38, %sw.bb34, %sw.default67, %sw.bb65, %sw.bb57, %sw.default117, %sw.bb110, %sw.bb101, %sw.bb92, %sw.bb84, %sw.default152, %sw.bb143, %sw.bb134, %sw.default187, %sw.bb178, %sw.bb169, %sw.default214, %sw.bb209, %sw.bb204, %sw.default241, %sw.bb236, %sw.bb231, %sw.default268, %sw.bb263, %sw.bb258
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !528
  %101 = load i32* %tlen, align 4, !dbg !528, !tbaa !498
  %102 = trunc i64 %indvars.iv.next to i32, !dbg !528
  %cmp = icmp slt i32 %102, %101, !dbg !528
  br i1 %cmp, label %for.body, label %for.end, !dbg !528

for.end:                                          ; preds = %for.inc, %entry
  ret void, !dbg !598
}

; Function Attrs: optsize
declare void @P7CountSymbol(float*, i8 signext, float) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare i8* @Statetype(i8 signext) #2

; Function Attrs: nounwind optsize uwtable
define float @P7TraceScore(%struct.plan7_s* nocapture %hmm, i8* nocapture %dsq, %struct.p7trace_s* nocapture %tr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !156), !dbg !599
  tail call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !157), !dbg !599
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %tr}, i64 0, metadata !158), !dbg !599
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !159), !dbg !600
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !160), !dbg !601
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0, !dbg !601
  %0 = load i32* %tlen, align 4, !dbg !601, !tbaa !498
  %sub69 = add nsw i32 %0, -1, !dbg !601
  %cmp70 = icmp sgt i32 %sub69, 0, !dbg !601
  br i1 %cmp70, label %for.body.lr.ph, label %for.end, !dbg !601

for.body.lr.ph:                                   ; preds = %entry
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3, !dbg !603
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1, !dbg !605
  %nodeidx34 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2, !dbg !606
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !607
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32, !dbg !608
  br label %for.body, !dbg !601

for.body:                                         ; preds = %for.body.lr.ph, %if.end29
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end29 ]
  %score.072 = phi i32 [ 0, %for.body.lr.ph ], [ %add44, %if.end29 ]
  %1 = load i32** %pos, align 8, !dbg !603, !tbaa !477
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv, !dbg !603
  %2 = load i32* %arrayidx, align 4, !dbg !603, !tbaa !498
  %idxprom1 = sext i32 %2 to i64, !dbg !603
  %arrayidx2 = getelementptr inbounds i8* %dsq, i64 %idxprom1, !dbg !603
  %3 = load i8* %arrayidx2, align 1, !dbg !603, !tbaa !478
  %4 = load i8** %statetype, align 8, !dbg !605, !tbaa !477
  %arrayidx4 = getelementptr inbounds i8* %4, i64 %indvars.iv, !dbg !605
  %5 = load i8* %arrayidx4, align 1, !dbg !605, !tbaa !478
  switch i8 %5, label %for.body.if.end29_crit_edge [
    i8 1, label %if.then
    i8 3, label %if.then20
  ], !dbg !605

for.body.if.end29_crit_edge:                      ; preds = %for.body
  %.pre = load i32** %nodeidx34, align 8, !dbg !606, !tbaa !477
  %arrayidx35.phi.trans.insert = getelementptr inbounds i32* %.pre, i64 %indvars.iv
  %.pre73 = load i32* %arrayidx35.phi.trans.insert, align 4, !dbg !606, !tbaa !498
  br label %if.end29, !dbg !605

if.then:                                          ; preds = %for.body
  %6 = load i32** %nodeidx34, align 8, !dbg !607, !tbaa !477
  %arrayidx9 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !607
  %7 = load i32* %arrayidx9, align 4, !dbg !607, !tbaa !498
  %idxprom10 = sext i32 %7 to i64, !dbg !607
  %idxprom11 = sext i8 %3 to i64, !dbg !607
  %8 = load i32*** %msc, align 8, !dbg !607, !tbaa !477
  %arrayidx12 = getelementptr inbounds i32** %8, i64 %idxprom11, !dbg !607
  %9 = load i32** %arrayidx12, align 8, !dbg !607, !tbaa !477
  %arrayidx13 = getelementptr inbounds i32* %9, i64 %idxprom10, !dbg !607
  %10 = load i32* %arrayidx13, align 4, !dbg !607, !tbaa !498
  %add = add nsw i32 %10, %score.072, !dbg !607
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !159), !dbg !607
  br label %if.end29, !dbg !607

if.then20:                                        ; preds = %for.body
  %11 = load i32** %nodeidx34, align 8, !dbg !608, !tbaa !477
  %arrayidx23 = getelementptr inbounds i32* %11, i64 %indvars.iv, !dbg !608
  %12 = load i32* %arrayidx23, align 4, !dbg !608, !tbaa !498
  %idxprom24 = sext i32 %12 to i64, !dbg !608
  %idxprom25 = sext i8 %3 to i64, !dbg !608
  %13 = load i32*** %isc, align 8, !dbg !608, !tbaa !477
  %arrayidx26 = getelementptr inbounds i32** %13, i64 %idxprom25, !dbg !608
  %14 = load i32** %arrayidx26, align 8, !dbg !608, !tbaa !477
  %arrayidx27 = getelementptr inbounds i32* %14, i64 %idxprom24, !dbg !608
  %15 = load i32* %arrayidx27, align 4, !dbg !608, !tbaa !498
  %add28 = add nsw i32 %15, %score.072, !dbg !608
  tail call void @llvm.dbg.value(metadata !{i32 %add28}, i64 0, metadata !159), !dbg !608
  br label %if.end29, !dbg !608

if.end29:                                         ; preds = %for.body.if.end29_crit_edge, %if.then20, %if.then
  %16 = phi i32 [ %7, %if.then ], [ %12, %if.then20 ], [ %.pre73, %for.body.if.end29_crit_edge ]
  %17 = phi i32* [ %6, %if.then ], [ %11, %if.then20 ], [ %.pre, %for.body.if.end29_crit_edge ]
  %score.1 = phi i32 [ %add, %if.then ], [ %add28, %if.then20 ], [ %score.072, %for.body.if.end29_crit_edge ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !601
  %arrayidx39 = getelementptr inbounds i8* %4, i64 %indvars.iv.next, !dbg !606
  %18 = load i8* %arrayidx39, align 1, !dbg !606, !tbaa !478
  %arrayidx43 = getelementptr inbounds i32* %17, i64 %indvars.iv.next, !dbg !606
  %19 = load i32* %arrayidx43, align 4, !dbg !606, !tbaa !498
  %call = tail call i32 @TransitionScoreLookup(%struct.plan7_s* %hmm, i8 signext %5, i32 %16, i8 signext %18, i32 %19) #8, !dbg !606
  %add44 = add nsw i32 %call, %score.1, !dbg !606
  tail call void @llvm.dbg.value(metadata !{i32 %add44}, i64 0, metadata !159), !dbg !606
  %20 = load i32* %tlen, align 4, !dbg !601, !tbaa !498
  %sub = add nsw i32 %20, -1, !dbg !601
  %21 = trunc i64 %indvars.iv.next to i32, !dbg !601
  %cmp = icmp slt i32 %21, %sub, !dbg !601
  br i1 %cmp, label %for.body, label %for.end, !dbg !601

for.end:                                          ; preds = %if.end29, %entry
  %score.0.lcssa = phi i32 [ 0, %entry ], [ %add44, %if.end29 ]
  %call45 = tail call float @Scorify(i32 %score.0.lcssa) #7, !dbg !609
  ret float %call45, !dbg !609
}

; Function Attrs: nounwind optsize uwtable
define i32 @TransitionScoreLookup(%struct.plan7_s* nocapture %hmm, i8 signext %st1, i32 %k1, i8 signext %st2, i32 %k2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !296), !dbg !610
  tail call void @llvm.dbg.value(metadata !{i8 %st1}, i64 0, metadata !297), !dbg !610
  tail call void @llvm.dbg.value(metadata !{i32 %k1}, i64 0, metadata !298), !dbg !610
  tail call void @llvm.dbg.value(metadata !{i8 %st2}, i64 0, metadata !299), !dbg !611
  tail call void @llvm.dbg.value(metadata !{i32 %k2}, i64 0, metadata !300), !dbg !611
  %conv = sext i8 %st1 to i32, !dbg !612
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
  ], !dbg !612

sw.bb1:                                           ; preds = %entry
  %conv2 = sext i8 %st2 to i32, !dbg !613
  switch i32 %conv2, label %sw.default [
    i32 6, label %sw.bb3
    i32 5, label %sw.bb5
  ], !dbg !613

sw.bb3:                                           ; preds = %sw.bb1
  %arrayidx4 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 0, !dbg !615
  %0 = load i32* %arrayidx4, align 4, !dbg !615, !tbaa !498
  br label %return, !dbg !615

sw.bb5:                                           ; preds = %sw.bb1
  %arrayidx8 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 0, i64 1, !dbg !617
  %1 = load i32* %arrayidx8, align 4, !dbg !617, !tbaa !498
  br label %return, !dbg !617

sw.default:                                       ; preds = %sw.bb1
  %call = tail call i8* @Statetype(i8 signext %st1) #7, !dbg !618
  %call9 = tail call i8* @Statetype(i8 signext %st2) #7, !dbg !618
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call, i8* %call9) #7, !dbg !618
  br label %return, !dbg !619

sw.bb10:                                          ; preds = %entry
  %conv11 = sext i8 %st2 to i32, !dbg !620
  switch i32 %conv11, label %sw.default16 [
    i32 1, label %sw.bb12
    i32 2, label %sw.bb14
  ], !dbg !620

sw.bb12:                                          ; preds = %sw.bb10
  %idxprom = sext i32 %k2 to i64, !dbg !621
  %bsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 34, !dbg !621
  %2 = load i32** %bsc, align 8, !dbg !621, !tbaa !477
  %arrayidx13 = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !621
  %3 = load i32* %arrayidx13, align 4, !dbg !621, !tbaa !498
  br label %return, !dbg !621

sw.bb14:                                          ; preds = %sw.bb10
  %tbd1 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 24, !dbg !623
  %4 = load float* %tbd1, align 4, !dbg !623, !tbaa !556
  %call15 = tail call i32 @Prob2Score(float %4, float 1.000000e+00) #7, !dbg !623
  br label %return, !dbg !623

sw.default16:                                     ; preds = %sw.bb10
  %call17 = tail call i8* @Statetype(i8 signext %st1) #7, !dbg !624
  %call18 = tail call i8* @Statetype(i8 signext %st2) #7, !dbg !624
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call17, i8* %call18) #7, !dbg !624
  br label %return, !dbg !625

sw.bb20:                                          ; preds = %entry
  %conv21 = sext i8 %st2 to i32, !dbg !626
  switch i32 %conv21, label %sw.default39 [
    i32 1, label %sw.bb22
    i32 3, label %sw.bb26
    i32 2, label %sw.bb31
    i32 7, label %sw.bb36
  ], !dbg !626

sw.bb22:                                          ; preds = %sw.bb20
  %idxprom23 = sext i32 %k1 to i64, !dbg !627
  %tsc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !627
  %5 = load i32*** %tsc, align 8, !dbg !627, !tbaa !477
  %6 = load i32** %5, align 8, !dbg !627, !tbaa !477
  %arrayidx25 = getelementptr inbounds i32* %6, i64 %idxprom23, !dbg !627
  %7 = load i32* %arrayidx25, align 4, !dbg !627, !tbaa !498
  br label %return, !dbg !627

sw.bb26:                                          ; preds = %sw.bb20
  %idxprom27 = sext i32 %k1 to i64, !dbg !629
  %tsc28 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !629
  %8 = load i32*** %tsc28, align 8, !dbg !629, !tbaa !477
  %arrayidx29 = getelementptr inbounds i32** %8, i64 1, !dbg !629
  %9 = load i32** %arrayidx29, align 8, !dbg !629, !tbaa !477
  %arrayidx30 = getelementptr inbounds i32* %9, i64 %idxprom27, !dbg !629
  %10 = load i32* %arrayidx30, align 4, !dbg !629, !tbaa !498
  br label %return, !dbg !629

sw.bb31:                                          ; preds = %sw.bb20
  %idxprom32 = sext i32 %k1 to i64, !dbg !630
  %tsc33 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !630
  %11 = load i32*** %tsc33, align 8, !dbg !630, !tbaa !477
  %arrayidx34 = getelementptr inbounds i32** %11, i64 2, !dbg !630
  %12 = load i32** %arrayidx34, align 8, !dbg !630, !tbaa !477
  %arrayidx35 = getelementptr inbounds i32* %12, i64 %idxprom32, !dbg !630
  %13 = load i32* %arrayidx35, align 4, !dbg !630, !tbaa !498
  br label %return, !dbg !630

sw.bb36:                                          ; preds = %sw.bb20
  %idxprom37 = sext i32 %k1 to i64, !dbg !631
  %esc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 35, !dbg !631
  %14 = load i32** %esc, align 8, !dbg !631, !tbaa !477
  %arrayidx38 = getelementptr inbounds i32* %14, i64 %idxprom37, !dbg !631
  %15 = load i32* %arrayidx38, align 4, !dbg !631, !tbaa !498
  br label %return, !dbg !631

sw.default39:                                     ; preds = %sw.bb20
  %call40 = tail call i8* @Statetype(i8 signext %st1) #7, !dbg !632
  %call41 = tail call i8* @Statetype(i8 signext %st2) #7, !dbg !632
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call40, i8* %call41) #7, !dbg !632
  br label %return, !dbg !633

sw.bb43:                                          ; preds = %entry
  %conv44 = sext i8 %st2 to i32, !dbg !634
  switch i32 %conv44, label %sw.default55 [
    i32 1, label %sw.bb45
    i32 3, label %sw.bb50
  ], !dbg !634

sw.bb45:                                          ; preds = %sw.bb43
  %idxprom46 = sext i32 %k1 to i64, !dbg !635
  %tsc47 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !635
  %16 = load i32*** %tsc47, align 8, !dbg !635, !tbaa !477
  %arrayidx48 = getelementptr inbounds i32** %16, i64 3, !dbg !635
  %17 = load i32** %arrayidx48, align 8, !dbg !635, !tbaa !477
  %arrayidx49 = getelementptr inbounds i32* %17, i64 %idxprom46, !dbg !635
  %18 = load i32* %arrayidx49, align 4, !dbg !635, !tbaa !498
  br label %return, !dbg !635

sw.bb50:                                          ; preds = %sw.bb43
  %idxprom51 = sext i32 %k1 to i64, !dbg !637
  %tsc52 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !637
  %19 = load i32*** %tsc52, align 8, !dbg !637, !tbaa !477
  %arrayidx53 = getelementptr inbounds i32** %19, i64 4, !dbg !637
  %20 = load i32** %arrayidx53, align 8, !dbg !637, !tbaa !477
  %arrayidx54 = getelementptr inbounds i32* %20, i64 %idxprom51, !dbg !637
  %21 = load i32* %arrayidx54, align 4, !dbg !637, !tbaa !498
  br label %return, !dbg !637

sw.default55:                                     ; preds = %sw.bb43
  %call56 = tail call i8* @Statetype(i8 signext %st1) #7, !dbg !638
  %call57 = tail call i8* @Statetype(i8 signext %st2) #7, !dbg !638
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call56, i8* %call57) #7, !dbg !638
  br label %return, !dbg !639

sw.bb59:                                          ; preds = %entry
  %conv60 = sext i8 %st2 to i32, !dbg !640
  switch i32 %conv60, label %sw.default72 [
    i32 1, label %sw.bb61
    i32 2, label %sw.bb66
    i32 7, label %return
  ], !dbg !640

sw.bb61:                                          ; preds = %sw.bb59
  %idxprom62 = sext i32 %k1 to i64, !dbg !641
  %tsc63 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !641
  %22 = load i32*** %tsc63, align 8, !dbg !641, !tbaa !477
  %arrayidx64 = getelementptr inbounds i32** %22, i64 5, !dbg !641
  %23 = load i32** %arrayidx64, align 8, !dbg !641, !tbaa !477
  %arrayidx65 = getelementptr inbounds i32* %23, i64 %idxprom62, !dbg !641
  %24 = load i32* %arrayidx65, align 4, !dbg !641, !tbaa !498
  br label %return, !dbg !641

sw.bb66:                                          ; preds = %sw.bb59
  %idxprom67 = sext i32 %k1 to i64, !dbg !643
  %tsc68 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 30, !dbg !643
  %25 = load i32*** %tsc68, align 8, !dbg !643, !tbaa !477
  %arrayidx69 = getelementptr inbounds i32** %25, i64 6, !dbg !643
  %26 = load i32** %arrayidx69, align 8, !dbg !643, !tbaa !477
  %arrayidx70 = getelementptr inbounds i32* %26, i64 %idxprom67, !dbg !643
  %27 = load i32* %arrayidx70, align 4, !dbg !643, !tbaa !498
  br label %return, !dbg !643

sw.default72:                                     ; preds = %sw.bb59
  %call73 = tail call i8* @Statetype(i8 signext %st1) #7, !dbg !644
  %call74 = tail call i8* @Statetype(i8 signext %st2) #7, !dbg !644
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call73, i8* %call74) #7, !dbg !644
  br label %return, !dbg !645

sw.bb76:                                          ; preds = %entry
  %conv77 = sext i8 %st2 to i32, !dbg !646
  switch i32 %conv77, label %sw.default86 [
    i32 8, label %sw.bb78
    i32 10, label %sw.bb82
  ], !dbg !646

sw.bb78:                                          ; preds = %sw.bb76
  %arrayidx81 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 0, !dbg !647
  %28 = load i32* %arrayidx81, align 4, !dbg !647, !tbaa !498
  br label %return, !dbg !647

sw.bb82:                                          ; preds = %sw.bb76
  %arrayidx85 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 1, i64 1, !dbg !649
  %29 = load i32* %arrayidx85, align 4, !dbg !649, !tbaa !498
  br label %return, !dbg !649

sw.default86:                                     ; preds = %sw.bb76
  %call87 = tail call i8* @Statetype(i8 signext %st1) #7, !dbg !650
  %call88 = tail call i8* @Statetype(i8 signext %st2) #7, !dbg !650
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call87, i8* %call88) #7, !dbg !650
  br label %return, !dbg !651

sw.bb90:                                          ; preds = %entry
  %conv91 = sext i8 %st2 to i32, !dbg !652
  switch i32 %conv91, label %sw.default100 [
    i32 6, label %sw.bb92
    i32 10, label %sw.bb96
  ], !dbg !652

sw.bb92:                                          ; preds = %sw.bb90
  %arrayidx95 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 0, !dbg !653
  %30 = load i32* %arrayidx95, align 4, !dbg !653, !tbaa !498
  br label %return, !dbg !653

sw.bb96:                                          ; preds = %sw.bb90
  %arrayidx99 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 3, i64 1, !dbg !655
  %31 = load i32* %arrayidx99, align 4, !dbg !655, !tbaa !498
  br label %return, !dbg !655

sw.default100:                                    ; preds = %sw.bb90
  %call101 = tail call i8* @Statetype(i8 signext %st1) #7, !dbg !656
  %call102 = tail call i8* @Statetype(i8 signext %st2) #7, !dbg !656
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call101, i8* %call102) #7, !dbg !656
  br label %return, !dbg !657

sw.bb104:                                         ; preds = %entry
  %conv105 = sext i8 %st2 to i32, !dbg !658
  switch i32 %conv105, label %sw.default114 [
    i32 9, label %sw.bb106
    i32 8, label %sw.bb110
  ], !dbg !658

sw.bb106:                                         ; preds = %sw.bb104
  %arrayidx109 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 0, !dbg !659
  %32 = load i32* %arrayidx109, align 4, !dbg !659, !tbaa !498
  br label %return, !dbg !659

sw.bb110:                                         ; preds = %sw.bb104
  %arrayidx113 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 33, i64 2, i64 1, !dbg !661
  %33 = load i32* %arrayidx113, align 4, !dbg !661, !tbaa !498
  br label %return, !dbg !661

sw.default114:                                    ; preds = %sw.bb104
  %call115 = tail call i8* @Statetype(i8 signext %st1) #7, !dbg !662
  %call116 = tail call i8* @Statetype(i8 signext %st2) #7, !dbg !662
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0), i8* %call115, i8* %call116) #7, !dbg !662
  br label %return, !dbg !663

sw.default119:                                    ; preds = %entry
  %call120 = tail call i8* @Statetype(i8 signext %st1) #7, !dbg !664
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([30 x i8]* @.str2, i64 0, i64 0), i8* %call120) #7, !dbg !664
  br label %return, !dbg !665

return:                                           ; preds = %sw.default, %sw.default16, %sw.default39, %sw.default55, %sw.default72, %sw.default86, %sw.default100, %sw.default114, %sw.default119, %entry, %sw.bb59, %entry, %sw.bb110, %sw.bb106, %sw.bb96, %sw.bb92, %sw.bb82, %sw.bb78, %sw.bb66, %sw.bb61, %sw.bb50, %sw.bb45, %sw.bb36, %sw.bb31, %sw.bb26, %sw.bb22, %sw.bb14, %sw.bb12, %sw.bb5, %sw.bb3
  %retval.0 = phi i32 [ %33, %sw.bb110 ], [ %32, %sw.bb106 ], [ %31, %sw.bb96 ], [ %30, %sw.bb92 ], [ %29, %sw.bb82 ], [ %28, %sw.bb78 ], [ %27, %sw.bb66 ], [ %24, %sw.bb61 ], [ %21, %sw.bb50 ], [ %18, %sw.bb45 ], [ %15, %sw.bb36 ], [ %13, %sw.bb31 ], [ %10, %sw.bb26 ], [ %7, %sw.bb22 ], [ %call15, %sw.bb14 ], [ %3, %sw.bb12 ], [ %1, %sw.bb5 ], [ %0, %sw.bb3 ], [ 0, %entry ], [ 0, %sw.bb59 ], [ 0, %entry ], [ 0, %sw.default119 ], [ 0, %sw.default114 ], [ 0, %sw.default100 ], [ 0, %sw.default86 ], [ 0, %sw.default72 ], [ 0, %sw.default55 ], [ 0, %sw.default39 ], [ 0, %sw.default16 ], [ 0, %sw.default ]
  ret i32 %retval.0, !dbg !666
}

; Function Attrs: optsize
declare float @Scorify(i32) #2

; Function Attrs: nounwind optsize uwtable
define %struct.msa_struct* @P7Traces2Alignment(i8** nocapture %dsq, %struct.seqinfo_s* %sqinfo, float* nocapture %wgt, i32 %nseq, i32 %mlen, %struct.p7trace_s** nocapture %tr, i32 %matchonly) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %dsq}, i64 0, metadata !262), !dbg !667
  tail call void @llvm.dbg.value(metadata !{%struct.seqinfo_s* %sqinfo}, i64 0, metadata !263), !dbg !667
  tail call void @llvm.dbg.value(metadata !{float* %wgt}, i64 0, metadata !264), !dbg !667
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !265), !dbg !667
  tail call void @llvm.dbg.value(metadata !{i32 %mlen}, i64 0, metadata !266), !dbg !667
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !267), !dbg !668
  tail call void @llvm.dbg.value(metadata !{i32 %matchonly}, i64 0, metadata !268), !dbg !668
  %add = add i32 %mlen, 1, !dbg !669
  %conv = sext i32 %add to i64, !dbg !669
  %mul = shl nsw i64 %conv, 2, !dbg !669
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 408, i64 %mul) #7, !dbg !669
  %0 = bitcast i8* %call to i32*, !dbg !669
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !272), !dbg !669
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !279), !dbg !670
  %cmp711 = icmp slt i32 %mlen, 0, !dbg !670
  br i1 %cmp711, label %for.cond2.preheader, label %for.body.lr.ph, !dbg !670

for.body.lr.ph:                                   ; preds = %entry
  %1 = zext i32 %mlen to i64
  %2 = shl nuw nsw i64 %1, 2, !dbg !670
  %3 = add i64 %2, 4, !dbg !670
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %3, i32 4, i1 false), !dbg !672
  br label %for.cond2.preheader, !dbg !670

for.cond2.preheader:                              ; preds = %for.body.lr.ph, %entry
  %cmp3709 = icmp sgt i32 %nseq, 0, !dbg !673
  br i1 %cmp3709, label %for.cond6.preheader.lr.ph, label %for.end91, !dbg !673

for.cond6.preheader.lr.ph:                        ; preds = %for.cond2.preheader
  %idxprom70 = sext i32 %mlen to i64, !dbg !675
  %arrayidx71 = getelementptr inbounds i32* %0, i64 %idxprom70, !dbg !675
  br label %for.cond6.preheader, !dbg !673

for.cond6.preheader:                              ; preds = %for.inc89, %for.cond6.preheader.lr.ph
  %indvars.iv753 = phi i64 [ 0, %for.cond6.preheader.lr.ph ], [ %indvars.iv.next754, %for.inc89 ]
  %arrayidx8 = getelementptr inbounds %struct.p7trace_s** %tr, i64 %indvars.iv753, !dbg !680
  %4 = load %struct.p7trace_s** %arrayidx8, align 8, !dbg !680, !tbaa !477
  %tlen705 = getelementptr inbounds %struct.p7trace_s* %4, i64 0, i32 0, !dbg !680
  %5 = load i32* %tlen705, align 4, !dbg !680, !tbaa !498
  %cmp9706 = icmp sgt i32 %5, 0, !dbg !680
  br i1 %cmp9706, label %for.body11, label %for.inc89, !dbg !680

for.body11:                                       ; preds = %for.cond6.preheader, %for.inc86
  %indvars.iv749 = phi i64 [ %indvars.iv.next750, %for.inc86 ], [ 0, %for.cond6.preheader ]
  %6 = phi %struct.p7trace_s* [ %19, %for.inc86 ], [ %4, %for.cond6.preheader ]
  %nins.0708 = phi i32 [ %nins.1, %for.inc86 ], [ 0, %for.cond6.preheader ]
  %statetype15 = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 1, !dbg !681
  %7 = load i8** %statetype15, align 8, !dbg !681, !tbaa !477
  %arrayidx16 = getelementptr inbounds i8* %7, i64 %indvars.iv749, !dbg !681
  %8 = load i8* %arrayidx16, align 1, !dbg !681, !tbaa !478
  %conv17 = sext i8 %8 to i32, !dbg !681
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
  ], !dbg !681

sw.bb:                                            ; preds = %for.body11
  %inc18 = add nsw i32 %nins.0708, 1, !dbg !682
  tail call void @llvm.dbg.value(metadata !{i32 %inc18}, i64 0, metadata !274), !dbg !682
  br label %for.inc86, !dbg !682

sw.bb19:                                          ; preds = %for.body11
  %9 = add nsw i64 %indvars.iv749, -1, !dbg !683
  %arrayidx24 = getelementptr inbounds i8* %7, i64 %9, !dbg !683
  %10 = load i8* %arrayidx24, align 1, !dbg !683, !tbaa !478
  %cmp26 = icmp eq i8 %10, 5, !dbg !683
  %inc28 = zext i1 %cmp26 to i32, !dbg !683
  %inc28.nins.0 = add nsw i32 %inc28, %nins.0708, !dbg !683
  br label %for.inc86, !dbg !683

sw.bb29:                                          ; preds = %for.body11
  %11 = add nsw i64 %indvars.iv749, -1, !dbg !684
  %arrayidx35 = getelementptr inbounds i8* %7, i64 %11, !dbg !684
  %12 = load i8* %arrayidx35, align 1, !dbg !684, !tbaa !478
  %cmp37 = icmp eq i8 %12, 8, !dbg !684
  %inc40 = zext i1 %cmp37 to i32, !dbg !684
  %inc40.nins.0 = add nsw i32 %inc40, %nins.0708, !dbg !684
  br label %for.inc86, !dbg !684

sw.bb42:                                          ; preds = %for.body11, %for.body11
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %6, i64 0, i32 2, !dbg !685
  %13 = load i32** %nodeidx, align 8, !dbg !685, !tbaa !477
  %arrayidx46 = getelementptr inbounds i32* %13, i64 %indvars.iv749, !dbg !685
  %14 = load i32* %arrayidx46, align 4, !dbg !685, !tbaa !498
  %sub47 = add nsw i32 %14, -1, !dbg !685
  %idxprom48 = sext i32 %sub47 to i64, !dbg !685
  %arrayidx49 = getelementptr inbounds i32* %0, i64 %idxprom48, !dbg !685
  %15 = load i32* %arrayidx49, align 4, !dbg !685, !tbaa !498
  %cmp50 = icmp sgt i32 %nins.0708, %15, !dbg !685
  br i1 %cmp50, label %if.then52, label %for.inc86, !dbg !685

if.then52:                                        ; preds = %sw.bb42
  store i32 %nins.0708, i32* %arrayidx49, align 4, !dbg !686, !tbaa !498
  br label %for.inc86, !dbg !686

sw.bb62:                                          ; preds = %for.body11
  %16 = load i32* %0, align 4, !dbg !687, !tbaa !498
  %cmp64 = icmp sgt i32 %nins.0708, %16, !dbg !687
  br i1 %cmp64, label %if.then66, label %for.inc86, !dbg !687

if.then66:                                        ; preds = %sw.bb62
  store i32 %nins.0708, i32* %0, align 4, !dbg !688, !tbaa !498
  br label %for.inc86, !dbg !688

sw.bb69:                                          ; preds = %for.body11
  %17 = load i32* %arrayidx71, align 4, !dbg !675, !tbaa !498
  %cmp72 = icmp sgt i32 %nins.0708, %17, !dbg !675
  br i1 %cmp72, label %if.then74, label %for.inc86, !dbg !675

if.then74:                                        ; preds = %sw.bb69
  store i32 %nins.0708, i32* %arrayidx71, align 4, !dbg !689, !tbaa !498
  br label %for.inc86, !dbg !689

sw.bb79:                                          ; preds = %for.body11
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !690
  %.pre763 = load %struct.p7trace_s** %arrayidx8, align 8, !dbg !691, !tbaa !477
  %statetype83.phi.trans.insert = getelementptr inbounds %struct.p7trace_s* %.pre763, i64 0, i32 1
  %.pre764 = load i8** %statetype83.phi.trans.insert, align 8, !dbg !691, !tbaa !477
  %arrayidx84.phi.trans.insert = getelementptr inbounds i8* %.pre764, i64 %indvars.iv749
  %.pre765 = load i8* %arrayidx84.phi.trans.insert, align 1, !dbg !691, !tbaa !478
  br label %sw.default, !dbg !690

sw.default:                                       ; preds = %for.body11, %sw.bb79
  %18 = phi i8 [ %8, %for.body11 ], [ %.pre765, %sw.bb79 ]
  %call85 = tail call i8* @Statetype(i8 signext %18) #7, !dbg !691
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), i8* %call85) #7, !dbg !691
  %.pre766 = load %struct.p7trace_s** %arrayidx8, align 8, !dbg !680, !tbaa !477
  br label %for.inc86, !dbg !692

for.inc86:                                        ; preds = %sw.bb29, %sw.bb19, %sw.bb62, %if.then66, %sw.bb42, %if.then52, %sw.bb, %sw.default, %if.then74, %sw.bb69, %for.body11, %for.body11
  %19 = phi %struct.p7trace_s* [ %.pre766, %sw.default ], [ %6, %for.body11 ], [ %6, %for.body11 ], [ %6, %if.then74 ], [ %6, %sw.bb69 ], [ %6, %sw.bb ], [ %6, %sw.bb19 ], [ %6, %sw.bb29 ], [ %6, %if.then52 ], [ %6, %sw.bb42 ], [ %6, %if.then66 ], [ %6, %sw.bb62 ], !dbg !680
  %nins.1 = phi i32 [ %nins.0708, %sw.default ], [ %nins.0708, %for.body11 ], [ %nins.0708, %for.body11 ], [ %nins.0708, %if.then74 ], [ %nins.0708, %sw.bb69 ], [ %inc18, %sw.bb ], [ %inc28.nins.0, %sw.bb19 ], [ %inc40.nins.0, %sw.bb29 ], [ 0, %if.then52 ], [ 0, %sw.bb42 ], [ 0, %if.then66 ], [ 0, %sw.bb62 ]
  %indvars.iv.next750 = add i64 %indvars.iv749, 1, !dbg !680
  %tlen = getelementptr inbounds %struct.p7trace_s* %19, i64 0, i32 0, !dbg !680
  %20 = load i32* %tlen, align 4, !dbg !680, !tbaa !498
  %21 = trunc i64 %indvars.iv.next750 to i32, !dbg !680
  %cmp9 = icmp slt i32 %21, %20, !dbg !680
  br i1 %cmp9, label %for.body11, label %for.inc89, !dbg !680

for.inc89:                                        ; preds = %for.inc86, %for.cond6.preheader
  %indvars.iv.next754 = add i64 %indvars.iv753, 1, !dbg !673
  %lftr.wideiv755 = trunc i64 %indvars.iv.next754 to i32, !dbg !673
  %exitcond756 = icmp eq i32 %lftr.wideiv755, %nseq, !dbg !673
  br i1 %exitcond756, label %for.end91, label %for.cond6.preheader, !dbg !673

for.end91:                                        ; preds = %for.inc89, %for.cond2.preheader
  %tobool = icmp ne i32 %matchonly, 0, !dbg !693
  %tobool.not = xor i1 %tobool, true, !dbg !693
  %brmerge = or i1 %cmp711, %tobool.not, !dbg !693
  br i1 %brmerge, label %if.end108, label %for.body96, !dbg !693

for.body96:                                       ; preds = %for.end91, %for.inc105
  %indvars.iv745 = phi i64 [ %indvars.iv.next746, %for.inc105 ], [ 0, %for.end91 ]
  %arrayidx98 = getelementptr inbounds i32* %0, i64 %indvars.iv745, !dbg !694
  %22 = load i32* %arrayidx98, align 4, !dbg !694, !tbaa !498
  %cmp99 = icmp sgt i32 %22, 1, !dbg !694
  br i1 %cmp99, label %if.then101, label %for.inc105, !dbg !694

if.then101:                                       ; preds = %for.body96
  store i32 1, i32* %arrayidx98, align 4, !dbg !696, !tbaa !498
  br label %for.inc105, !dbg !696

for.inc105:                                       ; preds = %for.body96, %if.then101
  %indvars.iv.next746 = add i64 %indvars.iv745, 1, !dbg !697
  %lftr.wideiv747 = trunc i64 %indvars.iv.next746 to i32, !dbg !697
  %exitcond748 = icmp eq i32 %lftr.wideiv747, %add, !dbg !697
  br i1 %exitcond748, label %if.end108, label %for.body96, !dbg !697

if.end108:                                        ; preds = %for.end91, %for.inc105
  %call112 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 453, i64 %mul) #7, !dbg !698
  %23 = bitcast i8* %call112 to i32*, !dbg !698
  tail call void @llvm.dbg.value(metadata !{i32* %23}, i64 0, metadata !273), !dbg !698
  store i32 -1, i32* %23, align 4, !dbg !699, !tbaa !498
  %24 = load i32* %0, align 4, !dbg !700, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !271), !dbg !700
  tail call void @llvm.dbg.value(metadata !701, i64 0, metadata !279), !dbg !702
  %cmp116700 = icmp slt i32 %mlen, 1, !dbg !702
  br i1 %cmp116700, label %for.end127, label %for.body118, !dbg !702

for.body118:                                      ; preds = %if.end108, %for.body118
  %indvars.iv741 = phi i64 [ %indvars.iv.next742, %for.body118 ], [ 1, %if.end108 ]
  %alen.0702 = phi i32 [ %add124, %for.body118 ], [ %24, %if.end108 ]
  %arrayidx120 = getelementptr inbounds i32* %23, i64 %indvars.iv741, !dbg !704
  store i32 %alen.0702, i32* %arrayidx120, align 4, !dbg !704, !tbaa !498
  %arrayidx122 = getelementptr inbounds i32* %0, i64 %indvars.iv741, !dbg !706
  %25 = load i32* %arrayidx122, align 4, !dbg !706, !tbaa !498
  %add123 = add i32 %alen.0702, 1, !dbg !706
  %add124 = add i32 %add123, %25, !dbg !706
  tail call void @llvm.dbg.value(metadata !{i32 %add124}, i64 0, metadata !271), !dbg !706
  %indvars.iv.next742 = add i64 %indvars.iv741, 1, !dbg !702
  %lftr.wideiv743 = trunc i64 %indvars.iv.next742 to i32, !dbg !702
  %exitcond744 = icmp eq i32 %lftr.wideiv743, %add, !dbg !702
  br i1 %exitcond744, label %for.end127, label %for.body118, !dbg !702

for.end127:                                       ; preds = %for.body118, %if.end108
  %alen.0.lcssa = phi i32 [ %24, %if.end108 ], [ %add124, %for.body118 ]
  %call128 = tail call %struct.msa_struct* @MSAAlloc(i32 %nseq, i32 %alen.0.lcssa) #7, !dbg !707
  tail call void @llvm.dbg.value(metadata !{%struct.msa_struct* %call128}, i64 0, metadata !269), !dbg !707
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !270), !dbg !708
  br i1 %cmp3709, label %for.cond133.preheader.lr.ph, label %for.end431.critedge, !dbg !708

for.cond133.preheader.lr.ph:                      ; preds = %for.end127
  %cmp134688 = icmp sgt i32 %alen.0.lcssa, 0, !dbg !709
  %idxprom158 = sext i32 %alen.0.lcssa to i64, !dbg !711
  %aseq160 = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 0, !dbg !711
  %cmp294696 = icmp sgt i32 %mlen, 1, !dbg !712
  %idxprom276 = sext i32 %mlen to i64, !dbg !715
  %arrayidx277 = getelementptr inbounds i32* %23, i64 %idxprom276, !dbg !715
  br label %for.cond133.preheader, !dbg !708

for.cond133.preheader:                            ; preds = %for.inc338, %for.cond133.preheader.lr.ph
  %indvars.iv737 = phi i64 [ 0, %for.cond133.preheader.lr.ph ], [ %indvars.iv.next738, %for.inc338 ]
  br i1 %cmp134688, label %for.body136, label %for.cond144.loopexit, !dbg !709

for.body136:                                      ; preds = %for.cond133.preheader, %for.body136
  %indvars.iv721 = phi i64 [ %indvars.iv.next722, %for.body136 ], [ 0, %for.cond133.preheader ]
  %26 = load i8*** %aseq160, align 8, !dbg !716, !tbaa !477
  %arrayidx139 = getelementptr inbounds i8** %26, i64 %indvars.iv737, !dbg !716
  %27 = load i8** %arrayidx139, align 8, !dbg !716, !tbaa !477
  %arrayidx140 = getelementptr inbounds i8* %27, i64 %indvars.iv721, !dbg !716
  store i8 46, i8* %arrayidx140, align 1, !dbg !716, !tbaa !478
  %indvars.iv.next722 = add i64 %indvars.iv721, 1, !dbg !709
  %lftr.wideiv723 = trunc i64 %indvars.iv.next722 to i32, !dbg !709
  %exitcond724 = icmp eq i32 %lftr.wideiv723, %alen.0.lcssa, !dbg !709
  br i1 %exitcond724, label %for.cond144.loopexit, label %for.body136, !dbg !709

for.cond144.loopexit:                             ; preds = %for.body136, %for.cond133.preheader
  br i1 %cmp116700, label %for.end157, label %for.body147, !dbg !717

for.body147:                                      ; preds = %for.cond144.loopexit, %for.body147
  %indvars.iv725 = phi i64 [ %indvars.iv.next726, %for.body147 ], [ 1, %for.cond144.loopexit ]
  %arrayidx149 = getelementptr inbounds i32* %23, i64 %indvars.iv725, !dbg !719
  %28 = load i32* %arrayidx149, align 4, !dbg !719, !tbaa !498
  %idxprom150 = sext i32 %28 to i64, !dbg !719
  %29 = load i8*** %aseq160, align 8, !dbg !719, !tbaa !477
  %arrayidx153 = getelementptr inbounds i8** %29, i64 %indvars.iv737, !dbg !719
  %30 = load i8** %arrayidx153, align 8, !dbg !719, !tbaa !477
  %arrayidx154 = getelementptr inbounds i8* %30, i64 %idxprom150, !dbg !719
  store i8 45, i8* %arrayidx154, align 1, !dbg !719, !tbaa !478
  %indvars.iv.next726 = add i64 %indvars.iv725, 1, !dbg !717
  %lftr.wideiv727 = trunc i64 %indvars.iv.next726 to i32, !dbg !717
  %exitcond728 = icmp eq i32 %lftr.wideiv727, %add, !dbg !717
  br i1 %exitcond728, label %for.end157, label %for.body147, !dbg !717

for.end157:                                       ; preds = %for.body147, %for.cond144.loopexit
  %31 = load i8*** %aseq160, align 8, !dbg !711, !tbaa !477
  %arrayidx161 = getelementptr inbounds i8** %31, i64 %indvars.iv737, !dbg !711
  %32 = load i8** %arrayidx161, align 8, !dbg !711, !tbaa !477
  %arrayidx162 = getelementptr inbounds i8* %32, i64 %idxprom158, !dbg !711
  store i8 0, i8* %arrayidx162, align 1, !dbg !711, !tbaa !478
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !275), !dbg !720
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !277), !dbg !721
  %arrayidx165 = getelementptr inbounds %struct.p7trace_s** %tr, i64 %indvars.iv737, !dbg !721
  %33 = load %struct.p7trace_s** %arrayidx165, align 8, !dbg !721, !tbaa !477
  %tlen166692 = getelementptr inbounds %struct.p7trace_s* %33, i64 0, i32 0, !dbg !721
  %34 = load i32* %tlen166692, align 4, !dbg !721, !tbaa !498
  %cmp167693 = icmp sgt i32 %34, 0, !dbg !721
  br i1 %cmp167693, label %for.body169.lr.ph, label %for.end286, !dbg !721

for.body169.lr.ph:                                ; preds = %for.end157
  %arrayidx192 = getelementptr inbounds i8** %dsq, i64 %indvars.iv737, !dbg !722
  br label %for.body169, !dbg !721

for.body169:                                      ; preds = %for.body169.lr.ph, %for.inc284
  %indvars.iv729 = phi i64 [ 0, %for.body169.lr.ph ], [ %indvars.iv.next730, %for.inc284 ]
  %35 = phi %struct.p7trace_s* [ %33, %for.body169.lr.ph ], [ %64, %for.inc284 ]
  %apos.1694 = phi i32 [ 0, %for.body169.lr.ph ], [ %apos.2, %for.inc284 ]
  %statetype173 = getelementptr inbounds %struct.p7trace_s* %35, i64 0, i32 1, !dbg !724
  %36 = load i8** %statetype173, align 8, !dbg !724, !tbaa !477
  %arrayidx174 = getelementptr inbounds i8* %36, i64 %indvars.iv729, !dbg !724
  %37 = load i8* %arrayidx174, align 1, !dbg !724, !tbaa !478
  %pos = getelementptr inbounds %struct.p7trace_s* %35, i64 0, i32 3, !dbg !725
  %38 = load i32** %pos, align 8, !dbg !725, !tbaa !477
  %arrayidx179 = getelementptr inbounds i32* %38, i64 %indvars.iv729, !dbg !725
  %39 = load i32* %arrayidx179, align 4, !dbg !725, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{i32 %39}, i64 0, metadata !276), !dbg !725
  %nodeidx183 = getelementptr inbounds %struct.p7trace_s* %35, i64 0, i32 2, !dbg !726
  %40 = load i32** %nodeidx183, align 8, !dbg !726, !tbaa !477
  %arrayidx184 = getelementptr inbounds i32* %40, i64 %indvars.iv729, !dbg !726
  %41 = load i32* %arrayidx184, align 4, !dbg !726, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !279), !dbg !726
  switch i8 %37, label %for.inc284 [
    i8 1, label %if.then187
    i8 2, label %if.then205
    i8 3, label %if.then212
    i8 8, label %land.lhs.true
    i8 5, label %land.lhs.true
    i8 7, label %if.then275
  ], !dbg !727

if.then187:                                       ; preds = %for.body169
  %idxprom188 = sext i32 %41 to i64, !dbg !728
  %arrayidx189 = getelementptr inbounds i32* %23, i64 %idxprom188, !dbg !728
  %42 = load i32* %arrayidx189, align 4, !dbg !728, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !275), !dbg !728
  %idxprom190 = sext i32 %39 to i64, !dbg !722
  %43 = load i8** %arrayidx192, align 8, !dbg !722, !tbaa !477
  %arrayidx193 = getelementptr inbounds i8* %43, i64 %idxprom190, !dbg !722
  %44 = load i8* %arrayidx193, align 1, !dbg !722, !tbaa !478
  %idxprom195 = sext i8 %44 to i64, !dbg !722
  %arrayidx196 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom195, !dbg !722
  %45 = load i8* %arrayidx196, align 1, !dbg !722, !tbaa !478
  %idxprom197 = sext i32 %42 to i64, !dbg !722
  %46 = load i8*** %aseq160, align 8, !dbg !722, !tbaa !477
  %arrayidx200 = getelementptr inbounds i8** %46, i64 %indvars.iv737, !dbg !722
  %47 = load i8** %arrayidx200, align 8, !dbg !722, !tbaa !477
  %arrayidx201 = getelementptr inbounds i8* %47, i64 %idxprom197, !dbg !722
  store i8 %45, i8* %arrayidx201, align 1, !dbg !722, !tbaa !478
  %inc202 = add nsw i32 %42, 1, !dbg !729
  tail call void @llvm.dbg.value(metadata !{i32 %inc202}, i64 0, metadata !275), !dbg !729
  br label %for.inc284, !dbg !730

if.then205:                                       ; preds = %for.body169
  %idxprom206 = sext i32 %41 to i64, !dbg !731
  %arrayidx207 = getelementptr inbounds i32* %23, i64 %idxprom206, !dbg !731
  %48 = load i32* %arrayidx207, align 4, !dbg !731, !tbaa !498
  %add208 = add nsw i32 %48, 1, !dbg !731
  tail call void @llvm.dbg.value(metadata !{i32 %add208}, i64 0, metadata !275), !dbg !731
  br label %for.inc284, !dbg !733

if.then212:                                       ; preds = %for.body169
  br i1 %tobool, label %if.then214, label %if.else220, !dbg !734

if.then214:                                       ; preds = %if.then212
  %idxprom215 = sext i32 %apos.1694 to i64, !dbg !735
  %49 = load i8*** %aseq160, align 8, !dbg !735, !tbaa !477
  %arrayidx218 = getelementptr inbounds i8** %49, i64 %indvars.iv737, !dbg !735
  %50 = load i8** %arrayidx218, align 8, !dbg !735, !tbaa !477
  %arrayidx219 = getelementptr inbounds i8* %50, i64 %idxprom215, !dbg !735
  store i8 42, i8* %arrayidx219, align 1, !dbg !735, !tbaa !478
  br label %for.inc284, !dbg !735

if.else220:                                       ; preds = %if.then212
  %idxprom221 = sext i32 %39 to i64, !dbg !736
  %51 = load i8** %arrayidx192, align 8, !dbg !736, !tbaa !477
  %arrayidx224 = getelementptr inbounds i8* %51, i64 %idxprom221, !dbg !736
  %52 = load i8* %arrayidx224, align 1, !dbg !736, !tbaa !478
  %idxprom226 = sext i8 %52 to i64, !dbg !736
  %arrayidx227 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom226, !dbg !736
  %53 = load i8* %arrayidx227, align 1, !dbg !736, !tbaa !478
  %conv228 = sext i8 %53 to i32, !dbg !736
  %call229 = tail call i32 @tolower(i32 %conv228) #7, !dbg !736
  tail call void @llvm.dbg.value(metadata !{i32 %call229}, i64 0, metadata !280), !dbg !736
  %conv230 = trunc i32 %call229 to i8, !dbg !738
  %idxprom231 = sext i32 %apos.1694 to i64, !dbg !738
  %54 = load i8*** %aseq160, align 8, !dbg !738, !tbaa !477
  %arrayidx234 = getelementptr inbounds i8** %54, i64 %indvars.iv737, !dbg !738
  %55 = load i8** %arrayidx234, align 8, !dbg !738, !tbaa !477
  %arrayidx235 = getelementptr inbounds i8* %55, i64 %idxprom231, !dbg !738
  store i8 %conv230, i8* %arrayidx235, align 1, !dbg !738, !tbaa !478
  %inc236 = add nsw i32 %apos.1694, 1, !dbg !739
  tail call void @llvm.dbg.value(metadata !{i32 %inc236}, i64 0, metadata !275), !dbg !739
  br label %for.inc284

land.lhs.true:                                    ; preds = %for.body169, %for.body169
  %cmp243 = icmp sgt i32 %39, 0, !dbg !740
  br i1 %cmp243, label %if.then245, label %if.else272, !dbg !740

if.then245:                                       ; preds = %land.lhs.true
  br i1 %tobool, label %if.then247, label %if.else253, !dbg !741

if.then247:                                       ; preds = %if.then245
  %idxprom248 = sext i32 %apos.1694 to i64, !dbg !742
  %56 = load i8*** %aseq160, align 8, !dbg !742, !tbaa !477
  %arrayidx251 = getelementptr inbounds i8** %56, i64 %indvars.iv737, !dbg !742
  %57 = load i8** %arrayidx251, align 8, !dbg !742, !tbaa !477
  %arrayidx252 = getelementptr inbounds i8* %57, i64 %idxprom248, !dbg !742
  store i8 42, i8* %arrayidx252, align 1, !dbg !742, !tbaa !478
  br label %for.inc284, !dbg !742

if.else253:                                       ; preds = %if.then245
  %idxprom255 = sext i32 %39 to i64, !dbg !743
  %58 = load i8** %arrayidx192, align 8, !dbg !743, !tbaa !477
  %arrayidx258 = getelementptr inbounds i8* %58, i64 %idxprom255, !dbg !743
  %59 = load i8* %arrayidx258, align 1, !dbg !743, !tbaa !478
  %idxprom260 = sext i8 %59 to i64, !dbg !743
  %arrayidx261 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom260, !dbg !743
  %60 = load i8* %arrayidx261, align 1, !dbg !743, !tbaa !478
  %conv262 = sext i8 %60 to i32, !dbg !743
  %call263 = tail call i32 @tolower(i32 %conv262) #7, !dbg !743
  tail call void @llvm.dbg.value(metadata !{i32 %call263}, i64 0, metadata !288), !dbg !743
  %conv264 = trunc i32 %call263 to i8, !dbg !745
  %idxprom265 = sext i32 %apos.1694 to i64, !dbg !745
  %61 = load i8*** %aseq160, align 8, !dbg !745, !tbaa !477
  %arrayidx268 = getelementptr inbounds i8** %61, i64 %indvars.iv737, !dbg !745
  %62 = load i8** %arrayidx268, align 8, !dbg !745, !tbaa !477
  %arrayidx269 = getelementptr inbounds i8* %62, i64 %idxprom265, !dbg !745
  store i8 %conv264, i8* %arrayidx269, align 1, !dbg !745, !tbaa !478
  %inc270 = add nsw i32 %apos.1694, 1, !dbg !746
  tail call void @llvm.dbg.value(metadata !{i32 %inc270}, i64 0, metadata !275), !dbg !746
  br label %for.inc284

if.else272:                                       ; preds = %land.lhs.true
  %cmp273 = icmp eq i8 %37, 7, !dbg !747
  br i1 %cmp273, label %if.then275, label %for.inc284, !dbg !747

if.then275:                                       ; preds = %if.else272, %for.body169
  %63 = load i32* %arrayidx277, align 4, !dbg !715, !tbaa !498
  %add278 = add nsw i32 %63, 1, !dbg !715
  tail call void @llvm.dbg.value(metadata !{i32 %add278}, i64 0, metadata !275), !dbg !715
  br label %for.inc284, !dbg !715

for.inc284:                                       ; preds = %for.body169, %if.then187, %if.else220, %if.then214, %if.else272, %if.then275, %if.then247, %if.else253, %if.then205
  %apos.2 = phi i32 [ %inc202, %if.then187 ], [ %add208, %if.then205 ], [ %apos.1694, %if.then214 ], [ %inc236, %if.else220 ], [ %apos.1694, %if.then247 ], [ %inc270, %if.else253 ], [ %add278, %if.then275 ], [ %apos.1694, %if.else272 ], [ %apos.1694, %for.body169 ]
  %indvars.iv.next730 = add i64 %indvars.iv729, 1, !dbg !721
  %64 = load %struct.p7trace_s** %arrayidx165, align 8, !dbg !721, !tbaa !477
  %tlen166 = getelementptr inbounds %struct.p7trace_s* %64, i64 0, i32 0, !dbg !721
  %65 = load i32* %tlen166, align 4, !dbg !721, !tbaa !498
  %66 = trunc i64 %indvars.iv.next730 to i32, !dbg !721
  %cmp167 = icmp slt i32 %66, %65, !dbg !721
  br i1 %cmp167, label %for.body169, label %for.end286, !dbg !721

for.end286:                                       ; preds = %for.inc284, %for.end157
  br i1 %tobool, label %for.inc338, label %if.then288, !dbg !748

if.then288:                                       ; preds = %for.end286
  %67 = load i8*** %aseq160, align 8, !dbg !749, !tbaa !477
  %arrayidx291 = getelementptr inbounds i8** %67, i64 %indvars.iv737, !dbg !749
  %68 = load i8** %arrayidx291, align 8, !dbg !749, !tbaa !477
  %69 = load i32* %0, align 4, !dbg !749, !tbaa !498
  tail call fastcc void @rightjustify(i8* %68, i32 %69) #8, !dbg !749
  tail call void @llvm.dbg.value(metadata !701, i64 0, metadata !279), !dbg !712
  br i1 %cmp294696, label %for.body296, label %for.inc338, !dbg !712

for.body296:                                      ; preds = %if.then288, %for.inc334
  %indvars.iv733 = phi i64 [ %indvars.iv.next734, %for.inc334 ], [ 1, %if.then288 ]
  %arrayidx298 = getelementptr inbounds i32* %0, i64 %indvars.iv733, !dbg !750
  %70 = load i32* %arrayidx298, align 4, !dbg !750, !tbaa !498
  %cmp299 = icmp sgt i32 %70, 1, !dbg !750
  br i1 %cmp299, label %if.then301, label %for.inc334, !dbg !750

if.then301:                                       ; preds = %for.body296
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !274), !dbg !751
  %arrayidx303 = getelementptr inbounds i32* %23, i64 %indvars.iv733, !dbg !751
  %71 = load i32* %arrayidx303, align 4, !dbg !751, !tbaa !498
  %72 = load i8*** %aseq160, align 8, !dbg !751, !tbaa !477
  %arrayidx309 = getelementptr inbounds i8** %72, i64 %indvars.iv737, !dbg !751
  %73 = load i8** %arrayidx309, align 8, !dbg !751, !tbaa !477
  %call313 = tail call i16** @__ctype_b_loc() #9, !dbg !751
  %74 = load i16** %call313, align 8, !dbg !751, !tbaa !477
  %75 = sext i32 %71 to i64
  br label %for.cond305, !dbg !751

for.cond305:                                      ; preds = %for.cond305, %if.then301
  %indvars.iv731 = phi i64 [ %indvars.iv.next732, %for.cond305 ], [ %75, %if.then301 ]
  %nins.2 = phi i32 [ %inc318, %for.cond305 ], [ 0, %if.then301 ]
  %indvars.iv.next732 = add i64 %indvars.iv731, 1, !dbg !751
  %arrayidx310 = getelementptr inbounds i8* %73, i64 %indvars.iv.next732, !dbg !751
  %76 = load i8* %arrayidx310, align 1, !dbg !751, !tbaa !478
  %idxprom312 = sext i8 %76 to i64, !dbg !751
  %arrayidx314 = getelementptr inbounds i16* %74, i64 %idxprom312, !dbg !751
  %77 = load i16* %arrayidx314, align 2, !dbg !751, !tbaa !754
  %and = and i16 %77, 512, !dbg !751
  %tobool316 = icmp eq i16 %and, 0, !dbg !751
  %inc318 = add nsw i32 %nins.2, 1, !dbg !755
  tail call void @llvm.dbg.value(metadata !{i32 %inc318}, i64 0, metadata !274), !dbg !755
  br i1 %tobool316, label %for.end321, label %for.cond305, !dbg !751

for.end321:                                       ; preds = %for.cond305
  %div = sdiv i32 %nins.2, 2, !dbg !756
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !274), !dbg !756
  %idx.ext328 = sext i32 %div to i64, !dbg !757
  %add.ptr.sum = add i64 %idx.ext328, 1, !dbg !757
  %add.ptr327.sum = add i64 %add.ptr.sum, %75, !dbg !757
  %add.ptr329 = getelementptr inbounds i8* %73, i64 %add.ptr327.sum, !dbg !757
  %sub332 = sub nsw i32 %70, %div, !dbg !757
  tail call fastcc void @rightjustify(i8* %add.ptr329, i32 %sub332) #8, !dbg !757
  br label %for.inc334, !dbg !758

for.inc334:                                       ; preds = %for.body296, %for.end321
  %indvars.iv.next734 = add i64 %indvars.iv733, 1, !dbg !712
  %lftr.wideiv735 = trunc i64 %indvars.iv.next734 to i32, !dbg !712
  %exitcond736 = icmp eq i32 %lftr.wideiv735, %mlen, !dbg !712
  br i1 %exitcond736, label %for.inc338, label %for.body296, !dbg !712

for.inc338:                                       ; preds = %if.then288, %for.inc334, %for.end286
  %indvars.iv.next738 = add i64 %indvars.iv737, 1, !dbg !708
  %lftr.wideiv739 = trunc i64 %indvars.iv.next738 to i32, !dbg !708
  %exitcond740 = icmp eq i32 %lftr.wideiv739, %nseq, !dbg !708
  br i1 %exitcond740, label %for.end340, label %for.cond133.preheader, !dbg !708

for.end340:                                       ; preds = %for.inc338
  %nseq341 = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 4, !dbg !759
  store i32 %nseq, i32* %nseq341, align 4, !dbg !759, !tbaa !498
  %alen342 = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 3, !dbg !760
  store i32 %alen.0.lcssa, i32* %alen342, align 4, !dbg !760, !tbaa !498
  %call343 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 529, i64 10) #7, !dbg !761
  %au = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 10, !dbg !761
  store i8* %call343, i8** %au, align 8, !dbg !761, !tbaa !477
  %call345 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %call343, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !762
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !270), !dbg !763
  br i1 %cmp3709, label %for.body349.lr.ph, label %for.end431, !dbg !763

for.body349.lr.ph:                                ; preds = %for.end340
  %sqname = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 1, !dbg !765
  %wgt427 = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 2, !dbg !767
  %sa = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 17, !dbg !768
  %conv408 = sext i32 %nseq to i64, !dbg !768
  %mul409 = shl nsw i64 %conv408, 3, !dbg !768
  %aseq414 = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 0, !dbg !770
  %ss = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 16, !dbg !771
  br label %for.body349, !dbg !763

for.body349:                                      ; preds = %if.end423, %for.body349.lr.ph
  %indvars.iv717 = phi i64 [ 0, %for.body349.lr.ph ], [ %indvars.iv.next718, %if.end423 ]
  %arraydecay = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv717, i32 1, i64 0, !dbg !765
  %call352 = tail call i8* @sre_strdup(i8* %arraydecay, i32 -1) #7, !dbg !765
  %78 = load i8*** %sqname, align 8, !dbg !765, !tbaa !477
  %arrayidx354 = getelementptr inbounds i8** %78, i64 %indvars.iv717, !dbg !765
  store i8* %call352, i8** %arrayidx354, align 8, !dbg !765, !tbaa !477
  %flags = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv717, i32 0, !dbg !773
  %79 = load i32* %flags, align 4, !dbg !773, !tbaa !498
  %and357 = and i32 %79, 4, !dbg !773
  %tobool358 = icmp eq i32 %and357, 0, !dbg !773
  br i1 %tobool358, label %if.end363, label %if.then359, !dbg !773

if.then359:                                       ; preds = %for.body349
  %arraydecay362 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv717, i32 3, i64 0, !dbg !774
  %80 = trunc i64 %indvars.iv717 to i32, !dbg !774
  tail call void @MSASetSeqAccession(%struct.msa_struct* %call128, i32 %80, i8* %arraydecay362) #7, !dbg !774
  %.pre = load i32* %flags, align 4, !dbg !775, !tbaa !498
  br label %if.end363, !dbg !774

if.end363:                                        ; preds = %for.body349, %if.then359
  %81 = phi i32 [ %79, %for.body349 ], [ %.pre, %if.then359 ]
  %and367 = and i32 %81, 8, !dbg !775
  %tobool368 = icmp eq i32 %and367, 0, !dbg !775
  br i1 %tobool368, label %if.end373, label %if.then369, !dbg !775

if.then369:                                       ; preds = %if.end363
  %arraydecay372 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv717, i32 4, i64 0, !dbg !776
  %82 = trunc i64 %indvars.iv717 to i32, !dbg !776
  tail call void @MSASetSeqDescription(%struct.msa_struct* %call128, i32 %82, i8* %arraydecay372) #7, !dbg !776
  %.pre761 = load i32* %flags, align 4, !dbg !777, !tbaa !498
  br label %if.end373, !dbg !776

if.end373:                                        ; preds = %if.end363, %if.then369
  %83 = phi i32 [ %81, %if.end363 ], [ %.pre761, %if.then369 ]
  %and377 = and i32 %83, 512, !dbg !777
  %tobool378 = icmp eq i32 %and377, 0, !dbg !777
  br i1 %tobool378, label %if.end398, label %if.then379, !dbg !777

if.then379:                                       ; preds = %if.end373
  %84 = load i8*** %ss, align 8, !dbg !771, !tbaa !477
  %cmp380 = icmp eq i8** %84, null, !dbg !771
  br i1 %cmp380, label %if.then382, label %if.end387, !dbg !771

if.then382:                                       ; preds = %if.then379
  %call385 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 541, i64 %mul409) #7, !dbg !771
  %85 = bitcast i8* %call385 to i8**, !dbg !771
  store i8** %85, i8*** %ss, align 8, !dbg !771, !tbaa !477
  br label %if.end387, !dbg !771

if.end387:                                        ; preds = %if.then382, %if.then379
  %86 = phi i8** [ %85, %if.then382 ], [ %84, %if.then379 ]
  %87 = load i8*** %aseq414, align 8, !dbg !778, !tbaa !477
  %arrayidx390 = getelementptr inbounds i8** %87, i64 %indvars.iv717, !dbg !778
  %88 = load i8** %arrayidx390, align 8, !dbg !778, !tbaa !477
  %ss393 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv717, i32 10, !dbg !778
  %89 = load i8** %ss393, align 8, !dbg !778, !tbaa !477
  %arrayidx396 = getelementptr inbounds i8** %86, i64 %indvars.iv717, !dbg !778
  %call397 = tail call i32 @MakeAlignedString(i8* %88, i32 %alen.0.lcssa, i8* %89, i8** %arrayidx396) #7, !dbg !778
  %.pre762 = load i32* %flags, align 4, !dbg !779, !tbaa !498
  br label %if.end398, !dbg !780

if.end398:                                        ; preds = %if.end373, %if.end387
  %90 = phi i32 [ %83, %if.end373 ], [ %.pre762, %if.end387 ]
  %and402 = and i32 %90, 1024, !dbg !779
  %tobool403 = icmp eq i32 %and402, 0, !dbg !779
  br i1 %tobool403, label %if.end423, label %if.then404, !dbg !779

if.then404:                                       ; preds = %if.end398
  %91 = load i8*** %sa, align 8, !dbg !768, !tbaa !477
  %cmp405 = icmp eq i8** %91, null, !dbg !768
  br i1 %cmp405, label %if.then407, label %if.end412, !dbg !768

if.then407:                                       ; preds = %if.then404
  %call410 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 546, i64 %mul409) #7, !dbg !768
  %92 = bitcast i8* %call410 to i8**, !dbg !768
  store i8** %92, i8*** %sa, align 8, !dbg !768, !tbaa !477
  br label %if.end412, !dbg !768

if.end412:                                        ; preds = %if.then407, %if.then404
  %93 = phi i8** [ %92, %if.then407 ], [ %91, %if.then404 ]
  %94 = load i8*** %aseq414, align 8, !dbg !770, !tbaa !477
  %arrayidx415 = getelementptr inbounds i8** %94, i64 %indvars.iv717, !dbg !770
  %95 = load i8** %arrayidx415, align 8, !dbg !770, !tbaa !477
  %sa418 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv717, i32 11, !dbg !770
  %96 = load i8** %sa418, align 8, !dbg !770, !tbaa !477
  %arrayidx421 = getelementptr inbounds i8** %93, i64 %indvars.iv717, !dbg !770
  %call422 = tail call i32 @MakeAlignedString(i8* %95, i32 %alen.0.lcssa, i8* %96, i8** %arrayidx421) #7, !dbg !770
  br label %if.end423, !dbg !781

if.end423:                                        ; preds = %if.end398, %if.end412
  %arrayidx425 = getelementptr inbounds float* %wgt, i64 %indvars.iv717, !dbg !767
  %97 = load float* %arrayidx425, align 4, !dbg !767, !tbaa !556
  %98 = load float** %wgt427, align 8, !dbg !767, !tbaa !477
  %arrayidx428 = getelementptr inbounds float* %98, i64 %indvars.iv717, !dbg !767
  store float %97, float* %arrayidx428, align 4, !dbg !767, !tbaa !556
  %indvars.iv.next718 = add i64 %indvars.iv717, 1, !dbg !763
  %lftr.wideiv719 = trunc i64 %indvars.iv.next718 to i32, !dbg !763
  %exitcond720 = icmp eq i32 %lftr.wideiv719, %nseq, !dbg !763
  br i1 %exitcond720, label %for.end431, label %for.body349, !dbg !763

for.end431.critedge:                              ; preds = %for.end127
  %nseq341.c = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 4, !dbg !759
  store i32 %nseq, i32* %nseq341.c, align 4, !dbg !759, !tbaa !498
  %alen342.c = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 3, !dbg !760
  store i32 %alen.0.lcssa, i32* %alen342.c, align 4, !dbg !760, !tbaa !498
  %call343.c = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 529, i64 10) #7, !dbg !761
  %au.c = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 10, !dbg !761
  store i8* %call343.c, i8** %au.c, align 8, !dbg !761, !tbaa !477
  %call345.c = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %call343.c, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !762
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !270), !dbg !763
  br label %for.end431

for.end431:                                       ; preds = %for.end431.critedge, %if.end423, %for.end340
  %add432 = add nsw i32 %alen.0.lcssa, 1, !dbg !782
  %conv433 = sext i32 %add432 to i64, !dbg !782
  %call435 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 555, i64 %conv433) #7, !dbg !782
  %rf = getelementptr inbounds %struct.msa_struct* %call128, i64 0, i32 13, !dbg !782
  store i8* %call435, i8** %rf, align 8, !dbg !782, !tbaa !477
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !275), !dbg !783
  %cmp437684 = icmp sgt i32 %alen.0.lcssa, 0, !dbg !783
  br i1 %cmp437684, label %for.body439, label %for.cond446.preheader, !dbg !783

for.cond446.preheader:                            ; preds = %for.body439, %for.end431
  br i1 %cmp116700, label %for.end457, label %for.body449, !dbg !785

for.body439:                                      ; preds = %for.end431, %for.body439.for.body439_crit_edge
  %99 = phi i8* [ %.pre767, %for.body439.for.body439_crit_edge ], [ %call435, %for.end431 ]
  %indvars.iv713 = phi i64 [ %indvars.iv.next714, %for.body439.for.body439_crit_edge ], [ 0, %for.end431 ]
  %arrayidx442 = getelementptr inbounds i8* %99, i64 %indvars.iv713, !dbg !787
  store i8 46, i8* %arrayidx442, align 1, !dbg !787, !tbaa !478
  %indvars.iv.next714 = add i64 %indvars.iv713, 1, !dbg !783
  %lftr.wideiv715 = trunc i64 %indvars.iv.next714 to i32, !dbg !783
  %exitcond716 = icmp eq i32 %lftr.wideiv715, %alen.0.lcssa, !dbg !783
  br i1 %exitcond716, label %for.cond446.preheader, label %for.body439.for.body439_crit_edge, !dbg !783

for.body439.for.body439_crit_edge:                ; preds = %for.body439
  %.pre767 = load i8** %rf, align 8, !dbg !787, !tbaa !477
  br label %for.body439, !dbg !783

for.body449:                                      ; preds = %for.body449, %for.cond446.preheader
  %indvars.iv = phi i64 [ 1, %for.cond446.preheader ], [ %indvars.iv.next, %for.body449 ]
  %arrayidx451 = getelementptr inbounds i32* %23, i64 %indvars.iv, !dbg !788
  %100 = load i32* %arrayidx451, align 4, !dbg !788, !tbaa !498
  %idxprom452 = sext i32 %100 to i64, !dbg !788
  %101 = load i8** %rf, align 8, !dbg !788, !tbaa !477
  %arrayidx454 = getelementptr inbounds i8* %101, i64 %idxprom452, !dbg !788
  store i8 120, i8* %arrayidx454, align 1, !dbg !788, !tbaa !478
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !785
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !785
  %exitcond = icmp eq i32 %lftr.wideiv, %add, !dbg !785
  br i1 %exitcond, label %for.end457, label %for.body449, !dbg !785

for.end457:                                       ; preds = %for.body449, %for.cond446.preheader
  %idxprom458 = sext i32 %alen.0.lcssa to i64, !dbg !789
  %102 = load i8** %rf, align 8, !dbg !789, !tbaa !477
  %arrayidx460 = getelementptr inbounds i8* %102, i64 %idxprom458, !dbg !789
  store i8 0, i8* %arrayidx460, align 1, !dbg !789, !tbaa !478
  tail call void @free(i8* %call) #7, !dbg !790
  tail call void @free(i8* %call112) #7, !dbg !791
  ret %struct.msa_struct* %call128, !dbg !792
}

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @tolower(i32) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @rightjustify(i8* nocapture %s, i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !470), !dbg !793
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !471), !dbg !793
  %sub = add nsw i32 %n, -1, !dbg !794
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !472), !dbg !794
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !473), !dbg !795
  %cmp6165 = icmp sgt i32 %n, 0, !dbg !796
  br i1 %cmp6165, label %while.body.lr.ph.lr.ph, label %while.cond33.preheader, !dbg !796

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %0 = sext i32 %n to i64
  br label %while.body.lr.ph, !dbg !796

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.else
  %indvars.iv73.in = phi i64 [ %0, %while.body.lr.ph.lr.ph ], [ %indvars.iv73, %if.else ]
  %opos.0.ph67 = phi i32 [ %sub, %while.body.lr.ph.lr.ph ], [ %dec27, %if.else ]
  %npos.0.ph66 = phi i32 [ %sub, %while.body.lr.ph.lr.ph ], [ %dec30, %if.else ]
  %indvars.iv73 = add i64 %indvars.iv73.in, -1, !dbg !796
  %1 = sext i32 %opos.0.ph67 to i64
  br label %while.body, !dbg !796

while.cond33.preheader:                           ; preds = %entry, %if.else, %if.then
  %npos.0.ph64 = phi i32 [ %npos.0.ph66, %if.then ], [ %sub, %entry ], [ %dec30, %if.else ]
  %cmp3458 = icmp sgt i32 %npos.0.ph64, -1, !dbg !797
  br i1 %cmp3458, label %while.body36.lr.ph, label %while.end40, !dbg !797

while.body36.lr.ph:                               ; preds = %while.cond33.preheader
  %2 = sext i32 %npos.0.ph64 to i64
  br label %while.body36, !dbg !797

while.body:                                       ; preds = %while.body.lr.ph, %if.then
  %indvars.iv70 = phi i64 [ %1, %while.body.lr.ph ], [ %indvars.iv.next71, %if.then ]
  %opos.062 = phi i32 [ %opos.0.ph67, %while.body.lr.ph ], [ %dec, %if.then ]
  %arrayidx = getelementptr inbounds i8* %s, i64 %indvars.iv70, !dbg !798
  %3 = load i8* %arrayidx, align 1, !dbg !798, !tbaa !478
  switch i8 %3, label %if.else [
    i8 32, label %if.then
    i8 46, label %if.then
    i8 95, label %if.then
    i8 45, label %if.then
    i8 126, label %if.then
  ], !dbg !798

if.then:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body
  %indvars.iv.next71 = add i64 %indvars.iv70, -1, !dbg !796
  %dec = add nsw i32 %opos.062, -1, !dbg !798
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !473), !dbg !798
  %4 = trunc i64 %indvars.iv70 to i32, !dbg !796
  %cmp = icmp sgt i32 %4, 0, !dbg !796
  br i1 %cmp, label %while.body, label %while.cond33.preheader, !dbg !796

if.else:                                          ; preds = %while.body
  %dec27 = add nsw i32 %opos.062, -1, !dbg !800
  tail call void @llvm.dbg.value(metadata !{i32 %dec27}, i64 0, metadata !473), !dbg !800
  %dec30 = add nsw i32 %npos.0.ph66, -1, !dbg !800
  tail call void @llvm.dbg.value(metadata !{i32 %dec30}, i64 0, metadata !472), !dbg !800
  %arrayidx32 = getelementptr inbounds i8* %s, i64 %indvars.iv73, !dbg !800
  store i8 %3, i8* %arrayidx32, align 1, !dbg !800, !tbaa !478
  %cmp61 = icmp sgt i32 %opos.062, 0, !dbg !796
  br i1 %cmp61, label %while.body.lr.ph, label %while.cond33.preheader, !dbg !796

while.body36:                                     ; preds = %while.body36.lr.ph, %while.body36
  %indvars.iv = phi i64 [ %2, %while.body36.lr.ph ], [ %indvars.iv.next, %while.body36 ]
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !797
  %arrayidx39 = getelementptr inbounds i8* %s, i64 %indvars.iv, !dbg !801
  store i8 46, i8* %arrayidx39, align 1, !dbg !801, !tbaa !478
  %5 = trunc i64 %indvars.iv to i32, !dbg !797
  %cmp34 = icmp sgt i32 %5, 0, !dbg !797
  br i1 %cmp34, label %while.body36, label %while.end40, !dbg !797

while.end40:                                      ; preds = %while.body36, %while.cond33.preheader
  ret void, !dbg !802
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #2

; Function Attrs: optsize
declare void @MSASetSeqAccession(%struct.msa_struct*, i32, i8*) #2

; Function Attrs: optsize
declare void @MSASetSeqDescription(%struct.msa_struct*, i32, i8*) #2

; Function Attrs: optsize
declare i32 @MakeAlignedString(i8*, i32, i8*, i8**) #2

; Function Attrs: optsize
declare i32 @Prob2Score(float, float) #2

; Function Attrs: nounwind optsize uwtable
define %struct.fancyali_s* @CreateFancyAli(%struct.p7trace_s* nocapture %tr, %struct.plan7_s* nocapture %hmm, i8* nocapture %dsq, i8* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %tr}, i64 0, metadata !318), !dbg !803
  tail call void @llvm.dbg.value(metadata !{%struct.plan7_s* %hmm}, i64 0, metadata !319), !dbg !803
  tail call void @llvm.dbg.value(metadata !{i8* %dsq}, i64 0, metadata !320), !dbg !804
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !321), !dbg !804
  %call = tail call %struct.fancyali_s* @AllocFancyAli() #7, !dbg !805
  tail call void @llvm.dbg.value(metadata !{%struct.fancyali_s* %call}, i64 0, metadata !322), !dbg !805
  %rfline = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 0, !dbg !806
  %csline = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 1, !dbg !807
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0, !dbg !808
  %0 = bitcast %struct.fancyali_s* %call to i8*, !dbg !808
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false), !dbg !807
  %1 = load i32* %tlen, align 4, !dbg !808, !tbaa !498
  %add = add nsw i32 %1, 1, !dbg !808
  %conv = sext i32 %add to i64, !dbg !808
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 680, i64 %conv) #7, !dbg !808
  %model = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 2, !dbg !808
  store i8* %call1, i8** %model, align 8, !dbg !808, !tbaa !477
  %2 = load i32* %tlen, align 4, !dbg !809, !tbaa !498
  %add3 = add nsw i32 %2, 1, !dbg !809
  %conv4 = sext i32 %add3 to i64, !dbg !809
  %call6 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 681, i64 %conv4) #7, !dbg !809
  %mline = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 3, !dbg !809
  store i8* %call6, i8** %mline, align 8, !dbg !809, !tbaa !477
  %3 = load i32* %tlen, align 4, !dbg !810, !tbaa !498
  %add8 = add nsw i32 %3, 1, !dbg !810
  %conv9 = sext i32 %add8 to i64, !dbg !810
  %call11 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 682, i64 %conv9) #7, !dbg !810
  %aseq = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 4, !dbg !810
  store i8* %call11, i8** %aseq, align 8, !dbg !810, !tbaa !477
  %4 = load i8** %model, align 8, !dbg !811, !tbaa !477
  %5 = load i32* %tlen, align 4, !dbg !811, !tbaa !498
  %conv14 = sext i32 %5 to i64, !dbg !811
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 32, i64 %conv14, i32 1, i1 false), !dbg !811
  %6 = load i8** %mline, align 8, !dbg !812, !tbaa !477
  %7 = load i32* %tlen, align 4, !dbg !812, !tbaa !498
  %conv17 = sext i32 %7 to i64, !dbg !812
  tail call void @llvm.memset.p0i8.i64(i8* %6, i8 32, i64 %conv17, i32 1, i1 false), !dbg !812
  %8 = load i8** %aseq, align 8, !dbg !813, !tbaa !477
  %9 = load i32* %tlen, align 4, !dbg !813, !tbaa !498
  %conv20 = sext i32 %9 to i64, !dbg !813
  tail call void @llvm.memset.p0i8.i64(i8* %8, i8 32, i64 %conv20, i32 1, i1 false), !dbg !813
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47, !dbg !814
  %10 = load i32* %flags, align 4, !dbg !814, !tbaa !498
  %and = and i32 %10, 4, !dbg !814
  %tobool = icmp eq i32 %and, 0, !dbg !814
  br i1 %tobool, label %if.end, label %if.then, !dbg !814

if.then:                                          ; preds = %entry
  %11 = load i32* %tlen, align 4, !dbg !815, !tbaa !498
  %add22 = add nsw i32 %11, 1, !dbg !815
  %conv23 = sext i32 %add22 to i64, !dbg !815
  %call25 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 690, i64 %conv23) #7, !dbg !815
  store i8* %call25, i8** %rfline, align 8, !dbg !815, !tbaa !477
  %12 = load i32* %tlen, align 4, !dbg !817, !tbaa !498
  %conv29 = sext i32 %12 to i64, !dbg !817
  tail call void @llvm.memset.p0i8.i64(i8* %call25, i8 32, i64 %conv29, i32 1, i1 false), !dbg !817
  %.pre = load i32* %flags, align 4, !dbg !818, !tbaa !498
  br label %if.end, !dbg !819

if.end:                                           ; preds = %entry, %if.then
  %13 = phi i32 [ %10, %entry ], [ %.pre, %if.then ]
  %and31 = and i32 %13, 8, !dbg !818
  %tobool32 = icmp eq i32 %and31, 0, !dbg !818
  br i1 %tobool32, label %if.end43, label %if.then33, !dbg !818

if.then33:                                        ; preds = %if.end
  %14 = load i32* %tlen, align 4, !dbg !820, !tbaa !498
  %add35 = add nsw i32 %14, 1, !dbg !820
  %conv36 = sext i32 %add35 to i64, !dbg !820
  %call38 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 695, i64 %conv36) #7, !dbg !820
  store i8* %call38, i8** %csline, align 8, !dbg !820, !tbaa !477
  %15 = load i32* %tlen, align 4, !dbg !822, !tbaa !498
  %conv42 = sext i32 %15 to i64, !dbg !822
  tail call void @llvm.memset.p0i8.i64(i8* %call38, i8 32, i64 %conv42, i32 1, i1 false), !dbg !822
  br label %if.end43, !dbg !823

if.end43:                                         ; preds = %if.end, %if.then33
  %name44 = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 0, !dbg !824
  %16 = load i8** %name44, align 8, !dbg !824, !tbaa !477
  %call45 = tail call i8* @Strdup(i8* %16) #7, !dbg !824
  %query = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 6, !dbg !824
  store i8* %call45, i8** %query, align 8, !dbg !824, !tbaa !477
  %call46 = tail call i8* @Strdup(i8* %name) #7, !dbg !825
  %target = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 7, !dbg !825
  store i8* %call46, i8** %target, align 8, !dbg !825, !tbaa !477
  %17 = load i32* @Alphabet_type, align 4, !dbg !826, !tbaa !498
  %cmp = icmp eq i32 %17, 3, !dbg !826
  %. = select i1 %cmp, float 5.000000e-01, float 0x3FECCCCCC0000000, !dbg !826
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !323), !dbg !827
  %18 = load i32* %tlen, align 4, !dbg !827, !tbaa !498
  %cmp51567 = icmp sgt i32 %18, 0, !dbg !827
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3, !dbg !829
  br i1 %cmp51567, label %for.body.lr.ph, label %for.end, !dbg !827

for.body.lr.ph:                                   ; preds = %if.end43
  %19 = load i32** %pos, align 8, !dbg !829, !tbaa !477
  br label %for.body, !dbg !827

for.cond:                                         ; preds = %for.body
  %20 = trunc i64 %indvars.iv.next574 to i32, !dbg !827
  %cmp51 = icmp slt i32 %20, %18, !dbg !827
  br i1 %cmp51, label %for.body, label %for.end, !dbg !827

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv573 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next574, %for.cond ]
  %arrayidx = getelementptr inbounds i32* %19, i64 %indvars.iv573, !dbg !829
  %21 = load i32* %arrayidx, align 4, !dbg !829, !tbaa !498
  %cmp53 = icmp sgt i32 %21, 0, !dbg !829
  %indvars.iv.next574 = add i64 %indvars.iv573, 1, !dbg !827
  br i1 %cmp53, label %if.then55, label %for.cond, !dbg !829

if.then55:                                        ; preds = %for.body
  %sqfrom = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 8, !dbg !830
  store i32 %21, i32* %sqfrom, align 4, !dbg !830, !tbaa !498
  %.pre575 = load i32* %tlen, align 4, !dbg !832, !tbaa !498
  br label %for.end, !dbg !834

for.end:                                          ; preds = %if.end43, %for.cond, %if.then55
  %22 = phi i32 [ %.pre575, %if.then55 ], [ %18, %for.cond ], [ %18, %if.end43 ]
  %23 = sext i32 %22 to i64
  br label %for.cond61, !dbg !832

for.cond61:                                       ; preds = %for.body64, %for.end
  %indvars.iv569 = phi i64 [ %indvars.iv.next570, %for.body64 ], [ %23, %for.end ]
  %indvars.iv.next570 = add i64 %indvars.iv569, -1, !dbg !835
  %24 = trunc i64 %indvars.iv569 to i32, !dbg !832
  %cmp62 = icmp sgt i32 %24, 0, !dbg !832
  br i1 %cmp62, label %for.body64, label %for.cond77.preheader, !dbg !832

for.body64:                                       ; preds = %for.cond61
  %25 = load i32** %pos, align 8, !dbg !835, !tbaa !477
  %arrayidx67 = getelementptr inbounds i32* %25, i64 %indvars.iv.next570, !dbg !835
  %26 = load i32* %arrayidx67, align 4, !dbg !835, !tbaa !498
  %cmp68 = icmp sgt i32 %26, 0, !dbg !835
  br i1 %cmp68, label %if.then70, label %for.cond61, !dbg !835

if.then70:                                        ; preds = %for.body64
  %sqto = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 9, !dbg !836
  store i32 %26, i32* %sqto, align 4, !dbg !836, !tbaa !498
  %.pre576 = load i32* %tlen, align 4, !dbg !838, !tbaa !498
  br label %for.cond77.preheader, !dbg !839

for.cond77.preheader:                             ; preds = %for.cond61, %if.then70
  %27 = phi i32 [ %.pre576, %if.then70 ], [ %22, %for.cond61 ]
  %cmp79564 = icmp sgt i32 %27, 0, !dbg !838
  br i1 %cmp79564, label %for.body81.lr.ph, label %for.end370, !dbg !838

for.body81.lr.ph:                                 ; preds = %for.cond77.preheader
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1, !dbg !840
  %nodeidx150 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2, !dbg !841
  %mat = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 22, !dbg !841
  %msc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 31, !dbg !842
  %cs = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 4, !dbg !843
  %rf = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 3, !dbg !844
  %isc = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 32, !dbg !845
  br label %for.body81, !dbg !838

for.body81:                                       ; preds = %for.body81.lr.ph, %for.inc368
  %indvars.iv = phi i64 [ 0, %for.body81.lr.ph ], [ %indvars.iv.next, %for.inc368 ]
  %tpos.2565 = phi i32 [ 0, %for.body81.lr.ph ], [ %inc369, %for.inc368 ]
  %28 = load i8** %statetype, align 8, !dbg !840, !tbaa !477
  %arrayidx83 = getelementptr inbounds i8* %28, i64 %indvars.iv, !dbg !840
  %29 = load i8* %arrayidx83, align 1, !dbg !840, !tbaa !478
  %conv84 = sext i8 %29 to i32, !dbg !840
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
  ], !dbg !840

sw.bb:                                            ; preds = %for.body81, %for.body81
  %30 = load i8** %model, align 8, !dbg !846, !tbaa !477
  %arrayidx87 = getelementptr inbounds i8* %30, i64 %indvars.iv, !dbg !846
  store i8 42, i8* %arrayidx87, align 1, !dbg !846, !tbaa !478
  br label %for.inc368, !dbg !847

sw.bb88:                                          ; preds = %for.body81, %for.body81, %for.body81
  %31 = load i8** %model, align 8, !dbg !848, !tbaa !477
  %arrayidx91 = getelementptr inbounds i8* %31, i64 %indvars.iv, !dbg !848
  store i8 45, i8* %arrayidx91, align 1, !dbg !848, !tbaa !478
  %32 = load i32** %pos, align 8, !dbg !849, !tbaa !477
  %arrayidx94 = getelementptr inbounds i32* %32, i64 %indvars.iv, !dbg !849
  %33 = load i32* %arrayidx94, align 4, !dbg !849, !tbaa !498
  %cmp95 = icmp sgt i32 %33, 0, !dbg !849
  br i1 %cmp95, label %if.then97, label %for.inc368, !dbg !849

if.then97:                                        ; preds = %sw.bb88
  %idxprom101 = sext i32 %33 to i64, !dbg !850
  %arrayidx102 = getelementptr inbounds i8* %dsq, i64 %idxprom101, !dbg !850
  %34 = load i8* %arrayidx102, align 1, !dbg !850, !tbaa !478
  %idxprom104 = sext i8 %34 to i64, !dbg !850
  %arrayidx105 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom104, !dbg !850
  %35 = load i8* %arrayidx105, align 1, !dbg !850, !tbaa !478
  %idxprom107 = sext i8 %35 to i64, !dbg !850
  %call108 = tail call i32** @__ctype_tolower_loc() #9, !dbg !850
  %36 = load i32** %call108, align 8, !dbg !850, !tbaa !477
  %arrayidx109 = getelementptr inbounds i32* %36, i64 %idxprom107, !dbg !850
  %37 = load i32* %arrayidx109, align 4, !dbg !850, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{i32 %37}, i64 0, metadata !326), !dbg !850
  %conv110 = trunc i32 %37 to i8, !dbg !850
  %38 = load i8** %aseq, align 8, !dbg !850, !tbaa !477
  %arrayidx113 = getelementptr inbounds i8* %38, i64 %indvars.iv, !dbg !850
  store i8 %conv110, i8* %arrayidx113, align 1, !dbg !850, !tbaa !478
  br label %for.inc368, !dbg !851

sw.bb115:                                         ; preds = %for.body81
  %39 = load i8** %model, align 8, !dbg !852, !tbaa !477
  %arrayidx118 = getelementptr inbounds i8* %39, i64 %indvars.iv, !dbg !852
  store i8 62, i8* %arrayidx118, align 1, !dbg !852, !tbaa !478
  br label %for.inc368, !dbg !853

sw.bb119:                                         ; preds = %for.body81
  %40 = load i8** %model, align 8, !dbg !854, !tbaa !477
  %arrayidx122 = getelementptr inbounds i8* %40, i64 %indvars.iv, !dbg !854
  store i8 60, i8* %arrayidx122, align 1, !dbg !854, !tbaa !478
  br label %for.inc368, !dbg !855

sw.bb123:                                         ; preds = %for.body81
  %41 = load i32* %flags, align 4, !dbg !844, !tbaa !498
  %and125 = and i32 %41, 4, !dbg !844
  %tobool126 = icmp eq i32 %and125, 0, !dbg !844
  br i1 %tobool126, label %if.end135, label %if.then127, !dbg !844

if.then127:                                       ; preds = %sw.bb123
  %42 = load i32** %nodeidx150, align 8, !dbg !844, !tbaa !477
  %arrayidx129 = getelementptr inbounds i32* %42, i64 %indvars.iv, !dbg !844
  %43 = load i32* %arrayidx129, align 4, !dbg !844, !tbaa !498
  %idxprom130 = sext i32 %43 to i64, !dbg !844
  %44 = load i8** %rf, align 8, !dbg !844, !tbaa !477
  %arrayidx131 = getelementptr inbounds i8* %44, i64 %idxprom130, !dbg !844
  %45 = load i8* %arrayidx131, align 1, !dbg !844, !tbaa !478
  %46 = load i8** %rfline, align 8, !dbg !844, !tbaa !477
  %arrayidx134 = getelementptr inbounds i8* %46, i64 %indvars.iv, !dbg !844
  store i8 %45, i8* %arrayidx134, align 1, !dbg !844, !tbaa !478
  %.pre578 = load i32* %flags, align 4, !dbg !843, !tbaa !498
  br label %if.end135, !dbg !844

if.end135:                                        ; preds = %sw.bb123, %if.then127
  %47 = phi i32 [ %41, %sw.bb123 ], [ %.pre578, %if.then127 ]
  %and137 = and i32 %47, 8, !dbg !843
  %tobool138 = icmp eq i32 %and137, 0, !dbg !843
  br i1 %tobool138, label %if.end148, label %if.then139, !dbg !843

if.then139:                                       ; preds = %if.end135
  %48 = load i32** %nodeidx150, align 8, !dbg !843, !tbaa !477
  %arrayidx142 = getelementptr inbounds i32* %48, i64 %indvars.iv, !dbg !843
  %49 = load i32* %arrayidx142, align 4, !dbg !843, !tbaa !498
  %idxprom143 = sext i32 %49 to i64, !dbg !843
  %50 = load i8** %cs, align 8, !dbg !843, !tbaa !477
  %arrayidx144 = getelementptr inbounds i8* %50, i64 %idxprom143, !dbg !843
  %51 = load i8* %arrayidx144, align 1, !dbg !843, !tbaa !478
  %52 = load i8** %csline, align 8, !dbg !843, !tbaa !477
  %arrayidx147 = getelementptr inbounds i8* %52, i64 %indvars.iv, !dbg !843
  store i8 %51, i8* %arrayidx147, align 1, !dbg !843, !tbaa !478
  br label %if.end148, !dbg !843

if.end148:                                        ; preds = %if.end135, %if.then139
  %53 = load i32** %nodeidx150, align 8, !dbg !841, !tbaa !477
  %arrayidx151 = getelementptr inbounds i32* %53, i64 %indvars.iv, !dbg !841
  %54 = load i32* %arrayidx151, align 4, !dbg !841, !tbaa !498
  %idxprom152 = sext i32 %54 to i64, !dbg !841
  %55 = load float*** %mat, align 8, !dbg !841, !tbaa !477
  %arrayidx153 = getelementptr inbounds float** %55, i64 %idxprom152, !dbg !841
  %56 = load float** %arrayidx153, align 8, !dbg !841, !tbaa !477
  %57 = load i32* @Alphabet_size, align 4, !dbg !841, !tbaa !498
  %call154 = tail call i32 @FArgMax(float* %56, i32 %57) #7, !dbg !841
  tail call void @llvm.dbg.value(metadata !{i32 %call154}, i64 0, metadata !324), !dbg !841
  %idxprom155 = sext i32 %call154 to i64, !dbg !856
  %arrayidx156 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom155, !dbg !856
  %58 = load i8* %arrayidx156, align 1, !dbg !856, !tbaa !478
  %59 = load i8** %model, align 8, !dbg !856, !tbaa !477
  %arrayidx159 = getelementptr inbounds i8* %59, i64 %indvars.iv, !dbg !856
  store i8 %58, i8* %arrayidx159, align 1, !dbg !856, !tbaa !478
  %60 = load i32** %nodeidx150, align 8, !dbg !857, !tbaa !477
  %arrayidx163 = getelementptr inbounds i32* %60, i64 %indvars.iv, !dbg !857
  %61 = load i32* %arrayidx163, align 4, !dbg !857, !tbaa !498
  %idxprom164 = sext i32 %61 to i64, !dbg !857
  %62 = load float*** %mat, align 8, !dbg !857, !tbaa !477
  %arrayidx166 = getelementptr inbounds float** %62, i64 %idxprom164, !dbg !857
  %63 = load float** %arrayidx166, align 8, !dbg !857, !tbaa !477
  %arrayidx167 = getelementptr inbounds float* %63, i64 %idxprom155, !dbg !857
  %64 = load float* %arrayidx167, align 4, !dbg !857, !tbaa !556
  %cmp168 = fcmp olt float %64, %., !dbg !857
  br i1 %cmp168, label %if.then170, label %if.end183, !dbg !857

if.then170:                                       ; preds = %if.end148
  %65 = load i8** %model, align 8, !dbg !858, !tbaa !477
  %arrayidx174 = getelementptr inbounds i8* %65, i64 %indvars.iv, !dbg !858
  %66 = load i8* %arrayidx174, align 1, !dbg !858, !tbaa !478
  %idxprom176 = sext i8 %66 to i64, !dbg !858
  %call177 = tail call i32** @__ctype_tolower_loc() #9, !dbg !858
  %67 = load i32** %call177, align 8, !dbg !858, !tbaa !477
  %arrayidx178 = getelementptr inbounds i32* %67, i64 %idxprom176, !dbg !858
  %68 = load i32* %arrayidx178, align 4, !dbg !858, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{i32 %68}, i64 0, metadata !332), !dbg !858
  %conv179 = trunc i32 %68 to i8, !dbg !858
  store i8 %conv179, i8* %arrayidx174, align 1, !dbg !858, !tbaa !478
  br label %if.end183, !dbg !858

if.end183:                                        ; preds = %if.then170, %if.end148
  %69 = load i32** %pos, align 8, !dbg !859, !tbaa !477
  %arrayidx186 = getelementptr inbounds i32* %69, i64 %indvars.iv, !dbg !859
  %70 = load i32* %arrayidx186, align 4, !dbg !859, !tbaa !498
  %idxprom187 = sext i32 %70 to i64, !dbg !859
  %arrayidx188 = getelementptr inbounds i8* %dsq, i64 %idxprom187, !dbg !859
  %71 = load i8* %arrayidx188, align 1, !dbg !859, !tbaa !478
  %conv189 = sext i8 %71 to i32, !dbg !859
  %cmp190 = icmp eq i32 %conv189, %call154, !dbg !859
  br i1 %cmp190, label %if.then192, label %if.else228, !dbg !859

if.then192:                                       ; preds = %if.end183
  %idxprom199 = sext i8 %71 to i64, !dbg !860
  %arrayidx200 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom199, !dbg !860
  %72 = load i8* %arrayidx200, align 1, !dbg !860, !tbaa !478
  %73 = load i8** %mline, align 8, !dbg !860, !tbaa !477
  %arrayidx203 = getelementptr inbounds i8* %73, i64 %indvars.iv, !dbg !860
  store i8 %72, i8* %arrayidx203, align 1, !dbg !860, !tbaa !478
  %74 = load i32** %nodeidx150, align 8, !dbg !861, !tbaa !477
  %arrayidx207 = getelementptr inbounds i32* %74, i64 %indvars.iv, !dbg !861
  %75 = load i32* %arrayidx207, align 4, !dbg !861, !tbaa !498
  %idxprom208 = sext i32 %75 to i64, !dbg !861
  %76 = load float*** %mat, align 8, !dbg !861, !tbaa !477
  %arrayidx210 = getelementptr inbounds float** %76, i64 %idxprom208, !dbg !861
  %77 = load float** %arrayidx210, align 8, !dbg !861, !tbaa !477
  %arrayidx211 = getelementptr inbounds float* %77, i64 %idxprom155, !dbg !861
  %78 = load float* %arrayidx211, align 4, !dbg !861, !tbaa !556
  %cmp212 = fcmp olt float %78, %., !dbg !861
  br i1 %cmp212, label %if.then214, label %if.end249, !dbg !861

if.then214:                                       ; preds = %if.then192
  %79 = load i8** %mline, align 8, !dbg !862, !tbaa !477
  %arrayidx218 = getelementptr inbounds i8* %79, i64 %indvars.iv, !dbg !862
  %80 = load i8* %arrayidx218, align 1, !dbg !862, !tbaa !478
  %idxprom220 = sext i8 %80 to i64, !dbg !862
  %call221 = tail call i32** @__ctype_tolower_loc() #9, !dbg !862
  %81 = load i32** %call221, align 8, !dbg !862, !tbaa !477
  %arrayidx222 = getelementptr inbounds i32* %81, i64 %idxprom220, !dbg !862
  %82 = load i32* %arrayidx222, align 4, !dbg !862, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{i32 %82}, i64 0, metadata !334), !dbg !862
  %conv223 = trunc i32 %82 to i8, !dbg !862
  store i8 %conv223, i8* %arrayidx218, align 1, !dbg !862, !tbaa !478
  br label %if.end249, !dbg !862

if.else228:                                       ; preds = %if.end183
  %83 = load i32** %nodeidx150, align 8, !dbg !842, !tbaa !477
  %arrayidx231 = getelementptr inbounds i32* %83, i64 %indvars.iv, !dbg !842
  %84 = load i32* %arrayidx231, align 4, !dbg !842, !tbaa !498
  %idxprom232 = sext i32 %84 to i64, !dbg !842
  %idxprom239 = sext i8 %71 to i64, !dbg !842
  %85 = load i32*** %msc, align 8, !dbg !842, !tbaa !477
  %arrayidx240 = getelementptr inbounds i32** %85, i64 %idxprom239, !dbg !842
  %86 = load i32** %arrayidx240, align 8, !dbg !842, !tbaa !477
  %arrayidx241 = getelementptr inbounds i32* %86, i64 %idxprom232, !dbg !842
  %87 = load i32* %arrayidx241, align 4, !dbg !842, !tbaa !498
  %cmp242 = icmp sgt i32 %87, 0, !dbg !842
  br i1 %cmp242, label %if.then244, label %if.end249, !dbg !842

if.then244:                                       ; preds = %if.else228
  %88 = load i8** %mline, align 8, !dbg !863, !tbaa !477
  %arrayidx247 = getelementptr inbounds i8* %88, i64 %indvars.iv, !dbg !863
  store i8 43, i8* %arrayidx247, align 1, !dbg !863, !tbaa !478
  br label %if.end249, !dbg !863

if.end249:                                        ; preds = %if.then192, %if.else228, %if.then244, %if.then214
  %89 = load i32** %pos, align 8, !dbg !864, !tbaa !477
  %arrayidx252 = getelementptr inbounds i32* %89, i64 %indvars.iv, !dbg !864
  %90 = load i32* %arrayidx252, align 4, !dbg !864, !tbaa !498
  %idxprom253 = sext i32 %90 to i64, !dbg !864
  %arrayidx254 = getelementptr inbounds i8* %dsq, i64 %idxprom253, !dbg !864
  %91 = load i8* %arrayidx254, align 1, !dbg !864, !tbaa !478
  %idxprom256 = sext i8 %91 to i64, !dbg !864
  %arrayidx257 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom256, !dbg !864
  %92 = load i8* %arrayidx257, align 1, !dbg !864, !tbaa !478
  %93 = load i8** %aseq, align 8, !dbg !864, !tbaa !477
  %arrayidx260 = getelementptr inbounds i8* %93, i64 %indvars.iv, !dbg !864
  store i8 %92, i8* %arrayidx260, align 1, !dbg !864, !tbaa !478
  br label %for.inc368, !dbg !865

sw.bb261:                                         ; preds = %for.body81
  %94 = load i32* %flags, align 4, !dbg !866, !tbaa !498
  %and263 = and i32 %94, 4, !dbg !866
  %tobool264 = icmp eq i32 %and263, 0, !dbg !866
  br i1 %tobool264, label %if.end275, label %if.then265, !dbg !866

if.then265:                                       ; preds = %sw.bb261
  %95 = load i32** %nodeidx150, align 8, !dbg !866, !tbaa !477
  %arrayidx268 = getelementptr inbounds i32* %95, i64 %indvars.iv, !dbg !866
  %96 = load i32* %arrayidx268, align 4, !dbg !866, !tbaa !498
  %idxprom269 = sext i32 %96 to i64, !dbg !866
  %97 = load i8** %rf, align 8, !dbg !866, !tbaa !477
  %arrayidx271 = getelementptr inbounds i8* %97, i64 %idxprom269, !dbg !866
  %98 = load i8* %arrayidx271, align 1, !dbg !866, !tbaa !478
  %99 = load i8** %rfline, align 8, !dbg !866, !tbaa !477
  %arrayidx274 = getelementptr inbounds i8* %99, i64 %indvars.iv, !dbg !866
  store i8 %98, i8* %arrayidx274, align 1, !dbg !866, !tbaa !478
  %.pre579 = load i32* %flags, align 4, !dbg !867, !tbaa !498
  br label %if.end275, !dbg !866

if.end275:                                        ; preds = %sw.bb261, %if.then265
  %100 = phi i32 [ %94, %sw.bb261 ], [ %.pre579, %if.then265 ]
  %and277 = and i32 %100, 8, !dbg !867
  %tobool278 = icmp eq i32 %and277, 0, !dbg !867
  br i1 %tobool278, label %if.end289, label %if.then279, !dbg !867

if.then279:                                       ; preds = %if.end275
  %101 = load i32** %nodeidx150, align 8, !dbg !867, !tbaa !477
  %arrayidx282 = getelementptr inbounds i32* %101, i64 %indvars.iv, !dbg !867
  %102 = load i32* %arrayidx282, align 4, !dbg !867, !tbaa !498
  %idxprom283 = sext i32 %102 to i64, !dbg !867
  %103 = load i8** %cs, align 8, !dbg !867, !tbaa !477
  %arrayidx285 = getelementptr inbounds i8* %103, i64 %idxprom283, !dbg !867
  %104 = load i8* %arrayidx285, align 1, !dbg !867, !tbaa !478
  %105 = load i8** %csline, align 8, !dbg !867, !tbaa !477
  %arrayidx288 = getelementptr inbounds i8* %105, i64 %indvars.iv, !dbg !867
  store i8 %104, i8* %arrayidx288, align 1, !dbg !867, !tbaa !478
  br label %if.end289, !dbg !867

if.end289:                                        ; preds = %if.end275, %if.then279
  %106 = load i32** %nodeidx150, align 8, !dbg !868, !tbaa !477
  %arrayidx292 = getelementptr inbounds i32* %106, i64 %indvars.iv, !dbg !868
  %107 = load i32* %arrayidx292, align 4, !dbg !868, !tbaa !498
  %idxprom293 = sext i32 %107 to i64, !dbg !868
  %108 = load float*** %mat, align 8, !dbg !868, !tbaa !477
  %arrayidx295 = getelementptr inbounds float** %108, i64 %idxprom293, !dbg !868
  %109 = load float** %arrayidx295, align 8, !dbg !868, !tbaa !477
  %110 = load i32* @Alphabet_size, align 4, !dbg !868, !tbaa !498
  %call296 = tail call i32 @FArgMax(float* %109, i32 %110) #7, !dbg !868
  tail call void @llvm.dbg.value(metadata !{i32 %call296}, i64 0, metadata !324), !dbg !868
  %idxprom297 = sext i32 %call296 to i64, !dbg !869
  %arrayidx298 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom297, !dbg !869
  %111 = load i8* %arrayidx298, align 1, !dbg !869, !tbaa !478
  %112 = load i8** %model, align 8, !dbg !869, !tbaa !477
  %arrayidx301 = getelementptr inbounds i8* %112, i64 %indvars.iv, !dbg !869
  store i8 %111, i8* %arrayidx301, align 1, !dbg !869, !tbaa !478
  %113 = load i32** %nodeidx150, align 8, !dbg !870, !tbaa !477
  %arrayidx305 = getelementptr inbounds i32* %113, i64 %indvars.iv, !dbg !870
  %114 = load i32* %arrayidx305, align 4, !dbg !870, !tbaa !498
  %idxprom306 = sext i32 %114 to i64, !dbg !870
  %115 = load float*** %mat, align 8, !dbg !870, !tbaa !477
  %arrayidx308 = getelementptr inbounds float** %115, i64 %idxprom306, !dbg !870
  %116 = load float** %arrayidx308, align 8, !dbg !870, !tbaa !477
  %arrayidx309 = getelementptr inbounds float* %116, i64 %idxprom297, !dbg !870
  %117 = load float* %arrayidx309, align 4, !dbg !870, !tbaa !556
  %cmp310 = fcmp olt float %117, %., !dbg !870
  br i1 %cmp310, label %if.then312, label %if.end325, !dbg !870

if.then312:                                       ; preds = %if.end289
  %118 = load i8** %model, align 8, !dbg !871, !tbaa !477
  %arrayidx316 = getelementptr inbounds i8* %118, i64 %indvars.iv, !dbg !871
  %119 = load i8* %arrayidx316, align 1, !dbg !871, !tbaa !478
  %idxprom318 = sext i8 %119 to i64, !dbg !871
  %call319 = tail call i32** @__ctype_tolower_loc() #9, !dbg !871
  %120 = load i32** %call319, align 8, !dbg !871, !tbaa !477
  %arrayidx320 = getelementptr inbounds i32* %120, i64 %idxprom318, !dbg !871
  %121 = load i32* %arrayidx320, align 4, !dbg !871, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{i32 %121}, i64 0, metadata !337), !dbg !871
  %conv321 = trunc i32 %121 to i8, !dbg !871
  store i8 %conv321, i8* %arrayidx316, align 1, !dbg !871, !tbaa !478
  br label %if.end325, !dbg !871

if.end325:                                        ; preds = %if.then312, %if.end289
  %122 = load i8** %aseq, align 8, !dbg !872, !tbaa !477
  %arrayidx328 = getelementptr inbounds i8* %122, i64 %indvars.iv, !dbg !872
  store i8 45, i8* %arrayidx328, align 1, !dbg !872, !tbaa !478
  br label %for.inc368, !dbg !873

sw.bb329:                                         ; preds = %for.body81
  %123 = load i8** %model, align 8, !dbg !874, !tbaa !477
  %arrayidx332 = getelementptr inbounds i8* %123, i64 %indvars.iv, !dbg !874
  store i8 46, i8* %arrayidx332, align 1, !dbg !874, !tbaa !478
  %124 = load i32** %nodeidx150, align 8, !dbg !845, !tbaa !477
  %arrayidx335 = getelementptr inbounds i32* %124, i64 %indvars.iv, !dbg !845
  %125 = load i32* %arrayidx335, align 4, !dbg !845, !tbaa !498
  %idxprom336 = sext i32 %125 to i64, !dbg !845
  %126 = load i32** %pos, align 8, !dbg !845, !tbaa !477
  %arrayidx339 = getelementptr inbounds i32* %126, i64 %indvars.iv, !dbg !845
  %127 = load i32* %arrayidx339, align 4, !dbg !845, !tbaa !498
  %idxprom340 = sext i32 %127 to i64, !dbg !845
  %arrayidx341 = getelementptr inbounds i8* %dsq, i64 %idxprom340, !dbg !845
  %128 = load i8* %arrayidx341, align 1, !dbg !845, !tbaa !478
  %idxprom343 = sext i8 %128 to i64, !dbg !845
  %129 = load i32*** %isc, align 8, !dbg !845, !tbaa !477
  %arrayidx344 = getelementptr inbounds i32** %129, i64 %idxprom343, !dbg !845
  %130 = load i32** %arrayidx344, align 8, !dbg !845, !tbaa !477
  %arrayidx345 = getelementptr inbounds i32* %130, i64 %idxprom336, !dbg !845
  %131 = load i32* %arrayidx345, align 4, !dbg !845, !tbaa !498
  %cmp346 = icmp sgt i32 %131, 0, !dbg !845
  br i1 %cmp346, label %if.then348, label %if.end352, !dbg !845

if.then348:                                       ; preds = %sw.bb329
  %132 = load i8** %mline, align 8, !dbg !875, !tbaa !477
  %arrayidx351 = getelementptr inbounds i8* %132, i64 %indvars.iv, !dbg !875
  store i8 43, i8* %arrayidx351, align 1, !dbg !875, !tbaa !478
  %.pre580 = load i32** %pos, align 8, !dbg !876, !tbaa !477
  %arrayidx356.phi.trans.insert = getelementptr inbounds i32* %.pre580, i64 %indvars.iv
  %.pre581 = load i32* %arrayidx356.phi.trans.insert, align 4, !dbg !876, !tbaa !498
  %idxprom357.phi.trans.insert = sext i32 %.pre581 to i64
  %arrayidx358.phi.trans.insert = getelementptr inbounds i8* %dsq, i64 %idxprom357.phi.trans.insert
  %.pre582 = load i8* %arrayidx358.phi.trans.insert, align 1, !dbg !876, !tbaa !478
  br label %if.end352, !dbg !875

if.end352:                                        ; preds = %if.then348, %sw.bb329
  %133 = phi i8 [ %.pre582, %if.then348 ], [ %128, %sw.bb329 ]
  %idxprom360 = sext i8 %133 to i64, !dbg !876
  %arrayidx361 = getelementptr inbounds [25 x i8]* @Alphabet, i64 0, i64 %idxprom360, !dbg !876
  %134 = load i8* %arrayidx361, align 1, !dbg !876, !tbaa !478
  %conv362 = sext i8 %134 to i32, !dbg !876
  %call363 = tail call i32 @tolower(i32 %conv362) #7, !dbg !876
  tail call void @llvm.dbg.value(metadata !{i32 %call363}, i64 0, metadata !339), !dbg !876
  %conv364 = trunc i32 %call363 to i8, !dbg !878
  %135 = load i8** %aseq, align 8, !dbg !878, !tbaa !477
  %arrayidx367 = getelementptr inbounds i8* %135, i64 %indvars.iv, !dbg !878
  store i8 %conv364, i8* %arrayidx367, align 1, !dbg !878, !tbaa !478
  br label %for.inc368, !dbg !879

sw.default:                                       ; preds = %for.body81
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([16 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !880
  br label %for.inc368, !dbg !881

for.inc368:                                       ; preds = %sw.bb, %sw.bb115, %sw.bb119, %if.end249, %if.end325, %if.end352, %sw.default, %if.then97, %sw.bb88
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !838
  %inc369 = add nsw i32 %tpos.2565, 1, !dbg !838
  tail call void @llvm.dbg.value(metadata !{i32 %inc369}, i64 0, metadata !323), !dbg !838
  %136 = load i32* %tlen, align 4, !dbg !838, !tbaa !498
  %137 = trunc i64 %indvars.iv.next to i32, !dbg !838
  %cmp79 = icmp slt i32 %137, %136, !dbg !838
  br i1 %cmp79, label %for.body81, label %for.end370, !dbg !838

for.end370:                                       ; preds = %for.inc368, %for.cond77.preheader
  %tpos.2.lcssa = phi i32 [ 0, %for.cond77.preheader ], [ %inc369, %for.inc368 ]
  %len = getelementptr inbounds %struct.fancyali_s* %call, i64 0, i32 5, !dbg !882
  store i32 %tpos.2.lcssa, i32* %len, align 4, !dbg !882, !tbaa !498
  %138 = load i32* %flags, align 4, !dbg !883, !tbaa !498
  %and372 = and i32 %138, 4, !dbg !883
  %tobool373 = icmp eq i32 %and372, 0, !dbg !883
  br i1 %tobool373, label %if.end378, label %if.then374, !dbg !883

if.then374:                                       ; preds = %for.end370
  %idxprom375 = sext i32 %tpos.2.lcssa to i64, !dbg !883
  %139 = load i8** %rfline, align 8, !dbg !883, !tbaa !477
  %arrayidx377 = getelementptr inbounds i8* %139, i64 %idxprom375, !dbg !883
  store i8 0, i8* %arrayidx377, align 1, !dbg !883, !tbaa !478
  %.pre577 = load i32* %flags, align 4, !dbg !884, !tbaa !498
  br label %if.end378, !dbg !883

if.end378:                                        ; preds = %for.end370, %if.then374
  %140 = phi i32 [ %138, %for.end370 ], [ %.pre577, %if.then374 ]
  %and380 = and i32 %140, 8, !dbg !884
  %tobool381 = icmp eq i32 %and380, 0, !dbg !884
  %idxprom387.pre = sext i32 %tpos.2.lcssa to i64, !dbg !885
  br i1 %tobool381, label %if.end386, label %if.then382, !dbg !884

if.then382:                                       ; preds = %if.end378
  %141 = load i8** %csline, align 8, !dbg !884, !tbaa !477
  %arrayidx385 = getelementptr inbounds i8* %141, i64 %idxprom387.pre, !dbg !884
  store i8 0, i8* %arrayidx385, align 1, !dbg !884, !tbaa !478
  br label %if.end386, !dbg !884

if.end386:                                        ; preds = %if.end378, %if.then382
  %142 = load i8** %model, align 8, !dbg !885, !tbaa !477
  %arrayidx389 = getelementptr inbounds i8* %142, i64 %idxprom387.pre, !dbg !885
  store i8 0, i8* %arrayidx389, align 1, !dbg !885, !tbaa !478
  %143 = load i8** %mline, align 8, !dbg !886, !tbaa !477
  %arrayidx392 = getelementptr inbounds i8* %143, i64 %idxprom387.pre, !dbg !886
  store i8 0, i8* %arrayidx392, align 1, !dbg !886, !tbaa !478
  %144 = load i8** %aseq, align 8, !dbg !887, !tbaa !477
  %arrayidx395 = getelementptr inbounds i8* %144, i64 %idxprom387.pre, !dbg !887
  store i8 0, i8* %arrayidx395, align 1, !dbg !887, !tbaa !478
  ret %struct.fancyali_s* %call, !dbg !888
}

; Function Attrs: optsize
declare %struct.fancyali_s* @AllocFancyAli() #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: optsize
declare i8* @Strdup(i8*) #2

; Function Attrs: nounwind optsize readnone
declare i32** @__ctype_tolower_loc() #4

; Function Attrs: optsize
declare i32 @FArgMax(float*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @PrintFancyAli(%struct._IO_FILE* nocapture %fp, %struct.fancyali_s* nocapture %ali) #0 {
entry:
  %buffer = alloca [51 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !398), !dbg !889
  call void @llvm.dbg.value(metadata !{%struct.fancyali_s* %ali}, i64 0, metadata !399), !dbg !889
  %0 = getelementptr inbounds [51 x i8]* %buffer, i64 0, i64 0, !dbg !890
  call void @llvm.lifetime.start(i64 51, i8* %0) #5, !dbg !890
  call void @llvm.dbg.declare(metadata !{[51 x i8]* %buffer}, metadata !400), !dbg !890
  %arrayidx = getelementptr inbounds [51 x i8]* %buffer, i64 0, i64 50, !dbg !891
  store i8 0, i8* %arrayidx, align 2, !dbg !891, !tbaa !478
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !405), !dbg !892
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !406), !dbg !893
  %len = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 5, !dbg !893
  %1 = load i32* %len, align 4, !dbg !893, !tbaa !498
  %cmp155 = icmp sgt i32 %1, 0, !dbg !893
  br i1 %cmp155, label %for.body.lr.ph, label %for.end104, !dbg !893

for.body.lr.ph:                                   ; preds = %entry
  %sqfrom = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 8, !dbg !892
  %2 = load i32* %sqfrom, align 4, !dbg !892, !tbaa !498
  %sub = add nsw i32 %2, -1, !dbg !892
  %aseq = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 4, !dbg !895
  %csline = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 1, !dbg !898
  %rfline = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 0, !dbg !899
  %model = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 2, !dbg !900
  %mline = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 3, !dbg !901
  %target = getelementptr inbounds %struct.fancyali_s* %ali, i64 0, i32 7, !dbg !902
  br label %for.body, !dbg !893

for.body:                                         ; preds = %for.inc102.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv161 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next162, %for.inc102.for.body_crit_edge ]
  %endi.0157 = phi i32 [ %sub, %for.body.lr.ph ], [ %endi.1.lcssa, %for.inc102.for.body_crit_edge ]
  %pos.0156 = phi i32 [ 0, %for.body.lr.ph ], [ %add103, %for.inc102.for.body_crit_edge ]
  %add = add nsw i32 %endi.0157, 1, !dbg !904
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !404), !dbg !904
  call void @llvm.dbg.value(metadata !{i32 %pos.0156}, i64 0, metadata !407), !dbg !895
  %3 = load i8** %aseq, align 8, !dbg !895, !tbaa !477
  %arrayidx2149 = getelementptr inbounds i8* %3, i64 %indvars.iv161, !dbg !895
  %4 = load i8* %arrayidx2149, align 1, !dbg !895, !tbaa !478
  %cmp3150 = icmp eq i8 %4, 0, !dbg !895
  br i1 %cmp3150, label %for.end, label %for.body8, !dbg !895

for.body8:                                        ; preds = %for.body, %for.inc
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %for.inc ], [ %indvars.iv161, %for.body ], !dbg !893
  %5 = phi i8 [ %6, %for.inc ], [ %4, %for.body ]
  %endi.1153 = phi i32 [ %endi.2, %for.inc ], [ %endi.0157, %for.body ]
  %i.0152 = phi i32 [ %inc42, %for.inc ], [ %pos.0156, %for.body ]
  switch i8 %5, label %if.then [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ], !dbg !905

if.then:                                          ; preds = %for.body8
  %inc = add nsw i32 %endi.1153, 1, !dbg !905
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !405), !dbg !905
  br label %for.inc, !dbg !905

for.inc:                                          ; preds = %for.body8, %for.body8, %for.body8, %for.body8, %for.body8, %if.then
  %endi.2 = phi i32 [ %endi.1153, %for.body8 ], [ %inc, %if.then ], [ %endi.1153, %for.body8 ], [ %endi.1153, %for.body8 ], [ %endi.1153, %for.body8 ], [ %endi.1153, %for.body8 ]
  %inc42 = add nsw i32 %i.0152, 1, !dbg !895
  call void @llvm.dbg.value(metadata !{i32 %inc42}, i64 0, metadata !407), !dbg !895
  %idxprom = sext i32 %inc42 to i64, !dbg !895
  %arrayidx2 = getelementptr inbounds i8* %3, i64 %idxprom, !dbg !895
  %6 = load i8* %arrayidx2, align 1, !dbg !895, !tbaa !478
  %cmp3 = icmp ne i8 %6, 0, !dbg !895
  %7 = add nsw i64 %indvars.iv161, 49, !dbg !895
  %8 = trunc i64 %indvars.iv158 to i32, !dbg !895
  %9 = trunc i64 %7 to i32, !dbg !895
  %cmp6 = icmp slt i32 %8, %9, !dbg !895
  %or.cond = and i1 %cmp3, %cmp6, !dbg !895
  %indvars.iv.next159 = add i64 %indvars.iv158, 1, !dbg !895
  br i1 %or.cond, label %for.body8, label %for.end, !dbg !895

for.end:                                          ; preds = %for.inc, %for.body
  %endi.1.lcssa = phi i32 [ %endi.0157, %for.body ], [ %endi.2, %for.inc ]
  %10 = load i8** %csline, align 8, !dbg !898, !tbaa !477
  %cmp43 = icmp eq i8* %10, null, !dbg !898
  br i1 %cmp43, label %if.end49, label %if.then45, !dbg !898

if.then45:                                        ; preds = %for.end
  %add.ptr = getelementptr inbounds i8* %10, i64 %indvars.iv161, !dbg !906
  %call = call i8* @strncpy(i8* %0, i8* %add.ptr, i64 50) #7, !dbg !906
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0), i8* %0) #7, !dbg !908
  br label %if.end49, !dbg !909

if.end49:                                         ; preds = %for.end, %if.then45
  %11 = load i8** %rfline, align 8, !dbg !899, !tbaa !477
  %cmp50 = icmp eq i8* %11, null, !dbg !899
  br i1 %cmp50, label %if.end60, label %if.then52, !dbg !899

if.then52:                                        ; preds = %if.end49
  %add.ptr56 = getelementptr inbounds i8* %11, i64 %indvars.iv161, !dbg !910
  %call57 = call i8* @strncpy(i8* %0, i8* %add.ptr56, i64 50) #7, !dbg !910
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* %0) #7, !dbg !912
  br label %if.end60, !dbg !913

if.end60:                                         ; preds = %if.end49, %if.then52
  %12 = load i8** %model, align 8, !dbg !900, !tbaa !477
  %cmp61 = icmp eq i8* %12, null, !dbg !900
  br i1 %cmp61, label %if.end71, label %if.then63, !dbg !900

if.then63:                                        ; preds = %if.end60
  %add.ptr67 = getelementptr inbounds i8* %12, i64 %indvars.iv161, !dbg !914
  %call68 = call i8* @strncpy(i8* %0, i8* %add.ptr67, i64 50) #7, !dbg !914
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0), i8* %0) #7, !dbg !916
  br label %if.end71, !dbg !917

if.end71:                                         ; preds = %if.end60, %if.then63
  %13 = load i8** %mline, align 8, !dbg !901, !tbaa !477
  %cmp72 = icmp eq i8* %13, null, !dbg !901
  br i1 %cmp72, label %if.end82, label %if.then74, !dbg !901

if.then74:                                        ; preds = %if.end71
  %add.ptr78 = getelementptr inbounds i8* %13, i64 %indvars.iv161, !dbg !918
  %call79 = call i8* @strncpy(i8* %0, i8* %add.ptr78, i64 50) #7, !dbg !918
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0), i8* %0) #7, !dbg !920
  br label %if.end82, !dbg !921

if.end82:                                         ; preds = %if.end71, %if.then74
  %14 = load i8** %aseq, align 8, !dbg !922, !tbaa !477
  %cmp84 = icmp eq i8* %14, null, !dbg !922
  br i1 %cmp84, label %for.inc102, label %if.then86, !dbg !922

if.then86:                                        ; preds = %if.end82
  %add.ptr90 = getelementptr inbounds i8* %14, i64 %indvars.iv161, !dbg !923
  %call91 = call i8* @strncpy(i8* %0, i8* %add.ptr90, i64 50) #7, !dbg !923
  %cmp92 = icmp slt i32 %endi.1.lcssa, %add, !dbg !924
  %15 = load i8** %target, align 8, !dbg !902, !tbaa !477
  br i1 %cmp92, label %if.else, label %if.then94, !dbg !924

if.then94:                                        ; preds = %if.then86
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str13, i64 0, i64 0), i8* %15, i32 %add, i8* %0, i32 %endi.1.lcssa) #7, !dbg !902
  br label %for.inc102, !dbg !902

if.else:                                          ; preds = %if.then86
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str14, i64 0, i64 0), i8* %15, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0), i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #7, !dbg !925
  br label %for.inc102

for.inc102:                                       ; preds = %if.end82, %if.else, %if.then94
  %indvars.iv.next162 = add i64 %indvars.iv161, 50, !dbg !893
  call void @llvm.dbg.value(metadata !{i32 %add103}, i64 0, metadata !406), !dbg !893
  %16 = load i32* %len, align 4, !dbg !893, !tbaa !498
  %17 = trunc i64 %indvars.iv.next162 to i32, !dbg !893
  %cmp = icmp slt i32 %17, %16, !dbg !893
  br i1 %cmp, label %for.inc102.for.body_crit_edge, label %for.end104, !dbg !893

for.inc102.for.body_crit_edge:                    ; preds = %for.inc102
  %add103 = add nsw i32 %pos.0156, 50, !dbg !893
  br label %for.body, !dbg !893

for.end104:                                       ; preds = %for.inc102, %entry
  %call105 = call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !926
  call void @llvm.lifetime.end(i64 51, i8* %0) #5, !dbg !927
  ret void, !dbg !928
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define void @TraceDecompose(%struct.p7trace_s* nocapture %otr, %struct.p7trace_s*** nocapture %ret_tr, i32* nocapture %ret_ntr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %otr}, i64 0, metadata !413), !dbg !929
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s*** %ret_tr}, i64 0, metadata !414), !dbg !929
  tail call void @llvm.dbg.value(metadata !{i32* %ret_ntr}, i64 0, metadata !415), !dbg !929
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !417), !dbg !930
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !418), !dbg !930
  %tlen = getelementptr inbounds %struct.p7trace_s* %otr, i64 0, i32 0, !dbg !930
  %0 = load i32* %tlen, align 4, !dbg !930, !tbaa !498
  %cmp218 = icmp sgt i32 %0, 0, !dbg !930
  br i1 %cmp218, label %for.body.lr.ph, label %if.then6, !dbg !930

for.body.lr.ph:                                   ; preds = %entry
  %statetype = getelementptr inbounds %struct.p7trace_s* %otr, i64 0, i32 1, !dbg !932
  %1 = load i8** %statetype, align 8, !dbg !932, !tbaa !477
  br label %for.body, !dbg !930

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv226 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next227, %for.body ]
  %ntr.0219 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.ntr.0, %for.body ]
  %arrayidx = getelementptr inbounds i8* %1, i64 %indvars.iv226, !dbg !932
  %2 = load i8* %arrayidx, align 1, !dbg !932, !tbaa !478
  %cmp1 = icmp eq i8 %2, 6, !dbg !932
  %inc = zext i1 %cmp1 to i32, !dbg !932
  %inc.ntr.0 = add nsw i32 %inc, %ntr.0219, !dbg !932
  %indvars.iv.next227 = add i64 %indvars.iv226, 1, !dbg !930
  %3 = trunc i64 %indvars.iv.next227 to i32, !dbg !930
  %cmp = icmp slt i32 %3, %0, !dbg !930
  br i1 %cmp, label %for.body, label %for.end, !dbg !930

for.end:                                          ; preds = %for.body
  %cmp4 = icmp eq i32 %inc.ntr.0, 0, !dbg !933
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !933

if.then6:                                         ; preds = %entry, %for.end
  store i32 0, i32* %ret_ntr, align 4, !dbg !934, !tbaa !498
  store %struct.p7trace_s** null, %struct.p7trace_s*** %ret_tr, align 8, !dbg !936, !tbaa !477
  br label %return, !dbg !937

if.end7:                                          ; preds = %for.end
  %conv8 = sext i32 %inc.ntr.0 to i64, !dbg !938
  %mul = shl nsw i64 %conv8, 3, !dbg !938
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 893, i64 %mul) #7, !dbg !938
  %4 = bitcast i8* %call to %struct.p7trace_s**, !dbg !938
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %4}, i64 0, metadata !416), !dbg !938
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !420), !dbg !939
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !418), !dbg !939
  %5 = load i32* %tlen, align 4, !dbg !939, !tbaa !498
  %cmp11215 = icmp sgt i32 %5, 0, !dbg !939
  br i1 %cmp11215, label %for.body13.lr.ph, label %for.end137, !dbg !939

for.body13.lr.ph:                                 ; preds = %if.end7
  %statetype15 = getelementptr inbounds %struct.p7trace_s* %otr, i64 0, i32 1, !dbg !941
  %nodeidx76 = getelementptr inbounds %struct.p7trace_s* %otr, i64 0, i32 2, !dbg !942
  %pos84 = getelementptr inbounds %struct.p7trace_s* %otr, i64 0, i32 3, !dbg !945
  br label %for.body13, !dbg !939

for.body13:                                       ; preds = %for.inc135, %for.body13.lr.ph
  %6 = phi i32 [ %5, %for.body13.lr.ph ], [ %41, %for.inc135 ]
  %idx.0217 = phi i32 [ 0, %for.body13.lr.ph ], [ %idx.1, %for.inc135 ]
  %i.1216 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc136, %for.inc135 ]
  %idxprom14 = sext i32 %i.1216 to i64, !dbg !941
  %7 = load i8** %statetype15, align 8, !dbg !941, !tbaa !477
  %arrayidx16 = getelementptr inbounds i8* %7, i64 %idxprom14, !dbg !941
  %8 = load i8* %arrayidx16, align 1, !dbg !941, !tbaa !478
  %cmp18 = icmp eq i8 %8, 6, !dbg !941
  br i1 %cmp18, label %for.cond21, label %for.inc135, !dbg !941

for.cond21:                                       ; preds = %for.body13, %for.body25
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body25 ], [ %idxprom14, %for.body13 ]
  %j.0.in = phi i32 [ %j.0, %for.body25 ], [ %i.1216, %for.body13 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !946
  %j.0 = add nsw i32 %j.0.in, 1, !dbg !948
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !948
  %cmp23 = icmp slt i32 %9, %6, !dbg !948
  br i1 %cmp23, label %for.body25, label %for.end36, !dbg !948

for.body25:                                       ; preds = %for.cond21
  %arrayidx28 = getelementptr inbounds i8* %7, i64 %indvars.iv.next, !dbg !946
  %10 = load i8* %arrayidx28, align 1, !dbg !946, !tbaa !478
  %cmp30 = icmp eq i8 %10, 7, !dbg !946
  br i1 %cmp30, label %for.end36, label %for.cond21, !dbg !946

for.end36:                                        ; preds = %for.body25, %for.cond21
  %sub = sub nsw i32 %j.0, %i.1216, !dbg !949
  %add37 = add nsw i32 %sub, 5, !dbg !949
  %idxprom38 = sext i32 %idx.0217 to i64, !dbg !949
  %arrayidx39 = getelementptr inbounds %struct.p7trace_s** %4, i64 %idxprom38, !dbg !949
  tail call void @P7AllocTrace(i32 %add37, %struct.p7trace_s** %arrayidx39) #8, !dbg !949
  %11 = load %struct.p7trace_s** %arrayidx39, align 8, !dbg !950, !tbaa !477
  %tlen44 = getelementptr inbounds %struct.p7trace_s* %11, i64 0, i32 0, !dbg !950
  store i32 %add37, i32* %tlen44, align 4, !dbg !950, !tbaa !498
  %statetype47 = getelementptr inbounds %struct.p7trace_s* %11, i64 0, i32 1, !dbg !951
  %12 = load i8** %statetype47, align 8, !dbg !951, !tbaa !477
  store i8 4, i8* %12, align 1, !dbg !951, !tbaa !478
  %13 = load %struct.p7trace_s** %arrayidx39, align 8, !dbg !952, !tbaa !477
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %13, i64 0, i32 2, !dbg !952
  %14 = load i32** %nodeidx, align 8, !dbg !952, !tbaa !477
  store i32 0, i32* %14, align 4, !dbg !952, !tbaa !498
  %pos = getelementptr inbounds %struct.p7trace_s* %13, i64 0, i32 3, !dbg !953
  %15 = load i32** %pos, align 8, !dbg !953, !tbaa !477
  store i32 0, i32* %15, align 4, !dbg !953, !tbaa !498
  %statetype57 = getelementptr inbounds %struct.p7trace_s* %13, i64 0, i32 1, !dbg !954
  %16 = load i8** %statetype57, align 8, !dbg !954, !tbaa !477
  %arrayidx58 = getelementptr inbounds i8* %16, i64 1, !dbg !954
  store i8 5, i8* %arrayidx58, align 1, !dbg !954, !tbaa !478
  %17 = load %struct.p7trace_s** %arrayidx39, align 8, !dbg !955, !tbaa !477
  %nodeidx61 = getelementptr inbounds %struct.p7trace_s* %17, i64 0, i32 2, !dbg !955
  %18 = load i32** %nodeidx61, align 8, !dbg !955, !tbaa !477
  %arrayidx62 = getelementptr inbounds i32* %18, i64 1, !dbg !955
  store i32 0, i32* %arrayidx62, align 4, !dbg !955, !tbaa !498
  %pos65 = getelementptr inbounds %struct.p7trace_s* %17, i64 0, i32 3, !dbg !956
  %19 = load i32** %pos65, align 8, !dbg !956, !tbaa !477
  %arrayidx66 = getelementptr inbounds i32* %19, i64 1, !dbg !956
  store i32 0, i32* %arrayidx66, align 4, !dbg !956, !tbaa !498
  tail call void @llvm.dbg.value(metadata !957, i64 0, metadata !419), !dbg !958
  %.pre228 = load i8** %statetype15, align 8, !dbg !959, !tbaa !477
  br label %while.body, !dbg !960

while.body:                                       ; preds = %for.end36, %if.end98
  %20 = phi %struct.p7trace_s* [ %17, %for.end36 ], [ %26, %if.end98 ], !dbg !959
  %21 = phi i8* [ %.pre228, %for.end36 ], [ %31, %if.end98 ], !dbg !959
  %indvars.iv224 = phi i64 [ 2, %for.end36 ], [ %indvars.iv.next225, %if.end98 ], !dbg !961
  %indvars.iv222 = phi i64 [ %idxprom14, %for.end36 ], [ %indvars.iv.next223, %if.end98 ]
  %i.2 = phi i32 [ %i.1216, %for.end36 ], [ %inc99, %if.end98 ]
  %j.1 = phi i32 [ 2, %for.end36 ], [ %inc100, %if.end98 ]
  %arrayidx69 = getelementptr inbounds i8* %21, i64 %indvars.iv222, !dbg !959
  %22 = load i8* %arrayidx69, align 1, !dbg !959, !tbaa !478
  %statetype73 = getelementptr inbounds %struct.p7trace_s* %20, i64 0, i32 1, !dbg !959
  %23 = load i8** %statetype73, align 8, !dbg !959, !tbaa !477
  %arrayidx74 = getelementptr inbounds i8* %23, i64 %indvars.iv224, !dbg !959
  store i8 %22, i8* %arrayidx74, align 1, !dbg !959, !tbaa !478
  %24 = load i32** %nodeidx76, align 8, !dbg !942, !tbaa !477
  %arrayidx77 = getelementptr inbounds i32* %24, i64 %indvars.iv222, !dbg !942
  %25 = load i32* %arrayidx77, align 4, !dbg !942, !tbaa !498
  %26 = load %struct.p7trace_s** %arrayidx39, align 8, !dbg !942, !tbaa !477
  %nodeidx81 = getelementptr inbounds %struct.p7trace_s* %26, i64 0, i32 2, !dbg !942
  %27 = load i32** %nodeidx81, align 8, !dbg !942, !tbaa !477
  %arrayidx82 = getelementptr inbounds i32* %27, i64 %indvars.iv224, !dbg !942
  store i32 %25, i32* %arrayidx82, align 4, !dbg !942, !tbaa !498
  %28 = load i32** %pos84, align 8, !dbg !945, !tbaa !477
  %arrayidx85 = getelementptr inbounds i32* %28, i64 %indvars.iv222, !dbg !945
  %29 = load i32* %arrayidx85, align 4, !dbg !945, !tbaa !498
  %pos89 = getelementptr inbounds %struct.p7trace_s* %26, i64 0, i32 3, !dbg !945
  %30 = load i32** %pos89, align 8, !dbg !945, !tbaa !477
  %arrayidx90 = getelementptr inbounds i32* %30, i64 %indvars.iv224, !dbg !945
  store i32 %29, i32* %arrayidx90, align 4, !dbg !945, !tbaa !498
  %31 = load i8** %statetype15, align 8, !dbg !962, !tbaa !477
  %arrayidx93 = getelementptr inbounds i8* %31, i64 %indvars.iv222, !dbg !962
  %32 = load i8* %arrayidx93, align 1, !dbg !962, !tbaa !478
  %cmp95 = icmp eq i8 %32, 7, !dbg !962
  br i1 %cmp95, label %while.end, label %if.end98, !dbg !962

if.end98:                                         ; preds = %while.body
  %indvars.iv.next223 = add i64 %indvars.iv222, 1, !dbg !961
  %inc99 = add nsw i32 %i.2, 1, !dbg !963
  tail call void @llvm.dbg.value(metadata !{i32 %inc99}, i64 0, metadata !418), !dbg !963
  %indvars.iv.next225 = add i64 %indvars.iv224, 1, !dbg !961
  %inc100 = add nsw i32 %j.1, 1, !dbg !963
  tail call void @llvm.dbg.value(metadata !{i32 %inc100}, i64 0, metadata !419), !dbg !963
  br label %while.body, !dbg !961

while.end:                                        ; preds = %while.body
  %inc101 = add nsw i32 %j.1, 1, !dbg !964
  tail call void @llvm.dbg.value(metadata !{i32 %inc101}, i64 0, metadata !419), !dbg !964
  %idxprom102 = sext i32 %inc101 to i64, !dbg !965
  %statetype105 = getelementptr inbounds %struct.p7trace_s* %26, i64 0, i32 1, !dbg !965
  %33 = load i8** %statetype105, align 8, !dbg !965, !tbaa !477
  %arrayidx106 = getelementptr inbounds i8* %33, i64 %idxprom102, !dbg !965
  store i8 8, i8* %arrayidx106, align 1, !dbg !965, !tbaa !478
  %34 = load %struct.p7trace_s** %arrayidx39, align 8, !dbg !966, !tbaa !477
  %nodeidx110 = getelementptr inbounds %struct.p7trace_s* %34, i64 0, i32 2, !dbg !966
  %35 = load i32** %nodeidx110, align 8, !dbg !966, !tbaa !477
  %arrayidx111 = getelementptr inbounds i32* %35, i64 %idxprom102, !dbg !966
  store i32 0, i32* %arrayidx111, align 4, !dbg !966, !tbaa !498
  %pos115 = getelementptr inbounds %struct.p7trace_s* %34, i64 0, i32 3, !dbg !967
  %36 = load i32** %pos115, align 8, !dbg !967, !tbaa !477
  %arrayidx116 = getelementptr inbounds i32* %36, i64 %idxprom102, !dbg !967
  store i32 0, i32* %arrayidx116, align 4, !dbg !967, !tbaa !498
  %inc117 = add nsw i32 %j.1, 2, !dbg !968
  tail call void @llvm.dbg.value(metadata !{i32 %inc117}, i64 0, metadata !419), !dbg !968
  %idxprom118 = sext i32 %inc117 to i64, !dbg !969
  %statetype121 = getelementptr inbounds %struct.p7trace_s* %34, i64 0, i32 1, !dbg !969
  %37 = load i8** %statetype121, align 8, !dbg !969, !tbaa !477
  %arrayidx122 = getelementptr inbounds i8* %37, i64 %idxprom118, !dbg !969
  store i8 9, i8* %arrayidx122, align 1, !dbg !969, !tbaa !478
  %38 = load %struct.p7trace_s** %arrayidx39, align 8, !dbg !970, !tbaa !477
  %nodeidx126 = getelementptr inbounds %struct.p7trace_s* %38, i64 0, i32 2, !dbg !970
  %39 = load i32** %nodeidx126, align 8, !dbg !970, !tbaa !477
  %arrayidx127 = getelementptr inbounds i32* %39, i64 %idxprom118, !dbg !970
  store i32 0, i32* %arrayidx127, align 4, !dbg !970, !tbaa !498
  %pos131 = getelementptr inbounds %struct.p7trace_s* %38, i64 0, i32 3, !dbg !971
  %40 = load i32** %pos131, align 8, !dbg !971, !tbaa !477
  %arrayidx132 = getelementptr inbounds i32* %40, i64 %idxprom118, !dbg !971
  store i32 0, i32* %arrayidx132, align 4, !dbg !971, !tbaa !498
  %inc133 = add nsw i32 %idx.0217, 1, !dbg !972
  tail call void @llvm.dbg.value(metadata !{i32 %inc133}, i64 0, metadata !420), !dbg !972
  %.pre = load i32* %tlen, align 4, !dbg !939, !tbaa !498
  br label %for.inc135, !dbg !973

for.inc135:                                       ; preds = %for.body13, %while.end
  %41 = phi i32 [ %.pre, %while.end ], [ %6, %for.body13 ], !dbg !939
  %i.3 = phi i32 [ %i.2, %while.end ], [ %i.1216, %for.body13 ]
  %idx.1 = phi i32 [ %inc133, %while.end ], [ %idx.0217, %for.body13 ]
  %inc136 = add nsw i32 %i.3, 1, !dbg !939
  tail call void @llvm.dbg.value(metadata !{i32 %inc136}, i64 0, metadata !418), !dbg !939
  %cmp11 = icmp slt i32 %inc136, %41, !dbg !939
  br i1 %cmp11, label %for.body13, label %for.end137, !dbg !939

for.end137:                                       ; preds = %for.inc135, %if.end7
  store %struct.p7trace_s** %4, %struct.p7trace_s*** %ret_tr, align 8, !dbg !974, !tbaa !477
  store i32 %inc.ntr.0, i32* %ret_ntr, align 4, !dbg !975, !tbaa !498
  br label %return, !dbg !976

return:                                           ; preds = %for.end137, %if.then6
  ret void, !dbg !976
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @TraceDomainNumber(%struct.p7trace_s* nocapture %tr) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %tr}, i64 0, metadata !425), !dbg !977
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !427), !dbg !978
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !426), !dbg !979
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0, !dbg !979
  %0 = load i32* %tlen, align 4, !dbg !979, !tbaa !498
  %cmp8 = icmp sgt i32 %0, 0, !dbg !979
  br i1 %cmp8, label %for.body.lr.ph, label %for.end, !dbg !979

for.body.lr.ph:                                   ; preds = %entry
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1, !dbg !981
  %1 = load i8** %statetype, align 8, !dbg !981, !tbaa !477
  br label %for.body, !dbg !979

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %ndom.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.ndom.0, %for.body ]
  %arrayidx = getelementptr inbounds i8* %1, i64 %indvars.iv, !dbg !981
  %2 = load i8* %arrayidx, align 1, !dbg !981, !tbaa !478
  %cmp1 = icmp eq i8 %2, 6, !dbg !981
  %inc = zext i1 %cmp1 to i32, !dbg !981
  %inc.ndom.0 = add nsw i32 %inc, %ndom.010, !dbg !981
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !979
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !979
  %cmp = icmp slt i32 %3, %0, !dbg !979
  br i1 %cmp, label %for.body, label %for.end, !dbg !979

for.end:                                          ; preds = %for.body, %entry
  %ndom.0.lcssa = phi i32 [ 0, %entry ], [ %inc.ndom.0, %for.body ]
  ret i32 %ndom.0.lcssa, !dbg !982
}

; Function Attrs: nounwind optsize uwtable
define void @TraceSimpleBounds(%struct.p7trace_s* nocapture %tr, i32* nocapture %ret_i1, i32* nocapture %ret_i2, i32* nocapture %ret_k1, i32* nocapture %ret_k2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %tr}, i64 0, metadata !432), !dbg !983
  tail call void @llvm.dbg.value(metadata !{i32* %ret_i1}, i64 0, metadata !433), !dbg !983
  tail call void @llvm.dbg.value(metadata !{i32* %ret_i2}, i64 0, metadata !434), !dbg !983
  tail call void @llvm.dbg.value(metadata !{i32* %ret_k1}, i64 0, metadata !435), !dbg !984
  tail call void @llvm.dbg.value(metadata !{i32* %ret_k2}, i64 0, metadata !436), !dbg !984
  tail call void @llvm.dbg.value(metadata !985, i64 0, metadata !440), !dbg !986
  tail call void @llvm.dbg.value(metadata !985, i64 0, metadata !438), !dbg !986
  tail call void @llvm.dbg.value(metadata !985, i64 0, metadata !439), !dbg !986
  tail call void @llvm.dbg.value(metadata !985, i64 0, metadata !437), !dbg !986
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !441), !dbg !987
  %tlen = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 0, !dbg !987
  %0 = load i32* %tlen, align 4, !dbg !987, !tbaa !498
  %cmp145 = icmp sgt i32 %0, 0, !dbg !987
  %statetype = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 1, !dbg !989
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 2, !dbg !991
  br i1 %cmp145, label %for.body.lr.ph, label %if.then31, !dbg !987

for.body.lr.ph:                                   ; preds = %entry
  %1 = load i8** %statetype, align 8, !dbg !992, !tbaa !477
  br label %for.body, !dbg !987

for.cond:                                         ; preds = %if.end.thread, %if.end
  %k1.1161 = phi i32 [ -1, %if.end.thread ], [ %k1.1, %if.end ]
  %indvars.iv.next155162 = add i64 %indvars.iv154, 1, !dbg !987
  %inc = add nsw i32 %tpos.0147, 1, !dbg !987
  %2 = trunc i64 %indvars.iv.next155162 to i32, !dbg !987
  %cmp = icmp slt i32 %2, %0, !dbg !987
  br i1 %cmp, label %for.body, label %if.then31, !dbg !987

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv154 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next155162, %for.cond ]
  %tpos.0147 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %k1.0146 = phi i32 [ -1, %for.body.lr.ph ], [ %k1.1161, %for.cond ]
  %cmp1 = icmp eq i32 %k1.0146, -1, !dbg !989
  %arrayidx = getelementptr inbounds i8* %1, i64 %indvars.iv154, !dbg !989
  %3 = load i8* %arrayidx, align 1, !dbg !989, !tbaa !478
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !989

land.lhs.true:                                    ; preds = %for.body
  %.off = add i8 %3, -1, !dbg !989
  %switch = icmp ult i8 %.off, 2, !dbg !989
  br i1 %switch, label %if.then, label %if.end.thread, !dbg !989

if.end.thread:                                    ; preds = %land.lhs.true
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !441), !dbg !987
  br label %for.cond, !dbg !992

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32** %nodeidx, align 8, !dbg !991, !tbaa !477
  %arrayidx11 = getelementptr inbounds i32* %4, i64 %indvars.iv154, !dbg !991
  %5 = load i32* %arrayidx11, align 4, !dbg !991, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !439), !dbg !991
  br label %if.end, !dbg !991

if.end:                                           ; preds = %for.body, %if.then
  %k1.1 = phi i32 [ %5, %if.then ], [ %k1.0146, %for.body ]
  %cmp16 = icmp eq i8 %3, 1, !dbg !992
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !441), !dbg !987
  br i1 %cmp16, label %for.end, label %for.cond, !dbg !992

for.end:                                          ; preds = %if.end
  %pos = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3, !dbg !993
  %6 = load i32** %pos, align 8, !dbg !993, !tbaa !477
  %arrayidx20 = getelementptr inbounds i32* %6, i64 %indvars.iv154, !dbg !993
  %7 = load i32* %arrayidx20, align 4, !dbg !993, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !437), !dbg !993
  %cmp23 = icmp eq i32 %tpos.0147, %0, !dbg !995
  %cmp26 = icmp eq i32 %7, -1, !dbg !995
  %or.cond = or i1 %cmp23, %cmp26, !dbg !995
  %cmp29 = icmp eq i32 %k1.1, -1, !dbg !995
  %or.cond115 = or i1 %or.cond, %cmp29, !dbg !995
  br i1 %or.cond115, label %if.then31, label %if.end32, !dbg !995

if.then31:                                        ; preds = %entry, %for.cond, %for.end
  %k1.2128 = phi i32 [ %k1.1, %for.end ], [ %k1.1161, %for.cond ], [ -1, %entry ]
  %i1.0126 = phi i32 [ %7, %for.end ], [ -1, %for.cond ], [ -1, %entry ]
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([56 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !996
  %.pre = load i32* %tlen, align 4, !dbg !997, !tbaa !498
  br label %if.end32, !dbg !996

if.end32:                                         ; preds = %for.end, %if.then31
  %8 = phi i32 [ %0, %for.end ], [ %.pre, %if.then31 ]
  %k1.2127 = phi i32 [ %k1.1, %for.end ], [ %k1.2128, %if.then31 ]
  %i1.0125 = phi i32 [ %7, %for.end ], [ %i1.0126, %if.then31 ]
  %9 = sext i32 %8 to i64
  br label %for.cond34, !dbg !997

for.cond34:                                       ; preds = %land.lhs.true40, %if.end58, %if.end32
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end58 ], [ %9, %if.end32 ], [ %indvars.iv.next, %land.lhs.true40 ]
  %k2.0 = phi i32 [ %k2.1, %if.end58 ], [ -1, %if.end32 ], [ -1, %land.lhs.true40 ]
  %tpos.1.in = phi i32 [ %tpos.1, %if.end58 ], [ %8, %if.end32 ], [ %tpos.1, %land.lhs.true40 ]
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !999
  %tpos.1 = add nsw i32 %tpos.1.in, -1, !dbg !997
  %10 = trunc i64 %indvars.iv to i32, !dbg !997
  %cmp35 = icmp sgt i32 %10, 0, !dbg !997
  br i1 %cmp35, label %for.body37, label %if.then81, !dbg !997

for.body37:                                       ; preds = %for.cond34
  %cmp38 = icmp eq i32 %k2.0, -1, !dbg !1001
  %11 = load i8** %statetype, align 8, !dbg !1001, !tbaa !477
  %arrayidx43 = getelementptr inbounds i8* %11, i64 %indvars.iv.next, !dbg !1001
  %12 = load i8* %arrayidx43, align 1, !dbg !1001, !tbaa !478
  br i1 %cmp38, label %land.lhs.true40, label %if.end58, !dbg !1001

land.lhs.true40:                                  ; preds = %for.body37
  %.off118 = add i8 %12, -1, !dbg !1001
  %switch119 = icmp ult i8 %.off118, 2, !dbg !1001
  br i1 %switch119, label %if.then54, label %for.cond34, !dbg !1001

if.then54:                                        ; preds = %land.lhs.true40
  %13 = load i32** %nodeidx, align 8, !dbg !1002, !tbaa !477
  %arrayidx57 = getelementptr inbounds i32* %13, i64 %indvars.iv.next, !dbg !1002
  %14 = load i32* %arrayidx57, align 4, !dbg !1002, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !440), !dbg !1002
  br label %if.end58, !dbg !1002

if.end58:                                         ; preds = %for.body37, %if.then54
  %k2.1 = phi i32 [ %14, %if.then54 ], [ %k2.0, %for.body37 ]
  %cmp63 = icmp eq i8 %12, 1, !dbg !999
  br i1 %cmp63, label %for.end71, label %for.cond34, !dbg !999

for.end71:                                        ; preds = %if.end58
  %pos67 = getelementptr inbounds %struct.p7trace_s* %tr, i64 0, i32 3, !dbg !1003
  %15 = load i32** %pos67, align 8, !dbg !1003, !tbaa !477
  %arrayidx68 = getelementptr inbounds i32* %15, i64 %indvars.iv.next, !dbg !1003
  %16 = load i32* %arrayidx68, align 4, !dbg !1003, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !438), !dbg !1003
  %cmp73 = icmp eq i32 %tpos.1, %8, !dbg !1005
  %cmp76 = icmp eq i32 %16, -1, !dbg !1005
  %or.cond116 = or i1 %cmp73, %cmp76, !dbg !1005
  %cmp79 = icmp eq i32 %k2.1, -1, !dbg !1005
  %or.cond117 = or i1 %or.cond116, %cmp79, !dbg !1005
  br i1 %or.cond117, label %if.then81, label %if.end82, !dbg !1005

if.then81:                                        ; preds = %for.cond34, %for.end71
  %k2.2137 = phi i32 [ %k2.1, %for.end71 ], [ %k2.0, %for.cond34 ]
  %i2.0135 = phi i32 [ %16, %for.end71 ], [ -1, %for.cond34 ]
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([56 x i8]* @.str16, i64 0, i64 0)) #7, !dbg !1006
  br label %if.end82, !dbg !1006

if.end82:                                         ; preds = %for.end71, %if.then81
  %k2.2136 = phi i32 [ %k2.1, %for.end71 ], [ %k2.2137, %if.then81 ]
  %i2.0134 = phi i32 [ %16, %for.end71 ], [ %i2.0135, %if.then81 ]
  store i32 %k1.2127, i32* %ret_k1, align 4, !dbg !1007, !tbaa !498
  store i32 %i1.0125, i32* %ret_i1, align 4, !dbg !1008, !tbaa !498
  store i32 %k2.2136, i32* %ret_k2, align 4, !dbg !1009, !tbaa !498
  store i32 %i2.0134, i32* %ret_i2, align 4, !dbg !1010, !tbaa !498
  ret void, !dbg !1011
}

; Function Attrs: nounwind optsize uwtable
define %struct.p7trace_s* @MasterTraceFromMap(i32* nocapture %map, i32 %M, i32 %alen) #0 {
entry:
  %tr = alloca %struct.p7trace_s*, align 8
  call void @llvm.dbg.value(metadata !{i32* %map}, i64 0, metadata !446), !dbg !1012
  call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !447), !dbg !1012
  call void @llvm.dbg.value(metadata !{i32 %alen}, i64 0, metadata !448), !dbg !1012
  call void @llvm.dbg.declare(metadata !{%struct.p7trace_s** %tr}, metadata !449), !dbg !1013
  %add = add nsw i32 %alen, 6, !dbg !1014
  call void @P7AllocTrace(i32 %add, %struct.p7trace_s** %tr) #8, !dbg !1014
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !450), !dbg !1015
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !449), !dbg !1016
  %0 = load %struct.p7trace_s** %tr, align 8, !dbg !1016, !tbaa !477
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %0}, i64 0, metadata !1017), !dbg !1018
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1019), !dbg !1018
  tail call void @llvm.dbg.value(metadata !1020, i64 0, metadata !1021), !dbg !1018
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1022), !dbg !1018
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1023), !dbg !1018
  %statetype.i = getelementptr inbounds %struct.p7trace_s* %0, i64 0, i32 1, !dbg !1024
  %1 = load i8** %statetype.i, align 8, !dbg !1024, !tbaa !477
  store i8 4, i8* %1, align 1, !dbg !1024, !tbaa !478
  %nodeidx.i = getelementptr inbounds %struct.p7trace_s* %0, i64 0, i32 2, !dbg !1025
  %2 = load i32** %nodeidx.i, align 8, !dbg !1025, !tbaa !477
  store i32 0, i32* %2, align 4, !dbg !1025, !tbaa !498
  %pos4.i = getelementptr inbounds %struct.p7trace_s* %0, i64 0, i32 3, !dbg !1026
  %3 = load i32** %pos4.i, align 8, !dbg !1026, !tbaa !477
  store i32 0, i32* %3, align 4, !dbg !1026, !tbaa !498
  call void @llvm.dbg.value(metadata !701, i64 0, metadata !450), !dbg !1016
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !449), !dbg !1027
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %0}, i64 0, metadata !1028), !dbg !1029
  tail call void @llvm.dbg.value(metadata !701, i64 0, metadata !1030), !dbg !1029
  tail call void @llvm.dbg.value(metadata !1031, i64 0, metadata !1032), !dbg !1029
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1033), !dbg !1029
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1034), !dbg !1029
  %4 = load i8** %statetype.i, align 8, !dbg !1035, !tbaa !477
  %arrayidx.i132 = getelementptr inbounds i8* %4, i64 1, !dbg !1035
  store i8 5, i8* %arrayidx.i132, align 1, !dbg !1035, !tbaa !478
  %5 = load i32** %nodeidx.i, align 8, !dbg !1036, !tbaa !477
  %arrayidx2.i134 = getelementptr inbounds i32* %5, i64 1, !dbg !1036
  store i32 0, i32* %arrayidx2.i134, align 4, !dbg !1036, !tbaa !498
  %6 = load i32** %pos4.i, align 8, !dbg !1037, !tbaa !477
  %arrayidx5.i136 = getelementptr inbounds i32* %6, i64 1, !dbg !1037
  store i32 0, i32* %arrayidx5.i136, align 4, !dbg !1037, !tbaa !498
  call void @llvm.dbg.value(metadata !957, i64 0, metadata !450), !dbg !1027
  call void @llvm.dbg.value(metadata !701, i64 0, metadata !451), !dbg !1038
  %arrayidx = getelementptr inbounds i32* %map, i64 1, !dbg !1038
  %7 = load i32* %arrayidx, align 4, !dbg !1038, !tbaa !498
  %cmp175 = icmp sgt i32 %7, 1, !dbg !1038
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !449), !dbg !1040
  %8 = load i8** %statetype.i, align 8, !dbg !1042, !tbaa !477
  %arrayidx.i126177 = getelementptr inbounds i8* %8, i64 2, !dbg !1042
  br i1 %cmp175, label %for.body, label %for.end, !dbg !1038

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %for.body ], [ 2, %entry ]
  %arrayidx.i126181 = phi i8* [ %arrayidx.i126, %for.body ], [ %arrayidx.i126177, %entry ]
  %apos.0179 = phi i32 [ %inc3, %for.body ], [ 1, %entry ]
  %tpos.0178 = phi i32 [ %inc2, %for.body ], [ 2, %entry ]
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %0}, i64 0, metadata !1043), !dbg !1044
  tail call void @llvm.dbg.value(metadata !1031, i64 0, metadata !1045), !dbg !1044
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1046), !dbg !1044
  tail call void @llvm.dbg.value(metadata !{i32 %apos.0.lcssa}, i64 0, metadata !1047), !dbg !1044
  store i8 5, i8* %arrayidx.i126181, align 1, !dbg !1042, !tbaa !478
  %9 = load i32** %nodeidx.i, align 8, !dbg !1048, !tbaa !477
  %arrayidx2.i128 = getelementptr inbounds i32* %9, i64 %indvars.iv200, !dbg !1048
  store i32 0, i32* %arrayidx2.i128, align 4, !dbg !1048, !tbaa !498
  %10 = load i32** %pos4.i, align 8, !dbg !1049, !tbaa !477
  %arrayidx5.i130 = getelementptr inbounds i32* %10, i64 %indvars.iv200, !dbg !1049
  store i32 %apos.0179, i32* %arrayidx5.i130, align 4, !dbg !1049, !tbaa !498
  %indvars.iv.next201 = add i64 %indvars.iv200, 1, !dbg !1038
  %inc2 = add nsw i32 %tpos.0178, 1, !dbg !1040
  call void @llvm.dbg.value(metadata !{i32 %inc2}, i64 0, metadata !450), !dbg !1040
  %inc3 = add nsw i32 %apos.0179, 1, !dbg !1038
  call void @llvm.dbg.value(metadata !{i32 %inc3}, i64 0, metadata !451), !dbg !1038
  %11 = load i32* %arrayidx, align 4, !dbg !1038, !tbaa !498
  %cmp = icmp slt i32 %inc3, %11, !dbg !1038
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !449), !dbg !1040
  %12 = load i8** %statetype.i, align 8, !dbg !1042, !tbaa !477
  %arrayidx.i126 = getelementptr inbounds i8* %12, i64 %indvars.iv.next201, !dbg !1042
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge, !dbg !1038

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = add i32 %tpos.0178, 2, !dbg !1038
  br label %for.end, !dbg !1038

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %arrayidx.i126.lcssa = phi i8* [ %arrayidx.i126, %for.cond.for.end_crit_edge ], [ %arrayidx.i126177, %entry ]
  %idxprom.i124.lcssa = phi i64 [ %indvars.iv.next201, %for.cond.for.end_crit_edge ], [ 2, %entry ]
  %apos.0.lcssa = phi i32 [ %inc3, %for.cond.for.end_crit_edge ], [ 1, %entry ]
  %tpos.0.lcssa = phi i32 [ %phitmp, %for.cond.for.end_crit_edge ], [ 3, %entry ]
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %0}, i64 0, metadata !1050), !dbg !1052
  tail call void @llvm.dbg.value(metadata !1053, i64 0, metadata !1054), !dbg !1052
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1055), !dbg !1052
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1056), !dbg !1052
  store i8 6, i8* %arrayidx.i126.lcssa, align 1, !dbg !1057, !tbaa !478
  %13 = load i32** %nodeidx.i, align 8, !dbg !1058, !tbaa !477
  %arrayidx2.i121 = getelementptr inbounds i32* %13, i64 %idxprom.i124.lcssa, !dbg !1058
  store i32 0, i32* %arrayidx2.i121, align 4, !dbg !1058, !tbaa !498
  %14 = load i32** %pos4.i, align 8, !dbg !1059, !tbaa !477
  %arrayidx5.i123 = getelementptr inbounds i32* %14, i64 %idxprom.i124.lcssa, !dbg !1059
  store i32 0, i32* %arrayidx5.i123, align 4, !dbg !1059, !tbaa !498
  call void @llvm.dbg.value(metadata !{i32 %tpos.0.lcssa}, i64 0, metadata !450), !dbg !1051
  call void @llvm.dbg.value(metadata !701, i64 0, metadata !452), !dbg !1060
  %cmp6158 = icmp sgt i32 %M, 1, !dbg !1060
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !449), !dbg !1062
  %15 = load %struct.p7trace_s** %tr, align 8, !dbg !1062, !tbaa !477
  %idxprom.i110159 = sext i32 %tpos.0.lcssa to i64, !dbg !1064
  %statetype.i111160 = getelementptr inbounds %struct.p7trace_s* %15, i64 0, i32 1, !dbg !1064
  %16 = load i8** %statetype.i111160, align 8, !dbg !1064, !tbaa !477
  %arrayidx.i112161 = getelementptr inbounds i8* %16, i64 %idxprom.i110159, !dbg !1064
  store i8 1, i8* %arrayidx.i112161, align 1, !dbg !1064, !tbaa !478
  %nodeidx.i113162 = getelementptr inbounds %struct.p7trace_s* %15, i64 0, i32 2, !dbg !1065
  %17 = load i32** %nodeidx.i113162, align 8, !dbg !1065, !tbaa !477
  %arrayidx2.i114163 = getelementptr inbounds i32* %17, i64 %idxprom.i110159, !dbg !1065
  %pos4.i108 = getelementptr inbounds %struct.p7trace_s* %15, i64 0, i32 3, !dbg !1066
  br i1 %cmp6158, label %for.body7, label %for.end21, !dbg !1060

for.cond5.loopexit:                               ; preds = %for.body14, %for.body7
  %tpos.2.lcssa = phi i32 [ %tpos.2150, %for.body7 ], [ %tpos.2, %for.body14 ]
  %apos.2.lcssa = phi i32 [ %apos.2149, %for.body7 ], [ %apos.2, %for.body14 ]
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !449), !dbg !1062
  %idxprom.i110 = sext i32 %tpos.2.lcssa to i64, !dbg !1064
  %18 = load i8** %statetype.i111160, align 8, !dbg !1064, !tbaa !477
  %arrayidx.i112 = getelementptr inbounds i8* %18, i64 %idxprom.i110, !dbg !1064
  store i8 1, i8* %arrayidx.i112, align 1, !dbg !1064, !tbaa !478
  %19 = load i32** %nodeidx.i113162, align 8, !dbg !1065, !tbaa !477
  %arrayidx2.i114 = getelementptr inbounds i32* %19, i64 %idxprom.i110, !dbg !1065
  %lftr.wideiv = trunc i64 %indvars.iv.next196 to i32, !dbg !1060
  %exitcond197 = icmp eq i32 %lftr.wideiv, %M, !dbg !1060
  br i1 %exitcond197, label %for.end21, label %for.body7, !dbg !1060

for.body7:                                        ; preds = %for.end, %for.cond5.loopexit
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %for.cond5.loopexit ], [ 1, %for.end ]
  %arrayidx2.i114168 = phi i32* [ %arrayidx2.i114, %for.cond5.loopexit ], [ %arrayidx2.i114163, %for.end ]
  %idxprom.i110167 = phi i64 [ %idxprom.i110, %for.cond5.loopexit ], [ %idxprom.i110159, %for.end ]
  %apos.1165 = phi i32 [ %apos.2.lcssa, %for.cond5.loopexit ], [ %apos.0.lcssa, %for.end ]
  %tpos.1164 = phi i32 [ %tpos.2.lcssa, %for.cond5.loopexit ], [ %tpos.0.lcssa, %for.end ]
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %15}, i64 0, metadata !1070), !dbg !1071
  tail call void @llvm.dbg.value(metadata !{i32 %tpos.1.lcssa}, i64 0, metadata !1072), !dbg !1071
  tail call void @llvm.dbg.value(metadata !1073, i64 0, metadata !1074), !dbg !1071
  tail call void @llvm.dbg.value(metadata !1075, i64 0, metadata !1076), !dbg !1071
  tail call void @llvm.dbg.value(metadata !{i32 %apos.1.lcssa}, i64 0, metadata !1077), !dbg !1071
  %20 = trunc i64 %indvars.iv195 to i32, !dbg !1065
  store i32 %20, i32* %arrayidx2.i114168, align 4, !dbg !1065, !tbaa !498
  %21 = load i32** %pos4.i108, align 8, !dbg !1078, !tbaa !477
  %arrayidx5.i116 = getelementptr inbounds i32* %21, i64 %idxprom.i110167, !dbg !1078
  store i32 %apos.1165, i32* %arrayidx5.i116, align 4, !dbg !1078, !tbaa !498
  %apos.2149 = add nsw i32 %apos.1165, 1, !dbg !1079
  %tpos.2150 = add i32 %tpos.1164, 1, !dbg !1062
  %indvars.iv.next196 = add i64 %indvars.iv195, 1, !dbg !1060
  %arrayidx12 = getelementptr inbounds i32* %map, i64 %indvars.iv.next196, !dbg !1080
  %22 = load i32* %arrayidx12, align 4, !dbg !1080, !tbaa !498
  %cmp13151 = icmp slt i32 %apos.2149, %22, !dbg !1080
  br i1 %cmp13151, label %for.body14.lr.ph, label %for.cond5.loopexit, !dbg !1080

for.body14.lr.ph:                                 ; preds = %for.body7
  %23 = sext i32 %tpos.2150 to i64
  br label %for.body14, !dbg !1080

for.body14:                                       ; preds = %for.body14.lr.ph, %for.body14
  %indvars.iv = phi i64 [ %23, %for.body14.lr.ph ], [ %indvars.iv.next, %for.body14 ]
  %tpos.2153 = phi i32 [ %tpos.2150, %for.body14.lr.ph ], [ %tpos.2, %for.body14 ]
  %apos.2152 = phi i32 [ %apos.2149, %for.body14.lr.ph ], [ %apos.2, %for.body14 ]
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !449), !dbg !1067
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %15}, i64 0, metadata !1081), !dbg !1082
  tail call void @llvm.dbg.value(metadata !{i32 %tpos.2.lcssa}, i64 0, metadata !1083), !dbg !1082
  tail call void @llvm.dbg.value(metadata !1084, i64 0, metadata !1085), !dbg !1082
  tail call void @llvm.dbg.value(metadata !1075, i64 0, metadata !1086), !dbg !1082
  tail call void @llvm.dbg.value(metadata !{i32 %apos.2.lcssa}, i64 0, metadata !1087), !dbg !1082
  %24 = load i8** %statetype.i111160, align 8, !dbg !1088, !tbaa !477
  %arrayidx.i105 = getelementptr inbounds i8* %24, i64 %indvars.iv, !dbg !1088
  store i8 3, i8* %arrayidx.i105, align 1, !dbg !1088, !tbaa !478
  %25 = load i32** %nodeidx.i113162, align 8, !dbg !1089, !tbaa !477
  %arrayidx2.i107 = getelementptr inbounds i32* %25, i64 %indvars.iv, !dbg !1089
  store i32 %20, i32* %arrayidx2.i107, align 4, !dbg !1089, !tbaa !498
  %26 = load i32** %pos4.i108, align 8, !dbg !1066, !tbaa !477
  %arrayidx5.i109 = getelementptr inbounds i32* %26, i64 %indvars.iv, !dbg !1066
  store i32 %apos.2152, i32* %arrayidx5.i109, align 4, !dbg !1066, !tbaa !498
  %apos.2 = add nsw i32 %apos.2152, 1, !dbg !1079
  %tpos.2 = add nsw i32 %tpos.2153, 1, !dbg !1062
  %27 = load i32* %arrayidx12, align 4, !dbg !1080, !tbaa !498
  %cmp13 = icmp slt i32 %apos.2, %27, !dbg !1080
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1080
  br i1 %cmp13, label %for.body14, label %for.cond5.loopexit, !dbg !1080

for.end21:                                        ; preds = %for.end, %for.cond5.loopexit
  %arrayidx2.i114.lcssa = phi i32* [ %arrayidx2.i114, %for.cond5.loopexit ], [ %arrayidx2.i114163, %for.end ]
  %idxprom.i110.lcssa = phi i64 [ %idxprom.i110, %for.cond5.loopexit ], [ %idxprom.i110159, %for.end ]
  %apos.1.lcssa = phi i32 [ %apos.2.lcssa, %for.cond5.loopexit ], [ %apos.0.lcssa, %for.end ]
  %tpos.1.lcssa = phi i32 [ %tpos.2.lcssa, %for.cond5.loopexit ], [ %tpos.0.lcssa, %for.end ]
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %15}, i64 0, metadata !1090), !dbg !1092
  tail call void @llvm.dbg.value(metadata !{i32 %tpos.1.lcssa}, i64 0, metadata !1093), !dbg !1092
  tail call void @llvm.dbg.value(metadata !1073, i64 0, metadata !1094), !dbg !1092
  tail call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !1095), !dbg !1092
  tail call void @llvm.dbg.value(metadata !{i32 %apos.1.lcssa}, i64 0, metadata !1096), !dbg !1092
  store i32 %M, i32* %arrayidx2.i114.lcssa, align 4, !dbg !1097, !tbaa !498
  %28 = load i32** %pos4.i108, align 8, !dbg !1098, !tbaa !477
  %arrayidx5.i102 = getelementptr inbounds i32* %28, i64 %idxprom.i110.lcssa, !dbg !1098
  store i32 %apos.1.lcssa, i32* %arrayidx5.i102, align 4, !dbg !1098, !tbaa !498
  %inc22 = add nsw i32 %tpos.1.lcssa, 1, !dbg !1091
  call void @llvm.dbg.value(metadata !{i32 %inc22}, i64 0, metadata !450), !dbg !1091
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !449), !dbg !1099
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %15}, i64 0, metadata !1100), !dbg !1101
  tail call void @llvm.dbg.value(metadata !{i32 %inc22}, i64 0, metadata !1102), !dbg !1101
  tail call void @llvm.dbg.value(metadata !1103, i64 0, metadata !1104), !dbg !1101
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1105), !dbg !1101
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1106), !dbg !1101
  %idxprom.i89 = sext i32 %inc22 to i64, !dbg !1107
  %29 = load i8** %statetype.i111160, align 8, !dbg !1107, !tbaa !477
  %arrayidx.i91 = getelementptr inbounds i8* %29, i64 %idxprom.i89, !dbg !1107
  store i8 7, i8* %arrayidx.i91, align 1, !dbg !1107, !tbaa !478
  %30 = load i32** %nodeidx.i113162, align 8, !dbg !1108, !tbaa !477
  %arrayidx2.i93 = getelementptr inbounds i32* %30, i64 %idxprom.i89, !dbg !1108
  store i32 0, i32* %arrayidx2.i93, align 4, !dbg !1108, !tbaa !498
  %31 = load i32** %pos4.i108, align 8, !dbg !1109, !tbaa !477
  %arrayidx5.i95 = getelementptr inbounds i32* %31, i64 %idxprom.i89, !dbg !1109
  store i32 0, i32* %arrayidx5.i95, align 4, !dbg !1109, !tbaa !498
  %inc24 = add nsw i32 %tpos.1.lcssa, 2, !dbg !1099
  call void @llvm.dbg.value(metadata !{i32 %inc24}, i64 0, metadata !450), !dbg !1099
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !449), !dbg !1110
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %15}, i64 0, metadata !1111), !dbg !1112
  tail call void @llvm.dbg.value(metadata !{i32 %inc24}, i64 0, metadata !1113), !dbg !1112
  tail call void @llvm.dbg.value(metadata !1114, i64 0, metadata !1115), !dbg !1112
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1116), !dbg !1112
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1117), !dbg !1112
  %idxprom.i82 = sext i32 %inc24 to i64, !dbg !1118
  %32 = load i8** %statetype.i111160, align 8, !dbg !1118, !tbaa !477
  %arrayidx.i84 = getelementptr inbounds i8* %32, i64 %idxprom.i82, !dbg !1118
  store i8 8, i8* %arrayidx.i84, align 1, !dbg !1118, !tbaa !478
  %33 = load i32** %nodeidx.i113162, align 8, !dbg !1119, !tbaa !477
  %arrayidx2.i86 = getelementptr inbounds i32* %33, i64 %idxprom.i82, !dbg !1119
  store i32 0, i32* %arrayidx2.i86, align 4, !dbg !1119, !tbaa !498
  %34 = load i32** %pos4.i108, align 8, !dbg !1120, !tbaa !477
  %arrayidx5.i88 = getelementptr inbounds i32* %34, i64 %idxprom.i82, !dbg !1120
  store i32 0, i32* %arrayidx5.i88, align 4, !dbg !1120, !tbaa !498
  %inc25 = add nsw i32 %tpos.1.lcssa, 3, !dbg !1110
  call void @llvm.dbg.value(metadata !{i32 %inc25}, i64 0, metadata !450), !dbg !1110
  %cmp27138 = icmp slt i32 %apos.1.lcssa, %alen, !dbg !1121
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !449), !dbg !1123
  %idxprom.i75139 = sext i32 %inc25 to i64, !dbg !1125
  %35 = load i8** %statetype.i111160, align 8, !dbg !1125, !tbaa !477
  %arrayidx.i77141 = getelementptr inbounds i8* %35, i64 %idxprom.i75139, !dbg !1125
  br i1 %cmp27138, label %for.body28.lr.ph, label %for.end32, !dbg !1121

for.body28.lr.ph:                                 ; preds = %for.end21
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !449), !dbg !1123
  %36 = add i32 %tpos.1.lcssa, 4, !dbg !1121
  %37 = add i32 %alen, -1, !dbg !1121
  %38 = sub i32 %37, %apos.1.lcssa, !dbg !1121
  %39 = zext i32 %38 to i64, !dbg !1121
  %40 = add i32 %tpos.1.lcssa, %alen, !dbg !1121
  %41 = add i32 %40, 3, !dbg !1121
  br label %for.body28, !dbg !1121

for.body28:                                       ; preds = %for.body28, %for.body28.lr.ph
  %arrayidx.i77145 = phi i8* [ %arrayidx.i77141, %for.body28.lr.ph ], [ %arrayidx.i77, %for.body28 ]
  %idxprom.i75144 = phi i64 [ %idxprom.i75139, %for.body28.lr.ph ], [ %idxprom.i75, %for.body28 ]
  %apos.3143.in = phi i32 [ %apos.1.lcssa, %for.body28.lr.ph ], [ %apos.3143, %for.body28 ]
  %tpos.3142 = phi i32 [ %inc25, %for.body28.lr.ph ], [ %inc29, %for.body28 ]
  %apos.3143 = add nsw i32 %apos.3143.in, 1, !dbg !1126
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %15}, i64 0, metadata !1127), !dbg !1128
  tail call void @llvm.dbg.value(metadata !{i32 %tpos.3.lcssa}, i64 0, metadata !1129), !dbg !1128
  tail call void @llvm.dbg.value(metadata !1114, i64 0, metadata !1130), !dbg !1128
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1131), !dbg !1128
  tail call void @llvm.dbg.value(metadata !{i32 %apos.3143}, i64 0, metadata !1132), !dbg !1128
  store i8 8, i8* %arrayidx.i77145, align 1, !dbg !1125, !tbaa !478
  %42 = load i32** %nodeidx.i113162, align 8, !dbg !1133, !tbaa !477
  %arrayidx2.i79 = getelementptr inbounds i32* %42, i64 %idxprom.i75144, !dbg !1133
  store i32 0, i32* %arrayidx2.i79, align 4, !dbg !1133, !tbaa !498
  %43 = load i32** %pos4.i108, align 8, !dbg !1134, !tbaa !477
  %arrayidx5.i81 = getelementptr inbounds i32* %43, i64 %idxprom.i75144, !dbg !1134
  store i32 %apos.3143, i32* %arrayidx5.i81, align 4, !dbg !1134, !tbaa !498
  %inc29 = add nsw i32 %tpos.3142, 1, !dbg !1123
  call void @llvm.dbg.value(metadata !{i32 %47}, i64 0, metadata !450), !dbg !1123
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !449), !dbg !1123
  %idxprom.i75 = sext i32 %inc29 to i64, !dbg !1125
  %44 = load i8** %statetype.i111160, align 8, !dbg !1125, !tbaa !477
  %arrayidx.i77 = getelementptr inbounds i8* %44, i64 %idxprom.i75, !dbg !1125
  %exitcond = icmp eq i32 %apos.3143, %alen, !dbg !1121
  br i1 %exitcond, label %for.cond26.for.end32_crit_edge, label %for.body28, !dbg !1121

for.cond26.for.end32_crit_edge:                   ; preds = %for.body28
  %45 = sext i32 %36 to i64, !dbg !1121
  %46 = add i64 %45, %39, !dbg !1121
  %47 = sub i32 %41, %apos.1.lcssa, !dbg !1121
  br label %for.end32, !dbg !1121

for.end32:                                        ; preds = %for.cond26.for.end32_crit_edge, %for.end21
  %arrayidx.i77.lcssa = phi i8* [ %arrayidx.i77, %for.cond26.for.end32_crit_edge ], [ %arrayidx.i77141, %for.end21 ]
  %idxprom.i75.lcssa = phi i64 [ %46, %for.cond26.for.end32_crit_edge ], [ %idxprom.i75139, %for.end21 ]
  %tpos.3.lcssa = phi i32 [ %47, %for.cond26.for.end32_crit_edge ], [ %inc25, %for.end21 ]
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %15}, i64 0, metadata !1135), !dbg !1137
  tail call void @llvm.dbg.value(metadata !{i32 %tpos.3.lcssa}, i64 0, metadata !1138), !dbg !1137
  tail call void @llvm.dbg.value(metadata !1139, i64 0, metadata !1140), !dbg !1137
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1141), !dbg !1137
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1142), !dbg !1137
  store i8 9, i8* %arrayidx.i77.lcssa, align 1, !dbg !1143, !tbaa !478
  %48 = load i32** %nodeidx.i113162, align 8, !dbg !1144, !tbaa !477
  %arrayidx2.i = getelementptr inbounds i32* %48, i64 %idxprom.i75.lcssa, !dbg !1144
  store i32 0, i32* %arrayidx2.i, align 4, !dbg !1144, !tbaa !498
  %49 = load i32** %pos4.i108, align 8, !dbg !1145, !tbaa !477
  %arrayidx5.i = getelementptr inbounds i32* %49, i64 %idxprom.i75.lcssa, !dbg !1145
  store i32 0, i32* %arrayidx5.i, align 4, !dbg !1145, !tbaa !498
  %inc33 = add nsw i32 %tpos.3.lcssa, 1, !dbg !1136
  call void @llvm.dbg.value(metadata !{i32 %inc33}, i64 0, metadata !450), !dbg !1136
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !449), !dbg !1146
  %50 = load %struct.p7trace_s** %tr, align 8, !dbg !1146, !tbaa !477
  %tlen = getelementptr inbounds %struct.p7trace_s* %50, i64 0, i32 0, !dbg !1146
  store i32 %inc33, i32* %tlen, align 4, !dbg !1146, !tbaa !498
  call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %tr}, i64 0, metadata !449), !dbg !1147
  ret %struct.p7trace_s* %50, !dbg !1147
}

; Function Attrs: nounwind optsize uwtable
define void @ImposeMasterTrace(i8** nocapture %aseq, i32 %nseq, %struct.p7trace_s* nocapture %mtr, %struct.p7trace_s*** nocapture %ret_tr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %aseq}, i64 0, metadata !457), !dbg !1148
  tail call void @llvm.dbg.value(metadata !{i32 %nseq}, i64 0, metadata !458), !dbg !1148
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %mtr}, i64 0, metadata !459), !dbg !1148
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s*** %ret_tr}, i64 0, metadata !460), !dbg !1148
  %conv = sext i32 %nseq to i64, !dbg !1149
  %mul = shl nsw i64 %conv, 3, !dbg !1149
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 1126, i64 %mul) #7, !dbg !1149
  %0 = bitcast i8* %call to %struct.p7trace_s**, !dbg !1149
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s** %0}, i64 0, metadata !461), !dbg !1149
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !462), !dbg !1150
  %cmp399 = icmp sgt i32 %nseq, 0, !dbg !1150
  br i1 %cmp399, label %for.body.lr.ph, label %for.end245, !dbg !1150

for.body.lr.ph:                                   ; preds = %entry
  %tlen = getelementptr inbounds %struct.p7trace_s* %mtr, i64 0, i32 0, !dbg !1152
  %statetype = getelementptr inbounds %struct.p7trace_s* %mtr, i64 0, i32 1, !dbg !1154
  %nodeidx = getelementptr inbounds %struct.p7trace_s* %mtr, i64 0, i32 2, !dbg !1157
  %pos = getelementptr inbounds %struct.p7trace_s* %mtr, i64 0, i32 3, !dbg !1159
  br label %for.body, !dbg !1150

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %indvars.iv401 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next402, %for.end ]
  %1 = load i32* %tlen, align 4, !dbg !1152, !tbaa !498
  %arrayidx = getelementptr inbounds %struct.p7trace_s** %0, i64 %indvars.iv401, !dbg !1152
  tail call void @P7AllocTrace(i32 %1, %struct.p7trace_s** %arrayidx) #8, !dbg !1152
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !464), !dbg !1160
  tail call void @llvm.dbg.value(metadata !701, i64 0, metadata !463), !dbg !1161
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !465), !dbg !1162
  %2 = load i32* %tlen, align 4, !dbg !1162, !tbaa !498
  %cmp4394 = icmp sgt i32 %2, 0, !dbg !1162
  br i1 %cmp4394, label %for.body6.lr.ph, label %for.end, !dbg !1162

for.body6.lr.ph:                                  ; preds = %for.body
  %arrayidx22 = getelementptr inbounds i8** %aseq, i64 %indvars.iv401, !dbg !1159
  br label %for.body6, !dbg !1162

for.body6:                                        ; preds = %for.inc, %for.body6.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %tpos.0396 = phi i32 [ 0, %for.body6.lr.ph ], [ %tpos.1, %for.inc ]
  %i.0395 = phi i32 [ 1, %for.body6.lr.ph ], [ %i.2, %for.inc ]
  %3 = load i8** %statetype, align 8, !dbg !1154, !tbaa !477
  %arrayidx8 = getelementptr inbounds i8* %3, i64 %indvars.iv, !dbg !1154
  %4 = load i8* %arrayidx8, align 1, !dbg !1154, !tbaa !478
  %conv9 = sext i8 %4 to i32, !dbg !1154
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
  ], !dbg !1154

sw.bb:                                            ; preds = %for.body6, %for.body6, %for.body6, %for.body6, %for.body6
  %5 = load %struct.p7trace_s** %arrayidx, align 8, !dbg !1157, !tbaa !477
  %6 = load i32** %nodeidx, align 8, !dbg !1157, !tbaa !477
  %arrayidx16 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !1157
  %7 = load i32* %arrayidx16, align 4, !dbg !1157, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %5}, i64 0, metadata !1163), !dbg !1164
  tail call void @llvm.dbg.value(metadata !{i32 %tpos.0.lcssa}, i64 0, metadata !1165), !dbg !1164
  tail call void @llvm.dbg.value(metadata !{i8 %4}, i64 0, metadata !1166), !dbg !1164
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !1167), !dbg !1164
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1168), !dbg !1164
  %idxprom.i = sext i32 %tpos.0396 to i64, !dbg !1169
  %statetype.i = getelementptr inbounds %struct.p7trace_s* %5, i64 0, i32 1, !dbg !1169
  %8 = load i8** %statetype.i, align 8, !dbg !1169, !tbaa !477
  %arrayidx.i = getelementptr inbounds i8* %8, i64 %idxprom.i, !dbg !1169
  store i8 %4, i8* %arrayidx.i, align 1, !dbg !1169, !tbaa !478
  %nodeidx.i = getelementptr inbounds %struct.p7trace_s* %5, i64 0, i32 2, !dbg !1170
  %9 = load i32** %nodeidx.i, align 8, !dbg !1170, !tbaa !477
  %arrayidx2.i = getelementptr inbounds i32* %9, i64 %idxprom.i, !dbg !1170
  store i32 %7, i32* %arrayidx2.i, align 4, !dbg !1170, !tbaa !498
  %pos4.i = getelementptr inbounds %struct.p7trace_s* %5, i64 0, i32 3, !dbg !1171
  %10 = load i32** %pos4.i, align 8, !dbg !1171, !tbaa !477
  %arrayidx5.i = getelementptr inbounds i32* %10, i64 %idxprom.i, !dbg !1171
  store i32 0, i32* %arrayidx5.i, align 4, !dbg !1171, !tbaa !498
  %inc = add nsw i32 %tpos.0396, 1, !dbg !1172
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !464), !dbg !1172
  br label %for.inc, !dbg !1173

sw.bb17:                                          ; preds = %for.body6
  %11 = load i32** %pos, align 8, !dbg !1159, !tbaa !477
  %arrayidx19 = getelementptr inbounds i32* %11, i64 %indvars.iv, !dbg !1159
  %12 = load i32* %arrayidx19, align 4, !dbg !1159, !tbaa !498
  %sub = add nsw i32 %12, -1, !dbg !1159
  %idxprom20 = sext i32 %sub to i64, !dbg !1159
  %13 = load i8** %arrayidx22, align 8, !dbg !1159, !tbaa !477
  %arrayidx23 = getelementptr inbounds i8* %13, i64 %idxprom20, !dbg !1159
  %14 = load i8* %arrayidx23, align 1, !dbg !1159, !tbaa !478
  switch i8 %14, label %if.else [
    i8 32, label %if.then
    i8 46, label %if.then
    i8 95, label %if.then
    i8 45, label %if.then
    i8 126, label %if.then
  ], !dbg !1159

if.then:                                          ; preds = %sw.bb17, %sw.bb17, %sw.bb17, %sw.bb17, %sw.bb17
  %15 = load %struct.p7trace_s** %arrayidx, align 8, !dbg !1174, !tbaa !477
  %16 = load i32** %nodeidx, align 8, !dbg !1174, !tbaa !477
  %arrayidx78 = getelementptr inbounds i32* %16, i64 %indvars.iv, !dbg !1174
  %17 = load i32* %arrayidx78, align 4, !dbg !1174, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %15}, i64 0, metadata !1175), !dbg !1176
  tail call void @llvm.dbg.value(metadata !{i32 %tpos.0.lcssa}, i64 0, metadata !1177), !dbg !1176
  tail call void @llvm.dbg.value(metadata !1178, i64 0, metadata !1179), !dbg !1176
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !1180), !dbg !1176
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1181), !dbg !1176
  %idxprom.i387 = sext i32 %tpos.0396 to i64, !dbg !1182
  %statetype.i388 = getelementptr inbounds %struct.p7trace_s* %15, i64 0, i32 1, !dbg !1182
  %18 = load i8** %statetype.i388, align 8, !dbg !1182, !tbaa !477
  %arrayidx.i389 = getelementptr inbounds i8* %18, i64 %idxprom.i387, !dbg !1182
  store i8 2, i8* %arrayidx.i389, align 1, !dbg !1182, !tbaa !478
  %nodeidx.i390 = getelementptr inbounds %struct.p7trace_s* %15, i64 0, i32 2, !dbg !1183
  %19 = load i32** %nodeidx.i390, align 8, !dbg !1183, !tbaa !477
  %arrayidx2.i391 = getelementptr inbounds i32* %19, i64 %idxprom.i387, !dbg !1183
  store i32 %17, i32* %arrayidx2.i391, align 4, !dbg !1183, !tbaa !498
  %pos4.i392 = getelementptr inbounds %struct.p7trace_s* %15, i64 0, i32 3, !dbg !1184
  %20 = load i32** %pos4.i392, align 8, !dbg !1184, !tbaa !477
  %arrayidx5.i393 = getelementptr inbounds i32* %20, i64 %idxprom.i387, !dbg !1184
  store i32 0, i32* %arrayidx5.i393, align 4, !dbg !1184, !tbaa !498
  br label %if.end, !dbg !1174

if.else:                                          ; preds = %sw.bb17
  %21 = load %struct.p7trace_s** %arrayidx, align 8, !dbg !1185, !tbaa !477
  %22 = load i32** %nodeidx, align 8, !dbg !1185, !tbaa !477
  %arrayidx83 = getelementptr inbounds i32* %22, i64 %indvars.iv, !dbg !1185
  %23 = load i32* %arrayidx83, align 4, !dbg !1185, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %21}, i64 0, metadata !1187), !dbg !1188
  tail call void @llvm.dbg.value(metadata !{i32 %tpos.0.lcssa}, i64 0, metadata !1189), !dbg !1188
  tail call void @llvm.dbg.value(metadata !1073, i64 0, metadata !1190), !dbg !1188
  tail call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !1191), !dbg !1188
  tail call void @llvm.dbg.value(metadata !{i32 %i.0395}, i64 0, metadata !1192), !dbg !1188
  %idxprom.i380 = sext i32 %tpos.0396 to i64, !dbg !1193
  %statetype.i381 = getelementptr inbounds %struct.p7trace_s* %21, i64 0, i32 1, !dbg !1193
  %24 = load i8** %statetype.i381, align 8, !dbg !1193, !tbaa !477
  %arrayidx.i382 = getelementptr inbounds i8* %24, i64 %idxprom.i380, !dbg !1193
  store i8 1, i8* %arrayidx.i382, align 1, !dbg !1193, !tbaa !478
  %nodeidx.i383 = getelementptr inbounds %struct.p7trace_s* %21, i64 0, i32 2, !dbg !1194
  %25 = load i32** %nodeidx.i383, align 8, !dbg !1194, !tbaa !477
  %arrayidx2.i384 = getelementptr inbounds i32* %25, i64 %idxprom.i380, !dbg !1194
  store i32 %23, i32* %arrayidx2.i384, align 4, !dbg !1194, !tbaa !498
  %pos4.i385 = getelementptr inbounds %struct.p7trace_s* %21, i64 0, i32 3, !dbg !1195
  %26 = load i32** %pos4.i385, align 8, !dbg !1195, !tbaa !477
  %arrayidx5.i386 = getelementptr inbounds i32* %26, i64 %idxprom.i380, !dbg !1195
  store i32 %i.0395, i32* %arrayidx5.i386, align 4, !dbg !1195, !tbaa !498
  %inc84 = add nsw i32 %i.0395, 1, !dbg !1196
  tail call void @llvm.dbg.value(metadata !{i32 %inc84}, i64 0, metadata !463), !dbg !1196
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %i.1 = phi i32 [ %i.0395, %if.then ], [ %inc84, %if.else ]
  %inc85 = add nsw i32 %tpos.0396, 1, !dbg !1197
  tail call void @llvm.dbg.value(metadata !{i32 %inc85}, i64 0, metadata !464), !dbg !1197
  br label %for.inc, !dbg !1198

sw.bb86:                                          ; preds = %for.body6
  %27 = load i32** %pos, align 8, !dbg !1199, !tbaa !477
  %arrayidx89 = getelementptr inbounds i32* %27, i64 %indvars.iv, !dbg !1199
  %28 = load i32* %arrayidx89, align 4, !dbg !1199, !tbaa !498
  %sub90 = add nsw i32 %28, -1, !dbg !1199
  %idxprom91 = sext i32 %sub90 to i64, !dbg !1199
  %29 = load i8** %arrayidx22, align 8, !dbg !1199, !tbaa !477
  %arrayidx94 = getelementptr inbounds i8* %29, i64 %idxprom91, !dbg !1199
  %30 = load i8* %arrayidx94, align 1, !dbg !1199, !tbaa !478
  switch i8 %30, label %if.then146 [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ], !dbg !1199

if.then146:                                       ; preds = %sw.bb86
  %31 = load %struct.p7trace_s** %arrayidx, align 8, !dbg !1200, !tbaa !477
  %32 = load i32** %nodeidx, align 8, !dbg !1200, !tbaa !477
  %arrayidx151 = getelementptr inbounds i32* %32, i64 %indvars.iv, !dbg !1200
  %33 = load i32* %arrayidx151, align 4, !dbg !1200, !tbaa !498
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %31}, i64 0, metadata !1202), !dbg !1203
  tail call void @llvm.dbg.value(metadata !{i32 %tpos.0.lcssa}, i64 0, metadata !1204), !dbg !1203
  tail call void @llvm.dbg.value(metadata !1084, i64 0, metadata !1205), !dbg !1203
  tail call void @llvm.dbg.value(metadata !{i32 %33}, i64 0, metadata !1206), !dbg !1203
  tail call void @llvm.dbg.value(metadata !{i32 %i.0395}, i64 0, metadata !1207), !dbg !1203
  %idxprom.i373 = sext i32 %tpos.0396 to i64, !dbg !1208
  %statetype.i374 = getelementptr inbounds %struct.p7trace_s* %31, i64 0, i32 1, !dbg !1208
  %34 = load i8** %statetype.i374, align 8, !dbg !1208, !tbaa !477
  %arrayidx.i375 = getelementptr inbounds i8* %34, i64 %idxprom.i373, !dbg !1208
  store i8 3, i8* %arrayidx.i375, align 1, !dbg !1208, !tbaa !478
  %nodeidx.i376 = getelementptr inbounds %struct.p7trace_s* %31, i64 0, i32 2, !dbg !1209
  %35 = load i32** %nodeidx.i376, align 8, !dbg !1209, !tbaa !477
  %arrayidx2.i377 = getelementptr inbounds i32* %35, i64 %idxprom.i373, !dbg !1209
  store i32 %33, i32* %arrayidx2.i377, align 4, !dbg !1209, !tbaa !498
  %pos4.i378 = getelementptr inbounds %struct.p7trace_s* %31, i64 0, i32 3, !dbg !1210
  %36 = load i32** %pos4.i378, align 8, !dbg !1210, !tbaa !477
  %arrayidx5.i379 = getelementptr inbounds i32* %36, i64 %idxprom.i373, !dbg !1210
  store i32 %i.0395, i32* %arrayidx5.i379, align 4, !dbg !1210, !tbaa !498
  %inc152 = add nsw i32 %i.0395, 1, !dbg !1211
  tail call void @llvm.dbg.value(metadata !{i32 %inc152}, i64 0, metadata !463), !dbg !1211
  %inc153 = add nsw i32 %tpos.0396, 1, !dbg !1212
  tail call void @llvm.dbg.value(metadata !{i32 %inc153}, i64 0, metadata !464), !dbg !1212
  br label %for.inc, !dbg !1213

sw.bb155:                                         ; preds = %for.body6, %for.body6, %for.body6
  %37 = load i32** %pos, align 8, !dbg !1214, !tbaa !477
  %arrayidx158 = getelementptr inbounds i32* %37, i64 %indvars.iv, !dbg !1214
  %38 = load i32* %arrayidx158, align 4, !dbg !1214, !tbaa !498
  %cmp159 = icmp eq i32 %38, 0, !dbg !1214
  br i1 %cmp159, label %if.then161, label %if.else168, !dbg !1214

if.then161:                                       ; preds = %sw.bb155
  %39 = load %struct.p7trace_s** %arrayidx, align 8, !dbg !1215, !tbaa !477
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %39}, i64 0, metadata !1217), !dbg !1218
  tail call void @llvm.dbg.value(metadata !{i32 %tpos.0.lcssa}, i64 0, metadata !1219), !dbg !1218
  tail call void @llvm.dbg.value(metadata !{i8 %4}, i64 0, metadata !1220), !dbg !1218
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1221), !dbg !1218
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1222), !dbg !1218
  %idxprom.i366 = sext i32 %tpos.0396 to i64, !dbg !1223
  %statetype.i367 = getelementptr inbounds %struct.p7trace_s* %39, i64 0, i32 1, !dbg !1223
  %40 = load i8** %statetype.i367, align 8, !dbg !1223, !tbaa !477
  %arrayidx.i368 = getelementptr inbounds i8* %40, i64 %idxprom.i366, !dbg !1223
  store i8 %4, i8* %arrayidx.i368, align 1, !dbg !1223, !tbaa !478
  %nodeidx.i369 = getelementptr inbounds %struct.p7trace_s* %39, i64 0, i32 2, !dbg !1224
  %41 = load i32** %nodeidx.i369, align 8, !dbg !1224, !tbaa !477
  %arrayidx2.i370 = getelementptr inbounds i32* %41, i64 %idxprom.i366, !dbg !1224
  store i32 0, i32* %arrayidx2.i370, align 4, !dbg !1224, !tbaa !498
  %pos4.i371 = getelementptr inbounds %struct.p7trace_s* %39, i64 0, i32 3, !dbg !1225
  %42 = load i32** %pos4.i371, align 8, !dbg !1225, !tbaa !477
  %arrayidx5.i372 = getelementptr inbounds i32* %42, i64 %idxprom.i366, !dbg !1225
  store i32 0, i32* %arrayidx5.i372, align 4, !dbg !1225, !tbaa !498
  %inc167 = add nsw i32 %tpos.0396, 1, !dbg !1226
  tail call void @llvm.dbg.value(metadata !{i32 %inc167}, i64 0, metadata !464), !dbg !1226
  br label %for.inc, !dbg !1227

if.else168:                                       ; preds = %sw.bb155
  %sub172 = add nsw i32 %38, -1, !dbg !1228
  %idxprom173 = sext i32 %sub172 to i64, !dbg !1228
  %43 = load i8** %arrayidx22, align 8, !dbg !1228, !tbaa !477
  %arrayidx176 = getelementptr inbounds i8* %43, i64 %idxprom173, !dbg !1228
  %44 = load i8* %arrayidx176, align 1, !dbg !1228, !tbaa !478
  switch i8 %44, label %if.then228 [
    i8 32, label %for.inc
    i8 46, label %for.inc
    i8 95, label %for.inc
    i8 45, label %for.inc
    i8 126, label %for.inc
  ], !dbg !1228

if.then228:                                       ; preds = %if.else168
  %45 = load %struct.p7trace_s** %arrayidx, align 8, !dbg !1229, !tbaa !477
  tail call void @llvm.dbg.value(metadata !{%struct.p7trace_s* %45}, i64 0, metadata !1231), !dbg !1232
  tail call void @llvm.dbg.value(metadata !{i32 %tpos.0.lcssa}, i64 0, metadata !1233), !dbg !1232
  tail call void @llvm.dbg.value(metadata !{i8 %4}, i64 0, metadata !1234), !dbg !1232
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !1235), !dbg !1232
  tail call void @llvm.dbg.value(metadata !{i32 %i.0395}, i64 0, metadata !1236), !dbg !1232
  %idxprom.i359 = sext i32 %tpos.0396 to i64, !dbg !1237
  %statetype.i360 = getelementptr inbounds %struct.p7trace_s* %45, i64 0, i32 1, !dbg !1237
  %46 = load i8** %statetype.i360, align 8, !dbg !1237, !tbaa !477
  %arrayidx.i361 = getelementptr inbounds i8* %46, i64 %idxprom.i359, !dbg !1237
  store i8 %4, i8* %arrayidx.i361, align 1, !dbg !1237, !tbaa !478
  %nodeidx.i362 = getelementptr inbounds %struct.p7trace_s* %45, i64 0, i32 2, !dbg !1238
  %47 = load i32** %nodeidx.i362, align 8, !dbg !1238, !tbaa !477
  %arrayidx2.i363 = getelementptr inbounds i32* %47, i64 %idxprom.i359, !dbg !1238
  store i32 0, i32* %arrayidx2.i363, align 4, !dbg !1238, !tbaa !498
  %pos4.i364 = getelementptr inbounds %struct.p7trace_s* %45, i64 0, i32 3, !dbg !1239
  %48 = load i32** %pos4.i364, align 8, !dbg !1239, !tbaa !477
  %arrayidx5.i365 = getelementptr inbounds i32* %48, i64 %idxprom.i359, !dbg !1239
  store i32 %i.0395, i32* %arrayidx5.i365, align 4, !dbg !1239, !tbaa !498
  %inc234 = add nsw i32 %i.0395, 1, !dbg !1240
  tail call void @llvm.dbg.value(metadata !{i32 %inc234}, i64 0, metadata !463), !dbg !1240
  %inc235 = add nsw i32 %tpos.0396, 1, !dbg !1241
  tail call void @llvm.dbg.value(metadata !{i32 %inc235}, i64 0, metadata !464), !dbg !1241
  br label %for.inc, !dbg !1242

sw.bb238:                                         ; preds = %for.body6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([25 x i8]* @.str17, i64 0, i64 0)) #7, !dbg !1243
  br label %for.inc, !dbg !1244

for.inc:                                          ; preds = %if.else168, %if.else168, %if.else168, %if.else168, %if.else168, %sw.bb86, %sw.bb86, %sw.bb86, %sw.bb86, %sw.bb86, %sw.bb, %if.end, %for.body6, %sw.bb238, %if.then146, %if.then228, %if.then161
  %i.2 = phi i32 [ %i.0395, %for.body6 ], [ %i.0395, %sw.bb238 ], [ %i.0395, %if.then161 ], [ %i.0395, %if.else168 ], [ %inc234, %if.then228 ], [ %i.0395, %sw.bb86 ], [ %inc152, %if.then146 ], [ %i.1, %if.end ], [ %i.0395, %sw.bb ], [ %i.0395, %sw.bb86 ], [ %i.0395, %sw.bb86 ], [ %i.0395, %sw.bb86 ], [ %i.0395, %sw.bb86 ], [ %i.0395, %if.else168 ], [ %i.0395, %if.else168 ], [ %i.0395, %if.else168 ], [ %i.0395, %if.else168 ]
  %tpos.1 = phi i32 [ %tpos.0396, %for.body6 ], [ %tpos.0396, %sw.bb238 ], [ %inc167, %if.then161 ], [ %tpos.0396, %if.else168 ], [ %inc235, %if.then228 ], [ %tpos.0396, %sw.bb86 ], [ %inc153, %if.then146 ], [ %inc85, %if.end ], [ %inc, %sw.bb ], [ %tpos.0396, %sw.bb86 ], [ %tpos.0396, %sw.bb86 ], [ %tpos.0396, %sw.bb86 ], [ %tpos.0396, %sw.bb86 ], [ %tpos.0396, %if.else168 ], [ %tpos.0396, %if.else168 ], [ %tpos.0396, %if.else168 ], [ %tpos.0396, %if.else168 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !1162
  %49 = load i32* %tlen, align 4, !dbg !1162, !tbaa !498
  %50 = trunc i64 %indvars.iv.next to i32, !dbg !1162
  %cmp4 = icmp slt i32 %50, %49, !dbg !1162
  br i1 %cmp4, label %for.body6, label %for.end, !dbg !1162

for.end:                                          ; preds = %for.inc, %for.body
  %tpos.0.lcssa = phi i32 [ 0, %for.body ], [ %tpos.1, %for.inc ]
  %51 = load %struct.p7trace_s** %arrayidx, align 8, !dbg !1245, !tbaa !477
  %tlen242 = getelementptr inbounds %struct.p7trace_s* %51, i64 0, i32 0, !dbg !1245
  store i32 %tpos.0.lcssa, i32* %tlen242, align 4, !dbg !1245, !tbaa !498
  %indvars.iv.next402 = add i64 %indvars.iv401, 1, !dbg !1150
  %lftr.wideiv = trunc i64 %indvars.iv.next402 to i32, !dbg !1150
  %exitcond = icmp eq i32 %lftr.wideiv, %nseq, !dbg !1150
  br i1 %exitcond, label %for.end245, label %for.body, !dbg !1150

for.end245:                                       ; preds = %for.end, %entry
  store %struct.p7trace_s** %0, %struct.p7trace_s*** %ret_tr, align 8, !dbg !1246, !tbaa !477
  ret void, !dbg !1247
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !41, metadata !47, metadata !52, metadata !61, metadata !71, metadata !79, metadata !152, metadata !162, metadata !292, metadata !301, metadata !341, metadata !408, metadata !421, metadata !428, metadata !442, metadata !453, metadata !466}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"P7AllocTrace", metadata !"P7AllocTrace", metadata !"", i32 36, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, %struct.p7trace_s**)* @P7AllocTrace, null, null, metadata !37, i32 37} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 37] [P7AllocTrace]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !24, metadata !25}
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from p7trace_s]
!27 = metadata !{i32 786451, metadata !28, null, metadata !"p7trace_s", i32 374, i64 256, i64 64, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [p7trace_s] [line 374, size 256, align 64, offset 0] [from ]
!28 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!29 = metadata !{metadata !30, metadata !31, metadata !34, metadata !36}
!30 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"tlen", i32 375, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [tlen] [line 375, size 32, align 32, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"statetype", i32 376, i64 64, i64 64, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [statetype] [line 376, size 64, align 64, offset 64] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!33 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!34 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"nodeidx", i32 377, i64 64, i64 64, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [nodeidx] [line 377, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!36 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"pos", i32 378, i64 64, i64 64, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [pos] [line 378, size 64, align 64, offset 192] [from ]
!37 = metadata !{metadata !38, metadata !39, metadata !40}
!38 = metadata !{i32 786689, metadata !20, metadata !"tlen", metadata !21, i32 16777252, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tlen] [line 36]
!39 = metadata !{i32 786689, metadata !20, metadata !"ret_tr", metadata !21, i32 33554468, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 36]
!40 = metadata !{i32 786688, metadata !20, metadata !"tr", metadata !21, i32 38, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 38]
!41 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"P7ReallocTrace", metadata !"P7ReallocTrace", metadata !"", i32 47, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.p7trace_s*, i32)* @P7ReallocTrace, null, null, metadata !44, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [P7ReallocTrace]
!42 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{null, metadata !26, metadata !24}
!44 = metadata !{metadata !45, metadata !46}
!45 = metadata !{i32 786689, metadata !41, metadata !"tr", metadata !21, i32 16777263, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 47]
!46 = metadata !{i32 786689, metadata !41, metadata !"tlen", metadata !21, i32 33554479, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tlen] [line 47]
!47 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"P7FreeTrace", metadata !"P7FreeTrace", metadata !"", i32 54, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.p7trace_s*)* @P7FreeTrace, null, null, metadata !50, i32 55} ; [ DW_TAG_subprogram ] [line 54] [def] [scope 55] [P7FreeTrace]
!48 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!49 = metadata !{null, metadata !26}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786689, metadata !47, metadata !"tr", metadata !21, i32 16777270, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 54]
!52 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"TraceSet", metadata !"TraceSet", metadata !"", i32 79, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.p7trace_s*, i32, i8, i32, i32)* @TraceSet, null, null, metadata !55, i32 80} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 80] [TraceSet]
!53 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{null, metadata !26, metadata !24, metadata !33, metadata !24, metadata !24}
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59, metadata !60}
!56 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!57 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!58 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 79]
!59 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!60 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!61 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"MergeTraceArrays", metadata !"MergeTraceArrays", metadata !"", i32 105, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.p7trace_s** (%struct.p7trace_s**, i32, %struct.p7trace_s**, i32)* @MergeTraceArrays, null, null, metadata !64, i32 106} ; [ DW_TAG_subprogram ] [line 105] [def] [scope 106] [MergeTraceArrays]
!62 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!63 = metadata !{metadata !25, metadata !25, metadata !24, metadata !25, metadata !24}
!64 = metadata !{metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70}
!65 = metadata !{i32 786689, metadata !61, metadata !"t1", metadata !21, i32 16777321, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t1] [line 105]
!66 = metadata !{i32 786689, metadata !61, metadata !"n1", metadata !21, i32 33554537, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n1] [line 105]
!67 = metadata !{i32 786689, metadata !61, metadata !"t2", metadata !21, i32 50331753, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t2] [line 105]
!68 = metadata !{i32 786689, metadata !61, metadata !"n2", metadata !21, i32 67108969, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n2] [line 105]
!69 = metadata !{i32 786688, metadata !61, metadata !"tr", metadata !21, i32 107, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 107]
!70 = metadata !{i32 786688, metadata !61, metadata !"i", metadata !21, i32 108, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 108]
!71 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"P7ReverseTrace", metadata !"P7ReverseTrace", metadata !"", i32 140, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.p7trace_s*)* @P7ReverseTrace, null, null, metadata !72, i32 141} ; [ DW_TAG_subprogram ] [line 140] [def] [scope 141] [P7ReverseTrace]
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78}
!73 = metadata !{i32 786689, metadata !71, metadata !"tr", metadata !21, i32 16777356, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 140]
!74 = metadata !{i32 786688, metadata !71, metadata !"statetype", metadata !21, i32 142, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [statetype] [line 142]
!75 = metadata !{i32 786688, metadata !71, metadata !"nodeidx", metadata !21, i32 143, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodeidx] [line 143]
!76 = metadata !{i32 786688, metadata !71, metadata !"pos", metadata !21, i32 144, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 144]
!77 = metadata !{i32 786688, metadata !71, metadata !"opos", metadata !21, i32 145, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opos] [line 145]
!78 = metadata !{i32 786688, metadata !71, metadata !"npos", metadata !21, i32 145, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npos] [line 145]
!79 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"P7TraceCount", metadata !"P7TraceCount", metadata !"", i32 187, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan7_s*, i8*, float, %struct.p7trace_s*)* @P7TraceCount, null, null, metadata !145, i32 188} ; [ DW_TAG_subprogram ] [line 187] [def] [scope 188] [P7TraceCount]
!80 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{null, metadata !82, metadata !32, metadata !100, metadata !26}
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan7_s]
!83 = metadata !{i32 786451, metadata !28, null, metadata !"plan7_s", i32 101, i64 3712, i64 64, i32 0, i32 0, null, metadata !84, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan7_s] [line 101, size 3712, align 64, offset 0] [from ]
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !110, metadata !111, metadata !112, metadata !113, metadata !118, metadata !119, metadata !120, metadata !124, metadata !125, metadata !127, metadata !128, metadata !129, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144}
!85 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"name", i32 113, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [name] [line 113, size 64, align 64, offset 0] [from ]
!86 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"acc", i32 114, i64 64, i64 64, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [acc] [line 114, size 64, align 64, offset 64] [from ]
!87 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"desc", i32 115, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [desc] [line 115, size 64, align 64, offset 128] [from ]
!88 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"rf", i32 116, i64 64, i64 64, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [rf] [line 116, size 64, align 64, offset 192] [from ]
!89 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"cs", i32 117, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [cs] [line 117, size 64, align 64, offset 256] [from ]
!90 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"ca", i32 118, i64 64, i64 64, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [ca] [line 118, size 64, align 64, offset 320] [from ]
!91 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"comlog", i32 119, i64 64, i64 64, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [comlog] [line 119, size 64, align 64, offset 384] [from ]
!92 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"nseq", i32 120, i64 32, i64 32, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [nseq] [line 120, size 32, align 32, offset 448] [from int]
!93 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"ctime", i32 121, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [ctime] [line 121, size 64, align 64, offset 512] [from ]
!94 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"map", i32 122, i64 64, i64 64, i64 576, i32 0, metadata !35} ; [ DW_TAG_member ] [map] [line 122, size 64, align 64, offset 576] [from ]
!95 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"checksum", i32 123, i64 32, i64 32, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [checksum] [line 123, size 32, align 32, offset 640] [from int]
!96 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"tpri", i32 134, i64 64, i64 64, i64 704, i32 0, metadata !35} ; [ DW_TAG_member ] [tpri] [line 134, size 64, align 64, offset 704] [from ]
!97 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"mpri", i32 135, i64 64, i64 64, i64 768, i32 0, metadata !35} ; [ DW_TAG_member ] [mpri] [line 135, size 64, align 64, offset 768] [from ]
!98 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"ipri", i32 136, i64 64, i64 64, i64 832, i32 0, metadata !35} ; [ DW_TAG_member ] [ipri] [line 136, size 64, align 64, offset 832] [from ]
!99 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"ga1", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !100} ; [ DW_TAG_member ] [ga1] [line 144, size 32, align 32, offset 896] [from float]
!100 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!101 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"ga2", i32 144, i64 32, i64 32, i64 928, i32 0, metadata !100} ; [ DW_TAG_member ] [ga2] [line 144, size 32, align 32, offset 928] [from float]
!102 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"tc1", i32 145, i64 32, i64 32, i64 960, i32 0, metadata !100} ; [ DW_TAG_member ] [tc1] [line 145, size 32, align 32, offset 960] [from float]
!103 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"tc2", i32 145, i64 32, i64 32, i64 992, i32 0, metadata !100} ; [ DW_TAG_member ] [tc2] [line 145, size 32, align 32, offset 992] [from float]
!104 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"nc1", i32 146, i64 32, i64 32, i64 1024, i32 0, metadata !100} ; [ DW_TAG_member ] [nc1] [line 146, size 32, align 32, offset 1024] [from float]
!105 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"nc2", i32 146, i64 32, i64 32, i64 1056, i32 0, metadata !100} ; [ DW_TAG_member ] [nc2] [line 146, size 32, align 32, offset 1056] [from float]
!106 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"M", i32 155, i64 32, i64 32, i64 1088, i32 0, metadata !24} ; [ DW_TAG_member ] [M] [line 155, size 32, align 32, offset 1088] [from int]
!107 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"t", i32 156, i64 64, i64 64, i64 1152, i32 0, metadata !108} ; [ DW_TAG_member ] [t] [line 156, size 64, align 64, offset 1152] [from ]
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!109 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!110 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"mat", i32 157, i64 64, i64 64, i64 1216, i32 0, metadata !108} ; [ DW_TAG_member ] [mat] [line 157, size 64, align 64, offset 1216] [from ]
!111 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"ins", i32 158, i64 64, i64 64, i64 1280, i32 0, metadata !108} ; [ DW_TAG_member ] [ins] [line 158, size 64, align 64, offset 1280] [from ]
!112 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"tbd1", i32 159, i64 32, i64 32, i64 1344, i32 0, metadata !100} ; [ DW_TAG_member ] [tbd1] [line 159, size 32, align 32, offset 1344] [from float]
!113 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"xt", i32 168, i64 256, i64 32, i64 1376, i32 0, metadata !114} ; [ DW_TAG_member ] [xt] [line 168, size 256, align 32, offset 1376] [from ]
!114 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !100, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from float]
!115 = metadata !{metadata !116, metadata !117}
!116 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!117 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!118 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"begin", i32 169, i64 64, i64 64, i64 1664, i32 0, metadata !109} ; [ DW_TAG_member ] [begin] [line 169, size 64, align 64, offset 1664] [from ]
!119 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"end", i32 170, i64 64, i64 64, i64 1728, i32 0, metadata !109} ; [ DW_TAG_member ] [end] [line 170, size 64, align 64, offset 1728] [from ]
!120 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"null", i32 174, i64 640, i64 32, i64 1792, i32 0, metadata !121} ; [ DW_TAG_member ] [null] [line 174, size 640, align 32, offset 1792] [from ]
!121 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !100, metadata !122, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!122 = metadata !{metadata !123}
!123 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!124 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"p1", i32 175, i64 32, i64 32, i64 2432, i32 0, metadata !100} ; [ DW_TAG_member ] [p1] [line 175, size 32, align 32, offset 2432] [from float]
!125 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"tsc", i32 197, i64 64, i64 64, i64 2496, i32 0, metadata !126} ; [ DW_TAG_member ] [tsc] [line 197, size 64, align 64, offset 2496] [from ]
!126 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!127 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"msc", i32 198, i64 64, i64 64, i64 2560, i32 0, metadata !126} ; [ DW_TAG_member ] [msc] [line 198, size 64, align 64, offset 2560] [from ]
!128 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"isc", i32 199, i64 64, i64 64, i64 2624, i32 0, metadata !126} ; [ DW_TAG_member ] [isc] [line 199, size 64, align 64, offset 2624] [from ]
!129 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"xsc", i32 200, i64 256, i64 32, i64 2688, i32 0, metadata !130} ; [ DW_TAG_member ] [xsc] [line 200, size 256, align 32, offset 2688] [from ]
!130 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !24, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!131 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"bsc", i32 201, i64 64, i64 64, i64 2944, i32 0, metadata !35} ; [ DW_TAG_member ] [bsc] [line 201, size 64, align 64, offset 2944] [from ]
!132 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"esc", i32 202, i64 64, i64 64, i64 3008, i32 0, metadata !35} ; [ DW_TAG_member ] [esc] [line 202, size 64, align 64, offset 3008] [from ]
!133 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"tsc_mem", i32 203, i64 64, i64 64, i64 3072, i32 0, metadata !35} ; [ DW_TAG_member ] [tsc_mem] [line 203, size 64, align 64, offset 3072] [from ]
!134 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"msc_mem", i32 203, i64 64, i64 64, i64 3136, i32 0, metadata !35} ; [ DW_TAG_member ] [msc_mem] [line 203, size 64, align 64, offset 3136] [from ]
!135 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"isc_mem", i32 203, i64 64, i64 64, i64 3200, i32 0, metadata !35} ; [ DW_TAG_member ] [isc_mem] [line 203, size 64, align 64, offset 3200] [from ]
!136 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"bsc_mem", i32 203, i64 64, i64 64, i64 3264, i32 0, metadata !35} ; [ DW_TAG_member ] [bsc_mem] [line 203, size 64, align 64, offset 3264] [from ]
!137 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"esc_mem", i32 203, i64 64, i64 64, i64 3328, i32 0, metadata !35} ; [ DW_TAG_member ] [esc_mem] [line 203, size 64, align 64, offset 3328] [from ]
!138 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"dnam", i32 214, i64 64, i64 64, i64 3392, i32 0, metadata !126} ; [ DW_TAG_member ] [dnam] [line 214, size 64, align 64, offset 3392] [from ]
!139 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"dnai", i32 215, i64 64, i64 64, i64 3456, i32 0, metadata !126} ; [ DW_TAG_member ] [dnai] [line 215, size 64, align 64, offset 3456] [from ]
!140 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"dna2", i32 216, i64 32, i64 32, i64 3520, i32 0, metadata !24} ; [ DW_TAG_member ] [dna2] [line 216, size 32, align 32, offset 3520] [from int]
!141 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"dna4", i32 217, i64 32, i64 32, i64 3552, i32 0, metadata !24} ; [ DW_TAG_member ] [dna4] [line 217, size 32, align 32, offset 3552] [from int]
!142 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"mu", i32 222, i64 32, i64 32, i64 3584, i32 0, metadata !100} ; [ DW_TAG_member ] [mu] [line 222, size 32, align 32, offset 3584] [from float]
!143 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"lambda", i32 223, i64 32, i64 32, i64 3616, i32 0, metadata !100} ; [ DW_TAG_member ] [lambda] [line 223, size 32, align 32, offset 3616] [from float]
!144 = metadata !{i32 786445, metadata !28, metadata !83, metadata !"flags", i32 225, i64 32, i64 32, i64 3648, i32 0, metadata !24} ; [ DW_TAG_member ] [flags] [line 225, size 32, align 32, offset 3648] [from int]
!145 = metadata !{metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151}
!146 = metadata !{i32 786689, metadata !79, metadata !"hmm", metadata !21, i32 16777403, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 187]
!147 = metadata !{i32 786689, metadata !79, metadata !"dsq", metadata !21, i32 33554619, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 187]
!148 = metadata !{i32 786689, metadata !79, metadata !"wt", metadata !21, i32 50331835, metadata !100, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [wt] [line 187]
!149 = metadata !{i32 786689, metadata !79, metadata !"tr", metadata !21, i32 67109051, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 187]
!150 = metadata !{i32 786688, metadata !79, metadata !"tpos", metadata !21, i32 189, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 189]
!151 = metadata !{i32 786688, metadata !79, metadata !"i", metadata !21, i32 190, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 190]
!152 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"P7TraceScore", metadata !"P7TraceScore", metadata !"", i32 313, metadata !153, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct.plan7_s*, i8*, %struct.p7trace_s*)* @P7TraceScore, null, null, metadata !155, i32 314} ; [ DW_TAG_subprogram ] [line 313] [def] [scope 314] [P7TraceScore]
!153 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!154 = metadata !{metadata !100, metadata !82, metadata !32, metadata !26}
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161}
!156 = metadata !{i32 786689, metadata !152, metadata !"hmm", metadata !21, i32 16777529, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 313]
!157 = metadata !{i32 786689, metadata !152, metadata !"dsq", metadata !21, i32 33554745, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 313]
!158 = metadata !{i32 786689, metadata !152, metadata !"tr", metadata !21, i32 50331961, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 313]
!159 = metadata !{i32 786688, metadata !152, metadata !"score", metadata !21, i32 315, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 315]
!160 = metadata !{i32 786688, metadata !152, metadata !"tpos", metadata !21, i32 316, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 316]
!161 = metadata !{i32 786688, metadata !152, metadata !"sym", metadata !21, i32 317, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 317]
!162 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"P7Traces2Alignment", metadata !"P7Traces2Alignment", metadata !"", i32 379, metadata !163, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.msa_struct* (i8**, %struct.seqinfo_s*, float*, i32, i32, %struct.p7trace_s**, i32)* @P7Traces2Alignment, null, null, metadata !261, i32 381} ; [ DW_TAG_subprogram ] [line 379] [def] [scope 381] [P7Traces2Alignment]
!163 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{metadata !165, metadata !171, metadata !238, metadata !109, metadata !24, metadata !24, metadata !25, metadata !24}
!165 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !166} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSA]
!166 = metadata !{i32 786454, metadata !1, null, metadata !"MSA", i32 177, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_typedef ] [MSA] [line 177, size 0, align 0, offset 0] [from msa_struct]
!167 = metadata !{i32 786451, metadata !168, null, metadata !"msa_struct", i32 112, i64 2880, i64 64, i32 0, i32 0, null, metadata !169, i32 0, null, null} ; [ DW_TAG_structure_type ] [msa_struct] [line 112, size 2880, align 64, offset 0] [from ]
!168 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/msa.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!169 = metadata !{metadata !170, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !193, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !205, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237}
!170 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"aseq", i32 115, i64 64, i64 64, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [aseq] [line 115, size 64, align 64, offset 0] [from ]
!171 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!172 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"sqname", i32 116, i64 64, i64 64, i64 64, i32 0, metadata !171} ; [ DW_TAG_member ] [sqname] [line 116, size 64, align 64, offset 64] [from ]
!173 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"wgt", i32 117, i64 64, i64 64, i64 128, i32 0, metadata !109} ; [ DW_TAG_member ] [wgt] [line 117, size 64, align 64, offset 128] [from ]
!174 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"alen", i32 118, i64 32, i64 32, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [alen] [line 118, size 32, align 32, offset 192] [from int]
!175 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"nseq", i32 119, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [nseq] [line 119, size 32, align 32, offset 224] [from int]
!176 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"flags", i32 123, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [flags] [line 123, size 32, align 32, offset 256] [from int]
!177 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"type", i32 124, i64 32, i64 32, i64 288, i32 0, metadata !24} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from int]
!178 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"name", i32 125, i64 64, i64 64, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [name] [line 125, size 64, align 64, offset 320] [from ]
!179 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"desc", i32 126, i64 64, i64 64, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [desc] [line 126, size 64, align 64, offset 384] [from ]
!180 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"acc", i32 127, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ] [acc] [line 127, size 64, align 64, offset 448] [from ]
!181 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"au", i32 128, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [au] [line 128, size 64, align 64, offset 512] [from ]
!182 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"ss_cons", i32 129, i64 64, i64 64, i64 576, i32 0, metadata !32} ; [ DW_TAG_member ] [ss_cons] [line 129, size 64, align 64, offset 576] [from ]
!183 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"sa_cons", i32 130, i64 64, i64 64, i64 640, i32 0, metadata !32} ; [ DW_TAG_member ] [sa_cons] [line 130, size 64, align 64, offset 640] [from ]
!184 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"rf", i32 131, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [rf] [line 131, size 64, align 64, offset 704] [from ]
!185 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"sqacc", i32 132, i64 64, i64 64, i64 768, i32 0, metadata !171} ; [ DW_TAG_member ] [sqacc] [line 132, size 64, align 64, offset 768] [from ]
!186 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"sqdesc", i32 133, i64 64, i64 64, i64 832, i32 0, metadata !171} ; [ DW_TAG_member ] [sqdesc] [line 133, size 64, align 64, offset 832] [from ]
!187 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"ss", i32 134, i64 64, i64 64, i64 896, i32 0, metadata !171} ; [ DW_TAG_member ] [ss] [line 134, size 64, align 64, offset 896] [from ]
!188 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"sa", i32 135, i64 64, i64 64, i64 960, i32 0, metadata !171} ; [ DW_TAG_member ] [sa] [line 135, size 64, align 64, offset 960] [from ]
!189 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"cutoff", i32 136, i64 192, i64 32, i64 1024, i32 0, metadata !190} ; [ DW_TAG_member ] [cutoff] [line 136, size 192, align 32, offset 1024] [from ]
!190 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !100, metadata !191, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from float]
!191 = metadata !{metadata !192}
!192 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!193 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"cutoff_is_set", i32 137, i64 192, i64 32, i64 1216, i32 0, metadata !194} ; [ DW_TAG_member ] [cutoff_is_set] [line 137, size 192, align 32, offset 1216] [from ]
!194 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !24, metadata !191, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!195 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"comment", i32 144, i64 64, i64 64, i64 1408, i32 0, metadata !171} ; [ DW_TAG_member ] [comment] [line 144, size 64, align 64, offset 1408] [from ]
!196 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"ncomment", i32 145, i64 32, i64 32, i64 1472, i32 0, metadata !24} ; [ DW_TAG_member ] [ncomment] [line 145, size 32, align 32, offset 1472] [from int]
!197 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"alloc_ncomment", i32 146, i64 32, i64 32, i64 1504, i32 0, metadata !24} ; [ DW_TAG_member ] [alloc_ncomment] [line 146, size 32, align 32, offset 1504] [from int]
!198 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"gf_tag", i32 148, i64 64, i64 64, i64 1536, i32 0, metadata !171} ; [ DW_TAG_member ] [gf_tag] [line 148, size 64, align 64, offset 1536] [from ]
!199 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"gf", i32 149, i64 64, i64 64, i64 1600, i32 0, metadata !171} ; [ DW_TAG_member ] [gf] [line 149, size 64, align 64, offset 1600] [from ]
!200 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"ngf", i32 150, i64 32, i64 32, i64 1664, i32 0, metadata !24} ; [ DW_TAG_member ] [ngf] [line 150, size 32, align 32, offset 1664] [from int]
!201 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"alloc_ngf", i32 151, i64 32, i64 32, i64 1696, i32 0, metadata !24} ; [ DW_TAG_member ] [alloc_ngf] [line 151, size 32, align 32, offset 1696] [from int]
!202 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"gs_tag", i32 153, i64 64, i64 64, i64 1728, i32 0, metadata !171} ; [ DW_TAG_member ] [gs_tag] [line 153, size 64, align 64, offset 1728] [from ]
!203 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"gs", i32 154, i64 64, i64 64, i64 1792, i32 0, metadata !204} ; [ DW_TAG_member ] [gs] [line 154, size 64, align 64, offset 1792] [from ]
!204 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!205 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"gs_idx", i32 155, i64 64, i64 64, i64 1856, i32 0, metadata !206} ; [ DW_TAG_member ] [gs_idx] [line 155, size 64, align 64, offset 1856] [from ]
!206 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !207} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GKI]
!207 = metadata !{i32 786454, metadata !168, null, metadata !"GKI", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !208} ; [ DW_TAG_typedef ] [GKI] [line 42, size 0, align 0, offset 0] [from ]
!208 = metadata !{i32 786451, metadata !209, null, metadata !"", i32 36, i64 192, i64 64, i32 0, i32 0, null, metadata !210, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 192, align 64, offset 0] [from ]
!209 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/gki.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!210 = metadata !{metadata !211, metadata !219, metadata !220, metadata !221}
!211 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"table", i32 37, i64 64, i64 64, i64 0, i32 0, metadata !212} ; [ DW_TAG_member ] [table] [line 37, size 64, align 64, offset 0] [from ]
!212 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !213} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!213 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gki_elem]
!214 = metadata !{i32 786451, metadata !209, null, metadata !"gki_elem", i32 26, i64 192, i64 64, i32 0, i32 0, null, metadata !215, i32 0, null, null} ; [ DW_TAG_structure_type ] [gki_elem] [line 26, size 192, align 64, offset 0] [from ]
!215 = metadata !{metadata !216, metadata !217, metadata !218}
!216 = metadata !{i32 786445, metadata !209, metadata !214, metadata !"key", i32 27, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [key] [line 27, size 64, align 64, offset 0] [from ]
!217 = metadata !{i32 786445, metadata !209, metadata !214, metadata !"idx", i32 28, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [idx] [line 28, size 32, align 32, offset 64] [from int]
!218 = metadata !{i32 786445, metadata !209, metadata !214, metadata !"nxt", i32 29, i64 64, i64 64, i64 128, i32 0, metadata !213} ; [ DW_TAG_member ] [nxt] [line 29, size 64, align 64, offset 128] [from ]
!219 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"primelevel", i32 39, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [primelevel] [line 39, size 32, align 32, offset 64] [from int]
!220 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"nhash", i32 40, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [nhash] [line 40, size 32, align 32, offset 96] [from int]
!221 = metadata !{i32 786445, metadata !209, metadata !208, metadata !"nkeys", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [nkeys] [line 41, size 32, align 32, offset 128] [from int]
!222 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"ngs", i32 156, i64 32, i64 32, i64 1920, i32 0, metadata !24} ; [ DW_TAG_member ] [ngs] [line 156, size 32, align 32, offset 1920] [from int]
!223 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"gc_tag", i32 158, i64 64, i64 64, i64 1984, i32 0, metadata !171} ; [ DW_TAG_member ] [gc_tag] [line 158, size 64, align 64, offset 1984] [from ]
!224 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"gc", i32 159, i64 64, i64 64, i64 2048, i32 0, metadata !171} ; [ DW_TAG_member ] [gc] [line 159, size 64, align 64, offset 2048] [from ]
!225 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"gc_idx", i32 160, i64 64, i64 64, i64 2112, i32 0, metadata !206} ; [ DW_TAG_member ] [gc_idx] [line 160, size 64, align 64, offset 2112] [from ]
!226 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"ngc", i32 161, i64 32, i64 32, i64 2176, i32 0, metadata !24} ; [ DW_TAG_member ] [ngc] [line 161, size 32, align 32, offset 2176] [from int]
!227 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"gr_tag", i32 163, i64 64, i64 64, i64 2240, i32 0, metadata !171} ; [ DW_TAG_member ] [gr_tag] [line 163, size 64, align 64, offset 2240] [from ]
!228 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"gr", i32 164, i64 64, i64 64, i64 2304, i32 0, metadata !204} ; [ DW_TAG_member ] [gr] [line 164, size 64, align 64, offset 2304] [from ]
!229 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"gr_idx", i32 165, i64 64, i64 64, i64 2368, i32 0, metadata !206} ; [ DW_TAG_member ] [gr_idx] [line 165, size 64, align 64, offset 2368] [from ]
!230 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"ngr", i32 166, i64 32, i64 32, i64 2432, i32 0, metadata !24} ; [ DW_TAG_member ] [ngr] [line 166, size 32, align 32, offset 2432] [from int]
!231 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"index", i32 170, i64 64, i64 64, i64 2496, i32 0, metadata !206} ; [ DW_TAG_member ] [index] [line 170, size 64, align 64, offset 2496] [from ]
!232 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"nseqalloc", i32 171, i64 32, i64 32, i64 2560, i32 0, metadata !24} ; [ DW_TAG_member ] [nseqalloc] [line 171, size 32, align 32, offset 2560] [from int]
!233 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"nseqlump", i32 172, i64 32, i64 32, i64 2592, i32 0, metadata !24} ; [ DW_TAG_member ] [nseqlump] [line 172, size 32, align 32, offset 2592] [from int]
!234 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"sqlen", i32 173, i64 64, i64 64, i64 2624, i32 0, metadata !35} ; [ DW_TAG_member ] [sqlen] [line 173, size 64, align 64, offset 2624] [from ]
!235 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"sslen", i32 174, i64 64, i64 64, i64 2688, i32 0, metadata !35} ; [ DW_TAG_member ] [sslen] [line 174, size 64, align 64, offset 2688] [from ]
!236 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"salen", i32 175, i64 64, i64 64, i64 2752, i32 0, metadata !35} ; [ DW_TAG_member ] [salen] [line 175, size 64, align 64, offset 2752] [from ]
!237 = metadata !{i32 786445, metadata !168, metadata !167, metadata !"lastidx", i32 176, i64 32, i64 32, i64 2816, i32 0, metadata !24} ; [ DW_TAG_member ] [lastidx] [line 176, size 32, align 32, offset 2816] [from int]
!238 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !239} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SQINFO]
!239 = metadata !{i32 786454, metadata !1, null, metadata !"SQINFO", i32 98, i64 0, i64 0, i64 0, i32 0, metadata !240} ; [ DW_TAG_typedef ] [SQINFO] [line 98, size 0, align 0, offset 0] [from seqinfo_s]
!240 = metadata !{i32 786451, metadata !241, null, metadata !"seqinfo_s", i32 84, i64 2880, i64 64, i32 0, i32 0, null, metadata !242, i32 0, null, null} ; [ DW_TAG_structure_type ] [seqinfo_s] [line 84, size 2880, align 64, offset 0] [from ]
!241 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/squid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!242 = metadata !{metadata !243, metadata !244, metadata !248, metadata !249, metadata !250, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260}
!243 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"flags", i32 85, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [flags] [line 85, size 32, align 32, offset 0] [from int]
!244 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"name", i32 86, i64 512, i64 8, i64 32, i32 0, metadata !245} ; [ DW_TAG_member ] [name] [line 86, size 512, align 8, offset 32] [from ]
!245 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 8, i32 0, i32 0, metadata !33, metadata !246, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 8, offset 0] [from char]
!246 = metadata !{metadata !247}
!247 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!248 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"id", i32 87, i64 512, i64 8, i64 544, i32 0, metadata !245} ; [ DW_TAG_member ] [id] [line 87, size 512, align 8, offset 544] [from ]
!249 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"acc", i32 88, i64 512, i64 8, i64 1056, i32 0, metadata !245} ; [ DW_TAG_member ] [acc] [line 88, size 512, align 8, offset 1056] [from ]
!250 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"desc", i32 89, i64 1024, i64 8, i64 1568, i32 0, metadata !251} ; [ DW_TAG_member ] [desc] [line 89, size 1024, align 8, offset 1568] [from ]
!251 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !33, metadata !252, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!252 = metadata !{metadata !253}
!253 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!254 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"len", i32 90, i64 32, i64 32, i64 2592, i32 0, metadata !24} ; [ DW_TAG_member ] [len] [line 90, size 32, align 32, offset 2592] [from int]
!255 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"start", i32 91, i64 32, i64 32, i64 2624, i32 0, metadata !24} ; [ DW_TAG_member ] [start] [line 91, size 32, align 32, offset 2624] [from int]
!256 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"stop", i32 92, i64 32, i64 32, i64 2656, i32 0, metadata !24} ; [ DW_TAG_member ] [stop] [line 92, size 32, align 32, offset 2656] [from int]
!257 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"olen", i32 93, i64 32, i64 32, i64 2688, i32 0, metadata !24} ; [ DW_TAG_member ] [olen] [line 93, size 32, align 32, offset 2688] [from int]
!258 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"type", i32 94, i64 32, i64 32, i64 2720, i32 0, metadata !24} ; [ DW_TAG_member ] [type] [line 94, size 32, align 32, offset 2720] [from int]
!259 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"ss", i32 95, i64 64, i64 64, i64 2752, i32 0, metadata !32} ; [ DW_TAG_member ] [ss] [line 95, size 64, align 64, offset 2752] [from ]
!260 = metadata !{i32 786445, metadata !241, metadata !240, metadata !"sa", i32 96, i64 64, i64 64, i64 2816, i32 0, metadata !32} ; [ DW_TAG_member ] [sa] [line 96, size 64, align 64, offset 2816] [from ]
!261 = metadata !{metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !288}
!262 = metadata !{i32 786689, metadata !162, metadata !"dsq", metadata !21, i32 16777595, metadata !171, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 379]
!263 = metadata !{i32 786689, metadata !162, metadata !"sqinfo", metadata !21, i32 33554811, metadata !238, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sqinfo] [line 379]
!264 = metadata !{i32 786689, metadata !162, metadata !"wgt", metadata !21, i32 50332027, metadata !109, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [wgt] [line 379]
!265 = metadata !{i32 786689, metadata !162, metadata !"nseq", metadata !21, i32 67109243, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 379]
!266 = metadata !{i32 786689, metadata !162, metadata !"mlen", metadata !21, i32 83886459, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mlen] [line 379]
!267 = metadata !{i32 786689, metadata !162, metadata !"tr", metadata !21, i32 100663676, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 380]
!268 = metadata !{i32 786689, metadata !162, metadata !"matchonly", metadata !21, i32 117440892, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [matchonly] [line 380]
!269 = metadata !{i32 786688, metadata !162, metadata !"msa", metadata !21, i32 382, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msa] [line 382]
!270 = metadata !{i32 786688, metadata !162, metadata !"idx", metadata !21, i32 383, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 383]
!271 = metadata !{i32 786688, metadata !162, metadata !"alen", metadata !21, i32 384, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alen] [line 384]
!272 = metadata !{i32 786688, metadata !162, metadata !"inserts", metadata !21, i32 385, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inserts] [line 385]
!273 = metadata !{i32 786688, metadata !162, metadata !"matmap", metadata !21, i32 386, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [matmap] [line 386]
!274 = metadata !{i32 786688, metadata !162, metadata !"nins", metadata !21, i32 387, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nins] [line 387]
!275 = metadata !{i32 786688, metadata !162, metadata !"apos", metadata !21, i32 388, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 388]
!276 = metadata !{i32 786688, metadata !162, metadata !"rpos", metadata !21, i32 389, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rpos] [line 389]
!277 = metadata !{i32 786688, metadata !162, metadata !"tpos", metadata !21, i32 390, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 390]
!278 = metadata !{i32 786688, metadata !162, metadata !"statetype", metadata !21, i32 391, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [statetype] [line 391]
!279 = metadata !{i32 786688, metadata !162, metadata !"k", metadata !21, i32 392, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 392]
!280 = metadata !{i32 786688, metadata !281, metadata !"__res", metadata !21, i32 489, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 489]
!281 = metadata !{i32 786443, metadata !1, metadata !282, i32 489, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!282 = metadata !{i32 786443, metadata !1, metadata !283, i32 488, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!283 = metadata !{i32 786443, metadata !1, metadata !284, i32 485, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!284 = metadata !{i32 786443, metadata !1, metadata !285, i32 472, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!285 = metadata !{i32 786443, metadata !1, metadata !286, i32 472, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!286 = metadata !{i32 786443, metadata !1, metadata !287, i32 463, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!287 = metadata !{i32 786443, metadata !1, metadata !162, i32 463, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!288 = metadata !{i32 786688, metadata !289, metadata !"__res", metadata !21, i32 497, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 497]
!289 = metadata !{i32 786443, metadata !1, metadata !290, i32 497, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!290 = metadata !{i32 786443, metadata !1, metadata !291, i32 496, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!291 = metadata !{i32 786443, metadata !1, metadata !284, i32 493, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!292 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"TransitionScoreLookup", metadata !"TransitionScoreLookup", metadata !"", i32 578, metadata !293, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.plan7_s*, i8, i32, i8, i32)* @TransitionScoreLookup, null, null, metadata !295, i32 580} ; [ DW_TAG_subprogram ] [line 578] [def] [scope 580] [TransitionScoreLookup]
!293 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !294, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!294 = metadata !{metadata !24, metadata !82, metadata !33, metadata !24, metadata !33, metadata !24}
!295 = metadata !{metadata !296, metadata !297, metadata !298, metadata !299, metadata !300}
!296 = metadata !{i32 786689, metadata !292, metadata !"hmm", metadata !21, i32 16777794, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 578]
!297 = metadata !{i32 786689, metadata !292, metadata !"st1", metadata !21, i32 33555010, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [st1] [line 578]
!298 = metadata !{i32 786689, metadata !292, metadata !"k1", metadata !21, i32 50332226, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k1] [line 578]
!299 = metadata !{i32 786689, metadata !292, metadata !"st2", metadata !21, i32 67109443, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [st2] [line 579]
!300 = metadata !{i32 786689, metadata !292, metadata !"k2", metadata !21, i32 83886659, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k2] [line 579]
!301 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"CreateFancyAli", metadata !"CreateFancyAli", metadata !"", i32 667, metadata !302, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.fancyali_s* (%struct.p7trace_s*, %struct.plan7_s*, i8*, i8*)* @CreateFancyAli, null, null, metadata !317, i32 669} ; [ DW_TAG_subprogram ] [line 667] [def] [scope 669] [CreateFancyAli]
!302 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!303 = metadata !{metadata !304, metadata !26, metadata !82, metadata !32, metadata !32}
!304 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !305} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from fancyali_s]
!305 = metadata !{i32 786451, metadata !28, null, metadata !"fancyali_s", i32 447, i64 576, i64 64, i32 0, i32 0, null, metadata !306, i32 0, null, null} ; [ DW_TAG_structure_type ] [fancyali_s] [line 447, size 576, align 64, offset 0] [from ]
!306 = metadata !{metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316}
!307 = metadata !{i32 786445, metadata !28, metadata !305, metadata !"rfline", i32 448, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [rfline] [line 448, size 64, align 64, offset 0] [from ]
!308 = metadata !{i32 786445, metadata !28, metadata !305, metadata !"csline", i32 449, i64 64, i64 64, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [csline] [line 449, size 64, align 64, offset 64] [from ]
!309 = metadata !{i32 786445, metadata !28, metadata !305, metadata !"model", i32 450, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [model] [line 450, size 64, align 64, offset 128] [from ]
!310 = metadata !{i32 786445, metadata !28, metadata !305, metadata !"mline", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [mline] [line 451, size 64, align 64, offset 192] [from ]
!311 = metadata !{i32 786445, metadata !28, metadata !305, metadata !"aseq", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [aseq] [line 452, size 64, align 64, offset 256] [from ]
!312 = metadata !{i32 786445, metadata !28, metadata !305, metadata !"len", i32 453, i64 32, i64 32, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [len] [line 453, size 32, align 32, offset 320] [from int]
!313 = metadata !{i32 786445, metadata !28, metadata !305, metadata !"query", i32 454, i64 64, i64 64, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [query] [line 454, size 64, align 64, offset 384] [from ]
!314 = metadata !{i32 786445, metadata !28, metadata !305, metadata !"target", i32 455, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ] [target] [line 455, size 64, align 64, offset 448] [from ]
!315 = metadata !{i32 786445, metadata !28, metadata !305, metadata !"sqfrom", i32 456, i64 32, i64 32, i64 512, i32 0, metadata !24} ; [ DW_TAG_member ] [sqfrom] [line 456, size 32, align 32, offset 512] [from int]
!316 = metadata !{i32 786445, metadata !28, metadata !305, metadata !"sqto", i32 457, i64 32, i64 32, i64 544, i32 0, metadata !24} ; [ DW_TAG_member ] [sqto] [line 457, size 32, align 32, offset 544] [from int]
!317 = metadata !{metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !332, metadata !334, metadata !337, metadata !339}
!318 = metadata !{i32 786689, metadata !301, metadata !"tr", metadata !21, i32 16777883, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 667]
!319 = metadata !{i32 786689, metadata !301, metadata !"hmm", metadata !21, i32 33555099, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 667]
!320 = metadata !{i32 786689, metadata !301, metadata !"dsq", metadata !21, i32 50332316, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dsq] [line 668]
!321 = metadata !{i32 786689, metadata !301, metadata !"name", metadata !21, i32 67109532, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 668]
!322 = metadata !{i32 786688, metadata !301, metadata !"ali", metadata !21, i32 670, metadata !304, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ali] [line 670]
!323 = metadata !{i32 786688, metadata !301, metadata !"tpos", metadata !21, i32 671, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 671]
!324 = metadata !{i32 786688, metadata !301, metadata !"bestsym", metadata !21, i32 672, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bestsym] [line 672]
!325 = metadata !{i32 786688, metadata !301, metadata !"mthresh", metadata !21, i32 673, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mthresh] [line 673]
!326 = metadata !{i32 786688, metadata !327, metadata !"__res", metadata !21, i32 734, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 734]
!327 = metadata !{i32 786443, metadata !1, metadata !328, i32 734, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!328 = metadata !{i32 786443, metadata !1, metadata !329, i32 733, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!329 = metadata !{i32 786443, metadata !1, metadata !330, i32 723, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!330 = metadata !{i32 786443, metadata !1, metadata !331, i32 722, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!331 = metadata !{i32 786443, metadata !1, metadata !301, i32 722, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!332 = metadata !{i32 786688, metadata !333, metadata !"__res", metadata !21, i32 752, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 752]
!333 = metadata !{i32 786443, metadata !1, metadata !329, i32 752, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!334 = metadata !{i32 786688, metadata !335, metadata !"__res", metadata !21, i32 757, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 757]
!335 = metadata !{i32 786443, metadata !1, metadata !336, i32 757, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!336 = metadata !{i32 786443, metadata !1, metadata !329, i32 754, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!337 = metadata !{i32 786688, metadata !338, metadata !"__res", metadata !21, i32 770, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 770]
!338 = metadata !{i32 786443, metadata !1, metadata !329, i32 770, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!339 = metadata !{i32 786688, metadata !340, metadata !"__res", metadata !21, i32 778, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 778]
!340 = metadata !{i32 786443, metadata !1, metadata !329, i32 778, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!341 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"PrintFancyAli", metadata !"PrintFancyAli", metadata !"", i32 809, metadata !342, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.fancyali_s*)* @PrintFancyAli, null, null, metadata !397, i32 810} ; [ DW_TAG_subprogram ] [line 809] [def] [scope 810] [PrintFancyAli]
!342 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !343, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!343 = metadata !{null, metadata !344, metadata !304}
!344 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !345} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!345 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !346} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!346 = metadata !{i32 786451, metadata !347, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !348, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!347 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!348 = metadata !{metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !369, metadata !370, metadata !371, metadata !372, metadata !375, metadata !377, metadata !379, metadata !383, metadata !385, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !394, metadata !395}
!349 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!350 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!351 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!352 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!353 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!354 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!355 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!356 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!357 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!358 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!359 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!360 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!361 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !362} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!362 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !363} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!363 = metadata !{i32 786451, metadata !347, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !364, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!364 = metadata !{metadata !365, metadata !366, metadata !368}
!365 = metadata !{i32 786445, metadata !347, metadata !363, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !362} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!366 = metadata !{i32 786445, metadata !347, metadata !363, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !367} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!367 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !346} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!368 = metadata !{i32 786445, metadata !347, metadata !363, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!369 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !367} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!370 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !24} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!371 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !24} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!372 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !373} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!373 = metadata !{i32 786454, metadata !347, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !374} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!374 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!375 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !376} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!376 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!377 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !378} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!378 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!379 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !380} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!380 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !33, metadata !381, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!381 = metadata !{metadata !382}
!382 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!383 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !384} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!384 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!385 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !386} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!386 = metadata !{i32 786454, metadata !347, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !374} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!387 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !384} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!388 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !384} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!389 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !384} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!390 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !384} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!391 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !392} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!392 = metadata !{i32 786454, metadata !347, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !393} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!393 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!394 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !24} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!395 = metadata !{i32 786445, metadata !347, metadata !346, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !396} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!396 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !33, metadata !122, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!397 = metadata !{metadata !398, metadata !399, metadata !400, metadata !404, metadata !405, metadata !406, metadata !407}
!398 = metadata !{i32 786689, metadata !341, metadata !"fp", metadata !21, i32 16778025, metadata !344, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 809]
!399 = metadata !{i32 786689, metadata !341, metadata !"ali", metadata !21, i32 33555241, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ali] [line 809]
!400 = metadata !{i32 786688, metadata !341, metadata !"buffer", metadata !21, i32 811, metadata !401, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 811]
!401 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 408, i64 8, i32 0, i32 0, metadata !33, metadata !402, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 408, align 8, offset 0] [from char]
!402 = metadata !{metadata !403}
!403 = metadata !{i32 786465, i64 0, i64 51}      ; [ DW_TAG_subrange_type ] [0, 50]
!404 = metadata !{i32 786688, metadata !341, metadata !"starti", metadata !21, i32 812, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [starti] [line 812]
!405 = metadata !{i32 786688, metadata !341, metadata !"endi", metadata !21, i32 812, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [endi] [line 812]
!406 = metadata !{i32 786688, metadata !341, metadata !"pos", metadata !21, i32 813, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 813]
!407 = metadata !{i32 786688, metadata !341, metadata !"i", metadata !21, i32 814, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 814]
!408 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"TraceDecompose", metadata !"TraceDecompose", metadata !"", i32 874, metadata !409, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.p7trace_s*, %struct.p7trace_s***, i32*)* @TraceDecompose, null, null, metadata !412, i32 875} ; [ DW_TAG_subprogram ] [line 874] [def] [scope 875] [TraceDecompose]
!409 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!410 = metadata !{null, metadata !26, metadata !411, metadata !35}
!411 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!412 = metadata !{metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420}
!413 = metadata !{i32 786689, metadata !408, metadata !"otr", metadata !21, i32 16778090, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [otr] [line 874]
!414 = metadata !{i32 786689, metadata !408, metadata !"ret_tr", metadata !21, i32 33555306, metadata !411, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 874]
!415 = metadata !{i32 786689, metadata !408, metadata !"ret_ntr", metadata !21, i32 50332522, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_ntr] [line 874]
!416 = metadata !{i32 786688, metadata !408, metadata !"tr", metadata !21, i32 876, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 876]
!417 = metadata !{i32 786688, metadata !408, metadata !"ntr", metadata !21, i32 877, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntr] [line 877]
!418 = metadata !{i32 786688, metadata !408, metadata !"i", metadata !21, i32 878, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 878]
!419 = metadata !{i32 786688, metadata !408, metadata !"j", metadata !21, i32 878, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 878]
!420 = metadata !{i32 786688, metadata !408, metadata !"idx", metadata !21, i32 879, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 879]
!421 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"TraceDomainNumber", metadata !"TraceDomainNumber", metadata !"", i32 947, metadata !422, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.p7trace_s*)* @TraceDomainNumber, null, null, metadata !424, i32 948} ; [ DW_TAG_subprogram ] [line 947] [def] [scope 948] [TraceDomainNumber]
!422 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !423, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!423 = metadata !{metadata !24, metadata !26}
!424 = metadata !{metadata !425, metadata !426, metadata !427}
!425 = metadata !{i32 786689, metadata !421, metadata !"tr", metadata !21, i32 16778163, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 947]
!426 = metadata !{i32 786688, metadata !421, metadata !"i", metadata !21, i32 949, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 949]
!427 = metadata !{i32 786688, metadata !421, metadata !"ndom", metadata !21, i32 950, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndom] [line 950]
!428 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"TraceSimpleBounds", metadata !"TraceSimpleBounds", metadata !"", i32 974, metadata !429, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.p7trace_s*, i32*, i32*, i32*, i32*)* @TraceSimpleBounds, null, null, metadata !431, i32 976} ; [ DW_TAG_subprogram ] [line 974] [def] [scope 976] [TraceSimpleBounds]
!429 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !430, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!430 = metadata !{null, metadata !26, metadata !35, metadata !35, metadata !35, metadata !35}
!431 = metadata !{metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441}
!432 = metadata !{i32 786689, metadata !428, metadata !"tr", metadata !21, i32 16778190, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tr] [line 974]
!433 = metadata !{i32 786689, metadata !428, metadata !"ret_i1", metadata !21, i32 33555406, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_i1] [line 974]
!434 = metadata !{i32 786689, metadata !428, metadata !"ret_i2", metadata !21, i32 50332622, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_i2] [line 974]
!435 = metadata !{i32 786689, metadata !428, metadata !"ret_k1", metadata !21, i32 67109839, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_k1] [line 975]
!436 = metadata !{i32 786689, metadata !428, metadata !"ret_k2", metadata !21, i32 83887055, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_k2] [line 975]
!437 = metadata !{i32 786688, metadata !428, metadata !"i1", metadata !21, i32 977, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 977]
!438 = metadata !{i32 786688, metadata !428, metadata !"i2", metadata !21, i32 977, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2] [line 977]
!439 = metadata !{i32 786688, metadata !428, metadata !"k1", metadata !21, i32 977, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k1] [line 977]
!440 = metadata !{i32 786688, metadata !428, metadata !"k2", metadata !21, i32 977, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k2] [line 977]
!441 = metadata !{i32 786688, metadata !428, metadata !"tpos", metadata !21, i32 977, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 977]
!442 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"MasterTraceFromMap", metadata !"MasterTraceFromMap", metadata !"", i32 1036, metadata !443, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.p7trace_s* (i32*, i32, i32)* @MasterTraceFromMap, null, null, metadata !445, i32 1037} ; [ DW_TAG_subprogram ] [line 1036] [def] [scope 1037] [MasterTraceFromMap]
!443 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !444, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!444 = metadata !{metadata !26, metadata !35, metadata !24, metadata !24}
!445 = metadata !{metadata !446, metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452}
!446 = metadata !{i32 786689, metadata !442, metadata !"map", metadata !21, i32 16778252, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [map] [line 1036]
!447 = metadata !{i32 786689, metadata !442, metadata !"M", metadata !21, i32 33555468, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 1036]
!448 = metadata !{i32 786689, metadata !442, metadata !"alen", metadata !21, i32 50332684, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alen] [line 1036]
!449 = metadata !{i32 786688, metadata !442, metadata !"tr", metadata !21, i32 1038, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 1038]
!450 = metadata !{i32 786688, metadata !442, metadata !"tpos", metadata !21, i32 1039, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 1039]
!451 = metadata !{i32 786688, metadata !442, metadata !"apos", metadata !21, i32 1040, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [apos] [line 1040]
!452 = metadata !{i32 786688, metadata !442, metadata !"k", metadata !21, i32 1041, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 1041]
!453 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"ImposeMasterTrace", metadata !"ImposeMasterTrace", metadata !"", i32 1118, metadata !454, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**, i32, %struct.p7trace_s*, %struct.p7trace_s***)* @ImposeMasterTrace, null, null, metadata !456, i32 1119} ; [ DW_TAG_subprogram ] [line 1118] [def] [scope 1119] [ImposeMasterTrace]
!454 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !455, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!455 = metadata !{null, metadata !171, metadata !24, metadata !26, metadata !411}
!456 = metadata !{metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465}
!457 = metadata !{i32 786689, metadata !453, metadata !"aseq", metadata !21, i32 16778334, metadata !171, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aseq] [line 1118]
!458 = metadata !{i32 786689, metadata !453, metadata !"nseq", metadata !21, i32 33555550, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nseq] [line 1118]
!459 = metadata !{i32 786689, metadata !453, metadata !"mtr", metadata !21, i32 50332766, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtr] [line 1118]
!460 = metadata !{i32 786689, metadata !453, metadata !"ret_tr", metadata !21, i32 67109982, metadata !411, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_tr] [line 1118]
!461 = metadata !{i32 786688, metadata !453, metadata !"tr", metadata !21, i32 1120, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tr] [line 1120]
!462 = metadata !{i32 786688, metadata !453, metadata !"idx", metadata !21, i32 1121, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 1121]
!463 = metadata !{i32 786688, metadata !453, metadata !"i", metadata !21, i32 1122, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1122]
!464 = metadata !{i32 786688, metadata !453, metadata !"tpos", metadata !21, i32 1123, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tpos] [line 1123]
!465 = metadata !{i32 786688, metadata !453, metadata !"mpos", metadata !21, i32 1124, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mpos] [line 1124]
!466 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"rightjustify", metadata !"rightjustify", metadata !"", i32 1197, metadata !467, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @rightjustify, null, null, metadata !469, i32 1198} ; [ DW_TAG_subprogram ] [line 1197] [local] [def] [scope 1198] [rightjustify]
!467 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !468, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!468 = metadata !{null, metadata !32, metadata !24}
!469 = metadata !{metadata !470, metadata !471, metadata !472, metadata !473}
!470 = metadata !{i32 786689, metadata !466, metadata !"s", metadata !21, i32 16778413, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1197]
!471 = metadata !{i32 786689, metadata !466, metadata !"n", metadata !21, i32 33555629, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1197]
!472 = metadata !{i32 786688, metadata !466, metadata !"npos", metadata !21, i32 1199, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npos] [line 1199]
!473 = metadata !{i32 786688, metadata !466, metadata !"opos", metadata !21, i32 1200, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opos] [line 1200]
!474 = metadata !{i32 36, i32 0, metadata !20, null}
!475 = metadata !{i32 40, i32 0, metadata !20, null}
!476 = metadata !{i32 41, i32 0, metadata !20, null}
!477 = metadata !{metadata !"any pointer", metadata !478}
!478 = metadata !{metadata !"omnipotent char", metadata !479}
!479 = metadata !{metadata !"Simple C/C++ TBAA"}
!480 = metadata !{i32 42, i32 0, metadata !20, null}
!481 = metadata !{i32 43, i32 0, metadata !20, null}
!482 = metadata !{i32 44, i32 0, metadata !20, null}
!483 = metadata !{i32 45, i32 0, metadata !20, null}
!484 = metadata !{i32 47, i32 0, metadata !41, null}
!485 = metadata !{i32 49, i32 0, metadata !41, null}
!486 = metadata !{i32 50, i32 0, metadata !41, null}
!487 = metadata !{i32 51, i32 0, metadata !41, null}
!488 = metadata !{i32 52, i32 0, metadata !41, null}
!489 = metadata !{i32 54, i32 0, metadata !47, null}
!490 = metadata !{i32 56, i32 0, metadata !47, null}
!491 = metadata !{i32 57, i32 0, metadata !47, null}
!492 = metadata !{i32 58, i32 0, metadata !47, null} ; [ DW_TAG_imported_module ]
!493 = metadata !{i32 59, i32 0, metadata !47, null}
!494 = metadata !{i32 60, i32 0, metadata !47, null}
!495 = metadata !{i32 79, i32 0, metadata !52, null}
!496 = metadata !{i32 81, i32 0, metadata !52, null}
!497 = metadata !{i32 82, i32 0, metadata !52, null}
!498 = metadata !{metadata !"int", metadata !478}
!499 = metadata !{i32 83, i32 0, metadata !52, null}
!500 = metadata !{i32 84, i32 0, metadata !52, null}
!501 = metadata !{i32 105, i32 0, metadata !61, null}
!502 = metadata !{i32 110, i32 0, metadata !61, null}
!503 = metadata !{i32 111, i32 0, metadata !504, null}
!504 = metadata !{i32 786443, metadata !1, metadata !61, i32 111, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!505 = metadata !{i32 112, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !61, i32 112, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!507 = metadata !{i32 113, i32 0, metadata !61, null}
!508 = metadata !{i32 114, i32 0, metadata !61, null}
!509 = metadata !{i32 115, i32 0, metadata !61, null}
!510 = metadata !{i32 140, i32 0, metadata !71, null}
!511 = metadata !{i32 149, i32 0, metadata !71, null}
!512 = metadata !{i32 150, i32 0, metadata !71, null}
!513 = metadata !{i32 151, i32 0, metadata !71, null}
!514 = metadata !{i32 155, i32 0, metadata !515, null}
!515 = metadata !{i32 786443, metadata !1, metadata !71, i32 155, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!516 = metadata !{i32 157, i32 0, metadata !517, null}
!517 = metadata !{i32 786443, metadata !1, metadata !515, i32 156, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!518 = metadata !{i32 158, i32 0, metadata !517, null}
!519 = metadata !{i32 159, i32 0, metadata !517, null}
!520 = metadata !{i32 164, i32 0, metadata !71, null}
!521 = metadata !{i32 165, i32 0, metadata !71, null}
!522 = metadata !{i32 166, i32 0, metadata !71, null}
!523 = metadata !{i32 167, i32 0, metadata !71, null}
!524 = metadata !{i32 168, i32 0, metadata !71, null}
!525 = metadata !{i32 169, i32 0, metadata !71, null}
!526 = metadata !{i32 170, i32 0, metadata !71, null}
!527 = metadata !{i32 187, i32 0, metadata !79, null}
!528 = metadata !{i32 192, i32 0, metadata !529, null}
!529 = metadata !{i32 786443, metadata !1, metadata !79, i32 192, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!530 = metadata !{i32 194, i32 0, metadata !531, null}
!531 = metadata !{i32 786443, metadata !1, metadata !529, i32 193, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!532 = metadata !{i32 199, i32 0, metadata !531, null}
!533 = metadata !{i32 211, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !1, metadata !535, i32 210, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!535 = metadata !{i32 786443, metadata !1, metadata !531, i32 206, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!536 = metadata !{i32 212, i32 0, metadata !534, null}
!537 = metadata !{i32 221, i32 0, metadata !538, null}
!538 = metadata !{i32 786443, metadata !1, metadata !535, i32 220, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!539 = metadata !{i32 222, i32 0, metadata !538, null}
!540 = metadata !{i32 231, i32 0, metadata !541, null}
!541 = metadata !{i32 786443, metadata !1, metadata !535, i32 230, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!542 = metadata !{i32 234, i32 0, metadata !541, null}
!543 = metadata !{i32 264, i32 0, metadata !544, null}
!544 = metadata !{i32 786443, metadata !1, metadata !535, i32 263, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!545 = metadata !{i32 265, i32 0, metadata !544, null}
!546 = metadata !{i32 274, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !535, i32 273, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!548 = metadata !{i32 275, i32 0, metadata !547, null}
!549 = metadata !{i32 284, i32 0, metadata !550, null}
!550 = metadata !{i32 786443, metadata !1, metadata !535, i32 283, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!551 = metadata !{i32 285, i32 0, metadata !550, null}
!552 = metadata !{i32 200, i32 0, metadata !531, null}
!553 = metadata !{i32 202, i32 0, metadata !531, null}
!554 = metadata !{i32 206, i32 0, metadata !531, null}
!555 = metadata !{i32 210, i32 0, metadata !535, null}
!556 = metadata !{metadata !"float", metadata !478}
!557 = metadata !{i32 215, i32 0, metadata !534, null}
!558 = metadata !{i32 216, i32 0, metadata !534, null}
!559 = metadata !{i32 217, i32 0, metadata !534, null}
!560 = metadata !{i32 220, i32 0, metadata !535, null}
!561 = metadata !{i32 225, i32 0, metadata !538, null}
!562 = metadata !{i32 226, i32 0, metadata !538, null}
!563 = metadata !{i32 227, i32 0, metadata !538, null}
!564 = metadata !{i32 230, i32 0, metadata !535, null}
!565 = metadata !{i32 232, i32 0, metadata !541, null}
!566 = metadata !{i32 233, i32 0, metadata !541, null}
!567 = metadata !{i32 237, i32 0, metadata !541, null}
!568 = metadata !{i32 238, i32 0, metadata !541, null}
!569 = metadata !{i32 239, i32 0, metadata !541, null}
!570 = metadata !{i32 242, i32 0, metadata !535, null}
!571 = metadata !{i32 243, i32 0, metadata !572, null}
!572 = metadata !{i32 786443, metadata !1, metadata !535, i32 242, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!573 = metadata !{i32 244, i32 0, metadata !572, null}
!574 = metadata !{i32 247, i32 0, metadata !572, null}
!575 = metadata !{i32 248, i32 0, metadata !572, null}
!576 = metadata !{i32 249, i32 0, metadata !572, null}
!577 = metadata !{i32 252, i32 0, metadata !535, null}
!578 = metadata !{i32 253, i32 0, metadata !579, null}
!579 = metadata !{i32 786443, metadata !1, metadata !535, i32 252, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!580 = metadata !{i32 254, i32 0, metadata !579, null}
!581 = metadata !{i32 258, i32 0, metadata !579, null}
!582 = metadata !{i32 259, i32 0, metadata !579, null}
!583 = metadata !{i32 260, i32 0, metadata !579, null}
!584 = metadata !{i32 263, i32 0, metadata !535, null}
!585 = metadata !{i32 268, i32 0, metadata !544, null}
!586 = metadata !{i32 269, i32 0, metadata !544, null}
!587 = metadata !{i32 270, i32 0, metadata !544, null}
!588 = metadata !{i32 273, i32 0, metadata !535, null}
!589 = metadata !{i32 278, i32 0, metadata !547, null}
!590 = metadata !{i32 279, i32 0, metadata !547, null}
!591 = metadata !{i32 280, i32 0, metadata !547, null}
!592 = metadata !{i32 283, i32 0, metadata !535, null}
!593 = metadata !{i32 288, i32 0, metadata !550, null}
!594 = metadata !{i32 289, i32 0, metadata !550, null}
!595 = metadata !{i32 290, i32 0, metadata !550, null}
!596 = metadata !{i32 296, i32 0, metadata !535, null}
!597 = metadata !{i32 297, i32 0, metadata !535, null}
!598 = metadata !{i32 299, i32 0, metadata !79, null}
!599 = metadata !{i32 313, i32 0, metadata !152, null}
!600 = metadata !{i32 320, i32 0, metadata !152, null}
!601 = metadata !{i32 321, i32 0, metadata !602, null}
!602 = metadata !{i32 786443, metadata !1, metadata !152, i32 321, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!603 = metadata !{i32 323, i32 0, metadata !604, null}
!604 = metadata !{i32 786443, metadata !1, metadata !602, i32 322, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!605 = metadata !{i32 328, i32 0, metadata !604, null}
!606 = metadata !{i32 335, i32 0, metadata !604, null}
!607 = metadata !{i32 329, i32 0, metadata !604, null}
!608 = metadata !{i32 331, i32 0, metadata !604, null}
!609 = metadata !{i32 339, i32 0, metadata !152, null}
!610 = metadata !{i32 578, i32 0, metadata !292, null}
!611 = metadata !{i32 579, i32 0, metadata !292, null}
!612 = metadata !{i32 581, i32 0, metadata !292, null}
!613 = metadata !{i32 584, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !292, i32 581, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!615 = metadata !{i32 585, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !614, i32 584, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!617 = metadata !{i32 586, i32 0, metadata !616, null}
!618 = metadata !{i32 587, i32 0, metadata !616, null}
!619 = metadata !{i32 589, i32 0, metadata !614, null}
!620 = metadata !{i32 591, i32 0, metadata !614, null}
!621 = metadata !{i32 592, i32 0, metadata !622, null}
!622 = metadata !{i32 786443, metadata !1, metadata !614, i32 591, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!623 = metadata !{i32 593, i32 0, metadata !622, null}
!624 = metadata !{i32 594, i32 0, metadata !622, null}
!625 = metadata !{i32 596, i32 0, metadata !614, null}
!626 = metadata !{i32 598, i32 0, metadata !614, null}
!627 = metadata !{i32 599, i32 0, metadata !628, null}
!628 = metadata !{i32 786443, metadata !1, metadata !614, i32 598, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!629 = metadata !{i32 600, i32 0, metadata !628, null}
!630 = metadata !{i32 601, i32 0, metadata !628, null}
!631 = metadata !{i32 602, i32 0, metadata !628, null}
!632 = metadata !{i32 603, i32 0, metadata !628, null}
!633 = metadata !{i32 605, i32 0, metadata !614, null}
!634 = metadata !{i32 607, i32 0, metadata !614, null}
!635 = metadata !{i32 608, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !614, i32 607, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!637 = metadata !{i32 609, i32 0, metadata !636, null}
!638 = metadata !{i32 610, i32 0, metadata !636, null}
!639 = metadata !{i32 612, i32 0, metadata !614, null}
!640 = metadata !{i32 614, i32 0, metadata !614, null}
!641 = metadata !{i32 615, i32 0, metadata !642, null}
!642 = metadata !{i32 786443, metadata !1, metadata !614, i32 614, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!643 = metadata !{i32 616, i32 0, metadata !642, null}
!644 = metadata !{i32 618, i32 0, metadata !642, null}
!645 = metadata !{i32 620, i32 0, metadata !614, null}
!646 = metadata !{i32 622, i32 0, metadata !614, null}
!647 = metadata !{i32 623, i32 0, metadata !648, null}
!648 = metadata !{i32 786443, metadata !1, metadata !614, i32 622, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!649 = metadata !{i32 624, i32 0, metadata !648, null}
!650 = metadata !{i32 625, i32 0, metadata !648, null}
!651 = metadata !{i32 627, i32 0, metadata !614, null}
!652 = metadata !{i32 629, i32 0, metadata !614, null}
!653 = metadata !{i32 630, i32 0, metadata !654, null}
!654 = metadata !{i32 786443, metadata !1, metadata !614, i32 629, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!655 = metadata !{i32 631, i32 0, metadata !654, null}
!656 = metadata !{i32 632, i32 0, metadata !654, null}
!657 = metadata !{i32 634, i32 0, metadata !614, null}
!658 = metadata !{i32 636, i32 0, metadata !614, null}
!659 = metadata !{i32 637, i32 0, metadata !660, null}
!660 = metadata !{i32 786443, metadata !1, metadata !614, i32 636, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!661 = metadata !{i32 638, i32 0, metadata !660, null}
!662 = metadata !{i32 639, i32 0, metadata !660, null}
!663 = metadata !{i32 641, i32 0, metadata !614, null}
!664 = metadata !{i32 643, i32 0, metadata !614, null}
!665 = metadata !{i32 644, i32 0, metadata !614, null}
!666 = metadata !{i32 647, i32 0, metadata !292, null}
!667 = metadata !{i32 379, i32 0, metadata !162, null}
!668 = metadata !{i32 380, i32 0, metadata !162, null}
!669 = metadata !{i32 408, i32 0, metadata !162, null}
!670 = metadata !{i32 409, i32 0, metadata !671, null}
!671 = metadata !{i32 786443, metadata !1, metadata !162, i32 409, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!672 = metadata !{i32 410, i32 0, metadata !671, null}
!673 = metadata !{i32 411, i32 0, metadata !674, null}
!674 = metadata !{i32 786443, metadata !1, metadata !162, i32 411, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!675 = metadata !{i32 430, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !1, metadata !677, i32 414, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!677 = metadata !{i32 786443, metadata !1, metadata !678, i32 413, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!678 = metadata !{i32 786443, metadata !1, metadata !679, i32 413, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!679 = metadata !{i32 786443, metadata !1, metadata !674, i32 411, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!680 = metadata !{i32 413, i32 0, metadata !678, null}
!681 = metadata !{i32 414, i32 0, metadata !677, null}
!682 = metadata !{i32 415, i32 0, metadata !676, null}
!683 = metadata !{i32 416, i32 0, metadata !676, null}
!684 = metadata !{i32 417, i32 0, metadata !676, null}
!685 = metadata !{i32 420, i32 0, metadata !676, null}
!686 = metadata !{i32 421, i32 0, metadata !676, null}
!687 = metadata !{i32 425, i32 0, metadata !676, null}
!688 = metadata !{i32 426, i32 0, metadata !676, null}
!689 = metadata !{i32 431, i32 0, metadata !676, null}
!690 = metadata !{i32 435, i32 0, metadata !676, null}
!691 = metadata !{i32 438, i32 0, metadata !676, null}
!692 = metadata !{i32 439, i32 0, metadata !676, null}
!693 = metadata !{i32 444, i32 0, metadata !162, null}
!694 = metadata !{i32 446, i32 0, metadata !695, null}
!695 = metadata !{i32 786443, metadata !1, metadata !162, i32 445, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!696 = metadata !{i32 447, i32 0, metadata !695, null}
!697 = metadata !{i32 445, i32 0, metadata !695, null}
!698 = metadata !{i32 453, i32 0, metadata !162, null}
!699 = metadata !{i32 454, i32 0, metadata !162, null}
!700 = metadata !{i32 455, i32 0, metadata !162, null}
!701 = metadata !{i32 1}
!702 = metadata !{i32 456, i32 0, metadata !703, null}
!703 = metadata !{i32 786443, metadata !1, metadata !162, i32 456, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!704 = metadata !{i32 457, i32 0, metadata !705, null}
!705 = metadata !{i32 786443, metadata !1, metadata !703, i32 456, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!706 = metadata !{i32 458, i32 0, metadata !705, null}
!707 = metadata !{i32 461, i32 0, metadata !162, null}
!708 = metadata !{i32 463, i32 0, metadata !287, null}
!709 = metadata !{i32 465, i32 0, metadata !710, null}
!710 = metadata !{i32 786443, metadata !1, metadata !286, i32 465, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!711 = metadata !{i32 469, i32 0, metadata !286, null}
!712 = metadata !{i32 512, i32 0, metadata !713, null}
!713 = metadata !{i32 786443, metadata !1, metadata !714, i32 512, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!714 = metadata !{i32 786443, metadata !1, metadata !286, i32 509, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!715 = metadata !{i32 502, i32 0, metadata !284, null}
!716 = metadata !{i32 466, i32 0, metadata !710, null}
!717 = metadata !{i32 467, i32 0, metadata !718, null}
!718 = metadata !{i32 786443, metadata !1, metadata !286, i32 467, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!719 = metadata !{i32 468, i32 0, metadata !718, null}
!720 = metadata !{i32 471, i32 0, metadata !286, null}
!721 = metadata !{i32 472, i32 0, metadata !285, null}
!722 = metadata !{i32 479, i32 0, metadata !723, null}
!723 = metadata !{i32 786443, metadata !1, metadata !284, i32 477, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!724 = metadata !{i32 473, i32 0, metadata !284, null}
!725 = metadata !{i32 474, i32 0, metadata !284, null}
!726 = metadata !{i32 475, i32 0, metadata !284, null}
!727 = metadata !{i32 477, i32 0, metadata !284, null}
!728 = metadata !{i32 478, i32 0, metadata !723, null}
!729 = metadata !{i32 480, i32 0, metadata !723, null}
!730 = metadata !{i32 481, i32 0, metadata !723, null}
!731 = metadata !{i32 483, i32 0, metadata !732, null}
!732 = metadata !{i32 786443, metadata !1, metadata !284, i32 482, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!733 = metadata !{i32 484, i32 0, metadata !732, null}
!734 = metadata !{i32 486, i32 0, metadata !283, null}
!735 = metadata !{i32 487, i32 0, metadata !283, null}
!736 = metadata !{i32 489, i32 0, metadata !737, null}
!737 = metadata !{i32 786443, metadata !1, metadata !281, i32 489, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!738 = metadata !{i32 489, i32 0, metadata !281, null}
!739 = metadata !{i32 490, i32 0, metadata !282, null}
!740 = metadata !{i32 493, i32 0, metadata !284, null}
!741 = metadata !{i32 494, i32 0, metadata !291, null}
!742 = metadata !{i32 495, i32 0, metadata !291, null}
!743 = metadata !{i32 497, i32 0, metadata !744, null}
!744 = metadata !{i32 786443, metadata !1, metadata !289, i32 497, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!745 = metadata !{i32 497, i32 0, metadata !289, null}
!746 = metadata !{i32 498, i32 0, metadata !290, null}
!747 = metadata !{i32 501, i32 0, metadata !284, null}
!748 = metadata !{i32 509, i32 0, metadata !286, null}
!749 = metadata !{i32 510, i32 0, metadata !714, null}
!750 = metadata !{i32 513, i32 0, metadata !713, null}
!751 = metadata !{i32 514, i32 0, metadata !752, null}
!752 = metadata !{i32 786443, metadata !1, metadata !753, i32 514, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!753 = metadata !{i32 786443, metadata !1, metadata !713, i32 513, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!754 = metadata !{metadata !"short", metadata !478}
!755 = metadata !{i32 515, i32 0, metadata !752, null}
!756 = metadata !{i32 516, i32 0, metadata !753, null}
!757 = metadata !{i32 517, i32 0, metadata !753, null}
!758 = metadata !{i32 518, i32 0, metadata !753, null}
!759 = metadata !{i32 527, i32 0, metadata !162, null}
!760 = metadata !{i32 528, i32 0, metadata !162, null}
!761 = metadata !{i32 529, i32 0, metadata !162, null}
!762 = metadata !{i32 530, i32 0, metadata !162, null}
!763 = metadata !{i32 532, i32 0, metadata !764, null}
!764 = metadata !{i32 786443, metadata !1, metadata !162, i32 532, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!765 = metadata !{i32 534, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !764, i32 533, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!767 = metadata !{i32 550, i32 0, metadata !766, null}
!768 = metadata !{i32 546, i32 0, metadata !769, null}
!769 = metadata !{i32 786443, metadata !1, metadata !766, i32 545, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!770 = metadata !{i32 547, i32 0, metadata !769, null}
!771 = metadata !{i32 541, i32 0, metadata !772, null}
!772 = metadata !{i32 786443, metadata !1, metadata !766, i32 540, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!773 = metadata !{i32 535, i32 0, metadata !766, null}
!774 = metadata !{i32 536, i32 0, metadata !766, null}
!775 = metadata !{i32 537, i32 0, metadata !766, null}
!776 = metadata !{i32 538, i32 0, metadata !766, null}
!777 = metadata !{i32 540, i32 0, metadata !766, null}
!778 = metadata !{i32 542, i32 0, metadata !772, null}
!779 = metadata !{i32 545, i32 0, metadata !766, null}
!780 = metadata !{i32 544, i32 0, metadata !772, null}
!781 = metadata !{i32 549, i32 0, metadata !769, null}
!782 = metadata !{i32 555, i32 0, metadata !162, null}
!783 = metadata !{i32 556, i32 0, metadata !784, null}
!784 = metadata !{i32 786443, metadata !1, metadata !162, i32 556, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!785 = metadata !{i32 558, i32 0, metadata !786, null}
!786 = metadata !{i32 786443, metadata !1, metadata !162, i32 558, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!787 = metadata !{i32 557, i32 0, metadata !784, null}
!788 = metadata !{i32 559, i32 0, metadata !786, null}
!789 = metadata !{i32 560, i32 0, metadata !162, null}
!790 = metadata !{i32 566, i32 0, metadata !162, null}
!791 = metadata !{i32 567, i32 0, metadata !162, null}
!792 = metadata !{i32 568, i32 0, metadata !162, null}
!793 = metadata !{i32 1197, i32 0, metadata !466, null}
!794 = metadata !{i32 1202, i32 0, metadata !466, null}
!795 = metadata !{i32 1203, i32 0, metadata !466, null}
!796 = metadata !{i32 1204, i32 0, metadata !466, null}
!797 = metadata !{i32 1208, i32 0, metadata !466, null}
!798 = metadata !{i32 1205, i32 0, metadata !799, null}
!799 = metadata !{i32 786443, metadata !1, metadata !466, i32 1204, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!800 = metadata !{i32 1206, i32 0, metadata !799, null}
!801 = metadata !{i32 1209, i32 0, metadata !466, null}
!802 = metadata !{i32 1210, i32 0, metadata !466, null}
!803 = metadata !{i32 667, i32 0, metadata !301, null}
!804 = metadata !{i32 668, i32 0, metadata !301, null}
!805 = metadata !{i32 677, i32 0, metadata !301, null}
!806 = metadata !{i32 678, i32 0, metadata !301, null}
!807 = metadata !{i32 679, i32 0, metadata !301, null}
!808 = metadata !{i32 680, i32 0, metadata !301, null}
!809 = metadata !{i32 681, i32 0, metadata !301, null}
!810 = metadata !{i32 682, i32 0, metadata !301, null}
!811 = metadata !{i32 684, i32 0, metadata !301, null}
!812 = metadata !{i32 685, i32 0, metadata !301, null}
!813 = metadata !{i32 686, i32 0, metadata !301, null}
!814 = metadata !{i32 688, i32 0, metadata !301, null}
!815 = metadata !{i32 690, i32 0, metadata !816, null}
!816 = metadata !{i32 786443, metadata !1, metadata !301, i32 689, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!817 = metadata !{i32 691, i32 0, metadata !816, null}
!818 = metadata !{i32 693, i32 0, metadata !301, null}
!819 = metadata !{i32 692, i32 0, metadata !816, null}
!820 = metadata !{i32 695, i32 0, metadata !821, null}
!821 = metadata !{i32 786443, metadata !1, metadata !301, i32 694, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!822 = metadata !{i32 696, i32 0, metadata !821, null}
!823 = metadata !{i32 697, i32 0, metadata !821, null}
!824 = metadata !{i32 699, i32 0, metadata !301, null}
!825 = metadata !{i32 700, i32 0, metadata !301, null}
!826 = metadata !{i32 702, i32 0, metadata !301, null}
!827 = metadata !{i32 709, i32 0, metadata !828, null}
!828 = metadata !{i32 786443, metadata !1, metadata !301, i32 709, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!829 = metadata !{i32 710, i32 0, metadata !828, null}
!830 = metadata !{i32 711, i32 0, metadata !831, null}
!831 = metadata !{i32 786443, metadata !1, metadata !828, i32 710, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!832 = metadata !{i32 714, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !1, metadata !301, i32 714, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!834 = metadata !{i32 712, i32 0, metadata !831, null}
!835 = metadata !{i32 715, i32 0, metadata !833, null}
!836 = metadata !{i32 716, i32 0, metadata !837, null}
!837 = metadata !{i32 786443, metadata !1, metadata !833, i32 715, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!838 = metadata !{i32 722, i32 0, metadata !331, null}
!839 = metadata !{i32 717, i32 0, metadata !837, null}
!840 = metadata !{i32 723, i32 0, metadata !330, null}
!841 = metadata !{i32 749, i32 0, metadata !329, null}
!842 = metadata !{i32 759, i32 0, metadata !329, null}
!843 = metadata !{i32 748, i32 0, metadata !329, null}
!844 = metadata !{i32 747, i32 0, metadata !329, null}
!845 = metadata !{i32 776, i32 0, metadata !329, null}
!846 = metadata !{i32 726, i32 0, metadata !329, null}
!847 = metadata !{i32 727, i32 0, metadata !329, null}
!848 = metadata !{i32 732, i32 0, metadata !329, null}
!849 = metadata !{i32 733, i32 0, metadata !329, null}
!850 = metadata !{i32 734, i32 0, metadata !327, null}
!851 = metadata !{i32 735, i32 0, metadata !328, null}
!852 = metadata !{i32 739, i32 0, metadata !329, null}
!853 = metadata !{i32 740, i32 0, metadata !329, null}
!854 = metadata !{i32 743, i32 0, metadata !329, null}
!855 = metadata !{i32 744, i32 0, metadata !329, null}
!856 = metadata !{i32 750, i32 0, metadata !329, null}
!857 = metadata !{i32 751, i32 0, metadata !329, null}
!858 = metadata !{i32 752, i32 0, metadata !333, null}
!859 = metadata !{i32 753, i32 0, metadata !329, null}
!860 = metadata !{i32 755, i32 0, metadata !336, null}
!861 = metadata !{i32 756, i32 0, metadata !336, null}
!862 = metadata !{i32 757, i32 0, metadata !335, null}
!863 = metadata !{i32 760, i32 0, metadata !329, null}
!864 = metadata !{i32 761, i32 0, metadata !329, null}
!865 = metadata !{i32 762, i32 0, metadata !329, null}
!866 = metadata !{i32 765, i32 0, metadata !329, null}
!867 = metadata !{i32 766, i32 0, metadata !329, null}
!868 = metadata !{i32 767, i32 0, metadata !329, null}
!869 = metadata !{i32 768, i32 0, metadata !329, null}
!870 = metadata !{i32 769, i32 0, metadata !329, null}
!871 = metadata !{i32 770, i32 0, metadata !338, null}
!872 = metadata !{i32 771, i32 0, metadata !329, null}
!873 = metadata !{i32 772, i32 0, metadata !329, null}
!874 = metadata !{i32 775, i32 0, metadata !329, null}
!875 = metadata !{i32 777, i32 0, metadata !329, null}
!876 = metadata !{i32 778, i32 0, metadata !877, null}
!877 = metadata !{i32 786443, metadata !1, metadata !340, i32 778, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!878 = metadata !{i32 778, i32 0, metadata !340, null}
!879 = metadata !{i32 779, i32 0, metadata !329, null}
!880 = metadata !{i32 782, i32 0, metadata !329, null}
!881 = metadata !{i32 783, i32 0, metadata !329, null}
!882 = metadata !{i32 786, i32 0, metadata !301, null}
!883 = metadata !{i32 787, i32 0, metadata !301, null}
!884 = metadata !{i32 788, i32 0, metadata !301, null}
!885 = metadata !{i32 789, i32 0, metadata !301, null}
!886 = metadata !{i32 790, i32 0, metadata !301, null}
!887 = metadata !{i32 791, i32 0, metadata !301, null}
!888 = metadata !{i32 792, i32 0, metadata !301, null}
!889 = metadata !{i32 809, i32 0, metadata !341, null}
!890 = metadata !{i32 811, i32 0, metadata !341, null}
!891 = metadata !{i32 816, i32 0, metadata !341, null}
!892 = metadata !{i32 817, i32 0, metadata !341, null}
!893 = metadata !{i32 818, i32 0, metadata !894, null}
!894 = metadata !{i32 786443, metadata !1, metadata !341, i32 818, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!895 = metadata !{i32 822, i32 0, metadata !896, null}
!896 = metadata !{i32 786443, metadata !1, metadata !897, i32 822, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!897 = metadata !{i32 786443, metadata !1, metadata !894, i32 819, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!898 = metadata !{i32 825, i32 0, metadata !897, null}
!899 = metadata !{i32 829, i32 0, metadata !897, null}
!900 = metadata !{i32 833, i32 0, metadata !897, null}
!901 = metadata !{i32 837, i32 0, metadata !897, null}
!902 = metadata !{i32 844, i32 0, metadata !903, null}
!903 = metadata !{i32 786443, metadata !1, metadata !897, i32 841, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!904 = metadata !{i32 821, i32 0, metadata !897, null}
!905 = metadata !{i32 823, i32 0, metadata !896, null}
!906 = metadata !{i32 826, i32 0, metadata !907, null}
!907 = metadata !{i32 786443, metadata !1, metadata !897, i32 825, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!908 = metadata !{i32 827, i32 0, metadata !907, null}
!909 = metadata !{i32 828, i32 0, metadata !907, null}
!910 = metadata !{i32 830, i32 0, metadata !911, null}
!911 = metadata !{i32 786443, metadata !1, metadata !897, i32 829, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!912 = metadata !{i32 831, i32 0, metadata !911, null}
!913 = metadata !{i32 832, i32 0, metadata !911, null}
!914 = metadata !{i32 834, i32 0, metadata !915, null}
!915 = metadata !{i32 786443, metadata !1, metadata !897, i32 833, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!916 = metadata !{i32 835, i32 0, metadata !915, null}
!917 = metadata !{i32 836, i32 0, metadata !915, null}
!918 = metadata !{i32 838, i32 0, metadata !919, null}
!919 = metadata !{i32 786443, metadata !1, metadata !897, i32 837, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!920 = metadata !{i32 839, i32 0, metadata !919, null}
!921 = metadata !{i32 840, i32 0, metadata !919, null}
!922 = metadata !{i32 841, i32 0, metadata !897, null}
!923 = metadata !{i32 842, i32 0, metadata !903, null}
!924 = metadata !{i32 843, i32 0, metadata !903, null}
!925 = metadata !{i32 846, i32 0, metadata !903, null}
!926 = metadata !{i32 852, i32 0, metadata !341, null}
!927 = metadata !{i32 853, i32 0, metadata !341, null}
!928 = metadata !{i32 854, i32 0, metadata !341, null}
!929 = metadata !{i32 874, i32 0, metadata !408, null}
!930 = metadata !{i32 883, i32 0, metadata !931, null}
!931 = metadata !{i32 786443, metadata !1, metadata !408, i32 883, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!932 = metadata !{i32 884, i32 0, metadata !931, null}
!933 = metadata !{i32 888, i32 0, metadata !408, null}
!934 = metadata !{i32 889, i32 0, metadata !935, null}
!935 = metadata !{i32 786443, metadata !1, metadata !408, i32 888, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!936 = metadata !{i32 890, i32 0, metadata !935, null}
!937 = metadata !{i32 891, i32 0, metadata !935, null}
!938 = metadata !{i32 893, i32 0, metadata !408, null}
!939 = metadata !{i32 895, i32 0, metadata !940, null}
!940 = metadata !{i32 786443, metadata !1, metadata !408, i32 895, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!941 = metadata !{i32 896, i32 0, metadata !940, null}
!942 = metadata !{i32 914, i32 0, metadata !943, null}
!943 = metadata !{i32 786443, metadata !1, metadata !944, i32 912, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!944 = metadata !{i32 786443, metadata !1, metadata !940, i32 897, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!945 = metadata !{i32 915, i32 0, metadata !943, null}
!946 = metadata !{i32 899, i32 0, metadata !947, null}
!947 = metadata !{i32 786443, metadata !1, metadata !944, i32 898, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!948 = metadata !{i32 898, i32 0, metadata !947, null}
!949 = metadata !{i32 901, i32 0, metadata !944, null}
!950 = metadata !{i32 902, i32 0, metadata !944, null}
!951 = metadata !{i32 904, i32 0, metadata !944, null}
!952 = metadata !{i32 905, i32 0, metadata !944, null}
!953 = metadata !{i32 906, i32 0, metadata !944, null}
!954 = metadata !{i32 907, i32 0, metadata !944, null}
!955 = metadata !{i32 908, i32 0, metadata !944, null}
!956 = metadata !{i32 909, i32 0, metadata !944, null}
!957 = metadata !{i32 2}
!958 = metadata !{i32 910, i32 0, metadata !944, null}
!959 = metadata !{i32 913, i32 0, metadata !943, null}
!960 = metadata !{i32 911, i32 0, metadata !944, null}
!961 = metadata !{i32 918, i32 0, metadata !943, null}
!962 = metadata !{i32 916, i32 0, metadata !943, null}
!963 = metadata !{i32 917, i32 0, metadata !943, null}
!964 = metadata !{i32 919, i32 0, metadata !944, null}
!965 = metadata !{i32 920, i32 0, metadata !944, null}
!966 = metadata !{i32 921, i32 0, metadata !944, null}
!967 = metadata !{i32 922, i32 0, metadata !944, null}
!968 = metadata !{i32 923, i32 0, metadata !944, null}
!969 = metadata !{i32 924, i32 0, metadata !944, null}
!970 = metadata !{i32 925, i32 0, metadata !944, null}
!971 = metadata !{i32 926, i32 0, metadata !944, null}
!972 = metadata !{i32 927, i32 0, metadata !944, null}
!973 = metadata !{i32 928, i32 0, metadata !944, null}
!974 = metadata !{i32 930, i32 0, metadata !408, null}
!975 = metadata !{i32 931, i32 0, metadata !408, null}
!976 = metadata !{i32 932, i32 0, metadata !408, null}
!977 = metadata !{i32 947, i32 0, metadata !421, null}
!978 = metadata !{i32 950, i32 0, metadata !421, null}
!979 = metadata !{i32 952, i32 0, metadata !980, null}
!980 = metadata !{i32 786443, metadata !1, metadata !421, i32 952, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!981 = metadata !{i32 953, i32 0, metadata !980, null}
!982 = metadata !{i32 954, i32 0, metadata !421, null}
!983 = metadata !{i32 974, i32 0, metadata !428, null}
!984 = metadata !{i32 975, i32 0, metadata !428, null}
!985 = metadata !{i32 -1}
!986 = metadata !{i32 979, i32 0, metadata !428, null}
!987 = metadata !{i32 982, i32 0, metadata !988, null}
!988 = metadata !{i32 786443, metadata !1, metadata !428, i32 982, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!989 = metadata !{i32 984, i32 0, metadata !990, null}
!990 = metadata !{i32 786443, metadata !1, metadata !988, i32 983, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!991 = metadata !{i32 985, i32 0, metadata !990, null}
!992 = metadata !{i32 986, i32 0, metadata !990, null}
!993 = metadata !{i32 988, i32 0, metadata !994, null}
!994 = metadata !{i32 786443, metadata !1, metadata !990, i32 987, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!995 = metadata !{i32 992, i32 0, metadata !428, null}
!996 = metadata !{i32 993, i32 0, metadata !428, null}
!997 = metadata !{i32 996, i32 0, metadata !998, null}
!998 = metadata !{i32 786443, metadata !1, metadata !428, i32 996, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!999 = metadata !{i32 1000, i32 0, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !1, metadata !998, i32 997, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1001 = metadata !{i32 998, i32 0, metadata !1000, null}
!1002 = metadata !{i32 999, i32 0, metadata !1000, null}
!1003 = metadata !{i32 1002, i32 0, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !1, metadata !1000, i32 1001, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1005 = metadata !{i32 1006, i32 0, metadata !428, null}
!1006 = metadata !{i32 1007, i32 0, metadata !428, null}
!1007 = metadata !{i32 1009, i32 0, metadata !428, null}
!1008 = metadata !{i32 1010, i32 0, metadata !428, null}
!1009 = metadata !{i32 1011, i32 0, metadata !428, null}
!1010 = metadata !{i32 1012, i32 0, metadata !428, null}
!1011 = metadata !{i32 1013, i32 0, metadata !428, null}
!1012 = metadata !{i32 1036, i32 0, metadata !442, null}
!1013 = metadata !{i32 1038, i32 0, metadata !442, null}
!1014 = metadata !{i32 1048, i32 0, metadata !442, null}
!1015 = metadata !{i32 1052, i32 0, metadata !442, null}
!1016 = metadata !{i32 1053, i32 0, metadata !442, null}
!1017 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1016} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1018 = metadata !{i32 79, i32 0, metadata !52, metadata !1016}
!1019 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1016} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1020 = metadata !{i8 4}
!1021 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1016} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1022 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1016} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1023 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1016} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1024 = metadata !{i32 81, i32 0, metadata !52, metadata !1016}
!1025 = metadata !{i32 82, i32 0, metadata !52, metadata !1016}
!1026 = metadata !{i32 83, i32 0, metadata !52, metadata !1016}
!1027 = metadata !{i32 1054, i32 0, metadata !442, null}
!1028 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1027} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1029 = metadata !{i32 79, i32 0, metadata !52, metadata !1027}
!1030 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1027} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1031 = metadata !{i8 5}
!1032 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1027} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1033 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1027} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1034 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1027} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1035 = metadata !{i32 81, i32 0, metadata !52, metadata !1027}
!1036 = metadata !{i32 82, i32 0, metadata !52, metadata !1027}
!1037 = metadata !{i32 83, i32 0, metadata !52, metadata !1027}
!1038 = metadata !{i32 1058, i32 0, metadata !1039, null}
!1039 = metadata !{i32 786443, metadata !1, metadata !442, i32 1058, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1040 = metadata !{i32 1059, i32 0, metadata !1041, null}
!1041 = metadata !{i32 786443, metadata !1, metadata !1039, i32 1058, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1042 = metadata !{i32 81, i32 0, metadata !52, metadata !1040}
!1043 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1040} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1044 = metadata !{i32 79, i32 0, metadata !52, metadata !1040}
!1045 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1040} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1046 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1040} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1047 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1040} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1048 = metadata !{i32 82, i32 0, metadata !52, metadata !1040}
!1049 = metadata !{i32 83, i32 0, metadata !52, metadata !1040}
!1050 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1051} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1051 = metadata !{i32 1061, i32 0, metadata !442, null}
!1052 = metadata !{i32 79, i32 0, metadata !52, metadata !1051}
!1053 = metadata !{i8 6}
!1054 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1051} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1055 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1051} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1056 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1051} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1057 = metadata !{i32 81, i32 0, metadata !52, metadata !1051}
!1058 = metadata !{i32 82, i32 0, metadata !52, metadata !1051}
!1059 = metadata !{i32 83, i32 0, metadata !52, metadata !1051}
!1060 = metadata !{i32 1063, i32 0, metadata !1061, null}
!1061 = metadata !{i32 786443, metadata !1, metadata !442, i32 1063, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1062 = metadata !{i32 1065, i32 0, metadata !1063, null}
!1063 = metadata !{i32 786443, metadata !1, metadata !1061, i32 1064, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1064 = metadata !{i32 81, i32 0, metadata !52, metadata !1062}
!1065 = metadata !{i32 82, i32 0, metadata !52, metadata !1062}
!1066 = metadata !{i32 83, i32 0, metadata !52, metadata !1067}
!1067 = metadata !{i32 1069, i32 0, metadata !1068, null}
!1068 = metadata !{i32 786443, metadata !1, metadata !1069, i32 1068, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1069 = metadata !{i32 786443, metadata !1, metadata !1063, i32 1068, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1070 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1062} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1071 = metadata !{i32 79, i32 0, metadata !52, metadata !1062}
!1072 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1062} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1073 = metadata !{i8 1}
!1074 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1062} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1075 = metadata !{i32 undef}
!1076 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1062} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1077 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1062} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1078 = metadata !{i32 83, i32 0, metadata !52, metadata !1062}
!1079 = metadata !{i32 1066, i32 0, metadata !1063, null}
!1080 = metadata !{i32 1068, i32 0, metadata !1069, null}
!1081 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1067} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1082 = metadata !{i32 79, i32 0, metadata !52, metadata !1067}
!1083 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1067} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1084 = metadata !{i8 3}
!1085 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1067} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1086 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1067} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1087 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1067} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1088 = metadata !{i32 81, i32 0, metadata !52, metadata !1067}
!1089 = metadata !{i32 82, i32 0, metadata !52, metadata !1067}
!1090 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1091} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1091 = metadata !{i32 1073, i32 0, metadata !442, null}
!1092 = metadata !{i32 79, i32 0, metadata !52, metadata !1091}
!1093 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1091} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1094 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1091} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1095 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1091} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1096 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1091} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1097 = metadata !{i32 82, i32 0, metadata !52, metadata !1091}
!1098 = metadata !{i32 83, i32 0, metadata !52, metadata !1091}
!1099 = metadata !{i32 1078, i32 0, metadata !442, null}
!1100 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1099} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1101 = metadata !{i32 79, i32 0, metadata !52, metadata !1099}
!1102 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1099} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1103 = metadata !{i8 7}
!1104 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1099} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1105 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1099} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1106 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1099} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1107 = metadata !{i32 81, i32 0, metadata !52, metadata !1099}
!1108 = metadata !{i32 82, i32 0, metadata !52, metadata !1099}
!1109 = metadata !{i32 83, i32 0, metadata !52, metadata !1099}
!1110 = metadata !{i32 1079, i32 0, metadata !442, null}
!1111 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1110} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1112 = metadata !{i32 79, i32 0, metadata !52, metadata !1110}
!1113 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1110} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1114 = metadata !{i8 8}
!1115 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1110} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1116 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1110} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1117 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1110} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1118 = metadata !{i32 81, i32 0, metadata !52, metadata !1110}
!1119 = metadata !{i32 82, i32 0, metadata !52, metadata !1110}
!1120 = metadata !{i32 83, i32 0, metadata !52, metadata !1110}
!1121 = metadata !{i32 1080, i32 0, metadata !1122, null}
!1122 = metadata !{i32 786443, metadata !1, metadata !442, i32 1080, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1123 = metadata !{i32 1081, i32 0, metadata !1124, null}
!1124 = metadata !{i32 786443, metadata !1, metadata !1122, i32 1080, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1125 = metadata !{i32 81, i32 0, metadata !52, metadata !1123}
!1126 = metadata !{i32 1074, i32 0, metadata !442, null}
!1127 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1123} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1128 = metadata !{i32 79, i32 0, metadata !52, metadata !1123}
!1129 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1123} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1130 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1123} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1131 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1123} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1132 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1123} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1133 = metadata !{i32 82, i32 0, metadata !52, metadata !1123}
!1134 = metadata !{i32 83, i32 0, metadata !52, metadata !1123}
!1135 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1136} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1136 = metadata !{i32 1086, i32 0, metadata !442, null}
!1137 = metadata !{i32 79, i32 0, metadata !52, metadata !1136}
!1138 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1136} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1139 = metadata !{i8 9}
!1140 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1136} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1141 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1136} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1142 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1136} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1143 = metadata !{i32 81, i32 0, metadata !52, metadata !1136}
!1144 = metadata !{i32 82, i32 0, metadata !52, metadata !1136}
!1145 = metadata !{i32 83, i32 0, metadata !52, metadata !1136}
!1146 = metadata !{i32 1087, i32 0, metadata !442, null}
!1147 = metadata !{i32 1088, i32 0, metadata !442, null}
!1148 = metadata !{i32 1118, i32 0, metadata !453, null}
!1149 = metadata !{i32 1126, i32 0, metadata !453, null}
!1150 = metadata !{i32 1128, i32 0, metadata !1151, null}
!1151 = metadata !{i32 786443, metadata !1, metadata !453, i32 1128, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1152 = metadata !{i32 1130, i32 0, metadata !1153, null}
!1153 = metadata !{i32 786443, metadata !1, metadata !1151, i32 1129, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1154 = metadata !{i32 1136, i32 0, metadata !1155, null}
!1155 = metadata !{i32 786443, metadata !1, metadata !1156, i32 1135, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1156 = metadata !{i32 786443, metadata !1, metadata !1153, i32 1134, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1157 = metadata !{i32 1143, i32 0, metadata !1158, null}
!1158 = metadata !{i32 786443, metadata !1, metadata !1155, i32 1137, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1159 = metadata !{i32 1148, i32 0, metadata !1158, null}
!1160 = metadata !{i32 1132, i32 0, metadata !1153, null}
!1161 = metadata !{i32 1133, i32 0, metadata !1153, null}
!1162 = metadata !{i32 1134, i32 0, metadata !1156, null}
!1163 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1157} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1164 = metadata !{i32 79, i32 0, metadata !52, metadata !1157}
!1165 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1157} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1166 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1157} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1167 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1157} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1168 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1157} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1169 = metadata !{i32 81, i32 0, metadata !52, metadata !1157}
!1170 = metadata !{i32 82, i32 0, metadata !52, metadata !1157}
!1171 = metadata !{i32 83, i32 0, metadata !52, metadata !1157}
!1172 = metadata !{i32 1144, i32 0, metadata !1158, null}
!1173 = metadata !{i32 1145, i32 0, metadata !1158, null}
!1174 = metadata !{i32 1149, i32 0, metadata !1158, null}
!1175 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1174} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1176 = metadata !{i32 79, i32 0, metadata !52, metadata !1174}
!1177 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1174} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1178 = metadata !{i8 2}
!1179 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1174} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1180 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1174} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1181 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1174} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1182 = metadata !{i32 81, i32 0, metadata !52, metadata !1174}
!1183 = metadata !{i32 82, i32 0, metadata !52, metadata !1174}
!1184 = metadata !{i32 83, i32 0, metadata !52, metadata !1174}
!1185 = metadata !{i32 1151, i32 0, metadata !1186, null}
!1186 = metadata !{i32 786443, metadata !1, metadata !1158, i32 1150, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1187 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1185} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1188 = metadata !{i32 79, i32 0, metadata !52, metadata !1185}
!1189 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1185} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1190 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1185} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1191 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1185} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1192 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1185} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1193 = metadata !{i32 81, i32 0, metadata !52, metadata !1185}
!1194 = metadata !{i32 82, i32 0, metadata !52, metadata !1185}
!1195 = metadata !{i32 83, i32 0, metadata !52, metadata !1185}
!1196 = metadata !{i32 1152, i32 0, metadata !1186, null}
!1197 = metadata !{i32 1154, i32 0, metadata !1158, null}
!1198 = metadata !{i32 1155, i32 0, metadata !1158, null}
!1199 = metadata !{i32 1158, i32 0, metadata !1158, null}
!1200 = metadata !{i32 1159, i32 0, metadata !1201, null}
!1201 = metadata !{i32 786443, metadata !1, metadata !1158, i32 1158, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1202 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1200} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1203 = metadata !{i32 79, i32 0, metadata !52, metadata !1200}
!1204 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1200} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1205 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1200} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1206 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1200} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1207 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1200} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1208 = metadata !{i32 81, i32 0, metadata !52, metadata !1200}
!1209 = metadata !{i32 82, i32 0, metadata !52, metadata !1200}
!1210 = metadata !{i32 83, i32 0, metadata !52, metadata !1200}
!1211 = metadata !{i32 1160, i32 0, metadata !1201, null}
!1212 = metadata !{i32 1161, i32 0, metadata !1201, null}
!1213 = metadata !{i32 1162, i32 0, metadata !1201, null}
!1214 = metadata !{i32 1168, i32 0, metadata !1158, null}
!1215 = metadata !{i32 1169, i32 0, metadata !1216, null}
!1216 = metadata !{i32 786443, metadata !1, metadata !1158, i32 1168, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1217 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1215} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1218 = metadata !{i32 79, i32 0, metadata !52, metadata !1215}
!1219 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1215} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1220 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1215} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1221 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1215} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1222 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1215} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1223 = metadata !{i32 81, i32 0, metadata !52, metadata !1215}
!1224 = metadata !{i32 82, i32 0, metadata !52, metadata !1215}
!1225 = metadata !{i32 83, i32 0, metadata !52, metadata !1215}
!1226 = metadata !{i32 1170, i32 0, metadata !1216, null}
!1227 = metadata !{i32 1171, i32 0, metadata !1216, null}
!1228 = metadata !{i32 1171, i32 0, metadata !1158, null}
!1229 = metadata !{i32 1172, i32 0, metadata !1230, null}
!1230 = metadata !{i32 786443, metadata !1, metadata !1158, i32 1171, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/trace.c]
!1231 = metadata !{i32 786689, metadata !52, metadata !"tr", metadata !21, i32 16777295, metadata !26, i32 0, metadata !1229} ; [ DW_TAG_arg_variable ] [tr] [line 79]
!1232 = metadata !{i32 79, i32 0, metadata !52, metadata !1229}
!1233 = metadata !{i32 786689, metadata !52, metadata !"tpos", metadata !21, i32 33554511, metadata !24, i32 0, metadata !1229} ; [ DW_TAG_arg_variable ] [tpos] [line 79]
!1234 = metadata !{i32 786689, metadata !52, metadata !"type", metadata !21, i32 50331727, metadata !33, i32 0, metadata !1229} ; [ DW_TAG_arg_variable ] [type] [line 79]
!1235 = metadata !{i32 786689, metadata !52, metadata !"idx", metadata !21, i32 67108943, metadata !24, i32 0, metadata !1229} ; [ DW_TAG_arg_variable ] [idx] [line 79]
!1236 = metadata !{i32 786689, metadata !52, metadata !"pos", metadata !21, i32 83886159, metadata !24, i32 0, metadata !1229} ; [ DW_TAG_arg_variable ] [pos] [line 79]
!1237 = metadata !{i32 81, i32 0, metadata !52, metadata !1229}
!1238 = metadata !{i32 82, i32 0, metadata !52, metadata !1229}
!1239 = metadata !{i32 83, i32 0, metadata !52, metadata !1229}
!1240 = metadata !{i32 1173, i32 0, metadata !1230, null}
!1241 = metadata !{i32 1174, i32 0, metadata !1230, null}
!1242 = metadata !{i32 1175, i32 0, metadata !1230, null}
!1243 = metadata !{i32 1179, i32 0, metadata !1158, null}
!1244 = metadata !{i32 1180, i32 0, metadata !1158, null}
!1245 = metadata !{i32 1182, i32 0, metadata !1153, null}
!1246 = metadata !{i32 1184, i32 0, metadata !453, null}
!1247 = metadata !{i32 1185, i32 0, metadata !453, null}
