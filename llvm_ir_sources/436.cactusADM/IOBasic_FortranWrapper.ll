; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IOBasic_FortranWrapper.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsFortranWrapperIOBasic(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !48), !dbg !54
  tail call void @llvm.dbg.value(metadata !{i8* %fpointer}, i64 0, metadata !49), !dbg !54
  %0 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*)*, !dbg !55
  tail call void @llvm.dbg.value(metadata !{void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*)* %0}, i64 0, metadata !50), !dbg !55
  %cctk_dim = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0, !dbg !56
  %cctk_gsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2, !dbg !56
  %1 = load i32** %cctk_gsh, align 8, !dbg !56, !tbaa !57
  %cctk_lsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !56
  %2 = load i32** %cctk_lsh, align 8, !dbg !56, !tbaa !57
  %cctk_lbnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4, !dbg !56
  %3 = load i32** %cctk_lbnd, align 8, !dbg !56, !tbaa !57
  %cctk_ubnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5, !dbg !56
  %4 = load i32** %cctk_ubnd, align 8, !dbg !56, !tbaa !57
  %cctk_lssh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !56
  %5 = load i32** %cctk_lssh, align 8, !dbg !56, !tbaa !57
  %cctk_from = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8, !dbg !56
  %6 = load i32** %cctk_from, align 8, !dbg !56, !tbaa !57
  %cctk_to = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7, !dbg !56
  %7 = load i32** %cctk_to, align 8, !dbg !56, !tbaa !57
  %cctk_bbox = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !56
  %8 = load i32** %cctk_bbox, align 8, !dbg !56, !tbaa !57
  %cctk_delta_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9, !dbg !56
  %cctk_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !56
  %cctk_delta_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10, !dbg !56
  %9 = load double** %cctk_delta_space, align 8, !dbg !56, !tbaa !57
  %cctk_origin_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11, !dbg !56
  %10 = load double** %cctk_origin_space, align 8, !dbg !56, !tbaa !57
  %cctk_levfac = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13, !dbg !56
  %11 = load i32** %cctk_levfac, align 8, !dbg !56, !tbaa !57
  %cctk_convlevel = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14, !dbg !56
  %cctk_nghostzones = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !56
  %12 = load i32** %cctk_nghostzones, align 8, !dbg !56, !tbaa !57
  %cctk_iteration = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !56
  tail call void %0(i32* %cctk_dim, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, double* %cctk_delta_time, double* %cctk_time, double* %9, double* %10, i32* %11, i32* %cctk_convlevel, i32* %12, i32* %cctk_iteration, %struct.cGH* %GH) #2, !dbg !56
  ret i32 0, !dbg !60
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IOBasic_FortranWrapper.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IOBasic_FortranWrapper.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsFortranWrapperIOBasic", metadata !"CCTKi_BindingsFortranWrapperIOBasic", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CCTKi_BindingsFortranWrapperIOBasic, null, null, metadata !47, i32 14} ; [ DW_TAG_subprogram ] [line 13] [def] [scope 14] [CCTKi_BindingsFortranWrapperIOBasic]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/IOBasic_FortranWrapper.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !37}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !26, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !38, metadata !39}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!24 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !25} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!28 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!29 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!30 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!31 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !8} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!32 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!33 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !25} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!34 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !35} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!38 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !36} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!39 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !40} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!41 = metadata !{i32 786454, metadata !12, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!42 = metadata !{i32 786451, metadata !12, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!43 = metadata !{metadata !44, metadata !46}
!44 = metadata !{i32 786445, metadata !12, metadata !42, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!45 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!46 = metadata !{i32 786445, metadata !12, metadata !42, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !45} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!47 = metadata !{metadata !48, metadata !49, metadata !50}
!48 = metadata !{i32 786689, metadata !4, metadata !"GH", metadata !5, i32 16777229, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 13]
!49 = metadata !{i32 786689, metadata !4, metadata !"fpointer", metadata !5, i32 33554445, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fpointer] [line 13]
!50 = metadata !{i32 786688, metadata !4, metadata !"function", metadata !5, i32 15, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [function] [line 15]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{null, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !27, metadata !27, metadata !27, metadata !27, metadata !17, metadata !17, metadata !17, metadata !17, metadata !9}
!54 = metadata !{i32 13, i32 0, metadata !4, null}
!55 = metadata !{i32 20, i32 0, metadata !4, null}
!56 = metadata !{i32 22, i32 0, metadata !4, null}
!57 = metadata !{metadata !"any pointer", metadata !58}
!58 = metadata !{metadata !"omnipotent char", metadata !59}
!59 = metadata !{metadata !"Simple C/C++ TBAA"}
!60 = metadata !{i32 24, i32 0, metadata !4, null}
