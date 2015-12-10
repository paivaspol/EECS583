; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ChvList = type { i32, %struct._Chv**, i32*, %struct._Lock*, i8*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ChvList_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in ChvList_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"\0A fatal error in ChvList_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._ChvList* @ChvList_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #6, !dbg !74
  %0 = bitcast i8* %call to %struct._ChvList*, !dbg !74
  tail call void @llvm.dbg.value(metadata !{%struct._ChvList* %0}, i64 0, metadata !62), !dbg !74
  %cmp = icmp eq i8* %call, null, !dbg !74
  br i1 %cmp, label %if.then, label %if.end, !dbg !74

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !76, !tbaa !78
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 48, i32 21, i8* getelementptr inbounds ([83 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !76
  tail call void @exit(i32 -1) #7, !dbg !76
  unreachable, !dbg !76

if.end:                                           ; preds = %entry
  tail call void @ChvList_setDefaultFields(%struct._ChvList* %0) #8, !dbg !81
  ret %struct._ChvList* %0, !dbg !82
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @ChvList_setDefaultFields(%struct._ChvList* %chvlist) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ChvList* %chvlist}, i64 0, metadata !67), !dbg !83
  %cmp = icmp eq %struct._ChvList* %chvlist, null, !dbg !84
  br i1 %cmp, label %if.then, label %if.end, !dbg !84

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !85, !tbaa !78
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), %struct._ChvList* null) #6, !dbg !85
  tail call void @exit(i32 -1) #7, !dbg !87
  unreachable, !dbg !87

if.end:                                           ; preds = %entry
  %nlist = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 0, !dbg !88
  store i32 0, i32* %nlist, align 4, !dbg !88, !tbaa !89
  %heads = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 1, !dbg !90
  %1 = bitcast %struct._Chv*** %heads to i8*, !dbg !91
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 8, i1 false), !dbg !90
  ret void, !dbg !91
}

; Function Attrs: nounwind optsize uwtable
define void @ChvList_clearData(%struct._ChvList* %chvlist) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ChvList* %chvlist}, i64 0, metadata !70), !dbg !92
  %cmp = icmp eq %struct._ChvList* %chvlist, null, !dbg !93
  br i1 %cmp, label %if.then, label %if.end, !dbg !93

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !94, !tbaa !78
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._ChvList* null) #6, !dbg !94
  tail call void @exit(i32 -1) #7, !dbg !96
  unreachable, !dbg !96

if.end:                                           ; preds = %entry
  %heads = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 1, !dbg !97
  %1 = load %struct._Chv*** %heads, align 8, !dbg !97, !tbaa !78
  %cmp1 = icmp eq %struct._Chv** %1, null, !dbg !97
  br i1 %cmp1, label %if.end9, label %if.then5, !dbg !97

if.then5:                                         ; preds = %if.end
  %2 = bitcast %struct._Chv** %1 to i8*, !dbg !98
  tail call void @free(i8* %2) #6, !dbg !98
  store %struct._Chv** null, %struct._Chv*** %heads, align 8, !dbg !98, !tbaa !78
  br label %if.end9, !dbg !98

if.end9:                                          ; preds = %if.end, %if.then5
  %counts = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 2, !dbg !101
  %3 = load i32** %counts, align 8, !dbg !101, !tbaa !78
  %cmp10 = icmp eq i32* %3, null, !dbg !101
  br i1 %cmp10, label %if.end13, label %if.then11, !dbg !101

if.then11:                                        ; preds = %if.end9
  tail call void @IVfree(i32* %3) #6, !dbg !102
  br label %if.end13, !dbg !104

if.end13:                                         ; preds = %if.end9, %if.then11
  %flags = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 4, !dbg !105
  %4 = load i8** %flags, align 8, !dbg !105, !tbaa !78
  %cmp14 = icmp eq i8* %4, null, !dbg !105
  br i1 %cmp14, label %if.end17, label %if.then15, !dbg !105

if.then15:                                        ; preds = %if.end13
  tail call void @CVfree(i8* %4) #6, !dbg !106
  br label %if.end17, !dbg !108

