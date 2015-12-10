; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CCTK_COMPLEX8 = type { float, float }
%struct.CCTK_COMPLEX16 = type { double, double }
%struct.CCTK_COMPLEX32 = type { x86_fp80, x86_fp80 }

@.str = private unnamed_addr constant [83 x i8] c"$Header: /cactus/Cactus/src/main/Complex.c,v 1.11 2001/12/12 13:13:45 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_Complex_c() #0 {
entry:
  ret i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), !dbg !239
}

; Function Attrs: nounwind optsize readnone uwtable
define <2 x float> @CCTK_Cmplx8(float %Re, float %Im) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %Re}, i64 0, metadata !22), !dbg !240
  tail call void @llvm.dbg.value(metadata !{float %Im}, i64 0, metadata !23), !dbg !240
  tail call void @llvm.dbg.declare(metadata !241, metadata !24), !dbg !240
  %retval.sroa.0.0.vec.insert = insertelement <2 x float> undef, float %Re, i32 0, !dbg !240
  %retval.sroa.0.4.vec.insert = insertelement <2 x float> %retval.sroa.0.0.vec.insert, float %Im, i32 1, !dbg !240
  ret <2 x float> %retval.sroa.0.4.vec.insert, !dbg !240
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize readnone uwtable
define float @CCTK_Cmplx8Real(<2 x float> %complex_number.coerce) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !241, metadata !29), !dbg !242
  %complex_number.sroa.0.0.vec.extract = extractelement <2 x float> %complex_number.coerce, i32 0, !dbg !242
  ret float %complex_number.sroa.0.0.vec.extract, !dbg !242
}

; Function Attrs: nounwind optsize readnone uwtable
define float @CCTK_Cmplx8Imag(<2 x float> %complex_number.coerce) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !241, metadata !32), !dbg !243
  %complex_number.sroa.0.4.vec.extract = extractelement <2 x float> %complex_number.coerce, i32 1, !dbg !243
  ret float %complex_number.sroa.0.4.vec.extract, !dbg !243
}

; Function Attrs: nounwind optsize readnone uwtable
define <2 x float> @CCTK_Cmplx8Conjg(<2 x float> %complex_number.coerce) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !241, metadata !37), !dbg !244
  tail call void @llvm.dbg.declare(metadata !241, metadata !38), !dbg !244
  %complex_number.sroa.0.0.vec.extract = extractelement <2 x float> %complex_number.coerce, i32 0, !dbg !244
  %complex_number.sroa.0.4.vec.extract = extractelement <2 x float> %complex_number.coerce, i32 1, !dbg !244
  %sub = fsub float -0.000000e+00, %complex_number.sroa.0.4.vec.extract, !dbg !244
  %retval.sroa.0.0.vec.insert = insertelement <2 x float> undef, float %complex_number.sroa.0.0.vec.extract, i32 0, !dbg !244
  %retval.sroa.0.4.vec.insert = insertelement <2 x float> %retval.sroa.0.0.vec.insert, float %sub, i32 1, !dbg !244
  ret <2 x float> %retval.sroa.0.4.vec.insert, !dbg !244
}

; Function Attrs: nounwind optsize uwtable
define float @CCTK_Cmplx8Abs(<2 x float> %complex_number.coerce) #3 {
entry:
  tail call void @llvm.dbg.declare(metadata !241, metadata !41), !dbg !245
  %complex_number.sroa.0.0.vec.extract = extractelement <2 x float> %complex_number.coerce, i32 0, !dbg !245
  %conv = fpext float %complex_number.sroa.0.0.vec.extract to double, !dbg !245
  %complex_number.sroa.0.4.vec.extract = extractelement <2 x float> %complex_number.coerce, i32 1, !dbg !245
  %conv1 = fpext float %complex_number.sroa.0.4.vec.extract to double, !dbg !245
  %call = tail call double @hypot(double %conv, double %conv1) #7, !dbg !245
  %conv2 = fptrunc double %call to float, !dbg !245
  ret float %conv2, !dbg !245
}

; Function Attrs: nounwind optsize
declare double @hypot(double, double) #4

; Function Attrs: nounwind optsize readnone uwtable
define <2 x float> @CCTK_Cmplx8Add(<2 x float> %a.coerce, <2 x float> %b.coerce) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !241, metadata !46), !dbg !246
  tail call void @llvm.dbg.declare(metadata !241, metadata !47), !dbg !246
  tail call void @llvm.dbg.declare(metadata !241, metadata !48), !dbg !246
  %a.sroa.0.0.vec.extract = extractelement <2 x float> %a.coerce, i32 0, !dbg !246
  %b.sroa.0.0.vec.extract = extractelement <2 x float> %b.coerce, i32 0, !dbg !246
  %add = fadd float %a.sroa.0.0.vec.extract, %b.sroa.0.0.vec.extract, !dbg !246
  %a.sroa.0.4.vec.extract = extractelement <2 x float> %a.coerce, i32 1, !dbg !246
  %b.sroa.0.4.vec.extract = extractelement <2 x float> %b.coerce, i32 1, !dbg !246
  %add4 = fadd float %a.sroa.0.4.vec.extract, %b.sroa.0.4.vec.extract, !dbg !246
  %retval.sroa.0.0.vec.insert = insertelement <2 x float> undef, float %add, i32 0, !dbg !246
  %retval.sroa.0.4.vec.insert = insertelement <2 x float> %retval.sroa.0.0.vec.insert, float %add4, i32 1, !dbg !246
  ret <2 x float> %retval.sroa.0.4.vec.insert, !dbg !246
}

; Function Attrs: nounwind optsize readnone uwtable
define <2 x float> @CCTK_Cmplx8Sub(<2 x float> %a.coerce, <2 x float> %b.coerce) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !241, metadata !51), !dbg !247
  tail call void @llvm.dbg.declare(metadata !241, metadata !52), !dbg !247
  tail call void @llvm.dbg.declare(metadata !241, metadata !53), !dbg !247
  %a.sroa.0.0.vec.extract = extractelement <2 x float> %a.coerce, i32 0, !dbg !247
  %b.sroa.0.0.vec.extract = extractelement <2 x float> %b.coerce, i32 0, !dbg !247
  %sub = fsub float %a.sroa.0.0.vec.extract, %b.sroa.0.0.vec.extract, !dbg !247
  %a.sroa.0.4.vec.extract = extractelement <2 x float> %a.coerce, i32 1, !dbg !247
  %b.sroa.0.4.vec.extract = extractelement <2 x float> %b.coerce, i32 1, !dbg !247
  %sub4 = fsub float %a.sroa.0.4.vec.extract, %b.sroa.0.4.vec.extract, !dbg !247
  %retval.sroa.0.0.vec.insert = insertelement <2 x float> undef, float %sub, i32 0, !dbg !247
  %retval.sroa.0.4.vec.insert = insertelement <2 x float> %retval.sroa.0.0.vec.insert, float %sub4, i32 1, !dbg !247
  ret <2 x float> %retval.sroa.0.4.vec.insert, !dbg !247
}

; Function Attrs: nounwind optsize readnone uwtable
define <2 x float> @CCTK_Cmplx8Mul(<2 x float> %a.coerce, <2 x float> %b.coerce) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !241, metadata !56), !dbg !248
  tail call void @llvm.dbg.declare(metadata !241, metadata !57), !dbg !248
  tail call void @llvm.dbg.declare(metadata !241, metadata !58), !dbg !248
  %a.sroa.0.0.vec.extract = extractelement <2 x float> %a.coerce, i32 0, !dbg !248
  %b.sroa.0.0.vec.extract = extractelement <2 x float> %b.coerce, i32 0, !dbg !248
  %mul = fmul float %a.sroa.0.0.vec.extract, %b.sroa.0.0.vec.extract, !dbg !248
  %a.sroa.0.4.vec.extract = extractelement <2 x float> %a.coerce, i32 1, !dbg !248
  %b.sroa.0.4.vec.extract = extractelement <2 x float> %b.coerce, i32 1, !dbg !248
  %mul3 = fmul float %a.sroa.0.4.vec.extract, %b.sroa.0.4.vec.extract, !dbg !248
  %sub = fsub float %mul, %mul3, !dbg !248
  %mul7 = fmul float %a.sroa.0.4.vec.extract, %b.sroa.0.0.vec.extract, !dbg !248
  %mul10 = fmul float %a.sroa.0.0.vec.extract, %b.sroa.0.4.vec.extract, !dbg !248
  %add = fadd float %mul7, %mul10, !dbg !248
  %retval.sroa.0.0.vec.insert = insertelement <2 x float> undef, float %sub, i32 0, !dbg !248
  %retval.sroa.0.4.vec.insert = insertelement <2 x float> %retval.sroa.0.0.vec.insert, float %add, i32 1, !dbg !248
  ret <2 x float> %retval.sroa.0.4.vec.insert, !dbg !248
}

; Function Attrs: nounwind optsize readnone uwtable
define <2 x float> @CCTK_Cmplx8Div(<2 x float> %a.coerce, <2 x float> %b.coerce) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !241, metadata !61), !dbg !249
  tail call void @llvm.dbg.declare(metadata !241, metadata !62), !dbg !249
  tail call void @llvm.dbg.declare(metadata !241, metadata !64), !dbg !249
  %b.sroa.0.0.vec.extract = extractelement <2 x float> %b.coerce, i32 0, !dbg !249
  %mul = fmul float %b.sroa.0.0.vec.extract, %b.sroa.0.0.vec.extract, !dbg !249
  %b.sroa.0.4.vec.extract = extractelement <2 x float> %b.coerce, i32 1, !dbg !249
  %mul3 = fmul float %b.sroa.0.4.vec.extract, %b.sroa.0.4.vec.extract, !dbg !249
  %add = fadd float %mul, %mul3, !dbg !249
  tail call void @llvm.dbg.value(metadata !{float %add}, i64 0, metadata !63), !dbg !249
  %a.sroa.0.0.vec.extract = extractelement <2 x float> %a.coerce, i32 0, !dbg !249
  %mul6 = fmul float %a.sroa.0.0.vec.extract, %b.sroa.0.0.vec.extract, !dbg !249
  %a.sroa.0.4.vec.extract = extractelement <2 x float> %a.coerce, i32 1, !dbg !249
  %mul9 = fmul float %a.sroa.0.4.vec.extract, %b.sroa.0.4.vec.extract, !dbg !249
  %add10 = fadd float %mul6, %mul9, !dbg !249
  %div = fdiv float %add10, %add, !dbg !249
  %mul14 = fmul float %a.sroa.0.4.vec.extract, %b.sroa.0.0.vec.extract, !dbg !249
  %mul17 = fmul float %a.sroa.0.0.vec.extract, %b.sroa.0.4.vec.extract, !dbg !249
  %sub = fsub float %mul14, %mul17, !dbg !249
  %div18 = fdiv float %sub, %add, !dbg !249
  %retval.sroa.0.0.vec.insert = insertelement <2 x float> undef, float %div, i32 0, !dbg !249
  %retval.sroa.0.4.vec.insert = insertelement <2 x float> %retval.sroa.0.0.vec.insert, float %div18, i32 1, !dbg !249
  ret <2 x float> %retval.sroa.0.4.vec.insert, !dbg !249
}

; Function Attrs: nounwind optsize uwtable
define <2 x float> @CCTK_Cmplx8Sin(<2 x float> %complex_number.coerce) #3 {
entry:
  tail call void @llvm.dbg.declare(metadata !241, metadata !67), !dbg !250
  tail call void @llvm.dbg.declare(metadata !241, metadata !68), !dbg !250
  %complex_number.sroa.0.4.vec.extract = extractelement <2 x float> %complex_number.coerce, i32 1, !dbg !250
  %conv = fpext float %complex_number.sroa.0.4.vec.extract to double, !dbg !250
  %cmp = fcmp oeq float %complex_number.sroa.0.4.vec.extract, 0.000000e+00, !dbg !250
  %complex_number.sroa.0.0.vec.extract = extractelement <2 x float> %complex_number.coerce, i32 0, !dbg !251
  %conv2 = fpext float %complex_number.sroa.0.0.vec.extract to double, !dbg !251
  %call = tail call double @sin(double %conv2) #7, !dbg !251
  br i1 %cmp, label %if.end, label %if.else, !dbg !250

if.else:                                          ; preds = %entry
  %call11 = tail call double @cosh(double %conv) #7, !dbg !253
  %mul = fmul double %call, %call11, !dbg !253
  %call16 = tail call double @cos(double %conv2) #7, !dbg !253
  %call19 = tail call double @sinh(double %conv) #7, !dbg !253
  %mul20 = fmul double %call16, %call19, !dbg !253
  %conv21 = fptrunc double %mul20 to float, !dbg !253
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %result.sroa.1.0 = phi float [ %conv21, %if.else ], [ 0.000000e+00, %entry ]
  %result.sroa.0.0.in = phi double [ %mul, %if.else ], [ %call, %entry ]
  %result.sroa.0.0 = fptrunc double %result.sroa.0.0.in to float, !dbg !251
  %retval.sroa.0.0.vec.insert = insertelement <2 x float> undef, float %result.sroa.0.0, i32 0, !dbg !250
  %retval.sroa.0.4.vec.insert = insertelement <2 x float> %retval.sroa.0.0.vec.insert, float %result.sroa.1.0, i32 1, !dbg !250
  ret <2 x float> %retval.sroa.0.4.vec.insert, !dbg !250
}

