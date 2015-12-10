; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_newToOldFrontPerm(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_oldToNewFrontPerm(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"\0A fatal error in ETree_newToOldVtxPerm(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in ETree_oldToNewVtxPerm(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"\0A fatal error in ETree_permuteVertices(%p,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [49 x i8] c"\0A etree->nvtx = %d, IV_size(vtxOldToNewIV) = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_newToOldFrontPerm(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !41), !dbg !88
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !89
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !89

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !89
  %0 = load i32* %nfront1, align 4, !dbg !89, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !42), !dbg !89
  %cmp2 = icmp slt i32 %0, 1, !dbg !89
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !89

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !89
  %1 = load i32* %nvtx4, align 4, !dbg !89, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !43), !dbg !89
  %cmp5 = icmp slt i32 %1, 1, !dbg !89
  br i1 %cmp5, label %if.then, label %if.end, !dbg !89

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !93, !tbaa !95
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !93
  tail call void @exit(i32 -1) #6, !dbg !96
  unreachable, !dbg !96

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call %struct._IV* @IV_new() #5, !dbg !97
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call6}, i64 0, metadata !44), !dbg !97
  tail call void @IV_init(%struct._IV* %call6, i32 %0, i32* null) #5, !dbg !98
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !99
  %3 = load %struct._Tree** %tree, align 8, !dbg !99, !tbaa !95
  %call7 = tail call i32* @IV_entries(%struct._IV* %call6) #5, !dbg !99
  tail call void @Tree_fillNewToOldPerm(%struct._Tree* %3, i32* %call7) #5, !dbg !99
  ret %struct._IV* %call6, !dbg !100
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @Tree_fillNewToOldPerm(%struct._Tree*, i32*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_oldToNewFrontPerm(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !47), !dbg !101
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !102
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !102

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !102
  %0 = load i32* %nfront1, align 4, !dbg !102, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !48), !dbg !102
  %cmp2 = icmp slt i32 %0, 1, !dbg !102
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !102

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !102
  %1 = load i32* %nvtx4, align 4, !dbg !102, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !49), !dbg !102
  %cmp5 = icmp slt i32 %1, 1, !dbg !102
  br i1 %cmp5, label %if.then, label %if.end, !dbg !102

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !103, !tbaa !95
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !103
  tail call void @exit(i32 -1) #6, !dbg !105
  unreachable, !dbg !105

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call %struct._IV* @IV_new() #5, !dbg !106
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call6}, i64 0, metadata !50), !dbg !106
  tail call void @IV_init(%struct._IV* %call6, i32 %0, i32* null) #5, !dbg !107
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !108
  %3 = load %struct._Tree** %tree, align 8, !dbg !108, !tbaa !95
  %call7 = tail call i32* @IV_entries(%struct._IV* %call6) #5, !dbg !108
  tail call void @Tree_fillOldToNewPerm(%struct._Tree* %3, i32* %call7) #5, !dbg !108
  ret %struct._IV* %call6, !dbg !109
}

; Function Attrs: optsize
declare void @Tree_fillOldToNewPerm(%struct._Tree*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_newToOldVtxPerm(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !53), !dbg !110
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !111
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !111

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !111
  %0 = load i32* %nfront1, align 4, !dbg !111, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !56), !dbg !111
  %cmp2 = icmp slt i32 %0, 1, !dbg !111
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !111

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !111
  %1 = load i32* %nvtx4, align 4, !dbg !111, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !57), !dbg !111
  %cmp5 = icmp slt i32 %1, 1, !dbg !111
  br i1 %cmp5, label %if.then, label %for.body.lr.ph, !dbg !111

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !112, !tbaa !95
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !112
  tail call void @exit(i32 -1) #6, !dbg !114
  unreachable, !dbg !114

