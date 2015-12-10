; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Pencil = type { i32, i32, %struct._InpMtx*, %struct._InpMtx*, [2 x double] }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [60 x i8] c"\0A fatal error in Pencil_init(%p,%d,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [103 x i8] c"\0A fatal error in Pencil_init(%p,%d,%d,%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str2 = private unnamed_addr constant [136 x i8] c"\0A fatal error in Pencil_init(%p,%d,%d,%p,%p,%p)\0A bad symflag %d, must be SPOOLES_SYMMETRIC,\0A SPOOLES_HERMITIAN or SPOOLES_NONSYMMETRIC\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Pencil_init(%struct._Pencil* %pencil, i32 %type, i32 %symflag, %struct._InpMtx* %inpmtxA, double* %sigma, %struct._InpMtx* %inpmtxB) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Pencil* %pencil}, i64 0, metadata !61), !dbg !77
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !62), !dbg !78
  tail call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !63), !dbg !79
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtxA}, i64 0, metadata !64), !dbg !80
  tail call void @llvm.dbg.value(metadata !{double* %sigma}, i64 0, metadata !65), !dbg !81
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtxB}, i64 0, metadata !66), !dbg !82
  %cmp = icmp eq %struct._Pencil* %pencil, null, !dbg !83
  %cmp1 = icmp eq double* %sigma, null, !dbg !83
  %or.cond = or i1 %cmp, %cmp1, !dbg !83
  br i1 %or.cond, label %if.then, label %if.end, !dbg !83

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !84, !tbaa !86
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str, i64 0, i64 0), %struct._Pencil* %pencil, i32 %type, i32 %symflag, %struct._InpMtx* %inpmtxA, double* %sigma, %struct._InpMtx* %inpmtxB) #5, !dbg !84
  tail call void @exit(i32 -1) #6, !dbg !89
  unreachable, !dbg !89

if.end:                                           ; preds = %entry
  %type.off = add i32 %type, -1, !dbg !90
  %1 = icmp ult i32 %type.off, 2, !dbg !90
  br i1 %1, label %if.end7, label %if.then5, !dbg !90

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !91, !tbaa !86
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([103 x i8]* @.str1, i64 0, i64 0), %struct._Pencil* %pencil, i32 %type, i32 %symflag, %struct._InpMtx* %inpmtxA, double* %sigma, %struct._InpMtx* %inpmtxB, i32 %type) #5, !dbg !91
  tail call void @exit(i32 -1) #6, !dbg !93
  unreachable, !dbg !93

if.end7:                                          ; preds = %if.end
  %3 = icmp ult i32 %symflag, 3, !dbg !94
  br i1 %3, label %if.end15, label %if.then13, !dbg !94

if.then13:                                        ; preds = %if.end7
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !95, !tbaa !86
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([136 x i8]* @.str2, i64 0, i64 0), %struct._Pencil* %pencil, i32 %type, i32 %symflag, %struct._InpMtx* %inpmtxA, double* %sigma, %struct._InpMtx* %inpmtxB, i32 %symflag) #5, !dbg !95
  tail call void @exit(i32 -1) #6, !dbg !97
  unreachable, !dbg !97

if.end15:                                         ; preds = %if.end7
  tail call void @Pencil_clearData(%struct._Pencil* %pencil) #5, !dbg !98
  %type16 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 0, !dbg !99
  store i32 %type, i32* %type16, align 4, !dbg !99, !tbaa !100
  %symflag17 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 1, !dbg !101
  store i32 %symflag, i32* %symflag17, align 4, !dbg !101, !tbaa !100
  %inpmtxA18 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !102
  store %struct._InpMtx* %inpmtxA, %struct._InpMtx** %inpmtxA18, align 8, !dbg !102, !tbaa !86
  %5 = load double* %sigma, align 8, !dbg !103, !tbaa !104
  %arrayidx20 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 0, !dbg !103
  store double %5, double* %arrayidx20, align 8, !dbg !103, !tbaa !104
  %arrayidx21 = getelementptr inbounds double* %sigma, i64 1, !dbg !105
  %6 = load double* %arrayidx21, align 8, !dbg !105, !tbaa !104
  %arrayidx23 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 4, i64 1, !dbg !105
  store double %6, double* %arrayidx23, align 8, !dbg !105, !tbaa !104
  %inpmtxB24 = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !106
  store %struct._InpMtx* %inpmtxB, %struct._InpMtx** %inpmtxB24, align 8, !dbg !106, !tbaa !86
  ret void, !dbg !107
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Pencil_clearData(%struct._Pencil*) #3

