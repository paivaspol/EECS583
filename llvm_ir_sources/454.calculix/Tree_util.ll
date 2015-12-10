; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [50 x i8] c"\0A fatal error in Tree_postOTfirst(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"\0A fatal error in Tree_postOTnext(%p,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A fatal error in Tree_preOTfirst(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in Tree_preOTnext(%p,%d)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [46 x i8] c"\0A fatal error in Tree_nleaves(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Tree_nroots(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [48 x i8] c"\0A fatal error in Tree_nchild(%p,%d)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [56 x i8] c"\0A fatal error in Tree_nchild(%p,%d)\0A v = %d, size = %d\0A\00", align 1
@.str8 = private unnamed_addr constant [47 x i8] c"\0A fatal error in Tree_nchildIV(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Tree_height(%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [48 x i8] c"\0A fatal error in Tree_maxNchild(%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [45 x i8] c"\0A fatal error in Tree_sizeOf(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_postOTfirst(%struct._Tree* %tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !21), !dbg !93
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !94
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !94

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !94
  %0 = load i32* %n, align 4, !dbg !94, !tbaa !95
  %cmp1 = icmp slt i32 %0, 1, !dbg !94
  br i1 %cmp1, label %if.then, label %if.end, !dbg !94

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !98, !tbaa !100
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !98
  tail call void @exit(i32 -1) #6, !dbg !101
  unreachable, !dbg !101

if.end:                                           ; preds = %lor.lhs.false
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !102
  %2 = load i32* %root, align 4, !dbg !102, !tbaa !95
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !22), !dbg !102
  %cmp2 = icmp eq i32 %2, -1, !dbg !102
  br i1 %cmp2, label %if.end8, label %while.cond.preheader, !dbg !102

while.cond.preheader:                             ; preds = %if.end
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !103
  %3 = load i32** %fch, align 8, !dbg !103, !tbaa !100
  br label %while.cond, !dbg !103

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %v.0 = phi i32 [ %4, %while.cond ], [ %2, %while.cond.preheader ]
  %idxprom = sext i32 %v.0 to i64, !dbg !103
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !103
  %4 = load i32* %arrayidx, align 4, !dbg !103, !tbaa !95
  %cmp4 = icmp eq i32 %4, -1, !dbg !103
  br i1 %cmp4, label %if.end8, label %while.cond, !dbg !103

if.end8:                                          ; preds = %while.cond, %if.end
  %v.1 = phi i32 [ -1, %if.end ], [ %v.0, %while.cond ]
  ret i32 %v.1, !dbg !105
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !27), !dbg !106
  tail call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !28), !dbg !107
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !108
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !108

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !108
  %0 = load i32* %n, align 4, !dbg !108, !tbaa !95
  %notlhs = icmp sgt i32 %0, 0, !dbg !108
  %notrhs = icmp sgt i32 %v, -1, !dbg !108
  %or.cond.not = and i1 %notrhs, %notlhs, !dbg !108
  %cmp6 = icmp sgt i32 %0, %v, !dbg !108
  %or.cond35 = and i1 %or.cond.not, %cmp6, !dbg !108
  br i1 %or.cond35, label %if.end, label %if.then, !dbg !108

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !109, !tbaa !100
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, i32 %v) #5, !dbg !109
  tail call void @exit(i32 -1) #6, !dbg !111
  unreachable, !dbg !111

if.end:                                           ; preds = %lor.lhs.false
  %idxprom = sext i32 %v to i64, !dbg !112
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !112
  %2 = load i32** %sib, align 8, !dbg !112, !tbaa !100
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !112
  %3 = load i32* %arrayidx, align 4, !dbg !112, !tbaa !95
  %cmp7 = icmp eq i32 %3, -1, !dbg !112
  br i1 %cmp7, label %if.else, label %while.cond.preheader, !dbg !112

while.cond.preheader:                             ; preds = %if.end
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !113
  %4 = load i32** %fch, align 8, !dbg !113, !tbaa !100
  br label %while.cond, !dbg !113

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %v.addr.0 = phi i32 [ %5, %while.cond ], [ %3, %while.cond.preheader ]
  %idxprom12 = sext i32 %v.addr.0 to i64, !dbg !113
  %arrayidx13 = getelementptr inbounds i32* %4, i64 %idxprom12, !dbg !113
  %5 = load i32* %arrayidx13, align 4, !dbg !113, !tbaa !95
  %cmp14 = icmp eq i32 %5, -1, !dbg !113
  br i1 %cmp14, label %if.end20, label %while.cond, !dbg !113

if.else:                                          ; preds = %if.end
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !115
  %6 = load i32** %par, align 8, !dbg !115, !tbaa !100
  %arrayidx19 = getelementptr inbounds i32* %6, i64 %idxprom, !dbg !115
  %7 = load i32* %arrayidx19, align 4, !dbg !115, !tbaa !95
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !28), !dbg !115
  br label %if.end20

if.end20:                                         ; preds = %while.cond, %if.else
  %v.addr.1 = phi i32 [ %7, %if.else ], [ %v.addr.0, %while.cond ]
  ret i32 %v.addr.1, !dbg !117
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_preOTfirst(%struct._Tree* %tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !31), !dbg !118
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !119
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !119

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !119
  %0 = load i32* %n, align 4, !dbg !119, !tbaa !95
  %cmp1 = icmp slt i32 %0, 1, !dbg !119
  br i1 %cmp1, label %if.then, label %if.end, !dbg !119

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !120, !tbaa !100
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !120
  tail call void @exit(i32 -1) #6, !dbg !122
  unreachable, !dbg !122

