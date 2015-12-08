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
  %cmp = icmp eq %struct._DSTree* %dstree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._DSTree* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %tree = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0
  %1 = load %struct._Tree** %tree, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._Tree* %1, null
  br i1 %cmp1, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @Tree_sizeOf(%struct._Tree* %1) #4
  %add = add nsw i32 %call4, 16
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then2
  %nbytes.0 = phi i32 [ %add, %if.then2 ], [ 16, %if.end ]
  %mapIV = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1
  %2 = load %struct._IV** %mapIV, align 8, !tbaa !0
  %cmp6 = icmp eq %struct._IV* %2, null
  br i1 %cmp6, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end5
  %call9 = tail call i32 @IV_sizeOf(%struct._IV* %2) #4
  %add10 = add nsw i32 %call9, %nbytes.0
  br label %if.end11

if.end11:                                         ; preds = %if.end5, %if.then7
  %nbytes.1 = phi i32 [ %add10, %if.then7 ], [ %nbytes.0, %if.end5 ]
  ret i32 %nbytes.1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @Tree_sizeOf(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @IV_sizeOf(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define void @DSTree_renumberViaPostOT(%struct._DSTree* %dstree) #0 {
entry:
  %cmp = icmp eq %struct._DSTree* %dstree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tree1 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 0
  %0 = load %struct._Tree** %tree1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Tree* %0, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %n4 = getelementptr inbounds %struct._Tree* %0, i64 0, i32 0
  %1 = load i32* %n4, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %1, 1
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %mapIV7 = getelementptr inbounds %struct._DSTree* %dstree, i64 0, i32 1
  %2 = load %struct._IV** %mapIV7, align 8, !tbaa !0
  %cmp8 = icmp eq %struct._IV* %2, null
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call = tail call i32 @IV_size(%struct._IV* %2) #4
  %cmp10 = icmp slt i32 %call, 1
  br i1 %cmp10, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %call12 = tail call i32* @IV_entries(%struct._IV* %2) #4
  %cmp13 = icmp eq i32* %call12, null
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), %struct._DSTree* %dstree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false11
  %call15 = tail call i32* @IVinit(i32 %1, i32 -1) #4
  %call16 = tail call i32* @IVinit(i32 %1, i32 -1) #4
  %call17 = tail call i32 @Tree_postOTfirst(%struct._Tree* %0) #4
  %cmp18189 = icmp eq i32 %call17, -1
  br i1 %cmp18189, label %for.cond20.preheader, label %for.body

for.cond20.preheader:                             ; preds = %for.body, %if.end
  %cmp21187 = icmp sgt i32 %1, 0
  %par = getelementptr inbounds %struct._Tree* %0, i64 0, i32 2
  %4 = load i32** %par, align 8, !tbaa !0
  br i1 %cmp21187, label %for.body22, label %for.end40.thread

for.end40.thread:                                 ; preds = %for.cond20.preheader
  tail call void @IVcopy(i32 %1, i32* %4, i32* %call16) #4
  br label %for.end40.for.end63_crit_edge

for.body:                                         ; preds = %if.end, %for.body
  %count.0191 = phi i32 [ %inc, %for.body ], [ 0, %if.end ]
  %J.0190 = phi i32 [ %call19, %for.body ], [ %call17, %if.end ]
  %inc = add nsw i32 %count.0191, 1
  %idxprom = sext i32 %J.0190 to i64
  %arrayidx = getelementptr inbounds i32* %call15, i64 %idxprom
  store i32 %count.0191, i32* %arrayidx, align 4, !tbaa !3
  %call19 = tail call i32 @Tree_postOTnext(%struct._Tree* %0, i32 %J.0190) #4
  %cmp18 = icmp eq i32 %call19, -1
  br i1 %cmp18, label %for.cond20.preheader, label %for.body

for.body22:                                       ; preds = %for.cond20.preheader, %for.inc38
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %for.inc38 ], [ 0, %for.cond20.preheader ]
  %arrayidx24 = getelementptr inbounds i32* %4, i64 %indvars.iv200
  %5 = load i32* %arrayidx24, align 4, !tbaa !3
  %cmp25 = icmp eq i32 %5, -1
  br i1 %cmp25, label %if.else, label %if.then26

