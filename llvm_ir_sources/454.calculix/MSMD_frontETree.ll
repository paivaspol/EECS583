; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._MSMD = type { i32, %struct._IIheap*, i32, %struct._IP*, %struct._IP*, %struct._MSMDvtx*, %struct._IV, %struct._IV }
%struct._IIheap = type { i32, i32, i32*, i32*, i32* }
%struct._IP = type { i32, %struct._IP* }
%struct._MSMDvtx = type { i32, i8, i8, i32, i32, i32, i32*, i32, %struct._MSMDvtx*, %struct._IP* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A fatal error in MSMD_frontETree(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @MSMD_frontETree(%struct._MSMD* %msmd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._MSMD* %msmd}, i64 0, metadata !88), !dbg !103
  %cmp = icmp eq %struct._MSMD* %msmd, null, !dbg !104
  br i1 %cmp, label %if.then, label %if.end, !dbg !104

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !105, !tbaa !107
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._MSMD* null) #5, !dbg !105
  tail call void @exit(i32 -1) #6, !dbg !110
  unreachable, !dbg !110

if.end:                                           ; preds = %entry
  %nvtx1 = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 0, !dbg !111
  %1 = load i32* %nvtx1, align 4, !dbg !111, !tbaa !112
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !93), !dbg !111
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !113
  %call2 = tail call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !114
  tail call void @llvm.dbg.value(metadata !{i32* %call2}, i64 0, metadata !96), !dbg !114
  %call3 = tail call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !115
  tail call void @llvm.dbg.value(metadata !{i32* %call3}, i64 0, metadata !99), !dbg !115
  tail call void @llvm.dbg.value(metadata !116, i64 0, metadata !94), !dbg !117
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !118
  %vertices = getelementptr inbounds %struct._MSMD* %msmd, i64 0, i32 5, !dbg !118
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %2}, i64 0, metadata !101), !dbg !118
  %cmp4225 = icmp sgt i32 %1, 0, !dbg !118
  br i1 %cmp4225, label %for.body.lr.ph, label %for.end, !dbg !118

for.body.lr.ph:                                   ; preds = %if.end
  %2 = load %struct._MSMDvtx** %vertices, align 8, !dbg !118, !tbaa !107
  br label %for.body, !dbg !118

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %v.0229 = phi %struct._MSMDvtx* [ %2, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %iv.0228 = phi i32 [ 0, %for.body.lr.ph ], [ %inc21, %for.inc ]
  %nfront.0227 = phi i32 [ 0, %for.body.lr.ph ], [ %nfront.1, %for.inc ]
  %root.0226 = phi i32 [ -1, %for.body.lr.ph ], [ %root.2, %for.inc ]
  %status = getelementptr inbounds %struct._MSMDvtx* %v.0229, i64 0, i32 2, !dbg !120
  %3 = load i8* %status, align 1, !dbg !120, !tbaa !108
  %conv = sext i8 %3 to i32, !dbg !120
  switch i32 %conv, label %for.inc [
    i32 76, label %sw.bb
    i32 69, label %sw.bb
  ], !dbg !120

sw.bb:                                            ; preds = %for.body, %for.body
  %par5 = getelementptr inbounds %struct._MSMDvtx* %v.0229, i64 0, i32 8, !dbg !122
  %4 = load %struct._MSMDvtx** %par5, align 8, !dbg !122, !tbaa !107
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %4}, i64 0, metadata !102), !dbg !122
  %cmp6 = icmp eq %struct._MSMDvtx* %4, null, !dbg !122
  br i1 %cmp6, label %if.else, label %if.then8, !dbg !122

if.then8:                                         ; preds = %sw.bb
  %id = getelementptr inbounds %struct._MSMDvtx* %4, i64 0, i32 0, !dbg !124
  %5 = load i32* %id, align 4, !dbg !124, !tbaa !112
  %idxprom = sext i32 %5 to i64, !dbg !124
  %arrayidx = getelementptr inbounds i32* %call2, i64 %idxprom, !dbg !124
  %6 = load i32* %arrayidx, align 4, !dbg !124, !tbaa !112
  %id9 = getelementptr inbounds %struct._MSMDvtx* %v.0229, i64 0, i32 0, !dbg !124
  %7 = load i32* %id9, align 4, !dbg !124, !tbaa !112
  %idxprom10 = sext i32 %7 to i64, !dbg !124
  %arrayidx11 = getelementptr inbounds i32* %call3, i64 %idxprom10, !dbg !124
  store i32 %6, i32* %arrayidx11, align 4, !dbg !124, !tbaa !112
  %8 = load i32* %id9, align 4, !dbg !126, !tbaa !112
  %9 = load i32* %id, align 4, !dbg !126, !tbaa !112
  %idxprom14 = sext i32 %9 to i64, !dbg !126
  %arrayidx15 = getelementptr inbounds i32* %call2, i64 %idxprom14, !dbg !126
  store i32 %8, i32* %arrayidx15, align 4, !dbg !126, !tbaa !112
  br label %if.end20, !dbg !127

