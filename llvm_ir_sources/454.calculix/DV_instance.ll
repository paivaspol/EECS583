; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [42 x i8] c"\0A fatal error in DV_owned(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_maxsize(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"\0A fatal error in DV_size(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [42 x i8] c"\0A fatal error in DV_entry(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_entries(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DV_sizeAndEntries(%p,%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [51 x i8] c"\0A fatal error in DV_setEntry(%p,%d,%f)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @DV_owned(%struct._DV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !21), !dbg !57
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !58
  br i1 %cmp, label %if.then, label %if.end, !dbg !58

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !59, !tbaa !61
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0), %struct._DV* null) #5, !dbg !59
  tail call void @exit(i32 -1) #6, !dbg !64
  unreachable, !dbg !64

if.end:                                           ; preds = %entry
  %owned = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2, !dbg !65
  %1 = load i32* %owned, align 4, !dbg !65, !tbaa !66
  ret i32 %1, !dbg !65
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @DV_maxsize(%struct._DV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !24), !dbg !67
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !68
  br i1 %cmp, label %if.then, label %if.end, !dbg !68

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !69, !tbaa !61
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str1, i64 0, i64 0), %struct._DV* null) #5, !dbg !69
  tail call void @exit(i32 -1) #6, !dbg !71
  unreachable, !dbg !71

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !72
  %1 = load i32* %maxsize, align 4, !dbg !72, !tbaa !66
  ret i32 %1, !dbg !72
}

; Function Attrs: nounwind optsize uwtable
define i32 @DV_size(%struct._DV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !27), !dbg !73
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !74
  br i1 %cmp, label %if.then, label %if.end, !dbg !74

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !75, !tbaa !61
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0), %struct._DV* null) #5, !dbg !75
  tail call void @exit(i32 -1) #6, !dbg !77
  unreachable, !dbg !77

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !78
  %1 = load i32* %size, align 4, !dbg !78, !tbaa !66
  ret i32 %1, !dbg !78
}

; Function Attrs: nounwind optsize uwtable
define double @DV_entry(%struct._DV* %dv, i32 %loc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !32), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i32 %loc}, i64 0, metadata !33), !dbg !80
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !81
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !81

lor.lhs.false:                                    ; preds = %entry
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !81
  %0 = load double** %vec, align 8, !dbg !81, !tbaa !61
  %cmp1 = icmp eq double* %0, null, !dbg !81
  br i1 %cmp1, label %if.then, label %if.end, !dbg !81

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !82, !tbaa !61
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([42 x i8]* @.str3, i64 0, i64 0), %struct._DV* %dv) #5, !dbg !82
  tail call void @exit(i32 -1) #6, !dbg !84
  unreachable, !dbg !84

if.end:                                           ; preds = %lor.lhs.false
  %cmp2 = icmp slt i32 %loc, 0, !dbg !85
  br i1 %cmp2, label %return, label %lor.lhs.false3, !dbg !85

lor.lhs.false3:                                   ; preds = %if.end
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !85
  %2 = load i32* %size, align 4, !dbg !85, !tbaa !66
  %cmp4 = icmp sgt i32 %2, %loc, !dbg !85
  br i1 %cmp4, label %if.else, label %return, !dbg !85

if.else:                                          ; preds = %lor.lhs.false3
  %idxprom = sext i32 %loc to i64, !dbg !86
  %arrayidx = getelementptr inbounds double* %0, i64 %idxprom, !dbg !86
  %3 = load double* %arrayidx, align 8, !dbg !86, !tbaa !88
  br label %return, !dbg !86

return:                                           ; preds = %if.end, %lor.lhs.false3, %if.else
  %retval.0 = phi double [ %3, %if.else ], [ 0.000000e+00, %lor.lhs.false3 ], [ 0.000000e+00, %if.end ]
  ret double %retval.0, !dbg !89
}

; Function Attrs: nounwind optsize uwtable
define double* @DV_entries(%struct._DV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !38), !dbg !90
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !91
  br i1 %cmp, label %if.then, label %if.end, !dbg !91

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !92, !tbaa !61
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), %struct._DV* null) #5, !dbg !92
  tail call void @exit(i32 -1) #6, !dbg !94
  unreachable, !dbg !94

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !95
  %1 = load double** %vec, align 8, !dbg !95, !tbaa !61
  ret double* %1, !dbg !95
}