if.then26:                                        ; preds = %for.body22
  %idxprom27 = sext i32 %5 to i64
  %arrayidx28 = getelementptr inbounds i32* %call15, i64 %idxprom27
  %6 = load i32* %arrayidx28, align 4, !tbaa !3
  %arrayidx30 = getelementptr inbounds i32* %call15, i64 %indvars.iv200
  %7 = load i32* %arrayidx30, align 4, !tbaa !3
  %idxprom31 = sext i32 %7 to i64
  %arrayidx32 = getelementptr inbounds i32* %call16, i64 %idxprom31
  store i32 %6, i32* %arrayidx32, align 4, !tbaa !3
  br label %for.inc38

if.else:                                          ; preds = %for.body22
  %arrayidx34 = getelementptr inbounds i32* %call15, i64 %indvars.iv200
  %8 = load i32* %arrayidx34, align 4, !tbaa !3
  %idxprom35 = sext i32 %8 to i64
  %arrayidx36 = getelementptr inbounds i32* %call16, i64 %idxprom35
  store i32 -1, i32* %arrayidx36, align 4, !tbaa !3
  br label %for.inc38

for.inc38:                                        ; preds = %if.then26, %if.else
  %indvars.iv.next201 = add i64 %indvars.iv200, 1
  %lftr.wideiv202 = trunc i64 %indvars.iv.next201 to i32
  %exitcond203 = icmp eq i32 %lftr.wideiv202, %1
  br i1 %exitcond203, label %for.end40, label %for.body22

for.end40:                                        ; preds = %for.inc38
  tail call void @IVcopy(i32 %1, i32* %4, i32* %call16) #4
  br i1 %cmp21187, label %for.body44.lr.ph, label %for.end40.for.end63_crit_edge

for.end40.for.end63_crit_edge:                    ; preds = %for.end40.thread, %for.end40
  %fch64.phi.trans.insert = getelementptr inbounds %struct._Tree* %0, i64 0, i32 3
  %.pre204 = load i32** %fch64.phi.trans.insert, align 8, !tbaa !0
  br label %for.end63

for.body44.lr.ph:                                 ; preds = %for.end40
  %fch = getelementptr inbounds %struct._Tree* %0, i64 0, i32 3
  %9 = load i32** %fch, align 8, !tbaa !0
  br label %for.body44

for.body44:                                       ; preds = %for.inc61, %for.body44.lr.ph
  %indvars.iv196 = phi i64 [ 0, %for.body44.lr.ph ], [ %indvars.iv.next197, %for.inc61 ]
  %arrayidx46 = getelementptr inbounds i32* %9, i64 %indvars.iv196
  %10 = load i32* %arrayidx46, align 4, !tbaa !3
  %cmp47 = icmp eq i32 %10, -1
  br i1 %cmp47, label %if.else55, label %if.then48

if.then48:                                        ; preds = %for.body44
  %idxprom49 = sext i32 %10 to i64
  %arrayidx50 = getelementptr inbounds i32* %call15, i64 %idxprom49
  %11 = load i32* %arrayidx50, align 4, !tbaa !3
  %arrayidx52 = getelementptr inbounds i32* %call15, i64 %indvars.iv196
  %12 = load i32* %arrayidx52, align 4, !tbaa !3
  %idxprom53 = sext i32 %12 to i64
  %arrayidx54 = getelementptr inbounds i32* %call16, i64 %idxprom53
  store i32 %11, i32* %arrayidx54, align 4, !tbaa !3
  br label %for.inc61

if.else55:                                        ; preds = %for.body44
  %arrayidx57 = getelementptr inbounds i32* %call15, i64 %indvars.iv196
  %13 = load i32* %arrayidx57, align 4, !tbaa !3
  %idxprom58 = sext i32 %13 to i64
  %arrayidx59 = getelementptr inbounds i32* %call16, i64 %idxprom58
  store i32 -1, i32* %arrayidx59, align 4, !tbaa !3
  br label %for.inc61

