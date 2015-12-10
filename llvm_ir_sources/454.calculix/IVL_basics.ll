; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [75 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in IVL_setDefaultFields(%p)\0A bad input\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A fatal error in IVL_clearData(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"\0A fatal error in IVL_clearData(%p)\0A invalid type = %d\0A\00", align 1
@.str5 = private unnamed_addr constant [42 x i8] c"\0A fatal error in IVL_free(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IVL* @IVL_new() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 48) #6, !dbg !52
  %0 = bitcast i8* %call to %struct._IVL*, !dbg !52
  tail call void @llvm.dbg.value(metadata !{%struct._IVL* %0}, i64 0, metadata !33), !dbg !52
  %cmp = icmp eq i8* %call, null, !dbg !52
  br i1 %cmp, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !54, !tbaa !56
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 48, i32 21, i8* getelementptr inbounds ([75 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !54
  tail call void @exit(i32 -1) #7, !dbg !54
  unreachable, !dbg !54

if.end:                                           ; preds = %entry
  tail call void @IVL_setDefaultFields(%struct._IVL* %0) #8, !dbg !59
  ret %struct._IVL* %0, !dbg !60
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @IVL_setDefaultFields(%struct._IVL* %ivl) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IVL* %ivl}, i64 0, metadata !38), !dbg !61
  %cmp = icmp eq %struct._IVL* %ivl, null, !dbg !62
  br i1 %cmp, label %if.then, label %if.end, !dbg !62

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !63, !tbaa !56
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._IVL* null) #6, !dbg !63
  tail call void @exit(i32 -1) #7, !dbg !65
  unreachable, !dbg !65

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0, !dbg !66
  store i32 -1, i32* %type, align 4, !dbg !66, !tbaa !67
  %maxnlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1, !dbg !68
  %incr = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 6, !dbg !69
  %1 = bitcast i32* %maxnlist to i8*, !dbg !69
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 28, i32 4, i1 false), !dbg !70
  store i32 1024, i32* %incr, align 4, !dbg !69, !tbaa !67
  %chunk = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 7, !dbg !71
  store %struct._Ichunk* null, %struct._Ichunk** %chunk, align 8, !dbg !71, !tbaa !56
  ret void, !dbg !72
}

; Function Attrs: nounwind optsize uwtable
define void @IVL_clearData(%struct._IVL* %ivl) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IVL* %ivl}, i64 0, metadata !41), !dbg !73
  %cmp = icmp eq %struct._IVL* %ivl, null, !dbg !74
  br i1 %cmp, label %if.then, label %if.end, !dbg !74

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !75, !tbaa !56
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), %struct._IVL* null) #6, !dbg !75
  tail call void @exit(i32 -1) #7, !dbg !77
  unreachable, !dbg !77

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0, !dbg !78
  %1 = load i32* %type, align 4, !dbg !78, !tbaa !67
  switch i32 %1, label %sw.default [
    i32 2, label %for.cond.preheader
    i32 1, label %while.cond.preheader
    i32 -1, label %sw.epilog
    i32 3, label %sw.epilog
  ], !dbg !78

while.cond.preheader:                             ; preds = %if.end
  %chunk14 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 7, !dbg !79
  %2 = load %struct._Ichunk** %chunk14, align 8, !dbg !79, !tbaa !56
  %cmp1575 = icmp eq %struct._Ichunk* %2, null, !dbg !79
  br i1 %cmp1575, label %sw.epilog, label %while.body, !dbg !79

for.cond.preheader:                               ; preds = %if.end
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2, !dbg !80
  %3 = load i32* %nlist, align 4, !dbg !80, !tbaa !67
  %cmp172 = icmp sgt i32 %3, 0, !dbg !80
  br i1 %cmp172, label %for.body.lr.ph, label %sw.epilog, !dbg !80

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %p_vec = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5, !dbg !82
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4, !dbg !84
  %tsize = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 3, !dbg !84
  br label %for.body, !dbg !80

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %11, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %5 = load i32*** %p_vec, align 8, !dbg !82, !tbaa !56
  %arrayidx = getelementptr inbounds i32** %5, i64 %indvars.iv, !dbg !82
  %6 = load i32** %arrayidx, align 8, !dbg !82, !tbaa !56
  %cmp2 = icmp eq i32* %6, null, !dbg !82
  br i1 %cmp2, label %for.inc, label %if.then3, !dbg !82

