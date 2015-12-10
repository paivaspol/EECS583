; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/gaussrand.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }

@gaussian_rand_no.iset = internal unnamed_addr global i1 false
@gaussian_rand_no.gset = internal unnamed_addr global double 0.000000e+00, align 8

; Function Attrs: nounwind optsize uwtable
define double @gaussian_rand_no(%struct.double_prn* %prn_pt) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.double_prn* %prn_pt}, i64 0, metadata !27), !dbg !36
  %.b = load i1* @gaussian_rand_no.iset, align 1
  br i1 %.b, label %if.else, label %do.body, !dbg !37

do.body:                                          ; preds = %entry, %do.body
  %call = tail call double @myrand(%struct.double_prn* %prn_pt) #4, !dbg !38
  %mul = fmul double %call, 2.000000e+00, !dbg !38
  %sub = fadd double %mul, -1.000000e+00, !dbg !38
  tail call void @llvm.dbg.value(metadata !{double %sub}, i64 0, metadata !30), !dbg !38
  %call1 = tail call double @myrand(%struct.double_prn* %prn_pt) #4, !dbg !41
  %mul2 = fmul double %call1, 2.000000e+00, !dbg !41
  %sub3 = fadd double %mul2, -1.000000e+00, !dbg !41
  tail call void @llvm.dbg.value(metadata !{double %sub3}, i64 0, metadata !31), !dbg !41
  %mul4 = fmul double %sub, %sub, !dbg !42
  %mul5 = fmul double %sub3, %sub3, !dbg !42
  %add = fadd double %mul4, %mul5, !dbg !42
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !29), !dbg !42
  %cmp6 = fcmp ult double %add, 1.000000e+00, !dbg !43
  br i1 %cmp6, label %do.end, label %do.body, !dbg !43

do.end:                                           ; preds = %do.body
  %call7 = tail call double @log(double %add) #4, !dbg !44
  %sub8 = fsub double -0.000000e+00, %call7, !dbg !44
  %div = fdiv double %sub8, %add, !dbg !44
  %call9 = tail call double @sqrt(double %div) #4, !dbg !44
  tail call void @llvm.dbg.value(metadata !{double %call9}, i64 0, metadata !28), !dbg !44
  %mul10 = fmul double %sub, %call9, !dbg !45
  store double %mul10, double* @gaussian_rand_no.gset, align 8, !dbg !45, !tbaa !46
  store i1 true, i1* @gaussian_rand_no.iset, align 1
  %mul11 = fmul double %sub3, %call9, !dbg !49
  br label %return, !dbg !49

if.else:                                          ; preds = %entry
  store i1 false, i1* @gaussian_rand_no.iset, align 1
  %0 = load double* @gaussian_rand_no.gset, align 8, !dbg !50, !tbaa !46
  br label %return, !dbg !50

return:                                           ; preds = %if.else, %do.end
  %retval.0 = phi double [ %mul11, %do.end ], [ %0, %if.else ]
  ret double %retval.0, !dbg !52
}

; Function Attrs: optsize
declare double @myrand(%struct.double_prn*) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize
declare double @log(double) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !32, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/gaussrand.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/gaussrand.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gaussian_rand_no", metadata !"gaussian_rand_no", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct.double_prn*)* @gaussian_rand_no, null, null, metadata !26, i32 16} ; [ DW_TAG_subprogram ] [line 16] [def] [gaussian_rand_no]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/gaussrand.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double_prn]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"double_prn", i32 11, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [double_prn] [line 11, size 0, align 0, offset 0] [from ]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"", i32 6, i64 704, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 6, size 704, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/random.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"r0", i32 8, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [r0] [line 8, size 64, align 64, offset 0] [from long unsigned int]
!15 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"r1", i32 8, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [r1] [line 8, size 64, align 64, offset 64] [from long unsigned int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"r2", i32 8, i64 64, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [r2] [line 8, size 64, align 64, offset 128] [from long unsigned int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"r3", i32 8, i64 64, i64 64, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [r3] [line 8, size 64, align 64, offset 192] [from long unsigned int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"r4", i32 8, i64 64, i64 64, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [r4] [line 8, size 64, align 64, offset 256] [from long unsigned int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"r5", i32 8, i64 64, i64 64, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [r5] [line 8, size 64, align 64, offset 320] [from long unsigned int]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"r6", i32 8, i64 64, i64 64, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [r6] [line 8, size 64, align 64, offset 384] [from long unsigned int]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"multiplier", i32 9, i64 64, i64 64, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [multiplier] [line 9, size 64, align 64, offset 448] [from long unsigned int]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"addend", i32 9, i64 64, i64 64, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [addend] [line 9, size 64, align 64, offset 512] [from long unsigned int]
!24 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ic_state", i32 9, i64 64, i64 64, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [ic_state] [line 9, size 64, align 64, offset 576] [from long unsigned int]
!25 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"scale", i32 10, i64 64, i64 64, i64 640, i32 0, metadata !8} ; [ DW_TAG_member ] [scale] [line 10, size 64, align 64, offset 640] [from double]
!26 = metadata !{metadata !27, metadata !28, metadata !29, metadata !30, metadata !31}
!27 = metadata !{i32 786689, metadata !4, metadata !"prn_pt", metadata !5, i32 16777232, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prn_pt] [line 16]
!28 = metadata !{i32 786688, metadata !4, metadata !"fac", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fac] [line 19]
!29 = metadata !{i32 786688, metadata !4, metadata !"r", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 19]
!30 = metadata !{i32 786688, metadata !4, metadata !"v1", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v1] [line 19]
!31 = metadata !{i32 786688, metadata !4, metadata !"v2", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v2] [line 19]
!32 = metadata !{metadata !33, metadata !35}
!33 = metadata !{i32 786484, i32 0, metadata !4, metadata !"iset", metadata !"iset", metadata !"", metadata !5, i32 17, metadata !34, i32 1, i32 1, null, null}
!34 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!35 = metadata !{i32 786484, i32 0, metadata !4, metadata !"gset", metadata !"gset", metadata !"", metadata !5, i32 18, metadata !8, i32 1, i32 1, double* @gaussian_rand_no.gset, null} ; [ DW_TAG_variable ] [gset] [line 18] [local] [def]
!36 = metadata !{i32 16, i32 0, metadata !4, null}
!37 = metadata !{i32 21, i32 0, metadata !4, null}
!38 = metadata !{i32 23, i32 0, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !40, i32 22, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/gaussrand.c]
!40 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/gaussrand.c]
!41 = metadata !{i32 24, i32 0, metadata !39, null}
!42 = metadata !{i32 25, i32 0, metadata !39, null}
!43 = metadata !{i32 26, i32 0, metadata !39, null}
!44 = metadata !{i32 27, i32 0, metadata !40, null}
!45 = metadata !{i32 28, i32 0, metadata !40, null}
!46 = metadata !{metadata !"double", metadata !47}
!47 = metadata !{metadata !"omnipotent char", metadata !48}
!48 = metadata !{metadata !"Simple C/C++ TBAA"}
!49 = metadata !{i32 30, i32 0, metadata !40, null}
!50 = metadata !{i32 33, i32 0, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !4, i32 31, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/gaussrand.c]
!52 = metadata !{i32 35, i32 0, metadata !4, null}
