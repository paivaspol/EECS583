; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Pencil = type { i32, i32, %struct._InpMtx*, %struct._InpMtx*, [2 x double] }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in Pencil_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [50 x i8] c"\0A fatal error in Pencil_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Pencil_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Pencil* @Pencil_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 40) #6, !dbg !75
  %0 = bitcast i8* %call to %struct._Pencil*, !dbg !75
  tail call void @llvm.dbg.value(metadata !{%struct._Pencil* %0}, i64 0, metadata !61), !dbg !75
  %cmp = icmp eq i8* %call, null, !dbg !75
  br i1 %cmp, label %if.then, label %if.end, !dbg !75

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !77, !tbaa !79
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 40, i32 21, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !77
  tail call void @exit(i32 -1) #7, !dbg !77
  unreachable, !dbg !77

if.end:                                           ; preds = %entry
  tail call void @Pencil_setDefaultFields(%struct._Pencil* %0) #8, !dbg !82
  ret %struct._Pencil* %0, !dbg !83
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Pencil_setDefaultFields(%struct._Pencil* %pencil) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Pencil* %pencil}, i64 0, metadata !66), !dbg !84
  %cmp = icmp eq %struct._Pencil* %pencil, null, !dbg !85
  br i1 %cmp, label %if.then, label %if.end, !dbg !85

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !86, !tbaa !79
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), %struct._Pencil* null) #6, !dbg !86
  tail call void @exit(i32 -1) #7, !dbg !88
  unreachable, !dbg !88

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 0, !dbg !89
  store i32 1, i32* %type, align 4, !dbg !89, !tbaa !90
  %symflag = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 1, !dbg !91
  %1 = bitcast i32* %symflag to i8*, !dbg !92
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 4, i1 false), !dbg !93
  ret void, !dbg !92
}

; Function Attrs: nounwind optsize uwtable
define void @Pencil_clearData(%struct._Pencil* %pencil) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Pencil* %pencil}, i64 0, metadata !69), !dbg !94
  %cmp = icmp eq %struct._Pencil* %pencil, null, !dbg !95
  br i1 %cmp, label %if.then, label %if.end, !dbg !95

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !96, !tbaa !79
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), %struct._Pencil* null) #6, !dbg !96
  tail call void @exit(i32 -1) #7, !dbg !98
  unreachable, !dbg !98

if.end:                                           ; preds = %entry
  %inpmtxA = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !99
  %1 = load %struct._InpMtx** %inpmtxA, align 8, !dbg !99, !tbaa !79
  %cmp1 = icmp eq %struct._InpMtx* %1, null, !dbg !99
  br i1 %cmp1, label %if.end5, label %if.then2, !dbg !99

if.then2:                                         ; preds = %if.end
  %call4 = tail call %struct._InpMtx* @InpMtx_free(%struct._InpMtx* %1) #6, !dbg !100
  br label %if.end5, !dbg !102

if.end5:                                          ; preds = %if.end, %if.then2
  %inpmtxB = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !103
  %2 = load %struct._InpMtx** %inpmtxB, align 8, !dbg !103, !tbaa !79
  %cmp6 = icmp eq %struct._InpMtx* %2, null, !dbg !103
  br i1 %cmp6, label %if.end10, label %if.then7, !dbg !103

if.then7:                                         ; preds = %if.end5
  %call9 = tail call %struct._InpMtx* @InpMtx_free(%struct._InpMtx* %2) #6, !dbg !104
  br label %if.end10, !dbg !106

if.end10:                                         ; preds = %if.end5, %if.then7
  tail call void @Pencil_setDefaultFields(%struct._Pencil* %pencil) #8, !dbg !107
  ret void, !dbg !108
}

; Function Attrs: optsize
declare %struct._InpMtx* @InpMtx_free(%struct._InpMtx*) #3

