; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ffscanf.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str3 = private unnamed_addr constant [28 x i8] c"unknown ffscanf format '%c'\00", align 1

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
define void @ffscanf(%struct.__sFILE* nocapture %in, i8* %fmt, ...) #3 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca [4096 x i8], align 16
  %dval = alloca double, align 8
  %1 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #4
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %2)
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2
  br label %6

; <label>:6                                       ; preds = %99, %0
  %storemerge = phi i8* [ %fmt, %0 ], [ %101, %99 ]
  %7 = load i8* %storemerge, align 1, !tbaa !13
  switch i8 %7, label %96 [
    i8 0, label %102
    i8 37, label %8
  ]

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds i8* %storemerge, i64 1
  %10 = load i8* %9, align 1, !tbaa !13
  %11 = sext i8 %10 to i32
  %isdigittmp1.i = add nsw i32 %11, -48
  %isdigit2.i = icmp ult i32 %isdigittmp1.i, 10
  br i1 %isdigit2.i, label %.lr.ph.i, label %._crit_edge

.lr.ph.i:                                         ; preds = %8, %.lr.ph.i
  %12 = phi i8 [ %20, %.lr.ph.i ], [ %10, %8 ]
  %13 = phi i8* [ %14, %.lr.ph.i ], [ %storemerge, %8 ]
  %14 = phi i8* [ %16, %.lr.ph.i ], [ %9, %8 ]
  %fld.03.i = phi i32 [ %19, %.lr.ph.i ], [ 0, %8 ]
  %15 = mul nsw i32 %fld.03.i, 10
  %16 = getelementptr inbounds i8* %13, i64 2
  %17 = sext i8 %12 to i32
  %18 = add i32 %15, -48
  %19 = add i32 %18, %17
  %20 = load i8* %16, align 1, !tbaa !13
  %21 = sext i8 %20 to i32
  %isdigittmp.i = add nsw i32 %21, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %.lr.ph.i, label %getfld.exit

getfld.exit:                                      ; preds = %.lr.ph.i
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %getfld.exit, %.lr.ph
  %i.05 = phi i32 [ %i.0., %.lr.ph ], [ 0, %getfld.exit ]
  %23 = call i32 @fgetc(%struct.__sFILE* %in) #6
  %24 = trunc i32 %23 to i8
  %25 = sext i32 %i.05 to i64
  %26 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %25
  store i8 %24, i8* %26, align 1, !tbaa !13
  %sext.mask = and i32 %23, 255
  %not. = icmp ne i32 %sext.mask, 10
  %27 = zext i1 %not. to i32
  %i.0. = add nsw i32 %27, %i.05
  %28 = icmp slt i32 %i.0., %19
  br i1 %28, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %8, %getfld.exit
  %fld.0.lcssa.i7 = phi i32 [ %19, %getfld.exit ], [ 0, %8 ], [ %19, %.lr.ph ]
  %29 = phi i8* [ %16, %getfld.exit ], [ %9, %8 ], [ %16, %.lr.ph ]
  %30 = sext i32 %fld.0.lcssa.i7 to i64
  %31 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %30
  store i8 0, i8* %31, align 1, !tbaa !13
  %32 = load i8* %29, align 1, !tbaa !13
  %33 = sext i8 %32 to i32
  switch i32 %33, label %99 [
    i32 100, label %34
    i32 102, label %49
    i32 70, label %64
    i32 114, label %79
  ]

; <label>:34                                      ; preds = %._crit_edge
  %35 = load i32* %3, align 16
  %36 = icmp ult i32 %35, 41
  br i1 %36, label %37, label %42

; <label>:37                                      ; preds = %34
  %38 = load i8** %4, align 16
  %39 = sext i32 %35 to i64
  %40 = getelementptr i8* %38, i64 %39
  %41 = add i32 %35, 8
  store i32 %41, i32* %3, align 16
  br label %45

; <label>:42                                      ; preds = %34
  %43 = load i8** %5, align 8
  %44 = getelementptr i8* %43, i64 8
  store i8* %44, i8** %5, align 8
  br label %45

