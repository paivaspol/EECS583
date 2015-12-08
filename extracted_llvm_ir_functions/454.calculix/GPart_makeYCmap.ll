; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_makeYCmap.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct._IO_FILE* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [52 x i8] c"\0A fatal error in GPart_makeYCmap(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"\0A YVmapIV\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @GPart_makeYCmap(%struct._GPart* %gpart, %struct._IV* %YVmapIV) #0 {
entry:
  %vsize = alloca i32, align 4
  %vadj = alloca i32*, align 8
  %cmp = icmp eq %struct._GPart* %gpart, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %g1 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1
  %0 = load %struct._Graph** %g1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Graph* %0, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 2
  %1 = load i32* %nvtx4, align 4, !tbaa !3
  %cmp5 = icmp slt i32 %1, 1
  %cmp7 = icmp eq %struct._IV* %YVmapIV, null
  %or.cond = or i1 %cmp5, %cmp7
  br i1 %or.cond, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false3
  %call = call i32 @IV_size(%struct._IV* %YVmapIV) #5
  %cmp9 = icmp slt i32 %call, 1
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %call11 = call i32* @IV_entries(%struct._IV* %YVmapIV) #5
  %cmp12 = icmp eq i32* %call11, null
  br i1 %cmp12, label %if.then, label %for.body.lr.ph

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart, %struct._IV* %YVmapIV) #5
  %cmp14 = icmp eq %struct._IV* %YVmapIV, null
  br i1 %cmp14, label %if.end, label %if.then15

if.then15:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %3)
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = call i32 @IV_writeForHumanEye(%struct._IV* %YVmapIV, %struct._IO_FILE* %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then15
  call void @exit(i32 -1) #6
  unreachable

for.body.lr.ph:                                   ; preds = %lor.lhs.false10
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call19 = call i32* @IV_entries(%struct._IV* %compidsIV) #5
  %call20 = call i32* @IVinit(i32 %1, i32 -1) #5
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv128 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next129, %for.body ]
  %arrayidx = getelementptr inbounds i32* %call11, i64 %indvars.iv128
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom22 = sext i32 %6 to i64
  %arrayidx23 = getelementptr inbounds i32* %call20, i64 %idxprom22
  %7 = trunc i64 %indvars.iv128 to i32
  store i32 %7, i32* %arrayidx23, align 4, !tbaa !3
  %indvars.iv.next129 = add i64 %indvars.iv128, 1
  %lftr.wideiv130 = trunc i64 %indvars.iv.next129 to i32
  %exitcond131 = icmp eq i32 %lftr.wideiv130, %call
  br i1 %exitcond131, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call24 = call %struct._IV* @IV_new() #5
  call void @IV_init(%struct._IV* %call24, i32 %call, i32* null) #5
  %call25 = call i32* @IV_entries(%struct._IV* %call24) #5
  br label %for.body28

for.body28:                                       ; preds = %for.end, %for.inc77
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.inc77 ], [ 0, %for.end ]
  %arrayidx30 = getelementptr inbounds i32* %call25, i64 %indvars.iv125
  store i32 0, i32* %arrayidx30, align 4, !tbaa !3
  %arrayidx32 = getelementptr inbounds i32* %call11, i64 %indvars.iv125
  %8 = load i32* %arrayidx32, align 4, !tbaa !3
  call void @Graph_adjAndSize(%struct._Graph* %0, i32 %8, i32* %vsize, i32** %vadj) #5
  %9 = load i32* %vsize, align 4, !tbaa !3
  %cmp34119 = icmp sgt i32 %9, 0
  br i1 %cmp34119, label %for.body35.lr.ph, label %for.inc77

for.body35.lr.ph:                                 ; preds = %for.body28
  %10 = load i32** %vadj, align 8, !tbaa !0
  br label %for.body35

for.body35:                                       ; preds = %for.body35.lr.ph, %for.inc74
  %indvars.iv = phi i64 [ 0, %for.body35.lr.ph ], [ %indvars.iv.next, %for.inc74 ]
  %arrayidx37 = getelementptr inbounds i32* %10, i64 %indvars.iv
  %11 = load i32* %arrayidx37, align 4, !tbaa !3
  %cmp38 = icmp slt i32 %11, %1
  br i1 %cmp38, label %land.lhs.true, label %for.inc74

land.lhs.true:                                    ; preds = %for.body35
  %idxprom39 = sext i32 %11 to i64
  %arrayidx40 = getelementptr inbounds i32* %call20, i64 %idxprom39
  %12 = load i32* %arrayidx40, align 4, !tbaa !3
  %cmp41 = icmp eq i32 %12, -1
  br i1 %cmp41, label %if.then42, label %for.inc74

if.then42:                                        ; preds = %land.lhs.true
  %arrayidx44 = getelementptr inbounds i32* %call19, i64 %idxprom39
  %13 = load i32* %arrayidx44, align 4, !tbaa !3
  switch i32 %13, label %for.inc74 [
    i32 1, label %if.then46
    i32 2, label %if.then60
  ]

if.then46:                                        ; preds = %if.then42
  %14 = load i32* %arrayidx30, align 4, !tbaa !3
  %cmp49 = icmp eq i32 %14, 2
  br i1 %cmp49, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.then46
  store i32 3, i32* %arrayidx30, align 4, !tbaa !3
  br label %for.inc77

if.else:                                          ; preds = %if.then46
  store i32 1, i32* %arrayidx30, align 4, !tbaa !3
  br label %for.inc74

if.then60:                                        ; preds = %if.then42
  %15 = load i32* %arrayidx30, align 4, !tbaa !3
  %cmp63 = icmp eq i32 %15, 1
  br i1 %cmp63, label %if.then64, label %if.else67

if.then64:                                        ; preds = %if.then60
  store i32 3, i32* %arrayidx30, align 4, !tbaa !3
  br label %for.inc77

if.else67:                                        ; preds = %if.then60
  store i32 2, i32* %arrayidx30, align 4, !tbaa !3
  br label %for.inc74

for.inc74:                                        ; preds = %if.then42, %for.body35, %land.lhs.true, %if.else67, %if.else
  %indvars.iv.next = add i64 %indvars.iv, 1
  %16 = load i32* %vsize, align 4, !tbaa !3
  %17 = trunc i64 %indvars.iv.next to i32
  %cmp34 = icmp slt i32 %17, %16
  br i1 %cmp34, label %for.body35, label %for.inc77

for.inc77:                                        ; preds = %for.body28, %for.inc74, %if.then50, %if.then64
  %indvars.iv.next126 = add i64 %indvars.iv125, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next126 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call
  br i1 %exitcond, label %for.end79, label %for.body28

for.end79:                                        ; preds = %for.inc77
  call void @IVfree(i32* %call20) #5
  ret %struct._IV* %call24
}

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #1

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #1

; Function Attrs: optsize
declare %struct._IV* @IV_new() #1

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #1

; Function Attrs: optsize
declare void @Graph_adjAndSize(%struct._Graph*, i32, i32*, i32**) #1

; Function Attrs: optsize
declare void @IVfree(i32*) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
