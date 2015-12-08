; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_permute.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [57 x i8] c"\0A fatal error in DenseMtx_permuteRows(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DenseMtx_permuteRows(%p,%p)\0A irow = %d, maxnrow = %d\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in DenseMtx_permuteColumns(%p,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [73 x i8] c"\0A fatal error in DenseMtx_permuteColumns(%p,%p)\0A jcol = %d, maxncol = %d\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_permuteRows(%struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV) #0 {
entry:
  %a2 = alloca %struct._A2, align 8
  %maxnrow = alloca i32, align 4
  %nrow = alloca i32, align 4
  %oldToNew = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp eq %struct._IV* %oldToNewIV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #4
  %1 = load i32* %nrow, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, 1
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  call void @IV_sizeAndEntries(%struct._IV* %oldToNewIV, i32* %maxnrow, i32** %oldToNew) #4
  %2 = load i32* %nrow, align 4, !tbaa !3
  %cmp532 = icmp sgt i32 %2, 0
  br i1 %cmp532, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %3 = load i32** %rowind, align 8, !tbaa !0
  %4 = load i32** %oldToNew, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end11
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end11 ]
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp6 = icmp sgt i32 %5, -1
  %.pre = load i32* %maxnrow, align 4, !tbaa !3
  %cmp8 = icmp slt i32 %5, %.pre
  %or.cond35 = and i1 %cmp6, %cmp8
  br i1 %or.cond35, label %if.end11, label %if.then9

if.then9:                                         ; preds = %for.body
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([70 x i8]* @.str1, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV, i32 %5, i32 %.pre) #4
  call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %for.body
  %idxprom14 = sext i32 %5 to i64
  %arrayidx15 = getelementptr inbounds i32* %4, i64 %idxprom14
  %7 = load i32* %arrayidx15, align 4, !tbaa !3
  store i32 %7, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = load i32* %nrow, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp5 = icmp slt i32 %9, %8
  br i1 %cmp5, label %for.body, label %for.end

for.end:                                          ; preds = %if.end11, %if.end4
  call void @A2_setDefaultFields(%struct._A2* %a2) #4
  call void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #4
  %10 = load i32* %nrow, align 4, !tbaa !3
  %11 = load i32** %rowind, align 8, !tbaa !0
  %call18 = call i32 @A2_sortRowsUp(%struct._A2* %a2, i32 %10, i32* %11) #4
  br label %return

return:                                           ; preds = %if.end, %for.end
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @DenseMtx_rowIndices(%struct._DenseMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #3

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #3

; Function Attrs: optsize
declare void @DenseMtx_setA2(%struct._DenseMtx*, %struct._A2*) #3

; Function Attrs: optsize
declare i32 @A2_sortRowsUp(%struct._A2*, i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_permuteColumns(%struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV) #0 {
entry:
  %a2 = alloca %struct._A2, align 8
  %maxncol = alloca i32, align 4
  %ncol = alloca i32, align 4
  %oldToNew = alloca i32*, align 8
  %colind = alloca i32*, align 8
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp eq %struct._IV* %oldToNewIV, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV) #4
  call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #4
  %1 = load i32* %ncol, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, 1
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  call void @IV_sizeAndEntries(%struct._IV* %oldToNewIV, i32* %maxncol, i32** %oldToNew) #4
  %2 = load i32* %ncol, align 4, !tbaa !3
  %cmp530 = icmp sgt i32 %2, 0
  br i1 %cmp530, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %3 = load i32** %colind, align 8, !tbaa !0
  %4 = load i32** %oldToNew, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end11
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end11 ]
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp6 = icmp sgt i32 %5, -1
  %.pre = load i32* %maxncol, align 4, !tbaa !3
  %cmp8 = icmp slt i32 %5, %.pre
  %or.cond33 = and i1 %cmp6, %cmp8
  br i1 %or.cond33, label %if.end11, label %if.then9

if.then9:                                         ; preds = %for.body
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([73 x i8]* @.str3, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IV* %oldToNewIV, i32 %5, i32 %.pre) #4
  call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %for.body
  %idxprom12 = sext i32 %5 to i64
  %arrayidx13 = getelementptr inbounds i32* %4, i64 %idxprom12
  %7 = load i32* %arrayidx13, align 4, !tbaa !3
  store i32 %7, i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = load i32* %ncol, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv.next to i32
  %cmp5 = icmp slt i32 %9, %8
  br i1 %cmp5, label %for.body, label %for.end

for.end:                                          ; preds = %if.end11, %if.end4
  call void @A2_setDefaultFields(%struct._A2* %a2) #4
  call void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #4
  %10 = load i32* %ncol, align 4, !tbaa !3
  %11 = load i32** %colind, align 8, !tbaa !0
  %call16 = call i32 @A2_sortColumnsUp(%struct._A2* %a2, i32 %10, i32* %11) #4
  br label %return

return:                                           ; preds = %if.end, %for.end
  ret void
}

; Function Attrs: optsize
declare void @DenseMtx_columnIndices(%struct._DenseMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @A2_sortColumnsUp(%struct._A2*, i32, i32*) #3

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
