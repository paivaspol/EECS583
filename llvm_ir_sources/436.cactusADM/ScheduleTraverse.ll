; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ScheduleTraverse.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_sched_group = type { i8*, i32*, i32, %struct.t_sched_item* }
%struct.t_sched_item = type { i8*, i32, i8*, i32, i32, i8**, i8*, %struct.T_SCHED_MODIFIER* }
%struct.T_SCHED_MODIFIER = type { %struct.T_SCHED_MODIFIER*, i32, i8* }
%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [96 x i8] c"$Header: /cactus/Cactus/src/schedule/ScheduleTraverse.c,v 1.8 2001/05/10 12:35:19 goodale Exp $\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [31 x i8] c"Unknown schedule item type %d\0A\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_schedule_ScheduleTraverse_c() #0 {
  ret i8* getelementptr inbounds ([96 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_DoScheduleTraverse(i8* %group_name, i32 (i8*, i8*)* %item_entry, i32 (i8*, i8*)* %item_exit, i32 (i32, i8**, i8*, i8*, i32)* %while_check, i32 (i8*, i8*, i8*)* nocapture %function_process, i8* %data) #1 {
  %group = alloca %struct.t_sched_group*, align 8
  %1 = tail call %struct.cHandledData* @CCTKi_DoScheduleGetGroups() #4
  %2 = bitcast %struct.t_sched_group** %group to i8**
  %3 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %group_name, i8** %2) #4
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load %struct.t_sched_group** %group, align 8, !tbaa !2
  call fastcc void @ScheduleTraverseGroup(%struct.cHandledData* %1, %struct.t_sched_group* %6, i8* null, i32 0, i8** null, i32 (i8*, i8*)* %item_entry, i32 (i8*, i8*)* %item_exit, i32 (i32, i8**, i8*, i8*, i32)* %while_check, i32 (i8*, i8*, i8*)* %function_process, i8* %data) #5
  br label %7

; <label>:7                                       ; preds = %0, %5
  %retcode.0 = phi i32 [ 0, %5 ], [ %3, %0 ]
  ret i32 %retcode.0
}

; Function Attrs: optsize
declare %struct.cHandledData* @CCTKi_DoScheduleGetGroups() #2

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @ScheduleTraverseGroup(%struct.cHandledData* %schedule_groups, %struct.t_sched_group* nocapture readonly %group, i8* %attributes, i32 %n_whiles, i8** %whiles, i32 (i8*, i8*)* %item_entry, i32 (i8*, i8*)* %item_exit, i32 (i32, i8**, i8*, i8*, i32)* %while_check, i32 (i8*, i8*, i8*)* nocapture %function_process, i8* %data) #1 {
  %1 = icmp sgt i32 %n_whiles, 0
  %2 = icmp ne i32 (i32, i8**, i8*, i8*, i32)* %while_check, null
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %3, label %.thread

; <label>:3                                       ; preds = %0
  %4 = tail call i32 %while_check(i32 %n_whiles, i8** %whiles, i8* %attributes, i8* %data, i32 1) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %._crit_edge4.thread, label %.thread

.thread:                                          ; preds = %0, %3
  %6 = icmp eq i32 (i8*, i8*)* %item_entry, null
  br i1 %6, label %.preheader.lr.ph, label %.preheader2

.preheader2:                                      ; preds = %.thread
  %7 = tail call i32 %item_entry(i8* %attributes, i8* %data) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %._crit_edge4, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.thread, %.preheader2
  %9 = getelementptr inbounds %struct.t_sched_group* %group, i64 0, i32 2
  %10 = getelementptr inbounds %struct.t_sched_group* %group, i64 0, i32 1
  %11 = getelementptr inbounds %struct.t_sched_group* %group, i64 0, i32 3
  %12 = icmp eq i32 (i8*, i8*)* %item_entry, null
  %13 = icmp eq i32 (i8*, i8*)* %item_exit, null
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.backedge
  %14 = load i32* %9, align 4, !tbaa !6
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %ScheduleTraverseFunction.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %ScheduleTraverseFunction.exit ], [ 0, %.preheader ]
  %16 = load i32** %10, align 8, !tbaa !9
  %17 = getelementptr inbounds i32* %16, i64 %indvars.iv
  %18 = load i32* %17, align 4, !tbaa !10
  %19 = sext i32 %18 to i64
  %20 = load %struct.t_sched_item** %11, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.t_sched_item* %20, i64 %19, i32 1
  %22 = load i32* %21, align 4, !tbaa !12
  switch i32 %22, label %59 [
    i32 2, label %23
    i32 1, label %43
  ]

; <label>:23                                      ; preds = %.lr.ph
  %24 = getelementptr inbounds %struct.t_sched_item* %20, i64 %19, i32 2
  %25 = load i8** %24, align 8, !tbaa !14
  %26 = getelementptr inbounds %struct.t_sched_item* %20, i64 %19, i32 6
  %27 = load i8** %26, align 8, !tbaa !15
  %28 = getelementptr inbounds %struct.t_sched_item* %20, i64 %19, i32 4
  %29 = load i32* %28, align 4, !tbaa !16
  %30 = getelementptr inbounds %struct.t_sched_item* %20, i64 %19, i32 5
  %31 = load i8*** %30, align 8, !tbaa !17
  %32 = icmp sgt i32 %29, 0
  %or.cond.i = and i1 %2, %32
  br i1 %or.cond.i, label %33, label %.thread.i

