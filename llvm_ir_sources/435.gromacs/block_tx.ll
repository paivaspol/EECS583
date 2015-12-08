; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/block_tx.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"TX: Null pointer (size=%d)!\0A\00", align 1
@.str1 = private unnamed_addr constant [29 x i8] c"RX: Null pointer (size=%d)!\0A\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"%d: size=%d, len=%d, rx_count=%d\0A\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"block->index\00", align 1
@.str4 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/block_tx.c\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"block->a\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @_blocktx(i32 %dest, i32 %nelem, i32 %size, i8* %data) #0 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4, !tbaa !0
  %cmp = icmp eq i8* %data, null
  %cmp1 = icmp sgt i32 %size, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str, i64 0, i64 0), i32 %size) #2
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp210 = icmp sgt i32 %nelem, 0
  br i1 %cmp210, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = bitcast i32* %size.addr to i8*
  br label %for.body

for.body:                                         ; preds = %if.end5, %for.body.lr.ph
  %buf.012 = phi i8* [ %data, %for.body.lr.ph ], [ %add.ptr, %if.end5 ]
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end5 ]
  call void @gmx_txs(i32 %dest, i8* %0, i32 4) #2
  %1 = load i32* %size.addr, align 4, !tbaa !0
  %cmp3 = icmp sgt i32 %1, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  call void @gmx_txs(i32 %dest, i8* %buf.012, i32 %1) #2
  %.pre = load i32* %size.addr, align 4, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.body
  %2 = phi i32 [ %.pre, %if.then4 ], [ %1, %for.body ]
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8* %buf.012, i64 %idx.ext
  %inc = add nsw i32 %i.011, 1
  %exitcond = icmp eq i32 %inc, %nelem
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end5, %for.cond.preheader
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @gmx_txs(i32, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @_blockrx(i32 %src, i32 %nelem, i32 %size, i8* %data) #0 {
entry:
  %len = alloca i32, align 4
  %cmp = icmp eq i8* %data, null
  %cmp1 = icmp sgt i32 %size, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), i32 %size) #2
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp216 = icmp sgt i32 %nelem, 0
  br i1 %cmp216, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = bitcast i32* %len to i8*
  br label %for.body

for.body:                                         ; preds = %if.end8, %for.body.lr.ph
  %buf.018 = phi i8* [ %data, %for.body.lr.ph ], [ %add.ptr, %if.end8 ]
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end8 ]
  call void @gmx_rxs(i32 %src, i8* %0, i32 4) #2
  %1 = load i32* %len, align 4, !tbaa !0
  %cmp3 = icmp eq i32 %1, %size
  br i1 %cmp3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %for.body
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0), i32 0, i32 %size, i32 %1, i32 0) #2
  %.pr = load i32* %len, align 4, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %for.body, %if.then4
  %2 = phi i32 [ %size, %for.body ], [ %.pr, %if.then4 ]
  %cmp6 = icmp sgt i32 %2, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @gmx_rxs(i32 %src, i8* %buf.018, i32 %2) #2
  %.pre = load i32* %len, align 4, !tbaa !0
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5
  %3 = phi i32 [ %.pre, %if.then7 ], [ %2, %if.end5 ]
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8* %buf.018, i64 %idx.ext
  %inc = add nsw i32 %i.017, 1
  %exitcond = icmp eq i32 %inc, %nelem
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end8, %for.cond.preheader
  ret void
}

; Function Attrs: optsize
declare void @gmx_rxs(i32, i8*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @mv_block(i32 %dest, %struct.t_block* %block) #0 {
entry:
  %0 = bitcast %struct.t_block* %block to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 1024, i8* %0) #3
  %nr = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %1 = bitcast i32* %nr to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %1) #3
  %2 = load i32* %nr, align 4, !tbaa !0
  %add = shl i32 %2, 2
  %mul = add i32 %add, 4
  %index = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  %3 = load i32** %index, align 8, !tbaa !3
  %4 = bitcast i32* %3 to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 %mul, i8* %4) #3
  %nra = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  %5 = bitcast i32* %nra to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %5) #3
  %6 = load i32* %nra, align 4, !tbaa !0
  %mul5 = shl i32 %6, 2
  %a = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  %7 = load i32** %a, align 8, !tbaa !3
  %8 = bitcast i32* %7 to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 %mul5, i8* %8) #3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @ld_block(i32 %src, %struct.t_block* %block) #0 {
entry:
  %0 = bitcast %struct.t_block* %block to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 1024, i8* %0) #3
  %nr = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %1 = bitcast i32* %nr to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %1) #3
  %2 = load i32* %nr, align 4, !tbaa !0
  %add = add nsw i32 %2, 1
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0), i32 108, i32 %add, i32 4) #2
  %3 = bitcast i8* %call to i32*
  %index = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  store i32* %3, i32** %index, align 8, !tbaa !3
  %4 = load i32* %nr, align 4, !tbaa !0
  %add3 = shl i32 %4, 2
  %mul = add i32 %add3, 4
  tail call void @_blockrx(i32 %src, i32 1, i32 %mul, i8* %call) #3
  %nra = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  %5 = bitcast i32* %nra to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %5) #3
  %6 = load i32* %nra, align 4, !tbaa !0
  %call7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0), i32 120, i32 %6, i32 4) #2
  %7 = bitcast i8* %call7 to i32*
  %a = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  store i32* %7, i32** %a, align 8, !tbaa !3
  %8 = load i32* %nra, align 4, !tbaa !0
  %mul10 = shl i32 %8, 2
  tail call void @_blockrx(i32 %src, i32 1, i32 %mul10, i8* %call7) #3
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }
attributes #3 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
