; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [51 x i8] c"\0A fatal error in Tree_fundChainMap(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [50 x i8] c"\0A fatal error in Tree_compress(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [61 x i8] c"\0A fatal error in Tree_compress(%p,%p)\0A map[%d] = %d, N = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @Tree_fundChainMap(%struct._Tree* %tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !30), !dbg !52
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !53
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !53

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !53
  %0 = load i32* %n, align 4, !dbg !53, !tbaa !54
  %cmp1 = icmp slt i32 %0, 1, !dbg !53
  br i1 %cmp1, label %if.then, label %if.end, !dbg !53

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !57, !tbaa !59
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !57
  tail call void @exit(i32 -1) #6, !dbg !60
  unreachable, !dbg !60

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call %struct._IV* @IV_new() #5, !dbg !61
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call2}, i64 0, metadata !35), !dbg !61
  %2 = load i32* %n, align 4, !dbg !62, !tbaa !54
  tail call void @IV_init(%struct._IV* %call2, i32 %2, i32* null) #5, !dbg !62
  %call4 = tail call i32* @IV_entries(%struct._IV* %call2) #5, !dbg !63
  tail call void @llvm.dbg.value(metadata !{i32* %call4}, i64 0, metadata !34), !dbg !63
  %call5 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !64
  tail call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !33), !dbg !64
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !31), !dbg !64
  %cmp637 = icmp eq i32 %call5, -1, !dbg !64
  br i1 %cmp637, label %for.end, label %for.body.lr.ph, !dbg !64

for.body.lr.ph:                                   ; preds = %if.end
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !66
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !66
  br label %for.body, !dbg !64

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %nfc.039 = phi i32 [ 0, %for.body.lr.ph ], [ %nfc.1, %for.inc ]
  %v.038 = phi i32 [ %call5, %for.body.lr.ph ], [ %call20, %for.inc ]
  %idxprom = sext i32 %v.038 to i64, !dbg !66
  %3 = load i32** %fch, align 8, !dbg !66, !tbaa !59
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !66
  %4 = load i32* %arrayidx, align 4, !dbg !66, !tbaa !54
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !32), !dbg !66
  %cmp7 = icmp eq i32 %4, -1, !dbg !66
  br i1 %cmp7, label %if.then12, label %lor.lhs.false8, !dbg !66

lor.lhs.false8:                                   ; preds = %for.body
  %idxprom9 = sext i32 %4 to i64, !dbg !66
  %5 = load i32** %sib, align 8, !dbg !66, !tbaa !59
  %arrayidx10 = getelementptr inbounds i32* %5, i64 %idxprom9, !dbg !66
  %6 = load i32* %arrayidx10, align 4, !dbg !66, !tbaa !54
  %cmp11 = icmp eq i32 %6, -1, !dbg !66
  br i1 %cmp11, label %if.else, label %if.then12, !dbg !66

if.then12:                                        ; preds = %lor.lhs.false8, %for.body
  %inc = add nsw i32 %nfc.039, 1, !dbg !68
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !31), !dbg !68
  %arrayidx14 = getelementptr inbounds i32* %call4, i64 %idxprom, !dbg !68
  store i32 %nfc.039, i32* %arrayidx14, align 4, !dbg !68, !tbaa !54
  br label %for.inc, !dbg !70

if.else:                                          ; preds = %lor.lhs.false8
  %arrayidx16 = getelementptr inbounds i32* %call4, i64 %idxprom9, !dbg !71
  %7 = load i32* %arrayidx16, align 4, !dbg !71, !tbaa !54
  %arrayidx18 = getelementptr inbounds i32* %call4, i64 %idxprom, !dbg !71
  store i32 %7, i32* %arrayidx18, align 4, !dbg !71, !tbaa !54
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.else
  %nfc.1 = phi i32 [ %inc, %if.then12 ], [ %nfc.039, %if.else ]
  %call20 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.038) #5, !dbg !73
  tail call void @llvm.dbg.value(metadata !{i32 %call20}, i64 0, metadata !33), !dbg !73
  %cmp6 = icmp eq i32 %call20, -1, !dbg !64
  br i1 %cmp6, label %for.end, label %for.body, !dbg !64

