; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct._IO_FILE* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [51 x i8] c"\0A fatal error in GPart_setCweights(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [58 x i8] c"\0A fatal error in GPart_setCweights(%p)\0A bad Gpart object\0A\00", align 1
@.str2 = private unnamed_addr constant [46 x i8] c"\0A fatal error in GPart_sizeOf(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [65 x i8] c"\0A fatal error in GPart_vtxIsAdjToOneDomain(%p,%d,%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"\0A fatal error in GPart_validVtxSep(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [66 x i8] c"\0A vertex %d, component %d, is adjacent to vertex %d, component %d\00", align 1
@.str6 = private unnamed_addr constant [52 x i8] c"\0A fatal error in GPart_bndWeightsIV(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @GPart_setCweights(%struct._GPart* %gpart) #0 {
entry:
  %usize = alloca i32, align 4
  %uadj = alloca i32*, align 8
  %cmp = icmp eq %struct._GPart* %gpart, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._GPart* null) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nvtx1 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 2
  %1 = load i32* %nvtx1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, 1
  br i1 %cmp2, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %g3 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1
  %2 = load %struct._Graph** %g3, align 8, !tbaa !0
  %cmp4 = icmp eq %struct._Graph* %2, null
  br i1 %cmp4, label %if.then5, label %for.body.lr.ph

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), %struct._GPart* %gpart) #4
  call void @exit(i32 -1) #5
  unreachable

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call8 = call i32* @IV_entries(%struct._IV* %compidsIV) #4
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv168 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next169, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %call8, i64 %indvars.iv168
  %4 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %4, 0
  br i1 %cmp10, label %for.inc, label %if.then11

if.then11:                                        ; preds = %for.body
  store i32 -1, i32* %arrayidx, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then11
  %indvars.iv.next169 = add i64 %indvars.iv168, 1
  %lftr.wideiv170 = trunc i64 %indvars.iv.next169 to i32
  %exitcond171 = icmp eq i32 %lftr.wideiv170, %1
  br i1 %exitcond171, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %call15 = call i32* @IVinit(i32 %1, i32 -1) #4
  br label %for.body18

for.body18:                                       ; preds = %for.end, %for.inc52
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %for.inc52 ], [ 0, %for.end ]
  %ncomp.0152 = phi i32 [ %ncomp.1, %for.inc52 ], [ 0, %for.end ]
  %arrayidx20 = getelementptr inbounds i32* %call8, i64 %indvars.iv164
  %5 = load i32* %arrayidx20, align 4, !tbaa !3
  %cmp21 = icmp eq i32 %5, -1
  br i1 %cmp21, label %if.then22, label %for.inc52

if.then22:                                        ; preds = %for.body18
  %inc23 = add nsw i32 %ncomp.0152, 1
  store i32 %inc23, i32* %arrayidx20, align 4, !tbaa !3
  %6 = trunc i64 %indvars.iv164 to i32
  store i32 %6, i32* %call15, align 4, !tbaa !3
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc48, %while.body
  %last.1.lcssa = phi i32 [ %last.0149, %while.body ], [ %last.2, %for.inc48 ]
  %7 = trunc i64 %indvars.iv162 to i32
  %cmp28 = icmp slt i32 %7, %last.1.lcssa
  br i1 %cmp28, label %while.cond.loopexit.while.body_crit_edge, label %for.inc52

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  %arrayidx31.phi.trans.insert = getelementptr inbounds i32* %call15, i64 %indvars.iv.next163
  %.pre172 = load i32* %arrayidx31.phi.trans.insert, align 4, !tbaa !3
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %if.then22
  %8 = phi i32 [ %.pre172, %while.cond.loopexit.while.body_crit_edge ], [ %6, %if.then22 ]
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %while.cond.loopexit.while.body_crit_edge ], [ 0, %if.then22 ]
  %last.0149 = phi i32 [ %last.1.lcssa, %while.cond.loopexit.while.body_crit_edge ], [ 0, %if.then22 ]
  %indvars.iv.next163 = add i64 %indvars.iv162, 1
  call void @Graph_adjAndSize(%struct._Graph* %2, i32 %8, i32* %usize, i32** %uadj) #4
  %9 = load i32* %usize, align 4, !tbaa !3
  %cmp33145 = icmp sgt i32 %9, 0
  br i1 %cmp33145, label %for.body34.lr.ph, label %while.cond.loopexit

