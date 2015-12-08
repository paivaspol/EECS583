; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/comlib.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define void @put_serverbyte(i8 zeroext %data) #0 {
entry:
  store volatile i8 %data, i8* inttoptr (i64 2952794328 to i8*), align 8, !tbaa !0
  store volatile i8 1, i8* inttoptr (i64 2952794312 to i8*), align 8, !tbaa !0
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %0 = load volatile i8* inttoptr (i64 2952794312 to i8*), align 8, !tbaa !0
  %and = and i8 %0, 1
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind optsize uwtable
define zeroext i8 @get_serverbyte() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %0 = load volatile i8* inttoptr (i64 2952794304 to i8*), align 64, !tbaa !0
  %and = and i8 %0, 1
  %cmp = icmp eq i8 %and, 0
  br i1 %cmp, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %1 = load volatile i8* inttoptr (i64 2952794320 to i8*), align 16, !tbaa !0
  store volatile i8 0, i8* inttoptr (i64 2952794304 to i8*), align 64, !tbaa !0
  ret i8 %1
}

; Function Attrs: nounwind optsize uwtable
define void @get_serverdata(i8* nocapture %data, i32 %size) #0 {
entry:
  %cmp2 = icmp sgt i32 %size, 0
  br i1 %cmp2, label %while.cond.i.preheader, label %for.end

while.cond.i.preheader:                           ; preds = %entry, %get_serverbyte.exit
  %p.04 = phi i8* [ %incdec.ptr, %get_serverbyte.exit ], [ %data, %entry ]
  %size.addr.03 = phi i32 [ %dec, %get_serverbyte.exit ], [ %size, %entry ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.preheader, %while.cond.i
  %0 = load volatile i8* inttoptr (i64 2952794304 to i8*), align 64, !tbaa !0
  %and.i = and i8 %0, 1
  %cmp.i = icmp eq i8 %and.i, 0
  br i1 %cmp.i, label %while.cond.i, label %get_serverbyte.exit

get_serverbyte.exit:                              ; preds = %while.cond.i
  %1 = load volatile i8* inttoptr (i64 2952794320 to i8*), align 16, !tbaa !0
  store volatile i8 0, i8* inttoptr (i64 2952794304 to i8*), align 64, !tbaa !0
  %incdec.ptr = getelementptr inbounds i8* %p.04, i64 1
  store i8 %1, i8* %p.04, align 1, !tbaa !0
  %dec = add nsw i32 %size.addr.03, -1
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %while.cond.i.preheader, label %for.end

for.end:                                          ; preds = %get_serverbyte.exit, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @put_serverdata(i8* nocapture %data, i32 %size) #0 {
entry:
  %cmp2 = icmp sgt i32 %size, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %put_serverbyte.exit
  %p.04 = phi i8* [ %incdec.ptr, %put_serverbyte.exit ], [ %data, %entry ]
  %size.addr.03 = phi i32 [ %dec, %put_serverbyte.exit ], [ %size, %entry ]
  %0 = load i8* %p.04, align 1, !tbaa !0
  store volatile i8 %0, i8* inttoptr (i64 2952794328 to i8*), align 8, !tbaa !0
  store volatile i8 1, i8* inttoptr (i64 2952794312 to i8*), align 8, !tbaa !0
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %for.body
  %1 = load volatile i8* inttoptr (i64 2952794312 to i8*), align 8, !tbaa !0
  %and.i = and i8 %1, 1
  %tobool.i = icmp eq i8 %and.i, 0
  br i1 %tobool.i, label %put_serverbyte.exit, label %while.cond.i

put_serverbyte.exit:                              ; preds = %while.cond.i
  %incdec.ptr = getelementptr inbounds i8* %p.04, i64 1
  %dec = add nsw i32 %size.addr.03, -1
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %put_serverbyte.exit, %entry
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
