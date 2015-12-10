; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/rand_ahmat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }

; Function Attrs: nounwind optsize uwtable
define void @random_anti_hermitian(%struct.anti_hermitmat* nocapture %mat_antihermit, %struct.double_prn* %prn_pt) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.anti_hermitmat* %mat_antihermit}, i64 0, metadata !45), !dbg !50
  tail call void @llvm.dbg.value(metadata !{%struct.double_prn* %prn_pt}, i64 0, metadata !46), !dbg !50
  tail call void @llvm.dbg.value(metadata !51, i64 0, metadata !49), !dbg !52
  %call1 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !53
  tail call void @llvm.dbg.value(metadata !{double %call1}, i64 0, metadata !47), !dbg !53
  %call2 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !54
  tail call void @llvm.dbg.value(metadata !{double %call2}, i64 0, metadata !48), !dbg !54
  %mul = fmul double %call2, 0x3FE279A74590331C, !dbg !55
  %add = fadd double %call1, %mul, !dbg !55
  %m00im = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 3, !dbg !55
  store double %add, double* %m00im, align 8, !dbg !55, !tbaa !56
  %add4 = fsub double %mul, %call1, !dbg !59
  %m11im = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 4, !dbg !59
  store double %add4, double* %m11im, align 8, !dbg !59, !tbaa !56
  %mul6 = fmul double %call2, 0xBFF279A74590331C, !dbg !60
  %m22im = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 5, !dbg !60
  store double %mul6, double* %m22im, align 8, !dbg !60, !tbaa !56
  %call7 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !61
  %real = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 0, i32 0, !dbg !61
  store double %call7, double* %real, align 8, !dbg !61, !tbaa !56
  %call8 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !62
  %real9 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 1, i32 0, !dbg !62
  store double %call8, double* %real9, align 8, !dbg !62, !tbaa !56
  %call10 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !63
  %real11 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 2, i32 0, !dbg !63
  store double %call10, double* %real11, align 8, !dbg !63, !tbaa !56
  %call12 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !64
  %imag = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 0, i32 1, !dbg !64
  store double %call12, double* %imag, align 8, !dbg !64, !tbaa !56
  %call14 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !65
  %imag16 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 1, i32 1, !dbg !65
  store double %call14, double* %imag16, align 8, !dbg !65, !tbaa !56
  %call17 = tail call double @gaussian_rand_no(%struct.double_prn* %prn_pt) #3, !dbg !66
  %imag19 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 2, i32 1, !dbg !66
  store double %call17, double* %imag19, align 8, !dbg !66, !tbaa !56
  ret void, !dbg !67
}

