; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [42 x i8] c"\0A fatal error in IV_owned(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [41 x i8] c"\0A fatal error in IV_size(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [44 x i8] c"\0A fatal error in IV_maxsize(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"\0A fatal error in IV_entries(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [57 x i8] c"\0A fatal error in IV_sizeAndEntries(%p,%p,%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [51 x i8] c"\0A fatal error in IV_setEntry(%p,%d,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @IV_owned(%struct._IV* %iv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !20), !dbg !55
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !56
  br i1 %cmp, label %if.then, label %if.end, !dbg !56

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !57, !tbaa !59
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0), %struct._IV* null) #5, !dbg !57
  tail call void @exit(i32 -1) #6, !dbg !62
  unreachable, !dbg !62

if.end:                                           ; preds = %entry
  %owned = getelementptr inbounds %struct._IV* %iv, i64 0, i32 2, !dbg !63
  %1 = load i32* %owned, align 4, !dbg !63, !tbaa !64
  ret i32 %1, !dbg !63
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @IV_size(%struct._IV* %iv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !23), !dbg !65
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !66
  br i1 %cmp, label %if.then, label %if.end, !dbg !66

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !67, !tbaa !59
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), %struct._IV* null) #5, !dbg !67
  tail call void @exit(i32 -1) #6, !dbg !69
  unreachable, !dbg !69

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !70
  %1 = load i32* %size, align 4, !dbg !70, !tbaa !64
  ret i32 %1, !dbg !70
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_maxsize(%struct._IV* %iv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !26), !dbg !71
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !72
  br i1 %cmp, label %if.then, label %if.end, !dbg !72

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !73, !tbaa !59
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str2, i64 0, i64 0), %struct._IV* null) #5, !dbg !73
  tail call void @exit(i32 -1) #6, !dbg !75
  unreachable, !dbg !75

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !76
  %1 = load i32* %maxsize, align 4, !dbg !76, !tbaa !64
  ret i32 %1, !dbg !76
}

; Function Attrs: nounwind optsize uwtable
define i32 @IV_entry(%struct._IV* %iv, i32 %loc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !31), !dbg !77
  tail call void @llvm.dbg.value(metadata !{i32 %loc}, i64 0, metadata !32), !dbg !78
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !79

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !80, !tbaa !59
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), %struct._IV* null) #5, !dbg !80
  tail call void @exit(i32 -1) #6, !dbg !82
  unreachable, !dbg !82

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %loc, 0, !dbg !83
  br i1 %cmp1, label %return, label %lor.lhs.false, !dbg !83

lor.lhs.false:                                    ; preds = %if.end
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !83
  %1 = load i32* %size, align 4, !dbg !83, !tbaa !64
  %cmp2 = icmp sgt i32 %1, %loc, !dbg !83
  br i1 %cmp2, label %if.else, label %return, !dbg !83

if.else:                                          ; preds = %lor.lhs.false
  %idxprom = sext i32 %loc to i64, !dbg !84
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !84
  %2 = load i32** %vec, align 8, !dbg !84, !tbaa !59
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !84
  %3 = load i32* %arrayidx, align 4, !dbg !84, !tbaa !64
  br label %return, !dbg !84

return:                                           ; preds = %if.end, %lor.lhs.false, %if.else
  %retval.0 = phi i32 [ %3, %if.else ], [ -1, %lor.lhs.false ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !86
}

; Function Attrs: nounwind optsize uwtable
define i32* @IV_entries(%struct._IV* %iv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !37), !dbg !87
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !88
  br i1 %cmp, label %if.then, label %if.end, !dbg !88

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !89, !tbaa !59
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), %struct._IV* null) #5, !dbg !89
  tail call void @exit(i32 -1) #6, !dbg !91
  unreachable, !dbg !91

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !92
  %1 = load i32** %vec, align 8, !dbg !92, !tbaa !59
  ret i32* %1, !dbg !92
}