; Function Attrs: nounwind optsize uwtable
define void @DV_sizeAndEntries(%struct._DV* %dv, i32* %psize, double** %pentries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !45), !dbg !96
  tail call void @llvm.dbg.value(metadata !{i32* %psize}, i64 0, metadata !46), !dbg !97
  tail call void @llvm.dbg.value(metadata !{double** %pentries}, i64 0, metadata !47), !dbg !98
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !99
  %cmp1 = icmp eq i32* %psize, null, !dbg !99
  %or.cond = or i1 %cmp, %cmp1, !dbg !99
  %cmp3 = icmp eq double** %pentries, null, !dbg !99
  %or.cond11 = or i1 %or.cond, %cmp3, !dbg !99
  br i1 %or.cond11, label %if.then, label %if.end, !dbg !99

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !100, !tbaa !61
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str5, i64 0, i64 0), %struct._DV* %dv, i32* %psize, double** %pentries) #5, !dbg !100
  tail call void @exit(i32 -1) #6, !dbg !102
  unreachable, !dbg !102

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !103
  %1 = load i32* %size, align 4, !dbg !103, !tbaa !66
  store i32 %1, i32* %psize, align 4, !dbg !103, !tbaa !66
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !104
  %2 = load double** %vec, align 8, !dbg !104, !tbaa !61
  store double* %2, double** %pentries, align 8, !dbg !104, !tbaa !61
  ret void, !dbg !105
}

; Function Attrs: nounwind optsize uwtable
define void @DV_setEntry(%struct._DV* %dv, i32 %loc, double %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !52), !dbg !106
  tail call void @llvm.dbg.value(metadata !{i32 %loc}, i64 0, metadata !53), !dbg !107
  tail call void @llvm.dbg.value(metadata !{double %value}, i64 0, metadata !54), !dbg !108
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !109
  %cmp1 = icmp slt i32 %loc, 0, !dbg !109
  %or.cond = or i1 %cmp, %cmp1, !dbg !109
  br i1 %or.cond, label %if.then, label %if.end, !dbg !109

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !110, !tbaa !61
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str6, i64 0, i64 0), %struct._DV* %dv, i32 %loc, double %value) #5, !dbg !110
  tail call void @exit(i32 -1) #6, !dbg !112
  unreachable, !dbg !112

if.end:                                           ; preds = %entry
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !113
  %1 = load i32* %maxsize, align 4, !dbg !113, !tbaa !66
  %cmp2 = icmp sgt i32 %1, %loc, !dbg !113
  br i1 %cmp2, label %if.end11, label %if.then3, !dbg !113

if.then3:                                         ; preds = %if.end
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !55), !dbg !114
  %cmp5 = icmp slt i32 %1, 10, !dbg !115
  %.mul = select i1 %cmp5, i32 10, i32 %1, !dbg !115
  tail call void @llvm.dbg.value(metadata !{i32 %.mul}, i64 0, metadata !55), !dbg !116
  %cmp8 = icmp sgt i32 %.mul, %loc, !dbg !118
  %add = add nsw i32 %loc, 1, !dbg !119
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !55), !dbg !119
  %.mul.add = select i1 %cmp8, i32 %.mul, i32 %add, !dbg !118
  tail call void @DV_setMaxsize(%struct._DV* %dv, i32 %.mul.add) #5, !dbg !121
  br label %if.end11, !dbg !122

if.end11:                                         ; preds = %if.end, %if.then3
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !123
  %2 = load i32* %size, align 4, !dbg !123, !tbaa !66
  %cmp12 = icmp sgt i32 %2, %loc, !dbg !123
  br i1 %cmp12, label %if.end16, label %if.then13, !dbg !123

if.then13:                                        ; preds = %if.end11
  %add14 = add nsw i32 %loc, 1, !dbg !124
  store i32 %add14, i32* %size, align 4, !dbg !124, !tbaa !66
  br label %if.end16, !dbg !126

