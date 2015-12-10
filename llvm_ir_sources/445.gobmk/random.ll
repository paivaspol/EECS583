; ModuleID = '../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gg_rand_state = type { [25 x i32], i32 }

@x = internal unnamed_addr global [25 x i32] zeroinitializer, align 16
@k = internal unnamed_addr global i32 0, align 4
@rand_initialized = internal unnamed_addr global i1 false
@.str = private unnamed_addr constant [17 x i8] c"rand_initialized\00", align 1
@.str1 = private unnamed_addr constant [58 x i8] c"../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.c\00", align 1
@__PRETTY_FUNCTION__.next_rand = private unnamed_addr constant [25 x i8] c"unsigned int next_rand()\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @gg_srand(i32 %seed) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !10), !dbg !62
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !11), !dbg !63
  br label %for.body, !dbg !63

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %seed.addr.05 = phi i32 [ %seed, %entry ], [ %add, %for.body ]
  %arrayidx = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv, !dbg !65
  store i32 %seed.addr.05, i32* %arrayidx, align 4, !dbg !65, !tbaa !67
  %mul = mul i32 %seed.addr.05, 1313, !dbg !70
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !10), !dbg !70
  %add = add i32 %mul, 88897, !dbg !71
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !10), !dbg !71
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !63
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !63
  %exitcond = icmp eq i32 %lftr.wideiv, 25, !dbg !63
  br i1 %exitcond, label %for.end, label %for.body, !dbg !63

for.end:                                          ; preds = %for.body
  store i32 24, i32* @k, align 4, !dbg !72, !tbaa !67
  store i1 true, i1* @rand_initialized, align 1
  ret void, !dbg !73
}

; Function Attrs: nounwind optsize uwtable
define i32 @gg_rand() #0 {
entry:
  %call = tail call fastcc i32 @next_rand() #3, !dbg !74
  %and = and i32 %call, 2147483647, !dbg !74
  ret i32 %and, !dbg !74
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @next_rand() #0 {
entry:
  %.b = load i1* @rand_initialized, align 1
  br i1 %.b, label %if.end, label %cond.false, !dbg !75

cond.false:                                       ; preds = %entry
  tail call void @__assert_fail(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i32 90, i8* getelementptr inbounds ([25 x i8]* @__PRETTY_FUNCTION__.next_rand, i64 0, i64 0)) #4, !dbg !76
  unreachable, !dbg !76

if.end:                                           ; preds = %entry
  %0 = load i32* @k, align 4, !dbg !78, !tbaa !67
  %inc = add nsw i32 %0, 1, !dbg !78
  store i32 %inc, i32* @k, align 4, !dbg !78, !tbaa !67
  %cmp = icmp eq i32 %inc, 25, !dbg !78
  br i1 %cmp, label %for.body.i, label %if.end3, !dbg !78

for.body.i:                                       ; preds = %if.end, %for.body.i
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %for.body.i ], [ 0, %if.end ]
  %1 = add nsw i64 %indvars.iv48.i, 7, !dbg !79
  %arrayidx.i = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %1, !dbg !79
  %2 = load i32* %arrayidx.i, align 4, !dbg !79, !tbaa !67
  %arrayidx2.i = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv48.i, !dbg !79
  %3 = load i32* %arrayidx2.i, align 4, !dbg !79, !tbaa !67
  %shr.i = lshr i32 %3, 1, !dbg !79
  %xor.i = xor i32 %shr.i, %2, !dbg !79
  %and.i = and i32 %3, 1, !dbg !79
  %tobool.i = icmp ne i32 %and.i, 0, !dbg !79
  %cond.i = select i1 %tobool.i, i32 -1900031960, i32 0, !dbg !79
  %xor5.i = xor i32 %xor.i, %cond.i, !dbg !79
  store i32 %xor5.i, i32* %arrayidx2.i, align 4, !dbg !79, !tbaa !67
  %indvars.iv.next49.i = add i64 %indvars.iv48.i, 1, !dbg !83
  tail call void @llvm.dbg.value(metadata !84, i64 0, metadata !85), !dbg !83
  %lftr.wideiv11 = trunc i64 %indvars.iv.next49.i to i32, !dbg !83
  %exitcond12 = icmp eq i32 %lftr.wideiv11, 18, !dbg !83
  br i1 %exitcond12, label %for.body10.i, label %for.body.i, !dbg !83

