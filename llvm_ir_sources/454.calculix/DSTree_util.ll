; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DSTree = type { %struct._Tree*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in DSTree_sizeOf(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DSTree_renumberViaPostOT(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in DSTree_domainWeight(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DSTree_separatorWeight(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @DSTree_sizeOf(%struct._DSTree* %dstree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !37), !dbg !81
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !82
  br i1 %cmp, label %if.then, label %if.end, !dbg !82

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !83, !tbaa !85
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._DSTree* null) #5, !dbg !83
  tail call void @exit(i32 -1) #6, !dbg !88
  unreachable, !dbg !88

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !89, i64 0, metadata !38), !dbg !90
  %tree = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !91
  %1 = load %struct._Tree** %tree, align 8, !dbg !91, !tbaa !85
  %cmp1 = icmp eq %struct._Tree* %1, null, !dbg !91
  br i1 %cmp1, label %if.end5, label %if.then2, !dbg !91

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @Tree_sizeOf(%struct._Tree* %1) #5, !dbg !92
  %add = add nsw i32 %call4, 16, !dbg !92
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !38), !dbg !92
  br label %if.end5, !dbg !94

if.end5:                                          ; preds = %if.end, %if.then2
  %nbytes.0 = phi i32 [ %add, %if.then2 ], [ 16, %if.end ]
  %mapIV = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !95
  %2 = load %struct._IV** %mapIV, align 8, !dbg !95, !tbaa !85
  %cmp6 = icmp eq %struct._IV* %2, null, !dbg !95
  br i1 %cmp6, label %if.end11, label %if.then7, !dbg !95

if.then7:                                         ; preds = %if.end5
  %call9 = tail call i32 @IV_sizeOf(%struct._IV* %2) #5, !dbg !96
  %add10 = add nsw i32 %call9, %nbytes.0, !dbg !96
  tail call void @llvm.dbg.value(metadata !{i32 %add10}, i64 0, metadata !38), !dbg !96
  br label %if.end11, !dbg !98

if.end11:                                         ; preds = %if.end5, %if.then7
  %nbytes.1 = phi i32 [ %add10, %if.then7 ], [ %nbytes.0, %if.end5 ]
  ret i32 %nbytes.1, !dbg !99
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare i32 @Tree_sizeOf(%struct._Tree*) #4

; Function Attrs: optsize
declare i32 @IV_sizeOf(%struct._IV*) #4

; Function Attrs: nounwind optsize uwtable
define void @DSTree_renumberViaPostOT(%struct._DSTree* %dstree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !43), !dbg !100
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !101
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !101

lor.lhs.false:                                    ; preds = %entry
  %tree1 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0, !dbg !101
  %0 = load %struct._Tree** %tree1, align 8, !dbg !101, !tbaa !85
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %0}, i64 0, metadata !54), !dbg !101
  %cmp2 = icmp eq %struct._Tree* %0, null, !dbg !101
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !101

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n4 = getelementptr inbounds %struct._Tree* %0, i64 0, i32 0, !dbg !101
  %1 = load i32* %n4, align 4, !dbg !101, !tbaa !102
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !47), !dbg !101
  %cmp5 = icmp slt i32 %1, 1, !dbg !101
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !101

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %mapIV7 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1, !dbg !101
  %2 = load %struct._IV** %mapIV7, align 8, !dbg !101, !tbaa !85
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %2}, i64 0, metadata !53), !dbg !101
  %cmp8 = icmp eq %struct._IV* %2, null, !dbg !101
  br i1 %cmp8, label %if.then, label %lor.lhs.false9, !dbg !101

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call = tail call i32 @IV_size(%struct._IV* %2) #5, !dbg !103
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !48), !dbg !103
  %cmp10 = icmp slt i32 %call, 1, !dbg !103
  br i1 %cmp10, label %if.then, label %lor.lhs.false11, !dbg !103

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %call12 = tail call i32* @IV_entries(%struct._IV* %2) #5, !dbg !104
  tail call void @llvm.dbg.value(metadata !{i32* %call12}, i64 0, metadata !51), !dbg !104
  %cmp13 = icmp eq i32* %call12, null, !dbg !104
  br i1 %cmp13, label %if.then, label %if.end, !dbg !104

if.then:                                          ; preds = %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !105, !tbaa !85
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), %struct._DSTree* %dstree) #5, !dbg !105
  tail call void @exit(i32 -1) #6, !dbg !107
  unreachable, !dbg !107

if.end:                                           ; preds = %lor.lhs.false11
  %call15 = tail call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !108
  tail call void @llvm.dbg.value(metadata !{i32* %call15}, i64 0, metadata !50), !dbg !108
  %call16 = tail call i32* @IVinit(i32 %1, i32 -1) #5, !dbg !109
  tail call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !52), !dbg !109
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !44), !dbg !110
  %call17 = tail call i32 @Tree_postOTfirst(%struct._Tree* %0) #5, !dbg !111
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !45), !dbg !111
  %cmp18189 = icmp eq i32 %call17, -1, !dbg !111
  br i1 %cmp18189, label %for.cond20.preheader, label %for.body, !dbg !111

for.cond20.preheader:                             ; preds = %for.body, %if.end
  %cmp21187 = icmp sgt i32 %1, 0, !dbg !113
  %par = getelementptr inbounds %struct._Tree* %0, i64 0, i32 2, !dbg !115
  %4 = load i32** %par, align 8, !dbg !115, !tbaa !85
  br i1 %cmp21187, label %for.body22, label %for.end40.thread, !dbg !113

