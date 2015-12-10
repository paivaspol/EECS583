; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [95 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c\00", align 1
@.str2 = private unnamed_addr constant [63 x i8] c"\0A fatal error in SubMtxManager_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"\0A fatal error in SubMtxManager_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [52 x i8] c"\0A fatal error in SubMtxManager_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._SubMtxManager* @SubMtxManager_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 56) #6, !dbg !75
  %0 = bitcast i8* %call to %struct._SubMtxManager*, !dbg !75
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %0}, i64 0, metadata !62), !dbg !75
  %cmp = icmp eq i8* %call, null, !dbg !75
  br i1 %cmp, label %if.then, label %if.end, !dbg !75

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !77, !tbaa !79
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 56, i32 21, i8* getelementptr inbounds ([95 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !77
  tail call void @exit(i32 -1) #7, !dbg !77
  unreachable, !dbg !77

if.end:                                           ; preds = %entry
  tail call void @SubMtxManager_setDefaultFields(%struct._SubMtxManager* %0) #8, !dbg !82
  ret %struct._SubMtxManager* %0, !dbg !83
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @SubMtxManager_setDefaultFields(%struct._SubMtxManager* %manager) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %manager}, i64 0, metadata !67), !dbg !84
  %cmp = icmp eq %struct._SubMtxManager* %manager, null, !dbg !85
  br i1 %cmp, label %if.then, label %if.end, !dbg !85

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !86, !tbaa !79
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str2, i64 0, i64 0), %struct._SubMtxManager* null) #6, !dbg !86
  tail call void @exit(i32 -1) #7, !dbg !88
  unreachable, !dbg !88

if.end:                                           ; preds = %entry
  %1 = bitcast %struct._SubMtxManager* %manager to i8*, !dbg !89
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 52, i32 8, i1 false), !dbg !90
  ret void, !dbg !89
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtxManager_clearData(%struct._SubMtxManager* %manager) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %manager}, i64 0, metadata !70), !dbg !91
  %cmp = icmp eq %struct._SubMtxManager* %manager, null, !dbg !92
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !92

while.cond.preheader:                             ; preds = %entry
  %head = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 0, !dbg !93
  %0 = load %struct._SubMtx** %head, align 8, !dbg !93, !tbaa !79
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %0}, i64 0, metadata !71), !dbg !93
  %cmp114 = icmp eq %struct._SubMtx* %0, null, !dbg !93
  br i1 %cmp114, label %while.end, label %while.body, !dbg !93

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !94, !tbaa !79
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._SubMtxManager* null) #6, !dbg !94
  tail call void @exit(i32 -1) #7, !dbg !96
  unreachable, !dbg !96

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %2 = phi %struct._SubMtx* [ %4, %while.body ], [ %0, %while.cond.preheader ]
  %next = getelementptr inbounds %struct._SubMtx* %2, i64 0, i32 9, !dbg !97
  %3 = load %struct._SubMtx** %next, align 8, !dbg !97, !tbaa !79
  store %struct._SubMtx* %3, %struct._SubMtx** %head, align 8, !dbg !97, !tbaa !79
  tail call void @SubMtx_free(%struct._SubMtx* %2) #6, !dbg !99
  %4 = load %struct._SubMtx** %head, align 8, !dbg !93, !tbaa !79
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %2}, i64 0, metadata !71), !dbg !93
  %cmp1 = icmp eq %struct._SubMtx* %4, null, !dbg !93
  br i1 %cmp1, label %while.end, label %while.body, !dbg !93

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %lock = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 1, !dbg !100
  %5 = load %struct._Lock** %lock, align 8, !dbg !100, !tbaa !79
  %cmp3 = icmp eq %struct._Lock* %5, null, !dbg !100
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !100

if.then4:                                         ; preds = %while.end
  tail call void @Lock_free(%struct._Lock* %5) #6, !dbg !101
  br label %if.end6, !dbg !103

if.end6:                                          ; preds = %while.end, %if.then4
  tail call void @SubMtxManager_setDefaultFields(%struct._SubMtxManager* %manager) #8, !dbg !104
  ret void, !dbg !105
}

; Function Attrs: optsize
declare void @SubMtx_free(%struct._SubMtx*) #3

; Function Attrs: optsize
declare void @Lock_free(%struct._Lock*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtxManager_free(%struct._SubMtxManager* %manager) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %manager}, i64 0, metadata !74), !dbg !106
  %cmp = icmp eq %struct._SubMtxManager* %manager, null, !dbg !107
  br i1 %cmp, label %if.then, label %if.end, !dbg !107

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !108, !tbaa !79
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), %struct._SubMtxManager* null) #6, !dbg !108
  tail call void @exit(i32 -1) #7, !dbg !110
  unreachable, !dbg !110

