; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/configfile.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct.Mapping = type { i8*, i8*, i32, double, i32, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
@errortext = external global [300 x i8]
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
@log2_max_frame_num_minus4 = external global i32
@log2_max_pic_order_cnt_lsb_minus4 = external global i32
@.str167 = private unnamed_addr constant [66 x i8] c"Number of B-frames %d can not exceed the number of frames skipped\00", align 1
@.str168 = private unnamed_addr constant [56 x i8] c"Unsupported direct mode=%d, use TEMPORAL=0 or SPATIAL=1\00", align 1
@.str169 = private unnamed_addr constant [55 x i8] c"\0ADirectInferenceFlag set to 1 due to interlace coding.\00", align 1
@.str170 = private unnamed_addr constant [67 x i8] c"Incorrect value %d for IntraBottom. Use 0 (disable) or 1 (enable).\00", align 1
@.str171 = private unnamed_addr constant [50 x i8] c"Unsupported symbol mode=%d, use UVLC=0 or CABAC=1\00", align 1
@p_in = external global i32
@.str172 = private unnamed_addr constant [29 x i8] c"Input file %s does not exist\00", align 1
@p_dec = external global i32
@.str173 = private unnamed_addr constant [19 x i8] c"Error open file %s\00", align 1
@.str174 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@p_trace = external global %struct._IO_FILE*
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
@str233 = private unnamed_addr constant [55 x i8] c"*               Encoder Parameters                   *\00"
@str235 = private unnamed_addr constant [55 x i8] c"******************************************************\00"

; Function Attrs: noreturn nounwind optsize uwtable
define void @JMHelpExit() #0 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([956 x i8]* @.str150, i64 0, i64 0), i64 955, i64 1, %struct._IO_FILE* %0)
  tail call void @exit(i32 -1) #8
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #1

; Function Attrs: nounwind optsize uwtable
define void @Configure(i32 %ac, i8** nocapture %av) #2 {
entry:
  %tmp.i = alloca i32, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.InputParameters* @configinput to i8*), i8 0, i64 3592, i32 8, i1 false)
  %puts = call i32 @puts(i8* getelementptr inbounds ([30 x i8]* @str, i64 0, i64 0))
  %0 = load i8** getelementptr inbounds ([151 x %struct.Mapping]* @Map, i64 0, i64 0, i32 0), align 16, !tbaa !0
  %cmp1.i = icmp eq i8* %0, null
  br i1 %cmp1.i, label %InitEncoderParams.exit, label %while.body.i

while.body.i:                                     ; preds = %entry, %if.end20.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.end20.i ], [ 0, %entry ]
  %Type.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i, i32 2
  %1 = load i32* %Type.i, align 8, !tbaa !3
  switch i32 %1, label %if.end20.i [
    i32 0, label %if.then.i
    i32 2, label %if.then13.i
  ]

if.then.i:                                        ; preds = %while.body.i
  %Default.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i, i32 3
  %2 = load double* %Default.i, align 8, !tbaa !4
  %conv.i = fptosi double %2 to i32
  %Place.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i, i32 1
  %3 = load i8** %Place.i, align 8, !tbaa !0
  %4 = bitcast i8* %3 to i32*
  store i32 %conv.i, i32* %4, align 4, !tbaa !3
  br label %if.end20.i

if.then13.i:                                      ; preds = %while.body.i
  %Default16.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i, i32 3
  %5 = load double* %Default16.i, align 8, !tbaa !4
  %Place19.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i, i32 1
  %6 = load i8** %Place19.i, align 8, !tbaa !0
  %7 = bitcast i8* %6 to double*
  store double %5, double* %7, align 8, !tbaa !4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then13.i, %if.then.i, %while.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %TokenName.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.next.i, i32 0
  %8 = load i8** %TokenName.i, align 8, !tbaa !0
  %cmp.i = icmp eq i8* %8, null
  br i1 %cmp.i, label %InitEncoderParams.exit, label %while.body.i

InitEncoderParams.exit:                           ; preds = %if.end20.i, %entry
  %cmp = icmp eq i32 %ac, 2
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %InitEncoderParams.exit
  %arrayidx = getelementptr inbounds i8** %av, i64 1
  %9 = load i8** %arrayidx, align 8, !tbaa !0
  %call2 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([3 x i8]* @.str153, i64 0, i64 0), i64 2) #9
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end19

if.then4:                                         ; preds = %if.then
  call void @JMHelpExit() #10
  unreachable

if.end5:                                          ; preds = %InitEncoderParams.exit
  %cmp6 = icmp sgt i32 %ac, 2
  br i1 %cmp6, label %if.then7, label %if.end19

if.then7:                                         ; preds = %if.end5
  %arrayidx8 = getelementptr inbounds i8** %av, i64 1
  %10 = load i8** %arrayidx8, align 8, !tbaa !0
  %call9 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([3 x i8]* @.str154, i64 0, i64 0), i64 2) #9
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then7
  %arrayidx12 = getelementptr inbounds i8** %av, i64 2
  %11 = load i8** %arrayidx12, align 8, !tbaa !0
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then7
  %CLcount.0 = phi i32 [ 3, %if.then11 ], [ 1, %if.then7 ]
  %filename.0 = phi i8* [ %11, %if.then11 ], [ getelementptr inbounds ([12 x i8]* @.str151, i64 0, i64 0), %if.then7 ]
  %call15 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([3 x i8]* @.str153, i64 0, i64 0), i64 2) #9
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @JMHelpExit() #10
  unreachable

if.end19:                                         ; preds = %if.then, %if.end13, %if.end5
  %CLcount.1 = phi i32 [ %CLcount.0, %if.end13 ], [ 1, %if.end5 ], [ 1, %if.then ]
  %filename.1 = phi i8* [ %filename.0, %if.end13 ], [ getelementptr inbounds ([12 x i8]* @.str151, i64 0, i64 0), %if.end5 ], [ getelementptr inbounds ([12 x i8]* @.str151, i64 0, i64 0), %if.then ]
  %call20 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str155, i64 0, i64 0), i8* %filename.1) #11
  %call21 = call i8* @GetConfigFileContent(i8* %filename.1) #10
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %call25 = call i64 @strlen(i8* %call21) #9
  %conv = trunc i64 %call25 to i32
  call fastcc void @ParseContent(i8* %call21, i32 %conv) #10
  %putchar = call i32 @putchar(i32 10) #3
  call void @free(i8* %call21) #11
  %cmp27209 = icmp slt i32 %CLcount.1, %ac
  br i1 %cmp27209, label %while.body.lr.ph, label %while.end124

while.body.lr.ph:                                 ; preds = %if.end24, %while.cond.outer.backedge
  %CLcount.2.ph210 = phi i32 [ %CLcount.2.ph.be, %while.cond.outer.backedge ], [ %CLcount.1, %if.end24 ]
  %idxprom = sext i32 %CLcount.2.ph210 to i64
  %arrayidx29 = getelementptr inbounds i8** %av, i64 %idxprom
  br label %while.body

while.body:                                       ; preds = %if.else118, %while.body.lr.ph
  %12 = load i8** %arrayidx29, align 8, !tbaa !0
  %call30 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([3 x i8]* @.str153, i64 0, i64 0), i64 2) #9
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %while.body
  call void @JMHelpExit() #10
  unreachable

if.end34:                                         ; preds = %while.body
  %call37 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([3 x i8]* @.str157, i64 0, i64 0), i64 2) #9
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end34
  %add = add nsw i32 %CLcount.2.ph210, 1
  %idxprom41 = sext i32 %add to i64
  %arrayidx42 = getelementptr inbounds i8** %av, i64 %idxprom41
  %13 = load i8** %arrayidx42, align 8, !tbaa !0
  %call43 = call i8* @GetConfigFileContent(i8* %13) #10
  %cmp44 = icmp eq i8* %call43, null
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.then40
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #11
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.then40
  %14 = load i8** %arrayidx42, align 8, !tbaa !0
  %call51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str155, i64 0, i64 0), i8* %14) #11
  %call52 = call i64 @strlen(i8* %call43) #9
  %conv53 = trunc i64 %call52 to i32
  call fastcc void @ParseContent(i8* %call43, i32 %conv53) #10
  %putchar185 = call i32 @putchar(i32 10) #3
  call void @free(i8* %call43) #11
  %add55 = add nsw i32 %CLcount.2.ph210, 2
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end47, %while.end113
  %CLcount.2.ph.be = phi i32 [ %add55, %if.end47 ], [ %CLcount.3.lcssa, %while.end113 ]
  %cmp27 = icmp slt i32 %CLcount.2.ph.be, %ac
  br i1 %cmp27, label %while.body.lr.ph, label %while.end124

if.else:                                          ; preds = %if.end34
  %call58 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([3 x i8]* @.str158, i64 0, i64 0), i64 2) #9
  %cmp59 = icmp eq i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.else118

if.then61:                                        ; preds = %if.else
  %inc = add i32 %CLcount.2.ph210, 1
  %cmp63202 = icmp slt i32 %inc, %ac
  br i1 %cmp63202, label %land.rhs.lr.ph, label %while.end

land.rhs.lr.ph:                                   ; preds = %if.then61
  %15 = sext i32 %inc to i64
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body71
  %indvars.iv = phi i64 [ %15, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body71 ]
  %NumberParams.0204 = phi i32 [ %inc, %land.rhs.lr.ph ], [ %inc72, %while.body71 ]
  %ContentLen.0203 = phi i32 [ 0, %land.rhs.lr.ph ], [ %conv78, %while.body71 ]
  %arrayidx66 = getelementptr inbounds i8** %av, i64 %indvars.iv
  %16 = load i8** %arrayidx66, align 8, !tbaa !0
  %17 = load i8* %16, align 1, !tbaa !1
  %cmp69 = icmp eq i8 %17, 45
  br i1 %cmp69, label %while.end, label %while.body71

while.body71:                                     ; preds = %land.rhs
  %inc72 = add nsw i32 %NumberParams.0204, 1
  %call75 = call i64 @strlen(i8* %16) #9
  %conv76184 = zext i32 %ContentLen.0203 to i64
  %add77 = add i64 %call75, %conv76184
  %conv78 = trunc i64 %add77 to i32
  %cmp63 = icmp slt i32 %inc72, %ac
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp63, label %land.rhs, label %while.end

while.end:                                        ; preds = %while.body71, %land.rhs, %if.then61
  %NumberParams.0.lcssa = phi i32 [ %inc, %if.then61 ], [ %NumberParams.0204, %land.rhs ], [ %inc72, %while.body71 ]
  %ContentLen.0.lcssa = phi i32 [ 0, %if.then61 ], [ %ContentLen.0203, %land.rhs ], [ %conv78, %while.body71 ]
  %add79 = add nsw i32 %ContentLen.0.lcssa, 1000
  %conv80 = sext i32 %add79 to i64
  %call81 = call noalias i8* @malloc(i64 %conv80) #11
  %cmp82 = icmp eq i8* %call81, null
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %while.end
  call void @no_mem_exit(i8* getelementptr inbounds ([19 x i8]* @.str159, i64 0, i64 0)) #11
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %while.end
  store i8 0, i8* %call81, align 1, !tbaa !1
  %cmp88206 = icmp slt i32 %inc, %NumberParams.0.lcssa
  br i1 %cmp88206, label %while.body90.lr.ph, label %while.end113

while.body90.lr.ph:                               ; preds = %if.end85
  %18 = sext i32 %inc to i64
  br label %while.body90

while.body90:                                     ; preds = %while.end111, %while.body90.lr.ph
  %indvars.iv215 = phi i64 [ %18, %while.body90.lr.ph ], [ %indvars.iv.next216, %while.end111 ]
  %CLcount.3207 = phi i32 [ %inc, %while.body90.lr.ph ], [ %inc112, %while.end111 ]
  %arrayidx92 = getelementptr inbounds i8** %av, i64 %indvars.iv215
  %19 = load i8** %arrayidx92, align 8, !tbaa !0
  %call94 = call i64 @strlen(i8* %call81) #9
  %arrayidx95 = getelementptr inbounds i8* %call81, i64 %call94
  br label %while.cond96

while.cond96:                                     ; preds = %if.end109, %while.body90
  %source.0 = phi i8* [ %19, %while.body90 ], [ %incdec.ptr110, %if.end109 ]
  %destin.0 = phi i8* [ %arrayidx95, %while.body90 ], [ %destin.1, %if.end109 ]
  %20 = load i8* %source.0, align 1, !tbaa !1
  switch i8 %20, label %if.else107 [
    i8 0, label %while.end111
    i8 61, label %if.then104
  ]

if.then104:                                       ; preds = %while.cond96
  %incdec.ptr = getelementptr inbounds i8* %destin.0, i64 1
  store i8 32, i8* %destin.0, align 1, !tbaa !1
  %incdec.ptr105 = getelementptr inbounds i8* %destin.0, i64 2
  store i8 61, i8* %incdec.ptr, align 1, !tbaa !1
  store i8 32, i8* %incdec.ptr105, align 1, !tbaa !1
  br label %if.end109

if.else107:                                       ; preds = %while.cond96
  store i8 %20, i8* %destin.0, align 1, !tbaa !1
  br label %if.end109

if.end109:                                        ; preds = %if.else107, %if.then104
  %incdec.ptr105.pn = phi i8* [ %incdec.ptr105, %if.then104 ], [ %destin.0, %if.else107 ]
  %destin.1 = getelementptr inbounds i8* %incdec.ptr105.pn, i64 1
  %incdec.ptr110 = getelementptr inbounds i8* %source.0, i64 1
  br label %while.cond96

while.end111:                                     ; preds = %while.cond96
  store i8 0, i8* %destin.0, align 1, !tbaa !1
  %inc112 = add nsw i32 %CLcount.3207, 1
  %indvars.iv.next216 = add i64 %indvars.iv215, 1
  %exitcond218 = icmp eq i32 %inc112, %NumberParams.0.lcssa
  br i1 %exitcond218, label %while.end113, label %while.body90

while.end113:                                     ; preds = %while.end111, %if.end85
  %CLcount.3.lcssa = phi i32 [ %inc, %if.end85 ], [ %NumberParams.0.lcssa, %while.end111 ]
  %call114 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([33 x i8]* @.str160, i64 0, i64 0), i8* %call81) #11
  %call115 = call i64 @strlen(i8* %call81) #9
  %conv116 = trunc i64 %call115 to i32
  call fastcc void @ParseContent(i8* %call81, i32 %conv116) #10
  call void @free(i8* %call81) #11
  %putchar183 = call i32 @putchar(i32 10) #3
  br label %while.cond.outer.backedge

if.else118:                                       ; preds = %if.else
  %call121 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([79 x i8]* @.str161, i64 0, i64 0), i32 %CLcount.2.ph210, i8* %12) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #11
  br label %while.body

while.end124:                                     ; preds = %if.end24, %while.cond.outer.backedge
  %putchar182 = call i32 @putchar(i32 10) #3
  %21 = bitcast i32* %tmp.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #3
  %22 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %BitDepthLuma.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 135
  %23 = load i32* %BitDepthLuma.i, align 4, !tbaa !3
  %LowPassForIntra8x8.i = getelementptr inbounds %struct.InputParameters* %22, i64 0, i32 124
  store i32 1, i32* %LowPassForIntra8x8.i, align 4, !tbaa !3
  %24 = load i8** getelementptr inbounds ([151 x %struct.Mapping]* @Map, i64 0, i64 0, i32 0), align 16, !tbaa !0
  %cmp1.i.i = icmp eq i8* %24, null
  br i1 %cmp1.i.i, label %TestEncoderParams.exit.i, label %while.body.lr.ph.i.i

while.body.lr.ph.i.i:                             ; preds = %while.end124
  %25 = mul i32 %23, 6
  %mul.i = add i32 %25, -48
  %conv148.i.i = sitofp i32 %mul.i to double
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end181.i.i, %while.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %while.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %if.end181.i.i ]
  %26 = phi i8* [ %24, %while.body.lr.ph.i.i ], [ %51, %if.end181.i.i ]
  %param_limits.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 4
  %27 = load i32* %param_limits.i.i, align 8, !tbaa !3
  switch i32 %27, label %if.end181.i.i [
    i32 1, label %if.then.i.i
    i32 2, label %if.then77.i.i
    i32 3, label %if.then135.i.i
  ]

