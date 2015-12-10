; ModuleID = '../../SPEC/benchspec/CPU2006/462.libquantum/src/classic.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readnone uwtable
define i32 @quantum_ipow(i32 %a, i32 %b) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !10), !dbg !48
  tail call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !11), !dbg !48
  tail call void @llvm.dbg.value(metadata !49, i64 0, metadata !13), !dbg !50
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !12), !dbg !51
  %cmp3 = icmp sgt i32 %b, 0, !dbg !51
  br i1 %cmp3, label %for.body, label %for.end, !dbg !51

for.body:                                         ; preds = %entry, %for.body
  %r.05 = phi i32 [ %mul, %for.body ], [ 1, %entry ]
  %i.04 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %mul = mul nsw i32 %r.05, %a, !dbg !53
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !13), !dbg !53
  %inc = add nsw i32 %i.04, 1, !dbg !51
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !12), !dbg !51
  %exitcond = icmp eq i32 %inc, %b, !dbg !51
  br i1 %exitcond, label %for.end, label %for.body, !dbg !51

for.end:                                          ; preds = %for.body, %entry
  %r.0.lcssa = phi i32 [ 1, %entry ], [ %mul, %for.body ]
  ret i32 %r.0.lcssa, !dbg !54
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @quantum_gcd(i32 %u, i32 %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %u}, i64 0, metadata !16), !dbg !55
  tail call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !17), !dbg !55
  %tobool3 = icmp eq i32 %v, 0, !dbg !56
  br i1 %tobool3, label %while.end, label %while.body, !dbg !56

while.body:                                       ; preds = %entry, %while.body
  %u.addr.05 = phi i32 [ %v.addr.04, %while.body ], [ %u, %entry ]
  %v.addr.04 = phi i32 [ %rem, %while.body ], [ %v, %entry ]
  %rem = srem i32 %u.addr.05, %v.addr.04, !dbg !57
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !18), !dbg !57
  tail call void @llvm.dbg.value(metadata !{i32 %v.addr.04}, i64 0, metadata !16), !dbg !59
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !17), !dbg !60
  %tobool = icmp eq i32 %rem, 0, !dbg !56
  br i1 %tobool, label %while.end, label %while.body, !dbg !56

while.end:                                        ; preds = %while.body, %entry
  %u.addr.0.lcssa = phi i32 [ %u, %entry ], [ %v.addr.04, %while.body ]
  ret i32 %u.addr.0.lcssa, !dbg !61
}

; Function Attrs: nounwind optsize uwtable
define void @quantum_frac_approx(i32* nocapture %a, i32* nocapture %b, i32 %width) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %a}, i64 0, metadata !24), !dbg !62
  tail call void @llvm.dbg.value(metadata !{i32* %b}, i64 0, metadata !25), !dbg !62
  tail call void @llvm.dbg.value(metadata !{i32 %width}, i64 0, metadata !26), !dbg !62
  %0 = load i32* %a, align 4, !dbg !63, !tbaa !64
  %conv = sitofp i32 %0 to float, !dbg !63
  %1 = load i32* %b, align 4, !dbg !63, !tbaa !64
  %conv1 = sitofp i32 %1 to float, !dbg !63
  %div = fdiv float %conv, %conv1, !dbg !63
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !27), !dbg !63
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !29), !dbg !67
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !31), !dbg !68
  tail call void @llvm.dbg.value(metadata !49, i64 0, metadata !32), !dbg !68
  tail call void @llvm.dbg.value(metadata !49, i64 0, metadata !33), !dbg !68
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !34), !dbg !68
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !35), !dbg !68
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !36), !dbg !68
  %shl = shl i32 1, %width, !dbg !69
  %conv20 = fpext float %div to double, !dbg !71
  %mul23 = shl nsw i32 %shl, 1, !dbg !71
  %conv24 = sitofp i32 %mul23 to double, !dbg !71
  %div25 = fdiv double 1.000000e+00, %conv24, !dbg !71
  br label %do.body, !dbg !72

