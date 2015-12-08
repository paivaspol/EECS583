; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/ratectl.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@THETA = constant double 1.363600e+00, align 8
@Switch = constant i32 0, align 4
@Iprev_bits = global i32 0, align 4
@Pprev_bits = global i32 0, align 4
@OMEGA = constant double 9.000000e-01, align 8
@img = external global %struct.ImageParameters*
@.str = private unnamed_addr constant [23 x i8] c"rc_alloc: img->MADofMB\00", align 1
@input = external global %struct.InputParameters*
@BUPFMAD = common global double* null, align 8
@.str1 = private unnamed_addr constant [23 x i8] c"rc_alloc: img->BUPFMAD\00", align 1
@BUCFMAD = common global double* null, align 8
@.str2 = private unnamed_addr constant [23 x i8] c"rc_alloc: img->BUCFMAD\00", align 1
@FCBUCFMAD = common global double* null, align 8
@.str3 = private unnamed_addr constant [25 x i8] c"rc_alloc: img->FCBUCFMAD\00", align 1
@FCBUPFMAD = common global double* null, align 8
@.str4 = private unnamed_addr constant [25 x i8] c"rc_alloc: img->FCBUPFMAD\00", align 1
@Xp = common global i32 0, align 4
@Xb = common global i32 0, align 4
@bit_rate = common global double 0.000000e+00, align 8
@frame_rate = common global double 0.000000e+00, align 8
@PreviousBit_Rate = common global double 0.000000e+00, align 8
@TotalNumberofBasicUnit = common global i32 0, align 4
@MINVALUE = common global double 0.000000e+00, align 8
@BufferSize = common global double 0.000000e+00, align 8
@CurrentBufferFullness = common global double 0.000000e+00, align 8
@GOPTargetBufferLevel = common global double 0.000000e+00, align 8
@InitialDelayOffset = common global double 0.000000e+00, align 8
@m_windowSize = common global i32 0, align 4
@MADm_windowSize = common global i32 0, align 4
@R = internal unnamed_addr global i32 0, align 4
@GAMMAP = common global double 0.000000e+00, align 8
@BETAP = common global double 0.000000e+00, align 8
@PPreHeader = common global i32 0, align 4
@Pm_X1 = common global double 0.000000e+00, align 8
@Pm_X2 = common global double 0.000000e+00, align 8
@PMADPictureC1 = common global double 0.000000e+00, align 8
@PMADPictureC2 = common global double 0.000000e+00, align 8
@Pm_rgQp = common global [20 x double] zeroinitializer, align 16
@Pm_rgRp = common global [20 x double] zeroinitializer, align 16
@PPictureMAD = common global [21 x double] zeroinitializer, align 16
@PDuantQp = common global i32 0, align 4
@PAveHeaderBits1 = common global i32 0, align 4
@PAveHeaderBits3 = common global i32 0, align 4
@DDquant = common global i32 0, align 4
@MBPerRow = common global i32 0, align 4
@RC_MAX_QUANT = common global i32 0, align 4
@RC_MIN_QUANT = common global i32 0, align 4
@LowerBound = common global i64 0, align 8
@UpperBound1 = common global i64 0, align 8
@Np = internal unnamed_addr global i32 0, align 4
@Nb = internal unnamed_addr global i32 0, align 4
@GOPOverdue = common global i32 0, align 4
@TotalPFrame = common global i32 0, align 4
@MyInitialQp = common global i32 0, align 4
@PreviousQp2 = common global i32 0, align 4
@QPLastGOP = common global i32 0, align 4
@FrameQPBuffer = common global i32 0, align 4
@QPLastPFrame = common global i32 0, align 4
@FieldQPBuffer = common global i32 0, align 4
@PAverageQp = common global i32 0, align 4
@Pm_Qp = common global i32 0, align 4
@PAveFrameQP = common global i32 0, align 4
@PreviousQp1 = common global i32 0, align 4
@NumberofBFrames = common global i32 0, align 4
@TargetBufferLevel = common global double 0.000000e+00, align 8
@DeltaP = common global double 0.000000e+00, align 8
@Wp = common global double 0.000000e+00, align 8
@AWp = common global double 0.000000e+00, align 8
@AWb = common global double 0.000000e+00, align 8
@Wb = common global double 0.000000e+00, align 8
@T = common global i64 0, align 8
@T1 = common global i64 0, align 8
@UpperBound2 = common global i64 0, align 8
@T_field = internal unnamed_addr global i32 0, align 4
@TotalFrameQP = common global i32 0, align 4
@NumberofBasicUnit = common global i32 0, align 4
@bits_topfield = internal unnamed_addr global i32 0, align 4
@diffy = common global [16 x [16 x i32]] zeroinitializer, align 16
@m_Qc = common global i32 0, align 4
@Pm_Hp = common global i32 0, align 4
@active_sps = external global %struct.seq_parameter_set_rbsp_t*
@m_X1 = common global double 0.000000e+00, align 8
@m_X2 = common global double 0.000000e+00, align 8
@m_Hp = common global i32 0, align 4
@m_Qp = common global i32 0, align 4
@DuantQp = common global i32 0, align 4
@MADPictureC1 = common global double 0.000000e+00, align 8
@MADPictureC2 = common global double 0.000000e+00, align 8
@PreviousPictureMAD = common global double 0.000000e+00, align 8
@CurrentFrameMAD = common global double 0.000000e+00, align 8
@m_Qstep = common global double 0.000000e+00, align 8
@PAveHeaderBits2 = common global i32 0, align 4
@FrameAveHeaderBits = common global i32 0, align 4
@FieldAveHeaderBits = common global i32 0, align 4
@TotalBasicUnitBits = common global i32 0, align 4
@TotalBUMAD = common global double 0.000000e+00, align 8
@CurrentBUMAD = common global double 0.000000e+00, align 8
@CodedBasicUnit = common global i32 0, align 4
@m_rgQp = common global [21 x double] zeroinitializer, align 16
@m_rgRp = common global [21 x double] zeroinitializer, align 16
@PreviousFrameMAD = common global double 0.000000e+00, align 8
@m_rgRejected = common global [21 x i32] zeroinitializer, align 16
@PictureMAD = common global [21 x double] zeroinitializer, align 16
@ReferenceMAD = common global [21 x double] zeroinitializer, align 16
@PictureRejected = common global [21 x i32] zeroinitializer, align 16
@QP2Qstep.QP2QSTEP = internal unnamed_addr constant [6 x double] [double 6.250000e-01, double 6.875000e-01, double 8.125000e-01, double 8.750000e-01, double 1.000000e+00, double 1.125000e+00], align 16
@PreAveMBHeader = common global i32 0, align 4
@CurAveMBHeader = common global i32 0, align 4
@AverageMADPreviousFrame = common global double 0.000000e+00, align 8
@diffyy = common global [16 x [16 x i32]] zeroinitializer, align 16
@diffy8 = common global [16 x [16 x i32]] zeroinitializer, align 16
@BitRate = common global %struct._IO_FILE* null, align 8

; Function Attrs: nounwind optsize uwtable
define void @rc_alloc() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %FrameSizeInMbs = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 111
  %1 = load i32* %FrameSizeInMbs, align 4, !tbaa !3
  %conv = zext i32 %1 to i64
  %call = tail call noalias i8* @calloc(i64 %conv, i64 8) #7
  %2 = bitcast i8* %call to double*
  %MADofMB = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 131
  store double* %2, double** %MADofMB, align 8, !tbaa !0
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MADofMB1 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 131
  %4 = load double** %MADofMB1, align 8, !tbaa !0
  %cmp = icmp eq double* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str, i64 0, i64 0)) #7
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = phi %struct.ImageParameters* [ %.pre, %if.then ], [ %3, %entry ]
  %FrameSizeInMbs3 = getelementptr inbounds %struct.ImageParameters* %5, i64 0, i32 111
  %6 = load i32* %FrameSizeInMbs3, align 4, !tbaa !3
  %7 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %basicunit = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 130
  %8 = load i32* %basicunit, align 4, !tbaa !3
  %div = udiv i32 %6, %8
  %conv4 = zext i32 %div to i64
  %call5 = tail call noalias i8* @calloc(i64 %conv4, i64 8) #7
  %9 = bitcast i8* %call5 to double*
  store double* %9, double** @BUPFMAD, align 8, !tbaa !0
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0)) #7
  %.pre37 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %.pre38 = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %10 = phi %struct.InputParameters* [ %.pre38, %if.then8 ], [ %7, %if.end ]
  %11 = phi %struct.ImageParameters* [ %.pre37, %if.then8 ], [ %5, %if.end ]
  %FrameSizeInMbs10 = getelementptr inbounds %struct.ImageParameters* %11, i64 0, i32 111
  %12 = load i32* %FrameSizeInMbs10, align 4, !tbaa !3
  %basicunit11 = getelementptr inbounds %struct.InputParameters* %10, i64 0, i32 130
  %13 = load i32* %basicunit11, align 4, !tbaa !3
  %div12 = udiv i32 %12, %13
  %conv13 = zext i32 %div12 to i64
  %call14 = tail call noalias i8* @calloc(i64 %conv13, i64 8) #7
  %14 = bitcast i8* %call14 to double*
  store double* %14, double** @BUCFMAD, align 8, !tbaa !0
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end9
  tail call void @no_mem_exit(i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0)) #7
  %.pre39 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %.pre40 = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end9
  %15 = phi %struct.InputParameters* [ %.pre40, %if.then17 ], [ %10, %if.end9 ]
  %16 = phi %struct.ImageParameters* [ %.pre39, %if.then17 ], [ %11, %if.end9 ]
  %FrameSizeInMbs19 = getelementptr inbounds %struct.ImageParameters* %16, i64 0, i32 111
  %17 = load i32* %FrameSizeInMbs19, align 4, !tbaa !3
  %basicunit20 = getelementptr inbounds %struct.InputParameters* %15, i64 0, i32 130
  %18 = load i32* %basicunit20, align 4, !tbaa !3
  %div21 = udiv i32 %17, %18
  %conv22 = zext i32 %div21 to i64
  %call23 = tail call noalias i8* @calloc(i64 %conv22, i64 8) #7
  %19 = bitcast i8* %call23 to double*
  store double* %19, double** @FCBUCFMAD, align 8, !tbaa !0
  %cmp24 = icmp eq i8* %call23, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end18
  tail call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8]* @.str3, i64 0, i64 0)) #7
  %.pre41 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %.pre42 = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end18
  %20 = phi %struct.InputParameters* [ %.pre42, %if.then26 ], [ %15, %if.end18 ]
  %21 = phi %struct.ImageParameters* [ %.pre41, %if.then26 ], [ %16, %if.end18 ]
  %FrameSizeInMbs28 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 111
  %22 = load i32* %FrameSizeInMbs28, align 4, !tbaa !3
  %basicunit29 = getelementptr inbounds %struct.InputParameters* %20, i64 0, i32 130
  %23 = load i32* %basicunit29, align 4, !tbaa !3
  %div30 = udiv i32 %22, %23
  %conv31 = zext i32 %div30 to i64
  %call32 = tail call noalias i8* @calloc(i64 %conv31, i64 8) #7
  %24 = bitcast i8* %call32 to double*
  store double* %24, double** @FCBUPFMAD, align 8, !tbaa !0
  %cmp33 = icmp eq i8* %call32, null
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end27
  tail call void @no_mem_exit(i8* getelementptr inbounds ([25 x i8]* @.str4, i64 0, i64 0)) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end27
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @rc_free() #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MADofMB = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 131
  %1 = load double** %MADofMB, align 8, !tbaa !0
  %cmp = icmp eq double* %1, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast double* %1 to i8*
  tail call void @free(i8* %2) #7
  %3 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %MADofMB2 = getelementptr inbounds %struct.ImageParameters* %3, i64 0, i32 131
  store double* null, double** %MADofMB2, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = load double** @BUPFMAD, align 8, !tbaa !0
  %cmp3 = icmp eq double* %4, null
  br i1 %cmp3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  %5 = bitcast double* %4 to i8*
  tail call void @free(i8* %5) #7
  store double* null, double** @BUPFMAD, align 8, !tbaa !0
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then4
  %6 = load double** @BUCFMAD, align 8, !tbaa !0
  %cmp6 = icmp eq double* %6, null
  br i1 %cmp6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  %7 = bitcast double* %6 to i8*
  tail call void @free(i8* %7) #7
  store double* null, double** @BUCFMAD, align 8, !tbaa !0
  br label %if.end8

if.end8:                                          ; preds = %if.end5, %if.then7
  %8 = load double** @FCBUCFMAD, align 8, !tbaa !0
  %cmp9 = icmp eq double* %8, null
  br i1 %cmp9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end8
  %9 = bitcast double* %8 to i8*
  tail call void @free(i8* %9) #7
  store double* null, double** @FCBUCFMAD, align 8, !tbaa !0
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.then10
  %10 = load double** @FCBUPFMAD, align 8, !tbaa !0
  %cmp12 = icmp eq double* %10, null
  br i1 %cmp12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  %11 = bitcast double* %10 to i8*
  tail call void @free(i8* %11) #7
  store double* null, double** @FCBUPFMAD, align 8, !tbaa !0
  br label %if.end14

if.end14:                                         ; preds = %if.end11, %if.then13
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @rc_init_seq() #0 {
entry:
  store i32 0, i32* @Xp, align 4, !tbaa !3
  store i32 0, i32* @Xb, align 4, !tbaa !3
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %bit_rate = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 128
  %1 = load i32* %bit_rate, align 4, !tbaa !3
  %conv = sitofp i32 %1 to double
  store double %conv, double* @bit_rate, align 8, !tbaa !4
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %framerate = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 12
  %3 = load float* %framerate, align 4, !tbaa !5
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34
  %4 = load i32* %successive_Bframe, align 4, !tbaa !3
  %add = add nsw i32 %4, 1
  %conv1 = sitofp i32 %add to float
  %mul = fmul float %3, %conv1
  %jumpd = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 5
  %5 = load i32* %jumpd, align 4, !tbaa !3
  %add2 = add nsw i32 %5, 1
  %conv3 = sitofp i32 %add2 to float
  %div = fdiv float %mul, %conv3
  %conv4 = fpext float %div to double
  store double %conv4, double* @frame_rate, align 8, !tbaa !4
  store double %conv, double* @PreviousBit_Rate, align 8, !tbaa !4
  %height = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 15
  %6 = load i32* %height, align 4, !tbaa !3
  %width = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 13
  %7 = load i32* %width, align 4, !tbaa !3
  %mul5 = mul nsw i32 %7, %6
  %div6 = sdiv i32 %mul5, 256
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 136
  store i32 %div6, i32* %Frame_Total_Number_MB, align 4, !tbaa !3
  %basicunit = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 130
  %8 = load i32* %basicunit, align 4, !tbaa !3
  %cmp = icmp sgt i32 %8, %div6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %div6, i32* %basicunit, align 4, !tbaa !3
  %.pre = load i32* %Frame_Total_Number_MB, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = phi i32 [ %.pre, %if.then ], [ %div6, %entry ]
  %10 = phi i32 [ %div6, %if.then ], [ %8, %entry ]
  %cmp13 = icmp slt i32 %10, %9
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end
  %div18 = sdiv i32 %9, %10
  store i32 %div18, i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end
  store double 4.000000e+00, double* @MINVALUE, align 8, !tbaa !4
  %mul20 = fmul double %conv, 2.560000e+00
  store double %mul20, double* @BufferSize, align 8, !tbaa !4
  store double 0.000000e+00, double* @CurrentBufferFullness, align 8, !tbaa !4
  store double 0.000000e+00, double* @GOPTargetBufferLevel, align 8, !tbaa !4
  %mul21 = fmul double %mul20, 8.000000e-01
  store double %mul21, double* @InitialDelayOffset, align 8, !tbaa !4
  store i32 0, i32* @m_windowSize, align 4, !tbaa !3
  store i32 0, i32* @MADm_windowSize, align 4, !tbaa !3
  %NumberofCodedBFrame = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 126
  store i32 0, i32* %NumberofCodedBFrame, align 4, !tbaa !3
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 127
  store i32 0, i32* %NumberofCodedPFrame, align 4, !tbaa !3
  %NumberofGOP = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 128
  store i32 0, i32* %NumberofGOP, align 4, !tbaa !3
  store i32 0, i32* @R, align 4, !tbaa !3
  %11 = load i32* %successive_Bframe, align 4, !tbaa !3
  %cmp23 = icmp sgt i32 %11, 0
  %. = select i1 %cmp23, double 2.500000e-01, double 5.000000e-01
  %.89 = select i1 %cmp23, double 9.000000e-01, double 5.000000e-01
  store double %., double* @GAMMAP, align 8, !tbaa !4
  store double %.89, double* @BETAP, align 8, !tbaa !4
  store i32 0, i32* @PPreHeader, align 4, !tbaa !3
  store double %conv, double* @Pm_X1, align 8, !tbaa !4
  store double 0.000000e+00, double* @Pm_X2, align 8, !tbaa !4
  store double 1.000000e+00, double* @PMADPictureC1, align 8, !tbaa !4
  store double 0.000000e+00, double* @PMADPictureC2, align 8, !tbaa !4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([20 x double]* @Pm_rgQp to i8*), i8 0, i64 160, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([20 x double]* @Pm_rgRp to i8*), i8 0, i64 160, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([21 x double]* @PPictureMAD to i8*), i8 0, i64 168, i32 16, i1 false)
  store i32 2, i32* @PDuantQp, align 4, !tbaa !3
  store i32 0, i32* @PAveHeaderBits1, align 4, !tbaa !3
  store i32 0, i32* @PAveHeaderBits3, align 4, !tbaa !3
  %12 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %cmp34 = icmp sgt i32 %12, 8
  %.90 = select i1 %cmp34, i32 1, i32 2
  store i32 %.90, i32* @DDquant, align 4, !tbaa !3
  %13 = load i32* %width, align 4, !tbaa !3
  %div40 = sdiv i32 %13, 16
  store i32 %div40, i32* @MBPerRow, align 4, !tbaa !3
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 134
  store i32 0, i32* %FieldControl, align 4, !tbaa !3
  store i32 51, i32* @RC_MAX_QUANT, align 4, !tbaa !3
  store i32 0, i32* @RC_MIN_QUANT, align 4, !tbaa !3
  %14 = load i32* %width, align 4, !tbaa !3
  %conv43 = sitofp i32 %14 to double
  %mul44 = fmul double %conv4, %conv43
  %15 = load i32* %height, align 4, !tbaa !3
  %conv46 = sitofp i32 %15 to double
  %mul47 = fmul double %mul44, %conv46
  %div48 = fdiv double %conv, %mul47
  switch i32 %14, label %if.else58 [
    i32 176, label %if.end60
    i32 352, label %if.then57
  ]

if.then57:                                        ; preds = %if.end19
  br label %if.end60

if.else58:                                        ; preds = %if.end19
  br label %if.end60

if.end60:                                         ; preds = %if.end19, %if.then57, %if.else58
  %L2.0 = phi double [ 6.000000e-01, %if.then57 ], [ 1.400000e+00, %if.else58 ], [ 3.000000e-01, %if.end19 ]
  %L3.0 = phi double [ 1.200000e+00, %if.then57 ], [ 2.400000e+00, %if.else58 ], [ 6.000000e-01, %if.end19 ]
  %L1.0 = phi double [ 2.000000e-01, %if.then57 ], [ 6.000000e-01, %if.else58 ], [ 1.000000e-01, %if.end19 ]
  %SeinitialQP = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 129
  %16 = load i32* %SeinitialQP, align 4, !tbaa !3
  %cmp61 = icmp eq i32 %16, 0
  br i1 %cmp61, label %if.then63, label %if.end80

if.then63:                                        ; preds = %if.end60
  %cmp64 = fcmp ugt double %div48, %L1.0
  br i1 %cmp64, label %if.else67, label %if.end78

if.else67:                                        ; preds = %if.then63
  %cmp68 = fcmp ugt double %div48, %L2.0
  br i1 %cmp68, label %if.else71, label %if.end78

if.else71:                                        ; preds = %if.else67
  %cmp72 = fcmp ugt double %div48, %L3.0
  %.91 = select i1 %cmp72, i32 10, i32 20
  br label %if.end78

if.end78:                                         ; preds = %if.else71, %if.else67, %if.then63
  %qp.0 = phi i32 [ 35, %if.then63 ], [ 25, %if.else67 ], [ %.91, %if.else71 ]
  store i32 %qp.0, i32* %SeinitialQP, align 4, !tbaa !3
  br label %if.end80

if.end80:                                         ; preds = %if.end78, %if.end60
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @rc_init_GOP(i32 %np, i32 %nb) #0 {
entry:
  %0 = load i32* @R, align 4, !tbaa !3
  %conv = sitofp i32 %0 to double
  %1 = load double* @bit_rate, align 8, !tbaa !4
  %2 = load double* @frame_rate, align 8, !tbaa !4
  %div = fdiv double %1, %2
  %add = fadd double %conv, %div
  %conv1 = fptosi double %add to i64
  store i64 %conv1, i64* @LowerBound, align 8, !tbaa !6
  %3 = load double* @InitialDelayOffset, align 8, !tbaa !4
  %add3 = fadd double %conv, %3
  %conv4 = fptosi double %add3 to i64
  store i64 %conv4, i64* @UpperBound1, align 8, !tbaa !6
  %add5 = add i32 %np, 1
  %add6 = add i32 %add5, %nb
  %conv7 = sitofp i32 %add6 to double
  %mul = fmul double %conv7, %1
  %div8 = fdiv double %mul, %2
  %add9 = fadd double %div8, 5.000000e-01
  %call = tail call double @floor(double %add9) #8
  %conv10 = fptosi double %call to i32
  %add11 = add nsw i32 %0, %conv10
  store i32 %add11, i32* @R, align 4, !tbaa !3
  store i32 %np, i32* @Np, align 4, !tbaa !3
  store i32 %nb, i32* @Nb, align 4, !tbaa !3
  store i32 0, i32* @GOPOverdue, align 4, !tbaa !1
  %4 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %IFLAG = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 137
  store i32 1, i32* %IFLAG, align 4, !tbaa !3
  store i32 %np, i32* @TotalPFrame, align 4, !tbaa !3
  %NumberofGOP = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 128
  %5 = load i32* %NumberofGOP, align 4, !tbaa !3
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %NumberofGOP, align 4, !tbaa !3
  %cmp18 = icmp eq i32 %5, 0
  %6 = load %struct.InputParameters** @input, align 8, !tbaa !0
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %entry
  %SeinitialQP = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 129
  %7 = load i32* %SeinitialQP, align 4, !tbaa !3
  store i32 %7, i32* @MyInitialQp, align 4, !tbaa !3
  %sub21 = add nsw i32 %7, -1
  store i32 %sub21, i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %7, i32* @QPLastGOP, align 4, !tbaa !3
  %TotalQpforPPicture84.pre = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 129
  %NumberofPPicture85.pre = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 130
  br label %if.end83

if.else:                                          ; preds = %entry
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 91
  %8 = load i32* %PicInterlace, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %8, 2
  br i1 %cmp22, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 92
  %9 = load i32* %MbInterlace, align 4, !tbaa !3
  %tobool = icmp eq i32 %9, 0
  br i1 %tobool, label %lor.lhs.false.if.end33_crit_edge, label %if.then24

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  %.pre = load i32* @QPLastPFrame, align 4, !tbaa !3
  %TotalQpforPPicture34.pre = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 129
  br label %if.end33

if.then24:                                        ; preds = %lor.lhs.false, %if.else
  %FieldFrame = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 135
  %10 = load i32* %FieldFrame, align 4, !tbaa !3
  %cmp25 = icmp eq i32 %10, 1
  br i1 %cmp25, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.then24
  %11 = load i32* @FrameQPBuffer, align 4, !tbaa !3
  %TotalQpforPPicture = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 129
  %12 = load i32* %TotalQpforPPicture, align 4, !tbaa !3
  %add28 = add nsw i32 %12, %11
  store i32 %add28, i32* %TotalQpforPPicture, align 4, !tbaa !3
  %13 = load i32* @FrameQPBuffer, align 4, !tbaa !3
  store i32 %13, i32* @QPLastPFrame, align 4, !tbaa !3
  br label %if.end33

