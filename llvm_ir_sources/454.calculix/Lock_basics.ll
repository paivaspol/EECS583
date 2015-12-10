; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [77 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Lock_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [48 x i8] c"\0A fatal error in Lock_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [43 x i8] c"\0A fatal error in Lock_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Lock* @Lock_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 16) #5, !dbg !31
  %0 = bitcast i8* %call to %struct._Lock*, !dbg !31
  tail call void @llvm.dbg.value(metadata !{%struct._Lock* %0}, i64 0, metadata !19), !dbg !31
  %cmp = icmp eq i8* %call, null, !dbg !31
  br i1 %cmp, label %if.then, label %if.end, !dbg !31

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !33, !tbaa !35
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 16, i32 21, i8* getelementptr inbounds ([77 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !33
  tail call void @exit(i32 -1) #6, !dbg !33
  unreachable, !dbg !33

if.end:                                           ; preds = %entry
  tail call void @Lock_setDefaultFields(%struct._Lock* %0) #7, !dbg !38
  ret %struct._Lock* %0, !dbg !39
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Lock_setDefaultFields(%struct._Lock* %lock) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Lock* %lock}, i64 0, metadata !24), !dbg !40
  %cmp = icmp eq %struct._Lock* %lock, null, !dbg !41
  br i1 %cmp, label %if.then, label %if.end, !dbg !41

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !42, !tbaa !35
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), %struct._Lock* null) #5, !dbg !42
  tail call void @exit(i32 -1) #6, !dbg !44
  unreachable, !dbg !44

if.end:                                           ; preds = %entry
  %1 = bitcast %struct._Lock* %lock to i8*, !dbg !45
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 8, i1 false), !dbg !46
  ret void, !dbg !45
}

; Function Attrs: nounwind optsize uwtable
define void @Lock_clearData(%struct._Lock* %lock) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Lock* %lock}, i64 0, metadata !27), !dbg !47
  %cmp = icmp eq %struct._Lock* %lock, null, !dbg !48
  br i1 %cmp, label %if.then, label %if.end, !dbg !48

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !49, !tbaa !35
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str3, i64 0, i64 0), %struct._Lock* null) #5, !dbg !49
  tail call void @exit(i32 -1) #6, !dbg !51
  unreachable, !dbg !51

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct._Lock* %lock, i64 0, i32 0, !dbg !52
  %1 = load i8** %mutex, align 8, !dbg !52, !tbaa !35
  %cmp1 = icmp eq i8* %1, null, !dbg !52
  br i1 %cmp1, label %if.end9, label %if.then5, !dbg !52

if.then5:                                         ; preds = %if.end
  tail call void @free(i8* %1) #5, !dbg !53
  store i8* null, i8** %mutex, align 8, !dbg !53, !tbaa !35
  br label %if.end9, !dbg !53

if.end9:                                          ; preds = %if.end, %if.then5
  tail call void @Lock_setDefaultFields(%struct._Lock* %lock) #7, !dbg !56
  ret void, !dbg !57
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @Lock_free(%struct._Lock* %lock) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Lock* %lock}, i64 0, metadata !30), !dbg !58
  %cmp = icmp eq %struct._Lock* %lock, null, !dbg !59
  br i1 %cmp, label %if.then, label %if.end, !dbg !59

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !60, !tbaa !35
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str4, i64 0, i64 0), %struct._Lock* null) #5, !dbg !60
  tail call void @exit(i32 -1) #6, !dbg !62
  unreachable, !dbg !62