if.else:                                          ; preds = %sw.bb
  %id16 = getelementptr inbounds %struct._MSMDvtx* %v.0229, i64 0, i32 0, !dbg !128
  %10 = load i32* %id16, align 4, !dbg !128, !tbaa !112
  %idxprom17 = sext i32 %10 to i64, !dbg !128
  %arrayidx18 = getelementptr inbounds i32* %call3, i64 %idxprom17, !dbg !128
  store i32 %root.0226, i32* %arrayidx18, align 4, !dbg !128, !tbaa !112
  %11 = load i32* %id16, align 4, !dbg !130, !tbaa !112
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !94), !dbg !130
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then8
  %root.1 = phi i32 [ %root.0226, %if.then8 ], [ %11, %if.else ]
  %inc = add nsw i32 %nfront.0227, 1, !dbg !131
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !92), !dbg !131
  br label %for.inc, !dbg !132

for.inc:                                          ; preds = %if.end20, %for.body
  %root.2 = phi i32 [ %root.0226, %for.body ], [ %root.1, %if.end20 ]
  %nfront.1 = phi i32 [ %nfront.0227, %for.body ], [ %inc, %if.end20 ]
  %inc21 = add nsw i32 %iv.0228, 1, !dbg !118
  tail call void @llvm.dbg.value(metadata !{i32 %inc21}, i64 0, metadata !91), !dbg !118
  %incdec.ptr = getelementptr inbounds %struct._MSMDvtx* %v.0229, i64 1, !dbg !118
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %incdec.ptr}, i64 0, metadata !101), !dbg !118
  %exitcond238 = icmp eq i32 %inc21, %1, !dbg !118
  br i1 %exitcond238, label %for.end, label %for.body, !dbg !118

for.end:                                          ; preds = %for.inc, %if.end
  %nfront.0.lcssa = phi i32 [ 0, %if.end ], [ %nfront.1, %for.inc ]
  %root.0.lcssa = phi i32 [ -1, %if.end ], [ %root.2, %for.inc ]
  %call22 = tail call %struct._ETree* @ETree_new() #5, !dbg !133
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call22}, i64 0, metadata !89), !dbg !133
  tail call void @ETree_init1(%struct._ETree* %call22, i32 %nfront.0.lcssa, i32 %1) #5, !dbg !134
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 3, !dbg !135
  %12 = load %struct._IV** %nodwghtsIV, align 8, !dbg !135, !tbaa !107
  %call23 = tail call i32* @IV_entries(%struct._IV* %12) #5, !dbg !135
  tail call void @llvm.dbg.value(metadata !{i32* %call23}, i64 0, metadata !97), !dbg !135
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 4, !dbg !136
  %13 = load %struct._IV** %bndwghtsIV, align 8, !dbg !136, !tbaa !107
  %call24 = tail call i32* @IV_entries(%struct._IV* %13) #5, !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32* %call24}, i64 0, metadata !95), !dbg !136
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 5, !dbg !137
  %14 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !137, !tbaa !107
  %call25 = tail call i32* @IV_entries(%struct._IV* %14) #5, !dbg !137
  tail call void @llvm.dbg.value(metadata !{i32* %call25}, i64 0, metadata !100), !dbg !137
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !92), !dbg !138
  tail call void @llvm.dbg.value(metadata !{i32 %root.0.lcssa}, i64 0, metadata !91), !dbg !139
  %cmp26222 = icmp eq i32 %root.0.lcssa, -1, !dbg !140
  br i1 %cmp26222, label %while.end57, label %while.cond28.preheader.lr.ph, !dbg !140

while.cond28.preheader.lr.ph:                     ; preds = %for.end
  %15 = load %struct._MSMDvtx** %vertices, align 8, !dbg !141, !tbaa !107
  br label %while.cond28.preheader, !dbg !140

while.cond28.preheader:                           ; preds = %while.body48, %while.end, %while.cond28.preheader.lr.ph
  %iv.1224 = phi i32 [ %root.0.lcssa, %while.cond28.preheader.lr.ph ], [ %17, %while.end ], [ %20, %while.body48 ]
  %nfront.2223 = phi i32 [ 0, %while.cond28.preheader.lr.ph ], [ %nfront.3214, %while.end ], [ %nfront.3, %while.body48 ]
  br label %while.cond28, !dbg !143

