; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Time.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str2 = private unnamed_addr constant [79 x i8] c"$Header: /cactus/Cactus/src/util/Time.c,v 1.4 2001/11/05 14:58:55 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_util_Time_c() #0 {
entry:
  ret i8* getelementptr inbounds ([79 x i8]* @.str2, i64 0, i64 0), !dbg !34
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @Util_CurrentTime(i32 %len, i8* nocapture %now) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !17), !dbg !35
  tail call void @llvm.dbg.value(metadata !{i8* %now}, i64 0, metadata !18), !dbg !35
  ret i32 0, !dbg !36
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @Util_CurrentDate(i32 %len, i8* nocapture %now) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !27), !dbg !37
  tail call void @llvm.dbg.value(metadata !{i8* %now}, i64 0, metadata !28), !dbg !37
  ret i32 0, !dbg !38
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !32, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Time.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Time.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !25}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_util_Time_c", metadata !"CCTKi_version_util_Time_c", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_util_Time_c, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [CCTKi_version_util_Time_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Time.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_CurrentTime", metadata !"Util_CurrentTime", metadata !"", i32 47, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*)* @Util_CurrentTime, null, null, metadata !16, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [Util_CurrentTime]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !14, metadata !15}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !20, metadata !24}
!17 = metadata !{i32 786689, metadata !11, metadata !"len", metadata !5, i32 16777263, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 47]
!18 = metadata !{i32 786689, metadata !11, metadata !"now", metadata !5, i32 33554479, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [now] [line 47]
!19 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 49, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 49]
!20 = metadata !{i32 786688, metadata !11, metadata !"timep", metadata !5, i32 50, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timep] [line 50]
!21 = metadata !{i32 786454, metadata !1, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!22 = metadata !{i32 786454, metadata !1, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!23 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!24 = metadata !{i32 786688, metadata !11, metadata !"fmt", metadata !5, i32 51, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmt] [line 51]
!25 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_CurrentDate", metadata !"Util_CurrentDate", metadata !"", i32 87, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*)* @Util_CurrentDate, null, null, metadata !26, i32 88} ; [ DW_TAG_subprogram ] [line 87] [def] [scope 88] [Util_CurrentDate]
!26 = metadata !{metadata !27, metadata !28, metadata !29, metadata !30, metadata !31}
!27 = metadata !{i32 786689, metadata !25, metadata !"len", metadata !5, i32 16777303, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 87]
!28 = metadata !{i32 786689, metadata !25, metadata !"now", metadata !5, i32 33554519, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [now] [line 87]
!29 = metadata !{i32 786688, metadata !25, metadata !"retval", metadata !5, i32 89, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 89]
!30 = metadata !{i32 786688, metadata !25, metadata !"timep", metadata !5, i32 90, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timep] [line 90]
!31 = metadata !{i32 786688, metadata !25, metadata !"fmt", metadata !5, i32 91, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmt] [line 91]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 22, metadata !8, i32 1, i32 1, null, null}
!34 = metadata !{i32 24, i32 0, metadata !4, null}
!35 = metadata !{i32 47, i32 0, metadata !11, null}
!36 = metadata !{i32 54, i32 0, metadata !11, null}
!37 = metadata !{i32 87, i32 0, metadata !25, null}
!38 = metadata !{i32 94, i32 0, metadata !25, null}
