; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [47 x i8] c"\0A fatal error in Tree_init1(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [50 x i8] c"\0A fatal error in Tree_init2(%p,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"\0A fatal error in Tree_init3(%p,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Tree_setFchSibRoot(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Tree_setRoot(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Tree_init1(%struct._Tree* %tree, i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !21), !dbg !59
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !22), !dbg !60
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !61
  %cmp1 = icmp slt i32 %size, 0, !dbg !61
  %or.cond = or i1 %cmp, %cmp1, !dbg !61
  br i1 %or.cond, label %if.then, label %if.end, !dbg !61

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !62, !tbaa !64
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, i32 %size) #5, !dbg !62
  tail call void @exit(i32 -1) #6, !dbg !67
  unreachable, !dbg !67

if.end:                                           ; preds = %entry
  tail call void @Tree_clearData(%struct._Tree* %tree) #5, !dbg !68
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !69
  store i32 %size, i32* %n, align 4, !dbg !69, !tbaa !70
  %cmp2 = icmp sgt i32 %size, 0, !dbg !71
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !71

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32* @IVinit(i32 %size, i32 -1) #5, !dbg !72
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !72
  store i32* %call4, i32** %par, align 8, !dbg !72, !tbaa !64
  %call5 = tail call i32* @IVinit(i32 %size, i32 -1) #5, !dbg !74
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !74
  store i32* %call5, i32** %fch, align 8, !dbg !74, !tbaa !64
  %call6 = tail call i32* @IVinit(i32 %size, i32 -1) #5, !dbg !75
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !75
  store i32* %call6, i32** %sib, align 8, !dbg !75, !tbaa !64
  br label %if.end7, !dbg !76

if.end7:                                          ; preds = %if.then3, %if.end
  ret void, !dbg !77
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Tree_clearData(%struct._Tree*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Tree_init2(%struct._Tree* %tree, i32 %size, i32* %par) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !27), !dbg !78
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !28), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i32* %par}, i64 0, metadata !29), !dbg !80
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !81
  %cmp1 = icmp slt i32 %size, 1, !dbg !81
  %or.cond = or i1 %cmp, %cmp1, !dbg !81
  %cmp3 = icmp eq i32* %par, null, !dbg !81
  %or.cond14 = or i1 %or.cond, %cmp3, !dbg !81
  br i1 %or.cond14, label %if.then, label %if.end, !dbg !81

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !82, !tbaa !64
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, i32 %size, i32* %par) #5, !dbg !82
  tail call void @exit(i32 -1) #6, !dbg !84
  unreachable, !dbg !84

if.end:                                           ; preds = %entry
  tail call void @Tree_init1(%struct._Tree* %tree, i32 %size) #7, !dbg !85
  %par4 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !86
  %1 = load i32** %par4, align 8, !dbg !86, !tbaa !64
  tail call void @IVcopy(i32 %size, i32* %1, i32* %par) #5, !dbg !86
  tail call void @Tree_setFchSibRoot(%struct._Tree* %tree) #7, !dbg !87
  ret void, !dbg !88
}

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @Tree_setFchSibRoot(%struct._Tree* %tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !43), !dbg !89
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !90
  br i1 %cmp, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !91, !tbaa !64
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._Tree* null) #5, !dbg !91
  tail call void @exit(i32 -1) #6, !dbg !93
  unreachable, !dbg !93

if.end:                                           ; preds = %entry
  %n1 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !94
  %1 = load i32* %n1, align 4, !dbg !94, !tbaa !70
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !44), !dbg !94
  %cmp2 = icmp slt i32 %1, 1, !dbg !94
  br i1 %cmp2, label %return, label %for.body.lr.ph.lr.ph, !dbg !94

for.body.lr.ph.lr.ph:                             ; preds = %if.end
  %par5 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !95
  %2 = load i32** %par5, align 8, !dbg !95, !tbaa !64
  tail call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !49), !dbg !95
  %fch6 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !96
  %3 = load i32** %fch6, align 8, !dbg !96, !tbaa !64
  tail call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !48), !dbg !96
  %sib7 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !97
  %4 = load i32** %sib7, align 8, !dbg !97, !tbaa !64
  tail call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !50), !dbg !97
  tail call void @IVfill(i32 %1, i32* %3, i32 -1) #5, !dbg !98
  %5 = load i32** %sib7, align 8, !dbg !99, !tbaa !64
  tail call void @IVfill(i32 %1, i32* %5, i32 -1) #5, !dbg !99
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !45), !dbg !101
  br label %for.body.lr.ph, !dbg !102

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %if.else
  %u.04452.in = phi i32 [ %1, %for.body.lr.ph.lr.ph ], [ %u.046, %if.else ]
  %root.0.ph51 = phi i32 [ -1, %for.body.lr.ph.lr.ph ], [ %u.046, %if.else ]
  %6 = sext i32 %u.04452.in to i64
  br label %for.body, !dbg !102