for.end40.thread:                                 ; preds = %for.cond20.preheader
  tail call void @IVcopy(i32 %1, i32* %4, i32* %call16) #5, !dbg !117
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !118
  br label %for.end40.for.end63_crit_edge, !dbg !118

for.body:                                         ; preds = %if.end, %for.body
  %count.0191 = phi i32 [ %inc, %for.body ], [ 0, %if.end ]
  %J.0190 = phi i32 [ %call19, %for.body ], [ %call17, %if.end ]
  %inc = add nsw i32 %count.0191, 1, !dbg !120
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !44), !dbg !120
  %idxprom = sext i32 %J.0190 to i64, !dbg !120
  %arrayidx = getelementptr inbounds i32* %call15, i64 %idxprom, !dbg !120
  store i32 %count.0191, i32* %arrayidx, align 4, !dbg !120, !tbaa !102
  %call19 = tail call i32 @Tree_postOTnext(%struct._Tree* %0, i32 %J.0190) #5, !dbg !122
  tail call void @llvm.dbg.value(metadata !{i32 %call19}, i64 0, metadata !45), !dbg !122
  %cmp18 = icmp eq i32 %call19, -1, !dbg !111
  br i1 %cmp18, label %for.cond20.preheader, label %for.body, !dbg !111

for.body22:                                       ; preds = %for.cond20.preheader, %for.inc38
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %for.inc38 ], [ 0, %for.cond20.preheader ]
  %arrayidx24 = getelementptr inbounds i32* %4, i64 %indvars.iv200, !dbg !115
  %5 = load i32* %arrayidx24, align 4, !dbg !115, !tbaa !102
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !46), !dbg !115
  %cmp25 = icmp eq i32 %5, -1, !dbg !115
  br i1 %cmp25, label %if.else, label %if.then26, !dbg !115

if.then26:                                        ; preds = %for.body22
  %idxprom27 = sext i32 %5 to i64, !dbg !123
  %arrayidx28 = getelementptr inbounds i32* %call15, i64 %idxprom27, !dbg !123
  %6 = load i32* %arrayidx28, align 4, !dbg !123, !tbaa !102
  %arrayidx30 = getelementptr inbounds i32* %call15, i64 %indvars.iv200, !dbg !123
  %7 = load i32* %arrayidx30, align 4, !dbg !123, !tbaa !102
  %idxprom31 = sext i32 %7 to i64, !dbg !123
  %arrayidx32 = getelementptr inbounds i32* %call16, i64 %idxprom31, !dbg !123
  store i32 %6, i32* %arrayidx32, align 4, !dbg !123, !tbaa !102
  br label %for.inc38, !dbg !125

if.else:                                          ; preds = %for.body22
  %arrayidx34 = getelementptr inbounds i32* %call15, i64 %indvars.iv200, !dbg !126
  %8 = load i32* %arrayidx34, align 4, !dbg !126, !tbaa !102
  %idxprom35 = sext i32 %8 to i64, !dbg !126
  %arrayidx36 = getelementptr inbounds i32* %call16, i64 %idxprom35, !dbg !126
  store i32 -1, i32* %arrayidx36, align 4, !dbg !126, !tbaa !102
  br label %for.inc38

for.inc38:                                        ; preds = %if.then26, %if.else
  %indvars.iv.next201 = add i64 %indvars.iv200, 1, !dbg !113
  %lftr.wideiv202 = trunc i64 %indvars.iv.next201 to i32, !dbg !113
  %exitcond203 = icmp eq i32 %lftr.wideiv202, %1, !dbg !113
  br i1 %exitcond203, label %for.end40, label %for.body22, !dbg !113

for.end40:                                        ; preds = %for.inc38
  tail call void @IVcopy(i32 %1, i32* %4, i32* %call16) #5, !dbg !117
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !118
  br i1 %cmp21187, label %for.body44.lr.ph, label %for.end40.for.end63_crit_edge, !dbg !118

for.end40.for.end63_crit_edge:                    ; preds = %for.end40.thread, %for.end40
  %fch64.phi.trans.insert = getelementptr inbounds %struct._Tree* %0, i64 0, i32 3
  %.pre204 = load i32** %fch64.phi.trans.insert, align 8, !dbg !128, !tbaa !85
  br label %for.end63, !dbg !118

for.body44.lr.ph:                                 ; preds = %for.end40
  %fch = getelementptr inbounds %struct._Tree* %0, i64 0, i32 3, !dbg !129
  %9 = load i32** %fch, align 8, !dbg !129, !tbaa !85
  br label %for.body44, !dbg !118

for.body44:                                       ; preds = %for.inc61, %for.body44.lr.ph
  %indvars.iv196 = phi i64 [ 0, %for.body44.lr.ph ], [ %indvars.iv.next197, %for.inc61 ]
  %arrayidx46 = getelementptr inbounds i32* %9, i64 %indvars.iv196, !dbg !129
  %10 = load i32* %arrayidx46, align 4, !dbg !129, !tbaa !102
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !46), !dbg !129
  %cmp47 = icmp eq i32 %10, -1, !dbg !129
  br i1 %cmp47, label %if.else55, label %if.then48, !dbg !129