if.end16:                                         ; preds = %if.end11, %if.then13
  %idxprom = sext i32 %loc to i64, !dbg !127
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !127
  %3 = load double** %vec, align 8, !dbg !127, !tbaa !61
  %arrayidx = getelementptr inbounds double* %3, i64 %idxprom, !dbg !127
  store double %value, double* %arrayidx, align 8, !dbg !127, !tbaa !88
  ret void, !dbg !128
}

; Function Attrs: optsize
declare void @DV_setMaxsize(%struct._DV*, i32) #3

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !22, metadata !25, metadata !28, metadata !34, metadata !39, metadata !48}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_owned", metadata !"DV_owned", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DV*)* @DV_owned, null, null, metadata !20, i32 17} ; [ DW_TAG_subprogram ] [line 15] [def] [scope 17] [DV_owned]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/../DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!19 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786689, metadata !4, metadata !"dv", metadata !5, i32 16777232, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 16]
!22 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_maxsize", metadata !"DV_maxsize", metadata !"", i32 34, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DV*)* @DV_maxsize, null, null, metadata !23, i32 36} ; [ DW_TAG_subprogram ] [line 34] [def] [scope 36] [DV_maxsize]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786689, metadata !22, metadata !"dv", metadata !5, i32 16777251, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 35]
!25 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_size", metadata !"DV_size", metadata !"", i32 53, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DV*)* @DV_size, null, null, metadata !26, i32 55} ; [ DW_TAG_subprogram ] [line 53] [def] [scope 55] [DV_size]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786689, metadata !25, metadata !"dv", metadata !5, i32 16777270, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 54]
!28 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_entry", metadata !"DV_entry", metadata !"", i32 73, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._DV*, i32)* @DV_entry, null, null, metadata !31, i32 76} ; [ DW_TAG_subprogram ] [line 73] [def] [scope 76] [DV_entry]
!29 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!30 = metadata !{metadata !19, metadata !9, metadata !8}
!31 = metadata !{metadata !32, metadata !33}
!32 = metadata !{i32 786689, metadata !28, metadata !"dv", metadata !5, i32 16777290, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 74]
!33 = metadata !{i32 786689, metadata !28, metadata !"loc", metadata !5, i32 33554507, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 75]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_entries", metadata !"DV_entries", metadata !"", i32 98, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double* (%struct._DV*)* @DV_entries, null, null, metadata !37, i32 100} ; [ DW_TAG_subprogram ] [line 98] [def] [scope 100] [DV_entries]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{metadata !18, metadata !9}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786689, metadata !34, metadata !"dv", metadata !5, i32 16777315, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 99]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_sizeAndEntries", metadata !"DV_sizeAndEntries", metadata !"", i32 118, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DV*, i32*, double**)* @DV_sizeAndEntries, null, null, metadata !44, i32 122} ; [ DW_TAG_subprogram ] [line 118] [def] [scope 122] [DV_sizeAndEntries]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{null, metadata !9, metadata !42, metadata !43}
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{metadata !45, metadata !46, metadata !47}
!45 = metadata !{i32 786689, metadata !39, metadata !"dv", metadata !5, i32 16777335, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 119]
!46 = metadata !{i32 786689, metadata !39, metadata !"psize", metadata !5, i32 33554552, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psize] [line 120]
!47 = metadata !{i32 786689, metadata !39, metadata !"pentries", metadata !5, i32 50331769, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentries] [line 121]
!48 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_setEntry", metadata !"DV_setEntry", metadata !"", i32 142, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DV*, i32, double)* @DV_setEntry, null, null, metadata !51, i32 146} ; [ DW_TAG_subprogram ] [line 142] [def] [scope 146] [DV_setEntry]
!49 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{null, metadata !9, metadata !8, metadata !19}
!51 = metadata !{metadata !52, metadata !53, metadata !54, metadata !55}
!52 = metadata !{i32 786689, metadata !48, metadata !"dv", metadata !5, i32 16777359, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 143]
!53 = metadata !{i32 786689, metadata !48, metadata !"loc", metadata !5, i32 33554576, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 144]
!54 = metadata !{i32 786689, metadata !48, metadata !"value", metadata !5, i32 50331793, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 145]
!55 = metadata !{i32 786688, metadata !56, metadata !"newmaxsize", metadata !5, i32 158, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newmaxsize] [line 158]
!56 = metadata !{i32 786443, metadata !1, metadata !48, i32 157, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c]
!57 = metadata !{i32 16, i32 0, metadata !4, null}
!58 = metadata !{i32 18, i32 0, metadata !4, null}
!59 = metadata !{i32 19, i32 0, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c]
!61 = metadata !{metadata !"any pointer", metadata !62}
!62 = metadata !{metadata !"omnipotent char", metadata !63}
!63 = metadata !{metadata !"Simple C/C++ TBAA"}
!64 = metadata !{i32 21, i32 0, metadata !60, null}
!65 = metadata !{i32 23, i32 0, metadata !4, null}
!66 = metadata !{metadata !"int", metadata !62}
!67 = metadata !{i32 35, i32 0, metadata !22, null}
!68 = metadata !{i32 37, i32 0, metadata !22, null}
!69 = metadata !{i32 38, i32 0, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !22, i32 37, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c]
!71 = metadata !{i32 40, i32 0, metadata !70, null}
!72 = metadata !{i32 42, i32 0, metadata !22, null}
!73 = metadata !{i32 54, i32 0, metadata !25, null}
!74 = metadata !{i32 56, i32 0, metadata !25, null}
!75 = metadata !{i32 57, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !25, i32 56, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c]
!77 = metadata !{i32 59, i32 0, metadata !76, null}
!78 = metadata !{i32 61, i32 0, metadata !25, null}
!79 = metadata !{i32 74, i32 0, metadata !28, null}
!80 = metadata !{i32 75, i32 0, metadata !28, null}
!81 = metadata !{i32 77, i32 0, metadata !28, null}
!82 = metadata !{i32 78, i32 0, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !28, i32 77, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c]
!84 = metadata !{i32 80, i32 0, metadata !83, null}
!85 = metadata !{i32 82, i32 0, metadata !28, null}
!86 = metadata !{i32 85, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !28, i32 84, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c]
!88 = metadata !{metadata !"double", metadata !62}
!89 = metadata !{i32 87, i32 0, metadata !28, null}
!90 = metadata !{i32 99, i32 0, metadata !34, null}
!91 = metadata !{i32 101, i32 0, metadata !34, null}
!92 = metadata !{i32 102, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !34, i32 101, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c]
!94 = metadata !{i32 104, i32 0, metadata !93, null}
!95 = metadata !{i32 106, i32 0, metadata !34, null}
!96 = metadata !{i32 119, i32 0, metadata !39, null}
!97 = metadata !{i32 120, i32 0, metadata !39, null}
!98 = metadata !{i32 121, i32 0, metadata !39, null}
!99 = metadata !{i32 123, i32 0, metadata !39, null}
!100 = metadata !{i32 124, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !39, i32 123, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c]
!102 = metadata !{i32 126, i32 0, metadata !101, null}
!103 = metadata !{i32 128, i32 0, metadata !39, null}
!104 = metadata !{i32 129, i32 0, metadata !39, null}
!105 = metadata !{i32 131, i32 0, metadata !39, null}
!106 = metadata !{i32 143, i32 0, metadata !48, null}
!107 = metadata !{i32 144, i32 0, metadata !48, null}
!108 = metadata !{i32 145, i32 0, metadata !48, null}
!109 = metadata !{i32 152, i32 0, metadata !48, null}
!110 = metadata !{i32 153, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !48, i32 152, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c]
!112 = metadata !{i32 155, i32 0, metadata !111, null}
!113 = metadata !{i32 157, i32 0, metadata !48, null}
!114 = metadata !{i32 158, i32 0, metadata !56, null}
!115 = metadata !{i32 159, i32 0, metadata !56, null}
!116 = metadata !{i32 160, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !56, i32 159, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c]
!118 = metadata !{i32 162, i32 0, metadata !56, null}
!119 = metadata !{i32 163, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !56, i32 162, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c]
!121 = metadata !{i32 165, i32 0, metadata !56, null}
!122 = metadata !{i32 166, i32 0, metadata !56, null}
!123 = metadata !{i32 167, i32 0, metadata !48, null}
!124 = metadata !{i32 168, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !48, i32 167, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_instance.c]
!126 = metadata !{i32 169, i32 0, metadata !125, null}
!127 = metadata !{i32 170, i32 0, metadata !48, null}
!128 = metadata !{i32 172, i32 0, metadata !48, null}
