; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/new_fe_sp.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.complex = type { double, double }
%struct.melfb_t = type { float, i32, i32, i32, float, float, float**, float**, float*, i32*, i32 }
%struct.fe_t = type { float, i32, i32, float, i32, i32, i32, i32, float, i16*, i32, %struct.melfb_t*, i32, i16, double* }
%struct.param_t = type { float, i32, float, i32, i32, i32, i32, float, float, float, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [58 x i8] c"memory alloc failed in fe_build_mel_filters()\0A...exiting\0A\00", align 1
@.str1 = private unnamed_addr constant [58 x i8] c"memory alloc failed in fe_compute_melcosine()\0A...exiting\0A\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"memory alloc failed in fe_frame_to_fea()\0A...exiting\0A\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"MEL SCALE IS CURRENTLY THE ONLY IMPLEMENTATION!\0A\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"memory alloc failed in fe_spec_magnitude()\0A...exiting\0A\00", align 1
@fe_fft.s = internal unnamed_addr global i32 0, align 4
@fe_fft.k = internal unnamed_addr global i32 0, align 4
@fe_fft.lgN = internal unnamed_addr global i32 0, align 4
@fe_fft.w = internal unnamed_addr global %struct.complex* null, align 8
@fe_fft.from = internal unnamed_addr global %struct.complex* null, align 8
@fe_fft.to = internal unnamed_addr global %struct.complex* null, align 8
@fe_fft.wwf2.0 = internal unnamed_addr global double 0.000000e+00
@fe_fft.wwf2.1 = internal unnamed_addr global double 0.000000e+00
@fe_fft.buffer = internal unnamed_addr global %struct.complex* null, align 8
@fe_fft.exch = internal unnamed_addr global %struct.complex* null, align 8
@fe_fft.wEnd = internal unnamed_addr global %struct.complex* null, align 8
@fe_fft.div = internal unnamed_addr global double 0.000000e+00, align 8
@fe_fft.x = internal unnamed_addr global double 0.000000e+00, align 8
@.str5 = private unnamed_addr constant [37 x i8] c"fft: N must be a power of 2 (is %d)\0A\00", align 1
@.str6 = private unnamed_addr constant [45 x i8] c"fft: invert must be either +1 or -1 (is %d)\0A\00", align 1
@.str7 = private unnamed_addr constant [21 x i8] c"fe_create_2d failed\0A\00", align 1
@.str8 = private unnamed_addr constant [48 x i8] c"Please define the number of MEL filters needed\0A\00", align 1
@.str9 = private unnamed_addr constant [41 x i8] c"Modify include/new_fe.h and new_fe_sp.c\0A\00", align 1
@.str10 = private unnamed_addr constant [47 x i8] c"Please define the upper filt frequency needed\0A\00", align 1
@.str11 = private unnamed_addr constant [47 x i8] c"Please define the lower filt frequency needed\0A\00", align 1
@.str12 = private unnamed_addr constant [24 x i8] c"Current FE Parameters:\0A\00", align 1
@.str13 = private unnamed_addr constant [32 x i8] c"\09Sampling Rate:             %f\0A\00", align 1
@.str14 = private unnamed_addr constant [32 x i8] c"\09Frame Size:                %d\0A\00", align 1
@.str15 = private unnamed_addr constant [32 x i8] c"\09Frame Shift:               %d\0A\00", align 1
@.str16 = private unnamed_addr constant [32 x i8] c"\09FFT Size:                  %d\0A\00", align 1
@.str17 = private unnamed_addr constant [32 x i8] c"\09Number of Overflow Samps:  %d\0A\00", align 1
@.str18 = private unnamed_addr constant [32 x i8] c"\09Start Utt Status:          %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @fe_build_melfilters(%struct.melfb_t* nocapture %MEL_FB) #0 {
entry:
  %num_filters = getelementptr inbounds %struct.melfb_t* %MEL_FB, i64 0, i32 2
  %0 = load i32* %num_filters, align 4, !tbaa !0
  %fft_size = getelementptr inbounds %struct.melfb_t* %MEL_FB, i64 0, i32 3
  %1 = load i32* %fft_size, align 4, !tbaa !0
  %call = tail call i8** @fe_create_2d(i32 %0, i32 %1, i32 4) #4
  %2 = bitcast i8** %call to float**
  %filter_coeffs = getelementptr inbounds %struct.melfb_t* %MEL_FB, i64 0, i32 6
  store float** %2, float*** %filter_coeffs, align 8, !tbaa !3
  %3 = load i32* %num_filters, align 4, !tbaa !0
  %conv = sext i32 %3 to i64
  %call2 = tail call noalias i8* @calloc(i64 %conv, i64 4) #5
  %4 = bitcast i8* %call2 to float*
  %left_apex = getelementptr inbounds %struct.melfb_t* %MEL_FB, i64 0, i32 8
  store float* %4, float** %left_apex, align 8, !tbaa !3
  %call5 = tail call noalias i8* @calloc(i64 %conv, i64 4) #5
  %5 = bitcast i8* %call5 to i32*
  %width = getelementptr inbounds %struct.melfb_t* %MEL_FB, i64 0, i32 9
  store i32* %5, i32** %width, align 8, !tbaa !3
  %doublewide = getelementptr inbounds %struct.melfb_t* %MEL_FB, i64 0, i32 10
  %6 = load i32* %doublewide, align 4, !tbaa !0
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = add nsw i32 %3, 4
  %conv8 = sext i32 %add to i64
  %call9 = tail call noalias i8* @calloc(i64 %conv8, i64 4) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %add11 = add nsw i32 %3, 2
  %conv12 = sext i32 %add11 to i64
  %call13 = tail call noalias i8* @calloc(i64 %conv12, i64 4) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %filt_edge.0.in = phi i8* [ %call9, %if.then ], [ %call13, %if.else ]
  %filt_edge.0 = bitcast i8* %filt_edge.0.in to float*
  %cmp15 = icmp eq i8** %call, null
  %cmp18 = icmp eq i8* %call2, null
  %or.cond342 = or i1 %cmp15, %cmp18
  br i1 %or.cond342, label %if.then27, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end
  %cmp22 = icmp eq i8* %call5, null
  %cmp25 = icmp eq i8* %filt_edge.0.in, null
  %or.cond = or i1 %cmp22, %cmp25
  br i1 %or.cond, label %if.then27, label %if.end29

if.then27:                                        ; preds = %lor.lhs.false20, %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %7)
  tail call void @exit(i32 0) #6
  unreachable

if.end29:                                         ; preds = %lor.lhs.false20
  %sampling_rate = getelementptr inbounds %struct.melfb_t* %MEL_FB, i64 0, i32 0
  %9 = load float* %sampling_rate, align 4, !tbaa !4
  %10 = load i32* %fft_size, align 4, !tbaa !0
  %conv31 = sitofp i32 %10 to float
  %div = fdiv float %9, %conv31
  %upper_filt_freq = getelementptr inbounds %struct.melfb_t* %MEL_FB, i64 0, i32 5
  %11 = load float* %upper_filt_freq, align 4, !tbaa !4
  %conv.i = fpext float %11 to double
  %div.i = fdiv double %conv.i, 7.000000e+02
  %add.i = fadd double %div.i, 1.000000e+00
  %call.i = tail call double @log10(double %add.i) #5
  %conv1.i = fptrunc double %call.i to float
  %conv3.i = fmul float %conv1.i, 2.595000e+03
  %lower_filt_freq = getelementptr inbounds %struct.melfb_t* %MEL_FB, i64 0, i32 4
  %12 = load float* %lower_filt_freq, align 4, !tbaa !4
  %conv.i292 = fpext float %12 to double
  %div.i293 = fdiv double %conv.i292, 7.000000e+02
  %add.i294 = fadd double %div.i293, 1.000000e+00
  %call.i295 = tail call double @log10(double %add.i294) #5
  %conv1.i296 = fptrunc double %call.i295 to float
  %conv3.i297 = fmul float %conv1.i296, 2.595000e+03
  %sub = fsub float %conv3.i, %conv3.i297
  %13 = load i32* %num_filters, align 4, !tbaa !0
  %add35 = add nsw i32 %13, 1
  %conv36 = sitofp i32 %add35 to float
  %div37 = fdiv float %sub, %conv36
  %14 = load i32* %doublewide, align 4, !tbaa !0
  %cmp39 = icmp eq i32 %14, 1
  br i1 %cmp39, label %for.cond.preheader, label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %if.end29
  %cmp53328 = icmp slt i32 %add35, 0
  br i1 %cmp53328, label %for.cond66.preheader, label %for.body55

for.cond.preheader:                               ; preds = %if.end29
  %add43323 = add nsw i32 %13, 3
  %cmp44324 = icmp slt i32 %add43323, 0
  br i1 %cmp44324, label %for.cond66.preheader, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv338 = phi i64 [ %indvars.iv.next339, %for.body ], [ 0, %for.cond.preheader ]
  %15 = trunc i64 %indvars.iv338 to i32
  %conv46 = sitofp i32 %15 to float
  %mul = fmul float %div37, %conv46
  %add47 = fadd float %conv3.i297, %mul
  %conv.i298 = fpext float %add47 to double
  %div.i299 = fdiv double %conv.i298, 2.595000e+03
  %call.i300 = tail call double @pow(double 1.000000e+01, double %div.i299) #5
  %conv1.i301 = fptrunc double %call.i300 to float
  %conv2.i = fpext float %conv1.i301 to double
  %sub.i = fadd double %conv2.i, -1.000000e+00
  %mul.i = fmul double %sub.i, 7.000000e+02
  %conv3.i302 = fptrunc double %mul.i to float
  %arrayidx = getelementptr inbounds float* %filt_edge.0, i64 %indvars.iv338
  store float %conv3.i302, float* %arrayidx, align 4, !tbaa !4
  %indvars.iv.next339 = add i64 %indvars.iv338, 1
  %16 = load i32* %num_filters, align 4, !tbaa !0
  %add43 = add nsw i32 %16, 3
  %cmp44 = icmp slt i32 %15, %add43
  br i1 %cmp44, label %for.body, label %for.cond66.preheader

