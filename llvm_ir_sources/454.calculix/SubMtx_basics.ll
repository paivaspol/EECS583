; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in SubMtx_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [50 x i8] c"\0A fatal error in SubMtx_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A fatal error in SubMtx_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._SubMtx* @SubMtx_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 72) #5, !dbg !49
  %0 = bitcast i8* %call to %struct._SubMtx*, !dbg !49
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %0}, i64 0, metadata !37), !dbg !49
  %cmp = icmp eq i8* %call, null, !dbg !49
  br i1 %cmp, label %if.then, label %if.end, !dbg !49

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !51, !tbaa !53
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 72, i32 21, i8* getelementptr inbounds ([81 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !51
  tail call void @exit(i32 -1) #6, !dbg !51
  unreachable, !dbg !51

if.end:                                           ; preds = %entry
  tail call void @SubMtx_setDefaultFields(%struct._SubMtx* %0) #7, !dbg !56
  ret %struct._SubMtx* %0, !dbg !57
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_setDefaultFields(%struct._SubMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !42), !dbg !58
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !59
  br i1 %cmp, label %if.then, label %if.end, !dbg !59

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !60, !tbaa !53
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* null) #5, !dbg !60
  tail call void @exit(i32 -1) #6, !dbg !62
  unreachable, !dbg !62

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !63
  store i32 1, i32* %type, align 4, !dbg !63, !tbaa !64
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !65
  store i32 1, i32* %mode, align 4, !dbg !65, !tbaa !64
  %rowid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2, !dbg !66
  store i32 -1, i32* %rowid, align 4, !dbg !66, !tbaa !64
  %colid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3, !dbg !67
  store i32 -1, i32* %colid, align 4, !dbg !67, !tbaa !64
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !68
  store i32 0, i32* %nrow, align 4, !dbg !68, !tbaa !64
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !69
  store i32 0, i32* %ncol, align 4, !dbg !69, !tbaa !64
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !70
  store i32 0, i32* %nent, align 4, !dbg !70, !tbaa !64
  %next = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 9, !dbg !71
  store %struct._SubMtx* null, %struct._SubMtx** %next, align 8, !dbg !71, !tbaa !53
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !72
  tail call void @DV_setDefaultFields(%struct._DV* %wrkDV) #5, !dbg !72
  ret void, !dbg !73
}

; Function Attrs: optsize
declare void @DV_setDefaultFields(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_clearData(%struct._SubMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !45), !dbg !74
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !75
  br i1 %cmp, label %if.then, label %if.end, !dbg !75

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !76, !tbaa !53
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* null) #5, !dbg !76
  tail call void @exit(i32 -1) #6, !dbg !78
  unreachable, !dbg !78

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !79
  tail call void @DV_clearData(%struct._DV* %wrkDV) #5, !dbg !79
  tail call void @SubMtx_setDefaultFields(%struct._SubMtx* %mtx) #7, !dbg !80
  ret void, !dbg !81
}

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_free(%struct._SubMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !48), !dbg !82
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !83
  br i1 %cmp, label %if.then, label %if.end, !dbg !83

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !84, !tbaa !53
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* null) #5, !dbg !84
  tail call void @exit(i32 -1) #6, !dbg !86
  unreachable, !dbg !86

if.end:                                           ; preds = %entry
  tail call void @SubMtx_clearData(%struct._SubMtx* %mtx) #7, !dbg !87
  %1 = bitcast %struct._SubMtx* %mtx to i8*, !dbg !88
  tail call void @free(i8* %1) #5, !dbg !88
  tail call void @llvm.dbg.value(metadata !90, i64 0, metadata !48), !dbg !88
  ret void, !dbg !91
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !38, metadata !43, metadata !46}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_new", metadata !"SubMtx_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._SubMtx* ()* @SubMtx_new, null, null, metadata !36, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [SubMtx_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !24, metadata !33}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!23 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!25 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!32 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!33 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!35 = metadata !{i32 786454, metadata !11, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786688, metadata !4, metadata !"mtx", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 19]
!38 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_setDefaultFields", metadata !"SubMtx_setDefaultFields", metadata !"", i32 35, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*)* @SubMtx_setDefaultFields, null, null, metadata !41, i32 37} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 37] [SubMtx_setDefaultFields]
!39 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{null, metadata !8}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786689, metadata !38, metadata !"mtx", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 36]
!43 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_clearData", metadata !"SubMtx_clearData", metadata !"", i32 64, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*)* @SubMtx_clearData, null, null, metadata !44, i32 66} ; [ DW_TAG_subprogram ] [line 64] [def] [scope 66] [SubMtx_clearData]
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786689, metadata !43, metadata !"mtx", metadata !5, i32 16777281, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 65]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_free", metadata !"SubMtx_free", metadata !"", i32 101, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*)* @SubMtx_free, null, null, metadata !47, i32 103} ; [ DW_TAG_subprogram ] [line 101] [def] [scope 103] [SubMtx_free]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786689, metadata !46, metadata !"mtx", metadata !5, i32 16777318, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 102]
!49 = metadata !{i32 21, i32 0, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c]
!51 = metadata !{i32 21, i32 0, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !50, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c]
!53 = metadata !{metadata !"any pointer", metadata !54}
!54 = metadata !{metadata !"omnipotent char", metadata !55}
!55 = metadata !{metadata !"Simple C/C++ TBAA"}
!56 = metadata !{i32 22, i32 0, metadata !4, null}
!57 = metadata !{i32 24, i32 0, metadata !4, null}
!58 = metadata !{i32 36, i32 0, metadata !38, null}
!59 = metadata !{i32 38, i32 0, metadata !38, null}
!60 = metadata !{i32 39, i32 0, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !38, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c]
!62 = metadata !{i32 41, i32 0, metadata !61, null}
!63 = metadata !{i32 43, i32 0, metadata !38, null}
!64 = metadata !{metadata !"int", metadata !54}
!65 = metadata !{i32 44, i32 0, metadata !38, null}
!66 = metadata !{i32 45, i32 0, metadata !38, null}
!67 = metadata !{i32 46, i32 0, metadata !38, null}
!68 = metadata !{i32 47, i32 0, metadata !38, null}
!69 = metadata !{i32 48, i32 0, metadata !38, null}
!70 = metadata !{i32 49, i32 0, metadata !38, null}
!71 = metadata !{i32 50, i32 0, metadata !38, null}
!72 = metadata !{i32 51, i32 0, metadata !38, null}
!73 = metadata !{i32 53, i32 0, metadata !38, null}
!74 = metadata !{i32 65, i32 0, metadata !43, null}
!75 = metadata !{i32 72, i32 0, metadata !43, null}
!76 = metadata !{i32 73, i32 0, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !43, i32 72, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c]
!78 = metadata !{i32 75, i32 0, metadata !77, null}
!79 = metadata !{i32 82, i32 0, metadata !43, null}
!80 = metadata !{i32 88, i32 0, metadata !43, null}
!81 = metadata !{i32 90, i32 0, metadata !43, null}
!82 = metadata !{i32 102, i32 0, metadata !46, null}
!83 = metadata !{i32 104, i32 0, metadata !46, null}
!84 = metadata !{i32 105, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !46, i32 104, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c]
!86 = metadata !{i32 107, i32 0, metadata !85, null}
!87 = metadata !{i32 109, i32 0, metadata !46, null}
!88 = metadata !{i32 110, i32 0, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !46, i32 110, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_basics.c]
!90 = metadata !{%struct._SubMtx* null}
!91 = metadata !{i32 112, i32 0, metadata !46, null}