do.body:                                          ; preds = %if.end, %entry
  %g.0 = phi float [ %div, %entry ], [ %conv10, %if.end ]
  %num2.0 = phi i32 [ 0, %entry ], [ %num1.0, %if.end ]
  %den2.0 = phi i32 [ 1, %entry ], [ %den1.0, %if.end ]
  %num1.0 = phi i32 [ 1, %entry ], [ %add14, %if.end ]
  %den1.0 = phi i32 [ 0, %entry ], [ %add11, %if.end ]
  %num.0 = phi i32 [ 0, %entry ], [ %add14, %if.end ]
  %conv2 = fpext float %g.0 to double, !dbg !73
  %add = fadd double %conv2, 5.000000e-06, !dbg !73
  %conv3 = fptosi double %add to i32, !dbg !73
  tail call void @llvm.dbg.value(metadata !{i32 %conv3}, i64 0, metadata !30), !dbg !73
  tail call void @llvm.dbg.value(metadata !{float %conv7}, i64 0, metadata !29), !dbg !74
  tail call void @llvm.dbg.value(metadata !{float %conv10}, i64 0, metadata !29), !dbg !75
  %mul = mul nsw i32 %den1.0, %conv3, !dbg !69
  %add11 = add nsw i32 %mul, %den2.0, !dbg !69
  %cmp = icmp sgt i32 %add11, %shl, !dbg !69
  br i1 %cmp, label %do.end, label %if.end, !dbg !69

if.end:                                           ; preds = %do.body
  %conv4 = sitofp i32 %conv3 to double, !dbg !74
  %sub = fadd double %conv4, -5.000000e-06, !dbg !74
  %sub6 = fsub double %conv2, %sub, !dbg !74
  %conv7 = fptrunc double %sub6 to float, !dbg !74
  %conv10 = fdiv float 1.000000e+00, %conv7, !dbg !75
  %mul13 = mul nsw i32 %conv3, %num1.0, !dbg !76
  %add14 = add nsw i32 %mul13, %num2.0, !dbg !76
  tail call void @llvm.dbg.value(metadata !{i32 %add14}, i64 0, metadata !35), !dbg !76
  tail call void @llvm.dbg.value(metadata !{i32 %add11}, i64 0, metadata !36), !dbg !77
  tail call void @llvm.dbg.value(metadata !{i32 %num1.0}, i64 0, metadata !31), !dbg !78
  tail call void @llvm.dbg.value(metadata !{i32 %den1.0}, i64 0, metadata !32), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i32 %add14}, i64 0, metadata !33), !dbg !80
  tail call void @llvm.dbg.value(metadata !{i32 %add11}, i64 0, metadata !34), !dbg !81
  %conv17 = sitofp i32 %add14 to double, !dbg !71
  %conv18 = sitofp i32 %add11 to double, !dbg !71
  %div19 = fdiv double %conv17, %conv18, !dbg !71
  %sub21 = fsub double %div19, %conv20, !dbg !71
  %call = tail call double @fabs(double %sub21) #4, !dbg !71
  %cmp26 = fcmp ogt double %call, %div25, !dbg !71
  br i1 %cmp26, label %do.body, label %do.end, !dbg !71

do.end:                                           ; preds = %do.body, %if.end
  %num.1 = phi i32 [ %num.0, %do.body ], [ %add14, %if.end ]
  %den.1 = phi i32 [ %den1.0, %do.body ], [ %add11, %if.end ]
  store i32 %num.1, i32* %a, align 4, !dbg !82, !tbaa !64
  store i32 %den.1, i32* %b, align 4, !dbg !83, !tbaa !64
  ret void, !dbg !84
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #2

; Function Attrs: nounwind optsize readnone uwtable
define i32 @quantum_getwidth(i32 %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !41), !dbg !85
  tail call void @llvm.dbg.value(metadata !49, i64 0, metadata !42), !dbg !86
  br label %for.cond, !dbg !86

for.cond:                                         ; preds = %for.cond, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.cond ]
  %shl = shl i32 1, %i.0, !dbg !86
  %cmp = icmp slt i32 %shl, %n, !dbg !86
  %inc = add nsw i32 %i.0, 1, !dbg !86
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !42), !dbg !86
  br i1 %cmp, label %for.cond, label %for.end, !dbg !86

