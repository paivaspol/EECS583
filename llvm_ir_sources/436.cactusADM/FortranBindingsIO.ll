; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/FortranBindingsIO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTK_OutputGH = external global i32 (%struct.cGH*)*
@.str = private unnamed_addr constant [90 x i8] c"$Header: /cactus/Cactus/src/IO/FortranBindingsIO.c,v 1.9 2001/11/05 14:58:49 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_IO_FortranBindingsIO_c() #0 {
entry:
  ret i8* getelementptr inbounds ([90 x i8]* @.str, i64 0, i64 0), !dbg !71
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_outputgh_(i32* nocapture %istat, %struct.cGH* %GH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %istat}, i64 0, metadata !54), !dbg !72
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !55), !dbg !72
  %0 = load i32 (%struct.cGH*)** @CCTK_OutputGH, align 8, !dbg !73, !tbaa !74
  %call = tail call i32 %0(%struct.cGH* %GH) #5, !dbg !73
  store i32 %call, i32* %istat, align 4, !dbg !73, !tbaa !77
  ret void, !dbg !78
}

; Function Attrs: nounwind optsize uwtable
define void @cctki_registeriomethod_(i32* nocapture %handle, i8* %cctk_str1, i8* %cctk_str2, i32 %cctk_strlen1, i32 %cctk_strlen2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %handle}, i64 0, metadata !62), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !63), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str2}, i64 0, metadata !64), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !65), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen2}, i64 0, metadata !66), !dbg !79
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !80
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !67), !dbg !80
  %call1 = tail call i8* @Util_NullTerminateString(i8* %cctk_str2, i32 %cctk_strlen2) #5, !dbg !80
  tail call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !68), !dbg !80
  %call2 = tail call i32 @CCTKi_RegisterIOMethod(i8* %call, i8* %call1) #5, !dbg !81
  store i32 %call2, i32* %handle, align 4, !dbg !81, !tbaa !77
  tail call void @free(i8* %call) #5, !dbg !82
  tail call void @free(i8* %call1) #5, !dbg !83
  ret void, !dbg !84
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: optsize
declare i32 @CCTKi_RegisterIOMethod(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !69, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/FortranBindingsIO.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/FortranBindingsIO.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !56}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_IO_FortranBindingsIO_c", metadata !"CCTKi_version_IO_FortranBindingsIO_c", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_IO_FortranBindingsIO_c, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [CCTKi_version_IO_FortranBindingsIO_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/FortranBindingsIO.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_outputgh_", metadata !"cctk_outputgh_", metadata !"", i32 31, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*)* @cctk_outputgh_, null, null, metadata !53, i32 33} ; [ DW_TAG_subprogram ] [line 31] [def] [scope 33] [cctk_outputgh_]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null, metadata !14, metadata !16}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!18 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !33, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !45, metadata !46}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!25 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!28 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!29 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!30 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!31 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!32 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!33 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!35 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !34} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!36 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!37 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!38 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!39 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!40 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!41 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !42} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !43} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!46 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !47} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!48 = metadata !{i32 786454, metadata !20, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!49 = metadata !{i32 786451, metadata !20, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786445, metadata !20, metadata !49, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!52 = metadata !{i32 786445, metadata !20, metadata !49, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!53 = metadata !{metadata !54, metadata !55}
!54 = metadata !{i32 786689, metadata !11, metadata !"istat", metadata !5, i32 16777248, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [istat] [line 32]
!55 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 33554464, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 32]
!56 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctki_registeriomethod_", metadata !"cctki_registeriomethod_", metadata !"", i32 37, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8*, i8*, i32, i32)* @cctki_registeriomethod_, null, null, metadata !61, i32 39} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 39] [cctki_registeriomethod_]
!57 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{null, metadata !14, metadata !59, metadata !59, metadata !60, metadata !60}
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!60 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68}
!62 = metadata !{i32 786689, metadata !56, metadata !"handle", metadata !5, i32 16777254, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [handle] [line 38]
!63 = metadata !{i32 786689, metadata !56, metadata !"cctk_str1", metadata !5, i32 33554470, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 38]
!64 = metadata !{i32 786689, metadata !56, metadata !"cctk_str2", metadata !5, i32 50331686, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str2] [line 38]
!65 = metadata !{i32 786689, metadata !56, metadata !"cctk_strlen1", metadata !5, i32 67108902, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 38]
!66 = metadata !{i32 786689, metadata !56, metadata !"cctk_strlen2", metadata !5, i32 83886118, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen2] [line 38]
!67 = metadata !{i32 786688, metadata !56, metadata !"thorn", metadata !5, i32 40, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thorn] [line 40]
!68 = metadata !{i32 786688, metadata !56, metadata !"name", metadata !5, i32 40, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 40]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 20, metadata !8, i32 1, i32 1, null, null}
!71 = metadata !{i32 22, i32 0, metadata !4, null}
!72 = metadata !{i32 32, i32 0, metadata !11, null}
!73 = metadata !{i32 34, i32 0, metadata !11, null}
!74 = metadata !{metadata !"any pointer", metadata !75}
!75 = metadata !{metadata !"omnipotent char", metadata !76}
!76 = metadata !{metadata !"Simple C/C++ TBAA"}
!77 = metadata !{metadata !"int", metadata !75}
!78 = metadata !{i32 35, i32 0, metadata !11, null}
!79 = metadata !{i32 38, i32 0, metadata !56, null}
!80 = metadata !{i32 40, i32 0, metadata !56, null}
!81 = metadata !{i32 41, i32 0, metadata !56, null}
!82 = metadata !{i32 42, i32 0, metadata !56, null}
!83 = metadata !{i32 43, i32 0, metadata !56, null}
!84 = metadata !{i32 44, i32 0, metadata !56, null}