if.then.i.i:                                      ; preds = %while.body.i.i
  %Type.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 2
  %28 = load i32* %Type.i.i, align 8, !tbaa !3
  switch i32 %28, label %if.end181.i.i [
    i32 0, label %if.then7.i.i
    i32 2, label %if.then39.i.i
  ]

if.then7.i.i:                                     ; preds = %if.then.i.i
  %Place.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 1
  %29 = load i8** %Place.i.i, align 8, !tbaa !0
  %30 = bitcast i8* %29 to i32*
  %31 = load i32* %30, align 4, !tbaa !3
  %min_limit.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 5
  %32 = load double* %min_limit.i.i, align 8, !tbaa !4
  %conv.i.i = fptosi double %32 to i32
  %cmp12.i.i = icmp slt i32 %31, %conv.i.i
  %max_limit32.phi.trans.insert.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 6
  %.pre.i.i = load double* %max_limit32.phi.trans.insert.i.i, align 8, !tbaa !4
  %conv33.i.pre.i = fptosi double %.pre.i.i to i32
  %cmp20.i.i = icmp sgt i32 %31, %conv33.i.pre.i
  %or.cond791.i = or i1 %cmp12.i.i, %cmp20.i.i
  br i1 %or.cond791.i, label %if.then22.i.i, label %if.end181.i.i

if.then22.i.i:                                    ; preds = %if.then7.i.i
  %call.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([90 x i8]* @.str217, i64 0, i64 0), i8* %26, i32 %conv.i.i, i32 %conv33.i.pre.i) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #11
  br label %if.end181.i.i

if.then39.i.i:                                    ; preds = %if.then.i.i
  %Place42.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 1
  %33 = load i8** %Place42.i.i, align 8, !tbaa !0
  %34 = bitcast i8* %33 to double*
  %35 = load double* %34, align 8, !tbaa !4
  %min_limit45.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 5
  %36 = load double* %min_limit45.i.i, align 8, !tbaa !4
  %cmp46.i.i = fcmp olt double %35, %36
  %max_limit66.phi.trans.insert.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 6
  %.pre5.i.i = load double* %max_limit66.phi.trans.insert.i.i, align 8, !tbaa !4
  %cmp55.i.i = fcmp ogt double %35, %.pre5.i.i
  %or.cond.i.i = or i1 %cmp46.i.i, %cmp55.i.i
  br i1 %or.cond.i.i, label %if.then57.i.i, label %if.end181.i.i

if.then57.i.i:                                    ; preds = %if.then39.i.i
  %call67.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([94 x i8]* @.str218, i64 0, i64 0), i8* %26, double %36, double %.pre5.i.i) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #11
  br label %if.end181.i.i

if.then77.i.i:                                    ; preds = %while.body.i.i
  %Type80.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 2
  %37 = load i32* %Type80.i.i, align 8, !tbaa !3
  switch i32 %37, label %if.end181.i.i [
    i32 0, label %if.then83.i.i
    i32 2, label %if.then109.i.i
  ]

if.then83.i.i:                                    ; preds = %if.then77.i.i
  %Place86.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 1
  %38 = load i8** %Place86.i.i, align 8, !tbaa !0
  %39 = bitcast i8* %38 to i32*
  %40 = load i32* %39, align 4, !tbaa !3
  %min_limit89.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 5
  %41 = load double* %min_limit89.i.i, align 8, !tbaa !4
  %conv90.i.i = fptosi double %41 to i32
  %cmp91.i.i = icmp slt i32 %40, %conv90.i.i
  br i1 %cmp91.i.i, label %if.then93.i.i, label %if.end181.i.i

if.then93.i.i:                                    ; preds = %if.then83.i.i
  %call101.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([92 x i8]* @.str219, i64 0, i64 0), i8* %26, i32 %conv90.i.i) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #11
  br label %if.end181.i.i

if.then109.i.i:                                   ; preds = %if.then77.i.i
  %Place112.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 1
  %42 = load i8** %Place112.i.i, align 8, !tbaa !0
  %43 = bitcast i8* %42 to double*
  %44 = load double* %43, align 8, !tbaa !4
  %min_limit115.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 5
  %45 = load double* %min_limit115.i.i, align 8, !tbaa !4
  %cmp116.i.i = fcmp olt double %44, %45
  br i1 %cmp116.i.i, label %if.then118.i.i, label %if.end181.i.i

if.then118.i.i:                                   ; preds = %if.then109.i.i
  %call125.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([94 x i8]* @.str220, i64 0, i64 0), i8* %26, double %45) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #11
  br label %if.end181.i.i

if.then135.i.i:                                   ; preds = %while.body.i.i
  %Type138.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 2
  %46 = load i32* %Type138.i.i, align 8, !tbaa !3
  %cmp139.i.i = icmp eq i32 %46, 0
  br i1 %cmp139.i.i, label %if.then141.i.i, label %if.end181.i.i

if.then141.i.i:                                   ; preds = %if.then135.i.i
  %Place144.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 1
  %47 = load i8** %Place144.i.i, align 8, !tbaa !0
  %48 = bitcast i8* %47 to i32*
  %49 = load i32* %48, align 4, !tbaa !3
  %min_limit147.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 5
  %50 = load double* %min_limit147.i.i, align 8, !tbaa !4
  %sub.i.i = fsub double %50, %conv148.i.i
  %conv149.i.i = fptosi double %sub.i.i to i32
  %cmp150.i.i = icmp slt i32 %49, %conv149.i.i
  %max_limit174.phi.trans.insert.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i.i, i32 6
  %.pre6.i.i = load double* %max_limit174.phi.trans.insert.i.i, align 8, !tbaa !4
  %conv175.i.pre.i = fptosi double %.pre6.i.i to i32
  %cmp160.i.i = icmp sgt i32 %49, %conv175.i.pre.i
  %or.cond792.i = or i1 %cmp150.i.i, %cmp160.i.i
  br i1 %or.cond792.i, label %if.then162.i.i, label %if.end181.i.i

if.then162.i.i:                                   ; preds = %if.then141.i.i
  %call176.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([90 x i8]* @.str217, i64 0, i64 0), i8* %26, i32 %conv149.i.i, i32 %conv175.i.pre.i) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #11
  br label %if.end181.i.i

if.end181.i.i:                                    ; preds = %if.then162.i.i, %if.then141.i.i, %if.then135.i.i, %if.then118.i.i, %if.then109.i.i, %if.then93.i.i, %if.then83.i.i, %if.then77.i.i, %if.then57.i.i, %if.then39.i.i, %if.then22.i.i, %if.then7.i.i, %if.then.i.i, %while.body.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1
  %TokenName.i.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.next.i.i, i32 0
  %51 = load i8** %TokenName.i.i, align 8, !tbaa !0
  %cmp.i.i = icmp eq i8* %51, null
  br i1 %cmp.i.i, label %TestEncoderParams.exit.loopexit.i, label %while.body.i.i

TestEncoderParams.exit.loopexit.i:                ; preds = %if.end181.i.i
  %.pre.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %TestEncoderParams.exit.i

TestEncoderParams.exit.i:                         ; preds = %TestEncoderParams.exit.loopexit.i, %while.end124
  %52 = phi %struct.InputParameters* [ %.pre.i, %TestEncoderParams.exit.loopexit.i ], [ %22, %while.end124 ]
  %FrameRate.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 76
  %53 = load double* %FrameRate.i, align 8, !tbaa !4
  %cmp.i194 = fcmp oeq double %53, 0.000000e+00
  br i1 %cmp.i194, label %if.then.i195, label %if.end.i

if.then.i195:                                     ; preds = %TestEncoderParams.exit.i
  store double 3.000000e+01, double* %FrameRate.i, align 8, !tbaa !4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i195, %TestEncoderParams.exit.i
  %arrayidx2.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 0, i64 0
  store i32 16, i32* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 0, i64 1
  store i32 16, i32* %arrayidx5.i, align 4, !tbaa !3
  %arrayidx8.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 1, i64 0
  store i32 16, i32* %arrayidx8.i, align 4, !tbaa !3
  %arrayidx11.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 1, i64 1
  store i32 16, i32* %arrayidx11.i, align 4, !tbaa !3
  %arrayidx14.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 2, i64 0
  store i32 16, i32* %arrayidx14.i, align 4, !tbaa !3
  %arrayidx17.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 2, i64 1
  store i32 8, i32* %arrayidx17.i, align 4, !tbaa !3
  %arrayidx20.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 3, i64 0
  store i32 8, i32* %arrayidx20.i, align 4, !tbaa !3
  %arrayidx23.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 3, i64 1
  store i32 16, i32* %arrayidx23.i, align 4, !tbaa !3
  %arrayidx26.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 4, i64 0
  store i32 8, i32* %arrayidx26.i, align 4, !tbaa !3
  %arrayidx29.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 4, i64 1
  store i32 8, i32* %arrayidx29.i, align 4, !tbaa !3
  %arrayidx32.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 5, i64 0
  store i32 8, i32* %arrayidx32.i, align 4, !tbaa !3
  %arrayidx35.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 5, i64 1
  store i32 4, i32* %arrayidx35.i, align 4, !tbaa !3
  %arrayidx38.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 6, i64 0
  store i32 4, i32* %arrayidx38.i, align 4, !tbaa !3
  %arrayidx41.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 6, i64 1
  store i32 8, i32* %arrayidx41.i, align 4, !tbaa !3
  %arrayidx44.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 7, i64 0
  store i32 4, i32* %arrayidx44.i, align 4, !tbaa !3
  %arrayidx47.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 20, i64 7, i64 1
  store i32 4, i32* %arrayidx47.i, align 4, !tbaa !3
  %arrayidx49.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 0, i64 0
  store i32 4, i32* %arrayidx49.i, align 4, !tbaa !3
  %arrayidx52.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 0, i64 1
  store i32 4, i32* %arrayidx52.i, align 4, !tbaa !3
  %arrayidx55.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 1, i64 0
  store i32 4, i32* %arrayidx55.i, align 4, !tbaa !3
  %arrayidx58.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 1, i64 1
  store i32 4, i32* %arrayidx58.i, align 4, !tbaa !3
  %arrayidx61.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 2, i64 0
  store i32 4, i32* %arrayidx61.i, align 4, !tbaa !3
  %arrayidx64.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 2, i64 1
  store i32 2, i32* %arrayidx64.i, align 4, !tbaa !3
  %arrayidx67.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 3, i64 0
  store i32 2, i32* %arrayidx67.i, align 4, !tbaa !3
  %arrayidx70.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 3, i64 1
  store i32 4, i32* %arrayidx70.i, align 4, !tbaa !3
  %arrayidx73.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 4, i64 0
  store i32 2, i32* %arrayidx73.i, align 4, !tbaa !3
  %arrayidx76.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 4, i64 1
  store i32 2, i32* %arrayidx76.i, align 4, !tbaa !3
  %arrayidx79.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 5, i64 0
  store i32 2, i32* %arrayidx79.i, align 4, !tbaa !3
  %arrayidx82.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 5, i64 1
  store i32 1, i32* %arrayidx82.i, align 4, !tbaa !3
  %arrayidx85.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 6, i64 0
  store i32 1, i32* %arrayidx85.i, align 4, !tbaa !3
  %arrayidx88.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 6, i64 1
  store i32 2, i32* %arrayidx88.i, align 4, !tbaa !3
  %arrayidx91.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 7, i64 0
  store i32 1, i32* %arrayidx91.i, align 4, !tbaa !3
  %arrayidx94.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 21, i64 7, i64 1
  store i32 1, i32* %arrayidx94.i, align 4, !tbaa !3
  %BRefPictures.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 54
  %54 = load i32* %BRefPictures.i, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %54, 0
  br i1 %tobool.i, label %cond.end.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end.i
  %successive_Bframe.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 34
  %55 = load i32* %successive_Bframe.i, align 4, !tbaa !3
  %add.i = add nsw i32 %55, 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i
  %cond.i = phi i32 [ %add.i, %cond.true.i ], [ 1, %if.end.i ]
  %Log2MaxFrameNum.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 13
  %56 = load i32* %Log2MaxFrameNum.i, align 4, !tbaa !3
  %cmp95.i = icmp slt i32 %56, 4
  br i1 %cmp95.i, label %if.then96.i, label %if.else.i

if.then96.i:                                      ; preds = %cond.end.i
  %no_frames.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 2
  %57 = load i32* %no_frames.i, align 4, !tbaa !3
  %mul97.i = mul nsw i32 %57, %cond.i
  %sub.i681.i = add i32 %mul97.i, -1
  %cmp3.i.i = icmp eq i32 %sub.i681.i, 0
  br i1 %cmp3.i.i, label %if.end111.i, label %while.body.i683.i

while.body.i683.i:                                ; preds = %if.then96.i, %while.body.i683.i
  %uiRet.05.i.i = phi i32 [ %inc.i.i, %while.body.i683.i ], [ 0, %if.then96.i ]
  %uiTmp.04.i.i = phi i32 [ %shr.i.i, %while.body.i683.i ], [ %sub.i681.i, %if.then96.i ]
  %shr.i.i = lshr i32 %uiTmp.04.i.i, 1
  %inc.i.i = add i32 %uiRet.05.i.i, 1
  %cmp.i682.i = icmp eq i32 %shr.i.i, 0
  br i1 %cmp.i682.i, label %CeilLog2.exit.i, label %while.body.i683.i

CeilLog2.exit.i:                                  ; preds = %while.body.i683.i
  %sub99.i = add i32 %uiRet.05.i.i, -3
  %cmp100.i = icmp sgt i32 %sub99.i, 0
  br i1 %cmp100.i, label %while.body.i691.i, label %if.end111.i

while.body.i691.i:                                ; preds = %CeilLog2.exit.i, %while.body.i691.i
  %uiRet.05.i686.i = phi i32 [ %inc.i689.i, %while.body.i691.i ], [ 0, %CeilLog2.exit.i ]
  %uiTmp.04.i687.i = phi i32 [ %shr.i688.i, %while.body.i691.i ], [ %sub.i681.i, %CeilLog2.exit.i ]
  %shr.i688.i = lshr i32 %uiTmp.04.i687.i, 1
  %inc.i689.i = add i32 %uiRet.05.i686.i, 1
  %cmp.i690.i = icmp eq i32 %shr.i688.i, 0
  br i1 %cmp.i690.i, label %CeilLog2.exit693.i, label %while.body.i691.i

CeilLog2.exit693.i:                               ; preds = %while.body.i691.i
  %phitmp730.i = add i32 %uiRet.05.i686.i, -3
  br label %if.end111.i

if.else.i:                                        ; preds = %cond.end.i
  %sub110.i = add nsw i32 %56, -4
  %no_frames112.pre.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 2
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.else.i, %CeilLog2.exit693.i, %CeilLog2.exit.i, %if.then96.i
  %no_frames112.pre-phi.i = phi i32* [ %no_frames.i, %if.then96.i ], [ %no_frames.i, %CeilLog2.exit693.i ], [ %no_frames.i, %CeilLog2.exit.i ], [ %no_frames112.pre.i, %if.else.i ]
  %storemerge.i = phi i32 [ 0, %if.then96.i ], [ %phitmp730.i, %CeilLog2.exit693.i ], [ 0, %CeilLog2.exit.i ], [ %sub110.i, %if.else.i ]
  store i32 %storemerge.i, i32* @log2_max_frame_num_minus4, align 4, !tbaa !3
  %58 = load i32* %no_frames112.pre-phi.i, align 4, !tbaa !3
  %mul113.i = shl i32 %58, 1
  %jumpd.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 5
  %59 = load i32* %jumpd.i, align 4, !tbaa !3
  %add114.i = add nsw i32 %59, 1
  %mul115.i = mul nsw i32 %mul113.i, %add114.i
  %sub.i694.i = add i32 %mul115.i, -1
  br label %while.body.i700.i

while.body.i700.i:                                ; preds = %while.body.i700.i, %if.end111.i
  %uiRet.05.i695.i = phi i32 [ %inc.i698.i, %while.body.i700.i ], [ 0, %if.end111.i ]
  %uiTmp.04.i696.i = phi i32 [ %shr.i697.i, %while.body.i700.i ], [ %sub.i694.i, %if.end111.i ]
  %shr.i697.i = lshr i32 %uiTmp.04.i696.i, 1
  %inc.i698.i = add i32 %uiRet.05.i695.i, 1
  %cmp.i699.i = icmp eq i32 %shr.i697.i, 0
  br i1 %cmp.i699.i, label %CeilLog2.exit702.i, label %while.body.i700.i