if.then48:                                        ; preds = %for.body44
  %idxprom49 = sext i32 %10 to i64, !dbg !131
  %arrayidx50 = getelementptr inbounds i32* %call15, i64 %idxprom49, !dbg !131
  %11 = load i32* %arrayidx50, align 4, !dbg !131, !tbaa !102
  %arrayidx52 = getelementptr inbounds i32* %call15, i64 %indvars.iv196, !dbg !131
  %12 = load i32* %arrayidx52, align 4, !dbg !131, !tbaa !102
  %idxprom53 = sext i32 %12 to i64, !dbg !131
  %arrayidx54 = getelementptr inbounds i32* %call16, i64 %idxprom53, !dbg !131
  store i32 %11, i32* %arrayidx54, align 4, !dbg !131, !tbaa !102
  br label %for.inc61, !dbg !133

if.else55:                                        ; preds = %for.body44
  %arrayidx57 = getelementptr inbounds i32* %call15, i64 %indvars.iv196, !dbg !134
  %13 = load i32* %arrayidx57, align 4, !dbg !134, !tbaa !102
  %idxprom58 = sext i32 %13 to i64, !dbg !134
  %arrayidx59 = getelementptr inbounds i32* %call16, i64 %idxprom58, !dbg !134
  store i32 -1, i32* %arrayidx59, align 4, !dbg !134, !tbaa !102
  br label %for.inc61

for.inc61:                                        ; preds = %if.then48, %if.else55
  %indvars.iv.next197 = add i64 %indvars.iv196, 1, !dbg !118
  %lftr.wideiv198 = trunc i64 %indvars.iv.next197 to i32, !dbg !118
  %exitcond199 = icmp eq i32 %lftr.wideiv198, %1, !dbg !118
  br i1 %exitcond199, label %for.end63, label %for.body44, !dbg !118

for.end63:                                        ; preds = %for.inc61, %for.end40.for.end63_crit_edge
  %14 = phi i32* [ %.pre204, %for.end40.for.end63_crit_edge ], [ %9, %for.inc61 ]
  tail call void @IVcopy(i32 %1, i32* %14, i32* %call16) #5, !dbg !128
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !45), !dbg !136
  %sib = getelementptr inbounds %struct._Tree* %0, i64 0, i32 4, !dbg !138
  %15 = load i32** %sib, align 8, !dbg !138, !tbaa !85
  br i1 %cmp21187, label %for.body67, label %for.end86, !dbg !136

for.body67:                                       ; preds = %for.end63, %for.inc84
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %for.inc84 ], [ 0, %for.end63 ]
  %arrayidx69 = getelementptr inbounds i32* %15, i64 %indvars.iv192, !dbg !138
  %16 = load i32* %arrayidx69, align 4, !dbg !138, !tbaa !102
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !46), !dbg !138
  %cmp70 = icmp eq i32 %16, -1, !dbg !138
  br i1 %cmp70, label %if.else78, label %if.then71, !dbg !138

if.then71:                                        ; preds = %for.body67
  %idxprom72 = sext i32 %16 to i64, !dbg !140
  %arrayidx73 = getelementptr inbounds i32* %call15, i64 %idxprom72, !dbg !140
  %17 = load i32* %arrayidx73, align 4, !dbg !140, !tbaa !102
  %arrayidx75 = getelementptr inbounds i32* %call15, i64 %indvars.iv192, !dbg !140
  %18 = load i32* %arrayidx75, align 4, !dbg !140, !tbaa !102
  %idxprom76 = sext i32 %18 to i64, !dbg !140
  %arrayidx77 = getelementptr inbounds i32* %call16, i64 %idxprom76, !dbg !140
  store i32 %17, i32* %arrayidx77, align 4, !dbg !140, !tbaa !102
  br label %for.inc84, !dbg !142

if.else78:                                        ; preds = %for.body67
  %arrayidx80 = getelementptr inbounds i32* %call15, i64 %indvars.iv192, !dbg !143
  %19 = load i32* %arrayidx80, align 4, !dbg !143, !tbaa !102
  %idxprom81 = sext i32 %19 to i64, !dbg !143
  %arrayidx82 = getelementptr inbounds i32* %call16, i64 %idxprom81, !dbg !143
  store i32 -1, i32* %arrayidx82, align 4, !dbg !143, !tbaa !102
  br label %for.inc84

for.inc84:                                        ; preds = %if.then71, %if.else78
  %indvars.iv.next193 = add i64 %indvars.iv192, 1, !dbg !136
  %lftr.wideiv194 = trunc i64 %indvars.iv.next193 to i32, !dbg !136
  %exitcond195 = icmp eq i32 %lftr.wideiv194, %1, !dbg !136
  br i1 %exitcond195, label %for.end86, label %for.body67, !dbg !136

for.end86:                                        ; preds = %for.end63, %for.inc84
  tail call void @IVcopy(i32 %1, i32* %15, i32* %call16) #5, !dbg !145
  %root = getelementptr inbounds %struct._Tree* %0, i64 0, i32 1, !dbg !146
  %20 = load i32* %root, align 4, !dbg !146, !tbaa !102
  %cmp88 = icmp eq i32 %20, -1, !dbg !146
  br i1 %cmp88, label %for.cond95.preheader, label %if.then89, !dbg !146

if.then89:                                        ; preds = %for.end86
  %idxprom91 = sext i32 %20 to i64, !dbg !147
  %arrayidx92 = getelementptr inbounds i32* %call15, i64 %idxprom91, !dbg !147
  %21 = load i32* %arrayidx92, align 4, !dbg !147, !tbaa !102
  store i32 %21, i32* %root, align 4, !dbg !147, !tbaa !102
  br label %for.cond95.preheader, !dbg !149