for.end:                                          ; preds = %for.inc, %if.end
  ret %struct._IV* %call2, !dbg !74
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #3

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #3

; Function Attrs: nounwind optsize uwtable
define %struct._Tree* @Tree_compress(%struct._Tree* %tree, %struct._IV* %mapIV) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !40), !dbg !75
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %mapIV}, i64 0, metadata !41), !dbg !76
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !77
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !77

lor.lhs.false:                                    ; preds = %entry
  %n1 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !77
  %0 = load i32* %n1, align 4, !dbg !77, !tbaa !54
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !42), !dbg !77
  %cmp2 = icmp slt i32 %0, 1, !dbg !77
  %cmp4 = icmp eq %struct._IV* %mapIV, null, !dbg !77
  %or.cond = or i1 %cmp2, %cmp4, !dbg !77
  br i1 %or.cond, label %if.then, label %lor.lhs.false5, !dbg !77

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @IV_size(%struct._IV* %mapIV) #5, !dbg !78
  %cmp6 = icmp eq i32 %0, %call, !dbg !78
  br i1 %cmp6, label %lor.lhs.false7, label %if.then, !dbg !78

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %call8 = tail call i32* @IV_entries(%struct._IV* %mapIV) #5, !dbg !79
  tail call void @llvm.dbg.value(metadata !{i32* %call8}, i64 0, metadata !50), !dbg !79
  %cmp9 = icmp eq i32* %call8, null, !dbg !79
  br i1 %cmp9, label %if.then, label %if.end, !dbg !79

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false7, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !80, !tbaa !59
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, %struct._IV* %mapIV) #5, !dbg !80
  tail call void @exit(i32 -1) #6, !dbg !82
  unreachable, !dbg !82

if.end:                                           ; preds = %lor.lhs.false7
  %call11 = tail call i32 @IV_max(%struct._IV* %mapIV) #5, !dbg !83
  %add = add nsw i32 %call11, 1, !dbg !83
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !43), !dbg !83
  %call12 = tail call %struct._Tree* @Tree_new() #5, !dbg !84
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %call12}, i64 0, metadata !51), !dbg !84
  tail call void @Tree_init1(%struct._Tree* %call12, i32 %add) #5, !dbg !85
  %call13 = tail call i32* @IVinit(i32 %add, i32 -1) #5, !dbg !86
  tail call void @llvm.dbg.value(metadata !{i32* %call13}, i64 0, metadata !48), !dbg !86
  %call14 = tail call i32* @IVinit(i32 %0, i32 -1) #5, !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32* %call14}, i64 0, metadata !49), !dbg !87
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !46), !dbg !88
  %cmp15111 = icmp sgt i32 %0, 0, !dbg !88
  br i1 %cmp15111, label %for.body, label %for.cond28.preheader, !dbg !88

for.cond28.preheader:                             ; preds = %if.end21, %if.end
  %cmp29105 = icmp sgt i32 %call11, -1, !dbg !90
  br i1 %cmp29105, label %for.body30.lr.ph, label %for.end58, !dbg !90

for.body30.lr.ph:                                 ; preds = %for.cond28.preheader
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !92
  %par41 = getelementptr inbounds %struct._Tree* %call12, i64 0, i32 2, !dbg !96
  br label %for.body30, !dbg !90

for.body:                                         ; preds = %if.end, %if.end21
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %if.end21 ], [ 0, %if.end ]
  %v.0112 = phi i32 [ %inc, %if.end21 ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %call8, i64 %indvars.iv117, !dbg !98
  %2 = load i32* %arrayidx, align 4, !dbg !98, !tbaa !54
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !47), !dbg !98
  %cmp16 = icmp sgt i32 %2, -1, !dbg !98
  %cmp18 = icmp slt i32 %2, %add, !dbg !98
  %or.cond101 = and i1 %cmp16, %cmp18, !dbg !98
  br i1 %or.cond101, label %if.end21, label %if.then19, !dbg !98