while.cond28:                                     ; preds = %while.cond28.preheader, %while.cond28
  %iv.2 = phi i32 [ %16, %while.cond28 ], [ %iv.1224, %while.cond28.preheader ]
  %idxprom29 = sext i32 %iv.2 to i64, !dbg !143
  %arrayidx30 = getelementptr inbounds i32* %call2, i64 %idxprom29, !dbg !143
  %16 = load i32* %arrayidx30, align 4, !dbg !143, !tbaa !112
  %cmp31 = icmp eq i32 %16, -1, !dbg !143
  br i1 %cmp31, label %while.end, label %while.cond28, !dbg !143

while.end:                                        ; preds = %while.cond28
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %add.ptr}, i64 0, metadata !101), !dbg !141
  %arrayidx39 = getelementptr inbounds i32* %call25, i64 %idxprom29, !dbg !144
  store i32 %nfront.2223, i32* %arrayidx39, align 4, !dbg !144, !tbaa !112
  %nfront.3214 = add nsw i32 %nfront.2223, 1, !dbg !144
  %arrayidx42216 = getelementptr inbounds i32* %call3, i64 %idxprom29, !dbg !145
  %17 = load i32* %arrayidx42216, align 4, !dbg !145, !tbaa !112
  %cmp43217 = icmp eq i32 %17, -1, !dbg !145
  br i1 %cmp43217, label %land.rhs.lr.ph, label %while.cond28.preheader, !dbg !145

land.rhs.lr.ph:                                   ; preds = %while.end
  %add.ptr = getelementptr inbounds %struct._MSMDvtx* %15, i64 %idxprom29, !dbg !141
  br label %land.rhs, !dbg !145

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body48
  %nfront.3219 = phi i32 [ %nfront.3214, %land.rhs.lr.ph ], [ %nfront.3, %while.body48 ]
  %v.1218 = phi %struct._MSMDvtx* [ %add.ptr, %land.rhs.lr.ph ], [ %18, %while.body48 ]
  %par45 = getelementptr inbounds %struct._MSMDvtx* %v.1218, i64 0, i32 8, !dbg !145
  %18 = load %struct._MSMDvtx** %par45, align 8, !dbg !145, !tbaa !107
  %cmp46 = icmp eq %struct._MSMDvtx* %18, null, !dbg !145
  br i1 %cmp46, label %while.end57, label %while.body48

while.body48:                                     ; preds = %land.rhs
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %18}, i64 0, metadata !101), !dbg !146
  %id50 = getelementptr inbounds %struct._MSMDvtx* %18, i64 0, i32 0, !dbg !148
  %19 = load i32* %id50, align 4, !dbg !148, !tbaa !112
  tail call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !91), !dbg !148
  %idxprom52 = sext i32 %19 to i64, !dbg !149
  %arrayidx53 = getelementptr inbounds i32* %call25, i64 %idxprom52, !dbg !149
  store i32 %nfront.3219, i32* %arrayidx53, align 4, !dbg !149, !tbaa !112
  %nfront.3 = add nsw i32 %nfront.3219, 1, !dbg !144
  %arrayidx42 = getelementptr inbounds i32* %call3, i64 %idxprom52, !dbg !145
  %20 = load i32* %arrayidx42, align 4, !dbg !145, !tbaa !112
  %cmp43 = icmp eq i32 %20, -1, !dbg !145
  br i1 %cmp43, label %land.rhs, label %while.cond28.preheader, !dbg !145

while.end57:                                      ; preds = %land.rhs, %for.end
  tail call void @IVfree(i32* %call2) #5, !dbg !150
  tail call void @IVfree(i32* %call3) #5, !dbg !151
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !152
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %22}, i64 0, metadata !101), !dbg !152
  br i1 %cmp4225, label %for.body62.lr.ph, label %for.end94.thread, !dbg !152

for.end94.thread:                                 ; preds = %while.end57
  %tree242 = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 2, !dbg !154
  %21 = load %struct._Tree** %tree242, align 8, !dbg !154, !tbaa !107
  tail call void @llvm.dbg.value(metadata !{i32* %29}, i64 0, metadata !98), !dbg !154
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !155
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %30}, i64 0, metadata !101), !dbg !155
  br label %for.end128, !dbg !155

for.body62.lr.ph:                                 ; preds = %while.end57
  %22 = load %struct._MSMDvtx** %vertices, align 8, !dbg !152, !tbaa !107
  br label %for.body62, !dbg !152

