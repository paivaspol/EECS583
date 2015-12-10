; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/PUGHReduce.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CactusBindingsVariables_PUGHReduce_Initialise() #0 {
entry:
  %call = tail call i32 @CCTKi_RegisterFortranWrapper(i8* getelementptr inbounds ([11 x i8]* @.str, i64 0, i64 0), i32 (i8*, i8*)* @CCTKi_BindingsFortranWrapperPUGHReduce) #2, !dbg !9
  ret i32 0, !dbg !10
}

; Function Attrs: optsize
declare i32 @CCTKi_RegisterFortranWrapper(i8*, i32 (i8*, i8*)*) #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsFortranWrapperPUGHReduce(i8*, i8*) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/PUGHReduce.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/PUGHReduce.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusBindingsVariables_PUGHReduce_Initialise", metadata !"CactusBindingsVariables_PUGHReduce_Initialise", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CactusBindingsVariables_PUGHReduce_Initialise, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 11] [def] [scope 12] [CactusBindingsVariables_PUGHReduce_Initialise]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/PUGHReduce.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 13, i32 0, metadata !4, null}
!10 = metadata !{i32 15, i32 0, metadata !4, null}
