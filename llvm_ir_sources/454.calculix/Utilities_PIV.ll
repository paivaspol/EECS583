; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [84 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c\00", align 1
@.str3 = private unnamed_addr constant [90 x i8] c"\0A fatal error in PIVsetup, invalid data\0A length = %d, sizes = %p, ivec = %p, p_ivec = %p\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [81 x i8] c"\0A fatal error in PIVcopy, invalid data\0A length = %d, p_ivec1 = %p, p_ivec2 = %p\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @PIVfree(i32** %p_ivec) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32** %p_ivec}, i64 0, metadata !12), !dbg !42
  %cmp = icmp eq i32** %p_ivec, null, !dbg !43
  br i1 %cmp, label %if.end3, label %if.then2, !dbg !43

if.then2:                                         ; preds = %entry
  %0 = bitcast i32** %p_ivec to i8*, !dbg !44
  tail call void @free(i8* %0) #5, !dbg !44
  tail call void @llvm.dbg.value(metadata !47, i64 0, metadata !12), !dbg !44
  br label %if.end3, !dbg !44

if.end3:                                          ; preds = %entry, %if.then2
  ret void, !dbg !48
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define noalias i32** @PIVinit(i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !17), !dbg !49
  tail call void @llvm.dbg.value(metadata !47, i64 0, metadata !18), !dbg !50
  %cmp = icmp sgt i32 %size, 0, !dbg !51
  br i1 %cmp, label %if.then2, label %if.end21, !dbg !51

if.then2:                                         ; preds = %entry
  %conv = sext i32 %size to i64, !dbg !52
  %mul = shl nsw i64 %conv, 3, !dbg !52
  %call = tail call noalias i8* @malloc(i64 %mul) #5, !dbg !52
  tail call void @llvm.dbg.value(metadata !{i32** %1}, i64 0, metadata !18), !dbg !52
  %cmp3 = icmp eq i8* %call, null, !dbg !52
  br i1 %cmp3, label %if.then5, label %if.end21.loopexit, !dbg !52

if.then5:                                         ; preds = %if.then2
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !54, !tbaa !56
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 %mul, i32 39, i8* getelementptr inbounds ([84 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !54
  tail call void @exit(i32 -1) #6, !dbg !54
  unreachable, !dbg !54

if.end21.loopexit:                                ; preds = %if.then2
  %1 = bitcast i8* %call to i32**, !dbg !52
  %2 = add i32 %size, -1, !dbg !59
  %3 = zext i32 %2 to i64
  %4 = shl nuw nsw i64 %3, 3, !dbg !59
  %5 = add i64 %4, 8, !dbg !59
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %5, i32 8, i1 false), !dbg !61
  br label %if.end21

if.end21:                                         ; preds = %if.end21.loopexit, %entry
  %p_ivec.1 = phi i32** [ null, %entry ], [ %1, %if.end21.loopexit ]
  ret i32** %p_ivec.1, !dbg !63
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @PIVsetup(i32 %length, i32* %sizes, i32* %ivec, i32** %p_ivec) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %length}, i64 0, metadata !25), !dbg !64
  tail call void @llvm.dbg.value(metadata !{i32* %sizes}, i64 0, metadata !26), !dbg !65
  tail call void @llvm.dbg.value(metadata !{i32* %ivec}, i64 0, metadata !27), !dbg !66
  tail call void @llvm.dbg.value(metadata !{i32** %p_ivec}, i64 0, metadata !28), !dbg !67
  %cmp = icmp sgt i32 %length, 0, !dbg !68
  br i1 %cmp, label %if.then, label %if.end17, !dbg !68

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %sizes, null, !dbg !69
  %cmp2 = icmp eq i32* %ivec, null, !dbg !69
  %or.cond = or i1 %cmp1, %cmp2, !dbg !69
  %cmp4 = icmp eq i32** %p_ivec, null, !dbg !69
  %or.cond34 = or i1 %or.cond, %cmp4, !dbg !69
  br i1 %or.cond34, label %if.then5, label %for.body, !dbg !69

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !70, !tbaa !56
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([90 x i8]* @.str3, i64 0, i64 0), i32 %length, i32* %sizes, i32* %ivec, i32** %p_ivec) #5, !dbg !70
  tail call void @exit(i32 -1) #6, !dbg !72
  unreachable, !dbg !72

for.body:                                         ; preds = %if.then, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then ]
  %ivec.addr.036 = phi i32* [ %ivec.addr.1, %for.inc ], [ %ivec, %if.then ]
  %arrayidx = getelementptr inbounds i32* %sizes, i64 %indvars.iv, !dbg !73
  %1 = load i32* %arrayidx, align 4, !dbg !73, !tbaa !76
  %cmp7 = icmp sgt i32 %1, 0, !dbg !73
  %arrayidx10 = getelementptr inbounds i32** %p_ivec, i64 %indvars.iv, !dbg !77
  br i1 %cmp7, label %if.then8, label %if.else13, !dbg !73

