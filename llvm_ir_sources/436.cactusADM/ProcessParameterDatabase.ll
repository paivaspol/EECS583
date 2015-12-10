; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@__stdinp = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [93 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessParameterDatabase.c\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str4 = private unnamed_addr constant [63 x i8] c"CCTKi_SetParameterSetMask: %d parsing errors in parameter file\00", align 1
@.str5 = private unnamed_addr constant [63 x i8] c"CCTKi_SetParameterSetMask: %d level 1 errors in parameter file\00", align 1
@.str6 = private unnamed_addr constant [63 x i8] c"CCTKi_SetParameterSetMask: %d level 0 errors in parameter file\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str7 = private unnamed_addr constant [36 x i8] c"Unable to open parameter file '%s'\0A\00", align 1
@.str8 = private unnamed_addr constant [100 x i8] c"$Header: /cactus/Cactus/src/main/ProcessParameterDatabase.c,v 1.20 2002/01/02 12:24:41 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_ProcessParameterDatabase_c() #0 {
  ret i8* getelementptr inbounds ([100 x i8]* @.str8, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_ProcessParameterDatabase(%struct.tFleshConfig* %ConfigData) #1 {
  tail call void @CCTKi_SetParameterSetMask(i32 0) #5
  %1 = getelementptr inbounds %struct.tFleshConfig* %ConfigData, i64 0, i32 0
  %2 = load i8** %1, align 8, !tbaa !2
  %3 = tail call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5                                       ; preds = %0
  %6 = load %struct.__sFILE** @__stdinp, align 8, !tbaa !8
  br label %9

; <label>:7                                       ; preds = %0
  %8 = tail call %struct.__sFILE* @"\01_fopen"(i8* %2, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #5
  br label %9

; <label>:9                                       ; preds = %7, %5
  %parameter_file.0 = phi %struct.__sFILE* [ %8, %7 ], [ %6, %5 ]
  %10 = icmp ne %struct.__sFILE* %parameter_file.0, null
  br i1 %10, label %11, label %34

; <label>:11                                      ; preds = %9
  %12 = tail call i32 @ParseFile(%struct.__sFILE* %parameter_file.0, i32 (i8*, i8*, i32)* @CCTKi_SetParameter, %struct.tFleshConfig* %ConfigData) #5
  %13 = load i8** %1, align 8, !tbaa !2
  %14 = tail call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

; <label>:16                                      ; preds = %11
  %17 = tail call i32 @fclose(%struct.__sFILE* %parameter_file.0) #5
  br label %18

; <label>:18                                      ; preds = %11, %16
  %19 = icmp eq i32 %12, 0
  br i1 %19, label %22, label %20

; <label>:20                                      ; preds = %18
  %21 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 91, i8* getelementptr inbounds ([93 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 %12) #5
  br label %22

; <label>:22                                      ; preds = %18, %20
  %23 = tail call i32 @CCTKi_NumParameterFileErrors(i32 1) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

; <label>:25                                      ; preds = %22
  %26 = tail call i32 @CCTKi_NumParameterFileErrors(i32 1) #5
  %27 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 98, i8* getelementptr inbounds ([93 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str5, i64 0, i64 0), i32 %26) #5
  br label %28

; <label>:28                                      ; preds = %22, %25
  %29 = tail call i32 @CCTKi_NumParameterFileErrors(i32 0) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

; <label>:31                                      ; preds = %28
  %32 = tail call i32 @CCTKi_NumParameterFileErrors(i32 0) #5
  %33 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 105, i8* getelementptr inbounds ([93 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str6, i64 0, i64 0), i32 %32) #5
  br label %38

; <label>:34                                      ; preds = %9
  %35 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !8
  %36 = load i8** %1, align 8, !tbaa !2
  %37 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([36 x i8]* @.str7, i64 0, i64 0), i8* %36) #5
  br label %38

; <label>:38                                      ; preds = %28, %31, %34
  %not. = xor i1 %10, true
  %39 = sext i1 %not. to i32
  ret i32 %39
}

; Function Attrs: optsize
declare void @CCTKi_SetParameterSetMask(i32) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #2

; Function Attrs: optsize
declare i32 @ParseFile(%struct.__sFILE*, i32 (i8*, i8*, i32)*, %struct.tFleshConfig*) #2

; Function Attrs: optsize
declare i32 @CCTKi_SetParameter(i8*, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #4

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: optsize
declare i32 @CCTKi_NumParameterFileErrors(i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!4, !4, i64 0}
