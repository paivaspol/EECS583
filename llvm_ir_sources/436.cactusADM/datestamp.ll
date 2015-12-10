; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/datestamp.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@.str = private unnamed_addr constant [24 x i8] c"  Compiled on %s at %s\0A\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"Dec 10 2015\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"15:33:01\00", align 1
@CCTK_CompileDate.date = internal global [13 x i8] zeroinitializer, align 1
@.str3 = private unnamed_addr constant [8 x i8] c"4.0.b11\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"b11\00", align 1
@.str7 = private unnamed_addr constant [80 x i8] c"$Header: /cactus/Cactus/src/datestamp.c,v 1.13 2001/12/06 15:07:33 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_src_datestamp_c() #0 {
  ret i8* getelementptr inbounds ([80 x i8]* @.str7, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTKi_DateStamp() #1 {
  %1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0)) #4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTK_CompileTime() #0 {
  ret i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @CCTK_CompileDate() #1 {
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([13 x i8]* @CCTK_CompileDate.date, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i64 12, i32 1, i1 false)
  ret i8* getelementptr inbounds ([13 x i8]* @CCTK_CompileDate.date, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTK_FullVersion() #0 {
  ret i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTK_MajorVersion() #0 {
  ret i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTK_MinorVersion() #0 {
  ret i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTK_MicroVersion() #0 {
  ret i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0)
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
