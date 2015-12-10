; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [57 x i8] c"\0A fatal error in DenseMtx_permuteRows(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DenseMtx_permuteRows(%p,%p)\0A irow = %d, maxnrow = %d\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in DenseMtx_permuteColumns(%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [73 x i8] c"\0A fatal error in DenseMtx_permuteColumns(%p,%p)\0A jcol = %d, maxncol = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_permuteRows(%struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV) #0 {
entry:
  %a2 = alloca %struct._A2, align 8
  %maxnrow = alloca i32, align 4
  %nrow = alloca i32, align 4
  %oldToNew = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !49), !dbg !80
  call void @llvm.dbg.value(metadata !{%struct._IV* %oldToNewIV}, i64 0, metadata !50), !dbg !81
  call void @llvm.dbg.declare(metadata !{%struct._A2* %a2}, metadata !51), !dbg !82
  call void @llvm.dbg.declare(metadata !{i32* %maxnrow}, metadata !65), !dbg !83
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !66), !dbg !83
  call void @llvm.dbg.declare(metadata !{i32** %oldToNew}, metadata !67), !dbg !84
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !68), !dbg !84
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !85
  %cmp1 = icmp eq %struct._IV* %oldToNewIV, null, !dbg !85
  %or.cond = or i1 %cmp, %cmp1, !dbg !85
  br i1 %or.cond, label %if.then, label %if.end, !dbg !85

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !86, !tbaa !88
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV) #5, !dbg !86
  call void @exit(i32 -1) #6, !dbg !91
  unreachable, !dbg !91

if.end:                                           ; preds = %entry
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #5, !dbg !92
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !66), !dbg !93
  %1 = load i32* %nrow, align 4, !dbg !93, !tbaa !94
  %cmp2 = icmp slt i32 %1, 1, !dbg !93
  br i1 %cmp2, label %return, label %if.end4, !dbg !93

if.end4:                                          ; preds = %if.end
  call void @IV_sizeAndEntries(%struct._IV* %oldToNewIV, i32* %maxnrow, i32** %oldToNew) #5, !dbg !95
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !63), !dbg !96
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !66), !dbg !96
  %2 = load i32* %nrow, align 4, !dbg !96, !tbaa !94
  %cmp532 = icmp sgt i32 %2, 0, !dbg !96
  br i1 %cmp532, label %for.body.lr.ph, label %for.end, !dbg !96

for.body.lr.ph:                                   ; preds = %if.end4
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !68), !dbg !98
  %3 = load i32** %rowind, align 8, !dbg !98, !tbaa !88
  call void @llvm.dbg.value(metadata !{i32** %oldToNew}, i64 0, metadata !67), !dbg !100
  %4 = load i32** %oldToNew, align 8, !dbg !100, !tbaa !88
  br label %for.body, !dbg !96

for.body:                                         ; preds = %for.body.lr.ph, %if.end11
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end11 ]
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !68), !dbg !98
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv, !dbg !98
  %5 = load i32* %arrayidx, align 4, !dbg !98, !tbaa !94
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !64), !dbg !98
  %cmp6 = icmp sgt i32 %5, -1, !dbg !101
  call void @llvm.dbg.value(metadata !{i32* %maxnrow}, i64 0, metadata !65), !dbg !102
  %.pre = load i32* %maxnrow, align 4, !dbg !102, !tbaa !94
  %cmp8 = icmp slt i32 %5, %.pre, !dbg !101
  %or.cond35 = and i1 %cmp6, %cmp8, !dbg !101
  br i1 %or.cond35, label %if.end11, label %if.then9, !dbg !101

if.then9:                                         ; preds = %for.body
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !102, !tbaa !88
  call void @llvm.dbg.value(metadata !{i32* %maxnrow}, i64 0, metadata !65), !dbg !102
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([70 x i8]* @.str1, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV, i32 %5, i32 %.pre) #5, !dbg !102
  call void @exit(i32 -1) #6, !dbg !104
  unreachable, !dbg !104

if.end11:                                         ; preds = %for.body
  %idxprom14 = sext i32 %5 to i64, !dbg !100
  call void @llvm.dbg.value(metadata !{i32** %oldToNew}, i64 0, metadata !67), !dbg !100
  %arrayidx15 = getelementptr inbounds i32* %4, i64 %idxprom14, !dbg !100
  %7 = load i32* %arrayidx15, align 4, !dbg !100, !tbaa !94
  store i32 %7, i32* %arrayidx, align 4, !dbg !100, !tbaa !94
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !96
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !66), !dbg !96
  %8 = load i32* %nrow, align 4, !dbg !96, !tbaa !94
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !96
  %cmp5 = icmp slt i32 %9, %8, !dbg !96
  br i1 %cmp5, label %for.body, label %for.end, !dbg !96

