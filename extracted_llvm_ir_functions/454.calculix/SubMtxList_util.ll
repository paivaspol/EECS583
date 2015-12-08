; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxList/src/SubMtxList_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtxList = type { i32, %struct._SubMtx**, i32*, %struct._Lock*, i8*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [62 x i8] c"\0A fatal error in SubMtxList_isListNonempty(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [59 x i8] c"\0A fatal error in SubMtxList_isCountZero(%p,%d)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [66 x i8] c"\0A fatal error in SubMtxList_addObjectToList(%p,%p,%d)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"\0A fatal error in SubMtxList_getList(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtxList_isListNonempty(%struct._SubMtxList* %list, i32 %ilist) #0 {
entry:
  %cmp = icmp eq %struct._SubMtxList* %list, null
  %cmp1 = icmp slt i32 %ilist, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nlist = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 0
  %0 = load i32* %nlist, align 4, !tbaa !0
  %cmp3 = icmp sgt i32 %0, %ilist
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), %struct._SubMtxList* %list, i32 %ilist) #4
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false2, %if.then
  %idxprom = sext i32 %ilist to i64
  %heads = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 1
  %2 = load %struct._SubMtx*** %heads, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct._SubMtx** %2, i64 %idxprom
  %3 = load %struct._SubMtx** %arrayidx, align 8, !tbaa !3
  %cmp4 = icmp ne %struct._SubMtx* %3, null
  %conv = zext i1 %cmp4 to i32
  ret i32 %conv
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtxList_isCountZero(%struct._SubMtxList* %list, i32 %ilist) #0 {
entry:
  %cmp = icmp eq %struct._SubMtxList* %list, null
  %cmp1 = icmp slt i32 %ilist, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nlist = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 0
  %0 = load i32* %nlist, align 4, !tbaa !0
  %cmp3 = icmp sgt i32 %0, %ilist
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str1, i64 0, i64 0), %struct._SubMtxList* %list, i32 %ilist) #4
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false2, %if.then
  %counts = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 2
  %2 = load i32** %counts, align 8, !tbaa !3
  %cmp4 = icmp eq i32* %2, null
  br i1 %cmp4, label %return, label %if.else

if.else:                                          ; preds = %if.end
  %idxprom = sext i32 %ilist to i64
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %3, 0
  %conv = zext i1 %cmp7 to i32
  br label %return

return:                                           ; preds = %if.end, %if.else
  %retval.0 = phi i32 [ %conv, %if.else ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtxList_addObjectToList(%struct._SubMtxList* %list, %struct._SubMtx* %mtx, i32 %ilist) #0 {
entry:
  %cmp = icmp eq %struct._SubMtxList* %list, null
  %cmp1 = icmp slt i32 %ilist, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nlist = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 0
  %0 = load i32* %nlist, align 4, !tbaa !0
  %cmp3 = icmp sgt i32 %0, %ilist
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([66 x i8]* @.str2, i64 0, i64 0), %struct._SubMtxList* %list, %struct._SubMtx* %mtx, i32 %ilist) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %lock = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 3
  %2 = load %struct._Lock** %lock, align 8, !tbaa !3
  %cmp4 = icmp eq %struct._Lock* %2, null
  br i1 %cmp4, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 4
  %3 = load i8** %flags, align 8, !tbaa !3
  %cmp5 = icmp eq i8* %3, null
  br i1 %cmp5, label %if.then10, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %land.lhs.true
  %idxprom = sext i32 %ilist to i64
  %arrayidx = getelementptr inbounds i8* %3, i64 %idxprom
  %4 = load i8* %arrayidx, align 1, !tbaa !1
  %cmp8 = icmp eq i8 %4, 89
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %lor.lhs.false6, %land.lhs.true
  tail call void @Lock_lock(%struct._Lock* %2) #4
  %cmp12 = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp12, label %if.end20, label %if.then14

if.then14:                                        ; preds = %if.then10
  %idxprom15 = sext i32 %ilist to i64
  %heads = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 1
  %5 = load %struct._SubMtx*** %heads, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds %struct._SubMtx** %5, i64 %idxprom15
  %6 = load %struct._SubMtx** %arrayidx16, align 8, !tbaa !3
  %next = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 9
  store %struct._SubMtx* %6, %struct._SubMtx** %next, align 8, !tbaa !3
  %7 = load %struct._SubMtx*** %heads, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds %struct._SubMtx** %7, i64 %idxprom15
  store %struct._SubMtx* %mtx, %struct._SubMtx** %arrayidx19, align 8, !tbaa !3
  br label %if.end20

if.end20:                                         ; preds = %if.then10, %if.then14
  %counts = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 2
  %8 = load i32** %counts, align 8, !tbaa !3
  %cmp21 = icmp eq i32* %8, null
  br i1 %cmp21, label %if.end27, label %if.then23

if.then23:                                        ; preds = %if.end20
  %idxprom24 = sext i32 %ilist to i64
  %arrayidx26 = getelementptr inbounds i32* %8, i64 %idxprom24
  %9 = load i32* %arrayidx26, align 4, !tbaa !0
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %arrayidx26, align 4, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %if.end20, %if.then23
  %nlocks = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 5
  %10 = load i32* %nlocks, align 4, !tbaa !0
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %nlocks, align 4, !tbaa !0
  %11 = load %struct._Lock** %lock, align 8, !tbaa !3
  tail call void @Lock_unlock(%struct._Lock* %11) #4
  br label %if.end49