if.then19:                                        ; preds = %for.body
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !100, !tbaa !59
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i32* %call8, i32 %v.0112, i32 %2, i32 %add) #5, !dbg !100
  tail call void @exit(i32 -1) #6, !dbg !102
  unreachable, !dbg !102

if.end21:                                         ; preds = %for.body
  %idxprom22 = sext i32 %2 to i64, !dbg !103
  %arrayidx23 = getelementptr inbounds i32* %call13, i64 %idxprom22, !dbg !103
  %4 = load i32* %arrayidx23, align 4, !dbg !103, !tbaa !54
  %arrayidx25 = getelementptr inbounds i32* %call14, i64 %indvars.iv117, !dbg !103
  store i32 %4, i32* %arrayidx25, align 4, !dbg !103, !tbaa !54
  %5 = trunc i64 %indvars.iv117 to i32, !dbg !104
  store i32 %5, i32* %arrayidx23, align 4, !dbg !104, !tbaa !54
  %indvars.iv.next118 = add i64 %indvars.iv117, 1, !dbg !88
  %inc = add nsw i32 %v.0112, 1, !dbg !88
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !46), !dbg !88
  %6 = trunc i64 %indvars.iv.next118 to i32, !dbg !88
  %cmp15 = icmp slt i32 %6, %0, !dbg !88
  br i1 %cmp15, label %for.body, label %for.cond28.preheader, !dbg !88

for.body30:                                       ; preds = %for.body30.lr.ph, %for.inc56
  %indvars.iv = phi i64 [ 0, %for.body30.lr.ph ], [ %indvars.iv.next, %for.inc56 ]
  %arrayidx32 = getelementptr inbounds i32* %call13, i64 %indvars.iv, !dbg !105
  %u.0102 = load i32* %arrayidx32, align 4, !dbg !105
  %cmp34103 = icmp eq i32 %u.0102, -1, !dbg !105
  br i1 %cmp34103, label %for.inc56, label %for.body35.lr.ph, !dbg !105

for.body35.lr.ph:                                 ; preds = %for.body30
  %7 = load i32** %par, align 8, !dbg !92, !tbaa !59
  br label %for.body35, !dbg !105

for.body35:                                       ; preds = %for.body35.lr.ph, %for.inc52
  %u.0104 = phi i32 [ %u.0102, %for.body35.lr.ph ], [ %u.0, %for.inc52 ]
  %idxprom36 = sext i32 %u.0104 to i64, !dbg !92
  %arrayidx37 = getelementptr inbounds i32* %7, i64 %idxprom36, !dbg !92
  %8 = load i32* %arrayidx37, align 4, !dbg !92, !tbaa !54
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !46), !dbg !92
  %cmp38 = icmp eq i32 %8, -1, !dbg !92
  br i1 %cmp38, label %if.then39, label %if.else, !dbg !92

if.then39:                                        ; preds = %for.body35
  %9 = load i32** %par41, align 8, !dbg !96, !tbaa !59
  %arrayidx42 = getelementptr inbounds i32* %9, i64 %indvars.iv, !dbg !96
  store i32 -1, i32* %arrayidx42, align 4, !dbg !96, !tbaa !54
  br label %for.inc56, !dbg !106

if.else:                                          ; preds = %for.body35
  %idxprom43 = sext i32 %8 to i64, !dbg !107
  %arrayidx44 = getelementptr inbounds i32* %call8, i64 %idxprom43, !dbg !107
  %10 = load i32* %arrayidx44, align 4, !dbg !107, !tbaa !54
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !47), !dbg !107
  %11 = trunc i64 %indvars.iv to i32, !dbg !107
  %cmp45 = icmp eq i32 %10, %11, !dbg !107
  br i1 %cmp45, label %for.inc52, label %if.then46, !dbg !107