; Function Attrs: optsize
declare double @gaussian_rand_no(%struct.double_prn*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/rand_ahmat.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/rand_ahmat.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"random_anti_hermitian", metadata !"random_anti_hermitian", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.anti_hermitmat*, %struct.double_prn*)* @random_anti_hermitian, null, null, metadata !44, i32 14} ; [ DW_TAG_subprogram ] [line 14] [def] [random_anti_hermitian]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/rand_ahmat.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !27}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from anti_hermitmat]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"anti_hermitmat", i32 17, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [anti_hermitmat] [line 17, size 0, align 0, offset 0] [from ]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 16, i64 640, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 16, size 640, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/su3.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"m01", i32 17, i64 128, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [m01] [line 17, size 128, align 64, offset 0] [from complex]
!14 = metadata !{i32 786454, metadata !11, null, metadata !"complex", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [complex] [line 76, size 0, align 0, offset 0] [from ]
!15 = metadata !{i32 786451, metadata !16, null, metadata !"", i32 73, i64 128, i64 64, i32 0, i32 0, null, metadata !17, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 73, size 128, align 64, offset 0] [from ]
!16 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/complex.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!17 = metadata !{metadata !18, metadata !20}
!18 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"real", i32 74, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [real] [line 74, size 64, align 64, offset 0] [from double]
!19 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!20 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"imag", i32 75, i64 64, i64 64, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [imag] [line 75, size 64, align 64, offset 64] [from double]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"m02", i32 17, i64 128, i64 64, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [m02] [line 17, size 128, align 64, offset 128] [from complex]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"m12", i32 17, i64 128, i64 64, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [m12] [line 17, size 128, align 64, offset 256] [from complex]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"m00im", i32 17, i64 64, i64 64, i64 384, i32 0, metadata !19} ; [ DW_TAG_member ] [m00im] [line 17, size 64, align 64, offset 384] [from double]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"m11im", i32 17, i64 64, i64 64, i64 448, i32 0, metadata !19} ; [ DW_TAG_member ] [m11im] [line 17, size 64, align 64, offset 448] [from double]
!25 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"m22im", i32 17, i64 64, i64 64, i64 512, i32 0, metadata !19} ; [ DW_TAG_member ] [m22im] [line 17, size 64, align 64, offset 512] [from double]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"space", i32 17, i64 64, i64 64, i64 576, i32 0, metadata !19} ; [ DW_TAG_member ] [space] [line 17, size 64, align 64, offset 576] [from double]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double_prn]
!28 = metadata !{i32 786454, metadata !1, null, metadata !"double_prn", i32 11, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [double_prn] [line 11, size 0, align 0, offset 0] [from ]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"", i32 6, i64 704, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 6, size 704, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/random.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"r0", i32 8, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [r0] [line 8, size 64, align 64, offset 0] [from long unsigned int]
!33 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!34 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"r1", i32 8, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [r1] [line 8, size 64, align 64, offset 64] [from long unsigned int]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"r2", i32 8, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [r2] [line 8, size 64, align 64, offset 128] [from long unsigned int]
!36 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"r3", i32 8, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [r3] [line 8, size 64, align 64, offset 192] [from long unsigned int]
!37 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"r4", i32 8, i64 64, i64 64, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ] [r4] [line 8, size 64, align 64, offset 256] [from long unsigned int]
!38 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"r5", i32 8, i64 64, i64 64, i64 320, i32 0, metadata !33} ; [ DW_TAG_member ] [r5] [line 8, size 64, align 64, offset 320] [from long unsigned int]
!39 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"r6", i32 8, i64 64, i64 64, i64 384, i32 0, metadata !33} ; [ DW_TAG_member ] [r6] [line 8, size 64, align 64, offset 384] [from long unsigned int]
!40 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"multiplier", i32 9, i64 64, i64 64, i64 448, i32 0, metadata !33} ; [ DW_TAG_member ] [multiplier] [line 9, size 64, align 64, offset 448] [from long unsigned int]
!41 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"addend", i32 9, i64 64, i64 64, i64 512, i32 0, metadata !33} ; [ DW_TAG_member ] [addend] [line 9, size 64, align 64, offset 512] [from long unsigned int]
!42 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"ic_state", i32 9, i64 64, i64 64, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [ic_state] [line 9, size 64, align 64, offset 576] [from long unsigned int]
!43 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"scale", i32 10, i64 64, i64 64, i64 640, i32 0, metadata !19} ; [ DW_TAG_member ] [scale] [line 10, size 64, align 64, offset 640] [from double]
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48, metadata !49}
!45 = metadata !{i32 786689, metadata !4, metadata !"mat_antihermit", metadata !5, i32 16777230, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mat_antihermit] [line 14]
!46 = metadata !{i32 786689, metadata !4, metadata !"prn_pt", metadata !5, i32 33554446, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prn_pt] [line 14]
!47 = metadata !{i32 786688, metadata !4, metadata !"r3", metadata !5, i32 15, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r3] [line 15]
!48 = metadata !{i32 786688, metadata !4, metadata !"r8", metadata !5, i32 15, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r8] [line 15]
!49 = metadata !{i32 786688, metadata !4, metadata !"sqrt_third", metadata !5, i32 16, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sqrt_third] [line 16]
!50 = metadata !{i32 14, i32 0, metadata !4, null}
!51 = metadata !{double 0x3FE279A74590331C}
!52 = metadata !{i32 18, i32 0, metadata !4, null}
!53 = metadata !{i32 19, i32 0, metadata !4, null}
!54 = metadata !{i32 20, i32 0, metadata !4, null}
!55 = metadata !{i32 21, i32 0, metadata !4, null}
!56 = metadata !{metadata !"double", metadata !57}
!57 = metadata !{metadata !"omnipotent char", metadata !58}
!58 = metadata !{metadata !"Simple C/C++ TBAA"}
!59 = metadata !{i32 22, i32 0, metadata !4, null}
!60 = metadata !{i32 23, i32 0, metadata !4, null}
!61 = metadata !{i32 24, i32 0, metadata !4, null}
!62 = metadata !{i32 25, i32 0, metadata !4, null}
!63 = metadata !{i32 26, i32 0, metadata !4, null}
!64 = metadata !{i32 27, i32 0, metadata !4, null}
!65 = metadata !{i32 28, i32 0, metadata !4, null}
!66 = metadata !{i32 29, i32 0, metadata !4, null}
!67 = metadata !{i32 31, i32 0, metadata !4, null}
