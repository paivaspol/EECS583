; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/translate.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@squid_errno = external global i32
@.str = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @Translate(i8* %seq, i8** nocapture %code) #0 {
entry:
  %cmp = icmp eq i8* %seq, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* @squid_errno, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i64 @strlen(i8* %seq) #4
  %add = add i64 %call, 1
  %call1 = tail call noalias i8* @calloc(i64 %add, i64 1) #5
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then3, label %for.cond.preheader

if.then3:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str, i64 0, i64 0)) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then3, %if.end
  %aaptr.0.ph = phi i8* [ %call1, %if.end ], [ null, %if.then3 ]
  %0 = load i8* %seq, align 1, !tbaa !1
  %cmp566 = icmp eq i8 %0, 0
  br i1 %cmp566, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.cond.preheader, %for.end
  %1 = phi i8 [ %8, %for.end ], [ %0, %for.cond.preheader ]
  %aaptr.068 = phi i8* [ %add.ptr36, %for.end ], [ %aaptr.0.ph, %for.cond.preheader ]
  %seq.addr.067 = phi i8* [ %add.ptr38, %for.end ], [ %seq, %for.cond.preheader ]
  %add.ptr = getelementptr inbounds i8* %seq.addr.067, i64 1
  %2 = load i8* %add.ptr, align 1, !tbaa !1
  %cmp8 = icmp eq i8 %2, 0
  br i1 %cmp8, label %return, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %add.ptr10 = getelementptr inbounds i8* %seq.addr.067, i64 2
  %3 = load i8* %add.ptr10, align 1, !tbaa !1
  %cmp12 = icmp eq i8 %3, 0
  br i1 %cmp12, label %return, label %for.body17

for.cond14:                                       ; preds = %sw.epilog
  %4 = trunc i64 %indvars.iv to i32
  %cmp15 = icmp slt i32 %4, 3
  br i1 %cmp15, label %for.cond14.for.body17_crit_edge, label %for.end

for.cond14.for.body17_crit_edge:                  ; preds = %for.cond14
  %add.ptr18.phi.trans.insert = getelementptr inbounds i8* %seq.addr.067, i64 %indvars.iv
  %.pre = load i8* %add.ptr18.phi.trans.insert, align 1, !tbaa !1
  %phitmp = add i64 %indvars.iv, 1
  br label %for.body17

for.body17:                                       ; preds = %land.rhs, %for.cond14.for.body17_crit_edge
  %5 = phi i8 [ %.pre, %for.cond14.for.body17_crit_edge ], [ %1, %land.rhs ]
  %indvars.iv = phi i64 [ %phitmp, %for.cond14.for.body17_crit_edge ], [ 1, %land.rhs ]
  %codon.064 = phi i32 [ %codon.1, %for.cond14.for.body17_crit_edge ], [ 0, %land.rhs ]
  %mul = shl nsw i32 %codon.064, 2
  %conv19 = sext i8 %5 to i32
  switch i32 %conv19, label %for.end [
    i32 65, label %sw.epilog
    i32 97, label %sw.epilog
    i32 67, label %sw.bb20
    i32 99, label %sw.bb20
    i32 71, label %sw.bb22
    i32 103, label %sw.bb22
    i32 84, label %sw.bb24
    i32 116, label %sw.bb24
    i32 85, label %sw.bb26
    i32 117, label %sw.bb26
  ]

sw.bb20:                                          ; preds = %for.body17, %for.body17
  %add2162 = or i32 %mul, 1
  br label %sw.epilog

sw.bb22:                                          ; preds = %for.body17, %for.body17
  %add2361 = or i32 %mul, 2
  br label %sw.epilog

sw.bb24:                                          ; preds = %for.body17, %for.body17
  %add2560 = or i32 %mul, 3
  br label %sw.epilog

sw.bb26:                                          ; preds = %for.body17, %for.body17
  %add2759 = or i32 %mul, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body17, %for.body17, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20
  %codon.1 = phi i32 [ %add2759, %sw.bb26 ], [ %add2560, %sw.bb24 ], [ %add2361, %sw.bb22 ], [ %add2162, %sw.bb20 ], [ %mul, %for.body17 ], [ %mul, %for.body17 ]
  %cmp28 = icmp eq i32 %codon.1, 64
  br i1 %cmp28, label %for.end, label %for.cond14

for.end:                                          ; preds = %for.body17, %sw.epilog, %for.cond14
  %codon.2 = phi i32 [ 64, %sw.epilog ], [ %codon.1, %for.cond14 ], [ 64, %for.body17 ]
  %idxprom = sext i32 %codon.2 to i64
  %arrayidx = getelementptr inbounds i8** %code, i64 %idxprom
  %6 = load i8** %arrayidx, align 8, !tbaa !3
  %call32 = tail call i8* @strcpy(i8* %aaptr.068, i8* %6) #5
  %7 = load i8** %arrayidx, align 8, !tbaa !3
  %call35 = tail call i64 @strlen(i8* %7) #4
  %add.ptr36 = getelementptr inbounds i8* %aaptr.068, i64 %call35
  %add.ptr38 = getelementptr inbounds i8* %seq.addr.067, i64 3
  %8 = load i8* %add.ptr38, align 1, !tbaa !1
  %cmp5 = icmp eq i8 %8, 0
  br i1 %cmp5, label %return, label %land.lhs.true

return:                                           ; preds = %for.cond.preheader, %land.lhs.true, %land.rhs, %for.end, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ %call1, %for.end ], [ %call1, %land.rhs ], [ %call1, %land.lhs.true ], [ %call1, %for.cond.preheader ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly }
attributes #5 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
