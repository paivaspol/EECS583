; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ConfigData.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [56 x i8] c"Tried to store two GHs at the same convergence level !\0A\00", align 1
@.str1 = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/main/ConfigData.c,v 1.9 2001/11/05 14:58:53 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_ConfigData_c() #0 {
  ret i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_AddGH(%struct.tFleshConfig* nocapture %config, i32 %convergence_level, %struct.cGH* %GH) #1 {
  %1 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = icmp eq i32 %2, 0
  %4 = add i32 %2, -1
  %5 = icmp ult i32 %4, %convergence_level
  %or.cond = or i1 %3, %5
  %6 = getelementptr inbounds %struct.tFleshConfig* %config, i64 0, i32 1
  br i1 %or.cond, label %7, label %._crit_edge6

; <label>:7                                       ; preds = %0
  %8 = bitcast %struct.cGH*** %6 to i8**
  %9 = load i8** %8, align 8, !tbaa !8
  %10 = add i32 %convergence_level, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = tail call i8* @realloc(i8* %9, i64 %12) #4
  %14 = icmp eq i8* %13, null
  br i1 %14, label %.thread3, label %15

; <label>:15                                      ; preds = %7
  store i8* %13, i8** %8, align 8, !tbaa !8
  %16 = load i32* %1, align 4, !tbaa !2
  %17 = icmp ult i32 %16, %10
  br i1 %17, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %15
  %18 = bitcast i8* %13 to %struct.cGH**
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds %struct.cGH** %18, i64 %19
  store %struct.cGH* null, %struct.cGH** %20, align 8, !tbaa !9
  %exitcond8 = icmp eq i32 %16, %convergence_level
  br i1 %exitcond8, label %._crit_edge, label %._crit_edge5

._crit_edge5:                                     ; preds = %.lr.ph, %._crit_edge5
  %i.0410 = phi i32 [ %21, %._crit_edge5 ], [ %16, %.lr.ph ]
  %indvars.iv9 = phi i64 [ %indvars.iv.next, %._crit_edge5 ], [ %19, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv9, 1
  %21 = add nuw i32 %i.0410, 1
  %.pre = load %struct.cGH*** %6, align 8, !tbaa !8
  %22 = getelementptr inbounds %struct.cGH** %.pre, i64 %indvars.iv.next
  store %struct.cGH* null, %struct.cGH** %22, align 8, !tbaa !9
  %exitcond = icmp eq i32 %21, %convergence_level
  br i1 %exitcond, label %._crit_edge, label %._crit_edge5

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge5, %15
  store i32 %10, i32* %1, align 4, !tbaa !2
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %0, %._crit_edge
  %23 = zext i32 %convergence_level to i64
  %24 = load %struct.cGH*** %6, align 8, !tbaa !8
  %25 = getelementptr inbounds %struct.cGH** %24, i64 %23
  %26 = load %struct.cGH** %25, align 8, !tbaa !9
  %27 = icmp eq %struct.cGH* %26, null
  br i1 %27, label %28, label %.thread3

; <label>:28                                      ; preds = %._crit_edge6
  store %struct.cGH* %GH, %struct.cGH** %25, align 8, !tbaa !9
  br label %31

.thread3:                                         ; preds = %7, %._crit_edge6
  %29 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !9
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), i64 55, i64 1, %struct.__sFILE* %29)
  br label %31

; <label>:31                                      ; preds = %.thread3, %28
  %retval.1 = phi i32 [ 2, %.thread3 ], [ 0, %28 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 16}
!3 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !4, i64 8}
!9 = !{!4, !4, i64 0}