for.end:                                          ; preds = %if.end11, %if.end4
  call void @A2_setDefaultFields(%struct._A2* %a2) #5, !dbg !105
  call void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #5, !dbg !106
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !66), !dbg !107
  %10 = load i32* %nrow, align 4, !dbg !107, !tbaa !94
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !68), !dbg !107
  %11 = load i32** %rowind, align 8, !dbg !107, !tbaa !88
  %call18 = call i32 @A2_sortRowsUp(%struct._A2* %a2, i32 %10, i32* %11) #5, !dbg !107
  br label %return, !dbg !108

return:                                           ; preds = %if.end, %for.end
  ret void, !dbg !108
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @DenseMtx_rowIndices(%struct._DenseMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #4

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #4

; Function Attrs: optsize
declare void @DenseMtx_setA2(%struct._DenseMtx*, %struct._A2*) #4

; Function Attrs: optsize
declare i32 @A2_sortRowsUp(%struct._A2*, i32, i32*) #4

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_permuteColumns(%struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV) #0 {
entry:
  %a2 = alloca %struct._A2, align 8
  %maxncol = alloca i32, align 4
  %ncol = alloca i32, align 4
  %oldToNew = alloca i32*, align 8
  %colind = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !71), !dbg !109
  call void @llvm.dbg.value(metadata !{%struct._IV* %oldToNewIV}, i64 0, metadata !72), !dbg !110
  call void @llvm.dbg.declare(metadata !{%struct._A2* %a2}, metadata !73), !dbg !111
  call void @llvm.dbg.declare(metadata !{i32* %maxncol}, metadata !76), !dbg !112
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !77), !dbg !112
  call void @llvm.dbg.declare(metadata !{i32** %oldToNew}, metadata !78), !dbg !113
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !79), !dbg !113
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !114
  %cmp1 = icmp eq %struct._IV* %oldToNewIV, null, !dbg !114
  %or.cond = or i1 %cmp, %cmp1, !dbg !114
  br i1 %or.cond, label %if.then, label %if.end, !dbg !114

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !115, !tbaa !88
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV) #5, !dbg !115
  call void @exit(i32 -1) #6, !dbg !117
  unreachable, !dbg !117

if.end:                                           ; preds = %entry
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #5, !dbg !118
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !77), !dbg !119
  %1 = load i32* %ncol, align 4, !dbg !119, !tbaa !94
  %cmp2 = icmp slt i32 %1, 1, !dbg !119
  br i1 %cmp2, label %return, label %if.end4, !dbg !119

if.end4:                                          ; preds = %if.end
  call void @IV_sizeAndEntries(%struct._IV* %oldToNewIV, i32* %maxncol, i32** %oldToNew) #5, !dbg !120
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !74), !dbg !121
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !77), !dbg !121
  %2 = load i32* %ncol, align 4, !dbg !121, !tbaa !94
  %cmp530 = icmp sgt i32 %2, 0, !dbg !121
  br i1 %cmp530, label %for.body.lr.ph, label %for.end, !dbg !121

for.body.lr.ph:                                   ; preds = %if.end4
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !79), !dbg !123
  %3 = load i32** %colind, align 8, !dbg !123, !tbaa !88
  call void @llvm.dbg.value(metadata !{i32** %oldToNew}, i64 0, metadata !78), !dbg !125
  %4 = load i32** %oldToNew, align 8, !dbg !125, !tbaa !88
  br label %for.body, !dbg !121

for.body:                                         ; preds = %for.body.lr.ph, %if.end11
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end11 ]
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !79), !dbg !123
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv, !dbg !123
  %5 = load i32* %arrayidx, align 4, !dbg !123, !tbaa !94
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !75), !dbg !123
  %cmp6 = icmp sgt i32 %5, -1, !dbg !126
  call void @llvm.dbg.value(metadata !{i32* %maxncol}, i64 0, metadata !76), !dbg !127
  %.pre = load i32* %maxncol, align 4, !dbg !127, !tbaa !94
  %cmp8 = icmp slt i32 %5, %.pre, !dbg !126
  %or.cond33 = and i1 %cmp6, %cmp8, !dbg !126
  br i1 %or.cond33, label %if.end11, label %if.then9, !dbg !126

if.then9:                                         ; preds = %for.body
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !127, !tbaa !88
  call void @llvm.dbg.value(metadata !{i32* %maxncol}, i64 0, metadata !76), !dbg !127
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([73 x i8]* @.str3, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV, i32 %5, i32 %.pre) #5, !dbg !127
  call void @exit(i32 -1) #6, !dbg !129
  unreachable, !dbg !129

