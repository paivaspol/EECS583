; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_fillNewToOldPerm(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_fillOldToNewPerm(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_fillBothPerms(%p,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Tree_fillNewToOldPerm(%struct._Tree* %tree, i32* %newToOld) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !21), !dbg !40
  tail call void @llvm.dbg.value(metadata !{i32* %newToOld}, i64 0, metadata !22), !dbg !41
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !42
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !42

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !42
  %0 = load i32* %n, align 4, !dbg !42, !tbaa !43
  %cmp1 = icmp slt i32 %0, 1, !dbg !42
  %cmp3 = icmp eq i32* %newToOld, null, !dbg !42
  %or.cond = or i1 %cmp1, %cmp3, !dbg !42
  br i1 %or.cond, label %if.then, label %if.end, !dbg !42

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !46, !tbaa !48
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, i32* %newToOld) #5, !dbg !46
  tail call void @exit(i32 -1) #6, !dbg !49
  unreachable, !dbg !49

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !50
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !24), !dbg !50
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !23), !dbg !50
  %cmp515 = icmp eq i32 %call4, -1, !dbg !50
  br i1 %cmp515, label %for.end, label %for.body, !dbg !50

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %v.017 = phi i32 [ %call6, %for.body ], [ %call4, %if.end ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !50
  %arrayidx = getelementptr inbounds i32* %newToOld, i64 %indvars.iv, !dbg !52
  store i32 %v.017, i32* %arrayidx, align 4, !dbg !52, !tbaa !43
  %call6 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.017) #5, !dbg !54
  tail call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !24), !dbg !54
  %cmp5 = icmp eq i32 %call6, -1, !dbg !50
  br i1 %cmp5, label %for.end, label %for.body, !dbg !50

for.end:                                          ; preds = %for.body, %if.end
  ret void, !dbg !55
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Tree_fillOldToNewPerm(%struct._Tree* %tree, i32* %oldToNew) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !27), !dbg !56
  tail call void @llvm.dbg.value(metadata !{i32* %oldToNew}, i64 0, metadata !28), !dbg !57
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !58
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !58

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !58
  %0 = load i32* %n, align 4, !dbg !58, !tbaa !43
  %cmp1 = icmp slt i32 %0, 1, !dbg !58
  %cmp3 = icmp eq i32* %oldToNew, null, !dbg !58
  %or.cond = or i1 %cmp1, %cmp3, !dbg !58
  br i1 %or.cond, label %if.then, label %if.end, !dbg !58

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !59, !tbaa !48
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, i32* %oldToNew) #5, !dbg !59
  tail call void @exit(i32 -1) #6, !dbg !61
  unreachable, !dbg !61

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !62
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !30), !dbg !62
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !29), !dbg !62
  %cmp515 = icmp eq i32 %call4, -1, !dbg !62
  br i1 %cmp515, label %for.end, label %for.body, !dbg !62

for.body:                                         ; preds = %if.end, %for.body
  %v.017 = phi i32 [ %call6, %for.body ], [ %call4, %if.end ]
  %i.016 = phi i32 [ %inc, %for.body ], [ 0, %if.end ]
  %inc = add nsw i32 %i.016, 1, !dbg !64
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !29), !dbg !64
  %idxprom = sext i32 %v.017 to i64, !dbg !64
  %arrayidx = getelementptr inbounds i32* %oldToNew, i64 %idxprom, !dbg !64
  store i32 %i.016, i32* %arrayidx, align 4, !dbg !64, !tbaa !43
  %call6 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.017) #5, !dbg !66
  tail call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !30), !dbg !66
  %cmp5 = icmp eq i32 %call6, -1, !dbg !62
  br i1 %cmp5, label %for.end, label %for.body, !dbg !62

for.end:                                          ; preds = %for.body, %if.end
  ret void, !dbg !67
}

; Function Attrs: nounwind optsize uwtable
define void @Tree_fillBothPerms(%struct._Tree* %tree, i32* %newToOld, i32* %oldToNew) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !35), !dbg !68
  tail call void @llvm.dbg.value(metadata !{i32* %newToOld}, i64 0, metadata !36), !dbg !69
  tail call void @llvm.dbg.value(metadata !{i32* %oldToNew}, i64 0, metadata !37), !dbg !70
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !71
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !71

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !71
  %0 = load i32* %n, align 4, !dbg !71, !tbaa !43
  %cmp1 = icmp slt i32 %0, 1, !dbg !71
  %cmp3 = icmp eq i32* %newToOld, null, !dbg !71
  %or.cond = or i1 %cmp1, %cmp3, !dbg !71
  %cmp5 = icmp eq i32* %oldToNew, null, !dbg !71
  %or.cond23 = or i1 %or.cond, %cmp5, !dbg !71
  br i1 %or.cond23, label %if.then, label %if.end, !dbg !71

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !72, !tbaa !48
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i32* %newToOld, i32* %oldToNew) #5, !dbg !72
  tail call void @exit(i32 -1) #6, !dbg !74
  unreachable, !dbg !74

if.end:                                           ; preds = %lor.lhs.false
  %call6 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !75
  tail call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !39), !dbg !75
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !38), !dbg !75
  %cmp724 = icmp eq i32 %call6, -1, !dbg !75
  br i1 %cmp724, label %for.end, label %for.body, !dbg !75

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %v.026 = phi i32 [ %call10, %for.body ], [ %call6, %if.end ]
  %arrayidx = getelementptr inbounds i32* %newToOld, i64 %indvars.iv, !dbg !77
  store i32 %v.026, i32* %arrayidx, align 4, !dbg !77, !tbaa !43
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !75
  %idxprom8 = sext i32 %v.026 to i64, !dbg !79
  %arrayidx9 = getelementptr inbounds i32* %oldToNew, i64 %idxprom8, !dbg !79
  %2 = trunc i64 %indvars.iv to i32, !dbg !79
  store i32 %2, i32* %arrayidx9, align 4, !dbg !79, !tbaa !43
  %call10 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.026) #5, !dbg !80
  tail call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !39), !dbg !80
  %cmp7 = icmp eq i32 %call10, -1, !dbg !75
  br i1 %cmp7, label %for.end, label %for.body, !dbg !75