; Function Attrs: nounwind optsize
declare double @sin(double) #4

; Function Attrs: nounwind optsize
declare double @cosh(double) #4

; Function Attrs: nounwind optsize
declare double @cos(double) #4

; Function Attrs: nounwind optsize
declare double @sinh(double) #4

; Function Attrs: nounwind optsize uwtable
define <2 x float> @CCTK_Cmplx8Cos(<2 x float> %complex_number.coerce) #3 {
entry:
  tail call void @llvm.dbg.declare(metadata !241, metadata !71), !dbg !255
  tail call void @llvm.dbg.declare(metadata !241, metadata !72), !dbg !255
  %complex_number.sroa.0.4.vec.extract = extractelement <2 x float> %complex_number.coerce, i32 1, !dbg !255
  %conv = fpext float %complex_number.sroa.0.4.vec.extract to double, !dbg !255
  %cmp = fcmp oeq float %complex_number.sroa.0.4.vec.extract, 0.000000e+00, !dbg !255
  %complex_number.sroa.0.0.vec.extract = extractelement <2 x float> %complex_number.coerce, i32 0, !dbg !256
  %conv2 = fpext float %complex_number.sroa.0.0.vec.extract to double, !dbg !256
  %call = tail call double @cos(double %conv2) #7, !dbg !256
  br i1 %cmp, label %if.end, label %if.else, !dbg !255

if.else:                                          ; preds = %entry
  %call11 = tail call double @cosh(double %conv) #7, !dbg !258
  %mul = fmul double %call, %call11, !dbg !258
  %call16 = tail call double @sin(double %conv2) #7, !dbg !258
  %call19 = tail call double @sinh(double %conv) #7, !dbg !258
  %mul20 = fmul double %call16, %call19, !dbg !258
  %conv21 = fptrunc double %mul20 to float, !dbg !258
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %result.sroa.1.0 = phi float [ %conv21, %if.else ], [ 0.000000e+00, %entry ]
  %result.sroa.0.0.in = phi double [ %mul, %if.else ], [ %call, %entry ]
  %result.sroa.0.0 = fptrunc double %result.sroa.0.0.in to float, !dbg !256
  %retval.sroa.0.0.vec.insert = insertelement <2 x float> undef, float %result.sroa.0.0, i32 0, !dbg !255
  %retval.sroa.0.4.vec.insert = insertelement <2 x float> %retval.sroa.0.0.vec.insert, float %result.sroa.1.0, i32 1, !dbg !255
  ret <2 x float> %retval.sroa.0.4.vec.insert, !dbg !255
}

; Function Attrs: nounwind optsize uwtable
define <2 x float> @CCTK_Cmplx8Exp(<2 x float> %complex_number.coerce) #3 {
entry:
  tail call void @llvm.dbg.declare(metadata !241, metadata !75), !dbg !260
  tail call void @llvm.dbg.declare(metadata !241, metadata !78), !dbg !260
  %complex_number.sroa.0.0.vec.extract = extractelement <2 x float> %complex_number.coerce, i32 0, !dbg !260
  %conv = fpext float %complex_number.sroa.0.0.vec.extract to double, !dbg !260
  %call = tail call double @exp(double %conv) #7, !dbg !260
  %conv1 = fptrunc double %call to float, !dbg !260
  tail call void @llvm.dbg.value(metadata !{float %conv1}, i64 0, metadata !76), !dbg !260
  %complex_number.sroa.0.4.vec.extract = extractelement <2 x float> %complex_number.coerce, i32 1, !dbg !260
  tail call void @llvm.dbg.value(metadata !{float %complex_number.sroa.0.4.vec.extract}, i64 0, metadata !77), !dbg !260
  %conv2 = fpext float %conv1 to double, !dbg !260
  %conv3 = fpext float %complex_number.sroa.0.4.vec.extract to double, !dbg !260
  %call4 = tail call double @cos(double %conv3) #7, !dbg !260
  %mul = fmul double %call4, %conv2, !dbg !260
  %conv5 = fptrunc double %mul to float, !dbg !260
  %call9 = tail call double @sin(double %conv3) #7, !dbg !260
  %mul10 = fmul double %conv2, %call9, !dbg !260
  %conv11 = fptrunc double %mul10 to float, !dbg !260
  %retval.sroa.0.0.vec.insert = insertelement <2 x float> undef, float %conv5, i32 0, !dbg !260
  %retval.sroa.0.4.vec.insert = insertelement <2 x float> %retval.sroa.0.0.vec.insert, float %conv11, i32 1, !dbg !260
  ret <2 x float> %retval.sroa.0.4.vec.insert, !dbg !260
}

; Function Attrs: nounwind optsize
declare double @exp(double) #4

; Function Attrs: nounwind optsize uwtable
define <2 x float> @CCTK_Cmplx8Sqrt(<2 x float> %complex_number.coerce) #3 {
entry:
  tail call void @llvm.dbg.declare(metadata !241, metadata !81), !dbg !261
  tail call void @llvm.dbg.declare(metadata !241, metadata !86), !dbg !261
  %complex_number.sroa.0.0.vec.extract = extractelement <2 x float> %complex_number.coerce, i32 0, !dbg !261
  %cmp = fcmp oeq float %complex_number.sroa.0.0.vec.extract, 0.000000e+00, !dbg !261
  %complex_number.sroa.0.4.vec.extract = extractelement <2 x float> %complex_number.coerce, i32 1, !dbg !261
  %cmp3 = fcmp oeq float %complex_number.sroa.0.4.vec.extract, 0.000000e+00, !dbg !261
  %or.cond = and i1 %cmp, %cmp3, !dbg !261
  br i1 %or.cond, label %if.end68, label %if.else, !dbg !261

if.else:                                          ; preds = %entry
  %fabsf = tail call float @fabsf(float %complex_number.sroa.0.0.vec.extract) #5, !dbg !262
  tail call void @llvm.dbg.value(metadata !{float %fabsf}, i64 0, metadata !82), !dbg !262
  %conv11 = fpext float %complex_number.sroa.0.4.vec.extract to double, !dbg !262
  %fabsf98 = tail call float @fabsf(float %complex_number.sroa.0.4.vec.extract) #5, !dbg !262
  tail call void @llvm.dbg.value(metadata !{float %fabsf98}, i64 0, metadata !83), !dbg !262
  %cmp14 = fcmp ult float %fabsf, %fabsf98, !dbg !262
  br i1 %cmp14, label %if.else27, label %if.then16, !dbg !262

if.then16:                                        ; preds = %if.else
  %div = fdiv float %fabsf98, %fabsf, !dbg !264
  tail call void @llvm.dbg.value(metadata !{float %div}, i64 0, metadata !85), !dbg !264
  %conv17 = fpext float %fabsf to double, !dbg !264
  %call18 = tail call double @sqrt(double %conv17) #7, !dbg !264
  %conv19 = fpext float %div to double, !dbg !264
  %mul21 = fmul double %conv19, %conv19, !dbg !264
  %call22 = tail call double @sqrt(double %mul21) #7, !dbg !264
  %add = fadd double %call22, 1.000000e+00, !dbg !264
  %mul23 = fmul double %add, 5.000000e-01, !dbg !264
  %call24 = tail call double @sqrt(double %mul23) #7, !dbg !264
  %mul25 = fmul double %call18, %call24, !dbg !264
  br label %if.end, !dbg !264

if.else27:                                        ; preds = %if.else
  %div28 = fdiv float %fabsf, %fabsf98, !dbg !266
  tail call void @llvm.dbg.value(metadata !{float %div28}, i64 0, metadata !85), !dbg !266
  %conv29 = fpext float %fabsf98 to double, !dbg !266
  %call30 = tail call double @sqrt(double %conv29) #7, !dbg !266
  %conv31 = fpext float %div28 to double, !dbg !266
  %mul35 = fmul double %conv31, %conv31, !dbg !266
  %call36 = tail call double @sqrt(double %mul35) #7, !dbg !266
  %add37 = fadd double %conv31, %call36, !dbg !266
  %mul38 = fmul double %add37, 5.000000e-01, !dbg !266
  %call39 = tail call double @sqrt(double %mul38) #7, !dbg !266
  %mul40 = fmul double %call30, %call39, !dbg !266
  br label %if.end

if.end:                                           ; preds = %if.else27, %if.then16
  %w.0.in = phi double [ %mul25, %if.then16 ], [ %mul40, %if.else27 ]
  %w.0 = fptrunc double %w.0.in to float, !dbg !264
  %cmp44 = fcmp ult float %complex_number.sroa.0.0.vec.extract, 0.000000e+00, !dbg !262
  br i1 %cmp44, label %if.else55, label %if.then46, !dbg !262

if.then46:                                        ; preds = %if.end
  %conv50 = fpext float %w.0 to double, !dbg !268
  %mul51 = fmul double %conv50, 2.000000e+00, !dbg !268
  %div52 = fdiv double %conv11, %mul51, !dbg !268
  %conv53 = fptrunc double %div52 to float, !dbg !268
  br label %if.end68, !dbg !268

if.else55:                                        ; preds = %if.end
  %cmp57 = fcmp ult float %complex_number.sroa.0.4.vec.extract, 0.000000e+00, !dbg !270
  br i1 %cmp57, label %cond.false, label %cond.end, !dbg !270

cond.false:                                       ; preds = %if.else55
  %sub = fsub float -0.000000e+00, %w.0, !dbg !270
  br label %cond.end, !dbg !270

cond.end:                                         ; preds = %if.else55, %cond.false
  %cond = phi float [ %sub, %cond.false ], [ %w.0, %if.else55 ], !dbg !270
  tail call void @llvm.dbg.value(metadata !{float %cond}, i64 0, metadata !82), !dbg !270
  %conv61 = fpext float %cond to double, !dbg !270
  %mul62 = fmul double %conv61, 2.000000e+00, !dbg !270
  %div63 = fdiv double %conv11, %mul62, !dbg !270
  %conv64 = fptrunc double %div63 to float, !dbg !270
  br label %if.end68

if.end68:                                         ; preds = %entry, %if.then46, %cond.end
  %result.sroa.1.0 = phi float [ %conv53, %if.then46 ], [ %cond, %cond.end ], [ 0.000000e+00, %entry ]
  %result.sroa.0.0 = phi float [ %w.0, %if.then46 ], [ %conv64, %cond.end ], [ 0.000000e+00, %entry ]
  %retval.sroa.0.0.vec.insert = insertelement <2 x float> undef, float %result.sroa.0.0, i32 0, !dbg !261
  %retval.sroa.0.4.vec.insert = insertelement <2 x float> %retval.sroa.0.0.vec.insert, float %result.sroa.1.0, i32 1, !dbg !261
  ret <2 x float> %retval.sroa.0.4.vec.insert, !dbg !261
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #5

; Function Attrs: nounwind optsize
declare double @sqrt(double) #4

; Function Attrs: nounwind optsize readnone uwtable
define { double, double } @CCTK_Cmplx16(double %Re, double %Im) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double %Re}, i64 0, metadata !97), !dbg !272
  tail call void @llvm.dbg.value(metadata !{double %Im}, i64 0, metadata !98), !dbg !272
  tail call void @llvm.dbg.declare(metadata !273, metadata !99), !dbg !272
  %.fca.0.insert = insertvalue { double, double } undef, double %Re, 0, !dbg !272
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %Im, 1, !dbg !272
  ret { double, double } %.fca.1.insert, !dbg !272
}

; Function Attrs: nounwind optsize readnone uwtable
define double @CCTK_Cmplx16Real(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !273, metadata !104), !dbg !274
  ret double %complex_number.coerce0, !dbg !274
}

; Function Attrs: nounwind optsize readnone uwtable
define double @CCTK_Cmplx16Imag(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !273, metadata !107), !dbg !275
  ret double %complex_number.coerce1, !dbg !275
}

; Function Attrs: nounwind optsize readnone uwtable
define { double, double } @CCTK_Cmplx16Conjg(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !273, metadata !112), !dbg !276
  tail call void @llvm.dbg.declare(metadata !273, metadata !113), !dbg !276
  %sub = fsub double -0.000000e+00, %complex_number.coerce1, !dbg !276
  %.fca.0.insert = insertvalue { double, double } undef, double %complex_number.coerce0, 0, !dbg !276
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %sub, 1, !dbg !276
  ret { double, double } %.fca.1.insert, !dbg !276
}

; Function Attrs: nounwind optsize uwtable
define double @CCTK_Cmplx16Abs(double %complex_number.coerce0, double %complex_number.coerce1) #3 {
entry:
  tail call void @llvm.dbg.declare(metadata !273, metadata !116), !dbg !277
  %call = tail call double @hypot(double %complex_number.coerce0, double %complex_number.coerce1) #7, !dbg !277
  ret double %call, !dbg !277
}