CeilLog2.exit702.i:                               ; preds = %while.body.i700.i
  %sub117.i = add i32 %uiRet.05.i695.i, -3
  %cmp118.i = icmp sgt i32 %sub117.i, 0
  br i1 %cmp118.i, label %while.body.i709.i, label %cond.end128.i

while.body.i709.i:                                ; preds = %CeilLog2.exit702.i, %while.body.i709.i
  %uiRet.05.i704.i = phi i32 [ %inc.i707.i, %while.body.i709.i ], [ 0, %CeilLog2.exit702.i ]
  %uiTmp.04.i705.i = phi i32 [ %shr.i706.i, %while.body.i709.i ], [ %sub.i694.i, %CeilLog2.exit702.i ]
  %shr.i706.i = lshr i32 %uiTmp.04.i705.i, 1
  %inc.i707.i = add i32 %uiRet.05.i704.i, 1
  %cmp.i708.i = icmp eq i32 %shr.i706.i, 0
  br i1 %cmp.i708.i, label %CeilLog2.exit711.i, label %while.body.i709.i

CeilLog2.exit711.i:                               ; preds = %while.body.i709.i
  %sub126.i = add i32 %uiRet.05.i704.i, -3
  br label %cond.end128.i

cond.end128.i:                                    ; preds = %CeilLog2.exit711.i, %CeilLog2.exit702.i
  %cond129.i = phi i32 [ %sub126.i, %CeilLog2.exit711.i ], [ 0, %CeilLog2.exit702.i ]
  store i32 %cond129.i, i32* @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !3
  %successive_Bframe130.i = getelementptr inbounds %struct.InputParameters* %52, i64 0, i32 34
  %60 = load i32* %successive_Bframe130.i, align 4, !tbaa !3
  %61 = load i32* %jumpd.i, align 4, !tbaa !3
  %cmp132.i = icmp sgt i32 %60, %61
  br i1 %cmp132.i, label %if.then133.i, label %if.end136.i

if.then133.i:                                     ; preds = %cond.end128.i
  %call135.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([66 x i8]* @.str167, i64 0, i64 0), i32 %60) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #11
  %.pre735.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  %successive_Bframe137.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre735.i, i64 0, i32 34
  %.pre736.i = load i32* %successive_Bframe137.phi.trans.insert.i, align 4, !tbaa !3
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then133.i, %cond.end128.i
  %62 = phi i32 [ %.pre736.i, %if.then133.i ], [ %60, %cond.end128.i ]
  %63 = phi %struct.InputParameters* [ %.pre735.i, %if.then133.i ], [ %52, %cond.end128.i ]
  %tobool138.i = icmp eq i32 %62, 0
  br i1 %tobool138.i, label %if.end146.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end136.i
  %direct_spatial_mv_pred_flag.i = getelementptr inbounds %struct.InputParameters* %63, i64 0, i32 37
  %64 = load i32* %direct_spatial_mv_pred_flag.i, align 4, !tbaa !3
  %switch.i = icmp ult i32 %64, 2
  br i1 %switch.i, label %if.end146.i, label %if.then143.i

if.then143.i:                                     ; preds = %land.lhs.true.i
  %call145.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([56 x i8]* @.str168, i64 0, i64 0), i32 %64) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #11
  %.pre737.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then143.i, %land.lhs.true.i, %if.end136.i
  %65 = phi %struct.InputParameters* [ %63, %land.lhs.true.i ], [ %63, %if.end136.i ], [ %.pre737.i, %if.then143.i ]
  %PicInterlace.i = getelementptr inbounds %struct.InputParameters* %65, i64 0, i32 91
  %66 = load i32* %PicInterlace.i, align 4, !tbaa !3
  %cmp147.i = icmp sgt i32 %66, 0
  br i1 %cmp147.i, label %if.then149.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end146.i
  %MbInterlace.i = getelementptr inbounds %struct.InputParameters* %65, i64 0, i32 92
  %67 = load i32* %MbInterlace.i, align 4, !tbaa !3
  %cmp148.i = icmp sgt i32 %67, 0
  br i1 %cmp148.i, label %if.then149.i, label %if.end167.i

if.then149.i:                                     ; preds = %lor.lhs.false.i, %if.end146.i
  %directInferenceFlag.i = getelementptr inbounds %struct.InputParameters* %65, i64 0, i32 38
  %68 = load i32* %directInferenceFlag.i, align 4, !tbaa !3
  %cmp150.i = icmp eq i32 %68, 0
  br i1 %cmp150.i, label %if.then151.i, label %if.end155.i

if.then151.i:                                     ; preds = %if.then149.i
  %call152.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([55 x i8]* @.str169, i64 0, i64 0)) #11
  %.pre738.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PicInterlace156.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre738.i, i64 0, i32 91
  %.pre739.pre.i = load i32* %PicInterlace156.phi.trans.insert.phi.trans.insert.i, align 4, !tbaa !3
  br label %if.end155.i

if.end155.i:                                      ; preds = %if.then151.i, %if.then149.i
  %.pre739.i = phi i32 [ %.pre739.pre.i, %if.then151.i ], [ %66, %if.then149.i ]
  %69 = phi %struct.InputParameters* [ %.pre738.i, %if.then151.i ], [ %65, %if.then149.i ]
  %directInferenceFlag154.i = getelementptr inbounds %struct.InputParameters* %69, i64 0, i32 38
  store i32 1, i32* %directInferenceFlag154.i, align 4, !tbaa !3
  %cmp157.i = icmp sgt i32 %.pre739.i, 0
  br i1 %cmp157.i, label %if.then158.i, label %if.end167.i

if.then158.i:                                     ; preds = %if.end155.i
  %IntraBottom.i = getelementptr inbounds %struct.InputParameters* %69, i64 0, i32 93
  %70 = load i32* %IntraBottom.i, align 4, !tbaa !3
  %switch677.i = icmp ult i32 %70, 2
  br i1 %switch677.i, label %if.end167.i, label %if.then163.i

if.then163.i:                                     ; preds = %if.then158.i
  %call165.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([67 x i8]* @.str170, i64 0, i64 0), i32 %70) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #11
  %.pre740.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end167.i

if.end167.i:                                      ; preds = %if.then163.i, %if.then158.i, %if.end155.i, %lor.lhs.false.i
  %71 = phi %struct.InputParameters* [ %69, %if.then158.i ], [ %.pre740.i, %if.then163.i ], [ %69, %if.end155.i ], [ %65, %lor.lhs.false.i ]
  %symbol_mode.i = getelementptr inbounds %struct.InputParameters* %71, i64 0, i32 59
  %72 = load i32* %symbol_mode.i, align 4, !tbaa !3
  %switch678.i = icmp ult i32 %72, 2
  br i1 %switch678.i, label %if.end175.i, label %if.then172.i

if.then172.i:                                     ; preds = %if.end167.i
  %call174.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([50 x i8]* @.str171, i64 0, i64 0), i32 %72) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #11
  %.pre741.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end175.i

if.end175.i:                                      ; preds = %if.then172.i, %if.end167.i
  %73 = phi %struct.InputParameters* [ %71, %if.end167.i ], [ %.pre741.i, %if.then172.i ]
  %arraydecay.i = getelementptr inbounds %struct.InputParameters* %73, i64 0, i32 26, i64 0
  %call176.i = call i32 (i8*, i32, ...)* @open(i8* %arraydecay.i, i32 0) #11
  store i32 %call176.i, i32* @p_in, align 4, !tbaa !3
  %cmp177.i = icmp eq i32 %call176.i, -1
  br i1 %cmp177.i, label %if.then178.i, label %if.end182.i

if.then178.i:                                     ; preds = %if.end175.i
  %74 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arraydecay180.i = getelementptr inbounds %struct.InputParameters* %74, i64 0, i32 26, i64 0
  %call181.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([29 x i8]* @.str172, i64 0, i64 0), i8* %arraydecay180.i) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.then178.i, %if.end175.i
  %75 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arraydecay183.i = getelementptr inbounds %struct.InputParameters* %75, i64 0, i32 28, i64 0
  %strlenfirst.i = load i8* %arraydecay183.i, align 1
  %cmp185.i = icmp eq i8 %strlenfirst.i, 0
  br i1 %cmp185.i, label %if.end195.i, label %land.lhs.true186.i

land.lhs.true186.i:                               ; preds = %if.end182.i
  %call189.i = call i32 (i8*, i32, ...)* @open(i8* %arraydecay183.i, i32 577, i32 384) #11
  store i32 %call189.i, i32* @p_dec, align 4, !tbaa !3
  %cmp190.i = icmp eq i32 %call189.i, -1
  br i1 %cmp190.i, label %if.then191.i, label %if.end195.i

if.then191.i:                                     ; preds = %land.lhs.true186.i
  %76 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arraydecay193.i = getelementptr inbounds %struct.InputParameters* %76, i64 0, i32 28, i64 0
  %call194.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([19 x i8]* @.str173, i64 0, i64 0), i8* %arraydecay193.i) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  br label %if.end195.i

if.end195.i:                                      ; preds = %land.lhs.true186.i, %if.then191.i, %if.end182.i
  %77 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arraydecay196.i = getelementptr inbounds %struct.InputParameters* %77, i64 0, i32 29, i64 0
  %strlenfirst671.i = load i8* %arraydecay196.i, align 1
  %cmp198.i = icmp eq i8 %strlenfirst671.i, 0
  br i1 %cmp198.i, label %if.end208.i, label %land.lhs.true199.i

land.lhs.true199.i:                               ; preds = %if.end195.i
  %call202.i = call %struct._IO_FILE* @fopen(i8* %arraydecay196.i, i8* getelementptr inbounds ([2 x i8]* @.str174, i64 0, i64 0)) #11
  store %struct._IO_FILE* %call202.i, %struct._IO_FILE** @p_trace, align 8, !tbaa !0
  %cmp203.i = icmp eq %struct._IO_FILE* %call202.i, null
  br i1 %cmp203.i, label %if.then204.i, label %if.end208.i

if.then204.i:                                     ; preds = %land.lhs.true199.i
  %78 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arraydecay206.i = getelementptr inbounds %struct.InputParameters* %78, i64 0, i32 29, i64 0
  %call207.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([19 x i8]* @.str173, i64 0, i64 0), i8* %arraydecay206.i) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  br label %if.end208.i

if.end208.i:                                      ; preds = %land.lhs.true199.i, %if.then204.i, %if.end195.i
  %79 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %img_width.i = getelementptr inbounds %struct.InputParameters* %79, i64 0, i32 16
  %80 = load i32* %img_width.i, align 4, !tbaa !3
  %rem.i = srem i32 %80, 16
  %cmp209.i = icmp eq i32 %rem.i, 0
  br i1 %cmp209.i, label %if.else214.i, label %if.then210.i

if.then210.i:                                     ; preds = %if.end208.i
  %sub213.i = sub nsw i32 16, %rem.i
  %81 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %auto_crop_right.i = getelementptr inbounds %struct.ImageParameters* %81, i64 0, i32 165
  store i32 %sub213.i, i32* %auto_crop_right.i, align 4, !tbaa !3
  br label %if.end216.i

if.else214.i:                                     ; preds = %if.end208.i
  %82 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %auto_crop_right215.i = getelementptr inbounds %struct.ImageParameters* %82, i64 0, i32 165
  store i32 0, i32* %auto_crop_right215.i, align 4, !tbaa !3
  br label %if.end216.i

if.end216.i:                                      ; preds = %if.else214.i, %if.then210.i
  %83 = phi %struct.ImageParameters* [ %82, %if.else214.i ], [ %81, %if.then210.i ]
  %PicInterlace217.i = getelementptr inbounds %struct.InputParameters* %79, i64 0, i32 91
  %84 = load i32* %PicInterlace217.i, align 4, !tbaa !3
  %tobool218.i = icmp eq i32 %84, 0
  br i1 %tobool218.i, label %lor.lhs.false219.i, label %if.then222.i

lor.lhs.false219.i:                               ; preds = %if.end216.i
  %MbInterlace220.i = getelementptr inbounds %struct.InputParameters* %79, i64 0, i32 92
  %85 = load i32* %MbInterlace220.i, align 4, !tbaa !3
  %tobool221.i = icmp eq i32 %85, 0
  br i1 %tobool221.i, label %if.else237.i, label %if.then222.i

if.then222.i:                                     ; preds = %lor.lhs.false219.i, %if.end216.i
  %img_height.i = getelementptr inbounds %struct.InputParameters* %79, i64 0, i32 17
  %86 = load i32* %img_height.i, align 4, !tbaa !3
  %rem223673.i = and i32 %86, 1
  %cmp224.i = icmp eq i32 %rem223673.i, 0
  br i1 %cmp224.i, label %if.end226.i, label %if.then225.i

if.then225.i:                                     ; preds = %if.then222.i
  call void @error(i8* getelementptr inbounds ([52 x i8]* @.str175, i64 0, i64 0), i32 500) #11
  %.pre772.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  %img_height227.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre772.i, i64 0, i32 17
  %.pre773.i = load i32* %img_height227.phi.trans.insert.i, align 4, !tbaa !3
  br label %if.end226.i

if.end226.i:                                      ; preds = %if.then225.i, %if.then222.i
  %87 = phi i32 [ %86, %if.then222.i ], [ %.pre773.i, %if.then225.i ]
  %88 = phi %struct.InputParameters* [ %79, %if.then222.i ], [ %.pre772.i, %if.then225.i ]
  %rem228.i = srem i32 %87, 32
  %cmp229.i = icmp eq i32 %rem228.i, 0
  br i1 %cmp229.i, label %if.else234.i, label %if.then230.i

if.then230.i:                                     ; preds = %if.end226.i
  %sub233.i = sub nsw i32 32, %rem228.i
  %89 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %auto_crop_bottom.i = getelementptr inbounds %struct.ImageParameters* %89, i64 0, i32 166
  store i32 %sub233.i, i32* %auto_crop_bottom.i, align 4, !tbaa !3
  br label %if.end249.i

if.else234.i:                                     ; preds = %if.end226.i
  %90 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %auto_crop_bottom235.i = getelementptr inbounds %struct.ImageParameters* %90, i64 0, i32 166
  store i32 0, i32* %auto_crop_bottom235.i, align 4, !tbaa !3
  br label %lor.lhs.false252.i

if.else237.i:                                     ; preds = %lor.lhs.false219.i
  %img_height238.i = getelementptr inbounds %struct.InputParameters* %79, i64 0, i32 17
  %91 = load i32* %img_height238.i, align 4, !tbaa !3
  %rem239.i = srem i32 %91, 16
  %cmp240.i = icmp eq i32 %rem239.i, 0
  br i1 %cmp240.i, label %if.else246.i, label %if.then241.i

if.then241.i:                                     ; preds = %if.else237.i
  %sub244.i = sub nsw i32 16, %rem239.i
  %auto_crop_bottom245.i = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 166
  store i32 %sub244.i, i32* %auto_crop_bottom245.i, align 4, !tbaa !3
  br label %if.end249.i

if.else246.i:                                     ; preds = %if.else237.i
  %auto_crop_bottom247.i = getelementptr inbounds %struct.ImageParameters* %83, i64 0, i32 166
  store i32 0, i32* %auto_crop_bottom247.i, align 4, !tbaa !3
  br label %lor.lhs.false252.i

if.end249.i:                                      ; preds = %if.then241.i, %if.then230.i
  %92 = phi %struct.InputParameters* [ %79, %if.then241.i ], [ %88, %if.then230.i ]
  %93 = phi i32 [ %sub244.i, %if.then241.i ], [ %sub233.i, %if.then230.i ]
  %94 = phi %struct.ImageParameters* [ %83, %if.then241.i ], [ %89, %if.then230.i ]
  %tobool251.i = icmp eq i32 %93, 0
  br i1 %tobool251.i, label %lor.lhs.false252.i, label %if.end249.if.then255_crit_edge.i