if.else29:                                        ; preds = %if.then24
  %14 = load i32* @FieldQPBuffer, align 4, !tbaa !3
  %TotalQpforPPicture30 = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 129
  %15 = load i32* %TotalQpforPPicture30, align 4, !tbaa !3
  %add31 = add nsw i32 %15, %14
  store i32 %add31, i32* %TotalQpforPPicture30, align 4, !tbaa !3
  %16 = load i32* @FieldQPBuffer, align 4, !tbaa !3
  store i32 %16, i32* @QPLastPFrame, align 4, !tbaa !3
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false.if.end33_crit_edge, %if.then27, %if.else29
  %TotalQpforPPicture34.pre-phi = phi i32* [ %TotalQpforPPicture34.pre, %lor.lhs.false.if.end33_crit_edge ], [ %TotalQpforPPicture, %if.then27 ], [ %TotalQpforPPicture30, %if.else29 ]
  %17 = phi i32 [ %.pre, %lor.lhs.false.if.end33_crit_edge ], [ %13, %if.then27 ], [ %16, %if.else29 ]
  %18 = load i32* %TotalQpforPPicture34.pre-phi, align 4, !tbaa !3
  %conv35 = sitofp i32 %18 to double
  %NumberofPPicture = getelementptr inbounds %struct.ImageParameters* %4, i64 0, i32 130
  %19 = load i32* %NumberofPPicture, align 4, !tbaa !3
  %conv37 = sitofp i32 %19 to double
  %div38 = fdiv double %conv35, %conv37
  %add39 = fadd double %div38, 5.000000e-01
  %conv40 = fptosi double %add39 to i32
  %div45 = fdiv double %conv7, 1.500000e+01
  %add46 = fadd double %div45, 5.000000e-01
  %conv47 = fptosi double %add46 to i32
  %cmp48 = icmp sgt i32 %conv47, 2
  %.conv47 = select i1 %cmp48, i32 2, i32 %conv47
  %sub52 = sub nsw i32 %conv40, %.conv47
  %sub53 = add nsw i32 %17, -2
  %cmp54 = icmp sgt i32 %sub52, %sub53
  %dec = sext i1 %cmp54 to i32
  %dec.sub52 = add nsw i32 %sub52, %dec
  %20 = load i32* @QPLastGOP, align 4, !tbaa !3
  %sub58 = add nsw i32 %20, -2
  %cmp59 = icmp slt i32 %sub58, %dec.sub52
  %.sub58 = select i1 %cmp59, i32 %dec.sub52, i32 %sub58
  %add62 = add nsw i32 %20, 2
  %cmp63 = icmp slt i32 %add62, %.sub58
  %cond69 = select i1 %cmp63, i32 %add62, i32 %.sub58
  %21 = load i32* @RC_MAX_QUANT, align 4, !tbaa !3
  %cmp70 = icmp slt i32 %21, %cond69
  %cond75 = select i1 %cmp70, i32 %21, i32 %cond69
  %22 = load i32* @RC_MIN_QUANT, align 4, !tbaa !3
  %cmp76 = icmp slt i32 %22, %cond75
  %cond81 = select i1 %cmp76, i32 %cond75, i32 %22
  store i32 %cond81, i32* @PAverageQp, align 4, !tbaa !3
  store i32 %cond81, i32* @MyInitialQp, align 4, !tbaa !3
  store i32 %cond81, i32* @QPLastGOP, align 4, !tbaa !3
  store i32 %cond81, i32* @Pm_Qp, align 4, !tbaa !3
  store i32 %cond81, i32* @PAveFrameQP, align 4, !tbaa !3
  %23 = load i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %23, i32* @PreviousQp1, align 4, !tbaa !3
  %sub82 = add nsw i32 %cond81, -1
  store i32 %sub82, i32* @PreviousQp2, align 4, !tbaa !3
  br label %if.end83

if.end83:                                         ; preds = %if.end33, %if.then20
  %NumberofPPicture85.pre-phi = phi i32* [ %NumberofPPicture, %if.end33 ], [ %NumberofPPicture85.pre, %if.then20 ]
  %TotalQpforPPicture84.pre-phi = phi i32* [ %TotalQpforPPicture34.pre-phi, %if.end33 ], [ %TotalQpforPPicture84.pre, %if.then20 ]
  store i32 0, i32* %TotalQpforPPicture84.pre-phi, align 4, !tbaa !3
  store i32 0, i32* %NumberofPPicture85.pre-phi, align 4, !tbaa !3
  store i32 0, i32* @NumberofBFrames, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @floor(double) #3

; Function Attrs: nounwind optsize uwtable
define void @rc_init_pict(i32 %fieldpic, i32 %topfield, i32 %targetcomputation) #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 92
  %1 = load i32* %MbInterlace, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 136
  %2 = load i32* %Frame_Total_Number_MB, align 4, !tbaa !3
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 139
  %3 = load i32* %BasicUnit, align 4, !tbaa !3
  %div = sdiv i32 %2, %3
  store i32 %div, i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %NumberofCodedMacroBlocks = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 138
  store i32 0, i32* %NumberofCodedMacroBlocks, align 4, !tbaa !3
  %channel_type = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 131
  %4 = load i32* %channel_type, align 4, !tbaa !3
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then1, label %if.end9

if.then1:                                         ; preds = %if.end
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 127
  %5 = load i32* %NumberofCodedPFrame, align 4, !tbaa !3
  switch i32 %5, label %if.end9 [
    i32 58, label %if.then3
    i32 59, label %if.then6
  ]

if.then3:                                         ; preds = %if.then1
  %6 = load double* @bit_rate, align 8, !tbaa !4
  %mul = fmul double %6, 1.500000e+00
  store double %mul, double* @bit_rate, align 8, !tbaa !4
  br label %if.end9

if.then6:                                         ; preds = %if.then1
  %7 = load double* @bit_rate, align 8, !tbaa !4
  store double %7, double* @PreviousBit_Rate, align 8, !tbaa !4
  br label %if.end9

if.end9:                                          ; preds = %if.then1, %if.then3, %if.then6, %if.end
  %tobool10 = icmp ne i32 %fieldpic, 0
  %tobool10.not = xor i1 %tobool10, true
  %tobool11 = icmp eq i32 %topfield, 0
  %or.cond = and i1 %tobool11, %tobool10.not
  %tobool12 = icmp eq i32 %targetcomputation, 0
  %or.cond441 = or i1 %or.cond, %tobool12
  br i1 %or.cond441, label %if.end383, label %if.then13

if.then13:                                        ; preds = %if.end9
  %type = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 6
  %8 = load i32* %type, align 4, !tbaa !3
  switch i32 %8, label %if.end383 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb172
  ]

sw.bb:                                            ; preds = %if.then13
  %9 = load double* @PreviousBit_Rate, align 8, !tbaa !4
  %10 = load double* @bit_rate, align 8, !tbaa !4
  %cmp14 = fcmp une double %9, %10
  br i1 %cmp14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %sw.bb
  %sub = fsub double %10, %9
  %11 = load i32* @Np, align 4, !tbaa !3
  %12 = load i32* @Nb, align 4, !tbaa !3
  %add = add nsw i32 %12, %11
  %conv = sitofp i32 %add to double
  %mul16 = fmul double %sub, %conv
  %13 = load double* @frame_rate, align 8, !tbaa !4
  %div17 = fdiv double %mul16, %13
  %add18 = fadd double %div17, 5.000000e-01
  %call = tail call double @floor(double %add18) #8
  %conv19 = fptosi double %call to i32
  %14 = load i32* @R, align 4, !tbaa !3
  %add20 = add nsw i32 %14, %conv19
  store i32 %add20, i32* @R, align 4, !tbaa !3
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %sw.bb
  %BasicUnit22 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 139
  %15 = load i32* %BasicUnit22, align 4, !tbaa !3
  %Frame_Total_Number_MB23 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 136
  %16 = load i32* %Frame_Total_Number_MB23, align 4, !tbaa !3
  %cmp24 = icmp eq i32 %15, %16
  br i1 %cmp24, label %if.then26, label %if.else43

if.then26:                                        ; preds = %if.end21
  %NumberofPPicture = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 130
  %17 = load i32* %NumberofPPicture, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %17, 1
  br i1 %cmp27, label %if.then29, label %if.else35

if.then29:                                        ; preds = %if.then26
  %18 = load double* @CurrentBufferFullness, align 8, !tbaa !4
  %19 = load double* @GOPTargetBufferLevel, align 8, !tbaa !4
  %sub30 = fsub double %18, %19
  %20 = load i32* @TotalPFrame, align 4, !tbaa !3
  %sub31 = add nsw i32 %20, -1
  %conv32 = sitofp i32 %sub31 to double
  %div33 = fdiv double %sub30, %conv32
  store double %div33, double* @DeltaP, align 8, !tbaa !4
  %sub34 = fsub double %18, %div33
  store double %sub34, double* @TargetBufferLevel, align 8, !tbaa !4
  br label %if.end118

if.else35:                                        ; preds = %if.then26
  %cmp37 = icmp sgt i32 %17, 1
  br i1 %cmp37, label %if.then39, label %if.end118

if.then39:                                        ; preds = %if.else35
  %21 = load double* @DeltaP, align 8, !tbaa !4
  %22 = load double* @TargetBufferLevel, align 8, !tbaa !4
  %sub40 = fsub double %22, %21
  store double %sub40, double* @TargetBufferLevel, align 8, !tbaa !4
  br label %if.end118

if.else43:                                        ; preds = %if.end21
  %NumberofCodedPFrame44 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 127
  %23 = load i32* %NumberofCodedPFrame44, align 4, !tbaa !3
  %cmp45 = icmp sgt i32 %23, 0
  br i1 %cmp45, label %if.then47, label %if.end74

if.then47:                                        ; preds = %if.else43
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 91
  %24 = load i32* %PicInterlace, align 4, !tbaa !3
  %cmp48 = icmp eq i32 %24, 2
  br i1 %cmp48, label %land.lhs.true53, label %lor.lhs.false50

lor.lhs.false50:                                  ; preds = %if.then47
  %25 = load i32* %MbInterlace, align 4, !tbaa !3
  %tobool52 = icmp eq i32 %25, 0
  br i1 %tobool52, label %for.cond62.preheader, label %land.lhs.true53

land.lhs.true53:                                  ; preds = %lor.lhs.false50, %if.then47
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 134
  %26 = load i32* %FieldControl, align 4, !tbaa !3
  %cmp54 = icmp eq i32 %26, 1
  br i1 %cmp54, label %for.cond.preheader, label %for.cond62.preheader

for.cond62.preheader:                             ; preds = %lor.lhs.false50, %land.lhs.true53
  %27 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %cmp63448 = icmp sgt i32 %27, 0
  br i1 %cmp63448, label %for.body65.lr.ph, label %if.end74

for.body65.lr.ph:                                 ; preds = %for.cond62.preheader
  %28 = load double** @BUCFMAD, align 8, !tbaa !0
  %29 = load double** @BUPFMAD, align 8, !tbaa !0
  br label %for.body65

for.cond.preheader:                               ; preds = %land.lhs.true53
  %30 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %cmp57445 = icmp sgt i32 %30, 0
  br i1 %cmp57445, label %for.body.lr.ph, label %if.end74

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %31 = load double** @FCBUCFMAD, align 8, !tbaa !0
  %32 = load double** @FCBUPFMAD, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %31, i64 %indvars.iv
  %33 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx60 = getelementptr inbounds double* %32, i64 %indvars.iv
  store double %33, double* %arrayidx60, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %34 = trunc i64 %indvars.iv.next to i32
  %cmp57 = icmp slt i32 %34, %30
  br i1 %cmp57, label %for.body, label %if.end74

for.body65:                                       ; preds = %for.body65.lr.ph, %for.body65
  %indvars.iv450 = phi i64 [ 0, %for.body65.lr.ph ], [ %indvars.iv.next451, %for.body65 ]
  %arrayidx67 = getelementptr inbounds double* %28, i64 %indvars.iv450
  %35 = load double* %arrayidx67, align 8, !tbaa !4
  %arrayidx69 = getelementptr inbounds double* %29, i64 %indvars.iv450
  store double %35, double* %arrayidx69, align 8, !tbaa !4
  %indvars.iv.next451 = add i64 %indvars.iv450, 1
  %36 = trunc i64 %indvars.iv.next451 to i32
  %cmp63 = icmp slt i32 %36, %27
  br i1 %cmp63, label %for.body65, label %if.end74

if.end74:                                         ; preds = %for.cond62.preheader, %for.body65, %for.cond.preheader, %for.body, %if.else43
  %NumberofGOP = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 128
  %37 = load i32* %NumberofGOP, align 4, !tbaa !3
  %cmp75 = icmp eq i32 %37, 1
  br i1 %cmp75, label %if.then77, label %if.else95

if.then77:                                        ; preds = %if.end74
  %NumberofPPicture78 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 130
  %38 = load i32* %NumberofPPicture78, align 4, !tbaa !3
  %cmp79 = icmp eq i32 %38, 1
  br i1 %cmp79, label %if.then81, label %if.else87

if.then81:                                        ; preds = %if.then77
  %39 = load double* @CurrentBufferFullness, align 8, !tbaa !4
  %40 = load double* @GOPTargetBufferLevel, align 8, !tbaa !4
  %sub82 = fsub double %39, %40
  %41 = load i32* @TotalPFrame, align 4, !tbaa !3
  %sub83 = add nsw i32 %41, -1
  %conv84 = sitofp i32 %sub83 to double
  %div85 = fdiv double %sub82, %conv84
  store double %div85, double* @DeltaP, align 8, !tbaa !4
  %sub86 = fsub double %39, %div85
  store double %sub86, double* @TargetBufferLevel, align 8, !tbaa !4
  br label %if.end118

if.else87:                                        ; preds = %if.then77
  %cmp89 = icmp sgt i32 %38, 1
  br i1 %cmp89, label %if.then91, label %if.end118

if.then91:                                        ; preds = %if.else87
  %42 = load double* @DeltaP, align 8, !tbaa !4
  %43 = load double* @TargetBufferLevel, align 8, !tbaa !4
  %sub92 = fsub double %43, %42
  store double %sub92, double* @TargetBufferLevel, align 8, !tbaa !4
  br label %if.end118

if.else95:                                        ; preds = %if.end74
  %cmp97 = icmp sgt i32 %37, 1
  br i1 %cmp97, label %if.then99, label %if.end118

if.then99:                                        ; preds = %if.else95
  %NumberofPPicture100 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 130
  %44 = load i32* %NumberofPPicture100, align 4, !tbaa !3
  %cmp101 = icmp eq i32 %44, 0
  br i1 %cmp101, label %if.then103, label %if.else108

if.then103:                                       ; preds = %if.then99
  %45 = load double* @CurrentBufferFullness, align 8, !tbaa !4
  %46 = load double* @GOPTargetBufferLevel, align 8, !tbaa !4
  %sub104 = fsub double %45, %46
  %47 = load i32* @TotalPFrame, align 4, !tbaa !3
  %conv105 = sitofp i32 %47 to double
  %div106 = fdiv double %sub104, %conv105
  store double %div106, double* @DeltaP, align 8, !tbaa !4
  %sub107 = fsub double %45, %div106
  store double %sub107, double* @TargetBufferLevel, align 8, !tbaa !4
  br label %if.end118

if.else108:                                       ; preds = %if.then99
  %cmp110 = icmp sgt i32 %44, 0
  br i1 %cmp110, label %if.then112, label %if.end118

if.then112:                                       ; preds = %if.else108
  %48 = load double* @DeltaP, align 8, !tbaa !4
  %49 = load double* @TargetBufferLevel, align 8, !tbaa !4
  %sub113 = fsub double %49, %48
  store double %sub113, double* @TargetBufferLevel, align 8, !tbaa !4
  br label %if.end118

if.end118:                                        ; preds = %if.else108, %if.else95, %if.else87, %if.else35, %if.then91, %if.then81, %if.then103, %if.then112, %if.then29, %if.then39
  %NumberofCodedPFrame119 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 127
  %50 = load i32* %NumberofCodedPFrame119, align 4, !tbaa !3
  %cmp120 = icmp eq i32 %50, 1
  br i1 %cmp120, label %if.else143.thread, label %if.end123

if.else143.thread:                                ; preds = %if.end118
  %51 = load double* @Wp, align 8, !tbaa !4
  store double %51, double* @AWp, align 8, !tbaa !4
  br label %if.end153

if.end123:                                        ; preds = %if.end118
  %.off = add i32 %50, -2
  %52 = icmp ult i32 %.off, 6
  br i1 %52, label %if.then131, label %if.else143

if.then131:                                       ; preds = %if.end123
  %53 = load double* @Wp, align 8, !tbaa !4
  %sub133 = add nsw i32 %50, -1
  %conv134 = sitofp i32 %sub133 to double
  %mul135 = fmul double %conv134, %53
  %conv137 = sitofp i32 %50 to double
  %div138 = fdiv double %mul135, %conv137
  %54 = load double* @AWp, align 8, !tbaa !4
  %div141 = fdiv double %54, %conv137
  %add142 = fadd double %div138, %div141
  store double %add142, double* @AWp, align 8, !tbaa !4
  br label %if.end153

if.else143:                                       ; preds = %if.end123
  %cmp129 = icmp sgt i32 %50, 1
  br i1 %cmp129, label %if.then147, label %if.end153

if.then147:                                       ; preds = %if.else143
  %55 = load double* @Wp, align 8, !tbaa !4
  %div148 = fmul double %55, 1.250000e-01
  %56 = load double* @AWp, align 8, !tbaa !4
  %mul149 = fmul double %56, 7.000000e+00
  %div150 = fmul double %mul149, 1.250000e-01
  %add151 = fadd double %div148, %div150
  store double %add151, double* @AWp, align 8, !tbaa !4
  br label %if.end153

if.end153:                                        ; preds = %if.else143.thread, %if.else143, %if.then147, %if.then131
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34
  %57 = load i32* %successive_Bframe, align 4, !tbaa !3
  %cmp154 = icmp sgt i32 %57, 0
  br i1 %cmp154, label %if.then156, label %sw.epilog

if.then156:                                       ; preds = %if.end153
  %58 = load double* @AWp, align 8, !tbaa !4
  %add158 = add nsw i32 %57, 1
  %conv159 = sitofp i32 %add158 to double
  %mul160 = fmul double %conv159, %58
  %59 = load double* @bit_rate, align 8, !tbaa !4
  %mul161 = fmul double %mul160, %59
  %60 = load double* @frame_rate, align 8, !tbaa !4
  %61 = load double* @AWb, align 8, !tbaa !4
  %conv163 = sitofp i32 %57 to double
  %mul164 = fmul double %conv163, %61
  %add165 = fadd double %58, %mul164
  %mul166 = fmul double %60, %add165
  %div167 = fdiv double %mul161, %mul166
  %div168 = fdiv double %59, %60
  %sub169 = fsub double %div167, %div168
  %62 = load double* @TargetBufferLevel, align 8, !tbaa !4
  %add170 = fadd double %62, %sub169
  store double %add170, double* @TargetBufferLevel, align 8, !tbaa !4
  br label %sw.epilog

sw.bb172:                                         ; preds = %if.then13
  %63 = load double* @PreviousBit_Rate, align 8, !tbaa !4
  %64 = load double* @bit_rate, align 8, !tbaa !4
  %cmp173 = fcmp une double %63, %64
  br i1 %cmp173, label %if.then175, label %if.end185

if.then175:                                       ; preds = %sw.bb172
  %sub176 = fsub double %64, %63
  %65 = load i32* @Np, align 4, !tbaa !3
  %66 = load i32* @Nb, align 4, !tbaa !3
  %add177 = add nsw i32 %66, %65
  %conv178 = sitofp i32 %add177 to double
  %mul179 = fmul double %sub176, %conv178
  %67 = load double* @frame_rate, align 8, !tbaa !4
  %div180 = fdiv double %mul179, %67
  %add181 = fadd double %div180, 5.000000e-01
  %call182 = tail call double @floor(double %add181) #8
  %conv183 = fptosi double %call182 to i32
  %68 = load i32* @R, align 4, !tbaa !3
  %add184 = add nsw i32 %68, %conv183
  store i32 %add184, i32* @R, align 4, !tbaa !3
  br label %if.end185

if.end185:                                        ; preds = %sw.bb172, %if.then175
  %NumberofCodedPFrame186 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 127
  %69 = load i32* %NumberofCodedPFrame186, align 4, !tbaa !3
  %cmp187 = icmp eq i32 %69, 1
  %NumberofCodedBFrame = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 126
  %70 = load i32* %NumberofCodedBFrame, align 4, !tbaa !3
  %cmp190 = icmp eq i32 %70, 1
  %or.cond457 = and i1 %cmp187, %cmp190
  br i1 %or.cond457, label %if.then192, label %if.else193

if.then192:                                       ; preds = %if.end185
  %71 = load double* @Wp, align 8, !tbaa !4
  store double %71, double* @AWp, align 8, !tbaa !4
  %72 = load double* @Wb, align 8, !tbaa !4
  store double %72, double* @AWb, align 8, !tbaa !4
  br label %sw.epilog

if.else193:                                       ; preds = %if.end185
  %cmp195 = icmp sgt i32 %70, 1
  br i1 %cmp195, label %if.then197, label %sw.epilog

if.then197:                                       ; preds = %if.else193
  %cmp199 = icmp slt i32 %70, 8
  %73 = load double* @Wb, align 8, !tbaa !4
  br i1 %cmp199, label %if.then201, label %if.else213

if.then201:                                       ; preds = %if.then197
  %sub203 = add nsw i32 %70, -1
  %conv204 = sitofp i32 %sub203 to double
  %mul205 = fmul double %conv204, %73
  %conv207 = sitofp i32 %70 to double
  %div208 = fdiv double %mul205, %conv207
  %74 = load double* @AWb, align 8, !tbaa !4
  %div211 = fdiv double %74, %conv207
  %add212 = fadd double %div208, %div211
  store double %add212, double* @AWb, align 8, !tbaa !4
  br label %sw.epilog

if.else213:                                       ; preds = %if.then197
  %div214 = fmul double %73, 1.250000e-01
  %75 = load double* @AWb, align 8, !tbaa !4
  %mul215 = fmul double %75, 7.000000e+00
  %div216 = fmul double %mul215, 1.250000e-01
  %add217 = fadd double %div214, %div216
  store double %add217, double* @AWb, align 8, !tbaa !4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else193, %if.end153, %if.then192, %if.then201, %if.else213, %if.then156
  %.pr = load i32* %type, align 4, !tbaa !3
  %cmp222 = icmp eq i32 %.pr, 0
  br i1 %cmp222, label %if.then224, label %if.end383

if.then224:                                       ; preds = %sw.epilog
  %BasicUnit225 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 139
  %76 = load i32* %BasicUnit225, align 4, !tbaa !3
  %Frame_Total_Number_MB226 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 136
  %77 = load i32* %Frame_Total_Number_MB226, align 4, !tbaa !3
  %cmp227 = icmp eq i32 %76, %77
  br i1 %cmp227, label %if.then229, label %if.else264

if.then229:                                       ; preds = %if.then224
  %NumberofCodedPFrame230 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 127
  %78 = load i32* %NumberofCodedPFrame230, align 4, !tbaa !3
  %cmp231 = icmp sgt i32 %78, 0
  br i1 %cmp231, label %if.then233, label %if.end349

if.then233:                                       ; preds = %if.then229
  %79 = load double* @Wp, align 8, !tbaa !4
  %80 = load i32* @R, align 4, !tbaa !3
  %conv234 = sitofp i32 %80 to double
  %mul235 = fmul double %79, %conv234
  %81 = load i32* @Np, align 4, !tbaa !3
  %conv236 = sitofp i32 %81 to double
  %mul237 = fmul double %79, %conv236
  %82 = load i32* @Nb, align 4, !tbaa !3
  %conv238 = sitofp i32 %82 to double
  %83 = load double* @Wb, align 8, !tbaa !4
  %mul239 = fmul double %conv238, %83
  %add240 = fadd double %mul237, %mul239
  %div241 = fdiv double %mul235, %add240
  %add242 = fadd double %div241, 5.000000e-01
  %call243 = tail call double @floor(double %add242) #8
  %conv244 = fptosi double %call243 to i64
  %84 = load double* @bit_rate, align 8, !tbaa !4
  %85 = load double* @frame_rate, align 8, !tbaa !4
  %div245 = fdiv double %84, %85
  %86 = load double* @GAMMAP, align 8, !tbaa !4
  %87 = load double* @CurrentBufferFullness, align 8, !tbaa !4
  %88 = load double* @TargetBufferLevel, align 8, !tbaa !4
  %sub246 = fsub double %87, %88
  %mul247 = fmul double %86, %sub246
  %sub248 = fsub double %div245, %mul247
  %add249 = fadd double %sub248, 5.000000e-01
  %call250 = tail call double @floor(double %add249) #8
  %conv251 = fptosi double %call250 to i64
  %cmp252 = icmp sgt i64 %conv251, 0
  %cond = select i1 %cmp252, i64 %conv251, i64 0
  store i64 %cond, i64* @T1, align 8, !tbaa !6
  %89 = load double* @BETAP, align 8, !tbaa !4
  %conv254 = sitofp i64 %conv244 to double
  %mul255 = fmul double %89, %conv254
  %sub256 = fsub double 1.000000e+00, %89
  %conv257 = sitofp i64 %cond to double
  %mul258 = fmul double %sub256, %conv257
  %add259 = fadd double %mul255, %mul258
  %add260 = fadd double %add259, 5.000000e-01
  %call261 = tail call double @floor(double %add260) #8
  %conv262 = fptosi double %call261 to i64
  store i64 %conv262, i64* @T, align 8, !tbaa !6
  br label %if.end349

if.else264:                                       ; preds = %if.then224
  %NumberofGOP265 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 128
  %90 = load i32* %NumberofGOP265, align 4, !tbaa !3
  %cmp266 = icmp eq i32 %90, 1
  br i1 %cmp266, label %land.lhs.true268, label %if.else309

land.lhs.true268:                                 ; preds = %if.else264
  %NumberofCodedPFrame269 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 127
  %91 = load i32* %NumberofCodedPFrame269, align 4, !tbaa !3
  %cmp270 = icmp sgt i32 %91, 0
  br i1 %cmp270, label %if.then272, label %if.end349

