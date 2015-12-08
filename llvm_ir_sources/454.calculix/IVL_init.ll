; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in IVL_init1(%p,%d,%d)\0A bad input\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"\0A fatal error in IVL_init2(%p,%d,%d,%d)\0A bad input\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str3 = private unnamed_addr constant [73 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"\0A fatal error in IVL_init3(%p,%d,%d,%p)\0A bad input\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"\0A fatal error in IVL_setMaxnlist(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [49 x i8] c"\0A fatal error in IVL_setNlist(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @IVL_init1(%struct._IVL* %ivl, i32 %type, i32 %maxnlist) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %type.off = add i32 %type, -1
  %0 = icmp ugt i32 %type.off, 1
  %cmp4 = icmp ne i32 %type, 3
  %or.cond14 = and i1 %0, %cmp4
  %cmp6 = icmp slt i32 %maxnlist, 0
  %or.cond = or i1 %or.cond14, %cmp6
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._IVL* %ivl, i32 %type, i32 %maxnlist) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  tail call void @IVL_clearData(%struct._IVL* %ivl) #4
  %type7 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0
  store i32 %type, i32* %type7, align 4, !tbaa !3
  %maxnlist8 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1
  store i32 %maxnlist, i32* %maxnlist8, align 4, !tbaa !3
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  store i32 %maxnlist, i32* %nlist, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %maxnlist, 0
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32* @IVinit(i32 %maxnlist, i32 0) #4
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4
  store i32* %call11, i32** %sizes, align 8, !tbaa !0
  %call12 = tail call i32** @PIVinit(i32 %maxnlist) #4
  %p_vec = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5
  store i32** %call12, i32*** %p_vec, align 8, !tbaa !0
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @IVL_clearData(%struct._IVL*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32** @PIVinit(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @IVL_init2(%struct._IVL* %ivl, i32 %type, i32 %maxnlist, i32 %tsize) #0 {
entry:
  %notlhs = icmp eq %struct._IVL* %ivl, null
  %notrhs = icmp ne i32 %type, 1
  %or.cond.not = or i1 %notrhs, %notlhs
  %cmp3 = icmp slt i32 %maxnlist, 0
  %or.cond31 = or i1 %or.cond.not, %cmp3
  br i1 %or.cond31, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), %struct._IVL* %ivl, i32 %type, i32 %maxnlist, i32 %tsize) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @IVL_init1(%struct._IVL* %ivl, i32 1, i32 %maxnlist) #6
  %cmp4 = icmp sgt i32 %tsize, 0
  br i1 %cmp4, label %if.then5, label %if.end16

if.then5:                                         ; preds = %if.end
  %call6 = tail call noalias i8* @malloc(i64 24) #4
  %1 = bitcast i8* %call6 to %struct._Ichunk*
  %chunk = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 7
  store %struct._Ichunk* %1, %struct._Ichunk** %chunk, align 8, !tbaa !0
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then5
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 24, i32 93, i8* getelementptr inbounds ([73 x i8]* @.str3, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end10:                                         ; preds = %if.then5
  %size = bitcast i8* %call6 to i32*
  store i32 %tsize, i32* %size, align 4, !tbaa !3
  %inuse = getelementptr inbounds i8* %call6, i64 4
  %3 = bitcast i8* %inuse to i32*
  store i32 0, i32* %3, align 4, !tbaa !3
  %call13 = tail call i32* @IVinit(i32 %tsize, i32 -1) #4
  %4 = load %struct._Ichunk** %chunk, align 8, !tbaa !0
  %base = getelementptr inbounds %struct._Ichunk* %4, i64 0, i32 2
  store i32* %call13, i32** %base, align 8, !tbaa !0
  %5 = load %struct._Ichunk** %chunk, align 8, !tbaa !0
  %next = getelementptr inbounds %struct._Ichunk* %5, i64 0, i32 3
  store %struct._Ichunk* null, %struct._Ichunk** %next, align 8, !tbaa !0
  br label %if.end16

if.end16:                                         ; preds = %if.end10, %if.end
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize uwtable
define void @IVL_init3(%struct._IVL* %ivl, i32 %type, i32 %maxnlist, i32* %sizes) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %type.off = add i32 %type, -1
  %0 = icmp ugt i32 %type.off, 1
  %cmp4 = icmp slt i32 %maxnlist, 0
  %or.cond = or i1 %0, %cmp4
  %cmp6 = icmp eq i32* %sizes, null
  %or.cond30 = or i1 %or.cond, %cmp6
  br i1 %or.cond30, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), %struct._IVL* %ivl, i32 %type, i32 %maxnlist, i32* %sizes) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  switch i32 %type, label %for.cond.preheader [
    i32 2, label %sw.bb
    i32 1, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  tail call void @IVL_init1(%struct._IVL* %ivl, i32 2, i32 %maxnlist) #6
  br label %for.cond.preheader

sw.bb7:                                           ; preds = %if.end
  %call8 = tail call i32 @IVsum(i32 %maxnlist, i32* %sizes) #4
  tail call void @IVL_init2(%struct._IVL* %ivl, i32 1, i32 %maxnlist, i32 %call8) #6
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end, %sw.bb7, %sw.bb
  %cmp931 = icmp sgt i32 %maxnlist, 0
  br i1 %cmp931, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %sizes, i64 %indvars.iv
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %3 = trunc i64 %indvars.iv to i32
  tail call void @IVL_setList(%struct._IVL* %ivl, i32 %3, i32 %2, i32* null) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %maxnlist
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void
}

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #3

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @IVL_setMaxnlist(%struct._IVL* %ivl, i32 %newmaxnlist) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp slt i32 %newmaxnlist, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), %struct._IVL* %ivl, i32 %newmaxnlist) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxnlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1
  %1 = load i32* %maxnlist, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %1, %newmaxnlist
  br i1 %cmp2, label %if.end44, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32* @IVinit(i32 %newmaxnlist, i32 0) #4
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4
  %2 = load i32** %sizes, align 8, !tbaa !0
  %cmp5 = icmp eq i32* %2, null
  br i1 %cmp5, label %if.end18, label %if.then6