if.end249.if.then255_crit_edge.i:                 ; preds = %if.end249.i
  %auto_crop_right257.phi.trans.insert.i = getelementptr inbounds %struct.ImageParameters* %94, i64 0, i32 165
  %.pre777.i = load i32* %auto_crop_right257.phi.trans.insert.i, align 4, !tbaa !3
  br label %if.then255.i

lor.lhs.false252.i:                               ; preds = %if.end249.i, %if.else246.i, %if.else234.i
  %95 = phi %struct.ImageParameters* [ %94, %if.end249.i ], [ %83, %if.else246.i ], [ %90, %if.else234.i ]
  %96 = phi %struct.InputParameters* [ %92, %if.end249.i ], [ %79, %if.else246.i ], [ %88, %if.else234.i ]
  %auto_crop_right253.i = getelementptr inbounds %struct.ImageParameters* %95, i64 0, i32 165
  %97 = load i32* %auto_crop_right253.i, align 4, !tbaa !3
  %tobool254.i = icmp eq i32 %97, 0
  br i1 %tobool254.i, label %if.end263.i, label %if.then255.i

if.then255.i:                                     ; preds = %lor.lhs.false252.i, %if.end249.if.then255_crit_edge.i
  %98 = phi i32 [ %93, %if.end249.if.then255_crit_edge.i ], [ 0, %lor.lhs.false252.i ]
  %99 = phi %struct.InputParameters* [ %92, %if.end249.if.then255_crit_edge.i ], [ %96, %lor.lhs.false252.i ]
  %100 = phi i32 [ %.pre777.i, %if.end249.if.then255_crit_edge.i ], [ %97, %lor.lhs.false252.i ]
  %img_width256.i = getelementptr inbounds %struct.InputParameters* %99, i64 0, i32 16
  %101 = load i32* %img_width256.i, align 4, !tbaa !3
  %add258.i = add nsw i32 %101, %100
  %img_height259.i = getelementptr inbounds %struct.InputParameters* %99, i64 0, i32 17
  %102 = load i32* %img_height259.i, align 4, !tbaa !3
  %add261.i = add nsw i32 %102, %98
  %call262.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([66 x i8]* @.str176, i64 0, i64 0), i32 %add258.i, i32 %add261.i) #11
  %.pre742.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end263.i

if.end263.i:                                      ; preds = %if.then255.i, %lor.lhs.false252.i
  %103 = phi %struct.InputParameters* [ %96, %lor.lhs.false252.i ], [ %.pre742.i, %if.then255.i ]
  %num_slice_groups_minus1.i = getelementptr inbounds %struct.InputParameters* %103, i64 0, i32 110
  %104 = load i32* %num_slice_groups_minus1.i, align 4, !tbaa !3
  %cmp264.i = icmp eq i32 %104, 0
  br i1 %cmp264.i, label %if.end404.i, label %land.lhs.true265.i

land.lhs.true265.i:                               ; preds = %if.end263.i
  %slice_group_map_type.i = getelementptr inbounds %struct.InputParameters* %103, i64 0, i32 111
  %105 = load i32* %slice_group_map_type.i, align 4, !tbaa !3
  switch i32 %105, label %if.end404.i [
    i32 0, label %if.then273.i
    i32 2, label %if.then273.i
    i32 6, label %if.then273.i
  ]

if.then273.i:                                     ; preds = %land.lhs.true265.i, %land.lhs.true265.i, %land.lhs.true265.i
  %arraydecay274.i = getelementptr inbounds %struct.InputParameters* %103, i64 0, i32 109, i64 0
  %strlenfirst672.i = load i8* %arraydecay274.i, align 1
  %cmp276.i = icmp eq i8 %strlenfirst672.i, 0
  br i1 %cmp276.i, label %if.else286.i, label %land.lhs.true277.i

land.lhs.true277.i:                               ; preds = %if.then273.i
  %call280.i = call %struct._IO_FILE* @fopen(i8* %arraydecay274.i, i8* getelementptr inbounds ([2 x i8]* @.str162, i64 0, i64 0)) #11
  %cmp281.i = icmp eq %struct._IO_FILE* %call280.i, null
  %106 = load %struct.InputParameters** @input, align 8, !tbaa !0
  br i1 %cmp281.i, label %if.then282.i, label %land.lhs.true277.if.else286_crit_edge.i

land.lhs.true277.if.else286_crit_edge.i:          ; preds = %land.lhs.true277.i
  %slice_group_map_type287.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %106, i64 0, i32 111
  %.pre776.i = load i32* %slice_group_map_type287.phi.trans.insert.i, align 4, !tbaa !3
  br label %if.else286.i

if.then282.i:                                     ; preds = %land.lhs.true277.i
  %arraydecay284.i = getelementptr inbounds %struct.InputParameters* %106, i64 0, i32 109, i64 0
  %call285.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([19 x i8]* @.str173, i64 0, i64 0), i8* %arraydecay284.i) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  br label %if.end404.i

if.else286.i:                                     ; preds = %land.lhs.true277.if.else286_crit_edge.i, %if.then273.i
  %107 = phi i32 [ %.pre776.i, %land.lhs.true277.if.else286_crit_edge.i ], [ %105, %if.then273.i ]
  %108 = phi %struct.InputParameters* [ %106, %land.lhs.true277.if.else286_crit_edge.i ], [ %103, %if.then273.i ]
  %sgfile.0.i = phi %struct._IO_FILE* [ %call280.i, %land.lhs.true277.if.else286_crit_edge.i ], [ null, %if.then273.i ]
  switch i32 %107, label %if.end401.i [
    i32 0, label %if.then289.i
    i32 2, label %if.then309.i
    i32 6, label %if.then350.i
  ]

if.then289.i:                                     ; preds = %if.else286.i
  %num_slice_groups_minus1290.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 110
  %109 = load i32* %num_slice_groups_minus1290.i, align 4, !tbaa !3
  %add291.i = add nsw i32 %109, 1
  %conv.i196 = sext i32 %add291.i to i64
  %mul292.i = shl nsw i64 %conv.i196, 2
  %call293.i = call noalias i8* @malloc(i64 %mul292.i) #11
  %110 = bitcast i8* %call293.i to i32*
  %run_length_minus1.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 115
  store i32* %110, i32** %run_length_minus1.i, align 8, !tbaa !0
  %111 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %run_length_minus1294.i = getelementptr inbounds %struct.InputParameters* %111, i64 0, i32 115
  %112 = load i32** %run_length_minus1294.i, align 8, !tbaa !0
  %cmp295.i = icmp eq i32* %112, null
  br i1 %cmp295.i, label %if.then297.i, label %for.cond.preheader.i

if.then297.i:                                     ; preds = %if.then289.i
  call void @no_mem_exit(i8* getelementptr inbounds ([35 x i8]* @.str177, i64 0, i64 0)) #11
  %.pre769.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then297.i, %if.then289.i
  %113 = phi %struct.InputParameters* [ %.pre769.i, %if.then297.i ], [ %111, %if.then289.i ]
  %num_slice_groups_minus1299720.i = getelementptr inbounds %struct.InputParameters* %113, i64 0, i32 110
  %114 = load i32* %num_slice_groups_minus1299720.i, align 4, !tbaa !3
  %cmp300721.i = icmp slt i32 %114, 0
  br i1 %cmp300721.i, label %if.end401.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.body.i
  %indvars.iv.i197 = phi i64 [ %indvars.iv.next.i198, %for.body.i ], [ 0, %for.cond.preheader.i ]
  %115 = phi %struct.InputParameters* [ %117, %for.body.i ], [ %113, %for.cond.preheader.i ]
  %run_length_minus1302.i = getelementptr inbounds %struct.InputParameters* %115, i64 0, i32 115
  %116 = load i32** %run_length_minus1302.i, align 8, !tbaa !0
  %add.ptr.i = getelementptr inbounds i32* %116, i64 %indvars.iv.i197
  %call303.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([3 x i8]* @.str178, i64 0, i64 0), i32* %add.ptr.i) #11
  %call304.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([7 x i8]* @.str179, i64 0, i64 0)) #11
  %indvars.iv.next.i198 = add i64 %indvars.iv.i197, 1
  %117 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %num_slice_groups_minus1299.i = getelementptr inbounds %struct.InputParameters* %117, i64 0, i32 110
  %118 = load i32* %num_slice_groups_minus1299.i, align 4, !tbaa !3
  %119 = trunc i64 %indvars.iv.i197 to i32
  %cmp300.i = icmp slt i32 %119, %118
  br i1 %cmp300.i, label %for.body.i, label %if.end401.i

if.then309.i:                                     ; preds = %if.else286.i
  %num_slice_groups_minus1310.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 110
  %120 = load i32* %num_slice_groups_minus1310.i, align 4, !tbaa !3
  %conv311.i = sext i32 %120 to i64
  %mul312.i = shl nsw i64 %conv311.i, 2
  %call313.i = call noalias i8* @malloc(i64 %mul312.i) #11
  %121 = bitcast i8* %call313.i to i32*
  %top_left.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 112
  store i32* %121, i32** %top_left.i, align 8, !tbaa !0
  %122 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %num_slice_groups_minus1314.i = getelementptr inbounds %struct.InputParameters* %122, i64 0, i32 110
  %123 = load i32* %num_slice_groups_minus1314.i, align 4, !tbaa !3
  %conv315.i = sext i32 %123 to i64
  %mul316.i = shl nsw i64 %conv315.i, 2
  %call317.i = call noalias i8* @malloc(i64 %mul316.i) #11
  %124 = bitcast i8* %call317.i to i32*
  %bottom_right.i = getelementptr inbounds %struct.InputParameters* %122, i64 0, i32 113
  store i32* %124, i32** %bottom_right.i, align 8, !tbaa !0
  %125 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %top_left318.i = getelementptr inbounds %struct.InputParameters* %125, i64 0, i32 112
  %126 = load i32** %top_left318.i, align 8, !tbaa !0
  %cmp319.i = icmp eq i32* %126, null
  br i1 %cmp319.i, label %if.then321.i, label %if.end322.i

if.then321.i:                                     ; preds = %if.then309.i
  call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str180, i64 0, i64 0)) #11
  %.pre770.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end322.i

if.end322.i:                                      ; preds = %if.then321.i, %if.then309.i
  %127 = phi %struct.InputParameters* [ %.pre770.i, %if.then321.i ], [ %125, %if.then309.i ]
  %bottom_right323.i = getelementptr inbounds %struct.InputParameters* %127, i64 0, i32 113
  %128 = load i32** %bottom_right323.i, align 8, !tbaa !0
  %cmp324.i = icmp eq i32* %128, null
  br i1 %cmp324.i, label %if.then326.i, label %for.cond328.preheader.i

if.then326.i:                                     ; preds = %if.end322.i
  call void @no_mem_exit(i8* getelementptr inbounds ([30 x i8]* @.str181, i64 0, i64 0)) #11
  %.pre771.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %for.cond328.preheader.i

for.cond328.preheader.i:                          ; preds = %if.then326.i, %if.end322.i
  %129 = phi %struct.InputParameters* [ %.pre771.i, %if.then326.i ], [ %127, %if.end322.i ]
  %num_slice_groups_minus1329724.i = getelementptr inbounds %struct.InputParameters* %129, i64 0, i32 110
  %130 = load i32* %num_slice_groups_minus1329724.i, align 4, !tbaa !3
  %cmp330725.i = icmp sgt i32 %130, 0
  br i1 %cmp330725.i, label %for.body332.i, label %if.end401.i

for.body332.i:                                    ; preds = %for.cond328.preheader.i, %for.body332.i
  %indvars.iv731.i = phi i64 [ %indvars.iv.next732.i, %for.body332.i ], [ 0, %for.cond328.preheader.i ]
  %131 = phi %struct.InputParameters* [ %135, %for.body332.i ], [ %129, %for.cond328.preheader.i ]
  %top_left333.i = getelementptr inbounds %struct.InputParameters* %131, i64 0, i32 112
  %132 = load i32** %top_left333.i, align 8, !tbaa !0
  %add.ptr335.i = getelementptr inbounds i32* %132, i64 %indvars.iv731.i
  %call336.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([3 x i8]* @.str178, i64 0, i64 0), i32* %add.ptr335.i) #11
  %call337.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([7 x i8]* @.str179, i64 0, i64 0)) #11
  %133 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %bottom_right338.i = getelementptr inbounds %struct.InputParameters* %133, i64 0, i32 113
  %134 = load i32** %bottom_right338.i, align 8, !tbaa !0
  %add.ptr340.i = getelementptr inbounds i32* %134, i64 %indvars.iv731.i
  %call341.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([3 x i8]* @.str178, i64 0, i64 0), i32* %add.ptr340.i) #11
  %call342.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([7 x i8]* @.str179, i64 0, i64 0)) #11
  %indvars.iv.next732.i = add i64 %indvars.iv731.i, 1
  %135 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %num_slice_groups_minus1329.i = getelementptr inbounds %struct.InputParameters* %135, i64 0, i32 110
  %136 = load i32* %num_slice_groups_minus1329.i, align 4, !tbaa !3
  %137 = trunc i64 %indvars.iv.next732.i to i32
  %cmp330.i = icmp slt i32 %137, %136
  br i1 %cmp330.i, label %for.body332.i, label %if.end401.i

if.then350.i:                                     ; preds = %if.else286.i
  %PicInterlace351.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 91
  %138 = load i32* %PicInterlace351.i, align 4, !tbaa !3
  %tobool352.i = icmp eq i32 %138, 0
  br i1 %tobool352.i, label %lor.rhs.i, label %lor.end.i

lor.rhs.i:                                        ; preds = %if.then350.i
  %MbInterlace353.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 92
  %139 = load i32* %MbInterlace353.i, align 4, !tbaa !3
  %phitmp.i = icmp eq i32 %139, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %if.then350.i, %lor.rhs.i
  %140 = phi i1 [ %phitmp.i, %lor.rhs.i ], [ false, %if.then350.i ]
  %lnot.ext.i = zext i1 %140 to i32
  %img_width355.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 16
  %141 = load i32* %img_width355.i, align 4, !tbaa !3
  %142 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %auto_crop_right356.i = getelementptr inbounds %struct.ImageParameters* %142, i64 0, i32 165
  %143 = load i32* %auto_crop_right356.i, align 4, !tbaa !3
  %add357.i = add nsw i32 %143, %141
  %div.i = sdiv i32 %add357.i, 16
  %img_height358.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 17
  %144 = load i32* %img_height358.i, align 4, !tbaa !3
  %auto_crop_bottom359.i = getelementptr inbounds %struct.ImageParameters* %142, i64 0, i32 166
  %145 = load i32* %auto_crop_bottom359.i, align 4, !tbaa !3
  %add360.i = add nsw i32 %145, %144
  %div361.i = sdiv i32 %add360.i, 16
  %sub362.i = sub nsw i32 2, %lnot.ext.i
  %div363.i = sdiv i32 %div361.i, %sub362.i
  %conv364.i = sext i32 %div363.i to i64
  %conv366.i = sext i32 %div.i to i64
  %mul367.i = mul i64 %conv364.i, %conv366.i
  %call368.i = call noalias i8* @malloc(i64 %mul367.i) #11
  %slice_group_id.i = getelementptr inbounds %struct.InputParameters* %108, i64 0, i32 114
  store i8* %call368.i, i8** %slice_group_id.i, align 8, !tbaa !0
  %146 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %slice_group_id369.i = getelementptr inbounds %struct.InputParameters* %146, i64 0, i32 114
  %147 = load i8** %slice_group_id369.i, align 8, !tbaa !0
  %cmp370.i = icmp eq i8* %147, null
  br i1 %cmp370.i, label %if.then372.i, label %for.cond374.preheader.i

if.then372.i:                                     ; preds = %lor.end.i
  call void @no_mem_exit(i8* getelementptr inbounds ([32 x i8]* @.str182, i64 0, i64 0)) #11
  br label %for.cond374.preheader.i

for.cond374.preheader.i:                          ; preds = %if.then372.i, %lor.end.i
  %mul375.i = mul i32 %div363.i, %div.i
  %cmp376728.i = icmp sgt i32 %mul375.i, 0
  br i1 %cmp376728.i, label %for.body378.i, label %if.end401.i

