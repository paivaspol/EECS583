; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/FortranWrappers.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@registry = internal global %struct.PNamedData* null, align 8
@.str = private unnamed_addr constant [91 x i8] c"$Header: /cactus/Cactus/src/main/FortranWrappers.c,v 1.5 2001/05/10 12:35:12 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_FortranWrappers_c() #0 {
entry:
  ret i8* getelementptr inbounds ([91 x i8]* @.str, i64 0, i64 0), !dbg !42
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_RegisterFortranWrapper(i8* %name, i32 (i8*, i8*)* %function) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !20), !dbg !43
  tail call void @llvm.dbg.value(metadata !{i32 (i8*, i8*)* %function}, i64 0, metadata !21), !dbg !44
  %0 = bitcast i32 (i8*, i8*)* %function to i8*, !dbg !45
  %call = tail call i32 @StoreNamedData(%struct.PNamedData** @registry, i8* %name, i8* %0) #4, !dbg !45
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !22), !dbg !45
  ret i32 %call, !dbg !46
}

; Function Attrs: optsize
declare i32 @StoreNamedData(%struct.PNamedData**, i8*, i8*) #2

; Function Attrs: nounwind optsize uwtable
define i32 (i8*, i8*)* @CCTKi_FortranWrapper(i8* %name) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !27), !dbg !47
  %0 = load %struct.PNamedData** @registry, align 8, !dbg !48, !tbaa !49
  %call = tail call i8* @GetNamedData(%struct.PNamedData* %0, i8* %name) #4, !dbg !48
  %1 = bitcast i8* %call to i32 (i8*, i8*)*, !dbg !48
  ret i32 (i8*, i8*)* %1, !dbg !48
}

; Function Attrs: optsize
declare i8* @GetNamedData(%struct.PNamedData*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !28, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/FortranWrappers.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/FortranWrappers.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !23}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_FortranWrappers_c", metadata !"CCTKi_version_main_FortranWrappers_c", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_FortranWrappers_c, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [CCTKi_version_main_FortranWrappers_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/FortranWrappers.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_RegisterFortranWrapper", metadata !"CCTKi_RegisterFortranWrapper", metadata !"", i32 79, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32 (i8*, i8*)*)* @CCTKi_RegisterFortranWrapper, null, null, metadata !19, i32 81} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 81] [CCTKi_RegisterFortranWrapper]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !8, metadata !15}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !14, metadata !18, metadata !18}
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!19 = metadata !{metadata !20, metadata !21, metadata !22}
!20 = metadata !{i32 786689, metadata !11, metadata !"name", metadata !5, i32 16777295, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 79]
!21 = metadata !{i32 786689, metadata !11, metadata !"function", metadata !5, i32 33554512, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [function] [line 80]
!22 = metadata !{i32 786688, metadata !11, metadata !"retcode", metadata !5, i32 82, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retcode] [line 82]
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_FortranWrapper", metadata !"CCTKi_FortranWrapper", metadata !"", i32 114, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* (i8*)* @CCTKi_FortranWrapper, null, null, metadata !26, i32 115} ; [ DW_TAG_subprogram ] [line 114] [def] [scope 115] [CCTKi_FortranWrapper]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{metadata !15, metadata !8}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786689, metadata !23, metadata !"name", metadata !5, i32 16777330, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 114]
!28 = metadata !{metadata !29, metadata !41}
!29 = metadata !{i32 786484, i32 0, null, metadata !"registry", metadata !"registry", metadata !"", metadata !5, i32 41, metadata !30, i32 1, i32 1, %struct.PNamedData** @registry, null} ; [ DW_TAG_variable ] [registry] [line 41] [local] [def]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pNamedData]
!31 = metadata !{i32 786454, metadata !1, null, metadata !"pNamedData", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [pNamedData] [line 26, size 0, align 0, offset 0] [from PNamedData]
!32 = metadata !{i32 786451, metadata !33, null, metadata !"PNamedData", i32 18, i64 256, i64 64, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_structure_type ] [PNamedData] [line 18, size 256, align 64, offset 0] [from ]
!33 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/StoreNamedData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!34 = metadata !{metadata !35, metadata !37, metadata !38, metadata !40}
!35 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"last", i32 20, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [last] [line 20, size 64, align 64, offset 0] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PNamedData]
!37 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"next", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 21, size 64, align 64, offset 64] [from ]
!38 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"name", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [name] [line 23, size 64, align 64, offset 128] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!40 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"data", i32 25, i64 64, i64 64, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ] [data] [line 25, size 64, align 64, offset 192] [from ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 21, metadata !8, i32 1, i32 1, null, null}
!42 = metadata !{i32 23, i32 0, metadata !4, null}
!43 = metadata !{i32 79, i32 0, metadata !11, null}
!44 = metadata !{i32 80, i32 0, metadata !11, null}
!45 = metadata !{i32 83, i32 0, metadata !11, null}
!46 = metadata !{i32 85, i32 0, metadata !11, null}
!47 = metadata !{i32 114, i32 0, metadata !23, null}
!48 = metadata !{i32 116, i32 0, metadata !23, null}
!49 = metadata !{metadata !"any pointer", metadata !50}
!50 = metadata !{metadata !"omnipotent char", metadata !51}
!51 = metadata !{metadata !"Simple C/C++ TBAA"}
