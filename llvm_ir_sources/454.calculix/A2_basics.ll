; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [73 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c\00", align 1
@.str2 = private unnamed_addr constant [52 x i8] c"\0A fatal error in A2_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [46 x i8] c"\0A fatal error in A2_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._A2* @A2_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 32) #6, !dbg !36
  %0 = bitcast i8* %call to %struct._A2*, !dbg !36
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %0}, i64 0, metadata !24), !dbg !36
  %cmp = icmp eq i8* %call, null, !dbg !36
  br i1 %cmp, label %if.then, label %if.end, !dbg !36

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !38, !tbaa !40
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 32, i32 21, i8* getelementptr inbounds ([73 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !38
  tail call void @exit(i32 -1) #7, !dbg !38
  unreachable, !dbg !38

if.end:                                           ; preds = %entry
  tail call void @A2_setDefaultFields(%struct._A2* %0) #8, !dbg !43
  ret %struct._A2* %0, !dbg !44
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @A2_setDefaultFields(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !29), !dbg !45
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !46
  br i1 %cmp, label %if.then, label %if.end, !dbg !46

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !47, !tbaa !40
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), %struct._A2* null) #6, !dbg !47
  tail call void @exit(i32 -1) #7, !dbg !49
  unreachable, !dbg !49

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !50
  store i32 1, i32* %type, align 4, !dbg !50, !tbaa !51
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !52
  %1 = bitcast i32* %n1 to i8*, !dbg !53
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 28, i32 4, i1 false), !dbg !54
  ret void, !dbg !53
}

; Function Attrs: nounwind optsize uwtable
define void @A2_clearData(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !32), !dbg !55
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !56
  br i1 %cmp, label %if.then, label %if.end, !dbg !56

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !57, !tbaa !40
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str3, i64 0, i64 0), %struct._A2* null) #6, !dbg !57
  tail call void @exit(i32 -1) #7, !dbg !59
  unreachable, !dbg !59

if.end:                                           ; preds = %entry
  %nowned = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5, !dbg !60
  %1 = load i32* %nowned, align 4, !dbg !60, !tbaa !51
  %cmp1 = icmp sgt i32 %1, 0, !dbg !60
  br i1 %cmp1, label %land.lhs.true, label %if.end5, !dbg !60

land.lhs.true:                                    ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !60
  %2 = load double** %entries, align 8, !dbg !60, !tbaa !40
  %cmp2 = icmp eq double* %2, null, !dbg !60
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !60

if.then3:                                         ; preds = %land.lhs.true
  tail call void @DVfree(double* %2) #6, !dbg !61
  br label %if.end5, !dbg !63

if.end5:                                          ; preds = %land.lhs.true, %if.then3, %if.end
  tail call void @A2_setDefaultFields(%struct._A2* %mtx) #8, !dbg !64
  ret void, !dbg !65
}

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: nounwind optsize uwtable
define void @A2_free(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !35), !dbg !66
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !67
  br i1 %cmp, label %if.then, label %if.end, !dbg !67

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !68, !tbaa !40
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str4, i64 0, i64 0), %struct._A2* null) #6, !dbg !68
  tail call void @exit(i32 -1) #7, !dbg !70
  unreachable, !dbg !70

if.end:                                           ; preds = %entry
  tail call void @A2_clearData(%struct._A2* %mtx) #8, !dbg !71
  %1 = bitcast %struct._A2* %mtx to i8*, !dbg !72
  tail call void @free(i8* %1) #6, !dbg !72
  tail call void @llvm.dbg.value(metadata !74, i64 0, metadata !35), !dbg !72
  ret void, !dbg !75
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !25, metadata !30, metadata !33}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_new", metadata !"A2_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._A2* ()* @A2_new, null, null, metadata !23, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [A2_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from A2]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"A2", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [A2] [line 49, size 0, align 0, offset 0] [from _A2]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_A2", i32 41, i64 256, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_A2] [line 41, size 256, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/../A2.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 42, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"n1", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [n1] [line 43, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"n2", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [n2] [line 44, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inc1", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [inc1] [line 45, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inc2", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [inc2] [line 46, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nowned", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nowned] [line 47, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [entries] [line 48, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!22 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786688, metadata !4, metadata !"mtx", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 19]
!25 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_setDefaultFields", metadata !"A2_setDefaultFields", metadata !"", i32 35, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*)* @A2_setDefaultFields, null, null, metadata !28, i32 37} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 37] [A2_setDefaultFields]
!26 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!27 = metadata !{null, metadata !8}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786689, metadata !25, metadata !"mtx", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 36]
!30 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_clearData", metadata !"A2_clearData", metadata !"", i32 62, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*)* @A2_clearData, null, null, metadata !31, i32 64} ; [ DW_TAG_subprogram ] [line 62] [def] [scope 64] [A2_clearData]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786689, metadata !30, metadata !"mtx", metadata !5, i32 16777279, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 63]
!33 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_free", metadata !"A2_free", metadata !"", i32 101, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*)* @A2_free, null, null, metadata !34, i32 103} ; [ DW_TAG_subprogram ] [line 101] [def] [scope 103] [A2_free]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786689, metadata !33, metadata !"mtx", metadata !5, i32 16777318, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 102]
!36 = metadata !{i32 21, i32 0, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c]
!38 = metadata !{i32 21, i32 0, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !37, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c]
!40 = metadata !{metadata !"any pointer", metadata !41}
!41 = metadata !{metadata !"omnipotent char", metadata !42}
!42 = metadata !{metadata !"Simple C/C++ TBAA"}
!43 = metadata !{i32 22, i32 0, metadata !4, null}
!44 = metadata !{i32 24, i32 0, metadata !4, null}
!45 = metadata !{i32 36, i32 0, metadata !25, null}
!46 = metadata !{i32 38, i32 0, metadata !25, null}
!47 = metadata !{i32 39, i32 0, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !25, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c]
!49 = metadata !{i32 41, i32 0, metadata !48, null}
!50 = metadata !{i32 43, i32 0, metadata !25, null}
!51 = metadata !{metadata !"int", metadata !41}
!52 = metadata !{i32 44, i32 0, metadata !25, null}
!53 = metadata !{i32 51, i32 0, metadata !25, null}
!54 = metadata !{i32 45, i32 0, metadata !25, null}
!55 = metadata !{i32 63, i32 0, metadata !30, null}
!56 = metadata !{i32 70, i32 0, metadata !30, null}
!57 = metadata !{i32 71, i32 0, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !30, i32 70, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c]
!59 = metadata !{i32 73, i32 0, metadata !58, null}
!60 = metadata !{i32 80, i32 0, metadata !30, null}
!61 = metadata !{i32 81, i32 0, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !30, i32 80, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c]
!63 = metadata !{i32 82, i32 0, metadata !62, null}
!64 = metadata !{i32 88, i32 0, metadata !30, null}
!65 = metadata !{i32 90, i32 0, metadata !30, null}
!66 = metadata !{i32 102, i32 0, metadata !33, null}
!67 = metadata !{i32 104, i32 0, metadata !33, null}
!68 = metadata !{i32 105, i32 0, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !33, i32 104, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c]
!70 = metadata !{i32 107, i32 0, metadata !69, null}
!71 = metadata !{i32 109, i32 0, metadata !33, null}
!72 = metadata !{i32 110, i32 0, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !33, i32 110, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_basics.c]
!74 = metadata !{%struct._A2* null}
!75 = metadata !{i32 112, i32 0, metadata !33, null}
