; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/revcomp.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i8* @revcomp(i8* %comp, i8* %seq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %comp}, i64 0, metadata !27), !dbg !31
  tail call void @llvm.dbg.value(metadata !{i8* %seq}, i64 0, metadata !28), !dbg !31
  %cmp = icmp eq i8* %comp, null, !dbg !32
  %cmp1 = icmp eq i8* %seq, null, !dbg !33
  %or.cond = or i1 %cmp, %cmp1, !dbg !32
  br i1 %or.cond, label %return, label %if.end3, !dbg !32

if.end3:                                          ; preds = %entry
  %call = tail call i32 @StrReverse(i8* %comp, i8* %seq) #4, !dbg !34
  tail call void @llvm.dbg.value(metadata !{i8* %comp}, i64 0, metadata !29), !dbg !35
  %0 = load i8* %comp, align 1, !dbg !35, !tbaa !37
  %cmp443 = icmp eq i8 %0, 0, !dbg !35
  br i1 %cmp443, label %return, label %for.body.lr.ph, !dbg !35

for.body.lr.ph:                                   ; preds = %if.end3
  %call25 = tail call i16** @__ctype_b_loc() #5, !dbg !39
  br label %for.body, !dbg !35

for.body:                                         ; preds = %for.body.lr.ph, %if.end31
  %1 = phi i8 [ %0, %for.body.lr.ph ], [ %5, %if.end31 ]
  %s.044 = phi i8* [ %comp, %for.body.lr.ph ], [ %incdec.ptr, %if.end31 ]
  %conv = sext i8 %1 to i32, !dbg !35
  tail call void @llvm.dbg.value(metadata !{i8 %1}, i64 0, metadata !30), !dbg !41
  %call7 = tail call i32 @sre_toupper(i32 %conv) #4, !dbg !42
  %conv8 = trunc i32 %call7 to i8, !dbg !42
  tail call void @llvm.dbg.value(metadata !{i8 %conv8}, i64 0, metadata !30), !dbg !42
  %sext = shl i32 %call7, 24, !dbg !43
  %conv9 = ashr exact i32 %sext, 24, !dbg !43
  switch i32 %conv9, label %sw.epilog [
    i32 65, label %sw.bb
    i32 67, label %sw.bb10
    i32 71, label %sw.bb11
    i32 84, label %sw.bb12
    i32 85, label %sw.bb13
    i32 82, label %sw.bb14
    i32 89, label %sw.bb15
    i32 77, label %sw.bb16
    i32 75, label %sw.bb17
    i32 83, label %sw.bb18
    i32 87, label %sw.bb19
    i32 72, label %sw.bb20
    i32 68, label %sw.bb21
    i32 66, label %sw.bb22
    i32 86, label %sw.bb23
  ], !dbg !43

sw.bb:                                            ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !44, i64 0, metadata !30), !dbg !45
  br label %sw.epilog, !dbg !45

sw.bb10:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !47, i64 0, metadata !30), !dbg !48
  br label %sw.epilog, !dbg !48

sw.bb11:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !49, i64 0, metadata !30), !dbg !50
  br label %sw.epilog, !dbg !50

sw.bb12:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !51, i64 0, metadata !30), !dbg !52
  br label %sw.epilog, !dbg !52

sw.bb13:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !51, i64 0, metadata !30), !dbg !53
  br label %sw.epilog, !dbg !53

sw.bb14:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !30), !dbg !55
  br label %sw.epilog, !dbg !55

sw.bb15:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !56, i64 0, metadata !30), !dbg !57
  br label %sw.epilog, !dbg !57

sw.bb16:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !58, i64 0, metadata !30), !dbg !59
  br label %sw.epilog, !dbg !59

sw.bb17:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !60, i64 0, metadata !30), !dbg !61
  br label %sw.epilog, !dbg !61

sw.bb18:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !62, i64 0, metadata !30), !dbg !63
  br label %sw.epilog, !dbg !63

sw.bb19:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !64, i64 0, metadata !30), !dbg !65
  br label %sw.epilog, !dbg !65

sw.bb20:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !66, i64 0, metadata !30), !dbg !67
  br label %sw.epilog, !dbg !67

sw.bb21:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !68, i64 0, metadata !30), !dbg !69
  br label %sw.epilog, !dbg !69

sw.bb22:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !70, i64 0, metadata !30), !dbg !71
  br label %sw.epilog, !dbg !71

sw.bb23:                                          ; preds = %for.body
  tail call void @llvm.dbg.value(metadata !72, i64 0, metadata !30), !dbg !73
  br label %sw.epilog, !dbg !73

sw.epilog:                                        ; preds = %for.body, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb
  %c.0 = phi i8 [ %conv8, %for.body ], [ 66, %sw.bb23 ], [ 86, %sw.bb22 ], [ 72, %sw.bb21 ], [ 68, %sw.bb20 ], [ 87, %sw.bb19 ], [ 83, %sw.bb18 ], [ 77, %sw.bb17 ], [ 75, %sw.bb16 ], [ 82, %sw.bb15 ], [ 89, %sw.bb14 ], [ 65, %sw.bb13 ], [ 65, %sw.bb12 ], [ 67, %sw.bb11 ], [ 71, %sw.bb10 ], [ 84, %sw.bb ]
  %2 = load i8* %s.044, align 1, !dbg !39, !tbaa !37
  %idxprom = sext i8 %2 to i64, !dbg !39
  %3 = load i16** %call25, align 8, !dbg !39, !tbaa !74
  %arrayidx = getelementptr inbounds i16* %3, i64 %idxprom, !dbg !39
  %4 = load i16* %arrayidx, align 2, !dbg !39, !tbaa !75
  %and = and i16 %4, 512, !dbg !39
  %tobool = icmp eq i16 %and, 0, !dbg !39
  br i1 %tobool, label %if.end31, label %if.then27, !dbg !39

