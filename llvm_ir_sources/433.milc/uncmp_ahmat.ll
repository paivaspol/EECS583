; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/uncmp_ahmat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }

; Function Attrs: nounwind optsize uwtable
define void @uncompress_anti_hermitian(%struct.anti_hermitmat* nocapture %mat_antihermit, %struct.su3_matrix* nocapture %mat_su3) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.anti_hermitmat* %mat_antihermit}, i64 0, metadata !36), !dbg !39
  tail call void @llvm.dbg.value(metadata !{%struct.su3_matrix* %mat_su3}, i64 0, metadata !37), !dbg !40
  %m00im = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 3, !dbg !41
  %0 = load double* %m00im, align 8, !dbg !41, !tbaa !42
  %imag = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 0, i32 1, !dbg !41
  store double %0, double* %imag, align 8, !dbg !41, !tbaa !42
  %real = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 0, i32 0, !dbg !45
  store double 0.000000e+00, double* %real, align 8, !dbg !45, !tbaa !42
  %m11im = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 4, !dbg !46
  %1 = load double* %m11im, align 8, !dbg !46, !tbaa !42
  %imag8 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 1, i32 1, !dbg !46
  store double %1, double* %imag8, align 8, !dbg !46, !tbaa !42
  %real12 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 1, i32 0, !dbg !47
  store double 0.000000e+00, double* %real12, align 8, !dbg !47, !tbaa !42
  %m22im = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 5, !dbg !48
  %2 = load double* %m22im, align 8, !dbg !48, !tbaa !42
  %imag16 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 2, i32 1, !dbg !48
  store double %2, double* %imag16, align 8, !dbg !48, !tbaa !42
  %real20 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 2, i32 0, !dbg !49
  store double 0.000000e+00, double* %real20, align 8, !dbg !49, !tbaa !42
  %imag21 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 0, i32 1, !dbg !50
  %3 = load double* %imag21, align 8, !dbg !50, !tbaa !42
  %imag25 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 1, i32 1, !dbg !50
  store double %3, double* %imag25, align 8, !dbg !50, !tbaa !42
  %real27 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 0, i32 0, !dbg !51
  %4 = load double* %real27, align 8, !dbg !51, !tbaa !42
  tail call void @llvm.dbg.value(metadata !{double %4}, i64 0, metadata !38), !dbg !51
  %real31 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 1, i32 0, !dbg !52
  store double %4, double* %real31, align 8, !dbg !52, !tbaa !42
  %sub = fsub double -0.000000e+00, %4, !dbg !53
  %real35 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 0, i32 0, !dbg !53
  store double %sub, double* %real35, align 8, !dbg !53, !tbaa !42
  %5 = load double* %imag21, align 8, !dbg !54, !tbaa !42
  %imag41 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 0, i32 1, !dbg !54
  store double %5, double* %imag41, align 8, !dbg !54, !tbaa !42
  %imag42 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 1, i32 1, !dbg !55
  %6 = load double* %imag42, align 8, !dbg !55, !tbaa !42
  %imag46 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 2, i32 1, !dbg !55
  store double %6, double* %imag46, align 8, !dbg !55, !tbaa !42
  %real48 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 1, i32 0, !dbg !56
  %7 = load double* %real48, align 8, !dbg !56, !tbaa !42
  tail call void @llvm.dbg.value(metadata !{double %7}, i64 0, metadata !38), !dbg !56
  %real52 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 0, i64 2, i32 0, !dbg !57
  store double %7, double* %real52, align 8, !dbg !57, !tbaa !42
  %sub53 = fsub double -0.000000e+00, %7, !dbg !58
  %real57 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 0, i32 0, !dbg !58
  store double %sub53, double* %real57, align 8, !dbg !58, !tbaa !42
  %8 = load double* %imag42, align 8, !dbg !59, !tbaa !42
  %imag63 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 0, i32 1, !dbg !59
  store double %8, double* %imag63, align 8, !dbg !59, !tbaa !42
  %imag64 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 2, i32 1, !dbg !60
  %9 = load double* %imag64, align 8, !dbg !60, !tbaa !42
  %imag68 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 2, i32 1, !dbg !60
  store double %9, double* %imag68, align 8, !dbg !60, !tbaa !42
  %real70 = getelementptr inbounds %struct.anti_hermitmat* %mat_antihermit, i64 0, i32 2, i32 0, !dbg !61
  %10 = load double* %real70, align 8, !dbg !61, !tbaa !42
  tail call void @llvm.dbg.value(metadata !{double %10}, i64 0, metadata !38), !dbg !61
  %real74 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 1, i64 2, i32 0, !dbg !62
  store double %10, double* %real74, align 8, !dbg !62, !tbaa !42
  %sub75 = fsub double -0.000000e+00, %10, !dbg !63
  %real79 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 1, i32 0, !dbg !63
  store double %sub75, double* %real79, align 8, !dbg !63, !tbaa !42
  %11 = load double* %imag64, align 8, !dbg !64, !tbaa !42
  %imag85 = getelementptr inbounds %struct.su3_matrix* %mat_su3, i64 0, i32 0, i64 2, i64 1, i32 1, !dbg !64
  store double %11, double* %imag85, align 8, !dbg !64, !tbaa !42
  ret void, !dbg !65
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/uncmp_ahmat.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/uncmp_ahmat.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"uncompress_anti_hermitian", metadata !"uncompress_anti_hermitian", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.anti_hermitmat*, %struct.su3_matrix*)* @uncompress_anti_hermitian, null, null, metadata !35, i32 12} ; [ DW_TAG_subprogram ] [line 11] [def] [scope 12] [uncompress_anti_hermitian]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/uncmp_ahmat.c]
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
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from su3_matrix]
!28 = metadata !{i32 786454, metadata !1, null, metadata !"su3_matrix", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [su3_matrix] [line 14, size 0, align 0, offset 0] [from ]
!29 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 14, i64 1152, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 1152, align 64, offset 0] [from ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786445, metadata !11, metadata !29, metadata !"e", i32 14, i64 1152, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [e] [line 14, size 1152, align 64, offset 0] [from ]
!32 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !14, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from complex]
!33 = metadata !{metadata !34, metadata !34}
!34 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!35 = metadata !{metadata !36, metadata !37, metadata !38}
!36 = metadata !{i32 786689, metadata !4, metadata !"mat_antihermit", metadata !5, i32 16777227, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mat_antihermit] [line 11]
!37 = metadata !{i32 786689, metadata !4, metadata !"mat_su3", metadata !5, i32 33554444, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mat_su3] [line 12]
!38 = metadata !{i32 786688, metadata !4, metadata !"temp1", metadata !5, i32 14, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp1] [line 14]
!39 = metadata !{i32 11, i32 0, metadata !4, null}
!40 = metadata !{i32 12, i32 0, metadata !4, null}
!41 = metadata !{i32 15, i32 0, metadata !4, null}
!42 = metadata !{metadata !"double", metadata !43}
!43 = metadata !{metadata !"omnipotent char", metadata !44}
!44 = metadata !{metadata !"Simple C/C++ TBAA"}
!45 = metadata !{i32 16, i32 0, metadata !4, null}
!46 = metadata !{i32 17, i32 0, metadata !4, null}
!47 = metadata !{i32 18, i32 0, metadata !4, null}
!48 = metadata !{i32 19, i32 0, metadata !4, null}
!49 = metadata !{i32 20, i32 0, metadata !4, null}
!50 = metadata !{i32 21, i32 0, metadata !4, null}
!51 = metadata !{i32 22, i32 0, metadata !4, null}
!52 = metadata !{i32 23, i32 0, metadata !4, null}
!53 = metadata !{i32 24, i32 0, metadata !4, null}
!54 = metadata !{i32 25, i32 0, metadata !4, null}
!55 = metadata !{i32 26, i32 0, metadata !4, null}
!56 = metadata !{i32 27, i32 0, metadata !4, null}
!57 = metadata !{i32 28, i32 0, metadata !4, null}
!58 = metadata !{i32 29, i32 0, metadata !4, null}
!59 = metadata !{i32 30, i32 0, metadata !4, null}
!60 = metadata !{i32 31, i32 0, metadata !4, null}
!61 = metadata !{i32 32, i32 0, metadata !4, null}
!62 = metadata !{i32 33, i32 0, metadata !4, null}
!63 = metadata !{i32 34, i32 0, metadata !4, null}
!64 = metadata !{i32 35, i32 0, metadata !4, null}
!65 = metadata !{i32 36, i32 0, metadata !4, null}
