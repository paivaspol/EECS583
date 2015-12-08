; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/glaasje.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }

@do_glas.bFirst = internal unnamed_addr global i1 false
@do_glas.bGlas = internal unnamed_addr global i32 0, align 4
@do_glas.d = internal unnamed_addr global [2 x float] zeroinitializer, align 4
@do_glas.pi6 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.pi12 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc9 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc4 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc10 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc3 = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.rc = internal unnamed_addr global float 0.000000e+00, align 4
@do_glas.c6 = internal unnamed_addr global float* null, align 8
@do_glas.c12 = internal unnamed_addr global float* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"Can not have Long Range C6 corrections and GLASMD\00", align 1
@.str1 = private unnamed_addr constant [185 x i8] c"Constants for GLASMD: pi6 = %10g, pi12 = %10g\0A                      d1  = %10g, d2   = %10g\0A                      rc3 = %10g, rc4  = %10g\0A                      rc9 = %10g, rc10 = %10g\0A\00", align 1
@.str2 = private unnamed_addr constant [36 x i8] c"d1 > d2 for GLASMD (check log file)\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"c6\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/glaasje.c\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"c12\00", align 1
@stderr = external global %struct._IO_FILE*
@.str6 = private unnamed_addr constant [12 x i8] c"No glasmd!\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @do_glas(%struct._IO_FILE* nocapture %log, i32 %start, i32 %homenr, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_mdatoms* nocapture %md, i32 %atnr, %struct.t_inputrec* nocapture %ir, float* nocapture %ener) #0 {
entry:
  %typeA = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 11
  %0 = load i32** %typeA, align 8, !tbaa !0
  %.b = load i1* @do_glas.bFirst, align 1
  br i1 %.b, label %if.end61, label %if.then

if.then:                                          ; preds = %entry
  %userreal1 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 76
  %1 = load float* %userreal1, align 4, !tbaa !3
  store float %1, float* @do_glas.pi6, align 4, !tbaa !3
  %userreal2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 77
  %2 = load float* %userreal2, align 4, !tbaa !3
  store float %2, float* @do_glas.pi12, align 4, !tbaa !3
  %userreal3 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 78
  %3 = load float* %userreal3, align 4, !tbaa !3
  store float %3, float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 0), align 4, !tbaa !3
  %userreal4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 79
  %4 = load float* %userreal4, align 4, !tbaa !3
  store float %4, float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 1), align 4, !tbaa !3
  %fabsf242 = tail call float @fabsf(float %1) #4
  %5 = fpext float %fabsf242 to double
  %cmp = fcmp ogt double %5, 1.200000e-38
  br i1 %cmp, label %land.lhs.true, label %land.end.thread

land.lhs.true:                                    ; preds = %if.then
  %fabsf244 = tail call float @fabsf(float %2) #4
  %6 = fpext float %fabsf244 to double
  %cmp4 = fcmp ogt double %6, 1.200000e-38
  br i1 %cmp4, label %land.lhs.true6, label %land.end.thread

land.lhs.true6:                                   ; preds = %land.lhs.true
  %fabsf245 = tail call float @fabsf(float %3) #4
  %7 = fpext float %fabsf245 to double
  %cmp9 = fcmp ogt double %7, 1.200000e-38
  br i1 %cmp9, label %land.end, label %land.end.thread

land.end.thread:                                  ; preds = %land.lhs.true6, %land.lhs.true, %if.then
  store i32 0, i32* @do_glas.bGlas, align 4, !tbaa !4
  br label %if.else

land.end:                                         ; preds = %land.lhs.true6
  %fabsf246 = tail call float @fabsf(float %4) #4
  %8 = fpext float %fabsf246 to double
  %cmp13 = fcmp ogt double %8, 1.200000e-38
  %land.ext = zext i1 %cmp13 to i32
  store i32 %land.ext, i32* @do_glas.bGlas, align 4, !tbaa !4
  br i1 %cmp13, label %if.then16, label %if.else

if.then16:                                        ; preds = %land.end
  %eDispCorr = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 43
  %9 = load i32* %eDispCorr, align 4, !tbaa !4
  %cmp17 = icmp eq i32 %9, 0
  br i1 %cmp17, label %if.end, label %if.then19

