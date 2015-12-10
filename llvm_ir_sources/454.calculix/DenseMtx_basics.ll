; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [85 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_basics.c\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DenseMtx_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [47 x i8] c"\0A fatal error in DenseMtx_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._DenseMtx* @DenseMtx_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 88) #6, !dbg !52
  %0 = bitcast i8* %call to %struct._DenseMtx*, !dbg !52
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %0}, i64 0, metadata !40), !dbg !52
  %cmp = icmp eq i8* %call, null, !dbg !52
  br i1 %cmp, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !54, !tbaa !56
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 88, i32 21, i8* getelementptr inbounds ([85 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !54
  tail call void @exit(i32 -1) #7, !dbg !54
  unreachable, !dbg !54

if.end:                                           ; preds = %entry
  tail call void @DenseMtx_setDefaultFields(%struct._DenseMtx* %0) #8, !dbg !59
  ret %struct._DenseMtx* %0, !dbg !60
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_setDefaultFields(%struct._DenseMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !45), !dbg !61
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !62
  br i1 %cmp, label %if.then, label %if.end, !dbg !62

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !63, !tbaa !56
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !63
  tail call void @exit(i32 -1) #7, !dbg !65
  unreachable, !dbg !65

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !66
  store i32 1, i32* %type, align 4, !dbg !66, !tbaa !67
  %rowid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1, !dbg !68
  store i32 -1, i32* %rowid, align 4, !dbg !68, !tbaa !67
  %colid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2, !dbg !69
  store i32 -1, i32* %colid, align 4, !dbg !69, !tbaa !67
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !70
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !71
  %wrkDV = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !72
  %1 = bitcast i32* %nrow to i8*, !dbg !72
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 4, i1 false), !dbg !73
  %2 = bitcast i32** %rowind to i8*, !dbg !72
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false), !dbg !71
  tail call void @DV_setDefaultFields(%struct._DV* %wrkDV) #6, !dbg !72
  %next = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 11, !dbg !74
  store %struct._DenseMtx* null, %struct._DenseMtx** %next, align 8, !dbg !74, !tbaa !56
  ret void, !dbg !75
}

; Function Attrs: optsize
declare void @DV_setDefaultFields(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_clearData(%struct._DenseMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !48), !dbg !76
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !77
  br i1 %cmp, label %if.then, label %if.end, !dbg !77

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !78, !tbaa !56
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !78
  tail call void @exit(i32 -1) #7, !dbg !80
  unreachable, !dbg !80

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !81
  tail call void @DV_clearData(%struct._DV* %wrkDV) #6, !dbg !81
  tail call void @DenseMtx_setDefaultFields(%struct._DenseMtx* %mtx) #8, !dbg !82
  ret void, !dbg !83
}

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_free(%struct._DenseMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !51), !dbg !84
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !85
  br i1 %cmp, label %if.then, label %if.end, !dbg !85

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !86, !tbaa !56
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str4, i64 0, i64 0), %struct._DenseMtx* null) #6, !dbg !86
  tail call void @exit(i32 -1) #7, !dbg !88
  unreachable, !dbg !88

