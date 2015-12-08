; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/intrarefresh.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NumberOfMBs = internal unnamed_addr global i32 0, align 4
@NumberIntraPerPicture = internal unnamed_addr global i32 0, align 4
@RefreshPattern = internal unnamed_addr global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"RandomIntraInit: RefreshPattern\00", align 1
@IntraMBs = internal unnamed_addr global i32* null, align 8
@.str1 = private unnamed_addr constant [26 x i8] c"RandomIntraInit: IntraMBs\00", align 1
@WalkAround = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind optsize uwtable
define void @RandomIntraInit(i32 %xsize, i32 %ysize, i32 %refresh) #0 {
entry:
  tail call void @spec_srand(i32 1) #4
  %mul = mul nsw i32 %ysize, %xsize
  store i32 %mul, i32* @NumberOfMBs, align 4, !tbaa !0
  store i32 %refresh, i32* @NumberIntraPerPicture, align 4, !tbaa !0
  %add = add nsw i32 %mul, 1
  %conv = sext i32 %add to i64
  %mul1 = shl nsw i64 %conv, 2
  %call = tail call noalias i8* @malloc(i64 %mul1) #4
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** @RefreshPattern, align 8, !tbaa !3
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([32 x i8]* @.str, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %add3 = add nsw i32 %refresh, 1
  %conv4 = sext i32 %add3 to i64
  %mul5 = shl nsw i64 %conv4, 2
  %call6 = tail call noalias i8* @malloc(i64 %mul5) #4
  %1 = bitcast i8* %call6 to i32*
  store i32* %1, i32** @IntraMBs, align 8, !tbaa !3
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then9, label %for.cond.preheader

if.then9:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str1, i64 0, i64 0)) #4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end, %if.then9
  %2 = load i32* @NumberOfMBs, align 4, !tbaa !0
  %cmp1138 = icmp sgt i32 %2, 0
  br i1 %cmp1138, label %for.body.lr.ph, label %for.end28

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = load i32** @RefreshPattern, align 8, !tbaa !3
  br label %for.body

for.cond13.preheader:                             ; preds = %for.body
  %cmp1436 = icmp sgt i32 %4, 0
  br i1 %cmp1436, label %do.body.preheader, label %for.end28

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds i32* %3, i64 %indvars.iv
  store i32 -1, i32* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %4 = load i32* @NumberOfMBs, align 4, !tbaa !0
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp11 = icmp slt i32 %5, %4
  br i1 %cmp11, label %for.body, label %for.cond13.preheader

do.body.preheader:                                ; preds = %for.cond13.preheader, %do.end
  %i.137 = phi i32 [ %inc27, %do.end ], [ 0, %for.cond13.preheader ]
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.body
  %call17 = tail call double @spec_rand() #4
  %mul18 = fmul double %call17, 0x41DFFFFFFFC00000
  %conv19 = fptosi double %mul18 to i32
  %6 = load i32* @NumberOfMBs, align 4, !tbaa !0
  %rem = srem i32 %conv19, %6
  %idxprom20 = sext i32 %rem to i64
  %7 = load i32** @RefreshPattern, align 8, !tbaa !3
  %arrayidx21 = getelementptr inbounds i32* %7, i64 %idxprom20
  %8 = load i32* %arrayidx21, align 4, !tbaa !0
  %cmp22 = icmp eq i32 %8, -1
  br i1 %cmp22, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  store i32 %i.137, i32* %arrayidx21, align 4, !tbaa !0
  %inc27 = add nsw i32 %i.137, 1
  %9 = load i32* @NumberOfMBs, align 4, !tbaa !0
  %cmp14 = icmp slt i32 %inc27, %9
  br i1 %cmp14, label %do.body.preheader, label %for.end28

for.end28:                                        ; preds = %for.cond.preheader, %do.end, %for.cond13.preheader
  ret void
}

; Function Attrs: optsize
declare void @spec_srand(i32) #1

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #1

; Function Attrs: optsize
declare double @spec_rand() #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @RandomIntra(i32 %mb) #3 {
entry:
  %0 = load i32* @NumberIntraPerPicture, align 4, !tbaa !0
  %cmp4 = icmp sgt i32 %0, 0
  br i1 %cmp4, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %entry
  %1 = load i32** @IntraMBs, align 8, !tbaa !3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %2 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %2, %0
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds i32* %1, i64 %indvars.iv
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %3, %mb
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp1, label %return, label %for.cond

return:                                           ; preds = %for.cond, %for.body, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @RandomIntraNewPicture() #0 {
entry:
  %0 = load i32* @NumberIntraPerPicture, align 4, !tbaa !0
  %1 = load i32* @WalkAround, align 4, !tbaa !0
  %add = add nsw i32 %1, %0
  store i32 %add, i32* @WalkAround, align 4, !tbaa !0
  %cmp7 = icmp sgt i32 %0, 0
  br i1 %cmp7, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = load i32** @RefreshPattern, align 8, !tbaa !3
  %3 = load i32** @IntraMBs, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %i.08 = phi i32 [ %add, %for.body.lr.ph ], [ %inc3, %for.body ]
  %4 = load i32* @NumberOfMBs, align 4, !tbaa !0
  %rem = srem i32 %i.08, %4
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds i32* %3, i64 %indvars.iv
  store i32 %5, i32* %arrayidx2, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc3 = add nsw i32 %i.08, 1
  %6 = load i32* @NumberIntraPerPicture, align 4, !tbaa !0
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %7, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @RandomIntraUninit() #0 {
entry:
  %0 = load i32** @RefreshPattern, align 8, !tbaa !3
  %1 = bitcast i32* %0 to i8*
  tail call void @free(i8* %1) #4
  %2 = load i32** @IntraMBs, align 8, !tbaa !3
  %3 = bitcast i32* %2 to i8*
  tail call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