if.then8:                                         ; preds = %for.body
  store i32* %ivec.addr.036, i32** %arrayidx10, align 8, !dbg !77, !tbaa !56
  %idx.ext = sext i32 %1 to i64, !dbg !79
  %add.ptr = getelementptr inbounds i32* %ivec.addr.036, i64 %idx.ext, !dbg !79
  tail call void @llvm.dbg.value(metadata !{i32* %add.ptr}, i64 0, metadata !27), !dbg !79
  br label %for.inc, !dbg !80

if.else13:                                        ; preds = %for.body
  store i32* null, i32** %arrayidx10, align 8, !dbg !81, !tbaa !56
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.else13
  %ivec.addr.1 = phi i32* [ %add.ptr, %if.then8 ], [ %ivec.addr.036, %if.else13 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !83
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !83
  %exitcond = icmp eq i32 %lftr.wideiv, %length, !dbg !83
  br i1 %exitcond, label %if.end17, label %for.body, !dbg !83

if.end17:                                         ; preds = %for.inc, %entry
  ret void, !dbg !84
}

; Function Attrs: nounwind optsize uwtable
define void @PIVcopy(i32 %length, i32** %p_ivec1, i32** %p_ivec2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %length}, i64 0, metadata !36), !dbg !85
  tail call void @llvm.dbg.value(metadata !{i32** %p_ivec1}, i64 0, metadata !37), !dbg !86
  tail call void @llvm.dbg.value(metadata !{i32** %p_ivec2}, i64 0, metadata !38), !dbg !87
  %cmp = icmp sgt i32 %length, 0, !dbg !88
  br i1 %cmp, label %if.then, label %if.end7, !dbg !88

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32** %p_ivec1, null, !dbg !89
  %cmp2 = icmp eq i32** %p_ivec2, null, !dbg !89
  %or.cond = or i1 %cmp1, %cmp2, !dbg !89
  br i1 %or.cond, label %if.then3, label %for.body, !dbg !89

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !90, !tbaa !56
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8]* @.str4, i64 0, i64 0), i32 %length, i32** %p_ivec1, i32** %p_ivec2) #5, !dbg !90
  tail call void @exit(i32 -1) #6, !dbg !92
  unreachable, !dbg !92

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32** %p_ivec2, i64 %indvars.iv, !dbg !93
  %1 = load i32** %arrayidx, align 8, !dbg !93, !tbaa !56
  %arrayidx6 = getelementptr inbounds i32** %p_ivec1, i64 %indvars.iv, !dbg !93
  store i32* %1, i32** %arrayidx6, align 8, !dbg !93, !tbaa !56
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !96
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !96
  %exitcond = icmp eq i32 %lftr.wideiv, %length, !dbg !96
  br i1 %exitcond, label %if.end7, label %for.body, !dbg !96