for.cond95.preheader:                             ; preds = %for.end86, %if.then89
  %cmp96181 = icmp sgt i32 %call, 0, !dbg !150
  br i1 %cmp96181, label %for.body97, label %for.end110, !dbg !150

for.body97:                                       ; preds = %for.cond95.preheader, %for.inc108
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc108 ], [ 0, %for.cond95.preheader ]
  %arrayidx99 = getelementptr inbounds i32* %call12, i64 %indvars.iv, !dbg !152
  %22 = load i32* %arrayidx99, align 4, !dbg !152, !tbaa !102
  tail call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !45), !dbg !152
  %cmp100 = icmp sgt i32 %22, -1, !dbg !154
  %cmp101 = icmp slt i32 %22, %1, !dbg !154
  %or.cond = and i1 %cmp100, %cmp101, !dbg !154
  br i1 %or.cond, label %if.then102, label %for.inc108, !dbg !154

if.then102:                                       ; preds = %for.body97
  %idxprom103 = sext i32 %22 to i64, !dbg !155
  %arrayidx104 = getelementptr inbounds i32* %call15, i64 %idxprom103, !dbg !155
  %23 = load i32* %arrayidx104, align 4, !dbg !155, !tbaa !102
  store i32 %23, i32* %arrayidx99, align 4, !dbg !155, !tbaa !102
  br label %for.inc108, !dbg !157

for.inc108:                                       ; preds = %for.body97, %if.then102
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !150
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !150
  %exitcond = icmp eq i32 %lftr.wideiv, %call, !dbg !150
  br i1 %exitcond, label %for.end110, label %for.body97, !dbg !150

for.end110:                                       ; preds = %for.inc108, %for.cond95.preheader
  tail call void @IVfree(i32* %call15) #5, !dbg !158
  tail call void @IVfree(i32* %call16) #5, !dbg !159
  ret void, !dbg !160
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #4

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #4

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #4

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #4

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @DSTree_domainWeight(%struct._DSTree* %dstree, i32* %vwghts) #0 {
entry:
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !59), !dbg !161
  call void @llvm.dbg.value(metadata !{i32* %vwghts}, i64 0, metadata !60), !dbg !162
  call void @llvm.dbg.declare(metadata !{i32* %nvtx}, metadata !63), !dbg !163
  call void @llvm.dbg.declare(metadata !{i32** %map}, metadata !66), !dbg !164
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !165
  br i1 %cmp, label %if.then, label %if.end, !dbg !165

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !166, !tbaa !85
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._DSTree* null) #5, !dbg !166
  call void @exit(i32 -1) #6, !dbg !168
  unreachable, !dbg !168

if.end:                                           ; preds = %entry
  %call1 = call %struct._Tree* @DSTree_tree(%struct._DSTree* %dstree) #5, !dbg !169
  call void @llvm.dbg.value(metadata !{%struct._Tree* %call1}, i64 0, metadata !68), !dbg !169
  %call2 = call %struct._IV* @DSTree_mapIV(%struct._DSTree* %dstree) #5, !dbg !170
  call void @llvm.dbg.value(metadata !{%struct._IV* %call2}, i64 0, metadata !67), !dbg !170
  call void @IV_sizeAndEntries(%struct._IV* %call2, i32* %nvtx, i32** %map) #5, !dbg !171
  %fch3 = getelementptr inbounds %struct._Tree* %call1, i64 0, i32 3, !dbg !172
  %1 = load i32** %fch3, align 8, !dbg !172, !tbaa !85
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !65), !dbg !172
  %cmp4 = icmp eq i32* %vwghts, null, !dbg !173
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !61), !dbg !174
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !64), !dbg !174
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !63), !dbg !177
  %2 = load i32* %nvtx, align 4, !dbg !177, !tbaa !102
  %cmp1543 = icmp sgt i32 %2, 0, !dbg !177
  br i1 %cmp4, label %for.cond14.preheader, label %for.cond.preheader, !dbg !173

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp1543, label %for.body.lr.ph, label %if.end28, !dbg !174

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !66), !dbg !180
  %3 = load i32** %map, align 8, !dbg !180, !tbaa !85
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !63), !dbg !174
  br label %for.body, !dbg !174

for.cond14.preheader:                             ; preds = %if.end
  br i1 %cmp1543, label %for.body16.lr.ph, label %if.end28, !dbg !177

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !66), !dbg !182
  %4 = load i32** %map, align 8, !dbg !182, !tbaa !85
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !63), !dbg !177
  br label %for.body16, !dbg !177

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv51 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next52, %for.inc ]
  %domwght.049 = phi i32 [ 0, %for.body.lr.ph ], [ %domwght.1, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !66), !dbg !180
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv51, !dbg !180
  %5 = load i32* %arrayidx, align 4, !dbg !180, !tbaa !102
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !62), !dbg !180
  %idxprom7 = sext i32 %5 to i64, !dbg !184
  %arrayidx8 = getelementptr inbounds i32* %1, i64 %idxprom7, !dbg !184
  %6 = load i32* %arrayidx8, align 4, !dbg !184, !tbaa !102
  %cmp9 = icmp eq i32 %6, -1, !dbg !184
  br i1 %cmp9, label %if.then10, label %for.inc, !dbg !184

