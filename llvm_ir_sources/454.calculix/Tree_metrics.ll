; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [59 x i8] c"\0A fatal error in Tree_setSubtreeImetric(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Tree_setDepthImetric(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Tree_setDepthDmetric(%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_setHeightImetric(%p,%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_setHeightDmetric(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @Tree_setSubtreeImetric(%struct._Tree* %tree, %struct._IV* %vmetricIV) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !30), !dbg !97
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %vmetricIV}, i64 0, metadata !31), !dbg !98
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !99
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !99

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !99
  %0 = load i32* %n, align 4, !dbg !99, !tbaa !100
  %cmp1 = icmp slt i32 %0, 1, !dbg !99
  %cmp3 = icmp eq %struct._IV* %vmetricIV, null, !dbg !99
  %or.cond = or i1 %cmp1, %cmp3, !dbg !99
  br i1 %or.cond, label %if.then, label %lor.lhs.false4, !dbg !99

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @IV_size(%struct._IV* %vmetricIV) #5, !dbg !103
  %cmp6 = icmp eq i32 %0, %call, !dbg !103
  br i1 %cmp6, label %lor.lhs.false7, label %if.then, !dbg !103

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32* @IV_entries(%struct._IV* %vmetricIV) #5, !dbg !104
  tail call void @llvm.dbg.value(metadata !{i32* %call8}, i64 0, metadata !35), !dbg !104
  %cmp9 = icmp eq i32* %call8, null, !dbg !104
  br i1 %cmp9, label %if.then, label %if.end, !dbg !104

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !105, !tbaa !107
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, %struct._IV* %vmetricIV) #5, !dbg !105
  tail call void @exit(i32 -1) #6, !dbg !108
  unreachable, !dbg !108

if.end:                                           ; preds = %lor.lhs.false7
  %call11 = tail call %struct._IV* @IV_new() #5, !dbg !109
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call11}, i64 0, metadata !36), !dbg !109
  %2 = load i32* %n, align 4, !dbg !110, !tbaa !100
  tail call void @IV_init(%struct._IV* %call11, i32 %2, i32* null) #5, !dbg !110
  %call13 = tail call i32* @IV_entries(%struct._IV* %call11) #5, !dbg !111
  tail call void @llvm.dbg.value(metadata !{i32* %call13}, i64 0, metadata !34), !dbg !111
  %call14 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !112
  tail call void @llvm.dbg.value(metadata !{i32 %call14}, i64 0, metadata !33), !dbg !112
  %cmp1557 = icmp eq i32 %call14, -1, !dbg !112
  br i1 %cmp1557, label %for.end31, label %for.body.lr.ph, !dbg !112

for.body.lr.ph:                                   ; preds = %if.end
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !114
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !114
  br label %for.body, !dbg !112

for.body:                                         ; preds = %for.body.lr.ph, %for.inc29
  %v.058 = phi i32 [ %call14, %for.body.lr.ph ], [ %call30, %for.inc29 ]
  %idxprom = sext i32 %v.058 to i64, !dbg !117
  %arrayidx = getelementptr inbounds i32* %call8, i64 %idxprom, !dbg !117
  %3 = load i32* %arrayidx, align 4, !dbg !117, !tbaa !100
  %arrayidx17 = getelementptr inbounds i32* %call13, i64 %idxprom, !dbg !117
  store i32 %3, i32* %arrayidx17, align 4, !dbg !117, !tbaa !100
  %4 = load i32** %fch, align 8, !dbg !114, !tbaa !107
  %arrayidx19 = getelementptr inbounds i32* %4, i64 %idxprom, !dbg !114
  %u.054 = load i32* %arrayidx19, align 4, !dbg !114
  %cmp2155 = icmp eq i32 %u.054, -1, !dbg !114
  br i1 %cmp2155, label %for.inc29, label %for.body22.lr.ph, !dbg !114

for.body22.lr.ph:                                 ; preds = %for.body
  %.pre = load i32** %sib, align 8, !dbg !114, !tbaa !107
  br label %for.body22, !dbg !114

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %5 = phi i32 [ %3, %for.body22.lr.ph ], [ %add, %for.body22 ], !dbg !118
  %u.056 = phi i32 [ %u.054, %for.body22.lr.ph ], [ %u.0, %for.body22 ]
  %idxprom23 = sext i32 %u.056 to i64, !dbg !118
  %arrayidx24 = getelementptr inbounds i32* %call13, i64 %idxprom23, !dbg !118
  %6 = load i32* %arrayidx24, align 4, !dbg !118, !tbaa !100
  %add = add nsw i32 %5, %6, !dbg !118
  store i32 %add, i32* %arrayidx17, align 4, !dbg !118, !tbaa !100
  %arrayidx28 = getelementptr inbounds i32* %.pre, i64 %idxprom23, !dbg !114
  %u.0 = load i32* %arrayidx28, align 4, !dbg !114
  %cmp21 = icmp eq i32 %u.0, -1, !dbg !114
  br i1 %cmp21, label %for.inc29, label %for.body22, !dbg !114

for.inc29:                                        ; preds = %for.body22, %for.body
  %call30 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.058) #5, !dbg !120
  tail call void @llvm.dbg.value(metadata !{i32 %call30}, i64 0, metadata !33), !dbg !120
  %cmp15 = icmp eq i32 %call30, -1, !dbg !112
  br i1 %cmp15, label %for.end31, label %for.body, !dbg !112

for.end31:                                        ; preds = %for.inc29, %if.end
  ret %struct._IV* %call11, !dbg !121
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #1

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #1

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #1

; Function Attrs: optsize
declare i32 @Tree_postOTfirst(%struct._Tree*) #1

