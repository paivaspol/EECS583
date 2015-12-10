; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ChvManager = type { %struct._Chv*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [55 x i8] c"\0A fatal error in ChvManager_init(%p,%d,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @ChvManager_init(%struct._ChvManager* %manager, i32 %lockflag, i32 %mode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ChvManager* %manager}, i64 0, metadata !64), !dbg !67
  tail call void @llvm.dbg.value(metadata !{i32 %lockflag}, i64 0, metadata !65), !dbg !68
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !66), !dbg !69
  %cmp = icmp eq %struct._ChvManager* %manager, null, !dbg !70
  %0 = icmp ugt i32 %lockflag, 2, !dbg !70
  %or.cond = or i1 %cmp, %0, !dbg !70
  %1 = icmp ugt i32 %mode, 1, !dbg !70
  %or.cond27 = or i1 %or.cond, %1, !dbg !70
  br i1 %or.cond27, label %if.then, label %if.end, !dbg !70

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !71, !tbaa !73
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), %struct._ChvManager* %manager, i32 %lockflag, i32 %mode) #5, !dbg !71
  tail call void @exit(i32 -1) #6, !dbg !76
  unreachable, !dbg !76

if.end:                                           ; preds = %entry
  tail call void @ChvManager_clearData(%struct._ChvManager* %manager) #5, !dbg !77
  %cmp8 = icmp sgt i32 %lockflag, 0, !dbg !78
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !78

if.then9:                                         ; preds = %if.end
  %call10 = tail call %struct._Lock* @Lock_new() #5, !dbg !79
  %lock = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 1, !dbg !79
  store %struct._Lock* %call10, %struct._Lock** %lock, align 8, !dbg !79, !tbaa !73
  tail call void @Lock_init(%struct._Lock* %call10, i32 %lockflag) #5, !dbg !81
  br label %if.end12, !dbg !82

if.end12:                                         ; preds = %if.then9, %if.end
  %mode13 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 2, !dbg !83
  store i32 %mode, i32* %mode13, align 4, !dbg !83, !tbaa !84
  ret void, !dbg !85
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @ChvManager_clearData(%struct._ChvManager*) #3

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ChvManager_init", metadata !"ChvManager_init", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ChvManager*, i32, i32)* @ChvManager_init, null, null, metadata !63, i32 27} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 27] [ChvManager_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !20, metadata !20}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ChvManager]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"ChvManager", i32 9, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [ChvManager] [line 9, size 0, align 0, offset 0] [from _ChvManager]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_ChvManager", i32 10, i64 448, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ChvManager] [line 10, size 448, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../ChvManager.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !44, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"head", i32 11, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [head] [line 11, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!15 = metadata !{i32 786454, metadata !11, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../Chv/Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !28, metadata !29, metadata !32, metadata !41}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!23 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!24 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!25 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!26 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !27} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!28 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !27} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!29 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!31 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!32 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !33} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!33 = metadata !{i32 786454, metadata !17, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!34 = metadata !{i32 786451, metadata !35, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !36, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!35 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40}
!37 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!38 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!39 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!40 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!41 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !42} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!43 = metadata !{i32 786454, metadata !17, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lock", i32 12, i64 64, i64 64, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [lock] [line 12, size 64, align 64, offset 64] [from ]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Lock]
!46 = metadata !{i32 786454, metadata !11, null, metadata !"Lock", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [Lock] [line 36, size 0, align 0, offset 0] [from _Lock]
!47 = metadata !{i32 786451, metadata !48, null, metadata !"_Lock", i32 37, i64 128, i64 64, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Lock] [line 37, size 128, align 64, offset 0] [from ]
!48 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../Lock/Lock.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!49 = metadata !{metadata !50, metadata !52, metadata !53}
!50 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"mutex", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ] [mutex] [line 45, size 64, align 64, offset 0] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"nlocks", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [nlocks] [line 47, size 32, align 32, offset 64] [from int]
!53 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"nunlocks", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !20} ; [ DW_TAG_member ] [nunlocks] [line 48, size 32, align 32, offset 96] [from int]
!54 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mode", i32 13, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [mode] [line 13, size 32, align 32, offset 128] [from int]
!55 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nactive", i32 14, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [nactive] [line 14, size 32, align 32, offset 160] [from int]
!56 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nbytesactive", i32 15, i64 32, i64 32, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [nbytesactive] [line 15, size 32, align 32, offset 192] [from int]
!57 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nbytesrequested", i32 16, i64 32, i64 32, i64 224, i32 0, metadata !20} ; [ DW_TAG_member ] [nbytesrequested] [line 16, size 32, align 32, offset 224] [from int]
!58 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nbytesalloc", i32 17, i64 32, i64 32, i64 256, i32 0, metadata !20} ; [ DW_TAG_member ] [nbytesalloc] [line 17, size 32, align 32, offset 256] [from int]
!59 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nrequests", i32 18, i64 32, i64 32, i64 288, i32 0, metadata !20} ; [ DW_TAG_member ] [nrequests] [line 18, size 32, align 32, offset 288] [from int]
!60 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nreleases", i32 19, i64 32, i64 32, i64 320, i32 0, metadata !20} ; [ DW_TAG_member ] [nreleases] [line 19, size 32, align 32, offset 320] [from int]
!61 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlocks", i32 20, i64 32, i64 32, i64 352, i32 0, metadata !20} ; [ DW_TAG_member ] [nlocks] [line 20, size 32, align 32, offset 352] [from int]
!62 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nunlocks", i32 21, i64 32, i64 32, i64 384, i32 0, metadata !20} ; [ DW_TAG_member ] [nunlocks] [line 21, size 32, align 32, offset 384] [from int]
!63 = metadata !{metadata !64, metadata !65, metadata !66}
!64 = metadata !{i32 786689, metadata !4, metadata !"manager", metadata !5, i32 16777240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [manager] [line 24]
!65 = metadata !{i32 786689, metadata !4, metadata !"lockflag", metadata !5, i32 33554457, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lockflag] [line 25]
!66 = metadata !{i32 786689, metadata !4, metadata !"mode", metadata !5, i32 50331674, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 26]
!67 = metadata !{i32 24, i32 0, metadata !4, null}
!68 = metadata !{i32 25, i32 0, metadata !4, null}
!69 = metadata !{i32 26, i32 0, metadata !4, null}
!70 = metadata !{i32 33, i32 0, metadata !4, null}
!71 = metadata !{i32 36, i32 0, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !4, i32 35, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_init.c]
!73 = metadata !{metadata !"any pointer", metadata !74}
!74 = metadata !{metadata !"omnipotent char", metadata !75}
!75 = metadata !{metadata !"Simple C/C++ TBAA"}
!76 = metadata !{i32 38, i32 0, metadata !72, null}
!77 = metadata !{i32 45, i32 0, metadata !4, null}
!78 = metadata !{i32 46, i32 0, metadata !4, null}
!79 = metadata !{i32 52, i32 0, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_init.c]
!81 = metadata !{i32 53, i32 0, metadata !80, null}
!82 = metadata !{i32 54, i32 0, metadata !80, null}
!83 = metadata !{i32 60, i32 0, metadata !4, null}
!84 = metadata !{metadata !"int", metadata !74}
!85 = metadata !{i32 62, i32 0, metadata !4, null}