if.then3:                                         ; preds = %for.body
  tail call void @IVfree(i32* %6) #6, !dbg !86
  %7 = load i32*** %p_vec, align 8, !dbg !87, !tbaa !56
  %arrayidx9 = getelementptr inbounds i32** %7, i64 %indvars.iv, !dbg !87
  store i32* null, i32** %arrayidx9, align 8, !dbg !87, !tbaa !56
  %8 = load i32** %sizes, align 8, !dbg !84, !tbaa !56
  %arrayidx11 = getelementptr inbounds i32* %8, i64 %indvars.iv, !dbg !84
  %9 = load i32* %arrayidx11, align 4, !dbg !84, !tbaa !67
  %10 = load i32* %tsize, align 4, !dbg !84, !tbaa !67
  %sub = sub nsw i32 %10, %9, !dbg !84
  store i32 %sub, i32* %tsize, align 4, !dbg !84, !tbaa !67
  %.pre = load i32* %nlist, align 4, !dbg !80, !tbaa !67
  br label %for.inc, !dbg !88

for.inc:                                          ; preds = %for.body, %if.then3
  %11 = phi i32 [ %4, %for.body ], [ %.pre, %if.then3 ], !dbg !80
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !80
  %12 = trunc i64 %indvars.iv.next to i32, !dbg !80
  %cmp1 = icmp slt i32 %12, %11, !dbg !80
  br i1 %cmp1, label %for.body, label %sw.epilog, !dbg !80

while.body:                                       ; preds = %while.cond.preheader, %if.then23
  %13 = phi %struct._Ichunk* [ %17, %if.then23 ], [ %2, %while.cond.preheader ]
  %next = getelementptr inbounds %struct._Ichunk* %13, i64 0, i32 3, !dbg !89
  %14 = load %struct._Ichunk** %next, align 8, !dbg !89, !tbaa !56
  store %struct._Ichunk* %14, %struct._Ichunk** %chunk14, align 8, !dbg !89, !tbaa !56
  %base = getelementptr inbounds %struct._Ichunk* %13, i64 0, i32 2, !dbg !91
  %15 = load i32** %base, align 8, !dbg !91, !tbaa !56
  %cmp17 = icmp eq i32* %15, null, !dbg !91
  br i1 %cmp17, label %if.then23, label %if.then18, !dbg !91

if.then18:                                        ; preds = %while.body
  tail call void @IVfree(i32* %15) #6, !dbg !92
  br label %if.then23, !dbg !94

if.then23:                                        ; preds = %if.then18, %while.body
  %16 = bitcast %struct._Ichunk* %13 to i8*, !dbg !95
  tail call void @free(i8* %16) #6, !dbg !95
  %17 = load %struct._Ichunk** %chunk14, align 8, !dbg !79, !tbaa !56
  %cmp15 = icmp eq %struct._Ichunk* %17, null, !dbg !79
  br i1 %cmp15, label %sw.epilog, label %while.body, !dbg !79

sw.default:                                       ; preds = %if.end
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !97, !tbaa !56
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), %struct._IVL* %ivl, i32 %1) #6, !dbg !97
  tail call void @exit(i32 -1) #7, !dbg !98
  unreachable, !dbg !98

sw.epilog:                                        ; preds = %while.cond.preheader, %if.then23, %for.cond.preheader, %for.inc, %if.end, %if.end
  %sizes28 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4, !dbg !99
  %19 = load i32** %sizes28, align 8, !dbg !99, !tbaa !56
  %cmp29 = icmp eq i32* %19, null, !dbg !99
  br i1 %cmp29, label %if.end33, label %if.then30, !dbg !99

if.then30:                                        ; preds = %sw.epilog
  tail call void @IVfree(i32* %19) #6, !dbg !100
  store i32* null, i32** %sizes28, align 8, !dbg !102, !tbaa !56
  br label %if.end33, !dbg !103