for.body34.lr.ph:                                 ; preds = %while.body
  %10 = load i32** %uadj, align 8, !tbaa !0
  br label %for.body34

for.body34:                                       ; preds = %for.body34.lr.ph, %for.inc48
  %11 = phi i32 [ %9, %for.body34.lr.ph ], [ %14, %for.inc48 ]
  %indvars.iv160 = phi i64 [ 0, %for.body34.lr.ph ], [ %indvars.iv.next161, %for.inc48 ]
  %last.1146 = phi i32 [ %last.0149, %for.body34.lr.ph ], [ %last.2, %for.inc48 ]
  %arrayidx36 = getelementptr inbounds i32* %10, i64 %indvars.iv160
  %12 = load i32* %arrayidx36, align 4, !tbaa !3
  %cmp37 = icmp slt i32 %12, %1
  br i1 %cmp37, label %land.lhs.true, label %for.inc48

land.lhs.true:                                    ; preds = %for.body34
  %idxprom38 = sext i32 %12 to i64
  %arrayidx39 = getelementptr inbounds i32* %call8, i64 %idxprom38
  %13 = load i32* %arrayidx39, align 4, !tbaa !3
  %cmp40 = icmp eq i32 %13, -1
  br i1 %cmp40, label %if.then41, label %for.inc48

if.then41:                                        ; preds = %land.lhs.true
  store i32 %inc23, i32* %arrayidx39, align 4, !tbaa !3
  %inc44 = add nsw i32 %last.1146, 1
  %idxprom45 = sext i32 %inc44 to i64
  %arrayidx46 = getelementptr inbounds i32* %call15, i64 %idxprom45
  store i32 %12, i32* %arrayidx46, align 4, !tbaa !3
  %.pre = load i32* %usize, align 4, !tbaa !3
  br label %for.inc48

for.inc48:                                        ; preds = %for.body34, %land.lhs.true, %if.then41
  %14 = phi i32 [ %.pre, %if.then41 ], [ %11, %land.lhs.true ], [ %11, %for.body34 ]
  %last.2 = phi i32 [ %inc44, %if.then41 ], [ %last.1146, %land.lhs.true ], [ %last.1146, %for.body34 ]
  %indvars.iv.next161 = add i64 %indvars.iv160, 1
  %15 = trunc i64 %indvars.iv.next161 to i32
  %cmp33 = icmp slt i32 %15, %14
  br i1 %cmp33, label %for.body34, label %while.cond.loopexit

for.inc52:                                        ; preds = %while.cond.loopexit, %for.body18
  %ncomp.1 = phi i32 [ %ncomp.0152, %for.body18 ], [ %inc23, %while.cond.loopexit ]
  %indvars.iv.next165 = add i64 %indvars.iv164, 1
  %lftr.wideiv166 = trunc i64 %indvars.iv.next165 to i32
  %exitcond167 = icmp eq i32 %lftr.wideiv166, %1
  br i1 %exitcond167, label %for.end54, label %for.body18

for.end54:                                        ; preds = %for.inc52
  %ncomp55 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 4
  store i32 %ncomp.1, i32* %ncomp55, align 4, !tbaa !3
  %cweightsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6
  %add = add nsw i32 %ncomp.1, 1
  call void @IV_setSize(%struct._IV* %cweightsIV, i32 %add) #4
  %call57 = call i32* @IV_entries(%struct._IV* %cweightsIV) #4
  call void @IVzero(i32 %add, i32* %call57) #4
  %16 = load %struct._Graph** %g3, align 8, !tbaa !0
  %vwghts60 = getelementptr inbounds %struct._Graph* %16, i64 0, i32 7
  %17 = load i32** %vwghts60, align 8, !tbaa !0
  %cmp61 = icmp eq i32* %17, null
  br i1 %cmp61, label %for.body78, label %for.body65

