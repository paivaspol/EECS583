; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_split.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct._IO_FILE* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [45 x i8] c"\0A fatal error in GPart_split(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [67 x i8] c"\0A fatal error in GPart_split(%p)\0A child(ren) exist, already split\0A\00", align 1
@.str2 = private unnamed_addr constant [50 x i8] c"\0A\0A inside GPart_split, %d components, cweights : \00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A separator weight = %d, weight of components = %d\00", align 1
@.str4 = private unnamed_addr constant [16 x i8] c"\0A\0A component %d\00", align 1
@.str5 = private unnamed_addr constant [16 x i8] c"\0A map to parent\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @GPart_split(%struct._GPart* %gpart) #0 {
entry:
  %ierr = alloca i32, align 4
  %map = alloca i32*, align 8
  %cmp = icmp eq %struct._GPart* %gpart, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %g1 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1
  %0 = load %struct._Graph** %g1, align 8, !tbaa !0
  %cmp2 = icmp eq %struct._Graph* %0, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %fch = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 8
  %2 = load %struct._GPart** %fch, align 8, !tbaa !0
  %cmp3 = icmp eq %struct._GPart* %2, null
  br i1 %cmp3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), %struct._GPart* %gpart) #5
  call void @exit(i32 -1) #6
  unreachable

if.end6:                                          ; preds = %if.end
  %msgFile7 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %4 = load %struct._IO_FILE** %msgFile7, align 8, !tbaa !0
  %msglvl8 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11
  %5 = load i32* %msglvl8, align 4, !tbaa !3
  call void @GPart_setCweights(%struct._GPart* %gpart) #5
  %ncomp10 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 4
  %6 = load i32* %ncomp10, align 4, !tbaa !3
  %cweightsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6
  %call11 = call i32* @IV_entries(%struct._IV* %cweightsIV) #5
  %cmp12 = icmp sgt i32 %5, 1
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end6
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), i32 %6) #5
  %call16 = call i32 @IV_fp80(%struct._IV* %cweightsIV, %struct._IO_FILE* %4, i32 25, i32* %ierr) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end6
  %cmp18 = icmp eq i32 %6, 1
  br i1 %cmp18, label %return, label %if.end20

if.end20:                                         ; preds = %if.end17
  %7 = load i32* %call11, align 4, !tbaa !3
  %cmp21106 = icmp slt i32 %6, 1
  br i1 %cmp21106, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end20
  %8 = add i32 %6, 1
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %for.body.lr.ph ]
  %domwght.0108 = phi i32 [ %add, %for.body ], [ 0, %for.body.lr.ph ]
  %arrayidx22 = getelementptr inbounds i32* %call11, i64 %indvars.iv
  %9 = load i32* %arrayidx22, align 4, !tbaa !3
  %add = add nsw i32 %9, %domwght.0108
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond109 = icmp eq i32 %lftr.wideiv, %8
  br i1 %exitcond109, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end20
  %domwght.0.lcssa = phi i32 [ 0, %if.end20 ], [ %add, %for.body ]
  br i1 %cmp12, label %if.then24, label %if.end26

if.then24:                                        ; preds = %for.end
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), i32 %7, i32 %domwght.0.lcssa) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %for.end
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call27 = call i32* @IV_entries(%struct._IV* %compidsIV) #5
  br i1 %cmp21106, label %return, label %for.body30.lr.ph

for.body30.lr.ph:                                 ; preds = %if.end26
  %cmp33 = icmp sgt i32 %5, 3
  br label %for.body30

for.body30:                                       ; preds = %if.end42, %for.body30.lr.ph
  %icomp.1105 = phi i32 [ 1, %for.body30.lr.ph ], [ %inc53, %if.end42 ]
  %call31 = call %struct._GPart* @GPart_new() #5
  %call32 = call %struct._Graph* @Graph_subGraph(%struct._Graph* %0, i32 %icomp.1105, i32* %call27, i32** %map) #5
  br i1 %cmp33, label %if.then34, label %if.end42

if.then34:                                        ; preds = %for.body30
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0), i32 %icomp.1105) #5
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %4)
  %nvtx37 = getelementptr inbounds %struct._Graph* %call32, i64 0, i32 1
  %11 = load i32* %nvtx37, align 4, !tbaa !3
  %nvbnd = getelementptr inbounds %struct._Graph* %call32, i64 0, i32 2
  %12 = load i32* %nvbnd, align 4, !tbaa !3
  %add38 = add nsw i32 %12, %11
  %13 = load i32** %map, align 8, !tbaa !0
  %call39 = call i32 @IVfp80(%struct._IO_FILE* %4, i32 %add38, i32* %13, i32 80, i32* %ierr) #5
  %call40 = call i32 @Graph_writeForHumanEye(%struct._Graph* %call32, %struct._IO_FILE* %4) #5
  %call41 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then34, %for.body30
  call void @GPart_init(%struct._GPart* %call31, %struct._Graph* %call32) #5
  %nvtx43 = getelementptr inbounds %struct._GPart* %call31, i64 0, i32 2
  %14 = load i32* %nvtx43, align 4, !tbaa !3
  %nvbnd44 = getelementptr inbounds %struct._GPart* %call31, i64 0, i32 3
  %15 = load i32* %nvbnd44, align 4, !tbaa !3
  %add45 = add nsw i32 %15, %14
  %vtxMapIV = getelementptr inbounds %struct._GPart* %call31, i64 0, i32 10
  %16 = load i32** %map, align 8, !tbaa !0
  call void @IV_init2(%struct._IV* %vtxMapIV, i32 %add45, i32 %add45, i32 1, i32* %16) #5
  %par = getelementptr inbounds %struct._GPart* %call31, i64 0, i32 7
  store %struct._GPart* %gpart, %struct._GPart** %par, align 8, !tbaa !0
  %17 = load %struct._GPart** %fch, align 8, !tbaa !0
  %sib = getelementptr inbounds %struct._GPart* %call31, i64 0, i32 9
  store %struct._GPart* %17, %struct._GPart** %sib, align 8, !tbaa !0
  store %struct._GPart* %call31, %struct._GPart** %fch, align 8, !tbaa !0
  %18 = load i32* %msglvl8, align 4, !tbaa !3
  %msglvl49 = getelementptr inbounds %struct._GPart* %call31, i64 0, i32 11
  store i32 %18, i32* %msglvl49, align 4, !tbaa !3
  %19 = load %struct._IO_FILE** %msgFile7, align 8, !tbaa !0
  %msgFile51 = getelementptr inbounds %struct._GPart* %call31, i64 0, i32 12
  store %struct._IO_FILE* %19, %struct._IO_FILE** %msgFile51, align 8, !tbaa !0
  %inc53 = add nsw i32 %icomp.1105, 1
  %exitcond = icmp eq i32 %icomp.1105, %6
  br i1 %exitcond, label %return, label %for.body30

return:                                           ; preds = %if.end26, %if.end42, %if.end17
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @GPart_setCweights(%struct._GPart*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @IV_fp80(%struct._IV*, %struct._IO_FILE*, i32, i32*) #3

; Function Attrs: optsize
declare %struct._GPart* @GPart_new() #3

; Function Attrs: optsize
declare %struct._Graph* @Graph_subGraph(%struct._Graph*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare i32 @Graph_writeForHumanEye(%struct._Graph*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare void @GPart_init(%struct._GPart*, %struct._Graph*) #3

; Function Attrs: optsize
declare void @IV_init2(%struct._IV*, i32, i32, i32, i32*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