; Function Attrs: nounwind optsize uwtable
define void @IV_sizeAndEntries(%struct._IV* %iv, i32* %psize, i32** %pentries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !43), !dbg !93
  tail call void @llvm.dbg.value(metadata !{i32* %psize}, i64 0, metadata !44), !dbg !94
  tail call void @llvm.dbg.value(metadata !{i32** %pentries}, i64 0, metadata !45), !dbg !95
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !96
  %cmp1 = icmp eq i32* %psize, null, !dbg !96
  %or.cond = or i1 %cmp, %cmp1, !dbg !96
  %cmp3 = icmp eq i32** %pentries, null, !dbg !96
  %or.cond11 = or i1 %or.cond, %cmp3, !dbg !96
  br i1 %or.cond11, label %if.then, label %if.end, !dbg !96

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !97, !tbaa !59
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str4, i64 0, i64 0), %struct._IV* %iv, i32* %psize, i32** %pentries) #5, !dbg !97
  tail call void @exit(i32 -1) #6, !dbg !99
  unreachable, !dbg !99

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !100
  %1 = load i32* %size, align 4, !dbg !100, !tbaa !64
  store i32 %1, i32* %psize, align 4, !dbg !100, !tbaa !64
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !101
  %2 = load i32** %vec, align 8, !dbg !101, !tbaa !59
  store i32* %2, i32** %pentries, align 8, !dbg !101, !tbaa !59
  ret void, !dbg !102
}

; Function Attrs: nounwind optsize uwtable
define void @IV_setEntry(%struct._IV* %iv, i32 %loc, i32 %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %iv}, i64 0, metadata !50), !dbg !103
  tail call void @llvm.dbg.value(metadata !{i32 %loc}, i64 0, metadata !51), !dbg !104
  tail call void @llvm.dbg.value(metadata !{i32 %value}, i64 0, metadata !52), !dbg !105
  %cmp = icmp eq %struct._IV* %iv, null, !dbg !106
  %cmp1 = icmp slt i32 %loc, 0, !dbg !106
  %or.cond = or i1 %cmp, %cmp1, !dbg !106
  br i1 %or.cond, label %if.then, label %if.end, !dbg !106

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !107, !tbaa !59
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str5, i64 0, i64 0), %struct._IV* %iv, i32 %loc, i32 %value) #5, !dbg !107
  tail call void @exit(i32 -1) #6, !dbg !109
  unreachable, !dbg !109

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._IV* %iv, i64 0, i32 1, !dbg !110
  %1 = load i32* %maxsize, align 4, !dbg !110, !tbaa !64
  %cmp2 = icmp sgt i32 %1, %loc, !dbg !110
  br i1 %cmp2, label %if.end11, label %if.then3, !dbg !110

if.then3:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !53), !dbg !111
  %cmp5 = icmp slt i32 %1, 10, !dbg !112
  %.mul = select i1 %cmp5, i32 10, i32 %1, !dbg !112
  tail call void @llvm.dbg.value(metadata !{i32 %.mul}, i64 0, metadata !53), !dbg !113
  %cmp8 = icmp sgt i32 %.mul, %loc, !dbg !115
  %add = add nsw i32 %loc, 1, !dbg !116
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !53), !dbg !116
  %.mul.add = select i1 %cmp8, i32 %.mul, i32 %add, !dbg !115
  tail call void @IV_setMaxsize(%struct._IV* %iv, i32 %.mul.add) #5, !dbg !118
  br label %if.end11, !dbg !119

if.end11:                                         ; preds = %if.end, %if.then3
  %size = getelementptr inbounds %struct._IV* %iv, i64 0, i32 0, !dbg !120
  %2 = load i32* %size, align 4, !dbg !120, !tbaa !64
  %cmp12 = icmp sgt i32 %2, %loc, !dbg !120
  br i1 %cmp12, label %if.end16, label %if.then13, !dbg !120

if.then13:                                        ; preds = %if.end11
  %add14 = add nsw i32 %loc, 1, !dbg !121
  store i32 %add14, i32* %size, align 4, !dbg !121, !tbaa !64
  br label %if.end16, !dbg !123

if.end16:                                         ; preds = %if.end11, %if.then13
  %idxprom = sext i32 %loc to i64, !dbg !124
  %vec = getelementptr inbounds %struct._IV* %iv, i64 0, i32 3, !dbg !124
  %3 = load i32** %vec, align 8, !dbg !124, !tbaa !59
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !124
  store i32 %value, i32* %arrayidx, align 4, !dbg !124, !tbaa !64
  ret void, !dbg !125
}