for.body.lr.ph:                                   ; preds = %lor.lhs.false3
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !115
  %3 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !115, !tbaa !95
  %call6 = tail call i32* @IV_entries(%struct._IV* %3) #5, !dbg !115
  tail call void @llvm.dbg.value(metadata !{i32* %call6}, i64 0, metadata !62), !dbg !115
  %call7 = tail call %struct._IV* @IV_new() #5, !dbg !116
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call7}, i64 0, metadata !63), !dbg !116
  tail call void @IV_init(%struct._IV* %call7, i32 %1, i32* null) #5, !dbg !117
  %call8 = tail call i32* @IV_entries(%struct._IV* %call7) #5, !dbg !118
  tail call void @llvm.dbg.value(metadata !{i32* %call8}, i64 0, metadata !61), !dbg !118
  %call9 = tail call i32* @IVinit(i32 %0, i32 -1) #5, !dbg !119
  tail call void @llvm.dbg.value(metadata !{i32* %call9}, i64 0, metadata !59), !dbg !119
  %call10 = tail call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !120
  tail call void @llvm.dbg.value(metadata !{i32* %call10}, i64 0, metadata !60), !dbg !120
  %4 = sext i32 %1 to i64
  br label %for.body, !dbg !121

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv73 = phi i64 [ %4, %for.body.lr.ph ], [ %indvars.iv.next74, %for.body ]
  %indvars.iv.next74 = add i64 %indvars.iv73, -1, !dbg !121
  %arrayidx = getelementptr inbounds i32* %call6, i64 %indvars.iv.next74, !dbg !123
  %5 = load i32* %arrayidx, align 4, !dbg !123, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !55), !dbg !123
  %idxprom12 = sext i32 %5 to i64, !dbg !125
  %arrayidx13 = getelementptr inbounds i32* %call9, i64 %idxprom12, !dbg !125
  %6 = load i32* %arrayidx13, align 4, !dbg !125, !tbaa !90
  %arrayidx15 = getelementptr inbounds i32* %call10, i64 %indvars.iv.next74, !dbg !125
  store i32 %6, i32* %arrayidx15, align 4, !dbg !125, !tbaa !90
  %7 = trunc i64 %indvars.iv.next74 to i32, !dbg !126
  store i32 %7, i32* %arrayidx13, align 4, !dbg !126, !tbaa !90
  %cmp11 = icmp sgt i32 %7, 0, !dbg !121
  br i1 %cmp11, label %for.body, label %for.end, !dbg !121

for.end:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !54), !dbg !127
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !128
  %8 = load %struct._Tree** %tree, align 8, !dbg !128, !tbaa !95
  %call18 = tail call i32 @Tree_postOTfirst(%struct._Tree* %8) #5, !dbg !128
  tail call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !55), !dbg !128
  %cmp2067 = icmp eq i32 %call18, -1, !dbg !128
  br i1 %cmp2067, label %for.end36, label %for.body21, !dbg !128

for.body21:                                       ; preds = %for.end, %for.inc33
  %count.069 = phi i32 [ %count.1.lcssa, %for.inc33 ], [ 0, %for.end ]
  %front.068 = phi i32 [ %call35, %for.inc33 ], [ %call18, %for.end ]
  %idxprom22 = sext i32 %front.068 to i64, !dbg !130
  %arrayidx23 = getelementptr inbounds i32* %call9, i64 %idxprom22, !dbg !130
  %v.163 = load i32* %arrayidx23, align 4, !dbg !130
  %cmp2564 = icmp eq i32 %v.163, -1, !dbg !130
  br i1 %cmp2564, label %for.inc33, label %for.body26.lr.ph, !dbg !130

for.body26.lr.ph:                                 ; preds = %for.body21
  %9 = sext i32 %count.069 to i64
  br label %for.body26, !dbg !130

for.body26:                                       ; preds = %for.body26.lr.ph, %for.body26
  %indvars.iv = phi i64 [ %9, %for.body26.lr.ph ], [ %indvars.iv.next, %for.body26 ]
  %v.166 = phi i32 [ %v.163, %for.body26.lr.ph ], [ %v.1, %for.body26 ]
  %count.165 = phi i32 [ %count.069, %for.body26.lr.ph ], [ %inc, %for.body26 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !130
  %inc = add nsw i32 %count.165, 1, !dbg !133
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !54), !dbg !133
  %arrayidx28 = getelementptr inbounds i32* %call8, i64 %indvars.iv, !dbg !133
  store i32 %v.166, i32* %arrayidx28, align 4, !dbg !133, !tbaa !90
  %idxprom30 = sext i32 %v.166 to i64, !dbg !130
  %arrayidx31 = getelementptr inbounds i32* %call10, i64 %idxprom30, !dbg !130
  %v.1 = load i32* %arrayidx31, align 4, !dbg !130
  %cmp25 = icmp eq i32 %v.1, -1, !dbg !130
  br i1 %cmp25, label %for.inc33, label %for.body26, !dbg !130

