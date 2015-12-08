; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/new_fe.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.fe_t = type { float, i32, i32, float, i32, i32, i32, i32, float, i16*, i32, %struct.melfb_t*, i32, i16, double* }
%struct.melfb_t = type { float, i32, i32, i32, float, float, float**, float**, float*, i32*, i32 }
%struct.param_t = type { float, i32, float, i32, i32, i32, i32, float, float, float, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [45 x i8] c"memory alloc failed in fe_init()\0A...exiting\0A\00", align 1
@.str1 = private unnamed_addr constant [49 x i8] c"MEL SCALE IS CURRENTLY THE ONLY IMPLEMENTATION!\0A\00", align 1
@.str2 = private unnamed_addr constant [52 x i8] c"memory alloc failed in fe_process_utt()\0A...exiting\0A\00", align 1
@.str3 = private unnamed_addr constant [85 x i8] c"memory alloc for cep failed in fe_process_utt()\0A\09fe_create_2d(%ld,%d,%d)\0A...exiting\0A\00", align 1
@.str4 = private unnamed_addr constant [48 x i8] c"memory alloc failed in fe_end_utt()\0A...exiting\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.fe_t* @fe_init(%struct.param_t* %P) #0 {
entry:
  %call = tail call noalias i8* @calloc(i64 1, i64 80) #5
  %0 = bitcast i8* %call to %struct.fe_t*
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %1)
  br label %return

if.end:                                           ; preds = %entry
  tail call void @fe_parse_general_params(%struct.param_t* %P, %struct.fe_t* %0) #5
  %SAMPLING_RATE = bitcast i8* %call to float*
  %3 = load float* %SAMPLING_RATE, align 4, !tbaa !3
  %FRAME_RATE = getelementptr inbounds i8* %call, i64 4
  %4 = bitcast i8* %FRAME_RATE to i32*
  %5 = load i32* %4, align 4, !tbaa !4
  %conv = sitofp i32 %5 to float
  %div = fdiv float %3, %conv
  %conv2 = fpext float %div to double
  %add = fadd double %conv2, 5.000000e-01
  %conv3 = fptosi double %add to i32
  %FRAME_SHIFT = getelementptr inbounds i8* %call, i64 8
  %6 = bitcast i8* %FRAME_SHIFT to i32*
  store i32 %conv3, i32* %6, align 4, !tbaa !4
  %WINDOW_LENGTH = getelementptr inbounds i8* %call, i64 12
  %7 = bitcast i8* %WINDOW_LENGTH to float*
  %8 = load float* %7, align 4, !tbaa !3
  %mul = fmul float %8, %3
  %conv5 = fpext float %mul to double
  %add6 = fadd double %conv5, 5.000000e-01
  %conv7 = fptosi double %add6 to i32
  %FRAME_SIZE = getelementptr inbounds i8* %call, i64 16
  %9 = bitcast i8* %FRAME_SIZE to i32*
  store i32 %conv7, i32* %9, align 4, !tbaa !4
  %PRIOR = getelementptr inbounds i8* %call, i64 68
  %10 = bitcast i8* %PRIOR to i16*
  store i16 0, i16* %10, align 2, !tbaa !5
  %conv9 = sext i32 %conv7 to i64
  %call10 = tail call noalias i8* @calloc(i64 %conv9, i64 2) #5
  %11 = bitcast i8* %call10 to i16*
  %OVERFLOW_SAMPS = getelementptr inbounds i8* %call, i64 40
  %12 = bitcast i8* %OVERFLOW_SAMPS to i16**
  store i16* %11, i16** %12, align 8, !tbaa !0
  %call13 = tail call noalias i8* @calloc(i64 %conv9, i64 8) #5
  %13 = bitcast i8* %call13 to double*
  %HAMMING_WINDOW = getelementptr inbounds i8* %call, i64 72
  %14 = bitcast i8* %HAMMING_WINDOW to double**
  store double* %13, double** %14, align 8, !tbaa !0
  %cmp15 = icmp eq i8* %call10, null
  %cmp18 = icmp eq i8* %call13, null
  %or.cond = or i1 %cmp15, %cmp18
  br i1 %or.cond, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %15)
  br label %return

