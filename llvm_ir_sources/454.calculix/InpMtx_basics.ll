; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in InpMtx_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [50 x i8] c"\0A fatal error in InpMtx_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A fatal error in InpMtx_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._InpMtx* @InpMtx_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 184) #5, !dbg !62
  %0 = bitcast i8* %call to %struct._InpMtx*, !dbg !62
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %0}, i64 0, metadata !48), !dbg !62
  %cmp = icmp eq i8* %call, null, !dbg !62
  br i1 %cmp, label %if.then, label %if.end, !dbg !62

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !64, !tbaa !66
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 184, i32 21, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !64
  tail call void @exit(i32 -1) #6, !dbg !64
  unreachable, !dbg !64

if.end:                                           ; preds = %entry
  tail call void @InpMtx_setDefaultFields(%struct._InpMtx* %0) #7, !dbg !69
  ret %struct._InpMtx* %0, !dbg !70
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_setDefaultFields(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !53), !dbg !71
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !72
  br i1 %cmp, label %if.then, label %if.end, !dbg !72

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !73, !tbaa !66
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !73
  tail call void @exit(i32 -1) #6, !dbg !75
  unreachable, !dbg !75

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !76
  store i32 1, i32* %coordType, align 4, !dbg !76, !tbaa !77
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !78
  store i32 1, i32* %storageMode, align 4, !dbg !78, !tbaa !77
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !79
  store i32 1, i32* %inputMode, align 4, !dbg !79, !tbaa !77
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3, !dbg !80
  store i32 0, i32* %maxnent, align 4, !dbg !80, !tbaa !77
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !81
  store i32 0, i32* %nent, align 4, !dbg !81, !tbaa !77
  %resizeMultiple = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 5, !dbg !82
  store double 1.250000e+00, double* %resizeMultiple, align 8, !dbg !82, !tbaa !83
  %maxnvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 9, !dbg !84
  store i32 0, i32* %maxnvector, align 4, !dbg !84, !tbaa !77
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10, !dbg !85
  store i32 0, i32* %nvector, align 4, !dbg !85, !tbaa !77
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !86
  tail call void @IV_setDefaultFields(%struct._IV* %ivec1IV) #5, !dbg !86
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !87
  tail call void @IV_setDefaultFields(%struct._IV* %ivec2IV) #5, !dbg !87
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !88
  tail call void @DV_setDefaultFields(%struct._DV* %dvecDV) #5, !dbg !88
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11, !dbg !89
  tail call void @IV_setDefaultFields(%struct._IV* %vecidsIV) #5, !dbg !89
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, !dbg !90
  tail call void @IV_setDefaultFields(%struct._IV* %sizesIV) #5, !dbg !90
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, !dbg !91
  tail call void @IV_setDefaultFields(%struct._IV* %offsetsIV) #5, !dbg !91
  ret void, !dbg !92
}

; Function Attrs: optsize
declare void @IV_setDefaultFields(%struct._IV*) #3

; Function Attrs: optsize
declare void @DV_setDefaultFields(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_clearData(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !56), !dbg !93
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !94
  br i1 %cmp, label %if.then, label %if.end, !dbg !94

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !95, !tbaa !66
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !95
  tail call void @exit(i32 -1) #6, !dbg !97
  unreachable, !dbg !97

if.end:                                           ; preds = %entry
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !98
  tail call void @IV_clearData(%struct._IV* %ivec1IV) #5, !dbg !98
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !99
  tail call void @IV_clearData(%struct._IV* %ivec2IV) #5, !dbg !99
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !100
  tail call void @DV_clearData(%struct._DV* %dvecDV) #5, !dbg !100
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11, !dbg !101
  tail call void @IV_clearData(%struct._IV* %vecidsIV) #5, !dbg !101
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, !dbg !102
  tail call void @IV_clearData(%struct._IV* %sizesIV) #5, !dbg !102
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, !dbg !103
  tail call void @IV_clearData(%struct._IV* %offsetsIV) #5, !dbg !103
  tail call void @InpMtx_setDefaultFields(%struct._InpMtx* %inpmtx) #7, !dbg !104
  ret void, !dbg !105
}

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #3

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define noalias %struct._InpMtx* @InpMtx_free(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !61), !dbg !106
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !107
  br i1 %cmp, label %if.then, label %if.end, !dbg !107

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !108, !tbaa !66
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !108
  tail call void @exit(i32 -1) #6, !dbg !110
  unreachable, !dbg !110