for.body:                                         ; preds = %for.body.lr.ph, %if.then12
  %indvars.iv = phi i64 [ %6, %for.body.lr.ph ], [ %indvars.iv.next, %if.then12 ]
  %u.046.in = phi i32 [ %u.04452.in, %for.body.lr.ph ], [ %u.046, %if.then12 ]
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !102
  %u.046 = add nsw i32 %u.046.in, -1, !dbg !102
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv.next, !dbg !104
  %7 = load i32* %arrayidx, align 4, !dbg !104, !tbaa !70
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !47), !dbg !104
  %cmp11 = icmp eq i32 %7, -1, !dbg !104
  br i1 %cmp11, label %if.else, label %if.then12, !dbg !104

if.then12:                                        ; preds = %for.body
  %idxprom13 = sext i32 %7 to i64, !dbg !106
  %arrayidx14 = getelementptr inbounds i32* %3, i64 %idxprom13, !dbg !106
  %8 = load i32* %arrayidx14, align 4, !dbg !106, !tbaa !70
  %arrayidx16 = getelementptr inbounds i32* %4, i64 %indvars.iv.next, !dbg !106
  store i32 %8, i32* %arrayidx16, align 4, !dbg !106, !tbaa !70
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !108
  store i32 %9, i32* %arrayidx14, align 4, !dbg !108, !tbaa !70
  %cmp10 = icmp sgt i32 %9, 0, !dbg !102
  br i1 %cmp10, label %for.body, label %for.end, !dbg !102

if.else:                                          ; preds = %for.body
  %arrayidx20 = getelementptr inbounds i32* %4, i64 %indvars.iv.next, !dbg !109
  store i32 %root.0.ph51, i32* %arrayidx20, align 4, !dbg !109, !tbaa !70
  tail call void @llvm.dbg.value(metadata !{i32 %u.046}, i64 0, metadata !45), !dbg !111
  %cmp1045 = icmp sgt i32 %u.046, 0, !dbg !102
  br i1 %cmp1045, label %for.body.lr.ph, label %for.end, !dbg !102

for.end:                                          ; preds = %if.else, %if.then12
  %root.0.ph48 = phi i32 [ %root.0.ph51, %if.then12 ], [ %u.046, %if.else ]
  %root22 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !112
  store i32 %root.0.ph48, i32* %root22, align 4, !dbg !112, !tbaa !70
  br label %return, !dbg !113

return:                                           ; preds = %if.end, %for.end
  ret void, !dbg !113
}

; Function Attrs: nounwind optsize uwtable
define void @Tree_init3(%struct._Tree* %tree, i32 %size, i32* %par, i32* %fch, i32* %sib) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !34), !dbg !114
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !35), !dbg !115
  tail call void @llvm.dbg.value(metadata !{i32* %par}, i64 0, metadata !36), !dbg !116
  tail call void @llvm.dbg.value(metadata !{i32* %fch}, i64 0, metadata !37), !dbg !117
  tail call void @llvm.dbg.value(metadata !{i32* %sib}, i64 0, metadata !38), !dbg !118
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !119
  %cmp1 = icmp slt i32 %size, 1, !dbg !119
  %or.cond = or i1 %cmp, %cmp1, !dbg !119
  %cmp3 = icmp eq i32* %par, null, !dbg !119
  %or.cond28 = or i1 %or.cond, %cmp3, !dbg !119
  %cmp5 = icmp eq i32* %fch, null, !dbg !119
  %or.cond29 = or i1 %or.cond28, %cmp5, !dbg !119
  %cmp7 = icmp eq i32* %sib, null, !dbg !119
  %or.cond30 = or i1 %or.cond29, %cmp7, !dbg !119
  br i1 %or.cond30, label %if.then, label %if.end, !dbg !119

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !120, !tbaa !64
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i32 %size, i32* %par, i32* %fch, i32* %sib) #5, !dbg !120
  tail call void @exit(i32 -1) #6, !dbg !122
  unreachable, !dbg !122

