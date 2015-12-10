; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_ctype.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i32 @sre_tolower(i32 %c) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !26), !dbg !34
  %idxprom = sext i32 %c to i64, !dbg !35
  %call = tail call i16** @__ctype_b_loc() #4, !dbg !35
  %0 = load i16** %call, align 8, !dbg !35, !tbaa !36
  %arrayidx = getelementptr inbounds i16* %0, i64 %idxprom, !dbg !35
  %1 = load i16* %arrayidx, align 2, !dbg !35, !tbaa !39
  %and = and i16 %1, 256, !dbg !35
  %tobool = icmp eq i16 %and, 0, !dbg !35
  br i1 %tobool, label %return, label %if.then, !dbg !35

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @tolower(i32 %c) #5, !dbg !40
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !27), !dbg !40
  br label %return, !dbg !42

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %c, %entry ]
  ret i32 %retval.0, !dbg !43
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind optsize
declare i32 @tolower(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @sre_toupper(i32 %c) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !31), !dbg !44
  %idxprom = sext i32 %c to i64, !dbg !45
  %call = tail call i16** @__ctype_b_loc() #4, !dbg !45
  %0 = load i16** %call, align 8, !dbg !45, !tbaa !36
  %arrayidx = getelementptr inbounds i16* %0, i64 %idxprom, !dbg !45
  %1 = load i16* %arrayidx, align 2, !dbg !45, !tbaa !39
  %and = and i16 %1, 512, !dbg !45
  %tobool = icmp eq i16 %and, 0, !dbg !45
  br i1 %tobool, label %return, label %if.then, !dbg !45

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @toupper(i32 %c) #5, !dbg !46
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !32), !dbg !46
  br label %return, !dbg !48

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %c, %entry ]
  ret i32 %retval.0, !dbg !49
}

; Function Attrs: nounwind optsize
declare i32 @toupper(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_ctype.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_ctype.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !29}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_tolower", metadata !"sre_tolower", metadata !"", i32 25, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @sre_tolower, null, null, metadata !25, i32 26} ; [ DW_TAG_subprogram ] [line 25] [def] [scope 26] [sre_tolower]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_ctype.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !24}
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{metadata !26, metadata !27}
!26 = metadata !{i32 786689, metadata !20, metadata !"c", metadata !21, i32 16777241, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 25]
!27 = metadata !{i32 786688, metadata !28, metadata !"__res", metadata !21, i32 27, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 27]
!28 = metadata !{i32 786443, metadata !1, metadata !20, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_ctype.c]
!29 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_toupper", metadata !"sre_toupper", metadata !"", i32 32, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @sre_toupper, null, null, metadata !30, i32 33} ; [ DW_TAG_subprogram ] [line 32] [def] [scope 33] [sre_toupper]
!30 = metadata !{metadata !31, metadata !32}
!31 = metadata !{i32 786689, metadata !29, metadata !"c", metadata !21, i32 16777248, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 32]
!32 = metadata !{i32 786688, metadata !33, metadata !"__res", metadata !21, i32 34, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__res] [line 34]
!33 = metadata !{i32 786443, metadata !1, metadata !29, i32 34, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_ctype.c]
!34 = metadata !{i32 25, i32 0, metadata !20, null}
!35 = metadata !{i32 27, i32 0, metadata !20, null}
!36 = metadata !{metadata !"any pointer", metadata !37}
!37 = metadata !{metadata !"omnipotent char", metadata !38}
!38 = metadata !{metadata !"Simple C/C++ TBAA"}
!39 = metadata !{metadata !"short", metadata !37}
!40 = metadata !{i32 27, i32 0, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !28, i32 27, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_ctype.c]
!42 = metadata !{i32 27, i32 0, metadata !28, null}
!43 = metadata !{i32 29, i32 0, metadata !20, null}
!44 = metadata !{i32 32, i32 0, metadata !29, null}
!45 = metadata !{i32 34, i32 0, metadata !29, null}
!46 = metadata !{i32 34, i32 0, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !33, i32 34, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_ctype.c]
!48 = metadata !{i32 34, i32 0, metadata !33, null}
!49 = metadata !{i32 36, i32 0, metadata !29, null}
