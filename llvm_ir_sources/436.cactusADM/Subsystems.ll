; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Subsystems.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/main/Subsystems.c,v 1.12 2001/11/05 14:58:54 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_Subsystems_c() #0 {
entry:
  ret i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0), !dbg !17
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_InitialiseSubsystemDefaults() #1 {
entry:
  %call = tail call i32 @CCTKi_SetupMainFunctions() #3, !dbg !18
  %call1 = tail call i32 @CCTKi_SetupCommFunctions() #3, !dbg !19
  %call2 = tail call i32 @CCTKi_SetupIOFunctions() #3, !dbg !20
  %call3 = tail call i32 @CCTKBindings_SetupThornFunctions() #3, !dbg !21
  %call4 = tail call i32 @CCTKi_BindingsImplementationsInitialise() #3, !dbg !22
  %call5 = tail call i32 @CCTKi_BindingsParametersInitialise() #3, !dbg !23
  ret i32 0, !dbg !24
}

; Function Attrs: optsize
declare i32 @CCTKi_SetupMainFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKi_SetupCommFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKi_SetupIOFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKBindings_SetupThornFunctions() #2

; Function Attrs: optsize
declare i32 @CCTKi_BindingsImplementationsInitialise() #2

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParametersInitialise() #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !15, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Subsystems.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Subsystems.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_Subsystems_c", metadata !"CCTKi_version_main_Subsystems_c", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_Subsystems_c, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 20] [def] [CCTKi_version_main_Subsystems_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Subsystems.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_InitialiseSubsystemDefaults", metadata !"CCTKi_InitialiseSubsystemDefaults", metadata !"", i32 47, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_InitialiseSubsystemDefaults, null, null, metadata !2, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [CCTKi_InitialiseSubsystemDefaults]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16}
!16 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 18, metadata !8, i32 1, i32 1, null, null}
!17 = metadata !{i32 20, i32 0, metadata !4, null}
!18 = metadata !{i32 49, i32 0, metadata !11, null}
!19 = metadata !{i32 50, i32 0, metadata !11, null}
!20 = metadata !{i32 51, i32 0, metadata !11, null}
!21 = metadata !{i32 52, i32 0, metadata !11, null}
!22 = metadata !{i32 53, i32 0, metadata !11, null}
!23 = metadata !{i32 54, i32 0, metadata !11, null}
!24 = metadata !{i32 56, i32 0, metadata !11, null}