; Function Attrs: optsize
declare i32 @Tree_postOTnext(%struct._Tree*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct._DV* @Tree_setSubtreeDmetric(%struct._Tree* %tree, %struct._DV* %vmetricDV) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !52), !dbg !122
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %vmetricDV}, i64 0, metadata !53), !dbg !123
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !124
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !124

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !124
  %0 = load i32* %n, align 4, !dbg !124, !tbaa !100
  %cmp1 = icmp slt i32 %0, 1, !dbg !124
  %cmp3 = icmp eq %struct._DV* %vmetricDV, null, !dbg !124
  %or.cond = or i1 %cmp1, %cmp3, !dbg !124
  br i1 %or.cond, label %if.then, label %lor.lhs.false4, !dbg !124

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @DV_size(%struct._DV* %vmetricDV) #5, !dbg !125
  %cmp6 = icmp eq i32 %0, %call, !dbg !125
  br i1 %cmp6, label %lor.lhs.false7, label %if.then, !dbg !125

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call double* @DV_entries(%struct._DV* %vmetricDV) #5, !dbg !126
  tail call void @llvm.dbg.value(metadata !{double* %call8}, i64 0, metadata !57), !dbg !126
  %cmp9 = icmp eq double* %call8, null, !dbg !126
  br i1 %cmp9, label %if.then, label %if.end, !dbg !126

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !127, !tbaa !107
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, %struct._DV* %vmetricDV) #5, !dbg !127
  tail call void @exit(i32 -1) #6, !dbg !129
  unreachable, !dbg !129

if.end:                                           ; preds = %lor.lhs.false7
  %call11 = tail call %struct._DV* @DV_new() #5, !dbg !130
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %call11}, i64 0, metadata !58), !dbg !130
  %2 = load i32* %n, align 4, !dbg !131, !tbaa !100
  tail call void @DV_init(%struct._DV* %call11, i32 %2, double* null) #5, !dbg !131
  %call13 = tail call double* @DV_entries(%struct._DV* %call11) #5, !dbg !132
  tail call void @llvm.dbg.value(metadata !{double* %call13}, i64 0, metadata !56), !dbg !132
  %call14 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !133
  tail call void @llvm.dbg.value(metadata !{i32 %call14}, i64 0, metadata !55), !dbg !133
  %cmp1557 = icmp eq i32 %call14, -1, !dbg !133
  br i1 %cmp1557, label %for.end31, label %for.body.lr.ph, !dbg !133

for.body.lr.ph:                                   ; preds = %if.end
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !135
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !135
  br label %for.body, !dbg !133

for.body:                                         ; preds = %for.body.lr.ph, %for.inc29
  %v.058 = phi i32 [ %call14, %for.body.lr.ph ], [ %call30, %for.inc29 ]
  %idxprom = sext i32 %v.058 to i64, !dbg !138
  %arrayidx = getelementptr inbounds double* %call8, i64 %idxprom, !dbg !138
  %3 = load double* %arrayidx, align 8, !dbg !138, !tbaa !139
  %arrayidx17 = getelementptr inbounds double* %call13, i64 %idxprom, !dbg !138
  store double %3, double* %arrayidx17, align 8, !dbg !138, !tbaa !139
  %4 = load i32** %fch, align 8, !dbg !135, !tbaa !107
  %arrayidx19 = getelementptr inbounds i32* %4, i64 %idxprom, !dbg !135
  %u.054 = load i32* %arrayidx19, align 4, !dbg !135
  %cmp2155 = icmp eq i32 %u.054, -1, !dbg !135
  br i1 %cmp2155, label %for.inc29, label %for.body22.lr.ph, !dbg !135

for.body22.lr.ph:                                 ; preds = %for.body
  %.pre = load i32** %sib, align 8, !dbg !135, !tbaa !107
  br label %for.body22, !dbg !135

for.body22:                                       ; preds = %for.body22.lr.ph, %for.body22
  %5 = phi double [ %3, %for.body22.lr.ph ], [ %add, %for.body22 ], !dbg !140
  %u.056 = phi i32 [ %u.054, %for.body22.lr.ph ], [ %u.0, %for.body22 ]
  %idxprom23 = sext i32 %u.056 to i64, !dbg !140
  %arrayidx24 = getelementptr inbounds double* %call13, i64 %idxprom23, !dbg !140
  %6 = load double* %arrayidx24, align 8, !dbg !140, !tbaa !139
  %add = fadd double %6, %5, !dbg !140
  store double %add, double* %arrayidx17, align 8, !dbg !140, !tbaa !139
  %arrayidx28 = getelementptr inbounds i32* %.pre, i64 %idxprom23, !dbg !135
  %u.0 = load i32* %arrayidx28, align 4, !dbg !135
  %cmp21 = icmp eq i32 %u.0, -1, !dbg !135
  br i1 %cmp21, label %for.inc29, label %for.body22, !dbg !135

for.inc29:                                        ; preds = %for.body22, %for.body
  %call30 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.058) #5, !dbg !142
  tail call void @llvm.dbg.value(metadata !{i32 %call30}, i64 0, metadata !55), !dbg !142
  %cmp15 = icmp eq i32 %call30, -1, !dbg !133
  br i1 %cmp15, label %for.end31, label %for.body, !dbg !133

for.end31:                                        ; preds = %for.inc29, %if.end
  ret %struct._DV* %call11, !dbg !143
}

; Function Attrs: optsize
declare i32 @DV_size(%struct._DV*) #1

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #1

; Function Attrs: optsize
declare %struct._DV* @DV_new() #1

; Function Attrs: optsize
declare void @DV_init(%struct._DV*, i32, double*) #1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @Tree_setDepthImetric(%struct._Tree* %tree, %struct._IV* %vmetricIV) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !61), !dbg !144
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %vmetricIV}, i64 0, metadata !62), !dbg !145
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !146
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !146

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !146
  %0 = load i32* %n, align 4, !dbg !146, !tbaa !100
  %cmp1 = icmp slt i32 %0, 1, !dbg !146
  %cmp3 = icmp eq %struct._IV* %vmetricIV, null, !dbg !146
  %or.cond = or i1 %cmp1, %cmp3, !dbg !146
  br i1 %or.cond, label %if.then, label %lor.lhs.false4, !dbg !146

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @IV_size(%struct._IV* %vmetricIV) #5, !dbg !147
  %cmp6 = icmp eq i32 %0, %call, !dbg !147
  br i1 %cmp6, label %lor.lhs.false7, label %if.then, !dbg !147

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32* @IV_entries(%struct._IV* %vmetricIV) #5, !dbg !148
  tail call void @llvm.dbg.value(metadata !{i32* %call8}, i64 0, metadata !66), !dbg !148
  %cmp9 = icmp eq i32* %call8, null, !dbg !148
  br i1 %cmp9, label %if.then, label %if.end, !dbg !148

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !149, !tbaa !107
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, %struct._IV* %vmetricIV) #5, !dbg !149
  tail call void @exit(i32 -1) #6, !dbg !151
  unreachable, !dbg !151