for.inc33:                                        ; preds = %for.body26, %for.body21
  %count.1.lcssa = phi i32 [ %count.069, %for.body21 ], [ %inc, %for.body26 ]
  %10 = load %struct._Tree** %tree, align 8, !dbg !135, !tbaa !95
  %call35 = tail call i32 @Tree_postOTnext(%struct._Tree* %10, i32 %front.068) #5, !dbg !135
  tail call void @llvm.dbg.value(metadata !{i32 %call35}, i64 0, metadata !55), !dbg !135
  %cmp20 = icmp eq i32 %call35, -1, !dbg !128
  br i1 %cmp20, label %for.end36, label %for.body21, !dbg !128

for.end36:                                        ; preds = %for.inc33, %for.end
  tail call void @IVfree(i32* %call9) #5, !dbg !136
  tail call void @IVfree(i32* %call10) #5, !dbg !137
  ret %struct._IV* %call7, !dbg !138
}

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_oldToNewVtxPerm(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !66), !dbg !139
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !140
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !140

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !140
  %0 = load i32* %nfront1, align 4, !dbg !140, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !69), !dbg !140
  %cmp2 = icmp slt i32 %0, 1, !dbg !140
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !140

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !140
  %1 = load i32* %nvtx4, align 4, !dbg !140, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !70), !dbg !140
  %cmp5 = icmp slt i32 %1, 1, !dbg !140
  br i1 %cmp5, label %if.then, label %for.body.lr.ph, !dbg !140

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !141, !tbaa !95
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !141
  tail call void @exit(i32 -1) #6, !dbg !143
  unreachable, !dbg !143

for.body.lr.ph:                                   ; preds = %lor.lhs.false3
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !144
  %3 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !144, !tbaa !95
  %call6 = tail call i32* @IV_entries(%struct._IV* %3) #5, !dbg !144
  tail call void @llvm.dbg.value(metadata !{i32* %call6}, i64 0, metadata !75), !dbg !144
  %call7 = tail call %struct._IV* @IV_new() #5, !dbg !145
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call7}, i64 0, metadata !76), !dbg !145
  tail call void @IV_init(%struct._IV* %call7, i32 %1, i32* null) #5, !dbg !146
  %call8 = tail call i32* @IV_entries(%struct._IV* %call7) #5, !dbg !147
  tail call void @llvm.dbg.value(metadata !{i32* %call8}, i64 0, metadata !74), !dbg !147
  %call9 = tail call i32* @IVinit(i32 %0, i32 -1) #5, !dbg !148
  tail call void @llvm.dbg.value(metadata !{i32* %call9}, i64 0, metadata !72), !dbg !148
  %call10 = tail call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !149
  tail call void @llvm.dbg.value(metadata !{i32* %call10}, i64 0, metadata !73), !dbg !149
  %4 = sext i32 %1 to i64
  br label %for.body, !dbg !150

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %4, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !150
  %arrayidx = getelementptr inbounds i32* %call6, i64 %indvars.iv.next, !dbg !152
  %5 = load i32* %arrayidx, align 4, !dbg !152, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !68), !dbg !152
  %idxprom12 = sext i32 %5 to i64, !dbg !154
  %arrayidx13 = getelementptr inbounds i32* %call9, i64 %idxprom12, !dbg !154
  %6 = load i32* %arrayidx13, align 4, !dbg !154, !tbaa !90
  %arrayidx15 = getelementptr inbounds i32* %call10, i64 %indvars.iv.next, !dbg !154
  store i32 %6, i32* %arrayidx15, align 4, !dbg !154, !tbaa !90
  %7 = trunc i64 %indvars.iv.next to i32, !dbg !155
  store i32 %7, i32* %arrayidx13, align 4, !dbg !155, !tbaa !90
  %cmp11 = icmp sgt i32 %7, 0, !dbg !150
  br i1 %cmp11, label %for.body, label %for.end, !dbg !150