for.cond66.preheader:                             ; preds = %for.cond50.preheader, %for.body55, %for.cond.preheader, %for.body
  %17 = phi i32 [ %13, %for.cond.preheader ], [ %16, %for.body ], [ %13, %for.cond50.preheader ], [ %19, %for.body55 ]
  %cmp68319 = icmp sgt i32 %17, 0
  br i1 %cmp68319, label %for.body70, label %for.end193

for.body55:                                       ; preds = %for.cond50.preheader, %for.body55
  %indvars.iv340 = phi i64 [ %indvars.iv.next341, %for.body55 ], [ 0, %for.cond50.preheader ]
  %18 = trunc i64 %indvars.iv340 to i32
  %conv56 = sitofp i32 %18 to float
  %mul57 = fmul float %div37, %conv56
  %add58 = fadd float %conv3.i297, %mul57
  %conv.i303 = fpext float %add58 to double
  %div.i304 = fdiv double %conv.i303, 2.595000e+03
  %call.i305 = tail call double @pow(double 1.000000e+01, double %div.i304) #5
  %conv1.i306 = fptrunc double %call.i305 to float
  %conv2.i307 = fpext float %conv1.i306 to double
  %sub.i308 = fadd double %conv2.i307, -1.000000e+00
  %mul.i309 = fmul double %sub.i308, 7.000000e+02
  %conv3.i310 = fptrunc double %mul.i309 to float
  %arrayidx61 = getelementptr inbounds float* %filt_edge.0, i64 %indvars.iv340
  store float %conv3.i310, float* %arrayidx61, align 4, !tbaa !4
  %indvars.iv.next341 = add i64 %indvars.iv340, 1
  %19 = load i32* %num_filters, align 4, !tbaa !0
  %add52 = add nsw i32 %19, 1
  %cmp53 = icmp slt i32 %18, %add52
  br i1 %cmp53, label %for.body55, label %for.cond66.preheader

for.body70:                                       ; preds = %for.cond66.preheader, %while.end187.for.body70_crit_edge
  %indvars.iv332 = phi i64 [ %indvars.iv.next333, %while.end187.for.body70_crit_edge ], [ 0, %for.cond66.preheader ]
  %rightslope.0322 = phi float [ %rightslope.1, %while.end187.for.body70_crit_edge ], [ undef, %for.cond66.preheader ]
  %leftslope.0321 = phi float [ %leftslope.1, %while.end187.for.body70_crit_edge ], [ undef, %for.cond66.preheader ]
  %whichfilt.0320 = phi i32 [ %inc192, %while.end187.for.body70_crit_edge ], [ 0, %for.cond66.preheader ]
  %20 = load i32* %doublewide, align 4, !tbaa !0
  %cmp72 = icmp eq i32 %20, 1
  %arrayidx76 = getelementptr inbounds float* %filt_edge.0, i64 %indvars.iv332
  %21 = load float* %arrayidx76, align 4, !tbaa !4
  %div77 = fdiv float %21, %div
  %conv78 = fpext float %div77 to double
  %add79 = fadd double %conv78, 5.000000e-01
  %conv80 = fptosi double %add79 to i32
  %conv81 = sitofp i32 %conv80 to float
  %mul82 = fmul float %div, %conv81
  br i1 %cmp72, label %if.then74, label %if.else101

if.then74:                                        ; preds = %for.body70
  %add83 = add nsw i32 %whichfilt.0320, 2
  %add92 = add nsw i32 %whichfilt.0320, 4
  br label %if.end128

if.else101:                                       ; preds = %for.body70
  %22 = add nsw i64 %indvars.iv332, 1
  %23 = add nsw i64 %indvars.iv332, 2
  %24 = trunc i64 %23 to i32
  %25 = trunc i64 %22 to i32
  br label %if.end128

if.end128:                                        ; preds = %if.else101, %if.then74
  %idxprom93.pn.in = phi i32 [ %add92, %if.then74 ], [ %24, %if.else101 ]
  %idxprom84.pn.in = phi i32 [ %add83, %if.then74 ], [ %25, %if.else101 ]
  %idxprom84.pn = sext i32 %idxprom84.pn.in to i64
  %idxprom93.pn = sext i32 %idxprom93.pn.in to i64
  %.pn291.in = getelementptr inbounds float* %filt_edge.0, i64 %idxprom84.pn
  %.pn.in = getelementptr inbounds float* %filt_edge.0, i64 %idxprom93.pn
  %.pn291 = load float* %.pn291.in, align 4
  %.pn = load float* %.pn.in, align 4
  %conv90.pn.in.in.in.in = fdiv float %.pn291, %div
  %conv99.pn.in.in.in.in = fdiv float %.pn, %div
  %conv90.pn.in.in.in = fpext float %conv90.pn.in.in.in.in to double
  %conv99.pn.in.in.in = fpext float %conv99.pn.in.in.in.in to double
  %conv90.pn.in.in = fadd double %conv90.pn.in.in.in, 5.000000e-01
  %conv99.pn.in.in = fadd double %conv99.pn.in.in.in, 5.000000e-01
  %conv90.pn.in = fptosi double %conv90.pn.in.in to i32
  %conv99.pn.in = fptosi double %conv99.pn.in.in to i32
  %conv90.pn = sitofp i32 %conv90.pn.in to float
  %conv99.pn = sitofp i32 %conv99.pn.in to float
  %centerfr.0 = fmul float %div, %conv90.pn
  %rightfr.0 = fmul float %div, %conv99.pn
  %26 = load float** %left_apex, align 8, !tbaa !3
  %arrayidx131 = getelementptr inbounds float* %26, i64 %indvars.iv332
  store float %mul82, float* %arrayidx131, align 4, !tbaa !4
  %sub132 = fsub float %rightfr.0, %mul82
  %div133 = fdiv float 2.000000e+00, %sub132
  %cmp134 = fcmp une float %centerfr.0, %mul82
  br i1 %cmp134, label %if.then136, label %if.end139

if.then136:                                       ; preds = %if.end128
  %sub137 = fsub float %centerfr.0, %mul82
  %div138 = fdiv float %div133, %sub137
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.end128
  %leftslope.1 = phi float [ %div138, %if.then136 ], [ %leftslope.0321, %if.end128 ]
  %cmp140 = fcmp une float %centerfr.0, %rightfr.0
  br i1 %cmp140, label %if.then142, label %if.end145

if.then142:                                       ; preds = %if.end139
  %sub143 = fsub float %centerfr.0, %rightfr.0
  %div144 = fdiv float %div133, %sub143
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %if.end139
  %rightslope.1 = phi float [ %div144, %if.then142 ], [ %rightslope.0322, %if.end139 ]
  %div146 = fdiv float %mul82, %div
  %conv147 = fpext float %div146 to double
  %add148 = fadd double %conv147, 5.000000e-01
  %conv149 = fptosi double %add148 to i32
  %conv150 = sitofp i32 %conv149 to float
  %mul151 = fmul float %div, %conv150
  %cmp152311 = fcmp olt float %mul151, %centerfr.0
  br i1 %cmp152311, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end145
  %27 = load float*** %filter_coeffs, align 8, !tbaa !3
  %arrayidx159 = getelementptr inbounds float** %27, i64 %indvars.iv332
  %28 = load float** %arrayidx159, align 8, !tbaa !3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %indvars.iv = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next, %while.body ]
  %i.2313 = phi i32 [ 0, %while.body.lr.ph ], [ %inc162, %while.body ]
  %freq.0312 = phi float [ %mul151, %while.body.lr.ph ], [ %add161, %while.body ]
  %sub154 = fsub float %freq.0312, %mul82
  %mul155 = fmul float %leftslope.1, %sub154
  %arrayidx160 = getelementptr inbounds float* %28, i64 %indvars.iv
  store float %mul155, float* %arrayidx160, align 4, !tbaa !4
  %add161 = fadd float %div, %freq.0312
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc162 = add nsw i32 %i.2313, 1
  %cmp152 = fcmp olt float %add161, %centerfr.0
  br i1 %cmp152, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.end145
  %i.2.lcssa = phi i32 [ 0, %if.end145 ], [ %inc162, %while.body ]
  %freq.0.lcssa = phi float [ %mul151, %if.end145 ], [ %add161, %while.body ]
  %cmp163 = fcmp oeq float %freq.0.lcssa, %centerfr.0
  br i1 %cmp163, label %if.then165, label %while.cond174.preheader

if.then165:                                       ; preds = %while.end
  %idxprom166 = sext i32 %i.2.lcssa to i64
  %29 = load float*** %filter_coeffs, align 8, !tbaa !3
  %arrayidx169 = getelementptr inbounds float** %29, i64 %indvars.iv332
  %30 = load float** %arrayidx169, align 8, !tbaa !3
  %arrayidx170 = getelementptr inbounds float* %30, i64 %idxprom166
  store float %div133, float* %arrayidx170, align 4, !tbaa !4
  %add171 = fadd float %div, %freq.0.lcssa
  %inc172 = add nsw i32 %i.2.lcssa, 1
  br label %while.cond174.preheader

while.cond174.preheader:                          ; preds = %if.then165, %while.end
  %freq.1.ph = phi float [ %freq.0.lcssa, %while.end ], [ %add171, %if.then165 ]
  %i.3.ph = phi i32 [ %i.2.lcssa, %while.end ], [ %inc172, %if.then165 ]
  %cmp175315 = fcmp olt float %freq.1.ph, %rightfr.0
  br i1 %cmp175315, label %while.body177.lr.ph, label %while.end187