if.end33:                                         ; preds = %sw.epilog, %if.then30
  %p_vec34 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5, !dbg !104
  %20 = load i32*** %p_vec34, align 8, !dbg !104, !tbaa !56
  %cmp35 = icmp eq i32** %20, null, !dbg !104
  br i1 %cmp35, label %if.end39, label %if.then36, !dbg !104

if.then36:                                        ; preds = %if.end33
  tail call void @PIVfree(i32** %20) #6, !dbg !105
  store i32** null, i32*** %p_vec34, align 8, !dbg !107, !tbaa !56
  br label %if.end39, !dbg !108

if.end39:                                         ; preds = %if.end33, %if.then36
  %maxnlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1, !dbg !109
  store i32 0, i32* %maxnlist, align 4, !dbg !109, !tbaa !67
  %nlist40 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2, !dbg !109
  store i32 0, i32* %nlist40, align 4, !dbg !109, !tbaa !67
  tail call void @IVL_setDefaultFields(%struct._IVL* %ivl) #8, !dbg !110
  ret void, !dbg !111
}

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: optsize
declare void @PIVfree(i32**) #3

; Function Attrs: nounwind optsize uwtable
define noalias %struct._IVL* @IVL_free(%struct._IVL* %ivl) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IVL* %ivl}, i64 0, metadata !51), !dbg !112
  %cmp = icmp eq %struct._IVL* %ivl, null, !dbg !113
  br i1 %cmp, label %if.then, label %if.end, !dbg !113

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !114, !tbaa !56
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([42 x i8]* @.str5, i64 0, i64 0), %struct._IVL* null) #6, !dbg !114
  tail call void @exit(i32 -1) #7, !dbg !116
  unreachable, !dbg !116

