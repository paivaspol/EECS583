; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ChvList = type { i32, %struct._Chv**, i32*, %struct._Lock*, i8*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [58 x i8] c"\0A fatal error in ChvList_init(%p,%d,%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str2 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @ChvList_init(%struct._ChvList* %chvlist, i32 %nlist, i32* %counts, i32 %lockflag, i8* %flags) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ChvList* %chvlist}, i64 0, metadata !62), !dbg !68
  tail call void @llvm.dbg.value(metadata !{i32 %nlist}, i64 0, metadata !63), !dbg !69
  tail call void @llvm.dbg.value(metadata !{i32* %counts}, i64 0, metadata !64), !dbg !70
  tail call void @llvm.dbg.value(metadata !{i32 %lockflag}, i64 0, metadata !65), !dbg !71
  tail call void @llvm.dbg.value(metadata !{i8* %flags}, i64 0, metadata !66), !dbg !72
  %cmp = icmp eq %struct._ChvList* %chvlist, null, !dbg !73
  %cmp1 = icmp slt i32 %nlist, 1, !dbg !73
  %or.cond = or i1 %cmp, %cmp1, !dbg !73
  %0 = icmp ugt i32 %lockflag, 1, !dbg !73
  %or.cond84 = or i1 %or.cond, %0, !dbg !73
  br i1 %or.cond84, label %if.then, label %if.end, !dbg !73

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !74, !tbaa !76
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), %struct._ChvList* %chvlist, i32 %nlist, i32* %counts, i32 %lockflag, i8* %flags) #5, !dbg !74
  tail call void @exit(i32 -1) #6, !dbg !79
  unreachable, !dbg !79

if.end:                                           ; preds = %entry
  tail call void @ChvList_clearData(%struct._ChvList* %chvlist) #5, !dbg !80
  %nlist6 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 0, !dbg !81
  store i32 %nlist, i32* %nlist6, align 4, !dbg !81, !tbaa !82
  %cmp7 = icmp sgt i32 %nlist, 0, !dbg !83
  br i1 %cmp7, label %if.then8, label %if.else17, !dbg !83

if.then8:                                         ; preds = %if.end
  %conv = sext i32 %nlist to i64, !dbg !84
  %mul = shl nsw i64 %conv, 3, !dbg !84
  %call9 = tail call noalias i8* @malloc(i64 %mul) #5, !dbg !84
  %2 = bitcast i8* %call9 to %struct._Chv**, !dbg !84
  %heads = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 1, !dbg !84
  store %struct._Chv** %2, %struct._Chv*** %heads, align 8, !dbg !84, !tbaa !76
  %cmp10 = icmp eq i8* %call9, null, !dbg !84
  br i1 %cmp10, label %if.then12, label %for.body.lr.ph, !dbg !84

if.then12:                                        ; preds = %if.then8
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !86, !tbaa !76
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul, i32 61, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !86
  tail call void @exit(i32 -1) #6, !dbg !86
  unreachable, !dbg !86

if.else17:                                        ; preds = %if.end
  %cmp18 = icmp eq i32 %nlist, 0, !dbg !83
  br i1 %cmp18, label %for.cond.preheader, label %if.else22, !dbg !83

for.cond.preheader:                               ; preds = %if.else17
  %heads21 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 1, !dbg !88
  store %struct._Chv** null, %struct._Chv*** %heads21, align 8, !dbg !88, !tbaa !76
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then8
  %heads30 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 1, !dbg !90
  br label %for.body, !dbg !93

