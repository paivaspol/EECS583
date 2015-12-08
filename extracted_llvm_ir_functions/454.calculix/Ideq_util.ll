; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Ideq/src/Ideq_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Ideq = type { i32, i32, i32, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [44 x i8] c"\0A fatal error in Ideq_clear(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [43 x i8] c"\0A fatal error in Ideq_head(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Ideq_removeFromHead(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Ideq_insertAtHead(%p,%d)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [43 x i8] c"\0A fatal error in Ideq_tail(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Ideq_removeFromTail(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [54 x i8] c"\0A fatal error in Ideq_insertAtTail(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Ideq_clear(%struct._Ideq* %deq) #0 {
entry:
  %cmp = icmp eq %struct._Ideq* %deq, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), %struct._Ideq* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %tail = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2
  store i32 -1, i32* %tail, align 4, !tbaa !3
  %head = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1
  store i32 -1, i32* %head, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Ideq_head(%struct._Ideq* %deq) #0 {
entry:
  %cmp = icmp eq %struct._Ideq* %deq, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str1, i64 0, i64 0), %struct._Ideq* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1
  %1 = load i32* %head, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.end4, label %if.else

if.else:                                          ; preds = %if.end
  %idxprom = sext i32 %1 to i64
  %vec = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3
  %2 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.else
  %val.0 = phi i32 [ %3, %if.else ], [ -1, %if.end ]
  ret i32 %val.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Ideq_removeFromHead(%struct._Ideq* %deq) #0 {
entry:
  %cmp = icmp eq %struct._Ideq* %deq, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), %struct._Ideq* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %head = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1
  %1 = load i32* %head, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.end19, label %if.else

if.else:                                          ; preds = %if.end
  %idxprom = sext i32 %1 to i64
  %vec = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3
  %2 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %tail = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2
  %4 = load i32* %tail, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %1, %4
  br i1 %cmp5, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.else
  store i32 -1, i32* %tail, align 4, !tbaa !3
  store i32 -1, i32* %head, align 4, !tbaa !3
  br label %if.end19

if.else9:                                         ; preds = %if.else
  %size = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0
  %5 = load i32* %size, align 4, !tbaa !3
  %sub = add nsw i32 %5, -1
  %cmp12 = icmp eq i32 %1, %sub
  br i1 %cmp12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else9
  store i32 0, i32* %head, align 4, !tbaa !3
  br label %if.end19

if.else15:                                        ; preds = %if.else9
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %head, align 4, !tbaa !3
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then6, %if.else15, %if.then13
  %val.0 = phi i32 [ %3, %if.then6 ], [ %3, %if.then13 ], [ %3, %if.else15 ], [ -1, %if.end ]
  ret i32 %val.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Ideq_insertAtHead(%struct._Ideq* %deq, i32 %val) #0 {
entry:
  %cmp = icmp eq %struct._Ideq* %deq, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), %struct._Ideq* null, i32 %val) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3
  %1 = load i32** %vec, align 8, !tbaa !0
  %size2 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0
  %2 = load i32* %size2, align 4, !tbaa !3
  %head = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1
  %3 = load i32* %head, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %3, -1
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i32 %val, i32* %1, align 4, !tbaa !3
  %tail = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2
  store i32 0, i32* %tail, align 4, !tbaa !3
  store i32 0, i32* %head, align 4, !tbaa !3
  br label %if.end29

if.else:                                          ; preds = %if.end
  %cmp7 = icmp eq i32 %3, 0
  %tail9 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2
  %4 = load i32* %tail9, align 4, !tbaa !3
  br i1 %cmp7, label %if.then8, label %if.else17

if.then8:                                         ; preds = %if.else
  %sub = add nsw i32 %2, -1
  %cmp10 = icmp eq i32 %4, %sub
  br i1 %cmp10, label %if.end29, label %if.else12

if.else12:                                        ; preds = %if.then8
  store i32 %sub, i32* %head, align 4, !tbaa !3
  %idxprom = sext i32 %sub to i64
  %arrayidx15 = getelementptr inbounds i32* %1, i64 %idxprom
  store i32 %val, i32* %arrayidx15, align 4, !tbaa !3
  br label %if.end29

if.else17:                                        ; preds = %if.else
  %sub20 = add nsw i32 %3, -1
  %cmp21 = icmp eq i32 %4, %sub20
  br i1 %cmp21, label %if.end29, label %if.else23

if.else23:                                        ; preds = %if.else17
  store i32 %sub20, i32* %head, align 4, !tbaa !3
  %idxprom25 = sext i32 %sub20 to i64
  %arrayidx26 = getelementptr inbounds i32* %1, i64 %idxprom25
  store i32 %val, i32* %arrayidx26, align 4, !tbaa !3
  br label %if.end29

