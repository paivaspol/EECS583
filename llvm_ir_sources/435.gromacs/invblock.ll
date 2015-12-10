; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/invblock.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"invblock\00", align 1
@.str1 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/invblock.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32* @make_invblock(%struct.t_block* nocapture %block, i32 %nr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.t_block* %block}, i64 0, metadata !25), !dbg !30
  tail call void @llvm.dbg.value(metadata !{i32 %nr}, i64 0, metadata !26), !dbg !30
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 42, i32 %nr, i32 4) #4, !dbg !31
  %0 = bitcast i8* %call to i32*, !dbg !31
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !29), !dbg !31
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !27), !dbg !32
  %cmp42 = icmp sgt i32 %nr, 0, !dbg !32
  br i1 %cmp42, label %for.body.lr.ph, label %for.cond1.preheader, !dbg !32

for.body.lr.ph:                                   ; preds = %entry
  %1 = add i32 %nr, -1, !dbg !32
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 2, !dbg !32
  %4 = add i64 %3, 4, !dbg !32
  call void @llvm.memset.p0i8.i64(i8* %call, i8 -1, i64 %4, i32 4, i1 false), !dbg !32
  br label %for.cond1.preheader, !dbg !32

for.cond1.preheader:                              ; preds = %for.body.lr.ph, %entry
  %nr2 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1, !dbg !34
  %5 = load i32* %nr2, align 4, !dbg !34, !tbaa !36
  %cmp340 = icmp sgt i32 %5, 0, !dbg !34
  br i1 %cmp340, label %for.body4.lr.ph, label %for.end22, !dbg !34

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %index = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2, !dbg !39
  %6 = load i32** %index, align 8, !dbg !39, !tbaa !41
  %a = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4, !dbg !42
  %.pre48 = load i32* %6, align 4, !dbg !39, !tbaa !36
  br label %for.body4, !dbg !34

for.cond7.for.cond1.loopexit_crit_edge:           ; preds = %for.body12
  %.pre = load i32* %nr2, align 4, !dbg !34, !tbaa !36
  br label %for.cond1.loopexit, !dbg !39

for.cond1.loopexit:                               ; preds = %for.cond7.for.cond1.loopexit_crit_edge, %for.body4
  %7 = phi i32 [ %17, %for.cond7.for.cond1.loopexit_crit_edge ], [ %12, %for.body4 ]
  %8 = phi i32 [ %.pre, %for.cond7.for.cond1.loopexit_crit_edge ], [ %11, %for.body4 ], !dbg !34
  %9 = trunc i64 %indvars.iv.next45 to i32, !dbg !34
  %cmp3 = icmp slt i32 %9, %8, !dbg !34
  br i1 %cmp3, label %for.body4, label %for.end22, !dbg !34

for.body4:                                        ; preds = %for.cond1.loopexit, %for.body4.lr.ph
  %10 = phi i32 [ %.pre48, %for.body4.lr.ph ], [ %7, %for.cond1.loopexit ], !dbg !39
  %11 = phi i32 [ %5, %for.body4.lr.ph ], [ %8, %for.cond1.loopexit ]
  %indvars.iv44 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next45, %for.cond1.loopexit ]
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !28), !dbg !39
  %indvars.iv.next45 = add i64 %indvars.iv44, 1, !dbg !34
  %arrayidx1037 = getelementptr inbounds i32* %6, i64 %indvars.iv.next45, !dbg !39
  %12 = load i32* %arrayidx1037, align 4, !dbg !39, !tbaa !36
  %cmp1138 = icmp slt i32 %10, %12, !dbg !39
  br i1 %cmp1138, label %for.body12.lr.ph, label %for.cond1.loopexit, !dbg !39

for.body12.lr.ph:                                 ; preds = %for.body4
  %13 = load i32** %a, align 8, !dbg !42, !tbaa !41
  %14 = sext i32 %10 to i64
  br label %for.body12, !dbg !39