if.then272:                                       ; preds = %land.lhs.true268
  %92 = load double* @Wp, align 8, !tbaa !4
  %93 = load i32* @R, align 4, !tbaa !3
  %conv273 = sitofp i32 %93 to double
  %mul274 = fmul double %92, %conv273
  %94 = load i32* @Np, align 4, !tbaa !3
  %conv275 = sitofp i32 %94 to double
  %mul276 = fmul double %92, %conv275
  %95 = load i32* @Nb, align 4, !tbaa !3
  %conv277 = sitofp i32 %95 to double
  %96 = load double* @Wb, align 8, !tbaa !4
  %mul278 = fmul double %conv277, %96
  %add279 = fadd double %mul276, %mul278
  %div280 = fdiv double %mul274, %add279
  %add281 = fadd double %div280, 5.000000e-01
  %call282 = tail call double @floor(double %add281) #8
  %conv283 = fptosi double %call282 to i32
  %97 = load double* @bit_rate, align 8, !tbaa !4
  %98 = load double* @frame_rate, align 8, !tbaa !4
  %div285 = fdiv double %97, %98
  %99 = load double* @GAMMAP, align 8, !tbaa !4
  %100 = load double* @CurrentBufferFullness, align 8, !tbaa !4
  %101 = load double* @TargetBufferLevel, align 8, !tbaa !4
  %sub286 = fsub double %100, %101
  %mul287 = fmul double %99, %sub286
  %sub288 = fsub double %div285, %mul287
  %add289 = fadd double %sub288, 5.000000e-01
  %call290 = tail call double @floor(double %add289) #8
  %conv291 = fptosi double %call290 to i32
  %conv292 = sext i32 %conv291 to i64
  %cmp293 = icmp sgt i64 %conv292, 0
  %cond298 = select i1 %cmp293, i64 %conv292, i64 0
  store i64 %cond298, i64* @T1, align 8, !tbaa !6
  %102 = load double* @BETAP, align 8, !tbaa !4
  %conv299 = sitofp i32 %conv283 to double
  %mul300 = fmul double %102, %conv299
  %sub301 = fsub double 1.000000e+00, %102
  %conv302 = sitofp i64 %cond298 to double
  %mul303 = fmul double %sub301, %conv302
  %add304 = fadd double %mul300, %mul303
  %add305 = fadd double %add304, 5.000000e-01
  %call306 = tail call double @floor(double %add305) #8
  %conv307 = fptosi double %call306 to i32
  %conv308 = sext i32 %conv307 to i64
  store i64 %conv308, i64* @T, align 8, !tbaa !6
  br label %if.end349

if.else309:                                       ; preds = %if.else264
  %cmp311 = icmp sgt i32 %90, 1
  br i1 %cmp311, label %if.then313, label %if.end349

if.then313:                                       ; preds = %if.else309
  %103 = load double* @Wp, align 8, !tbaa !4
  %104 = load i32* @R, align 4, !tbaa !3
  %conv314 = sitofp i32 %104 to double
  %mul315 = fmul double %103, %conv314
  %105 = load i32* @Np, align 4, !tbaa !3
  %conv316 = sitofp i32 %105 to double
  %mul317 = fmul double %103, %conv316
  %106 = load i32* @Nb, align 4, !tbaa !3
  %conv318 = sitofp i32 %106 to double
  %107 = load double* @Wb, align 8, !tbaa !4
  %mul319 = fmul double %conv318, %107
  %add320 = fadd double %mul317, %mul319
  %div321 = fdiv double %mul315, %add320
  %add322 = fadd double %div321, 5.000000e-01
  %call323 = tail call double @floor(double %add322) #8
  %conv324 = fptosi double %call323 to i64
  %108 = load double* @bit_rate, align 8, !tbaa !4
  %109 = load double* @frame_rate, align 8, !tbaa !4
  %div325 = fdiv double %108, %109
  %110 = load double* @GAMMAP, align 8, !tbaa !4
  %111 = load double* @CurrentBufferFullness, align 8, !tbaa !4
  %112 = load double* @TargetBufferLevel, align 8, !tbaa !4
  %sub326 = fsub double %111, %112
  %mul327 = fmul double %110, %sub326
  %sub328 = fsub double %div325, %mul327
  %add329 = fadd double %sub328, 5.000000e-01
  %call330 = tail call double @floor(double %add329) #8
  %conv331 = fptosi double %call330 to i64
  %cmp332 = icmp sgt i64 %conv331, 0
  %cond337 = select i1 %cmp332, i64 %conv331, i64 0
  store i64 %cond337, i64* @T1, align 8, !tbaa !6
  %113 = load double* @BETAP, align 8, !tbaa !4
  %conv338 = sitofp i64 %conv324 to double
  %mul339 = fmul double %113, %conv338
  %sub340 = fsub double 1.000000e+00, %113
  %conv341 = sitofp i64 %cond337 to double
  %mul342 = fmul double %sub340, %conv341
  %add343 = fadd double %mul339, %mul342
  %add344 = fadd double %add343, 5.000000e-01
  %call345 = tail call double @floor(double %add344) #8
  %conv346 = fptosi double %call345 to i64
  store i64 %conv346, i64* @T, align 8, !tbaa !6
  br label %if.end349

if.end349:                                        ; preds = %land.lhs.true268, %if.else309, %if.then229, %if.then272, %if.then313, %if.then233
  %successive_Bframe350 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 34
  %114 = load i32* %successive_Bframe350, align 4, !tbaa !3
  %conv351 = sitofp i32 %114 to double
  %mul352 = fmul double %conv351, 0.000000e+00
  %sub353 = fsub double 1.000000e+00, %mul352
  %115 = load i64* @T, align 8, !tbaa !6
  %conv354 = sitofp i64 %115 to double
  %mul355 = fmul double %conv354, %sub353
  %conv356 = fptosi double %mul355 to i64
  %116 = load i64* @LowerBound, align 8, !tbaa !6
  %cmp357 = icmp slt i64 %conv356, %116
  %cond362 = select i1 %cmp357, i64 %116, i64 %conv356
  %117 = load i64* @UpperBound2, align 8, !tbaa !6
  %cmp363 = icmp slt i64 %cond362, %117
  %cond368 = select i1 %cmp363, i64 %cond362, i64 %117
  store i64 %cond368, i64* @T, align 8, !tbaa !6
  br i1 %tobool11, label %lor.lhs.false370, label %if.then379

lor.lhs.false370:                                 ; preds = %if.end349
  br i1 %tobool10, label %land.lhs.true372, label %if.end401

land.lhs.true372:                                 ; preds = %lor.lhs.false370
  %PicInterlace373 = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 91
  %118 = load i32* %PicInterlace373, align 4, !tbaa !3
  %cmp374 = icmp eq i32 %118, 2
  br i1 %cmp374, label %if.then379, label %lor.lhs.false376

lor.lhs.false376:                                 ; preds = %land.lhs.true372
  %119 = load i32* %MbInterlace, align 4, !tbaa !3
  %tobool378 = icmp eq i32 %119, 0
  br i1 %tobool378, label %if.end383, label %if.then379

if.then379:                                       ; preds = %lor.lhs.false376, %if.end349, %land.lhs.true372
  %conv380 = trunc i64 %cond368 to i32
  store i32 %conv380, i32* @T_field, align 4, !tbaa !3
  br label %if.end383

if.end383:                                        ; preds = %if.then13, %if.end9, %lor.lhs.false376, %sw.epilog, %if.then379
  br i1 %or.cond, label %if.end401, label %if.then387

if.then387:                                       ; preds = %if.end383
  %NumberofHeaderBits = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 119
  store i32 0, i32* %NumberofHeaderBits, align 4, !tbaa !3
  %NumberofTextureBits = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 120
  store i32 0, i32* %NumberofTextureBits, align 4, !tbaa !3
  %BasicUnit388 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 139
  %120 = load i32* %BasicUnit388, align 4, !tbaa !3
  %Frame_Total_Number_MB389 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 136
  %121 = load i32* %Frame_Total_Number_MB389, align 4, !tbaa !3
  %cmp390 = icmp slt i32 %120, %121
  br i1 %cmp390, label %if.then392, label %if.end401

if.then392:                                       ; preds = %if.then387
  store i32 0, i32* @TotalFrameQP, align 4, !tbaa !3
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 121
  store i32 0, i32* %NumberofBasicUnitHeaderBits, align 4, !tbaa !3
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 122
  store i32 0, i32* %NumberofBasicUnitTextureBits, align 4, !tbaa !3
  %TotalMADBasicUnit = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 123
  store double 0.000000e+00, double* %TotalMADBasicUnit, align 8, !tbaa !4
  %FieldControl393 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 134
  %122 = load i32* %FieldControl393, align 4, !tbaa !3
  %cmp394 = icmp eq i32 %122, 0
  %123 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  br i1 %cmp394, label %if.then396, label %if.else397

if.then396:                                       ; preds = %if.then392
  store i32 %123, i32* @NumberofBasicUnit, align 4, !tbaa !3
  br label %if.end401

if.else397:                                       ; preds = %if.then392
  %div398 = sdiv i32 %123, 2
  store i32 %div398, i32* @NumberofBasicUnit, align 4, !tbaa !3
  br label %if.end401

if.end401:                                        ; preds = %if.then387, %if.end383, %lor.lhs.false370, %if.else397, %if.then396
  %type402 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 6
  %124 = load i32* %type402, align 4, !tbaa !3
  %cmp403 = icmp eq i32 %124, 0
  br i1 %cmp403, label %land.lhs.true405, label %if.end428

land.lhs.true405:                                 ; preds = %if.end401
  %BasicUnit406 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 139
  %125 = load i32* %BasicUnit406, align 4, !tbaa !3
  %Frame_Total_Number_MB407 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 136
  %126 = load i32* %Frame_Total_Number_MB407, align 4, !tbaa !3
  %cmp408 = icmp slt i32 %125, %126
  br i1 %cmp408, label %land.lhs.true410, label %if.end428

land.lhs.true410:                                 ; preds = %land.lhs.true405
  %FieldControl411 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 134
  %127 = load i32* %FieldControl411, align 4, !tbaa !3
  %cmp412 = icmp eq i32 %127, 1
  br i1 %cmp412, label %if.then414, label %if.end428

if.then414:                                       ; preds = %land.lhs.true410
  br i1 %tobool11, label %if.else420, label %if.then416

if.then416:                                       ; preds = %if.then414
  store i32 0, i32* @bits_topfield, align 4, !tbaa !3
  %128 = load i32* @T_field, align 4, !tbaa !3
  %conv417 = sitofp i32 %128 to double
  %mul418 = fmul double %conv417, 6.000000e-01
  %conv419 = fptosi double %mul418 to i64
  store i64 %conv419, i64* @T, align 8, !tbaa !6
  br label %if.end428

if.else420:                                       ; preds = %if.then414
  %129 = load i32* @T_field, align 4, !tbaa !3
  %130 = load i32* @bits_topfield, align 4, !tbaa !3
  %sub421 = sub nsw i32 %129, %130
  %conv422 = sext i32 %sub421 to i64
  store i64 %conv422, i64* @T, align 8, !tbaa !6
  %NumberofBasicUnitHeaderBits423 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 121
  store i32 0, i32* %NumberofBasicUnitHeaderBits423, align 4, !tbaa !3
  %NumberofBasicUnitTextureBits424 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 122
  store i32 0, i32* %NumberofBasicUnitTextureBits424, align 4, !tbaa !3
  %TotalMADBasicUnit425 = getelementptr inbounds %struct.ImageParameters* %.pre, i64 0, i32 123
  store double 0.000000e+00, double* %TotalMADBasicUnit425, align 8, !tbaa !4
  %131 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %div426 = sdiv i32 %131, 2
  store i32 %div426, i32* @NumberofBasicUnit, align 4, !tbaa !3
  br label %if.end428

if.end428:                                        ; preds = %if.then416, %if.else420, %land.lhs.true410, %land.lhs.true405, %if.end401
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define double @calc_MAD() #4 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc6, %entry
  %indvars.iv18 = phi i64 [ 0, %entry ], [ %indvars.iv.next19, %for.inc6 ]
  %s.016 = phi i32 [ 0, %entry ], [ %add, %for.inc6 ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %s.115 = phi i32 [ %s.016, %for.cond1.preheader ], [ %add, %for.body3 ]
  %arrayidx5 = getelementptr inbounds [16 x [16 x i32]]* @diffy, i64 0, i64 %indvars.iv18, i64 %indvars.iv
  %0 = load i32* %arrayidx5, align 4, !tbaa !3
  %ispos = icmp sgt i32 %0, -1
  %neg = sub i32 0, %0
  %1 = select i1 %ispos, i32 %0, i32 %neg
  %add = add nsw i32 %1, %s.115
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 16
  br i1 %exitcond, label %for.inc6, label %for.body3

for.inc6:                                         ; preds = %for.body3
  %indvars.iv.next19 = add i64 %indvars.iv18, 1
  %lftr.wideiv20 = trunc i64 %indvars.iv.next19 to i32
  %exitcond21 = icmp eq i32 %lftr.wideiv20, 16
  br i1 %exitcond21, label %for.end8, label %for.cond1.preheader

for.end8:                                         ; preds = %for.inc6
  %conv = sitofp i32 %add to double
  %div = fmul double %conv, 3.906250e-03
  ret double %div
}

; Function Attrs: nounwind optsize uwtable
define void @rc_update_pict(i32 %nbits) #0 {
entry:
  %0 = load i32* @R, align 4, !tbaa !3
  %sub = sub nsw i32 %0, %nbits
  store i32 %sub, i32* @R, align 4, !tbaa !3
  %conv = sitofp i32 %nbits to double
  %1 = load double* @bit_rate, align 8, !tbaa !4
  %2 = load double* @frame_rate, align 8, !tbaa !4
  %div = fdiv double %1, %2
  %sub1 = fsub double %conv, %div
  %3 = load double* @CurrentBufferFullness, align 8, !tbaa !4
  %add = fadd double %3, %sub1
  store double %add, double* @CurrentBufferFullness, align 8, !tbaa !4
  %sub4 = fsub double %div, %conv
  %conv5 = fptosi double %sub4 to i64
  %4 = load i64* @LowerBound, align 8, !tbaa !6
  %add6 = add nsw i64 %conv5, %4
  store i64 %add6, i64* @LowerBound, align 8, !tbaa !6
  %5 = load i64* @UpperBound1, align 8, !tbaa !6
  %add11 = add nsw i64 %conv5, %5
  store i64 %add11, i64* @UpperBound1, align 8, !tbaa !6
  %conv12 = sitofp i64 %add11 to double
  %mul = fmul double %conv12, 9.000000e-01
  %conv13 = fptosi double %mul to i64
  store i64 %conv13, i64* @UpperBound2, align 8, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @rc_update_pict_frame(i32 %nbits) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 139
  %1 = load i32* %BasicUnit, align 4, !tbaa !3
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 136
  %2 = load i32* %Frame_Total_Number_MB, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32* @m_Qc, align 4, !tbaa !3
  %mul = mul nsw i32 %3, %nbits
  %conv = sitofp i32 %mul to double
  %add = fadd double %conv, 5.000000e-01
  %call = tail call double @floor(double %add) #8
  %conv1 = fptosi double %call to i32
  %type31.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %.pre68 = load i32* %type31.phi.trans.insert, align 4, !tbaa !3
  br label %if.end30

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %4 = load i32* %type, align 4, !tbaa !3
  switch i32 %4, label %if.end30 [
    i32 0, label %if.then4
    i32 1, label %if.end30.thread70
  ]

if.then4:                                         ; preds = %if.else
  %IFLAG = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 137
  %5 = load i32* %IFLAG, align 4, !tbaa !3
  %cmp5 = icmp eq i32 %5, 0
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134
  %6 = load i32* %FieldControl, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %6, 1
  %or.cond72 = and i1 %cmp5, %cmp7
  %cmp10 = icmp eq i32 %6, 0
  %or.cond73 = or i1 %or.cond72, %cmp10
  br i1 %or.cond73, label %if.then12, label %sw.bb

if.then12:                                        ; preds = %if.then4
  %7 = load i32* @TotalFrameQP, align 4, !tbaa !3
  %8 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %div = sdiv i32 %7, %8
  %mul13 = mul nsw i32 %div, %nbits
  %conv14 = sitofp i32 %mul13 to double
  %add15 = fadd double %conv14, 5.000000e-01
  %call16 = tail call double @floor(double %add15) #8
  %conv17 = fptosi double %call16 to i32
  br label %sw.bb

if.end30.thread70:                                ; preds = %if.else
  %9 = load i32* @m_Qc, align 4, !tbaa !3
  %mul23 = mul nsw i32 %9, %nbits
  %conv24 = sitofp i32 %mul23 to double
  %add25 = fadd double %conv24, 5.000000e-01
  %call26 = tail call double @floor(double %add25) #8
  %conv27 = fptosi double %call26 to i32
  br label %sw.bb58

if.end30:                                         ; preds = %if.else, %if.then
  %10 = phi i32 [ %.pre68, %if.then ], [ %4, %if.else ]
  %X.0 = phi i32 [ %conv1, %if.then ], [ 0, %if.else ]
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb58
  ]

sw.bb:                                            ; preds = %if.then4, %if.then12, %if.end30
  %X.069 = phi i32 [ %X.0, %if.end30 ], [ %conv17, %if.then12 ], [ 0, %if.then4 ]
  %IFLAG32 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 137
  %11 = load i32* %IFLAG32, align 4, !tbaa !3
  %cmp33 = icmp eq i32 %11, 0
  %FieldControl36 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134
  %12 = load i32* %FieldControl36, align 4, !tbaa !3
  %cmp37 = icmp eq i32 %12, 1
  %or.cond74 = and i1 %cmp33, %cmp37
  %cmp41 = icmp eq i32 %12, 0
  %or.cond75 = or i1 %or.cond74, %cmp41
  br i1 %or.cond75, label %if.then43, label %if.else46

if.then43:                                        ; preds = %sw.bb
  store i32 %X.069, i32* @Xp, align 4, !tbaa !3
  %13 = load i32* @Np, align 4, !tbaa !3
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* @Np, align 4, !tbaa !3
  %conv44 = sitofp i32 %X.069 to double
  store double %conv44, double* @Wp, align 8, !tbaa !4
  %NumberofHeaderBits = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 119
  %14 = load i32* %NumberofHeaderBits, align 4, !tbaa !3
  store i32 %14, i32* @Pm_Hp, align 4, !tbaa !3
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 127
  %15 = load i32* %NumberofCodedPFrame, align 4, !tbaa !3
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %NumberofCodedPFrame, align 4, !tbaa !3
  %NumberofPPicture = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 130
  %16 = load i32* %NumberofPPicture, align 4, !tbaa !3
  %inc45 = add nsw i32 %16, 1
  store i32 %inc45, i32* %NumberofPPicture, align 4, !tbaa !3
  br label %sw.epilog

if.else46:                                        ; preds = %sw.bb
  %cmp48 = icmp ne i32 %11, 0
  %cmp52 = icmp eq i32 %12, 1
  %or.cond = and i1 %cmp48, %cmp52
  br i1 %or.cond, label %if.then54, label %sw.epilog

if.then54:                                        ; preds = %if.else46
  store i32 0, i32* %IFLAG32, align 4, !tbaa !3
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end30.thread70, %if.end30
  %X.071 = phi i32 [ %conv27, %if.end30.thread70 ], [ %X.0, %if.end30 ]
  store i32 %X.071, i32* @Xb, align 4, !tbaa !3
  %17 = load i32* @Nb, align 4, !tbaa !3
  %dec59 = add nsw i32 %17, -1
  store i32 %dec59, i32* @Nb, align 4, !tbaa !3
  %conv60 = sitofp i32 %X.071 to double
  %div61 = fdiv double %conv60, 1.363600e+00
  store double %div61, double* @Wb, align 8, !tbaa !4
  %NumberofCodedBFrame = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 126
  %18 = load i32* %NumberofCodedBFrame, align 4, !tbaa !3
  %inc62 = add nsw i32 %18, 1
  store i32 %inc62, i32* %NumberofCodedBFrame, align 4, !tbaa !3
  %19 = load i32* @NumberofBFrames, align 4, !tbaa !3
  %inc63 = add nsw i32 %19, 1
  store i32 %inc63, i32* @NumberofBFrames, align 4, !tbaa !3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else46, %if.then43, %if.then54, %if.end30, %sw.bb58
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @setbitscount(i32 %nbits) #0 {
entry:
  store i32 %nbits, i32* @bits_topfield, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @updateQuantizationParameter(i32 %topfield) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 139
  %1 = load i32* %BasicUnit, align 4, !tbaa !3
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 136
  %2 = load i32* %Frame_Total_Number_MB, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else314

if.then:                                          ; preds = %entry
  %tobool = icmp eq i32 %topfield, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then2

lor.lhs.false:                                    ; preds = %if.then
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134
  %3 = load i32* %FieldControl, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.else296

if.then2:                                         ; preds = %if.then, %lor.lhs.false
  %type = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %4 = load i32* %type, align 4, !tbaa !3
  switch i32 %4, label %if.else175 [
    i32 2, label %if.then4
    i32 1, label %if.then7
    i32 0, label %land.lhs.true
  ]

if.then4:                                         ; preds = %if.then2
  %5 = load i32* @MyInitialQp, align 4, !tbaa !3
  store i32 %5, i32* @m_Qc, align 4, !tbaa !3
  br label %return

if.then7:                                         ; preds = %if.then2
  %6 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %successive_Bframe = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 34
  %7 = load i32* %successive_Bframe, align 4, !tbaa !3
  %cmp8 = icmp eq i32 %7, 1
  br i1 %cmp8, label %if.then9, label %if.else34

if.then9:                                         ; preds = %if.then7
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 91
  %8 = load i32* %PicInterlace, align 4, !tbaa !3
  %cmp10 = icmp eq i32 %8, 2
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.then9
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 92
  %9 = load i32* %MbInterlace, align 4, !tbaa !3
  %tobool12 = icmp eq i32 %9, 0
  br i1 %tobool12, label %if.end21, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false11, %if.then9
  %FieldControl14 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134
  %10 = load i32* %FieldControl14, align 4, !tbaa !3
  %cmp15 = icmp eq i32 %10, 0
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.then13
  %FieldFrame = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 135
  %11 = load i32* %FieldFrame, align 4, !tbaa !3
  %cmp17 = icmp eq i32 %11, 1
  %12 = load i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %12, i32* @PreviousQp1, align 4, !tbaa !3
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.then16
  %13 = load i32* @FrameQPBuffer, align 4, !tbaa !3
  store i32 %13, i32* @PreviousQp2, align 4, !tbaa !3
  br label %if.end21

if.else19:                                        ; preds = %if.then16
  %14 = load i32* @FieldQPBuffer, align 4, !tbaa !3
  store i32 %14, i32* @PreviousQp2, align 4, !tbaa !3
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %lor.lhs.false11, %if.else19, %if.then18
  %15 = load i32* @PreviousQp1, align 4, !tbaa !3
  %16 = load i32* @PreviousQp2, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %15, %16
  br i1 %cmp22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.end21
  %add = add nsw i32 %15, 2
  br label %if.end27

if.else24:                                        ; preds = %if.end21
  %add25 = add nsw i32 %16, %15
  %div = sdiv i32 %add25, 2
  %add26 = add nsw i32 %div, 1
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.then23
  %storemerge1102 = phi i32 [ %add26, %if.else24 ], [ %add, %if.then23 ]
  %17 = load i32* @RC_MAX_QUANT, align 4, !tbaa !3
  %cmp28 = icmp slt i32 %storemerge1102, %17
  %cond = select i1 %cmp28, i32 %storemerge1102, i32 %17
  store i32 %cond, i32* @m_Qc, align 4, !tbaa !3
  %18 = load i32* @RC_MIN_QUANT, align 4, !tbaa !3
  %cmp29 = icmp slt i32 %18, %cond
  %cond33 = select i1 %cmp29, i32 %cond, i32 %18
  br label %if.end160

if.else34:                                        ; preds = %if.then7
  %19 = load i32* @NumberofBFrames, align 4, !tbaa !3
  %add35 = add nsw i32 %19, 1
  %rem = srem i32 %add35, %7
  %cmp37 = icmp eq i32 %rem, 0
  %.rem = select i1 %cmp37, i32 %7, i32 %rem
  %cmp41 = icmp eq i32 %.rem, 1
  br i1 %cmp41, label %if.then42, label %if.end59

if.then42:                                        ; preds = %if.else34
  %PicInterlace43 = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 91
  %20 = load i32* %PicInterlace43, align 4, !tbaa !3
  %cmp44 = icmp eq i32 %20, 2
  br i1 %cmp44, label %if.then48, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.then42
  %MbInterlace46 = getelementptr inbounds %struct.InputParameters* %6, i64 0, i32 92
  %21 = load i32* %MbInterlace46, align 4, !tbaa !3
  %tobool47 = icmp eq i32 %21, 0
  br i1 %tobool47, label %if.end59, label %if.then48

if.then48:                                        ; preds = %lor.lhs.false45, %if.then42
  %FieldControl49 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134
  %22 = load i32* %FieldControl49, align 4, !tbaa !3
  %cmp50 = icmp eq i32 %22, 0
  br i1 %cmp50, label %if.then51, label %if.end59

if.then51:                                        ; preds = %if.then48
  %FieldFrame52 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 135
  %23 = load i32* %FieldFrame52, align 4, !tbaa !3
  %cmp53 = icmp eq i32 %23, 1
  %24 = load i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %24, i32* @PreviousQp1, align 4, !tbaa !3
  br i1 %cmp53, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.then51
  %25 = load i32* @FrameQPBuffer, align 4, !tbaa !3
  store i32 %25, i32* @PreviousQp2, align 4, !tbaa !3
  br label %if.end59

if.else55:                                        ; preds = %if.then51
  %26 = load i32* @FieldQPBuffer, align 4, !tbaa !3
  store i32 %26, i32* @PreviousQp2, align 4, !tbaa !3
  br label %if.end59

if.end59:                                         ; preds = %if.then48, %lor.lhs.false45, %if.else34, %if.then54, %if.else55
  %27 = load i32* @PreviousQp2, align 4, !tbaa !3
  %28 = load i32* @PreviousQp1, align 4, !tbaa !3
  %sub = sub nsw i32 %27, %28
  %29 = load i32* %successive_Bframe, align 4, !tbaa !3
  %mul = mul nsw i32 %29, -2
  %sub61 = add nsw i32 %mul, -3
  %cmp62 = icmp sgt i32 %sub, %sub61
  br i1 %cmp62, label %if.else64, label %if.end96

if.else64:                                        ; preds = %if.end59
  %sub68 = add nsw i32 %mul, -2
  %cmp69 = icmp eq i32 %sub, %sub68
  br i1 %cmp69, label %if.end96, label %if.else71

if.else71:                                        ; preds = %if.else64
  %sub75 = add nsw i32 %mul, -1
  %cmp76 = icmp eq i32 %sub, %sub75
  br i1 %cmp76, label %if.end96, label %if.else78