for.body378.i:                                    ; preds = %for.cond374.preheader.i, %if.end394.i
  %indvars.iv733.i = phi i64 [ %indvars.iv.next734.i, %if.end394.i ], [ 0, %for.cond374.preheader.i ]
  %call379.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([3 x i8]* @.str178, i64 0, i64 0), i32* %tmp.i) #11
  %148 = load i32* %tmp.i, align 4, !tbaa !3
  %conv380.i = trunc i32 %148 to i8
  %149 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %slice_group_id381.i = getelementptr inbounds %struct.InputParameters* %149, i64 0, i32 114
  %150 = load i8** %slice_group_id381.i, align 8, !tbaa !0
  %arrayidx382.i = getelementptr inbounds i8* %150, i64 %indvars.iv733.i
  store i8 %conv380.i, i8* %arrayidx382.i, align 1, !tbaa !1
  %151 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %slice_group_id383.i = getelementptr inbounds %struct.InputParameters* %151, i64 0, i32 114
  %152 = load i8** %slice_group_id383.i, align 8, !tbaa !0
  %add.ptr385.i = getelementptr inbounds i8* %152, i64 %indvars.iv733.i
  %153 = load i8* %add.ptr385.i, align 1, !tbaa !1
  %conv386.i = zext i8 %153 to i32
  %num_slice_groups_minus1387.i = getelementptr inbounds %struct.InputParameters* %151, i64 0, i32 110
  %154 = load i32* %num_slice_groups_minus1387.i, align 4, !tbaa !3
  %cmp388.i = icmp sgt i32 %conv386.i, %154
  br i1 %cmp388.i, label %if.then390.i, label %if.end394.i

if.then390.i:                                     ; preds = %for.body378.i
  %arraydecay392.i = getelementptr inbounds %struct.InputParameters* %151, i64 0, i32 109, i64 0
  %call393.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([48 x i8]* @.str183, i64 0, i64 0), i8* %arraydecay392.i) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  br label %if.end394.i

if.end394.i:                                      ; preds = %if.then390.i, %for.body378.i
  %call395.i = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %sgfile.0.i, i8* getelementptr inbounds ([7 x i8]* @.str179, i64 0, i64 0)) #11
  %indvars.iv.next734.i = add i64 %indvars.iv733.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next734.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %mul375.i
  br i1 %exitcond, label %if.end401.i, label %for.body378.i

if.end401.i:                                      ; preds = %if.end394.i, %for.body332.i, %for.body.i, %for.cond374.preheader.i, %for.cond328.preheader.i, %for.cond.preheader.i, %if.else286.i
  %call402.i = call i32 @fclose(%struct._IO_FILE* %sgfile.0.i) #11
  br label %if.end404.i

if.end404.i:                                      ; preds = %if.end401.i, %if.then282.i, %land.lhs.true265.i, %if.end263.i
  %155 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %PyramidRefReorder.i = getelementptr inbounds %struct.InputParameters* %155, i64 0, i32 57
  %156 = load i32* %PyramidRefReorder.i, align 4, !tbaa !3
  %tobool405.i = icmp eq i32 %156, 0
  br i1 %tobool405.i, label %if.end416.i, label %land.lhs.true406.i

land.lhs.true406.i:                               ; preds = %if.end404.i
  %PyramidCoding.i = getelementptr inbounds %struct.InputParameters* %155, i64 0, i32 55
  %157 = load i32* %PyramidCoding.i, align 4, !tbaa !3
  %tobool407.i = icmp eq i32 %157, 0
  br i1 %tobool407.i, label %if.end416.i, label %land.lhs.true408.i

land.lhs.true408.i:                               ; preds = %land.lhs.true406.i
  %PicInterlace409.i = getelementptr inbounds %struct.InputParameters* %155, i64 0, i32 91
  %158 = load i32* %PicInterlace409.i, align 4, !tbaa !3
  %tobool410.i = icmp eq i32 %158, 0
  br i1 %tobool410.i, label %lor.lhs.false411.i, label %if.then414.i

lor.lhs.false411.i:                               ; preds = %land.lhs.true408.i
  %MbInterlace412.i = getelementptr inbounds %struct.InputParameters* %155, i64 0, i32 92
  %159 = load i32* %MbInterlace412.i, align 4, !tbaa !3
  %tobool413.i = icmp eq i32 %159, 0
  br i1 %tobool413.i, label %if.end416.i, label %if.then414.i

if.then414.i:                                     ; preds = %lor.lhs.false411.i, %land.lhs.true408.i
  %call415.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([65 x i8]* @.str184, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #11
  %.pre743.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end416.i

if.end416.i:                                      ; preds = %if.then414.i, %lor.lhs.false411.i, %land.lhs.true406.i, %if.end404.i
  %160 = phi %struct.InputParameters* [ %155, %lor.lhs.false411.i ], [ %155, %land.lhs.true406.i ], [ %155, %if.end404.i ], [ %.pre743.i, %if.then414.i ]
  %PocMemoryManagement.i = getelementptr inbounds %struct.InputParameters* %160, i64 0, i32 58
  %161 = load i32* %PocMemoryManagement.i, align 4, !tbaa !3
  %tobool417.i = icmp eq i32 %161, 0
  br i1 %tobool417.i, label %if.end429.i, label %land.lhs.true418.i

land.lhs.true418.i:                               ; preds = %if.end416.i
  %PyramidCoding419.i = getelementptr inbounds %struct.InputParameters* %160, i64 0, i32 55
  %162 = load i32* %PyramidCoding419.i, align 4, !tbaa !3
  %tobool420.i = icmp eq i32 %162, 0
  br i1 %tobool420.i, label %if.end429.i, label %land.lhs.true421.i

land.lhs.true421.i:                               ; preds = %land.lhs.true418.i
  %PicInterlace422.i = getelementptr inbounds %struct.InputParameters* %160, i64 0, i32 91
  %163 = load i32* %PicInterlace422.i, align 4, !tbaa !3
  %tobool423.i = icmp eq i32 %163, 0
  br i1 %tobool423.i, label %lor.lhs.false424.i, label %if.then427.i

lor.lhs.false424.i:                               ; preds = %land.lhs.true421.i
  %MbInterlace425.i = getelementptr inbounds %struct.InputParameters* %160, i64 0, i32 92
  %164 = load i32* %MbInterlace425.i, align 4, !tbaa !3
  %tobool426.i = icmp eq i32 %164, 0
  br i1 %tobool426.i, label %if.end429.i, label %if.then427.i

if.then427.i:                                     ; preds = %lor.lhs.false424.i, %land.lhs.true421.i
  %call428.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([67 x i8]* @.str185, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #11
  %.pre744.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end429.i

if.end429.i:                                      ; preds = %land.lhs.true418.i, %if.end416.i, %if.then427.i, %lor.lhs.false424.i
  %165 = phi %struct.InputParameters* [ %160, %lor.lhs.false424.i ], [ %.pre744.i, %if.then427.i ], [ %160, %if.end416.i ], [ %160, %land.lhs.true418.i ]
  %PicInterlace430.i = getelementptr inbounds %struct.InputParameters* %165, i64 0, i32 91
  %166 = load i32* %PicInterlace430.i, align 4, !tbaa !3
  %switch679.i = icmp ult i32 %166, 3
  br i1 %switch679.i, label %if.end444.i, label %if.then441.i

if.then441.i:                                     ; preds = %if.end429.i
  %call443.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([92 x i8]* @.str186, i64 0, i64 0), i32 %166) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #11
  %.pre745.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end444.i

if.end444.i:                                      ; preds = %if.then441.i, %if.end429.i
  %167 = phi %struct.InputParameters* [ %165, %if.end429.i ], [ %.pre745.i, %if.then441.i ]
  %MbInterlace445.i = getelementptr inbounds %struct.InputParameters* %167, i64 0, i32 92
  %168 = load i32* %MbInterlace445.i, align 4, !tbaa !3
  %switch680.i = icmp ult i32 %168, 3
  br i1 %switch680.i, label %if.end459.i, label %if.then456.i

if.then456.i:                                     ; preds = %if.end444.i
  %call458.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([91 x i8]* @.str187, i64 0, i64 0), i32 %168) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 400) #11
  %.pre746.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end459.i

if.end459.i:                                      ; preds = %if.then456.i, %if.end444.i
  %169 = phi %struct.InputParameters* [ %167, %if.end444.i ], [ %.pre746.i, %if.then456.i ]
  %rdopt.i = getelementptr inbounds %struct.InputParameters* %169, i64 0, i32 85
  %170 = load i32* %rdopt.i, align 4, !tbaa !3
  %tobool460.i = icmp eq i32 %170, 0
  br i1 %tobool460.i, label %land.lhs.true461.i, label %if.end466.i

land.lhs.true461.i:                               ; preds = %if.end459.i
  %MbInterlace462.i = getelementptr inbounds %struct.InputParameters* %169, i64 0, i32 92
  %171 = load i32* %MbInterlace462.i, align 4, !tbaa !3
  %tobool463.i = icmp eq i32 %171, 0
  br i1 %tobool463.i, label %if.end472.i, label %if.then464.i