if.then19:                                        ; preds = %if.then16
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0)) #5
  %.pre = load float* @do_glas.pi6, align 4, !tbaa !3
  %.pre262 = load float* @do_glas.pi12, align 4, !tbaa !3
  %.pre263 = load float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 0), align 4, !tbaa !3
  %.pre264 = load float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 1), align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.then19
  %10 = phi float [ %4, %if.then16 ], [ %.pre264, %if.then19 ]
  %11 = phi float [ %3, %if.then16 ], [ %.pre263, %if.then19 ]
  %12 = phi float [ %2, %if.then16 ], [ %.pre262, %if.then19 ]
  %13 = phi float [ %1, %if.then16 ], [ %.pre, %if.then19 ]
  %rvdw = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 26
  %14 = load float* %rvdw, align 4, !tbaa !3
  %rlist = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 1
  %15 = load float* %rlist, align 4, !tbaa !3
  %cmp20 = fcmp ogt float %14, %15
  %. = select i1 %cmp20, float %14, float %15
  store float %., float* @do_glas.rc, align 4, !tbaa !3
  %mul = fmul float %., %.
  %mul24 = fmul float %., %mul
  store float %mul24, float* @do_glas.rc3, align 4, !tbaa !3
  %mul25 = fmul float %., %mul24
  store float %mul25, float* @do_glas.rc4, align 4, !tbaa !3
  %mul26 = fmul float %mul24, %mul24
  %mul27 = fmul float %mul24, %mul26
  store float %mul27, float* @do_glas.rc9, align 4, !tbaa !3
  %mul28 = fmul float %., %mul27
  store float %mul28, float* @do_glas.rc10, align 4, !tbaa !3
  %conv29 = fpext float %13 to double
  %conv30 = fpext float %12 to double
  %conv31 = fpext float %11 to double
  %conv32 = fpext float %10 to double
  %conv33 = fpext float %mul24 to double
  %conv34 = fpext float %mul25 to double
  %conv35 = fpext float %mul27 to double
  %conv36 = fpext float %mul28 to double
  %call37 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([185 x i8]* @.str1, i64 0, i64 0), double %conv29, double %conv30, double %conv31, double %conv32, double %conv33, double %conv34, double %conv35, double %conv36) #5
  %16 = load float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 0), align 4, !tbaa !3
  %17 = load float* getelementptr inbounds ([2 x float]* @do_glas.d, i64 0, i64 1), align 4, !tbaa !3
  %cmp38 = fcmp ogt float %16, %17
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([36 x i8]* @.str2, i64 0, i64 0)) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end
  %call42 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), i32 84, i32 %atnr, i32 4) #5
  %18 = bitcast i8* %call42 to float*
  store float* %18, float** @do_glas.c6, align 8, !tbaa !0
  %call43 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), i32 85, i32 %atnr, i32 4) #5
  %19 = bitcast i8* %call43 to float*
  store float* %19, float** @do_glas.c12, align 8, !tbaa !0
  %cmp44254 = icmp sgt i32 %atnr, 0
  br i1 %cmp44254, label %for.body.lr.ph, label %if.end60

for.body.lr.ph:                                   ; preds = %if.end41
  %nbfp = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 65
  %20 = load float** %nbfp, align 8, !tbaa !0
  %21 = load float** @do_glas.c6, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv258 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next259, %for.body ]
  %22 = trunc i64 %indvars.iv258 to i32
  %mul46 = mul nsw i32 %22, %atnr
  %add = add nsw i32 %mul46, %22
  %mul47 = shl nsw i32 %add, 1
  %idxprom = sext i32 %mul47 to i64
  %arrayidx = getelementptr inbounds float* %20, i64 %idxprom
  %23 = load float* %arrayidx, align 4, !tbaa !3
  %arrayidx49 = getelementptr inbounds float* %21, i64 %indvars.iv258
  store float %23, float* %arrayidx49, align 4, !tbaa !3
  %add53243 = or i32 %mul47, 1
  %idxprom54 = sext i32 %add53243 to i64
  %arrayidx56 = getelementptr inbounds float* %20, i64 %idxprom54
  %24 = load float* %arrayidx56, align 4, !tbaa !3
  %arrayidx58 = getelementptr inbounds float* %19, i64 %indvars.iv258
  store float %24, float* %arrayidx58, align 4, !tbaa !3
  %indvars.iv.next259 = add i64 %indvars.iv258, 1
  %lftr.wideiv260 = trunc i64 %indvars.iv.next259 to i32
  %exitcond261 = icmp eq i32 %lftr.wideiv260, %atnr
  br i1 %exitcond261, label %if.end60, label %for.body

if.else:                                          ; preds = %land.end.thread, %land.end
  %25 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %25)
  br label %if.end60

