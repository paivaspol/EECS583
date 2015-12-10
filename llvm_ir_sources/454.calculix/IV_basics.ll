; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [73 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in IV_setDefaultFields(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [46 x i8] c"\0A fatal error in IV_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"\0A fatal error in IV_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @IV_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 24) #5, !dbg !32
  %0 = bitcast i8* %call to %struct._IV*, !dbg !32
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %0}, i64 0, metadata !20), !dbg !32
  %cmp = icmp eq i8* %call, null, !dbg !32
  br i1 %cmp, label %if.then, label %if.end, !dbg !32

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !34, !tbaa !36
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 24, i32 19, i8* getelementptr inbounds ([73 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !34
  tail call void @exit(i32 -1) #6, !dbg !34
  unreachable, !dbg !34

if.end:                                           ; preds = %entry
  tail call void @IV_setDefaultFields(%struct._IV* %0) #7, !dbg !39
  ret %struct._IV* %0, !dbg !40
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @IV_setDefaultFields(%struct._IV* %iv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !25), !dbg !41
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !42
  br i1 %cmp, label %if.then, label %if.end, !dbg !42

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !43, !tbaa !36
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._IV* null) #5, !dbg !43
  tail call void @exit(i32 -1) #6, !dbg !45
  unreachable, !dbg !45

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !46
  store i32 0, i32* %size, align 4, !dbg !46, !tbaa !47
  %maxsize = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !48
  store i32 0, i32* %maxsize, align 4, !dbg !48, !tbaa !47
  %owned = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !49
  store i32 0, i32* %owned, align 4, !dbg !49, !tbaa !47
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !50
  store i32* null, i32** %vec, align 8, !dbg !50, !tbaa !36
  ret void, !dbg !51
}

; Function Attrs: nounwind optsize uwtable
define void @IV_clearData(%struct._IV* %iv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !28), !dbg !52
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !53
  br i1 %cmp, label %if.then, label %if.end, !dbg !53

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !54, !tbaa !36
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str3, i64 0, i64 0), %struct._IV* null) #5, !dbg !54
  tail call void @exit(i32 -1) #6, !dbg !56
  unreachable, !dbg !56

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !57
  %1 = load i32** %vec, align 8, !dbg !57, !tbaa !36
  %cmp1 = icmp eq i32* %1, null, !dbg !57
  br i1 %cmp1, label %if.end5, label %land.lhs.true, !dbg !57

land.lhs.true:                                    ; preds = %if.end
  %owned = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !57
  %2 = load i32* %owned, align 4, !dbg !57, !tbaa !47
  %cmp2 = icmp eq i32 %2, 1, !dbg !57
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !57

if.then3:                                         ; preds = %land.lhs.true
  tail call void @IVfree(i32* %1) #5, !dbg !58
  br label %if.end5, !dbg !60

if.end5:                                          ; preds = %if.end, %if.then3, %land.lhs.true
  tail call void @IV_setDefaultFields(%struct._IV* %iv) #7, !dbg !61
  ret void, !dbg !62
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @IV_free(%struct._IV* %iv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !31), !dbg !63
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !64
  br i1 %cmp, label %if.then, label %if.end, !dbg !64

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !65, !tbaa !36
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), %struct._IV* null) #5, !dbg !65
  tail call void @exit(i32 -1) #6, !dbg !67
  unreachable, !dbg !67

if.end:                                           ; preds = %entry
  tail call void @IV_clearData(%struct._IV* %iv) #7, !dbg !68
  %1 = bitcast %struct._IV* %iv to i8*, !dbg !69
  tail call void @free(i8* %1) #5, !dbg !69
  tail call void @llvm.dbg.value(metadata !71, i64 0, metadata !31), !dbg !69
  ret void, !dbg !72
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !21, metadata !26, metadata !29}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_new", metadata !"IV_new", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* ()* @IV_new, null, null, metadata !19, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [IV_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/../IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786688, metadata !4, metadata !"iv", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iv] [line 17]
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_setDefaultFields", metadata !"IV_setDefaultFields", metadata !"", i32 33, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IV*)* @IV_setDefaultFields, null, null, metadata !24, i32 35} ; [ DW_TAG_subprogram ] [line 33] [def] [scope 35] [IV_setDefaultFields]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !8}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786689, metadata !21, metadata !"iv", metadata !5, i32 16777250, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 34]
!26 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_clearData", metadata !"IV_clearData", metadata !"", i32 57, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IV*)* @IV_clearData, null, null, metadata !27, i32 59} ; [ DW_TAG_subprogram ] [line 57] [def] [scope 59] [IV_clearData]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786689, metadata !26, metadata !"iv", metadata !5, i32 16777274, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 58]
!29 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_free", metadata !"IV_free", metadata !"", i32 81, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IV*)* @IV_free, null, null, metadata !30, i32 83} ; [ DW_TAG_subprogram ] [line 81] [def] [scope 83] [IV_free]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786689, metadata !29, metadata !"iv", metadata !5, i32 16777298, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 82]
!32 = metadata !{i32 19, i32 0, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c]
!34 = metadata !{i32 19, i32 0, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !33, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c]
!36 = metadata !{metadata !"any pointer", metadata !37}
!37 = metadata !{metadata !"omnipotent char", metadata !38}
!38 = metadata !{metadata !"Simple C/C++ TBAA"}
!39 = metadata !{i32 21, i32 0, metadata !4, null}
!40 = metadata !{i32 23, i32 0, metadata !4, null}
!41 = metadata !{i32 34, i32 0, metadata !21, null}
!42 = metadata !{i32 36, i32 0, metadata !21, null}
!43 = metadata !{i32 37, i32 0, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !21, i32 36, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c]
!45 = metadata !{i32 39, i32 0, metadata !44, null}
!46 = metadata !{i32 41, i32 0, metadata !21, null}
!47 = metadata !{metadata !"int", metadata !37}
!48 = metadata !{i32 42, i32 0, metadata !21, null}
!49 = metadata !{i32 43, i32 0, metadata !21, null}
!50 = metadata !{i32 44, i32 0, metadata !21, null}
!51 = metadata !{i32 46, i32 0, metadata !21, null}
!52 = metadata !{i32 58, i32 0, metadata !26, null} ; [ DW_TAG_imported_module ]
!53 = metadata !{i32 60, i32 0, metadata !26, null}
!54 = metadata !{i32 61, i32 0, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !26, i32 60, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c]
!56 = metadata !{i32 63, i32 0, metadata !55, null}
!57 = metadata !{i32 65, i32 0, metadata !26, null}
!58 = metadata !{i32 66, i32 0, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !26, i32 65, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c]
!60 = metadata !{i32 67, i32 0, metadata !59, null}
!61 = metadata !{i32 68, i32 0, metadata !26, null}
!62 = metadata !{i32 70, i32 0, metadata !26, null}
!63 = metadata !{i32 82, i32 0, metadata !29, null}
!64 = metadata !{i32 84, i32 0, metadata !29, null}
!65 = metadata !{i32 85, i32 0, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !29, i32 84, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c]
!67 = metadata !{i32 87, i32 0, metadata !66, null}
!68 = metadata !{i32 89, i32 0, metadata !29, null}
!69 = metadata !{i32 90, i32 0, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !29, i32 90, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_basics.c]
!71 = metadata !{%struct._IV* null}
!72 = metadata !{i32 92, i32 0, metadata !29, null}