if.then10:                                        ; preds = %for.body
  %arrayidx12 = getelementptr inbounds i32* %vwghts, i64 %indvars.iv51, !dbg !185
  %7 = load i32* %arrayidx12, align 4, !dbg !185, !tbaa !102
  %add = add nsw i32 %7, %domwght.049, !dbg !185
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !61), !dbg !185
  br label %for.inc, !dbg !187

for.inc:                                          ; preds = %for.body, %if.then10
  %domwght.1 = phi i32 [ %add, %if.then10 ], [ %domwght.049, %for.body ]
  %indvars.iv.next52 = add i64 %indvars.iv51, 1, !dbg !174
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !63), !dbg !174
  %8 = trunc i64 %indvars.iv.next52 to i32, !dbg !174
  %cmp6 = icmp slt i32 %8, %2, !dbg !174
  br i1 %cmp6, label %for.body, label %if.end28, !dbg !174

for.body16:                                       ; preds = %for.body16.lr.ph, %for.body16
  %indvars.iv = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next, %for.body16 ]
  %domwght.245 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc23.domwght.2, %for.body16 ]
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !66), !dbg !182
  %arrayidx18 = getelementptr inbounds i32* %4, i64 %indvars.iv, !dbg !182
  %9 = load i32* %arrayidx18, align 4, !dbg !182, !tbaa !102
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !62), !dbg !182
  %idxprom19 = sext i32 %9 to i64, !dbg !188
  %arrayidx20 = getelementptr inbounds i32* %1, i64 %idxprom19, !dbg !188
  %10 = load i32* %arrayidx20, align 4, !dbg !188, !tbaa !102
  %cmp21 = icmp eq i32 %10, -1, !dbg !188
  %inc23 = zext i1 %cmp21 to i32, !dbg !188
  %inc23.domwght.2 = add nsw i32 %inc23, %domwght.245, !dbg !188
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !177
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !63), !dbg !177
  %11 = trunc i64 %indvars.iv.next to i32, !dbg !177
  %cmp15 = icmp slt i32 %11, %2, !dbg !177
  br i1 %cmp15, label %for.body16, label %if.end28, !dbg !177

if.end28:                                         ; preds = %for.cond.preheader, %for.inc, %for.cond14.preheader, %for.body16
  %domwght.4 = phi i32 [ 0, %for.cond14.preheader ], [ %inc23.domwght.2, %for.body16 ], [ 0, %for.cond.preheader ], [ %domwght.1, %for.inc ]
  ret i32 %domwght.4, !dbg !189
}

; Function Attrs: optsize
declare %struct._Tree* @DSTree_tree(%struct._DSTree*) #4

; Function Attrs: optsize
declare %struct._IV* @DSTree_mapIV(%struct._DSTree*) #4

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #4

; Function Attrs: nounwind optsize uwtable
define i32 @DSTree_separatorWeight(%struct._DSTree* %dstree, i32* %vwghts) #0 {
entry:
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DSTree* %dstree}, i64 0, metadata !71), !dbg !190
  call void @llvm.dbg.value(metadata !{i32* %vwghts}, i64 0, metadata !72), !dbg !191
  call void @llvm.dbg.declare(metadata !{i32* %nvtx}, metadata !74), !dbg !192
  call void @llvm.dbg.declare(metadata !{i32** %map}, metadata !78), !dbg !193
  %cmp = icmp eq %struct._DSTree* %dstree, null, !dbg !194
  br i1 %cmp, label %if.then, label %if.end, !dbg !194

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !195, !tbaa !85
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), %struct._DSTree* null) #5, !dbg !195
  call void @exit(i32 -1) #6, !dbg !197
  unreachable, !dbg !197

if.end:                                           ; preds = %entry
  %call1 = call %struct._Tree* @DSTree_tree(%struct._DSTree* %dstree) #5, !dbg !198
  call void @llvm.dbg.value(metadata !{%struct._Tree* %call1}, i64 0, metadata !80), !dbg !198
  %call2 = call %struct._IV* @DSTree_mapIV(%struct._DSTree* %dstree) #5, !dbg !199
  call void @llvm.dbg.value(metadata !{%struct._IV* %call2}, i64 0, metadata !79), !dbg !199
  call void @IV_sizeAndEntries(%struct._IV* %call2, i32* %nvtx, i32** %map) #5, !dbg !200
  %fch3 = getelementptr inbounds %struct._Tree* %call1, i64 0, i32 3, !dbg !201
  %1 = load i32** %fch3, align 8, !dbg !201, !tbaa !85
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !77), !dbg !201
  %cmp4 = icmp eq i32* %vwghts, null, !dbg !202
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !75), !dbg !203
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !76), !dbg !203
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !74), !dbg !206
  %2 = load i32* %nvtx, align 4, !dbg !206, !tbaa !102
  %cmp1543 = icmp sgt i32 %2, 0, !dbg !206
  br i1 %cmp4, label %for.cond14.preheader, label %for.cond.preheader, !dbg !202

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp1543, label %for.body.lr.ph, label %if.end28, !dbg !203

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !78), !dbg !209
  %3 = load i32** %map, align 8, !dbg !209, !tbaa !85
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !74), !dbg !203
  br label %for.body, !dbg !203