for.end:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !67), !dbg !156
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !157
  %8 = load %struct._Tree** %tree, align 8, !dbg !157, !tbaa !95
  %call18 = tail call i32 @Tree_postOTfirst(%struct._Tree* %8) #5, !dbg !157
  tail call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !68), !dbg !157
  %cmp2067 = icmp eq i32 %call18, -1, !dbg !157
  br i1 %cmp2067, label %for.end36, label %for.body21, !dbg !157

for.body21:                                       ; preds = %for.end, %for.inc33
  %count.069 = phi i32 [ %count.1.lcssa, %for.inc33 ], [ 0, %for.end ]
  %front.068 = phi i32 [ %call35, %for.inc33 ], [ %call18, %for.end ]
  %idxprom22 = sext i32 %front.068 to i64, !dbg !159
  %arrayidx23 = getelementptr inbounds i32* %call9, i64 %idxprom22, !dbg !159
  %v.163 = load i32* %arrayidx23, align 4, !dbg !159
  %cmp2564 = icmp eq i32 %v.163, -1, !dbg !159
  br i1 %cmp2564, label %for.inc33, label %for.body26, !dbg !159

for.body26:                                       ; preds = %for.body21, %for.body26
  %v.166 = phi i32 [ %v.1, %for.body26 ], [ %v.163, %for.body21 ]
  %count.165 = phi i32 [ %inc, %for.body26 ], [ %count.069, %for.body21 ]
  %inc = add nsw i32 %count.165, 1, !dbg !162
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !67), !dbg !162
  %idxprom27 = sext i32 %v.166 to i64, !dbg !162
  %arrayidx28 = getelementptr inbounds i32* %call8, i64 %idxprom27, !dbg !162
  store i32 %count.165, i32* %arrayidx28, align 4, !dbg !162, !tbaa !90
  %arrayidx31 = getelementptr inbounds i32* %call10, i64 %idxprom27, !dbg !159
  %v.1 = load i32* %arrayidx31, align 4, !dbg !159
  %cmp25 = icmp eq i32 %v.1, -1, !dbg !159
  br i1 %cmp25, label %for.inc33, label %for.body26, !dbg !159

for.inc33:                                        ; preds = %for.body26, %for.body21
  %count.1.lcssa = phi i32 [ %count.069, %for.body21 ], [ %inc, %for.body26 ]
  %9 = load %struct._Tree** %tree, align 8, !dbg !164, !tbaa !95
  %call35 = tail call i32 @Tree_postOTnext(%struct._Tree* %9, i32 %front.068) #5, !dbg !164
  tail call void @llvm.dbg.value(metadata !{i32 %call35}, i64 0, metadata !68), !dbg !164
  %cmp20 = icmp eq i32 %call35, -1, !dbg !157
  br i1 %cmp20, label %for.end36, label %for.body21, !dbg !157

for.end36:                                        ; preds = %for.inc33, %for.end
  tail call void @IVfree(i32* %call9) #5, !dbg !165
  tail call void @IVfree(i32* %call10) #5, !dbg !166
  ret %struct._IV* %call7, !dbg !167
}

; Function Attrs: nounwind optsize uwtable
define void @ETree_permuteVertices(%struct._ETree* %etree, %struct._IV* %vtxOldToNewIV) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !81), !dbg !168
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %vtxOldToNewIV}, i64 0, metadata !82), !dbg !169
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !170
  %cmp1 = icmp eq %struct._IV* %vtxOldToNewIV, null, !dbg !170
  %or.cond = or i1 %cmp, %cmp1, !dbg !170
  br i1 %or.cond, label %if.then.thread, label %lor.lhs.false2, !dbg !170

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !171, !tbaa !95
  %call743 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, %struct._IV* %vtxOldToNewIV) #5, !dbg !171
  br label %if.end, !dbg !173

lor.lhs.false2:                                   ; preds = %entry
  %nvtx3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !170
  %1 = load i32* %nvtx3, align 4, !dbg !170, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !83), !dbg !170
  %cmp4 = icmp slt i32 %1, 1, !dbg !170
  br i1 %cmp4, label %if.then.thread44, label %lor.lhs.false5, !dbg !170

