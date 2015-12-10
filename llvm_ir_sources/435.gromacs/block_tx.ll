; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/block_tx.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"TX: Null pointer (size=%d)!\0A\00", align 1
@.str1 = private unnamed_addr constant [29 x i8] c"RX: Null pointer (size=%d)!\0A\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"%d: size=%d, len=%d, rx_count=%d\0A\00", align 1
@.str3 = private unnamed_addr constant [13 x i8] c"block->index\00", align 1
@.str4 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/block_tx.c\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"block->a\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #4
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define void @_blocktx(i32 %dest, i32 %nelem, i32 %size, i8* %data) #3 {
  %1 = alloca i32, align 4
  store i32 %size, i32* %1, align 4, !tbaa !14
  %2 = icmp eq i8* %data, null
  %3 = icmp sgt i32 %size, 0
  %or.cond = and i1 %3, %2
  br i1 %or.cond, label %4, label %.preheader

; <label>:4                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str, i64 0, i64 0), i32 %size) #4
  br label %.preheader

.preheader:                                       ; preds = %4, %0
  %5 = icmp sgt i32 %nelem, 0
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %6 = bitcast i32* %1 to i8*
  %7 = add i32 %nelem, -1
  br label %8

; <label>:8                                       ; preds = %12, %.lr.ph
  %buf.03 = phi i8* [ %data, %.lr.ph ], [ %15, %12 ]
  %i.02 = phi i32 [ 0, %.lr.ph ], [ %16, %12 ]
  call void @gmx_txs(i32 %dest, i8* %6, i32 4) #4
  %9 = load i32* %1, align 4, !tbaa !14
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %8
  call void @gmx_txs(i32 %dest, i8* %buf.03, i32 %9) #4
  %.pre = load i32* %1, align 4, !tbaa !14
  br label %12

; <label>:12                                      ; preds = %11, %8
  %13 = phi i32 [ %.pre, %11 ], [ %9, %8 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8* %buf.03, i64 %14
  %16 = add nuw nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %i.02, %7
  br i1 %exitcond, label %._crit_edge, label %8

._crit_edge:                                      ; preds = %12, %.preheader
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @gmx_txs(i32, i8*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @_blockrx(i32 %src, i32 %nelem, i32 %size, i8* %data) #3 {
  %len = alloca i32, align 4
  %1 = icmp eq i8* %data, null
  %2 = icmp sgt i32 %size, 0
  %or.cond = and i1 %2, %1
  br i1 %or.cond, label %3, label %.preheader

; <label>:3                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([29 x i8]* @.str1, i64 0, i64 0), i32 %size) #4
  br label %.preheader

.preheader:                                       ; preds = %3, %0
  %4 = icmp sgt i32 %nelem, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %5 = bitcast i32* %len to i8*
  %6 = add i32 %nelem, -1
  br label %7

; <label>:7                                       ; preds = %15, %.lr.ph
  %buf.03 = phi i8* [ %data, %.lr.ph ], [ %18, %15 ]
  %i.02 = phi i32 [ 0, %.lr.ph ], [ %19, %15 ]
  call void @gmx_rxs(i32 %src, i8* %5, i32 4) #4
  %8 = load i32* %len, align 4, !tbaa !14
  %9 = icmp eq i32 %8, %size
  br i1 %9, label %11, label %10

; <label>:10                                      ; preds = %7
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0), i32 0, i32 %size, i32 %8, i32 0) #4
  %.pr = load i32* %len, align 4, !tbaa !14
  br label %11

; <label>:11                                      ; preds = %7, %10
  %12 = phi i32 [ %size, %7 ], [ %.pr, %10 ]
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %11
  call void @gmx_rxs(i32 %src, i8* %buf.03, i32 %12) #4
  %.pre = load i32* %len, align 4, !tbaa !14
  br label %15

; <label>:15                                      ; preds = %14, %11
  %16 = phi i32 [ %.pre, %14 ], [ %12, %11 ]
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8* %buf.03, i64 %17
  %19 = add nuw nsw i32 %i.02, 1
  %exitcond = icmp eq i32 %i.02, %6
  br i1 %exitcond, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %15, %.preheader
  ret void
}

; Function Attrs: optsize
declare void @gmx_rxs(i32, i8*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @mv_block(i32 %dest, %struct.t_block* %block) #3 {
  %1 = bitcast %struct.t_block* %block to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 1024, i8* %1) #5
  %2 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %3 = bitcast i32* %2 to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %3) #5
  %4 = load i32* %2, align 4, !tbaa !15
  %5 = shl i32 %4, 2
  %6 = add i32 %5, 4
  %7 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  %8 = bitcast i32** %7 to i8**
  %9 = load i8** %8, align 8, !tbaa !17
  tail call void @_blocktx(i32 %dest, i32 1, i32 %6, i8* %9) #5
  %10 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  %11 = bitcast i32* %10 to i8*
  tail call void @_blocktx(i32 %dest, i32 1, i32 4, i8* %11) #5
  %12 = load i32* %10, align 4, !tbaa !18
  %13 = shl i32 %12, 2
  %14 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  %15 = bitcast i32** %14 to i8**
  %16 = load i8** %15, align 8, !tbaa !19
  tail call void @_blocktx(i32 %dest, i32 1, i32 %13, i8* %16) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ld_block(i32 %src, %struct.t_block* %block) #3 {
  %1 = bitcast %struct.t_block* %block to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 1024, i8* %1) #5
  %2 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %3 = bitcast i32* %2 to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %3) #5
  %4 = load i32* %2, align 4, !tbaa !15
  %5 = add nsw i32 %4, 1
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str4, i64 0, i64 0), i32 108, i32 %5, i32 4) #4
  %7 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  %8 = bitcast i32** %7 to i8**
  store i8* %6, i8** %8, align 8, !tbaa !17
  %9 = load i32* %2, align 4, !tbaa !15
  %10 = shl i32 %9, 2
  %11 = add i32 %10, 4
  tail call void @_blockrx(i32 %src, i32 1, i32 %11, i8* %6) #5
  %12 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 3
  %13 = bitcast i32* %12 to i8*
  tail call void @_blockrx(i32 %src, i32 1, i32 4, i8* %13) #5
  %14 = load i32* %12, align 4, !tbaa !18
  %15 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str4, i64 0, i64 0), i32 120, i32 %14, i32 4) #4
  %16 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  %17 = bitcast i32** %16 to i8**
  store i8* %15, i8** %17, align 8, !tbaa !19
  %18 = load i32* %12, align 4, !tbaa !18
  %19 = shl i32 %18, 2
  tail call void @_blockrx(i32 %src, i32 1, i32 %19, i8* %15) #5
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !7, i64 1024}
!16 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!17 = !{!16, !4, i64 1032}
!18 = !{!16, !7, i64 1040}
!19 = !{!16, !4, i64 1048}