if.end:                                           ; preds = %lor.lhs.false7
  %call11 = tail call %struct._IV* @IV_new() #5, !dbg !152
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call11}, i64 0, metadata !67), !dbg !152
  %2 = load i32* %n, align 4, !dbg !153, !tbaa !100
  tail call void @IV_init(%struct._IV* %call11, i32 %2, i32* null) #5, !dbg !153
  %call13 = tail call i32* @IV_entries(%struct._IV* %call11) #5, !dbg !154
  tail call void @llvm.dbg.value(metadata !{i32* %call13}, i64 0, metadata !65), !dbg !154
  %call14 = tail call i32 @Tree_preOTfirst(%struct._Tree* %tree) #5, !dbg !155
  tail call void @llvm.dbg.value(metadata !{i32 %call14}, i64 0, metadata !63), !dbg !155
  %cmp1547 = icmp eq i32 %call14, -1, !dbg !155
  br i1 %cmp1547, label %for.end, label %for.body.lr.ph, !dbg !155

for.body.lr.ph:                                   ; preds = %if.end
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !157
  br label %for.body, !dbg !155

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %u.048 = phi i32 [ %call14, %for.body.lr.ph ], [ %call27, %for.inc ]
  %idxprom = sext i32 %u.048 to i64, !dbg !159
  %arrayidx = getelementptr inbounds i32* %call8, i64 %idxprom, !dbg !159
  %3 = load i32* %arrayidx, align 4, !dbg !159, !tbaa !100
  %arrayidx17 = getelementptr inbounds i32* %call13, i64 %idxprom, !dbg !159
  store i32 %3, i32* %arrayidx17, align 4, !dbg !159, !tbaa !100
  %4 = load i32** %par, align 8, !dbg !157, !tbaa !107
  %arrayidx19 = getelementptr inbounds i32* %4, i64 %idxprom, !dbg !157
  %5 = load i32* %arrayidx19, align 4, !dbg !157, !tbaa !100
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !64), !dbg !157
  %cmp20 = icmp eq i32 %5, -1, !dbg !157
  br i1 %cmp20, label %for.inc, label %if.then21, !dbg !157

if.then21:                                        ; preds = %for.body
  %idxprom22 = sext i32 %5 to i64, !dbg !160
  %arrayidx23 = getelementptr inbounds i32* %call13, i64 %idxprom22, !dbg !160
  %6 = load i32* %arrayidx23, align 4, !dbg !160, !tbaa !100
  %add = add nsw i32 %6, %3, !dbg !160
  store i32 %add, i32* %arrayidx17, align 4, !dbg !160, !tbaa !100
  br label %for.inc, !dbg !162

for.inc:                                          ; preds = %for.body, %if.then21
  %call27 = tail call i32 @Tree_preOTnext(%struct._Tree* %tree, i32 %u.048) #5, !dbg !163
  tail call void @llvm.dbg.value(metadata !{i32 %call27}, i64 0, metadata !63), !dbg !163
  %cmp15 = icmp eq i32 %call27, -1, !dbg !155
  br i1 %cmp15, label %for.end, label %for.body, !dbg !155

for.end:                                          ; preds = %for.inc, %if.end
  ret %struct._IV* %call11, !dbg !164
}

; Function Attrs: optsize
declare i32 @Tree_preOTfirst(%struct._Tree*) #1

; Function Attrs: optsize
declare i32 @Tree_preOTnext(%struct._Tree*, i32) #1

; Function Attrs: nounwind optsize uwtable
define %struct._DV* @Tree_setDepthDmetric(%struct._Tree* %tree, %struct._DV* %vmetricDV) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !70), !dbg !165
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %vmetricDV}, i64 0, metadata !71), !dbg !166
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !167
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !167

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !167
  %0 = load i32* %n, align 4, !dbg !167, !tbaa !100
  %cmp1 = icmp slt i32 %0, 1, !dbg !167
  %cmp3 = icmp eq %struct._DV* %vmetricDV, null, !dbg !167
  %or.cond = or i1 %cmp1, %cmp3, !dbg !167
  br i1 %or.cond, label %if.then, label %lor.lhs.false4, !dbg !167

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @DV_size(%struct._DV* %vmetricDV) #5, !dbg !168
  %cmp6 = icmp eq i32 %0, %call, !dbg !168
  br i1 %cmp6, label %lor.lhs.false7, label %if.then, !dbg !168

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call double* @DV_entries(%struct._DV* %vmetricDV) #5, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %call8}, i64 0, metadata !75), !dbg !169
  %cmp9 = icmp eq double* %call8, null, !dbg !169
  br i1 %cmp9, label %if.then, label %if.end, !dbg !169

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !170, !tbaa !107
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, %struct._DV* %vmetricDV) #5, !dbg !170
  tail call void @exit(i32 -1) #6, !dbg !172
  unreachable, !dbg !172

if.end:                                           ; preds = %lor.lhs.false7
  %call11 = tail call %struct._DV* @DV_new() #5, !dbg !173
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %call11}, i64 0, metadata !76), !dbg !173
  %2 = load i32* %n, align 4, !dbg !174, !tbaa !100
  tail call void @DV_init(%struct._DV* %call11, i32 %2, double* null) #5, !dbg !174
  %call13 = tail call double* @DV_entries(%struct._DV* %call11) #5, !dbg !175
  tail call void @llvm.dbg.value(metadata !{double* %call13}, i64 0, metadata !74), !dbg !175
  %call14 = tail call i32 @Tree_preOTfirst(%struct._Tree* %tree) #5, !dbg !176
  tail call void @llvm.dbg.value(metadata !{i32 %call14}, i64 0, metadata !72), !dbg !176
  %cmp1547 = icmp eq i32 %call14, -1, !dbg !176
  br i1 %cmp1547, label %for.end, label %for.body.lr.ph, !dbg !176