if.else78:                                        ; preds = %if.else71
  %cmp82 = icmp eq i32 %sub, %mul
  br i1 %cmp82, label %if.end96, label %if.else84

if.else84:                                        ; preds = %if.else78
  %add881100 = or i32 %mul, 1
  %cmp89 = icmp eq i32 %sub, %add881100
  %. = select i1 %cmp89, i32 1, i32 2
  br label %if.end96

if.end96:                                         ; preds = %if.else84, %if.else78, %if.else71, %if.else64, %if.end59
  %StepSize.0 = phi i32 [ -3, %if.end59 ], [ -2, %if.else64 ], [ -1, %if.else71 ], [ 0, %if.else78 ], [ %., %if.else84 ]
  %add97 = add nsw i32 %28, %StepSize.0
  store i32 %add97, i32* @m_Qc, align 4, !tbaa !3
  %sub98 = add nsw i32 %.rem, -1
  %mul99 = shl nsw i32 %sub98, 1
  %mul101 = mul nsw i32 %sub98, -2
  %mul104 = mul nsw i32 %sub, %sub98
  %30 = load i32* %successive_Bframe, align 4, !tbaa !3
  %sub106 = add nsw i32 %30, -1
  %div107 = sdiv i32 %mul104, %sub106
  %cmp108 = icmp slt i32 %mul101, %div107
  %div107.mul101 = select i1 %cmp108, i32 %div107, i32 %mul101
  %cmp121 = icmp slt i32 %mul99, %div107.mul101
  %mul99.div107.mul101 = select i1 %cmp121, i32 %mul99, i32 %div107.mul101
  %add149 = add nsw i32 %mul99.div107.mul101, %add97
  %31 = load i32* @RC_MAX_QUANT, align 4, !tbaa !3
  %cmp150 = icmp slt i32 %add149, %31
  %cond154 = select i1 %cmp150, i32 %add149, i32 %31
  store i32 %cond154, i32* @m_Qc, align 4, !tbaa !3
  %32 = load i32* @RC_MIN_QUANT, align 4, !tbaa !3
  %cmp155 = icmp slt i32 %32, %cond154
  %cond159 = select i1 %cmp155, i32 %cond154, i32 %32
  br label %if.end160

if.end160:                                        ; preds = %if.end96, %if.end27
  %storemerge1101 = phi i32 [ %cond159, %if.end96 ], [ %cond33, %if.end27 ]
  store i32 %storemerge1101, i32* @m_Qc, align 4, !tbaa !3
  br label %return

land.lhs.true:                                    ; preds = %if.then2
  %NumberofPPicture = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 130
  %33 = load i32* %NumberofPPicture, align 4, !tbaa !3
  %cmp164 = icmp eq i32 %33, 0
  br i1 %cmp164, label %if.then165, label %if.else175

if.then165:                                       ; preds = %land.lhs.true
  %34 = load i32* @MyInitialQp, align 4, !tbaa !3
  store i32 %34, i32* @m_Qc, align 4, !tbaa !3
  %FieldControl166 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134
  %35 = load i32* %FieldControl166, align 4, !tbaa !3
  %cmp167 = icmp eq i32 %35, 0
  br i1 %cmp167, label %if.then168, label %return

if.then168:                                       ; preds = %if.then165
  %36 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %36, i64 0, i32 25
  %37 = load i32* %frame_mbs_only_flag, align 4, !tbaa !1
  %tobool169 = icmp eq i32 %37, 0
  br i1 %tobool169, label %if.else172, label %if.then170

if.then170:                                       ; preds = %if.then168
  %TotalQpforPPicture = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129
  %38 = load i32* %TotalQpforPPicture, align 4, !tbaa !3
  %add171 = add nsw i32 %38, %34
  store i32 %add171, i32* %TotalQpforPPicture, align 4, !tbaa !3
  %39 = load i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %39, i32* @PreviousQp1, align 4, !tbaa !3
  %40 = load i32* @m_Qc, align 4, !tbaa !3
  store i32 %40, i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %40, i32* @Pm_Qp, align 4, !tbaa !3
  br label %return

if.else172:                                       ; preds = %if.then168
  store i32 %34, i32* @FrameQPBuffer, align 4, !tbaa !3
  br label %return

if.else175:                                       ; preds = %if.then2, %land.lhs.true
  %41 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PicInterlace176 = getelementptr inbounds %struct.InputParameters* %41, i64 0, i32 91
  %42 = load i32* %PicInterlace176, align 4, !tbaa !3
  %cmp177 = icmp eq i32 %42, 2
  br i1 %cmp177, label %land.lhs.true181, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %if.else175
  %MbInterlace179 = getelementptr inbounds %struct.InputParameters* %41, i64 0, i32 92
  %43 = load i32* %MbInterlace179, align 4, !tbaa !3
  %tobool180 = icmp eq i32 %43, 0
  br i1 %tobool180, label %if.end194, label %land.lhs.true181

land.lhs.true181:                                 ; preds = %lor.lhs.false178, %if.else175
  %FieldControl182 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134
  %44 = load i32* %FieldControl182, align 4, !tbaa !3
  %cmp183 = icmp eq i32 %44, 0
  br i1 %cmp183, label %if.then184, label %if.end194

if.then184:                                       ; preds = %land.lhs.true181
  %FieldFrame185 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 135
  %45 = load i32* %FieldFrame185, align 4, !tbaa !3
  %cmp186 = icmp eq i32 %45, 1
  br i1 %cmp186, label %if.then187, label %if.else190

if.then187:                                       ; preds = %if.then184
  %46 = load i32* @FrameQPBuffer, align 4, !tbaa !3
  %TotalQpforPPicture188 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129
  %47 = load i32* %TotalQpforPPicture188, align 4, !tbaa !3
  %add189 = add nsw i32 %47, %46
  store i32 %add189, i32* %TotalQpforPPicture188, align 4, !tbaa !3
  %48 = load i32* @FrameQPBuffer, align 4, !tbaa !3
  store i32 %48, i32* @Pm_Qp, align 4, !tbaa !3
  br label %if.end194

if.else190:                                       ; preds = %if.then184
  %49 = load i32* @FieldQPBuffer, align 4, !tbaa !3
  %TotalQpforPPicture191 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129
  %50 = load i32* %TotalQpforPPicture191, align 4, !tbaa !3
  %add192 = add nsw i32 %50, %49
  store i32 %add192, i32* %TotalQpforPPicture191, align 4, !tbaa !3
  %51 = load i32* @FieldQPBuffer, align 4, !tbaa !3
  store i32 %51, i32* @Pm_Qp, align 4, !tbaa !3
  br label %if.end194

if.end194:                                        ; preds = %land.lhs.true181, %lor.lhs.false178, %if.then187, %if.else190
  %52 = load double* @Pm_X1, align 8, !tbaa !4
  store double %52, double* @m_X1, align 8, !tbaa !4
  %53 = load double* @Pm_X2, align 8, !tbaa !4
  store double %53, double* @m_X2, align 8, !tbaa !4
  %54 = load i32* @PPreHeader, align 4, !tbaa !3
  store i32 %54, i32* @m_Hp, align 4, !tbaa !3
  %55 = load i32* @Pm_Qp, align 4, !tbaa !3
  store i32 %55, i32* @m_Qp, align 4, !tbaa !3
  %56 = load i32* @PDuantQp, align 4, !tbaa !3
  store i32 %56, i32* @DuantQp, align 4, !tbaa !3
  %57 = load double* @PMADPictureC1, align 8, !tbaa !4
  store double %57, double* @MADPictureC1, align 8, !tbaa !4
  %58 = load double* @PMADPictureC2, align 8, !tbaa !4
  store double %58, double* @MADPictureC2, align 8, !tbaa !4
  %59 = load double* getelementptr inbounds ([21 x double]* @PPictureMAD, i64 0, i64 0), align 16, !tbaa !4
  store double %59, double* @PreviousPictureMAD, align 8, !tbaa !4
  %mul195 = fmul double %57, %59
  %add196 = fadd double %58, %mul195
  store double %add196, double* @CurrentFrameMAD, align 8, !tbaa !4
  %60 = load i64* @T, align 8, !tbaa !6
  %cmp197 = icmp slt i64 %60, 0
  br i1 %cmp197, label %if.then198, label %if.else205

if.then198:                                       ; preds = %if.end194
  %add199 = add nsw i32 %56, %55
  store i32 %add199, i32* @m_Qc, align 4, !tbaa !3
  %61 = load i32* @RC_MAX_QUANT, align 4, !tbaa !3
  %cmp200 = icmp slt i32 %add199, %61
  %cond204 = select i1 %cmp200, i32 %add199, i32 %61
  br label %if.end283

if.else205:                                       ; preds = %if.end194
  %conv1097 = zext i32 %54 to i64
  %sub206 = sub nsw i64 %60, %conv1097
  %conv207 = trunc i64 %sub206 to i32
  %62 = load double* @bit_rate, align 8, !tbaa !4
  %63 = load double* @MINVALUE, align 8, !tbaa !4
  %64 = load double* @frame_rate, align 8, !tbaa !4
  %mul208 = fmul double %63, %64
  %div209 = fdiv double %62, %mul208
  %conv210 = fptosi double %div209 to i32
  %cmp211 = icmp slt i32 %conv207, %conv210
  %conv210.conv207 = select i1 %cmp211, i32 %conv210, i32 %conv207
  %mul220 = fmul double %add196, %52
  %mul221 = fmul double %add196, %mul220
  %mul222 = fmul double %52, %mul221
  %mul223 = fmul double %53, 4.000000e+00
  %mul224 = fmul double %add196, %mul223
  %conv225 = sitofp i32 %conv210.conv207 to double
  %mul226 = fmul double %mul224, %conv225
  %add227 = fadd double %mul222, %mul226
  %cmp228 = fcmp oeq double %53, 0.000000e+00
  %cmp231 = fcmp olt double %add227, 0.000000e+00
  %or.cond = or i1 %cmp228, %cmp231
  br i1 %or.cond, label %if.then238, label %lor.lhs.false233

lor.lhs.false233:                                 ; preds = %if.else205
  %call = tail call double @sqrt(double %add227) #7
  %65 = load double* @m_X1, align 8, !tbaa !4
  %66 = load double* @CurrentFrameMAD, align 8, !tbaa !4
  %mul234 = fmul double %65, %66
  %sub235 = fsub double %call, %mul234
  %cmp236 = fcmp ugt double %sub235, 0.000000e+00
  br i1 %cmp236, label %if.else244, label %if.then238

if.then238:                                       ; preds = %lor.lhs.false233, %if.else205
  %67 = phi double [ %66, %lor.lhs.false233 ], [ %add196, %if.else205 ]
  %68 = phi double [ %65, %lor.lhs.false233 ], [ %52, %if.else205 ]
  %mul239 = fmul double %68, %67
  %div241 = fdiv double %mul239, %conv225
  br label %if.end253

if.else244:                                       ; preds = %lor.lhs.false233
  %69 = load double* @m_X2, align 8, !tbaa !4
  %mul245 = fmul double %69, 2.000000e+00
  %mul246 = fmul double %66, %mul245
  %call247 = tail call double @sqrt(double %add227) #7
  %70 = load double* @m_X1, align 8, !tbaa !4
  %71 = load double* @CurrentFrameMAD, align 8, !tbaa !4
  %mul248 = fmul double %70, %71
  %sub249 = fsub double %call247, %mul248
  %div250 = fdiv double %mul246, %sub249
  br label %if.end253

if.end253:                                        ; preds = %if.else244, %if.then238
  %storemerge1098.in.in = phi double [ %div250, %if.else244 ], [ %div241, %if.then238 ]
  %storemerge1098.in = fptrunc double %storemerge1098.in.in to float
  %storemerge1098 = fpext float %storemerge1098.in to double
  store double %storemerge1098, double* @m_Qstep, align 8, !tbaa !4
  %call254 = tail call i32 @Qstep2QP(double %storemerge1098) #9
  %72 = load i32* @m_Qp, align 4, !tbaa !3
  %73 = load i32* @DuantQp, align 4, !tbaa !3
  %add255 = add nsw i32 %73, %72
  %cmp256 = icmp slt i32 %add255, %call254
  %add255.call254 = select i1 %cmp256, i32 %add255, i32 %call254
  %74 = load i32* @RC_MAX_QUANT, align 4, !tbaa !3
  %cmp263 = icmp slt i32 %add255.call254, %74
  %cond268 = select i1 %cmp263, i32 %add255.call254, i32 %74
  %sub269 = sub nsw i32 %72, %73
  %cmp270 = icmp slt i32 %sub269, %cond268
  %cond276 = select i1 %cmp270, i32 %cond268, i32 %sub269
  store i32 %cond276, i32* @m_Qc, align 4, !tbaa !3
  %75 = load i32* @RC_MIN_QUANT, align 4, !tbaa !3
  %cmp277 = icmp slt i32 %75, %cond276
  %cond282 = select i1 %cmp277, i32 %cond276, i32 %75
  %.pre = load %struct.ImageParameters** @img, align 8, !tbaa !0
  br label %if.end283

if.end283:                                        ; preds = %if.end253, %if.then198
  %76 = phi %struct.ImageParameters* [ %.pre, %if.end253 ], [ %0, %if.then198 ]
  %storemerge1099 = phi i32 [ %cond282, %if.end253 ], [ %cond204, %if.then198 ]
  store i32 %storemerge1099, i32* @m_Qc, align 4, !tbaa !3
  %FieldControl284 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 134
  %77 = load i32* %FieldControl284, align 4, !tbaa !3
  %cmp285 = icmp eq i32 %77, 0
  br i1 %cmp285, label %if.then287, label %return

if.then287:                                       ; preds = %if.end283
  %78 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag288 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %78, i64 0, i32 25
  %79 = load i32* %frame_mbs_only_flag288, align 4, !tbaa !1
  %tobool289 = icmp eq i32 %79, 0
  br i1 %tobool289, label %if.else293, label %if.then290

if.then290:                                       ; preds = %if.then287
  %TotalQpforPPicture291 = getelementptr inbounds %struct.ImageParameters* %76, i64 0, i32 129
  %80 = load i32* %TotalQpforPPicture291, align 4, !tbaa !3
  %add292 = add nsw i32 %80, %storemerge1099
  store i32 %add292, i32* %TotalQpforPPicture291, align 4, !tbaa !3
  %81 = load i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %81, i32* @PreviousQp1, align 4, !tbaa !3
  %82 = load i32* @m_Qc, align 4, !tbaa !3
  store i32 %82, i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %82, i32* @Pm_Qp, align 4, !tbaa !3
  br label %return

if.else293:                                       ; preds = %if.then287
  store i32 %storemerge1099, i32* @FrameQPBuffer, align 4, !tbaa !3
  br label %return

if.else296:                                       ; preds = %lor.lhs.false
  %type297 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %83 = load i32* %type297, align 4, !tbaa !3
  %cmp298 = icmp eq i32 %83, 0
  br i1 %cmp298, label %land.lhs.true300, label %if.end313

land.lhs.true300:                                 ; preds = %if.else296
  %IFLAG = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 137
  %84 = load i32* %IFLAG, align 4, !tbaa !3
  %cmp301 = icmp eq i32 %84, 0
  br i1 %cmp301, label %if.then303, label %if.end313

if.then303:                                       ; preds = %land.lhs.true300
  %85 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PicInterlace304 = getelementptr inbounds %struct.InputParameters* %85, i64 0, i32 91
  %86 = load i32* %PicInterlace304, align 4, !tbaa !3
  %cmp305 = icmp eq i32 %86, 1
  %87 = load i32* @m_Qc, align 4, !tbaa !3
  br i1 %cmp305, label %if.then307, label %if.else311

if.then307:                                       ; preds = %if.then303
  %TotalQpforPPicture308 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129
  %88 = load i32* %TotalQpforPPicture308, align 4, !tbaa !3
  %add309 = add nsw i32 %88, %87
  store i32 %add309, i32* %TotalQpforPPicture308, align 4, !tbaa !3
  %89 = load i32* @PreviousQp2, align 4, !tbaa !3
  %add310 = add nsw i32 %89, 1
  store i32 %add310, i32* @PreviousQp1, align 4, !tbaa !3
  %90 = load i32* @m_Qc, align 4, !tbaa !3
  store i32 %90, i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %90, i32* @Pm_Qp, align 4, !tbaa !3
  br label %if.end313

if.else311:                                       ; preds = %if.then303
  store i32 %87, i32* @FieldQPBuffer, align 4, !tbaa !3
  br label %if.end313

if.end313:                                        ; preds = %land.lhs.true300, %if.else296, %if.then307, %if.else311
  %91 = load i32* @m_Qc, align 4, !tbaa !3
  br label %return

if.else314:                                       ; preds = %entry
  %type315 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 6
  %92 = load i32* %type315, align 4, !tbaa !3
  switch i32 %92, label %if.end1036 [
    i32 2, label %if.then318
    i32 0, label %land.lhs.true323
    i32 1, label %if.then336
  ]

if.then318:                                       ; preds = %if.else314
  %93 = load i32* @MyInitialQp, align 4, !tbaa !3
  store i32 %93, i32* @m_Qc, align 4, !tbaa !3
  br label %return

land.lhs.true323:                                 ; preds = %if.else314
  %IFLAG324 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 137
  %94 = load i32* %IFLAG324, align 4, !tbaa !3
  %cmp325 = icmp eq i32 %94, 1
  br i1 %cmp325, label %land.lhs.true327, label %if.then537

land.lhs.true327:                                 ; preds = %land.lhs.true323
  %FieldControl328 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134
  %95 = load i32* %FieldControl328, align 4, !tbaa !3
  %cmp329 = icmp eq i32 %95, 1
  br i1 %cmp329, label %if.then331, label %if.else332

if.then331:                                       ; preds = %land.lhs.true327
  %96 = load i32* @MyInitialQp, align 4, !tbaa !3
  store i32 %96, i32* @m_Qc, align 4, !tbaa !3
  br label %return

if.else332:                                       ; preds = %land.lhs.true327
  switch i32 %92, label %if.end1036 [
    i32 1, label %if.then336
    i32 0, label %if.then537
  ]

if.then336:                                       ; preds = %if.else314, %if.else332
  %tobool337 = icmp eq i32 %topfield, 0
  br i1 %tobool337, label %lor.lhs.false338, label %if.then342

lor.lhs.false338:                                 ; preds = %if.then336
  %FieldControl339 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134
  %97 = load i32* %FieldControl339, align 4, !tbaa !3
  %cmp340 = icmp eq i32 %97, 0
  br i1 %cmp340, label %if.then342, label %if.else532

if.then342:                                       ; preds = %if.then336, %lor.lhs.false338
  %98 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %successive_Bframe343 = getelementptr inbounds %struct.InputParameters* %98, i64 0, i32 34
  %99 = load i32* %successive_Bframe343, align 4, !tbaa !3
  %cmp344 = icmp eq i32 %99, 1
  br i1 %cmp344, label %if.then346, label %if.else387

if.then346:                                       ; preds = %if.then342
  %PicInterlace347 = getelementptr inbounds %struct.InputParameters* %98, i64 0, i32 91
  %100 = load i32* %PicInterlace347, align 4, !tbaa !3
  %cmp348 = icmp eq i32 %100, 2
  br i1 %cmp348, label %if.then353, label %lor.lhs.false350

lor.lhs.false350:                                 ; preds = %if.then346
  %MbInterlace351 = getelementptr inbounds %struct.InputParameters* %98, i64 0, i32 92
  %101 = load i32* %MbInterlace351, align 4, !tbaa !3
  %tobool352 = icmp eq i32 %101, 0
  br i1 %tobool352, label %if.end365, label %if.then353

if.then353:                                       ; preds = %lor.lhs.false350, %if.then346
  %FieldControl354 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134
  %102 = load i32* %FieldControl354, align 4, !tbaa !3
  %cmp355 = icmp eq i32 %102, 0
  br i1 %cmp355, label %if.then357, label %if.end365

if.then357:                                       ; preds = %if.then353
  %FieldFrame358 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 135
  %103 = load i32* %FieldFrame358, align 4, !tbaa !3
  %cmp359 = icmp eq i32 %103, 1
  %104 = load i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %104, i32* @PreviousQp1, align 4, !tbaa !3
  br i1 %cmp359, label %if.then361, label %if.else362

if.then361:                                       ; preds = %if.then357
  %105 = load i32* @FrameQPBuffer, align 4, !tbaa !3
  store i32 %105, i32* @PreviousQp2, align 4, !tbaa !3
  br label %if.end365

if.else362:                                       ; preds = %if.then357
  %106 = load i32* @FieldQPBuffer, align 4, !tbaa !3
  store i32 %106, i32* @PreviousQp2, align 4, !tbaa !3
  br label %if.end365

if.end365:                                        ; preds = %if.then353, %lor.lhs.false350, %if.else362, %if.then361
  %107 = load i32* @PreviousQp1, align 4, !tbaa !3
  %108 = load i32* @PreviousQp2, align 4, !tbaa !3
  %cmp366 = icmp eq i32 %107, %108
  br i1 %cmp366, label %if.then368, label %if.else370

if.then368:                                       ; preds = %if.end365
  %add369 = add nsw i32 %107, 2
  br label %if.end374

if.else370:                                       ; preds = %if.end365
  %add371 = add nsw i32 %108, %107
  %div372 = sdiv i32 %add371, 2
  %add373 = add nsw i32 %div372, 1
  br label %if.end374

if.end374:                                        ; preds = %if.else370, %if.then368
  %storemerge1096 = phi i32 [ %add373, %if.else370 ], [ %add369, %if.then368 ]
  %109 = load i32* @RC_MAX_QUANT, align 4, !tbaa !3
  %cmp375 = icmp slt i32 %storemerge1096, %109
  %cond380 = select i1 %cmp375, i32 %storemerge1096, i32 %109
  store i32 %cond380, i32* @m_Qc, align 4, !tbaa !3
  %110 = load i32* @RC_MIN_QUANT, align 4, !tbaa !3
  %cmp381 = icmp slt i32 %110, %cond380
  %cond386 = select i1 %cmp381, i32 %cond380, i32 %110
  br label %if.end531

if.else387:                                       ; preds = %if.then342
  %111 = load i32* @NumberofBFrames, align 4, !tbaa !3
  %add388 = add nsw i32 %111, 1
  %rem390 = srem i32 %add388, %99
  %cmp391 = icmp eq i32 %rem390, 0
  %.rem390 = select i1 %cmp391, i32 %99, i32 %rem390
  %cmp396 = icmp eq i32 %.rem390, 1
  br i1 %cmp396, label %if.then398, label %if.end418

if.then398:                                       ; preds = %if.else387
  %PicInterlace399 = getelementptr inbounds %struct.InputParameters* %98, i64 0, i32 91
  %112 = load i32* %PicInterlace399, align 4, !tbaa !3
  %cmp400 = icmp eq i32 %112, 2
  br i1 %cmp400, label %if.then405, label %lor.lhs.false402

lor.lhs.false402:                                 ; preds = %if.then398
  %MbInterlace403 = getelementptr inbounds %struct.InputParameters* %98, i64 0, i32 92
  %113 = load i32* %MbInterlace403, align 4, !tbaa !3
  %tobool404 = icmp eq i32 %113, 0
  br i1 %tobool404, label %if.end418, label %if.then405

if.then405:                                       ; preds = %lor.lhs.false402, %if.then398
  %FieldControl406 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134
  %114 = load i32* %FieldControl406, align 4, !tbaa !3
  %cmp407 = icmp eq i32 %114, 0
  br i1 %cmp407, label %if.then409, label %if.end418

if.then409:                                       ; preds = %if.then405
  %FieldFrame410 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 135
  %115 = load i32* %FieldFrame410, align 4, !tbaa !3
  %cmp411 = icmp eq i32 %115, 1
  %116 = load i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %116, i32* @PreviousQp1, align 4, !tbaa !3
  br i1 %cmp411, label %if.then413, label %if.else414

if.then413:                                       ; preds = %if.then409
  %117 = load i32* @FrameQPBuffer, align 4, !tbaa !3
  store i32 %117, i32* @PreviousQp2, align 4, !tbaa !3
  br label %if.end418

if.else414:                                       ; preds = %if.then409
  %118 = load i32* @FieldQPBuffer, align 4, !tbaa !3
  store i32 %118, i32* @PreviousQp2, align 4, !tbaa !3
  br label %if.end418

if.end418:                                        ; preds = %if.then405, %lor.lhs.false402, %if.else387, %if.then413, %if.else414
  %119 = load i32* @PreviousQp2, align 4, !tbaa !3
  %120 = load i32* @PreviousQp1, align 4, !tbaa !3
  %sub419 = sub nsw i32 %119, %120
  %121 = load i32* %successive_Bframe343, align 4, !tbaa !3
  %mul421 = mul nsw i32 %121, -2
  %sub422 = add nsw i32 %mul421, -3
  %cmp423 = icmp sgt i32 %sub419, %sub422
  br i1 %cmp423, label %if.else426, label %if.end462

if.else426:                                       ; preds = %if.end418
  %sub430 = add nsw i32 %mul421, -2
  %cmp431 = icmp eq i32 %sub419, %sub430
  br i1 %cmp431, label %if.end462, label %if.else434

if.else434:                                       ; preds = %if.else426
  %sub438 = add nsw i32 %mul421, -1
  %cmp439 = icmp eq i32 %sub419, %sub438
  br i1 %cmp439, label %if.end462, label %if.else442

if.else442:                                       ; preds = %if.else434
  %cmp446 = icmp eq i32 %sub419, %mul421
  br i1 %cmp446, label %if.end462, label %if.else449

if.else449:                                       ; preds = %if.else442
  %add4531094 = or i32 %mul421, 1
  %cmp454 = icmp eq i32 %sub419, %add4531094
  %.1103 = select i1 %cmp454, i32 1, i32 2
  br label %if.end462