; Function Attrs: nounwind optsize readnone uwtable
define { double, double } @CCTK_Cmplx16Add(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !273, metadata !121), !dbg !278
  tail call void @llvm.dbg.declare(metadata !273, metadata !122), !dbg !278
  tail call void @llvm.dbg.declare(metadata !273, metadata !123), !dbg !278
  %add = fadd double %a.coerce0, %b.coerce0, !dbg !278
  %add4 = fadd double %a.coerce1, %b.coerce1, !dbg !278
  %.fca.0.insert = insertvalue { double, double } undef, double %add, 0, !dbg !278
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %add4, 1, !dbg !278
  ret { double, double } %.fca.1.insert, !dbg !278
}

; Function Attrs: nounwind optsize readnone uwtable
define { double, double } @CCTK_Cmplx16Sub(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !273, metadata !126), !dbg !279
  tail call void @llvm.dbg.declare(metadata !273, metadata !127), !dbg !279
  tail call void @llvm.dbg.declare(metadata !273, metadata !128), !dbg !279
  %sub = fsub double %a.coerce0, %b.coerce0, !dbg !279
  %sub4 = fsub double %a.coerce1, %b.coerce1, !dbg !279
  %.fca.0.insert = insertvalue { double, double } undef, double %sub, 0, !dbg !279
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %sub4, 1, !dbg !279
  ret { double, double } %.fca.1.insert, !dbg !279
}

; Function Attrs: nounwind optsize readnone uwtable
define { double, double } @CCTK_Cmplx16Mul(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !273, metadata !131), !dbg !280
  tail call void @llvm.dbg.declare(metadata !273, metadata !132), !dbg !280
  tail call void @llvm.dbg.declare(metadata !273, metadata !133), !dbg !280
  %mul = fmul double %a.coerce0, %b.coerce0, !dbg !280
  %mul3 = fmul double %a.coerce1, %b.coerce1, !dbg !280
  %sub = fsub double %mul, %mul3, !dbg !280
  %mul7 = fmul double %a.coerce1, %b.coerce0, !dbg !280
  %mul10 = fmul double %a.coerce0, %b.coerce1, !dbg !280
  %add = fadd double %mul7, %mul10, !dbg !280
  %.fca.0.insert = insertvalue { double, double } undef, double %sub, 0, !dbg !280
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %add, 1, !dbg !280
  ret { double, double } %.fca.1.insert, !dbg !280
}

; Function Attrs: nounwind optsize readnone uwtable
define { double, double } @CCTK_Cmplx16Div(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
entry:
  tail call void @llvm.dbg.declare(metadata !273, metadata !136), !dbg !281
  tail call void @llvm.dbg.declare(metadata !273, metadata !137), !dbg !281
  tail call void @llvm.dbg.declare(metadata !273, metadata !139), !dbg !281
  %mul = fmul double %b.coerce0, %b.coerce0, !dbg !281
  %mul3 = fmul double %b.coerce1, %b.coerce1, !dbg !281
  %add = fadd double %mul, %mul3, !dbg !281
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !138), !dbg !281
  %mul6 = fmul double %a.coerce0, %b.coerce0, !dbg !281
  %mul9 = fmul double %a.coerce1, %b.coerce1, !dbg !281
  %add10 = fadd double %mul6, %mul9, !dbg !281
  %div = fdiv double %add10, %add, !dbg !281
  %mul14 = fmul double %a.coerce1, %b.coerce0, !dbg !281
  %mul17 = fmul double %a.coerce0, %b.coerce1, !dbg !281
  %sub = fsub double %mul14, %mul17, !dbg !281
  %div18 = fdiv double %sub, %add, !dbg !281
  %.fca.0.insert = insertvalue { double, double } undef, double %div, 0, !dbg !281
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %div18, 1, !dbg !281
  ret { double, double } %.fca.1.insert, !dbg !281
}

; Function Attrs: nounwind optsize uwtable
define { double, double } @CCTK_Cmplx16Sin(double %complex_number.coerce0, double %complex_number.coerce1) #3 {
entry:
  tail call void @llvm.dbg.declare(metadata !273, metadata !142), !dbg !282
  tail call void @llvm.dbg.declare(metadata !273, metadata !143), !dbg !282
  %cmp = fcmp oeq double %complex_number.coerce1, 0.000000e+00, !dbg !282
  %call = tail call double @sin(double %complex_number.coerce0) #7, !dbg !283
  br i1 %cmp, label %if.end, label %if.else, !dbg !282

if.else:                                          ; preds = %entry
  %call6 = tail call double @cosh(double %complex_number.coerce1) #7, !dbg !285
  %mul = fmul double %call, %call6, !dbg !285
  %call9 = tail call double @cos(double %complex_number.coerce0) #7, !dbg !285
  %call11 = tail call double @sinh(double %complex_number.coerce1) #7, !dbg !285
  %mul12 = fmul double %call9, %call11, !dbg !285
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %result.sroa.1.0 = phi double [ %mul12, %if.else ], [ 0.000000e+00, %entry ]
  %result.sroa.0.0 = phi double [ %mul, %if.else ], [ %call, %entry ]
  %.fca.0.insert = insertvalue { double, double } undef, double %result.sroa.0.0, 0, !dbg !282
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %result.sroa.1.0, 1, !dbg !282
  ret { double, double } %.fca.1.insert, !dbg !282
}

; Function Attrs: nounwind optsize uwtable
define { double, double } @CCTK_Cmplx16Cos(double %complex_number.coerce0, double %complex_number.coerce1) #3 {
entry:
  tail call void @llvm.dbg.declare(metadata !273, metadata !146), !dbg !287
  tail call void @llvm.dbg.declare(metadata !273, metadata !147), !dbg !287
  %cmp = fcmp oeq double %complex_number.coerce1, 0.000000e+00, !dbg !287
  %call = tail call double @cos(double %complex_number.coerce0) #7, !dbg !288
  br i1 %cmp, label %if.end, label %if.else, !dbg !287

if.else:                                          ; preds = %entry
  %call6 = tail call double @cosh(double %complex_number.coerce1) #7, !dbg !290
  %mul = fmul double %call, %call6, !dbg !290
  %call9 = tail call double @sin(double %complex_number.coerce0) #7, !dbg !290
  %call11 = tail call double @sinh(double %complex_number.coerce1) #7, !dbg !290
  %mul12 = fmul double %call9, %call11, !dbg !290
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %result.sroa.1.0 = phi double [ %mul12, %if.else ], [ 0.000000e+00, %entry ]
  %result.sroa.0.0 = phi double [ %mul, %if.else ], [ %call, %entry ]
  %.fca.0.insert = insertvalue { double, double } undef, double %result.sroa.0.0, 0, !dbg !287
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %result.sroa.1.0, 1, !dbg !287
  ret { double, double } %.fca.1.insert, !dbg !287
}

; Function Attrs: nounwind optsize uwtable
define { double, double } @CCTK_Cmplx16Exp(double %complex_number.coerce0, double %complex_number.coerce1) #3 {
entry:
  tail call void @llvm.dbg.declare(metadata !273, metadata !150), !dbg !292
  tail call void @llvm.dbg.declare(metadata !273, metadata !153), !dbg !292
  %call = tail call double @exp(double %complex_number.coerce0) #7, !dbg !292
  tail call void @llvm.dbg.value(metadata !{double %call}, i64 0, metadata !151), !dbg !292
  tail call void @llvm.dbg.value(metadata !{double %complex_number.coerce1}, i64 0, metadata !152), !dbg !292
  %call1 = tail call double @cos(double %complex_number.coerce1) #7, !dbg !292
  %mul = fmul double %call, %call1, !dbg !292
  %call3 = tail call double @sin(double %complex_number.coerce1) #7, !dbg !292
  %mul4 = fmul double %call, %call3, !dbg !292
  %.fca.0.insert = insertvalue { double, double } undef, double %mul, 0, !dbg !292
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %mul4, 1, !dbg !292
  ret { double, double } %.fca.1.insert, !dbg !292
}

; Function Attrs: nounwind optsize uwtable
define { double, double } @CCTK_Cmplx16Sqrt(double %complex_number.coerce0, double %complex_number.coerce1) #3 {
entry:
  tail call void @llvm.dbg.declare(metadata !273, metadata !156), !dbg !293
  tail call void @llvm.dbg.declare(metadata !273, metadata !161), !dbg !293
  %cmp = fcmp oeq double %complex_number.coerce0, 0.000000e+00, !dbg !293
  %cmp1 = fcmp oeq double %complex_number.coerce1, 0.000000e+00, !dbg !293
  %or.cond = and i1 %cmp, %cmp1, !dbg !293
  br i1 %or.cond, label %if.end42, label %if.else, !dbg !293

if.else:                                          ; preds = %entry
  %call = tail call double @fabs(double %complex_number.coerce0) #8, !dbg !294
  tail call void @llvm.dbg.value(metadata !{double %call}, i64 0, metadata !157), !dbg !294
  %call6 = tail call double @fabs(double %complex_number.coerce1) #8, !dbg !294
  tail call void @llvm.dbg.value(metadata !{double %call6}, i64 0, metadata !158), !dbg !294
  %cmp7 = fcmp ult double %call, %call6, !dbg !294
  br i1 %cmp7, label %if.else15, label %if.then8, !dbg !294

if.then8:                                         ; preds = %if.else
  %div = fdiv double %call6, %call, !dbg !296
  tail call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !160), !dbg !296
  %call9 = tail call double @sqrt(double %call) #7, !dbg !296
  %mul10 = fmul double %div, %div, !dbg !296
  %call11 = tail call double @sqrt(double %mul10) #7, !dbg !296
  %add = fadd double %call11, 1.000000e+00, !dbg !296
  %mul12 = fmul double %add, 5.000000e-01, !dbg !296
  %call13 = tail call double @sqrt(double %mul12) #7, !dbg !296
  %mul14 = fmul double %call9, %call13, !dbg !296
  tail call void @llvm.dbg.value(metadata !{double %mul14}, i64 0, metadata !159), !dbg !296
  br label %if.end, !dbg !296

if.else15:                                        ; preds = %if.else
  %div16 = fdiv double %call, %call6, !dbg !298
  tail call void @llvm.dbg.value(metadata !{double %div16}, i64 0, metadata !160), !dbg !298
  %call17 = tail call double @sqrt(double %call6) #7, !dbg !298
  %mul19 = fmul double %div16, %div16, !dbg !298
  %call20 = tail call double @sqrt(double %mul19) #7, !dbg !298
  %add21 = fadd double %div16, %call20, !dbg !298
  %mul22 = fmul double %add21, 5.000000e-01, !dbg !298
  %call23 = tail call double @sqrt(double %mul22) #7, !dbg !298
  %mul24 = fmul double %call17, %call23, !dbg !298
  tail call void @llvm.dbg.value(metadata !{double %mul24}, i64 0, metadata !159), !dbg !298
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then8
  %w.0 = phi double [ %mul14, %if.then8 ], [ %mul24, %if.else15 ]
  %cmp26 = fcmp ult double %complex_number.coerce0, 0.000000e+00, !dbg !294
  br i1 %cmp26, label %if.else33, label %if.then27, !dbg !294

if.then27:                                        ; preds = %if.end
  %mul30 = fmul double %w.0, 2.000000e+00, !dbg !300
  %div31 = fdiv double %complex_number.coerce1, %mul30, !dbg !300
  br label %if.end42, !dbg !300

if.else33:                                        ; preds = %if.end
  %cmp35 = fcmp ult double %complex_number.coerce1, 0.000000e+00, !dbg !302
  br i1 %cmp35, label %cond.false, label %cond.end, !dbg !302

cond.false:                                       ; preds = %if.else33
  %sub = fsub double -0.000000e+00, %w.0, !dbg !302
  br label %cond.end, !dbg !302

cond.end:                                         ; preds = %if.else33, %cond.false
  %cond = phi double [ %sub, %cond.false ], [ %w.0, %if.else33 ], !dbg !302
  tail call void @llvm.dbg.value(metadata !{double %cond}, i64 0, metadata !157), !dbg !302
  %mul37 = fmul double %cond, 2.000000e+00, !dbg !302
  %div38 = fdiv double %complex_number.coerce1, %mul37, !dbg !302
  br label %if.end42

if.end42:                                         ; preds = %entry, %if.then27, %cond.end
  %result.sroa.1.0 = phi double [ %div31, %if.then27 ], [ %cond, %cond.end ], [ 0.000000e+00, %entry ]
  %result.sroa.0.0 = phi double [ %w.0, %if.then27 ], [ %div38, %cond.end ], [ 0.000000e+00, %entry ]
  %.fca.0.insert = insertvalue { double, double } undef, double %result.sroa.0.0, 0, !dbg !293
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %result.sroa.1.0, 1, !dbg !293
  ret { double, double } %.fca.1.insert, !dbg !293
}