if.end7:                                          ; preds = %for.body, %entry
  ret void, !dbg !97
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

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !13, metadata !21, metadata !32}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PIVfree", metadata !"PIVfree", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32**)* @PIVfree, null, null, metadata !11, i32 17} ; [ DW_TAG_subprogram ] [line 15] [def] [scope 17] [PIVfree]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!10 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786689, metadata !4, metadata !"p_ivec", metadata !5, i32 16777232, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_ivec] [line 16]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PIVinit", metadata !"PIVinit", metadata !"", i32 33, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32** (i32)* @PIVinit, null, null, metadata !16, i32 35} ; [ DW_TAG_subprogram ] [line 33] [def] [scope 35] [PIVinit]
!14 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8, metadata !10}
!16 = metadata !{metadata !17, metadata !18, metadata !19}
!17 = metadata !{i32 786689, metadata !13, metadata !"size", metadata !5, i32 16777250, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 34]
!18 = metadata !{i32 786688, metadata !13, metadata !"p_ivec", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p_ivec] [line 36]
!19 = metadata !{i32 786688, metadata !20, metadata !"i", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 38]
!20 = metadata !{i32 786443, metadata !1, metadata !13, i32 37, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PIVsetup", metadata !"PIVsetup", metadata !"", i32 55, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32*, i32*, i32**)* @PIVsetup, null, null, metadata !24, i32 60} ; [ DW_TAG_subprogram ] [line 55] [def] [scope 60] [PIVsetup]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !10, metadata !9, metadata !9, metadata !8}
!24 = metadata !{metadata !25, metadata !26, metadata !27, metadata !28, metadata !29}
!25 = metadata !{i32 786689, metadata !21, metadata !"length", metadata !5, i32 16777272, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 56]
!26 = metadata !{i32 786689, metadata !21, metadata !"sizes", metadata !5, i32 33554489, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sizes] [line 57]
!27 = metadata !{i32 786689, metadata !21, metadata !"ivec", metadata !5, i32 50331706, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ivec] [line 58]
!28 = metadata !{i32 786689, metadata !21, metadata !"p_ivec", metadata !5, i32 67108923, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_ivec] [line 59]
!29 = metadata !{i32 786688, metadata !30, metadata !"j", metadata !5, i32 68, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 68]
!30 = metadata !{i32 786443, metadata !1, metadata !31, i32 67, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!31 = metadata !{i32 786443, metadata !1, metadata !21, i32 61, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!32 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PIVcopy", metadata !"PIVcopy", metadata !"", i32 90, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32**, i32**)* @PIVcopy, null, null, metadata !35, i32 94} ; [ DW_TAG_subprogram ] [line 90] [def] [scope 94] [PIVcopy]
!33 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{null, metadata !10, metadata !8, metadata !8}
!35 = metadata !{metadata !36, metadata !37, metadata !38, metadata !39}
!36 = metadata !{i32 786689, metadata !32, metadata !"length", metadata !5, i32 16777307, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 91]
!37 = metadata !{i32 786689, metadata !32, metadata !"p_ivec1", metadata !5, i32 33554524, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_ivec1] [line 92]
!38 = metadata !{i32 786689, metadata !32, metadata !"p_ivec2", metadata !5, i32 50331741, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p_ivec2] [line 93]
!39 = metadata !{i32 786688, metadata !40, metadata !"j", metadata !5, i32 102, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 102]
!40 = metadata !{i32 786443, metadata !1, metadata !41, i32 101, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!41 = metadata !{i32 786443, metadata !1, metadata !32, i32 95, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!42 = metadata !{i32 16, i32 0, metadata !4, null}
!43 = metadata !{i32 18, i32 0, metadata !4, null}
!44 = metadata !{i32 19, i32 0, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 19, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!46 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!47 = metadata !{i32** null}
!48 = metadata !{i32 21, i32 0, metadata !4, null}
!49 = metadata !{i32 34, i32 0, metadata !13, null}
!50 = metadata !{i32 36, i32 0, metadata !13, null}
!51 = metadata !{i32 37, i32 0, metadata !13, null}
!52 = metadata !{i32 39, i32 0, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !20, i32 39, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!54 = metadata !{i32 39, i32 0, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !53, i32 39, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!56 = metadata !{metadata !"any pointer", metadata !57}
!57 = metadata !{metadata !"omnipotent char", metadata !58}
!58 = metadata !{metadata !"Simple C/C++ TBAA"}
!59 = metadata !{i32 40, i32 0, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !20, i32 40, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!61 = metadata !{i32 41, i32 0, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !60, i32 40, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!63 = metadata !{i32 44, i32 0, metadata !13, null}
!64 = metadata !{i32 56, i32 0, metadata !21, null}
!65 = metadata !{i32 57, i32 0, metadata !21, null}
!66 = metadata !{i32 58, i32 0, metadata !21, null} ; [ DW_TAG_imported_module ]
!67 = metadata !{i32 59, i32 0, metadata !21, null}
!68 = metadata !{i32 61, i32 0, metadata !21, null}
!69 = metadata !{i32 62, i32 0, metadata !31, null}
!70 = metadata !{i32 63, i32 0, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !31, i32 62, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!72 = metadata !{i32 66, i32 0, metadata !71, null}
!73 = metadata !{i32 70, i32 0, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !75, i32 69, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!75 = metadata !{i32 786443, metadata !1, metadata !30, i32 69, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!76 = metadata !{metadata !"int", metadata !57}
!77 = metadata !{i32 71, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !74, i32 70, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!79 = metadata !{i32 72, i32 0, metadata !78, null}
!80 = metadata !{i32 73, i32 0, metadata !78, null}
!81 = metadata !{i32 74, i32 0, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !74, i32 73, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!83 = metadata !{i32 69, i32 0, metadata !75, null}
!84 = metadata !{i32 79, i32 0, metadata !21, null}
!85 = metadata !{i32 91, i32 0, metadata !32, null}
!86 = metadata !{i32 92, i32 0, metadata !32, null}
!87 = metadata !{i32 93, i32 0, metadata !32, null}
!88 = metadata !{i32 95, i32 0, metadata !32, null}
!89 = metadata !{i32 96, i32 0, metadata !41, null}
!90 = metadata !{i32 97, i32 0, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !41, i32 96, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!92 = metadata !{i32 100, i32 0, metadata !91, null}
!93 = metadata !{i32 104, i32 0, metadata !94, null}
!94 = metadata !{i32 786443, metadata !1, metadata !95, i32 103, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!95 = metadata !{i32 786443, metadata !1, metadata !40, i32 103, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c]
!96 = metadata !{i32 103, i32 0, metadata !95, null}
!97 = metadata !{i32 108, i32 0, metadata !32, null}