if.then46:                                        ; preds = %if.else
  %12 = load i32** %par41, align 8, !dbg !108, !tbaa !59
  %arrayidx49 = getelementptr inbounds i32* %12, i64 %indvars.iv, !dbg !108
  store i32 %10, i32* %arrayidx49, align 4, !dbg !108, !tbaa !54
  br label %for.inc56, !dbg !110

for.inc52:                                        ; preds = %if.else
  %arrayidx54 = getelementptr inbounds i32* %call14, i64 %idxprom36, !dbg !105
  %u.0 = load i32* %arrayidx54, align 4, !dbg !105
  %cmp34 = icmp eq i32 %u.0, -1, !dbg !105
  br i1 %cmp34, label %for.inc56, label %for.body35, !dbg !105

for.inc56:                                        ; preds = %for.body30, %for.inc52, %if.then39, %if.then46
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !90
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !90
  %cmp29 = icmp slt i32 %13, %add, !dbg !90
  br i1 %cmp29, label %for.body30, label %for.end58, !dbg !90

for.end58:                                        ; preds = %for.inc56, %for.cond28.preheader
  tail call void @Tree_setFchSibRoot(%struct._Tree* %call12) #5, !dbg !111
  tail call void @IVfree(i32* %call13) #5, !dbg !112
  tail call void @IVfree(i32* %call14) #5, !dbg !113
  ret %struct._Tree* %call12, !dbg !114
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @IV_max(%struct._IV*) #3

; Function Attrs: optsize
declare %struct._Tree* @Tree_new() #3