; Function Attrs: nounwind optsize uwtable
define void @CCTK_Cmplx32(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, x86_fp80 %Re, x86_fp80 %Im) #3 {
entry:
  %result.sroa.1 = alloca [6 x i8], align 2
  %result.sroa.3 = alloca [6 x i8], align 2
  call void @llvm.dbg.value(metadata !{x86_fp80 %Re}, i64 0, metadata !172), !dbg !304
  call void @llvm.dbg.value(metadata !{x86_fp80 %Im}, i64 0, metadata !173), !dbg !304
  call void @llvm.dbg.declare(metadata !305, metadata !174), !dbg !304
  %result.sroa.0.0.idx = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !304
  store x86_fp80 %Re, x86_fp80* %result.sroa.0.0.idx, align 16, !dbg !304
  %result.sroa.1.10.raw_cast = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*, !dbg !304
  %result.sroa.1.10.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 10, !dbg !304
  %result.sroa.1.10.idx = getelementptr inbounds [6 x i8]* %result.sroa.1, i64 0, i64 0, !dbg !304
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.1.10.raw_idx, i8* %result.sroa.1.10.idx, i64 6, i32 2, i1 false), !dbg !304
  %result.sroa.2.16.idx3 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !304
  store x86_fp80 %Im, x86_fp80* %result.sroa.2.16.idx3, align 16, !dbg !304
  %result.sroa.3.26.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 26, !dbg !304
  %result.sroa.3.26.idx = getelementptr inbounds [6 x i8]* %result.sroa.3, i64 0, i64 0, !dbg !304
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.3.26.raw_idx, i8* %result.sroa.3.26.idx, i64 6, i32 2, i1 false), !dbg !304
  ret void, !dbg !304
}

; Function Attrs: nounwind optsize readonly uwtable
define x86_fp80 @CCTK_Cmplx32Real(%struct.CCTK_COMPLEX32* byval nocapture align 16 %complex_number) #6 {
entry:
  tail call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %complex_number}, metadata !179), !dbg !306
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0, !dbg !306
  %0 = load x86_fp80* %Re, align 16, !dbg !306, !tbaa !307
  ret x86_fp80 %0, !dbg !306
}

; Function Attrs: nounwind optsize readonly uwtable
define x86_fp80 @CCTK_Cmplx32Imag(%struct.CCTK_COMPLEX32* byval nocapture align 16 %complex_number) #6 {
entry:
  tail call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %complex_number}, metadata !182), !dbg !310
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1, !dbg !310
  %0 = load x86_fp80* %Im, align 16, !dbg !310, !tbaa !307
  ret x86_fp80 %0, !dbg !310
}

; Function Attrs: nounwind optsize uwtable
define void @CCTK_Cmplx32Conjg(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture align 16 %complex_number) #3 {
entry:
  %result.sroa.1 = alloca [6 x i8], align 2
  %result.sroa.3 = alloca [6 x i8], align 2
  call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %complex_number}, metadata !187), !dbg !311
  call void @llvm.dbg.declare(metadata !305, metadata !188), !dbg !311
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0, !dbg !311
  %0 = load x86_fp80* %Re, align 16, !dbg !311, !tbaa !307
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1, !dbg !311
  %1 = load x86_fp80* %Im, align 16, !dbg !311, !tbaa !307
  %sub = fsub x86_fp80 0xK80000000000000000000, %1, !dbg !311
  %result.sroa.0.0.idx = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !311
  store x86_fp80 %0, x86_fp80* %result.sroa.0.0.idx, align 16, !dbg !311
  %result.sroa.1.10.raw_cast = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*, !dbg !311
  %result.sroa.1.10.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 10, !dbg !311
  %result.sroa.1.10.idx = getelementptr inbounds [6 x i8]* %result.sroa.1, i64 0, i64 0, !dbg !311
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.1.10.raw_idx, i8* %result.sroa.1.10.idx, i64 6, i32 2, i1 false), !dbg !311
  %result.sroa.2.16.idx3 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !311
  store x86_fp80 %sub, x86_fp80* %result.sroa.2.16.idx3, align 16, !dbg !311
  %result.sroa.3.26.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 26, !dbg !311
  %result.sroa.3.26.idx = getelementptr inbounds [6 x i8]* %result.sroa.3, i64 0, i64 0, !dbg !311
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.3.26.raw_idx, i8* %result.sroa.3.26.idx, i64 6, i32 2, i1 false), !dbg !311
  ret void, !dbg !311
}

; Function Attrs: nounwind optsize uwtable
define x86_fp80 @CCTK_Cmplx32Abs(%struct.CCTK_COMPLEX32* byval nocapture align 16 %complex_number) #3 {
entry:
  tail call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %complex_number}, metadata !191), !dbg !312
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0, !dbg !312
  %0 = load x86_fp80* %Re, align 16, !dbg !312, !tbaa !307
  %conv = fptrunc x86_fp80 %0 to double, !dbg !312
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1, !dbg !312
  %1 = load x86_fp80* %Im, align 16, !dbg !312, !tbaa !307
  %conv1 = fptrunc x86_fp80 %1 to double, !dbg !312
  %call = tail call double @hypot(double %conv, double %conv1) #7, !dbg !312
  %conv2 = fpext double %call to x86_fp80, !dbg !312
  ret x86_fp80 %conv2, !dbg !312
}

; Function Attrs: nounwind optsize uwtable
define void @CCTK_Cmplx32Add(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture align 16 %a, %struct.CCTK_COMPLEX32* byval nocapture align 16 %b) #3 {
entry:
  %result.sroa.1 = alloca [6 x i8], align 2
  %result.sroa.3 = alloca [6 x i8], align 2
  call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %a}, metadata !196), !dbg !313
  call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %b}, metadata !197), !dbg !313
  call void @llvm.dbg.declare(metadata !305, metadata !198), !dbg !313
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 0, !dbg !313
  %0 = load x86_fp80* %Re, align 16, !dbg !313, !tbaa !307
  %Re1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 0, !dbg !313
  %1 = load x86_fp80* %Re1, align 16, !dbg !313, !tbaa !307
  %add = fadd x86_fp80 %0, %1, !dbg !313
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 1, !dbg !313
  %2 = load x86_fp80* %Im, align 16, !dbg !313, !tbaa !307
  %Im3 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 1, !dbg !313
  %3 = load x86_fp80* %Im3, align 16, !dbg !313, !tbaa !307
  %add4 = fadd x86_fp80 %2, %3, !dbg !313
  %result.sroa.0.0.idx = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !313
  store x86_fp80 %add, x86_fp80* %result.sroa.0.0.idx, align 16, !dbg !313
  %result.sroa.1.10.raw_cast = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*, !dbg !313
  %result.sroa.1.10.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 10, !dbg !313
  %result.sroa.1.10.idx = getelementptr inbounds [6 x i8]* %result.sroa.1, i64 0, i64 0, !dbg !313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.1.10.raw_idx, i8* %result.sroa.1.10.idx, i64 6, i32 2, i1 false), !dbg !313
  %result.sroa.2.16.idx6 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !313
  store x86_fp80 %add4, x86_fp80* %result.sroa.2.16.idx6, align 16, !dbg !313
  %result.sroa.3.26.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 26, !dbg !313
  %result.sroa.3.26.idx = getelementptr inbounds [6 x i8]* %result.sroa.3, i64 0, i64 0, !dbg !313
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.3.26.raw_idx, i8* %result.sroa.3.26.idx, i64 6, i32 2, i1 false), !dbg !313
  ret void, !dbg !313
}

; Function Attrs: nounwind optsize uwtable
define void @CCTK_Cmplx32Sub(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture align 16 %a, %struct.CCTK_COMPLEX32* byval nocapture align 16 %b) #3 {
entry:
  %result.sroa.1 = alloca [6 x i8], align 2
  %result.sroa.3 = alloca [6 x i8], align 2
  call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %a}, metadata !201), !dbg !314
  call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %b}, metadata !202), !dbg !314
  call void @llvm.dbg.declare(metadata !305, metadata !203), !dbg !314
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 0, !dbg !314
  %0 = load x86_fp80* %Re, align 16, !dbg !314, !tbaa !307
  %Re1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 0, !dbg !314
  %1 = load x86_fp80* %Re1, align 16, !dbg !314, !tbaa !307
  %sub = fsub x86_fp80 %0, %1, !dbg !314
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 1, !dbg !314
  %2 = load x86_fp80* %Im, align 16, !dbg !314, !tbaa !307
  %Im3 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 1, !dbg !314
  %3 = load x86_fp80* %Im3, align 16, !dbg !314, !tbaa !307
  %sub4 = fsub x86_fp80 %2, %3, !dbg !314
  %result.sroa.0.0.idx = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !314
  store x86_fp80 %sub, x86_fp80* %result.sroa.0.0.idx, align 16, !dbg !314
  %result.sroa.1.10.raw_cast = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*, !dbg !314
  %result.sroa.1.10.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 10, !dbg !314
  %result.sroa.1.10.idx = getelementptr inbounds [6 x i8]* %result.sroa.1, i64 0, i64 0, !dbg !314
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.1.10.raw_idx, i8* %result.sroa.1.10.idx, i64 6, i32 2, i1 false), !dbg !314
  %result.sroa.2.16.idx6 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !314
  store x86_fp80 %sub4, x86_fp80* %result.sroa.2.16.idx6, align 16, !dbg !314
  %result.sroa.3.26.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 26, !dbg !314
  %result.sroa.3.26.idx = getelementptr inbounds [6 x i8]* %result.sroa.3, i64 0, i64 0, !dbg !314
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.3.26.raw_idx, i8* %result.sroa.3.26.idx, i64 6, i32 2, i1 false), !dbg !314
  ret void, !dbg !314
}

; Function Attrs: nounwind optsize uwtable
define void @CCTK_Cmplx32Mul(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture align 16 %a, %struct.CCTK_COMPLEX32* byval nocapture align 16 %b) #3 {
entry:
  %result.sroa.1 = alloca [6 x i8], align 2
  %result.sroa.3 = alloca [6 x i8], align 2
  call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %a}, metadata !206), !dbg !315
  call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %b}, metadata !207), !dbg !315
  call void @llvm.dbg.declare(metadata !305, metadata !208), !dbg !315
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 0, !dbg !315
  %0 = load x86_fp80* %Re, align 16, !dbg !315, !tbaa !307
  %Re1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 0, !dbg !315
  %1 = load x86_fp80* %Re1, align 16, !dbg !315, !tbaa !307
  %mul = fmul x86_fp80 %0, %1, !dbg !315
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 1, !dbg !315
  %2 = load x86_fp80* %Im, align 16, !dbg !315, !tbaa !307
  %Im2 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 1, !dbg !315
  %3 = load x86_fp80* %Im2, align 16, !dbg !315, !tbaa !307
  %mul3 = fmul x86_fp80 %2, %3, !dbg !315
  %sub = fsub x86_fp80 %mul, %mul3, !dbg !315
  %mul7 = fmul x86_fp80 %1, %2, !dbg !315
  %mul10 = fmul x86_fp80 %0, %3, !dbg !315
  %add = fadd x86_fp80 %mul7, %mul10, !dbg !315
  %result.sroa.0.0.idx = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !315
  store x86_fp80 %sub, x86_fp80* %result.sroa.0.0.idx, align 16, !dbg !315
  %result.sroa.1.10.raw_cast = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*, !dbg !315
  %result.sroa.1.10.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 10, !dbg !315
  %result.sroa.1.10.idx = getelementptr inbounds [6 x i8]* %result.sroa.1, i64 0, i64 0, !dbg !315
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.1.10.raw_idx, i8* %result.sroa.1.10.idx, i64 6, i32 2, i1 false), !dbg !315
  %result.sroa.2.16.idx12 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !315
  store x86_fp80 %add, x86_fp80* %result.sroa.2.16.idx12, align 16, !dbg !315
  %result.sroa.3.26.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 26, !dbg !315
  %result.sroa.3.26.idx = getelementptr inbounds [6 x i8]* %result.sroa.3, i64 0, i64 0, !dbg !315
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.3.26.raw_idx, i8* %result.sroa.3.26.idx, i64 6, i32 2, i1 false), !dbg !315
  ret void, !dbg !315
}