if.end60:                                         ; preds = %if.end41, %for.body, %if.else
  store i1 true, i1* @do_glas.bFirst, align 1
  br label %if.end61

if.end61:                                         ; preds = %entry, %if.end60
  %27 = load i32* @do_glas.bGlas, align 4, !tbaa !4
  %tobool62 = icmp eq i32 %27, 0
  br i1 %tobool62, label %if.end188, label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %if.end61
  %add65 = add nsw i32 %homenr, %start
  %cmp66251 = icmp sgt i32 %homenr, 0
  br i1 %cmp66251, label %for.body68.lr.ph, label %for.end186

for.body68.lr.ph:                                 ; preds = %for.cond64.preheader
  %28 = sext i32 %start to i64
  br label %for.body68

for.body68:                                       ; preds = %for.inc184, %for.body68.lr.ph
  %indvars.iv256 = phi i64 [ %28, %for.body68.lr.ph ], [ %indvars.iv.next257, %for.inc184 ]
  %wd.0253 = phi float [ 0.000000e+00, %for.body68.lr.ph ], [ %wd.2, %for.inc184 ]
  %arrayidx70 = getelementptr inbounds i32* %0, i64 %indvars.iv256
  %29 = load i32* %arrayidx70, align 4, !tbaa !4
  %idxprom71 = sext i32 %29 to i64
  %30 = load float** @do_glas.c6, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds float* %30, i64 %idxprom71
  %31 = load float* %arrayidx72, align 4, !tbaa !3
  %fabsf = tail call float @fabsf(float %31) #4
  %32 = fpext float %fabsf to double
  %cmp75 = fcmp ogt double %32, 1.200000e-38
  br i1 %cmp75, label %if.then83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body68
  %33 = load float** @do_glas.c12, align 8, !tbaa !0
  %arrayidx78 = getelementptr inbounds float* %33, i64 %idxprom71
  %34 = load float* %arrayidx78, align 4, !tbaa !3
  %fabsf241 = tail call float @fabsf(float %34) #4
  %35 = fpext float %fabsf241 to double
  %cmp81 = fcmp ogt double %35, 1.200000e-38
  br i1 %cmp81, label %if.then83, label %for.inc184

if.then83:                                        ; preds = %lor.lhs.false, %for.body68
  %arrayidx86 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv256, i64 2
  %36 = load float* %arrayidx86, align 4, !tbaa !3
  %37 = load float* @do_glas.pi6, align 4, !tbaa !3
  %mul89 = fmul float %31, %37
  %conv90 = fpext float %mul89 to double
  %call91 = tail call double @sqrt(double %conv90) #5
  %mul92 = fmul double %call91, 0x400921FB54442D18
  %conv93 = fptrunc double %mul92 to float
  %38 = load float** @do_glas.c12, align 8, !tbaa !0
  %arrayidx95 = getelementptr inbounds float* %38, i64 %idxprom71
  %39 = load float* %arrayidx95, align 4, !tbaa !3
  %40 = load float* @do_glas.pi12, align 4, !tbaa !3
  %mul96 = fmul float %39, %40
  %conv97 = fpext float %mul96 to double
  %call98 = tail call double @sqrt(double %conv97) #5
  %mul99 = fmul double %call98, 0x400921FB54442D18
  %conv100 = fptrunc double %mul99 to float
  %conv139 = fpext float %conv100 to double
  %conv149 = fpext float %conv93 to double
  %arrayidx177 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv256, i64 2
  br label %for.body104

for.body104:                                      ; preds = %if.end173, %if.then83
  %indvars.iv = phi i64 [ 0, %if.then83 ], [ %indvars.iv.next, %if.end173 ]
  %wd.1250 = phi float [ %wd.0253, %if.then83 ], [ %add174, %if.end173 ]
  %sign.0248 = phi float [ 1.000000e+00, %if.then83 ], [ %sub179, %if.end173 ]
  %arrayidx106 = getelementptr inbounds [2 x float]* @do_glas.d, i64 0, i64 %indvars.iv
  %41 = load float* %arrayidx106, align 4, !tbaa !3
  %sub = fsub float %36, %41
  %mul107 = fmul float %sign.0248, %sub
  %42 = load float* @do_glas.rc, align 4, !tbaa !3
  %cmp108 = fcmp ult float %mul107, %42
  br i1 %cmp108, label %if.else138, label %if.then110