if.end22:                                         ; preds = %if.end
  tail call void @fe_create_hamming(double* %13, i32 %conv7) #5
  %FB_TYPE = getelementptr inbounds i8* %call, i64 24
  %17 = bitcast i8* %FB_TYPE to i32*
  %18 = load i32* %17, align 4, !tbaa !4
  %cmp25 = icmp eq i32 %18, 1
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end22
  %call28 = tail call noalias i8* @calloc(i64 1, i64 64) #5
  %19 = bitcast i8* %call28 to %struct.melfb_t*
  %MEL_FB = getelementptr inbounds i8* %call, i64 56
  %20 = bitcast i8* %MEL_FB to %struct.melfb_t**
  store %struct.melfb_t* %19, %struct.melfb_t** %20, align 8, !tbaa !0
  %cmp29 = icmp eq i8* %call28, null
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.then27
  %21 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %21)
  br label %return

if.end33:                                         ; preds = %if.then27
  tail call void @fe_parse_melfb_params(%struct.param_t* %P, %struct.melfb_t* %19) #5
  %23 = load %struct.melfb_t** %20, align 8, !tbaa !0
  %call36 = tail call i32 @fe_build_melfilters(%struct.melfb_t* %23) #5
  %24 = load %struct.melfb_t** %20, align 8, !tbaa !0
  %call38 = tail call i32 @fe_compute_melcosine(%struct.melfb_t* %24) #5
  br label %return

if.else:                                          ; preds = %if.end22
  %25 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %25)
  br label %return

return:                                           ; preds = %if.end33, %if.else, %if.then31, %if.then20, %if.then
  %retval.0 = phi %struct.fe_t* [ null, %if.then ], [ null, %if.then20 ], [ null, %if.then31 ], [ %0, %if.end33 ], [ null, %if.else ]
  ret %struct.fe_t* %retval.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @fe_parse_general_params(%struct.param_t*, %struct.fe_t*) #2

; Function Attrs: optsize
declare void @fe_create_hamming(double*, i32) #2

; Function Attrs: optsize
declare void @fe_parse_melfb_params(%struct.param_t*, %struct.melfb_t*) #2

; Function Attrs: optsize
declare i32 @fe_build_melfilters(%struct.melfb_t*) #2

; Function Attrs: optsize
declare i32 @fe_compute_melcosine(%struct.melfb_t*) #2

; Function Attrs: nounwind optsize uwtable
define i32 @fe_start_utt(%struct.fe_t* nocapture %FE) #0 {
entry:
  %NUM_OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 10
  store i32 0, i32* %NUM_OVERFLOW_SAMPS, align 4, !tbaa !4
  %OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 9
  %0 = load i16** %OVERFLOW_SAMPS, align 8, !tbaa !0
  %1 = bitcast i16* %0 to i8*
  %FRAME_SIZE = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 4
  %2 = load i32* %FRAME_SIZE, align 4, !tbaa !4
  %conv = sext i32 %2 to i64
  %mul = shl nsw i64 %conv, 1
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %mul, i32 2, i1 false)
  %START_FLAG = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 12
  store i32 1, i32* %START_FLAG, align 4, !tbaa !4
  %PRIOR = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 13
  store i16 0, i16* %PRIOR, align 2, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define i32 @fe_process_utt(%struct.fe_t* %FE, i16* %spch, i32 %nsamps, float*** nocapture %cep_block) #0 {
entry:
  %NUM_OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 10
  %0 = load i32* %NUM_OVERFLOW_SAMPS, align 4, !tbaa !4
  %add = add nsw i32 %0, %nsamps
  %FRAME_SIZE = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 4
  %1 = load i32* %FRAME_SIZE, align 4, !tbaa !4
  %cmp = icmp slt i32 %add, %1
  br i1 %cmp, label %if.else123, label %if.then