for.end:                                          ; preds = %for.cond
  ret i32 %i.0, !dbg !88
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @quantum_inverse_mod(i32 %n, i32 %c) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !45), !dbg !89
  tail call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !46), !dbg !89
  tail call void @llvm.dbg.value(metadata !49, i64 0, metadata !47), !dbg !90
  br label %for.cond, !dbg !90

for.cond:                                         ; preds = %for.cond, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.cond ]
  %mul = mul nsw i32 %i.0, %c, !dbg !90
  %rem = srem i32 %mul, %n, !dbg !90
  %cmp = icmp eq i32 %rem, 1, !dbg !90
  %inc = add nsw i32 %i.0, 1, !dbg !90
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !47), !dbg !90
  br i1 %cmp, label %for.end, label %for.cond, !dbg !90

for.end:                                          ; preds = %for.cond
  ret i32 %i.0, !dbg !92
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/462.libquantum/src/classic.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/462.libquantum/src/classic.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !14, metadata !19, metadata !37, metadata !43}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"quantum_ipow", metadata !"quantum_ipow", metadata !"", i32 37, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @quantum_ipow, null, null, metadata !9, i32 38} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 38] [quantum_ipow]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/462.libquantum/src/classic.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !11, metadata !12, metadata !13}
!10 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777253, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 37]
!11 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !5, i32 33554469, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 37]
!12 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 39]
!13 = metadata !{i32 786688, metadata !4, metadata !"r", metadata !5, i32 40, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 40]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"quantum_gcd", metadata !"quantum_gcd", metadata !"", i32 51, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @quantum_gcd, null, null, metadata !15, i32 52} ; [ DW_TAG_subprogram ] [line 51] [def] [scope 52] [quantum_gcd]
!15 = metadata !{metadata !16, metadata !17, metadata !18}
!16 = metadata !{i32 786689, metadata !14, metadata !"u", metadata !5, i32 16777267, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [u] [line 51]
!17 = metadata !{i32 786689, metadata !14, metadata !"v", metadata !5, i32 33554483, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 51]
!18 = metadata !{i32 786688, metadata !14, metadata !"r", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 53]
!19 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"quantum_frac_approx", metadata !"quantum_frac_approx", metadata !"", i32 67, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i32*, i32)* @quantum_frac_approx, null, null, metadata !23, i32 68} ; [ DW_TAG_subprogram ] [line 67] [def] [scope 68] [quantum_frac_approx]
!20 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{null, metadata !22, metadata !22, metadata !8}
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !27, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36}
!24 = metadata !{i32 786689, metadata !19, metadata !"a", metadata !5, i32 16777283, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 67]
!25 = metadata !{i32 786689, metadata !19, metadata !"b", metadata !5, i32 33554499, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 67]
!26 = metadata !{i32 786689, metadata !19, metadata !"width", metadata !5, i32 50331715, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [width] [line 67]
!27 = metadata !{i32 786688, metadata !19, metadata !"f", metadata !5, i32 69, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 69]
!28 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!29 = metadata !{i32 786688, metadata !19, metadata !"g", metadata !5, i32 70, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 70]
!30 = metadata !{i32 786688, metadata !19, metadata !"i", metadata !5, i32 71, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 71]
!31 = metadata !{i32 786688, metadata !19, metadata !"num2", metadata !5, i32 71, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num2] [line 71]
!32 = metadata !{i32 786688, metadata !19, metadata !"den2", metadata !5, i32 71, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [den2] [line 71]
!33 = metadata !{i32 786688, metadata !19, metadata !"num1", metadata !5, i32 71, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num1] [line 71]
!34 = metadata !{i32 786688, metadata !19, metadata !"den1", metadata !5, i32 71, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [den1] [line 71]
!35 = metadata !{i32 786688, metadata !19, metadata !"num", metadata !5, i32 71, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 71]
!36 = metadata !{i32 786688, metadata !19, metadata !"den", metadata !5, i32 71, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [den] [line 71]
!37 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"quantum_getwidth", metadata !"quantum_getwidth", metadata !"", i32 104, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @quantum_getwidth, null, null, metadata !40, i32 105} ; [ DW_TAG_subprogram ] [line 104] [def] [scope 105] [quantum_getwidth]
!38 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!39 = metadata !{metadata !8, metadata !8}
!40 = metadata !{metadata !41, metadata !42}
!41 = metadata !{i32 786689, metadata !37, metadata !"n", metadata !5, i32 16777320, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 104]
!42 = metadata !{i32 786688, metadata !37, metadata !"i", metadata !5, i32 106, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 106]
!43 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"quantum_inverse_mod", metadata !"quantum_inverse_mod", metadata !"", i32 116, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @quantum_inverse_mod, null, null, metadata !44, i32 117} ; [ DW_TAG_subprogram ] [line 116] [def] [scope 117] [quantum_inverse_mod]
!44 = metadata !{metadata !45, metadata !46, metadata !47}
!45 = metadata !{i32 786689, metadata !43, metadata !"n", metadata !5, i32 16777332, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 116]
!46 = metadata !{i32 786689, metadata !43, metadata !"c", metadata !5, i32 33554548, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 116]
!47 = metadata !{i32 786688, metadata !43, metadata !"i", metadata !5, i32 118, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 118]
!48 = metadata !{i32 37, i32 0, metadata !4, null}
!49 = metadata !{i32 1}
!50 = metadata !{i32 40, i32 0, metadata !4, null}
!51 = metadata !{i32 42, i32 0, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !4, i32 42, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/462.libquantum/src/classic.c]
!53 = metadata !{i32 43, i32 0, metadata !52, null}
!54 = metadata !{i32 45, i32 0, metadata !4, null}
!55 = metadata !{i32 51, i32 0, metadata !14, null}
!56 = metadata !{i32 55, i32 0, metadata !14, null}
!57 = metadata !{i32 57, i32 0, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !14, i32 56, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/462.libquantum/src/classic.c]
!59 = metadata !{i32 58, i32 0, metadata !58, null} ; [ DW_TAG_imported_module ]
!60 = metadata !{i32 59, i32 0, metadata !58, null}
!61 = metadata !{i32 61, i32 0, metadata !14, null}
!62 = metadata !{i32 67, i32 0, metadata !19, null}
!63 = metadata !{i32 69, i32 0, metadata !19, null}
!64 = metadata !{metadata !"int", metadata !65}
!65 = metadata !{metadata !"omnipotent char", metadata !66}
!66 = metadata !{metadata !"Simple C/C++ TBAA"}
!67 = metadata !{i32 70, i32 0, metadata !19, null}
!68 = metadata !{i32 71, i32 0, metadata !19, null}
!69 = metadata !{i32 80, i32 0, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !19, i32 74, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/462.libquantum/src/classic.c]
!71 = metadata !{i32 91, i32 0, metadata !19, null}
!72 = metadata !{i32 73, i32 0, metadata !19, null}
!73 = metadata !{i32 75, i32 0, metadata !70, null}
!74 = metadata !{i32 77, i32 0, metadata !70, null}
!75 = metadata !{i32 78, i32 0, metadata !70, null}
!76 = metadata !{i32 83, i32 0, metadata !70, null}
!77 = metadata !{i32 84, i32 0, metadata !70, null}
!78 = metadata !{i32 86, i32 0, metadata !70, null}
!79 = metadata !{i32 87, i32 0, metadata !70, null}
!80 = metadata !{i32 88, i32 0, metadata !70, null}
!81 = metadata !{i32 89, i32 0, metadata !70, null}
!82 = metadata !{i32 95, i32 0, metadata !19, null}
!83 = metadata !{i32 96, i32 0, metadata !19, null}
!84 = metadata !{i32 98, i32 0, metadata !19, null}
!85 = metadata !{i32 104, i32 0, metadata !37, null}
!86 = metadata !{i32 108, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !37, i32 108, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/462.libquantum/src/classic.c]
!88 = metadata !{i32 110, i32 0, metadata !37, null}
!89 = metadata !{i32 116, i32 0, metadata !43, null}
!90 = metadata !{i32 120, i32 0, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !43, i32 120, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/462.libquantum/src/classic.c]
!92 = metadata !{i32 122, i32 0, metadata !43, null}