if.end462:                                        ; preds = %if.else449, %if.else442, %if.else434, %if.else426, %if.end418
  %StepSize.1 = phi i32 [ -3, %if.end418 ], [ -2, %if.else426 ], [ -1, %if.else434 ], [ 0, %if.else442 ], [ %.1103, %if.else449 ]
  %add463 = add nsw i32 %120, %StepSize.1
  store i32 %add463, i32* @m_Qc, align 4, !tbaa !3
  %sub464 = add nsw i32 %.rem390, -1
  %mul465 = shl nsw i32 %sub464, 1
  %mul467 = mul nsw i32 %sub464, -2
  %mul470 = mul nsw i32 %sub419, %sub464
  %122 = load i32* %successive_Bframe343, align 4, !tbaa !3
  %sub472 = add nsw i32 %122, -1
  %div473 = sdiv i32 %mul470, %sub472
  %cmp474 = icmp slt i32 %mul467, %div473
  %div473.mul467 = select i1 %cmp474, i32 %div473, i32 %mul467
  %cmp488 = icmp slt i32 %mul465, %div473.mul467
  %mul465.div473.mul467 = select i1 %cmp488, i32 %mul465, i32 %div473.mul467
  %add518 = add nsw i32 %mul465.div473.mul467, %add463
  %123 = load i32* @RC_MAX_QUANT, align 4, !tbaa !3
  %cmp519 = icmp slt i32 %add518, %123
  %cond524 = select i1 %cmp519, i32 %add518, i32 %123
  store i32 %cond524, i32* @m_Qc, align 4, !tbaa !3
  %124 = load i32* @RC_MIN_QUANT, align 4, !tbaa !3
  %cmp525 = icmp slt i32 %124, %cond524
  %cond530 = select i1 %cmp525, i32 %cond524, i32 %124
  br label %if.end531

if.end531:                                        ; preds = %if.end462, %if.end374
  %storemerge1095 = phi i32 [ %cond530, %if.end462 ], [ %cond386, %if.end374 ]
  store i32 %storemerge1095, i32* @m_Qc, align 4, !tbaa !3
  br label %return

if.else532:                                       ; preds = %lor.lhs.false338
  %125 = load i32* @m_Qc, align 4, !tbaa !3
  br label %return

if.then537:                                       ; preds = %land.lhs.true323, %if.else332
  %NumberofGOP = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 128
  %126 = load i32* %NumberofGOP, align 4, !tbaa !3
  %cmp538 = icmp eq i32 %126, 1
  br i1 %cmp538, label %land.lhs.true540, label %if.else590

land.lhs.true540:                                 ; preds = %if.then537
  %NumberofPPicture541 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 130
  %127 = load i32* %NumberofPPicture541, align 4, !tbaa !3
  %cmp542 = icmp eq i32 %127, 0
  br i1 %cmp542, label %if.then544, label %if.else590

if.then544:                                       ; preds = %land.lhs.true540
  %FieldControl545 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134
  %128 = load i32* %FieldControl545, align 4, !tbaa !3
  switch i32 %128, label %if.end1036 [
    i32 0, label %if.then556
    i32 1, label %land.lhs.true552
  ]

land.lhs.true552:                                 ; preds = %if.then544
  %IFLAG553 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 137
  %129 = load i32* %IFLAG553, align 4, !tbaa !3
  %cmp554 = icmp eq i32 %129, 0
  br i1 %cmp554, label %if.then556, label %if.end1036

if.then556:                                       ; preds = %if.then544, %land.lhs.true552
  %130 = load i32* @MyInitialQp, align 4, !tbaa !3
  store i32 %130, i32* @m_Qc, align 4, !tbaa !3
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 121
  store i32 0, i32* %NumberofBasicUnitHeaderBits, align 4, !tbaa !3
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 122
  store i32 0, i32* %NumberofBasicUnitTextureBits, align 4, !tbaa !3
  %131 = load i32* @NumberofBasicUnit, align 4, !tbaa !3
  %dec = add nsw i32 %131, -1
  store i32 %dec, i32* @NumberofBasicUnit, align 4, !tbaa !3
  %132 = or i32 %dec, %topfield
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %if.then561, label %if.end587

if.then561:                                       ; preds = %if.then556
  %134 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag562 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %134, i64 0, i32 25
  %135 = load i32* %frame_mbs_only_flag562, align 4, !tbaa !1
  %tobool563 = icmp eq i32 %135, 0
  br i1 %tobool563, label %lor.lhs.false564, label %if.then568

lor.lhs.false564:                                 ; preds = %if.then561
  %136 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PicInterlace565 = getelementptr inbounds %struct.InputParameters* %136, i64 0, i32 91
  %137 = load i32* %PicInterlace565, align 4, !tbaa !3
  switch i32 %137, label %lor.lhs.false575 [
    i32 1, label %if.then568
    i32 2, label %if.then578
  ]

if.then568:                                       ; preds = %lor.lhs.false564, %if.then561
  %138 = load i32* @m_Qc, align 4, !tbaa !3
  %TotalQpforPPicture569 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129
  %139 = load i32* %TotalQpforPPicture569, align 4, !tbaa !3
  %add570 = add nsw i32 %139, %138
  store i32 %add570, i32* %TotalQpforPPicture569, align 4, !tbaa !3
  %140 = load i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %140, i32* @PreviousQp1, align 4, !tbaa !3
  %141 = load i32* @m_Qc, align 4, !tbaa !3
  store i32 %141, i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %141, i32* @PAveFrameQP, align 4, !tbaa !3
  %142 = load i32* @PAveHeaderBits2, align 4, !tbaa !3
  store i32 %142, i32* @PAveHeaderBits3, align 4, !tbaa !3
  br label %if.end587

lor.lhs.false575:                                 ; preds = %lor.lhs.false564
  %MbInterlace576 = getelementptr inbounds %struct.InputParameters* %136, i64 0, i32 92
  %143 = load i32* %MbInterlace576, align 4, !tbaa !3
  %tobool577 = icmp eq i32 %143, 0
  br i1 %tobool577, label %if.end587, label %if.then578

if.then578:                                       ; preds = %lor.lhs.false564, %lor.lhs.false575
  %144 = load i32* %FieldControl545, align 4, !tbaa !3
  %cmp580 = icmp eq i32 %144, 0
  %145 = load i32* @m_Qc, align 4, !tbaa !3
  br i1 %cmp580, label %if.then582, label %if.else583

if.then582:                                       ; preds = %if.then578
  store i32 %145, i32* @FrameQPBuffer, align 4, !tbaa !3
  %146 = load i32* @PAveHeaderBits2, align 4, !tbaa !3
  store i32 %146, i32* @FrameAveHeaderBits, align 4, !tbaa !3
  br label %if.end587

if.else583:                                       ; preds = %if.then578
  store i32 %145, i32* @FieldQPBuffer, align 4, !tbaa !3
  %147 = load i32* @PAveHeaderBits2, align 4, !tbaa !3
  store i32 %147, i32* @FieldAveHeaderBits, align 4, !tbaa !3
  br label %if.end587

if.end587:                                        ; preds = %lor.lhs.false575, %if.then556, %if.then568, %if.then582, %if.else583
  %148 = load i32* @m_Qc, align 4, !tbaa !3
  store i32 %148, i32* @Pm_Qp, align 4, !tbaa !3
  %149 = load i32* @TotalFrameQP, align 4, !tbaa !3
  %add588 = add nsw i32 %149, %148
  store i32 %add588, i32* @TotalFrameQP, align 4, !tbaa !3
  br label %return

if.else590:                                       ; preds = %land.lhs.true540, %if.then537
  %150 = load double* @Pm_X1, align 8, !tbaa !4
  store double %150, double* @m_X1, align 8, !tbaa !4
  %151 = load double* @Pm_X2, align 8, !tbaa !4
  store double %151, double* @m_X2, align 8, !tbaa !4
  %152 = load i32* @PPreHeader, align 4, !tbaa !3
  store i32 %152, i32* @m_Hp, align 4, !tbaa !3
  %153 = load i32* @Pm_Qp, align 4, !tbaa !3
  store i32 %153, i32* @m_Qp, align 4, !tbaa !3
  %154 = load i32* @PDuantQp, align 4, !tbaa !3
  store i32 %154, i32* @DuantQp, align 4, !tbaa !3
  %155 = load double* @PMADPictureC1, align 8, !tbaa !4
  store double %155, double* @MADPictureC1, align 8, !tbaa !4
  %156 = load double* @PMADPictureC2, align 8, !tbaa !4
  store double %156, double* @MADPictureC2, align 8, !tbaa !4
  %FieldControl591 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 134
  %157 = load i32* %FieldControl591, align 4, !tbaa !3
  %cmp592 = icmp eq i32 %157, 0
  %158 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  br i1 %cmp592, label %if.end597, label %if.else595

if.else595:                                       ; preds = %if.else590
  %div596 = sdiv i32 %158, 2
  br label %if.end597

if.end597:                                        ; preds = %if.else590, %if.else595
  %SumofBasicUnit.0 = phi i32 [ %div596, %if.else595 ], [ %158, %if.else590 ]
  %159 = load i32* @NumberofBasicUnit, align 4, !tbaa !3
  %cmp598 = icmp eq i32 %159, %SumofBasicUnit.0
  br i1 %cmp598, label %if.then600, label %if.else652

if.then600:                                       ; preds = %if.end597
  %160 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PicInterlace601 = getelementptr inbounds %struct.InputParameters* %160, i64 0, i32 91
  %161 = load i32* %PicInterlace601, align 4, !tbaa !3
  %cmp602 = icmp eq i32 %161, 2
  br i1 %cmp602, label %land.lhs.true607, label %lor.lhs.false604

lor.lhs.false604:                                 ; preds = %if.then600
  %MbInterlace605 = getelementptr inbounds %struct.InputParameters* %160, i64 0, i32 92
  %162 = load i32* %MbInterlace605, align 4, !tbaa !3
  %tobool606 = icmp eq i32 %162, 0
  %cmp592.not = xor i1 %cmp592, true
  %brmerge = or i1 %tobool606, %cmp592.not
  br i1 %brmerge, label %if.end632, label %if.then611

land.lhs.true607:                                 ; preds = %if.then600
  br i1 %cmp592, label %if.then611, label %if.end632

if.then611:                                       ; preds = %lor.lhs.false604, %land.lhs.true607
  %FieldFrame612 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 135
  %163 = load i32* %FieldFrame612, align 4, !tbaa !3
  %cmp613 = icmp eq i32 %163, 1
  %NumberofPPicture616 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 130
  %164 = load i32* %NumberofPPicture616, align 4, !tbaa !3
  %cmp617 = icmp sgt i32 %164, 0
  br i1 %cmp613, label %if.then615, label %if.else623

if.then615:                                       ; preds = %if.then611
  br i1 %cmp617, label %if.then619, label %if.end622

if.then619:                                       ; preds = %if.then615
  %165 = load i32* @FrameQPBuffer, align 4, !tbaa !3
  %TotalQpforPPicture620 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129
  %166 = load i32* %TotalQpforPPicture620, align 4, !tbaa !3
  %add621 = add nsw i32 %166, %165
  store i32 %add621, i32* %TotalQpforPPicture620, align 4, !tbaa !3
  br label %if.end622

if.end622:                                        ; preds = %if.then619, %if.then615
  %167 = load i32* @FrameQPBuffer, align 4, !tbaa !3
  store i32 %167, i32* @PAveFrameQP, align 4, !tbaa !3
  %168 = load i32* @FrameAveHeaderBits, align 4, !tbaa !3
  store i32 %168, i32* @PAveHeaderBits3, align 4, !tbaa !3
  br label %if.end632

if.else623:                                       ; preds = %if.then611
  br i1 %cmp617, label %if.then627, label %if.end630

if.then627:                                       ; preds = %if.else623
  %169 = load i32* @FieldQPBuffer, align 4, !tbaa !3
  %TotalQpforPPicture628 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129
  %170 = load i32* %TotalQpforPPicture628, align 4, !tbaa !3
  %add629 = add nsw i32 %170, %169
  store i32 %add629, i32* %TotalQpforPPicture628, align 4, !tbaa !3
  br label %if.end630

if.end630:                                        ; preds = %if.then627, %if.else623
  %171 = load i32* @FieldQPBuffer, align 4, !tbaa !3
  store i32 %171, i32* @PAveFrameQP, align 4, !tbaa !3
  %172 = load i32* @FieldAveHeaderBits, align 4, !tbaa !3
  store i32 %172, i32* @PAveHeaderBits3, align 4, !tbaa !3
  br label %if.end632

if.end632:                                        ; preds = %lor.lhs.false604, %land.lhs.true607, %if.end622, %if.end630
  %173 = load i64* @T, align 8, !tbaa !6
  %cmp633 = icmp slt i64 %173, 1
  %174 = load i32* @PAveFrameQP, align 4, !tbaa !3
  br i1 %cmp633, label %if.then635, label %if.else648

if.then635:                                       ; preds = %if.end632
  %add636 = add nsw i32 %174, 2
  %175 = load i32* @RC_MAX_QUANT, align 4, !tbaa !3
  %cmp637 = icmp sgt i32 %add636, %175
  %.add636 = select i1 %cmp637, i32 %175, i32 %add636
  store i32 %.add636, i32* @m_Qc, align 4, !tbaa !3
  %tobool641 = icmp eq i32 %topfield, 0
  br i1 %tobool641, label %lor.lhs.false642, label %if.then646

lor.lhs.false642:                                 ; preds = %if.then635
  %176 = load i32* %FieldControl591, align 4, !tbaa !3
  %cmp644 = icmp eq i32 %176, 0
  br i1 %cmp644, label %if.then646, label %if.end649

if.then646:                                       ; preds = %if.then635, %lor.lhs.false642
  store i32 1, i32* @GOPOverdue, align 4, !tbaa !1
  br label %if.end649

if.else648:                                       ; preds = %if.end632
  store i32 %174, i32* @m_Qc, align 4, !tbaa !3
  br label %if.end649

if.end649:                                        ; preds = %lor.lhs.false642, %if.then646, %if.else648
  %177 = phi i32 [ %.add636, %if.then646 ], [ %174, %if.else648 ], [ %.add636, %lor.lhs.false642 ]
  %178 = load i32* @TotalFrameQP, align 4, !tbaa !3
  %add650 = add nsw i32 %178, %177
  store i32 %add650, i32* @TotalFrameQP, align 4, !tbaa !3
  %179 = load i32* @NumberofBasicUnit, align 4, !tbaa !3
  %dec651 = add nsw i32 %179, -1
  store i32 %dec651, i32* @NumberofBasicUnit, align 4, !tbaa !3
  store i32 %174, i32* @Pm_Qp, align 4, !tbaa !3
  br label %return

if.else652:                                       ; preds = %if.end597
  %NumberofBasicUnitHeaderBits653 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 121
  %180 = load i32* %NumberofBasicUnitHeaderBits653, align 4, !tbaa !3
  %NumberofBasicUnitTextureBits654 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 122
  %181 = load i32* %NumberofBasicUnitTextureBits654, align 4, !tbaa !3
  %add655 = add nsw i32 %181, %180
  store i32 %add655, i32* @TotalBasicUnitBits, align 4, !tbaa !3
  %conv656 = sext i32 %add655 to i64
  %182 = load i64* @T, align 8, !tbaa !6
  %sub657 = sub nsw i64 %182, %conv656
  store i64 %sub657, i64* @T, align 8, !tbaa !6
  store i32 0, i32* %NumberofBasicUnitHeaderBits653, align 4, !tbaa !3
  store i32 0, i32* %NumberofBasicUnitTextureBits654, align 4, !tbaa !3
  %cmp660 = icmp slt i64 %sub657, 0
  br i1 %cmp660, label %if.then662, label %if.else786

if.then662:                                       ; preds = %if.else652
  %183 = load i32* @GOPOverdue, align 4, !tbaa !1
  %cmp663 = icmp eq i32 %183, 1
  %184 = load i32* @m_Qp, align 4, !tbaa !3
  %185 = load i32* @DDquant, align 4, !tbaa !3
  %.pn = select i1 %cmp663, i32 2, i32 %185
  %storemerge1091 = add nsw i32 %.pn, %184
  %186 = load i32* @RC_MAX_QUANT, align 4, !tbaa !3
  %cmp670 = icmp slt i32 %storemerge1091, %186
  %cond675 = select i1 %cmp670, i32 %storemerge1091, i32 %186
  store i32 %cond675, i32* @m_Qc, align 4, !tbaa !3
  %187 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %basicunit = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 130
  %188 = load i32* %basicunit, align 4, !tbaa !3
  %189 = load i32* @MBPerRow, align 4, !tbaa !3
  %cmp676 = icmp slt i32 %188, %189
  %190 = load i32* @PAveFrameQP, align 4, !tbaa !3
  br i1 %cmp676, label %if.else687, label %if.then678

if.then678:                                       ; preds = %if.then662
  %add679 = add nsw i32 %190, 6
  %cmp680 = icmp slt i32 %cond675, %add679
  %cond675.add679 = select i1 %cmp680, i32 %cond675, i32 %add679
  br label %if.end696

if.else687:                                       ; preds = %if.then662
  %add688 = add nsw i32 %190, 3
  %cmp689 = icmp slt i32 %cond675, %add688
  %cond675.add688 = select i1 %cmp689, i32 %cond675, i32 %add688
  br label %if.end696

if.end696:                                        ; preds = %if.else687, %if.then678
  %storemerge1092 = phi i32 [ %cond675.add688, %if.else687 ], [ %cond675.add679, %if.then678 ]
  store i32 %storemerge1092, i32* @m_Qc, align 4, !tbaa !3
  %191 = load i32* @TotalFrameQP, align 4, !tbaa !3
  %add697 = add nsw i32 %191, %storemerge1092
  store i32 %add697, i32* @TotalFrameQP, align 4, !tbaa !3
  %192 = load i32* @NumberofBasicUnit, align 4, !tbaa !3
  %dec698 = add nsw i32 %192, -1
  store i32 %dec698, i32* @NumberofBasicUnit, align 4, !tbaa !3
  %cmp699 = icmp eq i32 %dec698, 0
  br i1 %cmp699, label %if.then701, label %if.end780

if.then701:                                       ; preds = %if.end696
  %tobool702 = icmp eq i32 %topfield, 0
  br i1 %tobool702, label %if.then707, label %lor.lhs.false703

lor.lhs.false703:                                 ; preds = %if.then701
  %193 = load i32* %FieldControl591, align 4, !tbaa !3
  %cmp705 = icmp eq i32 %193, 0
  br i1 %cmp705, label %if.then707, label %if.end780

if.then707:                                       ; preds = %if.then701, %lor.lhs.false703
  %194 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag708 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %194, i64 0, i32 25
  %195 = load i32* %frame_mbs_only_flag708, align 4, !tbaa !1
  %tobool709 = icmp eq i32 %195, 0
  br i1 %tobool709, label %lor.lhs.false710, label %if.then714

lor.lhs.false710:                                 ; preds = %if.then707
  %PicInterlace711 = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 91
  %196 = load i32* %PicInterlace711, align 4, !tbaa !3
  switch i32 %196, label %lor.lhs.false755 [
    i32 1, label %if.then714
    i32 2, label %if.then758
  ]

if.then714:                                       ; preds = %lor.lhs.false710, %if.then707
  %conv715 = sitofp i32 %add697 to double
  %197 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %conv717 = sitofp i32 %197 to double
  %div718 = fdiv double %conv715, %conv717
  %add719 = fadd double %div718, 5.000000e-01
  %conv720 = fptosi double %add719 to i32
  %NumberofPPicture721 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 130
  %198 = load i32* %NumberofPPicture721, align 4, !tbaa !3
  %intra_period = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 31
  %199 = load i32* %intra_period, align 4, !tbaa !3
  %sub722 = add nsw i32 %199, -2
  %cmp723 = icmp eq i32 %198, %sub722
  br i1 %cmp723, label %if.then725, label %if.end726

if.then725:                                       ; preds = %if.then714
  store i32 %conv720, i32* @QPLastPFrame, align 4, !tbaa !3
  br label %if.end726

if.end726:                                        ; preds = %if.then725, %if.then714
  %TotalQpforPPicture727 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 129
  %200 = load i32* %TotalQpforPPicture727, align 4, !tbaa !3
  %add728 = add nsw i32 %200, %conv720
  store i32 %add728, i32* %TotalQpforPPicture727, align 4, !tbaa !3
  %201 = load i32* @GOPOverdue, align 4, !tbaa !1
  %cmp729 = icmp eq i32 %201, 1
  br i1 %cmp729, label %if.then731, label %if.else733

if.then731:                                       ; preds = %if.end726
  %202 = load i32* @PreviousQp2, align 4, !tbaa !3
  %add732 = add nsw i32 %202, 1
  store i32 %add732, i32* @PreviousQp1, align 4, !tbaa !3
  store i32 %conv720, i32* @PreviousQp2, align 4, !tbaa !3
  br label %if.end750

if.else733:                                       ; preds = %if.end726
  %203 = load i32* %NumberofPPicture721, align 4, !tbaa !3
  %cmp735 = icmp eq i32 %203, 0
  br i1 %cmp735, label %land.lhs.true737, label %if.else742

land.lhs.true737:                                 ; preds = %if.else733
  %204 = load i32* %NumberofGOP, align 4, !tbaa !3
  %cmp739 = icmp sgt i32 %204, 1
  br i1 %cmp739, label %if.then741, label %if.end750

if.then741:                                       ; preds = %land.lhs.true737
  %205 = load i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %205, i32* @PreviousQp1, align 4, !tbaa !3
  store i32 %conv720, i32* @PreviousQp2, align 4, !tbaa !3
  br label %if.end750

if.else742:                                       ; preds = %if.else733
  %cmp744 = icmp sgt i32 %203, 0
  br i1 %cmp744, label %if.then746, label %if.end750

if.then746:                                       ; preds = %if.else742
  %206 = load i32* @PreviousQp2, align 4, !tbaa !3
  %add747 = add nsw i32 %206, 1
  store i32 %add747, i32* @PreviousQp1, align 4, !tbaa !3
  store i32 %conv720, i32* @PreviousQp2, align 4, !tbaa !3
  br label %if.end750

if.end750:                                        ; preds = %land.lhs.true737, %if.then741, %if.then746, %if.else742, %if.then731
  store i32 %conv720, i32* @PAveFrameQP, align 4, !tbaa !3
  %207 = load i32* @PAveHeaderBits2, align 4, !tbaa !3
  store i32 %207, i32* @PAveHeaderBits3, align 4, !tbaa !3
  %.pre1116 = load i32* @m_Qc, align 4, !tbaa !3
  br label %if.end780

lor.lhs.false755:                                 ; preds = %lor.lhs.false710
  %MbInterlace756 = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 92
  %208 = load i32* %MbInterlace756, align 4, !tbaa !3
  %tobool757 = icmp eq i32 %208, 0
  br i1 %tobool757, label %if.end780, label %if.then758

if.then758:                                       ; preds = %lor.lhs.false755, %lor.lhs.false710
  %209 = load i32* %FieldControl591, align 4, !tbaa !3
  %cmp760 = icmp eq i32 %209, 0
  %conv763 = sitofp i32 %add697 to double
  %210 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %conv765 = sitofp i32 %210 to double
  %div766 = fdiv double %conv763, %conv765
  %add767 = fadd double %div766, 5.000000e-01
  %conv768 = fptosi double %add767 to i32
  br i1 %cmp760, label %if.then762, label %if.else769

if.then762:                                       ; preds = %if.then758
  store i32 %conv768, i32* @FrameQPBuffer, align 4, !tbaa !3
  %211 = load i32* @PAveHeaderBits2, align 4, !tbaa !3
  store i32 %211, i32* @FrameAveHeaderBits, align 4, !tbaa !3
  br label %if.end780

if.else769:                                       ; preds = %if.then758
  store i32 %conv768, i32* @FieldQPBuffer, align 4, !tbaa !3
  %212 = load i32* @PAveHeaderBits2, align 4, !tbaa !3
  store i32 %212, i32* @FieldAveHeaderBits, align 4, !tbaa !3
  br label %if.end780

if.end780:                                        ; preds = %lor.lhs.false755, %lor.lhs.false703, %if.else769, %if.then762, %if.end750, %if.end696
  %213 = phi i32 [ %storemerge1092, %lor.lhs.false755 ], [ %storemerge1092, %lor.lhs.false703 ], [ %storemerge1092, %if.else769 ], [ %storemerge1092, %if.then762 ], [ %.pre1116, %if.end750 ], [ %storemerge1092, %if.end696 ]
  %214 = phi i32 [ %183, %lor.lhs.false755 ], [ %183, %lor.lhs.false703 ], [ %183, %if.else769 ], [ %183, %if.then762 ], [ %201, %if.end750 ], [ %183, %if.end696 ]
  %cmp781 = icmp eq i32 %214, 1
  %PAveFrameQP.m_Qc = select i1 %cmp781, i32* @PAveFrameQP, i32* @m_Qc
  %storemerge1093 = load i32* %PAveFrameQP.m_Qc, align 4
  store i32 %storemerge1093, i32* @Pm_Qp, align 4, !tbaa !3
  br label %return

if.else786:                                       ; preds = %if.else652
  %215 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PicInterlace787 = getelementptr inbounds %struct.InputParameters* %215, i64 0, i32 91
  %216 = load i32* %PicInterlace787, align 4, !tbaa !3
  %cmp788 = icmp eq i32 %216, 2
  br i1 %cmp788, label %land.lhs.true793, label %lor.lhs.false790

lor.lhs.false790:                                 ; preds = %if.else786
  %MbInterlace791 = getelementptr inbounds %struct.InputParameters* %215, i64 0, i32 92
  %217 = load i32* %MbInterlace791, align 4, !tbaa !3
  %tobool792 = icmp eq i32 %217, 0
  br i1 %tobool792, label %if.else812, label %land.lhs.true793

