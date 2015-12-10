; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._I2Ohash = type { i32, i32, i32, %struct._I2OP*, %struct._I2OP*, %struct._I2OP** }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c\00", align 1
@.str2 = private unnamed_addr constant [66 x i8] c"\0A fatal error in I2Ohash_setDefaultFields(%p)\0A hashtable is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [59 x i8] c"\0A fatal error in I2Ohash_clearData(%p)\0A hashtable is NULL\0A\00", align 1
@.str4 = private unnamed_addr constant [54 x i8] c"\0A fatal error in I2Ohash_free(%p)\0A hashtable is NULL\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._I2Ohash* @I2Ohash_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 40) #6, !dbg !47
  %0 = bitcast i8* %call to %struct._I2Ohash*, !dbg !47
  tail call void @llvm.dbg.value(metadata !{%struct._I2Ohash* %0}, i64 0, metadata !34), !dbg !47
  %cmp = icmp eq i8* %call, null, !dbg !47
  br i1 %cmp, label %if.then, label %if.end, !dbg !47

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !49, !tbaa !51
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 40, i32 21, i8* getelementptr inbounds ([83 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !49
  tail call void @exit(i32 -1) #7, !dbg !49
  unreachable, !dbg !49

if.end:                                           ; preds = %entry
  tail call void @I2Ohash_setDefaultFields(%struct._I2Ohash* %0) #8, !dbg !54
  ret %struct._I2Ohash* %0, !dbg !55
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @I2Ohash_setDefaultFields(%struct._I2Ohash* %hashtable) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._I2Ohash* %hashtable}, i64 0, metadata !39), !dbg !56
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null, !dbg !57
  br i1 %cmp, label %if.then, label %if.end, !dbg !57

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !58, !tbaa !51
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str2, i64 0, i64 0), %struct._I2Ohash* null) #6, !dbg !58
  tail call void @exit(i32 -1) #7, !dbg !60
  unreachable, !dbg !60

if.end:                                           ; preds = %entry
  %nlist = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 0, !dbg !61
  store i32 0, i32* %nlist, align 4, !dbg !61, !tbaa !62
  %grow = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 1, !dbg !63
  store i32 0, i32* %grow, align 4, !dbg !63, !tbaa !62
  %nitem = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 2, !dbg !64
  store i32 0, i32* %nitem, align 4, !dbg !64, !tbaa !62
  %baseI2OP = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 3, !dbg !65
  %1 = bitcast %struct._I2OP** %baseI2OP to i8*, !dbg !66
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false), !dbg !65
  ret void, !dbg !66
}

; Function Attrs: nounwind optsize uwtable
define void @I2Ohash_clearData(%struct._I2Ohash* %hashtable) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._I2Ohash* %hashtable}, i64 0, metadata !42), !dbg !67
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null, !dbg !68
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !68

while.cond.preheader:                             ; preds = %entry
  %baseI2OP = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 3, !dbg !69
  %0 = load %struct._I2OP** %baseI2OP, align 8, !dbg !69, !tbaa !51
  tail call void @llvm.dbg.value(metadata !{%struct._I2OP* %0}, i64 0, metadata !43), !dbg !69
  %cmp121 = icmp eq %struct._I2OP* %0, null, !dbg !69
  br i1 %cmp121, label %while.end, label %while.body, !dbg !69

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !70, !tbaa !51
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str3, i64 0, i64 0), %struct._I2Ohash* null) #6, !dbg !70
  tail call void @exit(i32 -1) #7, !dbg !72
  unreachable, !dbg !72

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %2 = phi %struct._I2OP* [ %4, %while.body ], [ %0, %while.cond.preheader ]
  %next = getelementptr inbounds %struct._I2OP* %2, i64 0, i32 3, !dbg !73
  %3 = load %struct._I2OP** %next, align 8, !dbg !73, !tbaa !51
  store %struct._I2OP* %3, %struct._I2OP** %baseI2OP, align 8, !dbg !73, !tbaa !51
  tail call void @I2OP_free(%struct._I2OP* %2) #6, !dbg !75
  %4 = load %struct._I2OP** %baseI2OP, align 8, !dbg !69, !tbaa !51
  tail call void @llvm.dbg.value(metadata !{%struct._I2OP* %2}, i64 0, metadata !43), !dbg !69
  %cmp1 = icmp eq %struct._I2OP* %4, null, !dbg !69
  br i1 %cmp1, label %while.end, label %while.body, !dbg !69

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %heads = getelementptr inbounds %struct._I2Ohash* %hashtable, i64 0, i32 5, !dbg !76
  %5 = load %struct._I2OP*** %heads, align 8, !dbg !76, !tbaa !51
  %cmp3 = icmp eq %struct._I2OP** %5, null, !dbg !76
  br i1 %cmp3, label %if.end11, label %if.then7, !dbg !76