; Function Attrs: nounwind optsize uwtable
define noalias %struct._Pencil* @Pencil_free(%struct._Pencil* %pencil) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Pencil* %pencil}, i64 0, metadata !74), !dbg !109
  %cmp = icmp eq %struct._Pencil* %pencil, null, !dbg !110
  br i1 %cmp, label %if.then, label %if.end, !dbg !110

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !111, !tbaa !79
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._Pencil* null) #6, !dbg !111
  tail call void @exit(i32 -1) #7, !dbg !113
  unreachable, !dbg !113

if.end:                                           ; preds = %entry
  tail call void @Pencil_clearData(%struct._Pencil* %pencil) #8, !dbg !114
  %1 = bitcast %struct._Pencil* %pencil to i8*, !dbg !115
  tail call void @free(i8* %1) #6, !dbg !115
  tail call void @llvm.dbg.value(metadata !117, i64 0, metadata !74), !dbg !115
  ret %struct._Pencil* null, !dbg !118
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !62, metadata !67, metadata !70}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Pencil_new", metadata !"Pencil_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Pencil* ()* @Pencil_new, null, null, metadata !60, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [Pencil_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Pencil]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Pencil", i32 17, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Pencil] [line 17, size 0, align 0, offset 0] [from _Pencil]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Pencil", i32 18, i64 320, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Pencil] [line 18, size 320, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../Pencil.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !55, metadata !56}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 19, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 19, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"symflag", i32 20, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [symflag] [line 20, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inpmtxA", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [inpmtxA] [line 21, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from InpMtx]
!18 = metadata !{i32 786454, metadata !11, null, metadata !"InpMtx", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [InpMtx] [line 51, size 0, align 0, offset 0] [from _InpMtx]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_InpMtx", i32 52, i64 1472, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_InpMtx] [line 52, size 1472, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../InpMtx/InpMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !29, metadata !39, metadata !40, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"coordType", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [coordType] [line 53, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"storageMode", i32 54, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [storageMode] [line 54, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"inputMode", i32 55, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [inputMode] [line 55, size 32, align 32, offset 64] [from int]
!25 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"maxnent", i32 56, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnent] [line 56, size 32, align 32, offset 96] [from int]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nent", i32 57, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 57, size 32, align 32, offset 128] [from int]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"resizeMultiple", i32 58, i64 64, i64 64, i64 192, i32 0, metadata !28} ; [ DW_TAG_member ] [resizeMultiple] [line 58, size 64, align 64, offset 192] [from double]
!28 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!29 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"ivec1IV", i32 59, i64 192, i64 64, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [ivec1IV] [line 59, size 192, align 64, offset 256] [from IV]
!30 = metadata !{i32 786454, metadata !20, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!39 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"ivec2IV", i32 60, i64 192, i64 64, i64 448, i32 0, metadata !30} ; [ DW_TAG_member ] [ivec2IV] [line 60, size 192, align 64, offset 448] [from IV]
!40 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"dvecDV", i32 61, i64 192, i64 64, i64 640, i32 0, metadata !41} ; [ DW_TAG_member ] [dvecDV] [line 61, size 192, align 64, offset 640] [from DV]
!41 = metadata !{i32 786454, metadata !20, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!42 = metadata !{i32 786451, metadata !43, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !44, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!43 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48}
!45 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!46 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!47 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!48 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!50 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"maxnvector", i32 62, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnvector] [line 62, size 32, align 32, offset 832] [from int]
!51 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nvector", i32 63, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [nvector] [line 63, size 32, align 32, offset 864] [from int]
!52 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"vecidsIV", i32 64, i64 192, i64 64, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [vecidsIV] [line 64, size 192, align 64, offset 896] [from IV]
!53 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"sizesIV", i32 65, i64 192, i64 64, i64 1088, i32 0, metadata !30} ; [ DW_TAG_member ] [sizesIV] [line 65, size 192, align 64, offset 1088] [from IV]
!54 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"offsetsIV", i32 66, i64 192, i64 64, i64 1280, i32 0, metadata !30} ; [ DW_TAG_member ] [offsetsIV] [line 66, size 192, align 64, offset 1280] [from IV]
!55 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inpmtxB", i32 22, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [inpmtxB] [line 22, size 64, align 64, offset 128] [from ]
!56 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sigma", i32 23, i64 128, i64 64, i64 192, i32 0, metadata !57} ; [ DW_TAG_member ] [sigma] [line 23, size 128, align 64, offset 192] [from ]
!57 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !28, metadata !58, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from double]
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!60 = metadata !{metadata !61}
!61 = metadata !{i32 786688, metadata !4, metadata !"pencil", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pencil] [line 19]
!62 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Pencil_setDefaultFields", metadata !"Pencil_setDefaultFields", metadata !"", i32 35, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Pencil*)* @Pencil_setDefaultFields, null, null, metadata !65, i32 37} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 37] [Pencil_setDefaultFields]
!63 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{null, metadata !8}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 786689, metadata !62, metadata !"pencil", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pencil] [line 36]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Pencil_clearData", metadata !"Pencil_clearData", metadata !"", i32 61, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Pencil*)* @Pencil_clearData, null, null, metadata !68, i32 63} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 63] [Pencil_clearData]
!68 = metadata !{metadata !69}
!69 = metadata !{i32 786689, metadata !67, metadata !"pencil", metadata !5, i32 16777278, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pencil] [line 62]
!70 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Pencil_free", metadata !"Pencil_free", metadata !"", i32 103, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Pencil* (%struct._Pencil*)* @Pencil_free, null, null, metadata !73, i32 105} ; [ DW_TAG_subprogram ] [line 103] [def] [scope 105] [Pencil_free]
!71 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!72 = metadata !{metadata !8, metadata !8}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786689, metadata !70, metadata !"pencil", metadata !5, i32 16777320, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pencil] [line 104]
!75 = metadata !{i32 21, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c]
!77 = metadata !{i32 21, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !76, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c]
!79 = metadata !{metadata !"any pointer", metadata !80}
!80 = metadata !{metadata !"omnipotent char", metadata !81}
!81 = metadata !{metadata !"Simple C/C++ TBAA"}
!82 = metadata !{i32 22, i32 0, metadata !4, null}
!83 = metadata !{i32 24, i32 0, metadata !4, null}
!84 = metadata !{i32 36, i32 0, metadata !62, null}
!85 = metadata !{i32 38, i32 0, metadata !62, null}
!86 = metadata !{i32 39, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !62, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c]
!88 = metadata !{i32 41, i32 0, metadata !87, null}
!89 = metadata !{i32 43, i32 0, metadata !62, null}
!90 = metadata !{metadata !"int", metadata !80}
!91 = metadata !{i32 44, i32 0, metadata !62, null}
!92 = metadata !{i32 50, i32 0, metadata !62, null}
!93 = metadata !{i32 47, i32 0, metadata !62, null}
!94 = metadata !{i32 62, i32 0, metadata !67, null}
!95 = metadata !{i32 69, i32 0, metadata !67, null}
!96 = metadata !{i32 70, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !67, i32 69, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c]
!98 = metadata !{i32 72, i32 0, metadata !97, null}
!99 = metadata !{i32 79, i32 0, metadata !67, null}
!100 = metadata !{i32 80, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !67, i32 79, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c]
!102 = metadata !{i32 81, i32 0, metadata !101, null}
!103 = metadata !{i32 82, i32 0, metadata !67, null}
!104 = metadata !{i32 83, i32 0, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !67, i32 82, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c]
!106 = metadata !{i32 84, i32 0, metadata !105, null}
!107 = metadata !{i32 90, i32 0, metadata !67, null}
!108 = metadata !{i32 92, i32 0, metadata !67, null}
!109 = metadata !{i32 104, i32 0, metadata !70, null}
!110 = metadata !{i32 106, i32 0, metadata !70, null}
!111 = metadata !{i32 107, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !70, i32 106, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c]
!113 = metadata !{i32 109, i32 0, metadata !112, null}
!114 = metadata !{i32 111, i32 0, metadata !70, null}
!115 = metadata !{i32 112, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !70, i32 112, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_basics.c]
!117 = metadata !{%struct._Pencil* null}
!118 = metadata !{i32 114, i32 0, metadata !70, null}