; Function Attrs: nounwind optsize uwtable
define void @CCTK_Cmplx32Div(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture align 16 %a, %struct.CCTK_COMPLEX32* byval nocapture align 16 %b) #3 {
entry:
  %result.sroa.1 = alloca [6 x i8], align 2
  %result.sroa.3 = alloca [6 x i8], align 2
  call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %a}, metadata !211), !dbg !316
  call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %b}, metadata !212), !dbg !316
  call void @llvm.dbg.declare(metadata !305, metadata !214), !dbg !316
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 0, !dbg !316
  %0 = load x86_fp80* %Re, align 16, !dbg !316, !tbaa !307
  %mul = fmul x86_fp80 %0, %0, !dbg !316
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 1, !dbg !316
  %1 = load x86_fp80* %Im, align 16, !dbg !316, !tbaa !307
  %mul3 = fmul x86_fp80 %1, %1, !dbg !316
  %add = fadd x86_fp80 %mul, %mul3, !dbg !316
  call void @llvm.dbg.value(metadata !{x86_fp80 %add}, i64 0, metadata !213), !dbg !316
  %Re4 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 0, !dbg !316
  %2 = load x86_fp80* %Re4, align 16, !dbg !316, !tbaa !307
  %mul6 = fmul x86_fp80 %0, %2, !dbg !316
  %Im7 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 1, !dbg !316
  %3 = load x86_fp80* %Im7, align 16, !dbg !316, !tbaa !307
  %mul9 = fmul x86_fp80 %1, %3, !dbg !316
  %add10 = fadd x86_fp80 %mul6, %mul9, !dbg !316
  %div = fdiv x86_fp80 %add10, %add, !dbg !316
  %mul14 = fmul x86_fp80 %0, %3, !dbg !316
  %mul17 = fmul x86_fp80 %1, %2, !dbg !316
  %sub = fsub x86_fp80 %mul14, %mul17, !dbg !316
  %div18 = fdiv x86_fp80 %sub, %add, !dbg !316
  %result.sroa.0.0.idx = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !316
  store x86_fp80 %div, x86_fp80* %result.sroa.0.0.idx, align 16, !dbg !316
  %result.sroa.1.10.raw_cast = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*, !dbg !316
  %result.sroa.1.10.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 10, !dbg !316
  %result.sroa.1.10.idx = getelementptr inbounds [6 x i8]* %result.sroa.1, i64 0, i64 0, !dbg !316
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.1.10.raw_idx, i8* %result.sroa.1.10.idx, i64 6, i32 2, i1 false), !dbg !316
  %result.sroa.2.16.idx20 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !316
  store x86_fp80 %div18, x86_fp80* %result.sroa.2.16.idx20, align 16, !dbg !316
  %result.sroa.3.26.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 26, !dbg !316
  %result.sroa.3.26.idx = getelementptr inbounds [6 x i8]* %result.sroa.3, i64 0, i64 0, !dbg !316
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.3.26.raw_idx, i8* %result.sroa.3.26.idx, i64 6, i32 2, i1 false), !dbg !316
  ret void, !dbg !316
}

; Function Attrs: nounwind optsize uwtable
define void @CCTK_Cmplx32Sin(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture align 16 %complex_number) #3 {
entry:
  %result.sroa.1 = alloca [6 x i8], align 2
  %result.sroa.3 = alloca [6 x i8], align 2
  call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %complex_number}, metadata !217), !dbg !317
  call void @llvm.dbg.declare(metadata !305, metadata !218), !dbg !317
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1, !dbg !317
  %0 = load x86_fp80* %Im, align 16, !dbg !317, !tbaa !307
  %cmp = fcmp oeq x86_fp80 %0, 0xK00000000000000000000, !dbg !317
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0, !dbg !318
  %1 = load x86_fp80* %Re, align 16, !dbg !318, !tbaa !307
  %conv = fptrunc x86_fp80 %1 to double, !dbg !318
  %call = call double @sin(double %conv) #7, !dbg !318
  br i1 %cmp, label %if.end, label %if.else, !dbg !317

if.else:                                          ; preds = %entry
  %conv8 = fptrunc x86_fp80 %0 to double, !dbg !320
  %call9 = call double @cosh(double %conv8) #7, !dbg !320
  %mul = fmul double %call, %call9, !dbg !320
  %call14 = call double @cos(double %conv) #7, !dbg !320
  %call17 = call double @sinh(double %conv8) #7, !dbg !320
  %mul18 = fmul double %call14, %call17, !dbg !320
  %conv19 = fpext double %mul18 to x86_fp80, !dbg !320
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %result.sroa.2.0 = phi x86_fp80 [ %conv19, %if.else ], [ 0xK00000000000000000000, %entry ]
  %result.sroa.0.0.in = phi double [ %mul, %if.else ], [ %call, %entry ]
  %result.sroa.0.0 = fpext double %result.sroa.0.0.in to x86_fp80, !dbg !318
  %result.sroa.0.0.idx = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !317
  store x86_fp80 %result.sroa.0.0, x86_fp80* %result.sroa.0.0.idx, align 16, !dbg !317
  %result.sroa.1.10.raw_cast = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*, !dbg !317
  %result.sroa.1.10.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 10, !dbg !317
  %result.sroa.1.10.idx = getelementptr inbounds [6 x i8]* %result.sroa.1, i64 0, i64 0, !dbg !317
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.1.10.raw_idx, i8* %result.sroa.1.10.idx, i64 6, i32 2, i1 false), !dbg !317
  %result.sroa.2.16.idx21 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !317
  store x86_fp80 %result.sroa.2.0, x86_fp80* %result.sroa.2.16.idx21, align 16, !dbg !317
  %result.sroa.3.26.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 26, !dbg !317
  %result.sroa.3.26.idx = getelementptr inbounds [6 x i8]* %result.sroa.3, i64 0, i64 0, !dbg !317
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.3.26.raw_idx, i8* %result.sroa.3.26.idx, i64 6, i32 2, i1 false), !dbg !317
  ret void, !dbg !317
}

; Function Attrs: nounwind optsize uwtable
define void @CCTK_Cmplx32Cos(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture align 16 %complex_number) #3 {
entry:
  %result.sroa.1 = alloca [6 x i8], align 2
  %result.sroa.3 = alloca [6 x i8], align 2
  call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %complex_number}, metadata !221), !dbg !322
  call void @llvm.dbg.declare(metadata !305, metadata !222), !dbg !322
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1, !dbg !322
  %0 = load x86_fp80* %Im, align 16, !dbg !322, !tbaa !307
  %cmp = fcmp oeq x86_fp80 %0, 0xK00000000000000000000, !dbg !322
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0, !dbg !323
  %1 = load x86_fp80* %Re, align 16, !dbg !323, !tbaa !307
  %conv = fptrunc x86_fp80 %1 to double, !dbg !323
  %call = call double @cos(double %conv) #7, !dbg !323
  br i1 %cmp, label %if.end, label %if.else, !dbg !322

if.else:                                          ; preds = %entry
  %conv8 = fptrunc x86_fp80 %0 to double, !dbg !325
  %call9 = call double @cosh(double %conv8) #7, !dbg !325
  %mul = fmul double %call, %call9, !dbg !325
  %call14 = call double @sin(double %conv) #7, !dbg !325
  %call17 = call double @sinh(double %conv8) #7, !dbg !325
  %mul18 = fmul double %call14, %call17, !dbg !325
  %conv19 = fpext double %mul18 to x86_fp80, !dbg !325
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %result.sroa.2.0 = phi x86_fp80 [ %conv19, %if.else ], [ 0xK00000000000000000000, %entry ]
  %result.sroa.0.0.in = phi double [ %mul, %if.else ], [ %call, %entry ]
  %result.sroa.0.0 = fpext double %result.sroa.0.0.in to x86_fp80, !dbg !323
  %result.sroa.0.0.idx = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !322
  store x86_fp80 %result.sroa.0.0, x86_fp80* %result.sroa.0.0.idx, align 16, !dbg !322
  %result.sroa.1.10.raw_cast = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*, !dbg !322
  %result.sroa.1.10.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 10, !dbg !322
  %result.sroa.1.10.idx = getelementptr inbounds [6 x i8]* %result.sroa.1, i64 0, i64 0, !dbg !322
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.1.10.raw_idx, i8* %result.sroa.1.10.idx, i64 6, i32 2, i1 false), !dbg !322
  %result.sroa.2.16.idx21 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !322
  store x86_fp80 %result.sroa.2.0, x86_fp80* %result.sroa.2.16.idx21, align 16, !dbg !322
  %result.sroa.3.26.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 26, !dbg !322
  %result.sroa.3.26.idx = getelementptr inbounds [6 x i8]* %result.sroa.3, i64 0, i64 0, !dbg !322
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.3.26.raw_idx, i8* %result.sroa.3.26.idx, i64 6, i32 2, i1 false), !dbg !322
  ret void, !dbg !322
}

; Function Attrs: nounwind optsize uwtable
define void @CCTK_Cmplx32Exp(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture align 16 %complex_number) #3 {
entry:
  %result.sroa.1 = alloca [6 x i8], align 2
  %result.sroa.3 = alloca [6 x i8], align 2
  call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %complex_number}, metadata !225), !dbg !327
  call void @llvm.dbg.declare(metadata !305, metadata !228), !dbg !327
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0, !dbg !327
  %0 = load x86_fp80* %Re, align 16, !dbg !327, !tbaa !307
  %conv = fptrunc x86_fp80 %0 to double, !dbg !327
  %call = call double @exp(double %conv) #7, !dbg !327
  %conv1 = fpext double %call to x86_fp80, !dbg !327
  call void @llvm.dbg.value(metadata !{x86_fp80 %conv1}, i64 0, metadata !226), !dbg !327
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1, !dbg !327
  %1 = load x86_fp80* %Im, align 16, !dbg !327, !tbaa !307
  call void @llvm.dbg.value(metadata !{x86_fp80 %1}, i64 0, metadata !227), !dbg !327
  %conv2 = fptrunc x86_fp80 %1 to double, !dbg !327
  %call3 = call double @cos(double %conv2) #7, !dbg !327
  %conv4 = fpext double %call3 to x86_fp80, !dbg !327
  %mul = fmul x86_fp80 %conv1, %conv4, !dbg !327
  %call7 = call double @sin(double %conv2) #7, !dbg !327
  %conv8 = fpext double %call7 to x86_fp80, !dbg !327
  %mul9 = fmul x86_fp80 %conv1, %conv8, !dbg !327
  %result.sroa.0.0.idx = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !327
  store x86_fp80 %mul, x86_fp80* %result.sroa.0.0.idx, align 16, !dbg !327
  %result.sroa.1.10.raw_cast = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*, !dbg !327
  %result.sroa.1.10.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 10, !dbg !327
  %result.sroa.1.10.idx = getelementptr inbounds [6 x i8]* %result.sroa.1, i64 0, i64 0, !dbg !327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.1.10.raw_idx, i8* %result.sroa.1.10.idx, i64 6, i32 2, i1 false), !dbg !327
  %result.sroa.2.16.idx11 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !327
  store x86_fp80 %mul9, x86_fp80* %result.sroa.2.16.idx11, align 16, !dbg !327
  %result.sroa.3.26.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 26, !dbg !327
  %result.sroa.3.26.idx = getelementptr inbounds [6 x i8]* %result.sroa.3, i64 0, i64 0, !dbg !327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.3.26.raw_idx, i8* %result.sroa.3.26.idx, i64 6, i32 2, i1 false), !dbg !327
  ret void, !dbg !327
}

; Function Attrs: nounwind optsize uwtable
define void @CCTK_Cmplx32Sqrt(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture align 16 %complex_number) #3 {
entry:
  %result.sroa.1 = alloca [6 x i8], align 2
  %result.sroa.3 = alloca [6 x i8], align 2
  call void @llvm.dbg.declare(metadata !{%struct.CCTK_COMPLEX32* %complex_number}, metadata !231), !dbg !328
  call void @llvm.dbg.declare(metadata !305, metadata !236), !dbg !328
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0, !dbg !328
  %0 = load x86_fp80* %Re, align 16, !dbg !328, !tbaa !307
  %cmp = fcmp oeq x86_fp80 %0, 0xK00000000000000000000, !dbg !328
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1, !dbg !328
  %1 = load x86_fp80* %Im, align 16, !dbg !328, !tbaa !307
  %cmp1 = fcmp oeq x86_fp80 %1, 0xK00000000000000000000, !dbg !328
  %or.cond = and i1 %cmp, %cmp1, !dbg !328
  br i1 %or.cond, label %if.end56, label %if.else, !dbg !328

if.else:                                          ; preds = %entry
  %conv = fptrunc x86_fp80 %0 to double, !dbg !329
  %call = call double @fabs(double %conv) #8, !dbg !329
  %conv5 = fpext double %call to x86_fp80, !dbg !329
  call void @llvm.dbg.value(metadata !{x86_fp80 %conv5}, i64 0, metadata !232), !dbg !329
  %conv7 = fptrunc x86_fp80 %1 to double, !dbg !329
  %call8 = call double @fabs(double %conv7) #8, !dbg !329
  %conv9 = fpext double %call8 to x86_fp80, !dbg !329
  call void @llvm.dbg.value(metadata !{x86_fp80 %conv9}, i64 0, metadata !233), !dbg !329
  %cmp10 = fcmp ult double %call, %call8, !dbg !329
  br i1 %cmp10, label %if.else22, label %if.then12, !dbg !329

if.then12:                                        ; preds = %if.else
  %div = fdiv x86_fp80 %conv9, %conv5, !dbg !331
  call void @llvm.dbg.value(metadata !{x86_fp80 %div}, i64 0, metadata !235), !dbg !331
  %call14 = call double @sqrt(double %call) #7, !dbg !331
  %mul15 = fmul x86_fp80 %div, %div, !dbg !331
  %conv16 = fptrunc x86_fp80 %mul15 to double, !dbg !331
  %call17 = call double @sqrt(double %conv16) #7, !dbg !331
  %add = fadd double %call17, 1.000000e+00, !dbg !331
  %mul18 = fmul double %add, 5.000000e-01, !dbg !331
  %call19 = call double @sqrt(double %mul18) #7, !dbg !331
  %mul20 = fmul double %call14, %call19, !dbg !331
  br label %if.end, !dbg !331