if.end:                                           ; preds = %lor.lhs.false
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !123
  %2 = load i32* %root, align 4, !dbg !123, !tbaa !95
  ret i32 %2, !dbg !123
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_preOTnext(%struct._Tree* %tree, i32 %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !34), !dbg !124
  tail call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !35), !dbg !125
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !126
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !126

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !126
  %0 = load i32* %n, align 4, !dbg !126, !tbaa !95
  %notlhs = icmp sgt i32 %0, 0, !dbg !126
  %notrhs = icmp sgt i32 %v, -1, !dbg !126
  %or.cond.not = and i1 %notrhs, %notlhs, !dbg !126
  %cmp6 = icmp sgt i32 %0, %v, !dbg !126
  %or.cond41 = and i1 %or.cond.not, %cmp6, !dbg !126
  br i1 %or.cond41, label %if.end, label %if.then, !dbg !126

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !127, !tbaa !100
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._Tree* %tree, i32 %v) #5, !dbg !127
  tail call void @exit(i32 -1) #6, !dbg !129
  unreachable, !dbg !129

if.end:                                           ; preds = %lor.lhs.false
  %idxprom = sext i32 %v to i64, !dbg !130
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !130
  %2 = load i32** %fch, align 8, !dbg !130, !tbaa !100
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !130
  %3 = load i32* %arrayidx, align 4, !dbg !130, !tbaa !95
  %cmp7 = icmp eq i32 %3, -1, !dbg !130
  br i1 %cmp7, label %while.cond.preheader, label %if.end24, !dbg !130

while.cond.preheader:                             ; preds = %if.end
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !131
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !131
  %4 = load i32** %sib, align 8, !dbg !131, !tbaa !100
  br label %while.cond, !dbg !131

while.cond:                                       ; preds = %while.cond.preheader, %land.rhs
  %v.addr.0 = phi i32 [ %7, %land.rhs ], [ %v, %while.cond.preheader ]
  %idxprom12 = sext i32 %v.addr.0 to i64, !dbg !131
  %arrayidx13 = getelementptr inbounds i32* %4, i64 %idxprom12, !dbg !131
  %5 = load i32* %arrayidx13, align 4, !dbg !131, !tbaa !95
  %cmp14 = icmp eq i32 %5, -1, !dbg !131
  br i1 %cmp14, label %land.rhs, label %if.end24, !dbg !131

land.rhs:                                         ; preds = %while.cond
  %6 = load i32** %par, align 8, !dbg !131, !tbaa !100
  %arrayidx16 = getelementptr inbounds i32* %6, i64 %idxprom12, !dbg !131
  %7 = load i32* %arrayidx16, align 4, !dbg !131, !tbaa !95
  %cmp17 = icmp eq i32 %7, -1, !dbg !131
  br i1 %cmp17, label %if.end24, label %while.cond

if.end24:                                         ; preds = %while.cond, %land.rhs, %if.end
  %v.addr.1 = phi i32 [ %3, %if.end ], [ -1, %land.rhs ], [ %5, %while.cond ]
  ret i32 %v.addr.1, !dbg !133
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_nleaves(%struct._Tree* %tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !38), !dbg !134
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !135
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !135

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !135
  %0 = load i32* %n, align 4, !dbg !135, !tbaa !95
  %cmp1 = icmp slt i32 %0, 1, !dbg !135
  br i1 %cmp1, label %if.then, label %for.body.lr.ph, !dbg !135

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !136
  %1 = load i32** %fch, align 8, !dbg !136, !tbaa !100
  br label %for.body, !dbg !139

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !140, !tbaa !100
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([46 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !140
  tail call void @exit(i32 -1) #6, !dbg !142
  unreachable, !dbg !142

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %nleaf.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.nleaf.0, %for.body ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv, !dbg !136
  %3 = load i32* %arrayidx, align 4, !dbg !136, !tbaa !95
  %cmp4 = icmp eq i32 %3, -1, !dbg !136
  %inc = zext i1 %cmp4 to i32, !dbg !136
  %inc.nleaf.0 = add nsw i32 %inc, %nleaf.016, !dbg !136
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !139
  %4 = trunc i64 %indvars.iv.next to i32, !dbg !139
  %cmp3 = icmp slt i32 %4, %0, !dbg !139
  br i1 %cmp3, label %for.body, label %for.end, !dbg !139

for.end:                                          ; preds = %for.body
  ret i32 %inc.nleaf.0, !dbg !143
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_nroots(%struct._Tree* %tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !43), !dbg !144
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !145
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !145

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !145
  %0 = load i32* %n, align 4, !dbg !145, !tbaa !95
  %cmp1 = icmp slt i32 %0, 1, !dbg !145
  br i1 %cmp1, label %if.then, label %for.body.lr.ph, !dbg !145

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !146
  %1 = load i32** %par, align 8, !dbg !146, !tbaa !100
  br label %for.body, !dbg !149

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !150, !tbaa !100
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([45 x i8]* @.str5, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !150
  tail call void @exit(i32 -1) #6, !dbg !152
  unreachable, !dbg !152

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %nroot.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.nroot.0, %for.body ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv, !dbg !146
  %3 = load i32* %arrayidx, align 4, !dbg !146, !tbaa !95
  %cmp4 = icmp eq i32 %3, -1, !dbg !146
  %inc = zext i1 %cmp4 to i32, !dbg !146
  %inc.nroot.0 = add nsw i32 %inc, %nroot.016, !dbg !146
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !149
  %4 = trunc i64 %indvars.iv.next to i32, !dbg !149
  %cmp3 = icmp slt i32 %4, %0, !dbg !149
  br i1 %cmp3, label %for.body, label %for.end, !dbg !149

for.end:                                          ; preds = %for.body
  ret i32 %inc.nroot.0, !dbg !153
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_nchild(%struct._Tree* %tree, i32 %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !48), !dbg !154
  tail call void @llvm.dbg.value(metadata !{i32 %v}, i64 0, metadata !49), !dbg !155
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !156
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !156

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !156
  %0 = load i32* %n, align 4, !dbg !156, !tbaa !95
  %cmp1 = icmp slt i32 %0, 1, !dbg !156
  br i1 %cmp1, label %if.then, label %if.end, !dbg !156

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !157, !tbaa !100
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str6, i64 0, i64 0), %struct._Tree* %tree, i32 %v) #5, !dbg !157
  tail call void @exit(i32 -1) #6, !dbg !159
  unreachable, !dbg !159

if.end:                                           ; preds = %lor.lhs.false
  %cmp2 = icmp sgt i32 %v, -1, !dbg !160
  %cmp5 = icmp sgt i32 %0, %v, !dbg !160
  %or.cond = and i1 %cmp2, %cmp5, !dbg !160
  br i1 %or.cond, label %if.end9, label %if.then6, !dbg !160

if.then6:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !161, !tbaa !100
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([56 x i8]* @.str7, i64 0, i64 0), %struct._Tree* %tree, i32 %v, i32 %v, i32 %0) #5, !dbg !161
  tail call void @exit(i32 -1) #6, !dbg !163
  unreachable, !dbg !163