if.end:                                           ; preds = %entry
  tail call void @IVL_clearData(%struct._IVL* %ivl) #8, !dbg !117
  %1 = bitcast %struct._IVL* %ivl to i8*, !dbg !118
  tail call void @free(i8* %1) #6, !dbg !118
  tail call void @llvm.dbg.value(metadata !120, i64 0, metadata !51), !dbg !118
  ret %struct._IVL* null, !dbg !121
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !34, metadata !39, metadata !47}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IVL_new", metadata !"IVL_new", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IVL* ()* @IVL_new, null, null, metadata !32, i32 18} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 18] [IVL_new]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/../IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !20, metadata !22, metadata !23}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!25 = metadata !{i32 786454, metadata !11, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!26 = metadata !{i32 786451, metadata !11, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31}
!28 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!29 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!30 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!31 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786688, metadata !4, metadata !"ivl", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivl] [line 19]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IVL_setDefaultFields", metadata !"IVL_setDefaultFields", metadata !"", i32 35, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IVL*)* @IVL_setDefaultFields, null, null, metadata !37, i32 37} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 37] [IVL_setDefaultFields]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{null, metadata !8}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786689, metadata !34, metadata !"ivl", metadata !5, i32 16777252, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ivl] [line 36]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IVL_clearData", metadata !"IVL_clearData", metadata !"", i32 63, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IVL*)* @IVL_clearData, null, null, metadata !40, i32 65} ; [ DW_TAG_subprogram ] [line 63] [def] [scope 65] [IVL_clearData]
!40 = metadata !{metadata !41, metadata !42, metadata !45}
!41 = metadata !{i32 786689, metadata !39, metadata !"ivl", metadata !5, i32 16777280, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ivl] [line 64]
!42 = metadata !{i32 786688, metadata !43, metadata !"ilist", metadata !5, i32 84, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ilist] [line 84]
!43 = metadata !{i32 786443, metadata !1, metadata !44, i32 83, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!44 = metadata !{i32 786443, metadata !1, metadata !39, i32 82, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!45 = metadata !{i32 786688, metadata !46, metadata !"chunk", metadata !5, i32 94, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chunk] [line 94]
!46 = metadata !{i32 786443, metadata !1, metadata !44, i32 93, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!47 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IVL_free", metadata !"IVL_free", metadata !"", i32 144, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IVL* (%struct._IVL*)* @IVL_free, null, null, metadata !50, i32 146} ; [ DW_TAG_subprogram ] [line 144] [def] [scope 146] [IVL_free]
!48 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!49 = metadata !{metadata !8, metadata !8}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786689, metadata !47, metadata !"ivl", metadata !5, i32 16777361, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ivl] [line 145]
!52 = metadata !{i32 21, i32 0, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!54 = metadata !{i32 21, i32 0, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !53, i32 21, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!56 = metadata !{metadata !"any pointer", metadata !57}
!57 = metadata !{metadata !"omnipotent char", metadata !58}
!58 = metadata !{metadata !"Simple C/C++ TBAA"}
!59 = metadata !{i32 22, i32 0, metadata !4, null}
!60 = metadata !{i32 24, i32 0, metadata !4, null}
!61 = metadata !{i32 36, i32 0, metadata !34, null}
!62 = metadata !{i32 38, i32 0, metadata !34, null}
!63 = metadata !{i32 39, i32 0, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !34, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!65 = metadata !{i32 41, i32 0, metadata !64, null}
!66 = metadata !{i32 43, i32 0, metadata !34, null}
!67 = metadata !{metadata !"int", metadata !57}
!68 = metadata !{i32 44, i32 0, metadata !34, null}
!69 = metadata !{i32 49, i32 0, metadata !34, null}
!70 = metadata !{i32 45, i32 0, metadata !34, null}
!71 = metadata !{i32 50, i32 0, metadata !34, null}
!72 = metadata !{i32 52, i32 0, metadata !34, null}
!73 = metadata !{i32 64, i32 0, metadata !39, null}
!74 = metadata !{i32 71, i32 0, metadata !39, null}
!75 = metadata !{i32 72, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !39, i32 71, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!77 = metadata !{i32 74, i32 0, metadata !76, null}
!78 = metadata !{i32 82, i32 0, metadata !39, null}
!79 = metadata !{i32 95, i32 0, metadata !46, null}
!80 = metadata !{i32 85, i32 0, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !43, i32 85, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!82 = metadata !{i32 86, i32 0, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !81, i32 85, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!84 = metadata !{i32 89, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !83, i32 86, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!86 = metadata !{i32 87, i32 0, metadata !85, null}
!87 = metadata !{i32 88, i32 0, metadata !85, null}
!88 = metadata !{i32 90, i32 0, metadata !85, null}
!89 = metadata !{i32 96, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !46, i32 95, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!91 = metadata !{i32 97, i32 0, metadata !90, null}
!92 = metadata !{i32 98, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !90, i32 97, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!94 = metadata !{i32 100, i32 0, metadata !93, null}
!95 = metadata !{i32 101, i32 0, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !90, i32 101, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!97 = metadata !{i32 108, i32 0, metadata !44, null}
!98 = metadata !{i32 110, i32 0, metadata !44, null}
!99 = metadata !{i32 117, i32 0, metadata !39, null}
!100 = metadata !{i32 118, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !39, i32 117, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!102 = metadata !{i32 119, i32 0, metadata !101, null}
!103 = metadata !{i32 120, i32 0, metadata !101, null}
!104 = metadata !{i32 121, i32 0, metadata !39, null}
!105 = metadata !{i32 122, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !39, i32 121, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!107 = metadata !{i32 123, i32 0, metadata !106, null}
!108 = metadata !{i32 124, i32 0, metadata !106, null}
!109 = metadata !{i32 125, i32 0, metadata !39, null}
!110 = metadata !{i32 131, i32 0, metadata !39, null}
!111 = metadata !{i32 133, i32 0, metadata !39, null}
!112 = metadata !{i32 145, i32 0, metadata !47, null}
!113 = metadata !{i32 147, i32 0, metadata !47, null}
!114 = metadata !{i32 148, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !47, i32 147, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!116 = metadata !{i32 150, i32 0, metadata !115, null}
!117 = metadata !{i32 152, i32 0, metadata !47, null}
!118 = metadata !{i32 153, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !47, i32 153, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_basics.c]
!120 = metadata !{%struct._IVL* null}
!121 = metadata !{i32 155, i32 0, metadata !47, null}
