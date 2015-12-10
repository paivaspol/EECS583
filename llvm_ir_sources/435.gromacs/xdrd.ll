; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/xdrd.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }

; Function Attrs: nounwind optsize uwtable
define i32 @xdr_real(%struct.XDR* %xdrs, float* %r) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !74), !dbg !85
  tail call void @llvm.dbg.value(metadata !{float* %r}, i64 0, metadata !75), !dbg !85
  %call = tail call i32 @xdr_float(%struct.XDR* %xdrs, float* %r) #3, !dbg !86
  ret i32 %call, !dbg !86
}

; Function Attrs: optsize
declare i32 @xdr_float(%struct.XDR*, float*) #1

; Function Attrs: nounwind optsize uwtable
define i32 @xdr3drcoord(%struct.XDR* %xdrs, float* %fp, i32* %size, float* %precision) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xdrs}, i64 0, metadata !81), !dbg !87
  tail call void @llvm.dbg.value(metadata !{float* %fp}, i64 0, metadata !82), !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !83), !dbg !87
  tail call void @llvm.dbg.value(metadata !{float* %precision}, i64 0, metadata !84), !dbg !87
  %call = tail call i32 @xdr3dfcoord(%struct.XDR* %xdrs, float* %fp, i32* %size, float* %precision) #3, !dbg !88
  ret i32 %call, !dbg !88
}