while.body177.lr.ph:                              ; preds = %while.cond174.preheader
  %31 = load float*** %filter_coeffs, align 8, !tbaa !3
  %arrayidx183 = getelementptr inbounds float** %31, i64 %indvars.iv332
  %32 = load float** %arrayidx183, align 8, !tbaa !3
  %33 = sext i32 %i.3.ph to i64
  br label %while.body177

while.body177:                                    ; preds = %while.body177.lr.ph, %while.body177
  %indvars.iv330 = phi i64 [ %33, %while.body177.lr.ph ], [ %indvars.iv.next331, %while.body177 ]
  %i.3317 = phi i32 [ %i.3.ph, %while.body177.lr.ph ], [ %inc186, %while.body177 ]
  %freq.1316 = phi float [ %freq.1.ph, %while.body177.lr.ph ], [ %add185, %while.body177 ]
  %sub178 = fsub float %freq.1316, %rightfr.0
  %mul179 = fmul float %rightslope.1, %sub178
  %arrayidx184 = getelementptr inbounds float* %32, i64 %indvars.iv330
  store float %mul179, float* %arrayidx184, align 4, !tbaa !4
  %add185 = fadd float %div, %freq.1316
  %indvars.iv.next331 = add i64 %indvars.iv330, 1
  %inc186 = add nsw i32 %i.3317, 1
  %cmp175 = fcmp olt float %add185, %rightfr.0
  br i1 %cmp175, label %while.body177, label %while.end187

while.end187:                                     ; preds = %while.body177, %while.cond174.preheader
  %i.3.lcssa = phi i32 [ %i.3.ph, %while.cond174.preheader ], [ %inc186, %while.body177 ]
  %34 = load i32** %width, align 8, !tbaa !3
  %arrayidx190 = getelementptr inbounds i32* %34, i64 %indvars.iv332
  store i32 %i.3.lcssa, i32* %arrayidx190, align 4, !tbaa !0
  %indvars.iv.next333 = add i64 %indvars.iv332, 1
  %35 = load i32* %num_filters, align 4, !tbaa !0
  %36 = trunc i64 %indvars.iv.next333 to i32
  %cmp68 = icmp slt i32 %36, %35
  br i1 %cmp68, label %while.end187.for.body70_crit_edge, label %for.end193

while.end187.for.body70_crit_edge:                ; preds = %while.end187
  %inc192 = add nsw i32 %whichfilt.0320, 1
  br label %for.body70

for.end193:                                       ; preds = %while.end187, %for.cond66.preheader
  tail call void @free(i8* %filt_edge.0.in) #5
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define noalias i8** @fe_create_2d(i32 %d1, i32 %d2, i32 %elem_size) #0 {
entry:
  %mul = mul nsw i32 %d2, %d1
  %conv = sext i32 %mul to i64
  %conv1 = sext i32 %elem_size to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 %conv1) #5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str7, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %0)
  br label %return

if.end:                                           ; preds = %entry
  %conv4 = sext i32 %d1 to i64
  %call5 = tail call noalias i8* @calloc(i64 %conv4, i64 8) #5
  %2 = bitcast i8* %call5 to i8**
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp1127 = icmp sgt i32 %d1, 0
  br i1 %cmp1127, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = sext i32 %d2 to i64
  br label %for.body

if.then8:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str7, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %4)
  tail call void @free(i8* %call) #5
  br label %return

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv30 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next31, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %6 = trunc i64 %indvars.iv to i32
  %mul13 = mul nsw i32 %6, %elem_size
  %idxprom = sext i32 %mul13 to i64
  %arrayidx = getelementptr inbounds i8* %call, i64 %idxprom
  %arrayidx15 = getelementptr inbounds i8** %2, i64 %indvars.iv30
  store i8* %arrayidx, i8** %arrayidx15, align 8, !tbaa !3
  %indvars.iv.next31 = add i64 %indvars.iv30, 1
  %indvars.iv.next = add i64 %indvars.iv, %3
  %lftr.wideiv = trunc i64 %indvars.iv.next31 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %d1
  br i1 %exitcond, label %return, label %for.body

return:                                           ; preds = %for.cond.preheader, %for.body, %if.then8, %if.then
  %retval.0 = phi i8** [ null, %if.then ], [ null, %if.then8 ], [ %2, %for.body ], [ %2, %for.cond.preheader ]
  ret i8** %retval.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define float @fe_mel(float %x) #0 {
entry:
  %conv = fpext float %x to double
  %div = fdiv double %conv, 7.000000e+02
  %add = fadd double %div, 1.000000e+00
  %call = tail call double @log10(double %add) #5
  %conv1 = fptrunc double %call to float
  %conv3 = fmul float %conv1, 2.595000e+03
  ret float %conv3
}

; Function Attrs: nounwind optsize uwtable
define float @fe_melinv(float %x) #0 {
entry:
  %conv = fpext float %x to double
  %div = fdiv double %conv, 2.595000e+03
  %call = tail call double @pow(double 1.000000e+01, double %div) #5
  %conv1 = fptrunc double %call to float
  %conv2 = fpext float %conv1 to double
  %sub = fadd double %conv2, -1.000000e+00
  %mul = fmul double %sub, 7.000000e+02
  %conv3 = fptrunc double %mul to float
  ret float %conv3
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @fe_compute_melcosine(%struct.melfb_t* nocapture %MEL_FB) #0 {
entry:
  %num_filters = getelementptr inbounds %struct.melfb_t* %MEL_FB, i64 0, i32 2
  %0 = load i32* %num_filters, align 4, !tbaa !0
  %conv = sitofp i32 %0 to double
  %mul = fmul double %conv, 2.000000e+00
  %num_cepstra = getelementptr inbounds %struct.melfb_t* %MEL_FB, i64 0, i32 1
  %1 = load i32* %num_cepstra, align 4, !tbaa !0
  %call = tail call i8** @fe_create_2d(i32 %1, i32 %0, i32 4) #4
  %2 = bitcast i8** %call to float**
  %mel_cosine = getelementptr inbounds %struct.melfb_t* %MEL_FB, i64 0, i32 7
  store float** %2, float*** %mel_cosine, align 8, !tbaa !3
  %cmp = icmp eq i8** %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %3 = load i32* %num_cepstra, align 4, !tbaa !0
  %cmp538 = icmp sgt i32 %3, 0
  br i1 %cmp538, label %for.body.lr.ph, label %for.end23

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %.pre = load i32* %num_filters, align 4, !tbaa !0
  br label %for.body

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %4)
  tail call void @exit(i32 0) #6
  unreachable

for.body:                                         ; preds = %for.body.lr.ph, %for.inc21
  %6 = phi i32 [ %3, %for.body.lr.ph ], [ %14, %for.inc21 ]
  %7 = phi i32 [ %.pre, %for.body.lr.ph ], [ %15, %for.inc21 ]
  %indvars.iv40 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next41, %for.inc21 ]
  %8 = trunc i64 %indvars.iv40 to i32
  %conv7 = sitofp i32 %8 to double
  %mul8 = fmul double %conv7, 0x401921FB54442D18
  %div = fdiv double %mul8, %mul
  %cmp1136 = icmp sgt i32 %7, 0
  br i1 %cmp1136, label %for.body13, label %for.inc21

for.body13:                                       ; preds = %for.body, %for.body13
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body13 ], [ 0, %for.body ]
  %9 = trunc i64 %indvars.iv to i32
  %conv14 = sitofp i32 %9 to double
  %add = fadd double %conv14, 5.000000e-01
  %mul15 = fmul double %div, %add
  %call16 = tail call double @cos(double %mul15) #5
  %conv17 = fptrunc double %call16 to float
  %10 = load float*** %mel_cosine, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds float** %10, i64 %indvars.iv40
  %11 = load float** %arrayidx, align 8, !tbaa !3
  %arrayidx20 = getelementptr inbounds float* %11, i64 %indvars.iv
  store float %conv17, float* %arrayidx20, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = load i32* %num_filters, align 4, !tbaa !0
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp11 = icmp slt i32 %13, %12
  br i1 %cmp11, label %for.body13, label %for.cond9.for.inc21_crit_edge

for.cond9.for.inc21_crit_edge:                    ; preds = %for.body13
  %.pre42 = load i32* %num_cepstra, align 4, !tbaa !0
  br label %for.inc21

for.inc21:                                        ; preds = %for.cond9.for.inc21_crit_edge, %for.body
  %14 = phi i32 [ %.pre42, %for.cond9.for.inc21_crit_edge ], [ %6, %for.body ]
  %15 = phi i32 [ %12, %for.cond9.for.inc21_crit_edge ], [ %7, %for.body ]
  %indvars.iv.next41 = add i64 %indvars.iv40, 1
  %16 = trunc i64 %indvars.iv.next41 to i32
  %cmp5 = icmp slt i32 %16, %14
  br i1 %cmp5, label %for.body, label %for.end23

for.end23:                                        ; preds = %for.inc21, %for.cond.preheader
  ret i32 0
}

; Function Attrs: nounwind optsize
declare double @cos(double) #1

; Function Attrs: nounwind optsize
declare double @log10(double) #1

; Function Attrs: nounwind optsize
declare double @pow(double, double) #1