if.then27:                                        ; preds = %sw.epilog
  %conv28 = sext i8 %c.0 to i32, !dbg !39
  %call29 = tail call i32 @sre_tolower(i32 %conv28) #4, !dbg !39
  %conv30 = trunc i32 %call29 to i8, !dbg !39
  tail call void @llvm.dbg.value(metadata !{i8 %conv30}, i64 0, metadata !30), !dbg !39
  br label %if.end31, !dbg !39

if.end31:                                         ; preds = %sw.epilog, %if.then27
  %c.1 = phi i8 [ %conv30, %if.then27 ], [ %c.0, %sw.epilog ]
  store i8 %c.1, i8* %s.044, align 1, !dbg !76, !tbaa !37
  %incdec.ptr = getelementptr inbounds i8* %s.044, i64 1, !dbg !35
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !29), !dbg !35
  %5 = load i8* %incdec.ptr, align 1, !dbg !35, !tbaa !37
  %cmp4 = icmp eq i8 %5, 0, !dbg !35
  br i1 %cmp4, label %return, label %for.body, !dbg !35

return:                                           ; preds = %if.end3, %if.end31, %entry
  %retval.0 = phi i8* [ null, %entry ], [ %comp, %if.end31 ], [ %comp, %if.end3 ]
  ret i8* %retval.0, !dbg !77
}

; Function Attrs: optsize
declare i32 @StrReverse(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @sre_toupper(i32) #1

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: optsize
declare i32 @sre_tolower(i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/revcomp.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/revcomp.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"revcomp", metadata !"revcomp", metadata !"", i32 35, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i8*)* @revcomp, null, null, metadata !26, i32 36} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 36] [revcomp]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/revcomp.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !24, metadata !24}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!25 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!26 = metadata !{metadata !27, metadata !28, metadata !29, metadata !30}
!27 = metadata !{i32 786689, metadata !20, metadata !"comp", metadata !21, i32 16777251, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [comp] [line 35]
!28 = metadata !{i32 786689, metadata !20, metadata !"seq", metadata !21, i32 33554467, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seq] [line 35]
!29 = metadata !{i32 786688, metadata !20, metadata !"s", metadata !21, i32 37, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 37]
!30 = metadata !{i32 786688, metadata !20, metadata !"c", metadata !21, i32 38, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 38]
!31 = metadata !{i32 35, i32 0, metadata !20, null}
!32 = metadata !{i32 40, i32 0, metadata !20, null}
!33 = metadata !{i32 41, i32 0, metadata !20, null}
!34 = metadata !{i32 43, i32 0, metadata !20, null}
!35 = metadata !{i32 44, i32 0, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !20, i32 44, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/revcomp.c]
!37 = metadata !{metadata !"omnipotent char", metadata !38}
!38 = metadata !{metadata !"Simple C/C++ TBAA"}
!39 = metadata !{i32 66, i32 0, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !36, i32 45, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/revcomp.c]
!41 = metadata !{i32 46, i32 0, metadata !40, null}
!42 = metadata !{i32 47, i32 0, metadata !40, null}
!43 = metadata !{i32 48, i32 0, metadata !40, null}
!44 = metadata !{i8 84}
!45 = metadata !{i32 49, i32 0, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !40, i32 48, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/revcomp.c]
!47 = metadata !{i8 71}
!48 = metadata !{i32 50, i32 0, metadata !46, null}
!49 = metadata !{i8 67}
!50 = metadata !{i32 51, i32 0, metadata !46, null}
!51 = metadata !{i8 65}
!52 = metadata !{i32 52, i32 0, metadata !46, null}
!53 = metadata !{i32 53, i32 0, metadata !46, null}
!54 = metadata !{i8 89}
!55 = metadata !{i32 54, i32 0, metadata !46, null}
!56 = metadata !{i8 82}
!57 = metadata !{i32 55, i32 0, metadata !46, null}
!58 = metadata !{i8 75}
!59 = metadata !{i32 56, i32 0, metadata !46, null}
!60 = metadata !{i8 77}
!61 = metadata !{i32 57, i32 0, metadata !46, null}
!62 = metadata !{i8 83}
!63 = metadata !{i32 58, i32 0, metadata !46, null} ; [ DW_TAG_imported_module ]
!64 = metadata !{i8 87}
!65 = metadata !{i32 59, i32 0, metadata !46, null}
!66 = metadata !{i8 68}
!67 = metadata !{i32 60, i32 0, metadata !46, null}
!68 = metadata !{i8 72}
!69 = metadata !{i32 61, i32 0, metadata !46, null}
!70 = metadata !{i8 86}
!71 = metadata !{i32 62, i32 0, metadata !46, null}
!72 = metadata !{i8 66}
!73 = metadata !{i32 63, i32 0, metadata !46, null}
!74 = metadata !{metadata !"any pointer", metadata !37}
!75 = metadata !{metadata !"short", metadata !37}
!76 = metadata !{i32 67, i32 0, metadata !40, null}
!77 = metadata !{i32 70, i32 0, metadata !20, null}
