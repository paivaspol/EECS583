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
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call %struct._IV* @IV_new() #4
  %2 = load i32* %n, align 4, !tbaa !0
  tail call void @IV_init(%struct._IV* %call2, i32 %2, i32* null) #4
  %call4 = tail call i32* @IV_entries(%struct._IV* %call2) #4
  %call5 = tail call i32 @Tree_postOTfirst(%struct._Tree* %tree) #4
  %cmp637 = icmp eq i32 %call5, -1
  br i1 %cmp637, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %nfc.039 = phi i32 [ 0, %for.body.lr.ph ], [ %nfc.1, %for.inc ]
  %v.038 = phi i32 [ %call5, %for.body.lr.ph ], [ %call20, %for.inc ]
  %idxprom = sext i32 %v.038 to i64
  %3 = load i32** %fch, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom
  %4 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %4, -1
  br i1 %cmp7, label %if.then12, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %for.body
  %idxprom9 = sext i32 %4 to i64
  %5 = load i32** %sib, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds i32* %5, i64 %idxprom9
  %6 = load i32* %arrayidx10, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %6, -1
  br i1 %cmp11, label %if.else, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false8, %for.body
  %inc = add nsw i32 %nfc.039, 1
  %arrayidx14 = getelementptr inbounds i32* %call4, i64 %idxprom
  store i32 %nfc.039, i32* %arrayidx14, align 4, !tbaa !0
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false8
  %arrayidx16 = getelementptr inbounds i32* %call4, i64 %idxprom9
  %7 = load i32* %arrayidx16, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds i32* %call4, i64 %idxprom
  store i32 %7, i32* %arrayidx18, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.else
  %nfc.1 = phi i32 [ %inc, %if.then12 ], [ %nfc.039, %if.else ]
  %call20 = tail call i32 @Tree_postOTnext(%struct._Tree* %tree, i32 %v.038) #4
  %cmp6 = icmp eq i32 %call20, -1
  br i1 %cmp6, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  ret %struct._IV* %call2
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
  %cmp = icmp eq %struct._Tree* %tree, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %n1 = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0
  %0 = load i32* %n1, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %0, 1
  %cmp4 = icmp eq %struct._IV* %mapIV, null
  %or.cond = or i1 %cmp2, %cmp4
  br i1 %or.cond, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @IV_size(%struct._IV* %mapIV) #4
  %cmp6 = icmp eq i32 %0, %call
  br i1 %cmp6, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %call8 = tail call i32* @IV_entries(%struct._IV* %mapIV) #4
  %cmp9 = icmp eq i32* %call8, null
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false7, %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([50 x i8]* @.str1, i64 0, i64 0), %struct._Tree* %tree, %struct._IV* %mapIV) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false7
  %call11 = tail call i32 @IV_max(%struct._IV* %mapIV) #4
  %add = add nsw i32 %call11, 1
  %call12 = tail call %struct._Tree* @Tree_new() #4
  tail call void @Tree_init1(%struct._Tree* %call12, i32 %add) #4
  %call13 = tail call i32* @IVinit(i32 %add, i32 -1) #4
  %call14 = tail call i32* @IVinit(i32 %0, i32 -1) #4
  %cmp15111 = icmp sgt i32 %0, 0
  br i1 %cmp15111, label %for.body, label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %if.end21, %if.end
  %cmp29105 = icmp sgt i32 %call11, -1
  br i1 %cmp29105, label %for.body30.lr.ph, label %for.end58

for.body30.lr.ph:                                 ; preds = %for.cond28.preheader
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2
  %par41 = getelementptr inbounds %struct._Tree* %call12, i64 0, i32 2
  br label %for.body30