for.body10.i:                                     ; preds = %for.body.i, %for.body10.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %for.body10.i ], [ 18, %for.body.i ], !dbg !83
  %4 = add nsw i64 %indvars.iv43.i, -18, !dbg !86
  %arrayidx13.i = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %4, !dbg !86
  %5 = load i32* %arrayidx13.i, align 4, !dbg !86, !tbaa !67
  %arrayidx15.i = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv43.i, !dbg !86
  %6 = load i32* %arrayidx15.i, align 4, !dbg !86, !tbaa !67
  %shr16.i = lshr i32 %6, 1, !dbg !86
  %xor17.i = xor i32 %shr16.i, %5, !dbg !86
  %and20.i = and i32 %6, 1, !dbg !86
  %tobool21.i = icmp ne i32 %and20.i, 0, !dbg !86
  %cond22.i = select i1 %tobool21.i, i32 -1900031960, i32 0, !dbg !86
  %xor23.i = xor i32 %xor17.i, %cond22.i, !dbg !86
  store i32 %xor23.i, i32* %arrayidx15.i, align 4, !dbg !86, !tbaa !67
  %indvars.iv.next44.i = add i64 %indvars.iv43.i, 1, !dbg !88
  %lftr.wideiv = trunc i64 %indvars.iv.next44.i to i32, !dbg !88
  %exitcond = icmp eq i32 %lftr.wideiv, 25, !dbg !88
  br i1 %exitcond, label %iterate_tgfsr.exit, label %for.body10.i, !dbg !88

iterate_tgfsr.exit:                               ; preds = %for.body10.i
  store i32 0, i32* @k, align 4, !dbg !89, !tbaa !67
  br label %if.end3, !dbg !90

if.end3:                                          ; preds = %iterate_tgfsr.exit, %if.end
  %7 = phi i32 [ 0, %iterate_tgfsr.exit ], [ %inc, %if.end ]
  %idxprom = sext i32 %7 to i64, !dbg !91
  %arrayidx = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %idxprom, !dbg !91
  %8 = load i32* %arrayidx, align 4, !dbg !91, !tbaa !67
  %shl = shl i32 %8, 7, !dbg !91
  %and = and i32 %shl, 727393536, !dbg !91
  %xor = xor i32 %and, %8, !dbg !91
  tail call void @llvm.dbg.value(metadata !{i32 %xor}, i64 0, metadata !44), !dbg !91
  %shl6 = shl i32 %xor, 15, !dbg !92
  %and7 = and i32 %shl6, -611647488, !dbg !92
  %xor8 = xor i32 %and7, %xor, !dbg !92
  tail call void @llvm.dbg.value(metadata !{i32 %xor8}, i64 0, metadata !44), !dbg !92
  ret i32 %xor8, !dbg !93
}

; Function Attrs: nounwind optsize uwtable
define i32 @gg_urand() #0 {
entry:
  %call = tail call fastcc i32 @next_rand() #3, !dbg !94
  ret i32 %call, !dbg !94
}

; Function Attrs: nounwind optsize uwtable
define double @gg_drand() #0 {
entry:
  %call = tail call fastcc i32 @next_rand() #3, !dbg !95
  %conv = uitofp i32 %call to double, !dbg !95
  %mul = fmul double %conv, 0x3DEFFFFFFFFFFFFF, !dbg !95
  ret double %mul, !dbg !95
}

