; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_equivMap.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in Graph_equivMap(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @Graph_equivMap(%struct._Graph* %g) #0 {
entry:
  %usize = alloca i32, align 4
  %vsize = alloca i32, align 4
  %uadj = alloca i32*, align 8
  %vadj = alloca i32*, align 8
  %cmp = icmp eq %struct._Graph* %g, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %nvtx1 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  %0 = load i32* %nvtx1, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %0, 1
  br i1 %cmp2, label %if.then, label %for.body.lr.ph

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._Graph* %g) #4
  call void @exit(i32 -1) #5
  unreachable

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %call3 = call %struct._IV* @IV_new() #4
  call void @IV_init(%struct._IV* %call3, i32 %0, i32* null) #4
  %call4 = call i32* @IV_entries(%struct._IV* %call3) #4
  call void @IVfill(i32 %0, i32* %call4, i32 -1) #4
  %call5 = call i32* @IVinit(i32 %0, i32 -1) #4
  %call6 = call i32* @IVinit(i32 %0, i32 -1) #4
  br label %for.body

for.body:                                         ; preds = %for.inc89, %for.body.lr.ph
  %indvars.iv170 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next171, %for.inc89 ]
  %nvtx2.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %nvtx2.1, %for.inc89 ]
  %v.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %inc90, %for.inc89 ]
  %arrayidx = getelementptr inbounds i32* %call4, i64 %indvars.iv170
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp8 = icmp eq i32 %2, -1
  br i1 %cmp8, label %if.then9, label %for.inc89

if.then9:                                         ; preds = %for.body
  %3 = trunc i64 %indvars.iv170 to i32
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %3, i32* %vsize, i32** %vadj) #4
  %4 = load i32* %vsize, align 4, !tbaa !0
  %cmp10 = icmp eq i32 %4, 0
  br i1 %cmp10, label %if.then11, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %if.then9
  %cmp15145 = icmp sgt i32 %4, 0
  br i1 %cmp15145, label %for.body16.lr.ph, label %for.end

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  %5 = load i32** %vadj, align 8, !tbaa !3
  br label %for.body16

if.then11:                                        ; preds = %if.then9
  %inc = add nsw i32 %nvtx2.0161, 1
  store i32 %nvtx2.0161, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc89

for.body16:                                       ; preds = %for.body16.lr.ph, %for.body16
  %indvars.iv = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next, %for.body16 ]
  %vsum.0146 = phi i32 [ %v.0157, %for.body16.lr.ph ], [ %vsum.0.add, %for.body16 ]
  %arrayidx18 = getelementptr inbounds i32* %5, i64 %indvars.iv
  %6 = load i32* %arrayidx18, align 4, !tbaa !0
  %cmp19 = icmp eq i32 %6, %3
  %add = select i1 %cmp19, i32 0, i32 %6
  %vsum.0.add = add nsw i32 %add, %vsum.0146
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp15 = icmp slt i32 %7, %4
  br i1 %cmp15, label %for.body16, label %for.end

for.end:                                          ; preds = %for.body16, %for.cond14.preheader
  %vsum.0.lcssa = phi i32 [ %3, %for.cond14.preheader ], [ %vsum.0.add, %for.body16 ]
  %arrayidx26 = getelementptr inbounds i32* %call6, i64 %indvars.iv170
  store i32 %vsum.0.lcssa, i32* %arrayidx26, align 4, !tbaa !0
  %8 = load i32* %vsize, align 4, !tbaa !0
  %cmp28153 = icmp sgt i32 %8, 0
  br i1 %cmp28153, label %for.body29.lr.ph, label %for.end78thread-pre-split

for.body29.lr.ph:                                 ; preds = %for.end
  %arrayidx42 = getelementptr inbounds i32* %call5, i64 %indvars.iv170
  br label %for.body29