if.then7:                                         ; preds = %while.end
  %6 = bitcast %struct._I2OP** %5 to i8*, !dbg !77
  tail call void @free(i8* %6) #6, !dbg !77
  store %struct._I2OP** null, %struct._I2OP*** %heads, align 8, !dbg !77, !tbaa !51
  br label %if.end11, !dbg !77

if.end11:                                         ; preds = %while.end, %if.then7
  tail call void @I2Ohash_setDefaultFields(%struct._I2Ohash* %hashtable) #8, !dbg !80
  ret void, !dbg !81
}

; Function Attrs: optsize
declare void @I2OP_free(%struct._I2OP*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @I2Ohash_free(%struct._I2Ohash* %hashtable) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._I2Ohash* %hashtable}, i64 0, metadata !46), !dbg !82
  %cmp = icmp eq %struct._I2Ohash* %hashtable, null, !dbg !83
  br i1 %cmp, label %if.then, label %if.end, !dbg !83

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !84, !tbaa !51
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str4, i64 0, i64 0), %struct._I2Ohash* null) #6, !dbg !84
  tail call void @exit(i32 -1) #7, !dbg !86
  unreachable, !dbg !86

if.end:                                           ; preds = %entry
  tail call void @I2Ohash_clearData(%struct._I2Ohash* %hashtable) #8, !dbg !87
  %1 = bitcast %struct._I2Ohash* %hashtable to i8*, !dbg !88
  tail call void @free(i8* %1) #6, !dbg !88
  tail call void @llvm.dbg.value(metadata !90, i64 0, metadata !46), !dbg !88
  ret void, !dbg !91
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !35, metadata !40, metadata !44}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"I2Ohash_new", metadata !"I2Ohash_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._I2Ohash* ()* @I2Ohash_new, null, null, metadata !33, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [I2Ohash_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2Ohash]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"I2Ohash", i32 6, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [I2Ohash] [line 6, size 0, align 0, offset 0] [from _I2Ohash]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_I2Ohash", i32 7, i64 320, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_I2Ohash] [line 7, size 320, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/../I2Ohash.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !30, metadata !31}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlist", i32 8, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 8, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"grow", i32 9, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [grow] [line 9, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nitem", i32 10, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nitem] [line 10, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"baseI2OP", i32 11, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [baseI2OP] [line 11, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2OP]
!19 = metadata !{i32 786454, metadata !11, null, metadata !"I2OP", i32 5, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [I2OP] [line 5, size 0, align 0, offset 0] [from _I2OP]
!20 = metadata !{i32 786451, metadata !21, null, metadata !"_I2OP", i32 6, i64 192, i64 64, i32 0, i32 0, null, metadata !22, i32 0, null, null} ; [ DW_TAG_structure_type ] [_I2OP] [line 6, size 192, align 64, offset 0] [from ]
!21 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/../../Utilities/I2OP.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !27}
!23 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"value0", i32 7, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [value0] [line 7, size 32, align 32, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"value1", i32 8, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [value1] [line 8, size 32, align 32, offset 32] [from int]
!25 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"value2", i32 9, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [value2] [line 9, size 64, align 64, offset 64] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"next", i32 10, i64 64, i64 64, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [next] [line 10, size 64, align 64, offset 128] [from ]
!28 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from I2OP]
!29 = metadata !{i32 786454, metadata !21, null, metadata !"I2OP", i32 5, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [I2OP] [line 5, size 0, align 0, offset 0] [from _I2OP]
!30 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"freeI2OP", i32 12, i64 64, i64 64, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ] [freeI2OP] [line 12, size 64, align 64, offset 192] [from ]
!31 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"heads", i32 13, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [heads] [line 13, size 64, align 64, offset 256] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786688, metadata !4, metadata !"hashtable", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hashtable] [line 19]
!35 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"I2Ohash_setDefaultFields", metadata !"I2Ohash_setDefaultFields", metadata !"", i32 36, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._I2Ohash*)* @I2Ohash_setDefaultFields, null, null, metadata !38, i32 38} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 38] [I2Ohash_setDefaultFields]
!36 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{null, metadata !8}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786689, metadata !35, metadata !"hashtable", metadata !5, i32 16777253, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hashtable] [line 37]
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"I2Ohash_clearData", metadata !"I2Ohash_clearData", metadata !"", i32 62, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._I2Ohash*)* @I2Ohash_clearData, null, null, metadata !41, i32 64} ; [ DW_TAG_subprogram ] [line 62] [def] [scope 64] [I2Ohash_clearData]
!41 = metadata !{metadata !42, metadata !43}
!42 = metadata !{i32 786689, metadata !40, metadata !"hashtable", metadata !5, i32 16777279, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hashtable] [line 63]
!43 = metadata !{i32 786688, metadata !40, metadata !"i2op", metadata !5, i32 65, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2op] [line 65]
!44 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"I2Ohash_free", metadata !"I2Ohash_free", metadata !"", i32 100, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._I2Ohash*)* @I2Ohash_free, null, null, metadata !45, i32 102} ; [ DW_TAG_subprogram ] [line 100] [def] [scope 102] [I2Ohash_free]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786689, metadata !44, metadata !"hashtable", metadata !5, i32 16777317, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hashtable] [line 101]
!47 = metadata !{i32 21, i32 0, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c]
!49 = metadata !{i32 21, i32 0, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !48, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c]
!51 = metadata !{metadata !"any pointer", metadata !52}
!52 = metadata !{metadata !"omnipotent char", metadata !53}
!53 = metadata !{metadata !"Simple C/C++ TBAA"}
!54 = metadata !{i32 23, i32 0, metadata !4, null}
!55 = metadata !{i32 25, i32 0, metadata !4, null}
!56 = metadata !{i32 37, i32 0, metadata !35, null}
!57 = metadata !{i32 39, i32 0, metadata !35, null}
!58 = metadata !{i32 40, i32 0, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !35, i32 39, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c]
!60 = metadata !{i32 42, i32 0, metadata !59, null}
!61 = metadata !{i32 44, i32 0, metadata !35, null}
!62 = metadata !{metadata !"int", metadata !52}
!63 = metadata !{i32 45, i32 0, metadata !35, null}
!64 = metadata !{i32 46, i32 0, metadata !35, null}
!65 = metadata !{i32 47, i32 0, metadata !35, null}
!66 = metadata !{i32 51, i32 0, metadata !35, null}
!67 = metadata !{i32 63, i32 0, metadata !40, null}
!68 = metadata !{i32 67, i32 0, metadata !40, null}
!69 = metadata !{i32 76, i32 0, metadata !40, null}
!70 = metadata !{i32 68, i32 0, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !40, i32 67, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c]
!72 = metadata !{i32 70, i32 0, metadata !71, null}
!73 = metadata !{i32 81, i32 0, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !40, i32 76, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c]
!75 = metadata !{i32 82, i32 0, metadata !74, null}
!76 = metadata !{i32 84, i32 0, metadata !40, null}
!77 = metadata !{i32 85, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !79, i32 85, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c]
!79 = metadata !{i32 786443, metadata !1, metadata !40, i32 84, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c]
!80 = metadata !{i32 87, i32 0, metadata !40, null}
!81 = metadata !{i32 89, i32 0, metadata !40, null}
!82 = metadata !{i32 101, i32 0, metadata !44, null}
!83 = metadata !{i32 103, i32 0, metadata !44, null}
!84 = metadata !{i32 104, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !44, i32 103, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c]
!86 = metadata !{i32 106, i32 0, metadata !85, null}
!87 = metadata !{i32 108, i32 0, metadata !44, null}
!88 = metadata !{i32 109, i32 0, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !44, i32 109, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/I2Ohash/src/I2Ohash_basics.c]
!90 = metadata !{%struct._I2Ohash* null}
!91 = metadata !{i32 111, i32 0, metadata !44, null}