; Function Attrs: nounwind optsize uwtable
define void @Pencil_changeCoordType(%struct._Pencil* nocapture %pencil, i32 %newType) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Pencil* %pencil}, i64 0, metadata !71), !dbg !108
  tail call void @llvm.dbg.value(metadata !{i32 %newType}, i64 0, metadata !72), !dbg !109
  %inpmtxA = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !110
  %0 = load %struct._InpMtx** %inpmtxA, align 8, !dbg !110, !tbaa !86
  %cmp = icmp eq %struct._InpMtx* %0, null, !dbg !110
  br i1 %cmp, label %if.end, label %if.then, !dbg !110

if.then:                                          ; preds = %entry
  tail call void @InpMtx_changeCoordType(%struct._InpMtx* %0, i32 %newType) #5, !dbg !111
  br label %if.end, !dbg !113

if.end:                                           ; preds = %entry, %if.then
  %inpmtxB = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !114
  %1 = load %struct._InpMtx** %inpmtxB, align 8, !dbg !114, !tbaa !86
  %cmp2 = icmp eq %struct._InpMtx* %1, null, !dbg !114
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !114

if.then3:                                         ; preds = %if.end
  tail call void @InpMtx_changeCoordType(%struct._InpMtx* %1, i32 %newType) #5, !dbg !115
  br label %if.end5, !dbg !117

if.end5:                                          ; preds = %if.end, %if.then3
  ret void, !dbg !118
}

; Function Attrs: optsize
declare void @InpMtx_changeCoordType(%struct._InpMtx*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Pencil_changeStorageMode(%struct._Pencil* nocapture %pencil, i32 %newMode) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Pencil* %pencil}, i64 0, metadata !75), !dbg !119
  tail call void @llvm.dbg.value(metadata !{i32 %newMode}, i64 0, metadata !76), !dbg !120
  %inpmtxA = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 2, !dbg !121
  %0 = load %struct._InpMtx** %inpmtxA, align 8, !dbg !121, !tbaa !86
  %cmp = icmp eq %struct._InpMtx* %0, null, !dbg !121
  br i1 %cmp, label %if.end, label %if.then, !dbg !121

if.then:                                          ; preds = %entry
  tail call void @InpMtx_changeStorageMode(%struct._InpMtx* %0, i32 %newMode) #5, !dbg !122
  br label %if.end, !dbg !124

if.end:                                           ; preds = %entry, %if.then
  %inpmtxB = getelementptr inbounds %struct._Pencil* %pencil, i64 0, i32 3, !dbg !125
  %1 = load %struct._InpMtx** %inpmtxB, align 8, !dbg !125, !tbaa !86
  %cmp2 = icmp eq %struct._InpMtx* %1, null, !dbg !125
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !125

if.then3:                                         ; preds = %if.end
  tail call void @InpMtx_changeStorageMode(%struct._InpMtx* %1, i32 %newMode) #5, !dbg !126
  br label %if.end5, !dbg !128

if.end5:                                          ; preds = %if.end, %if.then3
  ret void, !dbg !129
}