if.then.thread44:                                 ; preds = %lor.lhs.false2
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !171, !tbaa !95
  %call745 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, %struct._IV* %vtxOldToNewIV) #5, !dbg !171
  br label %if.then10, !dbg !173

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %call = tail call i32 @IV_size(%struct._IV* %vtxOldToNewIV) #5, !dbg !174
  %cmp6 = icmp eq i32 %1, %call, !dbg !174
  br i1 %cmp6, label %for.body.lr.ph, label %if.then, !dbg !174

if.then:                                          ; preds = %lor.lhs.false5
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !171, !tbaa !95
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree, %struct._IV* %vtxOldToNewIV) #5, !dbg !171
  br label %if.then10, !dbg !173

if.then10:                                        ; preds = %if.then, %if.then.thread44
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !175, !tbaa !95
  %5 = load i32* %nvtx3, align 4, !dbg !175, !tbaa !90
  %call12 = tail call i32 @IV_size(%struct._IV* %vtxOldToNewIV) #5, !dbg !177
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([49 x i8]* @.str5, i64 0, i64 0), i32 %5, i32 %call12) #5, !dbg !177
  br label %if.end, !dbg !178

if.end:                                           ; preds = %if.then.thread, %if.then10
  tail call void @exit(i32 -1) #6, !dbg !179
  unreachable, !dbg !179

for.body.lr.ph:                                   ; preds = %lor.lhs.false5
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !180
  %6 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !180, !tbaa !95
  %call15 = tail call i32* @IV_entries(%struct._IV* %6) #5, !dbg !180
  tail call void @llvm.dbg.value(metadata !{i32* %call15}, i64 0, metadata !87), !dbg !180
  %call16 = tail call i32* @IV_entries(%struct._IV* %vtxOldToNewIV) #5, !dbg !181
  tail call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !85), !dbg !181
  %call17 = tail call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !182
  tail call void @llvm.dbg.value(metadata !{i32* %call17}, i64 0, metadata !86), !dbg !182
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !84), !dbg !183
  br label %for.body, !dbg !183

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %call15, i64 %indvars.iv, !dbg !185
  %7 = load i32* %arrayidx, align 4, !dbg !185, !tbaa !90
  %arrayidx20 = getelementptr inbounds i32* %call16, i64 %indvars.iv, !dbg !185
  %8 = load i32* %arrayidx20, align 4, !dbg !185, !tbaa !90
  %idxprom21 = sext i32 %8 to i64, !dbg !185
  %arrayidx22 = getelementptr inbounds i32* %call17, i64 %idxprom21, !dbg !185
  store i32 %7, i32* %arrayidx22, align 4, !dbg !185, !tbaa !90
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !183
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !183
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !183
  br i1 %exitcond, label %for.end, label %for.body, !dbg !183

