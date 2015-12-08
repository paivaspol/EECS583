; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_CV.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str1 = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_CV.c\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"\0A fatal error in CVcopy, size = %d, y = %p, x = %p\0A\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"\0A fatal error in CVfill, size = %d, y = %p\0A\00", align 1
@.str5 = private unnamed_addr constant [56 x i8] c"\0A fatal error in CVfprintf, fp = %p, size = %d, y = %p\0A\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str8 = private unnamed_addr constant [66 x i8] c"\0A fatal error in CVfp80\0A fp = %p, size = %d, y = %p, column = %d\0A\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str10 = private unnamed_addr constant [55 x i8] c"\0A fatal error in CVfscanf\0A fp = %p, size = %d, y = %p\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i8* @CVinit(i32 %size, i8 signext %c) #0 {
entry:
  %cmp = icmp slt i32 %size, 1
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  %call = tail call i8* @CVinit2(i32 %size) #5
  tail call void @CVfill(i32 %size, i8* %call, i8 signext %c) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %y.0 = phi i8* [ %call, %if.else ], [ null, %entry ]
  ret i8* %y.0
}

; Function Attrs: nounwind optsize uwtable
define noalias i8* @CVinit2(i32 %size) #0 {
entry:
  %cmp = icmp slt i32 %size, 1
  br i1 %cmp, label %if.end20, label %if.then2

if.then2:                                         ; preds = %entry
  %conv = sext i32 %size to i64
  %call = tail call noalias i8* @malloc(i64 %conv) #6
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %if.then5, label %if.end20

if.then5:                                         ; preds = %if.then2
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i64 %conv, i32 49, i8* getelementptr inbounds ([83 x i8]* @.str1, i64 0, i64 0)) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end20:                                         ; preds = %entry, %if.then2
  %y.0 = phi i8* [ %call, %if.then2 ], [ null, %entry ]
  ret i8* %y.0
}

; Function Attrs: nounwind optsize uwtable
define void @CVfill(i32 %size, i8* %y, i8 signext %c) #0 {
entry:
  %cmp = icmp slt i32 %size, 1
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i8* %y, null
  br i1 %cmp1, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %cmp412 = icmp sgt i32 %size, 0
  br i1 %cmp412, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = add i32 %size, -1
  %1 = zext i32 %0 to i64
  %2 = add i64 %1, 1
  call void @llvm.memset.p0i8.i64(i8* %y, i8 %c, i64 %2, i32 1, i1 false)
  br label %return

if.then2:                                         ; preds = %if.else
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), i32 %size, i8* null) #6
  tail call void @exit(i32 0) #7
  unreachable

return:                                           ; preds = %for.cond.preheader, %for.body.lr.ph, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @CVcopy(i32 %size, i8* %y, i8* %x) #0 {
entry:
  %cmp = icmp slt i32 %size, 1
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i8* %y, null
  %cmp2 = icmp eq i8* %x, null
  %or.cond = or i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  %cmp518 = icmp sgt i32 %size, 0
  br i1 %cmp518, label %for.body, label %return

if.then3:                                         ; preds = %if.else
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i32 %size, i8* %y, i8* %x) #6
  tail call void @exit(i32 0) #7
  unreachable

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i8* %x, i64 %indvars.iv
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8* %y, i64 %indvars.iv
  store i8 %1, i8* %arrayidx7, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %return, label %for.body

return:                                           ; preds = %for.cond.preheader, %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @CVfprintf(%struct._IO_FILE* %fp, i32 %size, i8* %y) #0 {
entry:
  %cmp = icmp ne %struct._IO_FILE* %fp, null
  %cmp1 = icmp sgt i32 %size, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i8* %y, null
  br i1 %cmp2, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str5, i64 0, i64 0), %struct._IO_FILE* %fp, i32 %size, i8* null) #6
  tail call void @exit(i32 0) #7
  unreachable

for.body:                                         ; preds = %if.then, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %if.then ]
  %1 = trunc i64 %indvars.iv to i32
  %rem = srem i32 %1, 80
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body
  %fputc21 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %if.then6, %for.body
  %arrayidx = getelementptr inbounds i8* %y, i64 %indvars.iv
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = sext i8 %2 to i32
  %fputc = tail call i32 @fputc(i32 %conv, %struct._IO_FILE* %fp)
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %if.end10, label %for.body

if.end10:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @CVfp80(%struct._IO_FILE* %fp, i32 %size, i8* %y, i32 %column, i32* nocapture %pierr) #0 {
entry:
  store i32 1, i32* %pierr, align 4, !tbaa !3
  %cmp = icmp ne %struct._IO_FILE* %fp, null
  %cmp1 = icmp sgt i32 %size, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i8* %y, null
  br i1 %cmp2, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), %struct._IO_FILE* %fp, i32 %size, i8* null, i32 %column) #6
  tail call void @exit(i32 0) #7
  unreachable

for.cond:                                         ; preds = %if.end
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %1, %size
  br i1 %cmp4, label %for.body, label %if.end15

for.body:                                         ; preds = %if.then, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.then ]
  %column.addr.029 = phi i32 [ %column.addr.1, %for.cond ], [ %column, %if.then ]
  %inc = add nsw i32 %column.addr.029, 1
  %cmp5 = icmp sgt i32 %column.addr.029, 78
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %if.then6, %for.body
  %column.addr.1 = phi i32 [ 0, %if.then6 ], [ %inc, %for.body ]
  %arrayidx = getelementptr inbounds i8* %y, i64 %indvars.iv
  %2 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = sext i8 %2 to i32
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str9, i64 0, i64 0), i32 %conv) #6
  store i32 %call8, i32* %pierr, align 4, !tbaa !3
  %cmp9 = icmp slt i32 %call8, 0
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp9, label %if.end15, label %for.cond

if.end15:                                         ; preds = %if.end, %for.cond, %entry
  %column.addr.2 = phi i32 [ %column, %entry ], [ %column.addr.1, %for.cond ], [ %column.addr.1, %if.end ]
  ret i32 %column.addr.2
}

; Function Attrs: nounwind optsize uwtable
define void @CVfree(i8* %y) #0 {
entry:
  %cmp = icmp eq i8* %y, null
  br i1 %cmp, label %if.end3, label %if.then2

if.then2:                                         ; preds = %entry
  tail call void @free(i8* %y) #6
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then2
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @CVfscanf(%struct._IO_FILE* %fp, i32 %size, i8* %y) #0 {
entry:
  %cmp = icmp ne %struct._IO_FILE* %fp, null
  %cmp1 = icmp sgt i32 %size, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %cmp2 = icmp eq i8* %y, null
  br i1 %cmp2, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0), %struct._IO_FILE* %fp, i32 %size, i8* null) #6
  tail call void @exit(i32 0) #7
  unreachable

for.cond:                                         ; preds = %for.body
  %1 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %1, %size
  br i1 %cmp4, label %for.body, label %if.end9

for.body:                                         ; preds = %if.then, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %if.then ]
  %i.020 = phi i32 [ %inc, %for.cond ], [ 0, %if.then ]
  %add.ptr = getelementptr inbounds i8* %y, i64 %indvars.iv
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* %add.ptr) #6
  %cmp6 = icmp eq i32 %call5, 1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.020, 1
  br i1 %cmp6, label %for.cond, label %if.end9

if.end9:                                          ; preds = %for.body, %for.cond, %entry
  %i.1 = phi i32 [ 0, %entry ], [ %i.020, %for.body ], [ %inc, %for.cond ]
  ret i32 %i.1
}

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