if.then:                                          ; preds = %entry
  %cmp2 = icmp sgt i32 %0, 0
  br i1 %cmp2, label %if.then3, label %if.end19

if.then3:                                         ; preds = %if.then
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 1
  %call = tail call noalias i8* @malloc(i64 %mul) #5
  %2 = bitcast i8* %call to i16*
  %cmp6 = icmp eq i8* %call, null
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then3
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %3)
  tail call void @exit(i32 0) #6
  unreachable

if.end:                                           ; preds = %if.then3
  %OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 9
  %5 = load i16** %OVERFLOW_SAMPS, align 8, !tbaa !0
  %6 = bitcast i16* %5 to i8*
  %conv11 = sext i32 %0 to i64
  %mul12 = shl nsw i64 %conv11, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call, i8* %6, i64 %mul12, i32 2, i1 false)
  %add.ptr = getelementptr inbounds i16* %2, i64 %conv11
  %7 = bitcast i16* %add.ptr to i8*
  %8 = bitcast i16* %spch to i8*
  %conv14 = sext i32 %nsamps to i64
  %mul15 = shl nsw i64 %conv14, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 %mul15, i32 2, i1 false)
  store i32 0, i32* %NUM_OVERFLOW_SAMPS, align 4, !tbaa !4
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then
  %nsamps.addr.0 = phi i32 [ %add, %if.end ], [ %nsamps, %if.then ]
  %tmp_spch.0 = phi i16* [ %2, %if.end ], [ %spch, %if.then ]
  %cmp22221 = icmp sgt i32 %1, %nsamps.addr.0
  br i1 %cmp22221, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end19
  %FRAME_SHIFT = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 2
  %9 = load i32* %FRAME_SHIFT, align 4, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %inc223 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body ]
  %frame_start.0222 = phi i32 [ 0, %for.body.lr.ph ], [ %add24, %for.body ]
  %add24 = add nsw i32 %9, %frame_start.0222
  %add21 = add nsw i32 %1, %add24
  %cmp22 = icmp sgt i32 %add21, %nsamps.addr.0
  %inc = add nsw i32 %inc223, 1
  br i1 %cmp22, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end19
  %inc.lcssa = phi i32 [ 1, %if.end19 ], [ %inc, %for.body ]
  %frame_count.0.lcssa = phi i32 [ 0, %if.end19 ], [ %inc223, %for.body ]
  %NUM_CEPSTRA = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 7
  %10 = load i32* %NUM_CEPSTRA, align 4, !tbaa !4
  %call26 = tail call i8** @fe_create_2d(i32 %inc.lcssa, i32 %10, i32 4) #5
  %11 = bitcast i8** %call26 to float**
  %cmp27 = icmp eq i8** %call26, null
  br i1 %cmp27, label %if.then29, label %if.end34

if.then29:                                        ; preds = %for.end
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %conv31 = sext i32 %inc.lcssa to i64
  %13 = load i32* %NUM_CEPSTRA, align 4, !tbaa !4
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([85 x i8]* @.str3, i64 0, i64 0), i64 %conv31, i32 %13, i64 4) #5
  tail call void @exit(i32 0) #6
  unreachable

if.end34:                                         ; preds = %for.end
  %sub = add nsw i32 %frame_count.0.lcssa, -1
  %FRAME_SHIFT35 = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 2
  %14 = load i32* %FRAME_SHIFT35, align 4, !tbaa !4
  %mul36 = mul nsw i32 %14, %sub
  %15 = load i32* %FRAME_SIZE, align 4, !tbaa !4
  %add38 = add nsw i32 %mul36, %15
  %conv39 = sext i32 %add38 to i64
  %call40 = tail call noalias i8* @calloc(i64 %conv39, i64 8) #5
  %16 = bitcast i8* %call40 to double*
  %cmp41 = icmp eq i8* %call40, null
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end34
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %17)
  tail call void @exit(i32 0) #6
  unreachable