if.end11:                                         ; preds = %for.body
  %idxprom12 = sext i32 %5 to i64, !dbg !125
  call void @llvm.dbg.value(metadata !{i32** %oldToNew}, i64 0, metadata !78), !dbg !125
  %arrayidx13 = getelementptr inbounds i32* %4, i64 %idxprom12, !dbg !125
  %7 = load i32* %arrayidx13, align 4, !dbg !125, !tbaa !94
  store i32 %7, i32* %arrayidx, align 4, !dbg !125, !tbaa !94
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !121
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !77), !dbg !121
  %8 = load i32* %ncol, align 4, !dbg !121, !tbaa !94
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !121
  %cmp5 = icmp slt i32 %9, %8, !dbg !121
  br i1 %cmp5, label %for.body, label %for.end, !dbg !121

for.end:                                          ; preds = %if.end11, %if.end4
  call void @A2_setDefaultFields(%struct._A2* %a2) #5, !dbg !130
  call void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #5, !dbg !131
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !77), !dbg !132
  %10 = load i32* %ncol, align 4, !dbg !132, !tbaa !94
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !79), !dbg !132
  %11 = load i32** %colind, align 8, !dbg !132, !tbaa !88
  %call16 = call i32 @A2_sortColumnsUp(%struct._A2* %a2, i32 %10, i32* %11) #5, !dbg !132
  br label %return, !dbg !133

return:                                           ; preds = %if.end, %for.end
  ret void, !dbg !133
}