for.body62:                                       ; preds = %for.inc91, %for.body62.lr.ph
  %v.2212 = phi %struct._MSMDvtx* [ %22, %for.body62.lr.ph ], [ %incdec.ptr93, %for.inc91 ]
  %iv.4211 = phi i32 [ 0, %for.body62.lr.ph ], [ %inc92, %for.inc91 ]
  %status63 = getelementptr inbounds %struct._MSMDvtx* %v.2212, i64 0, i32 2, !dbg !157
  %23 = load i8* %status63, align 1, !dbg !157, !tbaa !108
  %cond = icmp eq i8 %23, 73, !dbg !157
  br i1 %cond, label %while.cond66, label %for.inc91, !dbg !157

while.cond66:                                     ; preds = %while.cond66, %for.body62
  %w.0 = phi %struct._MSMDvtx* [ %v.2212, %for.body62 ], [ %24, %while.cond66 ]
  %par67 = getelementptr inbounds %struct._MSMDvtx* %w.0, i64 0, i32 8, !dbg !159
  %24 = load %struct._MSMDvtx** %par67, align 8, !dbg !159, !tbaa !107
  %cmp68 = icmp ne %struct._MSMDvtx* %24, null, !dbg !159
  %status79.phi.trans.insert = getelementptr inbounds %struct._MSMDvtx* %w.0, i64 0, i32 2
  %.pre = load i8* %status79.phi.trans.insert, align 1, !dbg !161, !tbaa !108
  %cmp73 = icmp eq i8 %.pre, 73, !dbg !159
  %or.cond = and i1 %cmp68, %cmp73, !dbg !159
  br i1 %or.cond, label %while.cond66, label %while.end78, !dbg !159

while.end78:                                      ; preds = %while.cond66
  %conv80 = sext i8 %.pre to i32, !dbg !161
  switch i32 %conv80, label %for.inc91 [
    i32 76, label %sw.bb81
    i32 69, label %sw.bb81
  ], !dbg !161

sw.bb81:                                          ; preds = %while.end78, %while.end78
  %id82 = getelementptr inbounds %struct._MSMDvtx* %w.0, i64 0, i32 0, !dbg !162
  %25 = load i32* %id82, align 4, !dbg !162, !tbaa !112
  %idxprom83 = sext i32 %25 to i64, !dbg !162
  %arrayidx84 = getelementptr inbounds i32* %call25, i64 %idxprom83, !dbg !162
  %26 = load i32* %arrayidx84, align 4, !dbg !162, !tbaa !112
  %id85 = getelementptr inbounds %struct._MSMDvtx* %v.2212, i64 0, i32 0, !dbg !162
  %27 = load i32* %id85, align 4, !dbg !162, !tbaa !112
  %idxprom86 = sext i32 %27 to i64, !dbg !162
  %arrayidx87 = getelementptr inbounds i32* %call25, i64 %idxprom86, !dbg !162
  store i32 %26, i32* %arrayidx87, align 4, !dbg !162, !tbaa !112
  br label %for.inc91, !dbg !164

for.inc91:                                        ; preds = %for.body62, %while.end78, %sw.bb81
  %inc92 = add nsw i32 %iv.4211, 1, !dbg !152
  tail call void @llvm.dbg.value(metadata !{i32 %inc92}, i64 0, metadata !91), !dbg !152
  %incdec.ptr93 = getelementptr inbounds %struct._MSMDvtx* %v.2212, i64 1, !dbg !152
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %incdec.ptr93}, i64 0, metadata !101), !dbg !152
  %exitcond233 = icmp eq i32 %inc92, %1, !dbg !152
  br i1 %exitcond233, label %for.end94, label %for.body62, !dbg !152

for.end94:                                        ; preds = %for.inc91
  %tree = getelementptr inbounds %struct._ETree* %call22, i64 0, i32 2, !dbg !154
  %28 = load %struct._Tree** %tree, align 8, !dbg !154, !tbaa !107
  %par95 = getelementptr inbounds %struct._Tree* %28, i64 0, i32 2, !dbg !154
  %29 = load i32** %par95, align 8, !dbg !154, !tbaa !107
  tail call void @llvm.dbg.value(metadata !{i32* %29}, i64 0, metadata !98), !dbg !154
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !91), !dbg !155
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %30}, i64 0, metadata !101), !dbg !155
  br i1 %cmp4225, label %for.body100.lr.ph, label %for.end128, !dbg !155

for.body100.lr.ph:                                ; preds = %for.end94
  %30 = load %struct._MSMDvtx** %vertices, align 8, !dbg !155, !tbaa !107
  br label %for.body100, !dbg !155