if.end45:                                         ; preds = %if.end34
  %PRE_EMPHASIS_ALPHA = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 8
  %19 = load float* %PRE_EMPHASIS_ALPHA, align 4, !tbaa !3
  %cmp47 = fcmp une float %19, 0.000000e+00
  br i1 %cmp47, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.end45
  %PRIOR = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 13
  %20 = load i16* %PRIOR, align 2, !tbaa !5
  tail call void @fe_pre_emphasis(i16* %tmp_spch.0, double* %16, i32 %add38, float %19, i16 signext %20) #5
  br label %if.end51

if.else:                                          ; preds = %if.end45
  tail call void @fe_short_to_double(i16* %tmp_spch.0, double* %16, i32 %add38) #5
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then49
  %21 = load i32* %FRAME_SIZE, align 4, !tbaa !4
  %conv53 = sext i32 %21 to i64
  %call54 = tail call noalias i8* @calloc(i64 %conv53, i64 8) #5
  %22 = bitcast i8* %call54 to double*
  %23 = load i32* %NUM_CEPSTRA, align 4, !tbaa !4
  %conv56 = sext i32 %23 to i64
  %call57 = tail call noalias i8* @calloc(i64 %conv56, i64 8) #5
  %24 = bitcast i8* %call57 to double*
  %cmp58 = icmp eq i8* %call54, null
  %cmp60 = icmp eq i8* %call57, null
  %or.cond = or i1 %cmp58, %cmp60
  br i1 %or.cond, label %if.then62, label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %if.end51
  %cmp66219 = icmp sgt i32 %frame_count.0.lcssa, 0
  br i1 %cmp66219, label %for.cond69.preheader.lr.ph, label %for.end100

for.cond69.preheader.lr.ph:                       ; preds = %for.cond65.preheader
  %HAMMING_WINDOW = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 14
  br label %for.cond69.preheader

if.then62:                                        ; preds = %if.end51
  %25 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %26 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str2, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %25)
  tail call void @exit(i32 0) #6
  unreachable

for.cond69.preheader:                             ; preds = %for.inc98.for.cond69.preheader_crit_edge, %for.cond69.preheader.lr.ph
  %27 = phi i32 [ %21, %for.cond69.preheader.lr.ph ], [ %.pre, %for.inc98.for.cond69.preheader_crit_edge ]
  %indvars.iv227 = phi i64 [ 0, %for.cond69.preheader.lr.ph ], [ %indvars.iv.next228, %for.inc98.for.cond69.preheader_crit_edge ]
  %cmp71215 = icmp sgt i32 %27, 0
  br i1 %cmp71215, label %for.body73.lr.ph, label %for.end81

for.body73.lr.ph:                                 ; preds = %for.cond69.preheader
  %28 = load i32* %FRAME_SHIFT35, align 4, !tbaa !4
  %29 = trunc i64 %indvars.iv227 to i32
  %mul75 = mul nsw i32 %28, %29
  %30 = sext i32 %mul75 to i64
  %31 = shl nsw i64 %30, 3
  %scevgep = getelementptr i8* %call40, i64 %31
  %32 = icmp sgt i32 %27, 1
  %.op = add i32 %27, -1
  %33 = zext i32 %.op to i64
  %.op230 = shl nuw nsw i64 %33, 3
  %.op230.op = add i64 %.op230, 8
  %34 = select i1 %32, i64 %.op230.op, i64 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call54, i8* %scevgep, i64 %34, i32 8, i1 false)
  br label %for.end81

for.end81:                                        ; preds = %for.body73.lr.ph, %for.cond69.preheader
  %35 = load double** %HAMMING_WINDOW, align 8, !tbaa !0
  tail call void @fe_hamming_window(double* %22, double* %35, i32 %27) #5
  tail call void @fe_frame_to_fea(%struct.fe_t* %FE, double* %22, double* %24) #5
  %36 = load i32* %NUM_CEPSTRA, align 4, !tbaa !4
  %cmp85217 = icmp sgt i32 %36, 0
  br i1 %cmp85217, label %for.body87.lr.ph, label %for.inc98

