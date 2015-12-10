; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/draw.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fifty = external global i32
@move_number = external global i32
@ply = external global i32
@hash = external global i32
@hash_history = external global [600 x i32]

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_draw() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !18), !dbg !21
  %0 = load i32* @fifty, align 4, !dbg !22, !tbaa !23
  %cmp = icmp sgt i32 %0, 3, !dbg !22
  br i1 %cmp, label %if.then, label %return, !dbg !22

if.then:                                          ; preds = %entry
  %1 = load i32* @move_number, align 4, !dbg !26, !tbaa !23
  %2 = load i32* @ply, align 4, !dbg !26, !tbaa !23
  %add = add i32 %2, %1, !dbg !26
  %sub = xor i32 %0, -1, !dbg !26
  %sub1 = add i32 %add, %sub, !dbg !26
  %cmp2 = icmp slt i32 %1, %sub1, !dbg !26
  %sub1. = select i1 %cmp2, i32 %sub1, i32 %1, !dbg !28
  %sub8 = add i32 %add, -3, !dbg !30
  tail call void @llvm.dbg.value(metadata !{i32 %sub8}, i64 0, metadata !16), !dbg !30
  %cmp958 = icmp slt i32 %sub8, 0, !dbg !30
  %cmp1059 = icmp slt i32 %sub8, %sub1., !dbg !30
  %or.cond60 = or i1 %cmp958, %cmp1059, !dbg !30
  br i1 %or.cond60, label %if.end15, label %for.body.lr.ph, !dbg !30

for.body.lr.ph:                                   ; preds = %if.then
  %3 = load i32* @hash, align 4, !dbg !32, !tbaa !23
  %4 = sext i32 %sub8 to i64
  br label %for.body, !dbg !30

for.cond:                                         ; preds = %for.body
  %cmp9 = icmp slt i32 %sub14, 0, !dbg !30
  %cmp10 = icmp slt i32 %sub14, %sub1., !dbg !30
  %or.cond = or i1 %cmp9, %cmp10, !dbg !30
  %indvars.iv.next64 = add i64 %indvars.iv63, -2, !dbg !30
  br i1 %or.cond, label %if.end15, label %for.body, !dbg !30

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv63 = phi i64 [ %4, %for.body.lr.ph ], [ %indvars.iv.next64, %for.cond ]
  %i.061 = phi i32 [ %sub8, %for.body.lr.ph ], [ %sub14, %for.cond ]
  %arrayidx = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %indvars.iv63, !dbg !32
  %5 = load i32* %arrayidx, align 4, !dbg !32, !tbaa !23
  %cmp11 = icmp eq i32 %3, %5, !dbg !32
  %sub14 = add nsw i32 %i.061, -2, !dbg !30
  tail call void @llvm.dbg.value(metadata !{i32 %sub14}, i64 0, metadata !16), !dbg !30
  br i1 %cmp11, label %return, label %for.cond, !dbg !32

if.end15:                                         ; preds = %for.cond, %if.then
  %cmp16 = icmp sgt i32 %0, 5, !dbg !34
  br i1 %cmp16, label %if.then17, label %return, !dbg !34

if.then17:                                        ; preds = %if.end15
  %sub18 = add i32 %1, -1, !dbg !35
  %rem = srem i32 %2, 2, !dbg !35
  %sub19 = sub i32 %sub18, %rem, !dbg !35
  tail call void @llvm.dbg.value(metadata !{i32 %sub19}, i64 0, metadata !20), !dbg !35
  %sub21 = add i32 %1, %sub, !dbg !37
  %sub22 = add i32 %sub21, %2, !dbg !37
  tail call void @llvm.dbg.value(metadata !{i32 %sub22}, i64 0, metadata !19), !dbg !37
  tail call void @llvm.dbg.value(metadata !{i32 %sub19}, i64 0, metadata !16), !dbg !38
  %cmp2452 = icmp slt i32 %sub19, 0, !dbg !38
  %cmp2653 = icmp slt i32 %sub19, %sub22, !dbg !38
  %or.cond5054 = or i1 %cmp2452, %cmp2653, !dbg !38
  br i1 %or.cond5054, label %return, label %for.body28.lr.ph, !dbg !38

