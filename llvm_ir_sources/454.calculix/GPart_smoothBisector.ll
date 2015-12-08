; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/GPart/src/GPart_smoothBisector.c'
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
@.str = private unnamed_addr constant [60 x i8] c"\0A fatal error in GPart_smoothBisector(%p,%d,%f)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [43 x i8] c"\0A smoothBisector : nlevel = %d, alpha = %f\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A old partition cost %.3f, weights = %5d %5d %5d\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"\0A compids\00", align 1
@.str4 = private unnamed_addr constant [66 x i8] c"\0A\0A ### pass %d, cweights : %d %d %d, balance = %5.3f, cost = %.1f\00", align 1
@.str5 = private unnamed_addr constant [30 x i8] c"\0A nlevel = %d, |widesep| = %d\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"\0A YVmapIV\00", align 1
@.str7 = private unnamed_addr constant [16 x i8] c"\0A YCmapIV found\00", align 1
@.str8 = private unnamed_addr constant [17 x i8] c"\0A newcost = %.3f\00", align 1
@.str9 = private unnamed_addr constant [51 x i8] c"\0A\0A final partition weights [%d %d %d], cost = %.3f\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @GPart_smoothBisector(%struct._GPart* %gpart, i32 %nlevel, float %alpha) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._GPart* %gpart, null
  %cmp1 = icmp slt i32 %nlevel, 0
  %or.cond = or i1 %cmp, %cmp1
  %conv5.pre = fpext float %alpha to double
  %cmp3 = fcmp olt float %alpha, 0.000000e+00
  %or.cond190 = or i1 %or.cond, %cmp3
  br i1 %or.cond190, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str, i64 0, i64 0), %struct._GPart* %gpart, i32 %nlevel, double %conv5.pre) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %g6 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 1
  %1 = load %struct._Graph** %g6, align 8, !tbaa !0
  %compidsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 5
  %call7 = call i32* @IV_entries(%struct._IV* %compidsIV) #5
  %cweightsIV = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 6
  %call8 = call i32* @IV_entries(%struct._IV* %cweightsIV) #5
  %msglvl10 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 11
  %2 = load i32* %msglvl10, align 4, !tbaa !3
  %msgFile11 = getelementptr inbounds %struct._GPart* %gpart, i64 0, i32 12
  %3 = load %struct._IO_FILE** %msgFile11, align 8, !tbaa !0
  %4 = load i32* %call8, align 4, !tbaa !3
  %conv12 = sitofp i32 %4 to float
  %arrayidx13 = getelementptr inbounds i32* %call8, i64 1
  %5 = load i32* %arrayidx13, align 4, !tbaa !3
  %conv14 = sitofp i32 %5 to float
  %arrayidx15 = getelementptr inbounds i32* %call8, i64 2
  %6 = load i32* %arrayidx15, align 4, !tbaa !3
  %conv16 = sitofp i32 %6 to float
  %cmp.i = fcmp oeq float %conv14, 0.000000e+00
  %cmp1.i = fcmp oeq float %conv16, 0.000000e+00
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %add.i = fadd float %conv12, %conv14
  %add2.i = fadd float %add.i, %conv16
  %mul.i = fmul float %add2.i, %add2.i
  br label %eval.exit

if.else.i:                                        ; preds = %if.end
  %cmp5.i = fcmp ult float %conv14, %conv16
  %conv.i = fpext float %conv12 to double
  br i1 %cmp5.i, label %if.else12.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  %mul7.i = fmul float %conv14, %alpha
  %div.i = fdiv float %mul7.i, %conv16
  %conv8.i = fpext float %div.i to double
  %add9.i = fadd double %conv8.i, 1.000000e+00
  %mul10.i = fmul double %conv.i, %add9.i
  %conv11.i = fptrunc double %mul10.i to float
  br label %eval.exit

if.else12.i:                                      ; preds = %if.else.i
  %mul14.i = fmul float %conv16, %alpha
  %div15.i = fdiv float %mul14.i, %conv14
  %conv16.i = fpext float %div15.i to double
  %add17.i = fadd double %conv16.i, 1.000000e+00
  %mul18.i = fmul double %conv.i, %add17.i
  %conv19.i = fptrunc double %mul18.i to float
  br label %eval.exit

eval.exit:                                        ; preds = %if.then.i, %if.then6.i, %if.else12.i
  %cost.0.i = phi float [ %mul.i, %if.then.i ], [ %conv11.i, %if.then6.i ], [ %conv19.i, %if.else12.i ]
  %cmp18 = icmp sgt i32 %2, 1
  br i1 %cmp18, label %if.end29, label %while.body.preheader

if.end29:                                         ; preds = %eval.exit
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([43 x i8]* @.str1, i64 0, i64 0), i32 %nlevel, double %conv5.pre) #5
  %conv23 = fpext float %cost.0.i to double
  %7 = load i32* %call8, align 4, !tbaa !3
  %8 = load i32* %arrayidx13, align 4, !tbaa !3
  %9 = load i32* %arrayidx15, align 4, !tbaa !3
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), double %conv23, i32 %7, i32 %8, i32 %9) #5
  %call28 = call i32 @fflush(%struct._IO_FILE* %3) #5
  %cmp30 = icmp sgt i32 %2, 3
  br i1 %cmp30, label %if.then32, label %while.body.preheader

if.then32:                                        ; preds = %if.end29
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %3)
  %nvtx = getelementptr inbounds %struct._Graph* %1, i64 0, i32 1
  %11 = load i32* %nvtx, align 4, !tbaa !3
  %call34 = call i32 @IVfp80(%struct._IO_FILE* %3, i32 %11, i32* %call7, i32 80, i32* %ierr) #5
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.then32, %if.end29, %eval.exit
  %cmp30184.ph = phi i1 [ false, %eval.exit ], [ false, %if.end29 ], [ true, %if.then32 ]
  br label %while.body

