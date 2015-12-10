; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/getopt1.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.option = type { i8*, i32, i32*, i32 }

; Function Attrs: nounwind optsize ssp uwtable
define i32 @getopt_long(i32 %argc, i8** %argv, i8* %options, %struct.option* %long_options, i32* %opt_index) #0 {
  %1 = tail call i32 @_getopt_internal(i32 %argc, i8** %argv, i8* %options, %struct.option* %long_options, i32* %opt_index, i32 0) #2
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @_getopt_internal(i32, i8**, i8*, %struct.option*, i32*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @getopt_long_only(i32 %argc, i8** %argv, i8* %options, %struct.option* %long_options, i32* %opt_index) #0 {
  %1 = tail call i32 @_getopt_internal(i32 %argc, i8** %argv, i8* %options, %struct.option* %long_options, i32* %opt_index, i32 1) #2
  ret i32 %1
}

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