for.body65:                                       ; preds = %for.end54, %for.body65
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %for.body65 ], [ 0, %for.end54 ]
  %arrayidx67 = getelementptr inbounds i32* %17, i64 %indvars.iv156
  %18 = load i32* %arrayidx67, align 4, !tbaa !3
  %arrayidx69 = getelementptr inbounds i32* %call8, i64 %indvars.iv156
  %19 = load i32* %arrayidx69, align 4, !tbaa !3
  %idxprom70 = sext i32 %19 to i64
  %arrayidx71 = getelementptr inbounds i32* %call57, i64 %idxprom70
  %20 = load i32* %arrayidx71, align 4, !tbaa !3
  %add72 = add nsw i32 %20, %18
  store i32 %add72, i32* %arrayidx71, align 4, !tbaa !3
  %indvars.iv.next157 = add i64 %indvars.iv156, 1
  %lftr.wideiv158 = trunc i64 %indvars.iv.next157 to i32
  %exitcond159 = icmp eq i32 %lftr.wideiv158, %1
  br i1 %exitcond159, label %if.end87, label %for.body65

for.body78:                                       ; preds = %for.end54, %for.body78
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body78 ], [ 0, %for.end54 ]
  %arrayidx80 = getelementptr inbounds i32* %call8, i64 %indvars.iv
  %21 = load i32* %arrayidx80, align 4, !tbaa !3
  %idxprom81 = sext i32 %21 to i64
  %arrayidx82 = getelementptr inbounds i32* %call57, i64 %idxprom81
  %22 = load i32* %arrayidx82, align 4, !tbaa !3
  %inc83 = add nsw i32 %22, 1
  store i32 %inc83, i32* %arrayidx82, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %1
  br i1 %exitcond, label %if.end87, label %for.body78

if.end87:                                         ; preds = %for.body65, %for.body78
  call void @IVfree(i32* %call15) #4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @IVzero(i32, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @GPart_sizeOf(%struct._GPart* %gpart) #0 {