; Function Attrs: nounwind optsize uwtable
define void @gg_get_rand_state(%struct.gg_rand_state* nocapture %state) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.gg_rand_state* %state}, i64 0, metadata !36), !dbg !96
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !37), !dbg !97
  br label %for.body, !dbg !97

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv, !dbg !99
  %0 = load i32* %arrayidx, align 4, !dbg !99, !tbaa !67
  %arrayidx2 = getelementptr inbounds %struct.gg_rand_state* %state, i64 0, i32 0, i64 %indvars.iv, !dbg !99
  store i32 %0, i32* %arrayidx2, align 4, !dbg !99, !tbaa !67
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !97
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !97
  %exitcond = icmp eq i32 %lftr.wideiv, 25, !dbg !97
  br i1 %exitcond, label %for.end, label %for.body, !dbg !97

for.end:                                          ; preds = %for.body
  %1 = load i32* @k, align 4, !dbg !100, !tbaa !67
  %k = getelementptr inbounds %struct.gg_rand_state* %state, i64 0, i32 1, !dbg !100
  store i32 %1, i32* %k, align 4, !dbg !100, !tbaa !67
  ret void, !dbg !101
}

; Function Attrs: nounwind optsize uwtable
define void @gg_set_rand_state(%struct.gg_rand_state* nocapture %state) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.gg_rand_state* %state}, i64 0, metadata !40), !dbg !102
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !41), !dbg !103
  br label %for.body, !dbg !103

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.gg_rand_state* %state, i64 0, i32 0, i64 %indvars.iv, !dbg !105
  %0 = load i32* %arrayidx, align 4, !dbg !105, !tbaa !67
  %arrayidx2 = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv, !dbg !105
  store i32 %0, i32* %arrayidx2, align 4, !dbg !105, !tbaa !67
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !103
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !103
  %exitcond = icmp eq i32 %lftr.wideiv, 25, !dbg !103
  br i1 %exitcond, label %for.end, label %for.body, !dbg !103

