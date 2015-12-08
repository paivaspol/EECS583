; ModuleID = '../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/random.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gg_rand_state = type { [25 x i32], i32 }

@x = internal unnamed_addr global [25 x i32] zeroinitializer, align 16
@k = internal unnamed_addr global i32 0, align 4
@rand_initialized = internal unnamed_addr global i1 false

; Function Attrs: nounwind optsize uwtable
define void @gg_srand(i32 %seed) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %seed.addr.05 = phi i32 [ %seed, %entry ], [ %add, %for.body ]
  %arrayidx = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv
  store i32 %seed.addr.05, i32* %arrayidx, align 4, !tbaa !0
  %mul = mul i32 %seed.addr.05, 1313
  %add = add i32 %mul, 88897
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 25
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  store i32 24, i32* @k, align 4, !tbaa !0
  store i1 true, i1* @rand_initialized, align 1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @gg_rand() #0 {
entry:
  %call = tail call fastcc i32 @next_rand() #1
  %and = and i32 %call, 2147483647
  ret i32 %and
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @next_rand() #0 {
entry:
  %.b = load i1* @rand_initialized, align 1
  br i1 %.b, label %if.end, label %for.body.i

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %seed.addr.05.i = phi i32 [ %add.i, %for.body.i ], [ 1, %entry ]
  %arrayidx.i = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv.i
  store i32 %seed.addr.05.i, i32* %arrayidx.i, align 4, !tbaa !0
  %mul.i = mul i32 %seed.addr.05.i, 1313
  %add.i = add i32 %mul.i, 88897
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv16 = trunc i64 %indvars.iv.next.i to i32
  %exitcond17 = icmp eq i32 %lftr.wideiv16, 25
  br i1 %exitcond17, label %if.end.thread, label %for.body.i

if.end.thread:                                    ; preds = %for.body.i
  store i1 true, i1* @rand_initialized, align 1
  store i32 25, i32* @k, align 4, !tbaa !0
  br label %for.body.i11

if.end:                                           ; preds = %entry
  %.pre = load i32* @k, align 4, !tbaa !0
  %phitmp = add i32 %.pre, 1
  store i32 %phitmp, i32* @k, align 4, !tbaa !0
  %cmp = icmp eq i32 %phitmp, 25
  br i1 %cmp, label %for.body.i11, label %if.end2

for.body.i11:                                     ; preds = %if.end, %if.end.thread, %for.body.i11
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %for.body.i11 ], [ 0, %if.end.thread ], [ 0, %if.end ]
  %0 = add nsw i64 %indvars.iv48.i, 7
  %arrayidx.i10 = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %0
  %1 = load i32* %arrayidx.i10, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv48.i
  %2 = load i32* %arrayidx2.i, align 4, !tbaa !0
  %shr.i = lshr i32 %2, 1
  %xor.i = xor i32 %shr.i, %1
  %and.i = and i32 %2, 1
  %tobool.i = icmp ne i32 %and.i, 0
  %cond.i = select i1 %tobool.i, i32 -1900031960, i32 0
  %xor5.i = xor i32 %xor.i, %cond.i
  store i32 %xor5.i, i32* %arrayidx2.i, align 4, !tbaa !0
  %indvars.iv.next49.i = add i64 %indvars.iv48.i, 1
  %lftr.wideiv14 = trunc i64 %indvars.iv.next49.i to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv14, 18
  br i1 %exitcond15, label %for.body10.i, label %for.body.i11

for.body10.i:                                     ; preds = %for.body.i11, %for.body10.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %for.body10.i ], [ 18, %for.body.i11 ]
  %3 = add nsw i64 %indvars.iv43.i, -18
  %arrayidx13.i = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %3
  %4 = load i32* %arrayidx13.i, align 4, !tbaa !0
  %arrayidx15.i = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv43.i
  %5 = load i32* %arrayidx15.i, align 4, !tbaa !0
  %shr16.i = lshr i32 %5, 1
  %xor17.i = xor i32 %shr16.i, %4
  %and20.i = and i32 %5, 1
  %tobool21.i = icmp ne i32 %and20.i, 0
  %cond22.i = select i1 %tobool21.i, i32 -1900031960, i32 0
  %xor23.i = xor i32 %xor17.i, %cond22.i
  store i32 %xor23.i, i32* %arrayidx15.i, align 4, !tbaa !0
  %indvars.iv.next44.i = add i64 %indvars.iv43.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next44.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 25
  br i1 %exitcond, label %iterate_tgfsr.exit, label %for.body10.i

iterate_tgfsr.exit:                               ; preds = %for.body10.i
  store i32 0, i32* @k, align 4, !tbaa !0
  br label %if.end2

if.end2:                                          ; preds = %iterate_tgfsr.exit, %if.end
  %6 = phi i32 [ 0, %iterate_tgfsr.exit ], [ %phitmp, %if.end ]
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %idxprom
  %7 = load i32* %arrayidx, align 4, !tbaa !0
  %shl = shl i32 %7, 7
  %and = and i32 %shl, 727393536
  %xor = xor i32 %and, %7
  %shl5 = shl i32 %xor, 15
  %and6 = and i32 %shl5, -611647488
  %xor7 = xor i32 %and6, %xor
  ret i32 %xor7
}

; Function Attrs: nounwind optsize uwtable
define i32 @gg_urand() #0 {
entry:
  %call = tail call fastcc i32 @next_rand() #1
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define double @gg_drand() #0 {
entry:
  %call = tail call fastcc i32 @next_rand() #1
  %conv = uitofp i32 %call to double
  %mul = fmul double %conv, 0x3DEFFFFFFFFFFFFF
  ret double %mul
}

; Function Attrs: nounwind optsize uwtable
define void @gg_get_rand_state(%struct.gg_rand_state* nocapture %state) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds %struct.gg_rand_state* %state, i64 0, i32 0, i64 %indvars.iv
  store i32 %0, i32* %arrayidx2, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 25
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %1 = load i32* @k, align 4, !tbaa !0
  %k = getelementptr inbounds %struct.gg_rand_state* %state, i64 0, i32 1
  store i32 %1, i32* %k, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @gg_set_rand_state(%struct.gg_rand_state* nocapture %state) #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.gg_rand_state* %state, i64 0, i32 0, i64 %indvars.iv
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds [25 x i32]* @x, i64 0, i64 %indvars.iv
  store i32 %0, i32* %arrayidx2, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 25
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %k = getelementptr inbounds %struct.gg_rand_state* %state, i64 0, i32 1
  %1 = load i32* %k, align 4, !tbaa !0
  store i32 %1, i32* @k, align 4, !tbaa !0
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