land.lhs.true793:                                 ; preds = %lor.lhs.false790, %if.else786
  %218 = load i32* %FieldControl591, align 4, !tbaa !3
  %cmp795 = icmp eq i32 %218, 1
  br i1 %cmp795, label %if.then797, label %if.else812

if.then797:                                       ; preds = %land.lhs.true793
  %219 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %220 = load i32* @NumberofBasicUnit, align 4, !tbaa !3
  %sub798 = sub nsw i32 %219, %220
  %idxprom = sext i32 %sub798 to i64
  %221 = load double** @FCBUPFMAD, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds double* %221, i64 %idxprom
  %222 = load double* %arrayidx, align 8, !tbaa !4
  %mul799 = fmul double %155, %222
  %add800 = fadd double %mul799, %156
  store double %add800, double* @CurrentFrameMAD, align 8, !tbaa !4
  store double 0.000000e+00, double* @TotalBUMAD, align 8, !tbaa !4
  %cmp8031107 = icmp sgt i32 %220, 0
  br i1 %cmp8031107, label %for.body.lr.ph, label %if.end833

for.body.lr.ph:                                   ; preds = %if.then797
  %223 = sext i32 %219 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %224 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add810, %for.body ]
  %indvars.iv = phi i64 [ %223, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %arrayidx806 = getelementptr inbounds double* %221, i64 %indvars.iv.next
  %225 = load double* %arrayidx806, align 8, !tbaa !4
  %mul807 = fmul double %155, %225
  %add808 = fadd double %mul807, %156
  store double %add808, double* @CurrentBUMAD, align 8, !tbaa !4
  %mul809 = fmul double %add808, %add808
  %add810 = fadd double %224, %mul809
  store double %add810, double* @TotalBUMAD, align 8, !tbaa !4
  %226 = trunc i64 %indvars.iv.next to i32
  %cmp803 = icmp sgt i32 %226, %sub798
  br i1 %cmp803, label %for.body, label %if.end833

if.else812:                                       ; preds = %lor.lhs.false790, %land.lhs.true793
  %227 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %228 = load i32* @NumberofBasicUnit, align 4, !tbaa !3
  %sub813 = sub nsw i32 %227, %228
  %idxprom814 = sext i32 %sub813 to i64
  %229 = load double** @BUPFMAD, align 8, !tbaa !0
  %arrayidx815 = getelementptr inbounds double* %229, i64 %idxprom814
  %230 = load double* %arrayidx815, align 8, !tbaa !4
  %mul816 = fmul double %155, %230
  %add817 = fadd double %mul816, %156
  store double %add817, double* @CurrentFrameMAD, align 8, !tbaa !4
  store double 0.000000e+00, double* @TotalBUMAD, align 8, !tbaa !4
  %cmp8211112 = icmp sgt i32 %228, 0
  br i1 %cmp8211112, label %for.body823.lr.ph, label %if.end833

for.body823.lr.ph:                                ; preds = %if.else812
  %231 = sext i32 %227 to i64
  br label %for.body823

for.body823:                                      ; preds = %for.body823.lr.ph, %for.body823
  %232 = phi double [ 0.000000e+00, %for.body823.lr.ph ], [ %add829, %for.body823 ]
  %indvars.iv1114 = phi i64 [ %231, %for.body823.lr.ph ], [ %indvars.iv.next1115, %for.body823 ]
  %indvars.iv.next1115 = add i64 %indvars.iv1114, -1
  %arrayidx825 = getelementptr inbounds double* %229, i64 %indvars.iv.next1115
  %233 = load double* %arrayidx825, align 8, !tbaa !4
  %mul826 = fmul double %155, %233
  %add827 = fadd double %mul826, %156
  store double %add827, double* @CurrentBUMAD, align 8, !tbaa !4
  %mul828 = fmul double %add827, %add827
  %add829 = fadd double %232, %mul828
  store double %add829, double* @TotalBUMAD, align 8, !tbaa !4
  %234 = trunc i64 %indvars.iv.next1115 to i32
  %cmp821 = icmp sgt i32 %234, %sub813
  br i1 %cmp821, label %for.body823, label %if.end833

if.end833:                                        ; preds = %if.else812, %for.body823, %if.then797, %for.body
  %235 = phi i32 [ %219, %for.body ], [ %219, %if.then797 ], [ %227, %for.body823 ], [ %227, %if.else812 ]
  %236 = phi double [ %add810, %for.body ], [ 0.000000e+00, %if.then797 ], [ %add829, %for.body823 ], [ 0.000000e+00, %if.else812 ]
  %237 = phi double [ %add800, %for.body ], [ %add800, %if.then797 ], [ %add817, %for.body823 ], [ %add817, %if.else812 ]
  %conv834 = sitofp i64 %sub657 to double
  %mul835 = fmul double %conv834, %237
  %mul836 = fmul double %237, %mul835
  %div837 = fdiv double %mul836, %236
  %conv838 = fptosi double %div837 to i32
  %238 = load i32* @PAveHeaderBits2, align 4, !tbaa !3
  %sub839 = sub nsw i32 %conv838, %238
  %239 = load double* @bit_rate, align 8, !tbaa !4
  %240 = load double* @MINVALUE, align 8, !tbaa !4
  %241 = load double* @frame_rate, align 8, !tbaa !4
  %mul840 = fmul double %240, %241
  %conv841 = sitofp i32 %235 to double
  %mul842 = fmul double %mul840, %conv841
  %div843 = fdiv double %239, %mul842
  %conv844 = fptosi double %div843 to i32
  %cmp845 = icmp slt i32 %sub839, %conv844
  %conv844.sub839 = select i1 %cmp845, i32 %conv844, i32 %sub839
  %mul856 = fmul double %237, %150
  %mul857 = fmul double %237, %mul856
  %mul858 = fmul double %150, %mul857
  %mul859 = fmul double %151, 4.000000e+00
  %mul860 = fmul double %237, %mul859
  %conv861 = sitofp i32 %conv844.sub839 to double
  %mul862 = fmul double %mul860, %conv861
  %add863 = fadd double %mul858, %mul862
  %cmp864 = fcmp oeq double %151, 0.000000e+00
  %cmp867 = fcmp olt double %add863, 0.000000e+00
  %or.cond1104 = or i1 %cmp864, %cmp867
  br i1 %or.cond1104, label %if.then875, label %lor.lhs.false869

lor.lhs.false869:                                 ; preds = %if.end833
  %call870 = tail call double @sqrt(double %add863) #7
  %242 = load double* @m_X1, align 8, !tbaa !4
  %243 = load double* @CurrentFrameMAD, align 8, !tbaa !4
  %mul871 = fmul double %242, %243
  %sub872 = fsub double %call870, %mul871
  %cmp873 = fcmp ugt double %sub872, 0.000000e+00
  br i1 %cmp873, label %if.else881, label %if.then875

if.then875:                                       ; preds = %lor.lhs.false869, %if.end833
  %244 = phi double [ %243, %lor.lhs.false869 ], [ %237, %if.end833 ]
  %245 = phi double [ %242, %lor.lhs.false869 ], [ %150, %if.end833 ]
  %mul876 = fmul double %245, %244
  %div878 = fdiv double %mul876, %conv861
  br label %if.end890

if.else881:                                       ; preds = %lor.lhs.false869
  %246 = load double* @m_X2, align 8, !tbaa !4
  %mul882 = fmul double %246, 2.000000e+00
  %mul883 = fmul double %243, %mul882
  %call884 = tail call double @sqrt(double %add863) #7
  %247 = load double* @m_X1, align 8, !tbaa !4
  %248 = load double* @CurrentFrameMAD, align 8, !tbaa !4
  %mul885 = fmul double %247, %248
  %sub886 = fsub double %call884, %mul885
  %div887 = fdiv double %mul883, %sub886
  br label %if.end890

if.end890:                                        ; preds = %if.else881, %if.then875
  %storemerge.in.in = phi double [ %div887, %if.else881 ], [ %div878, %if.then875 ]
  %storemerge.in = fptrunc double %storemerge.in.in to float
  %storemerge = fpext float %storemerge.in to double
  store double %storemerge, double* @m_Qstep, align 8, !tbaa !4
  %call891 = tail call i32 @Qstep2QP(double %storemerge) #9
  %249 = load i32* @m_Qp, align 4, !tbaa !3
  %250 = load i32* @DDquant, align 4, !tbaa !3
  %add892 = add nsw i32 %250, %249
  %cmp893 = icmp slt i32 %add892, %call891
  %add892.call891 = select i1 %cmp893, i32 %add892, i32 %call891
  store i32 %add892.call891, i32* @m_Qc, align 4, !tbaa !3
  %251 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %basicunit900 = getelementptr inbounds %struct.InputParameters* %251, i64 0, i32 130
  %252 = load i32* %basicunit900, align 4, !tbaa !3
  %253 = load i32* @MBPerRow, align 4, !tbaa !3
  %cmp901 = icmp slt i32 %252, %253
  %254 = load i32* @PAveFrameQP, align 4, !tbaa !3
  br i1 %cmp901, label %if.else912, label %if.then903

if.then903:                                       ; preds = %if.end890
  %add904 = add nsw i32 %254, 6
  %cmp905 = icmp slt i32 %add904, %add892.call891
  %add904.add892.call891 = select i1 %cmp905, i32 %add904, i32 %add892.call891
  br label %if.end921

if.else912:                                       ; preds = %if.end890
  %add913 = add nsw i32 %254, 3
  %cmp914 = icmp slt i32 %add913, %add892.call891
  %add913.add892.call891 = select i1 %cmp914, i32 %add913, i32 %add892.call891
  br label %if.end921

if.end921:                                        ; preds = %if.else912, %if.then903
  %storemerge1089 = phi i32 [ %add913.add892.call891, %if.else912 ], [ %add904.add892.call891, %if.then903 ]
  %255 = load i32* @RC_MAX_QUANT, align 4, !tbaa !3
  %cmp922 = icmp slt i32 %storemerge1089, %255
  %cond927 = select i1 %cmp922, i32 %storemerge1089, i32 %255
  %sub928 = sub nsw i32 %249, %250
  %cmp929 = icmp slt i32 %sub928, %cond927
  %cond927.sub928 = select i1 %cmp929, i32 %cond927, i32 %sub928
  store i32 %cond927.sub928, i32* @m_Qc, align 4, !tbaa !3
  %256 = load i32* %basicunit900, align 4, !tbaa !3
  %cmp937 = icmp slt i32 %256, %253
  br i1 %cmp937, label %if.else948, label %if.then939

if.then939:                                       ; preds = %if.end921
  %sub940 = add nsw i32 %254, -6
  %cmp941 = icmp slt i32 %sub940, %cond927.sub928
  %cond927.sub928.sub940 = select i1 %cmp941, i32 %cond927.sub928, i32 %sub940
  br label %if.end957

if.else948:                                       ; preds = %if.end921
  %sub949 = add nsw i32 %254, -3
  %cmp950 = icmp slt i32 %sub949, %cond927.sub928
  %cond927.sub928.sub949 = select i1 %cmp950, i32 %cond927.sub928, i32 %sub949
  br label %if.end957

if.end957:                                        ; preds = %if.else948, %if.then939
  %storemerge1090 = phi i32 [ %cond927.sub928.sub949, %if.else948 ], [ %cond927.sub928.sub940, %if.then939 ]
  %257 = load i32* @RC_MIN_QUANT, align 4, !tbaa !3
  %cmp958 = icmp slt i32 %257, %storemerge1090
  %cond963 = select i1 %cmp958, i32 %storemerge1090, i32 %257
  store i32 %cond963, i32* @m_Qc, align 4, !tbaa !3
  %258 = load i32* @TotalFrameQP, align 4, !tbaa !3
  %add964 = add nsw i32 %cond963, %258
  store i32 %add964, i32* @TotalFrameQP, align 4, !tbaa !3
  store i32 %cond963, i32* @Pm_Qp, align 4, !tbaa !3
  %259 = load i32* @NumberofBasicUnit, align 4, !tbaa !3
  %dec965 = add nsw i32 %259, -1
  store i32 %dec965, i32* @NumberofBasicUnit, align 4, !tbaa !3
  %cmp966 = icmp eq i32 %dec965, 0
  br i1 %cmp966, label %land.lhs.true968, label %return

land.lhs.true968:                                 ; preds = %if.end957
  %260 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type969 = getelementptr inbounds %struct.ImageParameters* %260, i64 0, i32 6
  %261 = load i32* %type969, align 4, !tbaa !3
  %cmp970 = icmp eq i32 %261, 0
  br i1 %cmp970, label %if.then972, label %return

if.then972:                                       ; preds = %land.lhs.true968
  %tobool973 = icmp eq i32 %topfield, 0
  br i1 %tobool973, label %if.then978, label %lor.lhs.false974

lor.lhs.false974:                                 ; preds = %if.then972
  %FieldControl975 = getelementptr inbounds %struct.ImageParameters* %260, i64 0, i32 134
  %262 = load i32* %FieldControl975, align 4, !tbaa !3
  %cmp976 = icmp eq i32 %262, 0
  br i1 %cmp976, label %if.then978, label %return

if.then978:                                       ; preds = %if.then972, %lor.lhs.false974
  %263 = load %struct.seq_parameter_set_rbsp_t** @active_sps, align 8, !tbaa !0
  %frame_mbs_only_flag979 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t* %263, i64 0, i32 25
  %264 = load i32* %frame_mbs_only_flag979, align 4, !tbaa !1
  %tobool980 = icmp eq i32 %264, 0
  br i1 %tobool980, label %lor.lhs.false981, label %if.then985

lor.lhs.false981:                                 ; preds = %if.then978
  %PicInterlace982 = getelementptr inbounds %struct.InputParameters* %251, i64 0, i32 91
  %265 = load i32* %PicInterlace982, align 4, !tbaa !3
  switch i32 %265, label %lor.lhs.false1005 [
    i32 1, label %if.then985
    i32 2, label %if.then1008
  ]

if.then985:                                       ; preds = %lor.lhs.false981, %if.then978
  %conv986 = sitofp i32 %add964 to double
  %266 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %conv988 = sitofp i32 %266 to double
  %div989 = fdiv double %conv986, %conv988
  %add990 = fadd double %div989, 5.000000e-01
  %conv991 = fptosi double %add990 to i32
  %NumberofPPicture992 = getelementptr inbounds %struct.ImageParameters* %260, i64 0, i32 130
  %267 = load i32* %NumberofPPicture992, align 4, !tbaa !3
  %intra_period993 = getelementptr inbounds %struct.InputParameters* %251, i64 0, i32 31
  %268 = load i32* %intra_period993, align 4, !tbaa !3
  %sub994 = add nsw i32 %268, -2
  %cmp995 = icmp eq i32 %267, %sub994
  br i1 %cmp995, label %if.then997, label %if.end998

if.then997:                                       ; preds = %if.then985
  store i32 %conv991, i32* @QPLastPFrame, align 4, !tbaa !3
  br label %if.end998

if.end998:                                        ; preds = %if.then997, %if.then985
  %TotalQpforPPicture999 = getelementptr inbounds %struct.ImageParameters* %260, i64 0, i32 129
  %269 = load i32* %TotalQpforPPicture999, align 4, !tbaa !3
  %add1000 = add nsw i32 %269, %conv991
  store i32 %add1000, i32* %TotalQpforPPicture999, align 4, !tbaa !3
  %270 = load i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %270, i32* @PreviousQp1, align 4, !tbaa !3
  store i32 %conv991, i32* @PreviousQp2, align 4, !tbaa !3
  store i32 %conv991, i32* @PAveFrameQP, align 4, !tbaa !3
  %271 = load i32* @PAveHeaderBits2, align 4, !tbaa !3
  store i32 %271, i32* @PAveHeaderBits3, align 4, !tbaa !3
  %.pre1117 = load i32* @m_Qc, align 4, !tbaa !3
  br label %return

lor.lhs.false1005:                                ; preds = %lor.lhs.false981
  %MbInterlace1006 = getelementptr inbounds %struct.InputParameters* %251, i64 0, i32 92
  %272 = load i32* %MbInterlace1006, align 4, !tbaa !3
  %tobool1007 = icmp eq i32 %272, 0
  br i1 %tobool1007, label %return, label %if.then1008

if.then1008:                                      ; preds = %lor.lhs.false1005, %lor.lhs.false981
  %FieldControl1009 = getelementptr inbounds %struct.ImageParameters* %260, i64 0, i32 134
  %273 = load i32* %FieldControl1009, align 4, !tbaa !3
  %cmp1010 = icmp eq i32 %273, 0
  %conv1013 = sitofp i32 %add964 to double
  %274 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %conv1015 = sitofp i32 %274 to double
  %div1016 = fdiv double %conv1013, %conv1015
  %add1017 = fadd double %div1016, 5.000000e-01
  %conv1018 = fptosi double %add1017 to i32
  br i1 %cmp1010, label %if.then1012, label %if.else1019

if.then1012:                                      ; preds = %if.then1008
  store i32 %conv1018, i32* @FrameQPBuffer, align 4, !tbaa !3
  %275 = load i32* @PAveHeaderBits2, align 4, !tbaa !3
  store i32 %275, i32* @FrameAveHeaderBits, align 4, !tbaa !3
  br label %return

if.else1019:                                      ; preds = %if.then1008
  store i32 %conv1018, i32* @FieldQPBuffer, align 4, !tbaa !3
  %276 = load i32* @PAveHeaderBits2, align 4, !tbaa !3
  store i32 %276, i32* @FieldAveHeaderBits, align 4, !tbaa !3
  br label %return

if.end1036:                                       ; preds = %if.else314, %if.then544, %if.else332, %land.lhs.true552
  %277 = load i32* @m_Qc, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end957, %land.lhs.true968, %if.end998, %if.then1012, %if.else1019, %lor.lhs.false974, %lor.lhs.false1005, %if.end283, %if.else293, %if.then290, %if.then165, %if.else172, %if.then170, %if.end1036, %if.end780, %if.end649, %if.end587, %if.else532, %if.end531, %if.then331, %if.then318, %if.end313, %if.end160, %if.then4
  %retval.0 = phi i32 [ %5, %if.then4 ], [ %storemerge1101, %if.end160 ], [ %91, %if.end313 ], [ %93, %if.then318 ], [ %96, %if.then331 ], [ %storemerge1095, %if.end531 ], [ %125, %if.else532 ], [ %148, %if.end587 ], [ %277, %if.end1036 ], [ %177, %if.end649 ], [ %213, %if.end780 ], [ %40, %if.then170 ], [ %34, %if.else172 ], [ %34, %if.then165 ], [ %82, %if.then290 ], [ %storemerge1099, %if.else293 ], [ %storemerge1099, %if.end283 ], [ %cond963, %lor.lhs.false1005 ], [ %cond963, %lor.lhs.false974 ], [ %cond963, %if.else1019 ], [ %cond963, %if.then1012 ], [ %.pre1117, %if.end998 ], [ %cond963, %land.lhs.true968 ], [ %cond963, %if.end957 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @Qstep2QP(double %Qstep) #5 {
entry:
  %cmp = fcmp olt double %Qstep, 6.250000e-01
  br i1 %cmp, label %return, label %for.body.i

for.body.i:                                       ; preds = %entry, %for.body.i
  %Qstep.05.i = phi double [ %mul.i, %for.body.i ], [ 8.750000e-01, %entry ]
  %i.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %mul.i = fmul double %Qstep.05.i, 2.000000e+00
  %inc.i = add nsw i32 %i.04.i, 1
  %exitcond = icmp eq i32 %inc.i, 8
  br i1 %exitcond, label %QP2Qstep.exit, label %for.body.i

QP2Qstep.exit:                                    ; preds = %for.body.i
  %cmp2 = fcmp olt double %mul.i, %Qstep
  br i1 %cmp2, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %QP2Qstep.exit
  %cmp636 = fcmp ogt double %Qstep, 1.125000e+00
  br i1 %cmp636, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %q_per.038 = phi i32 [ %add, %while.body ], [ 0, %while.cond.preheader ]
  %Qstep.addr.037 = phi double [ %div, %while.body ], [ %Qstep, %while.cond.preheader ]
  %div = fmul double %Qstep.addr.037, 5.000000e-01
  %add = add nsw i32 %q_per.038, 1
  %cmp6 = fcmp ogt double %div, 1.125000e+00
  br i1 %cmp6, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %phitmp = mul i32 %add, 6
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader
  %q_per.0.lcssa = phi i32 [ %phitmp, %while.cond.while.end_crit_edge ], [ 0, %while.cond.preheader ]
  %Qstep.addr.0.lcssa = phi double [ %div, %while.cond.while.end_crit_edge ], [ %Qstep, %while.cond.preheader ]
  %cmp7 = fcmp ugt double %Qstep.addr.0.lcssa, 6.562500e-01
  br i1 %cmp7, label %if.else9, label %if.end26

if.else9:                                         ; preds = %while.end
  %cmp10 = fcmp ugt double %Qstep.addr.0.lcssa, 7.500000e-01
  br i1 %cmp10, label %if.else12, label %if.end26

if.else12:                                        ; preds = %if.else9
  %cmp13 = fcmp ugt double %Qstep.addr.0.lcssa, 8.437500e-01
  br i1 %cmp13, label %if.else15, label %if.end26

if.else15:                                        ; preds = %if.else12
  %cmp16 = fcmp ugt double %Qstep.addr.0.lcssa, 9.375000e-01
  br i1 %cmp16, label %if.else18, label %if.end26

if.else18:                                        ; preds = %if.else15
  %cmp19 = fcmp ugt double %Qstep.addr.0.lcssa, 1.062500e+00
  %. = select i1 %cmp19, i32 5, i32 4
  br label %if.end26

if.end26:                                         ; preds = %if.else18, %if.else15, %if.else12, %if.else9, %while.end
  %q_rem.0 = phi i32 [ 0, %while.end ], [ 1, %if.else9 ], [ 2, %if.else12 ], [ 3, %if.else15 ], [ %., %if.else18 ]
  %add27 = add nsw i32 %q_rem.0, %q_per.0.lcssa
  br label %return

return:                                           ; preds = %QP2Qstep.exit, %entry, %if.end26
  %retval.0 = phi i32 [ %add27, %if.end26 ], [ 0, %entry ], [ 51, %QP2Qstep.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @updateRCModel() #0 {
entry:
  %error = alloca [20 x double], align 16
  %0 = bitcast [20 x double]* %error to i8*
  call void @llvm.lifetime.start(i64 160, i8* %0) #6
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6
  %2 = load i32* %type, align 4, !tbaa !3
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end210

if.then:                                          ; preds = %entry
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 139
  %3 = load i32* %BasicUnit, align 4, !tbaa !3
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 136
  %4 = load i32* %Frame_Total_Number_MB, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %cmp7.i = icmp sgt i32 %3, 0
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %ComputeFrameMAD.exit

for.body.lr.ph.i:                                 ; preds = %if.then2
  %MADofMB.phi.trans.insert.i = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 131
  %.pre.i = load double** %MADofMB.phi.trans.insert.i, align 8, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %TotalMAD.08.i = phi double [ 0.000000e+00, %for.body.lr.ph.i ], [ %add.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds double* %.pre.i, i64 %indvars.iv.i
  %5 = load double* %arrayidx.i, align 8, !tbaa !4
  %add.i = fadd double %TotalMAD.08.i, %5
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv276 = trunc i64 %indvars.iv.next.i to i32
  %exitcond277 = icmp eq i32 %lftr.wideiv276, %3
  br i1 %exitcond277, label %ComputeFrameMAD.exit, label %for.body.i

ComputeFrameMAD.exit:                             ; preds = %for.body.i, %if.then2
  %TotalMAD.0.lcssa.i = phi double [ 0.000000e+00, %if.then2 ], [ %add.i, %for.body.i ]
  %conv.i = sitofp i32 %3 to double
  %div.i = fdiv double %TotalMAD.0.lcssa.i, %conv.i
  store double %div.i, double* @CurrentFrameMAD, align 8, !tbaa !4
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 127
  %6 = load i32* %NumberofCodedPFrame, align 4, !tbaa !3
  br label %if.end67

if.else:                                          ; preds = %if.then
  %7 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 92
  %8 = load i32* %MbInterlace, align 4, !tbaa !3
  %tobool = icmp eq i32 %8, 0
  br i1 %tobool, label %if.else7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 134
  %9 = load i32* %FieldControl, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.then4, label %if.else7

if.then4:                                         ; preds = %land.lhs.true
  %TotalMADBasicUnit = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 123
  %10 = load double* %TotalMADBasicUnit, align 8, !tbaa !4
  %conv = sitofp i32 %3 to double
  %div = fdiv double %10, %conv
  %div6 = fmul double %div, 5.000000e-01
  br label %if.end

if.else7:                                         ; preds = %if.else, %land.lhs.true
  %TotalMADBasicUnit8 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 123
  %11 = load double* %TotalMADBasicUnit8, align 8, !tbaa !4
  %conv10 = sitofp i32 %3 to double
  %div11 = fdiv double %11, %conv10
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then4
  %storemerge = phi double [ %div11, %if.else7 ], [ %div6, %if.then4 ]
  store double %storemerge, double* @CurrentFrameMAD, align 8, !tbaa !4
  %TotalMADBasicUnit12 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 123
  store double 0.000000e+00, double* %TotalMADBasicUnit12, align 8, !tbaa !4
  %12 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %13 = load i32* @NumberofBasicUnit, align 4, !tbaa !3
  %sub = sub nsw i32 %12, %13
  store i32 %sub, i32* @CodedBasicUnit, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %sub, 0
  br i1 %cmp13, label %if.then15, label %if.end37

if.then15:                                        ; preds = %if.end
  %14 = load i32* @PAveHeaderBits1, align 4, !tbaa !3
  %sub16 = add nsw i32 %sub, -1
  %mul = mul nsw i32 %14, %sub16
  %NumberofBasicUnitHeaderBits = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 121
  %15 = load i32* %NumberofBasicUnitHeaderBits, align 4, !tbaa !3
  %add = add nsw i32 %15, %mul
  %conv17 = sitofp i32 %add to double
  %conv19 = sitofp i32 %sub to double
  %div20 = fdiv double %conv17, %conv19
  %add21 = fadd double %div20, 5.000000e-01
  %conv22 = fptosi double %add21 to i32
  store i32 %conv22, i32* @PAveHeaderBits1, align 4, !tbaa !3
  %16 = load i32* @PAveHeaderBits3, align 4, !tbaa !3
  %cmp23 = icmp eq i32 %16, 0
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.then15
  store i32 %conv22, i32* @PAveHeaderBits2, align 4, !tbaa !3
  br label %if.end37

if.else26:                                        ; preds = %if.then15
  %mul27 = mul nsw i32 %sub, %conv22
  %mul28 = mul nsw i32 %13, %16
  %add29 = add nsw i32 %mul28, %mul27
  %conv30 = sitofp i32 %add29 to double
  %conv32 = sitofp i32 %12 to double
  %div33 = fdiv double %conv30, %conv32
  %add34 = fadd double %div33, 5.000000e-01
  %conv35 = fptosi double %add34 to i32
  store i32 %conv35, i32* @PAveHeaderBits2, align 4, !tbaa !3
  br label %if.end37

if.end37:                                         ; preds = %if.then25, %if.else26, %if.end
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %7, i64 0, i32 91
  %17 = load i32* %PicInterlace, align 4, !tbaa !3
  %cmp38 = icmp eq i32 %17, 2
  br i1 %cmp38, label %land.lhs.true42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end37
  %18 = load i32* %MbInterlace, align 4, !tbaa !3
  %tobool41 = icmp eq i32 %18, 0
  br i1 %tobool41, label %if.else49, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %lor.lhs.false, %if.end37
  %FieldControl43 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 134
  %19 = load i32* %FieldControl43, align 4, !tbaa !3
  %cmp44 = icmp eq i32 %19, 1
  br i1 %cmp44, label %if.then46, label %if.else49

if.then46:                                        ; preds = %land.lhs.true42
  %20 = load double* @CurrentFrameMAD, align 8, !tbaa !4
  %sub47 = add nsw i32 %12, -1
  %sub48 = sub i32 %sub47, %13
  %idxprom = sext i32 %sub48 to i64
  %21 = load double** @FCBUCFMAD, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds double* %21, i64 %idxprom
  store double %20, double* %arrayidx, align 8, !tbaa !4
  br label %if.end54

if.else49:                                        ; preds = %lor.lhs.false, %land.lhs.true42
  %22 = load double* @CurrentFrameMAD, align 8, !tbaa !4
  %sub50 = add nsw i32 %12, -1
  %sub51 = sub i32 %sub50, %13
  %idxprom52 = sext i32 %sub51 to i64
  %23 = load double** @BUCFMAD, align 8, !tbaa !0
  %arrayidx53 = getelementptr inbounds double* %23, i64 %idxprom52
  store double %22, double* %arrayidx53, align 8, !tbaa !4
  br label %if.end54

if.end54:                                         ; preds = %if.else49, %if.then46
  %cmp55 = icmp eq i32 %13, 0
  %NumberofCodedPFrame58 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 127
  %24 = load i32* %NumberofCodedPFrame58, align 4, !tbaa !3
  br i1 %cmp55, label %if.else61, label %if.then57

if.then57:                                        ; preds = %if.end54
  %mul59 = mul nsw i32 %12, %24
  %add60 = add nsw i32 %mul59, %sub
  br label %if.end67

if.else61:                                        ; preds = %if.end54
  %sub63 = add nsw i32 %24, -1
  %mul64 = mul nsw i32 %12, %sub63
  %add65 = add nsw i32 %mul64, %sub
  br label %if.end67

if.end67:                                         ; preds = %if.then57, %if.else61, %ComputeFrameMAD.exit
  %m_Nc.0 = phi i32 [ %6, %ComputeFrameMAD.exit ], [ %add60, %if.then57 ], [ %add65, %if.else61 ]
  %NumberofHeaderBits = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 119
  %25 = load i32* %NumberofHeaderBits, align 4, !tbaa !3
  store i32 %25, i32* @PPreHeader, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %if.end67, %for.body
  %indvars.iv274 = phi i64 [ 19, %if.end67 ], [ %indvars.iv.next275, %for.body ]
  %indvars.iv.next275 = add i64 %indvars.iv274, -1
  %arrayidx76 = getelementptr inbounds [20 x double]* @Pm_rgQp, i64 0, i64 %indvars.iv.next275
  %26 = load double* %arrayidx76, align 8, !tbaa !4
  %arrayidx78 = getelementptr inbounds [20 x double]* @Pm_rgQp, i64 0, i64 %indvars.iv274
  store double %26, double* %arrayidx78, align 8, !tbaa !4
  %arrayidx82 = getelementptr inbounds [21 x double]* @m_rgQp, i64 0, i64 %indvars.iv274
  store double %26, double* %arrayidx82, align 8, !tbaa !4
  %arrayidx85 = getelementptr inbounds [20 x double]* @Pm_rgRp, i64 0, i64 %indvars.iv.next275
  %27 = load double* %arrayidx85, align 8, !tbaa !4
  %arrayidx87 = getelementptr inbounds [20 x double]* @Pm_rgRp, i64 0, i64 %indvars.iv274
  store double %27, double* %arrayidx87, align 8, !tbaa !4
  %arrayidx91 = getelementptr inbounds [21 x double]* @m_rgRp, i64 0, i64 %indvars.iv274
  store double %27, double* %arrayidx91, align 8, !tbaa !4
  %28 = trunc i64 %indvars.iv.next275 to i32
  %cmp72 = icmp sgt i32 %28, 0
  br i1 %cmp72, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %cmp68 = icmp sgt i32 %m_Nc.0, 1
  %29 = load i32* @m_Qc, align 4, !tbaa !3
  %rem.i = srem i32 %29, 6
  %idxprom.i = sext i32 %rem.i to i64
  %arrayidx.i254 = getelementptr inbounds [6 x double]* @QP2Qstep.QP2QSTEP, i64 0, i64 %idxprom.i
  %30 = load double* %arrayidx.i254, align 8, !tbaa !4
  %div.i255 = sdiv i32 %29, 6
  %cmp3.i = icmp sgt i32 %29, 5
  br i1 %cmp3.i, label %for.body.i257, label %QP2Qstep.exit

for.body.i257:                                    ; preds = %for.end, %for.body.i257
  %Qstep.05.i = phi double [ %mul.i, %for.body.i257 ], [ %30, %for.end ]
  %i.04.i = phi i32 [ %inc.i, %for.body.i257 ], [ 0, %for.end ]
  %mul.i = fmul double %Qstep.05.i, 2.000000e+00
  %inc.i = add nsw i32 %i.04.i, 1
  %cmp.i256 = icmp slt i32 %inc.i, %div.i255
  br i1 %cmp.i256, label %for.body.i257, label %QP2Qstep.exit

QP2Qstep.exit:                                    ; preds = %for.body.i257, %for.end
  %31 = phi double [ %30, %for.end ], [ %mul.i, %for.body.i257 ]
  store double %31, double* getelementptr inbounds ([20 x double]* @Pm_rgQp, i64 0, i64 0), align 16, !tbaa !4
  %32 = load i32* %BasicUnit, align 4, !tbaa !3
  %33 = load i32* %Frame_Total_Number_MB, align 4, !tbaa !3
  %cmp95 = icmp eq i32 %32, %33
  br i1 %cmp95, label %if.then97, label %if.else101

if.then97:                                        ; preds = %QP2Qstep.exit
  %NumberofTextureBits = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 120
  %34 = load i32* %NumberofTextureBits, align 4, !tbaa !3
  %conv98 = sitofp i32 %34 to double
  %35 = load double* @CurrentFrameMAD, align 8, !tbaa !4
  %div100 = fdiv double %conv98, %35
  br label %if.end105

if.else101:                                       ; preds = %QP2Qstep.exit
  %NumberofBasicUnitTextureBits = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 122
  %36 = load i32* %NumberofBasicUnitTextureBits, align 4, !tbaa !3
  %conv102 = sitofp i32 %36 to double
  %37 = load double* @CurrentFrameMAD, align 8, !tbaa !4
  %div104 = fdiv double %conv102, %37
  br label %if.end105

if.end105:                                        ; preds = %if.else101, %if.then97
  %38 = phi double [ %35, %if.then97 ], [ %37, %if.else101 ]
  %storemerge253 = phi double [ %div100, %if.then97 ], [ %div104, %if.else101 ]
  store double %storemerge253, double* getelementptr inbounds ([20 x double]* @Pm_rgRp, i64 0, i64 0), align 16, !tbaa !4
  store double %31, double* getelementptr inbounds ([21 x double]* @m_rgQp, i64 0, i64 0), align 16, !tbaa !4
  store double %storemerge253, double* getelementptr inbounds ([21 x double]* @m_rgRp, i64 0, i64 0), align 16, !tbaa !4
  %39 = load double* @Pm_X1, align 8, !tbaa !4
  store double %39, double* @m_X1, align 8, !tbaa !4
  %40 = load double* @Pm_X2, align 8, !tbaa !4
  store double %40, double* @m_X2, align 8, !tbaa !4
  %41 = load double* @PreviousFrameMAD, align 8, !tbaa !4
  %cmp106 = fcmp ogt double %38, %41
  br i1 %cmp106, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end105
  %div108 = fdiv double %41, %38
  br label %cond.end

cond.false:                                       ; preds = %if.end105
  %div111 = fdiv double %38, %41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %div108.sink = phi double [ %div108, %cond.true ], [ %div111, %cond.false ]
  %mul109 = fmul double %div108.sink, 2.000000e+01
  %conv110 = fptosi double %mul109 to i32
  %cmp114 = icmp slt i32 %conv110, 1
  %cond119 = select i1 %cmp114, i32 1, i32 %conv110
  %cmp120 = icmp slt i32 %cond119, %m_Nc.0
  %cond125 = select i1 %cmp120, i32 %cond119, i32 %m_Nc.0
  %42 = load i32* @m_windowSize, align 4, !tbaa !3
  %add126 = add nsw i32 %42, 1
  %cmp127 = icmp slt i32 %cond125, %add126
  %cond125.add126 = select i1 %cmp127, i32 %cond125, i32 %add126
  %cmp134 = icmp slt i32 %cond125.add126, 20
  %cond139 = select i1 %cmp134, i32 %cond125.add126, i32 20
  store i32 %cond139, i32* @m_windowSize, align 4, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* bitcast ([21 x i32]* @m_rgRejected to i8*), i8 0, i64 80, i32 16, i1 false)
  call void @RCModelEstimator(i32 %cond139) #9
  %43 = load i32* @m_windowSize, align 4, !tbaa !3
  %cmp149261 = icmp sgt i32 %43, 0
  br i1 %cmp149261, label %for.body151.lr.ph, label %cond.false179

for.body151.lr.ph:                                ; preds = %cond.end
  %44 = load double* @m_X1, align 8, !tbaa !4
  %45 = load double* @m_X2, align 8, !tbaa !4
  br label %for.body151

for.body151:                                      ; preds = %for.body151, %for.body151.lr.ph
  %indvars.iv266 = phi i64 [ 0, %for.body151.lr.ph ], [ %indvars.iv.next267, %for.body151 ]
  %std.0263 = phi double [ 0.000000e+00, %for.body151.lr.ph ], [ %add172, %for.body151 ]
  %arrayidx153 = getelementptr inbounds [21 x double]* @m_rgQp, i64 0, i64 %indvars.iv266
  %46 = load double* %arrayidx153, align 8, !tbaa !4
  %div154 = fdiv double %44, %46
  %mul159 = fmul double %46, %46
  %div160 = fdiv double %45, %mul159
  %add161 = fadd double %div154, %div160
  %arrayidx163 = getelementptr inbounds [21 x double]* @m_rgRp, i64 0, i64 %indvars.iv266
  %47 = load double* %arrayidx163, align 8, !tbaa !4
  %sub164 = fsub double %add161, %47
  %arrayidx166 = getelementptr inbounds [20 x double]* %error, i64 0, i64 %indvars.iv266
  store double %sub164, double* %arrayidx166, align 8, !tbaa !4
  %mul171 = fmul double %sub164, %sub164
  %add172 = fadd double %std.0263, %mul171
  %indvars.iv.next267 = add i64 %indvars.iv266, 1
  %lftr.wideiv268 = trunc i64 %indvars.iv.next267 to i32
  %exitcond269 = icmp eq i32 %lftr.wideiv268, %43
  br i1 %exitcond269, label %for.end175, label %for.body151

for.end175:                                       ; preds = %for.body151
  %cmp176 = icmp eq i32 %43, 2
  br i1 %cmp176, label %cond.end183, label %cond.false179

cond.false179:                                    ; preds = %cond.end, %for.end175
  %std.0.lcssa279 = phi double [ %add172, %for.end175 ], [ 0.000000e+00, %cond.end ]
  %conv180 = sitofp i32 %43 to double
  %div181 = fdiv double %std.0.lcssa279, %conv180
  %call182 = call double @sqrt(double %div181) #7
  br label %cond.end183

cond.end183:                                      ; preds = %for.end175, %cond.false179
  %cond184 = phi double [ %call182, %cond.false179 ], [ 0.000000e+00, %for.end175 ]
  br i1 %cmp149261, label %for.body188, label %for.end200

for.body188:                                      ; preds = %cond.end183, %for.inc198
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc198 ], [ 0, %cond.end183 ]
  %arrayidx190 = getelementptr inbounds [20 x double]* %error, i64 0, i64 %indvars.iv
  %48 = load double* %arrayidx190, align 8, !tbaa !4
  %call191 = call double @fabs(double %48) #8
  %cmp192 = fcmp ogt double %call191, %cond184
  br i1 %cmp192, label %if.then194, label %for.inc198

if.then194:                                       ; preds = %for.body188
  %arrayidx196 = getelementptr inbounds [21 x i32]* @m_rgRejected, i64 0, i64 %indvars.iv
  store i32 1, i32* %arrayidx196, align 4, !tbaa !1
  br label %for.inc198

for.inc198:                                       ; preds = %for.body188, %if.then194
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %43
  br i1 %exitcond, label %for.end200, label %for.body188

for.end200:                                       ; preds = %for.inc198, %cond.end183
  store i32 0, i32* getelementptr inbounds ([21 x i32]* @m_rgRejected, i64 0, i64 0), align 16, !tbaa !1
  call void @RCModelEstimator(i32 %43) #9
  br i1 %cmp68, label %if.then202, label %if.else203

if.then202:                                       ; preds = %for.end200
  call void @updateMADModel() #9
  br label %if.end210

if.else203:                                       ; preds = %for.end200
  %49 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type204 = getelementptr inbounds %struct.ImageParameters* %49, i64 0, i32 6
  %50 = load i32* %type204, align 4, !tbaa !3
  %cmp205 = icmp eq i32 %50, 0
  br i1 %cmp205, label %if.then207, label %if.end210

if.then207:                                       ; preds = %if.else203
  %51 = load double* @CurrentFrameMAD, align 8, !tbaa !4
  store double %51, double* getelementptr inbounds ([21 x double]* @PPictureMAD, i64 0, i64 0), align 16, !tbaa !4
  br label %if.end210

if.end210:                                        ; preds = %if.then202, %if.then207, %if.else203, %entry
  call void @llvm.lifetime.end(i64 160, i8* %0) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize readnone uwtable
define double @QP2Qstep(i32 %QP) #5 {
entry:
  %rem = srem i32 %QP, 6
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [6 x double]* @QP2Qstep.QP2QSTEP, i64 0, i64 %idxprom
  %0 = load double* %arrayidx, align 8, !tbaa !4
  %div = sdiv i32 %QP, 6
  %cmp3 = icmp sgt i32 %QP, 5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %Qstep.05 = phi double [ %mul, %for.body ], [ %0, %entry ]
  %i.04 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %mul = fmul double %Qstep.05, 2.000000e+00
  %inc = add nsw i32 %i.04, 1
  %cmp = icmp slt i32 %inc, %div
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %Qstep.0.lcssa = phi double [ %0, %entry ], [ %mul, %for.body ]
  ret double %Qstep.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @RCModelEstimator(i32 %n_windowSize) #0 {
entry:
  %cmp159 = icmp sgt i32 %n_windowSize, 0
  br i1 %cmp159, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  store double 0.000000e+00, double* @m_X2, align 8, !tbaa !4
  store double 0.000000e+00, double* @m_X1, align 8, !tbaa !4
  br label %if.end90

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %for.body ], [ 0, %entry ]
  %n_realSize.0161 = phi i32 [ %n_realSize.0.dec, %for.body ], [ %n_windowSize, %entry ]
  %arrayidx = getelementptr inbounds [21 x i32]* @m_rgRejected, i64 0, i64 %indvars.iv171
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %not.tobool = icmp ne i32 %0, 0
  %dec = sext i1 %not.tobool to i32
  %n_realSize.0.dec = add nsw i32 %dec, %n_realSize.0161
  %indvars.iv.next172 = add i64 %indvars.iv171, 1
  %lftr.wideiv173 = trunc i64 %indvars.iv.next172 to i32
  %exitcond174 = icmp eq i32 %lftr.wideiv173, %n_windowSize
  br i1 %exitcond174, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  store double 0.000000e+00, double* @m_X2, align 8, !tbaa !4
  store double 0.000000e+00, double* @m_X1, align 8, !tbaa !4
  br i1 %cmp159, label %for.body3, label %if.end90

for.cond14.preheader:                             ; preds = %for.inc11
  br i1 %cmp159, label %for.body16.lr.ph, label %if.end90

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  %conv = sitofp i32 %n_realSize.0.dec to double
  br label %for.body16

for.body3:                                        ; preds = %for.end, %for.inc11
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %for.inc11 ], [ 0, %for.end ]
  %oneSampleQ.0157 = phi double [ %oneSampleQ.1, %for.inc11 ], [ undef, %for.end ]
  %arrayidx5 = getelementptr inbounds [21 x i32]* @m_rgRejected, i64 0, i64 %indvars.iv167
  %1 = load i32* %arrayidx5, align 4, !tbaa !1
  %tobool6 = icmp eq i32 %1, 0
  br i1 %tobool6, label %if.then7, label %for.inc11