if.else22:                                        ; preds = %if.else
  %div23 = fdiv x86_fp80 %conv5, %conv9, !dbg !333
  call void @llvm.dbg.value(metadata !{x86_fp80 %div23}, i64 0, metadata !235), !dbg !333
  %call25 = call double @sqrt(double %call8) #7, !dbg !333
  %mul27 = fmul x86_fp80 %div23, %div23, !dbg !333
  %conv28 = fptrunc x86_fp80 %mul27 to double, !dbg !333
  %call29 = call double @sqrt(double %conv28) #7, !dbg !333
  %conv30 = fpext double %call29 to x86_fp80, !dbg !333
  %add31 = fadd x86_fp80 %div23, %conv30, !dbg !333
  %mul32 = fmul x86_fp80 %add31, 0xK3FFE8000000000000000, !dbg !333
  %conv33 = fptrunc x86_fp80 %mul32 to double, !dbg !333
  %call34 = call double @sqrt(double %conv33) #7, !dbg !333
  %mul35 = fmul double %call25, %call34, !dbg !333
  br label %if.end

if.end:                                           ; preds = %if.else22, %if.then12
  %w.0.in = phi double [ %mul20, %if.then12 ], [ %mul35, %if.else22 ]
  %w.0 = fpext double %w.0.in to x86_fp80, !dbg !331
  %cmp38 = fcmp ult x86_fp80 %0, 0xK00000000000000000000, !dbg !329
  br i1 %cmp38, label %if.else46, label %if.then40, !dbg !329

if.then40:                                        ; preds = %if.end
  %mul43 = fmul x86_fp80 %w.0, 0xK40008000000000000000, !dbg !335
  %div44 = fdiv x86_fp80 %1, %mul43, !dbg !335
  br label %if.end56, !dbg !335

if.else46:                                        ; preds = %if.end
  %cmp48 = fcmp ult x86_fp80 %1, 0xK00000000000000000000, !dbg !337
  br i1 %cmp48, label %cond.false, label %cond.end, !dbg !337

cond.false:                                       ; preds = %if.else46
  %sub = fsub x86_fp80 0xK80000000000000000000, %w.0, !dbg !337
  br label %cond.end, !dbg !337

cond.end:                                         ; preds = %if.else46, %cond.false
  %cond = phi x86_fp80 [ %sub, %cond.false ], [ %w.0, %if.else46 ], !dbg !337
  call void @llvm.dbg.value(metadata !{x86_fp80 %cond}, i64 0, metadata !232), !dbg !337
  %mul51 = fmul x86_fp80 %cond, 0xK40008000000000000000, !dbg !337
  %div52 = fdiv x86_fp80 %1, %mul51, !dbg !337
  br label %if.end56