if.end:                                           ; preds = %entry
  tail call void @SubMtxManager_clearData(%struct._SubMtxManager* %manager) #8, !dbg !111
  %1 = bitcast %struct._SubMtxManager* %manager to i8*, !dbg !112
  tail call void @free(i8* %1) #6, !dbg !112
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !74), !dbg !112
  ret void, !dbg !115
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !63, metadata !68, metadata !72}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtxManager_new", metadata !"SubMtxManager_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._SubMtxManager* ()* @SubMtxManager_new, null, null, metadata !61, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [SubMtxManager_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
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
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786688, metadata !4, metadata !"manager", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [manager] [line 19]
!63 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtxManager_setDefaultFields", metadata !"SubMtxManager_setDefaultFields", metadata !"", i32 35, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtxManager*)* @SubMtxManager_setDefaultFields, null, null, metadata !66, i32 37} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 37] [SubMtxManager_setDefaultFields]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{null, metadata !8}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786689, metadata !63, metadata !"manager", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [manager] [line 36]
!68 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtxManager_clearData", metadata !"SubMtxManager_clearData", metadata !"", i32 67, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtxManager*)* @SubMtxManager_clearData, null, null, metadata !69, i32 69} ; [ DW_TAG_subprogram ] [line 67] [def] [scope 69] [SubMtxManager_clearData]
!69 = metadata !{metadata !70, metadata !71}
!70 = metadata !{i32 786689, metadata !68, metadata !"manager", metadata !5, i32 16777284, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [manager] [line 68]
!71 = metadata !{i32 786688, metadata !68, metadata !"mtx", metadata !5, i32 70, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 70]
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtxManager_free", metadata !"SubMtxManager_free", metadata !"", i32 116, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtxManager*)* @SubMtxManager_free, null, null, metadata !73, i32 118} ; [ DW_TAG_subprogram ] [line 116] [def] [scope 118] [SubMtxManager_free]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786689, metadata !72, metadata !"manager", metadata !5, i32 16777333, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [manager] [line 117]
!75 = metadata !{i32 21, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c]
!77 = metadata !{i32 21, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !76, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c]
!79 = metadata !{metadata !"any pointer", metadata !80}
!80 = metadata !{metadata !"omnipotent char", metadata !81}
!81 = metadata !{metadata !"Simple C/C++ TBAA"}
!82 = metadata !{i32 22, i32 0, metadata !4, null}
!83 = metadata !{i32 24, i32 0, metadata !4, null}
!84 = metadata !{i32 36, i32 0, metadata !63, null}
!85 = metadata !{i32 38, i32 0, metadata !63, null}
!86 = metadata !{i32 39, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !63, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c]
!88 = metadata !{i32 42, i32 0, metadata !87, null}
!89 = metadata !{i32 56, i32 0, metadata !63, null}
!90 = metadata !{i32 45, i32 0, metadata !63, null}
!91 = metadata !{i32 68, i32 0, metadata !68, null}
!92 = metadata !{i32 76, i32 0, metadata !68, null}
!93 = metadata !{i32 86, i32 0, metadata !68, null}
!94 = metadata !{i32 77, i32 0, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !68, i32 76, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c]
!96 = metadata !{i32 79, i32 0, metadata !95, null}
!97 = metadata !{i32 87, i32 0, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !68, i32 86, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c]
!99 = metadata !{i32 88, i32 0, metadata !98, null}
!100 = metadata !{i32 90, i32 0, metadata !68, null}
!101 = metadata !{i32 96, i32 0, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !68, i32 90, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c]
!103 = metadata !{i32 97, i32 0, metadata !102, null}
!104 = metadata !{i32 103, i32 0, metadata !68, null}
!105 = metadata !{i32 105, i32 0, metadata !68, null}
!106 = metadata !{i32 117, i32 0, metadata !72, null}
!107 = metadata !{i32 119, i32 0, metadata !72, null}
!108 = metadata !{i32 120, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !72, i32 119, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c]
!110 = metadata !{i32 122, i32 0, metadata !109, null}
!111 = metadata !{i32 124, i32 0, metadata !72, null}
!112 = metadata !{i32 125, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !72, i32 125, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_basics.c]
!114 = metadata !{%struct._SubMtxManager* null}
!115 = metadata !{i32 127, i32 0, metadata !72, null}