if.end9:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !50), !dbg !164
  %idxprom = sext i32 %v to i64, !dbg !165
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !165
  %3 = load i32** %fch, align 8, !dbg !165, !tbaa !100
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !165
  %w.026 = load i32* %arrayidx, align 4, !dbg !165
  %cmp1027 = icmp eq i32 %w.026, -1, !dbg !165
  br i1 %cmp1027, label %for.end, label %for.body.lr.ph, !dbg !165

for.body.lr.ph:                                   ; preds = %if.end9
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !165
  %4 = load i32** %sib, align 8, !dbg !165, !tbaa !100
  br label %for.body, !dbg !165

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %w.029 = phi i32 [ %w.026, %for.body.lr.ph ], [ %w.0, %for.body ]
  %nchild.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %inc = add nsw i32 %nchild.028, 1, !dbg !167
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !50), !dbg !167
  %idxprom11 = sext i32 %w.029 to i64, !dbg !165
  %arrayidx12 = getelementptr inbounds i32* %4, i64 %idxprom11, !dbg !165
  %w.0 = load i32* %arrayidx12, align 4, !dbg !165
  %cmp10 = icmp eq i32 %w.0, -1, !dbg !165
  br i1 %cmp10, label %for.end, label %for.body, !dbg !165

for.end:                                          ; preds = %for.body, %if.end9
  %nchild.0.lcssa = phi i32 [ 0, %if.end9 ], [ %inc, %for.body ]
  ret i32 %nchild.0.lcssa, !dbg !169
}

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @Tree_nchildIV(%struct._Tree* %tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !65), !dbg !170
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !171
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !171

lor.lhs.false:                                    ; preds = %entry
  %n1 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !171
  %0 = load i32* %n1, align 4, !dbg !171, !tbaa !95
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !66), !dbg !171
  %cmp2 = icmp slt i32 %0, 1, !dbg !171
  br i1 %cmp2, label %if.then, label %for.body.lr.ph, !dbg !171

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !172, !tbaa !100
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([47 x i8]* @.str8, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !172
  tail call void @exit(i32 -1) #6, !dbg !174
  unreachable, !dbg !174

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %call3 = tail call %struct._IV* @IV_new() #5, !dbg !175
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call3}, i64 0, metadata !71), !dbg !175
  tail call void @IV_init(%struct._IV* %call3, i32 %0, i32* null) #5, !dbg !176
  tail call void @IV_fill(%struct._IV* %call3, i32 0) #5, !dbg !177
  %par4 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !178
  %2 = load i32** %par4, align 8, !dbg !178, !tbaa !100
  tail call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !70), !dbg !178
  %call5 = tail call i32* @IV_entries(%struct._IV* %call3) #5, !dbg !179
  tail call void @llvm.dbg.value(metadata !{i32* %call5}, i64 0, metadata !69), !dbg !179
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !67), !dbg !180
  br label %for.body, !dbg !180

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv, !dbg !182
  %3 = load i32* %arrayidx, align 4, !dbg !182, !tbaa !95
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !68), !dbg !182
  %cmp7 = icmp eq i32 %3, -1, !dbg !182
  br i1 %cmp7, label %for.inc, label %if.then8, !dbg !182

if.then8:                                         ; preds = %for.body
  %idxprom9 = sext i32 %3 to i64, !dbg !184
  %arrayidx10 = getelementptr inbounds i32* %call5, i64 %idxprom9, !dbg !184
  %4 = load i32* %arrayidx10, align 4, !dbg !184, !tbaa !95
  %inc = add nsw i32 %4, 1, !dbg !184
  store i32 %inc, i32* %arrayidx10, align 4, !dbg !184, !tbaa !95
  br label %for.inc, !dbg !186

for.inc:                                          ; preds = %for.body, %if.then8
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !180
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !180
  %exitcond = icmp eq i32 %lftr.wideiv, %0, !dbg !180
  br i1 %exitcond, label %for.end, label %for.body, !dbg !180

