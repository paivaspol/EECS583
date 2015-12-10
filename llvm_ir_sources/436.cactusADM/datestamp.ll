; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/datestamp.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"  Compiled on %s at %s\0A\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"Dec 10 2015\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"17:53:25\00", align 1
@CCTK_CompileDate.date = internal global [13 x i8] zeroinitializer, align 1
@.str3 = private unnamed_addr constant [8 x i8] c"4.0.b11\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"b11\00", align 1
@.str7 = private unnamed_addr constant [80 x i8] c"$Header: /cactus/Cactus/src/datestamp.c,v 1.13 2001/12/06 15:07:33 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_src_datestamp_c() #0 {
entry:
  ret i8* getelementptr inbounds ([80 x i8]* @.str7, i64 0, i64 0), !dbg !26
}

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_DateStamp() #1 {
entry:
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !27
  ret void, !dbg !28
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTK_CompileTime() #0 {
entry:
  ret i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), !dbg !29
}

; Function Attrs: nounwind optsize uwtable
define i8* @CCTK_CompileDate() #1 {
if.end:
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([13 x i8]* @CCTK_CompileDate.date, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i64 12, i32 1, i1 false), !dbg !30
  ret i8* getelementptr inbounds ([13 x i8]* @CCTK_CompileDate.date, i64 0, i64 0), !dbg !31
}

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTK_FullVersion() #0 {
entry:
  ret i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), !dbg !32
}

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTK_MajorVersion() #0 {
entry:
  ret i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), !dbg !33
}

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTK_MinorVersion() #0 {
entry:
  ret i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), !dbg !34
}

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTK_MicroVersion() #0 {
entry:
  ret i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), !dbg !35
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !20, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/datestamp.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/datestamp.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_src_datestamp_c", metadata !"CCTKi_version_src_datestamp_c", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_src_datestamp_c, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 20] [def] [CCTKi_version_src_datestamp_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/datestamp.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_DateStamp", metadata !"CCTKi_DateStamp", metadata !"", i32 31, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_DateStamp, null, null, metadata !2, i32 32} ; [ DW_TAG_subprogram ] [line 31] [def] [scope 32] [CCTKi_DateStamp]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null}
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CompileTime", metadata !"CCTK_CompileTime", metadata !"", i32 51, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTK_CompileTime, null, null, metadata !2, i32 52} ; [ DW_TAG_subprogram ] [line 51] [def] [scope 52] [CCTK_CompileTime]
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_CompileDate", metadata !"CCTK_CompileDate", metadata !"", i32 71, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTK_CompileDate, null, null, metadata !2, i32 72} ; [ DW_TAG_subprogram ] [line 71] [def] [scope 72] [CCTK_CompileDate]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_FullVersion", metadata !"CCTK_FullVersion", metadata !"", i32 109, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTK_FullVersion, null, null, metadata !2, i32 110} ; [ DW_TAG_subprogram ] [line 109] [def] [scope 110] [CCTK_FullVersion]
!17 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_MajorVersion", metadata !"CCTK_MajorVersion", metadata !"", i32 114, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTK_MajorVersion, null, null, metadata !2, i32 115} ; [ DW_TAG_subprogram ] [line 114] [def] [scope 115] [CCTK_MajorVersion]
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_MinorVersion", metadata !"CCTK_MinorVersion", metadata !"", i32 119, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTK_MinorVersion, null, null, metadata !2, i32 120} ; [ DW_TAG_subprogram ] [line 119] [def] [scope 120] [CCTK_MinorVersion]
!19 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_MicroVersion", metadata !"CCTK_MicroVersion", metadata !"", i32 124, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTK_MicroVersion, null, null, metadata !2, i32 125} ; [ DW_TAG_subprogram ] [line 124] [def] [scope 125] [CCTK_MicroVersion]
!20 = metadata !{metadata !21, metadata !25}
!21 = metadata !{i32 786484, i32 0, metadata !15, metadata !"date", metadata !"date", metadata !"", metadata !5, i32 73, metadata !22, i32 1, i32 1, [13 x i8]* @CCTK_CompileDate.date, null} ; [ DW_TAG_variable ] [date] [line 73] [local] [def]
!22 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 104, i64 8, i32 0, i32 0, metadata !10, metadata !23, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 104, align 8, offset 0] [from char]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 13}       ; [ DW_TAG_subrange_type ] [0, 12]
!25 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, null, null}
!26 = metadata !{i32 20, i32 0, metadata !4, null}
!27 = metadata !{i32 33, i32 0, metadata !11, null}
!28 = metadata !{i32 34, i32 0, metadata !11, null}
!29 = metadata !{i32 53, i32 0, metadata !14, null}
!30 = metadata !{i32 78, i32 0, metadata !15, null}
!31 = metadata !{i32 84, i32 0, metadata !15, null}
!32 = metadata !{i32 111, i32 0, metadata !16, null}
!33 = metadata !{i32 116, i32 0, metadata !17, null}
!34 = metadata !{i32 121, i32 0, metadata !18, null}
!35 = metadata !{i32 126, i32 0, metadata !19, null}