if.end17:                                         ; preds = %if.end13, %if.then15
  %lock = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 3, !dbg !109
  %5 = load %struct._Lock** %lock, align 8, !dbg !109, !tbaa !78
  %cmp18 = icmp eq %struct._Lock* %5, null, !dbg !109
  br i1 %cmp18, label %if.end21, label %if.then19, !dbg !109

if.then19:                                        ; preds = %if.end17
  tail call void @Lock_free(%struct._Lock* %5) #6, !dbg !110
  br label %if.end21, !dbg !112

if.end21:                                         ; preds = %if.end17, %if.then19
  tail call void @ChvList_setDefaultFields(%struct._ChvList* %chvlist) #8, !dbg !113
  ret void, !dbg !114
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @CVfree(i8*) #3

; Function Attrs: optsize
declare void @Lock_free(%struct._Lock*) #3

; Function Attrs: nounwind optsize uwtable
define void @ChvList_free(%struct._ChvList* %chvlist) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ChvList* %chvlist}, i64 0, metadata !73), !dbg !115
  %cmp = icmp eq %struct._ChvList* %chvlist, null, !dbg !116
  br i1 %cmp, label %if.then, label %if.end, !dbg !116

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !117, !tbaa !78
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), %struct._ChvList* null) #6, !dbg !117
  tail call void @exit(i32 -1) #7, !dbg !119
  unreachable, !dbg !119