for.body100:                                      ; preds = %for.inc125, %for.body100.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body100.lr.ph ], [ %indvars.iv.next, %for.inc125 ]
  %v.3208 = phi %struct._MSMDvtx* [ %30, %for.body100.lr.ph ], [ %incdec.ptr127, %for.inc125 ]
  %status101 = getelementptr inbounds %struct._MSMDvtx* %v.3208, i64 0, i32 2, !dbg !165
  %31 = load i8* %status101, align 1, !dbg !165, !tbaa !108
  %conv102 = sext i8 %31 to i32, !dbg !165
  switch i32 %conv102, label %for.inc125 [
    i32 76, label %sw.bb103
    i32 69, label %sw.bb103
  ], !dbg !165

sw.bb103:                                         ; preds = %for.body100, %for.body100
  %arrayidx105 = getelementptr inbounds i32* %call25, i64 %indvars.iv, !dbg !167
  %32 = load i32* %arrayidx105, align 4, !dbg !167, !tbaa !112
  tail call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !90), !dbg !167
  %par106 = getelementptr inbounds %struct._MSMDvtx* %v.3208, i64 0, i32 8, !dbg !169
  %33 = load %struct._MSMDvtx** %par106, align 8, !dbg !169, !tbaa !107
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %33}, i64 0, metadata !102), !dbg !169
  %cmp107 = icmp eq %struct._MSMDvtx* %33, null, !dbg !169
  br i1 %cmp107, label %if.end118, label %if.then109, !dbg !169

if.then109:                                       ; preds = %sw.bb103
  %id110 = getelementptr inbounds %struct._MSMDvtx* %33, i64 0, i32 0, !dbg !170
  %34 = load i32* %id110, align 4, !dbg !170, !tbaa !112
  %idxprom111 = sext i32 %34 to i64, !dbg !170
  %arrayidx112 = getelementptr inbounds i32* %call25, i64 %idxprom111, !dbg !170
  %35 = load i32* %arrayidx112, align 4, !dbg !170, !tbaa !112
  %id113 = getelementptr inbounds %struct._MSMDvtx* %v.3208, i64 0, i32 0, !dbg !170
  %36 = load i32* %id113, align 4, !dbg !170, !tbaa !112
  %idxprom114 = sext i32 %36 to i64, !dbg !170
  %arrayidx115 = getelementptr inbounds i32* %call25, i64 %idxprom114, !dbg !170
  %37 = load i32* %arrayidx115, align 4, !dbg !170, !tbaa !112
  %idxprom116 = sext i32 %37 to i64, !dbg !170
  %arrayidx117 = getelementptr inbounds i32* %29, i64 %idxprom116, !dbg !170
  store i32 %35, i32* %arrayidx117, align 4, !dbg !170, !tbaa !112
  br label %if.end118, !dbg !172

if.end118:                                        ; preds = %sw.bb103, %if.then109
  %bndwght = getelementptr inbounds %struct._MSMDvtx* %v.3208, i64 0, i32 7, !dbg !173
  %38 = load i32* %bndwght, align 4, !dbg !173, !tbaa !112
  %idxprom119 = sext i32 %32 to i64, !dbg !173
  %arrayidx120 = getelementptr inbounds i32* %call24, i64 %idxprom119, !dbg !173
  store i32 %38, i32* %arrayidx120, align 4, !dbg !173, !tbaa !112
  %wght = getelementptr inbounds %struct._MSMDvtx* %v.3208, i64 0, i32 4, !dbg !174
  %39 = load i32* %wght, align 4, !dbg !174, !tbaa !112
  %arrayidx122 = getelementptr inbounds i32* %call23, i64 %idxprom119, !dbg !174
  store i32 %39, i32* %arrayidx122, align 4, !dbg !174, !tbaa !112
  br label %for.inc125, !dbg !175

for.inc125:                                       ; preds = %if.end118, %for.body100
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !155
  %incdec.ptr127 = getelementptr inbounds %struct._MSMDvtx* %v.3208, i64 1, !dbg !155
  tail call void @llvm.dbg.value(metadata !{%struct._MSMDvtx* %incdec.ptr127}, i64 0, metadata !101), !dbg !155
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !155
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !155
  br i1 %exitcond, label %for.end128, label %for.body100, !dbg !155

for.end128:                                       ; preds = %for.inc125, %for.end94.thread, %for.end94
  %40 = phi %struct._Tree* [ %21, %for.end94.thread ], [ %28, %for.end94 ], [ %28, %for.inc125 ]
  tail call void @Tree_setFchSibRoot(%struct._Tree* %40) #5, !dbg !176
  ret %struct._ETree* %call22, !dbg !177
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare %struct._ETree* @ETree_new() #3

