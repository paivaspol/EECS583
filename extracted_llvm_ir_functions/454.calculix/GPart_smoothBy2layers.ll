; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_smoothBy2layers.c'
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
@.str = private unnamed_addr constant [58 x i8] c"\0A fatal error in GPart_smoothBy2layers(%p,%f)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [60 x i8] c"\0A\0A PASS %d : attempting a move towards the larger component\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"\0A YCmapIV\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"\0A calling GPartSmoothYSep\00", align 1
@.str4 = private unnamed_addr constant [35 x i8] c"\0A\0A bestcost = %.2f, newcost = %.2f\00", align 1
@.str5 = private unnamed_addr constant [61 x i8] c"\0A\0A PASS %d : attempting a move towards the smaller component\00", align 1
@.str6 = private unnamed_addr constant [23 x i8] c"\0A\0A no improvement made\00", align 1
@.str7 = private unnamed_addr constant [20 x i8] c"\0A\0A improvement made\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"\0A\0A compids\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"\0A\0A leaving smoothBy2layers\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @GPart_smoothBy2layers(%struct._GPart* %gpart, i32 %option, float %alpha) #0 {
entry:
  %ierr = alloca i32, align 4
  %nY = alloca i32, align 4
  %YCmap = alloca i32*, align 8
  %cmp = icmp eq %struct._GPart* %gpart, null
  %cmp1 = fcmp olt float %alpha, 0.000000e+00
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv3 = fpext float %alpha to double
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart, double %conv3) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %cweightsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6
  %call4 = call i32* @IV_entries(%struct._IV* %cweightsIV) #5
  %1 = load i32* %call4, align 4, !tbaa !3
  %conv5 = sitofp i32 %1 to float
  %arrayidx6 = getelementptr inbounds i32* %call4, i64 1
  %2 = load i32* %arrayidx6, align 4, !tbaa !3
  %conv7 = sitofp i32 %2 to float
  %arrayidx8 = getelementptr inbounds i32* %call4, i64 2
  %3 = load i32* %arrayidx8, align 4, !tbaa !3
  %conv9 = sitofp i32 %3 to float
  %cmp.i = fcmp oeq float %conv7, 0.000000e+00
  %cmp1.i = fcmp oeq float %conv9, 0.000000e+00
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %add.i = fadd float %conv5, %conv7
  %add2.i = fadd float %add.i, %conv9
  %mul.i = fmul float %add2.i, %add2.i
  br label %eval.exit

if.else.i:                                        ; preds = %if.end
  %cmp5.i = fcmp ult float %conv7, %conv9
  %conv.i = fpext float %conv5 to double
  br i1 %cmp5.i, label %if.else12.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  %mul7.i = fmul float %conv7, %alpha
  %div.i = fdiv float %mul7.i, %conv9
  %conv8.i = fpext float %div.i to double
  %add9.i = fadd double %conv8.i, 1.000000e+00
  %mul10.i = fmul double %conv.i, %add9.i
  %conv11.i = fptrunc double %mul10.i to float
  br label %eval.exit

if.else12.i:                                      ; preds = %if.else.i
  %mul14.i = fmul float %conv9, %alpha
  %div15.i = fdiv float %mul14.i, %conv7
  %conv16.i = fpext float %div15.i to double
  %add17.i = fadd double %conv16.i, 1.000000e+00
  %mul18.i = fmul double %conv.i, %add17.i
  %conv19.i = fptrunc double %mul18.i to float
  br label %eval.exit

eval.exit:                                        ; preds = %if.then.i, %if.then6.i, %if.else12.i
  %bestcost.0.i = phi float [ %mul.i, %if.then.i ], [ %conv11.i, %if.then6.i ], [ %conv19.i, %if.else12.i ]
  %msgFile11 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %4 = load %struct._IO_FILE** %msgFile11, align 8, !tbaa !0
  %msglvl12 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11
  %5 = load i32* %msglvl12, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %5, 2
  %cmp35 = icmp eq i32 %option, 1
  %cmp127 = icmp sgt i32 %5, 3
  %nvtx = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 2
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  br label %while.body

while.body:                                       ; preds = %eval.exit, %if.end135
  %pass.0 = phi i32 [ 1, %eval.exit ], [ %inc136, %if.end135 ]
  %bestcost.0 = phi float [ %bestcost.0.i, %eval.exit ], [ %newcost.0, %if.end135 ]
  br i1 %cmp13, label %if.then15, label %if.end18

if.then15:                                        ; preds = %while.body
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([60 x i8]* @.str1, i64 0, i64 0), i32 %pass.0) #5
  %call17 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end18