if.then6:                                         ; preds = %if.then3
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %3 = load i32* %nlist, align 4, !tbaa !3
  %cmp7 = icmp sgt i32 %3, %newmaxnlist
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then6
  tail call void @IVcopy(i32 %newmaxnlist, i32* %call4, i32* %2) #4
  br label %if.end16

if.else:                                          ; preds = %if.then6
  %cmp11 = icmp sgt i32 %3, 0
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.else
  tail call void @IVcopy(i32 %3, i32* %call4, i32* %2) #4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12, %if.then8
  %4 = load i32** %sizes, align 8, !tbaa !0
  tail call void @IVfree(i32* %4) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then3, %if.end16
  store i32* %call4, i32** %sizes, align 8, !tbaa !0
  %call20 = tail call i32** @PIVinit(i32 %newmaxnlist) #4
  %p_vec = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5
  %5 = load i32*** %p_vec, align 8, !tbaa !0
  %cmp21 = icmp eq i32** %5, null
  %nlist39.pre = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  br i1 %cmp21, label %if.end36, label %if.then22

if.then22:                                        ; preds = %if.end18
  %6 = load i32* %nlist39.pre, align 4, !tbaa !3
  %cmp24 = icmp sgt i32 %6, %newmaxnlist
  br i1 %cmp24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.then22
  tail call void @PIVcopy(i32 %newmaxnlist, i32** %call20, i32** %5) #4
  br label %if.end34

if.else27:                                        ; preds = %if.then22
  %cmp29 = icmp sgt i32 %6, 0
  br i1 %cmp29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.else27
  tail call void @PIVcopy(i32 %6, i32** %call20, i32** %5) #4
  br label %if.end34

if.end34:                                         ; preds = %if.else27, %if.then30, %if.then25
  %7 = load i32*** %p_vec, align 8, !tbaa !0
  tail call void @PIVfree(i32** %7) #4
  br label %if.end36

if.end36:                                         ; preds = %if.end18, %if.end34
  store i32** %call20, i32*** %p_vec, align 8, !tbaa !0
  store i32 %newmaxnlist, i32* %maxnlist, align 4, !tbaa !3
  %8 = load i32* %nlist39.pre, align 4, !tbaa !3
  %cmp40 = icmp sgt i32 %8, %newmaxnlist
  br i1 %cmp40, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end36
  store i32 %newmaxnlist, i32* %nlist39.pre, align 4, !tbaa !3
  br label %if.end44

if.end44:                                         ; preds = %if.end, %if.end36, %if.then41
  ret void
}

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @PIVcopy(i32, i32**, i32**) #3

; Function Attrs: optsize
declare void @PIVfree(i32**) #3

; Function Attrs: nounwind optsize uwtable
define void @IVL_setNlist(%struct._IVL* %ivl, i32 %newnlist) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp slt i32 %newnlist, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), %struct._IVL* %ivl, i32 %newnlist) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxnlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1
  %1 = load i32* %maxnlist, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, %newnlist
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @IVL_setMaxnlist(%struct._IVL* %ivl, i32 %newnlist) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  store i32 %newnlist, i32* %nlist, align 4, !tbaa !3
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