if.then7:                                         ; preds = %for.body3
  %arrayidx9 = getelementptr inbounds [21 x double]* @m_rgQp, i64 0, i64 %indvars.iv167
  %2 = load double* %arrayidx9, align 8, !tbaa !4
  br label %for.inc11

for.inc11:                                        ; preds = %for.body3, %if.then7
  %oneSampleQ.1 = phi double [ %oneSampleQ.0157, %for.body3 ], [ %2, %if.then7 ]
  %indvars.iv.next168 = add i64 %indvars.iv167, 1
  %lftr.wideiv169 = trunc i64 %indvars.iv.next168 to i32
  %exitcond170 = icmp eq i32 %lftr.wideiv169, %n_windowSize
  br i1 %exitcond170, label %for.cond14.preheader, label %for.body3

for.body16:                                       ; preds = %for.inc34, %for.body16.lr.ph
  %3 = phi double [ 0.000000e+00, %for.body16.lr.ph ], [ %7, %for.inc34 ]
  %indvars.iv163 = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next164, %for.inc34 ]
  %estimateX2.0153 = phi i32 [ 0, %for.body16.lr.ph ], [ %estimateX2.1, %for.inc34 ]
  %arrayidx18 = getelementptr inbounds [21 x double]* @m_rgQp, i64 0, i64 %indvars.iv163
  %4 = load double* %arrayidx18, align 8, !tbaa !4
  %cmp19 = fcmp une double %4, %oneSampleQ.1
  %arrayidx21 = getelementptr inbounds [21 x i32]* @m_rgRejected, i64 0, i64 %indvars.iv163
  %5 = load i32* %arrayidx21, align 4, !tbaa !1
  br i1 %cmp19, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %for.body16
  %tobool22 = icmp eq i32 %5, 0
  %.estimateX2.0 = select i1 %tobool22, i32 1, i32 %estimateX2.0153
  br label %if.end24

if.end24:                                         ; preds = %for.body16, %land.lhs.true
  %estimateX2.1 = phi i32 [ %.estimateX2.0, %land.lhs.true ], [ %estimateX2.0153, %for.body16 ]
  %tobool27 = icmp eq i32 %5, 0
  br i1 %tobool27, label %if.then28, label %for.inc34

if.then28:                                        ; preds = %if.end24
  %arrayidx32 = getelementptr inbounds [21 x double]* @m_rgRp, i64 0, i64 %indvars.iv163
  %6 = load double* %arrayidx32, align 8, !tbaa !4
  %mul = fmul double %4, %6
  %div = fdiv double %mul, %conv
  %add = fadd double %div, %3
  store double %add, double* @m_X1, align 8, !tbaa !4
  br label %for.inc34

for.inc34:                                        ; preds = %if.end24, %if.then28
  %7 = phi double [ %3, %if.end24 ], [ %add, %if.then28 ]
  %indvars.iv.next164 = add i64 %indvars.iv163, 1
  %lftr.wideiv165 = trunc i64 %indvars.iv.next164 to i32
  %exitcond166 = icmp eq i32 %lftr.wideiv165, %n_windowSize
  br i1 %exitcond166, label %for.end36, label %for.body16

for.end36:                                        ; preds = %for.inc34
  %cmp37 = icmp slt i32 %n_realSize.0.dec, 1
  %tobool40 = icmp eq i32 %estimateX2.1, 0
  %or.cond = or i1 %cmp37, %tobool40
  br i1 %or.cond, label %if.end90, label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %for.end36
  br i1 %cmp159, label %for.body45, label %for.end74

for.body45:                                       ; preds = %for.cond42.preheader, %for.inc72
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc72 ], [ 0, %for.cond42.preheader ]
  %b1.0145 = phi double [ %b1.1, %for.inc72 ], [ 0.000000e+00, %for.cond42.preheader ]
  %b0.0144 = phi double [ %b0.1, %for.inc72 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a11.0143 = phi double [ %a11.1, %for.inc72 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a10.0142 = phi double [ %a10.1, %for.inc72 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a01.0141 = phi double [ %a01.1, %for.inc72 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a00.0140 = phi double [ %a00.1, %for.inc72 ], [ 0.000000e+00, %for.cond42.preheader ]
  %arrayidx47 = getelementptr inbounds [21 x i32]* @m_rgRejected, i64 0, i64 %indvars.iv
  %8 = load i32* %arrayidx47, align 4, !tbaa !1
  %tobool48 = icmp eq i32 %8, 0
  br i1 %tobool48, label %if.then49, label %for.inc72

if.then49:                                        ; preds = %for.body45
  %add50 = fadd double %a00.0140, 1.000000e+00
  %arrayidx52 = getelementptr inbounds [21 x double]* @m_rgQp, i64 0, i64 %indvars.iv
  %9 = load double* %arrayidx52, align 8, !tbaa !4
  %div53 = fdiv double 1.000000e+00, %9
  %add54 = fadd double %a01.0141, %div53
  %mul59 = fmul double %9, %9
  %div60 = fdiv double 1.000000e+00, %mul59
  %add61 = fadd double %a11.0143, %div60
  %arrayidx65 = getelementptr inbounds [21 x double]* @m_rgRp, i64 0, i64 %indvars.iv
  %10 = load double* %arrayidx65, align 8, !tbaa !4
  %mul66 = fmul double %9, %10
  %add67 = fadd double %b0.0144, %mul66
  %add70 = fadd double %b1.0145, %10
  br label %for.inc72

for.inc72:                                        ; preds = %for.body45, %if.then49
  %a00.1 = phi double [ %a00.0140, %for.body45 ], [ %add50, %if.then49 ]
  %a01.1 = phi double [ %a01.0141, %for.body45 ], [ %add54, %if.then49 ]
  %a10.1 = phi double [ %a10.0142, %for.body45 ], [ %add54, %if.then49 ]
  %a11.1 = phi double [ %a11.0143, %for.body45 ], [ %add61, %if.then49 ]
  %b0.1 = phi double [ %b0.0144, %for.body45 ], [ %add67, %if.then49 ]
  %b1.1 = phi double [ %b1.0145, %for.body45 ], [ %add70, %if.then49 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n_windowSize
  br i1 %exitcond, label %for.end74, label %for.body45

for.end74:                                        ; preds = %for.inc72, %for.cond42.preheader
  %b1.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %b1.1, %for.inc72 ]
  %b0.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %b0.1, %for.inc72 ]
  %a11.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a11.1, %for.inc72 ]
  %a10.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a10.1, %for.inc72 ]
  %a01.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a01.1, %for.inc72 ]
  %a00.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a00.1, %for.inc72 ]
  %mul75 = fmul double %a00.0.lcssa, %a11.0.lcssa
  %mul76 = fmul double %a01.0.lcssa, %a10.0.lcssa
  %sub = fsub double %mul75, %mul76
  %call = tail call double @fabs(double %sub) #8
  %cmp77 = fcmp ogt double %call, 1.000000e-06
  br i1 %cmp77, label %if.then79, label %if.else

if.then79:                                        ; preds = %for.end74
  %mul80 = fmul double %a11.0.lcssa, %b0.0.lcssa
  %mul81 = fmul double %a01.0.lcssa, %b1.0.lcssa
  %sub82 = fsub double %mul80, %mul81
  %div83 = fdiv double %sub82, %sub
  store double %div83, double* @m_X1, align 8, !tbaa !4
  %mul84 = fmul double %a00.0.lcssa, %b1.0.lcssa
  %mul85 = fmul double %a10.0.lcssa, %b0.0.lcssa
  %sub86 = fsub double %mul84, %mul85
  %div87 = fdiv double %sub86, %sub
  store double %div87, double* @m_X2, align 8, !tbaa !4
  br label %if.end90