; Function Attrs: optsize
declare void @ETree_init1(%struct._ETree*, i32, i32) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @Tree_setFchSibRoot(%struct._Tree*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"MSMD_frontETree", metadata !"MSMD_frontETree", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._ETree* (%struct._MSMD*)* @MSMD_frontETree, null, null, metadata !87, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [MSMD_frontETree]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !40}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ETree]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"ETree", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [ETree] [line 31, size 0, align 0, offset 0] [from _ETree]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_ETree", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ETree] [line 32, size 320, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../ETree/ETree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !28, metadata !38, metadata !39}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nfront", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nfront] [line 33, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvtx", i32 34, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 34, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tree", i32 35, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [tree] [line 35, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!18 = metadata !{i32 786454, metadata !11, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !26, metadata !27}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!28 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nodwghtsIV", i32 36, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [nodwghtsIV] [line 36, size 64, align 64, offset 128] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!30 = metadata !{i32 786454, metadata !11, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!38 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"bndwghtsIV", i32 37, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [bndwghtsIV] [line 37, size 64, align 64, offset 192] [from ]
!39 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vtxToFrontIV", i32 38, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [vtxToFrontIV] [line 38, size 64, align 64, offset 256] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSMD]
!41 = metadata !{i32 786454, metadata !1, null, metadata !"MSMD", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [MSMD] [line 15, size 0, align 0, offset 0] [from _MSMD]
!42 = metadata !{i32 786451, metadata !43, null, metadata !"_MSMD", i32 38, i64 768, i64 64, i32 0, i32 0, null, metadata !44, i32 0, null, null} ; [ DW_TAG_structure_type ] [_MSMD] [line 38, size 768, align 64, offset 0] [from ]
!43 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../MSMD.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!44 = metadata !{metadata !45, metadata !46, metadata !57, metadata !58, metadata !68, metadata !69, metadata !85, metadata !86}
!45 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"nvtx", i32 39, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 39, size 32, align 32, offset 0] [from int]
!46 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"heap", i32 40, i64 64, i64 64, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [heap] [line 40, size 64, align 64, offset 64] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IIheap]
!48 = metadata !{i32 786454, metadata !43, null, metadata !"IIheap", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [IIheap] [line 20, size 0, align 0, offset 0] [from _IIheap]
!49 = metadata !{i32 786451, metadata !50, null, metadata !"_IIheap", i32 21, i64 256, i64 64, i32 0, i32 0, null, metadata !51, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IIheap] [line 21, size 256, align 64, offset 0] [from ]
!50 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../IIheap/IIheap.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!51 = metadata !{metadata !52, metadata !53, metadata !54, metadata !55, metadata !56}
!52 = metadata !{i32 786445, metadata !50, metadata !49, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!53 = metadata !{i32 786445, metadata !50, metadata !49, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!54 = metadata !{i32 786445, metadata !50, metadata !49, metadata !"heapLoc", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [heapLoc] [line 24, size 64, align 64, offset 64] [from ]
!55 = metadata !{i32 786445, metadata !50, metadata !49, metadata !"keys", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [keys] [line 25, size 64, align 64, offset 128] [from ]
!56 = metadata !{i32 786445, metadata !50, metadata !49, metadata !"values", i32 26, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [values] [line 26, size 64, align 64, offset 192] [from ]
!57 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"incrIP", i32 41, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [incrIP] [line 41, size 32, align 32, offset 128] [from int]
!58 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"baseIP", i32 42, i64 64, i64 64, i64 192, i32 0, metadata !59} ; [ DW_TAG_member ] [baseIP] [line 42, size 64, align 64, offset 192] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IP]
!60 = metadata !{i32 786454, metadata !43, null, metadata !"IP", i32 10, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [IP] [line 10, size 0, align 0, offset 0] [from _IP]
!61 = metadata !{i32 786451, metadata !62, null, metadata !"_IP", i32 11, i64 128, i64 64, i32 0, i32 0, null, metadata !63, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IP] [line 11, size 128, align 64, offset 0] [from ]
!62 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/../../Utilities/IP.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!63 = metadata !{metadata !64, metadata !65}
!64 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"val", i32 12, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [val] [line 12, size 32, align 32, offset 0] [from int]
!65 = metadata !{i32 786445, metadata !62, metadata !61, metadata !"next", i32 13, i64 64, i64 64, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [next] [line 13, size 64, align 64, offset 64] [from ]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IP]
!67 = metadata !{i32 786454, metadata !62, null, metadata !"IP", i32 10, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [IP] [line 10, size 0, align 0, offset 0] [from _IP]
!68 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"freeIP", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !59} ; [ DW_TAG_member ] [freeIP] [line 43, size 64, align 64, offset 256] [from ]
!69 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"vertices", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !70} ; [ DW_TAG_member ] [vertices] [line 44, size 64, align 64, offset 320] [from ]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MSMDvtx]
!71 = metadata !{i32 786454, metadata !43, null, metadata !"MSMDvtx", i32 18, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [MSMDvtx] [line 18, size 0, align 0, offset 0] [from _MSMDvtx]
!72 = metadata !{i32 786451, metadata !43, null, metadata !"_MSMDvtx", i32 180, i64 448, i64 64, i32 0, i32 0, null, metadata !73, i32 0, null, null} ; [ DW_TAG_structure_type ] [_MSMDvtx] [line 180, size 448, align 64, offset 0] [from ]
!73 = metadata !{metadata !74, metadata !75, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84}
!74 = metadata !{i32 786445, metadata !43, metadata !72, metadata !"id", i32 181, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 181, size 32, align 32, offset 0] [from int]
!75 = metadata !{i32 786445, metadata !43, metadata !72, metadata !"mark", i32 182, i64 8, i64 8, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [mark] [line 182, size 8, align 8, offset 32] [from char]
!76 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!77 = metadata !{i32 786445, metadata !43, metadata !72, metadata !"status", i32 183, i64 8, i64 8, i64 40, i32 0, metadata !76} ; [ DW_TAG_member ] [status] [line 183, size 8, align 8, offset 40] [from char]
!78 = metadata !{i32 786445, metadata !43, metadata !72, metadata !"stage", i32 184, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [stage] [line 184, size 32, align 32, offset 64] [from int]
!79 = metadata !{i32 786445, metadata !43, metadata !72, metadata !"wght", i32 185, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [wght] [line 185, size 32, align 32, offset 96] [from int]
!80 = metadata !{i32 786445, metadata !43, metadata !72, metadata !"nadj", i32 186, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nadj] [line 186, size 32, align 32, offset 128] [from int]
!81 = metadata !{i32 786445, metadata !43, metadata !72, metadata !"adj", i32 187, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [adj] [line 187, size 64, align 64, offset 192] [from ]
!82 = metadata !{i32 786445, metadata !43, metadata !72, metadata !"bndwght", i32 188, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [bndwght] [line 188, size 32, align 32, offset 256] [from int]
!83 = metadata !{i32 786445, metadata !43, metadata !72, metadata !"par", i32 189, i64 64, i64 64, i64 320, i32 0, metadata !70} ; [ DW_TAG_member ] [par] [line 189, size 64, align 64, offset 320] [from ]
!84 = metadata !{i32 786445, metadata !43, metadata !72, metadata !"subtrees", i32 190, i64 64, i64 64, i64 384, i32 0, metadata !59} ; [ DW_TAG_member ] [subtrees] [line 190, size 64, align 64, offset 384] [from ]
!85 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"ivtmpIV", i32 45, i64 192, i64 64, i64 384, i32 0, metadata !30} ; [ DW_TAG_member ] [ivtmpIV] [line 45, size 192, align 64, offset 384] [from IV]
!86 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"reachIV", i32 46, i64 192, i64 64, i64 576, i32 0, metadata !30} ; [ DW_TAG_member ] [reachIV] [line 46, size 192, align 64, offset 576] [from IV]
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102}
!88 = metadata !{i32 786689, metadata !4, metadata !"msmd", metadata !5, i32 16777233, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msmd] [line 17]
!89 = metadata !{i32 786688, metadata !4, metadata !"etree", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [etree] [line 19]
!90 = metadata !{i32 786688, metadata !4, metadata !"front", metadata !5, i32 20, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [front] [line 20]
!91 = metadata !{i32 786688, metadata !4, metadata !"iv", metadata !5, i32 20, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iv] [line 20]
!92 = metadata !{i32 786688, metadata !4, metadata !"nfront", metadata !5, i32 20, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 20]
!93 = metadata !{i32 786688, metadata !4, metadata !"nvtx", metadata !5, i32 20, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 20]
!94 = metadata !{i32 786688, metadata !4, metadata !"root", metadata !5, i32 20, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root] [line 20]
!95 = metadata !{i32 786688, metadata !4, metadata !"bndwghts", metadata !5, i32 21, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts] [line 21]
!96 = metadata !{i32 786688, metadata !4, metadata !"fch", metadata !5, i32 21, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch] [line 21]
!97 = metadata !{i32 786688, metadata !4, metadata !"nodwghts", metadata !5, i32 21, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts] [line 21]
!98 = metadata !{i32 786688, metadata !4, metadata !"par", metadata !5, i32 21, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par] [line 21]
!99 = metadata !{i32 786688, metadata !4, metadata !"sib", metadata !5, i32 21, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib] [line 21]
!100 = metadata !{i32 786688, metadata !4, metadata !"vtxToFront", metadata !5, i32 21, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront] [line 21]
!101 = metadata !{i32 786688, metadata !4, metadata !"v", metadata !5, i32 22, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 22]
!102 = metadata !{i32 786688, metadata !4, metadata !"w", metadata !5, i32 22, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 22]
!103 = metadata !{i32 17, i32 0, metadata !4, null}
!104 = metadata !{i32 28, i32 0, metadata !4, null}
!105 = metadata !{i32 29, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!107 = metadata !{metadata !"any pointer", metadata !108}
!108 = metadata !{metadata !"omnipotent char", metadata !109}
!109 = metadata !{metadata !"Simple C/C++ TBAA"}
!110 = metadata !{i32 31, i32 0, metadata !106, null}
!111 = metadata !{i32 33, i32 0, metadata !4, null}
!112 = metadata !{metadata !"int", metadata !108}
!113 = metadata !{i32 39, i32 0, metadata !4, null}
!114 = metadata !{i32 40, i32 0, metadata !4, null}
!115 = metadata !{i32 41, i32 0, metadata !4, null}
!116 = metadata !{i32 -1}
!117 = metadata !{i32 42, i32 0, metadata !4, null}
!118 = metadata !{i32 43, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !4, i32 43, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!120 = metadata !{i32 52, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !119, i32 43, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!122 = metadata !{i32 55, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !121, i32 52, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!124 = metadata !{i32 56, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !123, i32 55, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!126 = metadata !{i32 57, i32 0, metadata !125, null}
!127 = metadata !{i32 58, i32 0, metadata !125, null} ; [ DW_TAG_imported_module ]
!128 = metadata !{i32 59, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !123, i32 58, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!130 = metadata !{i32 60, i32 0, metadata !129, null}
!131 = metadata !{i32 66, i32 0, metadata !123, null}
!132 = metadata !{i32 67, i32 0, metadata !123, null}
!133 = metadata !{i32 81, i32 0, metadata !4, null}
!134 = metadata !{i32 82, i32 0, metadata !4, null}
!135 = metadata !{i32 83, i32 0, metadata !4, null}
!136 = metadata !{i32 84, i32 0, metadata !4, null}
!137 = metadata !{i32 85, i32 0, metadata !4, null}
!138 = metadata !{i32 92, i32 0, metadata !4, null}
!139 = metadata !{i32 93, i32 0, metadata !4, null}
!140 = metadata !{i32 94, i32 0, metadata !4, null}
!141 = metadata !{i32 98, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !4, i32 94, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!143 = metadata !{i32 95, i32 0, metadata !142, null}
!144 = metadata !{i32 99, i32 0, metadata !142, null}
!145 = metadata !{i32 105, i32 0, metadata !142, null}
!146 = metadata !{i32 106, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !142, i32 105, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!148 = metadata !{i32 107, i32 0, metadata !147, null}
!149 = metadata !{i32 108, i32 0, metadata !147, null}
!150 = metadata !{i32 117, i32 0, metadata !4, null}
!151 = metadata !{i32 118, i32 0, metadata !4, null}
!152 = metadata !{i32 124, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !4, i32 124, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!154 = metadata !{i32 176, i32 0, metadata !4, null}
!155 = metadata !{i32 177, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !4, i32 177, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!157 = metadata !{i32 130, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !153, i32 124, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!159 = metadata !{i32 137, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !158, i32 130, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!161 = metadata !{i32 151, i32 0, metadata !160, null}
!162 = metadata !{i32 154, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !160, i32 151, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!164 = metadata !{i32 160, i32 0, metadata !163, null}
!165 = metadata !{i32 182, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !156, i32 177, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!167 = metadata !{i32 185, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !166, i32 182, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!169 = metadata !{i32 190, i32 0, metadata !168, null}
!170 = metadata !{i32 191, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !168, i32 190, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_frontETree.c]
!172 = metadata !{i32 196, i32 0, metadata !171, null}
!173 = metadata !{i32 197, i32 0, metadata !168, null}
!174 = metadata !{i32 198, i32 0, metadata !168, null}
!175 = metadata !{i32 199, i32 0, metadata !168, null}
!176 = metadata !{i32 209, i32 0, metadata !4, null}
!177 = metadata !{i32 211, i32 0, metadata !4, null}