; Function Attrs: optsize
declare void @InpMtx_changeStorageMode(%struct._InpMtx*, i32) #3

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !67, metadata !73}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Pencil_init", metadata !"Pencil_init", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Pencil*, i32, i32, %struct._InpMtx*, double*, %struct._InpMtx*)* @Pencil_init, null, null, metadata !60, i32 21} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 21] [Pencil_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !17, metadata !49, metadata !17}
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
!60 = metadata !{metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!61 = metadata !{i32 786689, metadata !4, metadata !"pencil", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pencil] [line 15]
!62 = metadata !{i32 786689, metadata !4, metadata !"type", metadata !5, i32 33554448, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 16]
!63 = metadata !{i32 786689, metadata !4, metadata !"symflag", metadata !5, i32 50331665, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 17]
!64 = metadata !{i32 786689, metadata !4, metadata !"inpmtxA", metadata !5, i32 67108882, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtxA] [line 18]
!65 = metadata !{i32 786689, metadata !4, metadata !"sigma", metadata !5, i32 83886099, metadata !49, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sigma] [line 19]
!66 = metadata !{i32 786689, metadata !4, metadata !"inpmtxB", metadata !5, i32 100663316, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtxB] [line 20]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Pencil_changeCoordType", metadata !"Pencil_changeCoordType", metadata !"", i32 77, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Pencil*, i32)* @Pencil_changeCoordType, null, null, metadata !70, i32 80} ; [ DW_TAG_subprogram ] [line 77] [def] [scope 80] [Pencil_changeCoordType]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{null, metadata !8, metadata !14}
!70 = metadata !{metadata !71, metadata !72}
!71 = metadata !{i32 786689, metadata !67, metadata !"pencil", metadata !5, i32 16777294, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pencil] [line 78]
!72 = metadata !{i32 786689, metadata !67, metadata !"newType", metadata !5, i32 33554511, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newType] [line 79]
!73 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Pencil_changeStorageMode", metadata !"Pencil_changeStorageMode", metadata !"", i32 98, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Pencil*, i32)* @Pencil_changeStorageMode, null, null, metadata !74, i32 101} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 101] [Pencil_changeStorageMode]
!74 = metadata !{metadata !75, metadata !76}
!75 = metadata !{i32 786689, metadata !73, metadata !"pencil", metadata !5, i32 16777315, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pencil] [line 99]
!76 = metadata !{i32 786689, metadata !73, metadata !"newMode", metadata !5, i32 33554532, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newMode] [line 100]
!77 = metadata !{i32 15, i32 0, metadata !4, null}
!78 = metadata !{i32 16, i32 0, metadata !4, null}
!79 = metadata !{i32 17, i32 0, metadata !4, null}
!80 = metadata !{i32 18, i32 0, metadata !4, null}
!81 = metadata !{i32 19, i32 0, metadata !4, null}
!82 = metadata !{i32 20, i32 0, metadata !4, null}
!83 = metadata !{i32 27, i32 0, metadata !4, null}
!84 = metadata !{i32 28, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !4, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_init.c]
!86 = metadata !{metadata !"any pointer", metadata !87}
!87 = metadata !{metadata !"omnipotent char", metadata !88}
!88 = metadata !{metadata !"Simple C/C++ TBAA"}
!89 = metadata !{i32 31, i32 0, metadata !85, null}
!90 = metadata !{i32 33, i32 0, metadata !4, null}
!91 = metadata !{i32 34, i32 0, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !4, i32 33, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_init.c]
!93 = metadata !{i32 37, i32 0, metadata !92, null}
!94 = metadata !{i32 39, i32 0, metadata !4, null}
!95 = metadata !{i32 42, i32 0, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !4, i32 41, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_init.c]
!97 = metadata !{i32 46, i32 0, metadata !96, null}
!98 = metadata !{i32 53, i32 0, metadata !4, null}
!99 = metadata !{i32 59, i32 0, metadata !4, null}
!100 = metadata !{metadata !"int", metadata !87}
!101 = metadata !{i32 60, i32 0, metadata !4, null}
!102 = metadata !{i32 61, i32 0, metadata !4, null}
!103 = metadata !{i32 62, i32 0, metadata !4, null}
!104 = metadata !{metadata !"double", metadata !87}
!105 = metadata !{i32 63, i32 0, metadata !4, null}
!106 = metadata !{i32 64, i32 0, metadata !4, null}
!107 = metadata !{i32 66, i32 0, metadata !4, null}
!108 = metadata !{i32 78, i32 0, metadata !67, null}
!109 = metadata !{i32 79, i32 0, metadata !67, null}
!110 = metadata !{i32 81, i32 0, metadata !67, null}
!111 = metadata !{i32 82, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !67, i32 81, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_init.c]
!113 = metadata !{i32 83, i32 0, metadata !112, null}
!114 = metadata !{i32 84, i32 0, metadata !67, null}
!115 = metadata !{i32 85, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !67, i32 84, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_init.c]
!117 = metadata !{i32 86, i32 0, metadata !116, null}
!118 = metadata !{i32 87, i32 0, metadata !67, null}
!119 = metadata !{i32 99, i32 0, metadata !73, null}
!120 = metadata !{i32 100, i32 0, metadata !73, null}
!121 = metadata !{i32 102, i32 0, metadata !73, null}
!122 = metadata !{i32 103, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !73, i32 102, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_init.c]
!124 = metadata !{i32 104, i32 0, metadata !123, null}
!125 = metadata !{i32 105, i32 0, metadata !73, null}
!126 = metadata !{i32 106, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !73, i32 105, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Pencil/src/Pencil_init.c]
!128 = metadata !{i32 107, i32 0, metadata !127, null}
!129 = metadata !{i32 108, i32 0, metadata !73, null}