if.end:                                           ; preds = %entry
  tail call void @ChvList_clearData(%struct._ChvList* %chvlist) #8, !dbg !120
  %1 = bitcast %struct._ChvList* %chvlist to i8*, !dbg !121
  tail call void @free(i8* %1) #6, !dbg !121
  tail call void @llvm.dbg.value(metadata !123, i64 0, metadata !73), !dbg !121
  ret void, !dbg !124
}

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !63, metadata !68, metadata !71}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ChvList_new", metadata !"ChvList_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._ChvList* ()* @ChvList_new, null, null, metadata !61, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [ChvList_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ChvList]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"ChvList", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [ChvList] [line 24, size 0, align 0, offset 0] [from _ChvList]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_ChvList", i32 25, i64 384, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ChvList] [line 25, size 384, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/../ChvList.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !46, metadata !47, metadata !57, metadata !60}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlist", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 26, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"heads", i32 27, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [heads] [line 27, size 64, align 64, offset 64] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!18 = metadata !{i32 786454, metadata !11, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/../../Chv/Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !30, metadata !31, metadata !34, metadata !43}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!25 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!28 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!31 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!33 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!34 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !35} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!35 = metadata !{i32 786454, metadata !20, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!36 = metadata !{i32 786451, metadata !37, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !38, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!37 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42}
!39 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!40 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!41 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!42 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!43 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!45 = metadata !{i32 786454, metadata !20, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!46 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"counts", i32 28, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [counts] [line 28, size 64, align 64, offset 128] [from ]
!47 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lock", i32 29, i64 64, i64 64, i64 192, i32 0, metadata !48} ; [ DW_TAG_member ] [lock] [line 29, size 64, align 64, offset 192] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Lock]
!49 = metadata !{i32 786454, metadata !11, null, metadata !"Lock", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [Lock] [line 36, size 0, align 0, offset 0] [from _Lock]
!50 = metadata !{i32 786451, metadata !51, null, metadata !"_Lock", i32 37, i64 128, i64 64, i32 0, i32 0, null, metadata !52, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Lock] [line 37, size 128, align 64, offset 0] [from ]
!51 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/../../Lock/Lock.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!52 = metadata !{metadata !53, metadata !55, metadata !56}
!53 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"mutex", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [mutex] [line 45, size 64, align 64, offset 0] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"nlocks", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlocks] [line 47, size 32, align 32, offset 64] [from int]
!56 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"nunlocks", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nunlocks] [line 48, size 32, align 32, offset 96] [from int]
!57 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"flags", i32 30, i64 64, i64 64, i64 256, i32 0, metadata !58} ; [ DW_TAG_member ] [flags] [line 30, size 64, align 64, offset 256] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!59 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!60 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlocks", i32 31, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [nlocks] [line 31, size 32, align 32, offset 320] [from int]
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786688, metadata !4, metadata !"chvlist", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chvlist] [line 19]
!63 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ChvList_setDefaultFields", metadata !"ChvList_setDefaultFields", metadata !"", i32 35, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ChvList*)* @ChvList_setDefaultFields, null, null, metadata !66, i32 37} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 37] [ChvList_setDefaultFields]
!64 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{null, metadata !8}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786689, metadata !63, metadata !"chvlist", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvlist] [line 36]
!68 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ChvList_clearData", metadata !"ChvList_clearData", metadata !"", i32 61, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ChvList*)* @ChvList_clearData, null, null, metadata !69, i32 63} ; [ DW_TAG_subprogram ] [line 61] [def] [scope 63] [ChvList_clearData]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786689, metadata !68, metadata !"chvlist", metadata !5, i32 16777278, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvlist] [line 62]
!71 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ChvList_free", metadata !"ChvList_free", metadata !"", i32 114, metadata !64, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ChvList*)* @ChvList_free, null, null, metadata !72, i32 116} ; [ DW_TAG_subprogram ] [line 114] [def] [scope 116] [ChvList_free]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786689, metadata !71, metadata !"chvlist", metadata !5, i32 16777331, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvlist] [line 115]
!74 = metadata !{i32 21, i32 0, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c]
!76 = metadata !{i32 21, i32 0, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !75, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c]
!78 = metadata !{metadata !"any pointer", metadata !79}
!79 = metadata !{metadata !"omnipotent char", metadata !80}
!80 = metadata !{metadata !"Simple C/C++ TBAA"}
!81 = metadata !{i32 22, i32 0, metadata !4, null}
!82 = metadata !{i32 24, i32 0, metadata !4, null}
!83 = metadata !{i32 36, i32 0, metadata !63, null}
!84 = metadata !{i32 38, i32 0, metadata !63, null}
!85 = metadata !{i32 39, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !63, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c]
!87 = metadata !{i32 41, i32 0, metadata !86, null}
!88 = metadata !{i32 43, i32 0, metadata !63, null}
!89 = metadata !{metadata !"int", metadata !79}
!90 = metadata !{i32 44, i32 0, metadata !63, null}
!91 = metadata !{i32 50, i32 0, metadata !63, null}
!92 = metadata !{i32 62, i32 0, metadata !68, null}
!93 = metadata !{i32 69, i32 0, metadata !68, null}
!94 = metadata !{i32 70, i32 0, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !68, i32 69, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c]
!96 = metadata !{i32 72, i32 0, metadata !95, null}
!97 = metadata !{i32 79, i32 0, metadata !68, null}
!98 = metadata !{i32 80, i32 0, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !100, i32 80, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c]
!100 = metadata !{i32 786443, metadata !1, metadata !68, i32 79, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c]
!101 = metadata !{i32 82, i32 0, metadata !68, null}
!102 = metadata !{i32 83, i32 0, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !68, i32 82, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c]
!104 = metadata !{i32 84, i32 0, metadata !103, null}
!105 = metadata !{i32 85, i32 0, metadata !68, null}
!106 = metadata !{i32 86, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !68, i32 85, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c]
!108 = metadata !{i32 87, i32 0, metadata !107, null}
!109 = metadata !{i32 88, i32 0, metadata !68, null}
!110 = metadata !{i32 94, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !68, i32 88, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c]
!112 = metadata !{i32 95, i32 0, metadata !111, null}
!113 = metadata !{i32 101, i32 0, metadata !68, null}
!114 = metadata !{i32 103, i32 0, metadata !68, null}
!115 = metadata !{i32 115, i32 0, metadata !71, null}
!116 = metadata !{i32 117, i32 0, metadata !71, null}
!117 = metadata !{i32 118, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !71, i32 117, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c]
!119 = metadata !{i32 120, i32 0, metadata !118, null}
!120 = metadata !{i32 122, i32 0, metadata !71, null}
!121 = metadata !{i32 123, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !71, i32 123, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_basics.c]
!123 = metadata !{%struct._ChvList* null}
!124 = metadata !{i32 125, i32 0, metadata !71, null}