if.end56:                                         ; preds = %entry, %if.then40, %cond.end
  %result.sroa.2.0 = phi x86_fp80 [ %div44, %if.then40 ], [ %cond, %cond.end ], [ 0xK00000000000000000000, %entry ]
  %result.sroa.0.0 = phi x86_fp80 [ %w.0, %if.then40 ], [ %div52, %cond.end ], [ 0xK00000000000000000000, %entry ]
  %result.sroa.0.0.idx = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !328
  store x86_fp80 %result.sroa.0.0, x86_fp80* %result.sroa.0.0.idx, align 16, !dbg !328
  %result.sroa.1.10.raw_cast = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*, !dbg !328
  %result.sroa.1.10.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 10, !dbg !328
  %result.sroa.1.10.idx = getelementptr inbounds [6 x i8]* %result.sroa.1, i64 0, i64 0, !dbg !328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.1.10.raw_idx, i8* %result.sroa.1.10.idx, i64 6, i32 2, i1 false), !dbg !328
  %result.sroa.2.16.idx57 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !328
  store x86_fp80 %result.sroa.2.0, x86_fp80* %result.sroa.2.16.idx57, align 16, !dbg !328
  %result.sroa.3.26.raw_idx = getelementptr inbounds i8* %result.sroa.1.10.raw_cast, i64 26, !dbg !328
  %result.sroa.3.26.idx = getelementptr inbounds [6 x i8]* %result.sroa.3, i64 0, i64 0, !dbg !328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %result.sroa.3.26.raw_idx, i8* %result.sroa.3.26.idx, i64 6, i32 2, i1 false), !dbg !328
  ret void, !dbg !328
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !237, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !25, metadata !30, metadata !33, metadata !39, metadata !42, metadata !49, metadata !54, metadata !59, metadata !65, metadata !69, metadata !73, metadata !79, metadata !87, metadata !100, metadata !105, metadata !108, metadata !114, metadata !117, metadata !124, metadata !129, metadata !134, metadata !140, metadata !144, metadata !148, metadata !154, metadata !162, metadata !175, metadata !180, metadata !183, metadata !189, metadata !192, metadata !199, metadata !204, metadata !209, metadata !215, metadata !219, metadata !223, metadata !229}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_Complex_c", metadata !"CCTKi_version_main_Complex_c", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_Complex_c, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 21] [def] [CCTKi_version_main_Complex_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx8", metadata !"CCTK_Cmplx8", metadata !"", i32 532, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, <2 x float> (float, float)* @CCTK_Cmplx8, null, null, metadata !21, i32 532} ; [ DW_TAG_subprogram ] [line 532] [def] [CCTK_Cmplx8]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !19, metadata !19}
!14 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_COMPLEX8", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [CCTK_COMPLEX8] [line 52, size 0, align 0, offset 0] [from ]
!15 = metadata !{i32 786451, metadata !16, null, metadata !"", i32 48, i64 64, i64 32, i32 0, i32 0, null, metadata !17, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 64, align 32, offset 0] [from ]
!16 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Types.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!17 = metadata !{metadata !18, metadata !20}
!18 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"Re", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [Re] [line 50, size 32, align 32, offset 0] [from float]
!19 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!20 = metadata !{i32 786445, metadata !16, metadata !15, metadata !"Im", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [Im] [line 51, size 32, align 32, offset 32] [from float]
!21 = metadata !{metadata !22, metadata !23, metadata !24}
!22 = metadata !{i32 786689, metadata !11, metadata !"Re", metadata !5, i32 16777748, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Re] [line 532]
!23 = metadata !{i32 786689, metadata !11, metadata !"Im", metadata !5, i32 33554964, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Im] [line 532]
!24 = metadata !{i32 786688, metadata !11, metadata !"result", metadata !5, i32 532, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 532]
!25 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx8Real", metadata !"CCTK_Cmplx8Real", metadata !"", i32 532, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (<2 x float>)* @CCTK_Cmplx8Real, null, null, metadata !28, i32 532} ; [ DW_TAG_subprogram ] [line 532] [def] [CCTK_Cmplx8Real]
!26 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!27 = metadata !{metadata !19, metadata !14}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786689, metadata !25, metadata !"complex_number", metadata !5, i32 16777748, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 532]
!30 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx8Imag", metadata !"CCTK_Cmplx8Imag", metadata !"", i32 532, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (<2 x float>)* @CCTK_Cmplx8Imag, null, null, metadata !31, i32 532} ; [ DW_TAG_subprogram ] [line 532] [def] [CCTK_Cmplx8Imag]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786689, metadata !30, metadata !"complex_number", metadata !5, i32 16777748, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 532]
!33 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx8Conjg", metadata !"CCTK_Cmplx8Conjg", metadata !"", i32 532, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, <2 x float> (<2 x float>)* @CCTK_Cmplx8Conjg, null, null, metadata !36, i32 532} ; [ DW_TAG_subprogram ] [line 532] [def] [CCTK_Cmplx8Conjg]
!34 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{metadata !14, metadata !14}
!36 = metadata !{metadata !37, metadata !38}
!37 = metadata !{i32 786689, metadata !33, metadata !"complex_number", metadata !5, i32 16777748, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 532]
!38 = metadata !{i32 786688, metadata !33, metadata !"result", metadata !5, i32 532, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 532]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx8Abs", metadata !"CCTK_Cmplx8Abs", metadata !"", i32 532, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (<2 x float>)* @CCTK_Cmplx8Abs, null, null, metadata !40, i32 532} ; [ DW_TAG_subprogram ] [line 532] [def] [CCTK_Cmplx8Abs]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786689, metadata !39, metadata !"complex_number", metadata !5, i32 16777748, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 532]
!42 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx8Add", metadata !"CCTK_Cmplx8Add", metadata !"", i32 532, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, <2 x float> (<2 x float>, <2 x float>)* @CCTK_Cmplx8Add, null, null, metadata !45, i32 532} ; [ DW_TAG_subprogram ] [line 532] [def] [CCTK_Cmplx8Add]
!43 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!44 = metadata !{metadata !14, metadata !14, metadata !14}
!45 = metadata !{metadata !46, metadata !47, metadata !48}
!46 = metadata !{i32 786689, metadata !42, metadata !"a", metadata !5, i32 16777748, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 532]
!47 = metadata !{i32 786689, metadata !42, metadata !"b", metadata !5, i32 33554964, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 532]
!48 = metadata !{i32 786688, metadata !42, metadata !"result", metadata !5, i32 532, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 532]
!49 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx8Sub", metadata !"CCTK_Cmplx8Sub", metadata !"", i32 532, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, <2 x float> (<2 x float>, <2 x float>)* @CCTK_Cmplx8Sub, null, null, metadata !50, i32 532} ; [ DW_TAG_subprogram ] [line 532] [def] [CCTK_Cmplx8Sub]
!50 = metadata !{metadata !51, metadata !52, metadata !53}
!51 = metadata !{i32 786689, metadata !49, metadata !"a", metadata !5, i32 16777748, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 532]
!52 = metadata !{i32 786689, metadata !49, metadata !"b", metadata !5, i32 33554964, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 532]
!53 = metadata !{i32 786688, metadata !49, metadata !"result", metadata !5, i32 532, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 532]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx8Mul", metadata !"CCTK_Cmplx8Mul", metadata !"", i32 532, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, <2 x float> (<2 x float>, <2 x float>)* @CCTK_Cmplx8Mul, null, null, metadata !55, i32 532} ; [ DW_TAG_subprogram ] [line 532] [def] [CCTK_Cmplx8Mul]
!55 = metadata !{metadata !56, metadata !57, metadata !58}
!56 = metadata !{i32 786689, metadata !54, metadata !"a", metadata !5, i32 16777748, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 532]
!57 = metadata !{i32 786689, metadata !54, metadata !"b", metadata !5, i32 33554964, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 532]
!58 = metadata !{i32 786688, metadata !54, metadata !"result", metadata !5, i32 532, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 532]
!59 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx8Div", metadata !"CCTK_Cmplx8Div", metadata !"", i32 532, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, <2 x float> (<2 x float>, <2 x float>)* @CCTK_Cmplx8Div, null, null, metadata !60, i32 532} ; [ DW_TAG_subprogram ] [line 532] [def] [CCTK_Cmplx8Div]
!60 = metadata !{metadata !61, metadata !62, metadata !63, metadata !64}
!61 = metadata !{i32 786689, metadata !59, metadata !"a", metadata !5, i32 16777748, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 532]
!62 = metadata !{i32 786689, metadata !59, metadata !"b", metadata !5, i32 33554964, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 532]
!63 = metadata !{i32 786688, metadata !59, metadata !"factor", metadata !5, i32 532, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [factor] [line 532]
!64 = metadata !{i32 786688, metadata !59, metadata !"result", metadata !5, i32 532, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 532]
!65 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx8Sin", metadata !"CCTK_Cmplx8Sin", metadata !"", i32 532, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, <2 x float> (<2 x float>)* @CCTK_Cmplx8Sin, null, null, metadata !66, i32 532} ; [ DW_TAG_subprogram ] [line 532] [def] [CCTK_Cmplx8Sin]
!66 = metadata !{metadata !67, metadata !68}
!67 = metadata !{i32 786689, metadata !65, metadata !"complex_number", metadata !5, i32 16777748, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 532]
!68 = metadata !{i32 786688, metadata !65, metadata !"result", metadata !5, i32 532, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 532]
!69 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx8Cos", metadata !"CCTK_Cmplx8Cos", metadata !"", i32 532, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, <2 x float> (<2 x float>)* @CCTK_Cmplx8Cos, null, null, metadata !70, i32 532} ; [ DW_TAG_subprogram ] [line 532] [def] [CCTK_Cmplx8Cos]
!70 = metadata !{metadata !71, metadata !72}
!71 = metadata !{i32 786689, metadata !69, metadata !"complex_number", metadata !5, i32 16777748, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 532]
!72 = metadata !{i32 786688, metadata !69, metadata !"result", metadata !5, i32 532, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 532]
!73 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx8Exp", metadata !"CCTK_Cmplx8Exp", metadata !"", i32 532, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, <2 x float> (<2 x float>)* @CCTK_Cmplx8Exp, null, null, metadata !74, i32 532} ; [ DW_TAG_subprogram ] [line 532] [def] [CCTK_Cmplx8Exp]
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78}
!75 = metadata !{i32 786689, metadata !73, metadata !"complex_number", metadata !5, i32 16777748, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 532]
!76 = metadata !{i32 786688, metadata !73, metadata !"rho", metadata !5, i32 532, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rho] [line 532]
!77 = metadata !{i32 786688, metadata !73, metadata !"theta", metadata !5, i32 532, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [theta] [line 532]
!78 = metadata !{i32 786688, metadata !73, metadata !"result", metadata !5, i32 532, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 532]
!79 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx8Sqrt", metadata !"CCTK_Cmplx8Sqrt", metadata !"", i32 532, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, <2 x float> (<2 x float>)* @CCTK_Cmplx8Sqrt, null, null, metadata !80, i32 532} ; [ DW_TAG_subprogram ] [line 532] [def] [CCTK_Cmplx8Sqrt]
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86}
!81 = metadata !{i32 786689, metadata !79, metadata !"complex_number", metadata !5, i32 16777748, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 532]
!82 = metadata !{i32 786688, metadata !79, metadata !"x", metadata !5, i32 532, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 532]
!83 = metadata !{i32 786688, metadata !79, metadata !"y", metadata !5, i32 532, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 532]
!84 = metadata !{i32 786688, metadata !79, metadata !"w", metadata !5, i32 532, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 532]
!85 = metadata !{i32 786688, metadata !79, metadata !"t", metadata !5, i32 532, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 532]
!86 = metadata !{i32 786688, metadata !79, metadata !"result", metadata !5, i32 532, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 532]
!87 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx16", metadata !"CCTK_Cmplx16", metadata !"", i32 536, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, { double, double } (double, double)* @CCTK_Cmplx16, null, null, metadata !96, i32 536} ; [ DW_TAG_subprogram ] [line 536] [def] [CCTK_Cmplx16]
!88 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{metadata !90, metadata !94, metadata !94}
!90 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_COMPLEX16", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [CCTK_COMPLEX16] [line 44, size 0, align 0, offset 0] [from ]
!91 = metadata !{i32 786451, metadata !16, null, metadata !"", i32 40, i64 128, i64 64, i32 0, i32 0, null, metadata !92, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 128, align 64, offset 0] [from ]
!92 = metadata !{metadata !93, metadata !95}
!93 = metadata !{i32 786445, metadata !16, metadata !91, metadata !"Re", i32 42, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_member ] [Re] [line 42, size 64, align 64, offset 0] [from double]
!94 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!95 = metadata !{i32 786445, metadata !16, metadata !91, metadata !"Im", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !94} ; [ DW_TAG_member ] [Im] [line 43, size 64, align 64, offset 64] [from double]
!96 = metadata !{metadata !97, metadata !98, metadata !99}
!97 = metadata !{i32 786689, metadata !87, metadata !"Re", metadata !5, i32 16777752, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Re] [line 536]
!98 = metadata !{i32 786689, metadata !87, metadata !"Im", metadata !5, i32 33554968, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Im] [line 536]
!99 = metadata !{i32 786688, metadata !87, metadata !"result", metadata !5, i32 536, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 536]
!100 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx16Real", metadata !"CCTK_Cmplx16Real", metadata !"", i32 536, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double, double)* @CCTK_Cmplx16Real, null, null, metadata !103, i32 536} ; [ DW_TAG_subprogram ] [line 536] [def] [CCTK_Cmplx16Real]
!101 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!102 = metadata !{metadata !94, metadata !90}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 786689, metadata !100, metadata !"complex_number", metadata !5, i32 16777752, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 536]
!105 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx16Imag", metadata !"CCTK_Cmplx16Imag", metadata !"", i32 536, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double, double)* @CCTK_Cmplx16Imag, null, null, metadata !106, i32 536} ; [ DW_TAG_subprogram ] [line 536] [def] [CCTK_Cmplx16Imag]
!106 = metadata !{metadata !107}
!107 = metadata !{i32 786689, metadata !105, metadata !"complex_number", metadata !5, i32 16777752, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 536]
!108 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx16Conjg", metadata !"CCTK_Cmplx16Conjg", metadata !"", i32 536, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, { double, double } (double, double)* @CCTK_Cmplx16Conjg, null, null, metadata !111, i32 536} ; [ DW_TAG_subprogram ] [line 536] [def] [CCTK_Cmplx16Conjg]
!109 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!110 = metadata !{metadata !90, metadata !90}
!111 = metadata !{metadata !112, metadata !113}
!112 = metadata !{i32 786689, metadata !108, metadata !"complex_number", metadata !5, i32 16777752, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 536]
!113 = metadata !{i32 786688, metadata !108, metadata !"result", metadata !5, i32 536, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 536]
!114 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx16Abs", metadata !"CCTK_Cmplx16Abs", metadata !"", i32 536, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (double, double)* @CCTK_Cmplx16Abs, null, null, metadata !115, i32 536} ; [ DW_TAG_subprogram ] [line 536] [def] [CCTK_Cmplx16Abs]
!115 = metadata !{metadata !116}
!116 = metadata !{i32 786689, metadata !114, metadata !"complex_number", metadata !5, i32 16777752, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 536]
!117 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx16Add", metadata !"CCTK_Cmplx16Add", metadata !"", i32 536, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, { double, double } (double, double, double, double)* @CCTK_Cmplx16Add, null, null, metadata !120, i32 536} ; [ DW_TAG_subprogram ] [line 536] [def] [CCTK_Cmplx16Add]
!118 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!119 = metadata !{metadata !90, metadata !90, metadata !90}
!120 = metadata !{metadata !121, metadata !122, metadata !123}
!121 = metadata !{i32 786689, metadata !117, metadata !"a", metadata !5, i32 16777752, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 536]
!122 = metadata !{i32 786689, metadata !117, metadata !"b", metadata !5, i32 33554968, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 536]
!123 = metadata !{i32 786688, metadata !117, metadata !"result", metadata !5, i32 536, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 536]
!124 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx16Sub", metadata !"CCTK_Cmplx16Sub", metadata !"", i32 536, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, { double, double } (double, double, double, double)* @CCTK_Cmplx16Sub, null, null, metadata !125, i32 536} ; [ DW_TAG_subprogram ] [line 536] [def] [CCTK_Cmplx16Sub]
!125 = metadata !{metadata !126, metadata !127, metadata !128}
!126 = metadata !{i32 786689, metadata !124, metadata !"a", metadata !5, i32 16777752, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 536]
!127 = metadata !{i32 786689, metadata !124, metadata !"b", metadata !5, i32 33554968, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 536]
!128 = metadata !{i32 786688, metadata !124, metadata !"result", metadata !5, i32 536, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 536]
!129 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx16Mul", metadata !"CCTK_Cmplx16Mul", metadata !"", i32 536, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, { double, double } (double, double, double, double)* @CCTK_Cmplx16Mul, null, null, metadata !130, i32 536} ; [ DW_TAG_subprogram ] [line 536] [def] [CCTK_Cmplx16Mul]
!130 = metadata !{metadata !131, metadata !132, metadata !133}
!131 = metadata !{i32 786689, metadata !129, metadata !"a", metadata !5, i32 16777752, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 536]
!132 = metadata !{i32 786689, metadata !129, metadata !"b", metadata !5, i32 33554968, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 536]
!133 = metadata !{i32 786688, metadata !129, metadata !"result", metadata !5, i32 536, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 536]
!134 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx16Div", metadata !"CCTK_Cmplx16Div", metadata !"", i32 536, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, { double, double } (double, double, double, double)* @CCTK_Cmplx16Div, null, null, metadata !135, i32 536} ; [ DW_TAG_subprogram ] [line 536] [def] [CCTK_Cmplx16Div]
!135 = metadata !{metadata !136, metadata !137, metadata !138, metadata !139}
!136 = metadata !{i32 786689, metadata !134, metadata !"a", metadata !5, i32 16777752, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 536]
!137 = metadata !{i32 786689, metadata !134, metadata !"b", metadata !5, i32 33554968, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 536]
!138 = metadata !{i32 786688, metadata !134, metadata !"factor", metadata !5, i32 536, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [factor] [line 536]
!139 = metadata !{i32 786688, metadata !134, metadata !"result", metadata !5, i32 536, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 536]
!140 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx16Sin", metadata !"CCTK_Cmplx16Sin", metadata !"", i32 536, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, { double, double } (double, double)* @CCTK_Cmplx16Sin, null, null, metadata !141, i32 536} ; [ DW_TAG_subprogram ] [line 536] [def] [CCTK_Cmplx16Sin]
!141 = metadata !{metadata !142, metadata !143}
!142 = metadata !{i32 786689, metadata !140, metadata !"complex_number", metadata !5, i32 16777752, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 536]
!143 = metadata !{i32 786688, metadata !140, metadata !"result", metadata !5, i32 536, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 536]
!144 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx16Cos", metadata !"CCTK_Cmplx16Cos", metadata !"", i32 536, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, { double, double } (double, double)* @CCTK_Cmplx16Cos, null, null, metadata !145, i32 536} ; [ DW_TAG_subprogram ] [line 536] [def] [CCTK_Cmplx16Cos]
!145 = metadata !{metadata !146, metadata !147}
!146 = metadata !{i32 786689, metadata !144, metadata !"complex_number", metadata !5, i32 16777752, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 536]
!147 = metadata !{i32 786688, metadata !144, metadata !"result", metadata !5, i32 536, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 536]
!148 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx16Exp", metadata !"CCTK_Cmplx16Exp", metadata !"", i32 536, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, { double, double } (double, double)* @CCTK_Cmplx16Exp, null, null, metadata !149, i32 536} ; [ DW_TAG_subprogram ] [line 536] [def] [CCTK_Cmplx16Exp]
!149 = metadata !{metadata !150, metadata !151, metadata !152, metadata !153}
!150 = metadata !{i32 786689, metadata !148, metadata !"complex_number", metadata !5, i32 16777752, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 536]
!151 = metadata !{i32 786688, metadata !148, metadata !"rho", metadata !5, i32 536, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rho] [line 536]
!152 = metadata !{i32 786688, metadata !148, metadata !"theta", metadata !5, i32 536, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [theta] [line 536]
!153 = metadata !{i32 786688, metadata !148, metadata !"result", metadata !5, i32 536, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 536]
!154 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx16Sqrt", metadata !"CCTK_Cmplx16Sqrt", metadata !"", i32 536, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, { double, double } (double, double)* @CCTK_Cmplx16Sqrt, null, null, metadata !155, i32 536} ; [ DW_TAG_subprogram ] [line 536] [def] [CCTK_Cmplx16Sqrt]
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161}
!156 = metadata !{i32 786689, metadata !154, metadata !"complex_number", metadata !5, i32 16777752, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 536]
!157 = metadata !{i32 786688, metadata !154, metadata !"x", metadata !5, i32 536, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 536]
!158 = metadata !{i32 786688, metadata !154, metadata !"y", metadata !5, i32 536, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 536]
!159 = metadata !{i32 786688, metadata !154, metadata !"w", metadata !5, i32 536, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 536]
!160 = metadata !{i32 786688, metadata !154, metadata !"t", metadata !5, i32 536, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 536]
!161 = metadata !{i32 786688, metadata !154, metadata !"result", metadata !5, i32 536, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 536]
!162 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx32", metadata !"CCTK_Cmplx32", metadata !"", i32 540, metadata !163, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.CCTK_COMPLEX32*, x86_fp80, x86_fp80)* @CCTK_Cmplx32, null, null, metadata !171, i32 540} ; [ DW_TAG_subprogram ] [line 540] [def] [CCTK_Cmplx32]
!163 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{metadata !165, metadata !169, metadata !169}
!165 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_COMPLEX32", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !166} ; [ DW_TAG_typedef ] [CCTK_COMPLEX32] [line 36, size 0, align 0, offset 0] [from ]
!166 = metadata !{i32 786451, metadata !16, null, metadata !"", i32 32, i64 256, i64 128, i32 0, i32 0, null, metadata !167, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 32, size 256, align 128, offset 0] [from ]
!167 = metadata !{metadata !168, metadata !170}
!168 = metadata !{i32 786445, metadata !16, metadata !166, metadata !"Re", i32 34, i64 128, i64 128, i64 0, i32 0, metadata !169} ; [ DW_TAG_member ] [Re] [line 34, size 128, align 128, offset 0] [from long double]
!169 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!170 = metadata !{i32 786445, metadata !16, metadata !166, metadata !"Im", i32 35, i64 128, i64 128, i64 128, i32 0, metadata !169} ; [ DW_TAG_member ] [Im] [line 35, size 128, align 128, offset 128] [from long double]
!171 = metadata !{metadata !172, metadata !173, metadata !174}
!172 = metadata !{i32 786689, metadata !162, metadata !"Re", metadata !5, i32 16777756, metadata !169, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Re] [line 540]
!173 = metadata !{i32 786689, metadata !162, metadata !"Im", metadata !5, i32 33554972, metadata !169, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Im] [line 540]
!174 = metadata !{i32 786688, metadata !162, metadata !"result", metadata !5, i32 540, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 540]
!175 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx32Real", metadata !"CCTK_Cmplx32Real", metadata !"", i32 540, metadata !176, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (%struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Real, null, null, metadata !178, i32 540} ; [ DW_TAG_subprogram ] [line 540] [def] [CCTK_Cmplx32Real]
!176 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!177 = metadata !{metadata !169, metadata !165}
!178 = metadata !{metadata !179}
!179 = metadata !{i32 786689, metadata !175, metadata !"complex_number", metadata !5, i32 16777756, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 540]
!180 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx32Imag", metadata !"CCTK_Cmplx32Imag", metadata !"", i32 540, metadata !176, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (%struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Imag, null, null, metadata !181, i32 540} ; [ DW_TAG_subprogram ] [line 540] [def] [CCTK_Cmplx32Imag]
!181 = metadata !{metadata !182}
!182 = metadata !{i32 786689, metadata !180, metadata !"complex_number", metadata !5, i32 16777756, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 540]
!183 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx32Conjg", metadata !"CCTK_Cmplx32Conjg", metadata !"", i32 540, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Conjg, null, null, metadata !186, i32 540} ; [ DW_TAG_subprogram ] [line 540] [def] [CCTK_Cmplx32Conjg]
!184 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!185 = metadata !{metadata !165, metadata !165}
!186 = metadata !{metadata !187, metadata !188}
!187 = metadata !{i32 786689, metadata !183, metadata !"complex_number", metadata !5, i32 16777756, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 540]
!188 = metadata !{i32 786688, metadata !183, metadata !"result", metadata !5, i32 540, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 540]
!189 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx32Abs", metadata !"CCTK_Cmplx32Abs", metadata !"", i32 540, metadata !176, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, x86_fp80 (%struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Abs, null, null, metadata !190, i32 540} ; [ DW_TAG_subprogram ] [line 540] [def] [CCTK_Cmplx32Abs]
!190 = metadata !{metadata !191}
!191 = metadata !{i32 786689, metadata !189, metadata !"complex_number", metadata !5, i32 16777756, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 540]
!192 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx32Add", metadata !"CCTK_Cmplx32Add", metadata !"", i32 540, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Add, null, null, metadata !195, i32 540} ; [ DW_TAG_subprogram ] [line 540] [def] [CCTK_Cmplx32Add]
!193 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!194 = metadata !{metadata !165, metadata !165, metadata !165}
!195 = metadata !{metadata !196, metadata !197, metadata !198}
!196 = metadata !{i32 786689, metadata !192, metadata !"a", metadata !5, i32 16777756, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 540]
!197 = metadata !{i32 786689, metadata !192, metadata !"b", metadata !5, i32 33554972, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 540]
!198 = metadata !{i32 786688, metadata !192, metadata !"result", metadata !5, i32 540, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 540]
!199 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx32Sub", metadata !"CCTK_Cmplx32Sub", metadata !"", i32 540, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Sub, null, null, metadata !200, i32 540} ; [ DW_TAG_subprogram ] [line 540] [def] [CCTK_Cmplx32Sub]
!200 = metadata !{metadata !201, metadata !202, metadata !203}
!201 = metadata !{i32 786689, metadata !199, metadata !"a", metadata !5, i32 16777756, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 540]
!202 = metadata !{i32 786689, metadata !199, metadata !"b", metadata !5, i32 33554972, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 540]
!203 = metadata !{i32 786688, metadata !199, metadata !"result", metadata !5, i32 540, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 540]
!204 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx32Mul", metadata !"CCTK_Cmplx32Mul", metadata !"", i32 540, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Mul, null, null, metadata !205, i32 540} ; [ DW_TAG_subprogram ] [line 540] [def] [CCTK_Cmplx32Mul]
!205 = metadata !{metadata !206, metadata !207, metadata !208}
!206 = metadata !{i32 786689, metadata !204, metadata !"a", metadata !5, i32 16777756, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 540]
!207 = metadata !{i32 786689, metadata !204, metadata !"b", metadata !5, i32 33554972, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 540]
!208 = metadata !{i32 786688, metadata !204, metadata !"result", metadata !5, i32 540, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 540]
!209 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx32Div", metadata !"CCTK_Cmplx32Div", metadata !"", i32 540, metadata !193, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Div, null, null, metadata !210, i32 540} ; [ DW_TAG_subprogram ] [line 540] [def] [CCTK_Cmplx32Div]
!210 = metadata !{metadata !211, metadata !212, metadata !213, metadata !214}
!211 = metadata !{i32 786689, metadata !209, metadata !"a", metadata !5, i32 16777756, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 540]
!212 = metadata !{i32 786689, metadata !209, metadata !"b", metadata !5, i32 33554972, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 540]
!213 = metadata !{i32 786688, metadata !209, metadata !"factor", metadata !5, i32 540, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [factor] [line 540]
!214 = metadata !{i32 786688, metadata !209, metadata !"result", metadata !5, i32 540, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 540]
!215 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx32Sin", metadata !"CCTK_Cmplx32Sin", metadata !"", i32 540, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Sin, null, null, metadata !216, i32 540} ; [ DW_TAG_subprogram ] [line 540] [def] [CCTK_Cmplx32Sin]
!216 = metadata !{metadata !217, metadata !218}
!217 = metadata !{i32 786689, metadata !215, metadata !"complex_number", metadata !5, i32 16777756, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 540]
!218 = metadata !{i32 786688, metadata !215, metadata !"result", metadata !5, i32 540, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 540]
!219 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx32Cos", metadata !"CCTK_Cmplx32Cos", metadata !"", i32 540, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Cos, null, null, metadata !220, i32 540} ; [ DW_TAG_subprogram ] [line 540] [def] [CCTK_Cmplx32Cos]
!220 = metadata !{metadata !221, metadata !222}
!221 = metadata !{i32 786689, metadata !219, metadata !"complex_number", metadata !5, i32 16777756, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 540]
!222 = metadata !{i32 786688, metadata !219, metadata !"result", metadata !5, i32 540, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 540]
!223 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx32Exp", metadata !"CCTK_Cmplx32Exp", metadata !"", i32 540, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Exp, null, null, metadata !224, i32 540} ; [ DW_TAG_subprogram ] [line 540] [def] [CCTK_Cmplx32Exp]
!224 = metadata !{metadata !225, metadata !226, metadata !227, metadata !228}
!225 = metadata !{i32 786689, metadata !223, metadata !"complex_number", metadata !5, i32 16777756, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 540]
!226 = metadata !{i32 786688, metadata !223, metadata !"rho", metadata !5, i32 540, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rho] [line 540]
!227 = metadata !{i32 786688, metadata !223, metadata !"theta", metadata !5, i32 540, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [theta] [line 540]
!228 = metadata !{i32 786688, metadata !223, metadata !"result", metadata !5, i32 540, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 540]
!229 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Cmplx32Sqrt", metadata !"CCTK_Cmplx32Sqrt", metadata !"", i32 540, metadata !184, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Sqrt, null, null, metadata !230, i32 540} ; [ DW_TAG_subprogram ] [line 540] [def] [CCTK_Cmplx32Sqrt]
!230 = metadata !{metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236}
!231 = metadata !{i32 786689, metadata !229, metadata !"complex_number", metadata !5, i32 16777756, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [complex_number] [line 540]
!232 = metadata !{i32 786688, metadata !229, metadata !"x", metadata !5, i32 540, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 540]
!233 = metadata !{i32 786688, metadata !229, metadata !"y", metadata !5, i32 540, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 540]
!234 = metadata !{i32 786688, metadata !229, metadata !"w", metadata !5, i32 540, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 540]
!235 = metadata !{i32 786688, metadata !229, metadata !"t", metadata !5, i32 540, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 540]
!236 = metadata !{i32 786688, metadata !229, metadata !"result", metadata !5, i32 540, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 540]
!237 = metadata !{metadata !238}
!238 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 19, metadata !8, i32 1, i32 1, null, null}
!239 = metadata !{i32 21, i32 0, metadata !4, null}
!240 = metadata !{i32 532, i32 0, metadata !11, null}
!241 = metadata !{%struct.CCTK_COMPLEX8* undef}
!242 = metadata !{i32 532, i32 0, metadata !25, null}
!243 = metadata !{i32 532, i32 0, metadata !30, null}
!244 = metadata !{i32 532, i32 0, metadata !33, null}
!245 = metadata !{i32 532, i32 0, metadata !39, null}
!246 = metadata !{i32 532, i32 0, metadata !42, null}
!247 = metadata !{i32 532, i32 0, metadata !49, null}
!248 = metadata !{i32 532, i32 0, metadata !54, null}
!249 = metadata !{i32 532, i32 0, metadata !59, null}
!250 = metadata !{i32 532, i32 0, metadata !65, null}
!251 = metadata !{i32 532, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !65, i32 532, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!253 = metadata !{i32 532, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !65, i32 532, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!255 = metadata !{i32 532, i32 0, metadata !69, null}
!256 = metadata !{i32 532, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !69, i32 532, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!258 = metadata !{i32 532, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !69, i32 532, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!260 = metadata !{i32 532, i32 0, metadata !73, null}
!261 = metadata !{i32 532, i32 0, metadata !79, null}
!262 = metadata !{i32 532, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !79, i32 532, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!264 = metadata !{i32 532, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !263, i32 532, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!266 = metadata !{i32 532, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !263, i32 532, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!268 = metadata !{i32 532, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !263, i32 532, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!270 = metadata !{i32 532, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !263, i32 532, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!272 = metadata !{i32 536, i32 0, metadata !87, null}
!273 = metadata !{%struct.CCTK_COMPLEX16* undef}
!274 = metadata !{i32 536, i32 0, metadata !100, null}
!275 = metadata !{i32 536, i32 0, metadata !105, null}
!276 = metadata !{i32 536, i32 0, metadata !108, null}
!277 = metadata !{i32 536, i32 0, metadata !114, null}
!278 = metadata !{i32 536, i32 0, metadata !117, null}
!279 = metadata !{i32 536, i32 0, metadata !124, null}
!280 = metadata !{i32 536, i32 0, metadata !129, null}
!281 = metadata !{i32 536, i32 0, metadata !134, null}
!282 = metadata !{i32 536, i32 0, metadata !140, null}
!283 = metadata !{i32 536, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !140, i32 536, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!285 = metadata !{i32 536, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !140, i32 536, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!287 = metadata !{i32 536, i32 0, metadata !144, null}
!288 = metadata !{i32 536, i32 0, metadata !289, null}
!289 = metadata !{i32 786443, metadata !1, metadata !144, i32 536, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!290 = metadata !{i32 536, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !144, i32 536, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!292 = metadata !{i32 536, i32 0, metadata !148, null}
!293 = metadata !{i32 536, i32 0, metadata !154, null}
!294 = metadata !{i32 536, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !154, i32 536, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!296 = metadata !{i32 536, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !295, i32 536, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!298 = metadata !{i32 536, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !295, i32 536, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!300 = metadata !{i32 536, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !295, i32 536, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!302 = metadata !{i32 536, i32 0, metadata !303, null}
!303 = metadata !{i32 786443, metadata !1, metadata !295, i32 536, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!304 = metadata !{i32 540, i32 0, metadata !162, null}
!305 = metadata !{%struct.CCTK_COMPLEX32* undef}
!306 = metadata !{i32 540, i32 0, metadata !175, null}
!307 = metadata !{metadata !"long double", metadata !308}
!308 = metadata !{metadata !"omnipotent char", metadata !309}
!309 = metadata !{metadata !"Simple C/C++ TBAA"}
!310 = metadata !{i32 540, i32 0, metadata !180, null}
!311 = metadata !{i32 540, i32 0, metadata !183, null}
!312 = metadata !{i32 540, i32 0, metadata !189, null}
!313 = metadata !{i32 540, i32 0, metadata !192, null}
!314 = metadata !{i32 540, i32 0, metadata !199, null}
!315 = metadata !{i32 540, i32 0, metadata !204, null}
!316 = metadata !{i32 540, i32 0, metadata !209, null}
!317 = metadata !{i32 540, i32 0, metadata !215, null}
!318 = metadata !{i32 540, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !215, i32 540, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!320 = metadata !{i32 540, i32 0, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !215, i32 540, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!322 = metadata !{i32 540, i32 0, metadata !219, null}
!323 = metadata !{i32 540, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !219, i32 540, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!325 = metadata !{i32 540, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !219, i32 540, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!327 = metadata !{i32 540, i32 0, metadata !223, null}
!328 = metadata !{i32 540, i32 0, metadata !229, null}
!329 = metadata !{i32 540, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !229, i32 540, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!331 = metadata !{i32 540, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !330, i32 540, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!333 = metadata !{i32 540, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !330, i32 540, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!335 = metadata !{i32 540, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !330, i32 540, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
!337 = metadata !{i32 540, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !330, i32 540, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c]
