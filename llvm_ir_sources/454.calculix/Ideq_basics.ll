; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Ideq = type { i32, i32, i32, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [77 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_basics.c\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Ideq_setDefaultFields(%p)\0A deq is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [50 x i8] c"\0A fatal error in Ideq_clearData(%p)\0A deq is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Ideq_free(%p)\0A deq is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Ideq* @Ideq_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 40) #5, !dbg !40
  %0 = bitcast i8* %call to %struct._Ideq*, !dbg !40
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %0}, i64 0, metadata !28), !dbg !40
  %cmp = icmp eq i8* %call, null, !dbg !40
  br i1 %cmp, label %if.then, label %if.end, !dbg !40

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !42, !tbaa !44
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 40, i32 19, i8* getelementptr inbounds ([77 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !42
  tail call void @exit(i32 -1) #6, !dbg !42
  unreachable, !dbg !42

if.end:                                           ; preds = %entry
  tail call void @Ideq_setDefaultFields(%struct._Ideq* %0) #7, !dbg !47
  ret %struct._Ideq* %0, !dbg !48
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Ideq_setDefaultFields(%struct._Ideq* %deq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %deq}, i64 0, metadata !33), !dbg !49
  %cmp = icmp eq %struct._Ideq* %deq, null, !dbg !50
  br i1 %cmp, label %if.then, label %if.end, !dbg !50

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !51, !tbaa !44
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), %struct._Ideq* null) #5, !dbg !51
  tail call void @exit(i32 -1) #6, !dbg !53
  unreachable, !dbg !53

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 0, !dbg !54
  store i32 0, i32* %maxsize, align 4, !dbg !54, !tbaa !55
  %head = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1, !dbg !56
  store i32 -1, i32* %head, align 4, !dbg !56, !tbaa !55
  %tail = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2, !dbg !57
  store i32 -1, i32* %tail, align 4, !dbg !57, !tbaa !55
  %iv = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, !dbg !58
  tail call void @IV_setDefaultFields(%struct._IV* %iv) #5, !dbg !58
  ret void, !dbg !59
}

; Function Attrs: optsize
declare void @IV_setDefaultFields(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define void @Ideq_clearData(%struct._Ideq* %deq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %deq}, i64 0, metadata !36), !dbg !60
  %cmp = icmp eq %struct._Ideq* %deq, null, !dbg !61
  br i1 %cmp, label %if.then, label %if.end, !dbg !61

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !62, !tbaa !44
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str3, i64 0, i64 0), %struct._Ideq* null) #5, !dbg !62
  tail call void @exit(i32 -1) #6, !dbg !64
  unreachable, !dbg !64

if.end:                                           ; preds = %entry
  %iv = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, !dbg !65
  tail call void @IV_clearData(%struct._IV* %iv) #5, !dbg !65
  tail call void @Ideq_setDefaultFields(%struct._Ideq* %deq) #7, !dbg !66
  ret void, !dbg !67
}

; Function Attrs: optsize
declare void @IV_clearData(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define void @Ideq_free(%struct._Ideq* %deq) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Ideq* %deq}, i64 0, metadata !39), !dbg !68
  %cmp = icmp eq %struct._Ideq* %deq, null, !dbg !69
  br i1 %cmp, label %if.then, label %if.end, !dbg !69

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !70, !tbaa !44
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._Ideq* null) #5, !dbg !70
  tail call void @exit(i32 -1) #6, !dbg !72
  unreachable, !dbg !72