for.end:                                          ; preds = %for.body
  %k = getelementptr inbounds %struct.gg_rand_state* %state, i64 0, i32 1, !dbg !106
  %1 = load i32* %k, align 4, !dbg !106, !tbaa !67
  store i32 %1, i32* @k, align 4, !dbg !106, !tbaa !67
  ret void, !dbg !107
}

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize }
attributes #4 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !50, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !13, metadata !16, metadata !19, metadata !23, metadata !38, metadata !42, metadata !45}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gg_srand", metadata !"gg_srand", metadata !"", i32 118, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @gg_srand, null, null, metadata !9, i32 119} ; [ DW_TAG_subprogram ] [line 118] [def] [scope 119] [gg_srand]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!9 = metadata !{metadata !10, metadata !11}
!10 = metadata !{i32 786689, metadata !4, metadata !"seed", metadata !5, i32 16777334, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 118]
!11 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 120, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 120]
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gg_rand", metadata !"gg_rand", metadata !"", i32 138, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @gg_rand, null, null, metadata !2, i32 139} ; [ DW_TAG_subprogram ] [line 138] [def] [scope 139] [gg_rand]
!14 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !12}
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gg_urand", metadata !"gg_urand", metadata !"", i32 148, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @gg_urand, null, null, metadata !2, i32 149} ; [ DW_TAG_subprogram ] [line 148] [def] [scope 149] [gg_urand]
!17 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !8}
!19 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gg_drand", metadata !"gg_drand", metadata !"", i32 163, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double ()* @gg_drand, null, null, metadata !2, i32 164} ; [ DW_TAG_subprogram ] [line 163] [def] [scope 164] [gg_drand]
!20 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gg_get_rand_state", metadata !"gg_get_rand_state", metadata !"", i32 173, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.gg_rand_state*)* @gg_get_rand_state, null, null, metadata !35, i32 174} ; [ DW_TAG_subprogram ] [line 173] [def] [scope 174] [gg_get_rand_state]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !26}
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from gg_rand_state]
!27 = metadata !{i32 786451, metadata !28, null, metadata !"gg_rand_state", i32 46, i64 832, i64 32, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [gg_rand_state] [line 46, size 832, align 32, offset 0] [from ]
!28 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!29 = metadata !{metadata !30, metadata !34}
!30 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"x", i32 47, i64 800, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [x] [line 47, size 800, align 32, offset 0] [from ]
!31 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800, i64 32, i32 0, i32 0, metadata !8, metadata !32, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 800, align 32, offset 0] [from unsigned int]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786465, i64 0, i64 25}       ; [ DW_TAG_subrange_type ] [0, 24]
!34 = metadata !{i32 786445, metadata !28, metadata !27, metadata !"k", i32 48, i64 32, i64 32, i64 800, i32 0, metadata !12} ; [ DW_TAG_member ] [k] [line 48, size 32, align 32, offset 800] [from int]
!35 = metadata !{metadata !36, metadata !37}
!36 = metadata !{i32 786689, metadata !23, metadata !"state", metadata !5, i32 16777389, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [state] [line 173]
!37 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !5, i32 175, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 175]
!38 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gg_set_rand_state", metadata !"gg_set_rand_state", metadata !"", i32 186, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.gg_rand_state*)* @gg_set_rand_state, null, null, metadata !39, i32 187} ; [ DW_TAG_subprogram ] [line 186] [def] [scope 187] [gg_set_rand_state]
!39 = metadata !{metadata !40, metadata !41}
!40 = metadata !{i32 786689, metadata !38, metadata !"state", metadata !5, i32 16777402, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [state] [line 186]
!41 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !5, i32 188, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 188]
!42 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"next_rand", metadata !"next_rand", metadata !"", i32 86, metadata !17, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @next_rand, null, null, metadata !43, i32 87} ; [ DW_TAG_subprogram ] [line 86] [local] [def] [scope 87] [next_rand]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786688, metadata !42, metadata !"y", metadata !5, i32 88, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 88]
!45 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"iterate_tgfsr", metadata !"iterate_tgfsr", metadata !"", i32 72, metadata !46, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !48, i32 73} ; [ DW_TAG_subprogram ] [line 72] [local] [def] [scope 73] [iterate_tgfsr]
!46 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{null}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786688, metadata !45, metadata !"i", metadata !5, i32 74, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 74]
!50 = metadata !{metadata !51, metadata !52, metadata !53, metadata !55, metadata !57, metadata !58, metadata !59, metadata !59, metadata !60, metadata !59, metadata !60, metadata !61}
!51 = metadata !{i32 786484, i32 0, null, metadata !"x", metadata !"x", metadata !"", metadata !5, i32 53, metadata !31, i32 1, i32 1, [25 x i32]* @x, null} ; [ DW_TAG_variable ] [x] [line 53] [local] [def]
!52 = metadata !{i32 786484, i32 0, null, metadata !"k", metadata !"k", metadata !"", metadata !5, i32 54, metadata !12, i32 1, i32 1, i32* @k, null} ; [ DW_TAG_variable ] [k] [line 54] [local] [def]
!53 = metadata !{i32 786484, i32 0, metadata !5, metadata !"s", metadata !"s", metadata !"s", metadata !5, i32 45, metadata !54, i32 1, i32 1, i32 7, null} ; [ DW_TAG_variable ] [s] [line 45] [local] [def]
!54 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!55 = metadata !{i32 786484, i32 0, metadata !5, metadata !"b", metadata !"b", metadata !"b", metadata !5, i32 48, metadata !56, i32 1, i32 1, i32 727393536, null} ; [ DW_TAG_variable ] [b] [line 48] [local] [def]
!56 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned int]
!57 = metadata !{i32 786484, i32 0, metadata !5, metadata !"t", metadata !"t", metadata !"t", metadata !5, i32 46, metadata !54, i32 1, i32 1, i32 15, null} ; [ DW_TAG_variable ] [t] [line 46] [local] [def]
!58 = metadata !{i32 786484, i32 0, metadata !5, metadata !"c", metadata !"c", metadata !"c", metadata !5, i32 49, metadata !56, i32 1, i32 1, i32 -611647488, null} ; [ DW_TAG_variable ] [c] [line 49] [local] [def]
!59 = metadata !{i32 786484, i32 0, metadata !5, metadata !"m", metadata !"m", metadata !"m", metadata !5, i32 44, metadata !54, i32 1, i32 1, i32 7, null} ; [ DW_TAG_variable ] [m] [line 44] [local] [def]
!60 = metadata !{i32 786484, i32 0, metadata !5, metadata !"a", metadata !"a", metadata !"a", metadata !5, i32 47, metadata !56, i32 1, i32 1, i32 -1900031960, null} ; [ DW_TAG_variable ] [a] [line 47] [local] [def]
!61 = metadata !{i32 786484, i32 0, null, metadata !"rand_initialized", metadata !"rand_initialized", metadata !"", metadata !5, i32 58, metadata !12, i32 1, i32 1, null, null}
!62 = metadata !{i32 118, i32 0, metadata !4, null}
!63 = metadata !{i32 121, i32 0, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !4, i32 121, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.c]
!65 = metadata !{i32 125, i32 0, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !64, i32 121, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.c]
!67 = metadata !{metadata !"int", metadata !68}
!68 = metadata !{metadata !"omnipotent char", metadata !69}
!69 = metadata !{metadata !"Simple C/C++ TBAA"}
!70 = metadata !{i32 126, i32 0, metadata !66, null}
!71 = metadata !{i32 127, i32 0, metadata !66, null}
!72 = metadata !{i32 129, i32 0, metadata !4, null}
!73 = metadata !{i32 131, i32 0, metadata !4, null}
!74 = metadata !{i32 140, i32 0, metadata !13, null}
!75 = metadata !{i32 89, i32 0, metadata !42, null}
!76 = metadata !{i32 90, i32 0, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !42, i32 89, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.c]
!78 = metadata !{i32 93, i32 0, metadata !42, null}
!79 = metadata !{i32 76, i32 0, metadata !80, metadata !81}
!80 = metadata !{i32 786443, metadata !1, metadata !45, i32 75, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.c]
!81 = metadata !{i32 94, i32 0, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !42, i32 93, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.c]
!83 = metadata !{i32 75, i32 0, metadata !80, metadata !81}
!84 = metadata !{i32 18}
!85 = metadata !{i32 786688, metadata !45, metadata !"i", metadata !5, i32 74, metadata !12, i32 0, metadata !81} ; [ DW_TAG_auto_variable ] [i] [line 74]
!86 = metadata !{i32 78, i32 0, metadata !87, metadata !81}
!87 = metadata !{i32 786443, metadata !1, metadata !45, i32 77, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.c]
!88 = metadata !{i32 77, i32 0, metadata !87, metadata !81}
!89 = metadata !{i32 95, i32 0, metadata !82, null}
!90 = metadata !{i32 96, i32 0, metadata !82, null}
!91 = metadata !{i32 97, i32 0, metadata !42, null}
!92 = metadata !{i32 98, i32 0, metadata !42, null}
!93 = metadata !{i32 102, i32 0, metadata !42, null}
!94 = metadata !{i32 150, i32 0, metadata !16, null}
!95 = metadata !{i32 165, i32 0, metadata !19, null}
!96 = metadata !{i32 173, i32 0, metadata !23, null}
!97 = metadata !{i32 176, i32 0, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !23, i32 176, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.c]
!99 = metadata !{i32 177, i32 0, metadata !98, null}
!100 = metadata !{i32 178, i32 0, metadata !23, null}
!101 = metadata !{i32 179, i32 0, metadata !23, null}
!102 = metadata !{i32 186, i32 0, metadata !38, null}
!103 = metadata !{i32 189, i32 0, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !38, i32 189, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.c]
!105 = metadata !{i32 190, i32 0, metadata !104, null}
!106 = metadata !{i32 191, i32 0, metadata !38, null}
!107 = metadata !{i32 192, i32 0, metadata !38, null}