; Function Attrs: nounwind optsize uwtable
define void @fe_pre_emphasis(i16* nocapture %in, double* nocapture %out, i32 %len, float %factor, i16 signext %prior) #0 {
entry:
  %0 = load i16* %in, align 2, !tbaa !5
  %conv = sitofp i16 %0 to double
  %conv1 = fpext float %factor to double
  %conv2 = sitofp i16 %prior to double
  %mul = fmul double %conv1, %conv2
  %sub = fsub double %conv, %mul
  store double %sub, double* %out, align 8, !tbaa !6
  %cmp24 = icmp sgt i32 %len, 1
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i16 [ %2, %for.body ], [ %0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %arrayidx5 = getelementptr inbounds i16* %in, i64 %indvars.iv
  %2 = load i16* %arrayidx5, align 2, !tbaa !5
  %conv6 = sitofp i16 %2 to double
  %conv11 = sitofp i16 %1 to double
  %mul12 = fmul double %conv1, %conv11
  %sub13 = fsub double %conv6, %mul12
  %arrayidx15 = getelementptr inbounds double* %out, i64 %indvars.iv
  store double %sub13, double* %arrayidx15, align 8, !tbaa !6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @fe_short_to_double(i16* nocapture %in, double* nocapture %out, i32 %len) #0 {
entry:
  %cmp6 = icmp sgt i32 %len, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i16* %in, i64 %indvars.iv
  %0 = load i16* %arrayidx, align 2, !tbaa !5
  %conv = sitofp i16 %0 to double
  %arrayidx2 = getelementptr inbounds double* %out, i64 %indvars.iv
  store double %conv, double* %arrayidx2, align 8, !tbaa !6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @fe_create_hamming(double* nocapture %in, i32 %in_len) #0 {
entry:
  %cmp = icmp sgt i32 %in_len, 1
  br i1 %cmp, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %entry
  %conv2 = sitofp i32 %in_len to double
  %sub = fadd double %conv2, -1.000000e+00
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %0 = trunc i64 %indvars.iv to i32
  %conv = sitofp i32 %0 to double
  %mul = fmul double %conv, 0x401921FB54442D18
  %div = fdiv double %mul, %sub
  %call = tail call double @cos(double %div) #5
  %mul3 = fmul double %call, 4.600000e-01
  %sub4 = fsub double 5.400000e-01, %mul3
  %arrayidx = getelementptr inbounds double* %in, i64 %indvars.iv
  store double %sub4, double* %arrayidx, align 8, !tbaa !6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %in_len
  br i1 %exitcond, label %if.end, label %for.body

if.end:                                           ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @fe_hamming_window(double* nocapture %in, double* nocapture %window, i32 %in_len) #0 {
entry:
  %cmp = icmp sgt i32 %in_len, 1
  br i1 %cmp, label %for.body, label %if.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %window, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !6
  %arrayidx3 = getelementptr inbounds double* %in, i64 %indvars.iv
  %1 = load double* %arrayidx3, align 8, !tbaa !6
  %mul = fmul double %0, %1
  store double %mul, double* %arrayidx3, align 8, !tbaa !6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %in_len
  br i1 %exitcond, label %if.end, label %for.body

if.end:                                           ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @fe_frame_to_fea(%struct.fe_t* nocapture %FE, double* nocapture %in, double* nocapture %fea) #0 {
entry:
  %FB_TYPE = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 6
  %0 = load i32* %FB_TYPE, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %FFT_SIZE = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 5
  %1 = load i32* %FFT_SIZE, align 4, !tbaa !0
  %conv = sext i32 %1 to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #5
  %2 = bitcast i8* %call to double*
  %MEL_FB = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 11
  %3 = load %struct.melfb_t** %MEL_FB, align 8, !tbaa !3
  %num_filters = getelementptr inbounds %struct.melfb_t* %3, i64 0, i32 2
  %4 = load i32* %num_filters, align 4, !tbaa !0
  %conv1 = sext i32 %4 to i64
  %call2 = tail call noalias i8* @calloc(i64 %conv1, i64 8) #5
  %5 = bitcast i8* %call2 to double*
  %cmp3 = icmp eq i8* %call, null
  %cmp5 = icmp eq i8* %call2, null
  %or.cond = or i1 %cmp3, %cmp5
  br i1 %or.cond, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %6)
  tail call void @exit(i32 0) #6
  unreachable

if.end:                                           ; preds = %if.then
  %FRAME_SIZE = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 4
  %8 = load i32* %FRAME_SIZE, align 4, !tbaa !0
  tail call void @fe_spec_magnitude(double* %in, i32 %8, double* %2, i32 %1) #4
  tail call void @fe_mel_spec(%struct.fe_t* %FE, double* %2, double* %5) #4
  tail call void @fe_mel_cep(%struct.fe_t* %FE, double* %5, double* %fea) #4
  tail call void @free(i8* %call) #5
  tail call void @free(i8* %call2) #5
  ret void

if.else:                                          ; preds = %entry
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %9)
  tail call void @exit(i32 0) #6
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define void @fe_spec_magnitude(double* nocapture %data, i32 %data_len, double* nocapture %spec, i32 %fftsize) #0 {
entry:
  %conv = sext i32 %fftsize to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 16) #5
  %0 = bitcast i8* %call to %struct.complex*
  %call2 = tail call noalias i8* @calloc(i64 %conv, i64 16) #5
  %1 = bitcast i8* %call2 to %struct.complex*
  %cmp = icmp eq i8* %call, null
  %cmp4 = icmp eq i8* %call2, null
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %2)
  tail call void @exit(i32 0) #6
  unreachable

if.end:                                           ; preds = %entry
  %cmp7 = icmp sgt i32 %data_len, %fftsize
  br i1 %cmp7, label %for.cond.preheader, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %if.end
  %cmp34147 = icmp sgt i32 %data_len, 0
  br i1 %cmp34147, label %for.body36, label %for.cond48.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp10142 = icmp sgt i32 %fftsize, 0
  br i1 %cmp10142, label %for.body, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.body, %for.cond.preheader
  %j.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %fftsize, %for.body ]
  %cmp17139 = icmp slt i32 %j.0.lcssa, %data_len
  br i1 %cmp17139, label %for.body19.lr.ph, label %if.end61

for.body19.lr.ph:                                 ; preds = %for.cond16.preheader
  %4 = sext i32 %j.0.lcssa to i64
  %5 = sub i32 %data_len, %j.0.lcssa
  br label %for.body19

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv154 = phi i64 [ %indvars.iv.next155, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds double* %data, i64 %indvars.iv154
  %6 = load double* %arrayidx, align 8, !tbaa !6
  %r = getelementptr inbounds %struct.complex* %1, i64 %indvars.iv154, i32 0
  store double %6, double* %r, align 8, !tbaa !6
  %i = getelementptr inbounds %struct.complex* %1, i64 %indvars.iv154, i32 1
  store double 0.000000e+00, double* %i, align 8, !tbaa !6
  %indvars.iv.next155 = add i64 %indvars.iv154, 1
  %lftr.wideiv156 = trunc i64 %indvars.iv.next155 to i32
  %exitcond157 = icmp eq i32 %lftr.wideiv156, %fftsize
  br i1 %exitcond157, label %for.cond16.preheader, label %for.body

for.body19:                                       ; preds = %for.body19, %for.body19.lr.ph
  %indvars.iv152 = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next153, %for.body19 ]
  %indvars.iv150 = phi i64 [ %4, %for.body19.lr.ph ], [ %indvars.iv.next151, %for.body19 ]
  %arrayidx21 = getelementptr inbounds double* %data, i64 %indvars.iv150
  %7 = load double* %arrayidx21, align 8, !tbaa !6
  %r24 = getelementptr inbounds %struct.complex* %1, i64 %indvars.iv152, i32 0
  %8 = load double* %r24, align 8, !tbaa !6
  %add = fadd double %7, %8
  store double %add, double* %r24, align 8, !tbaa !6
  %i27 = getelementptr inbounds %struct.complex* %1, i64 %indvars.iv152, i32 1
  %9 = load double* %i27, align 8, !tbaa !6
  %add28 = fadd double %9, 0.000000e+00
  store double %add28, double* %i27, align 8, !tbaa !6
  %indvars.iv.next153 = add i64 %indvars.iv152, 1
  %indvars.iv.next151 = add i64 %indvars.iv150, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next153 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %if.end61, label %for.body19

for.cond48.preheader:                             ; preds = %for.body36, %for.cond33.preheader
  %j.2.lcssa = phi i32 [ 0, %for.cond33.preheader ], [ %data_len, %for.body36 ]
  %cmp49145 = icmp slt i32 %j.2.lcssa, %fftsize
  br i1 %cmp49145, label %for.body51.lr.ph, label %if.end61

for.body51.lr.ph:                                 ; preds = %for.cond48.preheader
  %10 = sext i32 %j.2.lcssa to i64
  br label %for.body51

for.body36:                                       ; preds = %for.cond33.preheader, %for.body36
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %for.body36 ], [ 0, %for.cond33.preheader ]
  %arrayidx38 = getelementptr inbounds double* %data, i64 %indvars.iv162
  %11 = load double* %arrayidx38, align 8, !tbaa !6
  %r41 = getelementptr inbounds %struct.complex* %1, i64 %indvars.iv162, i32 0
  store double %11, double* %r41, align 8, !tbaa !6
  %i44 = getelementptr inbounds %struct.complex* %1, i64 %indvars.iv162, i32 1
  store double 0.000000e+00, double* %i44, align 8, !tbaa !6
  %indvars.iv.next163 = add i64 %indvars.iv162, 1
  %lftr.wideiv164 = trunc i64 %indvars.iv.next163 to i32
  %exitcond165 = icmp eq i32 %lftr.wideiv164, %data_len
  br i1 %exitcond165, label %for.cond48.preheader, label %for.body36

for.body51:                                       ; preds = %for.body51, %for.body51.lr.ph
  %indvars.iv158 = phi i64 [ %10, %for.body51.lr.ph ], [ %indvars.iv.next159, %for.body51 ]
  %r54 = getelementptr inbounds %struct.complex* %1, i64 %indvars.iv158, i32 0
  %indvars.iv.next159 = add i64 %indvars.iv158, 1
  %lftr.wideiv160 = trunc i64 %indvars.iv.next159 to i32
  %exitcond161 = icmp eq i32 %lftr.wideiv160, %fftsize
  %12 = bitcast double* %r54 to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 16, i32 8, i1 false)
  br i1 %exitcond161, label %if.end61, label %for.body51

