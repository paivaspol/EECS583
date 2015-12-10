; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [73 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_basics.c\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in DV_setDefaultFields(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [46 x i8] c"\0A fatal error in DV_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"\0A fatal error in DV_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._DV* @DV_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 24) #5, !dbg !33
  %0 = bitcast i8* %call to %struct._DV*, !dbg !33
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %0}, i64 0, metadata !21), !dbg !33
  %cmp = icmp eq i8* %call, null, !dbg !33
  br i1 %cmp, label %if.then, label %if.end, !dbg !33

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !35, !tbaa !37
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 24, i32 19, i8* getelementptr inbounds ([73 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !35
  tail call void @exit(i32 -1) #6, !dbg !35
  unreachable, !dbg !35

if.end:                                           ; preds = %entry
  tail call void @DV_setDefaultFields(%struct._DV* %0) #7, !dbg !40
  ret %struct._DV* %0, !dbg !41
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @DV_setDefaultFields(%struct._DV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !26), !dbg !42
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !44, !tbaa !37
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._DV* null) #5, !dbg !44
  tail call void @exit(i32 -1) #6, !dbg !46
  unreachable, !dbg !46

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !47
  store i32 0, i32* %size, align 4, !dbg !47, !tbaa !48
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !49
  store i32 0, i32* %maxsize, align 4, !dbg !49, !tbaa !48
  %owned = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2, !dbg !50
  store i32 0, i32* %owned, align 4, !dbg !50, !tbaa !48
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !51
  store double* null, double** %vec, align 8, !dbg !51, !tbaa !37
  ret void, !dbg !52
}

; Function Attrs: nounwind optsize uwtable
define void @DV_clearData(%struct._DV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !29), !dbg !53
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !54
  br i1 %cmp, label %if.then, label %if.end, !dbg !54

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !55, !tbaa !37
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str3, i64 0, i64 0), %struct._DV* null) #5, !dbg !55
  tail call void @exit(i32 -1) #6, !dbg !57
  unreachable, !dbg !57

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !58
  %1 = load double** %vec, align 8, !dbg !58, !tbaa !37
  %cmp1 = icmp eq double* %1, null, !dbg !58
  br i1 %cmp1, label %if.end5, label %land.lhs.true, !dbg !58

land.lhs.true:                                    ; preds = %if.end
  %owned = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2, !dbg !58
  %2 = load i32* %owned, align 4, !dbg !58, !tbaa !48
  %cmp2 = icmp eq i32 %2, 1, !dbg !58
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !58

if.then3:                                         ; preds = %land.lhs.true
  tail call void @DVfree(double* %1) #5, !dbg !59
  br label %if.end5, !dbg !61

if.end5:                                          ; preds = %if.end, %if.then3, %land.lhs.true
  tail call void @DV_setDefaultFields(%struct._DV* %dv) #7, !dbg !62
  ret void, !dbg !63
}

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: nounwind optsize uwtable
define void @DV_free(%struct._DV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !32), !dbg !64
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !65
  br i1 %cmp, label %if.then, label %if.end, !dbg !65

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !66, !tbaa !37
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), %struct._DV* null) #5, !dbg !66
  tail call void @exit(i32 -1) #6, !dbg !68
  unreachable, !dbg !68

if.end:                                           ; preds = %entry
  tail call void @DV_clearData(%struct._DV* %dv) #7, !dbg !69
  %1 = bitcast %struct._DV* %dv to i8*, !dbg !70
  tail call void @free(i8* %1) #5, !dbg !70
  tail call void @llvm.dbg.value(metadata !72, i64 0, metadata !32), !dbg !70
  ret void, !dbg !73
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !22, metadata !27, metadata !30}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_new", metadata !"DV_new", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._DV* ()* @DV_new, null, null, metadata !20, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [DV_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/../DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!19 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786688, metadata !4, metadata !"dv", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dv] [line 17]
!22 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_setDefaultFields", metadata !"DV_setDefaultFields", metadata !"", i32 33, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DV*)* @DV_setDefaultFields, null, null, metadata !25, i32 35} ; [ DW_TAG_subprogram ] [line 33] [def] [scope 35] [DV_setDefaultFields]
!23 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{null, metadata !8}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786689, metadata !22, metadata !"dv", metadata !5, i32 16777250, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 34]
!27 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_clearData", metadata !"DV_clearData", metadata !"", i32 57, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DV*)* @DV_clearData, null, null, metadata !28, i32 59} ; [ DW_TAG_subprogram ] [line 57] [def] [scope 59] [DV_clearData]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786689, metadata !27, metadata !"dv", metadata !5, i32 16777274, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 58]
!30 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_free", metadata !"DV_free", metadata !"", i32 81, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DV*)* @DV_free, null, null, metadata !31, i32 83} ; [ DW_TAG_subprogram ] [line 81] [def] [scope 83] [DV_free]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786689, metadata !30, metadata !"dv", metadata !5, i32 16777298, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 82]
!33 = metadata !{i32 19, i32 0, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_basics.c]
!35 = metadata !{i32 19, i32 0, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !34, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_basics.c]
!37 = metadata !{metadata !"any pointer", metadata !38}
!38 = metadata !{metadata !"omnipotent char", metadata !39}
!39 = metadata !{metadata !"Simple C/C++ TBAA"}
!40 = metadata !{i32 21, i32 0, metadata !4, null}
!41 = metadata !{i32 23, i32 0, metadata !4, null}
!42 = metadata !{i32 34, i32 0, metadata !22, null}
!43 = metadata !{i32 36, i32 0, metadata !22, null}
!44 = metadata !{i32 37, i32 0, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !22, i32 36, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_basics.c]
!46 = metadata !{i32 39, i32 0, metadata !45, null}
!47 = metadata !{i32 41, i32 0, metadata !22, null}
!48 = metadata !{metadata !"int", metadata !38}
!49 = metadata !{i32 42, i32 0, metadata !22, null}
!50 = metadata !{i32 43, i32 0, metadata !22, null}
!51 = metadata !{i32 44, i32 0, metadata !22, null}
!52 = metadata !{i32 46, i32 0, metadata !22, null}
!53 = metadata !{i32 58, i32 0, metadata !27, null} ; [ DW_TAG_imported_module ]
!54 = metadata !{i32 60, i32 0, metadata !27, null}
!55 = metadata !{i32 61, i32 0, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !27, i32 60, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_basics.c]
!57 = metadata !{i32 63, i32 0, metadata !56, null}
!58 = metadata !{i32 65, i32 0, metadata !27, null}
!59 = metadata !{i32 66, i32 0, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !27, i32 65, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_basics.c]
!61 = metadata !{i32 67, i32 0, metadata !60, null}
!62 = metadata !{i32 68, i32 0, metadata !27, null}
!63 = metadata !{i32 70, i32 0, metadata !27, null}
!64 = metadata !{i32 82, i32 0, metadata !30, null}
!65 = metadata !{i32 84, i32 0, metadata !30, null}
!66 = metadata !{i32 85, i32 0, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !30, i32 84, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_basics.c]
!68 = metadata !{i32 87, i32 0, metadata !67, null}
!69 = metadata !{i32 89, i32 0, metadata !30, null}
!70 = metadata !{i32 90, i32 0, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !30, i32 90, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_basics.c]
!72 = metadata !{%struct._DV* null}
!73 = metadata !{i32 92, i32 0, metadata !30, null}