for.cond14.preheader:                             ; preds = %if.end
  br i1 %cmp1543, label %for.body16.lr.ph, label %if.end28, !dbg !206

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !78), !dbg !211
  %4 = load i32** %map, align 8, !dbg !211, !tbaa !85
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !74), !dbg !206
  br label %for.body16, !dbg !206

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv51 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next52, %for.inc ]
  %sepwght.049 = phi i32 [ 0, %for.body.lr.ph ], [ %sepwght.1, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !78), !dbg !209
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv51, !dbg !209
  %5 = load i32* %arrayidx, align 4, !dbg !209, !tbaa !102
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !73), !dbg !209
  %idxprom7 = sext i32 %5 to i64, !dbg !213
  %arrayidx8 = getelementptr inbounds i32* %1, i64 %idxprom7, !dbg !213
  %6 = load i32* %arrayidx8, align 4, !dbg !213, !tbaa !102
  %cmp9 = icmp eq i32 %6, -1, !dbg !213
  br i1 %cmp9, label %for.inc, label %if.then10, !dbg !213

if.then10:                                        ; preds = %for.body
  %arrayidx12 = getelementptr inbounds i32* %vwghts, i64 %indvars.iv51, !dbg !214
  %7 = load i32* %arrayidx12, align 4, !dbg !214, !tbaa !102
  %add = add nsw i32 %7, %sepwght.049, !dbg !214
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !75), !dbg !214
  br label %for.inc, !dbg !216

for.inc:                                          ; preds = %for.body, %if.then10
  %sepwght.1 = phi i32 [ %add, %if.then10 ], [ %sepwght.049, %for.body ]
  %indvars.iv.next52 = add i64 %indvars.iv51, 1, !dbg !203
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !74), !dbg !203
  %8 = trunc i64 %indvars.iv.next52 to i32, !dbg !203
  %cmp6 = icmp slt i32 %8, %2, !dbg !203
  br i1 %cmp6, label %for.body, label %if.end28, !dbg !203

for.body16:                                       ; preds = %for.body16.lr.ph, %for.body16
  %indvars.iv = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next, %for.body16 ]
  %sepwght.245 = phi i32 [ 0, %for.body16.lr.ph ], [ %sepwght.2.inc23, %for.body16 ]
  call void @llvm.dbg.value(metadata !{i32** %map}, i64 0, metadata !78), !dbg !211
  %arrayidx18 = getelementptr inbounds i32* %4, i64 %indvars.iv, !dbg !211
  %9 = load i32* %arrayidx18, align 4, !dbg !211, !tbaa !102
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !73), !dbg !211
  %idxprom19 = sext i32 %9 to i64, !dbg !217
  %arrayidx20 = getelementptr inbounds i32* %1, i64 %idxprom19, !dbg !217
  %10 = load i32* %arrayidx20, align 4, !dbg !217, !tbaa !102
  %not.cmp21 = icmp ne i32 %10, -1, !dbg !217
  %inc23 = zext i1 %not.cmp21 to i32, !dbg !217
  %sepwght.2.inc23 = add nsw i32 %inc23, %sepwght.245, !dbg !217
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !206
  call void @llvm.dbg.value(metadata !{i32* %nvtx}, i64 0, metadata !74), !dbg !206
  %11 = trunc i64 %indvars.iv.next to i32, !dbg !206
  %cmp15 = icmp slt i32 %11, %2, !dbg !206
  br i1 %cmp15, label %for.body16, label %if.end28, !dbg !206

