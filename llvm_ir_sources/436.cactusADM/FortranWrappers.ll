; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/FortranWrappers.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@registry = internal global %struct.PNamedData* null, align 8
@.str = private unnamed_addr constant [91 x i8] c"$Header: /cactus/Cactus/src/main/FortranWrappers.c,v 1.5 2001/05/10 12:35:12 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_FortranWrappers_c() #0 {
  ret i8* getelementptr inbounds ([91 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_RegisterFortranWrapper(i8* %name, i32 (i8*, i8*)* %function) #1 {
  %1 = bitcast i32 (i8*, i8*)* %function to i8*
  %2 = tail call i32 @StoreNamedData(%struct.PNamedData** @registry, i8* %name, i8* %1) #3
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @StoreNamedData(%struct.PNamedData**, i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 (i8*, i8*)* @CCTKi_FortranWrapper(i8* %name) #1 {
  %1 = load %struct.PNamedData** @registry, align 8, !tbaa !2
  %2 = tail call i8* @GetNamedData(%struct.PNamedData* %1, i8* %name) #3
  %3 = bitcast i8* %2 to i32 (i8*, i8*)*
  ret i32 (i8*, i8*)* %3
}

; Function Attrs: optsize
declare i8* @GetNamedData(%struct.PNamedData*, i8*) #2

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
