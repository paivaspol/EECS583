; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/rando.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i32 @make_seed() #0 {
entry:
  %call = tail call i64 @time(i64* null) #3, !dbg !27
  %call1 = tail call i32 @getpid() #3, !dbg !27
  %conv = sext i32 %call1 to i64, !dbg !27
  %add = add nsw i64 %conv, %call, !dbg !27
  %rem = srem i64 %add, 1000000, !dbg !27
  %conv2 = trunc i64 %rem to i32, !dbg !27
  ret i32 %conv2, !dbg !27
}

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #1

; Function Attrs: nounwind optsize
declare i32 @getpid() #1

; Function Attrs: nounwind optsize uwtable
define float @rando(i32* nocapture %ig) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ig}, i64 0, metadata !16), !dbg !28
  tail call void @llvm.dbg.value(metadata !29, i64 0, metadata !18), !dbg !30
  tail call void @llvm.dbg.value(metadata !31, i64 0, metadata !19), !dbg !32
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !20), !dbg !34
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !21), !dbg !36
  %0 = load i32* %ig, align 4, !dbg !37, !tbaa !38
  %ispos = icmp sgt i32 %0, -1, !dbg !37
  %neg = sub i32 0, %0, !dbg !37
  %1 = select i1 %ispos, i32 %0, i32 %neg, !dbg !37
  %rem = srem i32 %1, 100000000, !dbg !37
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !17), !dbg !37
  %div = sdiv i32 %rem, 10000, !dbg !41
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !23), !dbg !41
  %rem1 = srem i32 %rem, 10000, !dbg !42
  tail call void @llvm.dbg.value(metadata !{i32 %rem1}, i64 0, metadata !24), !dbg !42
  tail call void @llvm.dbg.value(metadata !43, i64 0, metadata !25), !dbg !44
  tail call void @llvm.dbg.value(metadata !45, i64 0, metadata !26), !dbg !46
  %mul = mul nsw i32 %div, 5821, !dbg !47
  %mul4 = mul nsw i32 %rem1, 3141, !dbg !47
  %add = add nsw i32 %mul4, %mul, !dbg !47
  %rem5 = srem i32 %add, 10000, !dbg !47
  %mul6 = mul nsw i32 %rem5, 10000, !dbg !47
  %mul7 = mul nsw i32 %rem1, 5821, !dbg !47
  tail call void @llvm.dbg.value(metadata !{i32 %add8}, i64 0, metadata !17), !dbg !47
  %add8 = add i32 %mul7, 1, !dbg !47
  %add9 = add i32 %add8, %mul6, !dbg !48
  %rem10 = srem i32 %add9, 100000000, !dbg !48
  tail call void @llvm.dbg.value(metadata !{i32 %rem10}, i64 0, metadata !17), !dbg !48
  %div11 = sdiv i32 %rem10, 10, !dbg !49
  %conv = sitofp i32 %div11 to float, !dbg !49
  tail call void @llvm.dbg.value(metadata !{float %conv}, i64 0, metadata !22), !dbg !49
  %mul12 = fmul float %conv, 1.000000e+01, !dbg !50
  %div13 = fdiv float %mul12, 1.000000e+08, !dbg !50
  tail call void @llvm.dbg.value(metadata !{float %div13}, i64 0, metadata !22), !dbg !50
  %cmp = fcmp ole float %div13, 0.000000e+00, !dbg !51
  %cmp15 = fcmp ogt float %div13, 1.000000e+00, !dbg !51
  %or.cond = or i1 %cmp, %cmp15, !dbg !51
  %.div13 = select i1 %or.cond, float 0.000000e+00, float %div13, !dbg !51
  tail call void @llvm.dbg.value(metadata !{float %.div13}, i64 0, metadata !22), !dbg !52
  store i32 %rem10, i32* %ig, align 4, !dbg !53, !tbaa !38
  ret float %.div13, !dbg !54
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rando.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/rando.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"make_seed", metadata !"make_seed", metadata !"", i32 37, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @make_seed, null, null, metadata !2, i32 38} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 38] [make_seed]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/rando.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"rando", metadata !"rando", metadata !"", i32 42, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (i32*)* @rando, null, null, metadata !15, i32 44} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 44] [rando]
!10 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !14}
!12 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!13 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26}
!16 = metadata !{i32 786689, metadata !9, metadata !"ig", metadata !5, i32 16777258, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ig] [line 42]
!17 = metadata !{i32 786688, metadata !9, metadata !"irand", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irand] [line 45]
!18 = metadata !{i32 786688, metadata !9, metadata !"m", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 47]
!19 = metadata !{i32 786688, metadata !9, metadata !"rm", metadata !5, i32 48, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rm] [line 48]
!20 = metadata !{i32 786688, metadata !9, metadata !"m1", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m1] [line 49]
!21 = metadata !{i32 786688, metadata !9, metadata !"mult", metadata !5, i32 50, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mult] [line 50]
!22 = metadata !{i32 786688, metadata !9, metadata !"r", metadata !5, i32 52, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 52]
!23 = metadata !{i32 786688, metadata !9, metadata !"irandh", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irandh] [line 53]
!24 = metadata !{i32 786688, metadata !9, metadata !"irandl", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irandl] [line 53]
!25 = metadata !{i32 786688, metadata !9, metadata !"multh", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [multh] [line 53]
!26 = metadata !{i32 786688, metadata !9, metadata !"multl", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [multl] [line 53]
!27 = metadata !{i32 39, i32 0, metadata !4, null}
!28 = metadata !{i32 42, i32 0, metadata !9, null}
!29 = metadata !{i32 100000000}
!30 = metadata !{i32 47, i32 0, metadata !9, null}
!31 = metadata !{float 1.000000e+08}
!32 = metadata !{i32 48, i32 0, metadata !9, null}
!33 = metadata !{i32 10000}
!34 = metadata !{i32 49, i32 0, metadata !9, null}
!35 = metadata !{i32 31415821}
!36 = metadata !{i32 50, i32 0, metadata !9, null}
!37 = metadata !{i32 55, i32 0, metadata !9, null}
!38 = metadata !{metadata !"int", metadata !39}
!39 = metadata !{metadata !"omnipotent char", metadata !40}
!40 = metadata !{metadata !"Simple C/C++ TBAA"}
!41 = metadata !{i32 60, i32 0, metadata !9, null}
!42 = metadata !{i32 61, i32 0, metadata !9, null}
!43 = metadata !{i32 3141}
!44 = metadata !{i32 62, i32 0, metadata !9, null}
!45 = metadata !{i32 5821}
!46 = metadata !{i32 63, i32 0, metadata !9, null}
!47 = metadata !{i32 64, i32 0, metadata !9, null}
!48 = metadata !{i32 65, i32 0, metadata !9, null}
!49 = metadata !{i32 68, i32 0, metadata !9, null}
!50 = metadata !{i32 69, i32 0, metadata !9, null}
!51 = metadata !{i32 70, i32 0, metadata !9, null}
!52 = metadata !{i32 71, i32 0, metadata !9, null}
!53 = metadata !{i32 72, i32 0, metadata !9, null}
!54 = metadata !{i32 74, i32 0, metadata !9, null}
