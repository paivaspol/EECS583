; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/CallStartupFunctions.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cFunctionData = type { i32, i32 (%struct.cGH*, i8*)*, i32, i32, i32*, i32, i32, i32*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str1 = private unnamed_addr constant [96 x i8] c"$Header: /cactus/Cactus/src/main/CallStartupFunctions.c,v 1.18 2001/11/05 14:58:53 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_CallStartupFunctions_c() #0 {
  ret i8* getelementptr inbounds ([96 x i8]* @.str1, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_CallStartupFunctions(%struct.tFleshConfig* nocapture readnone %ConfigData) #1 {
  %1 = tail call i32 @CCTK_ScheduleTraverse(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* null, i32 (i8*, %struct.cFunctionData*, i8*)* null) #3
  ret i32 0
}

; Function Attrs: optsize
declare i32 @CCTK_ScheduleTraverse(i8*, i8*, i32 (i8*, %struct.cFunctionData*, i8*)*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