if.end28:                                         ; preds = %for.cond.preheader, %for.inc, %for.cond14.preheader, %for.body16
  %sepwght.4 = phi i32 [ 0, %for.cond14.preheader ], [ %sepwght.2.inc23, %for.body16 ], [ 0, %for.cond.preheader ], [ %sepwght.1, %for.inc ]
  ret i32 %sepwght.4, !dbg !218
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !39, metadata !55, metadata !69}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_sizeOf", metadata !"DSTree_sizeOf", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DSTree*)* @DSTree_sizeOf, null, null, metadata !36, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [DSTree_sizeOf]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DSTree]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"DSTree", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [DSTree] [line 22, size 0, align 0, offset 0] [from _DSTree]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_DSTree", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DSTree] [line 23, size 128, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../DSTree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !26}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"tree", i32 24, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [tree] [line 24, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!16 = metadata !{i32 786454, metadata !12, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !24, metadata !25}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!21 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!25 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"mapIV", i32 25, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [mapIV] [line 25, size 64, align 64, offset 64] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!28 = metadata !{i32 786454, metadata !12, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!34 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!36 = metadata !{metadata !37, metadata !38}
!37 = metadata !{i32 786689, metadata !4, metadata !"dstree", metadata !5, i32 16777231, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 15]
!38 = metadata !{i32 786688, metadata !4, metadata !"nbytes", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 17]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_renumberViaPostOT", metadata !"DSTree_renumberViaPostOT", metadata !"", i32 46, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DSTree*)* @DSTree_renumberViaPostOT, null, null, metadata !42, i32 48} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 48] [DSTree_renumberViaPostOT]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{null, metadata !9}
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!43 = metadata !{i32 786689, metadata !39, metadata !"dstree", metadata !5, i32 16777263, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 47]
!44 = metadata !{i32 786688, metadata !39, metadata !"count", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 49]
!45 = metadata !{i32 786688, metadata !39, metadata !"J", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 49]
!46 = metadata !{i32 786688, metadata !39, metadata !"K", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [K] [line 49]
!47 = metadata !{i32 786688, metadata !39, metadata !"n", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 49]
!48 = metadata !{i32 786688, metadata !39, metadata !"nvtx", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 49]
!49 = metadata !{i32 786688, metadata !39, metadata !"v", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 49]
!50 = metadata !{i32 786688, metadata !39, metadata !"map", metadata !5, i32 50, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 50]
!51 = metadata !{i32 786688, metadata !39, metadata !"oldmap", metadata !5, i32 50, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldmap] [line 50]
!52 = metadata !{i32 786688, metadata !39, metadata !"temp", metadata !5, i32 50, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 50]
!53 = metadata !{i32 786688, metadata !39, metadata !"mapIV", metadata !5, i32 51, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapIV] [line 51]
!54 = metadata !{i32 786688, metadata !39, metadata !"tree", metadata !5, i32 52, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 52]
!55 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_domainWeight", metadata !"DSTree_domainWeight", metadata !"", i32 134, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DSTree*, i32*)* @DSTree_domainWeight, null, null, metadata !58, i32 137} ; [ DW_TAG_subprogram ] [line 134] [def] [scope 137] [DSTree_domainWeight]
!56 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{metadata !8, metadata !9, metadata !23}
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68}
!59 = metadata !{i32 786689, metadata !55, metadata !"dstree", metadata !5, i32 16777351, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 135]
!60 = metadata !{i32 786689, metadata !55, metadata !"vwghts", metadata !5, i32 33554568, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vwghts] [line 136]
!61 = metadata !{i32 786688, metadata !55, metadata !"domwght", metadata !5, i32 138, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domwght] [line 138]
!62 = metadata !{i32 786688, metadata !55, metadata !"ireg", metadata !5, i32 138, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ireg] [line 138]
!63 = metadata !{i32 786688, metadata !55, metadata !"nvtx", metadata !5, i32 138, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 138]
!64 = metadata !{i32 786688, metadata !55, metadata !"v", metadata !5, i32 138, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 138]
!65 = metadata !{i32 786688, metadata !55, metadata !"fch", metadata !5, i32 139, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch] [line 139]
!66 = metadata !{i32 786688, metadata !55, metadata !"map", metadata !5, i32 139, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 139]
!67 = metadata !{i32 786688, metadata !55, metadata !"mapIV", metadata !5, i32 140, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapIV] [line 140]
!68 = metadata !{i32 786688, metadata !55, metadata !"tree", metadata !5, i32 141, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 141]
!69 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DSTree_separatorWeight", metadata !"DSTree_separatorWeight", metadata !"", i32 182, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DSTree*, i32*)* @DSTree_separatorWeight, null, null, metadata !70, i32 185} ; [ DW_TAG_subprogram ] [line 182] [def] [scope 185] [DSTree_separatorWeight]
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80}
!71 = metadata !{i32 786689, metadata !69, metadata !"dstree", metadata !5, i32 16777399, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dstree] [line 183]
!72 = metadata !{i32 786689, metadata !69, metadata !"vwghts", metadata !5, i32 33554616, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vwghts] [line 184]
!73 = metadata !{i32 786688, metadata !69, metadata !"ireg", metadata !5, i32 186, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ireg] [line 186]
!74 = metadata !{i32 786688, metadata !69, metadata !"nvtx", metadata !5, i32 186, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 186]
!75 = metadata !{i32 786688, metadata !69, metadata !"sepwght", metadata !5, i32 186, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sepwght] [line 186]
!76 = metadata !{i32 786688, metadata !69, metadata !"v", metadata !5, i32 186, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 186]
!77 = metadata !{i32 786688, metadata !69, metadata !"fch", metadata !5, i32 187, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch] [line 187]
!78 = metadata !{i32 786688, metadata !69, metadata !"map", metadata !5, i32 187, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 187]
!79 = metadata !{i32 786688, metadata !69, metadata !"mapIV", metadata !5, i32 188, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapIV] [line 188]
!80 = metadata !{i32 786688, metadata !69, metadata !"tree", metadata !5, i32 189, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree] [line 189]
!81 = metadata !{i32 15, i32 0, metadata !4, null}
!82 = metadata !{i32 23, i32 0, metadata !4, null}
!83 = metadata !{i32 24, i32 0, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !4, i32 23, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!85 = metadata !{metadata !"any pointer", metadata !86}
!86 = metadata !{metadata !"omnipotent char", metadata !87}
!87 = metadata !{metadata !"Simple C/C++ TBAA"}
!88 = metadata !{i32 26, i32 0, metadata !84, null}
!89 = metadata !{i32 16}
!90 = metadata !{i32 28, i32 0, metadata !4, null}
!91 = metadata !{i32 29, i32 0, metadata !4, null}
!92 = metadata !{i32 30, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !4, i32 29, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!94 = metadata !{i32 31, i32 0, metadata !93, null}
!95 = metadata !{i32 32, i32 0, metadata !4, null}
!96 = metadata !{i32 33, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !4, i32 32, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!98 = metadata !{i32 34, i32 0, metadata !97, null}
!99 = metadata !{i32 35, i32 0, metadata !4, null}
!100 = metadata !{i32 47, i32 0, metadata !39, null}
!101 = metadata !{i32 58, i32 0, metadata !39, null} ; [ DW_TAG_imported_module ]
!102 = metadata !{metadata !"int", metadata !86}
!103 = metadata !{i32 62, i32 0, metadata !39, null}
!104 = metadata !{i32 63, i32 0, metadata !39, null}
!105 = metadata !{i32 64, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !39, i32 63, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!107 = metadata !{i32 66, i32 0, metadata !106, null}
!108 = metadata !{i32 74, i32 0, metadata !39, null}
!109 = metadata !{i32 75, i32 0, metadata !39, null}
!110 = metadata !{i32 76, i32 0, metadata !39, null}
!111 = metadata !{i32 77, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !39, i32 77, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!113 = metadata !{i32 82, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !39, i32 82, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!115 = metadata !{i32 83, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !114, i32 82, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!117 = metadata !{i32 89, i32 0, metadata !39, null}
!118 = metadata !{i32 90, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !39, i32 90, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!120 = metadata !{i32 80, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !112, i32 79, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!122 = metadata !{i32 79, i32 0, metadata !112, null}
!123 = metadata !{i32 84, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !116, i32 83, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!125 = metadata !{i32 85, i32 0, metadata !124, null}
!126 = metadata !{i32 86, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !116, i32 85, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!128 = metadata !{i32 97, i32 0, metadata !39, null}
!129 = metadata !{i32 91, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !119, i32 90, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!131 = metadata !{i32 92, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !130, i32 91, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!133 = metadata !{i32 93, i32 0, metadata !132, null}
!134 = metadata !{i32 94, i32 0, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !130, i32 93, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!136 = metadata !{i32 98, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !39, i32 98, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!138 = metadata !{i32 99, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !137, i32 98, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!140 = metadata !{i32 100, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !139, i32 99, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!142 = metadata !{i32 101, i32 0, metadata !141, null}
!143 = metadata !{i32 102, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !139, i32 101, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!145 = metadata !{i32 105, i32 0, metadata !39, null}
!146 = metadata !{i32 106, i32 0, metadata !39, null}
!147 = metadata !{i32 107, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !39, i32 106, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!149 = metadata !{i32 108, i32 0, metadata !148, null}
!150 = metadata !{i32 114, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !39, i32 114, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!152 = metadata !{i32 115, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !151, i32 114, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!154 = metadata !{i32 116, i32 0, metadata !153, null}
!155 = metadata !{i32 117, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !153, i32 116, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!157 = metadata !{i32 118, i32 0, metadata !156, null}
!158 = metadata !{i32 120, i32 0, metadata !39, null}
!159 = metadata !{i32 121, i32 0, metadata !39, null}
!160 = metadata !{i32 123, i32 0, metadata !39, null}
!161 = metadata !{i32 135, i32 0, metadata !55, null}
!162 = metadata !{i32 136, i32 0, metadata !55, null}
!163 = metadata !{i32 138, i32 0, metadata !55, null}
!164 = metadata !{i32 139, i32 0, metadata !55, null}
!165 = metadata !{i32 147, i32 0, metadata !55, null}
!166 = metadata !{i32 148, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !55, i32 147, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!168 = metadata !{i32 150, i32 0, metadata !167, null}
!169 = metadata !{i32 152, i32 0, metadata !55, null}
!170 = metadata !{i32 153, i32 0, metadata !55, null}
!171 = metadata !{i32 154, i32 0, metadata !55, null}
!172 = metadata !{i32 155, i32 0, metadata !55, null}
!173 = metadata !{i32 156, i32 0, metadata !55, null}
!174 = metadata !{i32 157, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !176, i32 157, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!176 = metadata !{i32 786443, metadata !1, metadata !55, i32 156, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!177 = metadata !{i32 164, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !179, i32 164, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!179 = metadata !{i32 786443, metadata !1, metadata !55, i32 163, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!180 = metadata !{i32 158, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !175, i32 157, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!182 = metadata !{i32 165, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !178, i32 164, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!184 = metadata !{i32 159, i32 0, metadata !181, null}
!185 = metadata !{i32 160, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !181, i32 159, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!187 = metadata !{i32 161, i32 0, metadata !186, null}
!188 = metadata !{i32 166, i32 0, metadata !183, null}
!189 = metadata !{i32 171, i32 0, metadata !55, null}
!190 = metadata !{i32 183, i32 0, metadata !69, null}
!191 = metadata !{i32 184, i32 0, metadata !69, null}
!192 = metadata !{i32 186, i32 0, metadata !69, null}
!193 = metadata !{i32 187, i32 0, metadata !69, null}
!194 = metadata !{i32 195, i32 0, metadata !69, null}
!195 = metadata !{i32 196, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !69, i32 195, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!197 = metadata !{i32 198, i32 0, metadata !196, null}
!198 = metadata !{i32 200, i32 0, metadata !69, null}
!199 = metadata !{i32 201, i32 0, metadata !69, null}
!200 = metadata !{i32 202, i32 0, metadata !69, null}
!201 = metadata !{i32 203, i32 0, metadata !69, null}
!202 = metadata !{i32 204, i32 0, metadata !69, null}
!203 = metadata !{i32 205, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !205, i32 205, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!205 = metadata !{i32 786443, metadata !1, metadata !69, i32 204, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!206 = metadata !{i32 212, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !208, i32 212, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!208 = metadata !{i32 786443, metadata !1, metadata !69, i32 211, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!209 = metadata !{i32 206, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !204, i32 205, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!211 = metadata !{i32 213, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !207, i32 212, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!213 = metadata !{i32 207, i32 0, metadata !210, null}
!214 = metadata !{i32 208, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !210, i32 207, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DSTree/src/DSTree_util.c]
!216 = metadata !{i32 209, i32 0, metadata !215, null}
!217 = metadata !{i32 214, i32 0, metadata !212, null}
!218 = metadata !{i32 219, i32 0, metadata !69, null}
