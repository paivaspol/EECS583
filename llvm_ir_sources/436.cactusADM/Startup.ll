; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGHReduce/Startup.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"norm1\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"norm2\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"norm_inf\00", align 1
@.str7 = private unnamed_addr constant [92 x i8] c"$Header: /cactus/CactusPUGH/PUGHReduce/src/Startup.c,v 1.5 2001/08/27 16:30:51 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHReduce_Startup_c() #0 {
  ret i8* getelementptr inbounds ([92 x i8]* @.str7, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGHReduce_Startup() #1 {
  %1 = tail call i32 @CCTKi_RegisterReductionOperator(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionMinValGVs, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #3
  %2 = tail call i32 @CCTKi_RegisterReductionOperator(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionMaxValGVs, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0)) #3
  %3 = tail call i32 @CCTKi_RegisterReductionOperator(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionSumGVs, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #3
  %4 = tail call i32 @CCTKi_RegisterReductionOperator(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionNorm1GVs, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #3
  %5 = tail call i32 @CCTKi_RegisterReductionOperator(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionNorm2GVs, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #3
  %6 = tail call i32 @CCTKi_RegisterReductionOperator(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)* @PUGH_ReductionNormInfGVs, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #3
  %7 = tail call i32 @CCTK_RegisterReductionArrayOperator(i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionMinValArrays, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #3
  %8 = tail call i32 @CCTK_RegisterReductionArrayOperator(i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionMaxValArrays, i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0)) #3
  %9 = tail call i32 @CCTK_RegisterReductionArrayOperator(i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionSumArrays, i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0)) #3
  %10 = tail call i32 @CCTK_RegisterReductionArrayOperator(i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionNorm1Arrays, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #3
  %11 = tail call i32 @CCTK_RegisterReductionArrayOperator(i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionNorm2Arrays, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #3
  %12 = tail call i32 @CCTK_RegisterReductionArrayOperator(i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)* @PUGH_ReductionNormInfArrays, i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #3
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTKi_RegisterReductionOperator(i8*, i32 (%struct.cGH*, i32, i32, i32, i8*, i32, i32*)*, i8*) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionMinValGVs(%struct.cGH*, i32, i32, i32, i8*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionMaxValGVs(%struct.cGH*, i32, i32, i32, i8*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionSumGVs(%struct.cGH*, i32, i32, i32, i8*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionNorm1GVs(%struct.cGH*, i32, i32, i32, i8*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionNorm2GVs(%struct.cGH*, i32, i32, i32, i8*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionNormInfGVs(%struct.cGH*, i32, i32, i32, i8*, i32, i32*) #2

; Function Attrs: optsize
declare i32 @CCTK_RegisterReductionArrayOperator(i32 (%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32)*, i8*) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionMinValArrays(%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionMaxValArrays(%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionSumArrays(%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionNorm1Arrays(%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionNorm2Arrays(%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare i32 @PUGH_ReductionNormInfArrays(%struct.cGH*, i32, i32, i32*, i32, i8**, i32, i32, i8*, i32) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