entry:
  %cmp = icmp eq %struct._GPart* %gpart, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str2, i64 0, i64 0), %struct._GPart* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call1 = tail call i32 @IV_size(%struct._IV* %compidsIV) #4
  %add = add nsw i32 %call1, 144
  %cweightsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6
  %call2 = tail call i32 @IV_size(%struct._IV* %cweightsIV) #4
  %add3 = add nsw i32 %add, %call2
  %vtxMapIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 10
  %call4 = tail call i32 @IV_size(%struct._IV* %vtxMapIV) #4
  %add5 = add nsw i32 %add3, %call4
  ret i32 %add5
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @GPart_vtxIsAdjToOneDomain(%struct._GPart* %gpart, i32 %v, i32* %pdomid) #0 {
entry:
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %cmp = icmp eq %struct._GPart* %gpart, null
  %cmp1 = icmp slt i32 %v, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nvtx3 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 2
  %0 = load i32* %nvtx3, align 4, !tbaa !3
  %cmp4 = icmp sgt i32 %0, %v
  br i1 %cmp4, label %lor.lhs.false5, label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %g6 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1
  %1 = load %struct._Graph** %g6, align 8, !tbaa !0
  %cmp7 = icmp eq %struct._Graph* %1, null
  %cmp9 = icmp eq i32* %pdomid, null
  %or.cond41 = or i1 %cmp7, %cmp9
  br i1 %or.cond41, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false5, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), %struct._GPart* %gpart, i32 %v, i32* %pdomid) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false5
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call10 = call i32* @IV_entries(%struct._IV* %compidsIV) #4
  call void @Graph_adjAndSize(%struct._Graph* %1, i32 %v, i32* %vsize, i32** %vadj) #4
  store i32 -1, i32* %pdomid, align 4, !tbaa !3
  %3 = load i32* %vsize, align 4, !tbaa !3
  %cmp1143 = icmp sgt i32 %3, 0
  br i1 %cmp1143, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %4 = load i32** %vadj, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %domid.045 = phi i32 [ -1, %for.body.lr.ph ], [ %domid.1, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp12 = icmp slt i32 %5, %0
  br i1 %cmp12, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %idxprom13 = sext i32 %5 to i64
  %arrayidx14 = getelementptr inbounds i32* %call10, i64 %idxprom13
  %6 = load i32* %arrayidx14, align 4, !tbaa !3
  %cmp15 = icmp sgt i32 %6, 0
  br i1 %cmp15, label %if.then16, label %for.inc

if.then16:                                        ; preds = %land.lhs.true
  %cmp17 = icmp eq i32 %domid.045, -1
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then16
  store i32 %6, i32* %pdomid, align 4, !tbaa !3
  br label %for.inc

if.else:                                          ; preds = %if.then16
  %cmp19 = icmp eq i32 %6, %domid.045
  br i1 %cmp19, label %for.inc, label %return

for.inc:                                          ; preds = %if.else, %for.body, %land.lhs.true, %if.then18
  %domid.1 = phi i32 [ %6, %if.then18 ], [ %domid.045, %if.else ], [ %domid.045, %land.lhs.true ], [ %domid.045, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp11 = icmp slt i32 %7, %3
  br i1 %cmp11, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  %domid.0.lcssa = phi i32 [ -1, %if.end ], [ %domid.1, %for.inc ]
  %not.cmp24 = icmp ne i32 %domid.0.lcssa, -1
  %. = zext i1 %not.cmp24 to i32
  br label %return

return:                                           ; preds = %if.else, %for.end
  %retval.0 = phi i32 [ %., %for.end ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @GPart_validVtxSep(%struct._GPart* %gpart) #0 {
entry:
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %cmp = icmp eq %struct._GPart* %gpart, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), %struct._GPart* null) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nvtx1 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 2
  %1 = load i32* %nvtx1, align 4, !tbaa !3
  %g2 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1
  %2 = load %struct._Graph** %g2, align 8, !tbaa !0
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call3 = call i32* @IV_entries(%struct._IV* %compidsIV) #4
  %cmp453 = icmp sgt i32 %1, 0
  br i1 %cmp453, label %for.body, label %return

for.body:                                         ; preds = %if.end, %for.inc27
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.inc27 ], [ 0, %if.end ]
  %v.054 = phi i32 [ %inc28, %for.inc27 ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %call3, i64 %indvars.iv62
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %3, 0
  br i1 %cmp5, label %for.inc27, label %if.then6

if.then6:                                         ; preds = %for.body
  %4 = trunc i64 %indvars.iv62 to i32
  call void @Graph_adjAndSize(%struct._Graph* %2, i32 %4, i32* %vsize, i32** %vadj) #4
  %5 = load i32* %vsize, align 4, !tbaa !3
  %cmp849 = icmp sgt i32 %5, 0
  br i1 %cmp849, label %for.body9.lr.ph, label %for.inc27

for.body9.lr.ph:                                  ; preds = %if.then6
  %6 = load i32** %vadj, align 8, !tbaa !0
  br label %for.body9

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx11 = getelementptr inbounds i32* %6, i64 %indvars.iv
  %7 = load i32* %arrayidx11, align 4, !tbaa !3
  %cmp12 = icmp slt i32 %7, %1
  br i1 %cmp12, label %if.then13, label %for.inc

if.then13:                                        ; preds = %for.body9
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds i32* %call3, i64 %idxprom14
  %8 = load i32* %arrayidx15, align 4, !tbaa !3
  %cmp16 = icmp eq i32 %8, 0
  %cmp19 = icmp eq i32 %8, %3
  %or.cond = or i1 %cmp16, %cmp19
  br i1 %or.cond, label %for.inc, label %if.then20

if.then20:                                        ; preds = %if.then13
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([66 x i8]* @.str5, i64 0, i64 0), i32 %v.054, i32 %3, i32 %7, i32 %8) #4
  br label %return

for.inc:                                          ; preds = %if.then13, %for.body9
  %indvars.iv.next = add i64 %indvars.iv, 1
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp8 = icmp slt i32 %10, %5
  br i1 %cmp8, label %for.body9, label %for.inc27

for.inc27:                                        ; preds = %if.then6, %for.inc, %for.body
  %indvars.iv.next63 = add i64 %indvars.iv62, 1
  %inc28 = add nsw i32 %v.054, 1
  %11 = trunc i64 %indvars.iv.next63 to i32
  %cmp4 = icmp slt i32 %11, %1
  br i1 %cmp4, label %for.body, label %return

