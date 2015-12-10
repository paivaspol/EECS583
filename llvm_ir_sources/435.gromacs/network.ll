; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/network.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Routine %s called in %s, %d\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"gmx_tx\00", align 1
@.str2 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/network.c\00", align 1
@.str3 = private unnamed_addr constant [12 x i8] c"gmx_tx_wait\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"gmx_txs\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"gmx_rx\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"gmx_rx_wait\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"gmx_rx_probe\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"gmx_rxs\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"gmx_setup\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"gmx_tx_rx\00", align 1
@.str11 = private unnamed_addr constant [15 x i8] c"gmx_tx_rx_real\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"gmx_wait\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"gmx_sync_ring\00", align 1
@.str14 = private unnamed_addr constant [28 x i8] c"def_stat: %s (from %s, %d)\0A\00", align 1
@.str15 = private unnamed_addr constant [10 x i8] c"gmx_abort\00", align 1
@.str16 = private unnamed_addr constant [9 x i8] c"gmx_sumd\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"gmx_sumf\00", align 1
@.str18 = private unnamed_addr constant [9 x i8] c"gmx_sumi\00", align 1
@.str19 = private unnamed_addr constant [13 x i8] c"gmx_finalize\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6
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
define void @gmx_tx(i32 %nodeid, i8* nocapture readnone %buf, i32 %bufsize) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 59) #6
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_tx_wait(i32 %nodeid) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 88) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_txs(i32 %nodeid, i8* nocapture readnone %buf, i32 %bufsize) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 101) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_rx(i32 %nodeid, i8* nocapture readnone %buf, i32 %bufsize) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 118) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_rx_wait(i32 %nodeid) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 135) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gmx_rx_probe(i32 %nodeid) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 148) #6
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_rxs(i32 %nodeid, i8* nocapture readnone %buf, i32 %bufsize) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 164) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @gmx_setup(i32* nocapture readnone %argc, i8** nocapture readnone %argv, i32* nocapture readnone %nnodes) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 182) #6
  ret i32 0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @gmx_node_num() #4 {
  ret i32 1
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @gmx_node_id() #4 {
  ret i32 0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @gmx_idle_send() #4 {
  ret i32 0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @gmx_idle_rec() #4 {
  ret i32 0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_left_right(i32 %nnodes, i32 %nodeid, i32* nocapture %left, i32* nocapture %right) #3 {
  %1 = add i32 %nnodes, -1
  %2 = add i32 %1, %nodeid
  %3 = srem i32 %2, %nnodes
  store i32 %3, i32* %left, align 4, !tbaa !14
  %4 = add nsw i32 %nodeid, 1
  %5 = srem i32 %4, %nnodes
  store i32 %5, i32* %right, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_tx_rx(i32 %send_nodeid, i8* nocapture readnone %send_buf, i32 %send_bufsize, i32 %rec_nodeid, i8* nocapture readnone %rec_buf, i32 %rec_bufsize) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 242) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_tx_rx_real(i32 %send_nodeid, float* nocapture readnone %send_buf, i32 %send_bufsize, i32 %rec_nodeid, float* nocapture readnone %rec_buf, i32 %rec_bufsize) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 257) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_wait(i32 %left, i32 %right) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 277) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_sync_ring(i32 %nodeid, i32 %nnodes, i32 %left, i32 %right) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 287) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_stat(%struct.__sFILE* nocapture %fp, i8* %msg) #3 {
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str14, i64 0, i64 0), i8* %msg, i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 307) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize readnone ssp uwtable
define void @gmx_reset_idle() #4 {
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_abort(i32 %nodeid, i32 %nnodes, i32 %errorno) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 318) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_sumd(i32 %nr, double* nocapture readnone %r, %struct.t_commrec* nocapture readnone %cr) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 327) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_sumf(i32 %nr, float* nocapture readnone %r, %struct.t_commrec* nocapture readnone %cr) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 374) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_sumi(i32 %nr, i32* nocapture readnone %r, %struct.t_commrec* nocapture readnone %cr) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 405) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gmx_finalize() #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str2, i64 0, i64 0), i32 436) #6
  ret void
}

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }

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
