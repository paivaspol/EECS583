; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_DDsepInfo.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DDsepInfo = type { i32, i32, i32, double, double, i32, i32, i32, i32, double, double, double, double, double, double, double, i32, %struct._IO_FILE* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [82 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_DDsepInfo.c\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in DDsepInfo_setDefaultFields(%p)\0A bad input\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str3 = private unnamed_addr constant [53 x i8] c"\0A fatal error in DDsepInfo_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [48 x i8] c"\0A fatal error in DDsepInfo_free(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [60 x i8] c"\0A fatal error in DDsepInfo_writeCpuTimes(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [295 x i8] c"\0A\0A CPU breakdown for graph partition\0A               raw CPU   per cent\0A misc       : %9.2f %6.1f%%\0A Split      : %9.2f %6.1f%%\0A find DD    : %9.2f %6.1f%%\0A DomSeg Map : %9.2f %6.1f%%\0A DomSeg BPG : %9.2f %6.1f%%\0A BKL        : %9.2f %6.1f%%\0A Smooth     : %9.2f %6.1f%%\0A Total      : %9.2f %6.1f%%\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._DDsepInfo* @DDsepInfo_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 120) #4
  %0 = bitcast i8* %call to %struct._DDsepInfo*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 120, i32 21, i8* getelementptr inbounds ([82 x i8]* @.str1, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @DDsepInfo_setDefaultFields(%struct._DDsepInfo* %0) #6
  ret %struct._DDsepInfo* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @DDsepInfo_setDefaultFields(%struct._DDsepInfo* %info) #0 {
entry:
  %cmp = icmp eq %struct._DDsepInfo* %info, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._DDsepInfo* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %seed = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 0
  store i32 1, i32* %seed, align 4, !tbaa !3
  %minweight = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 1
  store i32 40, i32* %minweight, align 4, !tbaa !3
  %maxweight = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 2
  store i32 80, i32* %maxweight, align 4, !tbaa !3
  %freeze = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 3
  store double 4.000000e+00, double* %freeze, align 8, !tbaa !4
  %alpha = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 4
  store double 1.000000e+00, double* %alpha, align 8, !tbaa !4
  %maxcompweight = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 5
  store i32 500, i32* %maxcompweight, align 4, !tbaa !3
  %ntreeobj = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 6
  store i32 0, i32* %ntreeobj, align 4, !tbaa !3
  %DDoption = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 7
  store i32 1, i32* %DDoption, align 4, !tbaa !3
  %nlayer = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 8
  store i32 3, i32* %nlayer, align 4, !tbaa !3
  %cpuDD = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 9
  %1 = bitcast double* %cpuDD to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 60, i32 8, i1 false)
  %2 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %msgFile = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 17
  store %struct._IO_FILE* %2, %struct._IO_FILE** %msgFile, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DDsepInfo_clearData(%struct._DDsepInfo* %info) #0 {
entry:
  %cmp = icmp eq %struct._DDsepInfo* %info, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), %struct._DDsepInfo* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @DDsepInfo_setDefaultFields(%struct._DDsepInfo* %info) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DDsepInfo_free(%struct._DDsepInfo* %info) #0 {
entry:
  %cmp = icmp eq %struct._DDsepInfo* %info, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), %struct._DDsepInfo* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @DDsepInfo_clearData(%struct._DDsepInfo* %info) #6
  %1 = bitcast %struct._DDsepInfo* %info to i8*
  tail call void @free(i8* %1) #4
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @DDsepInfo_writeCpuTimes(%struct._DDsepInfo* %info, %struct._IO_FILE* %msgFile) #0 {
entry:
  %cmp = icmp eq %struct._DDsepInfo* %info, null
  %cmp1 = icmp eq %struct._IO_FILE* %msgFile, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str5, i64 0, i64 0), %struct._DDsepInfo* %info, %struct._IO_FILE* %msgFile) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cpuTotal = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 15
  %1 = load double* %cpuTotal, align 8, !tbaa !4
  %cpuDD = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 9
  %2 = load double* %cpuDD, align 8, !tbaa !4
  %sub = fsub double %1, %2
  %cpuSplit = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 14
  %3 = load double* %cpuSplit, align 8, !tbaa !4
  %sub2 = fsub double %sub, %3
  %cpuMap = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 10
  %4 = load double* %cpuMap, align 8, !tbaa !4
  %sub3 = fsub double %sub2, %4
  %cpuBPG = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 11
  %5 = load double* %cpuBPG, align 8, !tbaa !4
  %sub4 = fsub double %sub3, %5
  %cpuBKL = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 12
  %6 = load double* %cpuBKL, align 8, !tbaa !4
  %sub5 = fsub double %sub4, %6
  %cpuSmooth = getelementptr inbounds %struct._DDsepInfo* %info, i64 0, i32 13
  %7 = load double* %cpuSmooth, align 8, !tbaa !4
  %sub6 = fsub double %sub5, %7
  %cmp8 = fcmp ogt double %1, 0.000000e+00
  br i1 %cmp8, label %if.then9, label %if.end43

if.then9:                                         ; preds = %if.end
  %mul = fmul double %sub6, 1.000000e+02
  %div = fdiv double %mul, %1
  %mul13 = fmul double %3, 1.000000e+02
  %div15 = fdiv double %mul13, %1
  %mul18 = fmul double %2, 1.000000e+02
  %div20 = fdiv double %mul18, %1
  %mul23 = fmul double %4, 1.000000e+02
  %div25 = fdiv double %mul23, %1
  %mul28 = fmul double %5, 1.000000e+02
  %div30 = fdiv double %mul28, %1
  %mul33 = fmul double %6, 1.000000e+02
  %div35 = fdiv double %mul33, %1
  %mul38 = fmul double %7, 1.000000e+02
  %div40 = fdiv double %mul38, %1
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([295 x i8]* @.str6, i64 0, i64 0), double %sub6, double %div, double %3, double %div15, double %2, double %div20, double %4, double %div25, double %5, double %div30, double %6, double %div35, double %7, double %div40, double %1, double 1.000000e+02) #4
  br label %if.end43

if.end43:                                         ; preds = %if.then9, %if.end
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
