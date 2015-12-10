; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/make_ahmat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.complex = type { double, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }

; Function Attrs: nounwind optsize uwtable
define void @make_anti_hermitian(%struct.su3_matrix* nocapture %m3, %struct.anti_hermitmat* nocapture %ah3) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.su3_matrix* %m3}, i64 0, metadata !36), !dbg !39
  tail call void @llvm.dbg.value(metadata !{%struct.anti_hermitmat* %ah3}, i64 0, metadata !37), !dbg !39
  %imag = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 0, i64 0, i32 1, !dbg !40
  %0 = load double* %imag, align 8, !dbg !40, !tbaa !41
  %imag5 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 1, i64 1, i32 1, !dbg !40
  %1 = load double* %imag5, align 8, !dbg !40, !tbaa !41
  %add = fadd double %0, %1, !dbg !40
  %imag9 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 2, i64 2, i32 1, !dbg !40
  %2 = load double* %imag9, align 8, !dbg !40, !tbaa !41
  %add10 = fadd double %add, %2, !dbg !40
  %mul = fmul double %add10, 0x3FD5555551C112DA, !dbg !40
  tail call void @llvm.dbg.value(metadata !{double %mul}, i64 0, metadata !38), !dbg !40
  %sub = fsub double %0, %mul, !dbg !44
  %m00im = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 3, !dbg !44
  store double %sub, double* %m00im, align 8, !dbg !44, !tbaa !41
  %3 = load double* %imag5, align 8, !dbg !45, !tbaa !41
  %sub19 = fsub double %3, %mul, !dbg !45
  %m11im = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 4, !dbg !45
  store double %sub19, double* %m11im, align 8, !dbg !45, !tbaa !41
  %4 = load double* %imag9, align 8, !dbg !46, !tbaa !41
  %sub24 = fsub double %4, %mul, !dbg !46
  %m22im = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 5, !dbg !46
  store double %sub24, double* %m22im, align 8, !dbg !46, !tbaa !41
  %real = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 0, i64 1, i32 0, !dbg !47
  %5 = load double* %real, align 8, !dbg !47, !tbaa !41
  %real31 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 1, i64 0, i32 0, !dbg !47
  %6 = load double* %real31, align 8, !dbg !47, !tbaa !41
  %sub32 = fsub double %5, %6, !dbg !47
  %mul33 = fmul double %sub32, 5.000000e-01, !dbg !47
  %real34 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 0, i32 0, !dbg !47
  store double %mul33, double* %real34, align 8, !dbg !47, !tbaa !41
  %real38 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 0, i64 2, i32 0, !dbg !48
  %7 = load double* %real38, align 8, !dbg !48, !tbaa !41
  %real42 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 2, i64 0, i32 0, !dbg !48
  %8 = load double* %real42, align 8, !dbg !48, !tbaa !41
  %sub43 = fsub double %7, %8, !dbg !48
  %mul44 = fmul double %sub43, 5.000000e-01, !dbg !48
  %real45 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 1, i32 0, !dbg !48
  store double %mul44, double* %real45, align 8, !dbg !48, !tbaa !41
  %real49 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 1, i64 2, i32 0, !dbg !49
  %9 = load double* %real49, align 8, !dbg !49, !tbaa !41
  %real53 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 2, i64 1, i32 0, !dbg !49
  %10 = load double* %real53, align 8, !dbg !49, !tbaa !41
  %sub54 = fsub double %9, %10, !dbg !49
  %mul55 = fmul double %sub54, 5.000000e-01, !dbg !49
  %real56 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 2, i32 0, !dbg !49
  store double %mul55, double* %real56, align 8, !dbg !49, !tbaa !41
  %imag60 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 0, i64 1, i32 1, !dbg !50
  %11 = load double* %imag60, align 8, !dbg !50, !tbaa !41
  %imag64 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 1, i64 0, i32 1, !dbg !50
  %12 = load double* %imag64, align 8, !dbg !50, !tbaa !41
  %add65 = fadd double %11, %12, !dbg !50
  %mul66 = fmul double %add65, 5.000000e-01, !dbg !50
  %imag68 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 0, i32 1, !dbg !50
  store double %mul66, double* %imag68, align 8, !dbg !50, !tbaa !41
  %imag72 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 0, i64 2, i32 1, !dbg !51
  %13 = load double* %imag72, align 8, !dbg !51, !tbaa !41
  %imag76 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 2, i64 0, i32 1, !dbg !51
  %14 = load double* %imag76, align 8, !dbg !51, !tbaa !41
  %add77 = fadd double %13, %14, !dbg !51
  %mul78 = fmul double %add77, 5.000000e-01, !dbg !51
  %imag80 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 1, i32 1, !dbg !51
  store double %mul78, double* %imag80, align 8, !dbg !51, !tbaa !41
  %imag84 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 1, i64 2, i32 1, !dbg !52
  %15 = load double* %imag84, align 8, !dbg !52, !tbaa !41
  %imag88 = getelementptr inbounds %struct.su3_matrix* %m3, i64 0, i32 0, i64 2, i64 1, i32 1, !dbg !52
  %16 = load double* %imag88, align 8, !dbg !52, !tbaa !41
  %add89 = fadd double %15, %16, !dbg !52
  %mul90 = fmul double %add89, 5.000000e-01, !dbg !52
  %imag92 = getelementptr inbounds %struct.anti_hermitmat* %ah3, i64 0, i32 2, i32 1, !dbg !52
  store double %mul90, double* %imag92, align 8, !dbg !52, !tbaa !41
  ret void, !dbg !53
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/make_ahmat.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/make_ahmat.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"make_anti_hermitian", metadata !"make_anti_hermitian", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.su3_matrix*, %struct.anti_hermitmat*)* @make_anti_hermitian, null, null, metadata !35, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [make_anti_hermitian]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/make_ahmat.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !24}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from su3_matrix]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"su3_matrix", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [su3_matrix] [line 14, size 0, align 0, offset 0] [from ]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 14, i64 1152, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 14, size 1152, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/su3.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"e", i32 14, i64 1152, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [e] [line 14, size 1152, align 64, offset 0] [from ]
!14 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1152, i64 64, i32 0, i32 0, metadata !15, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1152, align 64, offset 0] [from complex]
!15 = metadata !{i32 786454, metadata !11, null, metadata !"complex", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [complex] [line 76, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 73, i64 128, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 73, size 128, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/complex.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"real", i32 74, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [real] [line 74, size 64, align 64, offset 0] [from double]
!20 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"imag", i32 75, i64 64, i64 64, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [imag] [line 75, size 64, align 64, offset 64] [from double]
!22 = metadata !{metadata !23, metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from anti_hermitmat]
!25 = metadata !{i32 786454, metadata !1, null, metadata !"anti_hermitmat", i32 17, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [anti_hermitmat] [line 17, size 0, align 0, offset 0] [from ]
!26 = metadata !{i32 786451, metadata !11, null, metadata !"", i32 16, i64 640, i64 64, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 16, size 640, align 64, offset 0] [from ]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34}
!28 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"m01", i32 17, i64 128, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [m01] [line 17, size 128, align 64, offset 0] [from complex]
!29 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"m02", i32 17, i64 128, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [m02] [line 17, size 128, align 64, offset 128] [from complex]
!30 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"m12", i32 17, i64 128, i64 64, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [m12] [line 17, size 128, align 64, offset 256] [from complex]
!31 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"m00im", i32 17, i64 64, i64 64, i64 384, i32 0, metadata !20} ; [ DW_TAG_member ] [m00im] [line 17, size 64, align 64, offset 384] [from double]
!32 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"m11im", i32 17, i64 64, i64 64, i64 448, i32 0, metadata !20} ; [ DW_TAG_member ] [m11im] [line 17, size 64, align 64, offset 448] [from double]
!33 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"m22im", i32 17, i64 64, i64 64, i64 512, i32 0, metadata !20} ; [ DW_TAG_member ] [m22im] [line 17, size 64, align 64, offset 512] [from double]
!34 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"space", i32 17, i64 64, i64 64, i64 576, i32 0, metadata !20} ; [ DW_TAG_member ] [space] [line 17, size 64, align 64, offset 576] [from double]
!35 = metadata !{metadata !36, metadata !37, metadata !38}
!36 = metadata !{i32 786689, metadata !4, metadata !"m3", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m3] [line 12]
!37 = metadata !{i32 786689, metadata !4, metadata !"ah3", metadata !5, i32 33554444, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ah3] [line 12]
!38 = metadata !{i32 786688, metadata !4, metadata !"temp", metadata !5, i32 13, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 13]
!39 = metadata !{i32 12, i32 0, metadata !4, null}
!40 = metadata !{i32 15, i32 0, metadata !4, null}
!41 = metadata !{metadata !"double", metadata !42}
!42 = metadata !{metadata !"omnipotent char", metadata !43}
!43 = metadata !{metadata !"Simple C/C++ TBAA"}
!44 = metadata !{i32 17, i32 0, metadata !4, null}
!45 = metadata !{i32 18, i32 0, metadata !4, null}
!46 = metadata !{i32 19, i32 0, metadata !4, null}
!47 = metadata !{i32 20, i32 0, metadata !4, null}
!48 = metadata !{i32 21, i32 0, metadata !4, null}
!49 = metadata !{i32 22, i32 0, metadata !4, null}
!50 = metadata !{i32 23, i32 0, metadata !4, null}
!51 = metadata !{i32 24, i32 0, metadata !4, null}
!52 = metadata !{i32 25, i32 0, metadata !4, null}
!53 = metadata !{i32 27, i32 0, metadata !4, null}