; <label>:33                                      ; preds = %23
  %34 = tail call i32 %while_check(i32 %29, i8** %31, i8* %27, i8* %data, i32 1) #4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %ScheduleTraverseFunction.exit, label %.thread.i

.thread.i:                                        ; preds = %33, %23
  br i1 %12, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.thread.i
  %36 = tail call i32 %item_entry(i8* %27, i8* %data) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.thread.i, %.backedge.i
  %38 = tail call i32 %function_process(i8* %25, i8* %27, i8* %data) #4
  br i1 %or.cond.i, label %.backedge.i, label %._crit_edge.i

.backedge.i:                                      ; preds = %.lr.ph.i
  %39 = tail call i32 %while_check(i32 %29, i8** %31, i8* %27, i8* %data, i32 0) #4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.backedge.i, %.lr.ph.i, %.preheader.i
  br i1 %13, label %ScheduleTraverseFunction.exit, label %41

; <label>:41                                      ; preds = %._crit_edge.i
  %42 = tail call i32 %item_exit(i8* %27, i8* %data) #4
  br label %ScheduleTraverseFunction.exit

; <label>:43                                      ; preds = %.lr.ph
  %44 = getelementptr inbounds %struct.t_sched_item* %20, i64 %19, i32 3
  %45 = load i32* %44, align 4, !tbaa !18
  %46 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %schedule_groups, i32 %45) #4
  %47 = bitcast i8* %46 to %struct.t_sched_group*
  %48 = load i32** %10, align 8, !tbaa !9
  %49 = getelementptr inbounds i32* %48, i64 %indvars.iv
  %50 = load i32* %49, align 4, !tbaa !10
  %51 = sext i32 %50 to i64
  %52 = load %struct.t_sched_item** %11, align 8, !tbaa !11
  %53 = getelementptr inbounds %struct.t_sched_item* %52, i64 %51, i32 6
  %54 = load i8** %53, align 8, !tbaa !15
  %55 = getelementptr inbounds %struct.t_sched_item* %52, i64 %51, i32 4
  %56 = load i32* %55, align 4, !tbaa !16
  %57 = getelementptr inbounds %struct.t_sched_item* %52, i64 %51, i32 5
  %58 = load i8*** %57, align 8, !tbaa !17
  tail call fastcc void @ScheduleTraverseGroup(%struct.cHandledData* %schedule_groups, %struct.t_sched_group* %47, i8* %54, i32 %56, i8** %58, i32 (i8*, i8*)* %item_entry, i32 (i8*, i8*)* %item_exit, i32 (i32, i8**, i8*, i8*, i32)* %while_check, i32 (i8*, i8*, i8*)* %function_process, i8* %data) #5
  br label %ScheduleTraverseFunction.exit

; <label>:59                                      ; preds = %.lr.ph
  %60 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %61 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %60, i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0), i32 %22) #4
  br label %ScheduleTraverseFunction.exit

ScheduleTraverseFunction.exit:                    ; preds = %41, %._crit_edge.i, %33, %43, %59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %62 = load i32* %9, align 4, !tbaa !6
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %indvars.iv.next, %63
  br i1 %64, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %ScheduleTraverseFunction.exit, %.preheader
  br i1 %or.cond, label %.backedge, label %._crit_edge4

.backedge:                                        ; preds = %._crit_edge
  %65 = tail call i32 %while_check(i32 %n_whiles, i8** %whiles, i8* %attributes, i8* %data, i32 0) #4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %._crit_edge4, label %.preheader

._crit_edge4:                                     ; preds = %._crit_edge, %.backedge, %.preheader2
  %67 = icmp eq i32 (i8*, i8*)* %item_exit, null
  br i1 %67, label %._crit_edge4.thread, label %68

; <label>:68                                      ; preds = %._crit_edge4
  %69 = tail call i32 %item_exit(i8* %attributes, i8* %data) #4
  br label %._crit_edge4.thread

._crit_edge4.thread:                              ; preds = %._crit_edge4, %3, %68
  ret void
}

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 16}
!7 = !{!"", !3, i64 0, !3, i64 8, !8, i64 16, !3, i64 24}
!8 = !{!"int", !4, i64 0}
!9 = !{!7, !3, i64 8}
!10 = !{!8, !8, i64 0}
!11 = !{!7, !3, i64 24}
!12 = !{!13, !4, i64 8}
!13 = !{!"", !3, i64 0, !4, i64 8, !3, i64 16, !8, i64 24, !8, i64 28, !3, i64 32, !3, i64 40, !3, i64 48}
!14 = !{!13, !3, i64 16}
!15 = !{!13, !3, i64 40}
!16 = !{!13, !8, i64 28}
!17 = !{!13, !3, i64 32}
!18 = !{!13, !8, i64 24}
