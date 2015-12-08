; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/invblock.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"invblock\00", align 1
@.str1 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/invblock.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32* @make_invblock(%struct.t_block* nocapture %block, i32 %nr) #0 {
entry:
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 42, i32 %nr, i32 4) #3
  %0 = bitcast i8* %call to i32*
  %cmp42 = icmp sgt i32 %nr, 0
  br i1 %cmp42, label %for.body.lr.ph, label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %entry
  %1 = add i32 %nr, -1
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 2
  %4 = add i64 %3, 4
  call void @llvm.memset.p0i8.i64(i8* %call, i8 -1, i64 %4, i32 4, i1 false)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body.lr.ph, %entry
  %nr2 = getelementptr inbounds %struct.t_block* %block, i64 0, i32 1
  %5 = load i32* %nr2, align 4, !tbaa !0
  %cmp340 = icmp sgt i32 %5, 0
  br i1 %cmp340, label %for.body4.lr.ph, label %for.end22

for.body4.lr.ph:                                  ; preds = %for.cond1.preheader
  %index = getelementptr inbounds %struct.t_block* %block, i64 0, i32 2
  %6 = load i32** %index, align 8, !tbaa !3
  %a = getelementptr inbounds %struct.t_block* %block, i64 0, i32 4
  %.pre48 = load i32* %6, align 4, !tbaa !0
  br label %for.body4

for.cond7.for.cond1.loopexit_crit_edge:           ; preds = %for.body12
  %.pre = load i32* %nr2, align 4, !tbaa !0
  br label %for.cond1.loopexit

for.cond1.loopexit:                               ; preds = %for.cond7.for.cond1.loopexit_crit_edge, %for.body4
  %7 = phi i32 [ %17, %for.cond7.for.cond1.loopexit_crit_edge ], [ %12, %for.body4 ]
  %8 = phi i32 [ %.pre, %for.cond7.for.cond1.loopexit_crit_edge ], [ %11, %for.body4 ]
  %9 = trunc i64 %indvars.iv.next45 to i32
  %cmp3 = icmp slt i32 %9, %8
  br i1 %cmp3, label %for.body4, label %for.end22

for.body4:                                        ; preds = %for.cond1.loopexit, %for.body4.lr.ph
  %10 = phi i32 [ %.pre48, %for.body4.lr.ph ], [ %7, %for.cond1.loopexit ]
  %11 = phi i32 [ %5, %for.body4.lr.ph ], [ %8, %for.cond1.loopexit ]
  %indvars.iv44 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next45, %for.cond1.loopexit ]
  %indvars.iv.next45 = add i64 %indvars.iv44, 1
  %arrayidx1037 = getelementptr inbounds i32* %6, i64 %indvars.iv.next45
  %12 = load i32* %arrayidx1037, align 4, !tbaa !0
  %cmp1138 = icmp slt i32 %10, %12
  br i1 %cmp1138, label %for.body12.lr.ph, label %for.cond1.loopexit

for.body12.lr.ph:                                 ; preds = %for.body4
  %13 = load i32** %a, align 8, !tbaa !3
  %14 = sext i32 %10 to i64
  br label %for.body12

for.body12:                                       ; preds = %for.body12.lr.ph, %for.body12
  %indvars.iv = phi i64 [ %14, %for.body12.lr.ph ], [ %indvars.iv.next, %for.body12 ]
  %arrayidx14 = getelementptr inbounds i32* %13, i64 %indvars.iv
  %15 = load i32* %arrayidx14, align 4, !tbaa !0
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds i32* %0, i64 %idxprom15
  %16 = trunc i64 %indvars.iv44 to i32
  store i32 %16, i32* %arrayidx16, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %17 = load i32* %arrayidx1037, align 4, !tbaa !0
  %18 = trunc i64 %indvars.iv.next to i32
  %cmp11 = icmp slt i32 %18, %17
  br i1 %cmp11, label %for.body12, label %for.cond7.for.cond1.loopexit_crit_edge

for.end22:                                        ; preds = %for.cond1.loopexit, %for.cond1.preheader
  ret i32* %0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