for.body29:                                       ; preds = %for.inc76, %for.body29.lr.ph
  %9 = phi i32 [ %8, %for.body29.lr.ph ], [ %28, %for.inc76 ]
  %indvars.iv168 = phi i64 [ 0, %for.body29.lr.ph ], [ %indvars.iv.next169, %for.inc76 ]
  %ismapped.0154 = phi i32 [ 0, %for.body29.lr.ph ], [ %ismapped.2, %for.inc76 ]
  %10 = load i32** %vadj, align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds i32* %10, i64 %indvars.iv168
  %11 = load i32* %arrayidx31, align 4, !tbaa !0
  %cmp32 = icmp slt i32 %11, %3
  br i1 %cmp32, label %land.lhs.true, label %for.inc76

land.lhs.true:                                    ; preds = %for.body29
  %idxprom33 = sext i32 %11 to i64
  %arrayidx34 = getelementptr inbounds i32* %call6, i64 %idxprom33
  %12 = load i32* %arrayidx34, align 4, !tbaa !0
  %cmp35 = icmp eq i32 %12, %vsum.0.lcssa
  br i1 %cmp35, label %if.then36, label %for.inc76

if.then36:                                        ; preds = %land.lhs.true
  call void @Graph_adjAndSize(%struct._Graph* %g, i32 %11, i32* %usize, i32** %uadj) #4
  %13 = load i32* %vsize, align 4, !tbaa !0
  %14 = load i32* %usize, align 4, !tbaa !0
  %cmp37 = icmp eq i32 %13, %14
  br i1 %cmp37, label %if.then38, label %for.inc76

if.then38:                                        ; preds = %if.then36
  %cmp39 = icmp eq i32 %ismapped.0154, 0
  br i1 %cmp39, label %if.then40, label %if.end53

if.then40:                                        ; preds = %if.then38
  store i32 %3, i32* %arrayidx42, align 4, !tbaa !0
  %15 = load i32* %vsize, align 4, !tbaa !0
  %cmp44148 = icmp sgt i32 %15, 0
  br i1 %cmp44148, label %for.body45.lr.ph, label %if.end53.loopexit

for.body45.lr.ph:                                 ; preds = %if.then40
  %16 = load i32** %vadj, align 8, !tbaa !3
  br label %for.body45

for.body45:                                       ; preds = %for.body45.lr.ph, %for.body45
  %indvars.iv162 = phi i64 [ 0, %for.body45.lr.ph ], [ %indvars.iv.next163, %for.body45 ]
  %arrayidx47 = getelementptr inbounds i32* %16, i64 %indvars.iv162
  %17 = load i32* %arrayidx47, align 4, !tbaa !0
  %idxprom48 = sext i32 %17 to i64
  %arrayidx49 = getelementptr inbounds i32* %call5, i64 %idxprom48
  store i32 %3, i32* %arrayidx49, align 4, !tbaa !0
  %indvars.iv.next163 = add i64 %indvars.iv162, 1
  %18 = load i32* %vsize, align 4, !tbaa !0
  %19 = trunc i64 %indvars.iv.next163 to i32
  %cmp44 = icmp slt i32 %19, %18
  br i1 %cmp44, label %for.body45, label %if.end53.loopexit

if.end53.loopexit:                                ; preds = %for.body45, %if.then40
  %20 = phi i32 [ %15, %if.then40 ], [ %18, %for.body45 ]
  %.pre = load i32* %usize, align 4, !tbaa !0
  br label %if.end53

if.end53:                                         ; preds = %if.end53.loopexit, %if.then38
  %21 = phi i32 [ %13, %if.then38 ], [ %20, %if.end53.loopexit ]
  %22 = phi i32 [ %13, %if.then38 ], [ %.pre, %if.end53.loopexit ]
  %ismapped.1 = phi i32 [ %ismapped.0154, %if.then38 ], [ 1, %if.end53.loopexit ]
  %cmp55150 = icmp sgt i32 %22, 0
  br i1 %cmp55150, label %for.body56.lr.ph, label %for.end66

for.body56.lr.ph:                                 ; preds = %if.end53
  %23 = load i32** %uadj, align 8, !tbaa !3
  br label %for.body56