for.body87.lr.ph:                                 ; preds = %for.end81
  %arrayidx93213 = getelementptr inbounds i8** %call26, i64 %indvars.iv227
  br label %for.body87

for.body87:                                       ; preds = %for.body87.lr.ph, %for.body87
  %indvars.iv = phi i64 [ 0, %for.body87.lr.ph ], [ %indvars.iv.next, %for.body87 ]
  %arrayidx89 = getelementptr inbounds double* %24, i64 %indvars.iv
  %37 = load double* %arrayidx89, align 8, !tbaa !6
  %conv90 = fptrunc double %37 to float
  %arrayidx93214 = load i8** %arrayidx93213, align 8
  %38 = bitcast i8* %arrayidx93214 to float*
  %arrayidx94 = getelementptr inbounds float* %38, i64 %indvars.iv
  store float %conv90, float* %arrayidx94, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %39 = trunc i64 %indvars.iv.next to i32
  %cmp85 = icmp slt i32 %39, %36
  br i1 %cmp85, label %for.body87, label %for.inc98

for.inc98:                                        ; preds = %for.body87, %for.end81
  %indvars.iv.next228 = add i64 %indvars.iv227, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next228 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %frame_count.0.lcssa
  br i1 %exitcond, label %for.end100, label %for.inc98.for.cond69.preheader_crit_edge

for.inc98.for.cond69.preheader_crit_edge:         ; preds = %for.inc98
  %.pre = load i32* %FRAME_SIZE, align 4, !tbaa !4
  br label %for.cond69.preheader

for.end100:                                       ; preds = %for.inc98, %for.cond65.preheader
  %cmp101 = icmp slt i32 %add38, %nsamps.addr.0
  br i1 %cmp101, label %if.then103, label %if.end118

if.then103:                                       ; preds = %for.end100
  %40 = load i32* %FRAME_SHIFT35, align 4, !tbaa !4
  %mul105 = mul nsw i32 %40, %frame_count.0.lcssa
  %OVERFLOW_SAMPS106 = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 9
  %41 = load i16** %OVERFLOW_SAMPS106, align 8, !tbaa !0
  %42 = bitcast i16* %41 to i8*
  %idx.ext107 = sext i32 %mul105 to i64
  %add.ptr108 = getelementptr inbounds i16* %tmp_spch.0, i64 %idx.ext107
  %43 = bitcast i16* %add.ptr108 to i8*
  %sub109 = sub nsw i32 %nsamps.addr.0, %mul105
  %conv110 = sext i32 %sub109 to i64
  %mul111 = shl nsw i64 %conv110, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 %mul111, i32 2, i1 false)
  store i32 %sub109, i32* %NUM_OVERFLOW_SAMPS, align 4, !tbaa !4
  %sub114 = add nsw i32 %mul105, -1
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds i16* %tmp_spch.0, i64 %idxprom115
  %44 = load i16* %arrayidx116, align 2, !tbaa !5
  %PRIOR117 = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 13
  store i16 %44, i16* %PRIOR117, align 2, !tbaa !5
  br label %if.end118

if.end118:                                        ; preds = %if.then103, %for.end100
  %cmp119 = icmp eq i16* %tmp_spch.0, %spch
  br i1 %cmp119, label %if.end122, label %if.then121

if.then121:                                       ; preds = %if.end118
  %45 = bitcast i16* %tmp_spch.0 to i8*
  tail call void @free(i8* %45) #5
  br label %if.end122

if.end122:                                        ; preds = %if.end118, %if.then121
  tail call void @free(i8* %call40) #5
  tail call void @free(i8* %call54) #5
  tail call void @free(i8* %call57) #5
  br label %if.end132