if.then464.i:                                     ; preds = %land.lhs.true461.i
  %call465.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([55 x i8]* @.str188, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre747.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  %rdopt467.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre747.i, i64 0, i32 85
  %.pre748.i = load i32* %rdopt467.phi.trans.insert.i, align 4, !tbaa !3
  br label %if.end466.i

if.end466.i:                                      ; preds = %if.then464.i, %if.end459.i
  %172 = phi i32 [ %170, %if.end459.i ], [ %.pre748.i, %if.then464.i ]
  %173 = phi %struct.InputParameters* [ %169, %if.end459.i ], [ %.pre747.i, %if.then464.i ]
  %cmp468.i = icmp sgt i32 %172, 1
  br i1 %cmp468.i, label %if.then470.i, label %if.end472.i

if.then470.i:                                     ; preds = %if.end466.i
  %call471.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([91 x i8]* @.str189, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre749.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end472.i

if.end472.i:                                      ; preds = %if.then470.i, %if.end466.i, %land.lhs.true461.i
  %174 = phi %struct.InputParameters* [ %.pre749.i, %if.then470.i ], [ %173, %if.end466.i ], [ %169, %land.lhs.true461.i ]
  %NumFramesInELSubSeq.i = getelementptr inbounds %struct.InputParameters* %174, i64 0, i32 99
  %175 = load i32* %NumFramesInELSubSeq.i, align 4, !tbaa !3
  %num_ref_frames.i = getelementptr inbounds %struct.InputParameters* %174, i64 0, i32 9
  %176 = load i32* %num_ref_frames.i, align 4, !tbaa !3
  %cmp473.i = icmp sge i32 %175, %176
  %cmp477.i = icmp slt i32 %175, 0
  %or.cond.i = or i1 %cmp473.i, %cmp477.i
  br i1 %or.cond.i, label %if.then479.i, label %if.end483.i

if.then479.i:                                     ; preds = %if.end472.i
  %call482.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([49 x i8]* @.str190, i64 0, i64 0), i32 %175, i32 %176) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre750.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  %NumFramesInELSubSeq484.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre750.i, i64 0, i32 99
  %.pre751.i = load i32* %NumFramesInELSubSeq484.phi.trans.insert.i, align 4, !tbaa !3
  br label %if.end483.i

if.end483.i:                                      ; preds = %if.then479.i, %if.end472.i
  %177 = phi i32 [ %175, %if.end472.i ], [ %.pre751.i, %if.then479.i ]
  %178 = phi %struct.InputParameters* [ %174, %if.end472.i ], [ %.pre750.i, %if.then479.i ]
  %cmp485.i = icmp sgt i32 %177, 0
  br i1 %cmp485.i, label %land.lhs.true487.i, label %if.end492.i

land.lhs.true487.i:                               ; preds = %if.end483.i
  %of_mode.i = getelementptr inbounds %struct.InputParameters* %178, i64 0, i32 60
  %179 = load i32* %of_mode.i, align 4, !tbaa !3
  %cmp488.i = icmp eq i32 %179, 0
  br i1 %cmp488.i, label %if.then490.i, label %if.end492.i

if.then490.i:                                     ; preds = %land.lhs.true487.i
  %call491.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([66 x i8]* @.str191, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre752.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end492.i

if.end492.i:                                      ; preds = %if.then490.i, %land.lhs.true487.i, %if.end483.i
  %180 = phi %struct.InputParameters* [ %.pre752.i, %if.then490.i ], [ %178, %land.lhs.true487.i ], [ %178, %if.end483.i ]
  %PicInterlace493.i = getelementptr inbounds %struct.InputParameters* %180, i64 0, i32 91
  %181 = load i32* %PicInterlace493.i, align 4, !tbaa !3
  %tobool494.i = icmp eq i32 %181, 0
  br i1 %tobool494.i, label %lor.lhs.false495.i, label %land.lhs.true498.i

lor.lhs.false495.i:                               ; preds = %if.end492.i
  %MbInterlace496.i = getelementptr inbounds %struct.InputParameters* %180, i64 0, i32 92
  %182 = load i32* %MbInterlace496.i, align 4, !tbaa !3
  %tobool497.i = icmp eq i32 %182, 0
  br i1 %tobool497.i, label %if.end503.i, label %land.lhs.true498.i

land.lhs.true498.i:                               ; preds = %lor.lhs.false495.i, %if.end492.i
  %SparePictureOption.i = getelementptr inbounds %struct.InputParameters* %180, i64 0, i32 106
  %183 = load i32* %SparePictureOption.i, align 4, !tbaa !3
  %cmp499.i = icmp eq i32 %183, 1
  br i1 %cmp499.i, label %if.then501.i, label %if.end503.i

if.then501.i:                                     ; preds = %land.lhs.true498.i
  %call502.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([42 x i8]* @.str192, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre753.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end503.i

if.end503.i:                                      ; preds = %if.then501.i, %land.lhs.true498.i, %lor.lhs.false495.i
  %184 = phi %struct.InputParameters* [ %180, %lor.lhs.false495.i ], [ %.pre753.i, %if.then501.i ], [ %180, %land.lhs.true498.i ]
  %of_mode504.i = getelementptr inbounds %struct.InputParameters* %184, i64 0, i32 60
  %185 = load i32* %of_mode504.i, align 4, !tbaa !3
  %cmp505.i = icmp eq i32 %185, 1
  br i1 %cmp505.i, label %if.end513.i, label %land.lhs.true507.i

land.lhs.true507.i:                               ; preds = %if.end503.i
  %SparePictureOption508.i = getelementptr inbounds %struct.InputParameters* %184, i64 0, i32 106
  %186 = load i32* %SparePictureOption508.i, align 4, !tbaa !3
  %cmp509.i = icmp eq i32 %186, 1
  br i1 %cmp509.i, label %if.then511.i, label %if.end513.i

if.then511.i:                                     ; preds = %land.lhs.true507.i
  %call512.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([64 x i8]* @.str193, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre754.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end513.i

if.end513.i:                                      ; preds = %if.then511.i, %land.lhs.true507.i, %if.end503.i
  %187 = phi %struct.InputParameters* [ %184, %if.end503.i ], [ %.pre754.i, %if.then511.i ], [ %184, %land.lhs.true507.i ]
  %WeightedPrediction.i = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 46
  %188 = load i32* %WeightedPrediction.i, align 4, !tbaa !3
  %cmp514.i = icmp sgt i32 %188, 0
  br i1 %cmp514.i, label %land.lhs.true519.i, label %lor.lhs.false516.i

lor.lhs.false516.i:                               ; preds = %if.end513.i
  %WeightedBiprediction.i = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 47
  %189 = load i32* %WeightedBiprediction.i, align 4, !tbaa !3
  %cmp517.i = icmp sgt i32 %189, 0
  br i1 %cmp517.i, label %land.lhs.true519.i, label %if.end524.i

land.lhs.true519.i:                               ; preds = %lor.lhs.false516.i, %if.end513.i
  %MbInterlace520.i = getelementptr inbounds %struct.InputParameters* %187, i64 0, i32 92
  %190 = load i32* %MbInterlace520.i, align 4, !tbaa !3
  %tobool521.i = icmp eq i32 %190, 0
  br i1 %tobool521.i, label %if.end524.i, label %if.then522.i

if.then522.i:                                     ; preds = %land.lhs.true519.i
  %call523.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([66 x i8]* @.str194, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre755.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end524.i

if.end524.i:                                      ; preds = %if.then522.i, %land.lhs.true519.i, %lor.lhs.false516.i
  %191 = phi %struct.InputParameters* [ %187, %land.lhs.true519.i ], [ %.pre755.i, %if.then522.i ], [ %187, %lor.lhs.false516.i ]
  %NumFramesInELSubSeq525.i = getelementptr inbounds %struct.InputParameters* %191, i64 0, i32 99
  %192 = load i32* %NumFramesInELSubSeq525.i, align 4, !tbaa !3
  %cmp526.i = icmp sgt i32 %192, 0
  br i1 %cmp526.i, label %land.lhs.true528.i, label %if.end534.i

land.lhs.true528.i:                               ; preds = %if.end524.i
  %WeightedPrediction529.i = getelementptr inbounds %struct.InputParameters* %191, i64 0, i32 46
  %193 = load i32* %WeightedPrediction529.i, align 4, !tbaa !3
  %cmp530.i = icmp sgt i32 %193, 0
  br i1 %cmp530.i, label %if.then532.i, label %if.end534.i

if.then532.i:                                     ; preds = %land.lhs.true528.i
  %call533.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([70 x i8]* @.str195, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre756.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end534.i

if.end534.i:                                      ; preds = %if.then532.i, %land.lhs.true528.i, %if.end524.i
  %194 = phi %struct.InputParameters* [ %.pre756.i, %if.then532.i ], [ %191, %land.lhs.true528.i ], [ %191, %if.end524.i ]
  %num_slice_groups_minus1535.i = getelementptr inbounds %struct.InputParameters* %194, i64 0, i32 110
  %195 = load i32* %num_slice_groups_minus1535.i, align 4, !tbaa !3
  %cmp536.i = icmp sgt i32 %195, 0
  br i1 %cmp536.i, label %if.then538.i, label %if.end549.i

if.then538.i:                                     ; preds = %if.end534.i
  %slice_group_map_type539.i = getelementptr inbounds %struct.InputParameters* %194, i64 0, i32 111
  %196 = load i32* %slice_group_map_type539.i, align 4, !tbaa !3
  %.off719.i = add i32 %196, -3
  %197 = icmp ult i32 %.off719.i, 3
  br i1 %197, label %if.then546.i, label %if.end549.i

if.then546.i:                                     ; preds = %if.then538.i
  store i32 1, i32* %num_slice_groups_minus1535.i, align 4, !tbaa !3
  br label %if.end549.i

if.end549.i:                                      ; preds = %if.then546.i, %if.then538.i, %if.end534.i
  %RCEnable.i = getelementptr inbounds %struct.InputParameters* %194, i64 0, i32 127
  %198 = load i32* %RCEnable.i, align 4, !tbaa !3
  %tobool550.i = icmp eq i32 %198, 0
  br i1 %tobool550.i, label %if.end566.i, label %if.then551.i

if.then551.i:                                     ; preds = %if.end549.i
  %img_height552.i = getelementptr inbounds %struct.InputParameters* %194, i64 0, i32 17
  %199 = load i32* %img_height552.i, align 4, !tbaa !3
  %200 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %auto_crop_bottom553.i = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 166
  %201 = load i32* %auto_crop_bottom553.i, align 4, !tbaa !3
  %add554.i = add nsw i32 %201, %199
  %img_width555.i = getelementptr inbounds %struct.InputParameters* %194, i64 0, i32 16
  %202 = load i32* %img_width555.i, align 4, !tbaa !3
  %auto_crop_right556.i = getelementptr inbounds %struct.ImageParameters* %200, i64 0, i32 165
  %203 = load i32* %auto_crop_right556.i, align 4, !tbaa !3
  %add557.i = add nsw i32 %203, %202
  %mul558.i = mul nsw i32 %add557.i, %add554.i
  %div559.i = sdiv i32 %mul558.i, 256
  %basicunit.i = getelementptr inbounds %struct.InputParameters* %194, i64 0, i32 130
  %204 = load i32* %basicunit.i, align 4, !tbaa !3
  %rem560.i = srem i32 %div559.i, %204
  %cmp561.i = icmp eq i32 %rem560.i, 0
  br i1 %cmp561.i, label %if.end566.i, label %if.then563.i

if.then563.i:                                     ; preds = %if.then551.i
  %call564.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([37 x i8]* @.str196, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre757.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end566.i

if.end566.i:                                      ; preds = %if.then563.i, %if.then551.i, %if.end549.i
  %205 = phi %struct.InputParameters* [ %194, %if.then551.i ], [ %194, %if.end549.i ], [ %.pre757.i, %if.then563.i ]
  %successive_Bframe567.i = getelementptr inbounds %struct.InputParameters* %205, i64 0, i32 34
  %206 = load i32* %successive_Bframe567.i, align 4, !tbaa !3
  %tobool568.i = icmp eq i32 %206, 0
  br i1 %tobool568.i, label %if.end580.i, label %land.lhs.true569.i

land.lhs.true569.i:                               ; preds = %if.end566.i
  %BRefPictures570.i = getelementptr inbounds %struct.InputParameters* %205, i64 0, i32 54
  %207 = load i32* %BRefPictures570.i, align 4, !tbaa !3
  %tobool571.i = icmp eq i32 %207, 0
  br i1 %tobool571.i, label %if.end580.i, label %land.lhs.true572.i

land.lhs.true572.i:                               ; preds = %land.lhs.true569.i
  %idr_enable.i = getelementptr inbounds %struct.InputParameters* %205, i64 0, i32 32
  %208 = load i32* %idr_enable.i, align 4, !tbaa !3
  %tobool573.i = icmp eq i32 %208, 0
  br i1 %tobool573.i, label %if.end580.i, label %land.lhs.true574.i

land.lhs.true574.i:                               ; preds = %land.lhs.true572.i
  %intra_period.i = getelementptr inbounds %struct.InputParameters* %205, i64 0, i32 31
  %209 = load i32* %intra_period.i, align 4, !tbaa !3
  %tobool575.i = icmp eq i32 %209, 0
  br i1 %tobool575.i, label %if.end580.i, label %land.lhs.true576.i

land.lhs.true576.i:                               ; preds = %land.lhs.true574.i
  %pic_order_cnt_type.i = getelementptr inbounds %struct.InputParameters* %205, i64 0, i32 120
  %210 = load i32* %pic_order_cnt_type.i, align 4, !tbaa !3
  %cmp577.i = icmp eq i32 %210, 0
  br i1 %cmp577.i, label %if.end580.i, label %if.then579.i

if.then579.i:                                     ; preds = %land.lhs.true576.i
  call void @error(i8* getelementptr inbounds ([91 x i8]* @.str197, i64 0, i64 0), i32 -1000) #11
  %.pre758.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end580.i

if.end580.i:                                      ; preds = %if.then579.i, %land.lhs.true576.i, %land.lhs.true574.i, %land.lhs.true572.i, %land.lhs.true569.i, %if.end566.i
  %211 = phi %struct.InputParameters* [ %205, %land.lhs.true576.i ], [ %205, %land.lhs.true574.i ], [ %205, %land.lhs.true572.i ], [ %205, %land.lhs.true569.i ], [ %205, %if.end566.i ], [ %.pre758.i, %if.then579.i ]
  %direct_spatial_mv_pred_flag581.i = getelementptr inbounds %struct.InputParameters* %211, i64 0, i32 37
  %212 = load i32* %direct_spatial_mv_pred_flag581.i, align 4, !tbaa !3
  %tobool582.i = icmp eq i32 %212, 0
  br i1 %tobool582.i, label %land.lhs.true583.i, label %if.end592.i

land.lhs.true583.i:                               ; preds = %if.end580.i
  %num_ref_frames584.i = getelementptr inbounds %struct.InputParameters* %211, i64 0, i32 9
  %213 = load i32* %num_ref_frames584.i, align 4, !tbaa !3
  %cmp585.i = icmp slt i32 %213, 2
  br i1 %cmp585.i, label %land.lhs.true587.i, label %if.end592.i

land.lhs.true587.i:                               ; preds = %land.lhs.true583.i
  %successive_Bframe588.i = getelementptr inbounds %struct.InputParameters* %211, i64 0, i32 34
  %214 = load i32* %successive_Bframe588.i, align 4, !tbaa !3
  %cmp589.i = icmp sgt i32 %214, 0
  br i1 %cmp589.i, label %if.then591.i, label %if.end592.i

if.then591.i:                                     ; preds = %land.lhs.true587.i
  call void @error(i8* getelementptr inbounds ([45 x i8]* @.str198, i64 0, i64 0), i32 -1000) #11
  %.pre759.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end592.i

if.end592.i:                                      ; preds = %if.then591.i, %land.lhs.true587.i, %land.lhs.true583.i, %if.end580.i
  %215 = phi %struct.InputParameters* [ %211, %if.end580.i ], [ %.pre759.i, %if.then591.i ], [ %211, %land.lhs.true587.i ], [ %211, %land.lhs.true583.i ]
  %AllowTransform8x8.i = getelementptr inbounds %struct.InputParameters* %215, i64 0, i32 123
  %216 = load i32* %AllowTransform8x8.i, align 4, !tbaa !3
  %tobool593.i = icmp eq i32 %216, 0
  br i1 %tobool593.i, label %if.end610.i, label %land.lhs.true594.i

land.lhs.true594.i:                               ; preds = %if.end592.i
  %sp_periodicity.i = getelementptr inbounds %struct.InputParameters* %215, i64 0, i32 43
  %217 = load i32* %sp_periodicity.i, align 4, !tbaa !3
  %tobool595.i = icmp eq i32 %217, 0
  br i1 %tobool595.i, label %land.lhs.true601.i, label %if.end598.i

if.end598.i:                                      ; preds = %land.lhs.true594.i
  %call597.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([52 x i8]* @.str199, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre760.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  %AllowTransform8x8599.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre760.i, i64 0, i32 123
  %.pre761.i = load i32* %AllowTransform8x8599.phi.trans.insert.i, align 4, !tbaa !3
  %tobool600.i = icmp eq i32 %.pre761.i, 0
  br i1 %tobool600.i, label %if.end610.i, label %land.lhs.true601.i

land.lhs.true601.i:                               ; preds = %if.end598.i, %land.lhs.true594.i
  %218 = phi %struct.InputParameters* [ %.pre760.i, %if.end598.i ], [ %215, %land.lhs.true594.i ]
  %ProfileIDC.i = getelementptr inbounds %struct.InputParameters* %218, i64 0, i32 0
  %219 = load i32* %ProfileIDC.i, align 4, !tbaa !3
  %.off.i = add i32 %219, -100
  %220 = icmp ugt i32 %.off.i, 44
  br i1 %220, label %if.then608.i, label %if.end610.i

if.then608.i:                                     ; preds = %land.lhs.true601.i
  %call609.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([62 x i8]* @.str200, i64 0, i64 0), i32 100, i32 144) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre762.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end610.i

if.end610.i:                                      ; preds = %if.then608.i, %land.lhs.true601.i, %if.end598.i, %if.end592.i
  %221 = phi %struct.InputParameters* [ %218, %land.lhs.true601.i ], [ %.pre760.i, %if.end598.i ], [ %.pre762.i, %if.then608.i ], [ %215, %if.end592.i ]
  %ScalingMatrixPresentFlag.i = getelementptr inbounds %struct.InputParameters* %221, i64 0, i32 132
  %222 = load i32* %ScalingMatrixPresentFlag.i, align 4, !tbaa !3
  %tobool611.i = icmp eq i32 %222, 0
  br i1 %tobool611.i, label %if.end622.i, label %land.lhs.true612.i

land.lhs.true612.i:                               ; preds = %if.end610.i
  %ProfileIDC613.i = getelementptr inbounds %struct.InputParameters* %221, i64 0, i32 0
  %223 = load i32* %ProfileIDC613.i, align 4, !tbaa !3
  %.off718.i = add i32 %223, -100
  %224 = icmp ugt i32 %.off718.i, 44
  br i1 %224, label %if.then620.i, label %if.end622.i

if.then620.i:                                     ; preds = %land.lhs.true612.i
  %call621.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([69 x i8]* @.str201, i64 0, i64 0), i32 100, i32 144) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre763.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end622.i

if.end622.i:                                      ; preds = %if.then620.i, %land.lhs.true612.i, %if.end610.i
  %225 = phi %struct.InputParameters* [ %221, %land.lhs.true612.i ], [ %221, %if.end610.i ], [ %.pre763.i, %if.then620.i ]
  %yuv_format.i = getelementptr inbounds %struct.InputParameters* %225, i64 0, i32 18
  %226 = load i32* %yuv_format.i, align 4, !tbaa !3
  %cmp623.i = icmp eq i32 %226, 2
  br i1 %cmp623.i, label %land.lhs.true625.i, label %if.end631.i

land.lhs.true625.i:                               ; preds = %if.end622.i
  %ProfileIDC626.i = getelementptr inbounds %struct.InputParameters* %225, i64 0, i32 0
  %227 = load i32* %ProfileIDC626.i, align 4, !tbaa !3
  %cmp627.i = icmp slt i32 %227, 122
  br i1 %cmp627.i, label %if.then629.i, label %land.lhs.true645.i

if.then629.i:                                     ; preds = %land.lhs.true625.i
  %call630.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([84 x i8]* @.str202, i64 0, i64 0), i32 122, i32 144) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre764.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  %yuv_format632.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre764.i, i64 0, i32 18
  %.pre765.i = load i32* %yuv_format632.phi.trans.insert.i, align 4, !tbaa !3
  br label %if.end631.i

if.end631.i:                                      ; preds = %if.then629.i, %if.end622.i
  %228 = phi i32 [ %.pre765.i, %if.then629.i ], [ %226, %if.end622.i ]
  %229 = phi %struct.InputParameters* [ %.pre764.i, %if.then629.i ], [ %225, %if.end622.i ]
  %cmp633.i = icmp eq i32 %228, 3
  br i1 %cmp633.i, label %land.lhs.true635.i, label %land.lhs.true645.i

land.lhs.true635.i:                               ; preds = %if.end631.i
  %ProfileIDC636.i = getelementptr inbounds %struct.InputParameters* %229, i64 0, i32 0
  %230 = load i32* %ProfileIDC636.i, align 4, !tbaa !3
  %cmp637.i = icmp slt i32 %230, 144
  br i1 %cmp637.i, label %if.end641.i, label %if.end649.i

if.end641.i:                                      ; preds = %land.lhs.true635.i
  %call640.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([79 x i8]* @.str203, i64 0, i64 0), i32 144) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre766.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  %yuv_format642.phi.trans.insert.i = getelementptr inbounds %struct.InputParameters* %.pre766.i, i64 0, i32 18
  %.pre767.i = load i32* %yuv_format642.phi.trans.insert.i, align 4, !tbaa !3
  %cmp643.i = icmp eq i32 %.pre767.i, 3
  br i1 %cmp643.i, label %if.end649.i, label %land.lhs.true645.i

land.lhs.true645.i:                               ; preds = %if.end641.i, %if.end631.i, %land.lhs.true625.i
  %231 = phi %struct.InputParameters* [ %.pre766.i, %if.end641.i ], [ %229, %if.end631.i ], [ %225, %land.lhs.true625.i ]
  %residue_transform_flag.i = getelementptr inbounds %struct.InputParameters* %231, i64 0, i32 143
  %232 = load i32* %residue_transform_flag.i, align 4, !tbaa !3
  %tobool646.i = icmp eq i32 %232, 0
  br i1 %tobool646.i, label %if.end649.i, label %if.then647.i

if.then647.i:                                     ; preds = %land.lhs.true645.i
  %call648.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([54 x i8]* @.str204, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre768.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end649.i

if.end649.i:                                      ; preds = %land.lhs.true645.i, %if.end641.i, %if.then647.i, %land.lhs.true635.i
  %233 = phi %struct.InputParameters* [ %.pre768.i, %if.then647.i ], [ %229, %land.lhs.true635.i ], [ %.pre766.i, %if.end641.i ], [ %231, %land.lhs.true645.i ]
  %ProfileIDC.i.i = getelementptr inbounds %struct.InputParameters* %233, i64 0, i32 0
  %234 = load i32* %ProfileIDC.i.i, align 4, !tbaa !3
  switch i32 %234, label %if.then.i714.i [
    i32 66, label %if.end.i.i
    i32 77, label %if.end.i.i
    i32 88, label %if.end.i.i
    i32 100, label %if.end.i.i
    i32 110, label %if.end.i.i
    i32 122, label %if.end.i.i
    i32 144, label %if.end.i.i
  ]

if.then.i714.i:                                   ; preds = %if.end649.i
  %call.i712.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([72 x i8]* @.str205, i64 0, i64 0), i32 100, i32 144) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre.i713.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  %ProfileIDC18.phi.trans.insert.i.i = getelementptr inbounds %struct.InputParameters* %.pre.i713.i, i64 0, i32 0
  %.pre80.i.i = load i32* %ProfileIDC18.phi.trans.insert.i.i, align 4, !tbaa !3
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i714.i, %if.end649.i, %if.end649.i, %if.end649.i, %if.end649.i, %if.end649.i, %if.end649.i, %if.end649.i
  %235 = phi i32 [ %234, %if.end649.i ], [ %234, %if.end649.i ], [ %234, %if.end649.i ], [ %234, %if.end649.i ], [ %234, %if.end649.i ], [ %234, %if.end649.i ], [ %234, %if.end649.i ], [ %.pre80.i.i, %if.then.i714.i ]
  %236 = phi %struct.InputParameters* [ %233, %if.end649.i ], [ %233, %if.end649.i ], [ %233, %if.end649.i ], [ %233, %if.end649.i ], [ %233, %if.end649.i ], [ %233, %if.end649.i ], [ %233, %if.end649.i ], [ %.pre.i713.i, %if.then.i714.i ]
  %cmp19.i.i = icmp eq i32 %235, 66
  br i1 %cmp19.i.i, label %if.then20.i.i, label %if.end44.i.i

if.then20.i.i:                                    ; preds = %if.end.i.i
  %successive_Bframe.i.i = getelementptr inbounds %struct.InputParameters* %236, i64 0, i32 34
  %237 = load i32* %successive_Bframe.i.i, align 4, !tbaa !3
  %tobool.i.i = icmp eq i32 %237, 0
  br i1 %tobool.i.i, label %if.end23.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.then20.i.i
  %call22.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([40 x i8]* @.str206, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre81.i.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then21.i.i, %if.then20.i.i
  %238 = phi %struct.InputParameters* [ %236, %if.then20.i.i ], [ %.pre81.i.i, %if.then21.i.i ]
  %sp_periodicity.i.i = getelementptr inbounds %struct.InputParameters* %238, i64 0, i32 43
  %239 = load i32* %sp_periodicity.i.i, align 4, !tbaa !3
  %tobool24.i.i = icmp eq i32 %239, 0
  br i1 %tobool24.i.i, label %if.end27.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %if.end23.i.i
  %call26.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([41 x i8]* @.str207, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre82.i.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then25.i.i, %if.end23.i.i
  %240 = phi %struct.InputParameters* [ %238, %if.end23.i.i ], [ %.pre82.i.i, %if.then25.i.i ]
  %partition_mode.i.i = getelementptr inbounds %struct.InputParameters* %240, i64 0, i32 61
  %241 = load i32* %partition_mode.i.i, align 4, !tbaa !3
  %tobool28.i.i = icmp eq i32 %241, 0
  br i1 %tobool28.i.i, label %if.end31.i.i, label %if.then29.i.i

if.then29.i.i:                                    ; preds = %if.end27.i.i
  %call30.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([46 x i8]* @.str208, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre83.i.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then29.i.i, %if.end27.i.i
  %242 = phi %struct.InputParameters* [ %240, %if.end27.i.i ], [ %.pre83.i.i, %if.then29.i.i ]
  %WeightedPrediction.i.i = getelementptr inbounds %struct.InputParameters* %242, i64 0, i32 46
  %243 = load i32* %WeightedPrediction.i.i, align 4, !tbaa !3
  %tobool32.i.i = icmp eq i32 %243, 0
  br i1 %tobool32.i.i, label %if.end35.i.i, label %if.then33.i.i

if.then33.i.i:                                    ; preds = %if.end31.i.i
  %call34.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([48 x i8]* @.str209, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre84.i.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then33.i.i, %if.end31.i.i
  %244 = phi %struct.InputParameters* [ %242, %if.end31.i.i ], [ %.pre84.i.i, %if.then33.i.i ]
  %WeightedBiprediction.i.i = getelementptr inbounds %struct.InputParameters* %244, i64 0, i32 47
  %245 = load i32* %WeightedBiprediction.i.i, align 4, !tbaa !3
  %tobool36.i.i = icmp eq i32 %245, 0
  br i1 %tobool36.i.i, label %if.end39.i.i, label %if.then37.i.i

if.then37.i.i:                                    ; preds = %if.end35.i.i
  %call38.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([48 x i8]* @.str209, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre85.i.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then37.i.i, %if.end35.i.i
  %246 = phi %struct.InputParameters* [ %244, %if.end35.i.i ], [ %.pre85.i.i, %if.then37.i.i ]
  %symbol_mode.i.i = getelementptr inbounds %struct.InputParameters* %246, i64 0, i32 59
  %247 = load i32* %symbol_mode.i.i, align 4, !tbaa !3
  %cmp40.i.i = icmp eq i32 %247, 1
  br i1 %cmp40.i.i, label %if.then41.i.i, label %if.end44.i.i

if.then41.i.i:                                    ; preds = %if.end39.i.i
  %call42.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([34 x i8]* @.str210, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre86.i.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then41.i.i, %if.end39.i.i, %if.end.i.i
  %248 = phi %struct.InputParameters* [ %.pre86.i.i, %if.then41.i.i ], [ %236, %if.end.i.i ], [ %246, %if.end39.i.i ]
  %ProfileIDC45.i.i = getelementptr inbounds %struct.InputParameters* %248, i64 0, i32 0
  %249 = load i32* %ProfileIDC45.i.i, align 4, !tbaa !3
  %cmp46.i715.i = icmp eq i32 %249, 77
  br i1 %cmp46.i715.i, label %if.then47.i.i, label %if.end66.i.i

if.then47.i.i:                                    ; preds = %if.end44.i.i
  %sp_periodicity48.i.i = getelementptr inbounds %struct.InputParameters* %248, i64 0, i32 43
  %250 = load i32* %sp_periodicity48.i.i, align 4, !tbaa !3
  %tobool49.i.i = icmp eq i32 %250, 0
  br i1 %tobool49.i.i, label %if.end52.i.i, label %if.then50.i.i

if.then50.i.i:                                    ; preds = %if.then47.i.i
  %call51.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([37 x i8]* @.str211, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre87.i.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then50.i.i, %if.then47.i.i
  %251 = phi %struct.InputParameters* [ %248, %if.then47.i.i ], [ %.pre87.i.i, %if.then50.i.i ]
  %partition_mode53.i.i = getelementptr inbounds %struct.InputParameters* %251, i64 0, i32 61
  %252 = load i32* %partition_mode53.i.i, align 4, !tbaa !3
  %tobool54.i.i = icmp eq i32 %252, 0
  br i1 %tobool54.i.i, label %if.end57.i.i, label %if.then55.i.i

if.then55.i.i:                                    ; preds = %if.end52.i.i
  %call56.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([42 x i8]* @.str212, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre88.i.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then55.i.i, %if.end52.i.i
  %253 = phi %struct.InputParameters* [ %251, %if.end52.i.i ], [ %.pre88.i.i, %if.then55.i.i ]
  %num_slice_groups_minus1.i.i = getelementptr inbounds %struct.InputParameters* %253, i64 0, i32 110
  %254 = load i32* %num_slice_groups_minus1.i.i, align 4, !tbaa !3
  %tobool58.i.i = icmp eq i32 %254, 0
  br i1 %tobool58.i.i, label %if.end61.i.i, label %if.then59.i.i

if.then59.i.i:                                    ; preds = %if.end57.i.i
  %call60.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([56 x i8]* @.str213, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre89.i.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %if.then59.i.i, %if.end57.i.i
  %255 = phi %struct.InputParameters* [ %253, %if.end57.i.i ], [ %.pre89.i.i, %if.then59.i.i ]
  %redundant_slice_flag.i.i = getelementptr inbounds %struct.InputParameters* %255, i64 0, i32 119
  %256 = load i32* %redundant_slice_flag.i.i, align 4, !tbaa !3
  %tobool62.i.i = icmp eq i32 %256, 0
  br i1 %tobool62.i.i, label %if.end66.i.i, label %if.then63.i.i

if.then63.i.i:                                    ; preds = %if.end61.i.i
  %call64.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([44 x i8]* @.str214, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre90.i.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.end61.i.i, %if.then63.i.i, %if.end44.i.i
  %257 = phi %struct.InputParameters* [ %.pre90.i.i, %if.then63.i.i ], [ %248, %if.end44.i.i ], [ %255, %if.end61.i.i ]
  %ProfileIDC67.i.i = getelementptr inbounds %struct.InputParameters* %257, i64 0, i32 0
  %258 = load i32* %ProfileIDC67.i.i, align 4, !tbaa !3
  %cmp68.i.i = icmp eq i32 %258, 88
  br i1 %cmp68.i.i, label %if.then69.i.i, label %PatchInp.exit

if.then69.i.i:                                    ; preds = %if.end66.i.i
  %directInferenceFlag.i.i = getelementptr inbounds %struct.InputParameters* %257, i64 0, i32 38
  %259 = load i32* %directInferenceFlag.i.i, align 4, !tbaa !3
  %tobool70.i.i = icmp eq i32 %259, 0
  br i1 %tobool70.i.i, label %if.then71.i.i, label %if.end73.i.i

if.then71.i.i:                                    ; preds = %if.then69.i.i
  %call72.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([58 x i8]* @.str215, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre91.i.i = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %if.end73.i.i

if.end73.i.i:                                     ; preds = %if.then71.i.i, %if.then69.i.i
  %260 = phi %struct.InputParameters* [ %257, %if.then69.i.i ], [ %.pre91.i.i, %if.then71.i.i ]
  %symbol_mode74.i.i = getelementptr inbounds %struct.InputParameters* %260, i64 0, i32 59
  %261 = load i32* %symbol_mode74.i.i, align 4, !tbaa !3
  %cmp75.i.i = icmp eq i32 %261, 1
  br i1 %cmp75.i.i, label %if.then76.i.i, label %PatchInp.exit

if.then76.i.i:                                    ; preds = %if.end73.i.i
  %call77.i.i = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([34 x i8]* @.str216, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 500) #11
  %.pre = load %struct.InputParameters** @input, align 8, !tbaa !0
  br label %PatchInp.exit

PatchInp.exit:                                    ; preds = %if.end66.i.i, %if.end73.i.i, %if.then76.i.i
  %262 = phi %struct.InputParameters* [ %257, %if.end66.i.i ], [ %260, %if.end73.i.i ], [ %.pre, %if.then76.i.i ]
  call void @llvm.lifetime.end(i64 4, i8* %21) #3
  %DisplayEncParams = getelementptr inbounds %struct.InputParameters* %262, i64 0, i32 126
  %263 = load i32* %DisplayEncParams, align 4, !tbaa !3
  %tobool = icmp eq i32 %263, 0
  br i1 %tobool, label %if.end128, label %if.then126

if.then126:                                       ; preds = %PatchInp.exit
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str235, i64 0, i64 0)) #3
  %puts1.i = call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str233, i64 0, i64 0)) #3
  %puts2.i = call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str235, i64 0, i64 0)) #3
  %264 = load i8** getelementptr inbounds ([151 x %struct.Mapping]* @Map, i64 0, i64 0, i32 0), align 16, !tbaa !0
  %cmp4.i = icmp eq i8* %264, null
  br i1 %cmp4.i, label %DisplayEncoderParams.exit, label %while.body.i188

while.body.i188:                                  ; preds = %if.then126, %if.end38.i
  %indvars.iv.i186 = phi i64 [ %indvars.iv.next.i191, %if.end38.i ], [ 0, %if.then126 ]
  %265 = phi i8* [ %274, %if.end38.i ], [ %264, %if.then126 ]
  %Type.i187 = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i186, i32 2
  %266 = load i32* %Type.i187, align 8, !tbaa !3
  switch i32 %266, label %if.end38.i [
    i32 0, label %if.then.i190
    i32 1, label %if.then16.i
    i32 2, label %if.then29.i
  ]

if.then.i190:                                     ; preds = %while.body.i188
  %Place.i189 = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i186, i32 1
  %267 = load i8** %Place.i189, align 8, !tbaa !0
  %268 = bitcast i8* %267 to i32*
  %269 = load i32* %268, align 4, !tbaa !3
  %call11.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str223, i64 0, i64 0), i8* %265, i32 %269) #11
  br label %if.end38.i

if.then16.i:                                      ; preds = %while.body.i188
  %Place22.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i186, i32 1
  %270 = load i8** %Place22.i, align 8, !tbaa !0
  %call23.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str224, i64 0, i64 0), i8* %265, i8* %270) #11
  br label %if.end38.i

if.then29.i:                                      ; preds = %while.body.i188
  %Place35.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.i186, i32 1
  %271 = load i8** %Place35.i, align 8, !tbaa !0
  %272 = bitcast i8* %271 to double*
  %273 = load double* %272, align 8, !tbaa !4
  %call36.i = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str225, i64 0, i64 0), i8* %265, double %273) #11
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then29.i, %if.then16.i, %if.then.i190, %while.body.i188
  %indvars.iv.next.i191 = add i64 %indvars.iv.i186, 1
  %TokenName.i192 = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.next.i191, i32 0
  %274 = load i8** %TokenName.i192, align 8, !tbaa !0
  %cmp.i193 = icmp eq i8* %274, null
  br i1 %cmp.i193, label %DisplayEncoderParams.exit, label %while.body.i188

DisplayEncoderParams.exit:                        ; preds = %if.end38.i, %if.then126
  %puts3.i = call i32 @puts(i8* getelementptr inbounds ([55 x i8]* @str235, i64 0, i64 0)) #3
  br label %if.end128

if.end128:                                        ; preds = %PatchInp.exit, %DisplayEncoderParams.exit
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize uwtable
define noalias i8* @GetConfigFileContent(i8* %Filename) #2 {
entry:
  %call = tail call %struct._IO_FILE* @fopen(i8* %Filename, i8* getelementptr inbounds ([2 x i8]* @.str162, i64 0, i64 0)) #11
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([35 x i8]* @.str163, i64 0, i64 0), i8* %Filename) #11
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @fseek(%struct._IO_FILE* %call, i64 0, i32 2) #11
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([39 x i8]* @.str164, i64 0, i64 0), i8* %Filename) #11
  br label %return

if.end6:                                          ; preds = %if.end
  %call7 = tail call i64 @ftell(%struct._IO_FILE* %call) #11
  %0 = icmp ugt i64 %call7, 60000
  br i1 %0, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  %call11 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([71 x i8]* @.str165, i64 0, i64 0), i64 %call7, i8* %Filename) #11
  br label %return