if.else22:                                        ; preds = %if.else17
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !94, !tbaa !76
  %conv23 = sext i32 %nlist to i64, !dbg !94
  %mul24 = shl nsw i64 %conv23, 3, !dbg !94
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), i64 %mul24, i32 61, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0)) #5, !dbg !94
  tail call void @exit(i32 -1) #6, !dbg !94
  unreachable, !dbg !94

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %5 = phi %struct._Chv** [ %2, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds %struct._Chv** %5, i64 %indvars.iv, !dbg !90
  store %struct._Chv* null, %struct._Chv** %arrayidx, align 8, !dbg !90, !tbaa !76
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !93
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !93
  %exitcond = icmp eq i32 %lftr.wideiv, %nlist, !dbg !93
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge, !dbg !93

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct._Chv*** %heads30, align 8, !dbg !90, !tbaa !76
  br label %for.body, !dbg !93

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %cmp31 = icmp eq i32* %counts, null, !dbg !96
  br i1 %cmp31, label %if.end37, label %if.then33, !dbg !96

if.then33:                                        ; preds = %for.end
  %call34 = tail call i32* @IVinit(i32 %nlist, i32 0) #5, !dbg !97
  %counts35 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 2, !dbg !97
  store i32* %call34, i32** %counts35, align 8, !dbg !97, !tbaa !76
  tail call void @IVcopy(i32 %nlist, i32* %call34, i32* %counts) #5, !dbg !99
  br label %if.end37, !dbg !100

if.end37:                                         ; preds = %for.end, %if.then33
  %cmp38 = icmp sgt i32 %lockflag, 0, !dbg !101
  br i1 %cmp38, label %if.then40, label %if.end43, !dbg !101

if.then40:                                        ; preds = %if.end37
  %call41 = tail call %struct._Lock* @Lock_new() #5, !dbg !102
  %lock = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 3, !dbg !102
  store %struct._Lock* %call41, %struct._Lock** %lock, align 8, !dbg !102, !tbaa !76
  tail call void @Lock_init(%struct._Lock* %call41, i32 %lockflag) #5, !dbg !104
  br label %if.end43, !dbg !105

if.end43:                                         ; preds = %if.then40, %if.end37
  %cmp44 = icmp eq i8* %flags, null, !dbg !106
  br i1 %cmp44, label %if.end50, label %if.then46, !dbg !106

if.then46:                                        ; preds = %if.end43
  %call47 = tail call i8* @CVinit(i32 %nlist, i8 signext 78) #5, !dbg !107
  %flags48 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 4, !dbg !107
  store i8* %call47, i8** %flags48, align 8, !dbg !107, !tbaa !76
  tail call void @CVcopy(i32 %nlist, i8* %call47, i8* %flags) #5, !dbg !109
  br label %if.end50, !dbg !110

if.end50:                                         ; preds = %if.end43, %if.then46
  ret void, !dbg !111
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @ChvList_clearData(%struct._ChvList*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare %struct._Lock* @Lock_new() #3

; Function Attrs: optsize
declare void @Lock_init(%struct._Lock*, i32) #3

; Function Attrs: optsize
declare i8* @CVinit(i32, i8 signext) #3

; Function Attrs: optsize
declare void @CVcopy(i32, i8*, i8*) #3

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ChvList_init", metadata !"ChvList_init", metadata !"", i32 31, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ChvList*, i32, i32*, i32, i8*)* @ChvList_init, null, null, metadata !61, i32 37} ; [ DW_TAG_subprogram ] [line 31] [def] [scope 37] [ChvList_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !29, metadata !14, metadata !58}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ChvList]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"ChvList", i32 24, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [ChvList] [line 24, size 0, align 0, offset 0] [from _ChvList]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_ChvList", i32 25, i64 384, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ChvList] [line 25, size 384, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/../ChvList.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !46, metadata !47, metadata !57, metadata !60}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlist", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 26, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"heads", i32 27, i64 64, i64 64, i64 64, i32 0, metadata !16} ; [ DW_TAG_member ] [heads] [line 27, size 64, align 64, offset 64] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!18 = metadata !{i32 786454, metadata !11, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/../../Chv/Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !30, metadata !31, metadata !34, metadata !43}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!25 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!28 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!31 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!33 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!34 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !35} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!35 = metadata !{i32 786454, metadata !20, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!36 = metadata !{i32 786451, metadata !37, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !38, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!37 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !42}
!39 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!40 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!41 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!42 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!43 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!45 = metadata !{i32 786454, metadata !20, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!46 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"counts", i32 28, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [counts] [line 28, size 64, align 64, offset 128] [from ]
!47 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"lock", i32 29, i64 64, i64 64, i64 192, i32 0, metadata !48} ; [ DW_TAG_member ] [lock] [line 29, size 64, align 64, offset 192] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Lock]
!49 = metadata !{i32 786454, metadata !11, null, metadata !"Lock", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [Lock] [line 36, size 0, align 0, offset 0] [from _Lock]
!50 = metadata !{i32 786451, metadata !51, null, metadata !"_Lock", i32 37, i64 128, i64 64, i32 0, i32 0, null, metadata !52, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Lock] [line 37, size 128, align 64, offset 0] [from ]
!51 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/../../Lock/Lock.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!52 = metadata !{metadata !53, metadata !55, metadata !56}
!53 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"mutex", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [mutex] [line 45, size 64, align 64, offset 0] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"nlocks", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlocks] [line 47, size 32, align 32, offset 64] [from int]
!56 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"nunlocks", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nunlocks] [line 48, size 32, align 32, offset 96] [from int]
!57 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"flags", i32 30, i64 64, i64 64, i64 256, i32 0, metadata !58} ; [ DW_TAG_member ] [flags] [line 30, size 64, align 64, offset 256] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!59 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!60 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlocks", i32 31, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [nlocks] [line 31, size 32, align 32, offset 320] [from int]
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67}
!62 = metadata !{i32 786689, metadata !4, metadata !"chvlist", metadata !5, i32 16777248, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chvlist] [line 32]
!63 = metadata !{i32 786689, metadata !4, metadata !"nlist", metadata !5, i32 33554465, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nlist] [line 33]
!64 = metadata !{i32 786689, metadata !4, metadata !"counts", metadata !5, i32 50331682, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [counts] [line 34]
!65 = metadata !{i32 786689, metadata !4, metadata !"lockflag", metadata !5, i32 67108899, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lockflag] [line 35]
!66 = metadata !{i32 786689, metadata !4, metadata !"flags", metadata !5, i32 83886116, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 36]
!67 = metadata !{i32 786688, metadata !4, metadata !"ilist", metadata !5, i32 38, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ilist] [line 38]
!68 = metadata !{i32 32, i32 0, metadata !4, null}
!69 = metadata !{i32 33, i32 0, metadata !4, null}
!70 = metadata !{i32 34, i32 0, metadata !4, null}
!71 = metadata !{i32 35, i32 0, metadata !4, null}
!72 = metadata !{i32 36, i32 0, metadata !4, null}
!73 = metadata !{i32 44, i32 0, metadata !4, null}
!74 = metadata !{i32 45, i32 0, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !4, i32 44, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c]
!76 = metadata !{metadata !"any pointer", metadata !77}
!77 = metadata !{metadata !"omnipotent char", metadata !78}
!78 = metadata !{metadata !"Simple C/C++ TBAA"}
!79 = metadata !{i32 47, i32 0, metadata !75, null}
!80 = metadata !{i32 54, i32 0, metadata !4, null}
!81 = metadata !{i32 60, i32 0, metadata !4, null}
!82 = metadata !{metadata !"int", metadata !77}
!83 = metadata !{i32 61, i32 0, metadata !4, null}
!84 = metadata !{i32 61, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !4, i32 61, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c]
!86 = metadata !{i32 61, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !85, i32 61, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c]
!88 = metadata !{i32 61, i32 0, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !4, i32 61, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c]
!90 = metadata !{i32 63, i32 0, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !92, i32 62, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c]
!92 = metadata !{i32 786443, metadata !1, metadata !4, i32 62, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c]
!93 = metadata !{i32 62, i32 0, metadata !92, null}
!94 = metadata !{i32 61, i32 0, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !4, i32 61, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c]
!96 = metadata !{i32 65, i32 0, metadata !4, null}
!97 = metadata !{i32 71, i32 0, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !4, i32 65, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c]
!99 = metadata !{i32 72, i32 0, metadata !98, null}
!100 = metadata !{i32 73, i32 0, metadata !98, null}
!101 = metadata !{i32 74, i32 0, metadata !4, null}
!102 = metadata !{i32 80, i32 0, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !4, i32 74, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c]
!104 = metadata !{i32 81, i32 0, metadata !103, null}
!105 = metadata !{i32 82, i32 0, metadata !103, null}
!106 = metadata !{i32 83, i32 0, metadata !4, null}
!107 = metadata !{i32 89, i32 0, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !4, i32 83, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c]
!109 = metadata !{i32 90, i32 0, metadata !108, null}
!110 = metadata !{i32 91, i32 0, metadata !108, null}
!111 = metadata !{i32 92, i32 0, metadata !4, null}