for.end:                                          ; preds = %for.inc
  ret %struct._IV* %call3, !dbg !187
}

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_height(%struct._Tree* %tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !74), !dbg !188
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !189
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !189

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !189
  %0 = load i32* %n, align 4, !dbg !189, !tbaa !95
  %cmp1 = icmp slt i32 %0, 1, !dbg !189
  br i1 %cmp1, label %if.then, label %if.end, !dbg !189

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !190, !tbaa !100
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([45 x i8]* @.str9, i64 0, i64 0), %struct._Tree* %tree) #5, !dbg !190
  tail call void @exit(i32 -1) #6, !dbg !192
  unreachable, !dbg !192

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32* @IVinit(i32 %0, i32 1) #5, !dbg !193
  tail call void @llvm.dbg.value(metadata !{i32* %call3}, i64 0, metadata !78), !dbg !193
  %call4 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #7, !dbg !194
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !76), !dbg !194
  %cmp595 = icmp eq i32 %call4, -1, !dbg !194
  br i1 %cmp595, label %if.end.for.end30_crit_edge, label %for.body.lr.ph, !dbg !194

if.end.for.end30_crit_edge:                       ; preds = %if.end
  %sib34.pre = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !196
  br label %for.end30, !dbg !194

for.body.lr.ph:                                   ; preds = %if.end
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !198
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !200
  br label %for.body, !dbg !194

for.body:                                         ; preds = %for.body.lr.ph, %if.end25
  %v.096 = phi i32 [ %call4, %for.body.lr.ph ], [ %call29, %if.end25 ]
  %idxprom = sext i32 %v.096 to i64, !dbg !198
  %2 = load i32** %fch, align 8, !dbg !198, !tbaa !100
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom, !dbg !198
  %3 = load i32* %arrayidx, align 4, !dbg !198, !tbaa !95
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !75), !dbg !198
  %cmp6 = icmp eq i32 %3, -1, !dbg !198
  br i1 %cmp6, label %if.end25, label %if.else, !dbg !198

if.else:                                          ; preds = %for.body
  %idxprom8 = sext i32 %3 to i64, !dbg !203
  %arrayidx9 = getelementptr inbounds i32* %call3, i64 %idxprom8, !dbg !203
  %4 = load i32* %arrayidx9, align 4, !dbg !203, !tbaa !95
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !77), !dbg !203
  %5 = load i32** %sib, align 8, !dbg !200, !tbaa !100
  %arrayidx11 = getelementptr inbounds i32* %5, i64 %idxprom8, !dbg !200
  %u.090 = load i32* %arrayidx11, align 4, !dbg !200
  %cmp1391 = icmp eq i32 %u.090, -1, !dbg !200
  br i1 %cmp1391, label %for.end, label %for.body14, !dbg !200

for.body14:                                       ; preds = %if.else, %for.body14
  %u.093 = phi i32 [ %u.0, %for.body14 ], [ %u.090, %if.else ]
  %vheight.092 = phi i32 [ %.vheight.0, %for.body14 ], [ %4, %if.else ]
  %idxprom15 = sext i32 %u.093 to i64, !dbg !204
  %arrayidx16 = getelementptr inbounds i32* %call3, i64 %idxprom15, !dbg !204
  %6 = load i32* %arrayidx16, align 4, !dbg !204, !tbaa !95
  %cmp17 = icmp slt i32 %vheight.092, %6, !dbg !204
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !77), !dbg !206
  %.vheight.0 = select i1 %cmp17, i32 %6, i32 %vheight.092, !dbg !204
  %arrayidx24 = getelementptr inbounds i32* %5, i64 %idxprom15, !dbg !200
  %u.0 = load i32* %arrayidx24, align 4, !dbg !200
  %cmp13 = icmp eq i32 %u.0, -1, !dbg !200
  br i1 %cmp13, label %for.end, label %for.body14, !dbg !200

for.end:                                          ; preds = %for.body14, %if.else
  %vheight.0.lcssa = phi i32 [ %4, %if.else ], [ %.vheight.0, %for.body14 ]
  %inc = add nsw i32 %vheight.0.lcssa, 1, !dbg !208
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !77), !dbg !208
  br label %if.end25

if.end25:                                         ; preds = %for.body, %for.end
  %vheight.2 = phi i32 [ %inc, %for.end ], [ 1, %for.body ]
  %arrayidx27 = getelementptr inbounds i32* %call3, i64 %idxprom, !dbg !209
  store i32 %vheight.2, i32* %arrayidx27, align 4, !dbg !209, !tbaa !95
  %call29 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.096) #7, !dbg !210
  tail call void @llvm.dbg.value(metadata !{i32 %call29}, i64 0, metadata !76), !dbg !210
  %cmp5 = icmp eq i32 %call29, -1, !dbg !194
  br i1 %cmp5, label %for.end30, label %for.body, !dbg !194

for.end30:                                        ; preds = %if.end25, %if.end.for.end30_crit_edge
  %sib34.pre-phi = phi i32** [ %sib34.pre, %if.end.for.end30_crit_edge ], [ %sib, %if.end25 ], !dbg !196
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !211
  %7 = load i32* %root, align 4, !dbg !211, !tbaa !95
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !76), !dbg !211
  %idxprom31 = sext i32 %7 to i64, !dbg !212
  %arrayidx32 = getelementptr inbounds i32* %call3, i64 %idxprom31, !dbg !212
  %8 = load i32* %arrayidx32, align 4, !dbg !212, !tbaa !95
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !77), !dbg !212
  %9 = load i32** %sib34.pre-phi, align 8, !dbg !196, !tbaa !100
  %arrayidx35 = getelementptr inbounds i32* %9, i64 %idxprom31, !dbg !196
  %v.186 = load i32* %arrayidx35, align 4, !dbg !196
  %cmp3787 = icmp eq i32 %v.186, -1, !dbg !196
  br i1 %cmp3787, label %for.end50, label %for.body38, !dbg !196