; <label>:45                                      ; preds = %42, %37
  %.in3 = phi i8* [ %40, %37 ], [ %43, %42 ]
  %46 = bitcast i8* %.in3 to i32**
  %47 = load i32** %46, align 8
  %48 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32* %47) #6
  br label %99

; <label>:49                                      ; preds = %._crit_edge
  %50 = load i32* %3, align 16
  %51 = icmp ult i32 %50, 41
  br i1 %51, label %52, label %57

; <label>:52                                      ; preds = %49
  %53 = load i8** %4, align 16
  %54 = sext i32 %50 to i64
  %55 = getelementptr i8* %53, i64 %54
  %56 = add i32 %50, 8
  store i32 %56, i32* %3, align 16
  br label %60

; <label>:57                                      ; preds = %49
  %58 = load i8** %5, align 8
  %59 = getelementptr i8* %58, i64 8
  store i8* %59, i8** %5, align 8
  br label %60

; <label>:60                                      ; preds = %57, %52
  %.in2 = phi i8* [ %55, %52 ], [ %58, %57 ]
  %61 = bitcast i8* %.in2 to float**
  %62 = load float** %61, align 8
  %63 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), float* %62) #6
  br label %99

; <label>:64                                      ; preds = %._crit_edge
  %65 = load i32* %3, align 16
  %66 = icmp ult i32 %65, 41
  br i1 %66, label %67, label %72

; <label>:67                                      ; preds = %64
  %68 = load i8** %4, align 16
  %69 = sext i32 %65 to i64
  %70 = getelementptr i8* %68, i64 %69
  %71 = add i32 %65, 8
  store i32 %71, i32* %3, align 16
  br label %75

; <label>:72                                      ; preds = %64
  %73 = load i8** %5, align 8
  %74 = getelementptr i8* %73, i64 8
  store i8* %74, i8** %5, align 8
  br label %75

; <label>:75                                      ; preds = %72, %67
  %.in1 = phi i8* [ %70, %67 ], [ %73, %72 ]
  %76 = bitcast i8* %.in1 to double**
  %77 = load double** %76, align 8
  %78 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double* %77) #6
  br label %99

; <label>:79                                      ; preds = %._crit_edge
  %80 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double* %dval) #6
  %81 = load double* %dval, align 8, !tbaa !14
  %82 = fptrunc double %81 to float
  %83 = load i32* %3, align 16
  %84 = icmp ult i32 %83, 41
  br i1 %84, label %85, label %90

; <label>:85                                      ; preds = %79
  %86 = load i8** %4, align 16
  %87 = sext i32 %83 to i64
  %88 = getelementptr i8* %86, i64 %87
  %89 = add i32 %83, 8
  store i32 %89, i32* %3, align 16
  br label %93

; <label>:90                                      ; preds = %79
  %91 = load i8** %5, align 8
  %92 = getelementptr i8* %91, i64 8
  store i8* %92, i8** %5, align 8
  br label %93

; <label>:93                                      ; preds = %90, %85
  %.in = phi i8* [ %88, %85 ], [ %91, %90 ]
  %94 = bitcast i8* %.in to float**
  %95 = load float** %94, align 8
  store float %82, float* %95, align 4, !tbaa !16
  br label %99

; <label>:96                                      ; preds = %6
  %97 = sext i8 %7 to i32
  %98 = add nsw i32 %97, 1
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str3, i64 0, i64 0), i32 %98) #6
  br label %99

; <label>:99                                      ; preds = %96, %._crit_edge, %93, %75, %60, %45
  %100 = phi i8* [ %storemerge, %96 ], [ %29, %._crit_edge ], [ %29, %93 ], [ %29, %75 ], [ %29, %60 ], [ %29, %45 ]
  %101 = getelementptr inbounds i8* %100, i64 1
  br label %6

; <label>:102                                     ; preds = %6
  call void @llvm.va_end(i8* %2)
  call void @llvm.lifetime.end(i64 4096, i8* %1) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
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
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !5, i64 0}