if.then110:                                       ; preds = %for.body104
  %mul111 = fmul float %mul107, %mul107
  %mul112 = fmul float %mul107, %mul111
  %mul113 = fmul float %mul112, %mul112
  %mul114 = fmul float %mul112, %mul113
  %conv116 = fpext float %mul114 to double
  %mul117 = fmul double %conv116, 4.500000e+01
  %div = fdiv double %conv139, %mul117
  %conv119 = fpext float %mul112 to double
  %mul120 = fmul double %conv119, 6.000000e+00
  %div121 = fdiv double %conv149, %mul120
  %sub122 = fsub double %div, %div121
  %mul124 = fmul float %mul107, %mul112
  %mul125 = fmul float %mul107, %mul114
  %conv126 = fpext float %sign.0248 to double
  %conv128 = fpext float %mul125 to double
  %mul129 = fmul double %conv128, 5.000000e+00
  %div130 = fdiv double %conv139, %mul129
  %conv132 = fpext float %mul124 to double
  %mul133 = fmul double %conv132, 2.000000e+00
  %div134 = fdiv double %conv149, %mul133
  %sub135 = fsub double %div130, %div134
  %mul136 = fmul double %conv126, %sub135
  br label %if.end173

if.else138:                                       ; preds = %for.body104
  %43 = load float* @do_glas.rc9, align 4, !tbaa !3
  %conv140 = fpext float %43 to double
  %mul141 = fmul double %conv140, 9.000000e+00
  %div142 = fdiv double 2.000000e+00, %mul141
  %conv143 = fpext float %mul107 to double
  %44 = load float* @do_glas.rc10, align 4, !tbaa !3
  %conv144 = fpext float %44 to double
  %mul145 = fmul double %conv144, 5.000000e+00
  %div146 = fdiv double %conv143, %mul145
  %sub147 = fsub double %div142, %div146
  %mul148 = fmul double %conv139, %sub147
  %45 = load float* @do_glas.rc3, align 4, !tbaa !3
  %conv150 = fpext float %45 to double
  %mul151 = fmul double %conv150, 3.000000e+00
  %div152 = fdiv double 2.000000e+00, %mul151
  %46 = load float* @do_glas.rc4, align 4, !tbaa !3
  %conv154 = fpext float %46 to double
  %mul155 = fmul double %conv154, 2.000000e+00
  %div156 = fdiv double %conv143, %mul155
  %sub157 = fsub double %div152, %div156
  %mul158 = fmul double %conv149, %sub157
  %sub159 = fsub double %mul148, %mul158
  %conv161 = fpext float %sign.0248 to double
  %div165 = fdiv double %conv139, %mul145
  %div169 = fdiv double %conv149, %mul155
  %sub170 = fsub double %div165, %div169
  %mul171 = fmul double %conv161, %sub170
  br label %if.end173

if.end173:                                        ; preds = %if.else138, %if.then110
  %fz.0.in = phi double [ %mul136, %if.then110 ], [ %mul171, %if.else138 ]
  %wdd.0.in = phi double [ %sub122, %if.then110 ], [ %sub159, %if.else138 ]
  %wdd.0 = fptrunc double %wdd.0.in to float
  %fz.0 = fptrunc double %fz.0.in to float
  %add174 = fadd float %wd.1250, %wdd.0
  %47 = load float* %arrayidx177, align 4, !tbaa !3
  %add178 = fadd float %fz.0, %47
  store float %add178, float* %arrayidx177, align 4, !tbaa !3
  %sub179 = fsub float -0.000000e+00, %sign.0248
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 2
  br i1 %exitcond, label %for.inc184, label %for.body104

for.inc184:                                       ; preds = %if.end173, %lor.lhs.false
  %wd.2 = phi float [ %wd.0253, %lor.lhs.false ], [ %add174, %if.end173 ]
  %indvars.iv.next257 = add i64 %indvars.iv256, 1
  %48 = trunc i64 %indvars.iv.next257 to i32
  %cmp66 = icmp slt i32 %48, %add65
  br i1 %cmp66, label %for.body68, label %for.end186

for.end186:                                       ; preds = %for.inc184, %for.cond64.preheader
  %wd.0.lcssa = phi float [ 0.000000e+00, %for.cond64.preheader ], [ %wd.2, %for.inc184 ]
  %arrayidx187 = getelementptr inbounds float* %ener, i64 15
  store float %wd.0.lcssa, float* %arrayidx187, align 4, !tbaa !3
  br label %if.end188

if.end188:                                        ; preds = %if.end61, %for.end186
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