; Function Attrs: optsize
declare void @Tree_init1(%struct._Tree*, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @Tree_setFchSibRoot(%struct._Tree*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !36}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_fundChainMap", metadata !"Tree_fundChainMap", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._Tree*)* @Tree_fundChainMap, null, null, metadata !29, i32 19} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 19] [Tree_fundChainMap]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !19}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!20 = metadata !{i32 786454, metadata !1, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!21 = metadata !{i32 786451, metadata !22, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !23, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!22 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !27, metadata !28}
!24 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!25 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!26 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !18} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!27 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!28 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35}
!30 = metadata !{i32 786689, metadata !4, metadata !"tree", metadata !5, i32 16777234, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 18]
!31 = metadata !{i32 786688, metadata !4, metadata !"nfc", metadata !5, i32 20, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfc] [line 20]
!32 = metadata !{i32 786688, metadata !4, metadata !"u", metadata !5, i32 20, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 20]
!33 = metadata !{i32 786688, metadata !4, metadata !"v", metadata !5, i32 20, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 20]
!34 = metadata !{i32 786688, metadata !4, metadata !"map", metadata !5, i32 21, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 21]
!35 = metadata !{i32 786688, metadata !4, metadata !"mapIV", metadata !5, i32 22, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapIV] [line 22]
!36 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_compress", metadata !"Tree_compress", metadata !"", i32 72, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Tree* (%struct._Tree*, %struct._IV*)* @Tree_compress, null, null, metadata !39, i32 75} ; [ DW_TAG_subprogram ] [line 72] [def] [scope 75] [Tree_compress]
!37 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{metadata !19, metadata !19, metadata !8}
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51}
!40 = metadata !{i32 786689, metadata !36, metadata !"tree", metadata !5, i32 16777289, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 73]
!41 = metadata !{i32 786689, metadata !36, metadata !"mapIV", metadata !5, i32 33554506, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mapIV] [line 74]
!42 = metadata !{i32 786688, metadata !36, metadata !"n", metadata !5, i32 76, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 76]
!43 = metadata !{i32 786688, metadata !36, metadata !"N", metadata !5, i32 76, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N] [line 76]
!44 = metadata !{i32 786688, metadata !36, metadata !"u", metadata !5, i32 76, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 76]
!45 = metadata !{i32 786688, metadata !36, metadata !"U", metadata !5, i32 76, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [U] [line 76]
!46 = metadata !{i32 786688, metadata !36, metadata !"v", metadata !5, i32 76, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 76]
!47 = metadata !{i32 786688, metadata !36, metadata !"V", metadata !5, i32 76, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [V] [line 76]
!48 = metadata !{i32 786688, metadata !36, metadata !"head", metadata !5, i32 77, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head] [line 77]
!49 = metadata !{i32 786688, metadata !36, metadata !"link", metadata !5, i32 77, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [link] [line 77]
!50 = metadata !{i32 786688, metadata !36, metadata !"map", metadata !5, i32 77, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 77]
!51 = metadata !{i32 786688, metadata !36, metadata !"tree2", metadata !5, i32 78, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tree2] [line 78]
!52 = metadata !{i32 18, i32 0, metadata !4, null}
!53 = metadata !{i32 28, i32 0, metadata !4, null}
!54 = metadata !{metadata !"int", metadata !55}
!55 = metadata !{metadata !"omnipotent char", metadata !56}
!56 = metadata !{metadata !"Simple C/C++ TBAA"}
!57 = metadata !{i32 29, i32 0, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!59 = metadata !{metadata !"any pointer", metadata !55}
!60 = metadata !{i32 31, i32 0, metadata !58, null}
!61 = metadata !{i32 33, i32 0, metadata !4, null}
!62 = metadata !{i32 34, i32 0, metadata !4, null}
!63 = metadata !{i32 35, i32 0, metadata !4, null}
!64 = metadata !{i32 36, i32 0, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !4, i32 36, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!66 = metadata !{i32 39, i32 0, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !65, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!68 = metadata !{i32 45, i32 0, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !67, i32 39, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!70 = metadata !{i32 46, i32 0, metadata !69, null}
!71 = metadata !{i32 52, i32 0, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !67, i32 46, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!73 = metadata !{i32 38, i32 0, metadata !65, null}
!74 = metadata !{i32 55, i32 0, metadata !4, null}
!75 = metadata !{i32 73, i32 0, metadata !36, null}
!76 = metadata !{i32 74, i32 0, metadata !36, null}
!77 = metadata !{i32 84, i32 0, metadata !36, null}
!78 = metadata !{i32 87, i32 0, metadata !36, null}
!79 = metadata !{i32 88, i32 0, metadata !36, null}
!80 = metadata !{i32 89, i32 0, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !36, i32 88, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!82 = metadata !{i32 91, i32 0, metadata !81, null}
!83 = metadata !{i32 98, i32 0, metadata !36, null}
!84 = metadata !{i32 99, i32 0, metadata !36, null}
!85 = metadata !{i32 100, i32 0, metadata !36, null}
!86 = metadata !{i32 106, i32 0, metadata !36, null}
!87 = metadata !{i32 107, i32 0, metadata !36, null}
!88 = metadata !{i32 108, i32 0, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !36, i32 108, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!90 = metadata !{i32 122, i32 0, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !36, i32 122, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!92 = metadata !{i32 124, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !94, i32 123, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!94 = metadata !{i32 786443, metadata !1, metadata !95, i32 123, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!95 = metadata !{i32 786443, metadata !1, metadata !91, i32 122, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!96 = metadata !{i32 125, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !93, i32 124, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!98 = metadata !{i32 109, i32 0, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !89, i32 108, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!100 = metadata !{i32 110, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !99, i32 109, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!102 = metadata !{i32 112, i32 0, metadata !101, null}
!103 = metadata !{i32 114, i32 0, metadata !99, null}
!104 = metadata !{i32 115, i32 0, metadata !99, null}
!105 = metadata !{i32 123, i32 0, metadata !94, null}
!106 = metadata !{i32 126, i32 0, metadata !97, null}
!107 = metadata !{i32 127, i32 0, metadata !93, null}
!108 = metadata !{i32 128, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !93, i32 127, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_compress.c]
!110 = metadata !{i32 129, i32 0, metadata !109, null}
!111 = metadata !{i32 133, i32 0, metadata !36, null}
!112 = metadata !{i32 139, i32 0, metadata !36, null}
!113 = metadata !{i32 140, i32 0, metadata !36, null}
!114 = metadata !{i32 142, i32 0, metadata !36, null}