for.inc61:                                        ; preds = %if.then48, %if.else55
  %indvars.iv.next197 = add i64 %indvars.iv196, 1
  %lftr.wideiv198 = trunc i64 %indvars.iv.next197 to i32
  %exitcond199 = icmp eq i32 %lftr.wideiv198, %1
  br i1 %exitcond199, label %for.end63, label %for.body44

for.end63:                                        ; preds = %for.inc61, %for.end40.for.end63_crit_edge
  %14 = phi i32* [ %.pre204, %for.end40.for.end63_crit_edge ], [ %9, %for.inc61 ]
  tail call void @IVcopy(i32 %1, i32* %14, i32* %call16) #4
  %sib = getelementptr inbounds %struct._Tree* %0, i64 0, i32 4
  %15 = load i32** %sib, align 8, !tbaa !0
  br i1 %cmp21187, label %for.body67, label %for.end86

for.body67:                                       ; preds = %for.end63, %for.inc84
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %for.inc84 ], [ 0, %for.end63 ]
  %arrayidx69 = getelementptr inbounds i32* %15, i64 %indvars.iv192
  %16 = load i32* %arrayidx69, align 4, !tbaa !3
  %cmp70 = icmp eq i32 %16, -1
  br i1 %cmp70, label %if.else78, label %if.then71

if.then71:                                        ; preds = %for.body67
  %idxprom72 = sext i32 %16 to i64
  %arrayidx73 = getelementptr inbounds i32* %call15, i64 %idxprom72
  %17 = load i32* %arrayidx73, align 4, !tbaa !3
  %arrayidx75 = getelementptr inbounds i32* %call15, i64 %indvars.iv192
  %18 = load i32* %arrayidx75, align 4, !tbaa !3
  %idxprom76 = sext i32 %18 to i64
  %arrayidx77 = getelementptr inbounds i32* %call16, i64 %idxprom76
  store i32 %17, i32* %arrayidx77, align 4, !tbaa !3
  br label %for.inc84

if.else78:                                        ; preds = %for.body67
  %arrayidx80 = getelementptr inbounds i32* %call15, i64 %indvars.iv192
  %19 = load i32* %arrayidx80, align 4, !tbaa !3
  %idxprom81 = sext i32 %19 to i64
  %arrayidx82 = getelementptr inbounds i32* %call16, i64 %idxprom81
  store i32 -1, i32* %arrayidx82, align 4, !tbaa !3
  br label %for.inc84

for.inc84:                                        ; preds = %if.then71, %if.else78
  %indvars.iv.next193 = add i64 %indvars.iv192, 1
  %lftr.wideiv194 = trunc i64 %indvars.iv.next193 to i32
  %exitcond195 = icmp eq i32 %lftr.wideiv194, %1
  br i1 %exitcond195, label %for.end86, label %for.body67

for.end86:                                        ; preds = %for.end63, %for.inc84
  tail call void @IVcopy(i32 %1, i32* %15, i32* %call16) #4
  %root = getelementptr inbounds %struct._Tree* %0, i64 0, i32 1
  %20 = load i32* %root, align 4, !tbaa !3
  %cmp88 = icmp eq i32 %20, -1
  br i1 %cmp88, label %for.cond95.preheader, label %if.then89

if.then89:                                        ; preds = %for.end86
  %idxprom91 = sext i32 %20 to i64
  %arrayidx92 = getelementptr inbounds i32* %call15, i64 %idxprom91
  %21 = load i32* %arrayidx92, align 4, !tbaa !3
  store i32 %21, i32* %root, align 4, !tbaa !3
  br label %for.cond95.preheader

for.cond95.preheader:                             ; preds = %for.end86, %if.then89
  %cmp96181 = icmp sgt i32 %call, 0
  br i1 %cmp96181, label %for.body97, label %for.end110

for.body97:                                       ; preds = %for.cond95.preheader, %for.inc108
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc108 ], [ 0, %for.cond95.preheader ]
  %arrayidx99 = getelementptr inbounds i32* %call12, i64 %indvars.iv
  %22 = load i32* %arrayidx99, align 4, !tbaa !3
  %cmp100 = icmp sgt i32 %22, -1
  %cmp101 = icmp slt i32 %22, %1
  %or.cond = and i1 %cmp100, %cmp101
  br i1 %or.cond, label %if.then102, label %for.inc108