; Function Attrs: optsize
declare i32 @xdr3dfcoord(%struct.XDR*, float*, i32*, float*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !9, metadata !10, metadata !9, metadata !9, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xdrd.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/xdrd.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"xdr_op", i32 119, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [xdr_op] [line 119, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"XDR_ENCODE", i64 0} ; [ DW_TAG_enumerator ] [XDR_ENCODE :: 0]
!7 = metadata !{i32 786472, metadata !"XDR_DECODE", i64 1} ; [ DW_TAG_enumerator ] [XDR_DECODE :: 1]
!8 = metadata !{i32 786472, metadata !"XDR_FREE", i64 2} ; [ DW_TAG_enumerator ] [XDR_FREE :: 2]
!9 = metadata !{i32 0}
!10 = metadata !{metadata !11, metadata !76}
!11 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr_real", metadata !"xdr_real", metadata !"", i32 38, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, float*)* @xdr_real, null, null, metadata !73, i32 39} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 39] [xdr_real]
!12 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xdrd.c]
!13 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !15, metadata !16, metadata !70}
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from XDR]
!17 = metadata !{i32 786454, metadata !1, null, metadata !"XDR", i32 144, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [XDR] [line 144, size 0, align 0, offset 0] [from XDR]
!18 = metadata !{i32 786451, metadata !4, null, metadata !"XDR", i32 145, i64 384, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [XDR] [line 145, size 384, align 64, offset 0] [from ]
!19 = metadata !{metadata !20, metadata !21, metadata !66, metadata !67, metadata !68, metadata !69}
!20 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"x_op", i32 147, i64 32, i64 32, i64 0, i32 0, metadata !3} ; [ DW_TAG_member ] [x_op] [line 147, size 32, align 32, offset 0] [from xdr_op]
!21 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"x_ops", i32 171, i64 64, i64 64, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [x_ops] [line 171, size 64, align 64, offset 64] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from xdr_ops]
!23 = metadata !{i32 786451, metadata !4, null, metadata !"xdr_ops", i32 148, i64 640, i64 64, i32 0, i32 0, null, metadata !24, i32 0, null, null} ; [ DW_TAG_structure_type ] [xdr_ops] [line 148, size 640, align 64, offset 0] [from ]
!24 = metadata !{metadata !25, metadata !34, metadata !35, metadata !42, metadata !43, metadata !47, metadata !51, metadata !57, metadata !61, metadata !65}
!25 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_getlong", i32 150, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [x_getlong] [line 150, size 64, align 64, offset 0] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !29, metadata !30, metadata !32}
!29 = metadata !{i32 786454, metadata !4, null, metadata !"bool_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [bool_t] [line 99, size 0, align 0, offset 0] [from int]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from XDR]
!31 = metadata !{i32 786454, metadata !4, null, metadata !"XDR", i32 144, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [XDR] [line 144, size 0, align 0, offset 0] [from XDR]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!33 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!34 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_putlong", i32 152, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [x_putlong] [line 152, size 64, align 64, offset 64] [from ]
!35 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_getbytes", i32 154, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [x_getbytes] [line 154, size 64, align 64, offset 128] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!37 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{metadata !29, metadata !30, metadata !39, metadata !41}
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!40 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!41 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!42 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_putbytes", i32 156, i64 64, i64 64, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [x_putbytes] [line 156, size 64, align 64, offset 192] [from ]
!43 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_getpostn", i32 158, i64 64, i64 64, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [x_getpostn] [line 158, size 64, align 64, offset 256] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!45 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{metadata !41, metadata !30}
!47 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_setpostn", i32 160, i64 64, i64 64, i64 320, i32 0, metadata !48} ; [ DW_TAG_member ] [x_setpostn] [line 160, size 64, align 64, offset 320] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{metadata !29, metadata !30, metadata !41}
!51 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_inline", i32 162, i64 64, i64 64, i64 384, i32 0, metadata !52} ; [ DW_TAG_member ] [x_inline] [line 162, size 64, align 64, offset 384] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{metadata !55, metadata !30, metadata !15}
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from xdr_int32_t]
!56 = metadata !{i32 786454, metadata !4, null, metadata !"xdr_int32_t", i32 106, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [xdr_int32_t] [line 106, size 0, align 0, offset 0] [from int]
!57 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_destroy", i32 164, i64 64, i64 64, i64 448, i32 0, metadata !58} ; [ DW_TAG_member ] [x_destroy] [line 164, size 64, align 64, offset 448] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!59 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{null, metadata !30}
!61 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_getint32", i32 166, i64 64, i64 64, i64 512, i32 0, metadata !62} ; [ DW_TAG_member ] [x_getint32] [line 166, size 64, align 64, offset 512] [from ]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!63 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{metadata !29, metadata !30, metadata !55}
!65 = metadata !{i32 786445, metadata !4, metadata !23, metadata !"x_putint32", i32 168, i64 64, i64 64, i64 576, i32 0, metadata !62} ; [ DW_TAG_member ] [x_putint32] [line 168, size 64, align 64, offset 576] [from ]
!66 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"x_public", i32 172, i64 64, i64 64, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [x_public] [line 172, size 64, align 64, offset 128] [from ]
!67 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"x_private", i32 173, i64 64, i64 64, i64 192, i32 0, metadata !39} ; [ DW_TAG_member ] [x_private] [line 173, size 64, align 64, offset 192] [from ]
!68 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"x_base", i32 174, i64 64, i64 64, i64 256, i32 0, metadata !39} ; [ DW_TAG_member ] [x_base] [line 174, size 64, align 64, offset 256] [from ]
!69 = metadata !{i32 786445, metadata !4, metadata !18, metadata !"x_handy", i32 175, i64 32, i64 32, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [x_handy] [line 175, size 32, align 32, offset 320] [from int]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!71 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!72 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!73 = metadata !{metadata !74, metadata !75}
!74 = metadata !{i32 786689, metadata !11, metadata !"xdrs", metadata !12, i32 16777254, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 38]
!75 = metadata !{i32 786689, metadata !11, metadata !"r", metadata !12, i32 33554470, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 38]
!76 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xdr3drcoord", metadata !"xdr3drcoord", metadata !"", i32 54, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, float*, i32*, float*)* @xdr3drcoord, null, null, metadata !80, i32 55} ; [ DW_TAG_subprogram ] [line 54] [def] [scope 55] [xdr3drcoord]
!77 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{metadata !15, metadata !16, metadata !70, metadata !79, metadata !70}
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84}
!81 = metadata !{i32 786689, metadata !76, metadata !"xdrs", metadata !12, i32 16777270, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xdrs] [line 54]
!82 = metadata !{i32 786689, metadata !76, metadata !"fp", metadata !12, i32 33554486, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 54]
!83 = metadata !{i32 786689, metadata !76, metadata !"size", metadata !12, i32 50331702, metadata !79, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 54]
!84 = metadata !{i32 786689, metadata !76, metadata !"precision", metadata !12, i32 67108918, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [precision] [line 54]
!85 = metadata !{i32 38, i32 0, metadata !11, null}
!86 = metadata !{i32 50, i32 0, metadata !11, null}
!87 = metadata !{i32 54, i32 0, metadata !76, null}
!88 = metadata !{i32 81, i32 0, metadata !76, null}