if.end61:                                         ; preds = %for.cond48.preheader, %for.body51, %for.cond16.preheader, %for.body19
  %call62 = tail call i32 @fe_fft(%struct.complex* %1, %struct.complex* %0, i32 %fftsize, i32 1) #4
  %div = sdiv i32 %fftsize, 2
  %cmp64137 = icmp slt i32 %fftsize, -1
  br i1 %cmp64137, label %for.end85, label %for.body66

for.body66:                                       ; preds = %if.end61, %for.body66
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body66 ], [ 0, %if.end61 ]
  %r69 = getelementptr inbounds %struct.complex* %0, i64 %indvars.iv, i32 0
  %13 = load double* %r69, align 8, !tbaa !6
  %mul = fmul double %13, %13
  %i75 = getelementptr inbounds %struct.complex* %0, i64 %indvars.iv, i32 1
  %14 = load double* %i75, align 8, !tbaa !6
  %mul79 = fmul double %14, %14
  %add80 = fadd double %mul, %mul79
  %arrayidx82 = getelementptr inbounds double* %spec, i64 %indvars.iv
  store double %add80, double* %arrayidx82, align 8, !tbaa !6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %15 = trunc i64 %indvars.iv to i32
  %cmp64 = icmp slt i32 %15, %div
  br i1 %cmp64, label %for.body66, label %for.end85

for.end85:                                        ; preds = %for.body66, %if.end61
  tail call void @free(i8* %call) #5
  tail call void @free(i8* %call2) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @fe_mel_spec(%struct.fe_t* nocapture %FE, double* nocapture %spec, double* nocapture %mfspec) #0 {
entry:
  %SAMPLING_RATE = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 0
  %0 = load float* %SAMPLING_RATE, align 4, !tbaa !4
  %FFT_SIZE = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 5
  %1 = load i32* %FFT_SIZE, align 4, !tbaa !0
  %conv = sitofp i32 %1 to float
  %div = fdiv float %0, %conv
  %MEL_FB = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 11
  %2 = load %struct.melfb_t** %MEL_FB, align 8, !tbaa !3
  %num_filters49 = getelementptr inbounds %struct.melfb_t* %2, i64 0, i32 2
  %3 = load i32* %num_filters49, align 4, !tbaa !0
  %cmp50 = icmp sgt i32 %3, 0
  br i1 %cmp50, label %for.body.lr.ph, label %for.end29

for.body.lr.ph:                                   ; preds = %entry
  %width45 = getelementptr inbounds %struct.melfb_t* %2, i64 0, i32 9
  %4 = load i32** %width45, align 8, !tbaa !3
  %left_apex.phi.trans.insert = getelementptr inbounds %struct.melfb_t* %2, i64 0, i32 8
  %.pre = load float** %left_apex.phi.trans.insert, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc27
  %indvars.iv53 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next54, %for.inc27 ]
  %arrayidx = getelementptr inbounds float* %.pre, i64 %indvars.iv53
  %5 = load float* %arrayidx, align 4, !tbaa !4
  %arrayidx7 = getelementptr inbounds double* %mfspec, i64 %indvars.iv53
  store double 0.000000e+00, double* %arrayidx7, align 8, !tbaa !6
  %arrayidx1146 = getelementptr inbounds i32* %4, i64 %indvars.iv53
  %6 = load i32* %arrayidx1146, align 4, !tbaa !0
  %cmp1247 = icmp sgt i32 %6, 0
  br i1 %cmp1247, label %for.body14.lr.ph, label %for.inc27

for.body14.lr.ph:                                 ; preds = %for.body
  %div3 = fdiv float %5, %div
  %conv4 = fpext float %div3 to double
  %add = fadd double %conv4, 5.000000e-01
  %conv5 = fptosi double %add to i32
  %7 = sext i32 %conv5 to i64
  %filter_coeffs.phi.trans.insert = getelementptr inbounds %struct.melfb_t* %2, i64 0, i32 6
  %.pre56 = load float*** %filter_coeffs.phi.trans.insert, align 8, !tbaa !3
  %arrayidx18.phi.trans.insert = getelementptr inbounds float** %.pre56, i64 %indvars.iv53
  %.pre57 = load float** %arrayidx18.phi.trans.insert, align 8, !tbaa !3
  br label %for.body14

for.body14:                                       ; preds = %for.body14.lr.ph, %for.body14
  %8 = phi double [ 0.000000e+00, %for.body14.lr.ph ], [ %add26, %for.body14 ]
  %indvars.iv = phi i64 [ 0, %for.body14.lr.ph ], [ %indvars.iv.next, %for.body14 ]
  %arrayidx19 = getelementptr inbounds float* %.pre57, i64 %indvars.iv
  %9 = load float* %arrayidx19, align 4, !tbaa !4
  %conv20 = fpext float %9 to double
  %10 = add nsw i64 %indvars.iv, %7
  %arrayidx23 = getelementptr inbounds double* %spec, i64 %10
  %11 = load double* %arrayidx23, align 8, !tbaa !6
  %mul = fmul double %conv20, %11
  %add26 = fadd double %8, %mul
  store double %add26, double* %arrayidx7, align 8, !tbaa !6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %12, %6
  br i1 %cmp12, label %for.body14, label %for.inc27

for.inc27:                                        ; preds = %for.body14, %for.body
  %indvars.iv.next54 = add i64 %indvars.iv53, 1
  %13 = trunc i64 %indvars.iv.next54 to i32
  %cmp = icmp slt i32 %13, %3
  br i1 %cmp, label %for.body, label %for.end29

for.end29:                                        ; preds = %for.inc27, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @fe_mel_cep(%struct.fe_t* nocapture %FE, double* nocapture %mfspec, double* nocapture %mfcep) #0 {
entry:
  %MEL_FB = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 11
  %0 = load %struct.melfb_t** %MEL_FB, align 8, !tbaa !3
  %num_filters = getelementptr inbounds %struct.melfb_t* %0, i64 0, i32 2
  %1 = load i32* %num_filters, align 4, !tbaa !0
  %cmp74 = icmp sgt i32 %1, 0
  br i1 %cmp74, label %for.body, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.inc, %entry
  %2 = phi i32 [ %1, %entry ], [ %8, %for.inc ]
  %3 = phi %struct.melfb_t* [ %0, %entry ], [ %7, %for.inc ]
  %NUM_CEPSTRA = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 7
  %4 = load i32* %NUM_CEPSTRA, align 4, !tbaa !0
  %cmp1171 = icmp sgt i32 %4, 0
  br i1 %cmp1171, label %for.body12.lr.ph, label %for.end44

for.body12.lr.ph:                                 ; preds = %for.cond10.preheader
  %cmp1869 = icmp sgt i32 %2, 0
  %conv38 = sitofp i32 %1 to float
  %conv39 = fpext float %conv38 to double
  br label %for.body12

for.body:                                         ; preds = %entry, %for.inc
  %5 = phi %struct.melfb_t* [ %7, %for.inc ], [ %0, %entry ]
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %mfspec, i64 %indvars.iv79
  %6 = load double* %arrayidx, align 8, !tbaa !6
  %cmp3 = fcmp ogt double %6, 0.000000e+00
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %call = tail call double @log(double %6) #5
  %.pre = load %struct.melfb_t** %MEL_FB, align 8, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %7 = phi %struct.melfb_t* [ %.pre, %if.then ], [ %5, %for.body ]
  %storemerge = phi double [ %call, %if.then ], [ -1.000000e+05, %for.body ]
  store double %storemerge, double* %arrayidx, align 8, !tbaa !6
  %indvars.iv.next80 = add i64 %indvars.iv79, 1
  %num_filters2 = getelementptr inbounds %struct.melfb_t* %7, i64 0, i32 2
  %8 = load i32* %num_filters2, align 4, !tbaa !0
  %9 = trunc i64 %indvars.iv.next80 to i32
  %cmp = icmp slt i32 %9, %8
  br i1 %cmp, label %for.body, label %for.cond10.preheader

for.body12:                                       ; preds = %for.body12.lr.ph, %for.end37
  %indvars.iv76 = phi i64 [ 0, %for.body12.lr.ph ], [ %indvars.iv.next77, %for.end37 ]
  %arrayidx14 = getelementptr inbounds double* %mfcep, i64 %indvars.iv76
  store double 0.000000e+00, double* %arrayidx14, align 8, !tbaa !6
  br i1 %cmp1869, label %for.body19.lr.ph, label %for.end37

for.body19.lr.ph:                                 ; preds = %for.body12
  %mel_cosine.phi.trans.insert = getelementptr inbounds %struct.melfb_t* %3, i64 0, i32 7
  %.pre81 = load float*** %mel_cosine.phi.trans.insert, align 8, !tbaa !3
  %arrayidx29.phi.trans.insert = getelementptr inbounds float** %.pre81, i64 %indvars.iv76
  %.pre82 = load float** %arrayidx29.phi.trans.insert, align 8, !tbaa !3
  br label %for.body19

for.body19:                                       ; preds = %for.body19.lr.ph, %for.body19
  %10 = phi double [ 0.000000e+00, %for.body19.lr.ph ], [ %add, %for.body19 ]
  %indvars.iv = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next, %for.body19 ]
  %11 = trunc i64 %indvars.iv to i32
  %cmp20 = icmp eq i32 %11, 0
  %. = select i1 %cmp20, double 5.000000e-01, double 1.000000e+00
  %arrayidx25 = getelementptr inbounds double* %mfspec, i64 %indvars.iv
  %12 = load double* %arrayidx25, align 8, !tbaa !6
  %mul = fmul double %., %12
  %arrayidx30 = getelementptr inbounds float* %.pre82, i64 %indvars.iv
  %13 = load float* %arrayidx30, align 4, !tbaa !4
  %conv31 = fpext float %13 to double
  %mul32 = fmul double %mul, %conv31
  %add = fadd double %10, %mul32
  store double %add, double* %arrayidx14, align 8, !tbaa !6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %14 = trunc i64 %indvars.iv.next to i32
  %cmp18 = icmp slt i32 %14, %2
  br i1 %cmp18, label %for.body19, label %for.end37

