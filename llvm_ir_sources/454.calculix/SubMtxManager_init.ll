; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [58 x i8] c"\0A fatal error in SubMtxManager_init(%p,%d,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @SubMtxManager_init(%struct._SubMtxManager* %manager, i32 %lockflag, i32 %mode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %manager}, i64 0, metadata !62), !dbg !65
  tail call void @llvm.dbg.value(metadata !{i32 %lockflag}, i64 0, metadata !63), !dbg !66
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !64), !dbg !67
  %cmp = icmp eq %struct._SubMtxManager* %manager, null, !dbg !68
  %0 = icmp ugt i32 %lockflag, 2, !dbg !68
  %or.cond = or i1 %cmp, %0, !dbg !68
  %1 = icmp ugt i32 %mode, 1, !dbg !68
  %or.cond27 = or i1 %or.cond, %1, !dbg !68
  br i1 %or.cond27, label %if.then, label %if.end, !dbg !68

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !69, !tbaa !71
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), %struct._SubMtxManager* %manager, i32 %lockflag, i32 %mode) #5, !dbg !69
  tail call void @exit(i32 -1) #6, !dbg !74
  unreachable, !dbg !74

if.end:                                           ; preds = %entry
  tail call void @SubMtxManager_clearData(%struct._SubMtxManager* %manager) #5, !dbg !75
  %cmp8 = icmp eq i32 %lockflag, 0, !dbg !76
  br i1 %cmp8, label %if.end12, label %if.then9, !dbg !76

if.then9:                                         ; preds = %if.end
  %call10 = tail call %struct._Lock* @Lock_new() #5, !dbg !77
  %lock = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 1, !dbg !77
  store %struct._Lock* %call10, %struct._Lock** %lock, align 8, !dbg !77, !tbaa !71
  tail call void @Lock_init(%struct._Lock* %call10, i32 %lockflag) #5, !dbg !79
  br label %if.end12, !dbg !80

if.end12:                                         ; preds = %if.end, %if.then9
  %mode13 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 2, !dbg !81
  store i32 %mode, i32* %mode13, align 4, !dbg !81, !tbaa !82
  ret void, !dbg !83
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @SubMtxManager_clearData(%struct._SubMtxManager*) #3

; Function Attrs: optsize
declare %struct._Lock* @Lock_new() #3

; Function Attrs: optsize
declare void @Lock_init(%struct._Lock*, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtxManager_init", metadata !"SubMtxManager_init", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtxManager*, i32, i32)* @SubMtxManager_init, null, null, metadata !61, i32 27} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 27] [SubMtxManager_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !20, metadata !20}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtxManager]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"SubMtxManager", i32 9, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtxManager] [line 9, size 0, align 0, offset 0] [from _SubMtxManager]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_SubMtxManager", i32 10, i64 448, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtxManager] [line 10, size 448, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../SubMtxManager.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !42, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"head", i32 11, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [head] [line 11, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!15 = metadata !{i32 786454, metadata !11, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../SubMtx/SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !30, metadata !39}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!23 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!24 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!25 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!26 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!27 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !28} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!29 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!30 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !31} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!31 = metadata !{i32 786454, metadata !17, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!32 = metadata !{i32 786451, metadata !33, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !34, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!33 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38}
!35 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!36 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!37 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!38 = metadata !{i32 786445, metadata !33, metadata !32, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!39 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !40} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!41 = metadata !{i32 786454, metadata !17, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!42 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lock", i32 12, i64 64, i64 64, i64 64, i32 0, metadata !43} ; [ DW_TAG_member ] [lock] [line 12, size 64, align 64, offset 64] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Lock]
!44 = metadata !{i32 786454, metadata !11, null, metadata !"Lock", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [Lock] [line 36, size 0, align 0, offset 0] [from _Lock]
!45 = metadata !{i32 786451, metadata !46, null, metadata !"_Lock", i32 37, i64 128, i64 64, i32 0, i32 0, null, metadata !47, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Lock] [line 37, size 128, align 64, offset 0] [from ]
!46 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../Lock/Lock.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!47 = metadata !{metadata !48, metadata !50, metadata !51}
!48 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"mutex", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [mutex] [line 45, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!50 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"nlocks", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [nlocks] [line 47, size 32, align 32, offset 64] [from int]
!51 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"nunlocks", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [nunlocks] [line 48, size 32, align 32, offset 96] [from int]
!52 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mode", i32 13, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [mode] [line 13, size 32, align 32, offset 128] [from int]
!53 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nactive", i32 14, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [nactive] [line 14, size 32, align 32, offset 160] [from int]
!54 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nbytesactive", i32 15, i64 32, i64 32, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [nbytesactive] [line 15, size 32, align 32, offset 192] [from int]
!55 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nbytesrequested", i32 16, i64 32, i64 32, i64 224, i32 0, metadata !20} ; [ DW_TAG_member ] [nbytesrequested] [line 16, size 32, align 32, offset 224] [from int]
!56 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nbytesalloc", i32 17, i64 32, i64 32, i64 256, i32 0, metadata !20} ; [ DW_TAG_member ] [nbytesalloc] [line 17, size 32, align 32, offset 256] [from int]
!57 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nrequests", i32 18, i64 32, i64 32, i64 288, i32 0, metadata !20} ; [ DW_TAG_member ] [nrequests] [line 18, size 32, align 32, offset 288] [from int]
!58 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nreleases", i32 19, i64 32, i64 32, i64 320, i32 0, metadata !20} ; [ DW_TAG_member ] [nreleases] [line 19, size 32, align 32, offset 320] [from int]
!59 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlocks", i32 20, i64 32, i64 32, i64 352, i32 0, metadata !20} ; [ DW_TAG_member ] [nlocks] [line 20, size 32, align 32, offset 352] [from int]
!60 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nunlocks", i32 21, i64 32, i64 32, i64 384, i32 0, metadata !20} ; [ DW_TAG_member ] [nunlocks] [line 21, size 32, align 32, offset 384] [from int]
!61 = metadata !{metadata !62, metadata !63, metadata !64}
!62 = metadata !{i32 786689, metadata !4, metadata !"manager", metadata !5, i32 16777240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [manager] [line 24]
!63 = metadata !{i32 786689, metadata !4, metadata !"lockflag", metadata !5, i32 33554457, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lockflag] [line 25]
!64 = metadata !{i32 786689, metadata !4, metadata !"mode", metadata !5, i32 50331674, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 26]
!65 = metadata !{i32 24, i32 0, metadata !4, null}
!66 = metadata !{i32 25, i32 0, metadata !4, null}
!67 = metadata !{i32 26, i32 0, metadata !4, null}
!68 = metadata !{i32 33, i32 0, metadata !4, null}
!69 = metadata !{i32 36, i32 0, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !4, i32 35, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_init.c]
!71 = metadata !{metadata !"any pointer", metadata !72}
!72 = metadata !{metadata !"omnipotent char", metadata !73}
!73 = metadata !{metadata !"Simple C/C++ TBAA"}
!74 = metadata !{i32 38, i32 0, metadata !70, null}
!75 = metadata !{i32 45, i32 0, metadata !4, null}
!76 = metadata !{i32 46, i32 0, metadata !4, null}
!77 = metadata !{i32 52, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_init.c]
!79 = metadata !{i32 53, i32 0, metadata !78, null}
!80 = metadata !{i32 54, i32 0, metadata !78, null}
!81 = metadata !{i32 60, i32 0, metadata !4, null}
!82 = metadata !{metadata !"int", metadata !72}
!83 = metadata !{i32 62, i32 0, metadata !4, null}