return:                                           ; preds = %if.end, %for.inc27, %if.then20
  %retval.0 = phi i32 [ 0, %if.then20 ], [ 1, %for.inc27 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @GPart_bndWeightsIV(%struct._GPart* %gpart) #0 {
entry:
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %cmp = icmp eq %struct._GPart* %gpart, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %g = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1
  %0 = load %struct._Graph** %g, align 8, !tbaa !0
  %cmp1 = icmp eq %struct._Graph* %0, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), %struct._GPart* %gpart) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %nvtx2 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 2
  %2 = load i32* %nvtx2, align 4, !tbaa !3
  %ncomp3 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 4
  %3 = load i32* %ncomp3, align 4, !tbaa !3
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call4 = call i32* @IV_entries(%struct._IV* %compidsIV) #4
  %cweightsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6
  %call5 = call i32* @IV_entries(%struct._IV* %cweightsIV) #4
  %vwghts6 = getelementptr inbounds %struct._Graph* %0, i64 0, i32 7
  %4 = load i32** %vwghts6, align 8, !tbaa !0
  %call7 = call %struct._IV* @IV_new() #4
  %add = add nsw i32 %3, 1
  call void @IV_init(%struct._IV* %call7, i32 %add, i32* null) #4
  call void @IV_fill(%struct._IV* %call7, i32 0) #4
  %call8 = call i32* @IV_entries(%struct._IV* %call7) #4
  %call10 = call i32* @IVinit(i32 %add, i32 -1) #4
  %cmp1166 = icmp sgt i32 %2, 0
  br i1 %cmp1166, label %for.body.lr.ph, label %for.end38

for.body.lr.ph:                                   ; preds = %if.end
  %cmp14 = icmp eq i32* %4, null
  br label %for.body

for.body:                                         ; preds = %for.inc36, %for.body.lr.ph
  %indvars.iv68 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next69, %for.inc36 ]
  %arrayidx = getelementptr inbounds i32* %call4, i64 %indvars.iv68
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp12 = icmp eq i32 %5, 0
  br i1 %cmp12, label %if.then13, label %for.inc36

if.then13:                                        ; preds = %for.body
  br i1 %cmp14, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then13
  %arrayidx16 = getelementptr inbounds i32* %4, i64 %indvars.iv68
  %6 = load i32* %arrayidx16, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %if.then13, %cond.false
  %cond = phi i32 [ %6, %cond.false ], [ 1, %if.then13 ]
  %7 = trunc i64 %indvars.iv68 to i32
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %7, i32* %vsize, i32** %vadj) #4
  %8 = load i32* %vsize, align 4, !tbaa !3
  %cmp1864 = icmp sgt i32 %8, 0
  br i1 %cmp1864, label %for.body19.lr.ph, label %for.inc36

for.body19.lr.ph:                                 ; preds = %cond.end
  %9 = load i32** %vadj, align 8, !tbaa !0
  br label %for.body19

for.body19:                                       ; preds = %for.body19.lr.ph, %for.inc
  %10 = phi i32 [ %8, %for.body19.lr.ph ], [ %15, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx21 = getelementptr inbounds i32* %9, i64 %indvars.iv
  %11 = load i32* %arrayidx21, align 4, !tbaa !3
  %idxprom22 = sext i32 %11 to i64
  %arrayidx23 = getelementptr inbounds i32* %call4, i64 %idxprom22
  %12 = load i32* %arrayidx23, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %12, 0
  br i1 %cmp24, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body19
  %idxprom25 = sext i32 %12 to i64
  %arrayidx26 = getelementptr inbounds i32* %call10, i64 %idxprom25
  %13 = load i32* %arrayidx26, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %13, %7
  br i1 %cmp27, label %for.inc, label %if.then28

if.then28:                                        ; preds = %land.lhs.true
  store i32 %7, i32* %arrayidx26, align 4, !tbaa !3
  %arrayidx32 = getelementptr inbounds i32* %call8, i64 %idxprom25
  %14 = load i32* %arrayidx32, align 4, !tbaa !3
  %add33 = add nsw i32 %14, %cond
  store i32 %add33, i32* %arrayidx32, align 4, !tbaa !3
  %.pre = load i32* %vsize, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body19, %if.then28
  %15 = phi i32 [ %10, %land.lhs.true ], [ %10, %for.body19 ], [ %.pre, %if.then28 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %16 = trunc i64 %indvars.iv.next to i32
  %cmp18 = icmp slt i32 %16, %15
  br i1 %cmp18, label %for.body19, label %for.inc36

for.inc36:                                        ; preds = %cond.end, %for.inc, %for.body
  %indvars.iv.next69 = add i64 %indvars.iv68, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next69 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %for.end38, label %for.body

for.end38:                                        ; preds = %for.inc36, %if.end
  call void @IVfree(i32* %call10) #4
  ret %struct._IV* %call7
}

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: optsize
declare void @IV_fill(%struct._IV*, i32) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
