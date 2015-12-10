; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.Mapping = type { i8*, i8*, i32, double, i32, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }

@.str = private unnamed_addr constant [11 x i8] c"ProfileIDC\00", align 1
@configinput = common global %struct.InputParameters zeroinitializer, align 8
@.str1 = private unnamed_addr constant [9 x i8] c"LevelIDC\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"FrameRate\00", align 1
@.str3 = private unnamed_addr constant [15 x i8] c"IDRIntraEnable\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"StartFrame\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"IntraPeriod\00", align 1
@.str6 = private unnamed_addr constant [18 x i8] c"FramesToBeEncoded\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"QPISlice\00", align 1
@.str8 = private unnamed_addr constant [9 x i8] c"QPPSlice\00", align 1
@.str9 = private unnamed_addr constant [9 x i8] c"QPBSlice\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"FrameSkip\00", align 1
@.str11 = private unnamed_addr constant [12 x i8] c"UseHadamard\00", align 1
@.str12 = private unnamed_addr constant [20 x i8] c"UseHadamardQpelOnly\00", align 1
@.str13 = private unnamed_addr constant [12 x i8] c"SearchRange\00", align 1
@.str14 = private unnamed_addr constant [22 x i8] c"NumberReferenceFrames\00", align 1
@.str15 = private unnamed_addr constant [17 x i8] c"PList0References\00", align 1
@.str16 = private unnamed_addr constant [17 x i8] c"BList0References\00", align 1
@.str17 = private unnamed_addr constant [17 x i8] c"BList1References\00", align 1
@.str18 = private unnamed_addr constant [16 x i8] c"Log2MaxFrameNum\00", align 1
@.str19 = private unnamed_addr constant [20 x i8] c"GenerateMultiplePPS\00", align 1
@.str20 = private unnamed_addr constant [10 x i8] c"ResendPPS\00", align 1
@.str21 = private unnamed_addr constant [12 x i8] c"SourceWidth\00", align 1
@.str22 = private unnamed_addr constant [13 x i8] c"SourceHeight\00", align 1
@.str23 = private unnamed_addr constant [18 x i8] c"MbLineIntraUpdate\00", align 1
@.str24 = private unnamed_addr constant [10 x i8] c"SliceMode\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"SliceArgument\00", align 1
@.str26 = private unnamed_addr constant [24 x i8] c"UseConstrainedIntraPred\00", align 1
@.str27 = private unnamed_addr constant [10 x i8] c"InputFile\00", align 1
@.str28 = private unnamed_addr constant [18 x i8] c"InputHeaderLength\00", align 1
@.str29 = private unnamed_addr constant [11 x i8] c"OutputFile\00", align 1
@.str30 = private unnamed_addr constant [10 x i8] c"ReconFile\00", align 1
@.str31 = private unnamed_addr constant [10 x i8] c"TraceFile\00", align 1
@.str32 = private unnamed_addr constant [14 x i8] c"NumberBFrames\00", align 1
@.str33 = private unnamed_addr constant [16 x i8] c"BRefPicQPOffset\00", align 1
@.str34 = private unnamed_addr constant [15 x i8] c"DirectModeType\00", align 1
@.str35 = private unnamed_addr constant [20 x i8] c"DirectInferenceFlag\00", align 1
@.str36 = private unnamed_addr constant [21 x i8] c"SPPicturePeriodicity\00", align 1
@.str37 = private unnamed_addr constant [10 x i8] c"QPSPSlice\00", align 1
@.str38 = private unnamed_addr constant [11 x i8] c"QPSP2Slice\00", align 1
@.str39 = private unnamed_addr constant [11 x i8] c"SymbolMode\00", align 1
@.str40 = private unnamed_addr constant [12 x i8] c"OutFileMode\00", align 1
@.str41 = private unnamed_addr constant [14 x i8] c"PartitionMode\00", align 1
@.str42 = private unnamed_addr constant [17 x i8] c"InterSearch16x16\00", align 1
@.str43 = private unnamed_addr constant [16 x i8] c"InterSearch16x8\00", align 1
@.str44 = private unnamed_addr constant [16 x i8] c"InterSearch8x16\00", align 1
@.str45 = private unnamed_addr constant [15 x i8] c"InterSearch8x8\00", align 1
@.str46 = private unnamed_addr constant [15 x i8] c"InterSearch8x4\00", align 1
@.str47 = private unnamed_addr constant [15 x i8] c"InterSearch4x8\00", align 1
@.str48 = private unnamed_addr constant [15 x i8] c"InterSearch4x4\00", align 1
@.str49 = private unnamed_addr constant [22 x i8] c"IntraDisableInterOnly\00", align 1
@.str50 = private unnamed_addr constant [19 x i8] c"Intra4x4ParDisable\00", align 1
@.str51 = private unnamed_addr constant [20 x i8] c"Intra4x4DiagDisable\00", align 1
@.str52 = private unnamed_addr constant [19 x i8] c"Intra4x4DirDisable\00", align 1
@.str53 = private unnamed_addr constant [21 x i8] c"Intra16x16ParDisable\00", align 1
@.str54 = private unnamed_addr constant [23 x i8] c"Intra16x16PlaneDisable\00", align 1
@.str55 = private unnamed_addr constant [19 x i8] c"ChromaIntraDisable\00", align 1
@.str56 = private unnamed_addr constant [20 x i8] c"RestrictSearchRange\00", align 1
@.str57 = private unnamed_addr constant [16 x i8] c"LastFrameNumber\00", align 1
@.str58 = private unnamed_addr constant [10 x i8] c"ChangeQPI\00", align 1
@.str59 = private unnamed_addr constant [10 x i8] c"ChangeQPP\00", align 1
@.str60 = private unnamed_addr constant [10 x i8] c"ChangeQPB\00", align 1
@.str61 = private unnamed_addr constant [20 x i8] c"ChangeQPBSRefOffset\00", align 1
@.str62 = private unnamed_addr constant [14 x i8] c"ChangeQPStart\00", align 1
@.str63 = private unnamed_addr constant [15 x i8] c"RDOptimization\00", align 1
@.str64 = private unnamed_addr constant [20 x i8] c"DisableThresholding\00", align 1
@.str65 = private unnamed_addr constant [16 x i8] c"DisableBSkipRDO\00", align 1
@.str66 = private unnamed_addr constant [10 x i8] c"LossRateA\00", align 1
@.str67 = private unnamed_addr constant [10 x i8] c"LossRateB\00", align 1
@.str68 = private unnamed_addr constant [10 x i8] c"LossRateC\00", align 1
@.str69 = private unnamed_addr constant [17 x i8] c"NumberOfDecoders\00", align 1
@.str70 = private unnamed_addr constant [18 x i8] c"RestrictRefFrames\00", align 1
@.str71 = private unnamed_addr constant [21 x i8] c"NumberofLeakyBuckets\00", align 1
@.str72 = private unnamed_addr constant [20 x i8] c"LeakyBucketRateFile\00", align 1
@.str73 = private unnamed_addr constant [21 x i8] c"LeakyBucketParamFile\00", align 1
@.str74 = private unnamed_addr constant [13 x i8] c"PicInterlace\00", align 1
@.str75 = private unnamed_addr constant [12 x i8] c"MbInterlace\00", align 1
@.str76 = private unnamed_addr constant [12 x i8] c"IntraBottom\00", align 1
@.str77 = private unnamed_addr constant [42 x i8] c"NumberFramesInEnhancementLayerSubSequence\00", align 1
@.str78 = private unnamed_addr constant [26 x i8] c"NumberOfFrameInSecondIGOP\00", align 1
@.str79 = private unnamed_addr constant [21 x i8] c"RandomIntraMBRefresh\00", align 1
@.str80 = private unnamed_addr constant [19 x i8] c"WeightedPrediction\00", align 1
@.str81 = private unnamed_addr constant [21 x i8] c"WeightedBiprediction\00", align 1
@.str82 = private unnamed_addr constant [23 x i8] c"UseWeightedReferenceME\00", align 1
@.str83 = private unnamed_addr constant [18 x i8] c"RDPictureDecision\00", align 1
@.str84 = private unnamed_addr constant [15 x i8] c"RDPictureIntra\00", align 1
@.str85 = private unnamed_addr constant [19 x i8] c"RDPSliceWeightOnly\00", align 1
@.str86 = private unnamed_addr constant [19 x i8] c"RDBSliceWeightOnly\00", align 1
@.str87 = private unnamed_addr constant [23 x i8] c"SkipIntraInInterSlices\00", align 1
@.str88 = private unnamed_addr constant [19 x i8] c"BReferencePictures\00", align 1
@.str89 = private unnamed_addr constant [14 x i8] c"PyramidCoding\00", align 1
@.str90 = private unnamed_addr constant [22 x i8] c"ExplicitPyramidFormat\00", align 1
@.str91 = private unnamed_addr constant [18 x i8] c"PyramidRefReorder\00", align 1
@.str92 = private unnamed_addr constant [20 x i8] c"PocMemoryManagement\00", align 1
@.str93 = private unnamed_addr constant [23 x i8] c"BiPredMotionEstimation\00", align 1
@.str94 = private unnamed_addr constant [20 x i8] c"BiPredMERefinements\00", align 1
@.str95 = private unnamed_addr constant [20 x i8] c"BiPredMESearchRange\00", align 1
@.str96 = private unnamed_addr constant [15 x i8] c"BiPredMESubPel\00", align 1
@.str97 = private unnamed_addr constant [25 x i8] c"LoopFilterParametersFlag\00", align 1
@.str98 = private unnamed_addr constant [18 x i8] c"LoopFilterDisable\00", align 1
@.str99 = private unnamed_addr constant [24 x i8] c"LoopFilterAlphaC0Offset\00", align 1
@.str100 = private unnamed_addr constant [21 x i8] c"LoopFilterBetaOffset\00", align 1
@.str101 = private unnamed_addr constant [19 x i8] c"SparePictureOption\00", align 1
@.str102 = private unnamed_addr constant [25 x i8] c"SparePictureDetectionThr\00", align 1
@.str103 = private unnamed_addr constant [26 x i8] c"SparePicturePercentageThr\00", align 1
@.str104 = private unnamed_addr constant [24 x i8] c"num_slice_groups_minus1\00", align 1
@.str105 = private unnamed_addr constant [21 x i8] c"slice_group_map_type\00", align 1
@.str106 = private unnamed_addr constant [34 x i8] c"slice_group_change_direction_flag\00", align 1
@.str107 = private unnamed_addr constant [31 x i8] c"slice_group_change_rate_minus1\00", align 1
@.str108 = private unnamed_addr constant [25 x i8] c"SliceGroupConfigFileName\00", align 1
@.str109 = private unnamed_addr constant [18 x i8] c"UseRedundantSlice\00", align 1
@.str110 = private unnamed_addr constant [16 x i8] c"PicOrderCntType\00", align 1
@.str111 = private unnamed_addr constant [18 x i8] c"ContextInitMethod\00", align 1
@.str112 = private unnamed_addr constant [17 x i8] c"FixedModelNumber\00", align 1
@.str113 = private unnamed_addr constant [17 x i8] c"Transform8x8Mode\00", align 1
@.str114 = private unnamed_addr constant [17 x i8] c"ReportFrameStats\00", align 1
@.str115 = private unnamed_addr constant [17 x i8] c"DisplayEncParams\00", align 1
@.str116 = private unnamed_addr constant [18 x i8] c"RateControlEnable\00", align 1
@.str117 = private unnamed_addr constant [8 x i8] c"Bitrate\00", align 1
@.str118 = private unnamed_addr constant [10 x i8] c"InitialQP\00", align 1
@.str119 = private unnamed_addr constant [10 x i8] c"BasicUnit\00", align 1
@.str120 = private unnamed_addr constant [12 x i8] c"ChannelType\00", align 1
@.str121 = private unnamed_addr constant [12 x i8] c"QmatrixFile\00", align 1
@.str122 = private unnamed_addr constant [25 x i8] c"ScalingMatrixPresentFlag\00", align 1
@.str123 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag0\00", align 1
@.str124 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag1\00", align 1
@.str125 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag2\00", align 1
@.str126 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag3\00", align 1
@.str127 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag4\00", align 1
@.str128 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag5\00", align 1
@.str129 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag6\00", align 1
@.str130 = private unnamed_addr constant [24 x i8] c"ScalingListPresentFlag7\00", align 1
@.str131 = private unnamed_addr constant [7 x i8] c"UseFME\00", align 1
@.str132 = private unnamed_addr constant [15 x i8] c"ChromaQPOffset\00", align 1
@.str133 = private unnamed_addr constant [13 x i8] c"BitDepthLuma\00", align 1
@.str134 = private unnamed_addr constant [15 x i8] c"BitDepthChroma\00", align 1
@.str135 = private unnamed_addr constant [10 x i8] c"YUVFormat\00", align 1
@.str136 = private unnamed_addr constant [9 x i8] c"RGBInput\00", align 1
@.str137 = private unnamed_addr constant [11 x i8] c"CbQPOffset\00", align 1
@.str138 = private unnamed_addr constant [11 x i8] c"CrQPOffset\00", align 1
@.str139 = private unnamed_addr constant [32 x i8] c"QPPrimeYZeroTransformBypassFlag\00", align 1
@.str140 = private unnamed_addr constant [21 x i8] c"ResidueTransformFlag\00", align 1
@.str141 = private unnamed_addr constant [24 x i8] c"UseExplicitLambdaParams\00", align 1
@.str142 = private unnamed_addr constant [19 x i8] c"LambdaWeightPslice\00", align 1
@.str143 = private unnamed_addr constant [19 x i8] c"LambdaWeightBslice\00", align 1
@.str144 = private unnamed_addr constant [19 x i8] c"LambdaWeightIslice\00", align 1
@.str145 = private unnamed_addr constant [20 x i8] c"LambdaWeightSPslice\00", align 1
@.str146 = private unnamed_addr constant [20 x i8] c"LambdaWeightSIslice\00", align 1
@.str147 = private unnamed_addr constant [22 x i8] c"LambdaWeightRefBslice\00", align 1
@.str148 = private unnamed_addr constant [18 x i8] c"QOffsetMatrixFile\00", align 1
@.str149 = private unnamed_addr constant [24 x i8] c"OffsetMatrixPresentFlag\00", align 1
@Map = global [151 x %struct.Mapping] [%struct.Mapping { i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), i8* bitcast (%struct.InputParameters* @configinput to i8*), i32 0, double 8.800000e+01, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 4), i32 0, double 2.100000e+01, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2424), i32 2, double 3.000000e+01, i32 1, double 0.000000e+00, double 1.000000e+02 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8]* @.str3, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1228), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8]* @.str4, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1232), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1224), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8]* @.str6, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 8), i32 0, double 1.000000e+00, i32 2, double 1.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([9 x i8]* @.str7, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 12), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([9 x i8]* @.str8, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 16), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1240), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str10, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 20), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 24), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8]* @.str12, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 28), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 32), i32 0, double 1.600000e+01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([22 x i8]* @.str14, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 36), i32 0, double 1.000000e+00, i32 1, double 1.000000e+00, double 1.600000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8]* @.str15, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 40), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.600000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8]* @.str16, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 44), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.600000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8]* @.str17, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 48), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.600000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8]* @.str18, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 52), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8]* @.str19, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 60), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str20, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 56), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8]* @.str21, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 64), i32 0, double 1.760000e+02, i32 2, double 1.600000e+01, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([13 x i8]* @.str22, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 68), i32 0, double 1.440000e+02, i32 2, double 1.600000e+01, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8]* @.str23, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 76), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str24, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 208), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8]* @.str25, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 212), i32 0, double 0.000000e+00, i32 2, double 1.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8]* @.str26, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 216), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str27, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 224), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8]* @.str28, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 220), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8]* @.str29, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 424), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str30, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 624), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str31, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 824), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8]* @.str32, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1236), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8]* @.str33, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1244), i32 0, double 0.000000e+00, i32 0, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8]* @.str34, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1248), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8]* @.str35, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1252), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8]* @.str36, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1272), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str37, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1276), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8]* @.str38, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1280), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8]* @.str39, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2356), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8]* @.str40, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2360), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8]* @.str41, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2364), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8]* @.str42, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2368), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8]* @.str43, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2372), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8]* @.str44, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2376), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8]* @.str45, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2380), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8]* @.str46, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2384), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8]* @.str47, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2388), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8]* @.str48, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2392), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([22 x i8]* @.str49, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2396), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8]* @.str50, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2400), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8]* @.str51, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2404), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8]* @.str52, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2408), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8]* @.str53, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2412), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([23 x i8]* @.str54, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2416), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8]* @.str55, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2420), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8]* @.str56, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2436), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8]* @.str57, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2440), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str58, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2456), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str59, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2444), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str60, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2448), i32 0, double 2.400000e+01, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8]* @.str61, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2460), i32 0, double 0.000000e+00, i32 1, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8]* @.str62, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2452), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8]* @.str63, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2464), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8]* @.str64, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2468), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8]* @.str65, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2472), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str66, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2892), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str67, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2896), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str68, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2900), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8]* @.str69, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2904), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8]* @.str70, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2908), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8]* @.str71, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2476), i32 0, double 2.000000e+00, i32 1, double 2.000000e+00, double 2.550000e+02 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8]* @.str72, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2480), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8]* @.str73, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2680), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([13 x i8]* @.str74, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2880), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8]* @.str75, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2884), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8]* @.str76, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2888), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([42 x i8]* @.str77, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2912), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([26 x i8]* @.str78, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2916), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8]* @.str79, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2920), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8]* @.str80, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1284), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8]* @.str81, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1288), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([23 x i8]* @.str82, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1292), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8]* @.str83, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1296), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8]* @.str84, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1300), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8]* @.str85, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1304), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8]* @.str86, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1308), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([23 x i8]* @.str87, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1312), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8]* @.str88, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1316), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([14 x i8]* @.str89, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1320), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([22 x i8]* @.str90, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1324), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8]* @.str91, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2348), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8]* @.str92, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2352), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([23 x i8]* @.str93, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1256), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8]* @.str94, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1260), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 5.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8]* @.str95, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1264), i32 0, double 8.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8]* @.str96, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1268), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([25 x i8]* @.str97, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2924), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8]* @.str98, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2928), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8]* @.str99, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2932), i32 0, double 0.000000e+00, i32 1, double -6.000000e+00, double 6.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8]* @.str100, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2936), i32 0, double 0.000000e+00, i32 1, double -6.000000e+00, double 6.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8]* @.str101, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2940), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([25 x i8]* @.str102, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2944), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([26 x i8]* @.str103, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2948), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 1.000000e+02 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8]* @.str104, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3152), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 7.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8]* @.str105, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3156), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 6.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([34 x i8]* @.str106, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3192), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([31 x i8]* @.str107, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3196), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([25 x i8]* @.str108, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2952), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8]* @.str109, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3204), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([16 x i8]* @.str110, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3208), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8]* @.str111, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3212), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8]* @.str112, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3216), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8]* @.str113, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3220), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 2.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8]* @.str114, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3228), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([17 x i8]* @.str115, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3232), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8]* @.str116, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3236), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([8 x i8]* @.str117, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3240), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str118, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3244), i32 0, double 0.000000e+00, i32 3, double 0.000000e+00, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str119, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3248), i32 0, double 0.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8]* @.str120, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3252), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([12 x i8]* @.str121, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 1024), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([25 x i8]* @.str122, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3256), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8]* @.str123, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3260), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8]* @.str124, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3264), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8]* @.str125, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3268), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8]* @.str126, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3272), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8]* @.str127, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3276), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8]* @.str128, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3280), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8]* @.str129, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3284), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8]* @.str130, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3288), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([7 x i8]* @.str131, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3292), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8]* @.str132, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 2432), i32 0, double 0.000000e+00, i32 1, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([13 x i8]* @.str133, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3296), i32 0, double 8.000000e+00, i32 1, double 8.000000e+00, double 1.200000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([15 x i8]* @.str134, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3300), i32 0, double 8.000000e+00, i32 1, double 8.000000e+00, double 1.200000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([10 x i8]* @.str135, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 72), i32 0, double 1.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([9 x i8]* @.str136, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3312), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8]* @.str137, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3316), i32 0, double 0.000000e+00, i32 1, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([11 x i8]* @.str138, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3320), i32 0, double 0.000000e+00, i32 1, double -5.100000e+01, double 5.100000e+01 }, %struct.Mapping { i8* getelementptr inbounds ([32 x i8]* @.str139, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3324), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([21 x i8]* @.str140, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3328), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 1.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8]* @.str141, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3332), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8]* @.str142, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3336), i32 2, double 6.800000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8]* @.str143, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3344), i32 2, double 2.000000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([19 x i8]* @.str144, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3352), i32 2, double 6.500000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8]* @.str145, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3360), i32 2, double 1.500000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([20 x i8]* @.str146, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3368), i32 2, double 6.500000e-01, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([22 x i8]* @.str147, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3376), i32 2, double 1.500000e+00, i32 2, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([18 x i8]* @.str148, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3384), i32 1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }, %struct.Mapping { i8* getelementptr inbounds ([24 x i8]* @.str149, i32 0, i32 0), i8* getelementptr (i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3584), i32 0, double 0.000000e+00, i32 1, double 0.000000e+00, double 3.000000e+00 }, %struct.Mapping { i8* null, i8* null, i32 -1, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00 }], align 16
@stderr = external global %struct._IO_FILE*
@.str150 = private unnamed_addr constant [956 x i8] c"\0A   lencod [-h] [-p defenc.cfg] {[-f curenc1.cfg]...[-f curencN.cfg]} {[-p EncParam1=EncValue1]..[-p EncParamM=EncValueM]}\0A\0A## Parameters\0A\0A## Options\0A   -h :  prints function usage\0A   -d :  use <defenc.cfg> as default file for parameter initializations.\0A         If not used then file defaults to encoder.cfg in local directory.\0A   -f :  read <curencM.cfg> for reseting selected encoder parameters.\0A         Multiple files could be used that set different parameters\0A   -p :  Set parameter <EncParamM> to <EncValueM>.\0A         See default encoder.cfg file for description of all parameters.\0A\0A## Supported video file formats\0A   RAW:  .yuv -> YUV 4:2:0\0A\0A## Examples of usage:\0A   lencod\0A   lencod  -h\0A   lencod  -d default.cfg\0A   lencod  -f curenc1.cfg\0A   lencod  -f curenc1.cfg -p InputFile=\22e:\5Cdata\5Ccontainer_qcif_30.yuv\22 -p SourceWidth=176 -p SourceHeight=144\0A   lencod  -f curenc1.cfg -p FramesToBeEncoded=30 -p QPISlice=28 -p QPPSlice=28 -p QPBSlice=30\0A\00", align 1
@.str151 = private unnamed_addr constant [12 x i8] c"encoder.cfg\00", align 1
@.str153 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str154 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str155 = private unnamed_addr constant [22 x i8] c"Parsing Configfile %s\00", align 1
@errortext = common global [300 x i8] zeroinitializer, align 16
@.str157 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str158 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str159 = private unnamed_addr constant [19 x i8] c"Configure: content\00", align 1
@.str160 = private unnamed_addr constant [33 x i8] c"Parsing command line string '%s'\00", align 1
@.str161 = private unnamed_addr constant [79 x i8] c"Error in command line, ac %d, around string '%s', missing -f or -p parameters?\00", align 1
@input = external global %struct.InputParameters*
@.str162 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str163 = private unnamed_addr constant [35 x i8] c"Cannot open configuration file %s.\00", align 1
@.str164 = private unnamed_addr constant [39 x i8] c"Cannot fseek in configuration file %s.\00", align 1
@.str165 = private unnamed_addr constant [71 x i8] c"Unreasonable Filesize %ld reported by ftell for configuration file %s.\00", align 1
@.str166 = private unnamed_addr constant [26 x i8] c"GetConfigFileContent: buf\00", align 1
@FirstFrameIn2ndIGOP = external global i32
@top_pic = common global %struct.Picture* null, align 8
@bottom_pic = common global %struct.Picture* null, align 8
@frame_pic = common global %struct.Picture* null, align 8
@frame_pic2 = common global %struct.Picture* null, align 8
@frame_pic3 = common global %struct.Picture* null, align 8
@imgY_org = common global i16** null, align 8
@imgUV_org = common global i16*** null, align 8
@img4Y_tmp = common global i32** null, align 8
@log2_max_frame_num_minus4 = common global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common global i32 0, align 4
@me_tot_time = common global i32 0, align 4
@me_time = common global i32 0, align 4
@active_pps = common global %struct.pic_parameter_set_rbsp_t* null, align 8
@active_sps = common global %struct.seq_parameter_set_rbsp_t* null, align 8
@mb_adaptive = common global i32 0, align 4
@MBPairIsField = common global i32 0, align 4
@wp_weight = common global i32*** null, align 8
@wp_offset = common global i32*** null, align 8
@wbp_weight = common global i32**** null, align 8
@luma_log_weight_denom = common global i32 0, align 4
@chroma_log_weight_denom = common global i32 0, align 4
@wp_luma_round = common global i32 0, align 4
@wp_chroma_round = common global i32 0, align 4
@imgY_org_top = common global i16** null, align 8
@imgY_org_bot = common global i16** null, align 8
@imgUV_org_top = common global i16*** null, align 8
@imgUV_org_bot = common global i16*** null, align 8
@imgY_org_frm = common global i16** null, align 8
@imgUV_org_frm = common global i16*** null, align 8
@imgY_com = common global i16** null, align 8
@imgUV_com = common global i16*** null, align 8
@direct_ref_idx = common global i16*** null, align 8
@direct_pdir = common global i16** null, align 8
@pixel_map = common global i8** null, align 8
@refresh_map = common global i8** null, align 8
@intras = common global i32 0, align 4
@Iframe_ctr = common global i32 0, align 4
@Pframe_ctr = common global i32 0, align 4
@Bframe_ctr = common global i32 0, align 4
@frame_no = common global i32 0, align 4
@nextP_tr_fld = common global i32 0, align 4
@nextP_tr_frm = common global i32 0, align 4
@tot_time = common global i32 0, align 4
@resTrans_R = common global [16 x [16 x i32]] zeroinitializer, align 16
@resTrans_G = common global [16 x [16 x i32]] zeroinitializer, align 16
@resTrans_B = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resR = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resG = common global [16 x [16 x i32]] zeroinitializer, align 16
@rec_resB = common global [16 x [16 x i32]] zeroinitializer, align 16
@mprRGB = common global [3 x [16 x [16 x i32]]] zeroinitializer, align 16
@dc_level = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@dc_level_temp = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@cbp_chroma_block = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@cbp_chroma_block_temp = common global [2 x [4 x [4 x i32]]] zeroinitializer, align 16
@b8_ipredmode8x8 = common global [4 x [4 x i32]] zeroinitializer, align 16
@b8_intra_pred_modes8x8 = common global [16 x i32] zeroinitializer, align 16
@gop_structure = common global %struct.GOP_DATA* null, align 8
@rdopt = common global %struct.RD_DATA* null, align 8
@rddata_top_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common global %struct._IO_FILE* null, align 8
@p_log = common global %struct._IO_FILE* null, align 8
@p_trace = common global %struct._IO_FILE* null, align 8
@p_in = common global i32 0, align 4
@p_dec = common global i32 0, align 4
@glob_remapping_of_pic_nums_idc_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_abs_diff_pic_num_minus1_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_long_term_pic_idx_l0 = common global [20 x i32] zeroinitializer, align 16
@glob_remapping_of_pic_nums_idc_l1 = common global [20 x i32] zeroinitializer, align 16
@glob_abs_diff_pic_num_minus1_l1 = common global [20 x i32] zeroinitializer, align 16
@glob_long_term_pic_idx_l1 = common global [20 x i32] zeroinitializer, align 16
@Bytes_After_Header = common global i32 0, align 4
@rpc_bytes_to_go = common global i32 0, align 4
@rpc_bits_to_go = common global i32 0, align 4
@.str167 = private unnamed_addr constant [66 x i8] c"Number of B-frames %d can not exceed the number of frames skipped\00", align 1
@.str168 = private unnamed_addr constant [56 x i8] c"Unsupported direct mode=%d, use TEMPORAL=0 or SPATIAL=1\00", align 1
@.str169 = private unnamed_addr constant [55 x i8] c"\0ADirectInferenceFlag set to 1 due to interlace coding.\00", align 1
@.str170 = private unnamed_addr constant [67 x i8] c"Incorrect value %d for IntraBottom. Use 0 (disable) or 1 (enable).\00", align 1
@.str171 = private unnamed_addr constant [50 x i8] c"Unsupported symbol mode=%d, use UVLC=0 or CABAC=1\00", align 1
@.str172 = private unnamed_addr constant [29 x i8] c"Input file %s does not exist\00", align 1
@.str173 = private unnamed_addr constant [19 x i8] c"Error open file %s\00", align 1
@.str174 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@img = external global %struct.ImageParameters*
@.str175 = private unnamed_addr constant [52 x i8] c"even number of lines required for interlaced coding\00", align 1
@.str176 = private unnamed_addr constant [66 x i8] c"Warning: Automatical cropping activated: Coded frame Size: %dx%d\0A\00", align 1
@.str177 = private unnamed_addr constant [35 x i8] c"PatchInp: input->run_length_minus1\00", align 1
@.str178 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str179 = private unnamed_addr constant [7 x i8] c"%*[^\0A]\00", align 1
@.str180 = private unnamed_addr constant [26 x i8] c"PatchInp: input->top_left\00", align 1
@.str181 = private unnamed_addr constant [30 x i8] c"PatchInp: input->bottom_right\00", align 1
@.str182 = private unnamed_addr constant [32 x i8] c"PatchInp: input->slice_group_id\00", align 1
@.str183 = private unnamed_addr constant [48 x i8] c"Error read slice group information from file %s\00", align 1
@.str184 = private unnamed_addr constant [65 x i8] c"PyramidRefReorder Not supported with Interlace encoding methods\0A\00", align 1
@.str185 = private unnamed_addr constant [67 x i8] c"PocMemoryManagement not supported with Interlace encoding methods\0A\00", align 1
@.str186 = private unnamed_addr constant [92 x i8] c"Unsupported PicInterlace=%d, use frame based coding=0 or field based coding=1 or adaptive=2\00", align 1
@.str187 = private unnamed_addr constant [91 x i8] c"Unsupported MbInterlace=%d, use frame based coding=0 or field based coding=1 or adaptive=2\00", align 1
@.str188 = private unnamed_addr constant [55 x i8] c"MB AFF is not compatible with non-rd-optimized coding.\00", align 1
@.str189 = private unnamed_addr constant [91 x i8] c"RDOptimization=2 mode has been deactivated do to diverging of real and simulated decoders.\00", align 1
@.str190 = private unnamed_addr constant [49 x i8] c"NumFramesInELSubSeq (%d) is out of range [0,%d).\00", align 1
@.str191 = private unnamed_addr constant [66 x i8] c"Enhanced GOP is not supported in bitstream mode and RTP mode yet.\00", align 1
@.str192 = private unnamed_addr constant [42 x i8] c"AFF is not compatible with spare picture.\00", align 1
@.str193 = private unnamed_addr constant [64 x i8] c"Only RTP output mode is compatible with spare picture features.\00", align 1
@.str194 = private unnamed_addr constant [66 x i8] c"Weighted prediction coding is not supported for MB AFF currently.\00", align 1
@.str195 = private unnamed_addr constant [70 x i8] c"Enhanced GOP is not supported in weighted prediction coding mode yet.\00", align 1
@.str196 = private unnamed_addr constant [37 x i8] c"Basic unit is not defined correctly.\00", align 1
@.str197 = private unnamed_addr constant [91 x i8] c"Stored B pictures combined with IDR pictures only supported in Picture Order Count type 0\0A\00", align 1
@.str198 = private unnamed_addr constant [45 x i8] c"temporal direct needs at least 2 ref frames\0A\00", align 1
@.str199 = private unnamed_addr constant [52 x i8] c"\0AThe new 8x8 mode is not implemented for sp-frames.\00", align 1
@.str200 = private unnamed_addr constant [62 x i8] c"\0AAllowTransform8x8 may be used only with ProfileIDC %d to %d.\00", align 1
@.str201 = private unnamed_addr constant [69 x i8] c"\0AScalingMatrixPresentFlag may be used only with ProfileIDC %d to %d.\00", align 1
@.str202 = private unnamed_addr constant [84 x i8] c"\0AFRExt Profile(YUV Format) Error!\0AYUV422 can be used only with ProfileIDC %d or %d\0A\00", align 1
@.str203 = private unnamed_addr constant [79 x i8] c"\0AFRExt Profile(YUV Format) Error!\0AYUV444 can be used only with ProfileIDC %d.\0A\00", align 1
@.str204 = private unnamed_addr constant [54 x i8] c"\0AResidue color transform is supported only in YUV444.\00", align 1
@.str205 = private unnamed_addr constant [72 x i8] c"Profile must be baseline(66)/main(77)/extended(88) or FRExt (%d to %d).\00", align 1
@.str206 = private unnamed_addr constant [40 x i8] c"B pictures are not allowed in baseline.\00", align 1
@.str207 = private unnamed_addr constant [41 x i8] c"SP pictures are not allowed in baseline.\00", align 1
@.str208 = private unnamed_addr constant [46 x i8] c"Data partitioning is not allowed in baseline.\00", align 1
@.str209 = private unnamed_addr constant [48 x i8] c"Weighted prediction is not allowed in baseline.\00", align 1
@.str210 = private unnamed_addr constant [34 x i8] c"CABAC is not allowed in baseline.\00", align 1
@.str211 = private unnamed_addr constant [37 x i8] c"SP pictures are not allowed in main.\00", align 1
@.str212 = private unnamed_addr constant [42 x i8] c"Data partitioning is not allowed in main.\00", align 1
@.str213 = private unnamed_addr constant [56 x i8] c"num_slice_groups_minus1>0 (FMO) is not allowed in main.\00", align 1
@.str214 = private unnamed_addr constant [44 x i8] c"Redundant pictures are not allowed in main.\00", align 1
@.str215 = private unnamed_addr constant [58 x i8] c"direct_8x8_inference flag must be equal to 1 in extended.\00", align 1
@.str216 = private unnamed_addr constant [34 x i8] c"CABAC is not allowed in extended.\00", align 1
@.str217 = private unnamed_addr constant [90 x i8] c"Error in input parameter %s. Check configuration file. Value should be in [%d, %d] range.\00", align 1
@.str218 = private unnamed_addr constant [94 x i8] c"Error in input parameter %s. Check configuration file. Value should be in [%.2f, %.2f] range.\00", align 1
@.str219 = private unnamed_addr constant [92 x i8] c"Error in input parameter %s. Check configuration file. Value should not be smaller than %d.\00", align 1
@.str220 = private unnamed_addr constant [94 x i8] c"Error in input parameter %s. Check configuration file. Value should not be smaller than %2.f.\00", align 1
@.str223 = private unnamed_addr constant [19 x i8] c"Parameter %s = %d\0A\00", align 1
@.str224 = private unnamed_addr constant [19 x i8] c"Parameter %s = %s\0A\00", align 1
@.str225 = private unnamed_addr constant [21 x i8] c"Parameter %s = %.2f\0A\00", align 1
@.str226 = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str227 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str228 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each line.\00", align 1
@.str229 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@.str231 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@str = private unnamed_addr constant [30 x i8] c"Setting Default Parameters...\00"
@str236 = private unnamed_addr constant [55 x i8] c"*               Encoder Parameters                   *\00"
@str238 = private unnamed_addr constant [55 x i8] c"******************************************************\00"

; Function Attrs: noreturn nounwind optsize uwtable
define void @JMHelpExit() #0 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !832, !tbaa !833
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([956 x i8]* @.str150, i64 0, i64 0), i64 955, i64 1, %struct._IO_FILE* %0), !dbg !832
  tail call void @exit(i32 -1) #9, !dbg !836
  unreachable, !dbg !836
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #1

; Function Attrs: nounwind optsize uwtable
define void @Configure(i32 %ac, i8** nocapture %av) #2 {
entry:
  %tmp.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %ac}, i64 0, metadata !36), !dbg !837
  call void @llvm.dbg.value(metadata !{i8** %av}, i64 0, metadata !37), !dbg !837
  call void @llvm.dbg.value(metadata !838, i64 0, metadata !42), !dbg !839
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.InputParameters* @configinput to i8*), i8 0, i64 3592, i32 8, i1 false), !dbg !840
  %puts = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str, i64 0, i64 0)), !dbg !841
  tail call void @llvm.dbg.value(metadata !22, i64 0, metadata !842), !dbg !844
  %0 = load i8** getelementptr inbounds ([151 x %struct.Mapping]* @Map, i64 0, i64 0, i32 0), align 16, !dbg !845, !tbaa !833
  %cmp1.i = icmp eq i8* %0, null, !dbg !845
  br i1 %cmp1.i, label %InitEncoderParams.exit, label %while.body.i, !dbg !845

while.body.i:                                     ; preds = %entry, %if.end20.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.end20.i ], [ 0, %entry ]
  %Type.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i, i32 2, !dbg !846
  %1 = load i32* %Type.i, align 8, !dbg !846, !tbaa !848
  switch i32 %1, label %if.end20.i [
    i32 0, label %if.then.i
    i32 2, label %if.then13.i
  ], !dbg !846

if.then.i:                                        ; preds = %while.body.i
  %Default.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i, i32 3, !dbg !849
  %2 = load double* %Default.i, align 8, !dbg !849, !tbaa !850
  %conv.i = fptosi double %2 to i32, !dbg !849
  %Place.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i, i32 1, !dbg !849
  %3 = load i8** %Place.i, align 8, !dbg !849, !tbaa !833
  %4 = bitcast i8* %3 to i32*, !dbg !849
  store i32 %conv.i, i32* %4, align 4, !dbg !849, !tbaa !848
  br label %if.end20.i, !dbg !849

if.then13.i:                                      ; preds = %while.body.i
  %Default16.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i, i32 3, !dbg !851
  %5 = load double* %Default16.i, align 8, !dbg !851, !tbaa !850
  %Place19.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i, i32 1, !dbg !851
  %6 = load i8** %Place19.i, align 8, !dbg !851, !tbaa !833
  %7 = bitcast i8* %6 to double*, !dbg !851
  store double %5, double* %7, align 8, !dbg !851, !tbaa !850
  br label %if.end20.i, !dbg !851

if.end20.i:                                       ; preds = %if.then13.i, %if.then.i, %while.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !845
  %TokenName.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.next.i, i32 0, !dbg !845
  %8 = load i8** %TokenName.i, align 8, !dbg !845, !tbaa !833
  %cmp.i = icmp eq i8* %8, null, !dbg !845
  br i1 %cmp.i, label %InitEncoderParams.exit, label %while.body.i, !dbg !845

InitEncoderParams.exit:                           ; preds = %if.end20.i, %entry
  call void @llvm.dbg.value(metadata !852, i64 0, metadata !39), !dbg !853
  %cmp = icmp eq i32 %ac, 2, !dbg !854
  br i1 %cmp, label %if.then, label %if.end5, !dbg !854

if.then:                                          ; preds = %InitEncoderParams.exit
  %arrayidx = getelementptr inbounds i8** %av, i64 1, !dbg !855
  %9 = load i8** %arrayidx, align 8, !dbg !855, !tbaa !833
  %call2 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([3 x i8]* @.str153, i64 0, i64 0), i64 2) #10, !dbg !855
  %cmp3 = icmp eq i32 %call2, 0, !dbg !855
  br i1 %cmp3, label %if.then4, label %if.end19, !dbg !855

if.then4:                                         ; preds = %if.then
  call void @JMHelpExit() #11, !dbg !857
  unreachable

if.end5:                                          ; preds = %InitEncoderParams.exit
  %cmp6 = icmp sgt i32 %ac, 2, !dbg !859
  br i1 %cmp6, label %if.then7, label %if.end19, !dbg !859

if.then7:                                         ; preds = %if.end5
  %arrayidx8 = getelementptr inbounds i8** %av, i64 1, !dbg !860
  %10 = load i8** %arrayidx8, align 8, !dbg !860, !tbaa !833
  %call9 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([3 x i8]* @.str154, i64 0, i64 0), i64 2) #10, !dbg !860
  %cmp10 = icmp eq i32 %call9, 0, !dbg !860
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !860

if.then11:                                        ; preds = %if.then7
  %arrayidx12 = getelementptr inbounds i8** %av, i64 2, !dbg !862
  %11 = load i8** %arrayidx12, align 8, !dbg !862, !tbaa !833
  call void @llvm.dbg.value(metadata !{i8* %11}, i64 0, metadata !42), !dbg !862
  call void @llvm.dbg.value(metadata !864, i64 0, metadata !39), !dbg !865
  br label %if.end13, !dbg !866

if.end13:                                         ; preds = %if.then11, %if.then7
  %CLcount.0 = phi i32 [ 3, %if.then11 ], [ 1, %if.then7 ]
  %filename.0 = phi i8* [ %11, %if.then11 ], [ getelementptr inbounds ([12 x i8]* @.str151, i64 0, i64 0), %if.then7 ]
  %call15 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([3 x i8]* @.str153, i64 0, i64 0), i64 2) #10, !dbg !867
  %cmp16 = icmp eq i32 %call15, 0, !dbg !867
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !867

if.then17:                                        ; preds = %if.end13
  call void @JMHelpExit() #11, !dbg !868
  unreachable

if.end19:                                         ; preds = %if.then, %if.end13, %if.end5
  %CLcount.1 = phi i32 [ %CLcount.0, %if.end13 ], [ 1, %if.end5 ], [ 1, %if.then ]
  %filename.1 = phi i8* [ %filename.0, %if.end13 ], [ getelementptr inbounds ([12 x i8]* @.str151, i64 0, i64 0), %if.end5 ], [ getelementptr inbounds ([12 x i8]* @.str151, i64 0, i64 0), %if.then ]
  %call20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str155, i64 0, i64 0), i8* %filename.1) #12, !dbg !870
  %call21 = call i8* @GetConfigFileContent(i8* %filename.1) #11, !dbg !871
  call void @llvm.dbg.value(metadata !{i8* %call21}, i64 0, metadata !38), !dbg !871
  %cmp22 = icmp eq i8* %call21, null, !dbg !872
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !872

if.then23:                                        ; preds = %if.end19
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #12, !dbg !873
  br label %if.end24, !dbg !873

if.end24:                                         ; preds = %if.then23, %if.end19
  %call25 = call i64 @strlen(i8* %call21) #10, !dbg !874
  %conv = trunc i64 %call25 to i32, !dbg !874
  call fastcc void @ParseContent(i8* %call21, i32 %conv) #11, !dbg !874
  %putchar = call i32 @putchar(i32 10) #4, !dbg !875
  call void @free(i8* %call21) #12, !dbg !876
  %cmp27209 = icmp slt i32 %CLcount.1, %ac, !dbg !877
  br i1 %cmp27209, label %while.body.lr.ph, label %while.end124, !dbg !877

while.body.lr.ph:                                 ; preds = %if.end24, %while.cond.outer.backedge
  %CLcount.2.ph210 = phi i32 [ %CLcount.2.ph.be, %while.cond.outer.backedge ], [ %CLcount.1, %if.end24 ]
  %idxprom = sext i32 %CLcount.2.ph210 to i64, !dbg !878
  %arrayidx29 = getelementptr inbounds i8** %av, i64 %idxprom, !dbg !878
  br label %while.body, !dbg !877

while.body:                                       ; preds = %if.else118, %while.body.lr.ph
  %12 = load i8** %arrayidx29, align 8, !dbg !878, !tbaa !833
  %call30 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([3 x i8]* @.str153, i64 0, i64 0), i64 2) #10, !dbg !878
  %cmp31 = icmp eq i32 %call30, 0, !dbg !878
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !878

if.then33:                                        ; preds = %while.body
  call void @JMHelpExit() #11, !dbg !879
  unreachable

if.end34:                                         ; preds = %while.body
  %call37 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([3 x i8]* @.str157, i64 0, i64 0), i64 2) #10, !dbg !881
  %cmp38 = icmp eq i32 %call37, 0, !dbg !881
  br i1 %cmp38, label %if.then40, label %if.else, !dbg !881

if.then40:                                        ; preds = %if.end34
  %add = add nsw i32 %CLcount.2.ph210, 1, !dbg !882
  %idxprom41 = sext i32 %add to i64, !dbg !882
  %arrayidx42 = getelementptr inbounds i8** %av, i64 %idxprom41, !dbg !882
  %13 = load i8** %arrayidx42, align 8, !dbg !882, !tbaa !833
  %call43 = call i8* @GetConfigFileContent(i8* %13) #11, !dbg !882
  call void @llvm.dbg.value(metadata !{i8* %call43}, i64 0, metadata !38), !dbg !882
  %cmp44 = icmp eq i8* %call43, null, !dbg !884
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !884

if.then46:                                        ; preds = %if.then40
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #12, !dbg !885
  br label %if.end47, !dbg !885

if.end47:                                         ; preds = %if.then46, %if.then40
  %14 = load i8** %arrayidx42, align 8, !dbg !886, !tbaa !833
  %call51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str155, i64 0, i64 0), i8* %14) #12, !dbg !886
  %call52 = call i64 @strlen(i8* %call43) #10, !dbg !887
  %conv53 = trunc i64 %call52 to i32, !dbg !887
  call fastcc void @ParseContent(i8* %call43, i32 %conv53) #11, !dbg !887
  %putchar185 = call i32 @putchar(i32 10) #4, !dbg !888
  call void @free(i8* %call43) #12, !dbg !889
  %add55 = add nsw i32 %CLcount.2.ph210, 2, !dbg !890
  call void @llvm.dbg.value(metadata !{i32 %add55}, i64 0, metadata !39), !dbg !890
  br label %while.cond.outer.backedge, !dbg !891

while.cond.outer.backedge:                        ; preds = %if.end47, %while.end113
  %CLcount.2.ph.be = phi i32 [ %add55, %if.end47 ], [ %CLcount.3.lcssa, %while.end113 ]
  %cmp27 = icmp slt i32 %CLcount.2.ph.be, %ac, !dbg !877
  br i1 %cmp27, label %while.body.lr.ph, label %while.end124, !dbg !877

if.else:                                          ; preds = %if.end34
  %call58 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([3 x i8]* @.str158, i64 0, i64 0), i64 2) #10, !dbg !892
  %cmp59 = icmp eq i32 %call58, 0, !dbg !892
  br i1 %cmp59, label %if.then61, label %if.else118, !dbg !892

if.then61:                                        ; preds = %if.else
  %inc = add i32 %CLcount.2.ph210, 1, !dbg !893
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !39), !dbg !893
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !40), !dbg !894
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !41), !dbg !895
  %cmp63202 = icmp slt i32 %inc, %ac, !dbg !896
  br i1 %cmp63202, label %land.rhs.lr.ph, label %while.end, !dbg !896

land.rhs.lr.ph:                                   ; preds = %if.then61
  %15 = sext i32 %inc to i64
  br label %land.rhs, !dbg !896

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body71
  %indvars.iv = phi i64 [ %15, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body71 ]
  %NumberParams.0204 = phi i32 [ %inc, %land.rhs.lr.ph ], [ %inc72, %while.body71 ]
  %ContentLen.0203 = phi i32 [ 0, %land.rhs.lr.ph ], [ %conv78, %while.body71 ]
  %arrayidx66 = getelementptr inbounds i8** %av, i64 %indvars.iv, !dbg !896
  %16 = load i8** %arrayidx66, align 8, !dbg !896, !tbaa !833
  %17 = load i8* %16, align 1, !dbg !896, !tbaa !834
  %cmp69 = icmp eq i8 %17, 45, !dbg !896
  br i1 %cmp69, label %while.end, label %while.body71

while.body71:                                     ; preds = %land.rhs
  %inc72 = add nsw i32 %NumberParams.0204, 1, !dbg !897
  call void @llvm.dbg.value(metadata !{i32 %inc72}, i64 0, metadata !41), !dbg !897
  %call75 = call i64 @strlen(i8* %16) #10, !dbg !897
  %conv76184 = zext i32 %ContentLen.0203 to i64, !dbg !897
  %add77 = add i64 %call75, %conv76184, !dbg !897
  %conv78 = trunc i64 %add77 to i32, !dbg !897
  call void @llvm.dbg.value(metadata !{i32 %conv78}, i64 0, metadata !40), !dbg !897
  %cmp63 = icmp slt i32 %inc72, %ac, !dbg !896
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !896
  br i1 %cmp63, label %land.rhs, label %while.end, !dbg !896

while.end:                                        ; preds = %while.body71, %land.rhs, %if.then61
  %NumberParams.0.lcssa = phi i32 [ %inc, %if.then61 ], [ %NumberParams.0204, %land.rhs ], [ %inc72, %while.body71 ]
  %ContentLen.0.lcssa = phi i32 [ 0, %if.then61 ], [ %ContentLen.0203, %land.rhs ], [ %conv78, %while.body71 ]
  %add79 = add nsw i32 %ContentLen.0.lcssa, 1000, !dbg !898
  call void @llvm.dbg.value(metadata !{i32 %add79}, i64 0, metadata !40), !dbg !898
  %conv80 = sext i32 %add79 to i64, !dbg !899
  %call81 = call noalias i8* @malloc(i64 %conv80) #12, !dbg !899
  call void @llvm.dbg.value(metadata !{i8* %call81}, i64 0, metadata !38), !dbg !899
  %cmp82 = icmp eq i8* %call81, null, !dbg !899
  br i1 %cmp82, label %if.then84, label %if.end85, !dbg !899

if.then84:                                        ; preds = %while.end
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8]* @.str159, i64 0, i64 0)) #12, !dbg !899
  br label %if.end85, !dbg !899

if.end85:                                         ; preds = %if.then84, %while.end
  store i8 0, i8* %call81, align 1, !dbg !900, !tbaa !834
  %cmp88206 = icmp slt i32 %inc, %NumberParams.0.lcssa, !dbg !901
  br i1 %cmp88206, label %while.body90.lr.ph, label %while.end113, !dbg !901

while.body90.lr.ph:                               ; preds = %if.end85
  %18 = sext i32 %inc to i64
  br label %while.body90, !dbg !901

while.body90:                                     ; preds = %while.end111, %while.body90.lr.ph
  %indvars.iv215 = phi i64 [ %18, %while.body90.lr.ph ], [ %indvars.iv.next216, %while.end111 ]
  %CLcount.3207 = phi i32 [ %inc, %while.body90.lr.ph ], [ %inc112, %while.end111 ]
  %arrayidx92 = getelementptr inbounds i8** %av, i64 %indvars.iv215, !dbg !902
  %19 = load i8** %arrayidx92, align 8, !dbg !902, !tbaa !833
  call void @llvm.dbg.value(metadata !{i8* %19}, i64 0, metadata !43), !dbg !902
  %call94 = call i64 @strlen(i8* %call81) #10, !dbg !903
  %arrayidx95 = getelementptr inbounds i8* %call81, i64 %call94, !dbg !903
  call void @llvm.dbg.value(metadata !{i8* %arrayidx95}, i64 0, metadata !48), !dbg !903
  br label %while.cond96, !dbg !904

while.cond96:                                     ; preds = %if.end109, %while.body90
  %source.0 = phi i8* [ %19, %while.body90 ], [ %incdec.ptr110, %if.end109 ]
  %destin.0 = phi i8* [ %arrayidx95, %while.body90 ], [ %destin.1, %if.end109 ]
  %20 = load i8* %source.0, align 1, !dbg !904, !tbaa !834
  switch i8 %20, label %if.else107 [
    i8 0, label %while.end111
    i8 61, label %if.then104
  ], !dbg !904

if.then104:                                       ; preds = %while.cond96
  %incdec.ptr = getelementptr inbounds i8* %destin.0, i64 1, !dbg !905
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !48), !dbg !905
  store i8 32, i8* %destin.0, align 1, !dbg !905, !tbaa !834
  %incdec.ptr105 = getelementptr inbounds i8* %destin.0, i64 2, !dbg !905
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr105}, i64 0, metadata !48), !dbg !905
  store i8 61, i8* %incdec.ptr, align 1, !dbg !905, !tbaa !834
  store i8 32, i8* %incdec.ptr105, align 1, !dbg !905, !tbaa !834
  br label %if.end109, !dbg !908

if.else107:                                       ; preds = %while.cond96
  store i8 %20, i8* %destin.0, align 1, !dbg !909, !tbaa !834
  br label %if.end109

if.end109:                                        ; preds = %if.else107, %if.then104
  %incdec.ptr105.pn = phi i8* [ %incdec.ptr105, %if.then104 ], [ %destin.0, %if.else107 ]
  %destin.1 = getelementptr inbounds i8* %incdec.ptr105.pn, i64 1, !dbg !905
  %incdec.ptr110 = getelementptr inbounds i8* %source.0, i64 1, !dbg !910
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr110}, i64 0, metadata !43), !dbg !910
  br label %while.cond96, !dbg !911

while.end111:                                     ; preds = %while.cond96
  store i8 0, i8* %destin.0, align 1, !dbg !912, !tbaa !834
  %inc112 = add nsw i32 %CLcount.3207, 1, !dbg !913
  call void @llvm.dbg.value(metadata !{i32 %NumberParams.0.lcssa}, i64 0, metadata !39), !dbg !913
  %indvars.iv.next216 = add i64 %indvars.iv215, 1, !dbg !901
  %exitcond218 = icmp eq i32 %inc112, %NumberParams.0.lcssa, !dbg !901
  br i1 %exitcond218, label %while.end113, label %while.body90, !dbg !901

while.end113:                                     ; preds = %while.end111, %if.end85
  %CLcount.3.lcssa = phi i32 [ %inc, %if.end85 ], [ %NumberParams.0.lcssa, %while.end111 ]
  %call114 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str160, i64 0, i64 0), i8* %call81) #12, !dbg !914
  %call115 = call i64 @strlen(i8* %call81) #10, !dbg !915
  %conv116 = trunc i64 %call115 to i32, !dbg !915
  call fastcc void @ParseContent(i8* %call81, i32 %conv116) #11, !dbg !915
  call void @free(i8* %call81) #12, !dbg !916
  %putchar183 = call i32 @putchar(i32 10) #4, !dbg !917
  br label %while.cond.outer.backedge, !dbg !918

if.else118:                                       ; preds = %if.else
  %call121 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([79 x i8]* @.str161, i64 0, i64 0), i32 %CLcount.2.ph210, i8* %12) #12, !dbg !919
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #12, !dbg !921
  br label %while.body, !dbg !877

while.end124:                                     ; preds = %if.end24, %while.cond.outer.backedge
  %putchar182 = call i32 @putchar(i32 10) #4, !dbg !922
  %21 = bitcast i32* %tmp.i to i8*, !dbg !923
  call void @llvm.lifetime.start(i64 4, i8* %21) #4, !dbg !923
  %22 = load %struct.InputParameters** @input, align 8, !dbg !923, !tbaa !833
  %BitDepthLuma.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 135, !dbg !923
  %23 = load i32* %BitDepthLuma.i, align 4, !dbg !923, !tbaa !848
  call void @llvm.dbg.value(metadata !925, i64 0, metadata !926) #4, !dbg !927
  %LowPassForIntra8x8.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 124, !dbg !928
  store i32 1, i32* %LowPassForIntra8x8.i, align 4, !dbg !928, !tbaa !848
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !929) #4, !dbg !931
  %24 = load i8** getelementptr inbounds ([151 x %struct.Mapping]* @Map, i64 0, i64 0, i32 0), align 16, !dbg !932, !tbaa !833
  %cmp1.i.i = icmp eq i8* %24, null, !dbg !932
  br i1 %cmp1.i.i, label %TestEncoderParams.exit.i, label %while.body.lr.ph.i.i, !dbg !932

while.body.lr.ph.i.i:                             ; preds = %while.end124
  %25 = mul i32 %23, 6, !dbg !923
  %mul.i = add i32 %25, -48, !dbg !923
  %conv148.i.i = sitofp i32 %mul.i to double, !dbg !933
  br label %while.body.i.i, !dbg !932

while.body.i.i:                                   ; preds = %if.end181.i.i, %while.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %while.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %if.end181.i.i ]
  %26 = phi i8* [ %24, %while.body.lr.ph.i.i ], [ %51, %if.end181.i.i ]
  %param_limits.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 4, !dbg !937
  %27 = load i32* %param_limits.i.i, align 8, !dbg !937, !tbaa !848
  switch i32 %27, label %if.end181.i.i [
    i32 1, label %if.then.i.i
    i32 2, label %if.then77.i.i
    i32 3, label %if.then135.i.i
  ], !dbg !937

if.then.i.i:                                      ; preds = %while.body.i.i
  %Type.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 2, !dbg !938
  %28 = load i32* %Type.i.i, align 8, !dbg !938, !tbaa !848
  switch i32 %28, label %if.end181.i.i [
    i32 0, label %if.then7.i.i
    i32 2, label %if.then39.i.i
  ], !dbg !938

if.then7.i.i:                                     ; preds = %if.then.i.i
  %Place.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 1, !dbg !940
  %29 = load i8** %Place.i.i, align 8, !dbg !940, !tbaa !833
  %30 = bitcast i8* %29 to i32*, !dbg !940
  %31 = load i32* %30, align 4, !dbg !940, !tbaa !848
  %min_limit.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 5, !dbg !940
  %32 = load double* %min_limit.i.i, align 8, !dbg !940, !tbaa !850
  %conv.i.i = fptosi double %32 to i32, !dbg !940
  %cmp12.i.i = icmp slt i32 %31, %conv.i.i, !dbg !940
  %max_limit32.phi.trans.insert.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 6
  %.pre.i.i = load double* %max_limit32.phi.trans.insert.i.i, align 8, !dbg !942, !tbaa !850
  %conv33.i.pre.i = fptosi double %.pre.i.i to i32, !dbg !942
  %cmp20.i.i = icmp sgt i32 %31, %conv33.i.pre.i, !dbg !940
  %or.cond791.i = or i1 %cmp12.i.i, %cmp20.i.i, !dbg !940
  br i1 %or.cond791.i, label %if.then22.i.i, label %if.end181.i.i, !dbg !940

if.then22.i.i:                                    ; preds = %if.then7.i.i
  %call.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([90 x i8]* @.str217, i64 0, i64 0), i8* %26, i32 %conv.i.i, i32 %conv33.i.pre.i) #12, !dbg !942
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #12, !dbg !944
  br label %if.end181.i.i, !dbg !945

if.then39.i.i:                                    ; preds = %if.then.i.i
  %Place42.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 1, !dbg !946
  %33 = load i8** %Place42.i.i, align 8, !dbg !946, !tbaa !833
  %34 = bitcast i8* %33 to double*, !dbg !946
  %35 = load double* %34, align 8, !dbg !946, !tbaa !850
  %min_limit45.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 5, !dbg !946
  %36 = load double* %min_limit45.i.i, align 8, !dbg !946, !tbaa !850
  %cmp46.i.i = fcmp olt double %35, %36, !dbg !946
  %max_limit66.phi.trans.insert.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 6
  %.pre5.i.i = load double* %max_limit66.phi.trans.insert.i.i, align 8, !dbg !948, !tbaa !850
  %cmp55.i.i = fcmp ogt double %35, %.pre5.i.i, !dbg !946
  %or.cond.i.i = or i1 %cmp46.i.i, %cmp55.i.i, !dbg !946
  br i1 %or.cond.i.i, label %if.then57.i.i, label %if.end181.i.i, !dbg !946

if.then57.i.i:                                    ; preds = %if.then39.i.i
  %call67.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([94 x i8]* @.str218, i64 0, i64 0), i8* %26, double %36, double %.pre5.i.i) #12, !dbg !948
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #12, !dbg !950
  br label %if.end181.i.i, !dbg !951

if.then77.i.i:                                    ; preds = %while.body.i.i
  %Type80.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 2, !dbg !952
  %37 = load i32* %Type80.i.i, align 8, !dbg !952, !tbaa !848
  switch i32 %37, label %if.end181.i.i [
    i32 0, label %if.then83.i.i
    i32 2, label %if.then109.i.i
  ], !dbg !952

if.then83.i.i:                                    ; preds = %if.then77.i.i
  %Place86.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 1, !dbg !954
  %38 = load i8** %Place86.i.i, align 8, !dbg !954, !tbaa !833
  %39 = bitcast i8* %38 to i32*, !dbg !954
  %40 = load i32* %39, align 4, !dbg !954, !tbaa !848
  %min_limit89.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 5, !dbg !954
  %41 = load double* %min_limit89.i.i, align 8, !dbg !954, !tbaa !850
  %conv90.i.i = fptosi double %41 to i32, !dbg !954
  %cmp91.i.i = icmp slt i32 %40, %conv90.i.i, !dbg !954
  br i1 %cmp91.i.i, label %if.then93.i.i, label %if.end181.i.i, !dbg !954

if.then93.i.i:                                    ; preds = %if.then83.i.i
  %call101.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([92 x i8]* @.str219, i64 0, i64 0), i8* %26, i32 %conv90.i.i) #12, !dbg !956
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #12, !dbg !958
  br label %if.end181.i.i, !dbg !959

if.then109.i.i:                                   ; preds = %if.then77.i.i
  %Place112.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 1, !dbg !960
  %42 = load i8** %Place112.i.i, align 8, !dbg !960, !tbaa !833
  %43 = bitcast i8* %42 to double*, !dbg !960
  %44 = load double* %43, align 8, !dbg !960, !tbaa !850
  %min_limit115.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 5, !dbg !960
  %45 = load double* %min_limit115.i.i, align 8, !dbg !960, !tbaa !850
  %cmp116.i.i = fcmp olt double %44, %45, !dbg !960
  br i1 %cmp116.i.i, label %if.then118.i.i, label %if.end181.i.i, !dbg !960

if.then118.i.i:                                   ; preds = %if.then109.i.i
  %call125.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([94 x i8]* @.str220, i64 0, i64 0), i8* %26, double %45) #12, !dbg !962
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #12, !dbg !964
  br label %if.end181.i.i, !dbg !965

if.then135.i.i:                                   ; preds = %while.body.i.i
  %Type138.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 2, !dbg !966
  %46 = load i32* %Type138.i.i, align 8, !dbg !966, !tbaa !848
  %cmp139.i.i = icmp eq i32 %46, 0, !dbg !966
  br i1 %cmp139.i.i, label %if.then141.i.i, label %if.end181.i.i, !dbg !966

if.then141.i.i:                                   ; preds = %if.then135.i.i
  %Place144.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 1, !dbg !933
  %47 = load i8** %Place144.i.i, align 8, !dbg !933, !tbaa !833
  %48 = bitcast i8* %47 to i32*, !dbg !933
  %49 = load i32* %48, align 4, !dbg !933, !tbaa !848
  %min_limit147.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 5, !dbg !933
  %50 = load double* %min_limit147.i.i, align 8, !dbg !933, !tbaa !850
  %sub.i.i = fsub double %50, %conv148.i.i, !dbg !933
  %conv149.i.i = fptosi double %sub.i.i to i32, !dbg !933
  %cmp150.i.i = icmp slt i32 %49, %conv149.i.i, !dbg !933
  %max_limit174.phi.trans.insert.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 6
  %.pre6.i.i = load double* %max_limit174.phi.trans.insert.i.i, align 8, !dbg !967, !tbaa !850
  %conv175.i.pre.i = fptosi double %.pre6.i.i to i32, !dbg !967
  %cmp160.i.i = icmp sgt i32 %49, %conv175.i.pre.i, !dbg !933
  %or.cond792.i = or i1 %cmp150.i.i, %cmp160.i.i, !dbg !933
  br i1 %or.cond792.i, label %if.then162.i.i, label %if.end181.i.i, !dbg !933

if.then162.i.i:                                   ; preds = %if.then141.i.i
  %call176.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([90 x i8]* @.str217, i64 0, i64 0), i8* %26, i32 %conv149.i.i, i32 %conv175.i.pre.i) #12, !dbg !967
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #12, !dbg !969
  br label %if.end181.i.i, !dbg !970

if.end181.i.i:                                    ; preds = %if.then162.i.i, %if.then141.i.i, %if.then135.i.i, %if.then118.i.i, %if.then109.i.i, %if.then93.i.i, %if.then83.i.i, %if.then77.i.i, %if.then57.i.i, %if.then39.i.i, %if.then22.i.i, %if.then7.i.i, %if.then.i.i, %while.body.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1, !dbg !932
  %TokenName.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.next.i.i, i32 0, !dbg !932
  %51 = load i8** %TokenName.i.i, align 8, !dbg !932, !tbaa !833
  %cmp.i.i = icmp eq i8* %51, null, !dbg !932
  br i1 %cmp.i.i, label %TestEncoderParams.exit.loopexit.i, label %while.body.i.i, !dbg !932

TestEncoderParams.exit.loopexit.i:                ; preds = %if.end181.i.i
  %.pre.i = load %struct.InputParameters** @input, align 8, !dbg !971, !tbaa !833
  br label %TestEncoderParams.exit.i

TestEncoderParams.exit.i:                         ; preds = %TestEncoderParams.exit.loopexit.i, %while.end124
  %52 = phi %struct.InputParameters* [ %.pre.i, %TestEncoderParams.exit.loopexit.i ], [ %22, %while.end124 ]
  %FrameRate.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 76, !dbg !971
  %53 = load double* %FrameRate.i, align 8, !dbg !971, !tbaa !850
  %cmp.i194 = fcmp oeq double %53, 0.000000e+00, !dbg !971
  br i1 %cmp.i194, label %if.then.i195, label %if.end.i, !dbg !971

if.then.i195:                                     ; preds = %TestEncoderParams.exit.i
  store double 3.000000e+01, double* %FrameRate.i, align 8, !dbg !972, !tbaa !850
  br label %if.end.i, !dbg !972

if.end.i:                                         ; preds = %if.then.i195, %TestEncoderParams.exit.i
  %arrayidx2.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 0, i64 0, !dbg !973
  store i32 16, i32* %arrayidx2.i, align 4, !dbg !973, !tbaa !848
  %arrayidx5.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 0, i64 1, !dbg !974
  store i32 16, i32* %arrayidx5.i, align 4, !dbg !974, !tbaa !848
  %arrayidx8.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 1, i64 0, !dbg !975
  store i32 16, i32* %arrayidx8.i, align 4, !dbg !975, !tbaa !848
  %arrayidx11.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 1, i64 1, !dbg !976
  store i32 16, i32* %arrayidx11.i, align 4, !dbg !976, !tbaa !848
  %arrayidx14.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 2, i64 0, !dbg !977
  store i32 16, i32* %arrayidx14.i, align 4, !dbg !977, !tbaa !848
  %arrayidx17.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 2, i64 1, !dbg !978
  store i32 8, i32* %arrayidx17.i, align 4, !dbg !978, !tbaa !848
  %arrayidx20.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 3, i64 0, !dbg !979
  store i32 8, i32* %arrayidx20.i, align 4, !dbg !979, !tbaa !848
  %arrayidx23.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 3, i64 1, !dbg !980
  store i32 16, i32* %arrayidx23.i, align 4, !dbg !980, !tbaa !848
  %arrayidx26.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 4, i64 0, !dbg !981
  store i32 8, i32* %arrayidx26.i, align 4, !dbg !981, !tbaa !848
  %arrayidx29.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 4, i64 1, !dbg !982
  store i32 8, i32* %arrayidx29.i, align 4, !dbg !982, !tbaa !848
  %arrayidx32.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 5, i64 0, !dbg !983
  store i32 8, i32* %arrayidx32.i, align 4, !dbg !983, !tbaa !848
  %arrayidx35.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 5, i64 1, !dbg !984
  store i32 4, i32* %arrayidx35.i, align 4, !dbg !984, !tbaa !848
  %arrayidx38.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 6, i64 0, !dbg !985
  store i32 4, i32* %arrayidx38.i, align 4, !dbg !985, !tbaa !848
  %arrayidx41.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 6, i64 1, !dbg !986
  store i32 8, i32* %arrayidx41.i, align 4, !dbg !986, !tbaa !848
  %arrayidx44.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 7, i64 0, !dbg !987
  store i32 4, i32* %arrayidx44.i, align 4, !dbg !987, !tbaa !848
  %arrayidx47.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 7, i64 1, !dbg !988
  store i32 4, i32* %arrayidx47.i, align 4, !dbg !988, !tbaa !848
  %arrayidx49.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 0, i64 0, !dbg !989
  store i32 4, i32* %arrayidx49.i, align 4, !dbg !989, !tbaa !848
  %arrayidx52.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 0, i64 1, !dbg !990
  store i32 4, i32* %arrayidx52.i, align 4, !dbg !990, !tbaa !848
  %arrayidx55.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 1, i64 0, !dbg !991
  store i32 4, i32* %arrayidx55.i, align 4, !dbg !991, !tbaa !848
  %arrayidx58.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 1, i64 1, !dbg !992
  store i32 4, i32* %arrayidx58.i, align 4, !dbg !992, !tbaa !848
  %arrayidx61.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 2, i64 0, !dbg !993
  store i32 4, i32* %arrayidx61.i, align 4, !dbg !993, !tbaa !848
  %arrayidx64.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 2, i64 1, !dbg !994
  store i32 2, i32* %arrayidx64.i, align 4, !dbg !994, !tbaa !848
  %arrayidx67.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 3, i64 0, !dbg !995
  store i32 2, i32* %arrayidx67.i, align 4, !dbg !995, !tbaa !848
  %arrayidx70.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 3, i64 1, !dbg !996
  store i32 4, i32* %arrayidx70.i, align 4, !dbg !996, !tbaa !848
  %arrayidx73.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 4, i64 0, !dbg !997
  store i32 2, i32* %arrayidx73.i, align 4, !dbg !997, !tbaa !848
  %arrayidx76.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 4, i64 1, !dbg !998
  store i32 2, i32* %arrayidx76.i, align 4, !dbg !998, !tbaa !848
  %arrayidx79.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 5, i64 0, !dbg !999
  store i32 2, i32* %arrayidx79.i, align 4, !dbg !999, !tbaa !848
  %arrayidx82.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 5, i64 1, !dbg !1000
  store i32 1, i32* %arrayidx82.i, align 4, !dbg !1000, !tbaa !848
  %arrayidx85.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 6, i64 0, !dbg !1001
  store i32 1, i32* %arrayidx85.i, align 4, !dbg !1001, !tbaa !848
  %arrayidx88.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 6, i64 1, !dbg !1002
  store i32 2, i32* %arrayidx88.i, align 4, !dbg !1002, !tbaa !848
  %arrayidx91.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 7, i64 0, !dbg !1003
  store i32 1, i32* %arrayidx91.i, align 4, !dbg !1003, !tbaa !848
  %arrayidx94.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 7, i64 1, !dbg !1004
  store i32 1, i32* %arrayidx94.i, align 4, !dbg !1004, !tbaa !848
  %BRefPictures.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 54, !dbg !1005
  %54 = load i32* %BRefPictures.i, align 4, !dbg !1005, !tbaa !848
  %tobool.i = icmp eq i32 %54, 0, !dbg !1005
  br i1 %tobool.i, label %cond.end.i, label %cond.true.i, !dbg !1005

cond.true.i:                                      ; preds = %if.end.i
  %successive_Bframe.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 34, !dbg !1005
  %55 = load i32* %successive_Bframe.i, align 4, !dbg !1005, !tbaa !848
  %add.i = add nsw i32 %55, 1, !dbg !1005
  br label %cond.end.i, !dbg !1005

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i
  %cond.i = phi i32 [ %add.i, %cond.true.i ], [ 1, %if.end.i ], !dbg !1005
  call void @llvm.dbg.value(metadata !{i32 %cond.i}, i64 0, metadata !1006) #4, !dbg !1005
  %Log2MaxFrameNum.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 13, !dbg !1007
  %56 = load i32* %Log2MaxFrameNum.i, align 4, !dbg !1007, !tbaa !848
  %cmp95.i = icmp slt i32 %56, 4, !dbg !1007
  br i1 %cmp95.i, label %if.then96.i, label %if.else.i, !dbg !1007

if.then96.i:                                      ; preds = %cond.end.i
  %no_frames.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 2, !dbg !1008
  %57 = load i32* %no_frames.i, align 4, !dbg !1008, !tbaa !848
  %mul97.i = mul nsw i32 %57, %cond.i, !dbg !1008
  call void @llvm.dbg.value(metadata !{i32 %mul97.i}, i64 0, metadata !1009) #4, !dbg !1010
  %sub.i681.i = add i32 %mul97.i, -1, !dbg !1011
  call void @llvm.dbg.value(metadata !{i32 %sub.i681.i}, i64 0, metadata !1012) #4, !dbg !1011
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !1013) #4, !dbg !1014
  %cmp3.i.i = icmp eq i32 %sub.i681.i, 0, !dbg !1015
  br i1 %cmp3.i.i, label %if.end111.i, label %while.body.i683.i, !dbg !1015

while.body.i683.i:                                ; preds = %if.then96.i, %while.body.i683.i
  %uiRet.05.i.i = phi i32 [ %inc.i.i, %while.body.i683.i ], [ 0, %if.then96.i ]
  %uiTmp.04.i.i = phi i32 [ %shr.i.i, %while.body.i683.i ], [ %sub.i681.i, %if.then96.i ]
  %shr.i.i = lshr i32 %uiTmp.04.i.i, 1, !dbg !1016
  call void @llvm.dbg.value(metadata !{i32 %shr.i.i}, i64 0, metadata !1012) #4, !dbg !1016
  %inc.i.i = add i32 %uiRet.05.i.i, 1, !dbg !1018
  call void @llvm.dbg.value(metadata !{i32 %inc.i.i}, i64 0, metadata !1013) #4, !dbg !1018
  %cmp.i682.i = icmp eq i32 %shr.i.i, 0, !dbg !1015
  br i1 %cmp.i682.i, label %CeilLog2.exit.i, label %while.body.i683.i, !dbg !1015

CeilLog2.exit.i:                                  ; preds = %while.body.i683.i
  %sub99.i = add i32 %uiRet.05.i.i, -3, !dbg !1008
  %cmp100.i = icmp sgt i32 %sub99.i, 0, !dbg !1008
  br i1 %cmp100.i, label %while.body.i691.i, label %if.end111.i, !dbg !1008

while.body.i691.i:                                ; preds = %CeilLog2.exit.i, %while.body.i691.i
  %uiRet.05.i686.i = phi i32 [ %inc.i689.i, %while.body.i691.i ], [ 0, %CeilLog2.exit.i ]
  %uiTmp.04.i687.i = phi i32 [ %shr.i688.i, %while.body.i691.i ], [ %sub.i681.i, %CeilLog2.exit.i ]
  %shr.i688.i = lshr i32 %uiTmp.04.i687.i, 1, !dbg !1016
  call void @llvm.dbg.value(metadata !{i32 %shr.i688.i}, i64 0, metadata !1012) #4, !dbg !1016
  %inc.i689.i = add i32 %uiRet.05.i686.i, 1, !dbg !1018
  call void @llvm.dbg.value(metadata !{i32 %inc.i689.i}, i64 0, metadata !1013) #4, !dbg !1018
  %cmp.i690.i = icmp eq i32 %shr.i688.i, 0, !dbg !1015
  br i1 %cmp.i690.i, label %CeilLog2.exit693.i, label %while.body.i691.i, !dbg !1015

CeilLog2.exit693.i:                               ; preds = %while.body.i691.i
  %phitmp730.i = add i32 %uiRet.05.i686.i, -3
  br label %if.end111.i, !dbg !1008

if.else.i:                                        ; preds = %cond.end.i
  %sub110.i = add nsw i32 %56, -4, !dbg !1019
  %no_frames112.pre.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 2, !dbg !1020
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.else.i, %CeilLog2.exit693.i, %CeilLog2.exit.i, %if.then96.i
  %no_frames112.pre-phi.i = phi i32* [ %no_frames.i, %if.then96.i ], [ %no_frames.i, %CeilLog2.exit693.i ], [ %no_frames.i, %CeilLog2.exit.i ], [ %no_frames112.pre.i, %if.else.i ], !dbg !1020
  %storemerge.i = phi i32 [ 0, %if.then96.i ], [ %phitmp730.i, %CeilLog2.exit693.i ], [ 0, %CeilLog2.exit.i ], [ %sub110.i, %if.else.i ]
  store i32 %storemerge.i, i32* @log2_max_frame_num_minus4, align 4, !dbg !1008, !tbaa !848
  %58 = load i32* %no_frames112.pre-phi.i, align 4, !dbg !1020, !tbaa !848
  %mul113.i = shl i32 %58, 1, !dbg !1020
  %jumpd.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 5, !dbg !1020
  %59 = load i32* %jumpd.i, align 4, !dbg !1020, !tbaa !848
  %add114.i = add nsw i32 %59, 1, !dbg !1020
  %mul115.i = mul nsw i32 %mul113.i, %add114.i, !dbg !1020
  call void @llvm.dbg.value(metadata !{i32 %mul115.i}, i64 0, metadata !1021) #4, !dbg !1022
  %sub.i694.i = add i32 %mul115.i, -1, !dbg !1023
  call void @llvm.dbg.value(metadata !{i32 %sub.i694.i}, i64 0, metadata !1024) #4, !dbg !1023
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !1025) #4, !dbg !1026
  br label %while.body.i700.i

while.body.i700.i:                                ; preds = %while.body.i700.i, %if.end111.i
  %uiRet.05.i695.i = phi i32 [ %inc.i698.i, %while.body.i700.i ], [ 0, %if.end111.i ]
  %uiTmp.04.i696.i = phi i32 [ %shr.i697.i, %while.body.i700.i ], [ %sub.i694.i, %if.end111.i ]
  %shr.i697.i = lshr i32 %uiTmp.04.i696.i, 1, !dbg !1027
  call void @llvm.dbg.value(metadata !{i32 %shr.i697.i}, i64 0, metadata !1024) #4, !dbg !1027
  %inc.i698.i = add i32 %uiRet.05.i695.i, 1, !dbg !1028
  call void @llvm.dbg.value(metadata !{i32 %inc.i698.i}, i64 0, metadata !1025) #4, !dbg !1028
  %cmp.i699.i = icmp eq i32 %shr.i697.i, 0, !dbg !1029
  br i1 %cmp.i699.i, label %CeilLog2.exit702.i, label %while.body.i700.i, !dbg !1029

CeilLog2.exit702.i:                               ; preds = %while.body.i700.i
  %sub117.i = add i32 %uiRet.05.i695.i, -3, !dbg !1020
  %cmp118.i = icmp sgt i32 %sub117.i, 0, !dbg !1020
  br i1 %cmp118.i, label %while.body.i709.i, label %cond.end128.i, !dbg !1020

while.body.i709.i:                                ; preds = %CeilLog2.exit702.i, %while.body.i709.i
  %uiRet.05.i704.i = phi i32 [ %inc.i707.i, %while.body.i709.i ], [ 0, %CeilLog2.exit702.i ]
  %uiTmp.04.i705.i = phi i32 [ %shr.i706.i, %while.body.i709.i ], [ %sub.i694.i, %CeilLog2.exit702.i ]
  %shr.i706.i = lshr i32 %uiTmp.04.i705.i, 1, !dbg !1027
  call void @llvm.dbg.value(metadata !{i32 %shr.i706.i}, i64 0, metadata !1024) #4, !dbg !1027
  %inc.i707.i = add i32 %uiRet.05.i704.i, 1, !dbg !1028
  call void @llvm.dbg.value(metadata !{i32 %inc.i707.i}, i64 0, metadata !1025) #4, !dbg !1028
  %cmp.i708.i = icmp eq i32 %shr.i706.i, 0, !dbg !1029
  br i1 %cmp.i708.i, label %CeilLog2.exit711.i, label %while.body.i709.i, !dbg !1029

CeilLog2.exit711.i:                               ; preds = %while.body.i709.i
  %sub126.i = add i32 %uiRet.05.i704.i, -3, !dbg !1020
  br label %cond.end128.i, !dbg !1020

cond.end128.i:                                    ; preds = %CeilLog2.exit711.i, %CeilLog2.exit702.i
  %cond129.i = phi i32 [ %sub126.i, %CeilLog2.exit711.i ], [ 0, %CeilLog2.exit702.i ], !dbg !1020
  store i32 %cond129.i, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !dbg !1020, !tbaa !848
  %successive_Bframe130.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 34, !dbg !1030
  %60 = load i32* %successive_Bframe130.i, align 4, !dbg !1030, !tbaa !848
  %61 = load i32* %jumpd.i, align 4, !dbg !1030, !tbaa !848
  %cmp132.i = icmp sgt i32 %60, %61, !dbg !1030
  br i1 %cmp132.i, label %if.then133.i, label %if.end136.i, !dbg !1030

if.then133.i:                                     ; preds = %cond.end128.i
  %call135.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([66 x i8]* @.str167, i64 0, i64 0), i32 %60) #12, !dbg !1031
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #12, !dbg !1033
  %.pre735.i = load %struct.InputParameters** @input, align 8, !dbg !1034, !tbaa !833
  %successive_Bframe137.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre735.i, i64 0, i32 34
  %.pre736.i = load i32* %successive_Bframe137.phi.trans.insert.i, align 4, !dbg !1034, !tbaa !848
  br label %if.end136.i, !dbg !1035

if.end136.i:                                      ; preds = %if.then133.i, %cond.end128.i
  %62 = phi i32 [ %.pre736.i, %if.then133.i ], [ %60, %cond.end128.i ]
  %63 = phi %struct.InputParameters* [ %.pre735.i, %if.then133.i ], [ %52, %cond.end128.i ]
  %tobool138.i = icmp eq i32 %62, 0, !dbg !1034
  br i1 %tobool138.i, label %if.end146.i, label %land.lhs.true.i, !dbg !1034

land.lhs.true.i:                                  ; preds = %if.end136.i
  %direct_spatial_mv_pred_flag.i = getelementptr inbounds %struct.InputParameters* %63, i64 0, i32 37, !dbg !1034
  %64 = load i32* %direct_spatial_mv_pred_flag.i, align 4, !dbg !1034, !tbaa !848
  %switch.i = icmp ult i32 %64, 2, !dbg !1034
  br i1 %switch.i, label %if.end146.i, label %if.then143.i, !dbg !1034

if.then143.i:                                     ; preds = %land.lhs.true.i
  %call145.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([56 x i8]* @.str168, i64 0, i64 0), i32 %64) #12, !dbg !1036
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #12, !dbg !1038
  %.pre737.i = load %struct.InputParameters** @input, align 8, !dbg !1039, !tbaa !833
  br label %if.end146.i, !dbg !1040

if.end146.i:                                      ; preds = %if.then143.i, %land.lhs.true.i, %if.end136.i
  %65 = phi %struct.InputParameters* [ %63, %land.lhs.true.i ], [ %63, %if.end136.i ], [ %.pre737.i, %if.then143.i ]
  %PicInterlace.i = getelementptr inbounds %struct.InputParameters* %65, i64 0, i32 91, !dbg !1039
  %66 = load i32* %PicInterlace.i, align 4, !dbg !1039, !tbaa !848
  %cmp147.i = icmp sgt i32 %66, 0, !dbg !1039
  br i1 %cmp147.i, label %if.then149.i, label %lor.lhs.false.i, !dbg !1039

lor.lhs.false.i:                                  ; preds = %if.end146.i
  %MbInterlace.i = getelementptr inbounds %struct.InputParameters* %65, i64 0, i32 92, !dbg !1039
  %67 = load i32* %MbInterlace.i, align 4, !dbg !1039, !tbaa !848
  %cmp148.i = icmp sgt i32 %67, 0, !dbg !1039
  br i1 %cmp148.i, label %if.then149.i, label %if.end167.i, !dbg !1039

if.then149.i:                                     ; preds = %lor.lhs.false.i, %if.end146.i
  %directInferenceFlag.i = getelementptr inbounds %struct.InputParameters* %65, i64 0, i32 38, !dbg !1041
  %68 = load i32* %directInferenceFlag.i, align 4, !dbg !1041, !tbaa !848
  %cmp150.i = icmp eq i32 %68, 0, !dbg !1041
  br i1 %cmp150.i, label %if.then151.i, label %if.end155.i, !dbg !1041

if.then151.i:                                     ; preds = %if.then149.i
  %call152.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str169, i64 0, i64 0)) #12, !dbg !1043
  %.pre738.i = load %struct.InputParameters** @input, align 8, !dbg !1044, !tbaa !833
  %PicInterlace156.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre738.i, i64 0, i32 91
  %.pre739.pre.i = load i32* %PicInterlace156.phi.trans.insert.phi.trans.insert.i, align 4, !dbg !1045, !tbaa !848
  br label %if.end155.i, !dbg !1043

if.end155.i:                                      ; preds = %if.then151.i, %if.then149.i
  %.pre739.i = phi i32 [ %.pre739.pre.i, %if.then151.i ], [ %66, %if.then149.i ]
  %69 = phi %struct.InputParameters* [ %.pre738.i, %if.then151.i ], [ %65, %if.then149.i ]
  %directInferenceFlag154.i = getelementptr inbounds %struct.InputParameters* %69, i64 0, i32 38, !dbg !1044
  store i32 1, i32* %directInferenceFlag154.i, align 4, !dbg !1044, !tbaa !848
  %cmp157.i = icmp sgt i32 %.pre739.i, 0, !dbg !1045
  br i1 %cmp157.i, label %if.then158.i, label %if.end167.i, !dbg !1045

if.then158.i:                                     ; preds = %if.end155.i
  %IntraBottom.i = getelementptr inbounds %struct.InputParameters* %69, i64 0, i32 93, !dbg !1046
  %70 = load i32* %IntraBottom.i, align 4, !dbg !1046, !tbaa !848
  %switch677.i = icmp ult i32 %70, 2, !dbg !1046
  br i1 %switch677.i, label %if.end167.i, label %if.then163.i, !dbg !1046

if.then163.i:                                     ; preds = %if.then158.i
  %call165.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([67 x i8]* @.str170, i64 0, i64 0), i32 %70) #12, !dbg !1048
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #12, !dbg !1050
  %.pre740.i = load %struct.InputParameters** @input, align 8, !dbg !1051, !tbaa !833
  br label %if.end167.i, !dbg !1052

if.end167.i:                                      ; preds = %if.then163.i, %if.then158.i, %if.end155.i, %lor.lhs.false.i
  %71 = phi %struct.InputParameters* [ %69, %if.then158.i ], [ %.pre740.i, %if.then163.i ], [ %69, %if.end155.i ], [ %65, %lor.lhs.false.i ]
  %symbol_mode.i = getelementptr inbounds %struct.InputParameters* %71, i64 0, i32 59, !dbg !1051
  %72 = load i32* %symbol_mode.i, align 4, !dbg !1051, !tbaa !848
  %switch678.i = icmp ult i32 %72, 2, !dbg !1051
  br i1 %switch678.i, label %if.end175.i, label %if.then172.i, !dbg !1051

if.then172.i:                                     ; preds = %if.end167.i
  %call174.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([50 x i8]* @.str171, i64 0, i64 0), i32 %72) #12, !dbg !1053
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #12, !dbg !1055
  %.pre741.i = load %struct.InputParameters** @input, align 8, !dbg !1056, !tbaa !833
  br label %if.end175.i, !dbg !1057

if.end175.i:                                      ; preds = %if.then172.i, %if.end167.i
  %73 = phi %struct.InputParameters* [ %71, %if.end167.i ], [ %.pre741.i, %if.then172.i ]
  %arraydecay.i = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 26, i64 0, !dbg !1056
  %call176.i = call i32 (i8*, i32, ...)* @open(i8* %arraydecay.i, i32 0) #12, !dbg !1056
  store i32 %call176.i, i32* @p_in, align 4, !dbg !1056, !tbaa !848
  %cmp177.i = icmp eq i32 %call176.i, -1, !dbg !1056
  br i1 %cmp177.i, label %if.then178.i, label %if.end182.i, !dbg !1056

if.then178.i:                                     ; preds = %if.end175.i
  %74 = load %struct.InputParameters** @input, align 8, !dbg !1058, !tbaa !833
  %arraydecay180.i = getelementptr inbounds %struct.InputParameters* %74, i64 0, i32 26, i64 0, !dbg !1058
  %call181.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([29 x i8]* @.str172, i64 0, i64 0), i8* %arraydecay180.i) #12, !dbg !1058
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1060
  br label %if.end182.i, !dbg !1061

if.end182.i:                                      ; preds = %if.then178.i, %if.end175.i
  %75 = load %struct.InputParameters** @input, align 8, !dbg !1062, !tbaa !833
  %arraydecay183.i = getelementptr inbounds %struct.InputParameters* %75, i64 0, i32 28, i64 0, !dbg !1062
  %strlenfirst.i = load i8* %arraydecay183.i, align 1, !dbg !1062
  %cmp185.i = icmp eq i8 %strlenfirst.i, 0, !dbg !1062
  br i1 %cmp185.i, label %if.end195.i, label %land.lhs.true186.i, !dbg !1062

land.lhs.true186.i:                               ; preds = %if.end182.i
  %call189.i = call i32 (i8*, i32, ...)* @open(i8* %arraydecay183.i, i32 577, i32 384) #12, !dbg !1062
  store i32 %call189.i, i32* @p_dec, align 4, !dbg !1062, !tbaa !848
  %cmp190.i = icmp eq i32 %call189.i, -1, !dbg !1062
  br i1 %cmp190.i, label %if.then191.i, label %if.end195.i, !dbg !1062

if.then191.i:                                     ; preds = %land.lhs.true186.i
  %76 = load %struct.InputParameters** @input, align 8, !dbg !1063, !tbaa !833
  %arraydecay193.i = getelementptr inbounds %struct.InputParameters* %76, i64 0, i32 28, i64 0, !dbg !1063
  %call194.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([19 x i8]* @.str173, i64 0, i64 0), i8* %arraydecay193.i) #12, !dbg !1063
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1065
  br label %if.end195.i, !dbg !1066

if.end195.i:                                      ; preds = %land.lhs.true186.i, %if.then191.i, %if.end182.i
  %77 = load %struct.InputParameters** @input, align 8, !dbg !1067, !tbaa !833
  %arraydecay196.i = getelementptr inbounds %struct.InputParameters* %77, i64 0, i32 29, i64 0, !dbg !1067
  %strlenfirst671.i = load i8* %arraydecay196.i, align 1, !dbg !1067
  %cmp198.i = icmp eq i8 %strlenfirst671.i, 0, !dbg !1067
  br i1 %cmp198.i, label %if.end208.i, label %land.lhs.true199.i, !dbg !1067

land.lhs.true199.i:                               ; preds = %if.end195.i
  %call202.i = call %struct._IO_FILE* @fopen(i8* %arraydecay196.i, i8* getelementptr inbounds ([2 x i8]* @.str174, i64 0, i64 0)) #12, !dbg !1067
  store %struct._IO_FILE* %call202.i, %struct._IO_FILE** @p_trace, align 8, !dbg !1067, !tbaa !833
  %cmp203.i = icmp eq %struct._IO_FILE* %call202.i, null, !dbg !1067
  br i1 %cmp203.i, label %if.then204.i, label %if.end208.i, !dbg !1067

if.then204.i:                                     ; preds = %land.lhs.true199.i
  %78 = load %struct.InputParameters** @input, align 8, !dbg !1068, !tbaa !833
  %arraydecay206.i = getelementptr inbounds %struct.InputParameters* %78, i64 0, i32 29, i64 0, !dbg !1068
  %call207.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([19 x i8]* @.str173, i64 0, i64 0), i8* %arraydecay206.i) #12, !dbg !1068
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1070
  br label %if.end208.i, !dbg !1071

if.end208.i:                                      ; preds = %land.lhs.true199.i, %if.then204.i, %if.end195.i
  %79 = load %struct.InputParameters** @input, align 8, !dbg !1072, !tbaa !833
  %img_width.i = getelementptr inbounds %struct.InputParameters* %79, i64 0, i32 16, !dbg !1072
  %80 = load i32* %img_width.i, align 4, !dbg !1072, !tbaa !848
  %rem.i = srem i32 %80, 16, !dbg !1072
  %cmp209.i = icmp eq i32 %rem.i, 0, !dbg !1072
  br i1 %cmp209.i, label %if.else214.i, label %if.then210.i, !dbg !1072

if.then210.i:                                     ; preds = %if.end208.i
  %sub213.i = sub nsw i32 16, %rem.i, !dbg !1073
  %81 = load %struct.ImageParameters** @img, align 8, !dbg !1073, !tbaa !833
  %auto_crop_right.i = getelementptr inbounds %struct.ImageParameters* %81, i64 0, i32 165, !dbg !1073
  store i32 %sub213.i, i32* %auto_crop_right.i, align 4, !dbg !1073, !tbaa !848
  br label %if.end216.i, !dbg !1075

if.else214.i:                                     ; preds = %if.end208.i
  %82 = load %struct.ImageParameters** @img, align 8, !dbg !1076, !tbaa !833
  %auto_crop_right215.i = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 165, !dbg !1076
  store i32 0, i32* %auto_crop_right215.i, align 4, !dbg !1076, !tbaa !848
  br label %if.end216.i

if.end216.i:                                      ; preds = %if.else214.i, %if.then210.i
  %83 = phi %struct.ImageParameters* [ %82, %if.else214.i ], [ %81, %if.then210.i ]
  %PicInterlace217.i = getelementptr inbounds %struct.InputParameters* %79, i64 0, i32 91, !dbg !1078
  %84 = load i32* %PicInterlace217.i, align 4, !dbg !1078, !tbaa !848
  %tobool218.i = icmp eq i32 %84, 0, !dbg !1078
  br i1 %tobool218.i, label %lor.lhs.false219.i, label %if.then222.i, !dbg !1078

lor.lhs.false219.i:                               ; preds = %if.end216.i
  %MbInterlace220.i = getelementptr inbounds %struct.InputParameters* %79, i64 0, i32 92, !dbg !1078
  %85 = load i32* %MbInterlace220.i, align 4, !dbg !1078, !tbaa !848
  %tobool221.i = icmp eq i32 %85, 0, !dbg !1078
  br i1 %tobool221.i, label %if.else237.i, label %if.then222.i, !dbg !1078

if.then222.i:                                     ; preds = %lor.lhs.false219.i, %if.end216.i
  %img_height.i = getelementptr inbounds %struct.InputParameters* %79, i64 0, i32 17, !dbg !1079
  %86 = load i32* %img_height.i, align 4, !dbg !1079, !tbaa !848
  %rem223673.i = and i32 %86, 1, !dbg !1079
  %cmp224.i = icmp eq i32 %rem223673.i, 0, !dbg !1079
  br i1 %cmp224.i, label %if.end226.i, label %if.then225.i, !dbg !1079

if.then225.i:                                     ; preds = %if.then222.i
  call void @error(i8* getelementptr inbounds ([52 x i8]* @.str175, i64 0, i64 0), i32 500) #12, !dbg !1081
  %.pre772.i = load %struct.InputParameters** @input, align 8, !dbg !1083, !tbaa !833
  %img_height227.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre772.i, i64 0, i32 17
  %.pre773.i = load i32* %img_height227.phi.trans.insert.i, align 4, !dbg !1083, !tbaa !848
  br label %if.end226.i, !dbg !1084

if.end226.i:                                      ; preds = %if.then225.i, %if.then222.i
  %87 = phi i32 [ %86, %if.then222.i ], [ %.pre773.i, %if.then225.i ]
  %88 = phi %struct.InputParameters* [ %79, %if.then222.i ], [ %.pre772.i, %if.then225.i ]
  %rem228.i = srem i32 %87, 32, !dbg !1083
  %cmp229.i = icmp eq i32 %rem228.i, 0, !dbg !1083
  br i1 %cmp229.i, label %if.else234.i, label %if.then230.i, !dbg !1083

if.then230.i:                                     ; preds = %if.end226.i
  %sub233.i = sub nsw i32 32, %rem228.i, !dbg !1085
  %89 = load %struct.ImageParameters** @img, align 8, !dbg !1085, !tbaa !833
  %auto_crop_bottom.i = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 166, !dbg !1085
  store i32 %sub233.i, i32* %auto_crop_bottom.i, align 4, !dbg !1085, !tbaa !848
  br label %if.end249.i, !dbg !1087

if.else234.i:                                     ; preds = %if.end226.i
  %90 = load %struct.ImageParameters** @img, align 8, !dbg !1088, !tbaa !833
  %auto_crop_bottom235.i = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 166, !dbg !1088
  store i32 0, i32* %auto_crop_bottom235.i, align 4, !dbg !1088, !tbaa !848
  br label %lor.lhs.false252.i

if.else237.i:                                     ; preds = %lor.lhs.false219.i
  %img_height238.i = getelementptr inbounds %struct.InputParameters* %79, i64 0, i32 17, !dbg !1090
  %91 = load i32* %img_height238.i, align 4, !dbg !1090, !tbaa !848
  %rem239.i = srem i32 %91, 16, !dbg !1090
  %cmp240.i = icmp eq i32 %rem239.i, 0, !dbg !1090
  br i1 %cmp240.i, label %if.else246.i, label %if.then241.i, !dbg !1090

if.then241.i:                                     ; preds = %if.else237.i
  %sub244.i = sub nsw i32 16, %rem239.i, !dbg !1092
  %auto_crop_bottom245.i = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 166, !dbg !1092
  store i32 %sub244.i, i32* %auto_crop_bottom245.i, align 4, !dbg !1092, !tbaa !848
  br label %if.end249.i, !dbg !1094

if.else246.i:                                     ; preds = %if.else237.i
  %auto_crop_bottom247.i = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 166, !dbg !1095
  store i32 0, i32* %auto_crop_bottom247.i, align 4, !dbg !1095, !tbaa !848
  br label %lor.lhs.false252.i

if.end249.i:                                      ; preds = %if.then241.i, %if.then230.i
  %92 = phi %struct.InputParameters* [ %79, %if.then241.i ], [ %88, %if.then230.i ]
  %93 = phi i32 [ %sub244.i, %if.then241.i ], [ %sub233.i, %if.then230.i ]
  %94 = phi %struct.ImageParameters* [ %83, %if.then241.i ], [ %89, %if.then230.i ]
  %tobool251.i = icmp eq i32 %93, 0, !dbg !1097
  br i1 %tobool251.i, label %lor.lhs.false252.i, label %if.end249.if.then255_crit_edge.i, !dbg !1097

if.end249.if.then255_crit_edge.i:                 ; preds = %if.end249.i
  %auto_crop_right257.phi.trans.insert.i = getelementptr inbounds %struct.ImageParameters* %94, i64 0, i32 165
  %.pre777.i = load i32* %auto_crop_right257.phi.trans.insert.i, align 4, !dbg !1098, !tbaa !848
  br label %if.then255.i, !dbg !1097

lor.lhs.false252.i:                               ; preds = %if.end249.i, %if.else246.i, %if.else234.i
  %95 = phi %struct.ImageParameters* [ %94, %if.end249.i ], [ %83, %if.else246.i ], [ %90, %if.else234.i ]
  %96 = phi %struct.InputParameters* [ %92, %if.end249.i ], [ %79, %if.else246.i ], [ %88, %if.else234.i ]
  %auto_crop_right253.i = getelementptr inbounds %struct.ImageParameters* %95, i64 0, i32 165, !dbg !1097
  %97 = load i32* %auto_crop_right253.i, align 4, !dbg !1097, !tbaa !848
  %tobool254.i = icmp eq i32 %97, 0, !dbg !1097
  br i1 %tobool254.i, label %if.end263.i, label %if.then255.i, !dbg !1097

if.then255.i:                                     ; preds = %lor.lhs.false252.i, %if.end249.if.then255_crit_edge.i
  %98 = phi i32 [ %93, %if.end249.if.then255_crit_edge.i ], [ 0, %lor.lhs.false252.i ]
  %99 = phi %struct.InputParameters* [ %92, %if.end249.if.then255_crit_edge.i ], [ %96, %lor.lhs.false252.i ]
  %100 = phi i32 [ %.pre777.i, %if.end249.if.then255_crit_edge.i ], [ %97, %lor.lhs.false252.i ]
  %img_width256.i = getelementptr inbounds %struct.InputParameters* %99, i64 0, i32 16, !dbg !1098
  %101 = load i32* %img_width256.i, align 4, !dbg !1098, !tbaa !848
  %add258.i = add nsw i32 %101, %100, !dbg !1098
  %img_height259.i = getelementptr inbounds %struct.InputParameters* %99, i64 0, i32 17, !dbg !1098
  %102 = load i32* %img_height259.i, align 4, !dbg !1098, !tbaa !848
  %add261.i = add nsw i32 %102, %98, !dbg !1098
  %call262.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([66 x i8]* @.str176, i64 0, i64 0), i32 %add258.i, i32 %add261.i) #12, !dbg !1098
  %.pre742.i = load %struct.InputParameters** @input, align 8, !dbg !1100, !tbaa !833
  br label %if.end263.i, !dbg !1101

if.end263.i:                                      ; preds = %if.then255.i, %lor.lhs.false252.i
  %103 = phi %struct.InputParameters* [ %96, %lor.lhs.false252.i ], [ %.pre742.i, %if.then255.i ]
  %num_slice_groups_minus1.i = getelementptr inbounds %struct.InputParameters* %103, i64 0, i32 110, !dbg !1100
  %104 = load i32* %num_slice_groups_minus1.i, align 4, !dbg !1100, !tbaa !848
  %cmp264.i = icmp eq i32 %104, 0, !dbg !1100
  br i1 %cmp264.i, label %if.end404.i, label %land.lhs.true265.i, !dbg !1100

land.lhs.true265.i:                               ; preds = %if.end263.i
  %slice_group_map_type.i = getelementptr inbounds %struct.InputParameters* %103, i64 0, i32 111, !dbg !1100
  %105 = load i32* %slice_group_map_type.i, align 4, !dbg !1100, !tbaa !848
  switch i32 %105, label %if.end404.i [
    i32 0, label %if.then273.i
    i32 2, label %if.then273.i
    i32 6, label %if.then273.i
  ], !dbg !1100

if.then273.i:                                     ; preds = %land.lhs.true265.i, %land.lhs.true265.i, %land.lhs.true265.i
  %arraydecay274.i = getelementptr inbounds %struct.InputParameters* %103, i64 0, i32 109, i64 0, !dbg !1102
  %strlenfirst672.i = load i8* %arraydecay274.i, align 1, !dbg !1102
  %cmp276.i = icmp eq i8 %strlenfirst672.i, 0, !dbg !1102
  br i1 %cmp276.i, label %if.else286.i, label %land.lhs.true277.i, !dbg !1102

land.lhs.true277.i:                               ; preds = %if.then273.i
  %call280.i = call %struct._IO_FILE* @fopen(i8* %arraydecay274.i, i8* getelementptr inbounds ([2 x i8]* @.str162, i64 0, i64 0)) #12, !dbg !1102
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call280.i}, i64 0, metadata !926) #4, !dbg !1102
  %cmp281.i = icmp eq %struct._IO_FILE* %call280.i, null, !dbg !1102
  %106 = load %struct.InputParameters** @input, align 8, !dbg !1103, !tbaa !833
  br i1 %cmp281.i, label %if.then282.i, label %land.lhs.true277.if.else286_crit_edge.i, !dbg !1102

land.lhs.true277.if.else286_crit_edge.i:          ; preds = %land.lhs.true277.i
  %slice_group_map_type287.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %106, i64 0, i32 111
  %.pre776.i = load i32* %slice_group_map_type287.phi.trans.insert.i, align 4, !dbg !1105, !tbaa !848
  br label %if.else286.i, !dbg !1102

if.then282.i:                                     ; preds = %land.lhs.true277.i
  %arraydecay284.i = getelementptr inbounds %struct.InputParameters* %106, i64 0, i32 109, i64 0, !dbg !1103
  %call285.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([19 x i8]* @.str173, i64 0, i64 0), i8* %arraydecay284.i) #12, !dbg !1103
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1106
  br label %if.end404.i, !dbg !1107

if.else286.i:                                     ; preds = %land.lhs.true277.if.else286_crit_edge.i, %if.then273.i
  %107 = phi i32 [ %.pre776.i, %land.lhs.true277.if.else286_crit_edge.i ], [ %105, %if.then273.i ]
  %108 = phi %struct.InputParameters* [ %106, %land.lhs.true277.if.else286_crit_edge.i ], [ %103, %if.then273.i ]
  %sgfile.0.i = phi %struct._IO_FILE* [ %call280.i, %land.lhs.true277.if.else286_crit_edge.i ], [ null, %if.then273.i ]
  switch i32 %107, label %if.end401.i [
    i32 0, label %if.then289.i
    i32 2, label %if.then309.i
    i32 6, label %if.then350.i
  ], !dbg !1105

if.then289.i:                                     ; preds = %if.else286.i
  %num_slice_groups_minus1290.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 110, !dbg !1108
  %109 = load i32* %num_slice_groups_minus1290.i, align 4, !dbg !1108, !tbaa !848
  %add291.i = add nsw i32 %109, 1, !dbg !1108
  %conv.i196 = sext i32 %add291.i to i64, !dbg !1108
  %mul292.i = shl nsw i64 %conv.i196, 2, !dbg !1108
  %call293.i = call noalias i8* @malloc(i64 %mul292.i) #12, !dbg !1108
  %110 = bitcast i8* %call293.i to i32*, !dbg !1108
  %run_length_minus1.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 115, !dbg !1108
  store i32* %110, i32** %run_length_minus1.i, align 8, !dbg !1108, !tbaa !833
  %111 = load %struct.InputParameters** @input, align 8, !dbg !1110, !tbaa !833
  %run_length_minus1294.i = getelementptr inbounds %struct.InputParameters* %111, i64 0, i32 115, !dbg !1110
  %112 = load i32** %run_length_minus1294.i, align 8, !dbg !1110, !tbaa !833
  %cmp295.i = icmp eq i32* %112, null, !dbg !1110
  br i1 %cmp295.i, label %if.then297.i, label %for.cond.preheader.i, !dbg !1110

if.then297.i:                                     ; preds = %if.then289.i
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8]* @.str177, i64 0, i64 0)) #12, !dbg !1111
  %.pre769.i = load %struct.InputParameters** @input, align 8, !dbg !1112, !tbaa !833
  br label %for.cond.preheader.i, !dbg !1111

for.cond.preheader.i:                             ; preds = %if.then297.i, %if.then289.i
  %113 = phi %struct.InputParameters* [ %.pre769.i, %if.then297.i ], [ %111, %if.then289.i ]
  %num_slice_groups_minus1299720.i = getelementptr inbounds %struct.InputParameters* %113, i64 0, i32 110, !dbg !1112
  %114 = load i32* %num_slice_groups_minus1299720.i, align 4, !dbg !1112, !tbaa !848
  %cmp300721.i = icmp slt i32 %114, 0, !dbg !1112
  br i1 %cmp300721.i, label %if.end401.i, label %for.body.i, !dbg !1112

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.body.i
  %indvars.iv.i197 = phi i64 [ %indvars.iv.next.i198, %for.body.i ], [ 0, %for.cond.preheader.i ]
  %115 = phi %struct.InputParameters* [ %117, %for.body.i ], [ %113, %for.cond.preheader.i ]
  %run_length_minus1302.i = getelementptr inbounds %struct.InputParameters* %115, i64 0, i32 115, !dbg !1114
  %116 = load i32** %run_length_minus1302.i, align 8, !dbg !1114, !tbaa !833
  %add.ptr.i = getelementptr inbounds i32* %116, i64 %indvars.iv.i197, !dbg !1114
  %call303.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([3 x i8]* @.str178, i64 0, i64 0), i32* %add.ptr.i) #12, !dbg !1114
  %call304.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([7 x i8]* @.str179, i64 0, i64 0)) #12, !dbg !1116
  %indvars.iv.next.i198 = add i64 %indvars.iv.i197, 1, !dbg !1112
  %117 = load %struct.InputParameters** @input, align 8, !dbg !1112, !tbaa !833
  %num_slice_groups_minus1299.i = getelementptr inbounds %struct.InputParameters* %117, i64 0, i32 110, !dbg !1112
  %118 = load i32* %num_slice_groups_minus1299.i, align 4, !dbg !1112, !tbaa !848
  %119 = trunc i64 %indvars.iv.i197 to i32, !dbg !1112
  %cmp300.i = icmp slt i32 %119, %118, !dbg !1112
  br i1 %cmp300.i, label %for.body.i, label %if.end401.i, !dbg !1112

if.then309.i:                                     ; preds = %if.else286.i
  %num_slice_groups_minus1310.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 110, !dbg !1117
  %120 = load i32* %num_slice_groups_minus1310.i, align 4, !dbg !1117, !tbaa !848
  %conv311.i = sext i32 %120 to i64, !dbg !1117
  %mul312.i = shl nsw i64 %conv311.i, 2, !dbg !1117
  %call313.i = call noalias i8* @malloc(i64 %mul312.i) #12, !dbg !1117
  %121 = bitcast i8* %call313.i to i32*, !dbg !1117
  %top_left.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 112, !dbg !1117
  store i32* %121, i32** %top_left.i, align 8, !dbg !1117, !tbaa !833
  %122 = load %struct.InputParameters** @input, align 8, !dbg !1119, !tbaa !833
  %num_slice_groups_minus1314.i = getelementptr inbounds %struct.InputParameters* %122, i64 0, i32 110, !dbg !1119
  %123 = load i32* %num_slice_groups_minus1314.i, align 4, !dbg !1119, !tbaa !848
  %conv315.i = sext i32 %123 to i64, !dbg !1119
  %mul316.i = shl nsw i64 %conv315.i, 2, !dbg !1119
  %call317.i = call noalias i8* @malloc(i64 %mul316.i) #12, !dbg !1119
  %124 = bitcast i8* %call317.i to i32*, !dbg !1119
  %bottom_right.i = getelementptr inbounds %struct.InputParameters* %122, i64 0, i32 113, !dbg !1119
  store i32* %124, i32** %bottom_right.i, align 8, !dbg !1119, !tbaa !833
  %125 = load %struct.InputParameters** @input, align 8, !dbg !1120, !tbaa !833
  %top_left318.i = getelementptr inbounds %struct.InputParameters* %125, i64 0, i32 112, !dbg !1120
  %126 = load i32** %top_left318.i, align 8, !dbg !1120, !tbaa !833
  %cmp319.i = icmp eq i32* %126, null, !dbg !1120
  br i1 %cmp319.i, label %if.then321.i, label %if.end322.i, !dbg !1120

if.then321.i:                                     ; preds = %if.then309.i
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str180, i64 0, i64 0)) #12, !dbg !1121
  %.pre770.i = load %struct.InputParameters** @input, align 8, !dbg !1122, !tbaa !833
  br label %if.end322.i, !dbg !1121

if.end322.i:                                      ; preds = %if.then321.i, %if.then309.i
  %127 = phi %struct.InputParameters* [ %.pre770.i, %if.then321.i ], [ %125, %if.then309.i ]
  %bottom_right323.i = getelementptr inbounds %struct.InputParameters* %127, i64 0, i32 113, !dbg !1122
  %128 = load i32** %bottom_right323.i, align 8, !dbg !1122, !tbaa !833
  %cmp324.i = icmp eq i32* %128, null, !dbg !1122
  br i1 %cmp324.i, label %if.then326.i, label %for.cond328.preheader.i, !dbg !1122

if.then326.i:                                     ; preds = %if.end322.i
  call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8]* @.str181, i64 0, i64 0)) #12, !dbg !1123
  %.pre771.i = load %struct.InputParameters** @input, align 8, !dbg !1124, !tbaa !833
  br label %for.cond328.preheader.i, !dbg !1123

for.cond328.preheader.i:                          ; preds = %if.then326.i, %if.end322.i
  %129 = phi %struct.InputParameters* [ %.pre771.i, %if.then326.i ], [ %127, %if.end322.i ]
  %num_slice_groups_minus1329724.i = getelementptr inbounds %struct.InputParameters* %129, i64 0, i32 110, !dbg !1124
  %130 = load i32* %num_slice_groups_minus1329724.i, align 4, !dbg !1124, !tbaa !848
  %cmp330725.i = icmp sgt i32 %130, 0, !dbg !1124
  br i1 %cmp330725.i, label %for.body332.i, label %if.end401.i, !dbg !1124

for.body332.i:                                    ; preds = %for.cond328.preheader.i, %for.body332.i
  %indvars.iv731.i = phi i64 [ %indvars.iv.next732.i, %for.body332.i ], [ 0, %for.cond328.preheader.i ]
  %131 = phi %struct.InputParameters* [ %135, %for.body332.i ], [ %129, %for.cond328.preheader.i ]
  %top_left333.i = getelementptr inbounds %struct.InputParameters* %131, i64 0, i32 112, !dbg !1126
  %132 = load i32** %top_left333.i, align 8, !dbg !1126, !tbaa !833
  %add.ptr335.i = getelementptr inbounds i32* %132, i64 %indvars.iv731.i, !dbg !1126
  %call336.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([3 x i8]* @.str178, i64 0, i64 0), i32* %add.ptr335.i) #12, !dbg !1126
  %call337.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([7 x i8]* @.str179, i64 0, i64 0)) #12, !dbg !1128
  %133 = load %struct.InputParameters** @input, align 8, !dbg !1129, !tbaa !833
  %bottom_right338.i = getelementptr inbounds %struct.InputParameters* %133, i64 0, i32 113, !dbg !1129
  %134 = load i32** %bottom_right338.i, align 8, !dbg !1129, !tbaa !833
  %add.ptr340.i = getelementptr inbounds i32* %134, i64 %indvars.iv731.i, !dbg !1129
  %call341.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([3 x i8]* @.str178, i64 0, i64 0), i32* %add.ptr340.i) #12, !dbg !1129
  %call342.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([7 x i8]* @.str179, i64 0, i64 0)) #12, !dbg !1130
  %indvars.iv.next732.i = add i64 %indvars.iv731.i, 1, !dbg !1124
  %135 = load %struct.InputParameters** @input, align 8, !dbg !1124, !tbaa !833
  %num_slice_groups_minus1329.i = getelementptr inbounds %struct.InputParameters* %135, i64 0, i32 110, !dbg !1124
  %136 = load i32* %num_slice_groups_minus1329.i, align 4, !dbg !1124, !tbaa !848
  %137 = trunc i64 %indvars.iv.next732.i to i32, !dbg !1124
  %cmp330.i = icmp slt i32 %137, %136, !dbg !1124
  br i1 %cmp330.i, label %for.body332.i, label %if.end401.i, !dbg !1124

if.then350.i:                                     ; preds = %if.else286.i
  call void @llvm.dbg.declare(metadata !{i32* %tmp.i}, metadata !132) #4, !dbg !1131
  %PicInterlace351.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 91, !dbg !1132
  %138 = load i32* %PicInterlace351.i, align 4, !dbg !1132, !tbaa !848
  %tobool352.i = icmp eq i32 %138, 0, !dbg !1132
  br i1 %tobool352.i, label %lor.rhs.i, label %lor.end.i, !dbg !1132

lor.rhs.i:                                        ; preds = %if.then350.i
  %MbInterlace353.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 92, !dbg !1132
  %139 = load i32* %MbInterlace353.i, align 4, !dbg !1132, !tbaa !848
  %phitmp.i = icmp eq i32 %139, 0, !dbg !1132
  br label %lor.end.i, !dbg !1132

lor.end.i:                                        ; preds = %if.then350.i, %lor.rhs.i
  %140 = phi i1 [ %phitmp.i, %lor.rhs.i ], [ false, %if.then350.i ]
  %lnot.ext.i = zext i1 %140 to i32, !dbg !1132
  call void @llvm.dbg.value(metadata !{i32 %lnot.ext.i}, i64 0, metadata !1133) #4, !dbg !1132
  %img_width355.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 16, !dbg !1134
  %141 = load i32* %img_width355.i, align 4, !dbg !1134, !tbaa !848
  %142 = load %struct.ImageParameters** @img, align 8, !dbg !1134, !tbaa !833
  %auto_crop_right356.i = getelementptr inbounds %struct.ImageParameters* %142, i64 0, i32 165, !dbg !1134
  %143 = load i32* %auto_crop_right356.i, align 4, !dbg !1134, !tbaa !848
  %add357.i = add nsw i32 %143, %141, !dbg !1134
  %div.i = sdiv i32 %add357.i, 16, !dbg !1134
  call void @llvm.dbg.value(metadata !{i32 %div.i}, i64 0, metadata !1135) #4, !dbg !1134
  %img_height358.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 17, !dbg !1136
  %144 = load i32* %img_height358.i, align 4, !dbg !1136, !tbaa !848
  %auto_crop_bottom359.i = getelementptr inbounds %struct.ImageParameters* %142, i64 0, i32 166, !dbg !1136
  %145 = load i32* %auto_crop_bottom359.i, align 4, !dbg !1136, !tbaa !848
  %add360.i = add nsw i32 %145, %144, !dbg !1136
  %div361.i = sdiv i32 %add360.i, 16, !dbg !1136
  call void @llvm.dbg.value(metadata !{i32 %div361.i}, i64 0, metadata !1137) #4, !dbg !1136
  %sub362.i = sub nsw i32 2, %lnot.ext.i, !dbg !1138
  %div363.i = sdiv i32 %div361.i, %sub362.i, !dbg !1138
  call void @llvm.dbg.value(metadata !{i32 %div363.i}, i64 0, metadata !1139) #4, !dbg !1138
  %conv364.i = sext i32 %div363.i to i64, !dbg !1140
  %conv366.i = sext i32 %div.i to i64, !dbg !1140
  %mul367.i = mul i64 %conv364.i, %conv366.i, !dbg !1140
  %call368.i = call noalias i8* @malloc(i64 %mul367.i) #12, !dbg !1140
  %slice_group_id.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 114, !dbg !1140
  store i8* %call368.i, i8** %slice_group_id.i, align 8, !dbg !1140, !tbaa !833
  %146 = load %struct.InputParameters** @input, align 8, !dbg !1141, !tbaa !833
  %slice_group_id369.i = getelementptr inbounds %struct.InputParameters* %146, i64 0, i32 114, !dbg !1141
  %147 = load i8** %slice_group_id369.i, align 8, !dbg !1141, !tbaa !833
  %cmp370.i = icmp eq i8* %147, null, !dbg !1141
  br i1 %cmp370.i, label %if.then372.i, label %for.cond374.preheader.i, !dbg !1141

if.then372.i:                                     ; preds = %lor.end.i
  call void @no_mem_exit(i8* getelementptr inbounds ([32 x i8]* @.str182, i64 0, i64 0)) #12, !dbg !1142
  br label %for.cond374.preheader.i, !dbg !1142

for.cond374.preheader.i:                          ; preds = %if.then372.i, %lor.end.i
  %mul375.i = mul i32 %div363.i, %div.i, !dbg !1143
  %cmp376728.i = icmp sgt i32 %mul375.i, 0, !dbg !1143
  br i1 %cmp376728.i, label %for.body378.i, label %if.end401.i, !dbg !1143

for.body378.i:                                    ; preds = %for.cond374.preheader.i, %if.end394.i
  %indvars.iv733.i = phi i64 [ %indvars.iv.next734.i, %if.end394.i ], [ 0, %for.cond374.preheader.i ]
  %call379.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([3 x i8]* @.str178, i64 0, i64 0), i32* %tmp.i) #12, !dbg !1145
  call void @llvm.dbg.value(metadata !{i32* %tmp.i}, i64 0, metadata !1147) #4, !dbg !1148
  call void @llvm.dbg.value(metadata !{i32* %tmp.i}, i64 0, metadata !132), !dbg !1148
  %148 = load i32* %tmp.i, align 4, !dbg !1148, !tbaa !848
  %conv380.i = trunc i32 %148 to i8, !dbg !1148
  %149 = load %struct.InputParameters** @input, align 8, !dbg !1148, !tbaa !833
  %slice_group_id381.i = getelementptr inbounds %struct.InputParameters* %149, i64 0, i32 114, !dbg !1148
  %150 = load i8** %slice_group_id381.i, align 8, !dbg !1148, !tbaa !833
  %arrayidx382.i = getelementptr inbounds i8* %150, i64 %indvars.iv733.i, !dbg !1148
  store i8 %conv380.i, i8* %arrayidx382.i, align 1, !dbg !1148, !tbaa !834
  %151 = load %struct.InputParameters** @input, align 8, !dbg !1149, !tbaa !833
  %slice_group_id383.i = getelementptr inbounds %struct.InputParameters* %151, i64 0, i32 114, !dbg !1149
  %152 = load i8** %slice_group_id383.i, align 8, !dbg !1149, !tbaa !833
  %add.ptr385.i = getelementptr inbounds i8* %152, i64 %indvars.iv733.i, !dbg !1149
  %153 = load i8* %add.ptr385.i, align 1, !dbg !1149, !tbaa !834
  %conv386.i = zext i8 %153 to i32, !dbg !1149
  %num_slice_groups_minus1387.i = getelementptr inbounds %struct.InputParameters* %151, i64 0, i32 110, !dbg !1149
  %154 = load i32* %num_slice_groups_minus1387.i, align 4, !dbg !1149, !tbaa !848
  %cmp388.i = icmp sgt i32 %conv386.i, %154, !dbg !1149
  br i1 %cmp388.i, label %if.then390.i, label %if.end394.i, !dbg !1149

if.then390.i:                                     ; preds = %for.body378.i
  %arraydecay392.i = getelementptr inbounds %struct.InputParameters* %151, i64 0, i32 109, i64 0, !dbg !1150
  %call393.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([48 x i8]* @.str183, i64 0, i64 0), i8* %arraydecay392.i) #12, !dbg !1150
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1152
  br label %if.end394.i, !dbg !1153

if.end394.i:                                      ; preds = %if.then390.i, %for.body378.i
  %call395.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([7 x i8]* @.str179, i64 0, i64 0)) #12, !dbg !1154
  %indvars.iv.next734.i = add i64 %indvars.iv733.i, 1, !dbg !1143
  %lftr.wideiv = trunc i64 %indvars.iv.next734.i to i32, !dbg !1143
  %exitcond = icmp eq i32 %lftr.wideiv, %mul375.i, !dbg !1143
  br i1 %exitcond, label %if.end401.i, label %for.body378.i, !dbg !1143

if.end401.i:                                      ; preds = %if.end394.i, %for.body332.i, %for.body.i, %for.cond374.preheader.i, %for.cond328.preheader.i, %for.cond.preheader.i, %if.else286.i
  %call402.i = call i32 @fclose(%struct._IO_FILE* %sgfile.0.i) #12, !dbg !1155
  br label %if.end404.i

if.end404.i:                                      ; preds = %if.end401.i, %if.then282.i, %land.lhs.true265.i, %if.end263.i
  %155 = load %struct.InputParameters** @input, align 8, !dbg !1156, !tbaa !833
  %PyramidRefReorder.i = getelementptr inbounds %struct.InputParameters* %155, i64 0, i32 57, !dbg !1156
  %156 = load i32* %PyramidRefReorder.i, align 4, !dbg !1156, !tbaa !848
  %tobool405.i = icmp eq i32 %156, 0, !dbg !1156
  br i1 %tobool405.i, label %if.end416.i, label %land.lhs.true406.i, !dbg !1156

land.lhs.true406.i:                               ; preds = %if.end404.i
  %PyramidCoding.i = getelementptr inbounds %struct.InputParameters* %155, i64 0, i32 55, !dbg !1156
  %157 = load i32* %PyramidCoding.i, align 4, !dbg !1156, !tbaa !848
  %tobool407.i = icmp eq i32 %157, 0, !dbg !1156
  br i1 %tobool407.i, label %if.end416.i, label %land.lhs.true408.i, !dbg !1156

land.lhs.true408.i:                               ; preds = %land.lhs.true406.i
  %PicInterlace409.i = getelementptr inbounds %struct.InputParameters* %155, i64 0, i32 91, !dbg !1156
  %158 = load i32* %PicInterlace409.i, align 4, !dbg !1156, !tbaa !848
  %tobool410.i = icmp eq i32 %158, 0, !dbg !1156
  br i1 %tobool410.i, label %lor.lhs.false411.i, label %if.then414.i, !dbg !1156

lor.lhs.false411.i:                               ; preds = %land.lhs.true408.i
  %MbInterlace412.i = getelementptr inbounds %struct.InputParameters* %155, i64 0, i32 92, !dbg !1156
  %159 = load i32* %MbInterlace412.i, align 4, !dbg !1156, !tbaa !848
  %tobool413.i = icmp eq i32 %159, 0, !dbg !1156
  br i1 %tobool413.i, label %if.end416.i, label %if.then414.i, !dbg !1156

if.then414.i:                                     ; preds = %lor.lhs.false411.i, %land.lhs.true408.i
  %call415.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([65 x i8]* @.str184, i64 0, i64 0)) #12, !dbg !1157
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #12, !dbg !1159
  %.pre743.i = load %struct.InputParameters** @input, align 8, !dbg !1160, !tbaa !833
  br label %if.end416.i, !dbg !1161

if.end416.i:                                      ; preds = %if.then414.i, %lor.lhs.false411.i, %land.lhs.true406.i, %if.end404.i
  %160 = phi %struct.InputParameters* [ %155, %lor.lhs.false411.i ], [ %155, %land.lhs.true406.i ], [ %155, %if.end404.i ], [ %.pre743.i, %if.then414.i ]
  %PocMemoryManagement.i = getelementptr inbounds %struct.InputParameters* %160, i64 0, i32 58, !dbg !1160
  %161 = load i32* %PocMemoryManagement.i, align 4, !dbg !1160, !tbaa !848
  %tobool417.i = icmp eq i32 %161, 0, !dbg !1160
  br i1 %tobool417.i, label %if.end429.i, label %land.lhs.true418.i, !dbg !1160

land.lhs.true418.i:                               ; preds = %if.end416.i
  %PyramidCoding419.i = getelementptr inbounds %struct.InputParameters* %160, i64 0, i32 55, !dbg !1160
  %162 = load i32* %PyramidCoding419.i, align 4, !dbg !1160, !tbaa !848
  %tobool420.i = icmp eq i32 %162, 0, !dbg !1160
  br i1 %tobool420.i, label %if.end429.i, label %land.lhs.true421.i, !dbg !1160

land.lhs.true421.i:                               ; preds = %land.lhs.true418.i
  %PicInterlace422.i = getelementptr inbounds %struct.InputParameters* %160, i64 0, i32 91, !dbg !1160
  %163 = load i32* %PicInterlace422.i, align 4, !dbg !1160, !tbaa !848
  %tobool423.i = icmp eq i32 %163, 0, !dbg !1160
  br i1 %tobool423.i, label %lor.lhs.false424.i, label %if.then427.i, !dbg !1160

lor.lhs.false424.i:                               ; preds = %land.lhs.true421.i
  %MbInterlace425.i = getelementptr inbounds %struct.InputParameters* %160, i64 0, i32 92, !dbg !1160
  %164 = load i32* %MbInterlace425.i, align 4, !dbg !1160, !tbaa !848
  %tobool426.i = icmp eq i32 %164, 0, !dbg !1160
  br i1 %tobool426.i, label %if.end429.i, label %if.then427.i, !dbg !1160

if.then427.i:                                     ; preds = %lor.lhs.false424.i, %land.lhs.true421.i
  %call428.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([67 x i8]* @.str185, i64 0, i64 0)) #12, !dbg !1162
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #12, !dbg !1164
  %.pre744.i = load %struct.InputParameters** @input, align 8, !dbg !1165, !tbaa !833
  br label %if.end429.i, !dbg !1166

if.end429.i:                                      ; preds = %land.lhs.true418.i, %if.end416.i, %if.then427.i, %lor.lhs.false424.i
  %165 = phi %struct.InputParameters* [ %160, %lor.lhs.false424.i ], [ %.pre744.i, %if.then427.i ], [ %160, %if.end416.i ], [ %160, %land.lhs.true418.i ]
  %PicInterlace430.i = getelementptr inbounds %struct.InputParameters* %165, i64 0, i32 91, !dbg !1165
  %166 = load i32* %PicInterlace430.i, align 4, !dbg !1165, !tbaa !848
  %switch679.i = icmp ult i32 %166, 3, !dbg !1165
  br i1 %switch679.i, label %if.end444.i, label %if.then441.i, !dbg !1165

if.then441.i:                                     ; preds = %if.end429.i
  %call443.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([92 x i8]* @.str186, i64 0, i64 0), i32 %166) #12, !dbg !1167
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #12, !dbg !1169
  %.pre745.i = load %struct.InputParameters** @input, align 8, !dbg !1170, !tbaa !833
  br label %if.end444.i, !dbg !1171

if.end444.i:                                      ; preds = %if.then441.i, %if.end429.i
  %167 = phi %struct.InputParameters* [ %165, %if.end429.i ], [ %.pre745.i, %if.then441.i ]
  %MbInterlace445.i = getelementptr inbounds %struct.InputParameters* %167, i64 0, i32 92, !dbg !1170
  %168 = load i32* %MbInterlace445.i, align 4, !dbg !1170, !tbaa !848
  %switch680.i = icmp ult i32 %168, 3, !dbg !1170
  br i1 %switch680.i, label %if.end459.i, label %if.then456.i, !dbg !1170

if.then456.i:                                     ; preds = %if.end444.i
  %call458.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([91 x i8]* @.str187, i64 0, i64 0), i32 %168) #12, !dbg !1172
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #12, !dbg !1174
  %.pre746.i = load %struct.InputParameters** @input, align 8, !dbg !1175, !tbaa !833
  br label %if.end459.i, !dbg !1176

if.end459.i:                                      ; preds = %if.then456.i, %if.end444.i
  %169 = phi %struct.InputParameters* [ %167, %if.end444.i ], [ %.pre746.i, %if.then456.i ]
  %rdopt.i = getelementptr inbounds %struct.InputParameters* %169, i64 0, i32 85, !dbg !1175
  %170 = load i32* %rdopt.i, align 4, !dbg !1175, !tbaa !848
  %tobool460.i = icmp eq i32 %170, 0, !dbg !1175
  br i1 %tobool460.i, label %land.lhs.true461.i, label %if.end466.i, !dbg !1175

land.lhs.true461.i:                               ; preds = %if.end459.i
  %MbInterlace462.i = getelementptr inbounds %struct.InputParameters* %169, i64 0, i32 92, !dbg !1175
  %171 = load i32* %MbInterlace462.i, align 4, !dbg !1175, !tbaa !848
  %tobool463.i = icmp eq i32 %171, 0, !dbg !1175
  br i1 %tobool463.i, label %if.end472.i, label %if.then464.i, !dbg !1175

if.then464.i:                                     ; preds = %land.lhs.true461.i
  %call465.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([55 x i8]* @.str188, i64 0, i64 0)) #12, !dbg !1177
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1179
  %.pre747.i = load %struct.InputParameters** @input, align 8, !dbg !1180, !tbaa !833
  %rdopt467.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre747.i, i64 0, i32 85
  %.pre748.i = load i32* %rdopt467.phi.trans.insert.i, align 4, !dbg !1180, !tbaa !848
  br label %if.end466.i, !dbg !1181

if.end466.i:                                      ; preds = %if.then464.i, %if.end459.i
  %172 = phi i32 [ %170, %if.end459.i ], [ %.pre748.i, %if.then464.i ]
  %173 = phi %struct.InputParameters* [ %169, %if.end459.i ], [ %.pre747.i, %if.then464.i ]
  %cmp468.i = icmp sgt i32 %172, 1, !dbg !1180
  br i1 %cmp468.i, label %if.then470.i, label %if.end472.i, !dbg !1180

if.then470.i:                                     ; preds = %if.end466.i
  %call471.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([91 x i8]* @.str189, i64 0, i64 0)) #12, !dbg !1182
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1184
  %.pre749.i = load %struct.InputParameters** @input, align 8, !dbg !1185, !tbaa !833
  br label %if.end472.i, !dbg !1186

if.end472.i:                                      ; preds = %if.then470.i, %if.end466.i, %land.lhs.true461.i
  %174 = phi %struct.InputParameters* [ %.pre749.i, %if.then470.i ], [ %173, %if.end466.i ], [ %169, %land.lhs.true461.i ]
  %NumFramesInELSubSeq.i = getelementptr inbounds %struct.InputParameters* %174, i64 0, i32 99, !dbg !1185
  %175 = load i32* %NumFramesInELSubSeq.i, align 4, !dbg !1185, !tbaa !848
  %num_ref_frames.i = getelementptr inbounds %struct.InputParameters* %174, i64 0, i32 9, !dbg !1185
  %176 = load i32* %num_ref_frames.i, align 4, !dbg !1185, !tbaa !848
  %cmp473.i = icmp sge i32 %175, %176, !dbg !1185
  %cmp477.i = icmp slt i32 %175, 0, !dbg !1185
  %or.cond.i = or i1 %cmp473.i, %cmp477.i, !dbg !1185
  br i1 %or.cond.i, label %if.then479.i, label %if.end483.i, !dbg !1185

if.then479.i:                                     ; preds = %if.end472.i
  %call482.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([49 x i8]* @.str190, i64 0, i64 0), i32 %175, i32 %176) #12, !dbg !1187
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1189
  %.pre750.i = load %struct.InputParameters** @input, align 8, !dbg !1190, !tbaa !833
  %NumFramesInELSubSeq484.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre750.i, i64 0, i32 99
  %.pre751.i = load i32* %NumFramesInELSubSeq484.phi.trans.insert.i, align 4, !dbg !1190, !tbaa !848
  br label %if.end483.i, !dbg !1191

if.end483.i:                                      ; preds = %if.then479.i, %if.end472.i
  %177 = phi i32 [ %175, %if.end472.i ], [ %.pre751.i, %if.then479.i ]
  %178 = phi %struct.InputParameters* [ %174, %if.end472.i ], [ %.pre750.i, %if.then479.i ]
  %cmp485.i = icmp sgt i32 %177, 0, !dbg !1190
  br i1 %cmp485.i, label %land.lhs.true487.i, label %if.end492.i, !dbg !1190

land.lhs.true487.i:                               ; preds = %if.end483.i
  %of_mode.i = getelementptr inbounds %struct.InputParameters* %178, i64 0, i32 60, !dbg !1190
  %179 = load i32* %of_mode.i, align 4, !dbg !1190, !tbaa !848
  %cmp488.i = icmp eq i32 %179, 0, !dbg !1190
  br i1 %cmp488.i, label %if.then490.i, label %if.end492.i, !dbg !1190

if.then490.i:                                     ; preds = %land.lhs.true487.i
  %call491.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([66 x i8]* @.str191, i64 0, i64 0)) #12, !dbg !1192
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1194
  %.pre752.i = load %struct.InputParameters** @input, align 8, !dbg !1195, !tbaa !833
  br label %if.end492.i, !dbg !1196

if.end492.i:                                      ; preds = %if.then490.i, %land.lhs.true487.i, %if.end483.i
  %180 = phi %struct.InputParameters* [ %.pre752.i, %if.then490.i ], [ %178, %land.lhs.true487.i ], [ %178, %if.end483.i ]
  %PicInterlace493.i = getelementptr inbounds %struct.InputParameters* %180, i64 0, i32 91, !dbg !1195
  %181 = load i32* %PicInterlace493.i, align 4, !dbg !1195, !tbaa !848
  %tobool494.i = icmp eq i32 %181, 0, !dbg !1195
  br i1 %tobool494.i, label %lor.lhs.false495.i, label %land.lhs.true498.i, !dbg !1195

lor.lhs.false495.i:                               ; preds = %if.end492.i
  %MbInterlace496.i = getelementptr inbounds %struct.InputParameters* %180, i64 0, i32 92, !dbg !1195
  %182 = load i32* %MbInterlace496.i, align 4, !dbg !1195, !tbaa !848
  %tobool497.i = icmp eq i32 %182, 0, !dbg !1195
  br i1 %tobool497.i, label %if.end503.i, label %land.lhs.true498.i, !dbg !1195

land.lhs.true498.i:                               ; preds = %lor.lhs.false495.i, %if.end492.i
  %SparePictureOption.i = getelementptr inbounds %struct.InputParameters* %180, i64 0, i32 106, !dbg !1195
  %183 = load i32* %SparePictureOption.i, align 4, !dbg !1195, !tbaa !848
  %cmp499.i = icmp eq i32 %183, 1, !dbg !1195
  br i1 %cmp499.i, label %if.then501.i, label %if.end503.i, !dbg !1195

if.then501.i:                                     ; preds = %land.lhs.true498.i
  %call502.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([42 x i8]* @.str192, i64 0, i64 0)) #12, !dbg !1197
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1199
  %.pre753.i = load %struct.InputParameters** @input, align 8, !dbg !1200, !tbaa !833
  br label %if.end503.i, !dbg !1201

if.end503.i:                                      ; preds = %if.then501.i, %land.lhs.true498.i, %lor.lhs.false495.i
  %184 = phi %struct.InputParameters* [ %180, %lor.lhs.false495.i ], [ %.pre753.i, %if.then501.i ], [ %180, %land.lhs.true498.i ]
  %of_mode504.i = getelementptr inbounds %struct.InputParameters* %184, i64 0, i32 60, !dbg !1200
  %185 = load i32* %of_mode504.i, align 4, !dbg !1200, !tbaa !848
  %cmp505.i = icmp eq i32 %185, 1, !dbg !1200
  br i1 %cmp505.i, label %if.end513.i, label %land.lhs.true507.i, !dbg !1200

land.lhs.true507.i:                               ; preds = %if.end503.i
  %SparePictureOption508.i = getelementptr inbounds %struct.InputParameters* %184, i64 0, i32 106, !dbg !1200
  %186 = load i32* %SparePictureOption508.i, align 4, !dbg !1200, !tbaa !848
  %cmp509.i = icmp eq i32 %186, 1, !dbg !1200
  br i1 %cmp509.i, label %if.then511.i, label %if.end513.i, !dbg !1200

if.then511.i:                                     ; preds = %land.lhs.true507.i
  %call512.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([64 x i8]* @.str193, i64 0, i64 0)) #12, !dbg !1202
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1204
  %.pre754.i = load %struct.InputParameters** @input, align 8, !dbg !1205, !tbaa !833
  br label %if.end513.i, !dbg !1206

if.end513.i:                                      ; preds = %if.then511.i, %land.lhs.true507.i, %if.end503.i
  %187 = phi %struct.InputParameters* [ %184, %if.end503.i ], [ %.pre754.i, %if.then511.i ], [ %184, %land.lhs.true507.i ]
  %WeightedPrediction.i = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 46, !dbg !1205
  %188 = load i32* %WeightedPrediction.i, align 4, !dbg !1205, !tbaa !848
  %cmp514.i = icmp sgt i32 %188, 0, !dbg !1205
  br i1 %cmp514.i, label %land.lhs.true519.i, label %lor.lhs.false516.i, !dbg !1205

lor.lhs.false516.i:                               ; preds = %if.end513.i
  %WeightedBiprediction.i = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 47, !dbg !1205
  %189 = load i32* %WeightedBiprediction.i, align 4, !dbg !1205, !tbaa !848
  %cmp517.i = icmp sgt i32 %189, 0, !dbg !1205
  br i1 %cmp517.i, label %land.lhs.true519.i, label %if.end524.i, !dbg !1205

land.lhs.true519.i:                               ; preds = %lor.lhs.false516.i, %if.end513.i
  %MbInterlace520.i = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 92, !dbg !1205
  %190 = load i32* %MbInterlace520.i, align 4, !dbg !1205, !tbaa !848
  %tobool521.i = icmp eq i32 %190, 0, !dbg !1205
  br i1 %tobool521.i, label %if.end524.i, label %if.then522.i, !dbg !1205

if.then522.i:                                     ; preds = %land.lhs.true519.i
  %call523.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([66 x i8]* @.str194, i64 0, i64 0)) #12, !dbg !1207
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1209
  %.pre755.i = load %struct.InputParameters** @input, align 8, !dbg !1210, !tbaa !833
  br label %if.end524.i, !dbg !1211

if.end524.i:                                      ; preds = %if.then522.i, %land.lhs.true519.i, %lor.lhs.false516.i
  %191 = phi %struct.InputParameters* [ %187, %land.lhs.true519.i ], [ %.pre755.i, %if.then522.i ], [ %187, %lor.lhs.false516.i ]
  %NumFramesInELSubSeq525.i = getelementptr inbounds %struct.InputParameters* %191, i64 0, i32 99, !dbg !1210
  %192 = load i32* %NumFramesInELSubSeq525.i, align 4, !dbg !1210, !tbaa !848
  %cmp526.i = icmp sgt i32 %192, 0, !dbg !1210
  br i1 %cmp526.i, label %land.lhs.true528.i, label %if.end534.i, !dbg !1210

land.lhs.true528.i:                               ; preds = %if.end524.i
  %WeightedPrediction529.i = getelementptr inbounds %struct.InputParameters* %191, i64 0, i32 46, !dbg !1210
  %193 = load i32* %WeightedPrediction529.i, align 4, !dbg !1210, !tbaa !848
  %cmp530.i = icmp sgt i32 %193, 0, !dbg !1210
  br i1 %cmp530.i, label %if.then532.i, label %if.end534.i, !dbg !1210

if.then532.i:                                     ; preds = %land.lhs.true528.i
  %call533.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([70 x i8]* @.str195, i64 0, i64 0)) #12, !dbg !1212
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1214
  %.pre756.i = load %struct.InputParameters** @input, align 8, !dbg !1215, !tbaa !833
  br label %if.end534.i, !dbg !1216

if.end534.i:                                      ; preds = %if.then532.i, %land.lhs.true528.i, %if.end524.i
  %194 = phi %struct.InputParameters* [ %.pre756.i, %if.then532.i ], [ %191, %land.lhs.true528.i ], [ %191, %if.end524.i ]
  %num_slice_groups_minus1535.i = getelementptr inbounds %struct.InputParameters* %194, i64 0, i32 110, !dbg !1215
  %195 = load i32* %num_slice_groups_minus1535.i, align 4, !dbg !1215, !tbaa !848
  %cmp536.i = icmp sgt i32 %195, 0, !dbg !1215
  br i1 %cmp536.i, label %if.then538.i, label %if.end549.i, !dbg !1215

if.then538.i:                                     ; preds = %if.end534.i
  %slice_group_map_type539.i = getelementptr inbounds %struct.InputParameters* %194, i64 0, i32 111, !dbg !1217
  %196 = load i32* %slice_group_map_type539.i, align 4, !dbg !1217, !tbaa !848
  %.off719.i = add i32 %196, -3, !dbg !1217
  %197 = icmp ult i32 %.off719.i, 3, !dbg !1217
  br i1 %197, label %if.then546.i, label %if.end549.i, !dbg !1217

if.then546.i:                                     ; preds = %if.then538.i
  store i32 1, i32* %num_slice_groups_minus1535.i, align 4, !dbg !1219, !tbaa !848
  br label %if.end549.i, !dbg !1219

if.end549.i:                                      ; preds = %if.then546.i, %if.then538.i, %if.end534.i
  %RCEnable.i = getelementptr inbounds %struct.InputParameters* %194, i64 0, i32 127, !dbg !1220
  %198 = load i32* %RCEnable.i, align 4, !dbg !1220, !tbaa !848
  %tobool550.i = icmp eq i32 %198, 0, !dbg !1220
  br i1 %tobool550.i, label %if.end566.i, label %if.then551.i, !dbg !1220

if.then551.i:                                     ; preds = %if.end549.i
  %img_height552.i = getelementptr inbounds %struct.InputParameters* %194, i64 0, i32 17, !dbg !1221
  %199 = load i32* %img_height552.i, align 4, !dbg !1221, !tbaa !848
  %200 = load %struct.ImageParameters** @img, align 8, !dbg !1221, !tbaa !833
  %auto_crop_bottom553.i = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 166, !dbg !1221
  %201 = load i32* %auto_crop_bottom553.i, align 4, !dbg !1221, !tbaa !848
  %add554.i = add nsw i32 %201, %199, !dbg !1221
  %img_width555.i = getelementptr inbounds %struct.InputParameters* %194, i64 0, i32 16, !dbg !1221
  %202 = load i32* %img_width555.i, align 4, !dbg !1221, !tbaa !848
  %auto_crop_right556.i = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 165, !dbg !1221
  %203 = load i32* %auto_crop_right556.i, align 4, !dbg !1221, !tbaa !848
  %add557.i = add nsw i32 %203, %202, !dbg !1221
  %mul558.i = mul nsw i32 %add557.i, %add554.i, !dbg !1221
  %div559.i = sdiv i32 %mul558.i, 256, !dbg !1221
  %basicunit.i = getelementptr inbounds %struct.InputParameters* %194, i64 0, i32 130, !dbg !1221
  %204 = load i32* %basicunit.i, align 4, !dbg !1221, !tbaa !848
  %rem560.i = srem i32 %div559.i, %204, !dbg !1221
  %cmp561.i = icmp eq i32 %rem560.i, 0, !dbg !1221
  br i1 %cmp561.i, label %if.end566.i, label %if.then563.i, !dbg !1221

if.then563.i:                                     ; preds = %if.then551.i
  %call564.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([37 x i8]* @.str196, i64 0, i64 0)) #12, !dbg !1223
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1225
  %.pre757.i = load %struct.InputParameters** @input, align 8, !dbg !1226, !tbaa !833
  br label %if.end566.i, !dbg !1227

if.end566.i:                                      ; preds = %if.then563.i, %if.then551.i, %if.end549.i
  %205 = phi %struct.InputParameters* [ %194, %if.then551.i ], [ %194, %if.end549.i ], [ %.pre757.i, %if.then563.i ]
  %successive_Bframe567.i = getelementptr inbounds %struct.InputParameters* %205, i64 0, i32 34, !dbg !1226
  %206 = load i32* %successive_Bframe567.i, align 4, !dbg !1226, !tbaa !848
  %tobool568.i = icmp eq i32 %206, 0, !dbg !1226
  br i1 %tobool568.i, label %if.end580.i, label %land.lhs.true569.i, !dbg !1226

land.lhs.true569.i:                               ; preds = %if.end566.i
  %BRefPictures570.i = getelementptr inbounds %struct.InputParameters* %205, i64 0, i32 54, !dbg !1226
  %207 = load i32* %BRefPictures570.i, align 4, !dbg !1226, !tbaa !848
  %tobool571.i = icmp eq i32 %207, 0, !dbg !1226
  br i1 %tobool571.i, label %if.end580.i, label %land.lhs.true572.i, !dbg !1226

land.lhs.true572.i:                               ; preds = %land.lhs.true569.i
  %idr_enable.i = getelementptr inbounds %struct.InputParameters* %205, i64 0, i32 32, !dbg !1226
  %208 = load i32* %idr_enable.i, align 4, !dbg !1226, !tbaa !848
  %tobool573.i = icmp eq i32 %208, 0, !dbg !1226
  br i1 %tobool573.i, label %if.end580.i, label %land.lhs.true574.i, !dbg !1226

land.lhs.true574.i:                               ; preds = %land.lhs.true572.i
  %intra_period.i = getelementptr inbounds %struct.InputParameters* %205, i64 0, i32 31, !dbg !1226
  %209 = load i32* %intra_period.i, align 4, !dbg !1226, !tbaa !848
  %tobool575.i = icmp eq i32 %209, 0, !dbg !1226
  br i1 %tobool575.i, label %if.end580.i, label %land.lhs.true576.i, !dbg !1226

land.lhs.true576.i:                               ; preds = %land.lhs.true574.i
  %pic_order_cnt_type.i = getelementptr inbounds %struct.InputParameters* %205, i64 0, i32 120, !dbg !1226
  %210 = load i32* %pic_order_cnt_type.i, align 4, !dbg !1226, !tbaa !848
  %cmp577.i = icmp eq i32 %210, 0, !dbg !1226
  br i1 %cmp577.i, label %if.end580.i, label %if.then579.i, !dbg !1226

if.then579.i:                                     ; preds = %land.lhs.true576.i
  call void @error(i8* getelementptr inbounds ([91 x i8]* @.str197, i64 0, i64 0), i32 -1000) #12, !dbg !1228
  %.pre758.i = load %struct.InputParameters** @input, align 8, !dbg !1230, !tbaa !833
  br label %if.end580.i, !dbg !1231

if.end580.i:                                      ; preds = %if.then579.i, %land.lhs.true576.i, %land.lhs.true574.i, %land.lhs.true572.i, %land.lhs.true569.i, %if.end566.i
  %211 = phi %struct.InputParameters* [ %205, %land.lhs.true576.i ], [ %205, %land.lhs.true574.i ], [ %205, %land.lhs.true572.i ], [ %205, %land.lhs.true569.i ], [ %205, %if.end566.i ], [ %.pre758.i, %if.then579.i ]
  %direct_spatial_mv_pred_flag581.i = getelementptr inbounds %struct.InputParameters* %211, i64 0, i32 37, !dbg !1230
  %212 = load i32* %direct_spatial_mv_pred_flag581.i, align 4, !dbg !1230, !tbaa !848
  %tobool582.i = icmp eq i32 %212, 0, !dbg !1230
  br i1 %tobool582.i, label %land.lhs.true583.i, label %if.end592.i, !dbg !1230

land.lhs.true583.i:                               ; preds = %if.end580.i
  %num_ref_frames584.i = getelementptr inbounds %struct.InputParameters* %211, i64 0, i32 9, !dbg !1230
  %213 = load i32* %num_ref_frames584.i, align 4, !dbg !1230, !tbaa !848
  %cmp585.i = icmp slt i32 %213, 2, !dbg !1230
  br i1 %cmp585.i, label %land.lhs.true587.i, label %if.end592.i, !dbg !1230

land.lhs.true587.i:                               ; preds = %land.lhs.true583.i
  %successive_Bframe588.i = getelementptr inbounds %struct.InputParameters* %211, i64 0, i32 34, !dbg !1230
  %214 = load i32* %successive_Bframe588.i, align 4, !dbg !1230, !tbaa !848
  %cmp589.i = icmp sgt i32 %214, 0, !dbg !1230
  br i1 %cmp589.i, label %if.then591.i, label %if.end592.i, !dbg !1230

if.then591.i:                                     ; preds = %land.lhs.true587.i
  call void @error(i8* getelementptr inbounds ([45 x i8]* @.str198, i64 0, i64 0), i32 -1000) #12, !dbg !1232
  %.pre759.i = load %struct.InputParameters** @input, align 8, !dbg !1233, !tbaa !833
  br label %if.end592.i, !dbg !1232

if.end592.i:                                      ; preds = %if.then591.i, %land.lhs.true587.i, %land.lhs.true583.i, %if.end580.i
  %215 = phi %struct.InputParameters* [ %211, %if.end580.i ], [ %.pre759.i, %if.then591.i ], [ %211, %land.lhs.true587.i ], [ %211, %land.lhs.true583.i ]
  %AllowTransform8x8.i = getelementptr inbounds %struct.InputParameters* %215, i64 0, i32 123, !dbg !1233
  %216 = load i32* %AllowTransform8x8.i, align 4, !dbg !1233, !tbaa !848
  %tobool593.i = icmp eq i32 %216, 0, !dbg !1233
  br i1 %tobool593.i, label %if.end610.i, label %land.lhs.true594.i, !dbg !1233

land.lhs.true594.i:                               ; preds = %if.end592.i
  %sp_periodicity.i = getelementptr inbounds %struct.InputParameters* %215, i64 0, i32 43, !dbg !1233
  %217 = load i32* %sp_periodicity.i, align 4, !dbg !1233, !tbaa !848
  %tobool595.i = icmp eq i32 %217, 0, !dbg !1233
  br i1 %tobool595.i, label %land.lhs.true601.i, label %if.end598.i, !dbg !1233

if.end598.i:                                      ; preds = %land.lhs.true594.i
  %call597.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([52 x i8]* @.str199, i64 0, i64 0)) #12, !dbg !1234
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1236
  %.pre760.i = load %struct.InputParameters** @input, align 8, !dbg !1237, !tbaa !833
  %AllowTransform8x8599.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre760.i, i64 0, i32 123
  %.pre761.i = load i32* %AllowTransform8x8599.phi.trans.insert.i, align 4, !dbg !1237, !tbaa !848
  %tobool600.i = icmp eq i32 %.pre761.i, 0, !dbg !1237
  br i1 %tobool600.i, label %if.end610.i, label %land.lhs.true601.i, !dbg !1237

land.lhs.true601.i:                               ; preds = %if.end598.i, %land.lhs.true594.i
  %218 = phi %struct.InputParameters* [ %.pre760.i, %if.end598.i ], [ %215, %land.lhs.true594.i ]
  %ProfileIDC.i = getelementptr inbounds %struct.InputParameters* %218, i64 0, i32 0, !dbg !1237
  %219 = load i32* %ProfileIDC.i, align 4, !dbg !1237, !tbaa !848
  %.off.i = add i32 %219, -100, !dbg !1237
  %220 = icmp ugt i32 %.off.i, 44, !dbg !1237
  br i1 %220, label %if.then608.i, label %if.end610.i, !dbg !1237

if.then608.i:                                     ; preds = %land.lhs.true601.i
  %call609.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([62 x i8]* @.str200, i64 0, i64 0), i32 100, i32 144) #12, !dbg !1238
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1240
  %.pre762.i = load %struct.InputParameters** @input, align 8, !dbg !1241, !tbaa !833
  br label %if.end610.i, !dbg !1242

if.end610.i:                                      ; preds = %if.then608.i, %land.lhs.true601.i, %if.end598.i, %if.end592.i
  %221 = phi %struct.InputParameters* [ %218, %land.lhs.true601.i ], [ %.pre760.i, %if.end598.i ], [ %.pre762.i, %if.then608.i ], [ %215, %if.end592.i ]
  %ScalingMatrixPresentFlag.i = getelementptr inbounds %struct.InputParameters* %221, i64 0, i32 132, !dbg !1241
  %222 = load i32* %ScalingMatrixPresentFlag.i, align 4, !dbg !1241, !tbaa !848
  %tobool611.i = icmp eq i32 %222, 0, !dbg !1241
  br i1 %tobool611.i, label %if.end622.i, label %land.lhs.true612.i, !dbg !1241

land.lhs.true612.i:                               ; preds = %if.end610.i
  %ProfileIDC613.i = getelementptr inbounds %struct.InputParameters* %221, i64 0, i32 0, !dbg !1241
  %223 = load i32* %ProfileIDC613.i, align 4, !dbg !1241, !tbaa !848
  %.off718.i = add i32 %223, -100, !dbg !1241
  %224 = icmp ugt i32 %.off718.i, 44, !dbg !1241
  br i1 %224, label %if.then620.i, label %if.end622.i, !dbg !1241

if.then620.i:                                     ; preds = %land.lhs.true612.i
  %call621.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([69 x i8]* @.str201, i64 0, i64 0), i32 100, i32 144) #12, !dbg !1243
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1245
  %.pre763.i = load %struct.InputParameters** @input, align 8, !dbg !1246, !tbaa !833
  br label %if.end622.i, !dbg !1247

if.end622.i:                                      ; preds = %if.then620.i, %land.lhs.true612.i, %if.end610.i
  %225 = phi %struct.InputParameters* [ %221, %land.lhs.true612.i ], [ %221, %if.end610.i ], [ %.pre763.i, %if.then620.i ]
  %yuv_format.i = getelementptr inbounds %struct.InputParameters* %225, i64 0, i32 18, !dbg !1246
  %226 = load i32* %yuv_format.i, align 4, !dbg !1246, !tbaa !848
  %cmp623.i = icmp eq i32 %226, 2, !dbg !1246
  br i1 %cmp623.i, label %land.lhs.true625.i, label %if.end631.i, !dbg !1246

land.lhs.true625.i:                               ; preds = %if.end622.i
  %ProfileIDC626.i = getelementptr inbounds %struct.InputParameters* %225, i64 0, i32 0, !dbg !1246
  %227 = load i32* %ProfileIDC626.i, align 4, !dbg !1246, !tbaa !848
  %cmp627.i = icmp slt i32 %227, 122, !dbg !1246
  br i1 %cmp627.i, label %if.then629.i, label %land.lhs.true645.i, !dbg !1246

if.then629.i:                                     ; preds = %land.lhs.true625.i
  %call630.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([84 x i8]* @.str202, i64 0, i64 0), i32 122, i32 144) #12, !dbg !1248
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1250
  %.pre764.i = load %struct.InputParameters** @input, align 8, !dbg !1251, !tbaa !833
  %yuv_format632.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre764.i, i64 0, i32 18
  %.pre765.i = load i32* %yuv_format632.phi.trans.insert.i, align 4, !dbg !1251, !tbaa !848
  br label %if.end631.i, !dbg !1252

if.end631.i:                                      ; preds = %if.then629.i, %if.end622.i
  %228 = phi i32 [ %.pre765.i, %if.then629.i ], [ %226, %if.end622.i ]
  %229 = phi %struct.InputParameters* [ %.pre764.i, %if.then629.i ], [ %225, %if.end622.i ]
  %cmp633.i = icmp eq i32 %228, 3, !dbg !1251
  br i1 %cmp633.i, label %land.lhs.true635.i, label %land.lhs.true645.i, !dbg !1251

land.lhs.true635.i:                               ; preds = %if.end631.i
  %ProfileIDC636.i = getelementptr inbounds %struct.InputParameters* %229, i64 0, i32 0, !dbg !1251
  %230 = load i32* %ProfileIDC636.i, align 4, !dbg !1251, !tbaa !848
  %cmp637.i = icmp slt i32 %230, 144, !dbg !1251
  br i1 %cmp637.i, label %if.end641.i, label %if.end649.i, !dbg !1251

if.end641.i:                                      ; preds = %land.lhs.true635.i
  %call640.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([79 x i8]* @.str203, i64 0, i64 0), i32 144) #12, !dbg !1253
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1255
  %.pre766.i = load %struct.InputParameters** @input, align 8, !dbg !1256, !tbaa !833
  %yuv_format642.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre766.i, i64 0, i32 18
  %.pre767.i = load i32* %yuv_format642.phi.trans.insert.i, align 4, !dbg !1256, !tbaa !848
  %cmp643.i = icmp eq i32 %.pre767.i, 3, !dbg !1256
  br i1 %cmp643.i, label %if.end649.i, label %land.lhs.true645.i, !dbg !1256

land.lhs.true645.i:                               ; preds = %if.end641.i, %if.end631.i, %land.lhs.true625.i
  %231 = phi %struct.InputParameters* [ %.pre766.i, %if.end641.i ], [ %229, %if.end631.i ], [ %225, %land.lhs.true625.i ]
  %residue_transform_flag.i = getelementptr inbounds %struct.InputParameters* %231, i64 0, i32 143, !dbg !1256
  %232 = load i32* %residue_transform_flag.i, align 4, !dbg !1256, !tbaa !848
  %tobool646.i = icmp eq i32 %232, 0, !dbg !1256
  br i1 %tobool646.i, label %if.end649.i, label %if.then647.i, !dbg !1256

if.then647.i:                                     ; preds = %land.lhs.true645.i
  %call648.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([54 x i8]* @.str204, i64 0, i64 0)) #12, !dbg !1257
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1259
  %.pre768.i = load %struct.InputParameters** @input, align 8, !dbg !1260, !tbaa !833
  br label %if.end649.i, !dbg !1262

if.end649.i:                                      ; preds = %land.lhs.true645.i, %if.end641.i, %if.then647.i, %land.lhs.true635.i
  %233 = phi %struct.InputParameters* [ %.pre768.i, %if.then647.i ], [ %229, %land.lhs.true635.i ], [ %.pre766.i, %if.end641.i ], [ %231, %land.lhs.true645.i ]
  %ProfileIDC.i.i = getelementptr inbounds %struct.InputParameters* %233, i64 0, i32 0, !dbg !1260
  %234 = load i32* %ProfileIDC.i.i, align 4, !dbg !1260, !tbaa !848
  switch i32 %234, label %if.then.i714.i [
    i32 66, label %if.end.i.i
    i32 77, label %if.end.i.i
    i32 88, label %if.end.i.i
    i32 100, label %if.end.i.i
    i32 110, label %if.end.i.i
    i32 122, label %if.end.i.i
    i32 144, label %if.end.i.i
  ], !dbg !1260

if.then.i714.i:                                   ; preds = %if.end649.i
  %call.i712.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([72 x i8]* @.str205, i64 0, i64 0), i32 100, i32 144) #12, !dbg !1263
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1265
  %.pre.i713.i = load %struct.InputParameters** @input, align 8, !dbg !1266, !tbaa !833
  %ProfileIDC18.phi.trans.insert.i.i = getelementptr inbounds %struct.InputParameters* %.pre.i713.i, i64 0, i32 0
  %.pre80.i.i = load i32* %ProfileIDC18.phi.trans.insert.i.i, align 4, !dbg !1266, !tbaa !848
  br label %if.end.i.i, !dbg !1267

if.end.i.i:                                       ; preds = %if.then.i714.i, %if.end649.i, %if.end649.i, %if.end649.i, %if.end649.i, %if.end649.i, %if.end649.i, %if.end649.i
  %235 = phi i32 [ %234, %if.end649.i ], [ %234, %if.end649.i ], [ %234, %if.end649.i ], [ %234, %if.end649.i ], [ %234, %if.end649.i ], [ %234, %if.end649.i ], [ %234, %if.end649.i ], [ %.pre80.i.i, %if.then.i714.i ]
  %236 = phi %struct.InputParameters* [ %233, %if.end649.i ], [ %233, %if.end649.i ], [ %233, %if.end649.i ], [ %233, %if.end649.i ], [ %233, %if.end649.i ], [ %233, %if.end649.i ], [ %233, %if.end649.i ], [ %.pre.i713.i, %if.then.i714.i ]
  %cmp19.i.i = icmp eq i32 %235, 66, !dbg !1266
  br i1 %cmp19.i.i, label %if.then20.i.i, label %if.end44.i.i, !dbg !1266

if.then20.i.i:                                    ; preds = %if.end.i.i
  %successive_Bframe.i.i = getelementptr inbounds %struct.InputParameters* %236, i64 0, i32 34, !dbg !1268
  %237 = load i32* %successive_Bframe.i.i, align 4, !dbg !1268, !tbaa !848
  %tobool.i.i = icmp eq i32 %237, 0, !dbg !1268
  br i1 %tobool.i.i, label %if.end23.i.i, label %if.then21.i.i, !dbg !1268

if.then21.i.i:                                    ; preds = %if.then20.i.i
  %call22.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([40 x i8]* @.str206, i64 0, i64 0)) #12, !dbg !1270
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1272
  %.pre81.i.i = load %struct.InputParameters** @input, align 8, !dbg !1273, !tbaa !833
  br label %if.end23.i.i, !dbg !1274

if.end23.i.i:                                     ; preds = %if.then21.i.i, %if.then20.i.i
  %238 = phi %struct.InputParameters* [ %236, %if.then20.i.i ], [ %.pre81.i.i, %if.then21.i.i ]
  %sp_periodicity.i.i = getelementptr inbounds %struct.InputParameters* %238, i64 0, i32 43, !dbg !1273
  %239 = load i32* %sp_periodicity.i.i, align 4, !dbg !1273, !tbaa !848
  %tobool24.i.i = icmp eq i32 %239, 0, !dbg !1273
  br i1 %tobool24.i.i, label %if.end27.i.i, label %if.then25.i.i, !dbg !1273

if.then25.i.i:                                    ; preds = %if.end23.i.i
  %call26.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([41 x i8]* @.str207, i64 0, i64 0)) #12, !dbg !1275
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1277
  %.pre82.i.i = load %struct.InputParameters** @input, align 8, !dbg !1278, !tbaa !833
  br label %if.end27.i.i, !dbg !1279

if.end27.i.i:                                     ; preds = %if.then25.i.i, %if.end23.i.i
  %240 = phi %struct.InputParameters* [ %238, %if.end23.i.i ], [ %.pre82.i.i, %if.then25.i.i ]
  %partition_mode.i.i = getelementptr inbounds %struct.InputParameters* %240, i64 0, i32 61, !dbg !1278
  %241 = load i32* %partition_mode.i.i, align 4, !dbg !1278, !tbaa !848
  %tobool28.i.i = icmp eq i32 %241, 0, !dbg !1278
  br i1 %tobool28.i.i, label %if.end31.i.i, label %if.then29.i.i, !dbg !1278

if.then29.i.i:                                    ; preds = %if.end27.i.i
  %call30.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([46 x i8]* @.str208, i64 0, i64 0)) #12, !dbg !1280
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1282
  %.pre83.i.i = load %struct.InputParameters** @input, align 8, !dbg !1283, !tbaa !833
  br label %if.end31.i.i, !dbg !1284

if.end31.i.i:                                     ; preds = %if.then29.i.i, %if.end27.i.i
  %242 = phi %struct.InputParameters* [ %240, %if.end27.i.i ], [ %.pre83.i.i, %if.then29.i.i ]
  %WeightedPrediction.i.i = getelementptr inbounds %struct.InputParameters* %242, i64 0, i32 46, !dbg !1283
  %243 = load i32* %WeightedPrediction.i.i, align 4, !dbg !1283, !tbaa !848
  %tobool32.i.i = icmp eq i32 %243, 0, !dbg !1283
  br i1 %tobool32.i.i, label %if.end35.i.i, label %if.then33.i.i, !dbg !1283

if.then33.i.i:                                    ; preds = %if.end31.i.i
  %call34.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([48 x i8]* @.str209, i64 0, i64 0)) #12, !dbg !1285
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1287
  %.pre84.i.i = load %struct.InputParameters** @input, align 8, !dbg !1288, !tbaa !833
  br label %if.end35.i.i, !dbg !1289

if.end35.i.i:                                     ; preds = %if.then33.i.i, %if.end31.i.i
  %244 = phi %struct.InputParameters* [ %242, %if.end31.i.i ], [ %.pre84.i.i, %if.then33.i.i ]
  %WeightedBiprediction.i.i = getelementptr inbounds %struct.InputParameters* %244, i64 0, i32 47, !dbg !1288
  %245 = load i32* %WeightedBiprediction.i.i, align 4, !dbg !1288, !tbaa !848
  %tobool36.i.i = icmp eq i32 %245, 0, !dbg !1288
  br i1 %tobool36.i.i, label %if.end39.i.i, label %if.then37.i.i, !dbg !1288

if.then37.i.i:                                    ; preds = %if.end35.i.i
  %call38.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([48 x i8]* @.str209, i64 0, i64 0)) #12, !dbg !1290
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1292
  %.pre85.i.i = load %struct.InputParameters** @input, align 8, !dbg !1293, !tbaa !833
  br label %if.end39.i.i, !dbg !1294

if.end39.i.i:                                     ; preds = %if.then37.i.i, %if.end35.i.i
  %246 = phi %struct.InputParameters* [ %244, %if.end35.i.i ], [ %.pre85.i.i, %if.then37.i.i ]
  %symbol_mode.i.i = getelementptr inbounds %struct.InputParameters* %246, i64 0, i32 59, !dbg !1293
  %247 = load i32* %symbol_mode.i.i, align 4, !dbg !1293, !tbaa !848
  %cmp40.i.i = icmp eq i32 %247, 1, !dbg !1293
  br i1 %cmp40.i.i, label %if.then41.i.i, label %if.end44.i.i, !dbg !1293

if.then41.i.i:                                    ; preds = %if.end39.i.i
  %call42.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([34 x i8]* @.str210, i64 0, i64 0)) #12, !dbg !1295
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1297
  %.pre86.i.i = load %struct.InputParameters** @input, align 8, !dbg !1298, !tbaa !833
  br label %if.end44.i.i, !dbg !1299

if.end44.i.i:                                     ; preds = %if.then41.i.i, %if.end39.i.i, %if.end.i.i
  %248 = phi %struct.InputParameters* [ %.pre86.i.i, %if.then41.i.i ], [ %236, %if.end.i.i ], [ %246, %if.end39.i.i ]
  %ProfileIDC45.i.i = getelementptr inbounds %struct.InputParameters* %248, i64 0, i32 0, !dbg !1298
  %249 = load i32* %ProfileIDC45.i.i, align 4, !dbg !1298, !tbaa !848
  %cmp46.i715.i = icmp eq i32 %249, 77, !dbg !1298
  br i1 %cmp46.i715.i, label %if.then47.i.i, label %if.end66.i.i, !dbg !1298

if.then47.i.i:                                    ; preds = %if.end44.i.i
  %sp_periodicity48.i.i = getelementptr inbounds %struct.InputParameters* %248, i64 0, i32 43, !dbg !1300
  %250 = load i32* %sp_periodicity48.i.i, align 4, !dbg !1300, !tbaa !848
  %tobool49.i.i = icmp eq i32 %250, 0, !dbg !1300
  br i1 %tobool49.i.i, label %if.end52.i.i, label %if.then50.i.i, !dbg !1300

if.then50.i.i:                                    ; preds = %if.then47.i.i
  %call51.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([37 x i8]* @.str211, i64 0, i64 0)) #12, !dbg !1302
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1304
  %.pre87.i.i = load %struct.InputParameters** @input, align 8, !dbg !1305, !tbaa !833
  br label %if.end52.i.i, !dbg !1306

if.end52.i.i:                                     ; preds = %if.then50.i.i, %if.then47.i.i
  %251 = phi %struct.InputParameters* [ %248, %if.then47.i.i ], [ %.pre87.i.i, %if.then50.i.i ]
  %partition_mode53.i.i = getelementptr inbounds %struct.InputParameters* %251, i64 0, i32 61, !dbg !1305
  %252 = load i32* %partition_mode53.i.i, align 4, !dbg !1305, !tbaa !848
  %tobool54.i.i = icmp eq i32 %252, 0, !dbg !1305
  br i1 %tobool54.i.i, label %if.end57.i.i, label %if.then55.i.i, !dbg !1305

if.then55.i.i:                                    ; preds = %if.end52.i.i
  %call56.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([42 x i8]* @.str212, i64 0, i64 0)) #12, !dbg !1307
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1309
  %.pre88.i.i = load %struct.InputParameters** @input, align 8, !dbg !1310, !tbaa !833
  br label %if.end57.i.i, !dbg !1311

if.end57.i.i:                                     ; preds = %if.then55.i.i, %if.end52.i.i
  %253 = phi %struct.InputParameters* [ %251, %if.end52.i.i ], [ %.pre88.i.i, %if.then55.i.i ]
  %num_slice_groups_minus1.i.i = getelementptr inbounds %struct.InputParameters* %253, i64 0, i32 110, !dbg !1310
  %254 = load i32* %num_slice_groups_minus1.i.i, align 4, !dbg !1310, !tbaa !848
  %tobool58.i.i = icmp eq i32 %254, 0, !dbg !1310
  br i1 %tobool58.i.i, label %if.end61.i.i, label %if.then59.i.i, !dbg !1310

if.then59.i.i:                                    ; preds = %if.end57.i.i
  %call60.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([56 x i8]* @.str213, i64 0, i64 0)) #12, !dbg !1312
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1314
  %.pre89.i.i = load %struct.InputParameters** @input, align 8, !dbg !1315, !tbaa !833
  br label %if.end61.i.i, !dbg !1316

if.end61.i.i:                                     ; preds = %if.then59.i.i, %if.end57.i.i
  %255 = phi %struct.InputParameters* [ %253, %if.end57.i.i ], [ %.pre89.i.i, %if.then59.i.i ]
  %redundant_slice_flag.i.i = getelementptr inbounds %struct.InputParameters* %255, i64 0, i32 119, !dbg !1315
  %256 = load i32* %redundant_slice_flag.i.i, align 4, !dbg !1315, !tbaa !848
  %tobool62.i.i = icmp eq i32 %256, 0, !dbg !1315
  br i1 %tobool62.i.i, label %if.end66.i.i, label %if.then63.i.i, !dbg !1315

if.then63.i.i:                                    ; preds = %if.end61.i.i
  %call64.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([44 x i8]* @.str214, i64 0, i64 0)) #12, !dbg !1317
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1319
  %.pre90.i.i = load %struct.InputParameters** @input, align 8, !dbg !1320, !tbaa !833
  br label %if.end66.i.i, !dbg !1321

if.end66.i.i:                                     ; preds = %if.end61.i.i, %if.then63.i.i, %if.end44.i.i
  %257 = phi %struct.InputParameters* [ %.pre90.i.i, %if.then63.i.i ], [ %248, %if.end44.i.i ], [ %255, %if.end61.i.i ]
  %ProfileIDC67.i.i = getelementptr inbounds %struct.InputParameters* %257, i64 0, i32 0, !dbg !1320
  %258 = load i32* %ProfileIDC67.i.i, align 4, !dbg !1320, !tbaa !848
  %cmp68.i.i = icmp eq i32 %258, 88, !dbg !1320
  br i1 %cmp68.i.i, label %if.then69.i.i, label %PatchInp.exit, !dbg !1320

if.then69.i.i:                                    ; preds = %if.end66.i.i
  %directInferenceFlag.i.i = getelementptr inbounds %struct.InputParameters* %257, i64 0, i32 38, !dbg !1322
  %259 = load i32* %directInferenceFlag.i.i, align 4, !dbg !1322, !tbaa !848
  %tobool70.i.i = icmp eq i32 %259, 0, !dbg !1322
  br i1 %tobool70.i.i, label %if.then71.i.i, label %if.end73.i.i, !dbg !1322

if.then71.i.i:                                    ; preds = %if.then69.i.i
  %call72.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([58 x i8]* @.str215, i64 0, i64 0)) #12, !dbg !1324
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1326
  %.pre91.i.i = load %struct.InputParameters** @input, align 8, !dbg !1327, !tbaa !833
  br label %if.end73.i.i, !dbg !1328

if.end73.i.i:                                     ; preds = %if.then71.i.i, %if.then69.i.i
  %260 = phi %struct.InputParameters* [ %257, %if.then69.i.i ], [ %.pre91.i.i, %if.then71.i.i ]
  %symbol_mode74.i.i = getelementptr inbounds %struct.InputParameters* %260, i64 0, i32 59, !dbg !1327
  %261 = load i32* %symbol_mode74.i.i, align 4, !dbg !1327, !tbaa !848
  %cmp75.i.i = icmp eq i32 %261, 1, !dbg !1327
  br i1 %cmp75.i.i, label %if.then76.i.i, label %PatchInp.exit, !dbg !1327

if.then76.i.i:                                    ; preds = %if.end73.i.i
  %call77.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([34 x i8]* @.str216, i64 0, i64 0)) #12, !dbg !1329
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #12, !dbg !1331
  %.pre = load %struct.InputParameters** @input, align 8, !dbg !1332, !tbaa !833
  br label %PatchInp.exit, !dbg !1333

PatchInp.exit:                                    ; preds = %if.end66.i.i, %if.end73.i.i, %if.then76.i.i
  %262 = phi %struct.InputParameters* [ %257, %if.end66.i.i ], [ %260, %if.end73.i.i ], [ %.pre, %if.then76.i.i ]
  call void @llvm.lifetime.end(i64 4, i8* %21) #4, !dbg !1334
  %DisplayEncParams = getelementptr inbounds %struct.InputParameters* %262, i64 0, i32 126, !dbg !1332
  %263 = load i32* %DisplayEncParams, align 4, !dbg !1332, !tbaa !848
  %tobool = icmp eq i32 %263, 0, !dbg !1332
  br i1 %tobool, label %if.end128, label %if.then126, !dbg !1332

if.then126:                                       ; preds = %PatchInp.exit
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !1335) #4, !dbg !1337
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str238, i64 0, i64 0)) #4, !dbg !1338
  %puts1.i = call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str236, i64 0, i64 0)) #4, !dbg !1339
  %puts2.i = call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str238, i64 0, i64 0)) #4, !dbg !1340
  %264 = load i8** getelementptr inbounds ([151 x %struct.Mapping]* @Map, i64 0, i64 0, i32 0), align 16, !dbg !1341, !tbaa !833
  %cmp4.i = icmp eq i8* %264, null, !dbg !1341
  br i1 %cmp4.i, label %DisplayEncoderParams.exit, label %while.body.i188, !dbg !1341

while.body.i188:                                  ; preds = %if.then126, %if.end38.i
  %indvars.iv.i186 = phi i64 [ %indvars.iv.next.i191, %if.end38.i ], [ 0, %if.then126 ]
  %265 = phi i8* [ %274, %if.end38.i ], [ %264, %if.then126 ]
  %Type.i187 = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i186, i32 2, !dbg !1342
  %266 = load i32* %Type.i187, align 8, !dbg !1342, !tbaa !848
  switch i32 %266, label %if.end38.i [
    i32 0, label %if.then.i190
    i32 1, label %if.then16.i
    i32 2, label %if.then29.i
  ], !dbg !1342

if.then.i190:                                     ; preds = %while.body.i188
  %Place.i189 = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i186, i32 1, !dbg !1344
  %267 = load i8** %Place.i189, align 8, !dbg !1344, !tbaa !833
  %268 = bitcast i8* %267 to i32*, !dbg !1344
  %269 = load i32* %268, align 4, !dbg !1344, !tbaa !848
  %call11.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str223, i64 0, i64 0), i8* %265, i32 %269) #12, !dbg !1344
  br label %if.end38.i, !dbg !1344

if.then16.i:                                      ; preds = %while.body.i188
  %Place22.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i186, i32 1, !dbg !1345
  %270 = load i8** %Place22.i, align 8, !dbg !1345, !tbaa !833
  %call23.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str224, i64 0, i64 0), i8* %265, i8* %270) #12, !dbg !1345
  br label %if.end38.i, !dbg !1345

if.then29.i:                                      ; preds = %while.body.i188
  %Place35.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i186, i32 1, !dbg !1346
  %271 = load i8** %Place35.i, align 8, !dbg !1346, !tbaa !833
  %272 = bitcast i8* %271 to double*, !dbg !1346
  %273 = load double* %272, align 8, !dbg !1346, !tbaa !850
  %call36.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str225, i64 0, i64 0), i8* %265, double %273) #12, !dbg !1346
  br label %if.end38.i, !dbg !1346

if.end38.i:                                       ; preds = %if.then29.i, %if.then16.i, %if.then.i190, %while.body.i188
  %indvars.iv.next.i191 = add i64 %indvars.iv.i186, 1, !dbg !1341
  %TokenName.i192 = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.next.i191, i32 0, !dbg !1341
  %274 = load i8** %TokenName.i192, align 8, !dbg !1341, !tbaa !833
  %cmp.i193 = icmp eq i8* %274, null, !dbg !1341
  br i1 %cmp.i193, label %DisplayEncoderParams.exit, label %while.body.i188, !dbg !1341

DisplayEncoderParams.exit:                        ; preds = %if.end38.i, %if.then126
  %puts3.i = call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str238, i64 0, i64 0)) #4, !dbg !1347
  br label %if.end128, !dbg !1336

if.end128:                                        ; preds = %PatchInp.exit, %DisplayEncoderParams.exit
  ret void, !dbg !1348
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #5

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: nounwind optsize uwtable
define noalias i8* @GetConfigFileContent(i8* %Filename) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %Filename}, i64 0, metadata !53), !dbg !1349
  %call = tail call %struct._IO_FILE* @fopen(i8* %Filename, i8* getelementptr inbounds ([2 x i8]* @.str162, i64 0, i64 0)) #12, !dbg !1350
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call}, i64 0, metadata !56), !dbg !1350
  %cmp = icmp eq %struct._IO_FILE* %call, null, !dbg !1350
  br i1 %cmp, label %if.then, label %if.end, !dbg !1350

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([35 x i8]* @.str163, i64 0, i64 0), i8* %Filename) #12, !dbg !1351
  br label %return, !dbg !1353

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @fseek(%struct._IO_FILE* %call, i64 0, i32 2) #12, !dbg !1354
  %cmp3 = icmp eq i32 %call2, 0, !dbg !1354
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !1354

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([39 x i8]* @.str164, i64 0, i64 0), i8* %Filename) #12, !dbg !1355
  br label %return, !dbg !1357

if.end6:                                          ; preds = %if.end
  %call7 = tail call i64 @ftell(%struct._IO_FILE* %call) #12, !dbg !1358
  tail call void @llvm.dbg.value(metadata !{i64 %call7}, i64 0, metadata !54), !dbg !1358
  %0 = icmp ugt i64 %call7, 60000, !dbg !1359
  br i1 %0, label %if.then10, label %if.end12, !dbg !1359

if.then10:                                        ; preds = %if.end6
  %call11 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([71 x i8]* @.str165, i64 0, i64 0), i64 %call7, i8* %Filename) #12, !dbg !1360
  br label %return, !dbg !1362

if.end12:                                         ; preds = %if.end6
  %call13 = tail call i32 @fseek(%struct._IO_FILE* %call, i64 0, i32 0) #12, !dbg !1363
  %cmp14 = icmp eq i32 %call13, 0, !dbg !1363
  br i1 %cmp14, label %if.end17, label %if.then15, !dbg !1363

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([39 x i8]* @.str164, i64 0, i64 0), i8* %Filename) #12, !dbg !1364
  br label %return, !dbg !1366

if.end17:                                         ; preds = %if.end12
  %add = add nsw i64 %call7, 1, !dbg !1367
  %call18 = tail call noalias i8* @malloc(i64 %add) #12, !dbg !1367
  tail call void @llvm.dbg.value(metadata !{i8* %call18}, i64 0, metadata !111), !dbg !1367
  %cmp19 = icmp eq i8* %call18, null, !dbg !1367
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !1367

if.then20:                                        ; preds = %if.end17
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str166, i64 0, i64 0)) #12, !dbg !1367
  br label %if.end21, !dbg !1367

if.end21:                                         ; preds = %if.then20, %if.end17
  %call22 = tail call i64 @fread(i8* %call18, i64 1, i64 %call7, %struct._IO_FILE* %call) #12, !dbg !1368
  tail call void @llvm.dbg.value(metadata !{i64 %call22}, i64 0, metadata !54), !dbg !1368
  %arrayidx = getelementptr inbounds i8* %call18, i64 %call22, !dbg !1369
  store i8 0, i8* %arrayidx, align 1, !dbg !1369, !tbaa !834
  %call23 = tail call i32 @fclose(%struct._IO_FILE* %call) #12, !dbg !1370
  br label %return, !dbg !1371

return:                                           ; preds = %if.end21, %if.then15, %if.then10, %if.then4, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then4 ], [ null, %if.then10 ], [ null, %if.then15 ], [ %call18, %if.end21 ]
  ret i8* %retval.0, !dbg !1372
}

; Function Attrs: optsize
declare void @error(i8*, i32) #7

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ParseContent(i8* %buf, i32 %bufsize) #2 {
entry:
  %items = alloca [10000 x i8*], align 16
  %IntContent = alloca i32, align 4
  %DoubleContent = alloca double, align 8
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !156), !dbg !1373
  call void @llvm.dbg.value(metadata !{i32 %bufsize}, i64 0, metadata !157), !dbg !1373
  %0 = bitcast [10000 x i8*]* %items to i8*, !dbg !1374
  call void @llvm.lifetime.start(i64 80000, i8* %0) #4, !dbg !1374
  call void @llvm.dbg.declare(metadata !{[10000 x i8*]* %items}, metadata !158), !dbg !1374
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !163), !dbg !1375
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !164), !dbg !1376
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !165), !dbg !1376
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !166), !dbg !1377
  %idxprom = sext i32 %bufsize to i64, !dbg !1378
  %arrayidx = getelementptr inbounds i8* %buf, i64 %idxprom, !dbg !1378
  call void @llvm.dbg.value(metadata !{i8* %arrayidx}, i64 0, metadata !167), !dbg !1378
  call void @llvm.dbg.declare(metadata !{i32* %IntContent}, metadata !168), !dbg !1379
  call void @llvm.dbg.declare(metadata !{double* %DoubleContent}, metadata !169), !dbg !1380
  %cmp154167173 = icmp sgt i32 %bufsize, 0, !dbg !1381
  br i1 %cmp154167173, label %while.body.lr.ph.lr.ph, label %for.end, !dbg !1381

while.body.lr.ph.lr.ph:                           ; preds = %entry, %while.cond.outer.backedge
  %item.0.ph177 = phi i32 [ %item.0.ph.be, %while.cond.outer.backedge ], [ 0, %entry ]
  %p.0.ph176 = phi i8* [ %p.0.ph.be, %while.cond.outer.backedge ], [ %buf, %entry ]
  %InItem.0.ph175 = phi i32 [ %InItem.0.ph.be, %while.cond.outer.backedge ], [ 0, %entry ]
  %InString.0.ph174 = phi i32 [ %InString.0.ph.be, %while.cond.outer.backedge ], [ 0, %entry ]
  %tobool = icmp eq i32 %InString.0.ph174, 0, !dbg !1382
  br label %while.body.lr.ph, !dbg !1381

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.end30
  %item.0.ph148170 = phi i32 [ %item.0.ph177, %while.body.lr.ph.lr.ph ], [ %item.2, %if.end30 ]
  %p.0.ph147169 = phi i8* [ %p.0.ph176, %while.body.lr.ph.lr.ph ], [ %incdec.ptr31, %if.end30 ]
  %InItem.0.ph146168 = phi i32 [ %InItem.0.ph175, %while.body.lr.ph.lr.ph ], [ %InItem.2, %if.end30 ]
  br label %while.body, !dbg !1381

while.body:                                       ; preds = %while.cond.backedge, %while.body.lr.ph
  %p.0155 = phi i8* [ %p.0.ph147169, %while.body.lr.ph ], [ %p.0.be, %while.cond.backedge ]
  %1 = load i8* %p.0155, align 1, !dbg !1385, !tbaa !834
  %conv = sext i8 %1 to i32, !dbg !1385
  switch i32 %conv, label %sw.default [
    i32 13, label %sw.bb
    i32 35, label %sw.bb1
    i32 10, label %sw.bb10
    i32 32, label %sw.bb12
    i32 9, label %sw.bb12
    i32 34, label %sw.bb15
  ], !dbg !1385

sw.bb:                                            ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8* %p.0155, i64 1, !dbg !1386
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !166), !dbg !1386
  br label %while.cond.backedge, !dbg !1387

while.cond.backedge:                              ; preds = %sw.bb, %sw.bb12
  %p.0.be = phi i8* [ %incdec.ptr13, %sw.bb12 ], [ %incdec.ptr, %sw.bb ]
  %cmp = icmp ult i8* %p.0.be, %arrayidx, !dbg !1381
  br i1 %cmp, label %while.body, label %while.end32, !dbg !1381

sw.bb1:                                           ; preds = %while.body
  store i8 0, i8* %p.0155, align 1, !dbg !1388, !tbaa !834
  br label %while.cond2, !dbg !1389

while.cond2:                                      ; preds = %while.cond2.while.cond2_crit_edge, %sw.bb1
  %2 = phi i1 [ true, %sw.bb1 ], [ %phitmp, %while.cond2.while.cond2_crit_edge ]
  %p.1 = phi i8* [ %p.0155, %sw.bb1 ], [ %incdec.ptr9, %while.cond2.while.cond2_crit_edge ]
  %cmp6 = icmp ult i8* %p.1, %arrayidx, !dbg !1389
  %or.cond = and i1 %2, %cmp6, !dbg !1389
  %incdec.ptr9 = getelementptr inbounds i8* %p.1, i64 1, !dbg !1390
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr9}, i64 0, metadata !166), !dbg !1390
  br i1 %or.cond, label %while.cond2.while.cond2_crit_edge, label %while.cond.outer.backedge, !dbg !1389

while.cond2.while.cond2_crit_edge:                ; preds = %while.cond2
  %.pre = load i8* %incdec.ptr9, align 1, !dbg !1389, !tbaa !834
  %phitmp = icmp ne i8 %.pre, 10, !dbg !1389
  br label %while.cond2, !dbg !1389

sw.bb10:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !165), !dbg !1391
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !164), !dbg !1392
  %incdec.ptr11 = getelementptr inbounds i8* %p.0155, i64 1, !dbg !1393
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr11}, i64 0, metadata !166), !dbg !1393
  store i8 0, i8* %p.0155, align 1, !dbg !1393, !tbaa !834
  br label %while.cond.outer.backedge, !dbg !1394

sw.bb12:                                          ; preds = %while.body, %while.body
  %incdec.ptr13 = getelementptr inbounds i8* %p.0155, i64 1, !dbg !1395
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr13}, i64 0, metadata !166), !dbg !1395
  br i1 %tobool, label %if.else, label %while.cond.backedge, !dbg !1382

if.else:                                          ; preds = %sw.bb12
  store i8 0, i8* %p.0155, align 1, !dbg !1396, !tbaa !834
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !165), !dbg !1398
  br label %while.cond.outer.backedge

sw.bb15:                                          ; preds = %while.body
  %incdec.ptr16 = getelementptr inbounds i8* %p.0155, i64 1, !dbg !1399
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr16}, i64 0, metadata !166), !dbg !1399
  store i8 0, i8* %p.0155, align 1, !dbg !1399, !tbaa !834
  br i1 %tobool, label %if.then18, label %if.end22, !dbg !1400

if.then18:                                        ; preds = %sw.bb15
  %inc = add nsw i32 %item.0.ph148170, 1, !dbg !1401
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !163), !dbg !1401
  %idxprom19 = sext i32 %item.0.ph148170 to i64, !dbg !1401
  %arrayidx20 = getelementptr inbounds [10000 x i8*]* %items, i64 0, i64 %idxprom19, !dbg !1401
  store i8* %incdec.ptr16, i8** %arrayidx20, align 8, !dbg !1401, !tbaa !833
  %neg = xor i32 %InItem.0.ph146168, -1, !dbg !1403
  call void @llvm.dbg.value(metadata !{i32 %neg}, i64 0, metadata !165), !dbg !1403
  br label %if.end22, !dbg !1404

if.end22:                                         ; preds = %sw.bb15, %if.then18
  %InItem.1 = phi i32 [ %neg, %if.then18 ], [ 0, %sw.bb15 ]
  %item.1 = phi i32 [ %inc, %if.then18 ], [ %item.0.ph148170, %sw.bb15 ]
  %neg23 = xor i32 %InString.0.ph174, -1, !dbg !1405
  call void @llvm.dbg.value(metadata !{i32 %neg23}, i64 0, metadata !164), !dbg !1405
  br label %while.cond.outer.backedge, !dbg !1406

while.cond.outer.backedge:                        ; preds = %while.cond2, %if.end22, %if.else, %sw.bb10
  %InString.0.ph.be = phi i32 [ %neg23, %if.end22 ], [ 0, %if.else ], [ 0, %sw.bb10 ], [ 0, %while.cond2 ]
  %InItem.0.ph.be = phi i32 [ %InItem.1, %if.end22 ], [ 0, %if.else ], [ 0, %sw.bb10 ], [ 0, %while.cond2 ]
  %p.0.ph.be = phi i8* [ %incdec.ptr16, %if.end22 ], [ %incdec.ptr13, %if.else ], [ %incdec.ptr11, %sw.bb10 ], [ %p.1, %while.cond2 ]
  %item.0.ph.be = phi i32 [ %item.1, %if.end22 ], [ %item.0.ph148170, %if.else ], [ %item.0.ph148170, %sw.bb10 ], [ %item.0.ph148170, %while.cond2 ]
  %cmp154167 = icmp ult i8* %p.0.ph.be, %arrayidx, !dbg !1381
  br i1 %cmp154167, label %while.body.lr.ph.lr.ph, label %while.end32, !dbg !1381

sw.default:                                       ; preds = %while.body
  %tobool24 = icmp eq i32 %InItem.0.ph146168, 0, !dbg !1407
  br i1 %tobool24, label %if.then25, label %if.end30, !dbg !1407

if.then25:                                        ; preds = %sw.default
  %inc26 = add nsw i32 %item.0.ph148170, 1, !dbg !1408
  call void @llvm.dbg.value(metadata !{i32 %inc26}, i64 0, metadata !163), !dbg !1408
  %idxprom27 = sext i32 %item.0.ph148170 to i64, !dbg !1408
  %arrayidx28 = getelementptr inbounds [10000 x i8*]* %items, i64 0, i64 %idxprom27, !dbg !1408
  store i8* %p.0155, i8** %arrayidx28, align 8, !dbg !1408, !tbaa !833
  call void @llvm.dbg.value(metadata !1410, i64 0, metadata !165), !dbg !1411
  br label %if.end30, !dbg !1412

if.end30:                                         ; preds = %sw.default, %if.then25
  %InItem.2 = phi i32 [ %InItem.0.ph146168, %sw.default ], [ -1, %if.then25 ]
  %item.2 = phi i32 [ %item.0.ph148170, %sw.default ], [ %inc26, %if.then25 ]
  %incdec.ptr31 = getelementptr inbounds i8* %p.0155, i64 1, !dbg !1413
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr31}, i64 0, metadata !166), !dbg !1413
  %cmp154 = icmp ult i8* %incdec.ptr31, %arrayidx, !dbg !1381
  br i1 %cmp154, label %while.body.lr.ph, label %while.end32, !dbg !1381

while.end32:                                      ; preds = %if.end30, %while.cond.outer.backedge, %while.cond.backedge
  %item.0.ph148166 = phi i32 [ %item.0.ph148170, %while.cond.backedge ], [ %item.2, %if.end30 ], [ %item.0.ph.be, %while.cond.outer.backedge ]
  %dec = add nsw i32 %item.0.ph148166, -1, !dbg !1414
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !163), !dbg !1414
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !171), !dbg !1415
  %cmp33143 = icmp sgt i32 %dec, 0, !dbg !1415
  br i1 %cmp33143, label %for.body, label %for.end, !dbg !1415

for.body:                                         ; preds = %for.inc, %while.end32
  %indvars.iv = phi i64 [ 0, %while.end32 ], [ %indvars.iv.next, %for.inc ]
  %arrayidx36 = getelementptr inbounds [10000 x i8*]* %items, i64 0, i64 %indvars.iv, !dbg !1417
  %3 = load i8** %arrayidx36, align 8, !dbg !1417, !tbaa !833
  call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !1419) #4, !dbg !1420
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !1421) #4, !dbg !1422
  %4 = load i8** getelementptr inbounds ([151 x %struct.Mapping]* @Map, i64 0, i64 0, i32 0), align 16, !dbg !1423, !tbaa !833
  %cmp7.i = icmp eq i8* %4, null, !dbg !1423
  br i1 %cmp7.i, label %if.then39, label %while.body.i, !dbg !1423

while.cond.i:                                     ; preds = %while.body.i
  %inc.i = add nsw i32 %i.08.i, 1, !dbg !1424
  %TokenName.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.next.i, i32 0, !dbg !1423
  %5 = load i8** %TokenName.i, align 8, !dbg !1423, !tbaa !833
  %cmp.i = icmp eq i8* %5, null, !dbg !1423
  br i1 %cmp.i, label %if.then39, label %while.body.i, !dbg !1423

while.body.i:                                     ; preds = %for.body, %while.cond.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.cond.i ], [ 0, %for.body ]
  %6 = phi i8* [ %5, %while.cond.i ], [ %4, %for.body ]
  %i.08.i = phi i32 [ %inc.i, %while.cond.i ], [ 0, %for.body ]
  %call.i = call i32 @strcmp(i8* %6, i8* %3) #10, !dbg !1425
  %cmp4.i = icmp eq i32 %call.i, 0, !dbg !1425
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !1423
  br i1 %cmp4.i, label %ParameterNameToMapIndex.exit, label %while.cond.i, !dbg !1425

ParameterNameToMapIndex.exit:                     ; preds = %while.body.i
  call void @llvm.dbg.value(metadata !{i32 %retval.0.i140}, i64 0, metadata !162), !dbg !1417
  %cmp37 = icmp slt i32 %i.08.i, 0, !dbg !1417
  br i1 %cmp37, label %if.then39, label %if.end43, !dbg !1417

if.then39:                                        ; preds = %while.cond.i, %for.body, %ParameterNameToMapIndex.exit
  %retval.0.i141 = phi i32 [ %i.08.i, %ParameterNameToMapIndex.exit ], [ -1, %for.body ], [ -1, %while.cond.i ]
  %call42 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([67 x i8]* @.str226, i64 0, i64 0), i8* %3) #12, !dbg !1426
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #12, !dbg !1428
  br label %if.end43, !dbg !1429

if.end43:                                         ; preds = %if.then39, %ParameterNameToMapIndex.exit
  %retval.0.i140 = phi i32 [ %retval.0.i141, %if.then39 ], [ %i.08.i, %ParameterNameToMapIndex.exit ]
  %7 = add nsw i64 %indvars.iv, 1, !dbg !1430
  %arrayidx45 = getelementptr inbounds [10000 x i8*]* %items, i64 0, i64 %7, !dbg !1430
  %8 = load i8** %arrayidx45, align 8, !dbg !1430, !tbaa !833
  %call46 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8]* @.str227, i64 0, i64 0), i8* %8) #10, !dbg !1430
  %tobool47 = icmp eq i32 %call46, 0, !dbg !1430
  br i1 %tobool47, label %if.end50, label %if.then48, !dbg !1430

if.then48:                                        ; preds = %if.end43
  %call49 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([78 x i8]* @.str228, i64 0, i64 0)) #12, !dbg !1431
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #12, !dbg !1433
  br label %if.end50, !dbg !1434

if.end50:                                         ; preds = %if.end43, %if.then48
  %idxprom51 = sext i32 %retval.0.i140 to i64, !dbg !1435
  %Type = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %idxprom51, i32 2, !dbg !1435
  %9 = load i32* %Type, align 8, !dbg !1435, !tbaa !848
  switch i32 %9, label %for.inc [
    i32 0, label %sw.bb53
    i32 1, label %sw.bb71
    i32 2, label %sw.bb80
  ], !dbg !1435

sw.bb53:                                          ; preds = %if.end50
  %10 = add nsw i64 %indvars.iv, 2, !dbg !1436
  %arrayidx56 = getelementptr inbounds [10000 x i8*]* %items, i64 0, i64 %10, !dbg !1436
  %11 = load i8** %arrayidx56, align 8, !dbg !1436, !tbaa !833
  %call57 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8]* @.str178, i64 0, i64 0), i32* %IntContent) #12, !dbg !1436
  %cmp58 = icmp eq i32 %call57, 1, !dbg !1436
  br i1 %cmp58, label %if.end67, label %if.then60, !dbg !1436

if.then60:                                        ; preds = %sw.bb53
  %call66 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([74 x i8]* @.str229, i64 0, i64 0), i8* %3, i8* %11) #12, !dbg !1438
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #12, !dbg !1440
  br label %if.end67, !dbg !1441

if.end67:                                         ; preds = %sw.bb53, %if.then60
  call void @llvm.dbg.value(metadata !{i32* %IntContent}, i64 0, metadata !168), !dbg !1442
  %12 = load i32* %IntContent, align 4, !dbg !1442, !tbaa !848
  %Place = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %idxprom51, i32 1, !dbg !1442
  %13 = load i8** %Place, align 8, !dbg !1442, !tbaa !833
  %14 = bitcast i8* %13 to i32*, !dbg !1442
  store i32 %12, i32* %14, align 4, !dbg !1442, !tbaa !848
  %putchar138 = call i32 @putchar(i32 46) #4, !dbg !1443
  br label %for.inc, !dbg !1444

sw.bb71:                                          ; preds = %if.end50
  %Place74 = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %idxprom51, i32 1, !dbg !1445
  %15 = load i8** %Place74, align 8, !dbg !1445, !tbaa !833
  %16 = add nsw i64 %indvars.iv, 2, !dbg !1445
  %arrayidx77 = getelementptr inbounds [10000 x i8*]* %items, i64 0, i64 %16, !dbg !1445
  %17 = load i8** %arrayidx77, align 8, !dbg !1445, !tbaa !833
  %call78 = call i8* @strncpy(i8* %15, i8* %17, i64 200) #12, !dbg !1445
  %putchar137 = call i32 @putchar(i32 46) #4, !dbg !1446
  br label %for.inc, !dbg !1447

sw.bb80:                                          ; preds = %if.end50
  %18 = add nsw i64 %indvars.iv, 2, !dbg !1448
  %arrayidx83 = getelementptr inbounds [10000 x i8*]* %items, i64 0, i64 %18, !dbg !1448
  %19 = load i8** %arrayidx83, align 8, !dbg !1448, !tbaa !833
  %call84 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %19, i8* getelementptr inbounds ([4 x i8]* @.str231, i64 0, i64 0), double* %DoubleContent) #12, !dbg !1448
  %cmp85 = icmp eq i32 %call84, 1, !dbg !1448
  br i1 %cmp85, label %if.end94, label %if.then87, !dbg !1448

if.then87:                                        ; preds = %sw.bb80
  %call93 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([74 x i8]* @.str229, i64 0, i64 0), i8* %3, i8* %19) #12, !dbg !1449
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #12, !dbg !1451
  br label %if.end94, !dbg !1452

if.end94:                                         ; preds = %sw.bb80, %if.then87
  call void @llvm.dbg.value(metadata !{double* %DoubleContent}, i64 0, metadata !169), !dbg !1453
  %20 = load double* %DoubleContent, align 8, !dbg !1453, !tbaa !850
  %Place97 = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %idxprom51, i32 1, !dbg !1453
  %21 = load i8** %Place97, align 8, !dbg !1453, !tbaa !833
  %22 = bitcast i8* %21 to double*, !dbg !1453
  store double %20, double* %22, align 8, !dbg !1453, !tbaa !850
  %putchar = call i32 @putchar(i32 46) #4, !dbg !1454
  br label %for.inc, !dbg !1455

for.inc:                                          ; preds = %if.end67, %sw.bb71, %if.end94, %if.end50
  %indvars.iv.next = add i64 %indvars.iv, 3, !dbg !1415
  %23 = trunc i64 %indvars.iv.next to i32, !dbg !1415
  %cmp33 = icmp slt i32 %23, %dec, !dbg !1415
  br i1 %cmp33, label %for.body, label %for.end, !dbg !1415

for.end:                                          ; preds = %entry, %for.inc, %while.end32
  %24 = load %struct.InputParameters** @input, align 8, !dbg !1456, !tbaa !833
  %25 = bitcast %struct.InputParameters* %24 to i8*, !dbg !1456
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3592, i32 8, i1 false), !dbg !1456
  call void @llvm.lifetime.end(i64 80000, i8* %0) #4, !dbg !1457
  ret void, !dbg !1457
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #5

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #7

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #5

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #5

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind optsize readnone uwtable
define i32 @CeilLog2(i32 %uiVal) #8 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %uiVal}, i64 0, metadata !117), !dbg !1458
  %sub = add i32 %uiVal, -1, !dbg !1459
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !118), !dbg !1459
  tail call void @llvm.dbg.value(metadata !22, i64 0, metadata !119), !dbg !1460
  %cmp3 = icmp eq i32 %sub, 0, !dbg !1461
  br i1 %cmp3, label %while.end, label %while.body, !dbg !1461

while.body:                                       ; preds = %entry, %while.body
  %uiRet.05 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %uiTmp.04 = phi i32 [ %shr, %while.body ], [ %sub, %entry ]
  %shr = lshr i32 %uiTmp.04, 1, !dbg !1462
  tail call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !118), !dbg !1462
  %inc = add i32 %uiRet.05, 1, !dbg !1463
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !119), !dbg !1463
  %cmp = icmp eq i32 %shr, 0, !dbg !1461
  br i1 %cmp, label %while.end, label %while.body, !dbg !1461

while.end:                                        ; preds = %while.body, %entry
  %uiRet.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  ret i32 %uiRet.0.lcssa, !dbg !1464
}

; Function Attrs: nounwind optsize uwtable
define void @PatchInputNoFrames() #2 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !dbg !1465, !tbaa !833
  %no_frames = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 2, !dbg !1465
  %1 = load i32* %no_frames, align 4, !dbg !1465, !tbaa !848
  %sub = add nsw i32 %1, -1, !dbg !1465
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 99, !dbg !1465
  %2 = load i32* %NumFramesInELSubSeq, align 4, !dbg !1465, !tbaa !848
  %add = add nsw i32 %2, 1, !dbg !1465
  %mul = mul nsw i32 %add, %sub, !dbg !1465
  %add1 = add nsw i32 %mul, 1, !dbg !1465
  store i32 %add1, i32* %no_frames, align 4, !dbg !1465, !tbaa !848
  %NumFrameIn2ndIGOP = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 100, !dbg !1466
  %3 = load i32* %NumFrameIn2ndIGOP, align 4, !dbg !1466, !tbaa !848
  %tobool = icmp eq i32 %3, 0, !dbg !1466
  br i1 %tobool, label %if.end, label %if.then, !dbg !1466

if.then:                                          ; preds = %entry
  %sub4 = add nsw i32 %3, -1, !dbg !1467
  %mul7 = mul nsw i32 %add, %sub4, !dbg !1467
  %add8 = add nsw i32 %mul7, 1, !dbg !1467
  store i32 %add8, i32* %NumFrameIn2ndIGOP, align 4, !dbg !1467, !tbaa !848
  br label %if.end, !dbg !1467

if.end:                                           ; preds = %entry, %if.then
  store i32 %add1, i32* @FirstFrameIn2ndIGOP, align 4, !dbg !1468, !tbaa !848
  ret void, !dbg !1469
}

; Function Attrs: optsize
declare i32 @open(i8* nocapture, i32, ...) #7

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #5

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

attributes #0 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind optsize }
attributes #10 = { nounwind optsize readonly }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !22, metadata !23, metadata !178, metadata !22, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !8, metadata !13, metadata !18}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!7 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!8 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 178, i64 32, i64 32, i32 0, i32 0, null, metadata !10, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 178, size 32, align 32, offset 0] [from ]
!9 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!10 = metadata !{metadata !11, metadata !12}
!11 = metadata !{i32 786472, metadata !"UVLC", i64 0} ; [ DW_TAG_enumerator ] [UVLC :: 0]
!12 = metadata !{i32 786472, metadata !"CABAC", i64 1} ; [ DW_TAG_enumerator ] [CABAC :: 1]
!13 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 111, i64 32, i64 32, i32 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 111, size 32, align 32, offset 0] [from ]
!14 = metadata !{metadata !15, metadata !16, metadata !17}
!15 = metadata !{i32 786472, metadata !"FRAME_CODING", i64 0} ; [ DW_TAG_enumerator ] [FRAME_CODING :: 0]
!16 = metadata !{i32 786472, metadata !"FIELD_CODING", i64 1} ; [ DW_TAG_enumerator ] [FIELD_CODING :: 1]
!17 = metadata !{i32 786472, metadata !"ADAPTIVE_CODING", i64 2} ; [ DW_TAG_enumerator ] [ADAPTIVE_CODING :: 2]
!18 = metadata !{i32 786436, metadata !9, null, metadata !"", i32 104, i64 32, i64 32, i32 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 104, size 32, align 32, offset 0] [from ]
!19 = metadata !{metadata !20, metadata !21}
!20 = metadata !{i32 786472, metadata !"PAR_OF_ANNEXB", i64 0} ; [ DW_TAG_enumerator ] [PAR_OF_ANNEXB :: 0]
!21 = metadata !{i32 786472, metadata !"PAR_OF_RTP", i64 1} ; [ DW_TAG_enumerator ] [PAR_OF_RTP :: 1]
!22 = metadata !{i32 0}
!23 = metadata !{metadata !24, metadata !28, metadata !49, metadata !112, metadata !120, metadata !121, metadata !136, metadata !137, metadata !138, metadata !144, metadata !149, metadata !152, metadata !172}
!24 = metadata !{i32 786478, metadata !1, metadata !25, metadata !"JMHelpExit", metadata !"JMHelpExit", metadata !"", i32 102, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @JMHelpExit, null, null, metadata !22, i32 103} ; [ DW_TAG_subprogram ] [line 102] [def] [scope 103] [JMHelpExit]
!25 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!26 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!27 = metadata !{null}
!28 = metadata !{i32 786478, metadata !1, metadata !25, metadata !"Configure", metadata !"Configure", metadata !"", i32 141, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i8**)* @Configure, null, null, metadata !35, i32 142} ; [ DW_TAG_subprogram ] [line 141] [def] [scope 142] [Configure]
!29 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!30 = metadata !{null, metadata !31, metadata !32}
!31 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!34 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!35 = metadata !{metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !48}
!36 = metadata !{i32 786689, metadata !28, metadata !"ac", metadata !25, i32 16777357, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ac] [line 141]
!37 = metadata !{i32 786689, metadata !28, metadata !"av", metadata !25, i32 33554573, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [av] [line 141]
!38 = metadata !{i32 786688, metadata !28, metadata !"content", metadata !25, i32 143, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [content] [line 143]
!39 = metadata !{i32 786688, metadata !28, metadata !"CLcount", metadata !25, i32 144, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [CLcount] [line 144]
!40 = metadata !{i32 786688, metadata !28, metadata !"ContentLen", metadata !25, i32 144, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ContentLen] [line 144]
!41 = metadata !{i32 786688, metadata !28, metadata !"NumberParams", metadata !25, i32 144, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NumberParams] [line 144]
!42 = metadata !{i32 786688, metadata !28, metadata !"filename", metadata !25, i32 145, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 145]
!43 = metadata !{i32 786688, metadata !44, metadata !"source", metadata !25, i32 226, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [source] [line 226]
!44 = metadata !{i32 786443, metadata !1, metadata !45, i32 225, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 205, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!46 = metadata !{i32 786443, metadata !1, metadata !47, i32 203, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!47 = metadata !{i32 786443, metadata !1, metadata !28, i32 186, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!48 = metadata !{i32 786688, metadata !44, metadata !"destin", metadata !25, i32 227, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [destin] [line 227]
!49 = metadata !{i32 786478, metadata !1, metadata !25, metadata !"GetConfigFileContent", metadata !"GetConfigFileContent", metadata !"", i32 271, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*)* @GetConfigFileContent, null, null, metadata !52, i32 272} ; [ DW_TAG_subprogram ] [line 271] [def] [scope 272] [GetConfigFileContent]
!50 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{metadata !33, metadata !33}
!52 = metadata !{metadata !53, metadata !54, metadata !56, metadata !111}
!53 = metadata !{i32 786689, metadata !49, metadata !"Filename", metadata !25, i32 16777487, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Filename] [line 271]
!54 = metadata !{i32 786688, metadata !49, metadata !"FileSize", metadata !25, i32 273, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [FileSize] [line 273]
!55 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!56 = metadata !{i32 786688, metadata !49, metadata !"f", metadata !25, i32 274, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 274]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!58 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!59 = metadata !{i32 786451, metadata !60, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !61, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!60 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !82, metadata !83, metadata !84, metadata !85, metadata !87, metadata !89, metadata !91, metadata !95, metadata !97, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !106, metadata !107}
!62 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!63 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !33} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!64 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !33} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!65 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!66 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!67 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !33} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!68 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !33} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!69 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !33} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!70 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !33} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!71 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!72 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!73 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !33} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!74 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !75} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!76 = metadata !{i32 786451, metadata !60, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !77, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!77 = metadata !{metadata !78, metadata !79, metadata !81}
!78 = metadata !{i32 786445, metadata !60, metadata !76, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!79 = metadata !{i32 786445, metadata !60, metadata !76, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !80} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!81 = metadata !{i32 786445, metadata !60, metadata !76, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!82 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !80} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!83 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !31} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!84 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !31} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!85 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !86} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!86 = metadata !{i32 786454, metadata !60, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!87 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !88} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!88 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!89 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !90} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!90 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!91 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !92} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!92 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !34, metadata !93, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!93 = metadata !{metadata !94}
!94 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!95 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !96} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!96 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!97 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !98} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!98 = metadata !{i32 786454, metadata !60, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!99 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!100 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!101 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!102 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !96} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!103 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !104} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!104 = metadata !{i32 786454, metadata !60, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !105} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!105 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!106 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !31} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!107 = metadata !{i32 786445, metadata !60, metadata !59, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !108} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!108 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !34, metadata !109, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!111 = metadata !{i32 786688, metadata !49, metadata !"buf", metadata !25, i32 275, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 275]
!112 = metadata !{i32 786478, metadata !1, metadata !25, metadata !"CeilLog2", metadata !"CeilLog2", metadata !"", i32 599, metadata !113, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @CeilLog2, null, null, metadata !116, i32 600} ; [ DW_TAG_subprogram ] [line 599] [def] [scope 600] [CeilLog2]
!113 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!114 = metadata !{metadata !115, metadata !115}
!115 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!116 = metadata !{metadata !117, metadata !118, metadata !119}
!117 = metadata !{i32 786689, metadata !112, metadata !"uiVal", metadata !25, i32 16777815, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [uiVal] [line 599]
!118 = metadata !{i32 786688, metadata !112, metadata !"uiTmp", metadata !25, i32 601, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uiTmp] [line 601]
!119 = metadata !{i32 786688, metadata !112, metadata !"uiRet", metadata !25, i32 602, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uiRet] [line 602]
!120 = metadata !{i32 786478, metadata !1, metadata !25, metadata !"PatchInputNoFrames", metadata !"PatchInputNoFrames", metadata !"", i32 1038, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void ()* @PatchInputNoFrames, null, null, metadata !22, i32 1039} ; [ DW_TAG_subprogram ] [line 1038] [def] [scope 1039] [PatchInputNoFrames]
!121 = metadata !{i32 786478, metadata !1, metadata !25, metadata !"PatchInp", metadata !"PatchInp", metadata !"", i32 619, metadata !26, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !122, i32 620} ; [ DW_TAG_subprogram ] [line 619] [local] [def] [scope 620] [PatchInp]
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !132}
!123 = metadata !{i32 786688, metadata !121, metadata !"bitdepth_qp_scale", metadata !25, i32 621, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bitdepth_qp_scale] [line 621]
!124 = metadata !{i32 786688, metadata !121, metadata !"sgfile", metadata !25, i32 624, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sgfile] [line 624]
!125 = metadata !{i32 786688, metadata !121, metadata !"i", metadata !25, i32 625, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 625]
!126 = metadata !{i32 786688, metadata !121, metadata !"frame_mb_only", metadata !25, i32 626, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frame_mb_only] [line 626]
!127 = metadata !{i32 786688, metadata !121, metadata !"mb_width", metadata !25, i32 627, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_width] [line 627]
!128 = metadata !{i32 786688, metadata !121, metadata !"mb_height", metadata !25, i32 627, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mb_height] [line 627]
!129 = metadata !{i32 786688, metadata !121, metadata !"mapunit_height", metadata !25, i32 627, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mapunit_height] [line 627]
!130 = metadata !{i32 786688, metadata !131, metadata !"storedBplus1", metadata !25, i32 684, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storedBplus1] [line 684]
!131 = metadata !{i32 786443, metadata !1, metadata !121, i32 683, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!132 = metadata !{i32 786688, metadata !133, metadata !"tmp", metadata !25, i32 863, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 863]
!133 = metadata !{i32 786443, metadata !1, metadata !134, i32 862, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!134 = metadata !{i32 786443, metadata !1, metadata !135, i32 827, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!135 = metadata !{i32 786443, metadata !1, metadata !121, i32 820, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!136 = metadata !{i32 786478, metadata !1, metadata !25, metadata !"LevelCheck", metadata !"LevelCheck", metadata !"", i32 1140, metadata !26, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !22, i32 1141} ; [ DW_TAG_subprogram ] [line 1140] [local] [def] [scope 1141] [LevelCheck]
!137 = metadata !{i32 786478, metadata !1, metadata !25, metadata !"ProfileCheck", metadata !"ProfileCheck", metadata !"", i32 1050, metadata !26, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !22, i32 1051} ; [ DW_TAG_subprogram ] [line 1050] [local] [def] [scope 1051] [ProfileCheck]
!138 = metadata !{i32 786478, metadata !1, metadata !25, metadata !"TestEncoderParams", metadata !"TestEncoderParams", metadata !"", i32 498, metadata !139, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !141, i32 499} ; [ DW_TAG_subprogram ] [line 498] [local] [def] [scope 499] [TestEncoderParams]
!139 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !140, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!140 = metadata !{metadata !31, metadata !31}
!141 = metadata !{metadata !142, metadata !143}
!142 = metadata !{i32 786689, metadata !138, metadata !"bitdepth_qp_scale", metadata !25, i32 16777714, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bitdepth_qp_scale] [line 498]
!143 = metadata !{i32 786688, metadata !138, metadata !"i", metadata !25, i32 500, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 500]
!144 = metadata !{i32 786478, metadata !1, metadata !25, metadata !"DisplayEncoderParams", metadata !"DisplayEncoderParams", metadata !"", i32 572, metadata !145, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !147, i32 573} ; [ DW_TAG_subprogram ] [line 572] [local] [def] [scope 573] [DisplayEncoderParams]
!145 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!146 = metadata !{metadata !31}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 786688, metadata !144, metadata !"i", metadata !25, i32 574, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 574]
!149 = metadata !{i32 786478, metadata !1, metadata !25, metadata !"InitEncoderParams", metadata !"InitEncoderParams", metadata !"", i32 475, metadata !145, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !150, i32 476} ; [ DW_TAG_subprogram ] [line 475] [local] [def] [scope 476] [InitEncoderParams]
!150 = metadata !{metadata !151}
!151 = metadata !{i32 786688, metadata !149, metadata !"i", metadata !25, i32 477, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 477]
!152 = metadata !{i32 786478, metadata !1, metadata !25, metadata !"ParseContent", metadata !"ParseContent", metadata !"", i32 328, metadata !153, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @ParseContent, null, null, metadata !155, i32 329} ; [ DW_TAG_subprogram ] [line 328] [local] [def] [scope 329] [ParseContent]
!153 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!154 = metadata !{null, metadata !33, metadata !31}
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !171}
!156 = metadata !{i32 786689, metadata !152, metadata !"buf", metadata !25, i32 16777544, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 328]
!157 = metadata !{i32 786689, metadata !152, metadata !"bufsize", metadata !25, i32 33554760, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufsize] [line 328]
!158 = metadata !{i32 786688, metadata !152, metadata !"items", metadata !25, i32 331, metadata !159, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [items] [line 331]
!159 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640000, i64 64, i32 0, i32 0, metadata !33, metadata !160, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640000, align 64, offset 0] [from ]
!160 = metadata !{metadata !161}
!161 = metadata !{i32 786465, i64 0, i64 10000}   ; [ DW_TAG_subrange_type ] [0, 9999]
!162 = metadata !{i32 786688, metadata !152, metadata !"MapIdx", metadata !25, i32 332, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [MapIdx] [line 332]
!163 = metadata !{i32 786688, metadata !152, metadata !"item", metadata !25, i32 333, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [item] [line 333]
!164 = metadata !{i32 786688, metadata !152, metadata !"InString", metadata !25, i32 334, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [InString] [line 334]
!165 = metadata !{i32 786688, metadata !152, metadata !"InItem", metadata !25, i32 334, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [InItem] [line 334]
!166 = metadata !{i32 786688, metadata !152, metadata !"p", metadata !25, i32 335, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 335]
!167 = metadata !{i32 786688, metadata !152, metadata !"bufend", metadata !25, i32 336, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bufend] [line 336]
!168 = metadata !{i32 786688, metadata !152, metadata !"IntContent", metadata !25, i32 337, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [IntContent] [line 337]
!169 = metadata !{i32 786688, metadata !152, metadata !"DoubleContent", metadata !25, i32 338, metadata !170, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DoubleContent] [line 338]
!170 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!171 = metadata !{i32 786688, metadata !152, metadata !"i", metadata !25, i32 339, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 339]
!172 = metadata !{i32 786478, metadata !1, metadata !25, metadata !"ParameterNameToMapIndex", metadata !"ParameterNameToMapIndex", metadata !"", i32 455, metadata !173, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !175, i32 456} ; [ DW_TAG_subprogram ] [line 455] [local] [def] [scope 456] [ParameterNameToMapIndex]
!173 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!174 = metadata !{metadata !31, metadata !33}
!175 = metadata !{metadata !176, metadata !177}
!176 = metadata !{i32 786689, metadata !172, metadata !"s", metadata !25, i32 16777671, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 455]
!177 = metadata !{i32 786688, metadata !172, metadata !"i", metadata !25, i32 457, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 457]
!178 = metadata !{metadata !179, metadata !195, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !395, metadata !397, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !442, metadata !537, metadata !538, metadata !539, metadata !541, metadata !542, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !561, metadata !562, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !577, metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !586, metadata !589, metadata !592, metadata !593, metadata !594, metadata !595, metadata !598, metadata !601, metadata !612, metadata !651, metadata !652, metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !659, metadata !660, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !669, metadata !670}
!179 = metadata !{i32 786484, i32 0, null, metadata !"Map", metadata !"Map", metadata !"", metadata !180, i32 43, metadata !182, i32 0, i32 1, [151 x %struct.Mapping]* @Map, null} ; [ DW_TAG_variable ] [Map] [line 43] [def]
!180 = metadata !{i32 786473, metadata !181}      ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.h]
!181 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!182 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 67648, i64 64, i32 0, i32 0, metadata !183, metadata !193, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 67648, align 64, offset 0] [from Mapping]
!183 = metadata !{i32 786454, metadata !181, null, metadata !"Mapping", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_typedef ] [Mapping] [line 30, size 0, align 0, offset 0] [from ]
!184 = metadata !{i32 786451, metadata !181, null, metadata !"", i32 22, i64 448, i64 64, i32 0, i32 0, null, metadata !185, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 22, size 448, align 64, offset 0] [from ]
!185 = metadata !{metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192}
!186 = metadata !{i32 786445, metadata !181, metadata !184, metadata !"TokenName", i32 23, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [TokenName] [line 23, size 64, align 64, offset 0] [from ]
!187 = metadata !{i32 786445, metadata !181, metadata !184, metadata !"Place", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !96} ; [ DW_TAG_member ] [Place] [line 24, size 64, align 64, offset 64] [from ]
!188 = metadata !{i32 786445, metadata !181, metadata !184, metadata !"Type", i32 25, i64 32, i64 32, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [Type] [line 25, size 32, align 32, offset 128] [from int]
!189 = metadata !{i32 786445, metadata !181, metadata !184, metadata !"Default", i32 26, i64 64, i64 64, i64 192, i32 0, metadata !170} ; [ DW_TAG_member ] [Default] [line 26, size 64, align 64, offset 192] [from double]
!190 = metadata !{i32 786445, metadata !181, metadata !184, metadata !"param_limits", i32 27, i64 32, i64 32, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [param_limits] [line 27, size 32, align 32, offset 256] [from int]
!191 = metadata !{i32 786445, metadata !181, metadata !184, metadata !"min_limit", i32 28, i64 64, i64 64, i64 320, i32 0, metadata !170} ; [ DW_TAG_member ] [min_limit] [line 28, size 64, align 64, offset 320] [from double]
!192 = metadata !{i32 786445, metadata !181, metadata !184, metadata !"max_limit", i32 29, i64 64, i64 64, i64 384, i32 0, metadata !170} ; [ DW_TAG_member ] [max_limit] [line 29, size 64, align 64, offset 384] [from double]
!193 = metadata !{metadata !194}
!194 = metadata !{i32 786465, i64 0, i64 151}     ; [ DW_TAG_subrange_type ] [0, 150]
!195 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !196, i32 558, metadata !197, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!196 = metadata !{i32 786473, metadata !9}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!197 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !198} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!198 = metadata !{i32 786454, metadata !9, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!199 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !200, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!200 = metadata !{metadata !201, metadata !202, metadata !203, metadata !383, metadata !384, metadata !386, metadata !387}
!201 = metadata !{i32 786445, metadata !9, metadata !199, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!202 = metadata !{i32 786445, metadata !9, metadata !199, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !31} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!203 = metadata !{i32 786445, metadata !9, metadata !199, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !204} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!204 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !205, metadata !381, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!205 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !206} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!206 = metadata !{i32 786454, metadata !9, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !207} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!207 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !208, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!208 = metadata !{metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !292, metadata !329, metadata !356, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !378}
!209 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!210 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !31} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!211 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!212 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !31} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!213 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!214 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !31} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!215 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !216} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!216 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !217} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!217 = metadata !{i32 786454, metadata !9, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !218} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!218 = metadata !{i32 786451, metadata !9, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !219, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!219 = metadata !{metadata !220, metadata !239, metadata !264}
!220 = metadata !{i32 786445, metadata !9, metadata !218, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !221} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!221 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !222} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!222 = metadata !{i32 786454, metadata !9, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !223} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!223 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !224, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!224 = metadata !{metadata !225, metadata !226, metadata !227, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !238}
!225 = metadata !{i32 786445, metadata !9, metadata !223, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!226 = metadata !{i32 786445, metadata !9, metadata !223, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !31} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!227 = metadata !{i32 786445, metadata !9, metadata !223, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !228} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!228 = metadata !{i32 786454, metadata !9, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!229 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!230 = metadata !{i32 786445, metadata !9, metadata !223, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !31} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!231 = metadata !{i32 786445, metadata !9, metadata !223, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!232 = metadata !{i32 786445, metadata !9, metadata !223, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !228} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!233 = metadata !{i32 786445, metadata !9, metadata !223, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !228} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!234 = metadata !{i32 786445, metadata !9, metadata !223, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!235 = metadata !{i32 786445, metadata !9, metadata !223, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !31} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!236 = metadata !{i32 786445, metadata !9, metadata !223, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !237} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!237 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !228} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!238 = metadata !{i32 786445, metadata !9, metadata !223, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !31} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!239 = metadata !{i32 786445, metadata !9, metadata !218, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !240} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!240 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !241} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!241 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !242, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!242 = metadata !{metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263}
!243 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !115} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!244 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !115} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!245 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !115} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!246 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !115} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!247 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !115} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!248 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !237} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!249 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !250} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!250 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!251 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !115} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!252 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !115} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!253 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !115} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!254 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !115} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!255 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !115} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!256 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !237} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!257 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !250} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!258 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !31} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!259 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !31} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!260 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !31} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!261 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !31} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!262 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !31} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!263 = metadata !{i32 786445, metadata !9, metadata !241, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !31} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!264 = metadata !{i32 786445, metadata !9, metadata !218, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !265} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!265 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !266} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!266 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!267 = metadata !{metadata !31, metadata !268, metadata !291}
!268 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !269} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!269 = metadata !{i32 786454, metadata !9, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!270 = metadata !{i32 786451, metadata !9, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !271, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!271 = metadata !{metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !284}
!272 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!273 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !31} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!274 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!275 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !31} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!276 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!277 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !115} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!278 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!279 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !31} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!280 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !281} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!281 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !282} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!282 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!283 = metadata !{null, metadata !31, metadata !31, metadata !250, metadata !250}
!284 = metadata !{i32 786445, metadata !9, metadata !270, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !285} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!285 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !286} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!286 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!287 = metadata !{null, metadata !288, metadata !289}
!288 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !270} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!289 = metadata !{i32 786454, metadata !9, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !290} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!290 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !240} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!291 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!292 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !293} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!293 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !294} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!294 = metadata !{i32 786454, metadata !9, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !295} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!295 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !296, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!296 = metadata !{metadata !297, metadata !308, metadata !313, metadata !317, metadata !321, metadata !325, metadata !326}
!297 = metadata !{i32 786445, metadata !9, metadata !295, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !298} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!298 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !299, metadata !305, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!299 = metadata !{i32 786454, metadata !9, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !300} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!300 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !301, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!301 = metadata !{metadata !302, metadata !303, metadata !304}
!302 = metadata !{i32 786445, metadata !9, metadata !300, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!303 = metadata !{i32 786445, metadata !9, metadata !300, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !229} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!304 = metadata !{i32 786445, metadata !9, metadata !300, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !105} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!305 = metadata !{metadata !306, metadata !307}
!306 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!307 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!308 = metadata !{i32 786445, metadata !9, metadata !295, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !309} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!309 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !299, metadata !310, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!310 = metadata !{metadata !311, metadata !312}
!311 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!312 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!313 = metadata !{i32 786445, metadata !9, metadata !295, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !314} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!314 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !299, metadata !315, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!315 = metadata !{metadata !311, metadata !316}
!316 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!317 = metadata !{i32 786445, metadata !9, metadata !295, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !318} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!318 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !299, metadata !319, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!319 = metadata !{metadata !311, metadata !320}
!320 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!321 = metadata !{i32 786445, metadata !9, metadata !295, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !322} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!322 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !299, metadata !323, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!323 = metadata !{metadata !324}
!324 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!325 = metadata !{i32 786445, metadata !9, metadata !295, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !322} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!326 = metadata !{i32 786445, metadata !9, metadata !295, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !327} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!327 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !299, metadata !328, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!328 = metadata !{metadata !306}
!329 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !330} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!330 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !331} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!331 = metadata !{i32 786454, metadata !9, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !332} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!332 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !333, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!333 = metadata !{metadata !334, metadata !337, metadata !338, metadata !341, metadata !344, metadata !348, metadata !349, metadata !353, metadata !354, metadata !355}
!334 = metadata !{i32 786445, metadata !9, metadata !332, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !335} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!335 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !299, metadata !336, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!336 = metadata !{metadata !311}
!337 = metadata !{i32 786445, metadata !9, metadata !332, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !322} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!338 = metadata !{i32 786445, metadata !9, metadata !332, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !339} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!339 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !299, metadata !340, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!340 = metadata !{metadata !306, metadata !324}
!341 = metadata !{i32 786445, metadata !9, metadata !332, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !342} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!342 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !299, metadata !343, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!343 = metadata !{metadata !316, metadata !324}
!344 = metadata !{i32 786445, metadata !9, metadata !332, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !345} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!345 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !299, metadata !346, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!346 = metadata !{metadata !316, metadata !347}
!347 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!348 = metadata !{i32 786445, metadata !9, metadata !332, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !345} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!349 = metadata !{i32 786445, metadata !9, metadata !332, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !350} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!350 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !299, metadata !351, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!351 = metadata !{metadata !316, metadata !352}
!352 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!353 = metadata !{i32 786445, metadata !9, metadata !332, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !350} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!354 = metadata !{i32 786445, metadata !9, metadata !332, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !345} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!355 = metadata !{i32 786445, metadata !9, metadata !332, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !345} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!356 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !357} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!357 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !358} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!358 = metadata !{i32 786454, metadata !9, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !359} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!359 = metadata !{i32 786451, metadata !9, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !360, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!360 = metadata !{metadata !361, metadata !362, metadata !363}
!361 = metadata !{i32 786445, metadata !9, metadata !359, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!362 = metadata !{i32 786445, metadata !9, metadata !359, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !31} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!363 = metadata !{i32 786445, metadata !9, metadata !359, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !364} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!364 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !359} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!365 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !31} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!366 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !250} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!367 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !250} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!368 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !250} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!369 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !31} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!370 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !250} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!371 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !250} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!372 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !250} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!373 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !374} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!374 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !375} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!375 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !376, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!376 = metadata !{metadata !377, metadata !31}
!377 = metadata !{i32 786454, metadata !9, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!378 = metadata !{i32 786445, metadata !9, metadata !207, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !379} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!379 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !31, metadata !380, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!380 = metadata !{metadata !306, metadata !311}
!381 = metadata !{metadata !382}
!382 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!383 = metadata !{i32 786445, metadata !9, metadata !199, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !31} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!384 = metadata !{i32 786445, metadata !9, metadata !199, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !385} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!385 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!386 = metadata !{i32 786445, metadata !9, metadata !199, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !385} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!387 = metadata !{i32 786445, metadata !9, metadata !199, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !385} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!388 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !196, i32 559, metadata !197, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!389 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !196, i32 560, metadata !197, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!390 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !196, i32 561, metadata !197, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!391 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !196, i32 562, metadata !197, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!392 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !196, i32 565, metadata !393, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!393 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !394} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!394 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!395 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !196, i32 566, metadata !396, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!396 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !393} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!397 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !196, i32 567, metadata !398, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!398 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !250} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!399 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !196, i32 569, metadata !115, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!400 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !196, i32 570, metadata !115, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!401 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !196, i32 572, metadata !31, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!402 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !196, i32 572, metadata !31, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!403 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !196, i32 573, metadata !404, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!404 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !405} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!405 = metadata !{i32 786454, metadata !9, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !406} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!406 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !407, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!407 = metadata !{metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !418, metadata !419, metadata !420, metadata !421, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431, metadata !432, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !440, metadata !441}
!408 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !377} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!409 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !115} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!410 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !115} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!411 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !377} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!412 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !377} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!413 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !377} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!414 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !415} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!415 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !31, metadata !416, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!416 = metadata !{metadata !417}
!417 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!418 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !377} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!419 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !115} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!420 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !115} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!421 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !422} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!422 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !115, metadata !416, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!423 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !422} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!424 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !422} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!425 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !377} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!426 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !115} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!427 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !115} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!428 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !237} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!429 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !31} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!430 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !31} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!431 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !377} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!432 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !115} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!433 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !31} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!434 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !31} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!435 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !31} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!436 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !31} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!437 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !31} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!438 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !377} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!439 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !377} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!440 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !377} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!441 = metadata !{i32 786445, metadata !4, metadata !406, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !377} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!442 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !196, i32 574, metadata !443, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!443 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !444} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!444 = metadata !{i32 786454, metadata !9, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !445} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!445 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !446, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!446 = metadata !{metadata !447, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463, metadata !464, metadata !465, metadata !466, metadata !467, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484}
!447 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !377} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!448 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !115} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!449 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !377} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!450 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !377} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!451 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !377} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!452 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !377} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!453 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !115} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!454 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !115} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!455 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !115} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!456 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !377} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!457 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !415} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!458 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !115} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!459 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !115} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!460 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !115} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!461 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !115} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!462 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !115} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!463 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !377} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!464 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !31} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!465 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !31} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!466 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !115} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!467 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !468} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!468 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !31, metadata !469, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!469 = metadata !{metadata !470}
!470 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!471 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !115} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!472 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !377} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!473 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !115} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!474 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !115} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!475 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !377} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!476 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !377} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!477 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !377} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!478 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !377} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!479 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !115} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!480 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !115} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!481 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !115} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!482 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !115} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!483 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !377} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!484 = metadata !{i32 786445, metadata !4, metadata !445, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !485} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!485 = metadata !{i32 786454, metadata !4, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !486} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!486 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !487, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!487 = metadata !{metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536}
!488 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !377} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!489 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !115} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!490 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !115} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!491 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !115} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!492 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !377} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!493 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !377} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!494 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !377} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!495 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !115} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!496 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !377} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!497 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !377} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!498 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !115} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!499 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !115} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!500 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !115} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!501 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !377} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!502 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !115} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!503 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !115} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!504 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !377} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!505 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !115} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!506 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !115} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!507 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !377} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!508 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !377} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!509 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !510} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!510 = metadata !{i32 786454, metadata !4, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !511} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!511 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !512, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!512 = metadata !{metadata !513, metadata !514, metadata !515, metadata !516, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525}
!513 = metadata !{i32 786445, metadata !4, metadata !511, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !115} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!514 = metadata !{i32 786445, metadata !4, metadata !511, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !115} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!515 = metadata !{i32 786445, metadata !4, metadata !511, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !115} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!516 = metadata !{i32 786445, metadata !4, metadata !511, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !517} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!517 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !115, metadata !518, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!518 = metadata !{metadata !519}
!519 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!520 = metadata !{i32 786445, metadata !4, metadata !511, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !517} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!521 = metadata !{i32 786445, metadata !4, metadata !511, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !517} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!522 = metadata !{i32 786445, metadata !4, metadata !511, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !115} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!523 = metadata !{i32 786445, metadata !4, metadata !511, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !115} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!524 = metadata !{i32 786445, metadata !4, metadata !511, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !115} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!525 = metadata !{i32 786445, metadata !4, metadata !511, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !115} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!526 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !377} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!527 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !510} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!528 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !377} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!529 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !377} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!530 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !377} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!531 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !115} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!532 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !115} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!533 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !115} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!534 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !115} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!535 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !115} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!536 = metadata !{i32 786445, metadata !4, metadata !486, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !115} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!537 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !196, i32 578, metadata !31, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!538 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !196, i32 579, metadata !31, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!539 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !196, i32 583, metadata !540, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!540 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !398} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!541 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !196, i32 584, metadata !540, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!542 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !196, i32 585, metadata !543, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!543 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !540} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!544 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !196, i32 586, metadata !31, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!545 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !196, i32 587, metadata !31, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!546 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !196, i32 588, metadata !31, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!547 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !196, i32 589, metadata !31, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!548 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !196, i32 592, metadata !393, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!549 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !196, i32 593, metadata !393, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!550 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !196, i32 595, metadata !396, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!551 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !196, i32 596, metadata !396, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!552 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !196, i32 598, metadata !393, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!553 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !196, i32 599, metadata !396, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!554 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !196, i32 601, metadata !393, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!555 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !196, i32 602, metadata !396, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!556 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !196, i32 604, metadata !557, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!557 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !558} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!558 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !559} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!559 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !560} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!560 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!561 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !196, i32 605, metadata !558, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!562 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !196, i32 608, metadata !563, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!563 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !237} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!564 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !196, i32 609, metadata !563, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!565 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !196, i32 610, metadata !31, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!566 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !196, i32 612, metadata !31, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!567 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !196, i32 612, metadata !31, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!568 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !196, i32 612, metadata !31, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!569 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !196, i32 613, metadata !31, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!570 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !196, i32 613, metadata !31, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!571 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !196, i32 613, metadata !31, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!572 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !196, i32 614, metadata !31, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!573 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !196, i32 617, metadata !574, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!574 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !34, metadata !575, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!575 = metadata !{metadata !576}
!576 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!577 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !196, i32 620, metadata !578, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!578 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !31, metadata !579, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!579 = metadata !{metadata !580, metadata !580}
!580 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!581 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !196, i32 620, metadata !578, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!582 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !196, i32 620, metadata !578, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!583 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !196, i32 621, metadata !578, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!584 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !196, i32 621, metadata !578, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!585 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !196, i32 621, metadata !578, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!586 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !196, i32 622, metadata !587, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!587 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !31, metadata !588, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!588 = metadata !{metadata !306, metadata !580, metadata !580}
!589 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !196, i32 623, metadata !590, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!590 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !31, metadata !591, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!591 = metadata !{metadata !311, metadata !324, metadata !324}
!592 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !196, i32 623, metadata !590, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!593 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !196, i32 624, metadata !590, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!594 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !196, i32 624, metadata !590, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!595 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !196, i32 625, metadata !596, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!596 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !31, metadata !597, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!597 = metadata !{metadata !324, metadata !324}
!598 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !196, i32 625, metadata !599, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!599 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !31, metadata !600, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!600 = metadata !{metadata !580}
!601 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !196, i32 1201, metadata !602, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!602 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !603} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!603 = metadata !{i32 786454, metadata !9, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !604} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!604 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !605, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!605 = metadata !{metadata !606, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611}
!606 = metadata !{i32 786445, metadata !9, metadata !604, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!607 = metadata !{i32 786445, metadata !9, metadata !604, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !31} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!608 = metadata !{i32 786445, metadata !9, metadata !604, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!609 = metadata !{i32 786445, metadata !9, metadata !604, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !31} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!610 = metadata !{i32 786445, metadata !9, metadata !604, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!611 = metadata !{i32 786445, metadata !9, metadata !604, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !31} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!612 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !196, i32 1202, metadata !613, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!613 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !614} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!614 = metadata !{i32 786454, metadata !9, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !615} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!615 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !616, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!616 = metadata !{metadata !617, metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !634, metadata !635, metadata !639, metadata !640, metadata !641, metadata !642, metadata !644, metadata !645, metadata !646, metadata !647, metadata !648, metadata !649, metadata !650}
!617 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !170} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!618 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !578} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!619 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !578} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!620 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !578} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!621 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !543} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!622 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !540} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!623 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !31} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!624 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !31} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!625 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !626} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!626 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !31, metadata !323, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!627 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !626} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!628 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !398} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!629 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !599} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!630 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !31} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!631 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !632} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!632 = metadata !{i32 786454, metadata !9, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !633} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!633 = metadata !{i32 786454, metadata !9, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!634 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !31} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!635 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !636} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!636 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !637} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!637 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !638} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!638 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !557} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!639 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !636} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!640 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !636} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!641 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !636} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!642 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !643} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!643 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !560, metadata !591, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!644 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !31} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!645 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !31} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!646 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !31} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!647 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !31} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!648 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !31} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!649 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !31} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!650 = metadata !{i32 786445, metadata !9, metadata !615, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !31} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!651 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !196, i32 1203, metadata !614, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!652 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !196, i32 1203, metadata !614, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!653 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !196, i32 1204, metadata !614, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!654 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !196, i32 1204, metadata !614, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!655 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !196, i32 1230, metadata !57, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!656 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !196, i32 1231, metadata !57, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!657 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !196, i32 1232, metadata !57, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!658 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !196, i32 1233, metadata !31, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!659 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !196, i32 1234, metadata !31, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!660 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !196, i32 1237, metadata !661, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!661 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !31, metadata !109, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!662 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !196, i32 1238, metadata !661, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!663 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !196, i32 1239, metadata !661, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!664 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !196, i32 1240, metadata !661, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!665 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !196, i32 1241, metadata !661, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!666 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !196, i32 1242, metadata !661, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!667 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !196, i32 1456, metadata !31, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!668 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !196, i32 1465, metadata !31, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!669 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !196, i32 1466, metadata !31, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!670 = metadata !{i32 786484, i32 0, null, metadata !"configinput", metadata !"configinput", metadata !"", metadata !180, i32 37, metadata !671, i32 0, i32 1, %struct.InputParameters* @configinput, null} ; [ DW_TAG_variable ] [configinput] [line 37] [def]
!671 = metadata !{i32 786454, metadata !9, null, metadata !"InputParameters", i32 865, i64 0, i64 0, i64 0, i32 0, metadata !672} ; [ DW_TAG_typedef ] [InputParameters] [line 865, size 0, align 0, offset 0] [from ]
!672 = metadata !{i32 786451, metadata !9, null, metadata !"", i32 661, i64 28736, i64 64, i32 0, i32 0, null, metadata !673, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 661, size 28736, align 64, offset 0] [from ]
!673 = metadata !{metadata !674, metadata !675, metadata !676, metadata !677, metadata !678, metadata !679, metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !697, metadata !698, metadata !699, metadata !700, metadata !701, metadata !702, metadata !706, metadata !707, metadata !708, metadata !709, metadata !710, metadata !711, metadata !712, metadata !713, metadata !714, metadata !715, metadata !716, metadata !717, metadata !718, metadata !719, metadata !720, metadata !721, metadata !722, metadata !723, metadata !724, metadata !725, metadata !726, metadata !727, metadata !728, metadata !729, metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !739, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755, metadata !756, metadata !757, metadata !758, metadata !759, metadata !760, metadata !761, metadata !762, metadata !763, metadata !764, metadata !765, metadata !766, metadata !767, metadata !768, metadata !769, metadata !770, metadata !771, metadata !772, metadata !773, metadata !774, metadata !775, metadata !776, metadata !777, metadata !778, metadata !779, metadata !780, metadata !781, metadata !782, metadata !783, metadata !784, metadata !785, metadata !786, metadata !787, metadata !788, metadata !789, metadata !790, metadata !791, metadata !792, metadata !793, metadata !794, metadata !795, metadata !796, metadata !797, metadata !798, metadata !799, metadata !800, metadata !801, metadata !802, metadata !803, metadata !804, metadata !805, metadata !806, metadata !807, metadata !808, metadata !809, metadata !810, metadata !811, metadata !812, metadata !813, metadata !814, metadata !815, metadata !816, metadata !817, metadata !818, metadata !819, metadata !820, metadata !821, metadata !822, metadata !823, metadata !824, metadata !825, metadata !826, metadata !827, metadata !830, metadata !831}
!674 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"ProfileIDC", i32 663, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [ProfileIDC] [line 663, size 32, align 32, offset 0] [from int]
!675 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"LevelIDC", i32 664, i64 32, i64 32, i64 32, i32 0, metadata !31} ; [ DW_TAG_member ] [LevelIDC] [line 664, size 32, align 32, offset 32] [from int]
!676 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"no_frames", i32 666, i64 32, i64 32, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [no_frames] [line 666, size 32, align 32, offset 64] [from int]
!677 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"qp0", i32 667, i64 32, i64 32, i64 96, i32 0, metadata !31} ; [ DW_TAG_member ] [qp0] [line 667, size 32, align 32, offset 96] [from int]
!678 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"qpN", i32 668, i64 32, i64 32, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [qpN] [line 668, size 32, align 32, offset 128] [from int]
!679 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"jumpd", i32 669, i64 32, i64 32, i64 160, i32 0, metadata !31} ; [ DW_TAG_member ] [jumpd] [line 669, size 32, align 32, offset 160] [from int]
!680 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"hadamard", i32 670, i64 32, i64 32, i64 192, i32 0, metadata !31} ; [ DW_TAG_member ] [hadamard] [line 670, size 32, align 32, offset 192] [from int]
!681 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"hadamardqpel", i32 672, i64 32, i64 32, i64 224, i32 0, metadata !31} ; [ DW_TAG_member ] [hadamardqpel] [line 672, size 32, align 32, offset 224] [from int]
!682 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"search_range", i32 673, i64 32, i64 32, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [search_range] [line 673, size 32, align 32, offset 256] [from int]
!683 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"num_ref_frames", i32 676, i64 32, i64 32, i64 288, i32 0, metadata !31} ; [ DW_TAG_member ] [num_ref_frames] [line 676, size 32, align 32, offset 288] [from int]
!684 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"P_List0_refs", i32 677, i64 32, i64 32, i64 320, i32 0, metadata !31} ; [ DW_TAG_member ] [P_List0_refs] [line 677, size 32, align 32, offset 320] [from int]
!685 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"B_List0_refs", i32 678, i64 32, i64 32, i64 352, i32 0, metadata !31} ; [ DW_TAG_member ] [B_List0_refs] [line 678, size 32, align 32, offset 352] [from int]
!686 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"B_List1_refs", i32 679, i64 32, i64 32, i64 384, i32 0, metadata !31} ; [ DW_TAG_member ] [B_List1_refs] [line 679, size 32, align 32, offset 384] [from int]
!687 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"Log2MaxFrameNum", i32 680, i64 32, i64 32, i64 416, i32 0, metadata !31} ; [ DW_TAG_member ] [Log2MaxFrameNum] [line 680, size 32, align 32, offset 416] [from int]
!688 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"ResendPPS", i32 681, i64 32, i64 32, i64 448, i32 0, metadata !31} ; [ DW_TAG_member ] [ResendPPS] [line 681, size 32, align 32, offset 448] [from int]
!689 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"GenerateMultiplePPS", i32 682, i64 32, i64 32, i64 480, i32 0, metadata !31} ; [ DW_TAG_member ] [GenerateMultiplePPS] [line 682, size 32, align 32, offset 480] [from int]
!690 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"img_width", i32 684, i64 32, i64 32, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [img_width] [line 684, size 32, align 32, offset 512] [from int]
!691 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"img_height", i32 685, i64 32, i64 32, i64 544, i32 0, metadata !31} ; [ DW_TAG_member ] [img_height] [line 685, size 32, align 32, offset 544] [from int]
!692 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"yuv_format", i32 686, i64 32, i64 32, i64 576, i32 0, metadata !31} ; [ DW_TAG_member ] [yuv_format] [line 686, size 32, align 32, offset 576] [from int]
!693 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"intra_upd", i32 687, i64 32, i64 32, i64 608, i32 0, metadata !31} ; [ DW_TAG_member ] [intra_upd] [line 687, size 32, align 32, offset 608] [from int]
!694 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"blc_size", i32 691, i64 512, i64 32, i64 640, i32 0, metadata !695} ; [ DW_TAG_member ] [blc_size] [line 691, size 512, align 32, offset 640] [from ]
!695 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !31, metadata !696, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!696 = metadata !{metadata !417, metadata !311}
!697 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"part_size", i32 692, i64 512, i64 32, i64 1152, i32 0, metadata !695} ; [ DW_TAG_member ] [part_size] [line 692, size 512, align 32, offset 1152] [from ]
!698 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"slice_mode", i32 693, i64 32, i64 32, i64 1664, i32 0, metadata !31} ; [ DW_TAG_member ] [slice_mode] [line 693, size 32, align 32, offset 1664] [from int]
!699 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"slice_argument", i32 694, i64 32, i64 32, i64 1696, i32 0, metadata !31} ; [ DW_TAG_member ] [slice_argument] [line 694, size 32, align 32, offset 1696] [from int]
!700 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"UseConstrainedIntraPred", i32 695, i64 32, i64 32, i64 1728, i32 0, metadata !31} ; [ DW_TAG_member ] [UseConstrainedIntraPred] [line 695, size 32, align 32, offset 1728] [from int]
!701 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"infile_header", i32 696, i64 32, i64 32, i64 1760, i32 0, metadata !31} ; [ DW_TAG_member ] [infile_header] [line 696, size 32, align 32, offset 1760] [from int]
!702 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"infile", i32 697, i64 1600, i64 8, i64 1792, i32 0, metadata !703} ; [ DW_TAG_member ] [infile] [line 697, size 1600, align 8, offset 1792] [from ]
!703 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1600, i64 8, i32 0, i32 0, metadata !34, metadata !704, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1600, align 8, offset 0] [from char]
!704 = metadata !{metadata !705}
!705 = metadata !{i32 786465, i64 0, i64 200}     ; [ DW_TAG_subrange_type ] [0, 199]
!706 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"outfile", i32 698, i64 1600, i64 8, i64 3392, i32 0, metadata !703} ; [ DW_TAG_member ] [outfile] [line 698, size 1600, align 8, offset 3392] [from ]
!707 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"ReconFile", i32 699, i64 1600, i64 8, i64 4992, i32 0, metadata !703} ; [ DW_TAG_member ] [ReconFile] [line 699, size 1600, align 8, offset 4992] [from ]
!708 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"TraceFile", i32 700, i64 1600, i64 8, i64 6592, i32 0, metadata !703} ; [ DW_TAG_member ] [TraceFile] [line 700, size 1600, align 8, offset 6592] [from ]
!709 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"QmatrixFile", i32 701, i64 1600, i64 8, i64 8192, i32 0, metadata !703} ; [ DW_TAG_member ] [QmatrixFile] [line 701, size 1600, align 8, offset 8192] [from ]
!710 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"intra_period", i32 702, i64 32, i64 32, i64 9792, i32 0, metadata !31} ; [ DW_TAG_member ] [intra_period] [line 702, size 32, align 32, offset 9792] [from int]
!711 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"idr_enable", i32 704, i64 32, i64 32, i64 9824, i32 0, metadata !31} ; [ DW_TAG_member ] [idr_enable] [line 704, size 32, align 32, offset 9824] [from int]
!712 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"start_frame", i32 705, i64 32, i64 32, i64 9856, i32 0, metadata !31} ; [ DW_TAG_member ] [start_frame] [line 705, size 32, align 32, offset 9856] [from int]
!713 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"successive_Bframe", i32 708, i64 32, i64 32, i64 9888, i32 0, metadata !31} ; [ DW_TAG_member ] [successive_Bframe] [line 708, size 32, align 32, offset 9888] [from int]
!714 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"qpB", i32 709, i64 32, i64 32, i64 9920, i32 0, metadata !31} ; [ DW_TAG_member ] [qpB] [line 709, size 32, align 32, offset 9920] [from int]
!715 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"qpBRSOffset", i32 710, i64 32, i64 32, i64 9952, i32 0, metadata !31} ; [ DW_TAG_member ] [qpBRSOffset] [line 710, size 32, align 32, offset 9952] [from int]
!716 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"direct_spatial_mv_pred_flag", i32 711, i64 32, i64 32, i64 9984, i32 0, metadata !31} ; [ DW_TAG_member ] [direct_spatial_mv_pred_flag] [line 711, size 32, align 32, offset 9984] [from int]
!717 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"directInferenceFlag", i32 712, i64 32, i64 32, i64 10016, i32 0, metadata !31} ; [ DW_TAG_member ] [directInferenceFlag] [line 712, size 32, align 32, offset 10016] [from int]
!718 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"BiPredMotionEstimation", i32 714, i64 32, i64 32, i64 10048, i32 0, metadata !31} ; [ DW_TAG_member ] [BiPredMotionEstimation] [line 714, size 32, align 32, offset 10048] [from int]
!719 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"BiPredMERefinements", i32 715, i64 32, i64 32, i64 10080, i32 0, metadata !31} ; [ DW_TAG_member ] [BiPredMERefinements] [line 715, size 32, align 32, offset 10080] [from int]
!720 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"BiPredMESearchRange", i32 716, i64 32, i64 32, i64 10112, i32 0, metadata !31} ; [ DW_TAG_member ] [BiPredMESearchRange] [line 716, size 32, align 32, offset 10112] [from int]
!721 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"BiPredMESubPel", i32 717, i64 32, i64 32, i64 10144, i32 0, metadata !31} ; [ DW_TAG_member ] [BiPredMESubPel] [line 717, size 32, align 32, offset 10144] [from int]
!722 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"sp_periodicity", i32 721, i64 32, i64 32, i64 10176, i32 0, metadata !31} ; [ DW_TAG_member ] [sp_periodicity] [line 721, size 32, align 32, offset 10176] [from int]
!723 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"qpsp", i32 722, i64 32, i64 32, i64 10208, i32 0, metadata !31} ; [ DW_TAG_member ] [qpsp] [line 722, size 32, align 32, offset 10208] [from int]
!724 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"qpsp_pred", i32 723, i64 32, i64 32, i64 10240, i32 0, metadata !31} ; [ DW_TAG_member ] [qpsp_pred] [line 723, size 32, align 32, offset 10240] [from int]
!725 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"WeightedPrediction", i32 725, i64 32, i64 32, i64 10272, i32 0, metadata !31} ; [ DW_TAG_member ] [WeightedPrediction] [line 725, size 32, align 32, offset 10272] [from int]
!726 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"WeightedBiprediction", i32 726, i64 32, i64 32, i64 10304, i32 0, metadata !31} ; [ DW_TAG_member ] [WeightedBiprediction] [line 726, size 32, align 32, offset 10304] [from int]
!727 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"UseWeightedReferenceME", i32 727, i64 32, i64 32, i64 10336, i32 0, metadata !31} ; [ DW_TAG_member ] [UseWeightedReferenceME] [line 727, size 32, align 32, offset 10336] [from int]
!728 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"RDPictureDecision", i32 728, i64 32, i64 32, i64 10368, i32 0, metadata !31} ; [ DW_TAG_member ] [RDPictureDecision] [line 728, size 32, align 32, offset 10368] [from int]
!729 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"RDPictureIntra", i32 729, i64 32, i64 32, i64 10400, i32 0, metadata !31} ; [ DW_TAG_member ] [RDPictureIntra] [line 729, size 32, align 32, offset 10400] [from int]
!730 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"RDPSliceWeightOnly", i32 730, i64 32, i64 32, i64 10432, i32 0, metadata !31} ; [ DW_TAG_member ] [RDPSliceWeightOnly] [line 730, size 32, align 32, offset 10432] [from int]
!731 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"RDBSliceWeightOnly", i32 731, i64 32, i64 32, i64 10464, i32 0, metadata !31} ; [ DW_TAG_member ] [RDBSliceWeightOnly] [line 731, size 32, align 32, offset 10464] [from int]
!732 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"SkipIntraInInterSlices", i32 732, i64 32, i64 32, i64 10496, i32 0, metadata !31} ; [ DW_TAG_member ] [SkipIntraInInterSlices] [line 732, size 32, align 32, offset 10496] [from int]
!733 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"BRefPictures", i32 733, i64 32, i64 32, i64 10528, i32 0, metadata !31} ; [ DW_TAG_member ] [BRefPictures] [line 733, size 32, align 32, offset 10528] [from int]
!734 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"PyramidCoding", i32 734, i64 32, i64 32, i64 10560, i32 0, metadata !31} ; [ DW_TAG_member ] [PyramidCoding] [line 734, size 32, align 32, offset 10560] [from int]
!735 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"ExplicitPyramidFormat", i32 735, i64 8192, i64 8, i64 10592, i32 0, metadata !736} ; [ DW_TAG_member ] [ExplicitPyramidFormat] [line 735, size 8192, align 8, offset 10592] [from ]
!736 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 8, i32 0, i32 0, metadata !34, metadata !737, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 8, offset 0] [from char]
!737 = metadata !{metadata !738}
!738 = metadata !{i32 786465, i64 0, i64 1024}    ; [ DW_TAG_subrange_type ] [0, 1023]
!739 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"PyramidRefReorder", i32 736, i64 32, i64 32, i64 18784, i32 0, metadata !31} ; [ DW_TAG_member ] [PyramidRefReorder] [line 736, size 32, align 32, offset 18784] [from int]
!740 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"PocMemoryManagement", i32 737, i64 32, i64 32, i64 18816, i32 0, metadata !31} ; [ DW_TAG_member ] [PocMemoryManagement] [line 737, size 32, align 32, offset 18816] [from int]
!741 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"symbol_mode", i32 739, i64 32, i64 32, i64 18848, i32 0, metadata !31} ; [ DW_TAG_member ] [symbol_mode] [line 739, size 32, align 32, offset 18848] [from int]
!742 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"of_mode", i32 740, i64 32, i64 32, i64 18880, i32 0, metadata !31} ; [ DW_TAG_member ] [of_mode] [line 740, size 32, align 32, offset 18880] [from int]
!743 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"partition_mode", i32 741, i64 32, i64 32, i64 18912, i32 0, metadata !31} ; [ DW_TAG_member ] [partition_mode] [line 741, size 32, align 32, offset 18912] [from int]
!744 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"InterSearch16x16", i32 743, i64 32, i64 32, i64 18944, i32 0, metadata !31} ; [ DW_TAG_member ] [InterSearch16x16] [line 743, size 32, align 32, offset 18944] [from int]
!745 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"InterSearch16x8", i32 744, i64 32, i64 32, i64 18976, i32 0, metadata !31} ; [ DW_TAG_member ] [InterSearch16x8] [line 744, size 32, align 32, offset 18976] [from int]
!746 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"InterSearch8x16", i32 745, i64 32, i64 32, i64 19008, i32 0, metadata !31} ; [ DW_TAG_member ] [InterSearch8x16] [line 745, size 32, align 32, offset 19008] [from int]
!747 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"InterSearch8x8", i32 746, i64 32, i64 32, i64 19040, i32 0, metadata !31} ; [ DW_TAG_member ] [InterSearch8x8] [line 746, size 32, align 32, offset 19040] [from int]
!748 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"InterSearch8x4", i32 747, i64 32, i64 32, i64 19072, i32 0, metadata !31} ; [ DW_TAG_member ] [InterSearch8x4] [line 747, size 32, align 32, offset 19072] [from int]
!749 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"InterSearch4x8", i32 748, i64 32, i64 32, i64 19104, i32 0, metadata !31} ; [ DW_TAG_member ] [InterSearch4x8] [line 748, size 32, align 32, offset 19104] [from int]
!750 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"InterSearch4x4", i32 749, i64 32, i64 32, i64 19136, i32 0, metadata !31} ; [ DW_TAG_member ] [InterSearch4x4] [line 749, size 32, align 32, offset 19136] [from int]
!751 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"IntraDisableInterOnly", i32 751, i64 32, i64 32, i64 19168, i32 0, metadata !31} ; [ DW_TAG_member ] [IntraDisableInterOnly] [line 751, size 32, align 32, offset 19168] [from int]
!752 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"Intra4x4ParDisable", i32 752, i64 32, i64 32, i64 19200, i32 0, metadata !31} ; [ DW_TAG_member ] [Intra4x4ParDisable] [line 752, size 32, align 32, offset 19200] [from int]
!753 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"Intra4x4DiagDisable", i32 753, i64 32, i64 32, i64 19232, i32 0, metadata !31} ; [ DW_TAG_member ] [Intra4x4DiagDisable] [line 753, size 32, align 32, offset 19232] [from int]
!754 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"Intra4x4DirDisable", i32 754, i64 32, i64 32, i64 19264, i32 0, metadata !31} ; [ DW_TAG_member ] [Intra4x4DirDisable] [line 754, size 32, align 32, offset 19264] [from int]
!755 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"Intra16x16ParDisable", i32 755, i64 32, i64 32, i64 19296, i32 0, metadata !31} ; [ DW_TAG_member ] [Intra16x16ParDisable] [line 755, size 32, align 32, offset 19296] [from int]
!756 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"Intra16x16PlaneDisable", i32 756, i64 32, i64 32, i64 19328, i32 0, metadata !31} ; [ DW_TAG_member ] [Intra16x16PlaneDisable] [line 756, size 32, align 32, offset 19328] [from int]
!757 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"ChromaIntraDisable", i32 757, i64 32, i64 32, i64 19360, i32 0, metadata !31} ; [ DW_TAG_member ] [ChromaIntraDisable] [line 757, size 32, align 32, offset 19360] [from int]
!758 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"FrameRate", i32 759, i64 64, i64 64, i64 19392, i32 0, metadata !170} ; [ DW_TAG_member ] [FrameRate] [line 759, size 64, align 64, offset 19392] [from double]
!759 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"chroma_qp_index_offset", i32 761, i64 32, i64 32, i64 19456, i32 0, metadata !31} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 761, size 32, align 32, offset 19456] [from int]
!760 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"full_search", i32 763, i64 32, i64 32, i64 19488, i32 0, metadata !31} ; [ DW_TAG_member ] [full_search] [line 763, size 32, align 32, offset 19488] [from int]
!761 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"last_frame", i32 766, i64 32, i64 32, i64 19520, i32 0, metadata !31} ; [ DW_TAG_member ] [last_frame] [line 766, size 32, align 32, offset 19520] [from int]
!762 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"qpN2", i32 769, i64 32, i64 32, i64 19552, i32 0, metadata !31} ; [ DW_TAG_member ] [qpN2] [line 769, size 32, align 32, offset 19552] [from int]
!763 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"qpB2", i32 769, i64 32, i64 32, i64 19584, i32 0, metadata !31} ; [ DW_TAG_member ] [qpB2] [line 769, size 32, align 32, offset 19584] [from int]
!764 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"qp2start", i32 769, i64 32, i64 32, i64 19616, i32 0, metadata !31} ; [ DW_TAG_member ] [qp2start] [line 769, size 32, align 32, offset 19616] [from int]
!765 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"qp02", i32 770, i64 32, i64 32, i64 19648, i32 0, metadata !31} ; [ DW_TAG_member ] [qp02] [line 770, size 32, align 32, offset 19648] [from int]
!766 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"qpBRS2Offset", i32 770, i64 32, i64 32, i64 19680, i32 0, metadata !31} ; [ DW_TAG_member ] [qpBRS2Offset] [line 770, size 32, align 32, offset 19680] [from int]
!767 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"rdopt", i32 772, i64 32, i64 32, i64 19712, i32 0, metadata !31} ; [ DW_TAG_member ] [rdopt] [line 772, size 32, align 32, offset 19712] [from int]
!768 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"disthres", i32 773, i64 32, i64 32, i64 19744, i32 0, metadata !31} ; [ DW_TAG_member ] [disthres] [line 773, size 32, align 32, offset 19744] [from int]
!769 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"nobskip", i32 774, i64 32, i64 32, i64 19776, i32 0, metadata !31} ; [ DW_TAG_member ] [nobskip] [line 774, size 32, align 32, offset 19776] [from int]
!770 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"NumberLeakyBuckets", i32 777, i64 32, i64 32, i64 19808, i32 0, metadata !31} ; [ DW_TAG_member ] [NumberLeakyBuckets] [line 777, size 32, align 32, offset 19808] [from int]
!771 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"LeakyBucketRateFile", i32 778, i64 1600, i64 8, i64 19840, i32 0, metadata !703} ; [ DW_TAG_member ] [LeakyBucketRateFile] [line 778, size 1600, align 8, offset 19840] [from ]
!772 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"LeakyBucketParamFile", i32 779, i64 1600, i64 8, i64 21440, i32 0, metadata !703} ; [ DW_TAG_member ] [LeakyBucketParamFile] [line 779, size 1600, align 8, offset 21440] [from ]
!773 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"PicInterlace", i32 782, i64 32, i64 32, i64 23040, i32 0, metadata !31} ; [ DW_TAG_member ] [PicInterlace] [line 782, size 32, align 32, offset 23040] [from int]
!774 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"MbInterlace", i32 783, i64 32, i64 32, i64 23072, i32 0, metadata !31} ; [ DW_TAG_member ] [MbInterlace] [line 783, size 32, align 32, offset 23072] [from int]
!775 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"IntraBottom", i32 785, i64 32, i64 32, i64 23104, i32 0, metadata !31} ; [ DW_TAG_member ] [IntraBottom] [line 785, size 32, align 32, offset 23104] [from int]
!776 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"LossRateA", i32 787, i64 32, i64 32, i64 23136, i32 0, metadata !31} ; [ DW_TAG_member ] [LossRateA] [line 787, size 32, align 32, offset 23136] [from int]
!777 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"LossRateB", i32 788, i64 32, i64 32, i64 23168, i32 0, metadata !31} ; [ DW_TAG_member ] [LossRateB] [line 788, size 32, align 32, offset 23168] [from int]
!778 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"LossRateC", i32 789, i64 32, i64 32, i64 23200, i32 0, metadata !31} ; [ DW_TAG_member ] [LossRateC] [line 789, size 32, align 32, offset 23200] [from int]
!779 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"NoOfDecoders", i32 790, i64 32, i64 32, i64 23232, i32 0, metadata !31} ; [ DW_TAG_member ] [NoOfDecoders] [line 790, size 32, align 32, offset 23232] [from int]
!780 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"RestrictRef", i32 791, i64 32, i64 32, i64 23264, i32 0, metadata !31} ; [ DW_TAG_member ] [RestrictRef] [line 791, size 32, align 32, offset 23264] [from int]
!781 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"NumFramesInELSubSeq", i32 792, i64 32, i64 32, i64 23296, i32 0, metadata !31} ; [ DW_TAG_member ] [NumFramesInELSubSeq] [line 792, size 32, align 32, offset 23296] [from int]
!782 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"NumFrameIn2ndIGOP", i32 793, i64 32, i64 32, i64 23328, i32 0, metadata !31} ; [ DW_TAG_member ] [NumFrameIn2ndIGOP] [line 793, size 32, align 32, offset 23328] [from int]
!783 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"RandomIntraMBRefresh", i32 795, i64 32, i64 32, i64 23360, i32 0, metadata !31} ; [ DW_TAG_member ] [RandomIntraMBRefresh] [line 795, size 32, align 32, offset 23360] [from int]
!784 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"LFSendParameters", i32 797, i64 32, i64 32, i64 23392, i32 0, metadata !31} ; [ DW_TAG_member ] [LFSendParameters] [line 797, size 32, align 32, offset 23392] [from int]
!785 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"LFDisableIdc", i32 798, i64 32, i64 32, i64 23424, i32 0, metadata !31} ; [ DW_TAG_member ] [LFDisableIdc] [line 798, size 32, align 32, offset 23424] [from int]
!786 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"LFAlphaC0Offset", i32 799, i64 32, i64 32, i64 23456, i32 0, metadata !31} ; [ DW_TAG_member ] [LFAlphaC0Offset] [line 799, size 32, align 32, offset 23456] [from int]
!787 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"LFBetaOffset", i32 800, i64 32, i64 32, i64 23488, i32 0, metadata !31} ; [ DW_TAG_member ] [LFBetaOffset] [line 800, size 32, align 32, offset 23488] [from int]
!788 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"SparePictureOption", i32 802, i64 32, i64 32, i64 23520, i32 0, metadata !31} ; [ DW_TAG_member ] [SparePictureOption] [line 802, size 32, align 32, offset 23520] [from int]
!789 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"SPDetectionThreshold", i32 803, i64 32, i64 32, i64 23552, i32 0, metadata !31} ; [ DW_TAG_member ] [SPDetectionThreshold] [line 803, size 32, align 32, offset 23552] [from int]
!790 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"SPPercentageThreshold", i32 804, i64 32, i64 32, i64 23584, i32 0, metadata !31} ; [ DW_TAG_member ] [SPPercentageThreshold] [line 804, size 32, align 32, offset 23584] [from int]
!791 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"SliceGroupConfigFileName", i32 807, i64 1600, i64 8, i64 23616, i32 0, metadata !703} ; [ DW_TAG_member ] [SliceGroupConfigFileName] [line 807, size 1600, align 8, offset 23616] [from ]
!792 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"num_slice_groups_minus1", i32 808, i64 32, i64 32, i64 25216, i32 0, metadata !31} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 808, size 32, align 32, offset 25216] [from int]
!793 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"slice_group_map_type", i32 809, i64 32, i64 32, i64 25248, i32 0, metadata !31} ; [ DW_TAG_member ] [slice_group_map_type] [line 809, size 32, align 32, offset 25248] [from int]
!794 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"top_left", i32 811, i64 64, i64 64, i64 25280, i32 0, metadata !250} ; [ DW_TAG_member ] [top_left] [line 811, size 64, align 64, offset 25280] [from ]
!795 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"bottom_right", i32 812, i64 64, i64 64, i64 25344, i32 0, metadata !250} ; [ DW_TAG_member ] [bottom_right] [line 812, size 64, align 64, offset 25344] [from ]
!796 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"slice_group_id", i32 813, i64 64, i64 64, i64 25408, i32 0, metadata !237} ; [ DW_TAG_member ] [slice_group_id] [line 813, size 64, align 64, offset 25408] [from ]
!797 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"run_length_minus1", i32 814, i64 64, i64 64, i64 25472, i32 0, metadata !250} ; [ DW_TAG_member ] [run_length_minus1] [line 814, size 64, align 64, offset 25472] [from ]
!798 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"slice_group_change_direction_flag", i32 816, i64 32, i64 32, i64 25536, i32 0, metadata !31} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 816, size 32, align 32, offset 25536] [from int]
!799 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"slice_group_change_rate_minus1", i32 817, i64 32, i64 32, i64 25568, i32 0, metadata !31} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 817, size 32, align 32, offset 25568] [from int]
!800 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"slice_group_change_cycle", i32 818, i64 32, i64 32, i64 25600, i32 0, metadata !31} ; [ DW_TAG_member ] [slice_group_change_cycle] [line 818, size 32, align 32, offset 25600] [from int]
!801 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"redundant_slice_flag", i32 820, i64 32, i64 32, i64 25632, i32 0, metadata !31} ; [ DW_TAG_member ] [redundant_slice_flag] [line 820, size 32, align 32, offset 25632] [from int]
!802 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"pic_order_cnt_type", i32 821, i64 32, i64 32, i64 25664, i32 0, metadata !31} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 821, size 32, align 32, offset 25664] [from int]
!803 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"context_init_method", i32 823, i64 32, i64 32, i64 25696, i32 0, metadata !31} ; [ DW_TAG_member ] [context_init_method] [line 823, size 32, align 32, offset 25696] [from int]
!804 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"model_number", i32 824, i64 32, i64 32, i64 25728, i32 0, metadata !31} ; [ DW_TAG_member ] [model_number] [line 824, size 32, align 32, offset 25728] [from int]
!805 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"AllowTransform8x8", i32 825, i64 32, i64 32, i64 25760, i32 0, metadata !31} ; [ DW_TAG_member ] [AllowTransform8x8] [line 825, size 32, align 32, offset 25760] [from int]
!806 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"LowPassForIntra8x8", i32 826, i64 32, i64 32, i64 25792, i32 0, metadata !31} ; [ DW_TAG_member ] [LowPassForIntra8x8] [line 826, size 32, align 32, offset 25792] [from int]
!807 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"ReportFrameStats", i32 827, i64 32, i64 32, i64 25824, i32 0, metadata !31} ; [ DW_TAG_member ] [ReportFrameStats] [line 827, size 32, align 32, offset 25824] [from int]
!808 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"DisplayEncParams", i32 828, i64 32, i64 32, i64 25856, i32 0, metadata !31} ; [ DW_TAG_member ] [DisplayEncParams] [line 828, size 32, align 32, offset 25856] [from int]
!809 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"RCEnable", i32 831, i64 32, i64 32, i64 25888, i32 0, metadata !31} ; [ DW_TAG_member ] [RCEnable] [line 831, size 32, align 32, offset 25888] [from int]
!810 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"bit_rate", i32 832, i64 32, i64 32, i64 25920, i32 0, metadata !31} ; [ DW_TAG_member ] [bit_rate] [line 832, size 32, align 32, offset 25920] [from int]
!811 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"SeinitialQP", i32 833, i64 32, i64 32, i64 25952, i32 0, metadata !31} ; [ DW_TAG_member ] [SeinitialQP] [line 833, size 32, align 32, offset 25952] [from int]
!812 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"basicunit", i32 834, i64 32, i64 32, i64 25984, i32 0, metadata !31} ; [ DW_TAG_member ] [basicunit] [line 834, size 32, align 32, offset 25984] [from int]
!813 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"channel_type", i32 835, i64 32, i64 32, i64 26016, i32 0, metadata !31} ; [ DW_TAG_member ] [channel_type] [line 835, size 32, align 32, offset 26016] [from int]
!814 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"ScalingMatrixPresentFlag", i32 837, i64 32, i64 32, i64 26048, i32 0, metadata !31} ; [ DW_TAG_member ] [ScalingMatrixPresentFlag] [line 837, size 32, align 32, offset 26048] [from int]
!815 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"ScalingListPresentFlag", i32 838, i64 256, i64 32, i64 26080, i32 0, metadata !415} ; [ DW_TAG_member ] [ScalingListPresentFlag] [line 838, size 256, align 32, offset 26080] [from ]
!816 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"FMEnable", i32 841, i64 32, i64 32, i64 26336, i32 0, metadata !31} ; [ DW_TAG_member ] [FMEnable] [line 841, size 32, align 32, offset 26336] [from int]
!817 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"BitDepthLuma", i32 844, i64 32, i64 32, i64 26368, i32 0, metadata !31} ; [ DW_TAG_member ] [BitDepthLuma] [line 844, size 32, align 32, offset 26368] [from int]
!818 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"BitDepthChroma", i32 845, i64 32, i64 32, i64 26400, i32 0, metadata !31} ; [ DW_TAG_member ] [BitDepthChroma] [line 845, size 32, align 32, offset 26400] [from int]
!819 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"img_height_cr", i32 846, i64 32, i64 32, i64 26432, i32 0, metadata !31} ; [ DW_TAG_member ] [img_height_cr] [line 846, size 32, align 32, offset 26432] [from int]
!820 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"img_width_cr", i32 847, i64 32, i64 32, i64 26464, i32 0, metadata !31} ; [ DW_TAG_member ] [img_width_cr] [line 847, size 32, align 32, offset 26464] [from int]
!821 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"rgb_input_flag", i32 848, i64 32, i64 32, i64 26496, i32 0, metadata !31} ; [ DW_TAG_member ] [rgb_input_flag] [line 848, size 32, align 32, offset 26496] [from int]
!822 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"cb_qp_index_offset", i32 849, i64 32, i64 32, i64 26528, i32 0, metadata !31} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 849, size 32, align 32, offset 26528] [from int]
!823 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"cr_qp_index_offset", i32 850, i64 32, i64 32, i64 26560, i32 0, metadata !31} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 850, size 32, align 32, offset 26560] [from int]
!824 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"lossless_qpprime_y_zero_flag", i32 853, i64 32, i64 32, i64 26592, i32 0, metadata !31} ; [ DW_TAG_member ] [lossless_qpprime_y_zero_flag] [line 853, size 32, align 32, offset 26592] [from int]
!825 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"residue_transform_flag", i32 856, i64 32, i64 32, i64 26624, i32 0, metadata !31} ; [ DW_TAG_member ] [residue_transform_flag] [line 856, size 32, align 32, offset 26624] [from int]
!826 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"UseExplicitLambdaParams", i32 859, i64 32, i64 32, i64 26656, i32 0, metadata !31} ; [ DW_TAG_member ] [UseExplicitLambdaParams] [line 859, size 32, align 32, offset 26656] [from int]
!827 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"LambdaWeight", i32 860, i64 384, i64 64, i64 26688, i32 0, metadata !828} ; [ DW_TAG_member ] [LambdaWeight] [line 860, size 384, align 64, offset 26688] [from ]
!828 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !170, metadata !829, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from double]
!829 = metadata !{metadata !320}
!830 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"QOffsetMatrixFile", i32 862, i64 1600, i64 8, i64 27072, i32 0, metadata !703} ; [ DW_TAG_member ] [QOffsetMatrixFile] [line 862, size 1600, align 8, offset 27072] [from ]
!831 = metadata !{i32 786445, metadata !9, metadata !672, metadata !"OffsetMatrixPresentFlag", i32 863, i64 32, i64 32, i64 28672, i32 0, metadata !31} ; [ DW_TAG_member ] [OffsetMatrixPresentFlag] [line 863, size 32, align 32, offset 28672] [from int]
!832 = metadata !{i32 104, i32 0, metadata !24, null}
!833 = metadata !{metadata !"any pointer", metadata !834}
!834 = metadata !{metadata !"omnipotent char", metadata !835}
!835 = metadata !{metadata !"Simple C/C++ TBAA"}
!836 = metadata !{i32 128, i32 0, metadata !24, null}
!837 = metadata !{i32 141, i32 0, metadata !28, null}
!838 = metadata !{null}
!839 = metadata !{i32 145, i32 0, metadata !28, null}
!840 = metadata !{i32 147, i32 0, metadata !28, null}
!841 = metadata !{i32 149, i32 0, metadata !28, null}
!842 = metadata !{i32 786688, metadata !149, metadata !"i", metadata !25, i32 477, metadata !31, i32 0, metadata !843} ; [ DW_TAG_auto_variable ] [i] [line 477]
!843 = metadata !{i32 150, i32 0, metadata !28, null}
!844 = metadata !{i32 477, i32 0, metadata !149, metadata !843}
!845 = metadata !{i32 479, i32 0, metadata !149, metadata !843}
!846 = metadata !{i32 481, i32 0, metadata !847, metadata !843}
!847 = metadata !{i32 786443, metadata !1, metadata !149, i32 480, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!848 = metadata !{metadata !"int", metadata !834}
!849 = metadata !{i32 482, i32 0, metadata !847, metadata !843}
!850 = metadata !{metadata !"double", metadata !834}
!851 = metadata !{i32 484, i32 0, metadata !847, metadata !843}
!852 = metadata !{i32 1}
!853 = metadata !{i32 153, i32 0, metadata !28, null}
!854 = metadata !{i32 155, i32 0, metadata !28, null}
!855 = metadata !{i32 157, i32 0, metadata !856, null}
!856 = metadata !{i32 786443, metadata !1, metadata !28, i32 156, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!857 = metadata !{i32 159, i32 0, metadata !858, null}
!858 = metadata !{i32 786443, metadata !1, metadata !856, i32 158, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!859 = metadata !{i32 163, i32 0, metadata !28, null}
!860 = metadata !{i32 165, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !28, i32 164, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!862 = metadata !{i32 167, i32 0, metadata !863, null}
!863 = metadata !{i32 786443, metadata !1, metadata !861, i32 166, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!864 = metadata !{i32 3}
!865 = metadata !{i32 168, i32 0, metadata !863, null}
!866 = metadata !{i32 169, i32 0, metadata !863, null}
!867 = metadata !{i32 170, i32 0, metadata !861, null}
!868 = metadata !{i32 172, i32 0, metadata !869, null}
!869 = metadata !{i32 786443, metadata !1, metadata !861, i32 171, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!870 = metadata !{i32 175, i32 0, metadata !28, null}
!871 = metadata !{i32 176, i32 0, metadata !28, null}
!872 = metadata !{i32 177, i32 0, metadata !28, null}
!873 = metadata !{i32 178, i32 0, metadata !28, null}
!874 = metadata !{i32 179, i32 0, metadata !28, null}
!875 = metadata !{i32 180, i32 0, metadata !28, null}
!876 = metadata !{i32 181, i32 0, metadata !28, null}
!877 = metadata !{i32 185, i32 0, metadata !28, null}
!878 = metadata !{i32 187, i32 0, metadata !47, null}
!879 = metadata !{i32 189, i32 0, metadata !880, null}
!880 = metadata !{i32 786443, metadata !1, metadata !47, i32 188, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!881 = metadata !{i32 192, i32 0, metadata !47, null}
!882 = metadata !{i32 194, i32 0, metadata !883, null}
!883 = metadata !{i32 786443, metadata !1, metadata !47, i32 193, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!884 = metadata !{i32 195, i32 0, metadata !883, null}
!885 = metadata !{i32 196, i32 0, metadata !883, null}
!886 = metadata !{i32 197, i32 0, metadata !883, null}
!887 = metadata !{i32 198, i32 0, metadata !883, null}
!888 = metadata !{i32 199, i32 0, metadata !883, null}
!889 = metadata !{i32 200, i32 0, metadata !883, null}
!890 = metadata !{i32 201, i32 0, metadata !883, null}
!891 = metadata !{i32 202, i32 0, metadata !883, null}
!892 = metadata !{i32 204, i32 0, metadata !46, null}
!893 = metadata !{i32 209, i32 0, metadata !45, null}
!894 = metadata !{i32 210, i32 0, metadata !45, null}
!895 = metadata !{i32 211, i32 0, metadata !45, null}
!896 = metadata !{i32 214, i32 0, metadata !45, null}
!897 = metadata !{i32 215, i32 0, metadata !45, null}
!898 = metadata !{i32 216, i32 0, metadata !45, null}
!899 = metadata !{i32 219, i32 0, metadata !45, null}
!900 = metadata !{i32 220, i32 0, metadata !45, null}
!901 = metadata !{i32 224, i32 0, metadata !45, null}
!902 = metadata !{i32 226, i32 0, metadata !44, null}
!903 = metadata !{i32 227, i32 0, metadata !44, null}
!904 = metadata !{i32 229, i32 0, metadata !44, null}
!905 = metadata !{i32 233, i32 0, metadata !906, null}
!906 = metadata !{i32 786443, metadata !1, metadata !907, i32 232, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!907 = metadata !{i32 786443, metadata !1, metadata !44, i32 230, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!908 = metadata !{i32 234, i32 0, metadata !906, null}
!909 = metadata !{i32 235, i32 0, metadata !907, null}
!910 = metadata !{i32 236, i32 0, metadata !907, null}
!911 = metadata !{i32 237, i32 0, metadata !907, null}
!912 = metadata !{i32 238, i32 0, metadata !44, null}
!913 = metadata !{i32 239, i32 0, metadata !44, null}
!914 = metadata !{i32 241, i32 0, metadata !45, null}
!915 = metadata !{i32 242, i32 0, metadata !45, null}
!916 = metadata !{i32 243, i32 0, metadata !45, null}
!917 = metadata !{i32 244, i32 0, metadata !45, null}
!918 = metadata !{i32 245, i32 0, metadata !45, null}
!919 = metadata !{i32 248, i32 0, metadata !920, null}
!920 = metadata !{i32 786443, metadata !1, metadata !46, i32 247, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!921 = metadata !{i32 249, i32 0, metadata !920, null}
!922 = metadata !{i32 253, i32 0, metadata !28, null}
!923 = metadata !{i32 621, i32 0, metadata !121, metadata !924}
!924 = metadata !{i32 254, i32 0, metadata !28, null}
!925 = metadata !{%struct._IO_FILE* null}
!926 = metadata !{i32 786688, metadata !121, metadata !"sgfile", metadata !25, i32 624, metadata !57, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [sgfile] [line 624]
!927 = metadata !{i32 624, i32 0, metadata !121, metadata !924}
!928 = metadata !{i32 630, i32 0, metadata !121, metadata !924}
!929 = metadata !{i32 786688, metadata !138, metadata !"i", metadata !25, i32 500, metadata !31, i32 0, metadata !930} ; [ DW_TAG_auto_variable ] [i] [line 500]
!930 = metadata !{i32 632, i32 0, metadata !121, metadata !924}
!931 = metadata !{i32 500, i32 0, metadata !138, metadata !930}
!932 = metadata !{i32 502, i32 0, metadata !138, metadata !930}
!933 = metadata !{i32 548, i32 0, metadata !934, metadata !930}
!934 = metadata !{i32 786443, metadata !1, metadata !935, i32 547, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!935 = metadata !{i32 786443, metadata !1, metadata !936, i32 545, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!936 = metadata !{i32 786443, metadata !1, metadata !138, i32 503, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!937 = metadata !{i32 504, i32 0, metadata !936, metadata !930}
!938 = metadata !{i32 506, i32 0, metadata !939, metadata !930}
!939 = metadata !{i32 786443, metadata !1, metadata !936, i32 505, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!940 = metadata !{i32 508, i32 0, metadata !941, metadata !930}
!941 = metadata !{i32 786443, metadata !1, metadata !939, i32 507, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!942 = metadata !{i32 510, i32 0, metadata !943, metadata !930}
!943 = metadata !{i32 786443, metadata !1, metadata !941, i32 509, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!944 = metadata !{i32 511, i32 0, metadata !943, metadata !930}
!945 = metadata !{i32 512, i32 0, metadata !943, metadata !930}
!946 = metadata !{i32 517, i32 0, metadata !947, metadata !930}
!947 = metadata !{i32 786443, metadata !1, metadata !939, i32 516, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!948 = metadata !{i32 519, i32 0, metadata !949, metadata !930}
!949 = metadata !{i32 786443, metadata !1, metadata !947, i32 518, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!950 = metadata !{i32 520, i32 0, metadata !949, metadata !930}
!951 = metadata !{i32 521, i32 0, metadata !949, metadata !930}
!952 = metadata !{i32 526, i32 0, metadata !953, metadata !930}
!953 = metadata !{i32 786443, metadata !1, metadata !936, i32 525, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!954 = metadata !{i32 528, i32 0, metadata !955, metadata !930}
!955 = metadata !{i32 786443, metadata !1, metadata !953, i32 527, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!956 = metadata !{i32 530, i32 0, metadata !957, metadata !930}
!957 = metadata !{i32 786443, metadata !1, metadata !955, i32 529, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!958 = metadata !{i32 531, i32 0, metadata !957, metadata !930}
!959 = metadata !{i32 532, i32 0, metadata !957, metadata !930}
!960 = metadata !{i32 537, i32 0, metadata !961, metadata !930}
!961 = metadata !{i32 786443, metadata !1, metadata !953, i32 536, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!962 = metadata !{i32 539, i32 0, metadata !963, metadata !930}
!963 = metadata !{i32 786443, metadata !1, metadata !961, i32 538, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!964 = metadata !{i32 540, i32 0, metadata !963, metadata !930}
!965 = metadata !{i32 541, i32 0, metadata !963, metadata !930}
!966 = metadata !{i32 546, i32 0, metadata !935, metadata !930}
!967 = metadata !{i32 550, i32 0, metadata !968, metadata !930}
!968 = metadata !{i32 786443, metadata !1, metadata !934, i32 549, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!969 = metadata !{i32 551, i32 0, metadata !968, metadata !930}
!970 = metadata !{i32 552, i32 0, metadata !968, metadata !930}
!971 = metadata !{i32 634, i32 0, metadata !121, metadata !924}
!972 = metadata !{i32 635, i32 0, metadata !121, metadata !924}
!973 = metadata !{i32 639, i32 0, metadata !121, metadata !924}
!974 = metadata !{i32 640, i32 0, metadata !121, metadata !924}
!975 = metadata !{i32 642, i32 0, metadata !121, metadata !924}
!976 = metadata !{i32 643, i32 0, metadata !121, metadata !924}
!977 = metadata !{i32 645, i32 0, metadata !121, metadata !924}
!978 = metadata !{i32 646, i32 0, metadata !121, metadata !924}
!979 = metadata !{i32 648, i32 0, metadata !121, metadata !924}
!980 = metadata !{i32 649, i32 0, metadata !121, metadata !924}
!981 = metadata !{i32 651, i32 0, metadata !121, metadata !924}
!982 = metadata !{i32 652, i32 0, metadata !121, metadata !924}
!983 = metadata !{i32 654, i32 0, metadata !121, metadata !924}
!984 = metadata !{i32 655, i32 0, metadata !121, metadata !924}
!985 = metadata !{i32 657, i32 0, metadata !121, metadata !924}
!986 = metadata !{i32 658, i32 0, metadata !121, metadata !924}
!987 = metadata !{i32 660, i32 0, metadata !121, metadata !924}
!988 = metadata !{i32 661, i32 0, metadata !121, metadata !924}
!989 = metadata !{i32 664, i32 0, metadata !121, metadata !924}
!990 = metadata !{i32 665, i32 0, metadata !121, metadata !924}
!991 = metadata !{i32 666, i32 0, metadata !121, metadata !924}
!992 = metadata !{i32 667, i32 0, metadata !121, metadata !924}
!993 = metadata !{i32 668, i32 0, metadata !121, metadata !924}
!994 = metadata !{i32 669, i32 0, metadata !121, metadata !924}
!995 = metadata !{i32 670, i32 0, metadata !121, metadata !924}
!996 = metadata !{i32 671, i32 0, metadata !121, metadata !924}
!997 = metadata !{i32 672, i32 0, metadata !121, metadata !924}
!998 = metadata !{i32 673, i32 0, metadata !121, metadata !924}
!999 = metadata !{i32 674, i32 0, metadata !121, metadata !924}
!1000 = metadata !{i32 675, i32 0, metadata !121, metadata !924}
!1001 = metadata !{i32 676, i32 0, metadata !121, metadata !924}
!1002 = metadata !{i32 677, i32 0, metadata !121, metadata !924}
!1003 = metadata !{i32 678, i32 0, metadata !121, metadata !924}
!1004 = metadata !{i32 679, i32 0, metadata !121, metadata !924}
!1005 = metadata !{i32 684, i32 0, metadata !131, metadata !924}
!1006 = metadata !{i32 786688, metadata !131, metadata !"storedBplus1", metadata !25, i32 684, metadata !31, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [storedBplus1] [line 684]
!1007 = metadata !{i32 687, i32 0, metadata !131, metadata !924}
!1008 = metadata !{i32 688, i32 0, metadata !131, metadata !924}
!1009 = metadata !{i32 786689, metadata !112, metadata !"uiVal", metadata !25, i32 16777815, metadata !115, i32 0, metadata !1008} ; [ DW_TAG_arg_variable ] [uiVal] [line 599]
!1010 = metadata !{i32 599, i32 0, metadata !112, metadata !1008}
!1011 = metadata !{i32 601, i32 0, metadata !112, metadata !1008}
!1012 = metadata !{i32 786688, metadata !112, metadata !"uiTmp", metadata !25, i32 601, metadata !115, i32 0, metadata !1008} ; [ DW_TAG_auto_variable ] [uiTmp] [line 601]
!1013 = metadata !{i32 786688, metadata !112, metadata !"uiRet", metadata !25, i32 602, metadata !115, i32 0, metadata !1008} ; [ DW_TAG_auto_variable ] [uiRet] [line 602]
!1014 = metadata !{i32 602, i32 0, metadata !112, metadata !1008}
!1015 = metadata !{i32 604, i32 0, metadata !112, metadata !1008}
!1016 = metadata !{i32 606, i32 0, metadata !1017, metadata !1008}
!1017 = metadata !{i32 786443, metadata !1, metadata !112, i32 605, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1018 = metadata !{i32 607, i32 0, metadata !1017, metadata !1008}
!1019 = metadata !{i32 690, i32 0, metadata !131, metadata !924}
!1020 = metadata !{i32 694, i32 0, metadata !121, metadata !924}
!1021 = metadata !{i32 786689, metadata !112, metadata !"uiVal", metadata !25, i32 16777815, metadata !115, i32 0, metadata !1020} ; [ DW_TAG_arg_variable ] [uiVal] [line 599]
!1022 = metadata !{i32 599, i32 0, metadata !112, metadata !1020}
!1023 = metadata !{i32 601, i32 0, metadata !112, metadata !1020}
!1024 = metadata !{i32 786688, metadata !112, metadata !"uiTmp", metadata !25, i32 601, metadata !115, i32 0, metadata !1020} ; [ DW_TAG_auto_variable ] [uiTmp] [line 601]
!1025 = metadata !{i32 786688, metadata !112, metadata !"uiRet", metadata !25, i32 602, metadata !115, i32 0, metadata !1020} ; [ DW_TAG_auto_variable ] [uiRet] [line 602]
!1026 = metadata !{i32 602, i32 0, metadata !112, metadata !1020}
!1027 = metadata !{i32 606, i32 0, metadata !1017, metadata !1020}
!1028 = metadata !{i32 607, i32 0, metadata !1017, metadata !1020}
!1029 = metadata !{i32 604, i32 0, metadata !112, metadata !1020}
!1030 = metadata !{i32 697, i32 0, metadata !121, metadata !924}
!1031 = metadata !{i32 699, i32 0, metadata !1032, metadata !924}
!1032 = metadata !{i32 786443, metadata !1, metadata !121, i32 698, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1033 = metadata !{i32 700, i32 0, metadata !1032, metadata !924}
!1034 = metadata !{i32 704, i32 0, metadata !121, metadata !924}
!1035 = metadata !{i32 701, i32 0, metadata !1032, metadata !924}
!1036 = metadata !{i32 706, i32 0, metadata !1037, metadata !924}
!1037 = metadata !{i32 786443, metadata !1, metadata !121, i32 705, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1038 = metadata !{i32 707, i32 0, metadata !1037, metadata !924}
!1039 = metadata !{i32 710, i32 0, metadata !121, metadata !924}
!1040 = metadata !{i32 708, i32 0, metadata !1037, metadata !924}
!1041 = metadata !{i32 712, i32 0, metadata !1042, metadata !924}
!1042 = metadata !{i32 786443, metadata !1, metadata !121, i32 711, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1043 = metadata !{i32 713, i32 0, metadata !1042, metadata !924}
!1044 = metadata !{i32 714, i32 0, metadata !1042, metadata !924}
!1045 = metadata !{i32 717, i32 0, metadata !121, metadata !924}
!1046 = metadata !{i32 719, i32 0, metadata !1047, metadata !924}
!1047 = metadata !{i32 786443, metadata !1, metadata !121, i32 718, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1048 = metadata !{i32 721, i32 0, metadata !1049, metadata !924}
!1049 = metadata !{i32 786443, metadata !1, metadata !1047, i32 720, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1050 = metadata !{i32 722, i32 0, metadata !1049, metadata !924}
!1051 = metadata !{i32 726, i32 0, metadata !121, metadata !924}
!1052 = metadata !{i32 723, i32 0, metadata !1049, metadata !924}
!1053 = metadata !{i32 728, i32 0, metadata !1054, metadata !924}
!1054 = metadata !{i32 786443, metadata !1, metadata !121, i32 727, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1055 = metadata !{i32 729, i32 0, metadata !1054, metadata !924}
!1056 = metadata !{i32 733, i32 0, metadata !121, metadata !924}
!1057 = metadata !{i32 730, i32 0, metadata !1054, metadata !924}
!1058 = metadata !{i32 735, i32 0, metadata !1059, metadata !924}
!1059 = metadata !{i32 786443, metadata !1, metadata !121, i32 734, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1060 = metadata !{i32 736, i32 0, metadata !1059, metadata !924}
!1061 = metadata !{i32 737, i32 0, metadata !1059, metadata !924}
!1062 = metadata !{i32 739, i32 0, metadata !121, metadata !924}
!1063 = metadata !{i32 741, i32 0, metadata !1064, metadata !924}
!1064 = metadata !{i32 786443, metadata !1, metadata !121, i32 740, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1065 = metadata !{i32 742, i32 0, metadata !1064, metadata !924}
!1066 = metadata !{i32 743, i32 0, metadata !1064, metadata !924}
!1067 = metadata !{i32 745, i32 0, metadata !121, metadata !924}
!1068 = metadata !{i32 747, i32 0, metadata !1069, metadata !924}
!1069 = metadata !{i32 786443, metadata !1, metadata !121, i32 746, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1070 = metadata !{i32 748, i32 0, metadata !1069, metadata !924}
!1071 = metadata !{i32 749, i32 0, metadata !1069, metadata !924}
!1072 = metadata !{i32 769, i32 0, metadata !121, metadata !924}
!1073 = metadata !{i32 771, i32 0, metadata !1074, metadata !924}
!1074 = metadata !{i32 786443, metadata !1, metadata !121, i32 770, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1075 = metadata !{i32 772, i32 0, metadata !1074, metadata !924}
!1076 = metadata !{i32 775, i32 0, metadata !1077, metadata !924}
!1077 = metadata !{i32 786443, metadata !1, metadata !121, i32 774, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1078 = metadata !{i32 777, i32 0, metadata !121, metadata !924}
!1079 = metadata !{i32 779, i32 0, metadata !1080, metadata !924}
!1080 = metadata !{i32 786443, metadata !1, metadata !121, i32 778, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1081 = metadata !{i32 781, i32 0, metadata !1082, metadata !924}
!1082 = metadata !{i32 786443, metadata !1, metadata !1080, i32 780, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1083 = metadata !{i32 783, i32 0, metadata !1080, metadata !924}
!1084 = metadata !{i32 782, i32 0, metadata !1082, metadata !924}
!1085 = metadata !{i32 785, i32 0, metadata !1086, metadata !924}
!1086 = metadata !{i32 786443, metadata !1, metadata !1080, i32 784, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1087 = metadata !{i32 786, i32 0, metadata !1086, metadata !924}
!1088 = metadata !{i32 789, i32 0, metadata !1089, metadata !924}
!1089 = metadata !{i32 786443, metadata !1, metadata !1080, i32 788, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1090 = metadata !{i32 794, i32 0, metadata !1091, metadata !924}
!1091 = metadata !{i32 786443, metadata !1, metadata !121, i32 793, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1092 = metadata !{i32 796, i32 0, metadata !1093, metadata !924}
!1093 = metadata !{i32 786443, metadata !1, metadata !1091, i32 795, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1094 = metadata !{i32 797, i32 0, metadata !1093, metadata !924}
!1095 = metadata !{i32 800, i32 0, metadata !1096, metadata !924}
!1096 = metadata !{i32 786443, metadata !1, metadata !1091, i32 799, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1097 = metadata !{i32 803, i32 0, metadata !121, metadata !924}
!1098 = metadata !{i32 805, i32 0, metadata !1099, metadata !924}
!1099 = metadata !{i32 786443, metadata !1, metadata !121, i32 804, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1100 = metadata !{i32 818, i32 0, metadata !121, metadata !924}
!1101 = metadata !{i32 806, i32 0, metadata !1099, metadata !924}
!1102 = metadata !{i32 821, i32 0, metadata !135, metadata !924}
!1103 = metadata !{i32 823, i32 0, metadata !1104, metadata !924}
!1104 = metadata !{i32 786443, metadata !1, metadata !135, i32 822, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1105 = metadata !{i32 828, i32 0, metadata !134, metadata !924}
!1106 = metadata !{i32 824, i32 0, metadata !1104, metadata !924}
!1107 = metadata !{i32 825, i32 0, metadata !1104, metadata !924}
!1108 = metadata !{i32 830, i32 0, metadata !1109, metadata !924}
!1109 = metadata !{i32 786443, metadata !1, metadata !134, i32 829, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1110 = metadata !{i32 831, i32 0, metadata !1109, metadata !924}
!1111 = metadata !{i32 832, i32 0, metadata !1109, metadata !924}
!1112 = metadata !{i32 835, i32 0, metadata !1113, metadata !924}
!1113 = metadata !{i32 786443, metadata !1, metadata !1109, i32 835, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1114 = metadata !{i32 837, i32 0, metadata !1115, metadata !924}
!1115 = metadata !{i32 786443, metadata !1, metadata !1113, i32 836, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1116 = metadata !{i32 838, i32 0, metadata !1115, metadata !924}
!1117 = metadata !{i32 844, i32 0, metadata !1118, metadata !924}
!1118 = metadata !{i32 786443, metadata !1, metadata !134, i32 843, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1119 = metadata !{i32 845, i32 0, metadata !1118, metadata !924}
!1120 = metadata !{i32 846, i32 0, metadata !1118, metadata !924}
!1121 = metadata !{i32 847, i32 0, metadata !1118, metadata !924}
!1122 = metadata !{i32 848, i32 0, metadata !1118, metadata !924}
!1123 = metadata !{i32 849, i32 0, metadata !1118, metadata !924}
!1124 = metadata !{i32 852, i32 0, metadata !1125, metadata !924}
!1125 = metadata !{i32 786443, metadata !1, metadata !1118, i32 852, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1126 = metadata !{i32 854, i32 0, metadata !1127, metadata !924}
!1127 = metadata !{i32 786443, metadata !1, metadata !1125, i32 853, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1128 = metadata !{i32 855, i32 0, metadata !1127, metadata !924}
!1129 = metadata !{i32 856, i32 0, metadata !1127, metadata !924}
!1130 = metadata !{i32 857, i32 0, metadata !1127, metadata !924}
!1131 = metadata !{i32 863, i32 0, metadata !133, metadata !924}
!1132 = metadata !{i32 865, i32 0, metadata !133, metadata !924}
!1133 = metadata !{i32 786688, metadata !121, metadata !"frame_mb_only", metadata !25, i32 626, metadata !31, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [frame_mb_only] [line 626]
!1134 = metadata !{i32 866, i32 0, metadata !133, metadata !924}
!1135 = metadata !{i32 786688, metadata !121, metadata !"mb_width", metadata !25, i32 627, metadata !31, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [mb_width] [line 627]
!1136 = metadata !{i32 867, i32 0, metadata !133, metadata !924}
!1137 = metadata !{i32 786688, metadata !121, metadata !"mb_height", metadata !25, i32 627, metadata !31, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [mb_height] [line 627]
!1138 = metadata !{i32 868, i32 0, metadata !133, metadata !924}
!1139 = metadata !{i32 786688, metadata !121, metadata !"mapunit_height", metadata !25, i32 627, metadata !31, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [mapunit_height] [line 627]
!1140 = metadata !{i32 870, i32 0, metadata !133, metadata !924}
!1141 = metadata !{i32 871, i32 0, metadata !133, metadata !924}
!1142 = metadata !{i32 872, i32 0, metadata !133, metadata !924}
!1143 = metadata !{i32 875, i32 0, metadata !1144, metadata !924}
!1144 = metadata !{i32 786443, metadata !1, metadata !133, i32 875, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1145 = metadata !{i32 877, i32 0, metadata !1146, metadata !924}
!1146 = metadata !{i32 786443, metadata !1, metadata !1144, i32 876, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1147 = metadata !{i32 786688, metadata !133, metadata !"tmp", metadata !25, i32 863, metadata !31, i32 0, metadata !924} ; [ DW_TAG_auto_variable ] [tmp] [line 863]
!1148 = metadata !{i32 878, i32 0, metadata !1146, metadata !924}
!1149 = metadata !{i32 879, i32 0, metadata !1146, metadata !924}
!1150 = metadata !{i32 881, i32 0, metadata !1151, metadata !924}
!1151 = metadata !{i32 786443, metadata !1, metadata !1146, i32 880, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1152 = metadata !{i32 882, i32 0, metadata !1151, metadata !924}
!1153 = metadata !{i32 883, i32 0, metadata !1151, metadata !924}
!1154 = metadata !{i32 884, i32 0, metadata !1146, metadata !924}
!1155 = metadata !{i32 887, i32 0, metadata !134, metadata !924}
!1156 = metadata !{i32 893, i32 0, metadata !121, metadata !924}
!1157 = metadata !{i32 895, i32 0, metadata !1158, metadata !924}
!1158 = metadata !{i32 786443, metadata !1, metadata !121, i32 894, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1159 = metadata !{i32 896, i32 0, metadata !1158, metadata !924}
!1160 = metadata !{i32 899, i32 0, metadata !121, metadata !924}
!1161 = metadata !{i32 897, i32 0, metadata !1158, metadata !924}
!1162 = metadata !{i32 901, i32 0, metadata !1163, metadata !924}
!1163 = metadata !{i32 786443, metadata !1, metadata !121, i32 900, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1164 = metadata !{i32 902, i32 0, metadata !1163, metadata !924}
!1165 = metadata !{i32 907, i32 0, metadata !121, metadata !924}
!1166 = metadata !{i32 903, i32 0, metadata !1163, metadata !924}
!1167 = metadata !{i32 909, i32 0, metadata !1168, metadata !924}
!1168 = metadata !{i32 786443, metadata !1, metadata !121, i32 908, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1169 = metadata !{i32 910, i32 0, metadata !1168, metadata !924}
!1170 = metadata !{i32 914, i32 0, metadata !121, metadata !924}
!1171 = metadata !{i32 911, i32 0, metadata !1168, metadata !924}
!1172 = metadata !{i32 916, i32 0, metadata !1173, metadata !924}
!1173 = metadata !{i32 786443, metadata !1, metadata !121, i32 915, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1174 = metadata !{i32 917, i32 0, metadata !1173, metadata !924}
!1175 = metadata !{i32 921, i32 0, metadata !121, metadata !924}
!1176 = metadata !{i32 918, i32 0, metadata !1173, metadata !924}
!1177 = metadata !{i32 923, i32 0, metadata !1178, metadata !924}
!1178 = metadata !{i32 786443, metadata !1, metadata !121, i32 922, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1179 = metadata !{i32 924, i32 0, metadata !1178, metadata !924}
!1180 = metadata !{i32 927, i32 0, metadata !121, metadata !924}
!1181 = metadata !{i32 925, i32 0, metadata !1178, metadata !924}
!1182 = metadata !{i32 929, i32 0, metadata !1183, metadata !924}
!1183 = metadata !{i32 786443, metadata !1, metadata !121, i32 928, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1184 = metadata !{i32 930, i32 0, metadata !1183, metadata !924}
!1185 = metadata !{i32 936, i32 0, metadata !121, metadata !924}
!1186 = metadata !{i32 931, i32 0, metadata !1183, metadata !924}
!1187 = metadata !{i32 938, i32 0, metadata !1188, metadata !924}
!1188 = metadata !{i32 786443, metadata !1, metadata !121, i32 937, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1189 = metadata !{i32 939, i32 0, metadata !1188, metadata !924}
!1190 = metadata !{i32 942, i32 0, metadata !121, metadata !924}
!1191 = metadata !{i32 940, i32 0, metadata !1188, metadata !924}
!1192 = metadata !{i32 944, i32 0, metadata !1193, metadata !924}
!1193 = metadata !{i32 786443, metadata !1, metadata !121, i32 943, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1194 = metadata !{i32 945, i32 0, metadata !1193, metadata !924}
!1195 = metadata !{i32 949, i32 0, metadata !121, metadata !924}
!1196 = metadata !{i32 946, i32 0, metadata !1193, metadata !924}
!1197 = metadata !{i32 951, i32 0, metadata !1198, metadata !924}
!1198 = metadata !{i32 786443, metadata !1, metadata !121, i32 950, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1199 = metadata !{i32 952, i32 0, metadata !1198, metadata !924}
!1200 = metadata !{i32 956, i32 0, metadata !121, metadata !924}
!1201 = metadata !{i32 953, i32 0, metadata !1198, metadata !924}
!1202 = metadata !{i32 958, i32 0, metadata !1203, metadata !924}
!1203 = metadata !{i32 786443, metadata !1, metadata !121, i32 957, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1204 = metadata !{i32 959, i32 0, metadata !1203, metadata !924}
!1205 = metadata !{i32 962, i32 0, metadata !121, metadata !924}
!1206 = metadata !{i32 960, i32 0, metadata !1203, metadata !924}
!1207 = metadata !{i32 964, i32 0, metadata !1208, metadata !924}
!1208 = metadata !{i32 786443, metadata !1, metadata !121, i32 963, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1209 = metadata !{i32 965, i32 0, metadata !1208, metadata !924}
!1210 = metadata !{i32 967, i32 0, metadata !121, metadata !924}
!1211 = metadata !{i32 966, i32 0, metadata !1208, metadata !924}
!1212 = metadata !{i32 969, i32 0, metadata !1213, metadata !924}
!1213 = metadata !{i32 786443, metadata !1, metadata !121, i32 968, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1214 = metadata !{i32 970, i32 0, metadata !1213, metadata !924}
!1215 = metadata !{i32 974, i32 0, metadata !121, metadata !924}
!1216 = metadata !{i32 971, i32 0, metadata !1213, metadata !924}
!1217 = metadata !{i32 976, i32 0, metadata !1218, metadata !924}
!1218 = metadata !{i32 786443, metadata !1, metadata !121, i32 975, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1219 = metadata !{i32 977, i32 0, metadata !1218, metadata !924}
!1220 = metadata !{i32 981, i32 0, metadata !121, metadata !924}
!1221 = metadata !{i32 983, i32 0, metadata !1222, metadata !924}
!1222 = metadata !{i32 786443, metadata !1, metadata !121, i32 982, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1223 = metadata !{i32 985, i32 0, metadata !1224, metadata !924}
!1224 = metadata !{i32 786443, metadata !1, metadata !1222, i32 984, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1225 = metadata !{i32 986, i32 0, metadata !1224, metadata !924}
!1226 = metadata !{i32 990, i32 0, metadata !121, metadata !924}
!1227 = metadata !{i32 987, i32 0, metadata !1224, metadata !924}
!1228 = metadata !{i32 992, i32 0, metadata !1229, metadata !924}
!1229 = metadata !{i32 786443, metadata !1, metadata !121, i32 991, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1230 = metadata !{i32 995, i32 0, metadata !121, metadata !924}
!1231 = metadata !{i32 993, i32 0, metadata !1229, metadata !924}
!1232 = metadata !{i32 996, i32 0, metadata !121, metadata !924}
!1233 = metadata !{i32 999, i32 0, metadata !121, metadata !924}
!1234 = metadata !{i32 1001, i32 0, metadata !1235, metadata !924}
!1235 = metadata !{i32 786443, metadata !1, metadata !121, i32 1000, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1236 = metadata !{i32 1002, i32 0, metadata !1235, metadata !924}
!1237 = metadata !{i32 1005, i32 0, metadata !121, metadata !924}
!1238 = metadata !{i32 1007, i32 0, metadata !1239, metadata !924}
!1239 = metadata !{i32 786443, metadata !1, metadata !121, i32 1006, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1240 = metadata !{i32 1008, i32 0, metadata !1239, metadata !924}
!1241 = metadata !{i32 1010, i32 0, metadata !121, metadata !924}
!1242 = metadata !{i32 1009, i32 0, metadata !1239, metadata !924}
!1243 = metadata !{i32 1012, i32 0, metadata !1244, metadata !924}
!1244 = metadata !{i32 786443, metadata !1, metadata !121, i32 1011, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1245 = metadata !{i32 1013, i32 0, metadata !1244, metadata !924}
!1246 = metadata !{i32 1016, i32 0, metadata !121, metadata !924}
!1247 = metadata !{i32 1014, i32 0, metadata !1244, metadata !924}
!1248 = metadata !{i32 1018, i32 0, metadata !1249, metadata !924}
!1249 = metadata !{i32 786443, metadata !1, metadata !121, i32 1017, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1250 = metadata !{i32 1019, i32 0, metadata !1249, metadata !924}
!1251 = metadata !{i32 1021, i32 0, metadata !121, metadata !924}
!1252 = metadata !{i32 1020, i32 0, metadata !1249, metadata !924}
!1253 = metadata !{i32 1023, i32 0, metadata !1254, metadata !924}
!1254 = metadata !{i32 786443, metadata !1, metadata !121, i32 1022, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1255 = metadata !{i32 1024, i32 0, metadata !1254, metadata !924}
!1256 = metadata !{i32 1028, i32 0, metadata !121, metadata !924}
!1257 = metadata !{i32 1030, i32 0, metadata !1258, metadata !924}
!1258 = metadata !{i32 786443, metadata !1, metadata !121, i32 1029, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1259 = metadata !{i32 1031, i32 0, metadata !1258, metadata !924}
!1260 = metadata !{i32 1052, i32 0, metadata !137, metadata !1261}
!1261 = metadata !{i32 1034, i32 0, metadata !121, metadata !924}
!1262 = metadata !{i32 1032, i32 0, metadata !1258, metadata !924}
!1263 = metadata !{i32 1060, i32 0, metadata !1264, metadata !1261}
!1264 = metadata !{i32 786443, metadata !1, metadata !137, i32 1059, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1265 = metadata !{i32 1061, i32 0, metadata !1264, metadata !1261}
!1266 = metadata !{i32 1064, i32 0, metadata !137, metadata !1261}
!1267 = metadata !{i32 1062, i32 0, metadata !1264, metadata !1261}
!1268 = metadata !{i32 1066, i32 0, metadata !1269, metadata !1261}
!1269 = metadata !{i32 786443, metadata !1, metadata !137, i32 1065, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1270 = metadata !{i32 1068, i32 0, metadata !1271, metadata !1261}
!1271 = metadata !{i32 786443, metadata !1, metadata !1269, i32 1067, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1272 = metadata !{i32 1069, i32 0, metadata !1271, metadata !1261}
!1273 = metadata !{i32 1071, i32 0, metadata !1269, metadata !1261}
!1274 = metadata !{i32 1070, i32 0, metadata !1271, metadata !1261}
!1275 = metadata !{i32 1073, i32 0, metadata !1276, metadata !1261}
!1276 = metadata !{i32 786443, metadata !1, metadata !1269, i32 1072, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1277 = metadata !{i32 1074, i32 0, metadata !1276, metadata !1261}
!1278 = metadata !{i32 1076, i32 0, metadata !1269, metadata !1261}
!1279 = metadata !{i32 1075, i32 0, metadata !1276, metadata !1261}
!1280 = metadata !{i32 1078, i32 0, metadata !1281, metadata !1261}
!1281 = metadata !{i32 786443, metadata !1, metadata !1269, i32 1077, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1282 = metadata !{i32 1079, i32 0, metadata !1281, metadata !1261}
!1283 = metadata !{i32 1081, i32 0, metadata !1269, metadata !1261}
!1284 = metadata !{i32 1080, i32 0, metadata !1281, metadata !1261}
!1285 = metadata !{i32 1083, i32 0, metadata !1286, metadata !1261}
!1286 = metadata !{i32 786443, metadata !1, metadata !1269, i32 1082, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1287 = metadata !{i32 1084, i32 0, metadata !1286, metadata !1261}
!1288 = metadata !{i32 1086, i32 0, metadata !1269, metadata !1261}
!1289 = metadata !{i32 1085, i32 0, metadata !1286, metadata !1261}
!1290 = metadata !{i32 1088, i32 0, metadata !1291, metadata !1261}
!1291 = metadata !{i32 786443, metadata !1, metadata !1269, i32 1087, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1292 = metadata !{i32 1089, i32 0, metadata !1291, metadata !1261}
!1293 = metadata !{i32 1091, i32 0, metadata !1269, metadata !1261}
!1294 = metadata !{i32 1090, i32 0, metadata !1291, metadata !1261}
!1295 = metadata !{i32 1093, i32 0, metadata !1296, metadata !1261}
!1296 = metadata !{i32 786443, metadata !1, metadata !1269, i32 1092, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1297 = metadata !{i32 1094, i32 0, metadata !1296, metadata !1261}
!1298 = metadata !{i32 1099, i32 0, metadata !137, metadata !1261}
!1299 = metadata !{i32 1095, i32 0, metadata !1296, metadata !1261}
!1300 = metadata !{i32 1101, i32 0, metadata !1301, metadata !1261}
!1301 = metadata !{i32 786443, metadata !1, metadata !137, i32 1100, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1302 = metadata !{i32 1103, i32 0, metadata !1303, metadata !1261}
!1303 = metadata !{i32 786443, metadata !1, metadata !1301, i32 1102, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1304 = metadata !{i32 1104, i32 0, metadata !1303, metadata !1261}
!1305 = metadata !{i32 1106, i32 0, metadata !1301, metadata !1261}
!1306 = metadata !{i32 1105, i32 0, metadata !1303, metadata !1261}
!1307 = metadata !{i32 1108, i32 0, metadata !1308, metadata !1261}
!1308 = metadata !{i32 786443, metadata !1, metadata !1301, i32 1107, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1309 = metadata !{i32 1109, i32 0, metadata !1308, metadata !1261}
!1310 = metadata !{i32 1111, i32 0, metadata !1301, metadata !1261}
!1311 = metadata !{i32 1110, i32 0, metadata !1308, metadata !1261}
!1312 = metadata !{i32 1113, i32 0, metadata !1313, metadata !1261}
!1313 = metadata !{i32 786443, metadata !1, metadata !1301, i32 1112, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1314 = metadata !{i32 1114, i32 0, metadata !1313, metadata !1261}
!1315 = metadata !{i32 1116, i32 0, metadata !1301, metadata !1261}
!1316 = metadata !{i32 1115, i32 0, metadata !1313, metadata !1261}
!1317 = metadata !{i32 1118, i32 0, metadata !1318, metadata !1261}
!1318 = metadata !{i32 786443, metadata !1, metadata !1301, i32 1117, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1319 = metadata !{i32 1119, i32 0, metadata !1318, metadata !1261}
!1320 = metadata !{i32 1124, i32 0, metadata !137, metadata !1261}
!1321 = metadata !{i32 1120, i32 0, metadata !1318, metadata !1261}
!1322 = metadata !{i32 1126, i32 0, metadata !1323, metadata !1261}
!1323 = metadata !{i32 786443, metadata !1, metadata !137, i32 1125, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1324 = metadata !{i32 1128, i32 0, metadata !1325, metadata !1261}
!1325 = metadata !{i32 786443, metadata !1, metadata !1323, i32 1127, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1326 = metadata !{i32 1129, i32 0, metadata !1325, metadata !1261}
!1327 = metadata !{i32 1132, i32 0, metadata !1323, metadata !1261}
!1328 = metadata !{i32 1130, i32 0, metadata !1325, metadata !1261}
!1329 = metadata !{i32 1134, i32 0, metadata !1330, metadata !1261}
!1330 = metadata !{i32 786443, metadata !1, metadata !1323, i32 1133, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1331 = metadata !{i32 1135, i32 0, metadata !1330, metadata !1261}
!1332 = metadata !{i32 255, i32 0, metadata !28, null}
!1333 = metadata !{i32 1136, i32 0, metadata !1330, metadata !1261}
!1334 = metadata !{i32 1036, i32 0, metadata !121, metadata !924}
!1335 = metadata !{i32 786688, metadata !144, metadata !"i", metadata !25, i32 574, metadata !31, i32 0, metadata !1336} ; [ DW_TAG_auto_variable ] [i] [line 574]
!1336 = metadata !{i32 256, i32 0, metadata !28, null}
!1337 = metadata !{i32 574, i32 0, metadata !144, metadata !1336}
!1338 = metadata !{i32 576, i32 0, metadata !144, metadata !1336}
!1339 = metadata !{i32 577, i32 0, metadata !144, metadata !1336}
!1340 = metadata !{i32 578, i32 0, metadata !144, metadata !1336}
!1341 = metadata !{i32 579, i32 0, metadata !144, metadata !1336}
!1342 = metadata !{i32 581, i32 0, metadata !1343, metadata !1336}
!1343 = metadata !{i32 786443, metadata !1, metadata !144, i32 580, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1344 = metadata !{i32 582, i32 0, metadata !1343, metadata !1336}
!1345 = metadata !{i32 584, i32 0, metadata !1343, metadata !1336}
!1346 = metadata !{i32 586, i32 0, metadata !1343, metadata !1336}
!1347 = metadata !{i32 589, i32 0, metadata !144, metadata !1336}
!1348 = metadata !{i32 257, i32 0, metadata !28, null}
!1349 = metadata !{i32 271, i32 0, metadata !49, null}
!1350 = metadata !{i32 277, i32 0, metadata !49, null}
!1351 = metadata !{i32 279, i32 0, metadata !1352, null}
!1352 = metadata !{i32 786443, metadata !1, metadata !49, i32 278, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1353 = metadata !{i32 280, i32 0, metadata !1352, null}
!1354 = metadata !{i32 283, i32 0, metadata !49, null}
!1355 = metadata !{i32 285, i32 0, metadata !1356, null}
!1356 = metadata !{i32 786443, metadata !1, metadata !49, i32 284, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1357 = metadata !{i32 286, i32 0, metadata !1356, null}
!1358 = metadata !{i32 289, i32 0, metadata !49, null}
!1359 = metadata !{i32 290, i32 0, metadata !49, null}
!1360 = metadata !{i32 292, i32 0, metadata !1361, null}
!1361 = metadata !{i32 786443, metadata !1, metadata !49, i32 291, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1362 = metadata !{i32 293, i32 0, metadata !1361, null}
!1363 = metadata !{i32 295, i32 0, metadata !49, null}
!1364 = metadata !{i32 297, i32 0, metadata !1365, null}
!1365 = metadata !{i32 786443, metadata !1, metadata !49, i32 296, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1366 = metadata !{i32 298, i32 0, metadata !1365, null}
!1367 = metadata !{i32 301, i32 0, metadata !49, null}
!1368 = metadata !{i32 307, i32 0, metadata !49, null}
!1369 = metadata !{i32 308, i32 0, metadata !49, null}
!1370 = metadata !{i32 311, i32 0, metadata !49, null}
!1371 = metadata !{i32 312, i32 0, metadata !49, null}
!1372 = metadata !{i32 313, i32 0, metadata !49, null}
!1373 = metadata !{i32 328, i32 0, metadata !152, null}
!1374 = metadata !{i32 331, i32 0, metadata !152, null}
!1375 = metadata !{i32 333, i32 0, metadata !152, null}
!1376 = metadata !{i32 334, i32 0, metadata !152, null}
!1377 = metadata !{i32 335, i32 0, metadata !152, null}
!1378 = metadata !{i32 336, i32 0, metadata !152, null}
!1379 = metadata !{i32 337, i32 0, metadata !152, null}
!1380 = metadata !{i32 338, i32 0, metadata !152, null}
!1381 = metadata !{i32 344, i32 0, metadata !152, null}
!1382 = metadata !{i32 365, i32 0, metadata !1383, null}
!1383 = metadata !{i32 786443, metadata !1, metadata !1384, i32 347, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1384 = metadata !{i32 786443, metadata !1, metadata !152, i32 345, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1385 = metadata !{i32 346, i32 0, metadata !1384, null}
!1386 = metadata !{i32 349, i32 0, metadata !1383, null}
!1387 = metadata !{i32 350, i32 0, metadata !1383, null}
!1388 = metadata !{i32 352, i32 0, metadata !1383, null}
!1389 = metadata !{i32 353, i32 0, metadata !1383, null}
!1390 = metadata !{i32 354, i32 0, metadata !1383, null}
!1391 = metadata !{i32 359, i32 0, metadata !1383, null}
!1392 = metadata !{i32 360, i32 0, metadata !1383, null}
!1393 = metadata !{i32 361, i32 0, metadata !1383, null}
!1394 = metadata !{i32 362, i32 0, metadata !1383, null}
!1395 = metadata !{i32 366, i32 0, metadata !1383, null}
!1396 = metadata !{i32 369, i32 0, metadata !1397, null}
!1397 = metadata !{i32 786443, metadata !1, metadata !1383, i32 368, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1398 = metadata !{i32 370, i32 0, metadata !1397, null}
!1399 = metadata !{i32 375, i32 0, metadata !1383, null}
!1400 = metadata !{i32 376, i32 0, metadata !1383, null}
!1401 = metadata !{i32 378, i32 0, metadata !1402, null}
!1402 = metadata !{i32 786443, metadata !1, metadata !1383, i32 377, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1403 = metadata !{i32 379, i32 0, metadata !1402, null}
!1404 = metadata !{i32 380, i32 0, metadata !1402, null}
!1405 = metadata !{i32 383, i32 0, metadata !1383, null}
!1406 = metadata !{i32 384, i32 0, metadata !1383, null}
!1407 = metadata !{i32 387, i32 0, metadata !1383, null}
!1408 = metadata !{i32 389, i32 0, metadata !1409, null}
!1409 = metadata !{i32 786443, metadata !1, metadata !1383, i32 388, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1410 = metadata !{i32 -1}
!1411 = metadata !{i32 390, i32 0, metadata !1409, null}
!1412 = metadata !{i32 391, i32 0, metadata !1409, null}
!1413 = metadata !{i32 392, i32 0, metadata !1383, null}
!1414 = metadata !{i32 396, i32 0, metadata !152, null}
!1415 = metadata !{i32 398, i32 0, metadata !1416, null}
!1416 = metadata !{i32 786443, metadata !1, metadata !152, i32 398, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1417 = metadata !{i32 400, i32 0, metadata !1418, null}
!1418 = metadata !{i32 786443, metadata !1, metadata !1416, i32 399, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1419 = metadata !{i32 786689, metadata !172, metadata !"s", metadata !25, i32 16777671, metadata !33, i32 0, metadata !1417} ; [ DW_TAG_arg_variable ] [s] [line 455]
!1420 = metadata !{i32 455, i32 0, metadata !172, metadata !1417}
!1421 = metadata !{i32 786688, metadata !172, metadata !"i", metadata !25, i32 457, metadata !31, i32 0, metadata !1417} ; [ DW_TAG_auto_variable ] [i] [line 457]
!1422 = metadata !{i32 457, i32 0, metadata !172, metadata !1417}
!1423 = metadata !{i32 459, i32 0, metadata !172, metadata !1417}
!1424 = metadata !{i32 463, i32 0, metadata !172, metadata !1417}
!1425 = metadata !{i32 460, i32 0, metadata !172, metadata !1417}
!1426 = metadata !{i32 402, i32 0, metadata !1427, null}
!1427 = metadata !{i32 786443, metadata !1, metadata !1418, i32 401, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1428 = metadata !{i32 403, i32 0, metadata !1427, null}
!1429 = metadata !{i32 404, i32 0, metadata !1427, null}
!1430 = metadata !{i32 405, i32 0, metadata !1418, null}
!1431 = metadata !{i32 407, i32 0, metadata !1432, null}
!1432 = metadata !{i32 786443, metadata !1, metadata !1418, i32 406, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1433 = metadata !{i32 408, i32 0, metadata !1432, null}
!1434 = metadata !{i32 409, i32 0, metadata !1432, null}
!1435 = metadata !{i32 413, i32 0, metadata !1418, null}
!1436 = metadata !{i32 416, i32 0, metadata !1437, null}
!1437 = metadata !{i32 786443, metadata !1, metadata !1418, i32 414, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1438 = metadata !{i32 418, i32 0, metadata !1439, null}
!1439 = metadata !{i32 786443, metadata !1, metadata !1437, i32 417, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1440 = metadata !{i32 419, i32 0, metadata !1439, null}
!1441 = metadata !{i32 420, i32 0, metadata !1439, null}
!1442 = metadata !{i32 421, i32 0, metadata !1437, null}
!1443 = metadata !{i32 422, i32 0, metadata !1437, null}
!1444 = metadata !{i32 423, i32 0, metadata !1437, null}
!1445 = metadata !{i32 425, i32 0, metadata !1437, null}
!1446 = metadata !{i32 426, i32 0, metadata !1437, null}
!1447 = metadata !{i32 427, i32 0, metadata !1437, null}
!1448 = metadata !{i32 429, i32 0, metadata !1437, null}
!1449 = metadata !{i32 431, i32 0, metadata !1450, null}
!1450 = metadata !{i32 786443, metadata !1, metadata !1437, i32 430, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c]
!1451 = metadata !{i32 432, i32 0, metadata !1450, null}
!1452 = metadata !{i32 433, i32 0, metadata !1450, null}
!1453 = metadata !{i32 434, i32 0, metadata !1437, null}
!1454 = metadata !{i32 435, i32 0, metadata !1437, null}
!1455 = metadata !{i32 436, i32 0, metadata !1437, null}
!1456 = metadata !{i32 441, i32 0, metadata !152, null}
!1457 = metadata !{i32 442, i32 0, metadata !152, null}
!1458 = metadata !{i32 599, i32 0, metadata !112, null}
!1459 = metadata !{i32 601, i32 0, metadata !112, null}
!1460 = metadata !{i32 602, i32 0, metadata !112, null}
!1461 = metadata !{i32 604, i32 0, metadata !112, null}
!1462 = metadata !{i32 606, i32 0, metadata !1017, null}
!1463 = metadata !{i32 607, i32 0, metadata !1017, null}
!1464 = metadata !{i32 609, i32 0, metadata !112, null}
!1465 = metadata !{i32 1044, i32 0, metadata !120, null}
!1466 = metadata !{i32 1045, i32 0, metadata !120, null}
!1467 = metadata !{i32 1046, i32 0, metadata !120, null}
!1468 = metadata !{i32 1047, i32 0, metadata !120, null}
!1469 = metadata !{i32 1048, i32 0, metadata !120, null}