while.body:                                       ; preds = %if.end95, %while.body.preheader
  %ipass.0 = phi i32 [ %inc, %if.end95 ], [ 0, %while.body.preheader ]
  %bestcost.0 = phi float [ %call88188, %if.end95 ], [ %cost.0.i, %while.body.preheader ]
  br i1 %cmp18, label %if.then38, label %if.end66.thread

if.end66.thread:                                  ; preds = %while.body
  %call67185 = call %struct._IV* @GPart_identifyWideSep(%struct._GPart* %gpart, i32 %nlevel, i32 %nlevel) #5
  br label %if.end74

if.then38:                                        ; preds = %while.body
  %12 = load i32* %arrayidx13, align 4, !tbaa !3
  %13 = load i32* %arrayidx15, align 4, !tbaa !3
  %cmp41 = icmp slt i32 %12, %13
  br i1 %cmp41, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.then38
  %conv45 = sitofp i32 %12 to double
  %conv47 = sitofp i32 %13 to double
  %div = fdiv double %conv45, %conv47
  br label %if.then70

if.else:                                          ; preds = %if.then38
  %conv50 = sitofp i32 %13 to double
  %conv52 = sitofp i32 %12 to double
  %div53 = fdiv double %conv50, %conv52
  br label %if.then70

if.then70:                                        ; preds = %if.else, %if.then43
  %balance.0.in = phi double [ %div, %if.then43 ], [ %div53, %if.else ]
  %balance.0 = fptrunc double %balance.0.in to float
  %14 = load i32* %call8, align 4, !tbaa !3
  %conv57 = sitofp i32 %14 to float
  %mul = fmul float %balance.0, %alpha
  %add = fadd float %mul, 1.000000e+00
  %mul58 = fmul float %conv57, %add
  %conv62 = fpext float %balance.0 to double
  %conv63 = fpext float %mul58 to double
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 %ipass.0, i32 %14, i32 %12, i32 %13, double %conv62, double %conv63) #5
  %call65 = call i32 @fflush(%struct._IO_FILE* %3) #5
  %call67 = call %struct._IV* @GPart_identifyWideSep(%struct._GPart* %gpart, i32 %nlevel, i32 %nlevel) #5
  %call71 = call i32 @IV_size(%struct._IV* %call67) #5
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8]* @.str5, i64 0, i64 0), i32 %nlevel, i32 %call71) #5
  %call73 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end74

if.end74:                                         ; preds = %if.end66.thread, %if.then70
  %call67186 = phi %struct._IV* [ %call67185, %if.end66.thread ], [ %call67, %if.then70 ]
  br i1 %cmp30184.ph, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.end74
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %3)
  %call79 = call i32 @IV_writeForHumanEye(%struct._IV* %call67186, %struct._IO_FILE* %3) #5
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end74
  %call81 = call %struct._IV* @GPart_makeYCmap(%struct._GPart* %gpart, %struct._IV* %call67186) #5
  br i1 %cmp18, label %if.then91, label %if.end87

if.end87:                                         ; preds = %if.end80
  %call88 = call float @GPart_smoothYSep(%struct._GPart* %gpart, %struct._IV* %call67186, %struct._IV* %call81, float %alpha) #5
  br label %if.end95

if.then91:                                        ; preds = %if.end80
  %16 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %3)
  %call86 = call i32 @fflush(%struct._IO_FILE* %3) #5
  %call88187 = call float @GPart_smoothYSep(%struct._GPart* %gpart, %struct._IV* %call67186, %struct._IV* %call81, float %alpha) #5
  %conv92 = fpext float %call88187 to double
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([17 x i8]* @.str8, i64 0, i64 0), double %conv92) #5
  %call94 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end95

if.end95:                                         ; preds = %if.end87, %if.then91
  %call88188 = phi float [ %call88187, %if.then91 ], [ %call88, %if.end87 ]
  call void @IV_free(%struct._IV* %call67186) #5
  call void @IV_free(%struct._IV* %call81) #5
  %cmp96 = fcmp oeq float %call88188, %bestcost.0
  %inc = add nsw i32 %ipass.0, 1
  br i1 %cmp96, label %while.end, label %while.body

while.end:                                        ; preds = %if.end95
  br i1 %cmp18, label %if.then103, label %if.end110

if.then103:                                       ; preds = %while.end
  %17 = load i32* %call8, align 4, !tbaa !3
  %18 = load i32* %arrayidx13, align 4, !tbaa !3
  %19 = load i32* %arrayidx15, align 4, !tbaa !3
  %conv107 = fpext float %bestcost.0 to double
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([51 x i8]* @.str9, i64 0, i64 0), i32 %17, i32 %18, i32 %19, double %conv107) #5
  %call109 = call i32 @fflush(%struct._IO_FILE* %3) #5
  br label %if.end110

if.end110:                                        ; preds = %if.then103, %while.end
  ret float %bestcost.0
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
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare %struct._IV* @GPart_identifyWideSep(%struct._GPart*, i32, i32) #3

; Function Attrs: optsize
declare i32 @IV_size(%struct._IV*) #3

; Function Attrs: optsize
declare i32 @IV_writeForHumanEye(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare %struct._IV* @GPart_makeYCmap(%struct._GPart*, %struct._IV*) #3

; Function Attrs: optsize
declare float @GPart_smoothYSep(%struct._GPart*, %struct._IV*, %struct._IV*, float) #3

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

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