for.body.lr.ph:                                   ; preds = %if.end
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !178
  br label %for.body, !dbg !176

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %u.048 = phi i32 [ %call14, %for.body.lr.ph ], [ %call27, %for.inc ]
  %idxprom = sext i32 %u.048 to i64, !dbg !180
  %arrayidx = getelementptr inbounds double* %call8, i64 %idxprom, !dbg !180
  %3 = load double* %arrayidx, align 8, !dbg !180, !tbaa !139
  %arrayidx17 = getelementptr inbounds double* %call13, i64 %idxprom, !dbg !180
  store double %3, double* %arrayidx17, align 8, !dbg !180, !tbaa !139
  %4 = load i32** %par, align 8, !dbg !178, !tbaa !107
  %arrayidx19 = getelementptr inbounds i32* %4, i64 %idxprom, !dbg !178
  %5 = load i32* %arrayidx19, align 4, !dbg !178, !tbaa !100
  tail call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !73), !dbg !178
  %cmp20 = icmp eq i32 %5, -1, !dbg !178
  br i1 %cmp20, label %for.inc, label %if.then21, !dbg !178

if.then21:                                        ; preds = %for.body
  %idxprom22 = sext i32 %5 to i64, !dbg !181
  %arrayidx23 = getelementptr inbounds double* %call13, i64 %idxprom22, !dbg !181
  %6 = load double* %arrayidx23, align 8, !dbg !181, !tbaa !139
  %add = fadd double %3, %6, !dbg !181
  store double %add, double* %arrayidx17, align 8, !dbg !181, !tbaa !139
  br label %for.inc, !dbg !183

for.inc:                                          ; preds = %for.body, %if.then21
  %call27 = tail call i32 @Tree_preOTnext(%struct._Tree* %tree, i32 %u.048) #5, !dbg !184
  tail call void @llvm.dbg.value(metadata !{i32 %call27}, i64 0, metadata !72), !dbg !184
  %cmp15 = icmp eq i32 %call27, -1, !dbg !176
  br i1 %cmp15, label %for.end, label %for.body, !dbg !176

for.end:                                          ; preds = %for.inc, %if.end
  ret %struct._DV* %call11, !dbg !185
}

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @Tree_setHeightImetric(%struct._Tree* %tree, %struct._IV* %vmetricIV) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !79), !dbg !186
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %vmetricIV}, i64 0, metadata !80), !dbg !187
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !188
  br i1 %cmp, label %if.then.thread, label %lor.lhs.false, !dbg !188

if.then.thread:                                   ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !189, !tbaa !107
  %call1069 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._Tree* null, %struct._IV* %vmetricIV) #5, !dbg !189
  br label %if.end, !dbg !191

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !188
  %1 = load i32* %n, align 4, !dbg !188, !tbaa !100
  %cmp1 = icmp slt i32 %1, 1, !dbg !188
  %cmp3 = icmp eq %struct._IV* %vmetricIV, null, !dbg !188
  %or.cond = or i1 %cmp1, %cmp3, !dbg !188
  br i1 %or.cond, label %if.then.thread70, label %lor.lhs.false4, !dbg !188

if.then.thread70:                                 ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !189, !tbaa !107
  %call1071 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._Tree* %tree, %struct._IV* %vmetricIV) #5, !dbg !189
  br label %if.then12, !dbg !191

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @IV_size(%struct._IV* %vmetricIV) #5, !dbg !192
  %cmp6 = icmp eq i32 %1, %call, !dbg !192
  br i1 %cmp6, label %lor.lhs.false7, label %if.then, !dbg !192

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32* @IV_entries(%struct._IV* %vmetricIV) #5, !dbg !193
  tail call void @llvm.dbg.value(metadata !{i32* %call8}, i64 0, metadata !85), !dbg !193
  %cmp9 = icmp eq i32* %call8, null, !dbg !193
  br i1 %cmp9, label %if.then, label %if.end18, !dbg !193

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false7
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !189, !tbaa !107
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._Tree* %tree, %struct._IV* %vmetricIV) #5, !dbg !189
  br label %if.then12, !dbg !191

if.then12:                                        ; preds = %if.then, %if.then.thread70
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !194, !tbaa !107
  %call13 = tail call i32 @Tree_writeForHumanEye(%struct._Tree* %tree, %struct._IO_FILE* %4) #5, !dbg !194
  br label %if.end, !dbg !196

if.end:                                           ; preds = %if.then.thread, %if.then12
  %cmp14 = icmp eq %struct._IV* %vmetricIV, null, !dbg !197
  br i1 %cmp14, label %if.end17, label %if.then15, !dbg !197

if.then15:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !198, !tbaa !107
  %call16 = tail call i32 @IV_writeForHumanEye(%struct._IV* %vmetricIV, %struct._IO_FILE* %5) #5, !dbg !198
  br label %if.end17, !dbg !200

if.end17:                                         ; preds = %if.end, %if.then15
  tail call void @exit(i32 -1) #6, !dbg !201
  unreachable, !dbg !201

if.end18:                                         ; preds = %lor.lhs.false7
  %call19 = tail call %struct._IV* @IV_new() #5, !dbg !202
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call19}, i64 0, metadata !86), !dbg !202
  %6 = load i32* %n, align 4, !dbg !203, !tbaa !100
  tail call void @IV_init(%struct._IV* %call19, i32 %6, i32* null) #5, !dbg !203
  %call21 = tail call i32* @IV_entries(%struct._IV* %call19) #5, !dbg !204
  tail call void @llvm.dbg.value(metadata !{i32* %call21}, i64 0, metadata !84), !dbg !204
  %call22 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !205
  tail call void @llvm.dbg.value(metadata !{i32 %call22}, i64 0, metadata !82), !dbg !205
  %cmp2376 = icmp eq i32 %call22, -1, !dbg !205
  br i1 %cmp2376, label %for.end42, label %for.body.lr.ph, !dbg !205

for.body.lr.ph:                                   ; preds = %if.end18
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !207
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !207
  br label %for.body, !dbg !205

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %v.077 = phi i32 [ %call22, %for.body.lr.ph ], [ %call41, %for.end ]
  %idxprom = sext i32 %v.077 to i64, !dbg !207
  %7 = load i32** %fch, align 8, !dbg !207, !tbaa !107
  %arrayidx = getelementptr inbounds i32* %7, i64 %idxprom, !dbg !207
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !83), !dbg !207
  %u.072 = load i32* %arrayidx, align 4, !dbg !207
  %cmp2573 = icmp eq i32 %u.072, -1, !dbg !207
  br i1 %cmp2573, label %for.end, label %for.body26.lr.ph, !dbg !207