if.end29:                                         ; preds = %if.else17, %if.then8, %if.else12, %if.else23, %if.then4
  %rc.0 = phi i32 [ 1, %if.then4 ], [ 1, %if.else12 ], [ 1, %if.else23 ], [ -1, %if.then8 ], [ -1, %if.else17 ]
  ret i32 %rc.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Ideq_tail(%struct._Ideq* %deq) #0 {
entry:
  %cmp = icmp eq %struct._Ideq* %deq, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str4, i64 0, i64 0), %struct._Ideq* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %tail = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2
  %1 = load i32* %tail, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.end4, label %if.else

if.else:                                          ; preds = %if.end
  %idxprom = sext i32 %1 to i64
  %vec = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3
  %2 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.else
  %val.0 = phi i32 [ %3, %if.else ], [ -1, %if.end ]
  ret i32 %val.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Ideq_removeFromTail(%struct._Ideq* %deq) #0 {
entry:
  %cmp = icmp eq %struct._Ideq* %deq, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str5, i64 0, i64 0), %struct._Ideq* null) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %tail = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2
  %1 = load i32* %tail, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, -1
  br i1 %cmp1, label %if.end19, label %if.else

if.else:                                          ; preds = %if.end
  %idxprom = sext i32 %1 to i64
  %vec = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3
  %2 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %head = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1
  %4 = load i32* %head, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %4, %1
  br i1 %cmp5, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.else
  store i32 -1, i32* %tail, align 4, !tbaa !3
  store i32 -1, i32* %head, align 4, !tbaa !3
  br label %if.end19

if.else9:                                         ; preds = %if.else
  %cmp11 = icmp eq i32 %1, 0
  br i1 %cmp11, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.else9
  %size = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0
  %5 = load i32* %size, align 4, !tbaa !3
  %sub = add nsw i32 %5, -1
  store i32 %sub, i32* %tail, align 4, !tbaa !3
  br label %if.end19

if.else15:                                        ; preds = %if.else9
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %tail, align 4, !tbaa !3
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then6, %if.else15, %if.then12
  %val.0 = phi i32 [ %3, %if.then6 ], [ %3, %if.then12 ], [ %3, %if.else15 ], [ -1, %if.end ]
  ret i32 %val.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Ideq_insertAtTail(%struct._Ideq* %deq, i32 %val) #0 {
entry:
  %cmp = icmp eq %struct._Ideq* %deq, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str6, i64 0, i64 0), %struct._Ideq* null, i32 %val) #3
  tail call void @exit(i32 -1) #4
  unreachable

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 3
  %1 = load i32** %vec, align 8, !tbaa !0
  %tail = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 2
  %2 = load i32* %tail, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %2, -1
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i32 %val, i32* %1, align 4, !tbaa !3
  store i32 0, i32* %tail, align 4, !tbaa !3
  %head = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1
  store i32 0, i32* %head, align 4, !tbaa !3
  br label %if.end26

if.else:                                          ; preds = %if.end
  %size2 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 3, i32 0
  %3 = load i32* %size2, align 4, !tbaa !3
  %sub = add nsw i32 %3, -1
  %cmp7 = icmp eq i32 %2, %sub
  br i1 %cmp7, label %if.then8, label %if.else16

if.then8:                                         ; preds = %if.else
  %head9 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1
  %4 = load i32* %head9, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %4, 0
  br i1 %cmp10, label %if.end26, label %if.else12

if.else12:                                        ; preds = %if.then8
  store i32 0, i32* %tail, align 4, !tbaa !3
  store i32 %val, i32* %1, align 4, !tbaa !3
  br label %if.end26

if.else16:                                        ; preds = %if.else
  %add = add nsw i32 %2, 1
  %head18 = getelementptr inbounds %struct._Ideq* %deq, i64 0, i32 1
  %5 = load i32* %head18, align 4, !tbaa !3
  %cmp19 = icmp eq i32 %add, %5
  br i1 %cmp19, label %if.end26, label %if.else21

if.else21:                                        ; preds = %if.else16
  store i32 %add, i32* %tail, align 4, !tbaa !3
  %idxprom = sext i32 %add to i64
  %arrayidx23 = getelementptr inbounds i32* %1, i64 %idxprom
  store i32 %val, i32* %arrayidx23, align 4, !tbaa !3
  br label %if.end26

if.end26:                                         ; preds = %if.else16, %if.then8, %if.else12, %if.else21, %if.then4
  %rc.0 = phi i32 [ 1, %if.then4 ], [ 1, %if.else12 ], [ 1, %if.else21 ], [ -1, %if.then8 ], [ -1, %if.else16 ]
  ret i32 %rc.0
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