if.end:                                           ; preds = %entry
  tail call void @Lock_clearData(%struct._Lock* %lock) #7, !dbg !63
  %1 = bitcast %struct._Lock* %lock to i8*, !dbg !64
  tail call void @free(i8* %1) #5, !dbg !64
  tail call void @llvm.dbg.value(metadata !66, i64 0, metadata !30), !dbg !64
  ret void, !dbg !67
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !20, metadata !25, metadata !28}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Lock_new", metadata !"Lock_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Lock* ()* @Lock_new, null, null, metadata !18, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [Lock_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Lock]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Lock", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Lock] [line 36, size 0, align 0, offset 0] [from _Lock]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Lock", i32 37, i64 128, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Lock] [line 37, size 128, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/../Lock.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !17}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mutex", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [mutex] [line 45, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlocks", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [nlocks] [line 47, size 32, align 32, offset 64] [from int]
!16 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nunlocks", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !16} ; [ DW_TAG_member ] [nunlocks] [line 48, size 32, align 32, offset 96] [from int]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786688, metadata !4, metadata !"lock", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lock] [line 19]
!20 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Lock_setDefaultFields", metadata !"Lock_setDefaultFields", metadata !"", i32 35, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Lock*)* @Lock_setDefaultFields, null, null, metadata !23, i32 37} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 37] [Lock_setDefaultFields]
!21 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{null, metadata !8}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786689, metadata !20, metadata !"lock", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lock] [line 36]
!25 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Lock_clearData", metadata !"Lock_clearData", metadata !"", i32 58, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Lock*)* @Lock_clearData, null, null, metadata !26, i32 60} ; [ DW_TAG_subprogram ] [line 58] [def] [scope 60] [Lock_clearData]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786689, metadata !25, metadata !"lock", metadata !5, i32 16777275, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lock] [line 59]
!28 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Lock_free", metadata !"Lock_free", metadata !"", i32 108, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Lock*)* @Lock_free, null, null, metadata !29, i32 110} ; [ DW_TAG_subprogram ] [line 108] [def] [scope 110] [Lock_free]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786689, metadata !28, metadata !"lock", metadata !5, i32 16777325, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lock] [line 109]
!31 = metadata !{i32 21, i32 0, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c]
!33 = metadata !{i32 21, i32 0, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !32, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c]
!35 = metadata !{metadata !"any pointer", metadata !36}
!36 = metadata !{metadata !"omnipotent char", metadata !37}
!37 = metadata !{metadata !"Simple C/C++ TBAA"}
!38 = metadata !{i32 22, i32 0, metadata !4, null}
!39 = metadata !{i32 24, i32 0, metadata !4, null}
!40 = metadata !{i32 36, i32 0, metadata !20, null}
!41 = metadata !{i32 38, i32 0, metadata !20, null}
!42 = metadata !{i32 39, i32 0, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !20, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c]
!44 = metadata !{i32 41, i32 0, metadata !43, null}
!45 = metadata !{i32 47, i32 0, metadata !20, null}
!46 = metadata !{i32 45, i32 0, metadata !20, null}
!47 = metadata !{i32 59, i32 0, metadata !25, null}
!48 = metadata !{i32 66, i32 0, metadata !25, null}
!49 = metadata !{i32 67, i32 0, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !25, i32 66, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c]
!51 = metadata !{i32 69, i32 0, metadata !50, null}
!52 = metadata !{i32 76, i32 0, metadata !25, null}
!53 = metadata !{i32 88, i32 0, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !55, i32 88, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c]
!55 = metadata !{i32 786443, metadata !1, metadata !25, i32 76, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c]
!56 = metadata !{i32 95, i32 0, metadata !25, null}
!57 = metadata !{i32 97, i32 0, metadata !25, null}
!58 = metadata !{i32 109, i32 0, metadata !28, null}
!59 = metadata !{i32 111, i32 0, metadata !28, null}
!60 = metadata !{i32 112, i32 0, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !28, i32 111, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c]
!62 = metadata !{i32 114, i32 0, metadata !61, null}
!63 = metadata !{i32 116, i32 0, metadata !28, null}
!64 = metadata !{i32 117, i32 0, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !28, i32 117, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Lock/src/Lock_basics.c]
!66 = metadata !{%struct._Lock* null}
!67 = metadata !{i32 119, i32 0, metadata !28, null}
