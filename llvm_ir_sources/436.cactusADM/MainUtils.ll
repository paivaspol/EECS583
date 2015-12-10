; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/MainUtils.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [15 x i8] c"cctk_run_title\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str3 = private unnamed_addr constant [18 x i8] c"Cactus Simulation\00", align 1
@.str4 = private unnamed_addr constant [85 x i8] c"$Header: /cactus/Cactus/src/main/MainUtils.c,v 1.6 2001/05/10 12:35:13 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_MainUtils_c() #0 {
  ret i8* getelementptr inbounds ([85 x i8]* @.str4, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTK_RunTitle(i32 %len, i8* %title) #1 {
  %param_type = alloca i32, align 4
  %1 = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32* %param_type) #6
  %2 = bitcast i8* %1 to i8**
  %3 = load i8** %2, align 8, !tbaa !2
  %4 = icmp eq i8* %3, null
  br i1 %4, label %20, label %5

; <label>:5                                       ; preds = %0
  %6 = call i32 @CCTK_Equals(i8* %3, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) #6
  %7 = icmp eq i32 %6, 0
  %8 = add nsw i32 %len, -1
  %9 = sext i32 %8 to i64
  %10 = call i64 @llvm.objectsize.i64.p0i8(i8* %title, i1 false)
  br i1 %7, label %13, label %11

; <label>:11                                      ; preds = %5
  %12 = call i8* @__strncpy_chk(i8* %title, i8* getelementptr inbounds ([18 x i8]* @.str3, i64 0, i64 0), i64 %9, i64 %10) #6
  br label %15

; <label>:13                                      ; preds = %5
  %14 = call i8* @__strncpy_chk(i8* %title, i8* %3, i64 %9, i64 %10) #6
  br label %15

; <label>:15                                      ; preds = %13, %11
  %16 = call i64 @strlen(i8* %title) #6
  %17 = trunc i64 %16 to i32
  %18 = icmp sgt i32 %17, %len
  %19 = select i1 %18, i32 0, i32 %17
  br label %20

; <label>:20                                      ; preds = %0, %15
  %retval.0 = phi i32 [ %19, %15 ], [ -1, %0 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #2

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