for.cond54:                                       ; preds = %for.body56
  %24 = trunc i64 %indvars.iv.next167 to i32
  %cmp55 = icmp slt i32 %24, %22
  br i1 %cmp55, label %for.body56, label %for.end66

for.body56:                                       ; preds = %for.body56.lr.ph, %for.cond54
  %indvars.iv166 = phi i64 [ 0, %for.body56.lr.ph ], [ %indvars.iv.next167, %for.cond54 ]
  %jj.1151 = phi i32 [ 0, %for.body56.lr.ph ], [ %inc65, %for.cond54 ]
  %arrayidx58 = getelementptr inbounds i32* %23, i64 %indvars.iv166
  %25 = load i32* %arrayidx58, align 4, !tbaa !0
  %idxprom59 = sext i32 %25 to i64
  %arrayidx60 = getelementptr inbounds i32* %call5, i64 %idxprom59
  %26 = load i32* %arrayidx60, align 4, !tbaa !0
  %cmp61 = icmp eq i32 %26, %3
  %indvars.iv.next167 = add i64 %indvars.iv166, 1
  %inc65 = add nsw i32 %jj.1151, 1
  br i1 %cmp61, label %for.cond54, label %for.end66

for.end66:                                        ; preds = %for.cond54, %for.body56, %if.end53
  %jj.1.lcssa = phi i32 [ 0, %if.end53 ], [ %jj.1151, %for.body56 ], [ %inc65, %for.cond54 ]
  %cmp67 = icmp eq i32 %jj.1.lcssa, %22
  br i1 %cmp67, label %if.then68, label %for.inc76

if.then68:                                        ; preds = %for.end66
  %arrayidx70 = getelementptr inbounds i32* %call4, i64 %idxprom33
  %27 = load i32* %arrayidx70, align 4, !tbaa !0
  store i32 %27, i32* %arrayidx, align 4, !tbaa !0
  br label %for.end78

for.inc76:                                        ; preds = %for.body29, %land.lhs.true, %for.end66, %if.then36
  %28 = phi i32 [ %21, %for.end66 ], [ %13, %if.then36 ], [ %9, %land.lhs.true ], [ %9, %for.body29 ]
  %ismapped.2 = phi i32 [ %ismapped.1, %for.end66 ], [ %ismapped.0154, %if.then36 ], [ %ismapped.0154, %land.lhs.true ], [ %ismapped.0154, %for.body29 ]
  %indvars.iv.next169 = add i64 %indvars.iv168, 1
  %29 = trunc i64 %indvars.iv.next169 to i32
  %cmp28 = icmp slt i32 %29, %28
  br i1 %cmp28, label %for.body29, label %for.end78thread-pre-split

for.end78thread-pre-split:                        ; preds = %for.inc76, %for.end
  %.pr = load i32* %arrayidx, align 4, !tbaa !0
  br label %for.end78

for.end78:                                        ; preds = %for.end78thread-pre-split, %if.then68
  %30 = phi i32 [ %.pr, %for.end78thread-pre-split ], [ %27, %if.then68 ]
  %cmp81 = icmp eq i32 %30, -1
  br i1 %cmp81, label %if.then82, label %for.inc89

if.then82:                                        ; preds = %for.end78
  %inc83 = add nsw i32 %nvtx2.0161, 1
  store i32 %nvtx2.0161, i32* %arrayidx, align 4, !tbaa !0
  br label %for.inc89

for.inc89:                                        ; preds = %for.body, %for.end78, %if.then82, %if.then11
  %nvtx2.1 = phi i32 [ %inc, %if.then11 ], [ %inc83, %if.then82 ], [ %nvtx2.0161, %for.end78 ], [ %nvtx2.0161, %for.body ]
  %indvars.iv.next171 = add i64 %indvars.iv170, 1
  %inc90 = add nsw i32 %v.0157, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next171 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end91, label %for.body

for.end91:                                        ; preds = %for.inc89
  call void @IVfree(i32* %call5) #4
  call void @IVfree(i32* %call6) #4
  ret %struct._IV* %call3
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
declare void @IVfill(i32, i32*, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

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