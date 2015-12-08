; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [84 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_PIV.c\00", align 1
@.str3 = private unnamed_addr constant [90 x i8] c"\0A fatal error in PIVsetup, invalid data\0A length = %d, sizes = %p, ivec = %p, p_ivec = %p\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [81 x i8] c"\0A fatal error in PIVcopy, invalid data\0A length = %d, p_ivec1 = %p, p_ivec2 = %p\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @PIVfree(i32** %p_ivec) #0 {
entry:
  %cmp = icmp eq i32** %p_ivec, null
  br i1 %cmp, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  %0 = bitcast i32** %p_ivec to i8*
  tail call void @free(i8* %0) #4
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then2
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define noalias i32** @PIVinit(i32 %size) #0 {
entry:
  %cmp = icmp sgt i32 %size, 0
  br i1 %cmp, label %if.then2, label %if.end21

if.then2:                                         ; preds = %entry
  %conv = sext i32 %size to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call noalias i8* @malloc(i64 %mul) #4
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then5, label %if.end21.loopexit

if.then5:                                         ; preds = %if.then2
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 %mul, i32 39, i8* getelementptr inbounds ([84 x i8]* @.str1, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end21.loopexit:                                ; preds = %if.then2
  %1 = bitcast i8* %call to i32**
  %2 = add i32 %size, -1
  %3 = zext i32 %2 to i64
  %4 = shl nuw nsw i64 %3, 3
  %5 = add i64 %4, 8
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %5, i32 8, i1 false)
  br label %if.end21

if.end21:                                         ; preds = %if.end21.loopexit, %entry
  %p_ivec.1 = phi i32** [ null, %entry ], [ %1, %if.end21.loopexit ]
  ret i32** %p_ivec.1
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @PIVsetup(i32 %length, i32* %sizes, i32* %ivec, i32** %p_ivec) #0 {
entry:
  %cmp = icmp sgt i32 %length, 0
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32* %sizes, null
  %cmp2 = icmp eq i32* %ivec, null
  %or.cond = or i1 %cmp1, %cmp2
  %cmp4 = icmp eq i32** %p_ivec, null
  %or.cond34 = or i1 %or.cond, %cmp4
  br i1 %or.cond34, label %if.then5, label %for.body

if.then5:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([90 x i8]* @.str3, i64 0, i64 0), i32 %length, i32* %sizes, i32* %ivec, i32** %p_ivec) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %if.then, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.then ]
  %ivec.addr.036 = phi i32* [ %ivec.addr.1, %for.inc ], [ %ivec, %if.then ]
  %arrayidx = getelementptr inbounds i32* %sizes, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp7 = icmp sgt i32 %1, 0
  %arrayidx10 = getelementptr inbounds i32** %p_ivec, i64 %indvars.iv
  br i1 %cmp7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %for.body
  store i32* %ivec.addr.036, i32** %arrayidx10, align 8, !tbaa !0
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i32* %ivec.addr.036, i64 %idx.ext
  br label %for.inc

if.else13:                                        ; preds = %for.body
  store i32* null, i32** %arrayidx10, align 8, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.else13
  %ivec.addr.1 = phi i32* [ %add.ptr, %if.then8 ], [ %ivec.addr.036, %if.else13 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %length
  br i1 %exitcond, label %if.end17, label %for.body

if.end17:                                         ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @PIVcopy(i32 %length, i32** %p_ivec1, i32** %p_ivec2) #0 {
entry:
  %cmp = icmp sgt i32 %length, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32** %p_ivec1, null
  %cmp2 = icmp eq i32** %p_ivec2, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([81 x i8]* @.str4, i64 0, i64 0), i32 %length, i32** %p_ivec1, i32** %p_ivec2) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %arrayidx = getelementptr inbounds i32** %p_ivec2, i64 %indvars.iv
  %1 = load i32** %arrayidx, align 8, !tbaa !0
  %arrayidx6 = getelementptr inbounds i32** %p_ivec1, i64 %indvars.iv
  store i32* %1, i32** %arrayidx6, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %length
  br i1 %exitcond, label %if.end7, label %for.body

if.end7:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