for.body12:                                       ; preds = %for.body12.lr.ph, %for.body12
  %indvars.iv = phi i64 [ %14, %for.body12.lr.ph ], [ %indvars.iv.next, %for.body12 ]
  %arrayidx14 = getelementptr inbounds i32* %13, i64 %indvars.iv, !dbg !42
  %15 = load i32* %arrayidx14, align 4, !dbg !42, !tbaa !36
  %idxprom15 = sext i32 %15 to i64, !dbg !42
  %arrayidx16 = getelementptr inbounds i32* %0, i64 %idxprom15, !dbg !42
  %16 = trunc i64 %indvars.iv44 to i32, !dbg !42
  store i32 %16, i32* %arrayidx16, align 4, !dbg !42, !tbaa !36
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !39
  %17 = load i32* %arrayidx1037, align 4, !dbg !39, !tbaa !36
  %18 = trunc i64 %indvars.iv.next to i32, !dbg !39
  %cmp11 = icmp slt i32 %18, %17, !dbg !39
  br i1 %cmp11, label %for.body12, label %for.cond7.for.cond1.loopexit_crit_edge, !dbg !39

for.end22:                                        ; preds = %for.cond1.loopexit, %for.cond1.preheader
  ret i32* %0, !dbg !43
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/invblock.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/invblock.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"make_invblock", metadata !"make_invblock", metadata !"", i32 37, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct.t_block*, i32)* @make_invblock, null, null, metadata !24, i32 38} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 38] [make_invblock]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/invblock.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !11, metadata !10}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from atom_id]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"atom_id", i32 73, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [atom_id] [line 73, size 0, align 0, offset 0] [from int]
!10 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_block]
!12 = metadata !{i32 786454, metadata !1, null, metadata !"t_block", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [t_block] [line 52, size 0, align 0, offset 0] [from ]
!13 = metadata !{i32 786451, metadata !14, null, metadata !"", i32 36, i64 8448, i64 64, i32 0, i32 0, null, metadata !15, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 8448, align 64, offset 0] [from ]
!14 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/block.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!15 = metadata !{metadata !16, metadata !20, metadata !21, metadata !22, metadata !23}
!16 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"multinr", i32 37, i64 8192, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [multinr] [line 37, size 8192, align 32, offset 0] [from ]
!17 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !10, metadata !18, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786465, i64 0, i64 256}      ; [ DW_TAG_subrange_type ] [0, 255]
!20 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nr", i32 43, i64 32, i64 32, i64 8192, i32 0, metadata !10} ; [ DW_TAG_member ] [nr] [line 43, size 32, align 32, offset 8192] [from int]
!21 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"index", i32 44, i64 64, i64 64, i64 8256, i32 0, metadata !8} ; [ DW_TAG_member ] [index] [line 44, size 64, align 64, offset 8256] [from ]
!22 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nra", i32 45, i64 32, i64 32, i64 8320, i32 0, metadata !10} ; [ DW_TAG_member ] [nra] [line 45, size 32, align 32, offset 8320] [from int]
!23 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"a", i32 46, i64 64, i64 64, i64 8384, i32 0, metadata !8} ; [ DW_TAG_member ] [a] [line 46, size 64, align 64, offset 8384] [from ]
!24 = metadata !{metadata !25, metadata !26, metadata !27, metadata !28, metadata !29}
!25 = metadata !{i32 786689, metadata !4, metadata !"block", metadata !5, i32 16777253, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [block] [line 37]
!26 = metadata !{i32 786689, metadata !4, metadata !"nr", metadata !5, i32 33554469, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nr] [line 37]
!27 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 39, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 39]
!28 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 39, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 39]
!29 = metadata !{i32 786688, metadata !4, metadata !"invblock", metadata !5, i32 40, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [invblock] [line 40]
!30 = metadata !{i32 37, i32 0, metadata !4, null}
!31 = metadata !{i32 42, i32 0, metadata !4, null}
!32 = metadata !{i32 43, i32 0, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !4, i32 43, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/invblock.c]
!34 = metadata !{i32 45, i32 0, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/invblock.c]
!36 = metadata !{metadata !"int", metadata !37}
!37 = metadata !{metadata !"omnipotent char", metadata !38}
!38 = metadata !{metadata !"Simple C/C++ TBAA"}
!39 = metadata !{i32 46, i32 0, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !35, i32 46, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/invblock.c]
!41 = metadata !{metadata !"any pointer", metadata !37}
!42 = metadata !{i32 47, i32 0, metadata !40, null}
!43 = metadata !{i32 48, i32 0, metadata !4, null}
