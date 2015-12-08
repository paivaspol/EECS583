; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ChvList = type { i32, %struct._Chv**, i32*, %struct._Lock*, i8*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [58 x i8] c"\0A fatal error in ChvList_init(%p,%d,%p,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str2 = private unnamed_addr constant [81 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvList/src/ChvList_init.c\00", align 1
@.str3 = private unnamed_addr constant [47 x i8] c"\0A ALLOCATE error : bytes %zd, line %d, file %s\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @ChvList_init(%struct._ChvList* %chvlist, i32 %nlist, i32* %counts, i32 %lockflag, i8* %flags) #0 {
entry:
  %cmp = icmp eq %struct._ChvList* %chvlist, null
  %cmp1 = icmp slt i32 %nlist, 1
  %or.cond = or i1 %cmp, %cmp1
  %0 = icmp ugt i32 %lockflag, 1
  %or.cond84 = or i1 %or.cond, %0
  br i1 %or.cond84, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), %struct._ChvList* %chvlist, i32 %nlist, i32* %counts, i32 %lockflag, i8* %flags) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @ChvList_clearData(%struct._ChvList* %chvlist) #4
  %nlist6 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 0
  store i32 %nlist, i32* %nlist6, align 4, !tbaa !3
  %cmp7 = icmp sgt i32 %nlist, 0
  br i1 %cmp7, label %if.then8, label %if.else17

if.then8:                                         ; preds = %if.end
  %conv = sext i32 %nlist to i64
  %mul = shl nsw i64 %conv, 3
  %call9 = tail call noalias i8* @malloc(i64 %mul) #4
  %2 = bitcast i8* %call9 to %struct._Chv**
  %heads = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 1
  store %struct._Chv** %2, %struct._Chv*** %heads, align 8, !tbaa !0
  %cmp10 = icmp eq i8* %call9, null
  br i1 %cmp10, label %if.then12, label %for.body.lr.ph

if.then12:                                        ; preds = %if.then8
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 %mul, i32 61, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.else17:                                        ; preds = %if.end
  %cmp18 = icmp eq i32 %nlist, 0
  br i1 %cmp18, label %for.cond.preheader, label %if.else22

for.cond.preheader:                               ; preds = %if.else17
  %heads21 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 1
  store %struct._Chv** null, %struct._Chv*** %heads21, align 8, !tbaa !0
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then8
  %heads30 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 1
  br label %for.body

if.else22:                                        ; preds = %if.else17
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv23 = sext i32 %nlist to i64
  %mul24 = shl nsw i64 %conv23, 3
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([47 x i8]* @.str3, i64 0, i64 0), i64 %mul24, i32 61, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %5 = phi %struct._Chv** [ %2, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds %struct._Chv** %5, i64 %indvars.iv
  store %struct._Chv* null, %struct._Chv** %arrayidx, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %nlist
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load %struct._Chv*** %heads30, align 8, !tbaa !0
  br label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %cmp31 = icmp eq i32* %counts, null
  br i1 %cmp31, label %if.end37, label %if.then33

if.then33:                                        ; preds = %for.end
  %call34 = tail call i32* @IVinit(i32 %nlist, i32 0) #4
  %counts35 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 2
  store i32* %call34, i32** %counts35, align 8, !tbaa !0
  tail call void @IVcopy(i32 %nlist, i32* %call34, i32* %counts) #4
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.then33
  %cmp38 = icmp sgt i32 %lockflag, 0
  br i1 %cmp38, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end37
  %call41 = tail call %struct._Lock* @Lock_new() #4
  %lock = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 3
  store %struct._Lock* %call41, %struct._Lock** %lock, align 8, !tbaa !0
  tail call void @Lock_init(%struct._Lock* %call41, i32 %lockflag) #4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37
  %cmp44 = icmp eq i8* %flags, null
  br i1 %cmp44, label %if.end50, label %if.then46

if.then46:                                        ; preds = %if.end43
  %call47 = tail call i8* @CVinit(i32 %nlist, i8 signext 78) #4
  %flags48 = getelementptr inbounds %struct._ChvList* %chvlist, i64 0, i32 4
  store i8* %call47, i8** %flags48, align 8, !tbaa !0
  tail call void @CVcopy(i32 %nlist, i8* %call47, i8* %flags) #4
  br label %if.end50

if.end50:                                         ; preds = %if.end43, %if.then46
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @ChvList_clearData(%struct._ChvList*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare %struct._Lock* @Lock_new() #3

; Function Attrs: optsize
declare void @Lock_init(%struct._Lock*, i32) #3

; Function Attrs: optsize
declare i8* @CVinit(i32, i8 signext) #3

; Function Attrs: optsize
declare void @CVcopy(i32, i8*, i8*) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
