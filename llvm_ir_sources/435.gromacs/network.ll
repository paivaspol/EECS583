; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/network.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Routine %s called in %s, %d\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"gmx_tx\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/network.c\00", align 1
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

; Function Attrs: nounwind optsize uwtable
define void @gmx_tx(i32 %nodeid, i8* nocapture %buf, i32 %bufsize) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 59) #4
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define void @gmx_tx_wait(i32 %nodeid) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 88) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_txs(i32 %nodeid, i8* nocapture %buf, i32 %bufsize) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 101) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_rx(i32 %nodeid, i8* nocapture %buf, i32 %bufsize) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 118) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_rx_wait(i32 %nodeid) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 135) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @gmx_rx_probe(i32 %nodeid) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 148) #4
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_rxs(i32 %nodeid, i8* nocapture %buf, i32 %bufsize) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 164) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @gmx_setup(i32* nocapture %argc, i8** nocapture %argv, i32* nocapture %nnodes) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 182) #4
  ret i32 0
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @gmx_node_num() #2 {
entry:
  ret i32 1
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @gmx_node_id() #2 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @gmx_idle_send() #2 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @gmx_idle_rec() #2 {
entry:
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_left_right(i32 %nnodes, i32 %nodeid, i32* nocapture %left, i32* nocapture %right) #0 {
entry:
  %add = add i32 %nnodes, -1
  %sub = add i32 %add, %nodeid
  %rem = srem i32 %sub, %nnodes
  store i32 %rem, i32* %left, align 4, !tbaa !0
  %add1 = add nsw i32 %nodeid, 1
  %rem2 = srem i32 %add1, %nnodes
  store i32 %rem2, i32* %right, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_tx_rx(i32 %send_nodeid, i8* nocapture %send_buf, i32 %send_bufsize, i32 %rec_nodeid, i8* nocapture %rec_buf, i32 %rec_bufsize) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 242) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_tx_rx_real(i32 %send_nodeid, float* nocapture %send_buf, i32 %send_bufsize, i32 %rec_nodeid, float* nocapture %rec_buf, i32 %rec_bufsize) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 257) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_wait(i32 %left, i32 %right) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 277) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_sync_ring(i32 %nodeid, i32 %nnodes, i32 %left, i32 %right) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 287) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_stat(%struct._IO_FILE* nocapture %fp, i8* %msg) #0 {
entry:
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str14, i64 0, i64 0), i8* %msg, i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 307) #4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize readnone uwtable
define void @gmx_reset_idle() #2 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_abort(i32 %nodeid, i32 %nnodes, i32 %errorno) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 318) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_sumd(i32 %nr, double* nocapture %r, %struct.t_commrec* nocapture %cr) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 327) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_sumf(i32 %nr, float* nocapture %r, %struct.t_commrec* nocapture %cr) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 374) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_sumi(i32 %nr, i32* nocapture %r, %struct.t_commrec* nocapture %cr) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 405) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gmx_finalize() #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 436) #4
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
