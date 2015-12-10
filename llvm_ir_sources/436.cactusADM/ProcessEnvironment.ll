; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessEnvironment.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@.str = private unnamed_addr constant [94 x i8] c"$Header: /cactus/Cactus/src/main/ProcessEnvironment.c,v 1.10 2001/12/13 15:43:53 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_ProcessEnvironment_c() #0 {
entry:
  ret i8* getelementptr inbounds ([94 x i8]* @.str, i64 0, i64 0), !dbg !71
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @CCTKi_ProcessEnvironment(i32* nocapture %argc, i8*** nocapture %argv, %struct.tFleshConfig* nocapture %ConfigData) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %argc}, i64 0, metadata !66), !dbg !72
  tail call void @llvm.dbg.value(metadata !{i8*** %argv}, i64 0, metadata !67), !dbg !72
  tail call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %ConfigData}, i64 0, metadata !68), !dbg !72
  tail call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %ConfigData}, i64 0, metadata !68), !dbg !73
  tail call void @llvm.dbg.value(metadata !{i32* %argc}, i64 0, metadata !66), !dbg !74
  tail call void @llvm.dbg.value(metadata !{i8*** %argv}, i64 0, metadata !67), !dbg !75
  ret i32 0, !dbg !76
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !69, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessEnvironment.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessEnvironment.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_ProcessEnvironment_c", metadata !"CCTKi_version_main_ProcessEnvironment_c", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_ProcessEnvironment_c, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [CCTKi_version_main_ProcessEnvironment_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/ProcessEnvironment.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_ProcessEnvironment", metadata !"CCTKi_ProcessEnvironment", metadata !"", i32 115, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i8***, %struct.tFleshConfig*)* @CCTKi_ProcessEnvironment, null, null, metadata !65, i32 116} ; [ DW_TAG_subprogram ] [line 115] [def] [scope 116] [CCTKi_ProcessEnvironment]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !19}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tFleshConfig]
!20 = metadata !{i32 786454, metadata !1, null, metadata !"tFleshConfig", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [tFleshConfig] [line 28, size 0, align 0, offset 0] [from ]
!21 = metadata !{i32 786451, metadata !22, null, metadata !"", i32 19, i64 192, i64 64, i32 0, i32 0, null, metadata !23, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 19, size 192, align 64, offset 0] [from ]
!22 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!23 = metadata !{metadata !24, metadata !25, metadata !63}
!24 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"parameter_file_name", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [parameter_file_name] [line 21, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"GH", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [GH] [line 24, size 64, align 64, offset 64] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!28 = metadata !{i32 786454, metadata !22, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !43, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !55, metadata !56}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!34 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!36 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!37 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!38 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!39 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!40 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!41 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !42} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!42 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!43 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!45 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!46 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!47 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!48 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!49 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!50 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !42} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!51 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !52} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !53} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!56 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !57} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!58 = metadata !{i32 786454, metadata !30, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!59 = metadata !{i32 786451, metadata !30, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !60, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!60 = metadata !{metadata !61, metadata !62}
!61 = metadata !{i32 786445, metadata !30, metadata !59, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!62 = metadata !{i32 786445, metadata !30, metadata !59, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!63 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"nGHs", i32 25, i64 32, i64 32, i64 128, i32 0, metadata !64} ; [ DW_TAG_member ] [nGHs] [line 25, size 32, align 32, offset 128] [from unsigned int]
!64 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!65 = metadata !{metadata !66, metadata !67, metadata !68}
!66 = metadata !{i32 786689, metadata !11, metadata !"argc", metadata !5, i32 16777331, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 115]
!67 = metadata !{i32 786689, metadata !11, metadata !"argv", metadata !5, i32 33554547, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 115]
!68 = metadata !{i32 786689, metadata !11, metadata !"ConfigData", metadata !5, i32 50331763, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ConfigData] [line 115]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 23, metadata !8, i32 1, i32 1, null, null}
!71 = metadata !{i32 25, i32 0, metadata !4, null}
!72 = metadata !{i32 115, i32 0, metadata !11, null}
!73 = metadata !{i32 118, i32 0, metadata !11, null}
!74 = metadata !{i32 131, i32 0, metadata !11, null}
!75 = metadata !{i32 132, i32 0, metadata !11, null}
!76 = metadata !{i32 135, i32 0, metadata !11, null}