for.body38:                                       ; preds = %for.end30, %for.body38
  %v.189 = phi i32 [ %v.1, %for.body38 ], [ %v.186, %for.end30 ]
  %vheight.388 = phi i32 [ %.vheight.3, %for.body38 ], [ %8, %for.end30 ]
  %idxprom39 = sext i32 %v.189 to i64, !dbg !213
  %arrayidx40 = getelementptr inbounds i32* %call3, i64 %idxprom39, !dbg !213
  %10 = load i32* %arrayidx40, align 4, !dbg !213, !tbaa !95
  %cmp41 = icmp slt i32 %vheight.388, %10, !dbg !213
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !77), !dbg !215
  %.vheight.3 = select i1 %cmp41, i32 %10, i32 %vheight.388, !dbg !213
  %arrayidx49 = getelementptr inbounds i32* %9, i64 %idxprom39, !dbg !196
  %v.1 = load i32* %arrayidx49, align 4, !dbg !196
  %cmp37 = icmp eq i32 %v.1, -1, !dbg !196
  br i1 %cmp37, label %for.end50, label %for.body38, !dbg !196

for.end50:                                        ; preds = %for.body38, %for.end30
  %vheight.3.lcssa = phi i32 [ %8, %for.end30 ], [ %.vheight.3, %for.body38 ]
  tail call void @IVfree(i32* %call3) #5, !dbg !217
  ret i32 %vheight.3.lcssa, !dbg !218
}

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_maxNchild(%struct._Tree* %tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !81), !dbg !219
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !220
  br i1 %cmp, label %if.then, label %if.end, !dbg !220

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !221, !tbaa !100
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str10, i64 0, i64 0), %struct._Tree* null) #5, !dbg !221
  tail call void @exit(i32 -1) #6, !dbg !223
  unreachable, !dbg !223

if.end:                                           ; preds = %entry
  %n1 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !224
  %1 = load i32* %n1, align 4, !dbg !224, !tbaa !95
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !83), !dbg !224
  %fch2 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !225
  %2 = load i32** %fch2, align 8, !dbg !225, !tbaa !100
  tail call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !87), !dbg !225
  %sib3 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !226
  %3 = load i32** %sib3, align 8, !dbg !226, !tbaa !100
  tail call void @llvm.dbg.value(metadata !{i32* %3}, i64 0, metadata !88), !dbg !226
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !227
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !86), !dbg !228
  %cmp430 = icmp sgt i32 %1, 0, !dbg !228
  br i1 %cmp430, label %for.body, label %for.end15, !dbg !228

for.body:                                         ; preds = %if.end, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end ], [ 0, %if.end ]
  %maxnchild.032 = phi i32 [ %nchild.0.maxnchild.0, %for.end ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %2, i64 %indvars.iv, !dbg !230
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !84), !dbg !230
  %u.026 = load i32* %arrayidx, align 4, !dbg !230
  %cmp627 = icmp eq i32 %u.026, -1, !dbg !230
  br i1 %cmp627, label %for.end, label %for.body7, !dbg !230

for.body7:                                        ; preds = %for.body, %for.body7
  %u.029 = phi i32 [ %u.0, %for.body7 ], [ %u.026, %for.body ]
  %nchild.028 = phi i32 [ %inc, %for.body7 ], [ 0, %for.body ]
  %inc = add nsw i32 %nchild.028, 1, !dbg !233
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !84), !dbg !233
  %idxprom8 = sext i32 %u.029 to i64, !dbg !230
  %arrayidx9 = getelementptr inbounds i32* %3, i64 %idxprom8, !dbg !230
  %u.0 = load i32* %arrayidx9, align 4, !dbg !230
  %cmp6 = icmp eq i32 %u.0, -1, !dbg !230
  br i1 %cmp6, label %for.end, label %for.body7, !dbg !230

for.end:                                          ; preds = %for.body7, %for.body
  %nchild.0.lcssa = phi i32 [ 0, %for.body ], [ %inc, %for.body7 ]
  %cmp10 = icmp slt i32 %maxnchild.032, %nchild.0.lcssa, !dbg !235
  tail call void @llvm.dbg.value(metadata !{i32 %nchild.0.lcssa}, i64 0, metadata !82), !dbg !236
  %nchild.0.maxnchild.0 = select i1 %cmp10, i32 %nchild.0.lcssa, i32 %maxnchild.032, !dbg !235
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !228
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !228
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !228
  br i1 %exitcond, label %for.end15, label %for.body, !dbg !228

for.end15:                                        ; preds = %for.end, %if.end
  %maxnchild.0.lcssa = phi i32 [ 0, %if.end ], [ %nchild.0.maxnchild.0, %for.end ]
  ret i32 %maxnchild.0.lcssa, !dbg !238
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_sizeOf(%struct._Tree* %tree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !91), !dbg !239
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !240
  br i1 %cmp, label %if.then, label %if.end, !dbg !240

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !241, !tbaa !100
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str11, i64 0, i64 0), %struct._Tree* null) #5, !dbg !241
  tail call void @exit(i32 -1) #6, !dbg !243
  unreachable, !dbg !243