if.end:                                           ; preds = %entry
  tail call void @Tree_init1(%struct._Tree* %tree, i32 %size) #7, !dbg !123
  %par8 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !124
  %1 = load i32** %par8, align 8, !dbg !124, !tbaa !64
  tail call void @IVcopy(i32 %size, i32* %1, i32* %par) #5, !dbg !124
  %fch9 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !125
  %2 = load i32** %fch9, align 8, !dbg !125, !tbaa !64
  tail call void @IVcopy(i32 %size, i32* %2, i32* %fch) #5, !dbg !125
  %sib10 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !126
  %3 = load i32** %sib10, align 8, !dbg !126, !tbaa !64
  tail call void @IVcopy(i32 %size, i32* %3, i32* %sib) #5, !dbg !126
  tail call void @Tree_setRoot(%struct._Tree* %tree) #7, !dbg !127
  ret void, !dbg !128
}

; Function Attrs: nounwind optsize uwtable
define void @Tree_setRoot(%struct._Tree* %tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !53), !dbg !129
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !130
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !130

lor.lhs.false:                                    ; preds = %entry
  %n1 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !130
  %0 = load i32* %n1, align 4, !dbg !130, !tbaa !70
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !54), !dbg !130
  %cmp2 = icmp slt i32 %0, 1, !dbg !130
  br i1 %cmp2, label %if.then, label %for.body.lr.ph, !dbg !130

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !131, !tbaa !64
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !131
  tail call void @exit(i32 -1) #6, !dbg !133
  unreachable, !dbg !133

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !54), !dbg !134
  %par4 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !135
  %2 = load i32** %par4, align 8, !dbg !135, !tbaa !64
  tail call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !57), !dbg !135
  %sib5 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !136
  %3 = load i32** %sib5, align 8, !dbg !136, !tbaa !64
  tail call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !58), !dbg !136
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !55), !dbg !137
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !56), !dbg !138
  br label %for.body, !dbg !138

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %root.026 = phi i32 [ -1, %for.body.lr.ph ], [ %root.1, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv, !dbg !140
  %4 = load i32* %arrayidx, align 4, !dbg !140, !tbaa !70
  %cmp7 = icmp eq i32 %4, -1, !dbg !140
  br i1 %cmp7, label %if.then8, label %for.inc, !dbg !140

if.then8:                                         ; preds = %for.body
  %arrayidx10 = getelementptr inbounds i32* %3, i64 %indvars.iv, !dbg !142
  store i32 %root.026, i32* %arrayidx10, align 4, !dbg !142, !tbaa !70
  tail call void @llvm.dbg.value(metadata !144, i64 0, metadata !55), !dbg !145
  %5 = trunc i64 %indvars.iv to i32, !dbg !146
  br label %for.inc, !dbg !146

for.inc:                                          ; preds = %for.body, %if.then8
  %root.1 = phi i32 [ %5, %if.then8 ], [ %root.026, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !138
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !138
  %exitcond = icmp eq i32 %lftr.wideiv, %0, !dbg !138
  br i1 %exitcond, label %for.end, label %for.body, !dbg !138

for.end:                                          ; preds = %for.inc
  %root12 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !147
  store i32 %root.1, i32* %root12, align 4, !dbg !147, !tbaa !70
  ret void, !dbg !148
}

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !23, metadata !30, metadata !39, metadata !51}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_init1", metadata !"Tree_init1", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Tree*, i32)* @Tree_init1, null, null, metadata !20, i32 17} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 17] [Tree_init1]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14}
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
!20 = metadata !{metadata !21, metadata !22}
!21 = metadata !{i32 786689, metadata !4, metadata !"tree", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 15]
!22 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 33554448, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 16]
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_init2", metadata !"Tree_init2", metadata !"", i32 57, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Tree*, i32, i32*)* @Tree_init2, null, null, metadata !26, i32 61} ; [ DW_TAG_subprogram ] [line 57] [def] [scope 61] [Tree_init2]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !8, metadata !14, metadata !17}
!26 = metadata !{metadata !27, metadata !28, metadata !29}
!27 = metadata !{i32 786689, metadata !23, metadata !"tree", metadata !5, i32 16777274, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 58]
!28 = metadata !{i32 786689, metadata !23, metadata !"size", metadata !5, i32 33554491, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 59]
!29 = metadata !{i32 786689, metadata !23, metadata !"par", metadata !5, i32 50331708, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [par] [line 60]
!30 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_init3", metadata !"Tree_init3", metadata !"", i32 102, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Tree*, i32, i32*, i32*, i32*)* @Tree_init3, null, null, metadata !33, i32 108} ; [ DW_TAG_subprogram ] [line 102] [def] [scope 108] [Tree_init3]
!31 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!32 = metadata !{null, metadata !8, metadata !14, metadata !17, metadata !17, metadata !17}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38}
!34 = metadata !{i32 786689, metadata !30, metadata !"tree", metadata !5, i32 16777319, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 103]
!35 = metadata !{i32 786689, metadata !30, metadata !"size", metadata !5, i32 33554536, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 104]
!36 = metadata !{i32 786689, metadata !30, metadata !"par", metadata !5, i32 50331753, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [par] [line 105]
!37 = metadata !{i32 786689, metadata !30, metadata !"fch", metadata !5, i32 67108970, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fch] [line 106]
!38 = metadata !{i32 786689, metadata !30, metadata !"sib", metadata !5, i32 83886187, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sib] [line 107]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_setFchSibRoot", metadata !"Tree_setFchSibRoot", metadata !"", i32 152, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Tree*)* @Tree_setFchSibRoot, null, null, metadata !42, i32 154} ; [ DW_TAG_subprogram ] [line 152] [def] [scope 154] [Tree_setFchSibRoot]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{null, metadata !8}
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50}
!43 = metadata !{i32 786689, metadata !39, metadata !"tree", metadata !5, i32 16777369, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 153]
!44 = metadata !{i32 786688, metadata !39, metadata !"n", metadata !5, i32 155, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 155]
!45 = metadata !{i32 786688, metadata !39, metadata !"root", metadata !5, i32 155, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root] [line 155]
!46 = metadata !{i32 786688, metadata !39, metadata !"u", metadata !5, i32 155, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 155]
!47 = metadata !{i32 786688, metadata !39, metadata !"v", metadata !5, i32 155, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 155]
!48 = metadata !{i32 786688, metadata !39, metadata !"fch", metadata !5, i32 156, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch] [line 156]
!49 = metadata !{i32 786688, metadata !39, metadata !"par", metadata !5, i32 156, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par] [line 156]
!50 = metadata !{i32 786688, metadata !39, metadata !"sib", metadata !5, i32 156, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib] [line 156]
!51 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_setRoot", metadata !"Tree_setRoot", metadata !"", i32 210, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Tree*)* @Tree_setRoot, null, null, metadata !52, i32 212} ; [ DW_TAG_subprogram ] [line 210] [def] [scope 212] [Tree_setRoot]
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58}
!53 = metadata !{i32 786689, metadata !51, metadata !"tree", metadata !5, i32 16777427, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 211]
!54 = metadata !{i32 786688, metadata !51, metadata !"n", metadata !5, i32 213, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 213]
!55 = metadata !{i32 786688, metadata !51, metadata !"root", metadata !5, i32 213, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root] [line 213]
!56 = metadata !{i32 786688, metadata !51, metadata !"u", metadata !5, i32 213, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 213]
!57 = metadata !{i32 786688, metadata !51, metadata !"par", metadata !5, i32 214, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par] [line 214]
!58 = metadata !{i32 786688, metadata !51, metadata !"sib", metadata !5, i32 214, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib] [line 214]
!59 = metadata !{i32 15, i32 0, metadata !4, null}
!60 = metadata !{i32 16, i32 0, metadata !4, null}
!61 = metadata !{i32 23, i32 0, metadata !4, null}
!62 = metadata !{i32 24, i32 0, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !4, i32 23, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c]
!64 = metadata !{metadata !"any pointer", metadata !65}
!65 = metadata !{metadata !"omnipotent char", metadata !66}
!66 = metadata !{metadata !"Simple C/C++ TBAA"}
!67 = metadata !{i32 26, i32 0, metadata !63, null}
!68 = metadata !{i32 33, i32 0, metadata !4, null}
!69 = metadata !{i32 39, i32 0, metadata !4, null}
!70 = metadata !{metadata !"int", metadata !65}
!71 = metadata !{i32 40, i32 0, metadata !4, null}
!72 = metadata !{i32 41, i32 0, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !4, i32 40, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c]
!74 = metadata !{i32 42, i32 0, metadata !73, null}
!75 = metadata !{i32 43, i32 0, metadata !73, null}
!76 = metadata !{i32 44, i32 0, metadata !73, null}
!77 = metadata !{i32 46, i32 0, metadata !4, null}
!78 = metadata !{i32 58, i32 0, metadata !23, null} ; [ DW_TAG_imported_module ]
!79 = metadata !{i32 59, i32 0, metadata !23, null}
!80 = metadata !{i32 60, i32 0, metadata !23, null}
!81 = metadata !{i32 67, i32 0, metadata !23, null}
!82 = metadata !{i32 68, i32 0, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !23, i32 67, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c]
!84 = metadata !{i32 70, i32 0, metadata !83, null}
!85 = metadata !{i32 77, i32 0, metadata !23, null}
!86 = metadata !{i32 83, i32 0, metadata !23, null}
!87 = metadata !{i32 89, i32 0, metadata !23, null}
!88 = metadata !{i32 91, i32 0, metadata !23, null}
!89 = metadata !{i32 153, i32 0, metadata !39, null}
!90 = metadata !{i32 163, i32 0, metadata !39, null}
!91 = metadata !{i32 164, i32 0, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !39, i32 163, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c]
!93 = metadata !{i32 166, i32 0, metadata !92, null}
!94 = metadata !{i32 168, i32 0, metadata !39, null}
!95 = metadata !{i32 171, i32 0, metadata !39, null}
!96 = metadata !{i32 172, i32 0, metadata !39, null}
!97 = metadata !{i32 173, i32 0, metadata !39, null}
!98 = metadata !{i32 179, i32 0, metadata !39, null}
!99 = metadata !{i32 180, i32 0, metadata !39, null}
!100 = metadata !{i32 -1}
!101 = metadata !{i32 181, i32 0, metadata !39, null}
!102 = metadata !{i32 188, i32 0, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !39, i32 188, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c]
!104 = metadata !{i32 189, i32 0, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !103, i32 188, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c]
!106 = metadata !{i32 190, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !105, i32 189, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c]
!108 = metadata !{i32 191, i32 0, metadata !107, null}
!109 = metadata !{i32 193, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !105, i32 192, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c]
!111 = metadata !{i32 194, i32 0, metadata !110, null}
!112 = metadata !{i32 197, i32 0, metadata !39, null}
!113 = metadata !{i32 199, i32 0, metadata !39, null}
!114 = metadata !{i32 103, i32 0, metadata !30, null}
!115 = metadata !{i32 104, i32 0, metadata !30, null}
!116 = metadata !{i32 105, i32 0, metadata !30, null}
!117 = metadata !{i32 106, i32 0, metadata !30, null}
!118 = metadata !{i32 107, i32 0, metadata !30, null}
!119 = metadata !{i32 114, i32 0, metadata !30, null}
!120 = metadata !{i32 116, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !30, i32 115, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c]
!122 = metadata !{i32 118, i32 0, metadata !121, null}
!123 = metadata !{i32 125, i32 0, metadata !30, null}
!124 = metadata !{i32 131, i32 0, metadata !30, null}
!125 = metadata !{i32 132, i32 0, metadata !30, null}
!126 = metadata !{i32 133, i32 0, metadata !30, null}
!127 = metadata !{i32 139, i32 0, metadata !30, null}
!128 = metadata !{i32 141, i32 0, metadata !30, null}
!129 = metadata !{i32 211, i32 0, metadata !51, null}
!130 = metadata !{i32 220, i32 0, metadata !51, null}
!131 = metadata !{i32 221, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !51, i32 220, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c]
!133 = metadata !{i32 223, i32 0, metadata !132, null}
!134 = metadata !{i32 225, i32 0, metadata !51, null}
!135 = metadata !{i32 226, i32 0, metadata !51, null}
!136 = metadata !{i32 227, i32 0, metadata !51, null}
!137 = metadata !{i32 228, i32 0, metadata !51, null}
!138 = metadata !{i32 234, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !51, i32 234, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c]
!140 = metadata !{i32 235, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !139, i32 234, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c]
!142 = metadata !{i32 236, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !141, i32 235, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_init.c]
!144 = metadata !{i32 undef}
!145 = metadata !{i32 237, i32 0, metadata !143, null}
!146 = metadata !{i32 238, i32 0, metadata !143, null}
!147 = metadata !{i32 240, i32 0, metadata !51, null}
!148 = metadata !{i32 242, i32 0, metadata !51, null}