for.body28.lr.ph:                                 ; preds = %if.then17
  %6 = load i32* @hash, align 4, !dbg !40, !tbaa !23
  %7 = sext i32 %sub19 to i64
  br label %for.body28, !dbg !38

for.cond23:                                       ; preds = %for.body28
  %cmp24 = icmp slt i32 %sub38, 0, !dbg !38
  %cmp26 = icmp slt i32 %sub38, %sub22, !dbg !38
  %or.cond50 = or i1 %cmp24, %cmp26, !dbg !38
  %indvars.iv.next = add i64 %indvars.iv, -2, !dbg !38
  br i1 %or.cond50, label %return, label %for.body28, !dbg !38

for.body28:                                       ; preds = %for.body28.lr.ph, %for.cond23
  %indvars.iv = phi i64 [ %7, %for.body28.lr.ph ], [ %indvars.iv.next, %for.cond23 ]
  %repeats.056 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc.repeats.0, %for.cond23 ]
  %i.155 = phi i32 [ %sub19, %for.body28.lr.ph ], [ %sub38, %for.cond23 ]
  %arrayidx30 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %indvars.iv, !dbg !40
  %8 = load i32* %arrayidx30, align 4, !dbg !40, !tbaa !23
  %cmp31 = icmp eq i32 %6, %8, !dbg !40
  %inc = zext i1 %cmp31 to i32, !dbg !40
  %inc.repeats.0 = add nsw i32 %inc, %repeats.056, !dbg !40
  %cmp34 = icmp sgt i32 %inc.repeats.0, 1, !dbg !42
  %sub38 = add nsw i32 %i.155, -2, !dbg !38
  tail call void @llvm.dbg.value(metadata !{i32 %sub38}, i64 0, metadata !16), !dbg !38
  br i1 %cmp34, label %return, label %for.cond23, !dbg !42

return:                                           ; preds = %for.body, %if.then17, %for.body28, %for.cond23, %entry, %if.end15
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 0, %entry ], [ 0, %if.then17 ], [ 1, %for.body28 ], [ 0, %for.cond23 ], [ 1, %for.body ]
  ret i32 %retval.0, !dbg !43
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !8, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/draw.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/draw.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 14, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 14, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/sjeng.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"is_draw", metadata !"is_draw", metadata !"", i32 14, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @is_draw, null, null, metadata !15, i32 15} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 15] [is_draw]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/draw.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786454, metadata !1, null, metadata !"xbool", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [xbool] [line 14, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !18, metadata !19, metadata !20}
!16 = metadata !{i32 786688, metadata !10, metadata !"i", metadata !11, i32 16, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 16]
!17 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!18 = metadata !{i32 786688, metadata !10, metadata !"repeats", metadata !11, i32 16, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [repeats] [line 16]
!19 = metadata !{i32 786688, metadata !10, metadata !"end", metadata !11, i32 16, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 16]
!20 = metadata !{i32 786688, metadata !10, metadata !"start", metadata !11, i32 16, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 16]
!21 = metadata !{i32 16, i32 0, metadata !10, null}
!22 = metadata !{i32 18, i32 0, metadata !10, null}
!23 = metadata !{metadata !"int", metadata !24}
!24 = metadata !{metadata !"omnipotent char", metadata !25}
!25 = metadata !{metadata !"Simple C/C++ TBAA"}
!26 = metadata !{i32 20, i32 0, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !10, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/draw.c]
!28 = metadata !{i32 23, i32 0, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !27, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/draw.c]
!30 = metadata !{i32 28, i32 0, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !27, i32 28, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/draw.c]
!32 = metadata !{i32 30, i32 0, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !31, i32 29, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/draw.c]
!34 = metadata !{i32 37, i32 0, metadata !10, null}
!35 = metadata !{i32 39, i32 0, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !10, i32 38, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/draw.c]
!37 = metadata !{i32 40, i32 0, metadata !36, null}
!38 = metadata !{i32 42, i32 0, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !36, i32 42, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/draw.c]
!40 = metadata !{i32 44, i32 0, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !39, i32 43, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/draw.c]
!42 = metadata !{i32 48, i32 0, metadata !41, null}
!43 = metadata !{i32 55, i32 0, metadata !10, null}