if.else:                                          ; preds = %for.end74
  %div88 = fdiv double %b0.0.lcssa, %a00.0.lcssa
  store double %div88, double* @m_X1, align 8, !tbaa !4
  store double 0.000000e+00, double* @m_X2, align 8, !tbaa !4
  br label %if.end90

if.end90:                                         ; preds = %for.end, %for.end.thread, %for.cond14.preheader, %for.end36, %if.then79, %if.else
  %11 = phi double [ 0.000000e+00, %for.end36 ], [ %div87, %if.then79 ], [ 0.000000e+00, %if.else ], [ 0.000000e+00, %for.cond14.preheader ], [ 0.000000e+00, %for.end.thread ], [ 0.000000e+00, %for.end ]
  %12 = phi double [ %7, %for.end36 ], [ %div83, %if.then79 ], [ %div88, %if.else ], [ 0.000000e+00, %for.cond14.preheader ], [ 0.000000e+00, %for.end.thread ], [ 0.000000e+00, %for.end ]
  %13 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 6
  %14 = load i32* %type, align 4, !tbaa !3
  %cmp91 = icmp eq i32 %14, 0
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end90
  store double %12, double* @Pm_X1, align 8, !tbaa !4
  store double %11, double* @Pm_X2, align 8, !tbaa !4
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end90
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize readonly uwtable
define double @ComputeFrameMAD() #4 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %Frame_Total_Number_MB6 = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 136
  %1 = load i32* %Frame_Total_Number_MB6, align 4, !tbaa !3
  %cmp7 = icmp sgt i32 %1, 0
  br i1 %cmp7, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %MADofMB.phi.trans.insert = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 131
  %.pre = load double** %MADofMB.phi.trans.insert, align 8, !tbaa !0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %TotalMAD.08 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add, %for.body ]
  %arrayidx = getelementptr inbounds double* %.pre, i64 %indvars.iv
  %2 = load double* %arrayidx, align 8, !tbaa !4
  %add = fadd double %TotalMAD.08, %2
  %indvars.iv.next = add i64 %indvars.iv, 1
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %3, %1
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %TotalMAD.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %conv = sitofp i32 %1 to double
  %div = fdiv double %TotalMAD.0.lcssa, %conv
  ret double %div
}

; Function Attrs: nounwind optsize uwtable
define void @updateMADModel() #0 {
entry:
  %error = alloca [20 x double], align 16
  %0 = bitcast [20 x double]* %error to i8*
  call void @llvm.lifetime.start(i64 160, i8* %0) #6
  %1 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %NumberofCodedPFrame = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 127
  %2 = load i32* %NumberofCodedPFrame, align 4, !tbaa !3
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end127

if.then:                                          ; preds = %entry
  %BasicUnit = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 139
  %3 = load i32* %BasicUnit, align 4, !tbaa !3
  %Frame_Total_Number_MB = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 136
  %4 = load i32* %Frame_Total_Number_MB, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %if.end, label %if.else

if.else:                                          ; preds = %if.then
  %5 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %mul = mul nsw i32 %5, %2
  %6 = load i32* @CodedBasicUnit, align 4, !tbaa !3
  %add = add nsw i32 %mul, %6
  br label %if.end

if.end:                                           ; preds = %if.then, %if.else
  %m_Nc.0 = phi i32 [ %add, %if.else ], [ %2, %if.then ]
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv188 = phi i64 [ 19, %if.end ], [ %indvars.iv.next189, %for.body ]
  %indvars.iv.next189 = add i64 %indvars.iv188, -1
  %arrayidx = getelementptr inbounds [21 x double]* @PPictureMAD, i64 0, i64 %indvars.iv.next189
  %7 = load double* %arrayidx, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds [21 x double]* @PPictureMAD, i64 0, i64 %indvars.iv188
  store double %7, double* %arrayidx7, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds [21 x double]* @PictureMAD, i64 0, i64 %indvars.iv188
  store double %7, double* %arrayidx11, align 8, !tbaa !4
  %arrayidx14 = getelementptr inbounds [21 x double]* @ReferenceMAD, i64 0, i64 %indvars.iv.next189
  %8 = load double* %arrayidx14, align 8, !tbaa !4
  %arrayidx16 = getelementptr inbounds [21 x double]* @ReferenceMAD, i64 0, i64 %indvars.iv188
  store double %8, double* %arrayidx16, align 8, !tbaa !4
  %9 = trunc i64 %indvars.iv.next189 to i32
  %cmp5 = icmp sgt i32 %9, 0
  br i1 %cmp5, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %10 = load double* @CurrentFrameMAD, align 8, !tbaa !4
  store double %10, double* getelementptr inbounds ([21 x double]* @PPictureMAD, i64 0, i64 0), align 16, !tbaa !4
  store double %10, double* getelementptr inbounds ([21 x double]* @PictureMAD, i64 0, i64 0), align 16, !tbaa !4
  br i1 %cmp1, label %if.then20, label %if.else21

if.then20:                                        ; preds = %for.end
  %11 = load double* getelementptr inbounds ([21 x double]* @PictureMAD, i64 0, i64 1), align 8, !tbaa !4
  store double %11, double* getelementptr inbounds ([21 x double]* @ReferenceMAD, i64 0, i64 0), align 16, !tbaa !4
  br label %if.end35

if.else21:                                        ; preds = %for.end
  %12 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PicInterlace = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 91
  %13 = load i32* %PicInterlace, align 4, !tbaa !3
  %cmp22 = icmp eq i32 %13, 2
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else21
  %MbInterlace = getelementptr inbounds %struct.InputParameters* %12, i64 0, i32 92
  %14 = load i32* %MbInterlace, align 4, !tbaa !3
  %tobool = icmp eq i32 %14, 0
  br i1 %tobool, label %if.else29, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.else21
  %FieldControl = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 134
  %15 = load i32* %FieldControl, align 4, !tbaa !3
  %cmp23 = icmp eq i32 %15, 1
  br i1 %cmp23, label %if.then24, label %if.else29

if.then24:                                        ; preds = %land.lhs.true
  %16 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %sub25 = add nsw i32 %16, -1
  %17 = load i32* @NumberofBasicUnit, align 4, !tbaa !3
  %sub26 = sub i32 %sub25, %17
  %idxprom27 = sext i32 %sub26 to i64
  %18 = load double** @FCBUPFMAD, align 8, !tbaa !0
  %arrayidx28 = getelementptr inbounds double* %18, i64 %idxprom27
  %19 = load double* %arrayidx28, align 8, !tbaa !4
  store double %19, double* getelementptr inbounds ([21 x double]* @ReferenceMAD, i64 0, i64 0), align 16, !tbaa !4
  br label %if.end35

if.else29:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %20 = load i32* @TotalNumberofBasicUnit, align 4, !tbaa !3
  %sub30 = add nsw i32 %20, -1
  %21 = load i32* @NumberofBasicUnit, align 4, !tbaa !3
  %sub31 = sub i32 %sub30, %21
  %idxprom32 = sext i32 %sub31 to i64
  %22 = load double** @BUPFMAD, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds double* %22, i64 %idxprom32
  %23 = load double* %arrayidx33, align 8, !tbaa !4
  store double %23, double* getelementptr inbounds ([21 x double]* @ReferenceMAD, i64 0, i64 0), align 16, !tbaa !4
  br label %if.end35

if.end35:                                         ; preds = %if.then24, %if.else29, %if.then20
  %24 = load double* @PMADPictureC1, align 8, !tbaa !4
  store double %24, double* @MADPictureC1, align 8, !tbaa !4
  %25 = load double* @PMADPictureC2, align 8, !tbaa !4
  store double %25, double* @MADPictureC2, align 8, !tbaa !4
  %26 = load double* @PreviousFrameMAD, align 8, !tbaa !4
  %cmp36 = fcmp ogt double %10, %26
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end35
  %div = fdiv double %26, %10
  br label %cond.end

cond.false:                                       ; preds = %if.end35
  %div38 = fdiv double %10, %26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %div.sink = phi double [ %div, %cond.true ], [ %div38, %cond.false ]
  %mul37 = fmul double %div.sink, 2.000000e+01
  %conv = fptosi double %mul37 to i32
  %sub41 = add nsw i32 %m_Nc.0, -1
  %cmp42 = icmp slt i32 %conv, %sub41
  %conv.sub41 = select i1 %cmp42, i32 %conv, i32 %sub41
  %cmp49 = icmp slt i32 %conv.sub41, 1
  %cond54 = select i1 %cmp49, i32 1, i32 %conv.sub41
  %27 = load i32* @MADm_windowSize, align 4, !tbaa !3
  %add55 = add nsw i32 %27, 1
  %cmp56 = icmp slt i32 %cond54, %add55
  %cond62 = select i1 %cmp56, i32 %cond54, i32 %add55
  %cmp63 = icmp sgt i32 %cond62, 20
  %cond68 = select i1 %cmp63, i32 20, i32 %cond62
  store i32 %cond68, i32* @MADm_windowSize, align 4, !tbaa !3
  call void @llvm.memset.p0i8.i64(i8* bitcast ([21 x i32]* @PictureRejected to i8*), i8 0, i64 80, i32 16, i1 false)
  %type = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 6
  %28 = load i32* %type, align 4, !tbaa !3
  %cmp77 = icmp eq i32 %28, 0
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %cond.end
  store double %10, double* @PreviousFrameMAD, align 8, !tbaa !4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %cond.end
  call void @MADModelEstimator(i32 %cond68) #9
  %cmp82168 = icmp sgt i32 %cond68, 0
  br i1 %cmp82168, label %for.body84.lr.ph, label %cond.false106

for.body84.lr.ph:                                 ; preds = %if.end80
  %29 = load double* @MADPictureC1, align 8, !tbaa !4
  %30 = load double* @MADPictureC2, align 8, !tbaa !4
  %31 = sub i32 0, %m_Nc.0
  %32 = xor i32 %conv, -1
  %33 = icmp sgt i32 %31, %32
  %smax178 = select i1 %33, i32 %31, i32 %32
  %34 = icmp slt i32 %smax178, -2
  %35 = select i1 %34, i32 %smax178, i32 -2
  %36 = sub i32 -2, %27
  %37 = icmp sgt i32 %35, %36
  %smax180 = select i1 %37, i32 %35, i32 %36
  %38 = icmp sgt i32 %smax180, -21
  %smax180.op = xor i32 %smax180, -1
  %39 = select i1 %38, i32 %smax180.op, i32 20
  br label %for.body84

for.body84:                                       ; preds = %for.body84, %for.body84.lr.ph
  %indvars.iv176 = phi i64 [ 0, %for.body84.lr.ph ], [ %indvars.iv.next177, %for.body84 ]
  %std.0170 = phi double [ 0.000000e+00, %for.body84.lr.ph ], [ %add99, %for.body84 ]
  %arrayidx86 = getelementptr inbounds [21 x double]* @ReferenceMAD, i64 0, i64 %indvars.iv176
  %40 = load double* %arrayidx86, align 8, !tbaa !4
  %mul87 = fmul double %29, %40
  %add88 = fadd double %mul87, %30
  %arrayidx90 = getelementptr inbounds [21 x double]* @PictureMAD, i64 0, i64 %indvars.iv176
  %41 = load double* %arrayidx90, align 8, !tbaa !4
  %sub91 = fsub double %add88, %41
  %arrayidx93 = getelementptr inbounds [20 x double]* %error, i64 0, i64 %indvars.iv176
  store double %sub91, double* %arrayidx93, align 8, !tbaa !4
  %mul98 = fmul double %sub91, %sub91
  %add99 = fadd double %std.0170, %mul98
  %indvars.iv.next177 = add i64 %indvars.iv176, 1
  %lftr.wideiv182 = trunc i64 %indvars.iv.next177 to i32
  %exitcond183 = icmp eq i32 %lftr.wideiv182, %39
  br i1 %exitcond183, label %for.end102, label %for.body84

for.end102:                                       ; preds = %for.body84
  %cmp103 = icmp eq i32 %cond68, 2
  br i1 %cmp103, label %cond.end109, label %cond.false106

cond.false106:                                    ; preds = %if.end80, %for.end102
  %std.0.lcssa191 = phi double [ %add99, %for.end102 ], [ 0.000000e+00, %if.end80 ]
  %conv107 = sitofp i32 %cond68 to double
  %div108 = fdiv double %std.0.lcssa191, %conv107
  %call = call double @sqrt(double %div108) #7
  br label %cond.end109

cond.end109:                                      ; preds = %for.end102, %cond.false106
  %cond110 = phi double [ %call, %cond.false106 ], [ 0.000000e+00, %for.end102 ]
  br i1 %cmp82168, label %for.body114.lr.ph, label %for.end126

for.body114.lr.ph:                                ; preds = %cond.end109
  %42 = sub i32 0, %m_Nc.0
  %43 = xor i32 %conv, -1
  %44 = icmp sgt i32 %42, %43
  %smax = select i1 %44, i32 %42, i32 %43
  %45 = icmp slt i32 %smax, -2
  %46 = select i1 %45, i32 %smax, i32 -2
  %47 = sub i32 -2, %27
  %48 = icmp sgt i32 %46, %47
  %smax174 = select i1 %48, i32 %46, i32 %47
  %49 = icmp sgt i32 %smax174, -21
  %smax174.op = xor i32 %smax174, -1
  %50 = select i1 %49, i32 %smax174.op, i32 20
  br label %for.body114

for.body114:                                      ; preds = %for.inc124, %for.body114.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body114.lr.ph ], [ %indvars.iv.next, %for.inc124 ]
  %arrayidx116 = getelementptr inbounds [20 x double]* %error, i64 0, i64 %indvars.iv
  %51 = load double* %arrayidx116, align 8, !tbaa !4
  %call117 = call double @fabs(double %51) #8
  %cmp118 = fcmp ogt double %call117, %cond110
  br i1 %cmp118, label %if.then120, label %for.inc124

if.then120:                                       ; preds = %for.body114
  %arrayidx122 = getelementptr inbounds [21 x i32]* @PictureRejected, i64 0, i64 %indvars.iv
  store i32 1, i32* %arrayidx122, align 4, !tbaa !1
  br label %for.inc124

for.inc124:                                       ; preds = %for.body114, %if.then120
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %50
  br i1 %exitcond, label %for.end126, label %for.body114

for.end126:                                       ; preds = %for.inc124, %cond.end109
  store i32 0, i32* getelementptr inbounds ([21 x i32]* @PictureRejected, i64 0, i64 0), align 16, !tbaa !1
  call void @MADModelEstimator(i32 %cond68) #9
  br label %if.end127

if.end127:                                        ; preds = %for.end126, %entry
  call void @llvm.lifetime.end(i64 160, i8* %0) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @MADModelEstimator(i32 %n_windowSize) #0 {
entry:
  %cmp157 = icmp sgt i32 %n_windowSize, 0
  br i1 %cmp157, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  store double 0.000000e+00, double* @MADPictureC2, align 8, !tbaa !4
  store double 0.000000e+00, double* @MADPictureC1, align 8, !tbaa !4
  br label %if.end88

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %for.body ], [ 0, %entry ]
  %n_realSize.0159 = phi i32 [ %n_realSize.0.dec, %for.body ], [ %n_windowSize, %entry ]
  %arrayidx = getelementptr inbounds [21 x i32]* @PictureRejected, i64 0, i64 %indvars.iv169
  %0 = load i32* %arrayidx, align 4, !tbaa !1
  %not.tobool = icmp ne i32 %0, 0
  %dec = sext i1 %not.tobool to i32
  %n_realSize.0.dec = add nsw i32 %dec, %n_realSize.0159
  %indvars.iv.next170 = add i64 %indvars.iv169, 1
  %lftr.wideiv171 = trunc i64 %indvars.iv.next170 to i32
  %exitcond172 = icmp eq i32 %lftr.wideiv171, %n_windowSize
  br i1 %exitcond172, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  store double 0.000000e+00, double* @MADPictureC2, align 8, !tbaa !4
  store double 0.000000e+00, double* @MADPictureC1, align 8, !tbaa !4
  br i1 %cmp157, label %for.body3, label %if.end88

for.cond14.preheader:                             ; preds = %for.inc11
  br i1 %cmp157, label %for.body16.lr.ph, label %if.end88

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  %conv = sitofp i32 %n_realSize.0.dec to double
  br label %for.body16

for.body3:                                        ; preds = %for.end, %for.inc11
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %for.inc11 ], [ 0, %for.end ]
  %oneSampleQ.0155 = phi double [ %oneSampleQ.1, %for.inc11 ], [ undef, %for.end ]
  %arrayidx5 = getelementptr inbounds [21 x i32]* @PictureRejected, i64 0, i64 %indvars.iv165
  %1 = load i32* %arrayidx5, align 4, !tbaa !1
  %tobool6 = icmp eq i32 %1, 0
  br i1 %tobool6, label %if.then7, label %for.inc11

if.then7:                                         ; preds = %for.body3
  %arrayidx9 = getelementptr inbounds [21 x double]* @PictureMAD, i64 0, i64 %indvars.iv165
  %2 = load double* %arrayidx9, align 8, !tbaa !4
  br label %for.inc11

for.inc11:                                        ; preds = %for.body3, %if.then7
  %oneSampleQ.1 = phi double [ %oneSampleQ.0155, %for.body3 ], [ %2, %if.then7 ]
  %indvars.iv.next166 = add i64 %indvars.iv165, 1
  %lftr.wideiv167 = trunc i64 %indvars.iv.next166 to i32
  %exitcond168 = icmp eq i32 %lftr.wideiv167, %n_windowSize
  br i1 %exitcond168, label %for.cond14.preheader, label %for.body3

for.body16:                                       ; preds = %for.inc34, %for.body16.lr.ph
  %3 = phi double [ 0.000000e+00, %for.body16.lr.ph ], [ %7, %for.inc34 ]
  %indvars.iv161 = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next162, %for.inc34 ]
  %estimateX2.0151 = phi i32 [ 0, %for.body16.lr.ph ], [ %estimateX2.1, %for.inc34 ]
  %arrayidx18 = getelementptr inbounds [21 x double]* @PictureMAD, i64 0, i64 %indvars.iv161
  %4 = load double* %arrayidx18, align 8, !tbaa !4
  %cmp19 = fcmp une double %4, %oneSampleQ.1
  %arrayidx21 = getelementptr inbounds [21 x i32]* @PictureRejected, i64 0, i64 %indvars.iv161
  %5 = load i32* %arrayidx21, align 4, !tbaa !1
  br i1 %cmp19, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %for.body16
  %tobool22 = icmp eq i32 %5, 0
  %.estimateX2.0 = select i1 %tobool22, i32 1, i32 %estimateX2.0151
  br label %if.end24

if.end24:                                         ; preds = %for.body16, %land.lhs.true
  %estimateX2.1 = phi i32 [ %.estimateX2.0, %land.lhs.true ], [ %estimateX2.0151, %for.body16 ]
  %tobool27 = icmp eq i32 %5, 0
  br i1 %tobool27, label %if.then28, label %for.inc34

if.then28:                                        ; preds = %if.end24
  %arrayidx32 = getelementptr inbounds [21 x double]* @ReferenceMAD, i64 0, i64 %indvars.iv161
  %6 = load double* %arrayidx32, align 8, !tbaa !4
  %mul = fmul double %conv, %6
  %div = fdiv double %4, %mul
  %add = fadd double %div, %3
  store double %add, double* @MADPictureC1, align 8, !tbaa !4
  br label %for.inc34

for.inc34:                                        ; preds = %if.end24, %if.then28
  %7 = phi double [ %3, %if.end24 ], [ %add, %if.then28 ]
  %indvars.iv.next162 = add i64 %indvars.iv161, 1
  %lftr.wideiv163 = trunc i64 %indvars.iv.next162 to i32
  %exitcond164 = icmp eq i32 %lftr.wideiv163, %n_windowSize
  br i1 %exitcond164, label %for.end36, label %for.body16

for.end36:                                        ; preds = %for.inc34
  %cmp37 = icmp slt i32 %n_realSize.0.dec, 1
  %tobool40 = icmp eq i32 %estimateX2.1, 0
  %or.cond = or i1 %cmp37, %tobool40
  br i1 %or.cond, label %if.end88, label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %for.end36
  br i1 %cmp157, label %for.body45, label %for.end72

for.body45:                                       ; preds = %for.cond42.preheader, %for.inc70
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc70 ], [ 0, %for.cond42.preheader ]
  %b1.0143 = phi double [ %b1.1, %for.inc70 ], [ 0.000000e+00, %for.cond42.preheader ]
  %b0.0142 = phi double [ %b0.1, %for.inc70 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a11.0141 = phi double [ %a11.1, %for.inc70 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a10.0140 = phi double [ %a10.1, %for.inc70 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a01.0139 = phi double [ %a01.1, %for.inc70 ], [ 0.000000e+00, %for.cond42.preheader ]
  %a00.0138 = phi double [ %a00.1, %for.inc70 ], [ 0.000000e+00, %for.cond42.preheader ]
  %arrayidx47 = getelementptr inbounds [21 x i32]* @PictureRejected, i64 0, i64 %indvars.iv
  %8 = load i32* %arrayidx47, align 4, !tbaa !1
  %tobool48 = icmp eq i32 %8, 0
  br i1 %tobool48, label %if.then49, label %for.inc70

if.then49:                                        ; preds = %for.body45
  %add50 = fadd double %a00.0138, 1.000000e+00
  %arrayidx52 = getelementptr inbounds [21 x double]* @ReferenceMAD, i64 0, i64 %indvars.iv
  %9 = load double* %arrayidx52, align 8, !tbaa !4
  %add53 = fadd double %a01.0139, %9
  %mul58 = fmul double %9, %9
  %add59 = fadd double %a11.0141, %mul58
  %arrayidx61 = getelementptr inbounds [21 x double]* @PictureMAD, i64 0, i64 %indvars.iv
  %10 = load double* %arrayidx61, align 8, !tbaa !4
  %add62 = fadd double %b0.0142, %10
  %mul67 = fmul double %9, %10
  %add68 = fadd double %b1.0143, %mul67
  br label %for.inc70

for.inc70:                                        ; preds = %for.body45, %if.then49
  %a00.1 = phi double [ %a00.0138, %for.body45 ], [ %add50, %if.then49 ]
  %a01.1 = phi double [ %a01.0139, %for.body45 ], [ %add53, %if.then49 ]
  %a10.1 = phi double [ %a10.0140, %for.body45 ], [ %add53, %if.then49 ]
  %a11.1 = phi double [ %a11.0141, %for.body45 ], [ %add59, %if.then49 ]
  %b0.1 = phi double [ %b0.0142, %for.body45 ], [ %add62, %if.then49 ]
  %b1.1 = phi double [ %b1.0143, %for.body45 ], [ %add68, %if.then49 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n_windowSize
  br i1 %exitcond, label %for.end72, label %for.body45

for.end72:                                        ; preds = %for.inc70, %for.cond42.preheader
  %b1.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %b1.1, %for.inc70 ]
  %b0.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %b0.1, %for.inc70 ]
  %a11.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a11.1, %for.inc70 ]
  %a10.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a10.1, %for.inc70 ]
  %a01.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a01.1, %for.inc70 ]
  %a00.0.lcssa = phi double [ 0.000000e+00, %for.cond42.preheader ], [ %a00.1, %for.inc70 ]
  %mul73 = fmul double %a00.0.lcssa, %a11.0.lcssa
  %mul74 = fmul double %a01.0.lcssa, %a10.0.lcssa
  %sub = fsub double %mul73, %mul74
  %call = tail call double @fabs(double %sub) #8
  %cmp75 = fcmp ogt double %call, 1.000000e-06
  br i1 %cmp75, label %if.then77, label %if.else

if.then77:                                        ; preds = %for.end72
  %mul78 = fmul double %a11.0.lcssa, %b0.0.lcssa
  %mul79 = fmul double %a01.0.lcssa, %b1.0.lcssa
  %sub80 = fsub double %mul78, %mul79
  %div81 = fdiv double %sub80, %sub
  store double %div81, double* @MADPictureC2, align 8, !tbaa !4
  %mul82 = fmul double %a00.0.lcssa, %b1.0.lcssa
  %mul83 = fmul double %a10.0.lcssa, %b0.0.lcssa
  %sub84 = fsub double %mul82, %mul83
  %div85 = fdiv double %sub84, %sub
  store double %div85, double* @MADPictureC1, align 8, !tbaa !4
  br label %if.end88

if.else:                                          ; preds = %for.end72
  %div86 = fdiv double %b0.0.lcssa, %a01.0.lcssa
  store double %div86, double* @MADPictureC1, align 8, !tbaa !4
  store double 0.000000e+00, double* @MADPictureC2, align 8, !tbaa !4
  br label %if.end88

if.end88:                                         ; preds = %for.end, %for.end.thread, %for.cond14.preheader, %for.end36, %if.then77, %if.else
  %11 = phi double [ 0.000000e+00, %for.end36 ], [ %div81, %if.then77 ], [ 0.000000e+00, %if.else ], [ 0.000000e+00, %for.cond14.preheader ], [ 0.000000e+00, %for.end.thread ], [ 0.000000e+00, %for.end ]
  %12 = phi double [ %7, %for.end36 ], [ %div85, %if.then77 ], [ %div86, %if.else ], [ 0.000000e+00, %for.cond14.preheader ], [ 0.000000e+00, %for.end.thread ], [ 0.000000e+00, %for.end ]
  %13 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %type = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 6
  %14 = load i32* %type, align 4, !tbaa !3
  %cmp89 = icmp eq i32 %14, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end88
  store double %12, double* @PMADPictureC1, align 8, !tbaa !4
  store double %11, double* @PMADPictureC2, align 8, !tbaa !4
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end88
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readnone }
attributes #9 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
!6 = metadata !{metadata !"long", metadata !1}
