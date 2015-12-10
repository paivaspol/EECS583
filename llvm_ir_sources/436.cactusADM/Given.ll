; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/Given.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { double, double, double, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@timepriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [17 x i8] c"Time::courant_dt\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"time::courant_min_time\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"time::courant_wave_speed\00", align 1
@.str3 = private unnamed_addr constant [83 x i8] c"$Header: /cactus/CactusBase/Time/src/Given.c,v 1.4 2001/06/04 18:20:14 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_Time_Given_c() #0 {
entry:
  ret i8* getelementptr inbounds ([83 x i8]* @.str3, i64 0, i64 0), !dbg !88
}

; Function Attrs: nounwind optsize uwtable
define void @Time_Given(%struct.cGH* nocapture %cctkGH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %cctkGH}, i64 0, metadata !53), !dbg !89
  %0 = load double* getelementptr inbounds (%struct.anon.0* @timepriv_, i64 0, i32 2), align 8, !dbg !90, !tbaa !91
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !60), !dbg !90
  %cctk_delta_time10 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 9, !dbg !94
  %call = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #4, !dbg !94
  %call19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !94
  %call24 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !94
  store double %0, double* %cctk_delta_time10, align 8, !dbg !95, !tbaa !91
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !62), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !62), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !62), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !62), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !62), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !62), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !62), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  tail call void @llvm.dbg.value(metadata !96, i64 0, metadata !82), !dbg !97
  ret void, !dbg !97
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !86, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/Given.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/Given.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusBase_Time_Given_c", metadata !"CCTKi_version_CactusBase_Time_Given_c", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_Time_Given_c, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 21] [def] [CCTKi_version_CactusBase_Time_Given_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/Given.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Time_Given", metadata !"Time_Given", metadata !"", i32 25, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.cGH*)* @Time_Given, null, null, metadata !52, i32 26} ; [ DW_TAG_subprogram ] [line 25] [def] [scope 26] [Time_Given]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null, metadata !14}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!15 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !22, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !44, metadata !45}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!25 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!27 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!28 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!29 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!30 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!31 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!32 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!34 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!35 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!36 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!37 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !20} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!38 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!39 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!40 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !41} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !42} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!45 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !46} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!47 = metadata !{i32 786454, metadata !17, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!48 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !51}
!50 = metadata !{i32 786445, metadata !17, metadata !48, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!51 = metadata !{i32 786445, metadata !17, metadata !48, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !57, metadata !59, metadata !60, metadata !61, metadata !62, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85}
!53 = metadata !{i32 786689, metadata !11, metadata !"cctkGH", metadata !5, i32 16777241, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctkGH] [line 25]
!54 = metadata !{i32 786688, metadata !11, metadata !"timestep_method", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_method] [line 27]
!55 = metadata !{i32 786688, metadata !11, metadata !"timestep_outonly", metadata !5, i32 27, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_outonly] [line 27]
!56 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!57 = metadata !{i32 786688, metadata !11, metadata !"courant_fac", metadata !5, i32 27, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_fac] [line 27]
!58 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!59 = metadata !{i32 786688, metadata !11, metadata !"dtfac", metadata !5, i32 27, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtfac] [line 27]
!60 = metadata !{i32 786688, metadata !11, metadata !"timestep", metadata !5, i32 27, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep] [line 27]
!61 = metadata !{i32 786688, metadata !11, metadata !"outtimestep_every", metadata !5, i32 27, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outtimestep_every] [line 27]
!62 = metadata !{i32 786688, metadata !11, metadata !"cctk_pdummy_pointer", metadata !5, i32 27, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 27]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!64 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{i32 786688, metadata !11, metadata !"cctk_dim", metadata !5, i32 28, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dim] [line 28]
!66 = metadata !{i32 786688, metadata !11, metadata !"cctk_gsh", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_gsh] [line 28]
!67 = metadata !{i32 786688, metadata !11, metadata !"cctk_lsh", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lsh] [line 28]
!68 = metadata !{i32 786688, metadata !11, metadata !"cctk_lbnd", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lbnd] [line 28]
!69 = metadata !{i32 786688, metadata !11, metadata !"cctk_ubnd", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_ubnd] [line 28]
!70 = metadata !{i32 786688, metadata !11, metadata !"cctk_lssh", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lssh] [line 28]
!71 = metadata !{i32 786688, metadata !11, metadata !"cctk_from", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_from] [line 28]
!72 = metadata !{i32 786688, metadata !11, metadata !"cctk_to", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_to] [line 28]
!73 = metadata !{i32 786688, metadata !11, metadata !"cctk_bbox", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_bbox] [line 28]
!74 = metadata !{i32 786688, metadata !11, metadata !"cctk_delta_time", metadata !5, i32 28, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_delta_time] [line 28]
!75 = metadata !{i32 786688, metadata !11, metadata !"cctk_time", metadata !5, i32 28, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_time] [line 28]
!76 = metadata !{i32 786688, metadata !11, metadata !"cctk_delta_space", metadata !5, i32 28, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_delta_space] [line 28]
!77 = metadata !{i32 786688, metadata !11, metadata !"cctk_origin_space", metadata !5, i32 28, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_origin_space] [line 28]
!78 = metadata !{i32 786688, metadata !11, metadata !"cctk_levfac", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_levfac] [line 28]
!79 = metadata !{i32 786688, metadata !11, metadata !"cctk_convlevel", metadata !5, i32 28, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_convlevel] [line 28]
!80 = metadata !{i32 786688, metadata !11, metadata !"cctk_nghostzones", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_nghostzones] [line 28]
!81 = metadata !{i32 786688, metadata !11, metadata !"cctk_iteration", metadata !5, i32 28, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_iteration] [line 28]
!82 = metadata !{i32 786688, metadata !11, metadata !"cctk_dummy_pointer", metadata !5, i32 28, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dummy_pointer] [line 28]
!83 = metadata !{i32 786688, metadata !11, metadata !"courant_dt", metadata !5, i32 28, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_dt] [line 28]
!84 = metadata !{i32 786688, metadata !11, metadata !"courant_min_time", metadata !5, i32 28, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_min_time] [line 28]
!85 = metadata !{i32 786688, metadata !11, metadata !"courant_wave_speed", metadata !5, i32 28, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_wave_speed] [line 28]
!86 = metadata !{metadata !87}
!87 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 19, metadata !8, i32 1, i32 1, null, null}
!88 = metadata !{i32 21, i32 0, metadata !4, null}
!89 = metadata !{i32 25, i32 0, metadata !11, null}
!90 = metadata !{i32 27, i32 0, metadata !11, null}
!91 = metadata !{metadata !"double", metadata !92}
!92 = metadata !{metadata !"omnipotent char", metadata !93}
!93 = metadata !{metadata !"Simple C/C++ TBAA"}
!94 = metadata !{i32 28, i32 0, metadata !11, null}
!95 = metadata !{i32 30, i32 0, metadata !11, null}
!96 = metadata !{i8* undef}
!97 = metadata !{i32 31, i32 0, metadata !11, null}