if.else:                                          ; preds = %if.end, %lor.lhs.false6
  %cmp29 = icmp eq %struct._SubMtx* %mtx, null
  br i1 %cmp29, label %if.end39, label %if.then31

if.then31:                                        ; preds = %if.else
  %idxprom32 = sext i32 %ilist to i64
  %heads33 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 1
  %12 = load %struct._SubMtx*** %heads33, align 8, !tbaa !3
  %arrayidx34 = getelementptr inbounds %struct._SubMtx** %12, i64 %idxprom32
  %13 = load %struct._SubMtx** %arrayidx34, align 8, !tbaa !3
  %next35 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 9
  store %struct._SubMtx* %13, %struct._SubMtx** %next35, align 8, !tbaa !3
  %14 = load %struct._SubMtx*** %heads33, align 8, !tbaa !3
  %arrayidx38 = getelementptr inbounds %struct._SubMtx** %14, i64 %idxprom32
  store %struct._SubMtx* %mtx, %struct._SubMtx** %arrayidx38, align 8, !tbaa !3
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then31
  %counts40 = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 2
  %15 = load i32** %counts40, align 8, !tbaa !3
  %cmp41 = icmp eq i32* %15, null
  br i1 %cmp41, label %if.end49, label %if.then43

if.then43:                                        ; preds = %if.end39
  %idxprom44 = sext i32 %ilist to i64
  %arrayidx46 = getelementptr inbounds i32* %15, i64 %idxprom44
  %16 = load i32* %arrayidx46, align 4, !tbaa !0
  %dec47 = add nsw i32 %16, -1
  store i32 %dec47, i32* %arrayidx46, align 4, !tbaa !0
  br label %if.end49

if.end49:                                         ; preds = %if.end39, %if.then43, %if.end27
  ret void
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Lock_lock(%struct._Lock*) #3

; Function Attrs: optsize
declare void @Lock_unlock(%struct._Lock*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._SubMtx* @SubMtxList_getList(%struct._SubMtxList* %list, i32 %ilist) #0 {
entry:
  %cmp = icmp eq %struct._SubMtxList* %list, null
  %cmp1 = icmp slt i32 %ilist, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nlist = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 0
  %0 = load i32* %nlist, align 4, !tbaa !0
  %cmp3 = icmp sgt i32 %0, %ilist
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), %struct._SubMtxList* %list, i32 %ilist) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  %idxprom = sext i32 %ilist to i64
  %heads = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 1
  %2 = load %struct._SubMtx*** %heads, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct._SubMtx** %2, i64 %idxprom
  %3 = load %struct._SubMtx** %arrayidx, align 8, !tbaa !3
  %cmp4 = icmp eq %struct._SubMtx* %3, null
  br i1 %cmp4, label %if.end40, label %if.then5

if.then5:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 3
  %4 = load %struct._Lock** %lock, align 8, !tbaa !3
  %cmp6 = icmp eq %struct._Lock* %4, null
  br i1 %cmp6, label %if.then23, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.then5
  %flags = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 4
  %5 = load i8** %flags, align 8, !tbaa !3
  %cmp8 = icmp eq i8* %5, null
  br i1 %cmp8, label %lor.lhs.false14, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %arrayidx11 = getelementptr inbounds i8* %5, i64 %idxprom
  %6 = load i8* %arrayidx11, align 1, !tbaa !1
  %cmp12 = icmp eq i8 %6, 78
  br i1 %cmp12, label %if.then23, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false7, %land.lhs.true
  %counts = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 2
  %7 = load i32** %counts, align 8, !tbaa !3
  %cmp15 = icmp eq i32* %7, null
  br i1 %cmp15, label %if.else, label %land.lhs.true17

land.lhs.true17:                                  ; preds = %lor.lhs.false14
  %arrayidx20 = getelementptr inbounds i32* %7, i64 %idxprom
  %8 = load i32* %arrayidx20, align 4, !tbaa !0
  %cmp21 = icmp eq i32 %8, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %land.lhs.true17, %land.lhs.true, %if.then5
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx, align 8, !tbaa !3
  br label %if.end40

if.else:                                          ; preds = %lor.lhs.false14, %land.lhs.true17
  tail call void @Lock_lock(%struct._Lock* %4) #4
  %9 = load %struct._SubMtx*** %heads, align 8, !tbaa !3
  %arrayidx33 = getelementptr inbounds %struct._SubMtx** %9, i64 %idxprom
  %10 = load %struct._SubMtx** %arrayidx33, align 8, !tbaa !3
  store %struct._SubMtx* null, %struct._SubMtx** %arrayidx33, align 8, !tbaa !3
  %nlocks = getelementptr inbounds %struct._SubMtxList* %list, i64 0, i32 5
  %11 = load i32* %nlocks, align 4, !tbaa !0
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %nlocks, align 4, !tbaa !0
  %12 = load %struct._Lock** %lock, align 8, !tbaa !3
  tail call void @Lock_unlock(%struct._Lock* %12) #4
  br label %if.end40

if.end40:                                         ; preds = %if.end, %if.then23, %if.else
  %mtx.0 = phi %struct._SubMtx* [ %3, %if.then23 ], [ %10, %if.else ], [ null, %if.end ]
  ret %struct._SubMtx* %mtx.0
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
