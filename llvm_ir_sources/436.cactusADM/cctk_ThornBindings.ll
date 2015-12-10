; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Time/cctk_ThornBindings.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.iAttributeList = type { i8*, %union.iAttributeData }
%union.iAttributeData = type { i8** }

@.str = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@CCTKi_BindingsThorn_Time.name = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str1 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@CCTKi_BindingsThorn_Time.implementation = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i8* null], align 16
@.str2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str3 = private unnamed_addr constant [15 x i8] c"implementation\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"ancestors\00", align 1
@.str5 = private unnamed_addr constant [8 x i8] c"friends\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsThorn_Time() #0 {
  %name = alloca [2 x i8*], align 16
  %implementation = alloca [2 x i8*], align 16
  %ancestors = alloca [1 x i8*], align 8
  %friends = alloca [1 x i8*], align 8
  %attributes = alloca [5 x %struct.iAttributeList], align 16
  %1 = bitcast [2 x i8*]* %name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([2 x i8*]* @CCTKi_BindingsThorn_Time.name to i8*), i64 16, i32 16, i1 false)
  %2 = bitcast [2 x i8*]* %implementation to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([2 x i8*]* @CCTKi_BindingsThorn_Time.implementation to i8*), i64 16, i32 16, i1 false)
  %3 = bitcast [1 x i8*]* %ancestors to i64*
  store i64 0, i64* %3, align 8
  %4 = bitcast [1 x i8*]* %friends to i64*
  store i64 0, i64* %4, align 8
  %5 = bitcast [5 x %struct.iAttributeList]* %attributes to i8*
  call void @llvm.lifetime.start(i64 80, i8* %5) #1
  %6 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 0, i32 0
  store i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i8** %6, align 16, !tbaa !2
  %7 = getelementptr inbounds [2 x i8*]* %name, i64 0, i64 0
  %8 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 0, i32 1, i32 0
  store i8** %7, i8*** %8, align 8, !tbaa !7
  %9 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 1, i32 0
  store i8* getelementptr inbounds ([15 x i8]* @.str3, i64 0, i64 0), i8** %9, align 16, !tbaa !2
  %10 = getelementptr inbounds [2 x i8*]* %implementation, i64 0, i64 0
  %11 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 1, i32 1, i32 0
  store i8** %10, i8*** %11, align 8, !tbaa !7
  %12 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 2, i32 0
  store i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i8** %12, align 16, !tbaa !2
  %13 = getelementptr inbounds [1 x i8*]* %ancestors, i64 0, i64 0
  %14 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 2, i32 1, i32 0
  store i8** %13, i8*** %14, align 8, !tbaa !7
  %15 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 3, i32 0
  store i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i8** %15, align 16, !tbaa !2
  %16 = getelementptr inbounds [1 x i8*]* %friends, i64 0, i64 0
  %17 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 3, i32 1, i32 0
  store i8** %16, i8*** %17, align 8, !tbaa !7
  %18 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 4, i32 0
  %19 = getelementptr inbounds [5 x %struct.iAttributeList]* %attributes, i64 0, i64 0
  %20 = bitcast i8** %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 16, i32 16, i1 false)
  %21 = call i32 @CCTKi_RegisterThorn(%struct.iAttributeList* %19) #3
  call void @llvm.lifetime.end(i64 80, i8* %5) #1
  ret i32 %21
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i32 @CCTKi_RegisterThorn(%struct.iAttributeList*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"iAttributeList", !4, i64 0, !5, i64 8}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!4, !4, i64 0}
