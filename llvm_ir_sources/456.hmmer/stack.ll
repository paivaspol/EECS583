; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/stack.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intstack_s = type { i32, %struct.intstack_s* }

@.str = private unnamed_addr constant [40 x i8] c"Memory allocation failure at %s line %d\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/stack.c\00", align 1

; Function Attrs: nounwind optsize uwtable
define noalias %struct.intstack_s* @InitIntStack() #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.intstack_s*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 42) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nxt = getelementptr inbounds i8* %call, i64 8
  %1 = bitcast i8* %nxt to %struct.intstack_s**
  store %struct.intstack_s* null, %struct.intstack_s** %1, align 8, !tbaa !0
  ret %struct.intstack_s* %0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @PushIntStack(%struct.intstack_s* nocapture %stack, i32 %data) #0 {
entry:
  %call = tail call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.intstack_s*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([40 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 52) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %data1 = bitcast i8* %call to i32*
  store i32 %data, i32* %data1, align 4, !tbaa !3
  %nxt = getelementptr inbounds %struct.intstack_s* %stack, i64 0, i32 1
  %1 = load %struct.intstack_s** %nxt, align 8, !tbaa !0
  %nxt2 = getelementptr inbounds i8* %call, i64 8
  %2 = bitcast i8* %nxt2 to %struct.intstack_s**
  store %struct.intstack_s* %1, %struct.intstack_s** %2, align 8, !tbaa !0
  store %struct.intstack_s* %0, %struct.intstack_s** %nxt, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @PopIntStack(%struct.intstack_s* nocapture %stack, i32* nocapture %ret_data) #0 {
entry:
  %nxt = getelementptr inbounds %struct.intstack_s* %stack, i64 0, i32 1
  %0 = load %struct.intstack_s** %nxt, align 8, !tbaa !0
  %cmp = icmp eq %struct.intstack_s* %0, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %nxt2 = getelementptr inbounds %struct.intstack_s* %0, i64 0, i32 1
  %1 = load %struct.intstack_s** %nxt2, align 8, !tbaa !0
  store %struct.intstack_s* %1, %struct.intstack_s** %nxt, align 8, !tbaa !0
  %data = getelementptr inbounds %struct.intstack_s* %0, i64 0, i32 0
  %2 = load i32* %data, align 4, !tbaa !3
  store i32 %2, i32* %ret_data, align 4, !tbaa !3
  %3 = bitcast %struct.intstack_s* %0 to i8*
  tail call void @free(i8* %3) #3
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @ReverseIntStack(%struct.intstack_s* nocapture %stack) #0 {
entry:
  %nxt = getelementptr inbounds %struct.intstack_s* %stack, i64 0, i32 1
  %0 = load %struct.intstack_s** %nxt, align 8, !tbaa !0
  store %struct.intstack_s* null, %struct.intstack_s** %nxt, align 8, !tbaa !0
  %cmp12 = icmp eq %struct.intstack_s* %0, null
  br i1 %cmp12, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %old.014 = phi %struct.intstack_s* [ %1, %while.body ], [ %0, %entry ]
  %storemerge13 = phi %struct.intstack_s* [ %old.014, %while.body ], [ null, %entry ]
  %nxt2 = getelementptr inbounds %struct.intstack_s* %old.014, i64 0, i32 1
  %1 = load %struct.intstack_s** %nxt2, align 8, !tbaa !0
  store %struct.intstack_s* %storemerge13, %struct.intstack_s** %nxt2, align 8, !tbaa !0
  store %struct.intstack_s* %old.014, %struct.intstack_s** %nxt, align 8, !tbaa !0
  %cmp = icmp eq %struct.intstack_s* %1, null
  br i1 %cmp, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @FreeIntStack(%struct.intstack_s* nocapture %stack) #0 {
entry:
  %nxt.i = getelementptr inbounds %struct.intstack_s* %stack, i64 0, i32 1
  %0 = load %struct.intstack_s** %nxt.i, align 8, !tbaa !0
  %cmp.i4 = icmp eq %struct.intstack_s* %0, null
  br i1 %cmp.i4, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %1 = phi %struct.intstack_s* [ %4, %while.body ], [ %0, %entry ]
  %count.05 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %nxt2.i = getelementptr inbounds %struct.intstack_s* %1, i64 0, i32 1
  %2 = load %struct.intstack_s** %nxt2.i, align 8, !tbaa !0
  store %struct.intstack_s* %2, %struct.intstack_s** %nxt.i, align 8, !tbaa !0
  %3 = bitcast %struct.intstack_s* %1 to i8*
  tail call void @free(i8* %3) #3
  %inc = add nsw i32 %count.05, 1
  %4 = load %struct.intstack_s** %nxt.i, align 8, !tbaa !0
  %cmp.i = icmp eq %struct.intstack_s* %4, null
  br i1 %cmp.i, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %count.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %5 = bitcast %struct.intstack_s* %stack to i8*
  tail call void @free(i8* %5) #3
  ret i32 %count.0.lcssa
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