for.body26.lr.ph:                                 ; preds = %for.body
  %8 = load i32** %sib, align 8, !dbg !207, !tbaa !107
  br label %for.body26, !dbg !207

for.body26:                                       ; preds = %for.body26.lr.ph, %for.body26
  %u.075 = phi i32 [ %u.072, %for.body26.lr.ph ], [ %u.0, %for.body26 ]
  %val.074 = phi i32 [ 0, %for.body26.lr.ph ], [ %.val.0, %for.body26 ]
  %idxprom27 = sext i32 %u.075 to i64, !dbg !210
  %arrayidx28 = getelementptr inbounds i32* %call21, i64 %idxprom27, !dbg !210
  %9 = load i32* %arrayidx28, align 4, !dbg !210, !tbaa !100
  %cmp29 = icmp slt i32 %val.074, %9, !dbg !210
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !83), !dbg !212
  %.val.0 = select i1 %cmp29, i32 %9, i32 %val.074, !dbg !210
  %arrayidx35 = getelementptr inbounds i32* %8, i64 %idxprom27, !dbg !207
  %u.0 = load i32* %arrayidx35, align 4, !dbg !207
  %cmp25 = icmp eq i32 %u.0, -1, !dbg !207
  br i1 %cmp25, label %for.end, label %for.body26, !dbg !207

for.end:                                          ; preds = %for.body26, %for.body
  %val.0.lcssa = phi i32 [ 0, %for.body ], [ %.val.0, %for.body26 ]
  %arrayidx37 = getelementptr inbounds i32* %call8, i64 %idxprom, !dbg !214
  %10 = load i32* %arrayidx37, align 4, !dbg !214, !tbaa !100
  %add = add nsw i32 %10, %val.0.lcssa, !dbg !214
  %arrayidx39 = getelementptr inbounds i32* %call21, i64 %idxprom, !dbg !214
  store i32 %add, i32* %arrayidx39, align 4, !dbg !214, !tbaa !100
  %call41 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.077) #5, !dbg !215
  tail call void @llvm.dbg.value(metadata !{i32 %call41}, i64 0, metadata !82), !dbg !215
  %cmp23 = icmp eq i32 %call41, -1, !dbg !205
  br i1 %cmp23, label %for.end42, label %for.body, !dbg !205

for.end42:                                        ; preds = %for.end, %if.end18
  ret %struct._IV* %call19, !dbg !216
}

; Function Attrs: optsize
declare i32 @Tree_writeForHumanEye(%struct._Tree*, %struct._IO_FILE*) #1

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #1

; Function Attrs: nounwind optsize uwtable
define %struct._DV* @Tree_setHeightDmetric(%struct._Tree* %tree, %struct._DV* %vmetricDV) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !89), !dbg !217
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %vmetricDV}, i64 0, metadata !90), !dbg !218
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !219
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !219

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !219
  %0 = load i32* %n, align 4, !dbg !219, !tbaa !100
  %cmp1 = icmp slt i32 %0, 1, !dbg !219
  %cmp3 = icmp eq %struct._DV* %vmetricDV, null, !dbg !219
  %or.cond = or i1 %cmp1, %cmp3, !dbg !219
  br i1 %or.cond, label %if.then, label %lor.lhs.false4, !dbg !219

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @DV_size(%struct._DV* %vmetricDV) #5, !dbg !220
  %cmp6 = icmp eq i32 %0, %call, !dbg !220
  br i1 %cmp6, label %lor.lhs.false7, label %if.then, !dbg !220

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call double* @DV_entries(%struct._DV* %vmetricDV) #5, !dbg !221
  tail call void @llvm.dbg.value(metadata !{double* %call8}, i64 0, metadata !95), !dbg !221
  %cmp9 = icmp eq double* %call8, null, !dbg !221
  br i1 %cmp9, label %if.then, label %if.end, !dbg !221

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false7, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !222, !tbaa !107
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree, %struct._DV* %vmetricDV) #5, !dbg !222
  tail call void @exit(i32 -1) #6, !dbg !224
  unreachable, !dbg !224

if.end:                                           ; preds = %lor.lhs.false7
  %call11 = tail call %struct._DV* @DV_new() #5, !dbg !225
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %call11}, i64 0, metadata !96), !dbg !225
  %2 = load i32* %n, align 4, !dbg !226, !tbaa !100
  tail call void @DV_init(%struct._DV* %call11, i32 %2, double* null) #5, !dbg !226
  %call13 = tail call double* @DV_entries(%struct._DV* %call11) #5, !dbg !227
  tail call void @llvm.dbg.value(metadata !{double* %call13}, i64 0, metadata !94), !dbg !227
  %call14 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #5, !dbg !228
  tail call void @llvm.dbg.value(metadata !{i32 %call14}, i64 0, metadata !92), !dbg !228
  %cmp1565 = icmp eq i32 %call14, -1, !dbg !228
  br i1 %cmp1565, label %for.end37, label %for.body.lr.ph, !dbg !228

for.body.lr.ph:                                   ; preds = %if.end
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !230
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !230
  br label %for.body, !dbg !228

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %v.066 = phi i32 [ %call14, %for.body.lr.ph ], [ %call36, %for.end ]
  %idxprom = sext i32 %v.066 to i64, !dbg !230
  %3 = load i32** %fch, align 8, !dbg !230, !tbaa !107
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !230
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !93), !dbg !230
  %u.060 = load i32* %arrayidx, align 4, !dbg !230
  %cmp1761 = icmp eq i32 %u.060, -1, !dbg !230
  br i1 %cmp1761, label %for.end, label %for.body18.lr.ph, !dbg !230

for.body18.lr.ph:                                 ; preds = %for.body
  %4 = load i32** %sib, align 8, !dbg !230, !tbaa !107
  br label %for.body18, !dbg !230

