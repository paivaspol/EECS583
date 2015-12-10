; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.cHandledData = type { %struct.cHandleStorage*, i32, i32 }
%struct.cHandleStorage = type { i32, i8*, i8* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [19 x i8] c"Allocation error! \00", align 1
@totmem = internal unnamed_addr global i64 0, align 8
@pastmem = internal unnamed_addr global i64 0, align 8
@memfileDB = internal global %struct.cHandledData* null, align 8
@.str1 = private unnamed_addr constant [10 x i8] c"ticket_%d\00", align 1
@n_tickets = internal unnamed_addr global i32 0, align 4
@ticketDB = internal global %struct.cHandledData* null, align 8
@.str2 = private unnamed_addr constant [75 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Malloc.c\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"CCTK_MemTicketCash: Cannot find ticket %d \0A\00", align 1
@.str5 = private unnamed_addr constant [49 x i8] c"CCTK_Memstat: total: %lu  past: %lu  diff %+ld \0A\00", align 1
@.str6 = private unnamed_addr constant [82 x i8] c"$Header: /cactus/Cactus/src/util/Malloc.c,v 1.15 2001/10/30 15:29:50 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_Malloc_c() #0 {
  ret i8* getelementptr inbounds ([82 x i8]* @.str6, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias i8* @CCTKi_Malloc(i64 %size, i32 %line, i8* %file) #1 {
  %1 = add i64 %size, 40
  %2 = tail call i8* @malloc(i64 %1) #6
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i64 18, i64 1, %struct.__sFILE* %5)
  br label %7

; <label>:7                                       ; preds = %0, %4
  %8 = bitcast i8* %2 to i64*
  store i64 424242, i64* %8, align 8, !tbaa !6
  %9 = getelementptr inbounds i8* %2, i64 8
  %10 = bitcast i8* %9 to i64*
  store i64 %size, i64* %10, align 8, !tbaa !10
  %11 = getelementptr inbounds i8* %2, i64 16
  %12 = bitcast i8* %11 to i64*
  store i64 %1, i64* %12, align 8, !tbaa !11
  %13 = getelementptr inbounds i8* %2, i64 24
  %14 = bitcast i8* %13 to i32*
  store i32 %line, i32* %14, align 4, !tbaa !12
  %15 = getelementptr inbounds i8* %2, i64 32
  %16 = bitcast i8* %15 to i8**
  store i8* %file, i8** %16, align 8, !tbaa !13
  %17 = load i64* @totmem, align 8, !tbaa !14
  store i64 %17, i64* @pastmem, align 8, !tbaa !14
  %18 = add i64 %17, %size
  store i64 %18, i64* @totmem, align 8, !tbaa !14
  %19 = getelementptr inbounds i8* %2, i64 40
  ret i8* %19
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_UpdateMemByFile(i32 %size, i32 %line, i8* %file) #1 {
  %memfile = alloca i8*, align 8
  %1 = load %struct.cHandledData** @memfileDB, align 8, !tbaa !2
  %2 = call i32 @Util_GetHandle(%struct.cHandledData* %1, i8* %file, i8** %memfile) #6
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %16

; <label>:4                                       ; preds = %0
  %5 = load %struct.cHandledData** @memfileDB, align 8, !tbaa !2
  %6 = call i8* @Util_GetHandledData(%struct.cHandledData* %5, i32 %2) #6
  store i8* %6, i8** %memfile, align 8, !tbaa !2
  %7 = icmp eq i8* %6, null
  br i1 %7, label %30, label %8

; <label>:8                                       ; preds = %4
  %9 = sext i32 %size to i64
  %10 = bitcast i8* %6 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8, !tbaa !14
  %12 = insertelement <2 x i64> undef, i64 %9, i32 0
  %13 = insertelement <2 x i64> %12, i64 %9, i32 1
  %14 = add <2 x i64> %11, %13
  %15 = bitcast i8* %6 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %15, align 8, !tbaa !14
  br label %30

; <label>:16                                      ; preds = %0
  %17 = call i8* @malloc(i64 24) #6
  store i8* %17, i8** %memfile, align 8, !tbaa !2
  %18 = icmp eq i8* %17, null
  br i1 %18, label %30, label %19

; <label>:19                                      ; preds = %16
  %20 = sext i32 %size to i64
  %21 = add nsw i64 %20, 24
  %22 = getelementptr inbounds i8* %17, i64 8
  %23 = bitcast i8* %22 to i64*
  %24 = load i64* %23, align 8, !tbaa !15
  %25 = add i64 %21, %24
  store i64 %25, i64* %23, align 8, !tbaa !15
  %26 = getelementptr inbounds i8* %17, i64 16
  %27 = bitcast i8* %26 to i8**
  store i8* %file, i8** %27, align 8, !tbaa !17
  %28 = load i8** %memfile, align 8, !tbaa !2
  %29 = call i32 @Util_NewHandle(%struct.cHandledData** @memfileDB, i8* %file, i8* %28) #6
  br label %30

; <label>:30                                      ; preds = %16, %4, %19, %8
  %retval.0 = phi i32 [ 0, %8 ], [ %29, %19 ], [ -3, %4 ], [ -1, %16 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @Util_GetHandle(%struct.cHandledData*, i8*, i8**) #3

; Function Attrs: optsize
declare i8* @Util_GetHandledData(%struct.cHandledData*, i32) #3

; Function Attrs: optsize
declare i32 @Util_NewHandle(%struct.cHandledData**, i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_MemTicketRequest() #1 {
  %tmem = alloca i8*, align 8
  %tname = alloca [20 x i8], align 16
  %1 = getelementptr inbounds [20 x i8]* %tname, i64 0, i64 0
  %2 = load i32* @n_tickets, align 4, !tbaa !18
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* @n_tickets, align 4, !tbaa !18
  %4 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 20, i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0), i32 %2) #6
  %5 = load %struct.cHandledData** @ticketDB, align 8, !tbaa !2
  %6 = call i32 @Util_GetHandle(%struct.cHandledData* %5, i8* %1, i8** %tmem) #6
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %15, label %8

; <label>:8                                       ; preds = %0
  %9 = call i8* @malloc(i64 8) #6
  store i8* %9, i8** %tmem, align 8, !tbaa !2
  %10 = icmp eq i8* %9, null
  br i1 %10, label %15, label %11

; <label>:11                                      ; preds = %8
  %12 = load i64* @totmem, align 8, !tbaa !14
  %13 = bitcast i8* %9 to i64*
  store i64 %12, i64* %13, align 8, !tbaa !19
  %14 = call i32 @Util_NewHandle(%struct.cHandledData** @ticketDB, i8* %1, i8* %9) #6
  br label %15

; <label>:15                                      ; preds = %8, %0, %11
  %this_ticket.0 = phi i32 [ %14, %11 ], [ -3, %0 ], [ -2, %8 ]
  ret i32 %this_ticket.0
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #3

; Function Attrs: nounwind optsize readonly ssp uwtable
define i64 @CCTK_TotalMemory() #4 {
  %1 = load i64* @totmem, align 8, !tbaa !14
  ret i64 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i64 @CCTK_MemTicketCash(i32 %this_ticket) #1 {
  %1 = load %struct.cHandledData** @ticketDB, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %this_ticket) #6
  %3 = icmp eq i8* %2, null
  br i1 %3, label %9, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast i8* %2 to i64*
  %6 = load i64* %5, align 8, !tbaa !19
  %7 = load i64* @totmem, align 8, !tbaa !14
  %8 = sub i64 %7, %6
  br label %11

; <label>:9                                       ; preds = %0
  %10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 474, i8* getelementptr inbounds ([75 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), i32 %this_ticket) #6
  br label %11

; <label>:11                                      ; preds = %9, %4
  %tdiff.0 = phi i64 [ %8, %4 ], [ 666, %9 ]
  ret i64 %tdiff.0
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_MemTicketDelete(i32 %this_ticket) #1 {
  %1 = load %struct.cHandledData** @ticketDB, align 8, !tbaa !2
  %2 = tail call i8* @Util_GetHandledData(%struct.cHandledData* %1, i32 %this_ticket) #6
  %3 = icmp eq i8* %2, null
  br i1 %3, label %7, label %4

; <label>:4                                       ; preds = %0
  %5 = load %struct.cHandledData** @ticketDB, align 8, !tbaa !2
  %6 = tail call i32 @Util_DeleteHandle(%struct.cHandledData* %5, i32 %this_ticket) #6
  br label %7

; <label>:7                                       ; preds = %0, %4
  %ret_val.0 = phi i32 [ 0, %4 ], [ -1, %0 ]
  ret i32 %ret_val.0
}

; Function Attrs: optsize
declare i32 @Util_DeleteHandle(%struct.cHandledData*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_MemStat() #1 {
  %1 = load i64* @totmem, align 8, !tbaa !14
  %2 = load i64* @pastmem, align 8, !tbaa !14
  %3 = sub i64 %1, %2
  %4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str5, i64 0, i64 0), i64 %1, i64 %2, i64 %3) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 0}
!7 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !9, i64 24, !3, i64 32}
!8 = !{!"long", !4, i64 0}
!9 = !{!"int", !4, i64 0}
!10 = !{!7, !8, i64 8}
!11 = !{!7, !8, i64 16}
!12 = !{!7, !9, i64 24}
!13 = !{!7, !3, i64 32}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !8, i64 8}
!16 = !{!"", !8, i64 0, !8, i64 8, !3, i64 16}
!17 = !{!16, !3, i64 16}
!18 = !{!9, !9, i64 0}
!19 = !{!20, !8, i64 0}
!20 = !{!"", !8, i64 0}