if.end:                                           ; preds = %entry
  tail call void @InpMtx_clearData(%struct._InpMtx* %inpmtx) #7, !dbg !111
  %1 = bitcast %struct._InpMtx* %inpmtx to i8*, !dbg !112
  tail call void @free(i8* %1) #5, !dbg !112
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !61), !dbg !112
  ret %struct._InpMtx* null, !dbg !115
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !49, metadata !54, metadata !57}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_new", metadata !"InpMtx_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._InpMtx* ()* @InpMtx_new, null, null, metadata !47, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [InpMtx_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from InpMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"InpMtx", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [InpMtx] [line 51, size 0, align 0, offset 0] [from _InpMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_InpMtx", i32 52, i64 1472, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_InpMtx] [line 52, size 1472, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../InpMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !21, metadata !31, metadata !32, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"coordType", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [coordType] [line 53, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"storageMode", i32 54, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [storageMode] [line 54, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inputMode", i32 55, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [inputMode] [line 55, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxnent", i32 56, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnent] [line 56, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nent", i32 57, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 57, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"resizeMultiple", i32 58, i64 64, i64 64, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [resizeMultiple] [line 58, size 64, align 64, offset 192] [from double]
!20 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ivec1IV", i32 59, i64 192, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [ivec1IV] [line 59, size 192, align 64, offset 256] [from IV]
!22 = metadata !{i32 786454, metadata !11, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!29 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ivec2IV", i32 60, i64 192, i64 64, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [ivec2IV] [line 60, size 192, align 64, offset 448] [from IV]
!32 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"dvecDV", i32 61, i64 192, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [dvecDV] [line 61, size 192, align 64, offset 640] [from DV]
!33 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!34 = metadata !{i32 786451, metadata !35, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !36, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!35 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40}
!37 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!38 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!39 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!40 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!42 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxnvector", i32 62, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnvector] [line 62, size 32, align 32, offset 832] [from int]
!43 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvector", i32 63, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [nvector] [line 63, size 32, align 32, offset 864] [from int]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vecidsIV", i32 64, i64 192, i64 64, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [vecidsIV] [line 64, size 192, align 64, offset 896] [from IV]
!45 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sizesIV", i32 65, i64 192, i64 64, i64 1088, i32 0, metadata !22} ; [ DW_TAG_member ] [sizesIV] [line 65, size 192, align 64, offset 1088] [from IV]
!46 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"offsetsIV", i32 66, i64 192, i64 64, i64 1280, i32 0, metadata !22} ; [ DW_TAG_member ] [offsetsIV] [line 66, size 192, align 64, offset 1280] [from IV]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786688, metadata !4, metadata !"inpmtx", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inpmtx] [line 19]
!49 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_setDefaultFields", metadata !"InpMtx_setDefaultFields", metadata !"", i32 35, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*)* @InpMtx_setDefaultFields, null, null, metadata !52, i32 37} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 37] [InpMtx_setDefaultFields]
!50 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{null, metadata !8}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 786689, metadata !49, metadata !"inpmtx", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 36]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_clearData", metadata !"InpMtx_clearData", metadata !"", i32 69, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*)* @InpMtx_clearData, null, null, metadata !55, i32 71} ; [ DW_TAG_subprogram ] [line 69] [def] [scope 71] [InpMtx_clearData]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786689, metadata !54, metadata !"inpmtx", metadata !5, i32 16777286, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 70]
!57 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_free", metadata !"InpMtx_free", metadata !"", i32 111, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._InpMtx* (%struct._InpMtx*)* @InpMtx_free, null, null, metadata !60, i32 113} ; [ DW_TAG_subprogram ] [line 111] [def] [scope 113] [InpMtx_free]
!58 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!59 = metadata !{metadata !8, metadata !8}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786689, metadata !57, metadata !"inpmtx", metadata !5, i32 16777328, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 112]
!62 = metadata !{i32 21, i32 0, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c]
!64 = metadata !{i32 21, i32 0, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !63, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c]
!66 = metadata !{metadata !"any pointer", metadata !67}
!67 = metadata !{metadata !"omnipotent char", metadata !68}
!68 = metadata !{metadata !"Simple C/C++ TBAA"}
!69 = metadata !{i32 22, i32 0, metadata !4, null}
!70 = metadata !{i32 24, i32 0, metadata !4, null}
!71 = metadata !{i32 36, i32 0, metadata !49, null}
!72 = metadata !{i32 38, i32 0, metadata !49, null}
!73 = metadata !{i32 39, i32 0, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !49, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c]
!75 = metadata !{i32 41, i32 0, metadata !74, null}
!76 = metadata !{i32 43, i32 0, metadata !49, null}
!77 = metadata !{metadata !"int", metadata !67}
!78 = metadata !{i32 44, i32 0, metadata !49, null}
!79 = metadata !{i32 45, i32 0, metadata !49, null}
!80 = metadata !{i32 46, i32 0, metadata !49, null}
!81 = metadata !{i32 47, i32 0, metadata !49, null}
!82 = metadata !{i32 48, i32 0, metadata !49, null}
!83 = metadata !{metadata !"double", metadata !67}
!84 = metadata !{i32 49, i32 0, metadata !49, null}
!85 = metadata !{i32 50, i32 0, metadata !49, null}
!86 = metadata !{i32 51, i32 0, metadata !49, null}
!87 = metadata !{i32 52, i32 0, metadata !49, null}
!88 = metadata !{i32 53, i32 0, metadata !49, null}
!89 = metadata !{i32 54, i32 0, metadata !49, null}
!90 = metadata !{i32 55, i32 0, metadata !49, null}
!91 = metadata !{i32 56, i32 0, metadata !49, null}
!92 = metadata !{i32 58, i32 0, metadata !49, null} ; [ DW_TAG_imported_module ]
!93 = metadata !{i32 70, i32 0, metadata !54, null}
!94 = metadata !{i32 77, i32 0, metadata !54, null}
!95 = metadata !{i32 78, i32 0, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !54, i32 77, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c]
!97 = metadata !{i32 80, i32 0, metadata !96, null}
!98 = metadata !{i32 87, i32 0, metadata !54, null}
!99 = metadata !{i32 88, i32 0, metadata !54, null}
!100 = metadata !{i32 89, i32 0, metadata !54, null}
!101 = metadata !{i32 90, i32 0, metadata !54, null}
!102 = metadata !{i32 91, i32 0, metadata !54, null}
!103 = metadata !{i32 92, i32 0, metadata !54, null}
!104 = metadata !{i32 98, i32 0, metadata !54, null}
!105 = metadata !{i32 100, i32 0, metadata !54, null}
!106 = metadata !{i32 112, i32 0, metadata !57, null}
!107 = metadata !{i32 114, i32 0, metadata !57, null}
!108 = metadata !{i32 115, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !57, i32 114, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c]
!110 = metadata !{i32 117, i32 0, metadata !109, null}
!111 = metadata !{i32 119, i32 0, metadata !57, null}
!112 = metadata !{i32 120, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !57, i32 120, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_basics.c]
!114 = metadata !{%struct._InpMtx* null}
!115 = metadata !{i32 122, i32 0, metadata !57, null}