if.end:                                           ; preds = %entry
  tail call void @DenseMtx_clearData(%struct._DenseMtx* %mtx) #8, !dbg !89
  %1 = bitcast %struct._DenseMtx* %mtx to i8*, !dbg !90
  tail call void @free(i8* %1) #6, !dbg !90
  tail call void @llvm.dbg.value(metadata !92, i64 0, metadata !51), !dbg !90
  ret void, !dbg !93
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !41, metadata !46, metadata !49}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_new", metadata !"DenseMtx_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._DenseMtx* ()* @DenseMtx_new, null, null, metadata !39, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [DenseMtx_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DenseMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"DenseMtx", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [DenseMtx] [line 28, size 0, align 0, offset 0] [from _DenseMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_DenseMtx", i32 29, i64 704, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DenseMtx] [line 29, size 704, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../DenseMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !23, metadata !24, metadata !27, metadata !36}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 30, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 30, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowid", i32 31, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [rowid] [line 31, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colid", i32 32, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [colid] [line 32, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nrow", i32 33, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nrow] [line 33, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ncol", i32 34, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [ncol] [line 34, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inc1", i32 35, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [inc1] [line 35, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inc2", i32 36, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [inc2] [line 36, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowind", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [rowind] [line 37, size 64, align 64, offset 256] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colind", i32 38, i64 64, i64 64, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [colind] [line 38, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !25} ; [ DW_TAG_member ] [entries] [line 39, size 64, align 64, offset 384] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!26 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!27 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 40, i64 192, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ] [wrkDV] [line 40, size 192, align 64, offset 448] [from DV]
!28 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!34 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!36 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !37} ; [ DW_TAG_member ] [next] [line 41, size 64, align 64, offset 640] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DenseMtx]
!38 = metadata !{i32 786454, metadata !11, null, metadata !"DenseMtx", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [DenseMtx] [line 28, size 0, align 0, offset 0] [from _DenseMtx]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786688, metadata !4, metadata !"mtx", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 19]
!41 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_setDefaultFields", metadata !"DenseMtx_setDefaultFields", metadata !"", i32 35, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*)* @DenseMtx_setDefaultFields, null, null, metadata !44, i32 37} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 37] [DenseMtx_setDefaultFields]
!42 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{null, metadata !8}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786689, metadata !41, metadata !"mtx", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 36]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_clearData", metadata !"DenseMtx_clearData", metadata !"", i32 67, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*)* @DenseMtx_clearData, null, null, metadata !47, i32 69} ; [ DW_TAG_subprogram ] [line 67] [def] [scope 69] [DenseMtx_clearData]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786689, metadata !46, metadata !"mtx", metadata !5, i32 16777284, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 68]
!49 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_free", metadata !"DenseMtx_free", metadata !"", i32 104, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*)* @DenseMtx_free, null, null, metadata !50, i32 106} ; [ DW_TAG_subprogram ] [line 104] [def] [scope 106] [DenseMtx_free]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786689, metadata !49, metadata !"mtx", metadata !5, i32 16777321, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 105]
!52 = metadata !{i32 21, i32 0, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_basics.c]
!54 = metadata !{i32 21, i32 0, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !53, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_basics.c]
!56 = metadata !{metadata !"any pointer", metadata !57}
!57 = metadata !{metadata !"omnipotent char", metadata !58}
!58 = metadata !{metadata !"Simple C/C++ TBAA"}
!59 = metadata !{i32 22, i32 0, metadata !4, null}
!60 = metadata !{i32 24, i32 0, metadata !4, null}
!61 = metadata !{i32 36, i32 0, metadata !41, null}
!62 = metadata !{i32 38, i32 0, metadata !41, null}
!63 = metadata !{i32 39, i32 0, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !41, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_basics.c]
!65 = metadata !{i32 41, i32 0, metadata !64, null}
!66 = metadata !{i32 43, i32 0, metadata !41, null}
!67 = metadata !{metadata !"int", metadata !57}
!68 = metadata !{i32 44, i32 0, metadata !41, null}
!69 = metadata !{i32 45, i32 0, metadata !41, null}
!70 = metadata !{i32 46, i32 0, metadata !41, null}
!71 = metadata !{i32 50, i32 0, metadata !41, null}
!72 = metadata !{i32 53, i32 0, metadata !41, null}
!73 = metadata !{i32 47, i32 0, metadata !41, null}
!74 = metadata !{i32 54, i32 0, metadata !41, null}
!75 = metadata !{i32 56, i32 0, metadata !41, null}
!76 = metadata !{i32 68, i32 0, metadata !46, null}
!77 = metadata !{i32 75, i32 0, metadata !46, null}
!78 = metadata !{i32 76, i32 0, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !46, i32 75, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_basics.c]
!80 = metadata !{i32 78, i32 0, metadata !79, null}
!81 = metadata !{i32 85, i32 0, metadata !46, null}
!82 = metadata !{i32 91, i32 0, metadata !46, null}
!83 = metadata !{i32 93, i32 0, metadata !46, null}
!84 = metadata !{i32 105, i32 0, metadata !49, null}
!85 = metadata !{i32 107, i32 0, metadata !49, null}
!86 = metadata !{i32 108, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !49, i32 107, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_basics.c]
!88 = metadata !{i32 110, i32 0, metadata !87, null}
!89 = metadata !{i32 112, i32 0, metadata !49, null}
!90 = metadata !{i32 113, i32 0, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !49, i32 113, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_basics.c]
!92 = metadata !{%struct._DenseMtx* null}
!93 = metadata !{i32 115, i32 0, metadata !49, null}