for.end:                                          ; preds = %for.body, %if.end
  ret void, !dbg !81
}

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !25, metadata !31}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_fillNewToOldPerm", metadata !"Tree_fillNewToOldPerm", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Tree*, i32*)* @Tree_fillNewToOldPerm, null, null, metadata !20, i32 17} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 17] [Tree_fillNewToOldPerm]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !17}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !18, metadata !19}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !24}
!21 = metadata !{i32 786689, metadata !4, metadata !"tree", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 15]
!22 = metadata !{i32 786689, metadata !4, metadata !"newToOld", metadata !5, i32 33554448, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newToOld] [line 16]
!23 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 18]
!24 = metadata !{i32 786688, metadata !4, metadata !"v", metadata !5, i32 18, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 18]
!25 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_fillOldToNewPerm", metadata !"Tree_fillOldToNewPerm", metadata !"", i32 50, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Tree*, i32*)* @Tree_fillOldToNewPerm, null, null, metadata !26, i32 53} ; [ DW_TAG_subprogram ] [line 50] [def] [scope 53] [Tree_fillOldToNewPerm]
!26 = metadata !{metadata !27, metadata !28, metadata !29, metadata !30}
!27 = metadata !{i32 786689, metadata !25, metadata !"tree", metadata !5, i32 16777267, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 51]
!28 = metadata !{i32 786689, metadata !25, metadata !"oldToNew", metadata !5, i32 33554484, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldToNew] [line 52]
!29 = metadata !{i32 786688, metadata !25, metadata !"i", metadata !5, i32 54, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 54]
!30 = metadata !{i32 786688, metadata !25, metadata !"v", metadata !5, i32 54, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 54]
!31 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_fillBothPerms", metadata !"Tree_fillBothPerms", metadata !"", i32 86, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Tree*, i32*, i32*)* @Tree_fillBothPerms, null, null, metadata !34, i32 90} ; [ DW_TAG_subprogram ] [line 86] [def] [scope 90] [Tree_fillBothPerms]
!32 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{null, metadata !8, metadata !17, metadata !17}
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38, metadata !39}
!35 = metadata !{i32 786689, metadata !31, metadata !"tree", metadata !5, i32 16777303, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 87]
!36 = metadata !{i32 786689, metadata !31, metadata !"newToOld", metadata !5, i32 33554520, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newToOld] [line 88]
!37 = metadata !{i32 786689, metadata !31, metadata !"oldToNew", metadata !5, i32 50331737, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldToNew] [line 89]
!38 = metadata !{i32 786688, metadata !31, metadata !"i", metadata !5, i32 91, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 91]
!39 = metadata !{i32 786688, metadata !31, metadata !"v", metadata !5, i32 91, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 91]
!40 = metadata !{i32 15, i32 0, metadata !4, null}
!41 = metadata !{i32 16, i32 0, metadata !4, null}
!42 = metadata !{i32 24, i32 0, metadata !4, null}
!43 = metadata !{metadata !"int", metadata !44}
!44 = metadata !{metadata !"omnipotent char", metadata !45}
!45 = metadata !{metadata !"Simple C/C++ TBAA"}
!46 = metadata !{i32 25, i32 0, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !4, i32 24, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c]
!48 = metadata !{metadata !"any pointer", metadata !44}
!49 = metadata !{i32 27, i32 0, metadata !47, null}
!50 = metadata !{i32 34, i32 0, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c]
!52 = metadata !{i32 37, i32 0, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !51, i32 36, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c]
!54 = metadata !{i32 36, i32 0, metadata !51, null}
!55 = metadata !{i32 39, i32 0, metadata !4, null}
!56 = metadata !{i32 51, i32 0, metadata !25, null}
!57 = metadata !{i32 52, i32 0, metadata !25, null}
!58 = metadata !{i32 60, i32 0, metadata !25, null}
!59 = metadata !{i32 61, i32 0, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !25, i32 60, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c]
!61 = metadata !{i32 63, i32 0, metadata !60, null}
!62 = metadata !{i32 70, i32 0, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !25, i32 70, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c]
!64 = metadata !{i32 73, i32 0, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !63, i32 72, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c]
!66 = metadata !{i32 72, i32 0, metadata !63, null}
!67 = metadata !{i32 75, i32 0, metadata !25, null}
!68 = metadata !{i32 87, i32 0, metadata !31, null}
!69 = metadata !{i32 88, i32 0, metadata !31, null}
!70 = metadata !{i32 89, i32 0, metadata !31, null}
!71 = metadata !{i32 97, i32 0, metadata !31, null}
!72 = metadata !{i32 99, i32 0, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !31, i32 98, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c]
!74 = metadata !{i32 101, i32 0, metadata !73, null}
!75 = metadata !{i32 108, i32 0, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !31, i32 108, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c]
!77 = metadata !{i32 111, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !76, i32 110, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_perms.c]
!79 = metadata !{i32 112, i32 0, metadata !78, null}
!80 = metadata !{i32 110, i32 0, metadata !76, null}
!81 = metadata !{i32 114, i32 0, metadata !31, null}