if.end18:                                         ; preds = %while.body, %if.then15
  %6 = load i32* %arrayidx6, align 4, !tbaa !3
  %7 = load i32* %arrayidx8, align 4, !tbaa !3
  %cmp21 = icmp slt i32 %6, %7
  br i1 %cmp21, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end18
  %call24 = call %struct._IV* @GPart_identifyWideSep(%struct._GPart* %gpart, i32 1, i32 0) #5
  br label %if.end26

if.else:                                          ; preds = %if.end18
  %call25 = call %struct._IV* @GPart_identifyWideSep(%struct._GPart* %gpart, i32 0, i32 1) #5
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  %large.0 = phi i32 [ 1, %if.then23 ], [ 2, %if.else ]
  %small.0 = phi i32 [ 2, %if.then23 ], [ 1, %if.else ]
  %YVmapIV.0 = phi %struct._IV* [ %call24, %if.then23 ], [ %call25, %if.else ]
  %call27 = call %struct._IV* @GPart_makeYCmap(%struct._GPart* %gpart, %struct._IV* %YVmapIV.0) #5
  br i1 %cmp13, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.end26
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %4)
  %call32 = call i32 @IV_writeForHumanEye(%struct._IV* %call27, %struct._IO_FILE* %4) #5
  %call33 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end26
  call void @IV_sizeAndEntries(%struct._IV* %call27, i32* %nY, i32** %YCmap) #5
  br i1 %cmp35, label %for.cond.preheader, label %if.end47

for.cond.preheader:                               ; preds = %if.end34
  %9 = load i32* %nY, align 4, !tbaa !3
  %cmp38231 = icmp sgt i32 %9, 0
  br i1 %cmp38231, label %for.body.lr.ph, label %if.end47

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %10 = load i32** %YCmap, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %11 = phi i32 [ %9, %for.body.lr.ph ], [ %13, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx40 = getelementptr inbounds i32* %10, i64 %indvars.iv
  %12 = load i32* %arrayidx40, align 4, !tbaa !3
  %cmp41 = icmp eq i32 %12, %small.0
  br i1 %cmp41, label %for.inc, label %if.then43

if.then43:                                        ; preds = %for.body
  store i32 %large.0, i32* %arrayidx40, align 4, !tbaa !3
  %.pre237 = load i32* %nY, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then43
  %13 = phi i32 [ %11, %for.body ], [ %.pre237, %if.then43 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %14 = trunc i64 %indvars.iv.next to i32
  %cmp38 = icmp slt i32 %14, %13
  br i1 %cmp38, label %for.body, label %if.end47

if.end47:                                         ; preds = %for.cond.preheader, %for.inc, %if.end34
  br i1 %cmp13, label %if.then57, label %if.end53

if.end53:                                         ; preds = %if.end47
  %call54 = call float @GPart_smoothYSep(%struct._GPart* %gpart, %struct._IV* %YVmapIV.0, %struct._IV* %call27, float %alpha) #5
  br label %if.end62

if.then57:                                        ; preds = %if.end47
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %4)
  %call52 = call i32 @fflush(%struct._IO_FILE* %4) #5
  %call54227 = call float @GPart_smoothYSep(%struct._GPart* %gpart, %struct._IV* %YVmapIV.0, %struct._IV* %call27, float %alpha) #5
  %conv58 = fpext float %bestcost.0 to double
  %conv59 = fpext float %call54227 to double
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), double %conv58, double %conv59) #5
  %call61 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end62

if.end62:                                         ; preds = %if.end53, %if.then57
  %call54229 = phi float [ %call54227, %if.then57 ], [ %call54, %if.end53 ]
  call void @IV_free(%struct._IV* %YVmapIV.0) #5
  call void @IV_free(%struct._IV* %call27) #5
  %cmp63 = fcmp oeq float %call54229, %bestcost.0
  br i1 %cmp63, label %if.then65, label %if.end110

if.then65:                                        ; preds = %if.end62
  br i1 %cmp13, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.then65
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), i32 %pass.0) #5
  %call70 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.then65
  %16 = load i32* %arrayidx6, align 4, !tbaa !3
  %17 = load i32* %arrayidx8, align 4, !tbaa !3
  %cmp74 = icmp slt i32 %16, %17
  br i1 %cmp74, label %if.else78, label %if.then76

if.then76:                                        ; preds = %if.end71
  %call77 = call %struct._IV* @GPart_identifyWideSep(%struct._GPart* %gpart, i32 0, i32 1) #5
  br label %if.end80

if.else78:                                        ; preds = %if.end71
  %call79 = call %struct._IV* @GPart_identifyWideSep(%struct._GPart* %gpart, i32 1, i32 0) #5
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.then76
  %large.1 = phi i32 [ 1, %if.then76 ], [ 2, %if.else78 ]
  %small.1 = phi i32 [ 2, %if.then76 ], [ 1, %if.else78 ]
  %YVmapIV.1 = phi %struct._IV* [ %call77, %if.then76 ], [ %call79, %if.else78 ]
  %call81 = call %struct._IV* @GPart_makeYCmap(%struct._GPart* %gpart, %struct._IV* %YVmapIV.1) #5
  call void @IV_sizeAndEntries(%struct._IV* %call81, i32* %nY, i32** %YCmap) #5
  br i1 %cmp35, label %for.cond85.preheader, label %if.end100