if.then102:                                       ; preds = %for.body97
  %idxprom103 = sext i32 %22 to i64
  %arrayidx104 = getelementptr inbounds i32* %call15, i64 %idxprom103
  %23 = load i32* %arrayidx104, align 4, !tbaa !3
  store i32 %23, i32* %arrayidx99, align 4, !tbaa !3
  br label %for.inc108

for.inc108:                                       ; preds = %for.body97, %if.then102
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call
  br i1 %exitcond, label %for.end110, label %for.body97

for.end110:                                       ; preds = %for.inc108, %for.cond95.preheader
  tail call void @IVfree(i32* %call15) #4
  tail call void @IVfree(i32* %call16) #4
  ret void
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @DSTree_domainWeight(%struct._DSTree* %dstree, i32* %vwghts) #0 {
entry:
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  %cmp = icmp eq %struct._DSTree* %dstree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._DSTree* null) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call %struct._Tree* @DSTree_tree(%struct._DSTree* %dstree) #4
  %call2 = call %struct._IV* @DSTree_mapIV(%struct._DSTree* %dstree) #4
  call void @IV_sizeAndEntries(%struct._IV* %call2, i32* %nvtx, i32** %map) #4
  %fch3 = getelementptr inbounds %struct._Tree* %call1, i64 0, i32 3
  %1 = load i32** %fch3, align 8, !tbaa !0
  %cmp4 = icmp eq i32* %vwghts, null
  %2 = load i32* %nvtx, align 4, !tbaa !3
  %cmp1543 = icmp sgt i32 %2, 0
  br i1 %cmp4, label %for.cond14.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp1543, label %for.body.lr.ph, label %if.end28

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = load i32** %map, align 8, !tbaa !0
  br label %for.body

for.cond14.preheader:                             ; preds = %if.end
  br i1 %cmp1543, label %for.body16.lr.ph, label %if.end28

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  %4 = load i32** %map, align 8, !tbaa !0
  br label %for.body16

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv51 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next52, %for.inc ]
  %domwght.049 = phi i32 [ 0, %for.body.lr.ph ], [ %domwght.1, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv51
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds i32* %1, i64 %idxprom7
  %6 = load i32* %arrayidx8, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %6, -1
  br i1 %cmp9, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  %arrayidx12 = getelementptr inbounds i32* %vwghts, i64 %indvars.iv51
  %7 = load i32* %arrayidx12, align 4, !tbaa !3
  %add = add nsw i32 %7, %domwght.049
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then10
  %domwght.1 = phi i32 [ %add, %if.then10 ], [ %domwght.049, %for.body ]
  %indvars.iv.next52 = add i64 %indvars.iv51, 1
  %8 = trunc i64 %indvars.iv.next52 to i32
  %cmp6 = icmp slt i32 %8, %2
  br i1 %cmp6, label %for.body, label %if.end28

for.body16:                                       ; preds = %for.body16.lr.ph, %for.body16
  %indvars.iv = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next, %for.body16 ]
  %domwght.245 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc23.domwght.2, %for.body16 ]
  %arrayidx18 = getelementptr inbounds i32* %4, i64 %indvars.iv
  %9 = load i32* %arrayidx18, align 4, !tbaa !3
  %idxprom19 = sext i32 %9 to i64
  %arrayidx20 = getelementptr inbounds i32* %1, i64 %idxprom19
  %10 = load i32* %arrayidx20, align 4, !tbaa !3
  %cmp21 = icmp eq i32 %10, -1
  %inc23 = zext i1 %cmp21 to i32
  %inc23.domwght.2 = add nsw i32 %inc23, %domwght.245
  %indvars.iv.next = add i64 %indvars.iv, 1
  %11 = trunc i64 %indvars.iv.next to i32
  %cmp15 = icmp slt i32 %11, %2
  br i1 %cmp15, label %for.body16, label %if.end28

if.end28:                                         ; preds = %for.cond.preheader, %for.inc, %for.cond14.preheader, %for.body16
  %domwght.4 = phi i32 [ 0, %for.cond14.preheader ], [ %inc23.domwght.2, %for.body16 ], [ 0, %for.cond.preheader ], [ %domwght.1, %for.inc ]
  ret i32 %domwght.4
}