if.end:                                           ; preds = %entry
  tail call void @Ideq_clearData(%struct._Ideq* %deq) #7, !dbg !73
  %1 = bitcast %struct._Ideq* %deq to i8*, !dbg !74
  tail call void @free(i8* %1) #5, !dbg !74
  tail call void @llvm.dbg.value(metadata !76, i64 0, metadata !39), !dbg !74
  ret void, !dbg !77
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !29, metadata !34, metadata !37}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Ideq_new", metadata !"Ideq_new", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Ideq* ()* @Ideq_new, null, null, metadata !27, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [Ideq_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ideq]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Ideq", i32 19, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Ideq] [line 19, size 0, align 0, offset 0] [from _Ideq]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Ideq", i32 20, i64 320, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ideq] [line 20, size 320, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/../Ideq.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxsize", i32 21, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 21, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"head", i32 22, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [head] [line 22, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tail", i32 23, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [tail] [line 23, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"iv", i32 24, i64 192, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [iv] [line 24, size 192, align 64, offset 128] [from IV]
!18 = metadata !{i32 786454, metadata !11, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!25 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786688, metadata !4, metadata !"deq", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [deq] [line 17]
!29 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Ideq_setDefaultFields", metadata !"Ideq_setDefaultFields", metadata !"", i32 34, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Ideq*)* @Ideq_setDefaultFields, null, null, metadata !32, i32 36} ; [ DW_TAG_subprogram ] [line 34] [def] [scope 36] [Ideq_setDefaultFields]
!30 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{null, metadata !8}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786689, metadata !29, metadata !"deq", metadata !5, i32 16777251, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deq] [line 35]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Ideq_clearData", metadata !"Ideq_clearData", metadata !"", i32 58, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Ideq*)* @Ideq_clearData, null, null, metadata !35, i32 60} ; [ DW_TAG_subprogram ] [line 58] [def] [scope 60] [Ideq_clearData]
!35 = metadata !{metadata !36}
!36 = metadata !{i32 786689, metadata !34, metadata !"deq", metadata !5, i32 16777275, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deq] [line 59]
!37 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Ideq_free", metadata !"Ideq_free", metadata !"", i32 80, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Ideq*)* @Ideq_free, null, null, metadata !38, i32 82} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 82] [Ideq_free]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786689, metadata !37, metadata !"deq", metadata !5, i32 16777297, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [deq] [line 81]
!40 = metadata !{i32 19, i32 0, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_basics.c]
!42 = metadata !{i32 19, i32 0, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !41, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_basics.c]
!44 = metadata !{metadata !"any pointer", metadata !45}
!45 = metadata !{metadata !"omnipotent char", metadata !46}
!46 = metadata !{metadata !"Simple C/C++ TBAA"}
!47 = metadata !{i32 21, i32 0, metadata !4, null}
!48 = metadata !{i32 23, i32 0, metadata !4, null}
!49 = metadata !{i32 35, i32 0, metadata !29, null}
!50 = metadata !{i32 37, i32 0, metadata !29, null}
!51 = metadata !{i32 38, i32 0, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !29, i32 37, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_basics.c]
!53 = metadata !{i32 40, i32 0, metadata !52, null}
!54 = metadata !{i32 42, i32 0, metadata !29, null}
!55 = metadata !{metadata !"int", metadata !45}
!56 = metadata !{i32 43, i32 0, metadata !29, null}
!57 = metadata !{i32 44, i32 0, metadata !29, null}
!58 = metadata !{i32 45, i32 0, metadata !29, null}
!59 = metadata !{i32 47, i32 0, metadata !29, null}
!60 = metadata !{i32 59, i32 0, metadata !34, null}
!61 = metadata !{i32 61, i32 0, metadata !34, null}
!62 = metadata !{i32 62, i32 0, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !34, i32 61, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_basics.c]
!64 = metadata !{i32 64, i32 0, metadata !63, null}
!65 = metadata !{i32 66, i32 0, metadata !34, null}
!66 = metadata !{i32 67, i32 0, metadata !34, null}
!67 = metadata !{i32 69, i32 0, metadata !34, null}
!68 = metadata !{i32 81, i32 0, metadata !37, null}
!69 = metadata !{i32 83, i32 0, metadata !37, null}
!70 = metadata !{i32 84, i32 0, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !37, i32 83, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_basics.c]
!72 = metadata !{i32 86, i32 0, metadata !71, null}
!73 = metadata !{i32 88, i32 0, metadata !37, null}
!74 = metadata !{i32 89, i32 0, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !37, i32 89, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_basics.c]
!76 = metadata !{%struct._Ideq* null}
!77 = metadata !{i32 91, i32 0, metadata !37, null}
