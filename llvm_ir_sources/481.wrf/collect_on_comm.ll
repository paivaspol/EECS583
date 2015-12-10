; ModuleID = '../../SPEC/benchspec/CPU2006/481.wrf/src/collect_on_comm.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readnone uwtable
define i32 @collect_on_comm_(i32* nocapture %comm, i32* nocapture %typesize, i8* nocapture %inbuf, i32* nocapture %ninbuf, i8* nocapture %outbuf, i32* nocapture %noutbuf) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %comm}, i64 0, metadata !12), !dbg !62
  tail call void @llvm.dbg.value(metadata !{i32* %typesize}, i64 0, metadata !13), !dbg !62
  tail call void @llvm.dbg.value(metadata !{i8* %inbuf}, i64 0, metadata !14), !dbg !63
  tail call void @llvm.dbg.value(metadata !{i32* %ninbuf}, i64 0, metadata !15), !dbg !63
  tail call void @llvm.dbg.value(metadata !{i8* %outbuf}, i64 0, metadata !16), !dbg !63
  tail call void @llvm.dbg.value(metadata !{i32* %noutbuf}, i64 0, metadata !17), !dbg !63
  ret i32 undef, !dbg !64
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @collect_on_comm0_(i32* nocapture %comm, i32* nocapture %typesize, i8* nocapture %inbuf, i32* nocapture %ninbuf, i8* nocapture %outbuf, i32* nocapture %noutbuf) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %comm}, i64 0, metadata !20), !dbg !65
  tail call void @llvm.dbg.value(metadata !{i32* %typesize}, i64 0, metadata !21), !dbg !65
  tail call void @llvm.dbg.value(metadata !{i8* %inbuf}, i64 0, metadata !22), !dbg !66
  tail call void @llvm.dbg.value(metadata !{i32* %ninbuf}, i64 0, metadata !23), !dbg !66
  tail call void @llvm.dbg.value(metadata !{i8* %outbuf}, i64 0, metadata !24), !dbg !66
  tail call void @llvm.dbg.value(metadata !{i32* %noutbuf}, i64 0, metadata !25), !dbg !66
  ret i32 undef, !dbg !67
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @col_on_comm(i32* nocapture %comm, i32* nocapture %typesize, i8* nocapture %inbuf, i32* nocapture %ninbuf, i8* nocapture %outbuf, i32* nocapture %noutbuf, i32 %sw) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %comm}, i64 0, metadata !30), !dbg !68
  tail call void @llvm.dbg.value(metadata !{i32* %typesize}, i64 0, metadata !31), !dbg !68
  tail call void @llvm.dbg.value(metadata !{i8* %inbuf}, i64 0, metadata !32), !dbg !69
  tail call void @llvm.dbg.value(metadata !{i32* %ninbuf}, i64 0, metadata !33), !dbg !69
  tail call void @llvm.dbg.value(metadata !{i8* %outbuf}, i64 0, metadata !34), !dbg !69
  tail call void @llvm.dbg.value(metadata !{i32* %noutbuf}, i64 0, metadata !35), !dbg !69
  tail call void @llvm.dbg.value(metadata !{i32 %sw}, i64 0, metadata !36), !dbg !69
  ret i32 0, !dbg !70
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @dist_on_comm_(i32* nocapture %comm, i32* nocapture %typesize, i8* nocapture %inbuf, i32* nocapture %ninbuf, i8* nocapture %outbuf, i32* nocapture %noutbuf) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %comm}, i64 0, metadata !39), !dbg !71
  tail call void @llvm.dbg.value(metadata !{i32* %typesize}, i64 0, metadata !40), !dbg !71
  tail call void @llvm.dbg.value(metadata !{i8* %inbuf}, i64 0, metadata !41), !dbg !72
  tail call void @llvm.dbg.value(metadata !{i32* %ninbuf}, i64 0, metadata !42), !dbg !72
  tail call void @llvm.dbg.value(metadata !{i8* %outbuf}, i64 0, metadata !43), !dbg !72
  tail call void @llvm.dbg.value(metadata !{i32* %noutbuf}, i64 0, metadata !44), !dbg !72
  ret i32 undef, !dbg !73
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @dist_on_comm0_(i32* nocapture %comm, i32* nocapture %typesize, i8* nocapture %inbuf, i32* nocapture %ninbuf, i8* nocapture %outbuf, i32* nocapture %noutbuf) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %comm}, i64 0, metadata !47), !dbg !74
  tail call void @llvm.dbg.value(metadata !{i32* %typesize}, i64 0, metadata !48), !dbg !74
  tail call void @llvm.dbg.value(metadata !{i8* %inbuf}, i64 0, metadata !49), !dbg !75
  tail call void @llvm.dbg.value(metadata !{i32* %ninbuf}, i64 0, metadata !50), !dbg !75
  tail call void @llvm.dbg.value(metadata !{i8* %outbuf}, i64 0, metadata !51), !dbg !75
  tail call void @llvm.dbg.value(metadata !{i32* %noutbuf}, i64 0, metadata !52), !dbg !75
  ret i32 undef, !dbg !76
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @dst_on_comm(i32* nocapture %comm, i32* nocapture %typesize, i8* nocapture %inbuf, i32* nocapture %ninbuf, i8* nocapture %outbuf, i32* nocapture %noutbuf, i32 %sw) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %comm}, i64 0, metadata !55), !dbg !77
  tail call void @llvm.dbg.value(metadata !{i32* %typesize}, i64 0, metadata !56), !dbg !77
  tail call void @llvm.dbg.value(metadata !{i8* %inbuf}, i64 0, metadata !57), !dbg !78
  tail call void @llvm.dbg.value(metadata !{i32* %ninbuf}, i64 0, metadata !58), !dbg !78
  tail call void @llvm.dbg.value(metadata !{i8* %outbuf}, i64 0, metadata !59), !dbg !78
  tail call void @llvm.dbg.value(metadata !{i32* %noutbuf}, i64 0, metadata !60), !dbg !78
  tail call void @llvm.dbg.value(metadata !{i32 %sw}, i64 0, metadata !61), !dbg !78
  ret i32 0, !dbg !79
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/collect_on_comm.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/481.wrf/src/collect_on_comm.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !18, metadata !26, metadata !37, metadata !45, metadata !53}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"collect_on_comm_", metadata !"collect_on_comm_", metadata !"", i32 37, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32*, i8*, i32*, i8*, i32*)* @collect_on_comm_, null, null, metadata !11, i32 39} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 39] [collect_on_comm_]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/481.wrf/src/collect_on_comm.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !9, metadata !10, metadata !9, metadata !10, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!12 = metadata !{i32 786689, metadata !4, metadata !"comm", metadata !5, i32 16777253, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [comm] [line 37]
!13 = metadata !{i32 786689, metadata !4, metadata !"typesize", metadata !5, i32 33554469, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [typesize] [line 37]
!14 = metadata !{i32 786689, metadata !4, metadata !"inbuf", metadata !5, i32 50331686, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inbuf] [line 38]
!15 = metadata !{i32 786689, metadata !4, metadata !"ninbuf", metadata !5, i32 67108902, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninbuf] [line 38]
!16 = metadata !{i32 786689, metadata !4, metadata !"outbuf", metadata !5, i32 83886118, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outbuf] [line 38]
!17 = metadata !{i32 786689, metadata !4, metadata !"noutbuf", metadata !5, i32 100663334, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [noutbuf] [line 38]
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"collect_on_comm0_", metadata !"collect_on_comm0_", metadata !"", i32 45, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32*, i8*, i32*, i8*, i32*)* @collect_on_comm0_, null, null, metadata !19, i32 47} ; [ DW_TAG_subprogram ] [line 45] [def] [scope 47] [collect_on_comm0_]
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25}
!20 = metadata !{i32 786689, metadata !18, metadata !"comm", metadata !5, i32 16777261, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [comm] [line 45]
!21 = metadata !{i32 786689, metadata !18, metadata !"typesize", metadata !5, i32 33554477, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [typesize] [line 45]
!22 = metadata !{i32 786689, metadata !18, metadata !"inbuf", metadata !5, i32 50331694, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inbuf] [line 46]
!23 = metadata !{i32 786689, metadata !18, metadata !"ninbuf", metadata !5, i32 67108910, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninbuf] [line 46]
!24 = metadata !{i32 786689, metadata !18, metadata !"outbuf", metadata !5, i32 83886126, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outbuf] [line 46]
!25 = metadata !{i32 786689, metadata !18, metadata !"noutbuf", metadata !5, i32 100663342, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [noutbuf] [line 46]
!26 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"col_on_comm", metadata !"col_on_comm", metadata !"", i32 52, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32*, i8*, i32*, i8*, i32*, i32)* @col_on_comm, null, null, metadata !29, i32 54} ; [ DW_TAG_subprogram ] [line 52] [def] [scope 54] [col_on_comm]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !8, metadata !9, metadata !9, metadata !10, metadata !9, metadata !10, metadata !9, metadata !8}
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36}
!30 = metadata !{i32 786689, metadata !26, metadata !"comm", metadata !5, i32 16777268, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [comm] [line 52]
!31 = metadata !{i32 786689, metadata !26, metadata !"typesize", metadata !5, i32 33554484, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [typesize] [line 52]
!32 = metadata !{i32 786689, metadata !26, metadata !"inbuf", metadata !5, i32 50331701, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inbuf] [line 53]
!33 = metadata !{i32 786689, metadata !26, metadata !"ninbuf", metadata !5, i32 67108917, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninbuf] [line 53]
!34 = metadata !{i32 786689, metadata !26, metadata !"outbuf", metadata !5, i32 83886133, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outbuf] [line 53]
!35 = metadata !{i32 786689, metadata !26, metadata !"noutbuf", metadata !5, i32 100663349, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [noutbuf] [line 53]
!36 = metadata !{i32 786689, metadata !26, metadata !"sw", metadata !5, i32 117440565, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sw] [line 53]
!37 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"dist_on_comm_", metadata !"dist_on_comm_", metadata !"", i32 105, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32*, i8*, i32*, i8*, i32*)* @dist_on_comm_, null, null, metadata !38, i32 107} ; [ DW_TAG_subprogram ] [line 105] [def] [scope 107] [dist_on_comm_]
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!39 = metadata !{i32 786689, metadata !37, metadata !"comm", metadata !5, i32 16777321, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [comm] [line 105]
!40 = metadata !{i32 786689, metadata !37, metadata !"typesize", metadata !5, i32 33554537, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [typesize] [line 105]
!41 = metadata !{i32 786689, metadata !37, metadata !"inbuf", metadata !5, i32 50331754, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inbuf] [line 106]
!42 = metadata !{i32 786689, metadata !37, metadata !"ninbuf", metadata !5, i32 67108970, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninbuf] [line 106]
!43 = metadata !{i32 786689, metadata !37, metadata !"outbuf", metadata !5, i32 83886186, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outbuf] [line 106]
!44 = metadata !{i32 786689, metadata !37, metadata !"noutbuf", metadata !5, i32 100663402, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [noutbuf] [line 106]
!45 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"dist_on_comm0_", metadata !"dist_on_comm0_", metadata !"", i32 112, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32*, i8*, i32*, i8*, i32*)* @dist_on_comm0_, null, null, metadata !46, i32 114} ; [ DW_TAG_subprogram ] [line 112] [def] [scope 114] [dist_on_comm0_]
!46 = metadata !{metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!47 = metadata !{i32 786689, metadata !45, metadata !"comm", metadata !5, i32 16777328, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [comm] [line 112]
!48 = metadata !{i32 786689, metadata !45, metadata !"typesize", metadata !5, i32 33554544, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [typesize] [line 112]
!49 = metadata !{i32 786689, metadata !45, metadata !"inbuf", metadata !5, i32 50331761, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inbuf] [line 113]
!50 = metadata !{i32 786689, metadata !45, metadata !"ninbuf", metadata !5, i32 67108977, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninbuf] [line 113]
!51 = metadata !{i32 786689, metadata !45, metadata !"outbuf", metadata !5, i32 83886193, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outbuf] [line 113]
!52 = metadata !{i32 786689, metadata !45, metadata !"noutbuf", metadata !5, i32 100663409, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [noutbuf] [line 113]
!53 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"dst_on_comm", metadata !"dst_on_comm", metadata !"", i32 119, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i32*, i8*, i32*, i8*, i32*, i32)* @dst_on_comm, null, null, metadata !54, i32 121} ; [ DW_TAG_subprogram ] [line 119] [def] [scope 121] [dst_on_comm]
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61}
!55 = metadata !{i32 786689, metadata !53, metadata !"comm", metadata !5, i32 16777335, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [comm] [line 119]
!56 = metadata !{i32 786689, metadata !53, metadata !"typesize", metadata !5, i32 33554551, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [typesize] [line 119]
!57 = metadata !{i32 786689, metadata !53, metadata !"inbuf", metadata !5, i32 50331768, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inbuf] [line 120]
!58 = metadata !{i32 786689, metadata !53, metadata !"ninbuf", metadata !5, i32 67108984, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ninbuf] [line 120]
!59 = metadata !{i32 786689, metadata !53, metadata !"outbuf", metadata !5, i32 83886200, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outbuf] [line 120]
!60 = metadata !{i32 786689, metadata !53, metadata !"noutbuf", metadata !5, i32 100663416, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [noutbuf] [line 120]
!61 = metadata !{i32 786689, metadata !53, metadata !"sw", metadata !5, i32 117440632, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sw] [line 120]
!62 = metadata !{i32 37, i32 0, metadata !4, null}
!63 = metadata !{i32 38, i32 0, metadata !4, null}
!64 = metadata !{i32 42, i32 0, metadata !4, null}
!65 = metadata !{i32 45, i32 0, metadata !18, null}
!66 = metadata !{i32 46, i32 0, metadata !18, null}
!67 = metadata !{i32 50, i32 0, metadata !18, null}
!68 = metadata !{i32 52, i32 0, metadata !26, null}
!69 = metadata !{i32 53, i32 0, metadata !26, null}
!70 = metadata !{i32 101, i32 0, metadata !26, null}
!71 = metadata !{i32 105, i32 0, metadata !37, null}
!72 = metadata !{i32 106, i32 0, metadata !37, null}
!73 = metadata !{i32 110, i32 0, metadata !37, null}
!74 = metadata !{i32 112, i32 0, metadata !45, null}
!75 = metadata !{i32 113, i32 0, metadata !45, null}
!76 = metadata !{i32 117, i32 0, metadata !45, null}
!77 = metadata !{i32 119, i32 0, metadata !53, null}
!78 = metadata !{i32 120, i32 0, metadata !53, null}
!79 = metadata !{i32 160, i32 0, metadata !53, null}