if.end12:                                         ; preds = %if.end6
  %call13 = tail call i32 @fseek(%struct._IO_FILE* %call, i64 0, i32 0) #11
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([39 x i8]* @.str164, i64 0, i64 0), i8* %Filename) #11
  br label %return

if.end17:                                         ; preds = %if.end12
  %add = add nsw i64 %call7, 1
  %call18 = tail call noalias i8* @malloc(i64 %add) #11
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  tail call void @no_mem_exit(i8* getelementptr inbounds ([26 x i8]* @.str166, i64 0, i64 0)) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17
  %call22 = tail call i64 @fread(i8* %call18, i64 1, i64 %call7, %struct._IO_FILE* %call) #11
  %arrayidx = getelementptr inbounds i8* %call18, i64 %call22
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %call23 = tail call i32 @fclose(%struct._IO_FILE* %call) #11
  br label %return

return:                                           ; preds = %if.end21, %if.then15, %if.then10, %if.then4, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ null, %if.then4 ], [ null, %if.then10 ], [ null, %if.then15 ], [ %call18, %if.end21 ]
  ret i8* %retval.0
}

; Function Attrs: optsize
declare void @error(i8*, i32) #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ParseContent(i8* %buf, i32 %bufsize) #2 {
entry:
  %items = alloca [10000 x i8*], align 16
  %IntContent = alloca i32, align 4
  %DoubleContent = alloca double, align 8
  %0 = bitcast [10000 x i8*]* %items to i8*
  call void @llvm.lifetime.start(i64 80000, i8* %0) #3
  %idxprom = sext i32 %bufsize to i64
  %arrayidx = getelementptr inbounds i8* %buf, i64 %idxprom
  %cmp154167173 = icmp sgt i32 %bufsize, 0
  br i1 %cmp154167173, label %while.body.lr.ph.lr.ph, label %for.end

