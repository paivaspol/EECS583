; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/memdump.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"memdump of %s:\0A\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"%.8X :\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c" %.2X\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c" | %s\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @mem_dump(%struct._IO_FILE* %log, i8* %title, i8* nocapture %mem, i32 %len) #0 {
entry:
  %s = alloca [17 x i8], align 16
  %arrayidx = getelementptr inbounds [17 x i8]* %s, i64 0, i64 0
  store i8 0, i8* %arrayidx, align 16, !tbaa !0
  %tobool = icmp eq i32 %len, 0
  %tobool1 = icmp eq %struct._IO_FILE* %log, null
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %for.cond.preheader, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0), i8* %title) #3
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry, %if.then
  %cmp41 = icmp sgt i32 %len, 0
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %if.end14
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end14 ], [ 0, %for.cond.preheader ]
  %index.042 = phi i32 [ %inc, %if.end14 ], [ 0, %for.cond.preheader ]
  %arrayidx2 = getelementptr inbounds i8* %mem, i64 %indvars.iv
  %0 = load i8* %arrayidx2, align 1, !tbaa !0
  %1 = and i32 %index.042, -17
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.then5, label %if.end10

if.then5:                                         ; preds = %for.body
  call fastcc void @print_chars(%struct._IO_FILE* %log, i8* %arrayidx, i32 %index.042) #4
  br i1 %tobool1, label %if.end14, label %if.end10.thread39

if.end10.thread39:                                ; preds = %if.then5
  %3 = trunc i64 %indvars.iv to i32
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32 %3) #3
  br label %if.then12

if.end10:                                         ; preds = %for.body
  br i1 %tobool1, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10.thread39, %if.end10
  %index.140 = phi i32 [ 0, %if.end10.thread39 ], [ %index.042, %if.end10 ]
  %conv = zext i8 %0 to i32
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0), i32 %conv) #3
  br label %if.end14

if.end14:                                         ; preds = %if.then5, %if.end10, %if.then12
  %index.138 = phi i32 [ %index.042, %if.end10 ], [ %index.140, %if.then12 ], [ 0, %if.then5 ]
  %b.off.i = add i8 %0, -32
  %4 = icmp ugt i8 %b.off.i, 94
  %retval.0.i = select i1 %4, i8 46, i8 %0
  %inc = add nsw i32 %index.138, 1
  %idxprom16 = sext i32 %index.138 to i64
  %arrayidx17 = getelementptr inbounds [17 x i8]* %s, i64 0, i64 %idxprom16
  store i8 %retval.0.i, i8* %arrayidx17, align 1, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %if.end14, %for.cond.preheader
  %index.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end14 ]
  call fastcc void @print_chars(%struct._IO_FILE* %log, i8* %arrayidx, i32 %index.0.lcssa) #4
  %call20 = call i32 @fflush(%struct._IO_FILE* %log) #3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @print_chars(%struct._IO_FILE* %fp, i8* %s, i32 %len) #0 {
entry:
  %tobool = icmp eq i32 %len, 0
  br i1 %tobool, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %tobool1 = icmp eq %struct._IO_FILE* %fp, null
  br i1 %tobool1, label %if.end7.critedge, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %cmp15 = icmp slt i32 %len, 16
  br i1 %cmp15, label %for.body, label %if.then4

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %i.016 = phi i32 [ %inc, %for.body ], [ %len, %for.cond.preheader ]
  %0 = tail call i64 @fwrite(i8* getelementptr inbounds ([4 x i8]* @.str3, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %fp)
  %inc = add nsw i32 %i.016, 1
  %exitcond = icmp eq i32 %inc, 16
  br i1 %exitcond, label %if.then4, label %for.body

if.then4:                                         ; preds = %for.cond.preheader, %for.body
  %idxprom = sext i32 %len to i64
  %arrayidx = getelementptr inbounds i8* %s, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str4, i64 0, i64 0), i8* %s) #3
  br label %if.end7

if.end7.critedge:                                 ; preds = %if.then
  %idxprom.c = sext i32 %len to i64
  %arrayidx.c = getelementptr inbounds i8* %s, i64 %idxprom.c
  store i8 0, i8* %arrayidx.c, align 1, !tbaa !0
  br label %if.end7

if.end7:                                          ; preds = %if.end7.critedge, %entry, %if.then4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