for.end37:                                        ; preds = %for.body19, %for.body12
  %15 = phi double [ 0.000000e+00, %for.body12 ], [ %add, %for.body19 ]
  %div = fdiv double %15, %conv39
  store double %div, double* %arrayidx14, align 8, !tbaa !6
  %indvars.iv.next77 = add i64 %indvars.iv76, 1
  %16 = trunc i64 %indvars.iv.next77 to i32
  %cmp11 = icmp slt i32 %16, %4
  br i1 %cmp11, label %for.body12, label %for.end44

for.end44:                                        ; preds = %for.end37, %for.cond10.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @fe_fft(%struct.complex* nocapture %in, %struct.complex* %out, i32 %N, i32 %invert) #0 {
entry:
  store i32 %N, i32* @fe_fft.k, align 4, !tbaa !0
  store i32 0, i32* @fe_fft.lgN, align 4, !tbaa !0
  %cmp183 = icmp sgt i32 %N, 1
  br i1 %cmp183, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %0 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %1 = phi i32 [ %div, %for.inc ], [ %N, %entry ]
  %rem164 = and i32 %1, 1
  %cmp1 = icmp eq i32 %rem164, 0
  br i1 %cmp1, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([37 x i8]* @.str5, i64 0, i64 0), i32 %N) #5
  br label %return

for.inc:                                          ; preds = %for.body
  %div = sdiv i32 %1, 2
  store i32 %div, i32* @fe_fft.k, align 4, !tbaa !0
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @fe_fft.lgN, align 4, !tbaa !0
  %cmp = icmp sgt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  %phitmp = and i32 %inc, 1
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %3 = phi i32 [ %phitmp, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  switch i32 %invert, label %if.else7 [
    i32 1, label %if.end10
    i32 -1, label %if.then6
  ]

if.then6:                                         ; preds = %for.end
  %conv = sitofp i32 %N to double
  br label %if.end10

if.else7:                                         ; preds = %for.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([45 x i8]* @.str6, i64 0, i64 0), i32 %invert) #5
  br label %return

if.end10:                                         ; preds = %for.end, %if.then6
  %storemerge158 = phi double [ %conv, %if.then6 ], [ 1.000000e+00, %for.end ]
  store double %storemerge158, double* @fe_fft.div, align 8, !tbaa !6
  %conv11 = sext i32 %N to i64
  %call12 = tail call noalias i8* @calloc(i64 %conv11, i64 16) #5
  %5 = bitcast i8* %call12 to %struct.complex*
  store %struct.complex* %5, %struct.complex** @fe_fft.buffer, align 8, !tbaa !3
  %cmp14 = icmp eq i32 %3, 0
  br i1 %cmp14, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.end10
  store %struct.complex* %out, %struct.complex** @fe_fft.from, align 8, !tbaa !3
  store %struct.complex* %5, %struct.complex** @fe_fft.to, align 8, !tbaa !3
  br label %for.cond19.preheader

if.else17:                                        ; preds = %if.end10
  store %struct.complex* %out, %struct.complex** @fe_fft.to, align 8, !tbaa !3
  store %struct.complex* %5, %struct.complex** @fe_fft.from, align 8, !tbaa !3
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %if.else17, %if.then16
  %6 = phi %struct.complex* [ %5, %if.else17 ], [ %out, %if.then16 ]
  store i32 0, i32* @fe_fft.s, align 4, !tbaa !0
  %cmp20180 = icmp sgt i32 %N, 0
  br i1 %cmp20180, label %for.body22, label %for.end35

for.body22:                                       ; preds = %for.cond19.preheader, %for.body22.for.body22_crit_edge
  %7 = phi double [ %.pre, %for.body22.for.body22_crit_edge ], [ %storemerge158, %for.cond19.preheader ]
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %for.body22.for.body22_crit_edge ], [ 0, %for.cond19.preheader ]
  %storemerge160181 = phi i64 [ %phitmp189, %for.body22.for.body22_crit_edge ], [ 0, %for.cond19.preheader ]
  %r = getelementptr inbounds %struct.complex* %in, i64 %storemerge160181, i32 0
  %8 = load double* %r, align 8, !tbaa !6
  %div23 = fdiv double %8, %7
  %r26 = getelementptr inbounds %struct.complex* %6, i64 %storemerge160181, i32 0
  store double %div23, double* %r26, align 8, !tbaa !6
  %i = getelementptr inbounds %struct.complex* %in, i64 %indvars.iv187, i32 1
  %9 = load double* %i, align 8, !tbaa !6
  %10 = load double* @fe_fft.div, align 8, !tbaa !6
  %div29 = fdiv double %9, %10
  %i32 = getelementptr inbounds %struct.complex* %6, i64 %indvars.iv187, i32 1
  store double %div29, double* %i32, align 8, !tbaa !6
  %indvars.iv.next188 = add i64 %indvars.iv187, 1
  %11 = trunc i64 %indvars.iv.next188 to i32
  %cmp20 = icmp slt i32 %11, %N
  br i1 %cmp20, label %for.body22.for.body22_crit_edge, label %for.cond19.for.end35_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  %.pre = load double* @fe_fft.div, align 8, !tbaa !6
  %sext = shl i64 %indvars.iv.next188, 32
  %phitmp189 = ashr exact i64 %sext, 32
  br label %for.body22

for.cond19.for.end35_crit_edge:                   ; preds = %for.body22
  %smax = select i1 %cmp183, i32 %N, i32 1
  store i32 %smax, i32* @fe_fft.s, align 4, !tbaa !0
  br label %for.end35

for.end35:                                        ; preds = %for.cond19.for.end35_crit_edge, %for.cond19.preheader
  %div36 = sdiv i32 %N, 2
  %conv37 = sext i32 %div36 to i64
  %call38 = tail call noalias i8* @calloc(i64 %conv37, i64 16) #5
  %12 = bitcast i8* %call38 to %struct.complex*
  store %struct.complex* %12, %struct.complex** @fe_fft.w, align 8, !tbaa !3
  store i32 0, i32* @fe_fft.k, align 4, !tbaa !0
  br i1 %cmp183, label %for.body43.lr.ph, label %for.end59.thread

for.end59.thread:                                 ; preds = %for.end35
  %arrayidx62190 = getelementptr inbounds %struct.complex* %12, i64 %conv37
  store %struct.complex* %arrayidx62190, %struct.complex** @fe_fft.wEnd, align 8, !tbaa !3
  store i32 %div36, i32* @fe_fft.k, align 4, !tbaa !0
  br label %for.end125

for.body43.lr.ph:                                 ; preds = %for.end35
  %conv44 = sitofp i32 %invert to double
  %mul = fmul double %conv44, 0xC01921FB54442D18
  %conv47 = sitofp i32 %N to double
  br label %for.body43

for.body43:                                       ; preds = %for.body43.lr.ph, %for.body43
  %storemerge161179 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc58, %for.body43 ]
  %conv45 = sitofp i32 %storemerge161179 to double
  %mul46 = fmul double %mul, %conv45
  %div48 = fdiv double %mul46, %conv47
  store double %div48, double* @fe_fft.x, align 8, !tbaa !6
  %call49 = tail call double @cos(double %div48) #5
  %13 = load i32* @fe_fft.k, align 4, !tbaa !0
  %idxprom50 = sext i32 %13 to i64
  %14 = load %struct.complex** @fe_fft.w, align 8, !tbaa !3
  %r52 = getelementptr inbounds %struct.complex* %14, i64 %idxprom50, i32 0
  store double %call49, double* %r52, align 8, !tbaa !6
  %15 = load double* @fe_fft.x, align 8, !tbaa !6
  %call53 = tail call double @sin(double %15) #5
  %16 = load i32* @fe_fft.k, align 4, !tbaa !0
  %idxprom54 = sext i32 %16 to i64
  %17 = load %struct.complex** @fe_fft.w, align 8, !tbaa !3
  %i56 = getelementptr inbounds %struct.complex* %17, i64 %idxprom54, i32 1
  store double %call53, double* %i56, align 8, !tbaa !6
  %inc58 = add nsw i32 %16, 1
  store i32 %inc58, i32* @fe_fft.k, align 4, !tbaa !0
  %cmp41 = icmp slt i32 %inc58, %div36
  br i1 %cmp41, label %for.body43, label %for.end59

for.end59:                                        ; preds = %for.body43
  %arrayidx62 = getelementptr inbounds %struct.complex* %17, i64 %conv37
  store %struct.complex* %arrayidx62, %struct.complex** @fe_fft.wEnd, align 8, !tbaa !3
  store i32 %div36, i32* @fe_fft.k, align 4, !tbaa !0
  br i1 %cmp183, label %for.cond68.preheader.lr.ph, label %for.end125

for.cond68.preheader.lr.ph:                       ; preds = %for.end59
  %fe_fft.from.promoted = load %struct.complex** @fe_fft.from, align 8, !tbaa !3
  %fe_fft.to.promoted = load %struct.complex** @fe_fft.to, align 8, !tbaa !3
  br label %for.cond68.preheader

for.cond68.preheader:                             ; preds = %for.cond68.preheader.lr.ph, %for.end122
  %18 = phi %struct.complex* [ %fe_fft.to.promoted, %for.cond68.preheader.lr.ph ], [ %19, %for.end122 ]
  %19 = phi %struct.complex* [ %fe_fft.from.promoted, %for.cond68.preheader.lr.ph ], [ %18, %for.end122 ]
  %20 = phi i32 [ %div36, %for.cond68.preheader.lr.ph ], [ %div124, %for.end122 ]
  %cmp69171 = icmp sgt i32 %20, 0
  br i1 %cmp69171, label %for.body71.lr.ph, label %for.end122.thread