if.else123:                                       ; preds = %entry
  %OVERFLOW_SAMPS124 = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 9
  %46 = load i16** %OVERFLOW_SAMPS124, align 8, !tbaa !0
  %idx.ext126 = sext i32 %0 to i64
  %add.ptr127 = getelementptr inbounds i16* %46, i64 %idx.ext126
  %47 = bitcast i16* %add.ptr127 to i8*
  %48 = bitcast i16* %spch to i8*
  %conv128 = sext i32 %nsamps to i64
  %mul129 = shl nsw i64 %conv128, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 %mul129, i32 2, i1 false)
  %49 = load i32* %NUM_OVERFLOW_SAMPS, align 4, !tbaa !4
  %add131 = add nsw i32 %49, %nsamps
  store i32 %add131, i32* %NUM_OVERFLOW_SAMPS, align 4, !tbaa !4
  br label %if.end132

if.end132:                                        ; preds = %if.else123, %if.end122
  %frame_count.1 = phi i32 [ %frame_count.0.lcssa, %if.end122 ], [ 0, %if.else123 ]
  %cep.0 = phi float** [ %11, %if.end122 ], [ null, %if.else123 ]
  store float** %cep.0, float*** %cep_block, align 8, !tbaa !0
  ret i32 %frame_count.1
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: optsize
declare i8** @fe_create_2d(i32, i32, i32) #2

; Function Attrs: optsize
declare void @fe_pre_emphasis(i16*, double*, i32, float, i16 signext) #2

; Function Attrs: optsize
declare void @fe_short_to_double(i16*, double*, i32) #2

; Function Attrs: optsize
declare void @fe_hamming_window(double*, double*, i32) #2

; Function Attrs: optsize
declare void @fe_frame_to_fea(%struct.fe_t*, double*, double*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @fe_end_utt(%struct.fe_t* %FE, float* nocapture %cepvector) #0 {
entry:
  %NUM_OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 10
  %0 = load i32* %NUM_OVERFLOW_SAMPS, align 4, !tbaa !4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end35

if.then:                                          ; preds = %entry
  %FRAME_SIZE = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 4
  %1 = load i32* %FRAME_SIZE, align 4, !tbaa !4
  %sub = sub nsw i32 %1, %0
  %OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 9
  %2 = load i16** %OVERFLOW_SAMPS, align 8, !tbaa !0
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i16* %2, i64 %idx.ext
  %3 = bitcast i16* %add.ptr to i8*
  %conv = sext i32 %sub to i64
  %mul = shl nsw i64 %conv, 1
  tail call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 %mul, i32 2, i1 false)
  %4 = load i32* %NUM_OVERFLOW_SAMPS, align 4, !tbaa !4
  %add = add nsw i32 %4, %sub
  store i32 %add, i32* %NUM_OVERFLOW_SAMPS, align 4, !tbaa !4
  %5 = load i32* %FRAME_SIZE, align 4, !tbaa !4
  %conv5 = sext i32 %5 to i64
  %call = tail call noalias i8* @calloc(i64 %conv5, i64 8) #5
  %6 = bitcast i8* %call to double*
  %cmp6 = icmp eq i8* %call, null
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %7)
  tail call void @exit(i32 0) #6
  unreachable

if.end:                                           ; preds = %if.then
  %PRE_EMPHASIS_ALPHA = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 8
  %9 = load float* %PRE_EMPHASIS_ALPHA, align 4, !tbaa !3
  %cmp11 = fcmp une float %9, 0.000000e+00
  %10 = load i16** %OVERFLOW_SAMPS, align 8, !tbaa !0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  %PRIOR = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 13
  %11 = load i16* %PRIOR, align 2, !tbaa !5
  tail call void @fe_pre_emphasis(i16* %10, double* %6, i32 %5, float %9, i16 signext %11) #5
  br label %if.end19

if.else:                                          ; preds = %if.end
  tail call void @fe_short_to_double(i16* %10, double* %6, i32 %5) #5
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then13
  %NUM_CEPSTRA = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 7
  %12 = load i32* %NUM_CEPSTRA, align 4, !tbaa !4
  %conv20 = sext i32 %12 to i64
  %call21 = tail call noalias i8* @calloc(i64 %conv20, i64 8) #5
  %13 = bitcast i8* %call21 to double*
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end19
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str4, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %14)
  tail call void @exit(i32 0) #6
  unreachable