for.body18:                                       ; preds = %for.body18.lr.ph, %for.inc
  %conv64 = phi double [ 0.000000e+00, %for.body18.lr.ph ], [ %conv, %for.inc ]
  %u.063 = phi i32 [ %u.060, %for.body18.lr.ph ], [ %u.0, %for.inc ]
  %val.062 = phi i32 [ 0, %for.body18.lr.ph ], [ %val.1, %for.inc ]
  %idxprom19 = sext i32 %u.063 to i64, !dbg !233
  %arrayidx20 = getelementptr inbounds double* %call13, i64 %idxprom19, !dbg !233
  %5 = load double* %arrayidx20, align 8, !dbg !233, !tbaa !139
  %cmp21 = fcmp olt double %conv64, %5, !dbg !233
  br i1 %cmp21, label %if.then23, label %for.inc, !dbg !233

if.then23:                                        ; preds = %for.body18
  %conv26 = fptosi double %5 to i32, !dbg !235
  tail call void @llvm.dbg.value(metadata !{i32 %conv26}, i64 0, metadata !93), !dbg !235
  br label %for.inc, !dbg !237

for.inc:                                          ; preds = %for.body18, %if.then23
  %val.1 = phi i32 [ %conv26, %if.then23 ], [ %val.062, %for.body18 ]
  %arrayidx29 = getelementptr inbounds i32* %4, i64 %idxprom19, !dbg !230
  %u.0 = load i32* %arrayidx29, align 4, !dbg !230
  %cmp17 = icmp eq i32 %u.0, -1, !dbg !230
  %conv = sitofp i32 %val.1 to double, !dbg !233
  br i1 %cmp17, label %for.end, label %for.body18, !dbg !230

for.end:                                          ; preds = %for.inc, %for.body
  %conv.lcssa = phi double [ 0.000000e+00, %for.body ], [ %conv, %for.inc ]
  %arrayidx32 = getelementptr inbounds double* %call8, i64 %idxprom, !dbg !238
  %6 = load double* %arrayidx32, align 8, !dbg !238, !tbaa !139
  %add = fadd double %conv.lcssa, %6, !dbg !238
  %arrayidx34 = getelementptr inbounds double* %call13, i64 %idxprom, !dbg !238
  store double %add, double* %arrayidx34, align 8, !dbg !238, !tbaa !139
  %call36 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.066) #5, !dbg !239
  tail call void @llvm.dbg.value(metadata !{i32 %call36}, i64 0, metadata !92), !dbg !239
  %cmp15 = icmp eq i32 %call36, -1, !dbg !228
  br i1 %cmp15, label %for.end37, label %for.body, !dbg !228