for.end122.thread:                                ; preds = %for.cond68.preheader
  %div124191 = sdiv i32 %20, 2
  br label %for.cond64.for.end125_crit_edge

for.body71.lr.ph:                                 ; preds = %for.cond68.preheader
  %mul110 = shl nsw i32 %20, 1
  %idx.ext = sext i32 %mul110 to i64
  %idx.ext114 = sext i32 %20 to i64
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %for.body71.lr.ph, %for.inc120
  %indvars.iv = phi i64 [ 0, %for.body71.lr.ph ], [ %indvars.iv.next, %for.inc120 ]
  %21 = add nsw i64 %indvars.iv, %conv37
  %22 = add nsw i64 %idx.ext114, %indvars.iv
  %arrayidx81 = getelementptr inbounds %struct.complex* %18, i64 %21
  %arrayidx77 = getelementptr inbounds %struct.complex* %18, i64 %indvars.iv
  %arrayidx75 = getelementptr inbounds %struct.complex* %19, i64 %22
  %arrayidx73 = getelementptr inbounds %struct.complex* %19, i64 %indvars.iv
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %ww.0170 = phi %struct.complex* [ %17, %while.body.lr.ph ], [ %add.ptr119, %while.body ]
  %t2.0169 = phi %struct.complex* [ %arrayidx81, %while.body.lr.ph ], [ %add.ptr117, %while.body ]
  %t1.0168 = phi %struct.complex* [ %arrayidx77, %while.body.lr.ph ], [ %add.ptr115, %while.body ]
  %f2.0167 = phi %struct.complex* [ %arrayidx75, %while.body.lr.ph ], [ %add.ptr113, %while.body ]
  %f1.0166 = phi %struct.complex* [ %arrayidx73, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %r85 = getelementptr inbounds %struct.complex* %f2.0167, i64 0, i32 0
  %23 = load double* %r85, align 8, !tbaa !6
  %r86 = getelementptr inbounds %struct.complex* %ww.0170, i64 0, i32 0
  %24 = load double* %r86, align 8, !tbaa !6
  %mul87 = fmul double %23, %24
  %i88 = getelementptr inbounds %struct.complex* %f2.0167, i64 0, i32 1
  %25 = load double* %i88, align 8, !tbaa !6
  %i89 = getelementptr inbounds %struct.complex* %ww.0170, i64 0, i32 1
  %26 = load double* %i89, align 8, !tbaa !6
  %mul90 = fmul double %25, %26
  %sub = fsub double %mul87, %mul90
  store double %sub, double* @fe_fft.wwf2.0, align 8, !tbaa !6
  %27 = load double* %r85, align 8, !tbaa !6
  %28 = load double* %i89, align 8, !tbaa !6
  %mul93 = fmul double %27, %28
  %29 = load double* %i88, align 8, !tbaa !6
  %30 = load double* %r86, align 8, !tbaa !6
  %mul96 = fmul double %29, %30
  %add97 = fadd double %mul93, %mul96
  store double %add97, double* @fe_fft.wwf2.1, align 8, !tbaa !6
  %r98 = getelementptr inbounds %struct.complex* %f1.0166, i64 0, i32 0
  %31 = load double* %r98, align 8, !tbaa !6
  %add99 = fadd double %31, %sub
  %r100 = getelementptr inbounds %struct.complex* %t1.0168, i64 0, i32 0
  store double %add99, double* %r100, align 8, !tbaa !6
  %i101 = getelementptr inbounds %struct.complex* %f1.0166, i64 0, i32 1
  %32 = load double* %i101, align 8, !tbaa !6
  %33 = load double* @fe_fft.wwf2.1, align 8, !tbaa !6
  %add102 = fadd double %32, %33
  %i103 = getelementptr inbounds %struct.complex* %t1.0168, i64 0, i32 1
  store double %add102, double* %i103, align 8, !tbaa !6
  %34 = load double* %r98, align 8, !tbaa !6
  %35 = load double* @fe_fft.wwf2.0, align 8, !tbaa !6
  %sub105 = fsub double %34, %35
  %r106 = getelementptr inbounds %struct.complex* %t2.0169, i64 0, i32 0
  store double %sub105, double* %r106, align 8, !tbaa !6
  %36 = load double* %i101, align 8, !tbaa !6
  %37 = load double* @fe_fft.wwf2.1, align 8, !tbaa !6
  %sub108 = fsub double %36, %37
  %i109 = getelementptr inbounds %struct.complex* %t2.0169, i64 0, i32 1
  store double %sub108, double* %i109, align 8, !tbaa !6
  %add.ptr = getelementptr inbounds %struct.complex* %f1.0166, i64 %idx.ext
  %add.ptr113 = getelementptr inbounds %struct.complex* %f2.0167, i64 %idx.ext
  %add.ptr115 = getelementptr inbounds %struct.complex* %t1.0168, i64 %idx.ext114
  %add.ptr117 = getelementptr inbounds %struct.complex* %t2.0169, i64 %idx.ext114
  %add.ptr119 = getelementptr inbounds %struct.complex* %ww.0170, i64 %idx.ext114
  %cmp83 = icmp ult %struct.complex* %add.ptr119, %arrayidx62
  br i1 %cmp83, label %while.body, label %for.inc120

for.inc120:                                       ; preds = %while.body
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %20
  br i1 %exitcond, label %for.end122, label %while.body.lr.ph

for.end122:                                       ; preds = %for.inc120
  %div124 = sdiv i32 %20, 2
  %cmp65 = icmp sgt i32 %20, 1
  br i1 %cmp65, label %for.cond68.preheader, label %for.cond64.for.end125_crit_edge

for.cond64.for.end125_crit_edge:                  ; preds = %for.end122.thread, %for.end122
  %div124194 = phi i32 [ %div124191, %for.end122.thread ], [ %div124, %for.end122 ]
  %inc121.lcssa176193 = phi i32 [ 0, %for.end122.thread ], [ %20, %for.end122 ]
  store i32 %div124194, i32* @fe_fft.k, align 4, !tbaa !0
  store %struct.complex* %18, %struct.complex** @fe_fft.from, align 8, !tbaa !3
  store %struct.complex* %19, %struct.complex** @fe_fft.to, align 8, !tbaa !3
  store i32 %inc121.lcssa176193, i32* @fe_fft.s, align 4, !tbaa !0
  store %struct.complex* %19, %struct.complex** @fe_fft.exch, align 8, !tbaa !3
  br label %for.end125

for.end125:                                       ; preds = %for.end59, %for.end59.thread, %for.cond64.for.end125_crit_edge
  %38 = load %struct.complex** @fe_fft.buffer, align 8, !tbaa !3
  %39 = bitcast %struct.complex* %38 to i8*
  tail call void @free(i8* %39) #5
  %40 = load %struct.complex** @fe_fft.w, align 8, !tbaa !3
  %41 = bitcast %struct.complex* %40 to i8*
  tail call void @free(i8* %41) #5
  br label %return

return:                                           ; preds = %for.end125, %if.else7, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %for.end125 ], [ -1, %if.else7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare double @log(double) #1

; Function Attrs: nounwind optsize
declare double @sin(double) #1

; Function Attrs: nounwind optsize uwtable
define void @fe_free_2d(i8** %arr) #0 {
entry:
  %cmp = icmp eq i8** %arr, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i8** %arr, align 8, !tbaa !3
  tail call void @free(i8* %0) #5
  %1 = bitcast i8** %arr to i8*
  tail call void @free(i8* %1) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @fe_parse_general_params(%struct.param_t* nocapture %P, %struct.fe_t* nocapture %FE) #0 {
entry:
  %SAMPLING_RATE = getelementptr inbounds %struct.param_t* %P, i64 0, i32 0
  %0 = load float* %SAMPLING_RATE, align 4, !tbaa !4
  %cmp = fcmp une float %0, 0.000000e+00
  %SAMPLING_RATE2 = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 0
  %. = select i1 %cmp, float %0, float 1.600000e+04
  store float %., float* %SAMPLING_RATE2, align 4, !tbaa !4
  %FRAME_RATE = getelementptr inbounds %struct.param_t* %P, i64 0, i32 1
  %1 = load i32* %FRAME_RATE, align 4, !tbaa !0
  %cmp4 = icmp eq i32 %1, 0
  %FRAME_RATE9 = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 1
  %storemerge72 = select i1 %cmp4, i32 100, i32 %1
  store i32 %storemerge72, i32* %FRAME_RATE9, align 4, !tbaa !0
  %WINDOW_LENGTH = getelementptr inbounds %struct.param_t* %P, i64 0, i32 2
  %2 = load float* %WINDOW_LENGTH, align 4, !tbaa !4
  %cmp11 = fcmp une float %2, 0.000000e+00
  %WINDOW_LENGTH14 = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 3
  %.78 = select i1 %cmp11, float %2, float 0x3F9A36E2E0000000
  store float %.78, float* %WINDOW_LENGTH14, align 4, !tbaa !4
  %FB_TYPE = getelementptr inbounds %struct.param_t* %P, i64 0, i32 3
  %3 = load i32* %FB_TYPE, align 4, !tbaa !0
  %cmp18 = icmp eq i32 %3, 0
  %FB_TYPE23 = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 6
  %storemerge74 = select i1 %cmp18, i32 1, i32 %3
  store i32 %storemerge74, i32* %FB_TYPE23, align 4, !tbaa !0
  %PRE_EMPHASIS_ALPHA = getelementptr inbounds %struct.param_t* %P, i64 0, i32 9
  %4 = load float* %PRE_EMPHASIS_ALPHA, align 4, !tbaa !4
  %cmp25 = fcmp une float %4, 0.000000e+00
  %PRE_EMPHASIS_ALPHA28 = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 8
  %.79 = select i1 %cmp25, float %4, float 0x3FEF0A3D80000000
  store float %.79, float* %PRE_EMPHASIS_ALPHA28, align 4, !tbaa !4
  %NUM_CEPSTRA = getelementptr inbounds %struct.param_t* %P, i64 0, i32 4
  %5 = load i32* %NUM_CEPSTRA, align 4, !tbaa !0
  %cmp32 = icmp eq i32 %5, 0
  %NUM_CEPSTRA37 = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 7
  %storemerge76 = select i1 %cmp32, i32 13, i32 %5
  store i32 %storemerge76, i32* %NUM_CEPSTRA37, align 4, !tbaa !0
  %FFT_SIZE = getelementptr inbounds %struct.param_t* %P, i64 0, i32 6
  %6 = load i32* %FFT_SIZE, align 4, !tbaa !0
  %cmp39 = icmp eq i32 %6, 0
  %FFT_SIZE44 = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 5
  %.80 = select i1 %cmp39, i32 256, i32 %6
  store i32 %.80, i32* %FFT_SIZE44, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @fe_parse_melfb_params(%struct.param_t* nocapture %P, %struct.melfb_t* nocapture %MEL) #0 {
entry:
  %SAMPLING_RATE = getelementptr inbounds %struct.param_t* %P, i64 0, i32 0
  %0 = load float* %SAMPLING_RATE, align 4, !tbaa !4
  %cmp = fcmp une float %0, 0.000000e+00
  %sampling_rate = getelementptr inbounds %struct.melfb_t* %MEL, i64 0, i32 0
  %.123 = select i1 %cmp, float %0, float 1.600000e+04
  store float %.123, float* %sampling_rate, align 4, !tbaa !4
  %FFT_SIZE = getelementptr inbounds %struct.param_t* %P, i64 0, i32 6
  %1 = load i32* %FFT_SIZE, align 4, !tbaa !0
  %cmp3 = icmp eq i32 %1, 0
  br i1 %cmp3, label %if.else6, label %if.then4

if.then4:                                         ; preds = %entry
  %fft_size = getelementptr inbounds %struct.melfb_t* %MEL, i64 0, i32 3
  store i32 %1, i32* %fft_size, align 4, !tbaa !0
  br label %if.end19

if.else6:                                         ; preds = %entry
  %cmp8 = fcmp oeq float %.123, 1.600000e+04
  %fft_size10 = getelementptr inbounds %struct.melfb_t* %MEL, i64 0, i32 3
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.else6
  store i32 512, i32* %fft_size10, align 4, !tbaa !0
  br label %if.end11

if.end11:                                         ; preds = %if.else6, %if.then9
  store i32 256, i32* %fft_size10, align 4, !tbaa !0
  br label %if.end19

if.end19:                                         ; preds = %if.end11, %if.then4
  %NUM_CEPSTRA = getelementptr inbounds %struct.param_t* %P, i64 0, i32 4
  %2 = load i32* %NUM_CEPSTRA, align 4, !tbaa !0
  %cmp20 = icmp eq i32 %2, 0
  %num_cepstra24 = getelementptr inbounds %struct.melfb_t* %MEL, i64 0, i32 1
  %.124 = select i1 %cmp20, i32 13, i32 %2
  store i32 %.124, i32* %num_cepstra24, align 4, !tbaa !0
  %NUM_FILTERS = getelementptr inbounds %struct.param_t* %P, i64 0, i32 5
  %3 = load i32* %NUM_FILTERS, align 4, !tbaa !0
  %cmp26 = icmp eq i32 %3, 0
  br i1 %cmp26, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.end19
  %num_filters = getelementptr inbounds %struct.melfb_t* %MEL, i64 0, i32 2
  store i32 %3, i32* %num_filters, align 4, !tbaa !0
  br label %if.end44

if.else29:                                        ; preds = %if.end19
  %cmp31 = fcmp oeq float %.123, 1.600000e+04
  br i1 %cmp31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else29
  %num_filters33 = getelementptr inbounds %struct.melfb_t* %MEL, i64 0, i32 2
  store i32 40, i32* %num_filters33, align 4, !tbaa !0
  br label %if.end44

if.else34:                                        ; preds = %if.else29
  %cmp36 = fcmp oeq float %.123, 8.000000e+03
  br i1 %cmp36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.else34
  %num_filters38 = getelementptr inbounds %struct.melfb_t* %MEL, i64 0, i32 2
  store i32 31, i32* %num_filters38, align 4, !tbaa !0
  br label %if.end44

if.else39:                                        ; preds = %if.else34
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str8, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %4)
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str9, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %6)
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call41 = tail call i32 @fflush(%struct._IO_FILE* %8) #5
  tail call void @exit(i32 0) #6
  unreachable