; Function Attrs: optsize
declare void @DenseMtx_columnIndices(%struct._DenseMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare i32 @A2_sortColumnsUp(%struct._A2*, i32, i32*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !69}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_permuteRows", metadata !"DenseMtx_permuteRows", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, %struct._IV*)* @DenseMtx_permuteRows, null, null, metadata !48, i32 17} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 17] [DenseMtx_permuteRows]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !39}
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
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!40 = metadata !{i32 786454, metadata !1, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!41 = metadata !{i32 786451, metadata !42, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!42 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!43 = metadata !{metadata !44, metadata !45, metadata !46, metadata !47}
!44 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!45 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!46 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!47 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!48 = metadata !{metadata !49, metadata !50, metadata !51, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68}
!49 = metadata !{i32 786689, metadata !4, metadata !"mtx", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 15]
!50 = metadata !{i32 786689, metadata !4, metadata !"oldToNewIV", metadata !5, i32 33554448, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldToNewIV] [line 16]
!51 = metadata !{i32 786688, metadata !4, metadata !"a2", metadata !5, i32 18, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a2] [line 18]
!52 = metadata !{i32 786454, metadata !1, null, metadata !"A2", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [A2] [line 49, size 0, align 0, offset 0] [from _A2]
!53 = metadata !{i32 786451, metadata !54, null, metadata !"_A2", i32 41, i64 256, i64 64, i32 0, i32 0, null, metadata !55, i32 0, null, null} ; [ DW_TAG_structure_type ] [_A2] [line 41, size 256, align 64, offset 0] [from ]
!54 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../A2/A2.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62}
!56 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"type", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 42, size 32, align 32, offset 0] [from int]
!57 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"n1", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [n1] [line 43, size 32, align 32, offset 32] [from int]
!58 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"n2", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [n2] [line 44, size 32, align 32, offset 64] [from int]
!59 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"inc1", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [inc1] [line 45, size 32, align 32, offset 96] [from int]
!60 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"inc2", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [inc2] [line 46, size 32, align 32, offset 128] [from int]
!61 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"nowned", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nowned] [line 47, size 32, align 32, offset 160] [from int]
!62 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"entries", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [entries] [line 48, size 64, align 64, offset 192] [from ]
!63 = metadata !{i32 786688, metadata !4, metadata !"ii", metadata !5, i32 19, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 19]
!64 = metadata !{i32 786688, metadata !4, metadata !"irow", metadata !5, i32 19, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 19]
!65 = metadata !{i32 786688, metadata !4, metadata !"maxnrow", metadata !5, i32 19, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxnrow] [line 19]
!66 = metadata !{i32 786688, metadata !4, metadata !"nrow", metadata !5, i32 19, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 19]
!67 = metadata !{i32 786688, metadata !4, metadata !"oldToNew", metadata !5, i32 20, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldToNew] [line 20]
!68 = metadata !{i32 786688, metadata !4, metadata !"rowind", metadata !5, i32 20, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 20]
!69 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_permuteColumns", metadata !"DenseMtx_permuteColumns", metadata !"", i32 71, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, %struct._IV*)* @DenseMtx_permuteColumns, null, null, metadata !70, i32 74} ; [ DW_TAG_subprogram ] [line 71] [def] [scope 74] [DenseMtx_permuteColumns]
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79}
!71 = metadata !{i32 786689, metadata !69, metadata !"mtx", metadata !5, i32 16777288, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 72]
!72 = metadata !{i32 786689, metadata !69, metadata !"oldToNewIV", metadata !5, i32 33554505, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldToNewIV] [line 73]
!73 = metadata !{i32 786688, metadata !69, metadata !"a2", metadata !5, i32 75, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a2] [line 75]
!74 = metadata !{i32 786688, metadata !69, metadata !"ii", metadata !5, i32 76, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 76]
!75 = metadata !{i32 786688, metadata !69, metadata !"jcol", metadata !5, i32 76, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 76]
!76 = metadata !{i32 786688, metadata !69, metadata !"maxncol", metadata !5, i32 76, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxncol] [line 76]
!77 = metadata !{i32 786688, metadata !69, metadata !"ncol", metadata !5, i32 76, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 76]
!78 = metadata !{i32 786688, metadata !69, metadata !"oldToNew", metadata !5, i32 77, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldToNew] [line 77]
!79 = metadata !{i32 786688, metadata !69, metadata !"colind", metadata !5, i32 77, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 77]
!80 = metadata !{i32 15, i32 0, metadata !4, null}
!81 = metadata !{i32 16, i32 0, metadata !4, null}
!82 = metadata !{i32 18, i32 0, metadata !4, null}
!83 = metadata !{i32 19, i32 0, metadata !4, null}
!84 = metadata !{i32 20, i32 0, metadata !4, null}
!85 = metadata !{i32 26, i32 0, metadata !4, null}
!86 = metadata !{i32 27, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !4, i32 26, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c]
!88 = metadata !{metadata !"any pointer", metadata !89}
!89 = metadata !{metadata !"omnipotent char", metadata !90}
!90 = metadata !{metadata !"Simple C/C++ TBAA"}
!91 = metadata !{i32 29, i32 0, metadata !87, null}
!92 = metadata !{i32 31, i32 0, metadata !4, null}
!93 = metadata !{i32 32, i32 0, metadata !4, null}
!94 = metadata !{metadata !"int", metadata !89}
!95 = metadata !{i32 40, i32 0, metadata !4, null}
!96 = metadata !{i32 41, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !4, i32 41, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c]
!98 = metadata !{i32 42, i32 0, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !97, i32 41, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c]
!100 = metadata !{i32 49, i32 0, metadata !99, null}
!101 = metadata !{i32 43, i32 0, metadata !99, null}
!102 = metadata !{i32 44, i32 0, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !99, i32 43, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c]
!104 = metadata !{i32 47, i32 0, metadata !103, null}
!105 = metadata !{i32 56, i32 0, metadata !4, null}
!106 = metadata !{i32 57, i32 0, metadata !4, null}
!107 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!108 = metadata !{i32 60, i32 0, metadata !4, null}
!109 = metadata !{i32 72, i32 0, metadata !69, null}
!110 = metadata !{i32 73, i32 0, metadata !69, null}
!111 = metadata !{i32 75, i32 0, metadata !69, null}
!112 = metadata !{i32 76, i32 0, metadata !69, null}
!113 = metadata !{i32 77, i32 0, metadata !69, null}
!114 = metadata !{i32 83, i32 0, metadata !69, null}
!115 = metadata !{i32 84, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !69, i32 83, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c]
!117 = metadata !{i32 86, i32 0, metadata !116, null}
!118 = metadata !{i32 88, i32 0, metadata !69, null}
!119 = metadata !{i32 89, i32 0, metadata !69, null}
!120 = metadata !{i32 97, i32 0, metadata !69, null}
!121 = metadata !{i32 98, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !69, i32 98, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c]
!123 = metadata !{i32 99, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !122, i32 98, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c]
!125 = metadata !{i32 107, i32 0, metadata !124, null}
!126 = metadata !{i32 100, i32 0, metadata !124, null}
!127 = metadata !{i32 101, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !124, i32 100, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c]
!129 = metadata !{i32 105, i32 0, metadata !128, null}
!130 = metadata !{i32 114, i32 0, metadata !69, null}
!131 = metadata !{i32 115, i32 0, metadata !69, null}
!132 = metadata !{i32 116, i32 0, metadata !69, null}
!133 = metadata !{i32 118, i32 0, metadata !69, null}