for.body:                                         ; preds = %if.end, %if.end21
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %if.end21 ], [ 0, %if.end ]
  %v.0112 = phi i32 [ %inc, %if.end21 ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %call8, i64 %indvars.iv117
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp16 = icmp sgt i32 %2, -1
  %cmp18 = icmp slt i32 %2, %add
  %or.cond101 = and i1 %cmp16, %cmp18
  br i1 %or.cond101, label %if.end21, label %if.then19

if.then19:                                        ; preds = %for.body
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([61 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i32* %call8, i32 %v.0112, i32 %2, i32 %add) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end21:                                         ; preds = %for.body
  %idxprom22 = sext i32 %2 to i64
  %arrayidx23 = getelementptr inbounds i32* %call13, i64 %idxprom22
  %4 = load i32* %arrayidx23, align 4, !tbaa !0
  %arrayidx25 = getelementptr inbounds i32* %call14, i64 %indvars.iv117
  store i32 %4, i32* %arrayidx25, align 4, !tbaa !0
  %5 = trunc i64 %indvars.iv117 to i32
  store i32 %5, i32* %arrayidx23, align 4, !tbaa !0
  %indvars.iv.next118 = add i64 %indvars.iv117, 1
  %inc = add nsw i32 %v.0112, 1
  %6 = trunc i64 %indvars.iv.next118 to i32
  %cmp15 = icmp slt i32 %6, %0
  br i1 %cmp15, label %for.body, label %for.cond28.preheader

for.body30:                                       ; preds = %for.body30.lr.ph, %for.inc56
  %indvars.iv = phi i64 [ 0, %for.body30.lr.ph ], [ %indvars.iv.next, %for.inc56 ]
  %arrayidx32 = getelementptr inbounds i32* %call13, i64 %indvars.iv
  %u.0102 = load i32* %arrayidx32, align 4
  %cmp34103 = icmp eq i32 %u.0102, -1
  br i1 %cmp34103, label %for.inc56, label %for.body35.lr.ph

for.body35.lr.ph:                                 ; preds = %for.body30
  %7 = load i32** %par, align 8, !tbaa !3
  br label %for.body35

for.body35:                                       ; preds = %for.body35.lr.ph, %for.inc52
  %u.0104 = phi i32 [ %u.0102, %for.body35.lr.ph ], [ %u.0, %for.inc52 ]
  %idxprom36 = sext i32 %u.0104 to i64
  %arrayidx37 = getelementptr inbounds i32* %7, i64 %idxprom36
  %8 = load i32* %arrayidx37, align 4, !tbaa !0
  %cmp38 = icmp eq i32 %8, -1
  br i1 %cmp38, label %if.then39, label %if.else

if.then39:                                        ; preds = %for.body35
  %9 = load i32** %par41, align 8, !tbaa !3
  %arrayidx42 = getelementptr inbounds i32* %9, i64 %indvars.iv
  store i32 -1, i32* %arrayidx42, align 4, !tbaa !0
  br label %for.inc56

if.else:                                          ; preds = %for.body35
  %idxprom43 = sext i32 %8 to i64
  %arrayidx44 = getelementptr inbounds i32* %call8, i64 %idxprom43
  %10 = load i32* %arrayidx44, align 4, !tbaa !0
  %11 = trunc i64 %indvars.iv to i32
  %cmp45 = icmp eq i32 %10, %11
  br i1 %cmp45, label %for.inc52, label %if.then46

if.then46:                                        ; preds = %if.else
  %12 = load i32** %par41, align 8, !tbaa !3
  %arrayidx49 = getelementptr inbounds i32* %12, i64 %indvars.iv
  store i32 %10, i32* %arrayidx49, align 4, !tbaa !0
  br label %for.inc56

for.inc52:                                        ; preds = %if.else
  %arrayidx54 = getelementptr inbounds i32* %call14, i64 %idxprom36
  %u.0 = load i32* %arrayidx54, align 4
  %cmp34 = icmp eq i32 %u.0, -1
  br i1 %cmp34, label %for.inc56, label %for.body35

for.inc56:                                        ; preds = %for.body30, %for.inc52, %if.then39, %if.then46
  %indvars.iv.next = add i64 %indvars.iv, 1
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp29 = icmp slt i32 %13, %add
  br i1 %cmp29, label %for.body30, label %for.end58

for.end58:                                        ; preds = %for.inc56, %for.cond28.preheader
  tail call void @Tree_setFchSibRoot(%struct._Tree* %call12) #4
  tail call void @IVfree(i32* %call13) #4
  tail call void @IVfree(i32* %call14) #4
  ret %struct._Tree* %call12
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

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