if.end44:                                         ; preds = %if.then32, %if.then37, %if.then27
  %UPPER_FILT_FREQ = getelementptr inbounds %struct.param_t* %P, i64 0, i32 8
  %9 = load float* %UPPER_FILT_FREQ, align 4, !tbaa !4
  %cmp45 = fcmp une float %9, 0.000000e+00
  br i1 %cmp45, label %if.then46, label %if.else48

if.then46:                                        ; preds = %if.end44
  %upper_filt_freq = getelementptr inbounds %struct.melfb_t* %MEL, i64 0, i32 5
  store float %9, float* %upper_filt_freq, align 4, !tbaa !4
  br label %if.end64

if.else48:                                        ; preds = %if.end44
  %cmp50 = fcmp oeq float %.123, 1.600000e+04
  br i1 %cmp50, label %if.then51, label %if.else53

if.then51:                                        ; preds = %if.else48
  %upper_filt_freq52 = getelementptr inbounds %struct.melfb_t* %MEL, i64 0, i32 5
  store float 0x40BAC77F60000000, float* %upper_filt_freq52, align 4, !tbaa !4
  br label %if.end64

if.else53:                                        ; preds = %if.else48
  %cmp55 = fcmp oeq float %.123, 8.000000e+03
  br i1 %cmp55, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.else53
  %upper_filt_freq57 = getelementptr inbounds %struct.melfb_t* %MEL, i64 0, i32 5
  store float 3.500000e+03, float* %upper_filt_freq57, align 4, !tbaa !4
  br label %if.end64

if.else58:                                        ; preds = %if.else53
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str10, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %10)
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str9, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %12)
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call61 = tail call i32 @fflush(%struct._IO_FILE* %14) #5
  tail call void @exit(i32 0) #6
  unreachable

if.end64:                                         ; preds = %if.then51, %if.then56, %if.then46
  %LOWER_FILT_FREQ = getelementptr inbounds %struct.param_t* %P, i64 0, i32 7
  %15 = load float* %LOWER_FILT_FREQ, align 4, !tbaa !4
  %cmp65 = fcmp une float %15, 0.000000e+00
  br i1 %cmp65, label %if.then66, label %if.else68

if.then66:                                        ; preds = %if.end64
  %lower_filt_freq = getelementptr inbounds %struct.melfb_t* %MEL, i64 0, i32 4
  store float %15, float* %lower_filt_freq, align 4, !tbaa !4
  br label %if.end84

if.else68:                                        ; preds = %if.end64
  %cmp70 = fcmp oeq float %.123, 1.600000e+04
  br i1 %cmp70, label %if.then71, label %if.else73

if.then71:                                        ; preds = %if.else68
  %lower_filt_freq72 = getelementptr inbounds %struct.melfb_t* %MEL, i64 0, i32 4
  store float 0x4060AAAAC0000000, float* %lower_filt_freq72, align 4, !tbaa !4
  br label %if.end84

if.else73:                                        ; preds = %if.else68
  %cmp75 = fcmp oeq float %.123, 8.000000e+03
  br i1 %cmp75, label %if.then76, label %if.else78

if.then76:                                        ; preds = %if.else73
  %lower_filt_freq77 = getelementptr inbounds %struct.melfb_t* %MEL, i64 0, i32 4
  store float 2.000000e+02, float* %lower_filt_freq77, align 4, !tbaa !4
  br label %if.end84

if.else78:                                        ; preds = %if.else73
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @.str11, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %16)
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str9, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %18)
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call81 = tail call i32 @fflush(%struct._IO_FILE* %20) #5
  tail call void @exit(i32 0) #6
  unreachable

if.end84:                                         ; preds = %if.then71, %if.then76, %if.then66
  %doublebw = getelementptr inbounds %struct.param_t* %P, i64 0, i32 22
  %21 = load i32* %doublebw, align 4, !tbaa !0
  %cmp85 = icmp eq i32 %21, 1
  %doublewide = getelementptr inbounds %struct.melfb_t* %MEL, i64 0, i32 10
  %. = zext i1 %cmp85 to i32
  store i32 %., i32* %doublewide, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @fe_print_current(%struct.fe_t* nocapture %FE) #0 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8]* @.str12, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %0)
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %SAMPLING_RATE = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 0
  %3 = load float* %SAMPLING_RATE, align 4, !tbaa !4
  %conv = fpext float %3 to double
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([32 x i8]* @.str13, i64 0, i64 0), double %conv) #5
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %FRAME_SIZE = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 4
  %5 = load i32* %FRAME_SIZE, align 4, !tbaa !0
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([32 x i8]* @.str14, i64 0, i64 0), i32 %5) #5
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %FRAME_SHIFT = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 2
  %7 = load i32* %FRAME_SHIFT, align 4, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([32 x i8]* @.str15, i64 0, i64 0), i32 %7) #5
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %FFT_SIZE = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 5
  %9 = load i32* %FFT_SIZE, align 4, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([32 x i8]* @.str16, i64 0, i64 0), i32 %9) #5
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %NUM_OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 10
  %11 = load i32* %NUM_OVERFLOW_SAMPS, align 4, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([32 x i8]* @.str17, i64 0, i64 0), i32 %11) #5
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %START_FLAG = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 12
  %13 = load i32* %START_FLAG, align 4, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([32 x i8]* @.str18, i64 0, i64 0), i32 %13) #5
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
