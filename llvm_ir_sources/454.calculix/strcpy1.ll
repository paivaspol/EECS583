; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/strcpy1.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i32 @strcpy1(i8* nocapture %s1, i8* nocapture %s2, i32 %length) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s1}, i64 0, metadata !14), !dbg !20
  tail call void @llvm.dbg.value(metadata !{i8* %s2}, i64 0, metadata !15), !dbg !20
  tail call void @llvm.dbg.value(metadata !{i32 %length}, i64 0, metadata !16), !dbg !20
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !19), !dbg !21
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !18), !dbg !22
  %cmp20 = icmp sgt i32 %length, 0, !dbg !22
  br i1 %cmp20, label %for.body, label %for.end, !dbg !22

for.body:                                         ; preds = %entry, %if.end9
  %blank.025 = phi i32 [ %blank.118, %if.end9 ], [ 0, %entry ]
  %i.024 = phi i32 [ %inc, %if.end9 ], [ 0, %entry ]
  %s1.addr.022 = phi i8* [ %incdec.ptr10, %if.end9 ], [ %s1, %entry ]
  %s2.addr.021 = phi i8* [ %s2.addr.1, %if.end9 ], [ %s2, %entry ]
  %cmp1 = icmp eq i32 %blank.025, 0, !dbg !24
  br i1 %cmp1, label %if.end5, label %if.else, !dbg !24

if.end5:                                          ; preds = %for.body
  %0 = load i8* %s2.addr.021, align 1, !dbg !26, !tbaa !28
  %cmp2 = icmp eq i8 %0, 0, !dbg !30
  tail call void @llvm.dbg.value(metadata !31, i64 0, metadata !19), !dbg !30
  %.blank.0 = zext i1 %cmp2 to i32, !dbg !30
  br i1 %cmp2, label %if.else, label %if.then8, !dbg !32

if.then8:                                         ; preds = %if.end5
  store i8 %0, i8* %s1.addr.022, align 1, !dbg !33, !tbaa !28
  %incdec.ptr = getelementptr inbounds i8* %s2.addr.021, i64 1, !dbg !33
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !15), !dbg !33
  br label %if.end9, !dbg !33

if.else:                                          ; preds = %if.end5, %for.body
  %blank.119 = phi i32 [ %.blank.0, %if.end5 ], [ %blank.025, %for.body ]
  store i8 32, i8* %s1.addr.022, align 1, !dbg !35, !tbaa !28
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  %blank.118 = phi i32 [ 0, %if.then8 ], [ %blank.119, %if.else ]
  %s2.addr.1 = phi i8* [ %incdec.ptr, %if.then8 ], [ %s2.addr.021, %if.else ]
  %incdec.ptr10 = getelementptr inbounds i8* %s1.addr.022, i64 1, !dbg !36
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr10}, i64 0, metadata !14), !dbg !36
  %inc = add nsw i32 %i.024, 1, !dbg !22
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !18), !dbg !22
  %exitcond = icmp eq i32 %inc, %length, !dbg !22
  br i1 %exitcond, label %for.end, label %for.body, !dbg !22

for.end:                                          ; preds = %if.end9, %entry
  ret i32 0, !dbg !37
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/strcpy1.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/strcpy1.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"strcpy1", metadata !"strcpy1", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @strcpy1, null, null, metadata !13, i32 25} ; [ DW_TAG_subprogram ] [line 24] [def] [scope 25] [strcpy1]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/strcpy1.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !11, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!12 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19}
!14 = metadata !{i32 786689, metadata !4, metadata !"s1", metadata !5, i32 16777240, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 24]
!15 = metadata !{i32 786689, metadata !4, metadata !"s2", metadata !5, i32 33554456, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 24]
!16 = metadata !{i32 786689, metadata !4, metadata !"length", metadata !5, i32 50331672, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 24]
!17 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 26]
!18 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 26]
!19 = metadata !{i32 786688, metadata !4, metadata !"blank", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [blank] [line 26]
!20 = metadata !{i32 24, i32 0, metadata !4, null}
!21 = metadata !{i32 26, i32 0, metadata !4, null}
!22 = metadata !{i32 28, i32 0, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/strcpy1.c]
!24 = metadata !{i32 29, i32 0, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !23, i32 28, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/strcpy1.c]
!26 = metadata !{i32 30, i32 0, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !25, i32 29, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/strcpy1.c]
!28 = metadata !{metadata !"omnipotent char", metadata !29}
!29 = metadata !{metadata !"Simple C/C++ TBAA"}
!30 = metadata !{i32 31, i32 0, metadata !27, null}
!31 = metadata !{i32 1}
!32 = metadata !{i32 33, i32 0, metadata !25, null}
!33 = metadata !{i32 33, i32 0, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !25, i32 33, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/strcpy1.c]
!35 = metadata !{i32 34, i32 0, metadata !25, null}
!36 = metadata !{i32 35, i32 0, metadata !25, null}
!37 = metadata !{i32 37, i32 0, metadata !4, null}