; Function Attrs: optsize
declare void @IV_setMaxsize(%struct._IV*, i32) #3

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !21, metadata !24, metadata !27, metadata !33, metadata !38, metadata !46}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_owned", metadata !"IV_owned", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IV*)* @IV_owned, null, null, metadata !19, i32 19} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 19] [IV_owned]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/../IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786689, metadata !4, metadata !"iv", metadata !5, i32 16777234, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 18]
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_size", metadata !"IV_size", metadata !"", i32 36, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IV*)* @IV_size, null, null, metadata !22, i32 38} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 38] [IV_size]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786689, metadata !21, metadata !"iv", metadata !5, i32 16777253, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 37]
!24 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_maxsize", metadata !"IV_maxsize", metadata !"", i32 54, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IV*)* @IV_maxsize, null, null, metadata !25, i32 56} ; [ DW_TAG_subprogram ] [line 54] [def] [scope 56] [IV_maxsize]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786689, metadata !24, metadata !"iv", metadata !5, i32 16777271, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 55]
!27 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_entry", metadata !"IV_entry", metadata !"", i32 74, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._IV*, i32)* @IV_entry, null, null, metadata !30, i32 77} ; [ DW_TAG_subprogram ] [line 74] [def] [scope 77] [IV_entry]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !8, metadata !9, metadata !8}
!30 = metadata !{metadata !31, metadata !32}
!31 = metadata !{i32 786689, metadata !27, metadata !"iv", metadata !5, i32 16777291, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 75]
!32 = metadata !{i32 786689, metadata !27, metadata !"loc", metadata !5, i32 33554508, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 76]
!33 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_entries", metadata !"IV_entries", metadata !"", i32 99, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct._IV*)* @IV_entries, null, null, metadata !36, i32 101} ; [ DW_TAG_subprogram ] [line 99] [def] [scope 101] [IV_entries]
!34 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{metadata !18, metadata !9}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786689, metadata !33, metadata !"iv", metadata !5, i32 16777316, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 100]
!38 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_sizeAndEntries", metadata !"IV_sizeAndEntries", metadata !"", i32 119, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IV*, i32*, i32**)* @IV_sizeAndEntries, null, null, metadata !42, i32 123} ; [ DW_TAG_subprogram ] [line 119] [def] [scope 123] [IV_sizeAndEntries]
!39 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{null, metadata !9, metadata !18, metadata !41}
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{metadata !43, metadata !44, metadata !45}
!43 = metadata !{i32 786689, metadata !38, metadata !"iv", metadata !5, i32 16777336, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 120]
!44 = metadata !{i32 786689, metadata !38, metadata !"psize", metadata !5, i32 33554553, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psize] [line 121]
!45 = metadata !{i32 786689, metadata !38, metadata !"pentries", metadata !5, i32 50331770, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentries] [line 122]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IV_setEntry", metadata !"IV_setEntry", metadata !"", i32 143, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IV*, i32, i32)* @IV_setEntry, null, null, metadata !49, i32 147} ; [ DW_TAG_subprogram ] [line 143] [def] [scope 147] [IV_setEntry]
!47 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{null, metadata !9, metadata !8, metadata !8}
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53}
!50 = metadata !{i32 786689, metadata !46, metadata !"iv", metadata !5, i32 16777360, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iv] [line 144]
!51 = metadata !{i32 786689, metadata !46, metadata !"loc", metadata !5, i32 33554577, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 145]
!52 = metadata !{i32 786689, metadata !46, metadata !"value", metadata !5, i32 50331794, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 146]
!53 = metadata !{i32 786688, metadata !54, metadata !"newmaxsize", metadata !5, i32 159, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newmaxsize] [line 159]
!54 = metadata !{i32 786443, metadata !1, metadata !46, i32 158, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c]
!55 = metadata !{i32 18, i32 0, metadata !4, null}
!56 = metadata !{i32 20, i32 0, metadata !4, null}
!57 = metadata !{i32 21, i32 0, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !4, i32 20, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c]
!59 = metadata !{metadata !"any pointer", metadata !60}
!60 = metadata !{metadata !"omnipotent char", metadata !61}
!61 = metadata !{metadata !"Simple C/C++ TBAA"}
!62 = metadata !{i32 23, i32 0, metadata !58, null}
!63 = metadata !{i32 25, i32 0, metadata !4, null}
!64 = metadata !{metadata !"int", metadata !60}
!65 = metadata !{i32 37, i32 0, metadata !21, null}
!66 = metadata !{i32 39, i32 0, metadata !21, null}
!67 = metadata !{i32 40, i32 0, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !21, i32 39, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c]
!69 = metadata !{i32 42, i32 0, metadata !68, null}
!70 = metadata !{i32 44, i32 0, metadata !21, null}
!71 = metadata !{i32 55, i32 0, metadata !24, null}
!72 = metadata !{i32 57, i32 0, metadata !24, null}
!73 = metadata !{i32 58, i32 0, metadata !74, null} ; [ DW_TAG_imported_module ]
!74 = metadata !{i32 786443, metadata !1, metadata !24, i32 57, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c]
!75 = metadata !{i32 60, i32 0, metadata !74, null}
!76 = metadata !{i32 62, i32 0, metadata !24, null}
!77 = metadata !{i32 75, i32 0, metadata !27, null}
!78 = metadata !{i32 76, i32 0, metadata !27, null}
!79 = metadata !{i32 78, i32 0, metadata !27, null}
!80 = metadata !{i32 79, i32 0, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !27, i32 78, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c]
!82 = metadata !{i32 81, i32 0, metadata !81, null}
!83 = metadata !{i32 83, i32 0, metadata !27, null}
!84 = metadata !{i32 86, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !27, i32 85, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c]
!86 = metadata !{i32 88, i32 0, metadata !27, null}
!87 = metadata !{i32 100, i32 0, metadata !33, null}
!88 = metadata !{i32 102, i32 0, metadata !33, null}
!89 = metadata !{i32 103, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !33, i32 102, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c]
!91 = metadata !{i32 105, i32 0, metadata !90, null}
!92 = metadata !{i32 107, i32 0, metadata !33, null}
!93 = metadata !{i32 120, i32 0, metadata !38, null}
!94 = metadata !{i32 121, i32 0, metadata !38, null}
!95 = metadata !{i32 122, i32 0, metadata !38, null}
!96 = metadata !{i32 124, i32 0, metadata !38, null}
!97 = metadata !{i32 125, i32 0, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !38, i32 124, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c]
!99 = metadata !{i32 127, i32 0, metadata !98, null}
!100 = metadata !{i32 129, i32 0, metadata !38, null}
!101 = metadata !{i32 130, i32 0, metadata !38, null}
!102 = metadata !{i32 132, i32 0, metadata !38, null}
!103 = metadata !{i32 144, i32 0, metadata !46, null}
!104 = metadata !{i32 145, i32 0, metadata !46, null}
!105 = metadata !{i32 146, i32 0, metadata !46, null}
!106 = metadata !{i32 153, i32 0, metadata !46, null}
!107 = metadata !{i32 154, i32 0, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !46, i32 153, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c]
!109 = metadata !{i32 156, i32 0, metadata !108, null}
!110 = metadata !{i32 158, i32 0, metadata !46, null}
!111 = metadata !{i32 159, i32 0, metadata !54, null}
!112 = metadata !{i32 160, i32 0, metadata !54, null}
!113 = metadata !{i32 161, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !54, i32 160, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c]
!115 = metadata !{i32 163, i32 0, metadata !54, null}
!116 = metadata !{i32 164, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !54, i32 163, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c]
!118 = metadata !{i32 166, i32 0, metadata !54, null}
!119 = metadata !{i32 167, i32 0, metadata !54, null}
!120 = metadata !{i32 168, i32 0, metadata !46, null}
!121 = metadata !{i32 169, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !46, i32 168, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IV/src/IV_instance.c]
!123 = metadata !{i32 170, i32 0, metadata !122, null}
!124 = metadata !{i32 171, i32 0, metadata !46, null}
!125 = metadata !{i32 173, i32 0, metadata !46, null}