for.cond85.preheader:                             ; preds = %if.end80
  %18 = load i32* %nY, align 4, !tbaa !3
  %cmp86233 = icmp sgt i32 %18, 0
  br i1 %cmp86233, label %for.body88.lr.ph, label %if.end100

for.body88.lr.ph:                                 ; preds = %for.cond85.preheader
  %19 = load i32** %YCmap, align 8, !tbaa !0
  br label %for.body88

for.body88:                                       ; preds = %for.body88.lr.ph, %for.inc97
  %20 = phi i32 [ %18, %for.body88.lr.ph ], [ %22, %for.inc97 ]
  %indvars.iv235 = phi i64 [ 0, %for.body88.lr.ph ], [ %indvars.iv.next236, %for.inc97 ]
  %arrayidx90 = getelementptr inbounds i32* %19, i64 %indvars.iv235
  %21 = load i32* %arrayidx90, align 4, !tbaa !3
  %cmp91 = icmp eq i32 %21, %large.1
  br i1 %cmp91, label %for.inc97, label %if.then93

if.then93:                                        ; preds = %for.body88
  store i32 %small.1, i32* %arrayidx90, align 4, !tbaa !3
  %.pre = load i32* %nY, align 4, !tbaa !3
  br label %for.inc97

for.inc97:                                        ; preds = %for.body88, %if.then93
  %22 = phi i32 [ %20, %for.body88 ], [ %.pre, %if.then93 ]
  %indvars.iv.next236 = add i64 %indvars.iv235, 1
  %23 = trunc i64 %indvars.iv.next236 to i32
  %cmp86 = icmp slt i32 %23, %22
  br i1 %cmp86, label %for.body88, label %if.end100

if.end100:                                        ; preds = %for.cond85.preheader, %for.inc97, %if.end80
  %call101 = call float @GPart_smoothYSep(%struct._GPart* %gpart, %struct._IV* %YVmapIV.1, %struct._IV* %call81, float %alpha) #5
  br i1 %cmp13, label %if.then104, label %if.end109

if.then104:                                       ; preds = %if.end100
  %conv105 = fpext float %bestcost.0 to double
  %conv106 = fpext float %call101 to double
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), double %conv105, double %conv106) #5
  %call108 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %if.end100
  call void @IV_free(%struct._IV* %YVmapIV.1) #5
  call void @IV_free(%struct._IV* %call81) #5
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end62
  %newcost.0 = phi float [ %call101, %if.end109 ], [ %call54229, %if.end62 ]
  %cmp111 = fcmp oeq float %newcost.0, %bestcost.0
  br i1 %cmp111, label %if.then113, label %if.else120

if.then113:                                       ; preds = %if.end110
  br i1 %cmp13, label %if.then116, label %if.end142

if.then116:                                       ; preds = %if.then113
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str6, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %4)
  %call118 = call i32 @fflush(%struct._IO_FILE* %4) #5
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %4)
  %call141 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end142

if.else120:                                       ; preds = %if.end110
  br i1 %cmp13, label %if.end126, label %if.end135

if.end126:                                        ; preds = %if.else120
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8]* @.str7, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %4)
  %call125 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br i1 %cmp127, label %if.then129, label %if.end135

if.then129:                                       ; preds = %if.end126
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %4)
  %28 = load i32* %nvtx, align 4, !tbaa !3
  %call131 = call i32* @IV_entries(%struct._IV* %compidsIV) #5
  %call132 = call i32 @IVfp80(%struct._IO_FILE* %4, i32 %28, i32* %call131, i32 80, i32* %ierr) #5
  %call133 = call i32 @fflush(%struct._IO_FILE* %4) #5
  br label %if.end135

if.end135:                                        ; preds = %if.else120, %if.end126, %if.then129
  %inc136 = add nsw i32 %pass.0, 1
  br label %while.body

if.end142:                                        ; preds = %if.then113, %if.then116
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare %struct._IV* @GPart_identifyWideSep(%struct._GPart*, i32, i32) #3

; Function Attrs: optsize
declare %struct._IV* @GPart_makeYCmap(%struct._GPart*, %struct._IV*) #3

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @IV_sizeAndEntries(%struct._IV*, i32*, i32**) #3

; Function Attrs: optsize
declare float @GPart_smoothYSep(%struct._GPart*, %struct._IV*, %struct._IV*, float) #3

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

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