for.end:                                          ; preds = %for.body
  tail call void @IVcopy(i32 %1, i32* %call15, i32* %call17) #5, !dbg !187
  tail call void @IVfree(i32* %call17) #5, !dbg !188
  ret void, !dbg !189
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !45, metadata !51, metadata !64, metadata !77}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_newToOldFrontPerm", metadata !"ETree_newToOldFrontPerm", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._ETree*)* @ETree_newToOldFrontPerm, null, null, metadata !40, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [ETree_newToOldFrontPerm]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !19}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ETree]
!20 = metadata !{i32 786454, metadata !1, null, metadata !"ETree", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [ETree] [line 31, size 0, align 0, offset 0] [from _ETree]
!21 = metadata !{i32 786451, metadata !22, null, metadata !"_ETree", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !23, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ETree] [line 32, size 320, align 64, offset 0] [from ]
!22 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../ETree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !37, metadata !38, metadata !39}
!24 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"nfront", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nfront] [line 33, size 32, align 32, offset 0] [from int]
!25 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"nvtx", i32 34, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 34, size 32, align 32, offset 32] [from int]
!26 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"tree", i32 35, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [tree] [line 35, size 64, align 64, offset 64] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!28 = metadata !{i32 786454, metadata !22, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35, metadata !36}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!34 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !18} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!36 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!37 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"nodwghtsIV", i32 36, i64 64, i64 64, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [nodwghtsIV] [line 36, size 64, align 64, offset 128] [from ]
!38 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"bndwghtsIV", i32 37, i64 64, i64 64, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [bndwghtsIV] [line 37, size 64, align 64, offset 192] [from ]
!39 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"vtxToFrontIV", i32 38, i64 64, i64 64, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [vtxToFrontIV] [line 38, size 64, align 64, offset 256] [from ]
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44}
!41 = metadata !{i32 786689, metadata !4, metadata !"etree", metadata !5, i32 16777231, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 15]
!42 = metadata !{i32 786688, metadata !4, metadata !"nfront", metadata !5, i32 17, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 17]
!43 = metadata !{i32 786688, metadata !4, metadata !"nvtx", metadata !5, i32 17, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 17]
!44 = metadata !{i32 786688, metadata !4, metadata !"newToOldIV", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newToOldIV] [line 18]
!45 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_oldToNewFrontPerm", metadata !"ETree_oldToNewFrontPerm", metadata !"", i32 51, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._ETree*)* @ETree_oldToNewFrontPerm, null, null, metadata !46, i32 53} ; [ DW_TAG_subprogram ] [line 51] [def] [scope 53] [ETree_oldToNewFrontPerm]
!46 = metadata !{metadata !47, metadata !48, metadata !49, metadata !50}
!47 = metadata !{i32 786689, metadata !45, metadata !"etree", metadata !5, i32 16777268, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 52]
!48 = metadata !{i32 786688, metadata !45, metadata !"nfront", metadata !5, i32 54, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 54]
!49 = metadata !{i32 786688, metadata !45, metadata !"nvtx", metadata !5, i32 54, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 54]
!50 = metadata !{i32 786688, metadata !45, metadata !"oldToNewIV", metadata !5, i32 55, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldToNewIV] [line 55]
!51 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_newToOldVtxPerm", metadata !"ETree_newToOldVtxPerm", metadata !"", i32 88, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._ETree*)* @ETree_newToOldVtxPerm, null, null, metadata !52, i32 90} ; [ DW_TAG_subprogram ] [line 88] [def] [scope 90] [ETree_newToOldVtxPerm]
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63}
!53 = metadata !{i32 786689, metadata !51, metadata !"etree", metadata !5, i32 16777305, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 89]
!54 = metadata !{i32 786688, metadata !51, metadata !"count", metadata !5, i32 91, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 91]
!55 = metadata !{i32 786688, metadata !51, metadata !"front", metadata !5, i32 91, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [front] [line 91]
!56 = metadata !{i32 786688, metadata !51, metadata !"nfront", metadata !5, i32 91, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 91]
!57 = metadata !{i32 786688, metadata !51, metadata !"nvtx", metadata !5, i32 91, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 91]
!58 = metadata !{i32 786688, metadata !51, metadata !"v", metadata !5, i32 91, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 91]
!59 = metadata !{i32 786688, metadata !51, metadata !"head", metadata !5, i32 92, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head] [line 92]
!60 = metadata !{i32 786688, metadata !51, metadata !"link", metadata !5, i32 92, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [link] [line 92]
!61 = metadata !{i32 786688, metadata !51, metadata !"newToOld", metadata !5, i32 92, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newToOld] [line 92]
!62 = metadata !{i32 786688, metadata !51, metadata !"vtxToFront", metadata !5, i32 92, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront] [line 92]
!63 = metadata !{i32 786688, metadata !51, metadata !"newToOldVtxIV", metadata !5, i32 93, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newToOldVtxIV] [line 93]
!64 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_oldToNewVtxPerm", metadata !"ETree_oldToNewVtxPerm", metadata !"", i32 154, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._ETree*)* @ETree_oldToNewVtxPerm, null, null, metadata !65, i32 156} ; [ DW_TAG_subprogram ] [line 154] [def] [scope 156] [ETree_oldToNewVtxPerm]
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76}
!66 = metadata !{i32 786689, metadata !64, metadata !"etree", metadata !5, i32 16777371, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 155]
!67 = metadata !{i32 786688, metadata !64, metadata !"count", metadata !5, i32 157, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 157]
!68 = metadata !{i32 786688, metadata !64, metadata !"front", metadata !5, i32 157, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [front] [line 157]
!69 = metadata !{i32 786688, metadata !64, metadata !"nfront", metadata !5, i32 157, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 157]
!70 = metadata !{i32 786688, metadata !64, metadata !"nvtx", metadata !5, i32 157, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 157]
!71 = metadata !{i32 786688, metadata !64, metadata !"v", metadata !5, i32 157, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 157]
!72 = metadata !{i32 786688, metadata !64, metadata !"head", metadata !5, i32 158, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head] [line 158]
!73 = metadata !{i32 786688, metadata !64, metadata !"link", metadata !5, i32 158, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [link] [line 158]
!74 = metadata !{i32 786688, metadata !64, metadata !"oldToNew", metadata !5, i32 158, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldToNew] [line 158]
!75 = metadata !{i32 786688, metadata !64, metadata !"vtxToFront", metadata !5, i32 158, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront] [line 158]
!76 = metadata !{i32 786688, metadata !64, metadata !"oldToNewVtxIV", metadata !5, i32 159, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldToNewVtxIV] [line 159]
!77 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_permuteVertices", metadata !"ETree_permuteVertices", metadata !"", i32 221, metadata !78, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ETree*, %struct._IV*)* @ETree_permuteVertices, null, null, metadata !80, i32 224} ; [ DW_TAG_subprogram ] [line 221] [def] [scope 224] [ETree_permuteVertices]
!78 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!79 = metadata !{null, metadata !19, metadata !8}
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87}
!81 = metadata !{i32 786689, metadata !77, metadata !"etree", metadata !5, i32 16777438, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 222]
!82 = metadata !{i32 786689, metadata !77, metadata !"vtxOldToNewIV", metadata !5, i32 33554655, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtxOldToNewIV] [line 223]
!83 = metadata !{i32 786688, metadata !77, metadata !"nvtx", metadata !5, i32 225, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 225]
!84 = metadata !{i32 786688, metadata !77, metadata !"v", metadata !5, i32 225, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 225]
!85 = metadata !{i32 786688, metadata !77, metadata !"oldToNew", metadata !5, i32 226, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldToNew] [line 226]
!86 = metadata !{i32 786688, metadata !77, metadata !"temp", metadata !5, i32 226, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 226]
!87 = metadata !{i32 786688, metadata !77, metadata !"vtxToFront", metadata !5, i32 226, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront] [line 226]
!88 = metadata !{i32 15, i32 0, metadata !4, null}
!89 = metadata !{i32 24, i32 0, metadata !4, null}
!90 = metadata !{metadata !"int", metadata !91}
!91 = metadata !{metadata !"omnipotent char", metadata !92}
!92 = metadata !{metadata !"Simple C/C++ TBAA"}
!93 = metadata !{i32 27, i32 0, metadata !94, null}
!94 = metadata !{i32 786443, metadata !1, metadata !4, i32 26, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!95 = metadata !{metadata !"any pointer", metadata !91}
!96 = metadata !{i32 29, i32 0, metadata !94, null}
!97 = metadata !{i32 31, i32 0, metadata !4, null}
!98 = metadata !{i32 32, i32 0, metadata !4, null}
!99 = metadata !{i32 38, i32 0, metadata !4, null}
!100 = metadata !{i32 40, i32 0, metadata !4, null}
!101 = metadata !{i32 52, i32 0, metadata !45, null}
!102 = metadata !{i32 61, i32 0, metadata !45, null}
!103 = metadata !{i32 64, i32 0, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !45, i32 63, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!105 = metadata !{i32 66, i32 0, metadata !104, null}
!106 = metadata !{i32 68, i32 0, metadata !45, null}
!107 = metadata !{i32 69, i32 0, metadata !45, null}
!108 = metadata !{i32 75, i32 0, metadata !45, null}
!109 = metadata !{i32 77, i32 0, metadata !45, null}
!110 = metadata !{i32 89, i32 0, metadata !51, null}
!111 = metadata !{i32 99, i32 0, metadata !51, null}
!112 = metadata !{i32 102, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !51, i32 101, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!114 = metadata !{i32 104, i32 0, metadata !113, null}
!115 = metadata !{i32 106, i32 0, metadata !51, null}
!116 = metadata !{i32 112, i32 0, metadata !51, null}
!117 = metadata !{i32 113, i32 0, metadata !51, null}
!118 = metadata !{i32 114, i32 0, metadata !51, null}
!119 = metadata !{i32 120, i32 0, metadata !51, null}
!120 = metadata !{i32 121, i32 0, metadata !51, null}
!121 = metadata !{i32 122, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !51, i32 122, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!123 = metadata !{i32 123, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !122, i32 122, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!125 = metadata !{i32 124, i32 0, metadata !124, null}
!126 = metadata !{i32 125, i32 0, metadata !124, null}
!127 = metadata !{i32 132, i32 0, metadata !51, null}
!128 = metadata !{i32 133, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !51, i32 133, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!130 = metadata !{i32 136, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !132, i32 136, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!132 = metadata !{i32 786443, metadata !1, metadata !129, i32 135, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!133 = metadata !{i32 137, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !131, i32 136, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!135 = metadata !{i32 135, i32 0, metadata !129, null}
!136 = metadata !{i32 140, i32 0, metadata !51, null}
!137 = metadata !{i32 141, i32 0, metadata !51, null}
!138 = metadata !{i32 143, i32 0, metadata !51, null}
!139 = metadata !{i32 155, i32 0, metadata !64, null}
!140 = metadata !{i32 165, i32 0, metadata !64, null}
!141 = metadata !{i32 168, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !64, i32 167, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!143 = metadata !{i32 170, i32 0, metadata !142, null}
!144 = metadata !{i32 172, i32 0, metadata !64, null}
!145 = metadata !{i32 178, i32 0, metadata !64, null}
!146 = metadata !{i32 179, i32 0, metadata !64, null}
!147 = metadata !{i32 180, i32 0, metadata !64, null}
!148 = metadata !{i32 186, i32 0, metadata !64, null}
!149 = metadata !{i32 187, i32 0, metadata !64, null}
!150 = metadata !{i32 188, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !64, i32 188, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!152 = metadata !{i32 189, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !151, i32 188, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!154 = metadata !{i32 190, i32 0, metadata !153, null}
!155 = metadata !{i32 191, i32 0, metadata !153, null}
!156 = metadata !{i32 198, i32 0, metadata !64, null}
!157 = metadata !{i32 199, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !64, i32 199, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!159 = metadata !{i32 202, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !161, i32 202, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!161 = metadata !{i32 786443, metadata !1, metadata !158, i32 201, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!162 = metadata !{i32 203, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !160, i32 202, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!164 = metadata !{i32 201, i32 0, metadata !158, null}
!165 = metadata !{i32 206, i32 0, metadata !64, null}
!166 = metadata !{i32 207, i32 0, metadata !64, null}
!167 = metadata !{i32 209, i32 0, metadata !64, null}
!168 = metadata !{i32 222, i32 0, metadata !77, null}
!169 = metadata !{i32 223, i32 0, metadata !77, null}
!170 = metadata !{i32 232, i32 0, metadata !77, null}
!171 = metadata !{i32 234, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !77, i32 233, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!173 = metadata !{i32 236, i32 0, metadata !172, null}
!174 = metadata !{i32 233, i32 0, metadata !77, null}
!175 = metadata !{i32 237, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !172, i32 236, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!177 = metadata !{i32 239, i32 0, metadata !176, null}
!178 = metadata !{i32 240, i32 0, metadata !176, null}
!179 = metadata !{i32 241, i32 0, metadata !172, null}
!180 = metadata !{i32 243, i32 0, metadata !77, null}
!181 = metadata !{i32 244, i32 0, metadata !77, null}
!182 = metadata !{i32 245, i32 0, metadata !77, null}
!183 = metadata !{i32 246, i32 0, metadata !184, null}
!184 = metadata !{i32 786443, metadata !1, metadata !77, i32 246, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!185 = metadata !{i32 247, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !184, i32 246, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_permute.c]
!187 = metadata !{i32 249, i32 0, metadata !77, null}
!188 = metadata !{i32 250, i32 0, metadata !77, null}
!189 = metadata !{i32 252, i32 0, metadata !77, null}