while.body.lr.ph.lr.ph:                           ; preds = %entry, %while.cond.outer.backedge
  %item.0.ph177 = phi i32 [ %item.0.ph.be, %while.cond.outer.backedge ], [ 0, %entry ]
  %p.0.ph176 = phi i8* [ %p.0.ph.be, %while.cond.outer.backedge ], [ %buf, %entry ]
  %InItem.0.ph175 = phi i32 [ %InItem.0.ph.be, %while.cond.outer.backedge ], [ 0, %entry ]
  %InString.0.ph174 = phi i32 [ %InString.0.ph.be, %while.cond.outer.backedge ], [ 0, %entry ]
  %tobool = icmp eq i32 %InString.0.ph174, 0
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %if.end30
  %item.0.ph148170 = phi i32 [ %item.0.ph177, %while.body.lr.ph.lr.ph ], [ %item.2, %if.end30 ]
  %p.0.ph147169 = phi i8* [ %p.0.ph176, %while.body.lr.ph.lr.ph ], [ %incdec.ptr31, %if.end30 ]
  %InItem.0.ph146168 = phi i32 [ %InItem.0.ph175, %while.body.lr.ph.lr.ph ], [ %InItem.2, %if.end30 ]
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.lr.ph
  %p.0155 = phi i8* [ %p.0.ph147169, %while.body.lr.ph ], [ %p.0.be, %while.cond.backedge ]
  %1 = load i8* %p.0155, align 1, !tbaa !1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 13, label %sw.bb
    i32 35, label %sw.bb1
    i32 10, label %sw.bb10
    i32 32, label %sw.bb12
    i32 9, label %sw.bb12
    i32 34, label %sw.bb15
  ]

sw.bb:                                            ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8* %p.0155, i64 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb, %sw.bb12
  %p.0.be = phi i8* [ %incdec.ptr13, %sw.bb12 ], [ %incdec.ptr, %sw.bb ]
  %cmp = icmp ult i8* %p.0.be, %arrayidx
  br i1 %cmp, label %while.body, label %while.end32

sw.bb1:                                           ; preds = %while.body
  store i8 0, i8* %p.0155, align 1, !tbaa !1
  br label %while.cond2

while.cond2:                                      ; preds = %while.cond2.while.cond2_crit_edge, %sw.bb1
  %2 = phi i1 [ true, %sw.bb1 ], [ %phitmp, %while.cond2.while.cond2_crit_edge ]
  %p.1 = phi i8* [ %p.0155, %sw.bb1 ], [ %incdec.ptr9, %while.cond2.while.cond2_crit_edge ]
  %cmp6 = icmp ult i8* %p.1, %arrayidx
  %or.cond = and i1 %2, %cmp6
  %incdec.ptr9 = getelementptr inbounds i8* %p.1, i64 1
  br i1 %or.cond, label %while.cond2.while.cond2_crit_edge, label %while.cond.outer.backedge

while.cond2.while.cond2_crit_edge:                ; preds = %while.cond2
  %.pre = load i8* %incdec.ptr9, align 1, !tbaa !1
  %phitmp = icmp ne i8 %.pre, 10
  br label %while.cond2

sw.bb10:                                          ; preds = %while.body
  %incdec.ptr11 = getelementptr inbounds i8* %p.0155, i64 1
  store i8 0, i8* %p.0155, align 1, !tbaa !1
  br label %while.cond.outer.backedge

sw.bb12:                                          ; preds = %while.body, %while.body
  %incdec.ptr13 = getelementptr inbounds i8* %p.0155, i64 1
  br i1 %tobool, label %if.else, label %while.cond.backedge

if.else:                                          ; preds = %sw.bb12
  store i8 0, i8* %p.0155, align 1, !tbaa !1
  br label %while.cond.outer.backedge

sw.bb15:                                          ; preds = %while.body
  %incdec.ptr16 = getelementptr inbounds i8* %p.0155, i64 1
  store i8 0, i8* %p.0155, align 1, !tbaa !1
  br i1 %tobool, label %if.then18, label %if.end22

if.then18:                                        ; preds = %sw.bb15
  %inc = add nsw i32 %item.0.ph148170, 1
  %idxprom19 = sext i32 %item.0.ph148170 to i64
  %arrayidx20 = getelementptr inbounds [10000 x i8*]* %items, i64 0, i64 %idxprom19
  store i8* %incdec.ptr16, i8** %arrayidx20, align 8, !tbaa !0
  %neg = xor i32 %InItem.0.ph146168, -1
  br label %if.end22

if.end22:                                         ; preds = %sw.bb15, %if.then18
  %InItem.1 = phi i32 [ %neg, %if.then18 ], [ 0, %sw.bb15 ]
  %item.1 = phi i32 [ %inc, %if.then18 ], [ %item.0.ph148170, %sw.bb15 ]
  %neg23 = xor i32 %InString.0.ph174, -1
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %while.cond2, %if.end22, %if.else, %sw.bb10
  %InString.0.ph.be = phi i32 [ %neg23, %if.end22 ], [ 0, %if.else ], [ 0, %sw.bb10 ], [ 0, %while.cond2 ]
  %InItem.0.ph.be = phi i32 [ %InItem.1, %if.end22 ], [ 0, %if.else ], [ 0, %sw.bb10 ], [ 0, %while.cond2 ]
  %p.0.ph.be = phi i8* [ %incdec.ptr16, %if.end22 ], [ %incdec.ptr13, %if.else ], [ %incdec.ptr11, %sw.bb10 ], [ %p.1, %while.cond2 ]
  %item.0.ph.be = phi i32 [ %item.1, %if.end22 ], [ %item.0.ph148170, %if.else ], [ %item.0.ph148170, %sw.bb10 ], [ %item.0.ph148170, %while.cond2 ]
  %cmp154167 = icmp ult i8* %p.0.ph.be, %arrayidx
  br i1 %cmp154167, label %while.body.lr.ph.lr.ph, label %while.end32

sw.default:                                       ; preds = %while.body
  %tobool24 = icmp eq i32 %InItem.0.ph146168, 0
  br i1 %tobool24, label %if.then25, label %if.end30

if.then25:                                        ; preds = %sw.default
  %inc26 = add nsw i32 %item.0.ph148170, 1
  %idxprom27 = sext i32 %item.0.ph148170 to i64
  %arrayidx28 = getelementptr inbounds [10000 x i8*]* %items, i64 0, i64 %idxprom27
  store i8* %p.0155, i8** %arrayidx28, align 8, !tbaa !0
  br label %if.end30

if.end30:                                         ; preds = %sw.default, %if.then25
  %InItem.2 = phi i32 [ %InItem.0.ph146168, %sw.default ], [ -1, %if.then25 ]
  %item.2 = phi i32 [ %item.0.ph148170, %sw.default ], [ %inc26, %if.then25 ]
  %incdec.ptr31 = getelementptr inbounds i8* %p.0155, i64 1
  %cmp154 = icmp ult i8* %incdec.ptr31, %arrayidx
  br i1 %cmp154, label %while.body.lr.ph, label %while.end32

while.end32:                                      ; preds = %if.end30, %while.cond.outer.backedge, %while.cond.backedge
  %item.0.ph148166 = phi i32 [ %item.0.ph148170, %while.cond.backedge ], [ %item.2, %if.end30 ], [ %item.0.ph.be, %while.cond.outer.backedge ]
  %dec = add nsw i32 %item.0.ph148166, -1
  %cmp33143 = icmp sgt i32 %dec, 0
  br i1 %cmp33143, label %for.body, label %for.end

for.body:                                         ; preds = %for.inc, %while.end32
  %indvars.iv = phi i64 [ 0, %while.end32 ], [ %indvars.iv.next, %for.inc ]
  %arrayidx36 = getelementptr inbounds [10000 x i8*]* %items, i64 0, i64 %indvars.iv
  %3 = load i8** %arrayidx36, align 8, !tbaa !0
  %4 = load i8** getelementptr inbounds ([151 x %struct.Mapping]* @Map, i64 0, i64 0, i32 0), align 16, !tbaa !0
  %cmp7.i = icmp eq i8* %4, null
  br i1 %cmp7.i, label %if.then39, label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %inc.i = add nsw i32 %i.08.i, 1
  %TokenName.i = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %indvars.iv.next.i, i32 0
  %5 = load i8** %TokenName.i, align 8, !tbaa !0
  %cmp.i = icmp eq i8* %5, null
  br i1 %cmp.i, label %if.then39, label %while.body.i

while.body.i:                                     ; preds = %for.body, %while.cond.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.cond.i ], [ 0, %for.body ]
  %6 = phi i8* [ %5, %while.cond.i ], [ %4, %for.body ]
  %i.08.i = phi i32 [ %inc.i, %while.cond.i ], [ 0, %for.body ]
  %call.i = call i32 @strcmp(i8* %6, i8* %3) #9
  %cmp4.i = icmp eq i32 %call.i, 0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  br i1 %cmp4.i, label %ParameterNameToMapIndex.exit, label %while.cond.i

ParameterNameToMapIndex.exit:                     ; preds = %while.body.i
  %cmp37 = icmp slt i32 %i.08.i, 0
  br i1 %cmp37, label %if.then39, label %if.end43

if.then39:                                        ; preds = %while.cond.i, %for.body, %ParameterNameToMapIndex.exit
  %retval.0.i141 = phi i32 [ %i.08.i, %ParameterNameToMapIndex.exit ], [ -1, %for.body ], [ -1, %while.cond.i ]
  %call42 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([67 x i8]* @.str226, i64 0, i64 0), i8* %3) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %ParameterNameToMapIndex.exit
  %retval.0.i140 = phi i32 [ %retval.0.i141, %if.then39 ], [ %i.08.i, %ParameterNameToMapIndex.exit ]
  %7 = add nsw i64 %indvars.iv, 1
  %arrayidx45 = getelementptr inbounds [10000 x i8*]* %items, i64 0, i64 %7
  %8 = load i8** %arrayidx45, align 8, !tbaa !0
  %call46 = call i32 @strcmp(i8* getelementptr inbounds ([2 x i8]* @.str227, i64 0, i64 0), i8* %8) #9
  %tobool47 = icmp eq i32 %call46, 0
  br i1 %tobool47, label %if.end50, label %if.then48

if.then48:                                        ; preds = %if.end43
  %call49 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([78 x i8]* @.str228, i64 0, i64 0)) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #11
  br label %if.end50

if.end50:                                         ; preds = %if.end43, %if.then48
  %idxprom51 = sext i32 %retval.0.i140 to i64
  %Type = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %idxprom51, i32 2
  %9 = load i32* %Type, align 8, !tbaa !3
  switch i32 %9, label %for.inc [
    i32 0, label %sw.bb53
    i32 1, label %sw.bb71
    i32 2, label %sw.bb80
  ]

sw.bb53:                                          ; preds = %if.end50
  %10 = add nsw i64 %indvars.iv, 2
  %arrayidx56 = getelementptr inbounds [10000 x i8*]* %items, i64 0, i64 %10
  %11 = load i8** %arrayidx56, align 8, !tbaa !0
  %call57 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8]* @.str178, i64 0, i64 0), i32* %IntContent) #11
  %cmp58 = icmp eq i32 %call57, 1
  br i1 %cmp58, label %if.end67, label %if.then60

if.then60:                                        ; preds = %sw.bb53
  %call66 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([74 x i8]* @.str229, i64 0, i64 0), i8* %3, i8* %11) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #11
  br label %if.end67

if.end67:                                         ; preds = %sw.bb53, %if.then60
  %12 = load i32* %IntContent, align 4, !tbaa !3
  %Place = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %idxprom51, i32 1
  %13 = load i8** %Place, align 8, !tbaa !0
  %14 = bitcast i8* %13 to i32*
  store i32 %12, i32* %14, align 4, !tbaa !3
  %putchar138 = call i32 @putchar(i32 46) #3
  br label %for.inc

sw.bb71:                                          ; preds = %if.end50
  %Place74 = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %idxprom51, i32 1
  %15 = load i8** %Place74, align 8, !tbaa !0
  %16 = add nsw i64 %indvars.iv, 2
  %arrayidx77 = getelementptr inbounds [10000 x i8*]* %items, i64 0, i64 %16
  %17 = load i8** %arrayidx77, align 8, !tbaa !0
  %call78 = call i8* @strncpy(i8* %15, i8* %17, i64 200) #11
  %putchar137 = call i32 @putchar(i32 46) #3
  br label %for.inc

sw.bb80:                                          ; preds = %if.end50
  %18 = add nsw i64 %indvars.iv, 2
  %arrayidx83 = getelementptr inbounds [10000 x i8*]* %items, i64 0, i64 %18
  %19 = load i8** %arrayidx83, align 8, !tbaa !0
  %call84 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %19, i8* getelementptr inbounds ([4 x i8]* @.str231, i64 0, i64 0), double* %DoubleContent) #11
  %cmp85 = icmp eq i32 %call84, 1
  br i1 %cmp85, label %if.end94, label %if.then87

if.then87:                                        ; preds = %sw.bb80
  %call93 = call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([74 x i8]* @.str229, i64 0, i64 0), i8* %3, i8* %19) #11
  call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 300) #11
  br label %if.end94

if.end94:                                         ; preds = %sw.bb80, %if.then87
  %20 = load double* %DoubleContent, align 8, !tbaa !4
  %Place97 = getelementptr inbounds [151 x %struct.Mapping]* @Map, i64 0, i64 %idxprom51, i32 1
  %21 = load i8** %Place97, align 8, !tbaa !0
  %22 = bitcast i8* %21 to double*
  store double %20, double* %22, align 8, !tbaa !4
  %putchar = call i32 @putchar(i32 46) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end67, %sw.bb71, %if.end94, %if.end50
  %indvars.iv.next = add i64 %indvars.iv, 3
  %23 = trunc i64 %indvars.iv.next to i32
  %cmp33 = icmp slt i32 %23, %dec
  br i1 %cmp33, label %for.body, label %for.end

for.end:                                          ; preds = %entry, %for.inc, %while.end32
  %24 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %25 = bitcast %struct.InputParameters* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* bitcast (%struct.InputParameters* @configinput to i8*), i64 3592, i32 8, i1 false)
  call void @llvm.lifetime.end(i64 80000, i8* %0) #3
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #6

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #4

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize readnone uwtable
define i32 @CeilLog2(i32 %uiVal) #7 {
entry:
  %sub = add i32 %uiVal, -1
  %cmp3 = icmp eq i32 %sub, 0
  br i1 %cmp3, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %uiRet.05 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %uiTmp.04 = phi i32 [ %shr, %while.body ], [ %sub, %entry ]
  %shr = lshr i32 %uiTmp.04, 1
  %inc = add i32 %uiRet.05, 1
  %cmp = icmp eq i32 %shr, 0
  br i1 %cmp, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %uiRet.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  ret i32 %uiRet.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @PatchInputNoFrames() #2 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %no_frames = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 2
  %1 = load i32* %no_frames, align 4, !tbaa !3
  %sub = add nsw i32 %1, -1
  %NumFramesInELSubSeq = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 99
  %2 = load i32* %NumFramesInELSubSeq, align 4, !tbaa !3
  %add = add nsw i32 %2, 1
  %mul = mul nsw i32 %add, %sub
  %add1 = add nsw i32 %mul, 1
  store i32 %add1, i32* %no_frames, align 4, !tbaa !3
  %NumFrameIn2ndIGOP = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 100
  %3 = load i32* %NumFrameIn2ndIGOP, align 4, !tbaa !3
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub4 = add nsw i32 %3, -1
  %mul7 = mul nsw i32 %add, %sub4
  %add8 = add nsw i32 %mul7, 1
  store i32 %add8, i32* %NumFrameIn2ndIGOP, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  store i32 %add1, i32* @FirstFrameIn2ndIGOP, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare i32 @open(i8* nocapture, i32, ...) #6

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

; Function Attrs: nounwind
declare i32 @putchar(i32) #3

attributes #0 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
