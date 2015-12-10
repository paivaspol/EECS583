; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/flesh.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTK_Initialise = external global i32 (%struct.tFleshConfig*)*
@CCTK_Evolve = external global i32 (%struct.tFleshConfig*)*
@CCTK_Shutdown = external global i32 (%struct.tFleshConfig*)*
@.str = private unnamed_addr constant [83 x i8] c"$Header: /cactus/Cactus/src/main/flesh.cc,v 1.10 2000/10/05 00:06:58 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_flesh_cc() #0 {
entry:
  ret i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), !dbg !69
}

; Function Attrs: nounwind optsize uwtable
define i32 @main(i32 %argc, i8** %argv) #1 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ConfigData = alloca %struct.tFleshConfig, align 8
  call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !18), !dbg !70
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !71
  call void @llvm.dbg.declare(metadata !{i32* %argc.addr}, metadata !18), !dbg !70
  call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !19), !dbg !70
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata !{i8*** %argv.addr}, metadata !19), !dbg !70
  call void @llvm.dbg.declare(metadata !{%struct.tFleshConfig* %ConfigData}, metadata !20), !dbg !75
  %call = call i32 @CCTKi_InitialiseCactus(i32* %argc.addr, i8*** %argv.addr, %struct.tFleshConfig* %ConfigData) #4, !dbg !76
  %0 = load i32 (%struct.tFleshConfig*)** @CCTK_Initialise, align 8, !dbg !77, !tbaa !74
  %call1 = call i32 %0(%struct.tFleshConfig* %ConfigData) #4, !dbg !77
  %1 = load i32 (%struct.tFleshConfig*)** @CCTK_Evolve, align 8, !dbg !78, !tbaa !74
  %call2 = call i32 %1(%struct.tFleshConfig* %ConfigData) #4, !dbg !78
  %2 = load i32 (%struct.tFleshConfig*)** @CCTK_Shutdown, align 8, !dbg !79, !tbaa !74
  %call3 = call i32 %2(%struct.tFleshConfig* %ConfigData) #4, !dbg !79
  %call4 = call i32 @CCTKi_ShutdownCactus(%struct.tFleshConfig* %ConfigData) #4, !dbg !80
  ret i32 0, !dbg !81
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTKi_InitialiseCactus(i32*, i8***, %struct.tFleshConfig*) #3

; Function Attrs: optsize
declare i32 @CCTKi_ShutdownCactus(%struct.tFleshConfig*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !67, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/flesh.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/flesh.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_flesh_cc", metadata !"CCTKi_version_main_flesh_cc", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_flesh_cc, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 20] [def] [CCTKi_version_main_flesh_cc]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/flesh.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 58, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8**)* @main, null, null, metadata !17, i32 59} ; [ DW_TAG_subprogram ] [line 58] [def] [scope 59] [main]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !14, metadata !15}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!17 = metadata !{metadata !18, metadata !19, metadata !20}
!18 = metadata !{i32 786689, metadata !11, metadata !"argc", metadata !5, i32 16777274, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 58]
!19 = metadata !{i32 786689, metadata !11, metadata !"argv", metadata !5, i32 33554490, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 58]
!20 = metadata !{i32 786688, metadata !11, metadata !"ConfigData", metadata !5, i32 60, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ConfigData] [line 60]
!21 = metadata !{i32 786454, metadata !1, null, metadata !"tFleshConfig", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ] [tFleshConfig] [line 28, size 0, align 0, offset 0] [from ]
!22 = metadata !{i32 786451, metadata !23, null, metadata !"", i32 19, i64 192, i64 64, i32 0, i32 0, null, metadata !24, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 19, size 192, align 64, offset 0] [from ]
!23 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!24 = metadata !{metadata !25, metadata !26, metadata !65}
!25 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"parameter_file_name", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [parameter_file_name] [line 21, size 64, align 64, offset 0] [from ]
!26 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"GH", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [GH] [line 24, size 64, align 64, offset 64] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!29 = metadata !{i32 786454, metadata !23, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!30 = metadata !{i32 786451, metadata !31, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !32, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!31 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!32 = metadata !{metadata !33, metadata !34, metadata !35, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !45, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !57, metadata !58}
!33 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!34 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!35 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!37 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!38 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!39 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!40 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!41 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !36} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!42 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !36} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!43 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!44 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!45 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !46} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!47 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !46} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!48 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!49 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !36} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!50 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!51 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !36} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!52 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!53 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !54} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!56 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!57 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !55} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!58 = metadata !{i32 786445, metadata !31, metadata !30, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !59} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!60 = metadata !{i32 786454, metadata !31, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!61 = metadata !{i32 786451, metadata !31, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !62, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!62 = metadata !{metadata !63, metadata !64}
!63 = metadata !{i32 786445, metadata !31, metadata !61, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!64 = metadata !{i32 786445, metadata !31, metadata !61, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!65 = metadata !{i32 786445, metadata !23, metadata !22, metadata !"nGHs", i32 25, i64 32, i64 32, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [nGHs] [line 25, size 32, align 32, offset 128] [from unsigned int]
!66 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!67 = metadata !{metadata !68}
!68 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 18, metadata !16, i32 1, i32 1, null, null}
!69 = metadata !{i32 20, i32 0, metadata !4, null}
!70 = metadata !{i32 58, i32 0, metadata !11, null} ; [ DW_TAG_imported_module ]
!71 = metadata !{metadata !"int", metadata !72}
!72 = metadata !{metadata !"omnipotent char", metadata !73}
!73 = metadata !{metadata !"Simple C/C++ TBAA"}
!74 = metadata !{metadata !"any pointer", metadata !72}
!75 = metadata !{i32 60, i32 0, metadata !11, null}
!76 = metadata !{i32 64, i32 0, metadata !11, null}
!77 = metadata !{i32 68, i32 0, metadata !11, null}
!78 = metadata !{i32 72, i32 0, metadata !11, null}
!79 = metadata !{i32 76, i32 0, metadata !11, null}
!80 = metadata !{i32 80, i32 0, metadata !11, null}
!81 = metadata !{i32 82, i32 0, metadata !11, null}