for.end37:                                        ; preds = %for.end, %if.end
  ret %struct._DV* %call11, !dbg !240
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !37, metadata !59, metadata !68, metadata !77, metadata !87}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_setSubtreeImetric", metadata !"Tree_setSubtreeImetric", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._Tree*, %struct._IV*)* @Tree_setSubtreeImetric, null, null, metadata !29, i32 19} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 19] [Tree_setSubtreeImetric]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !19, metadata !8}
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
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36}
!30 = metadata !{i32 786689, metadata !4, metadata !"tree", metadata !5, i32 16777233, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 17]
!31 = metadata !{i32 786689, metadata !4, metadata !"vmetricIV", metadata !5, i32 33554450, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vmetricIV] [line 18]
!32 = metadata !{i32 786688, metadata !4, metadata !"u", metadata !5, i32 20, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 20]
!33 = metadata !{i32 786688, metadata !4, metadata !"v", metadata !5, i32 20, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 20]
!34 = metadata !{i32 786688, metadata !4, metadata !"tmetric", metadata !5, i32 21, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmetric] [line 21]
!35 = metadata !{i32 786688, metadata !4, metadata !"vmetric", metadata !5, i32 21, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vmetric] [line 21]
!36 = metadata !{i32 786688, metadata !4, metadata !"tmetricIV", metadata !5, i32 22, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmetricIV] [line 22]
!37 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_setSubtreeDmetric", metadata !"Tree_setSubtreeDmetric", metadata !"", i32 60, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._DV* (%struct._Tree*, %struct._DV*)* @Tree_setSubtreeDmetric, null, null, metadata !51, i32 63} ; [ DW_TAG_subprogram ] [line 60] [def] [scope 63] [Tree_setSubtreeDmetric]
!38 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !19, metadata !40}
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!41 = metadata !{i32 786454, metadata !1, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!42 = metadata !{i32 786451, metadata !43, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !44, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!43 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!44 = metadata !{metadata !45, metadata !46, metadata !47, metadata !48}
!45 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!46 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!47 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!48 = metadata !{i32 786445, metadata !43, metadata !42, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!50 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!51 = metadata !{metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58}
!52 = metadata !{i32 786689, metadata !37, metadata !"tree", metadata !5, i32 16777277, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 61]
!53 = metadata !{i32 786689, metadata !37, metadata !"vmetricDV", metadata !5, i32 33554494, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vmetricDV] [line 62]
!54 = metadata !{i32 786688, metadata !37, metadata !"u", metadata !5, i32 64, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 64]
!55 = metadata !{i32 786688, metadata !37, metadata !"v", metadata !5, i32 64, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 64]
!56 = metadata !{i32 786688, metadata !37, metadata !"tmetric", metadata !5, i32 65, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmetric] [line 65]
!57 = metadata !{i32 786688, metadata !37, metadata !"vmetric", metadata !5, i32 65, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vmetric] [line 65]
!58 = metadata !{i32 786688, metadata !37, metadata !"tmetricDV", metadata !5, i32 66, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmetricDV] [line 66]
!59 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_setDepthImetric", metadata !"Tree_setDepthImetric", metadata !"", i32 107, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._Tree*, %struct._IV*)* @Tree_setDepthImetric, null, null, metadata !60, i32 110} ; [ DW_TAG_subprogram ] [line 107] [def] [scope 110] [Tree_setDepthImetric]
!60 = metadata !{metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67}
!61 = metadata !{i32 786689, metadata !59, metadata !"tree", metadata !5, i32 16777324, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 108]
!62 = metadata !{i32 786689, metadata !59, metadata !"vmetricIV", metadata !5, i32 33554541, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vmetricIV] [line 109]
!63 = metadata !{i32 786688, metadata !59, metadata !"u", metadata !5, i32 111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 111]
!64 = metadata !{i32 786688, metadata !59, metadata !"v", metadata !5, i32 111, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 111]
!65 = metadata !{i32 786688, metadata !59, metadata !"dmetric", metadata !5, i32 112, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmetric] [line 112]
!66 = metadata !{i32 786688, metadata !59, metadata !"vmetric", metadata !5, i32 112, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vmetric] [line 112]
!67 = metadata !{i32 786688, metadata !59, metadata !"dmetricIV", metadata !5, i32 113, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmetricIV] [line 113]
!68 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_setDepthDmetric", metadata !"Tree_setDepthDmetric", metadata !"", i32 154, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._DV* (%struct._Tree*, %struct._DV*)* @Tree_setDepthDmetric, null, null, metadata !69, i32 157} ; [ DW_TAG_subprogram ] [line 154] [def] [scope 157] [Tree_setDepthDmetric]
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76}
!70 = metadata !{i32 786689, metadata !68, metadata !"tree", metadata !5, i32 16777371, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 155]
!71 = metadata !{i32 786689, metadata !68, metadata !"vmetricDV", metadata !5, i32 33554588, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vmetricDV] [line 156]
!72 = metadata !{i32 786688, metadata !68, metadata !"u", metadata !5, i32 158, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 158]
!73 = metadata !{i32 786688, metadata !68, metadata !"v", metadata !5, i32 158, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 158]
!74 = metadata !{i32 786688, metadata !68, metadata !"dmetric", metadata !5, i32 159, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmetric] [line 159]
!75 = metadata !{i32 786688, metadata !68, metadata !"vmetric", metadata !5, i32 159, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vmetric] [line 159]
!76 = metadata !{i32 786688, metadata !68, metadata !"dmetricDV", metadata !5, i32 160, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dmetricDV] [line 160]
!77 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_setHeightImetric", metadata !"Tree_setHeightImetric", metadata !"", i32 201, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._Tree*, %struct._IV*)* @Tree_setHeightImetric, null, null, metadata !78, i32 204} ; [ DW_TAG_subprogram ] [line 201] [def] [scope 204] [Tree_setHeightImetric]
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86}
!79 = metadata !{i32 786689, metadata !77, metadata !"tree", metadata !5, i32 16777418, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 202]
!80 = metadata !{i32 786689, metadata !77, metadata !"vmetricIV", metadata !5, i32 33554635, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vmetricIV] [line 203]
!81 = metadata !{i32 786688, metadata !77, metadata !"u", metadata !5, i32 205, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 205]
!82 = metadata !{i32 786688, metadata !77, metadata !"v", metadata !5, i32 205, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 205]
!83 = metadata !{i32 786688, metadata !77, metadata !"val", metadata !5, i32 205, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 205]
!84 = metadata !{i32 786688, metadata !77, metadata !"hmetric", metadata !5, i32 206, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmetric] [line 206]
!85 = metadata !{i32 786688, metadata !77, metadata !"vmetric", metadata !5, i32 206, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vmetric] [line 206]
!86 = metadata !{i32 786688, metadata !77, metadata !"hmetricIV", metadata !5, i32 207, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmetricIV] [line 207]
!87 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_setHeightDmetric", metadata !"Tree_setHeightDmetric", metadata !"", i32 256, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._DV* (%struct._Tree*, %struct._DV*)* @Tree_setHeightDmetric, null, null, metadata !88, i32 259} ; [ DW_TAG_subprogram ] [line 256] [def] [scope 259] [Tree_setHeightDmetric]
!88 = metadata !{metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96}
!89 = metadata !{i32 786689, metadata !87, metadata !"tree", metadata !5, i32 16777473, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 257]
!90 = metadata !{i32 786689, metadata !87, metadata !"vmetricDV", metadata !5, i32 33554690, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vmetricDV] [line 258]
!91 = metadata !{i32 786688, metadata !87, metadata !"u", metadata !5, i32 260, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 260]
!92 = metadata !{i32 786688, metadata !87, metadata !"v", metadata !5, i32 260, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 260]
!93 = metadata !{i32 786688, metadata !87, metadata !"val", metadata !5, i32 260, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 260]
!94 = metadata !{i32 786688, metadata !87, metadata !"hmetric", metadata !5, i32 261, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmetric] [line 261]
!95 = metadata !{i32 786688, metadata !87, metadata !"vmetric", metadata !5, i32 261, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vmetric] [line 261]
!96 = metadata !{i32 786688, metadata !87, metadata !"hmetricDV", metadata !5, i32 262, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmetricDV] [line 262]
!97 = metadata !{i32 17, i32 0, metadata !4, null}
!98 = metadata !{i32 18, i32 0, metadata !4, null}
!99 = metadata !{i32 28, i32 0, metadata !4, null}
!100 = metadata !{metadata !"int", metadata !101}
!101 = metadata !{metadata !"omnipotent char", metadata !102}
!102 = metadata !{metadata !"Simple C/C++ TBAA"}
!103 = metadata !{i32 30, i32 0, metadata !4, null}
!104 = metadata !{i32 31, i32 0, metadata !4, null}
!105 = metadata !{i32 32, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !4, i32 31, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!107 = metadata !{metadata !"any pointer", metadata !101}
!108 = metadata !{i32 34, i32 0, metadata !106, null}
!109 = metadata !{i32 36, i32 0, metadata !4, null}
!110 = metadata !{i32 37, i32 0, metadata !4, null}
!111 = metadata !{i32 38, i32 0, metadata !4, null}
!112 = metadata !{i32 39, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !4, i32 39, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!114 = metadata !{i32 43, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !116, i32 43, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!116 = metadata !{i32 786443, metadata !1, metadata !113, i32 41, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!117 = metadata !{i32 42, i32 0, metadata !116, null}
!118 = metadata !{i32 44, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !115, i32 43, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!120 = metadata !{i32 41, i32 0, metadata !113, null}
!121 = metadata !{i32 47, i32 0, metadata !4, null}
!122 = metadata !{i32 61, i32 0, metadata !37, null}
!123 = metadata !{i32 62, i32 0, metadata !37, null}
!124 = metadata !{i32 72, i32 0, metadata !37, null}
!125 = metadata !{i32 74, i32 0, metadata !37, null}
!126 = metadata !{i32 75, i32 0, metadata !37, null}
!127 = metadata !{i32 76, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !37, i32 75, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!129 = metadata !{i32 78, i32 0, metadata !128, null}
!130 = metadata !{i32 80, i32 0, metadata !37, null}
!131 = metadata !{i32 81, i32 0, metadata !37, null}
!132 = metadata !{i32 82, i32 0, metadata !37, null}
!133 = metadata !{i32 83, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !37, i32 83, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!135 = metadata !{i32 87, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !137, i32 87, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!137 = metadata !{i32 786443, metadata !1, metadata !134, i32 85, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!138 = metadata !{i32 86, i32 0, metadata !137, null}
!139 = metadata !{metadata !"double", metadata !101}
!140 = metadata !{i32 88, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !136, i32 87, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!142 = metadata !{i32 85, i32 0, metadata !134, null}
!143 = metadata !{i32 91, i32 0, metadata !37, null}
!144 = metadata !{i32 108, i32 0, metadata !59, null}
!145 = metadata !{i32 109, i32 0, metadata !59, null}
!146 = metadata !{i32 119, i32 0, metadata !59, null}
!147 = metadata !{i32 121, i32 0, metadata !59, null}
!148 = metadata !{i32 122, i32 0, metadata !59, null}
!149 = metadata !{i32 123, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !59, i32 122, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!151 = metadata !{i32 125, i32 0, metadata !150, null}
!152 = metadata !{i32 127, i32 0, metadata !59, null}
!153 = metadata !{i32 128, i32 0, metadata !59, null}
!154 = metadata !{i32 129, i32 0, metadata !59, null}
!155 = metadata !{i32 130, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !59, i32 130, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!157 = metadata !{i32 134, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !156, i32 132, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!159 = metadata !{i32 133, i32 0, metadata !158, null}
!160 = metadata !{i32 135, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !158, i32 134, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!162 = metadata !{i32 136, i32 0, metadata !161, null}
!163 = metadata !{i32 132, i32 0, metadata !156, null}
!164 = metadata !{i32 138, i32 0, metadata !59, null}
!165 = metadata !{i32 155, i32 0, metadata !68, null}
!166 = metadata !{i32 156, i32 0, metadata !68, null}
!167 = metadata !{i32 166, i32 0, metadata !68, null}
!168 = metadata !{i32 168, i32 0, metadata !68, null}
!169 = metadata !{i32 169, i32 0, metadata !68, null}
!170 = metadata !{i32 170, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !68, i32 169, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!172 = metadata !{i32 172, i32 0, metadata !171, null}
!173 = metadata !{i32 174, i32 0, metadata !68, null}
!174 = metadata !{i32 175, i32 0, metadata !68, null}
!175 = metadata !{i32 176, i32 0, metadata !68, null}
!176 = metadata !{i32 177, i32 0, metadata !177, null}
!177 = metadata !{i32 786443, metadata !1, metadata !68, i32 177, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!178 = metadata !{i32 181, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !177, i32 179, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!180 = metadata !{i32 180, i32 0, metadata !179, null}
!181 = metadata !{i32 182, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !179, i32 181, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!183 = metadata !{i32 183, i32 0, metadata !182, null}
!184 = metadata !{i32 179, i32 0, metadata !177, null}
!185 = metadata !{i32 185, i32 0, metadata !68, null}
!186 = metadata !{i32 202, i32 0, metadata !77, null}
!187 = metadata !{i32 203, i32 0, metadata !77, null}
!188 = metadata !{i32 213, i32 0, metadata !77, null}
!189 = metadata !{i32 217, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !77, i32 216, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!191 = metadata !{i32 219, i32 0, metadata !190, null}
!192 = metadata !{i32 215, i32 0, metadata !77, null}
!193 = metadata !{i32 216, i32 0, metadata !77, null}
!194 = metadata !{i32 220, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !190, i32 219, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!196 = metadata !{i32 221, i32 0, metadata !195, null}
!197 = metadata !{i32 222, i32 0, metadata !190, null}
!198 = metadata !{i32 223, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !190, i32 222, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!200 = metadata !{i32 224, i32 0, metadata !199, null}
!201 = metadata !{i32 225, i32 0, metadata !190, null}
!202 = metadata !{i32 227, i32 0, metadata !77, null}
!203 = metadata !{i32 228, i32 0, metadata !77, null}
!204 = metadata !{i32 229, i32 0, metadata !77, null}
!205 = metadata !{i32 230, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !77, i32 230, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!207 = metadata !{i32 233, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !209, i32 233, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!209 = metadata !{i32 786443, metadata !1, metadata !206, i32 232, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!210 = metadata !{i32 234, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !208, i32 233, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!212 = metadata !{i32 235, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !211, i32 234, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!214 = metadata !{i32 238, i32 0, metadata !209, null}
!215 = metadata !{i32 232, i32 0, metadata !206, null}
!216 = metadata !{i32 240, i32 0, metadata !77, null}
!217 = metadata !{i32 257, i32 0, metadata !87, null}
!218 = metadata !{i32 258, i32 0, metadata !87, null}
!219 = metadata !{i32 268, i32 0, metadata !87, null}
!220 = metadata !{i32 270, i32 0, metadata !87, null}
!221 = metadata !{i32 271, i32 0, metadata !87, null}
!222 = metadata !{i32 272, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !87, i32 271, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!224 = metadata !{i32 274, i32 0, metadata !223, null}
!225 = metadata !{i32 276, i32 0, metadata !87, null}
!226 = metadata !{i32 277, i32 0, metadata !87, null}
!227 = metadata !{i32 278, i32 0, metadata !87, null}
!228 = metadata !{i32 279, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !87, i32 279, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!230 = metadata !{i32 282, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !232, i32 282, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!232 = metadata !{i32 786443, metadata !1, metadata !229, i32 281, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!233 = metadata !{i32 283, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !231, i32 282, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!235 = metadata !{i32 284, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !234, i32 283, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_metrics.c]
!237 = metadata !{i32 285, i32 0, metadata !236, null}
!238 = metadata !{i32 287, i32 0, metadata !232, null}
!239 = metadata !{i32 281, i32 0, metadata !229, null}
!240 = metadata !{i32 289, i32 0, metadata !87, null}