if.end26:                                         ; preds = %if.end19
  %HAMMING_WINDOW = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 14
  %16 = load double** %HAMMING_WINDOW, align 8, !tbaa !0
  %17 = load i32* %FRAME_SIZE, align 4, !tbaa !4
  tail call void @fe_hamming_window(double* %6, double* %16, i32 %17) #5
  tail call void @fe_frame_to_fea(%struct.fe_t* %FE, double* %6, double* %13) #5
  %18 = load i32* %NUM_CEPSTRA, align 4, !tbaa !4
  %cmp2964 = icmp sgt i32 %18, 0
  br i1 %cmp2964, label %for.body, label %for.end

for.body:                                         ; preds = %if.end26, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end26 ]
  %arrayidx = getelementptr inbounds double* %13, i64 %indvars.iv
  %19 = load double* %arrayidx, align 8, !tbaa !6
  %conv31 = fptrunc double %19 to float
  %arrayidx33 = getelementptr inbounds float* %cepvector, i64 %indvars.iv
  store float %conv31, float* %arrayidx33, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %20 = trunc i64 %indvars.iv.next to i32
  %cmp29 = icmp slt i32 %20, %18
  br i1 %cmp29, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end26
  tail call void @free(i8* %call21) #5
  tail call void @free(i8* %call) #5
  br label %if.end35

if.end35:                                         ; preds = %entry, %for.end
  %frame_count.0 = phi i32 [ 1, %for.end ], [ 0, %entry ]
  store i32 0, i32* %NUM_OVERFLOW_SAMPS, align 4, !tbaa !4
  %START_FLAG = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 12
  store i32 0, i32* %START_FLAG, align 4, !tbaa !4
  ret i32 %frame_count.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @fe_close(%struct.fe_t* nocapture %FE) #0 {
entry:
  %FB_TYPE = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 6
  %0 = load i32* %FB_TYPE, align 4, !tbaa !4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %MEL_FB = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 11
  %1 = load %struct.melfb_t** %MEL_FB, align 8, !tbaa !0
  %filter_coeffs = getelementptr inbounds %struct.melfb_t* %1, i64 0, i32 6
  %2 = load float*** %filter_coeffs, align 8, !tbaa !0
  %3 = bitcast float** %2 to i8**
  tail call void @fe_free_2d(i8** %3) #5
  %4 = load %struct.melfb_t** %MEL_FB, align 8, !tbaa !0
  %mel_cosine = getelementptr inbounds %struct.melfb_t* %4, i64 0, i32 7
  %5 = load float*** %mel_cosine, align 8, !tbaa !0
  %6 = bitcast float** %5 to i8**
  tail call void @fe_free_2d(i8** %6) #5
  %7 = load %struct.melfb_t** %MEL_FB, align 8, !tbaa !0
  %left_apex = getelementptr inbounds %struct.melfb_t* %7, i64 0, i32 8
  %8 = load float** %left_apex, align 8, !tbaa !0
  %9 = bitcast float* %8 to i8*
  tail call void @free(i8* %9) #5
  %10 = load %struct.melfb_t** %MEL_FB, align 8, !tbaa !0
  %width = getelementptr inbounds %struct.melfb_t* %10, i64 0, i32 9
  %11 = load i32** %width, align 8, !tbaa !0
  %12 = bitcast i32* %11 to i8*
  tail call void @free(i8* %12) #5
  %13 = load %struct.melfb_t** %MEL_FB, align 8, !tbaa !0
  %14 = bitcast %struct.melfb_t* %13 to i8*
  tail call void @free(i8* %14) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str1, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %OVERFLOW_SAMPS = getelementptr inbounds %struct.fe_t* %FE, i64 0, i32 9
  %17 = load i16** %OVERFLOW_SAMPS, align 8, !tbaa !0
  %18 = bitcast i16* %17 to i8*
  tail call void @free(i8* %18) #5
  %19 = bitcast %struct.fe_t* %FE to i8*
  tail call void @free(i8* %19) #5
  ret i32 0
}

; Function Attrs: optsize
declare void @fe_free_2d(i8**) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