; Function Attrs: optsize
declare %struct._Tree* @DSTree_tree(%struct._DSTree*) #3

; Function Attrs: optsize
declare %struct._IV* @DSTree_mapIV(%struct._DSTree*) #3

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #3

; Function Attrs: nounwind optsize uwtable
define i32 @DSTree_separatorWeight(%struct._DSTree* %dstree, i32* %vwghts) #0 {
entry:
  %nvtx = alloca i32, align 4
  %map = alloca i32*, align 8
  %cmp = icmp eq %struct._DSTree* %dstree, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str3, i64 0, i64 0), %struct._DSTree* null) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call %struct._Tree* @DSTree_tree(%struct._DSTree* %dstree) #4
  %call2 = call %struct._IV* @DSTree_mapIV(%struct._DSTree* %dstree) #4
  call void @IV_sizeAndEntries(%struct._IV* %call2, i32* %nvtx, i32** %map) #4
  %fch3 = getelementptr inbounds %struct._Tree* %call1, i64 0, i32 3
  %1 = load i32** %fch3, align 8, !tbaa !0
  %cmp4 = icmp eq i32* %vwghts, null
  %2 = load i32* %nvtx, align 4, !tbaa !3
  %cmp1543 = icmp sgt i32 %2, 0
  br i1 %cmp4, label %for.cond14.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp1543, label %for.body.lr.ph, label %if.end28

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = load i32** %map, align 8, !tbaa !0
  br label %for.body

for.cond14.preheader:                             ; preds = %if.end
  br i1 %cmp1543, label %for.body16.lr.ph, label %if.end28

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  %4 = load i32** %map, align 8, !tbaa !0
  br label %for.body16

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv51 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next52, %for.inc ]
  %sepwght.049 = phi i32 [ 0, %for.body.lr.ph ], [ %sepwght.1, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv51
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds i32* %1, i64 %idxprom7
  %6 = load i32* %arrayidx8, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %6, -1
  br i1 %cmp9, label %for.inc, label %if.then10

if.then10:                                        ; preds = %for.body
  %arrayidx12 = getelementptr inbounds i32* %vwghts, i64 %indvars.iv51
  %7 = load i32* %arrayidx12, align 4, !tbaa !3
  %add = add nsw i32 %7, %sepwght.049
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then10
  %sepwght.1 = phi i32 [ %add, %if.then10 ], [ %sepwght.049, %for.body ]
  %indvars.iv.next52 = add i64 %indvars.iv51, 1
  %8 = trunc i64 %indvars.iv.next52 to i32
  %cmp6 = icmp slt i32 %8, %2
  br i1 %cmp6, label %for.body, label %if.end28

for.body16:                                       ; preds = %for.body16.lr.ph, %for.body16
  %indvars.iv = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next, %for.body16 ]
  %sepwght.245 = phi i32 [ 0, %for.body16.lr.ph ], [ %sepwght.2.inc23, %for.body16 ]
  %arrayidx18 = getelementptr inbounds i32* %4, i64 %indvars.iv
  %9 = load i32* %arrayidx18, align 4, !tbaa !3
  %idxprom19 = sext i32 %9 to i64
  %arrayidx20 = getelementptr inbounds i32* %1, i64 %idxprom19
  %10 = load i32* %arrayidx20, align 4, !tbaa !3
  %not.cmp21 = icmp ne i32 %10, -1
  %inc23 = zext i1 %not.cmp21 to i32
  %sepwght.2.inc23 = add nsw i32 %inc23, %sepwght.245
  %indvars.iv.next = add i64 %indvars.iv, 1
  %11 = trunc i64 %indvars.iv.next to i32
  %cmp15 = icmp slt i32 %11, %2
  br i1 %cmp15, label %for.body16, label %if.end28

if.end28:                                         ; preds = %for.cond.preheader, %for.inc, %for.cond14.preheader, %for.body16
  %sepwght.4 = phi i32 [ 0, %for.cond14.preheader ], [ %sepwght.2.inc23, %for.body16 ], [ 0, %for.cond.preheader ], [ %sepwght.1, %for.inc ]
  ret i32 %sepwght.4
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