if.end:                                           ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !244
  %1 = load i32* %n, align 4, !dbg !244, !tbaa !95
  %mul1 = mul i32 %1, 12, !dbg !244
  %add = add i32 %mul1, 32, !dbg !244
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !92), !dbg !244
  ret i32 %add, !dbg !245
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
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !23, metadata !29, metadata !32, metadata !36, metadata !41, metadata !46, metadata !52, metadata !72, metadata !79, metadata !89}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_postOTfirst", metadata !"Tree_postOTfirst", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*)* @Tree_postOTfirst, null, null, metadata !20, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [Tree_postOTfirst]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !18, metadata !19}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!20 = metadata !{metadata !21, metadata !22}
!21 = metadata !{i32 786689, metadata !4, metadata !"tree", metadata !5, i32 16777231, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 15]
!22 = metadata !{i32 786688, metadata !4, metadata !"v", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 17]
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_postOTnext", metadata !"Tree_postOTnext", metadata !"", i32 47, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*, i32)* @Tree_postOTnext, null, null, metadata !26, i32 50} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 50] [Tree_postOTnext]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{metadata !8, metadata !9, metadata !8}
!26 = metadata !{metadata !27, metadata !28}
!27 = metadata !{i32 786689, metadata !23, metadata !"tree", metadata !5, i32 16777264, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 48]
!28 = metadata !{i32 786689, metadata !23, metadata !"v", metadata !5, i32 33554481, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 49]
!29 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_preOTfirst", metadata !"Tree_preOTfirst", metadata !"", i32 85, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*)* @Tree_preOTfirst, null, null, metadata !30, i32 87} ; [ DW_TAG_subprogram ] [line 85] [def] [scope 87] [Tree_preOTfirst]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786689, metadata !29, metadata !"tree", metadata !5, i32 16777302, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 86]
!32 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_preOTnext", metadata !"Tree_preOTnext", metadata !"", i32 109, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*, i32)* @Tree_preOTnext, null, null, metadata !33, i32 112} ; [ DW_TAG_subprogram ] [line 109] [def] [scope 112] [Tree_preOTnext]
!33 = metadata !{metadata !34, metadata !35}
!34 = metadata !{i32 786689, metadata !32, metadata !"tree", metadata !5, i32 16777326, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 110]
!35 = metadata !{i32 786689, metadata !32, metadata !"v", metadata !5, i32 33554543, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 111]
!36 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_nleaves", metadata !"Tree_nleaves", metadata !"", i32 147, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*)* @Tree_nleaves, null, null, metadata !37, i32 149} ; [ DW_TAG_subprogram ] [line 147] [def] [scope 149] [Tree_nleaves]
!37 = metadata !{metadata !38, metadata !39, metadata !40}
!38 = metadata !{i32 786689, metadata !36, metadata !"tree", metadata !5, i32 16777364, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 148]
!39 = metadata !{i32 786688, metadata !36, metadata !"nleaf", metadata !5, i32 150, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nleaf] [line 150]
!40 = metadata !{i32 786688, metadata !36, metadata !"v", metadata !5, i32 150, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 150]
!41 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_nroots", metadata !"Tree_nroots", metadata !"", i32 179, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*)* @Tree_nroots, null, null, metadata !42, i32 181} ; [ DW_TAG_subprogram ] [line 179] [def] [scope 181] [Tree_nroots]
!42 = metadata !{metadata !43, metadata !44, metadata !45}
!43 = metadata !{i32 786689, metadata !41, metadata !"tree", metadata !5, i32 16777396, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 180]
!44 = metadata !{i32 786688, metadata !41, metadata !"nroot", metadata !5, i32 182, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nroot] [line 182]
!45 = metadata !{i32 786688, metadata !41, metadata !"v", metadata !5, i32 182, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 182]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_nchild", metadata !"Tree_nchild", metadata !"", i32 213, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*, i32)* @Tree_nchild, null, null, metadata !47, i32 216} ; [ DW_TAG_subprogram ] [line 213] [def] [scope 216] [Tree_nchild]
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51}
!48 = metadata !{i32 786689, metadata !46, metadata !"tree", metadata !5, i32 16777430, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 214]
!49 = metadata !{i32 786689, metadata !46, metadata !"v", metadata !5, i32 33554647, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 215]
!50 = metadata !{i32 786688, metadata !46, metadata !"nchild", metadata !5, i32 217, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nchild] [line 217]
!51 = metadata !{i32 786688, metadata !46, metadata !"w", metadata !5, i32 217, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 217]
!52 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_nchildIV", metadata !"Tree_nchildIV", metadata !"", i32 249, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._Tree*)* @Tree_nchildIV, null, null, metadata !64, i32 251} ; [ DW_TAG_subprogram ] [line 249] [def] [scope 251] [Tree_nchildIV]
!53 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{metadata !55, metadata !9}
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!56 = metadata !{i32 786454, metadata !1, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!57 = metadata !{i32 786451, metadata !58, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !59, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!58 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!59 = metadata !{metadata !60, metadata !61, metadata !62, metadata !63}
!60 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!61 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!62 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!63 = metadata !{i32 786445, metadata !58, metadata !57, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!64 = metadata !{metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71}
!65 = metadata !{i32 786689, metadata !52, metadata !"tree", metadata !5, i32 16777466, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 250]
!66 = metadata !{i32 786688, metadata !52, metadata !"n", metadata !5, i32 252, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 252]
!67 = metadata !{i32 786688, metadata !52, metadata !"v", metadata !5, i32 252, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 252]
!68 = metadata !{i32 786688, metadata !52, metadata !"w", metadata !5, i32 252, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 252]
!69 = metadata !{i32 786688, metadata !52, metadata !"nchild", metadata !5, i32 253, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nchild] [line 253]
!70 = metadata !{i32 786688, metadata !52, metadata !"par", metadata !5, i32 253, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par] [line 253]
!71 = metadata !{i32 786688, metadata !52, metadata !"nchildIV", metadata !5, i32 254, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nchildIV] [line 254]
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_height", metadata !"Tree_height", metadata !"", i32 287, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*)* @Tree_height, null, null, metadata !73, i32 289} ; [ DW_TAG_subprogram ] [line 287] [def] [scope 289] [Tree_height]
!73 = metadata !{metadata !74, metadata !75, metadata !76, metadata !77, metadata !78}
!74 = metadata !{i32 786689, metadata !72, metadata !"tree", metadata !5, i32 16777504, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 288]
!75 = metadata !{i32 786688, metadata !72, metadata !"u", metadata !5, i32 290, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 290]
!76 = metadata !{i32 786688, metadata !72, metadata !"v", metadata !5, i32 290, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 290]
!77 = metadata !{i32 786688, metadata !72, metadata !"vheight", metadata !5, i32 290, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vheight] [line 290]
!78 = metadata !{i32 786688, metadata !72, metadata !"heights", metadata !5, i32 291, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [heights] [line 291]
!79 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_maxNchild", metadata !"Tree_maxNchild", metadata !"", i32 339, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*)* @Tree_maxNchild, null, null, metadata !80, i32 341} ; [ DW_TAG_subprogram ] [line 339] [def] [scope 341] [Tree_maxNchild]
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88}
!81 = metadata !{i32 786689, metadata !79, metadata !"tree", metadata !5, i32 16777556, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 340]
!82 = metadata !{i32 786688, metadata !79, metadata !"maxnchild", metadata !5, i32 342, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxnchild] [line 342]
!83 = metadata !{i32 786688, metadata !79, metadata !"n", metadata !5, i32 342, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 342]
!84 = metadata !{i32 786688, metadata !79, metadata !"nchild", metadata !5, i32 342, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nchild] [line 342]
!85 = metadata !{i32 786688, metadata !79, metadata !"u", metadata !5, i32 342, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 342]
!86 = metadata !{i32 786688, metadata !79, metadata !"v", metadata !5, i32 342, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 342]
!87 = metadata !{i32 786688, metadata !79, metadata !"fch", metadata !5, i32 343, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch] [line 343]
!88 = metadata !{i32 786688, metadata !79, metadata !"sib", metadata !5, i32 343, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib] [line 343]
!89 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_sizeOf", metadata !"Tree_sizeOf", metadata !"", i32 375, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*)* @Tree_sizeOf, null, null, metadata !90, i32 377} ; [ DW_TAG_subprogram ] [line 375] [def] [scope 377] [Tree_sizeOf]
!90 = metadata !{metadata !91, metadata !92}
!91 = metadata !{i32 786689, metadata !89, metadata !"tree", metadata !5, i32 16777592, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 376]
!92 = metadata !{i32 786688, metadata !89, metadata !"nbytes", metadata !5, i32 378, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 378]
!93 = metadata !{i32 15, i32 0, metadata !4, null}
!94 = metadata !{i32 23, i32 0, metadata !4, null}
!95 = metadata !{metadata !"int", metadata !96}
!96 = metadata !{metadata !"omnipotent char", metadata !97}
!97 = metadata !{metadata !"Simple C/C++ TBAA"}
!98 = metadata !{i32 24, i32 0, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !4, i32 23, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!100 = metadata !{metadata !"any pointer", metadata !96}
!101 = metadata !{i32 26, i32 0, metadata !99, null}
!102 = metadata !{i32 33, i32 0, metadata !4, null}
!103 = metadata !{i32 34, i32 0, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !4, i32 33, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!105 = metadata !{i32 38, i32 0, metadata !4, null}
!106 = metadata !{i32 48, i32 0, metadata !23, null}
!107 = metadata !{i32 49, i32 0, metadata !23, null}
!108 = metadata !{i32 56, i32 0, metadata !23, null}
!109 = metadata !{i32 57, i32 0, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !23, i32 56, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!111 = metadata !{i32 59, i32 0, metadata !110, null}
!112 = metadata !{i32 66, i32 0, metadata !23, null}
!113 = metadata !{i32 68, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !23, i32 66, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!115 = metadata !{i32 72, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !23, i32 71, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!117 = metadata !{i32 74, i32 0, metadata !23, null}
!118 = metadata !{i32 86, i32 0, metadata !29, null}
!119 = metadata !{i32 93, i32 0, metadata !29, null}
!120 = metadata !{i32 94, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !29, i32 93, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!122 = metadata !{i32 96, i32 0, metadata !121, null}
!123 = metadata !{i32 98, i32 0, metadata !29, null}
!124 = metadata !{i32 110, i32 0, metadata !32, null}
!125 = metadata !{i32 111, i32 0, metadata !32, null}
!126 = metadata !{i32 118, i32 0, metadata !32, null}
!127 = metadata !{i32 119, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !32, i32 118, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!129 = metadata !{i32 121, i32 0, metadata !128, null}
!130 = metadata !{i32 128, i32 0, metadata !32, null}
!131 = metadata !{i32 131, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !32, i32 130, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!133 = metadata !{i32 136, i32 0, metadata !32, null}
!134 = metadata !{i32 148, i32 0, metadata !36, null}
!135 = metadata !{i32 156, i32 0, metadata !36, null}
!136 = metadata !{i32 164, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !138, i32 163, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!138 = metadata !{i32 786443, metadata !1, metadata !36, i32 163, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!139 = metadata !{i32 163, i32 0, metadata !138, null}
!140 = metadata !{i32 157, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !36, i32 156, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!142 = metadata !{i32 159, i32 0, metadata !141, null}
!143 = metadata !{i32 168, i32 0, metadata !36, null}
!144 = metadata !{i32 180, i32 0, metadata !41, null}
!145 = metadata !{i32 188, i32 0, metadata !41, null}
!146 = metadata !{i32 196, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !148, i32 195, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!148 = metadata !{i32 786443, metadata !1, metadata !41, i32 195, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!149 = metadata !{i32 195, i32 0, metadata !148, null}
!150 = metadata !{i32 189, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !41, i32 188, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!152 = metadata !{i32 191, i32 0, metadata !151, null}
!153 = metadata !{i32 200, i32 0, metadata !41, null}
!154 = metadata !{i32 214, i32 0, metadata !46, null}
!155 = metadata !{i32 215, i32 0, metadata !46, null}
!156 = metadata !{i32 223, i32 0, metadata !46, null}
!157 = metadata !{i32 224, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !46, i32 223, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!159 = metadata !{i32 226, i32 0, metadata !158, null}
!160 = metadata !{i32 228, i32 0, metadata !46, null}
!161 = metadata !{i32 229, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !46, i32 228, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!163 = metadata !{i32 231, i32 0, metadata !162, null}
!164 = metadata !{i32 233, i32 0, metadata !46, null}
!165 = metadata !{i32 234, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !46, i32 234, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!167 = metadata !{i32 235, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !166, i32 234, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!169 = metadata !{i32 237, i32 0, metadata !46, null}
!170 = metadata !{i32 250, i32 0, metadata !52, null}
!171 = metadata !{i32 260, i32 0, metadata !52, null}
!172 = metadata !{i32 261, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !52, i32 260, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!174 = metadata !{i32 263, i32 0, metadata !173, null}
!175 = metadata !{i32 265, i32 0, metadata !52, null}
!176 = metadata !{i32 266, i32 0, metadata !52, null}
!177 = metadata !{i32 267, i32 0, metadata !52, null}
!178 = metadata !{i32 268, i32 0, metadata !52, null}
!179 = metadata !{i32 269, i32 0, metadata !52, null}
!180 = metadata !{i32 270, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !52, i32 270, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!182 = metadata !{i32 271, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !181, i32 270, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!184 = metadata !{i32 272, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !183, i32 271, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!186 = metadata !{i32 273, i32 0, metadata !185, null}
!187 = metadata !{i32 276, i32 0, metadata !52, null}
!188 = metadata !{i32 288, i32 0, metadata !72, null}
!189 = metadata !{i32 297, i32 0, metadata !72, null}
!190 = metadata !{i32 298, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !72, i32 297, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!192 = metadata !{i32 300, i32 0, metadata !191, null}
!193 = metadata !{i32 302, i32 0, metadata !72, null}
!194 = metadata !{i32 303, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !72, i32 303, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!196 = metadata !{i32 321, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !72, i32 321, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!198 = metadata !{i32 306, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !195, i32 305, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!200 = metadata !{i32 310, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !202, i32 310, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!202 = metadata !{i32 786443, metadata !1, metadata !199, i32 308, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!203 = metadata !{i32 309, i32 0, metadata !202, null}
!204 = metadata !{i32 311, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !201, i32 310, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!206 = metadata !{i32 312, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !205, i32 311, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!208 = metadata !{i32 315, i32 0, metadata !202, null}
!209 = metadata !{i32 317, i32 0, metadata !199, null}
!210 = metadata !{i32 305, i32 0, metadata !195, null}
!211 = metadata !{i32 319, i32 0, metadata !72, null}
!212 = metadata !{i32 320, i32 0, metadata !72, null}
!213 = metadata !{i32 322, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !197, i32 321, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!215 = metadata !{i32 323, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !214, i32 322, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!217 = metadata !{i32 326, i32 0, metadata !72, null}
!218 = metadata !{i32 328, i32 0, metadata !72, null}
!219 = metadata !{i32 340, i32 0, metadata !79, null}
!220 = metadata !{i32 349, i32 0, metadata !79, null}
!221 = metadata !{i32 350, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !79, i32 349, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!223 = metadata !{i32 352, i32 0, metadata !222, null}
!224 = metadata !{i32 354, i32 0, metadata !79, null}
!225 = metadata !{i32 355, i32 0, metadata !79, null}
!226 = metadata !{i32 356, i32 0, metadata !79, null}
!227 = metadata !{i32 357, i32 0, metadata !79, null}
!228 = metadata !{i32 358, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !79, i32 358, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!230 = metadata !{i32 359, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !232, i32 359, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!232 = metadata !{i32 786443, metadata !1, metadata !229, i32 358, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!233 = metadata !{i32 360, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !231, i32 359, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!235 = metadata !{i32 362, i32 0, metadata !232, null}
!236 = metadata !{i32 363, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !232, i32 362, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!238 = metadata !{i32 366, i32 0, metadata !79, null}
!239 = metadata !{i32 376, i32 0, metadata !89, null}
!240 = metadata !{i32 384, i32 0, metadata !89, null}
!241 = metadata !{i32 385, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !89, i32 384, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_util.c]
!243 = metadata !{i32 387, i32 0, metadata !242, null}
!244 = metadata !{i32 390, i32 0, metadata !89, null}
!245 = metadata !{i32 392, i32 0, metadata !89, null}
