; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/vlc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

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
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__func__.ue_v = private unnamed_addr constant [5 x i8] c"ue_v\00", align 1
@.str = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/vlc.c\00", align 1
@.str1 = private unnamed_addr constant [38 x i8] c"part->bitstream->streamBuffer != NULL\00", align 1
@__func__.se_v = private unnamed_addr constant [5 x i8] c"se_v\00", align 1
@__func__.u_1 = private unnamed_addr constant [4 x i8] c"u_1\00", align 1
@__func__.u_v = private unnamed_addr constant [4 x i8] c"u_v\00", align 1
@img = external global %struct.ImageParameters*
@NCBP = external constant [2 x [48 x [2 x i8]]]
@levrun_linfo_c2x2.NTAB = internal unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 1, i32 5], [2 x i32] [i32 3, i32 0]], align 16
@levrun_linfo_c2x2.LEVRUN = internal unnamed_addr constant [4 x i32] [i32 2, i32 1, i32 0, i32 0], align 16
@levrun_linfo_inter.LEVRUN = internal unnamed_addr constant [16 x i8] c"\04\02\02\01\01\01\01\01\01\01\00\00\00\00\00\00", align 16
@levrun_linfo_inter.NTAB = internal unnamed_addr constant [4 x [10 x i8]] [[10 x i8] c"\01\03\05\09\0B\0D\15\17\19\1B", [10 x i8] c"\07\11\13\00\00\00\00\00\00\00", [10 x i8] c"\0F\00\00\00\00\00\00\00\00\00", [10 x i8] c"\1D\00\00\00\00\00\00\00\00\00"], align 16
@levrun_linfo_intra.LEVRUN = internal unnamed_addr constant [8 x i8] c"\09\03\01\01\01\00\00\00", align 1
@levrun_linfo_intra.NTAB = internal unnamed_addr constant [9 x [5 x i8]] [[5 x i8] c"\01\03\07\0F\11", [5 x i8] c"\05\13\00\00\00", [5 x i8] c"\09\15\00\00\00", [5 x i8] c"\0B\00\00\00\00", [5 x i8] c"\0D\00\00\00\00", [5 x i8] c"\17\00\00\00\00", [5 x i8] c"\19\00\00\00\00", [5 x i8] c"\1B\00\00\00\00", [5 x i8] c"\1D\00\00\00\00"], align 16
@writeSyntaxElement_NumCoeffTrailingOnes.lentab = internal unnamed_addr constant [3 x [4 x [17 x i32]]] [[4 x [17 x i32]] [[17 x i32] [i32 1, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 2, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16]], [4 x [17 x i32]] [[17 x i32] [i32 2, i32 6, i32 6, i32 7, i32 8, i32 8, i32 9, i32 11, i32 11, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 14, i32 14], [17 x i32] [i32 0, i32 2, i32 5, i32 6, i32 6, i32 7, i32 8, i32 9, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 14], [17 x i32] [i32 0, i32 0, i32 3, i32 6, i32 6, i32 7, i32 8, i32 9, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 13, i32 14, i32 14], [17 x i32] [i32 0, i32 0, i32 0, i32 4, i32 4, i32 5, i32 6, i32 6, i32 7, i32 9, i32 11, i32 11, i32 12, i32 13, i32 13, i32 13, i32 14]], [4 x [17 x i32]] [[17 x i32] [i32 4, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10], [17 x i32] [i32 0, i32 4, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10], [17 x i32] [i32 0, i32 0, i32 4, i32 5, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 10], [17 x i32] [i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 5, i32 6, i32 7, i32 8, i32 8, i32 9, i32 10, i32 10, i32 10]]], align 16
@writeSyntaxElement_NumCoeffTrailingOnes.codtab = internal unnamed_addr constant [3 x [4 x [17 x i32]]] [[4 x [17 x i32]] [[17 x i32] [i32 1, i32 5, i32 7, i32 7, i32 7, i32 7, i32 15, i32 11, i32 8, i32 15, i32 11, i32 15, i32 11, i32 15, i32 11, i32 7, i32 4], [17 x i32] [i32 0, i32 1, i32 4, i32 6, i32 6, i32 6, i32 6, i32 14, i32 10, i32 14, i32 10, i32 14, i32 10, i32 1, i32 14, i32 10, i32 6], [17 x i32] [i32 0, i32 0, i32 1, i32 5, i32 5, i32 5, i32 5, i32 5, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 5], [17 x i32] [i32 0, i32 0, i32 0, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 12, i32 12, i32 8, i32 12, i32 8, i32 12, i32 8]], [4 x [17 x i32]] [[17 x i32] [i32 3, i32 11, i32 7, i32 7, i32 7, i32 4, i32 7, i32 15, i32 11, i32 15, i32 11, i32 8, i32 15, i32 11, i32 7, i32 9, i32 7], [17 x i32] [i32 0, i32 2, i32 7, i32 10, i32 6, i32 6, i32 6, i32 6, i32 14, i32 10, i32 14, i32 10, i32 14, i32 10, i32 11, i32 8, i32 6], [17 x i32] [i32 0, i32 0, i32 3, i32 9, i32 5, i32 5, i32 5, i32 5, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 6, i32 10, i32 5], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 4, i32 6, i32 8, i32 4, i32 4, i32 4, i32 12, i32 8, i32 12, i32 12, i32 8, i32 1, i32 4]], [4 x [17 x i32]] [[17 x i32] [i32 15, i32 15, i32 11, i32 8, i32 15, i32 11, i32 9, i32 8, i32 15, i32 11, i32 15, i32 11, i32 8, i32 13, i32 9, i32 5, i32 1], [17 x i32] [i32 0, i32 14, i32 15, i32 12, i32 10, i32 8, i32 14, i32 10, i32 14, i32 14, i32 10, i32 14, i32 10, i32 7, i32 12, i32 8, i32 4], [17 x i32] [i32 0, i32 0, i32 13, i32 14, i32 11, i32 9, i32 13, i32 9, i32 13, i32 10, i32 13, i32 9, i32 13, i32 9, i32 11, i32 7, i32 3], [17 x i32] [i32 0, i32 0, i32 0, i32 12, i32 11, i32 10, i32 9, i32 8, i32 13, i32 12, i32 12, i32 12, i32 8, i32 12, i32 10, i32 6, i32 2]]], align 16
@.str2 = private unnamed_addr constant [59 x i8] c"ERROR: (numcoeff,trailingones) not valid: vlc=%d (%d, %d)\0A\00", align 1
@writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab = internal unnamed_addr constant [3 x [4 x [17 x i32]]] [[4 x [17 x i32]] [[17 x i32] [i32 2, i32 6, i32 6, i32 6, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 1, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 0, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 7, i32 7, i32 9, i32 9, i32 10, i32 11, i32 12, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 2, i32 7, i32 7, i32 9, i32 10, i32 11, i32 12, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 7, i32 9, i32 10, i32 11, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 7, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 2, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16]]], align 16
@writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab = internal unnamed_addr constant [3 x [4 x [17 x i32]]] [[4 x [17 x i32]] [[17 x i32] [i32 1, i32 7, i32 4, i32 3, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 1, i32 6, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 15, i32 14, i32 7, i32 6, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 1, i32 13, i32 12, i32 5, i32 6, i32 6, i32 6, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 1, i32 11, i32 10, i32 4, i32 5, i32 5, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 9, i32 8, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 5, i32 7, i32 7, i32 7, i32 7, i32 15, i32 11, i32 8, i32 15, i32 11, i32 15, i32 11, i32 15, i32 11, i32 7, i32 4], [17 x i32] [i32 0, i32 1, i32 4, i32 6, i32 6, i32 6, i32 6, i32 14, i32 10, i32 14, i32 10, i32 14, i32 10, i32 1, i32 14, i32 10, i32 6], [17 x i32] [i32 0, i32 0, i32 1, i32 5, i32 5, i32 5, i32 5, i32 5, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 5], [17 x i32] [i32 0, i32 0, i32 0, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 12, i32 12, i32 8, i32 12, i32 8, i32 12, i32 8]]], align 16
@.str3 = private unnamed_addr constant [52 x i8] c"ERROR: (numcoeff,trailingones) not valid: (%d, %d)\0A\00", align 1
@writeSyntaxElement_TotalZeros.lentab = internal unnamed_addr constant [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9], [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 0], [16 x i32] [i32 4, i32 3, i32 3, i32 3, i32 4, i32 4, i32 3, i32 3, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 0, i32 0], [16 x i32] [i32 5, i32 3, i32 4, i32 4, i32 3, i32 3, i32 3, i32 4, i32 3, i32 4, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 2, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 4, i32 5, i32 3, i32 2, i32 2, i32 3, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 6, i32 4, i32 2, i32 2, i32 3, i32 2, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 5, i32 3, i32 2, i32 2, i32 2, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 3, i32 3, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 3, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], align 16
@writeSyntaxElement_TotalZeros.codtab = internal unnamed_addr constant [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1], [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 5, i32 4, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1, i32 0, i32 0], [16 x i32] [i32 5, i32 7, i32 6, i32 5, i32 4, i32 3, i32 4, i32 3, i32 2, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 7, i32 5, i32 4, i32 6, i32 5, i32 4, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 4, i32 3, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 5, i32 4, i32 3, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], align 16
@.str4 = private unnamed_addr constant [37 x i8] c"ERROR: (TotalZeros) not valid: (%d)\0A\00", align 1
@writeSyntaxElement_TotalZerosChromaDC.lentab = internal unnamed_addr constant [3 x [15 x [16 x i32]]] [[15 x [16 x i32]] [[16 x i32] [i32 1, i32 2, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 3, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 2, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9], [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 0], [16 x i32] [i32 4, i32 3, i32 3, i32 3, i32 4, i32 4, i32 3, i32 3, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 0, i32 0], [16 x i32] [i32 5, i32 3, i32 4, i32 4, i32 3, i32 3, i32 3, i32 4, i32 3, i32 4, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 2, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 4, i32 5, i32 3, i32 2, i32 2, i32 3, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 6, i32 4, i32 2, i32 2, i32 3, i32 2, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 5, i32 3, i32 2, i32 2, i32 2, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 3, i32 3, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 3, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]]], align 16
@writeSyntaxElement_TotalZerosChromaDC.codtab = internal unnamed_addr constant [3 x [15 x [16 x i32]]] [[15 x [16 x i32]] [[16 x i32] [i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], [15 x [16 x i32]] [[16 x i32] [i32 1, i32 2, i32 3, i32 2, i32 3, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 2, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 0, i32 1, i32 2, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1], [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 5, i32 4, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1, i32 0, i32 0], [16 x i32] [i32 5, i32 7, i32 6, i32 5, i32 4, i32 3, i32 4, i32 3, i32 2, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 7, i32 5, i32 4, i32 6, i32 5, i32 4, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 4, i32 3, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 5, i32 4, i32 3, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]]], align 16
@writeSyntaxElement_Run.lentab = internal unnamed_addr constant [15 x [16 x i32]] [[16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], align 16
@writeSyntaxElement_Run.codtab = internal unnamed_addr constant [15 x [16 x i32]] [[16 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 0, i32 1, i32 3, i32 2, i32 5, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], align 16
@.str5 = private unnamed_addr constant [30 x i8] c"ERROR: (run) not valid: (%d)\0A\00", align 1
@stats = external global %struct.StatParameters*
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
@errortext = common global [300 x i8] zeroinitializer, align 16
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
@p_stat = common global %struct.__sFILE* null, align 8
@p_log = common global %struct.__sFILE* null, align 8
@p_trace = common global %struct.__sFILE* null, align 8
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

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ue_v(i8* nocapture readnone %tracestring, i32 %value, %struct.datapartition* nocapture readonly %part) #0 {
  %symbol = alloca %struct.syntaxelement, align 8
  tail call void @llvm.dbg.value(metadata i8* %tracestring, i64 0, metadata !121, metadata !814), !dbg !815
  tail call void @llvm.dbg.value(metadata i32 %value, i64 0, metadata !122, metadata !814), !dbg !816
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %part, i64 0, metadata !123, metadata !814), !dbg !817
  %1 = bitcast %struct.syntaxelement* %symbol to i8*, !dbg !818
  call void @llvm.lifetime.start(i64 48, i8* %1) #1, !dbg !818
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %symbol, i64 0, metadata !125, metadata !814), !dbg !819
  %2 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0, !dbg !820
  store i32 0, i32* %2, align 8, !dbg !821, !tbaa !822
  %3 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 8, !dbg !828
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %3, align 8, !dbg !829, !tbaa !830
  %4 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1, !dbg !831
  store i32 %value, i32* %4, align 4, !dbg !832, !tbaa !833
  %5 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2, !dbg !834
  store i32 0, i32* %5, align 8, !dbg !835, !tbaa !836
  %6 = getelementptr inbounds %struct.datapartition* %part, i64 0, i32 0, !dbg !837
  %7 = load %struct.Bitstream** %6, align 8, !dbg !837, !tbaa !838
  %8 = getelementptr inbounds %struct.Bitstream* %7, i64 0, i32 9, !dbg !837
  %9 = load i8** %8, align 8, !dbg !837, !tbaa !841
  %10 = icmp eq i8* %9, null, !dbg !837
  br i1 %10, label %11, label %12, !dbg !837, !prof !843

; <label>:11                                      ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__.ue_v, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 68, i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !837
  unreachable, !dbg !837

; <label>:12                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %symbol, i64 0, metadata !124, metadata !814), !dbg !844
  %13 = call i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %symbol, %struct.datapartition* %part) #6, !dbg !845
  call void @llvm.lifetime.end(i64 48, i8* %1) #1, !dbg !846
  ret i32 %13, !dbg !846
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @ue_linfo(i32 %ue, i32 %dummy, i32* nocapture %len, i32* nocapture %info) #0 {
  tail call void @llvm.dbg.value(metadata i32 %ue, i64 0, metadata !152, metadata !814), !dbg !847
  tail call void @llvm.dbg.value(metadata i32 %dummy, i64 0, metadata !153, metadata !814), !dbg !848
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !154, metadata !814), !dbg !849
  tail call void @llvm.dbg.value(metadata i32* %info, i64 0, metadata !155, metadata !814), !dbg !850
  %1 = add nsw i32 %ue, 1, !dbg !851
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !156, metadata !814), !dbg !852
  %nn.0.in.off2 = add i32 %ue, 2, !dbg !853
  %2 = icmp ugt i32 %nn.0.in.off2, 2, !dbg !853
  br i1 %2, label %.lr.ph, label %.critedge, !dbg !856

.lr.ph:                                           ; preds = %0, %.lr.ph
  %nn.0.in4 = phi i32 [ %nn.0, %.lr.ph ], [ %1, %0 ]
  %i.03 = phi i32 [ %3, %.lr.ph ], [ 0, %0 ]
  %nn.0 = sdiv i32 %nn.0.in4, 2, !dbg !857
  %3 = add nuw nsw i32 %i.03, 1, !dbg !858
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !156, metadata !814), !dbg !852
  %4 = icmp slt i32 %3, 16, !dbg !859
  %nn.0.in.off = add nsw i32 %nn.0, 1, !dbg !853
  %5 = icmp ugt i32 %nn.0.in.off, 2, !dbg !853
  %or.cond = and i1 %4, %5, !dbg !856
  br i1 %or.cond, label %.lr.ph, label %.critedge, !dbg !856

.critedge:                                        ; preds = %.lr.ph, %0
  %i.0.lcssa = phi i32 [ 0, %0 ], [ %3, %.lr.ph ]
  %6 = shl nsw i32 %i.0.lcssa, 1, !dbg !860
  %7 = or i32 %6, 1, !dbg !861
  store i32 %7, i32* %len, align 4, !dbg !862, !tbaa !863
  %8 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #1, !dbg !864
  %9 = fptosi double %8 to i32, !dbg !865
  %10 = sub nsw i32 %1, %9, !dbg !866
  store i32 %10, i32* %info, align 4, !dbg !867, !tbaa !863
  ret void, !dbg !868
}

; Function Attrs: noreturn optsize
declare void @__assert_rtn(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %se, %struct.datapartition* nocapture readonly %this_dataPart) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !223, metadata !814), !dbg !869
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %this_dataPart, i64 0, metadata !224, metadata !814), !dbg !870
  %1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 8, !dbg !871
  %2 = load void (i32, i32, i32*, i32*)** %1, align 8, !dbg !871, !tbaa !830
  %3 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !872
  %4 = load i32* %3, align 4, !dbg !872, !tbaa !833
  %5 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !873
  %6 = load i32* %5, align 4, !dbg !873, !tbaa !836
  %7 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !874
  %8 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !875
  tail call void %2(i32 %4, i32 %6, i32* %7, i32* %8) #7, !dbg !876
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !217, metadata !814), !dbg !877
  %9 = load i32* %7, align 4, !dbg !879, !tbaa !880
  %10 = sdiv i32 %9, 2, !dbg !881
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !218, metadata !814), !dbg !882
  %11 = shl i32 1, %10, !dbg !883
  %12 = load i32* %8, align 4, !dbg !884, !tbaa !885
  %13 = add nsw i32 %11, -1, !dbg !886
  %14 = and i32 %13, %12, !dbg !887
  %15 = or i32 %14, %11, !dbg !888
  %16 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !889
  store i32 %15, i32* %16, align 4, !dbg !890, !tbaa !891
  %17 = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !892
  %18 = load %struct.Bitstream** %17, align 8, !dbg !892, !tbaa !838
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %18) #6, !dbg !893
  %19 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 0, !dbg !894
  %20 = load i32* %19, align 4, !dbg !894, !tbaa !822
  %21 = icmp eq i32 %20, 0, !dbg !896
  br i1 %21, label %25, label %22, !dbg !897

; <label>:22                                      ; preds = %0
  %23 = load %struct.Bitstream** %17, align 8, !dbg !898, !tbaa !838
  %24 = getelementptr inbounds %struct.Bitstream* %23, i64 0, i32 10, !dbg !899
  store i32 1, i32* %24, align 4, !dbg !900, !tbaa !901
  br label %25, !dbg !902

; <label>:25                                      ; preds = %0, %22
  %26 = load i32* %7, align 4, !dbg !903, !tbaa !880
  ret i32 %26, !dbg !904
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @se_v(i8* nocapture readnone %tracestring, i32 %value, %struct.datapartition* nocapture readonly %part) #0 {
  %symbol = alloca %struct.syntaxelement, align 8
  tail call void @llvm.dbg.value(metadata i8* %tracestring, i64 0, metadata !128, metadata !814), !dbg !905
  tail call void @llvm.dbg.value(metadata i32 %value, i64 0, metadata !129, metadata !814), !dbg !906
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %part, i64 0, metadata !130, metadata !814), !dbg !907
  %1 = bitcast %struct.syntaxelement* %symbol to i8*, !dbg !908
  call void @llvm.lifetime.start(i64 48, i8* %1) #1, !dbg !908
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %symbol, i64 0, metadata !132, metadata !814), !dbg !909
  %2 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0, !dbg !910
  store i32 0, i32* %2, align 8, !dbg !911, !tbaa !822
  %3 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 8, !dbg !912
  store void (i32, i32, i32*, i32*)* @se_linfo, void (i32, i32, i32*, i32*)** %3, align 8, !dbg !913, !tbaa !830
  %4 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1, !dbg !914
  store i32 %value, i32* %4, align 4, !dbg !915, !tbaa !833
  %5 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2, !dbg !916
  store i32 0, i32* %5, align 8, !dbg !917, !tbaa !836
  %6 = getelementptr inbounds %struct.datapartition* %part, i64 0, i32 0, !dbg !918
  %7 = load %struct.Bitstream** %6, align 8, !dbg !918, !tbaa !838
  %8 = getelementptr inbounds %struct.Bitstream* %7, i64 0, i32 9, !dbg !918
  %9 = load i8** %8, align 8, !dbg !918, !tbaa !841
  %10 = icmp eq i8* %9, null, !dbg !918
  br i1 %10, label %11, label %12, !dbg !918, !prof !843

; <label>:11                                      ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8]* @__func__.se_v, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 106, i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !918
  unreachable, !dbg !918

; <label>:12                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %symbol, i64 0, metadata !131, metadata !814), !dbg !919
  %13 = call i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %symbol, %struct.datapartition* %part) #6, !dbg !920
  call void @llvm.lifetime.end(i64 48, i8* %1) #1, !dbg !921
  ret i32 %13, !dbg !921
}

; Function Attrs: nounwind optsize ssp uwtable
define void @se_linfo(i32 %se, i32 %dummy, i32* nocapture %len, i32* nocapture %info) #0 {
  tail call void @llvm.dbg.value(metadata i32 %se, i64 0, metadata !160, metadata !814), !dbg !922
  tail call void @llvm.dbg.value(metadata i32 %dummy, i64 0, metadata !161, metadata !814), !dbg !923
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !162, metadata !814), !dbg !924
  tail call void @llvm.dbg.value(metadata i32* %info, i64 0, metadata !163, metadata !814), !dbg !925
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !166, metadata !814), !dbg !926
  %1 = icmp slt i32 %se, 1, !dbg !927
  %. = zext i1 %1 to i32, !dbg !929
  tail call void @llvm.dbg.value(metadata i32 %., i64 0, metadata !166, metadata !814), !dbg !926
  %ispos = icmp sgt i32 %se, -1, !dbg !930
  %neg = sub i32 0, %se, !dbg !930
  %2 = select i1 %ispos, i32 %se, i32 %neg, !dbg !930
  %3 = shl i32 %2, 1, !dbg !931
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !165, metadata !814), !dbg !932
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !164, metadata !814), !dbg !933
  %nn.0.in.off2 = or i32 %3, 1, !dbg !934
  %4 = icmp ugt i32 %nn.0.in.off2, 2, !dbg !934
  br i1 %4, label %.lr.ph, label %.critedge, !dbg !937

.lr.ph:                                           ; preds = %0, %.lr.ph
  %nn.0.in4 = phi i32 [ %nn.0, %.lr.ph ], [ %3, %0 ]
  %i.03 = phi i32 [ %5, %.lr.ph ], [ 0, %0 ]
  %nn.0 = sdiv i32 %nn.0.in4, 2, !dbg !938
  %5 = add nuw nsw i32 %i.03, 1, !dbg !939
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !164, metadata !814), !dbg !933
  %6 = icmp slt i32 %5, 16, !dbg !940
  %nn.0.in.off = add nsw i32 %nn.0, 1, !dbg !934
  %7 = icmp ugt i32 %nn.0.in.off, 2, !dbg !934
  %or.cond = and i1 %6, %7, !dbg !937
  br i1 %or.cond, label %.lr.ph, label %.critedge, !dbg !937

.critedge:                                        ; preds = %.lr.ph, %0
  %i.0.lcssa = phi i32 [ 0, %0 ], [ %5, %.lr.ph ]
  %8 = shl nsw i32 %i.0.lcssa, 1, !dbg !941
  %9 = or i32 %8, 1, !dbg !942
  store i32 %9, i32* %len, align 4, !dbg !943, !tbaa !863
  %10 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #1, !dbg !944
  %11 = fptosi double %10 to i32, !dbg !945
  %12 = or i32 %3, %., !dbg !946
  %13 = sub i32 %12, %11, !dbg !947
  store i32 %13, i32* %info, align 4, !dbg !948, !tbaa !863
  ret void, !dbg !949
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @u_1(i8* nocapture readnone %tracestring, i32 %value, %struct.datapartition* nocapture readonly %part) #0 {
  %symbol = alloca %struct.syntaxelement, align 8
  tail call void @llvm.dbg.value(metadata i8* %tracestring, i64 0, metadata !135, metadata !814), !dbg !950
  tail call void @llvm.dbg.value(metadata i32 %value, i64 0, metadata !136, metadata !814), !dbg !951
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %part, i64 0, metadata !137, metadata !814), !dbg !952
  %1 = bitcast %struct.syntaxelement* %symbol to i8*, !dbg !953
  call void @llvm.lifetime.start(i64 48, i8* %1) #1, !dbg !953
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %symbol, i64 0, metadata !139, metadata !814), !dbg !954
  %2 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 5, !dbg !955
  store i32 %value, i32* %2, align 4, !dbg !956, !tbaa !891
  %3 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 3, !dbg !957
  store i32 1, i32* %3, align 4, !dbg !958, !tbaa !880
  %4 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0, !dbg !959
  store i32 0, i32* %4, align 8, !dbg !960, !tbaa !822
  %5 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1, !dbg !961
  store i32 %value, i32* %5, align 4, !dbg !962, !tbaa !833
  %6 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2, !dbg !963
  store i32 0, i32* %6, align 8, !dbg !964, !tbaa !836
  %7 = getelementptr inbounds %struct.datapartition* %part, i64 0, i32 0, !dbg !965
  %8 = load %struct.Bitstream** %7, align 8, !dbg !965, !tbaa !838
  %9 = getelementptr inbounds %struct.Bitstream* %8, i64 0, i32 9, !dbg !965
  %10 = load i8** %9, align 8, !dbg !965, !tbaa !841
  %11 = icmp eq i8* %10, null, !dbg !965
  br i1 %11, label %12, label %writeSyntaxElement_fixed.exit, !dbg !965, !prof !843

; <label>:12                                      ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([4 x i8]* @__func__.u_1, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 147, i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !965
  unreachable, !dbg !965

writeSyntaxElement_fixed.exit:                    ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %symbol, i64 0, metadata !138, metadata !814), !dbg !966
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %symbol, i64 0, metadata !227, metadata !814) #1, !dbg !967
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %part, i64 0, metadata !228, metadata !814) #1, !dbg !969
  call void @writeUVLC2buffer(%struct.syntaxelement* %symbol, %struct.Bitstream* %8) #7, !dbg !970
  call void @llvm.lifetime.end(i64 48, i8* %1) #1, !dbg !971
  ret i32 1, !dbg !971
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @writeSyntaxElement_fixed(%struct.syntaxelement* nocapture readonly %se, %struct.datapartition* nocapture readonly %this_dataPart) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !227, metadata !814), !dbg !972
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %this_dataPart, i64 0, metadata !228, metadata !814), !dbg !973
  %1 = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !974
  %2 = load %struct.Bitstream** %1, align 8, !dbg !974, !tbaa !838
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %2) #6, !dbg !975
  %3 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 0, !dbg !976
  %4 = load i32* %3, align 4, !dbg !976, !tbaa !822
  %5 = icmp eq i32 %4, 0, !dbg !978
  br i1 %5, label %9, label %6, !dbg !979

; <label>:6                                       ; preds = %0
  %7 = load %struct.Bitstream** %1, align 8, !dbg !980, !tbaa !838
  %8 = getelementptr inbounds %struct.Bitstream* %7, i64 0, i32 10, !dbg !981
  store i32 1, i32* %8, align 4, !dbg !982, !tbaa !901
  br label %9, !dbg !983

; <label>:9                                       ; preds = %0, %6
  %10 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !984
  %11 = load i32* %10, align 4, !dbg !984, !tbaa !880
  ret i32 %11, !dbg !985
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @u_v(i32 %n, i8* nocapture readnone %tracestring, i32 %value, %struct.datapartition* nocapture readonly %part) #0 {
  %symbol = alloca %struct.syntaxelement, align 8
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !144, metadata !814), !dbg !986
  tail call void @llvm.dbg.value(metadata i8* %tracestring, i64 0, metadata !145, metadata !814), !dbg !987
  tail call void @llvm.dbg.value(metadata i32 %value, i64 0, metadata !146, metadata !814), !dbg !988
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %part, i64 0, metadata !147, metadata !814), !dbg !989
  %1 = bitcast %struct.syntaxelement* %symbol to i8*, !dbg !990
  call void @llvm.lifetime.start(i64 48, i8* %1) #1, !dbg !990
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %symbol, i64 0, metadata !149, metadata !814), !dbg !991
  %2 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 5, !dbg !992
  store i32 %value, i32* %2, align 4, !dbg !993, !tbaa !891
  %3 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 3, !dbg !994
  store i32 %n, i32* %3, align 4, !dbg !995, !tbaa !880
  %4 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0, !dbg !996
  store i32 0, i32* %4, align 8, !dbg !997, !tbaa !822
  %5 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1, !dbg !998
  store i32 %value, i32* %5, align 4, !dbg !999, !tbaa !833
  %6 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2, !dbg !1000
  store i32 0, i32* %6, align 8, !dbg !1001, !tbaa !836
  %7 = getelementptr inbounds %struct.datapartition* %part, i64 0, i32 0, !dbg !1002
  %8 = load %struct.Bitstream** %7, align 8, !dbg !1002, !tbaa !838
  %9 = getelementptr inbounds %struct.Bitstream* %8, i64 0, i32 9, !dbg !1002
  %10 = load i8** %9, align 8, !dbg !1002, !tbaa !841
  %11 = icmp eq i8* %10, null, !dbg !1002
  br i1 %11, label %12, label %writeSyntaxElement_fixed.exit, !dbg !1002, !prof !843

; <label>:12                                      ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([4 x i8]* @__func__.u_v, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !1002
  unreachable, !dbg !1002

writeSyntaxElement_fixed.exit:                    ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %symbol, i64 0, metadata !148, metadata !814), !dbg !1003
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %symbol, i64 0, metadata !227, metadata !814) #1, !dbg !1004
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %part, i64 0, metadata !228, metadata !814) #1, !dbg !1006
  call void @writeUVLC2buffer(%struct.syntaxelement* %symbol, %struct.Bitstream* %8) #7, !dbg !1007
  call void @llvm.lifetime.end(i64 48, i8* %1) #1, !dbg !1008
  ret i32 %n, !dbg !1008
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cbp_linfo_intra(i32 %cbp, i32 %dummy, i32* nocapture %len, i32* nocapture %info) #0 {
  tail call void @llvm.dbg.value(metadata i32 %cbp, i64 0, metadata !170, metadata !814), !dbg !1009
  tail call void @llvm.dbg.value(metadata i32 %dummy, i64 0, metadata !171, metadata !814), !dbg !1010
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !172, metadata !814), !dbg !1011
  tail call void @llvm.dbg.value(metadata i32* %info, i64 0, metadata !173, metadata !814), !dbg !1012
  %1 = sext i32 %cbp to i64, !dbg !1013
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !1014, !tbaa !1015
  %3 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 159, !dbg !1016
  %4 = load i32* %3, align 4, !dbg !1016, !tbaa !1017
  %5 = icmp ne i32 %4, 0, !dbg !1014
  %6 = zext i1 %5 to i64, !dbg !1013
  %7 = getelementptr inbounds [2 x [48 x [2 x i8]]]* @NCBP, i64 0, i64 %6, i64 %1, i64 0, !dbg !1013
  %8 = load i8* %7, align 1, !dbg !1013, !tbaa !1021
  %9 = zext i8 %8 to i32, !dbg !1013
  tail call void @ue_linfo(i32 %9, i32 undef, i32* %len, i32* %info) #6, !dbg !1022
  ret void, !dbg !1023
}

; Function Attrs: nounwind optsize ssp uwtable
define void @cbp_linfo_inter(i32 %cbp, i32 %dummy, i32* nocapture %len, i32* nocapture %info) #0 {
  tail call void @llvm.dbg.value(metadata i32 %cbp, i64 0, metadata !176, metadata !814), !dbg !1024
  tail call void @llvm.dbg.value(metadata i32 %dummy, i64 0, metadata !177, metadata !814), !dbg !1025
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !178, metadata !814), !dbg !1026
  tail call void @llvm.dbg.value(metadata i32* %info, i64 0, metadata !179, metadata !814), !dbg !1027
  %1 = sext i32 %cbp to i64, !dbg !1028
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !1029, !tbaa !1015
  %3 = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 159, !dbg !1030
  %4 = load i32* %3, align 4, !dbg !1030, !tbaa !1017
  %5 = icmp ne i32 %4, 0, !dbg !1029
  %6 = zext i1 %5 to i64, !dbg !1028
  %7 = getelementptr inbounds [2 x [48 x [2 x i8]]]* @NCBP, i64 0, i64 %6, i64 %1, i64 1, !dbg !1028
  %8 = load i8* %7, align 1, !dbg !1028, !tbaa !1021
  %9 = zext i8 %8 to i32, !dbg !1028
  tail call void @ue_linfo(i32 %9, i32 undef, i32* %len, i32* %info) #6, !dbg !1031
  ret void, !dbg !1032
}

; Function Attrs: nounwind optsize ssp uwtable
define void @levrun_linfo_c2x2(i32 %level, i32 %run, i32* nocapture %len, i32* nocapture %info) #0 {
  tail call void @llvm.dbg.value(metadata i32 %level, i64 0, metadata !182, metadata !814), !dbg !1033
  tail call void @llvm.dbg.value(metadata i32 %run, i64 0, metadata !183, metadata !814), !dbg !1034
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !184, metadata !814), !dbg !1035
  tail call void @llvm.dbg.value(metadata i32* %info, i64 0, metadata !185, metadata !814), !dbg !1036
  %1 = icmp eq i32 %level, 0, !dbg !1037
  br i1 %1, label %2, label %3, !dbg !1039

; <label>:2                                       ; preds = %0
  store i32 1, i32* %len, align 4, !dbg !1040, !tbaa !863
  br label %32, !dbg !1042

; <label>:3                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !189, metadata !814), !dbg !1043
  %4 = icmp slt i32 %level, 1, !dbg !1044
  %. = zext i1 %4 to i32, !dbg !1046
  tail call void @llvm.dbg.value(metadata i32 %., i64 0, metadata !189, metadata !814), !dbg !1043
  %ispos = icmp sgt i32 %level, -1, !dbg !1047
  %neg = sub i32 0, %level, !dbg !1047
  %5 = select i1 %ispos, i32 %level, i32 %neg, !dbg !1047
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !186, metadata !814), !dbg !1048
  %6 = sext i32 %run to i64, !dbg !1049
  %7 = getelementptr inbounds [4 x i32]* @levrun_linfo_c2x2.LEVRUN, i64 0, i64 %6, !dbg !1049
  %8 = load i32* %7, align 4, !dbg !1049, !tbaa !863
  %9 = icmp sgt i32 %5, %8, !dbg !1051
  br i1 %9, label %16, label %10, !dbg !1052

; <label>:10                                      ; preds = %3
  %11 = add nsw i32 %5, -1, !dbg !1053
  %12 = sext i32 %11 to i64, !dbg !1055
  %13 = getelementptr inbounds [2 x [2 x i32]]* @levrun_linfo_c2x2.NTAB, i64 0, i64 %12, i64 %6, !dbg !1055
  %14 = load i32* %13, align 4, !dbg !1055, !tbaa !863
  %15 = add nsw i32 %14, 1, !dbg !1056
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !188, metadata !814), !dbg !1057
  br label %21, !dbg !1058

; <label>:16                                      ; preds = %3
  %17 = sub nsw i32 %5, %8, !dbg !1059
  %18 = shl i32 %17, 3, !dbg !1061
  %19 = shl i32 %run, 1, !dbg !1062
  %20 = add nsw i32 %18, %19, !dbg !1063
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !188, metadata !814), !dbg !1057
  br label %21

; <label>:21                                      ; preds = %16, %10
  %n.0 = phi i32 [ %15, %10 ], [ %20, %16 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !187, metadata !814), !dbg !1064
  %nn.0.in.off2 = add i32 %n.0, 1, !dbg !1065
  %22 = icmp ugt i32 %nn.0.in.off2, 2, !dbg !1065
  br i1 %22, label %.lr.ph, label %.critedge, !dbg !1068

.lr.ph:                                           ; preds = %21, %.lr.ph
  %nn.0.in4 = phi i32 [ %nn.0, %.lr.ph ], [ %n.0, %21 ]
  %i.03 = phi i32 [ %23, %.lr.ph ], [ 0, %21 ]
  %nn.0 = sdiv i32 %nn.0.in4, 2, !dbg !1069
  %23 = add nuw nsw i32 %i.03, 1, !dbg !1070
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !187, metadata !814), !dbg !1064
  %24 = icmp slt i32 %23, 16, !dbg !1071
  %nn.0.in.off = add nsw i32 %nn.0, 1, !dbg !1065
  %25 = icmp ugt i32 %nn.0.in.off, 2, !dbg !1065
  %or.cond = and i1 %24, %25, !dbg !1068
  br i1 %or.cond, label %.lr.ph, label %.critedge, !dbg !1068

.critedge:                                        ; preds = %.lr.ph, %21
  %i.0.lcssa = phi i32 [ 0, %21 ], [ %23, %.lr.ph ]
  %26 = shl nsw i32 %i.0.lcssa, 1, !dbg !1072
  %27 = or i32 %26, 1, !dbg !1073
  store i32 %27, i32* %len, align 4, !dbg !1074, !tbaa !863
  %28 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #1, !dbg !1075
  %29 = fptosi double %28 to i32, !dbg !1076
  %30 = add i32 %n.0, %., !dbg !1077
  %31 = sub i32 %30, %29, !dbg !1078
  store i32 %31, i32* %info, align 4, !dbg !1079, !tbaa !863
  br label %32, !dbg !1080

; <label>:32                                      ; preds = %.critedge, %2
  ret void, !dbg !1080
}

; Function Attrs: nounwind optsize ssp uwtable
define void @levrun_linfo_inter(i32 %level, i32 %run, i32* nocapture %len, i32* nocapture %info) #0 {
  tail call void @llvm.dbg.value(metadata i32 %level, i64 0, metadata !193, metadata !814), !dbg !1081
  tail call void @llvm.dbg.value(metadata i32 %run, i64 0, metadata !194, metadata !814), !dbg !1082
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !195, metadata !814), !dbg !1083
  tail call void @llvm.dbg.value(metadata i32* %info, i64 0, metadata !196, metadata !814), !dbg !1084
  %1 = icmp eq i32 %level, 0, !dbg !1085
  br i1 %1, label %2, label %3, !dbg !1087

; <label>:2                                       ; preds = %0
  store i32 1, i32* %len, align 4, !dbg !1088, !tbaa !863
  br label %34, !dbg !1090

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %level, 1, !dbg !1091
  %. = zext i1 %4 to i32, !dbg !1093
  %ispos = icmp sgt i32 %level, -1, !dbg !1094
  %neg = sub i32 0, %level, !dbg !1094
  %5 = select i1 %ispos, i32 %level, i32 %neg, !dbg !1094
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !197, metadata !814), !dbg !1095
  %6 = sext i32 %run to i64, !dbg !1096
  %7 = getelementptr inbounds [16 x i8]* @levrun_linfo_inter.LEVRUN, i64 0, i64 %6, !dbg !1096
  %8 = load i8* %7, align 1, !dbg !1096, !tbaa !1021
  %9 = zext i8 %8 to i32, !dbg !1096
  %10 = icmp sgt i32 %5, %9, !dbg !1098
  br i1 %10, label %18, label %11, !dbg !1099

; <label>:11                                      ; preds = %3
  %12 = add nsw i32 %5, -1, !dbg !1100
  %13 = sext i32 %12 to i64, !dbg !1102
  %14 = getelementptr inbounds [4 x [10 x i8]]* @levrun_linfo_inter.NTAB, i64 0, i64 %13, i64 %6, !dbg !1102
  %15 = load i8* %14, align 1, !dbg !1102, !tbaa !1021
  %16 = zext i8 %15 to i32, !dbg !1102
  %17 = add nuw nsw i32 %16, 1, !dbg !1103
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !199, metadata !814), !dbg !1104
  br label %23, !dbg !1105

; <label>:18                                      ; preds = %3
  %19 = sub nsw i32 %5, %9, !dbg !1106
  %20 = shl i32 %19, 5, !dbg !1108
  %21 = shl i32 %run, 1, !dbg !1109
  %22 = add nsw i32 %20, %21, !dbg !1110
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !199, metadata !814), !dbg !1104
  br label %23

; <label>:23                                      ; preds = %18, %11
  %n.0 = phi i32 [ %17, %11 ], [ %22, %18 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !198, metadata !814), !dbg !1111
  %nn.0.in.off2 = add i32 %n.0, 1, !dbg !1112
  %24 = icmp ugt i32 %nn.0.in.off2, 2, !dbg !1112
  br i1 %24, label %.lr.ph, label %.critedge, !dbg !1115

.lr.ph:                                           ; preds = %23, %.lr.ph
  %nn.0.in4 = phi i32 [ %nn.0, %.lr.ph ], [ %n.0, %23 ]
  %i.03 = phi i32 [ %25, %.lr.ph ], [ 0, %23 ]
  %nn.0 = sdiv i32 %nn.0.in4, 2, !dbg !1116
  %25 = add nuw nsw i32 %i.03, 1, !dbg !1117
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !198, metadata !814), !dbg !1111
  %26 = icmp slt i32 %25, 16, !dbg !1118
  %nn.0.in.off = add nsw i32 %nn.0, 1, !dbg !1112
  %27 = icmp ugt i32 %nn.0.in.off, 2, !dbg !1112
  %or.cond = and i1 %26, %27, !dbg !1115
  br i1 %or.cond, label %.lr.ph, label %.critedge, !dbg !1115

.critedge:                                        ; preds = %.lr.ph, %23
  %i.0.lcssa = phi i32 [ 0, %23 ], [ %25, %.lr.ph ]
  %28 = shl nsw i32 %i.0.lcssa, 1, !dbg !1119
  %29 = or i32 %28, 1, !dbg !1120
  store i32 %29, i32* %len, align 4, !dbg !1121, !tbaa !863
  %30 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #1, !dbg !1122
  %31 = fptosi double %30 to i32, !dbg !1123
  %32 = add i32 %n.0, %., !dbg !1124
  %33 = sub i32 %32, %31, !dbg !1125
  store i32 %33, i32* %info, align 4, !dbg !1126, !tbaa !863
  br label %34, !dbg !1127

; <label>:34                                      ; preds = %.critedge, %2
  ret void, !dbg !1127
}

; Function Attrs: nounwind optsize ssp uwtable
define void @levrun_linfo_intra(i32 %level, i32 %run, i32* nocapture %len, i32* nocapture %info) #0 {
  tail call void @llvm.dbg.value(metadata i32 %level, i64 0, metadata !204, metadata !814), !dbg !1128
  tail call void @llvm.dbg.value(metadata i32 %run, i64 0, metadata !205, metadata !814), !dbg !1129
  tail call void @llvm.dbg.value(metadata i32* %len, i64 0, metadata !206, metadata !814), !dbg !1130
  tail call void @llvm.dbg.value(metadata i32* %info, i64 0, metadata !207, metadata !814), !dbg !1131
  %1 = icmp eq i32 %level, 0, !dbg !1132
  br i1 %1, label %2, label %3, !dbg !1134

; <label>:2                                       ; preds = %0
  store i32 1, i32* %len, align 4, !dbg !1135, !tbaa !863
  br label %35, !dbg !1137

; <label>:3                                       ; preds = %0
  %4 = icmp slt i32 %level, 1, !dbg !1138
  %. = zext i1 %4 to i32, !dbg !1140
  %ispos = icmp sgt i32 %level, -1, !dbg !1141
  %neg = sub i32 0, %level, !dbg !1141
  %5 = select i1 %ispos, i32 %level, i32 %neg, !dbg !1141
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !208, metadata !814), !dbg !1142
  %6 = sext i32 %run to i64, !dbg !1143
  %7 = getelementptr inbounds [8 x i8]* @levrun_linfo_intra.LEVRUN, i64 0, i64 %6, !dbg !1143
  %8 = load i8* %7, align 1, !dbg !1143, !tbaa !1021
  %9 = zext i8 %8 to i32, !dbg !1143
  %10 = icmp sgt i32 %5, %9, !dbg !1145
  br i1 %10, label %18, label %11, !dbg !1146

; <label>:11                                      ; preds = %3
  %12 = add nsw i32 %5, -1, !dbg !1147
  %13 = sext i32 %12 to i64, !dbg !1149
  %14 = getelementptr inbounds [9 x [5 x i8]]* @levrun_linfo_intra.NTAB, i64 0, i64 %13, i64 %6, !dbg !1149
  %15 = load i8* %14, align 1, !dbg !1149, !tbaa !1021
  %16 = zext i8 %15 to i32, !dbg !1149
  %17 = add nuw nsw i32 %16, 1, !dbg !1150
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !210, metadata !814), !dbg !1151
  br label %24, !dbg !1152

; <label>:18                                      ; preds = %3
  %19 = sub nsw i32 %5, %9, !dbg !1153
  %20 = shl i32 %19, 4, !dbg !1155
  %21 = shl i32 %run, 1, !dbg !1156
  %22 = add i32 %21, 16, !dbg !1157
  %23 = add i32 %22, %20, !dbg !1158
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !210, metadata !814), !dbg !1151
  br label %24

; <label>:24                                      ; preds = %18, %11
  %n.0 = phi i32 [ %17, %11 ], [ %23, %18 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !209, metadata !814), !dbg !1159
  %nn.0.in.off2 = add i32 %n.0, 1, !dbg !1160
  %25 = icmp ugt i32 %nn.0.in.off2, 2, !dbg !1160
  br i1 %25, label %.lr.ph, label %.critedge, !dbg !1163

.lr.ph:                                           ; preds = %24, %.lr.ph
  %nn.0.in4 = phi i32 [ %nn.0, %.lr.ph ], [ %n.0, %24 ]
  %i.03 = phi i32 [ %26, %.lr.ph ], [ 0, %24 ]
  %nn.0 = sdiv i32 %nn.0.in4, 2, !dbg !1164
  %26 = add nuw nsw i32 %i.03, 1, !dbg !1165
  tail call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !209, metadata !814), !dbg !1159
  %27 = icmp slt i32 %26, 16, !dbg !1166
  %nn.0.in.off = add nsw i32 %nn.0, 1, !dbg !1160
  %28 = icmp ugt i32 %nn.0.in.off, 2, !dbg !1160
  %or.cond = and i1 %27, %28, !dbg !1163
  br i1 %or.cond, label %.lr.ph, label %.critedge, !dbg !1163

.critedge:                                        ; preds = %.lr.ph, %24
  %i.0.lcssa = phi i32 [ 0, %24 ], [ %26, %.lr.ph ]
  %29 = shl nsw i32 %i.0.lcssa, 1, !dbg !1167
  %30 = or i32 %29, 1, !dbg !1168
  store i32 %30, i32* %len, align 4, !dbg !1169, !tbaa !863
  %31 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #1, !dbg !1170
  %32 = fptosi double %31 to i32, !dbg !1171
  %33 = add i32 %n.0, %., !dbg !1172
  %34 = sub i32 %33, %32, !dbg !1173
  store i32 %34, i32* %info, align 4, !dbg !1174, !tbaa !863
  br label %35, !dbg !1175

; <label>:35                                      ; preds = %.critedge, %2
  ret void, !dbg !1175
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @symbol2uvlc(%struct.syntaxelement* nocapture %sym) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %sym, i64 0, metadata !217, metadata !814), !dbg !1176
  %1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3, !dbg !1177
  %2 = load i32* %1, align 4, !dbg !1177, !tbaa !880
  %3 = sdiv i32 %2, 2, !dbg !1178
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !218, metadata !814), !dbg !1179
  %4 = shl i32 1, %3, !dbg !1180
  %5 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 4, !dbg !1181
  %6 = load i32* %5, align 4, !dbg !1181, !tbaa !885
  %7 = add nsw i32 %4, -1, !dbg !1182
  %8 = and i32 %7, %6, !dbg !1183
  %9 = or i32 %8, %4, !dbg !1184
  %10 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5, !dbg !1185
  store i32 %9, i32* %10, align 4, !dbg !1186, !tbaa !891
  ret i32 0, !dbg !1187
}

; Function Attrs: nounwind optsize ssp uwtable
define void @writeUVLC2buffer(%struct.syntaxelement* nocapture readonly %se, %struct.Bitstream* nocapture %currStream) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !243, metadata !814), !dbg !1188
  tail call void @llvm.dbg.value(metadata %struct.Bitstream* %currStream, i64 0, metadata !244, metadata !814), !dbg !1189
  %1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1190
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !246, metadata !814), !dbg !1191
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !245, metadata !814), !dbg !1192
  %2 = load i32* %1, align 4, !dbg !1193, !tbaa !880
  %3 = icmp sgt i32 %2, 0, !dbg !1196
  br i1 %3, label %.lr.ph, label %._crit_edge, !dbg !1197

.lr.ph:                                           ; preds = %0
  %4 = add nsw i32 %2, -1, !dbg !1198
  %5 = shl i32 1, %4, !dbg !1199
  %6 = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 2, !dbg !1200
  %7 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1202
  %8 = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 1, !dbg !1204
  %9 = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 0, !dbg !1205
  %10 = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 9, !dbg !1208
  %.pre = load i8* %6, align 1, !dbg !1209, !tbaa !1210
  br label %11, !dbg !1197

; <label>:11                                      ; preds = %.lr.ph, %32
  %12 = phi i32 [ %2, %.lr.ph ], [ %33, %32 ]
  %13 = phi i8 [ %.pre, %.lr.ph ], [ %34, %32 ], !dbg !1209
  %mask.02 = phi i32 [ %5, %.lr.ph ], [ %24, %32 ]
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %35, %32 ]
  %14 = shl i8 %13, 1, !dbg !1209
  store i8 %14, i8* %6, align 1, !dbg !1209, !tbaa !1210
  %15 = load i32* %7, align 4, !dbg !1202, !tbaa !891
  %16 = and i32 %15, %mask.02, !dbg !1211
  %17 = icmp eq i32 %16, 0, !dbg !1211
  br i1 %17, label %20, label %18, !dbg !1212

; <label>:18                                      ; preds = %11
  %19 = or i8 %14, 1, !dbg !1213
  store i8 %19, i8* %6, align 1, !dbg !1213, !tbaa !1210
  br label %20, !dbg !1214

; <label>:20                                      ; preds = %11, %18
  %21 = phi i8 [ %14, %11 ], [ %19, %18 ]
  %22 = load i32* %8, align 4, !dbg !1215, !tbaa !1216
  %23 = add nsw i32 %22, -1, !dbg !1215
  store i32 %23, i32* %8, align 4, !dbg !1215, !tbaa !1216
  %24 = lshr i32 %mask.02, 1, !dbg !1217
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !246, metadata !814), !dbg !1191
  %25 = icmp eq i32 %23, 0, !dbg !1218
  br i1 %25, label %26, label %32, !dbg !1219

; <label>:26                                      ; preds = %20
  store i32 8, i32* %8, align 4, !dbg !1220, !tbaa !1216
  %27 = load i32* %9, align 4, !dbg !1221, !tbaa !1222
  %28 = add nsw i32 %27, 1, !dbg !1221
  store i32 %28, i32* %9, align 4, !dbg !1221, !tbaa !1222
  %29 = sext i32 %27 to i64, !dbg !1223
  %30 = load i8** %10, align 8, !dbg !1208, !tbaa !841
  %31 = getelementptr inbounds i8* %30, i64 %29, !dbg !1223
  store i8 %21, i8* %31, align 1, !dbg !1224, !tbaa !1021
  store i8 0, i8* %6, align 1, !dbg !1225, !tbaa !1210
  %.pre3 = load i32* %1, align 4, !dbg !1193, !tbaa !880
  br label %32, !dbg !1226

; <label>:32                                      ; preds = %20, %26
  %33 = phi i32 [ %12, %20 ], [ %.pre3, %26 ], !dbg !1227
  %34 = phi i8 [ %21, %20 ], [ 0, %26 ]
  %35 = add nuw nsw i32 %i.01, 1, !dbg !1227
  tail call void @llvm.dbg.value(metadata i32 %35, i64 0, metadata !245, metadata !814), !dbg !1192
  %36 = icmp slt i32 %35, %33, !dbg !1196
  br i1 %36, label %11, label %._crit_edge, !dbg !1197

._crit_edge:                                      ; preds = %32, %0
  ret void, !dbg !1228
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @writeSyntaxElement_Intra4x4PredictionMode(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture readonly %this_dataPart) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !231, metadata !814), !dbg !1229
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %this_dataPart, i64 0, metadata !232, metadata !814), !dbg !1230
  %1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1231
  %2 = load i32* %1, align 4, !dbg !1231, !tbaa !833
  %3 = icmp eq i32 %2, -1, !dbg !1233
  %4 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1234
  %. = select i1 %3, i32 1, i32 4, !dbg !1236
  %.1 = select i1 %3, i32 1, i32 %2, !dbg !1236
  store i32 %., i32* %4, align 4, !dbg !1237, !tbaa !880
  %5 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1238
  store i32 %.1, i32* %5, align 4
  %6 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1240
  store i32 %.1, i32* %6, align 4, !dbg !1241, !tbaa !891
  %7 = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1242
  %8 = load %struct.Bitstream** %7, align 8, !dbg !1242, !tbaa !838
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %8) #6, !dbg !1243
  %9 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 0, !dbg !1244
  %10 = load i32* %9, align 4, !dbg !1244, !tbaa !822
  %11 = icmp eq i32 %10, 0, !dbg !1246
  br i1 %11, label %15, label %12, !dbg !1247

; <label>:12                                      ; preds = %0
  %13 = load %struct.Bitstream** %7, align 8, !dbg !1248, !tbaa !838
  %14 = getelementptr inbounds %struct.Bitstream* %13, i64 0, i32 10, !dbg !1249
  store i32 1, i32* %14, align 4, !dbg !1250, !tbaa !901
  br label %15, !dbg !1251

; <label>:15                                      ; preds = %0, %12
  %16 = load i32* %4, align 4, !dbg !1252, !tbaa !880
  ret i32 %16, !dbg !1253
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %se, %struct.Bitstream* nocapture %this_streamBuffer) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !237, metadata !814), !dbg !1254
  tail call void @llvm.dbg.value(metadata %struct.Bitstream* %this_streamBuffer, i64 0, metadata !238, metadata !814), !dbg !1255
  %1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 8, !dbg !1256
  %2 = load void (i32, i32, i32*, i32*)** %1, align 8, !dbg !1256, !tbaa !830
  %3 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1257
  %4 = load i32* %3, align 4, !dbg !1257, !tbaa !833
  %5 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1258
  %6 = load i32* %5, align 4, !dbg !1258, !tbaa !836
  %7 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1259
  %8 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1260
  tail call void %2(i32 %4, i32 %6, i32* %7, i32* %8) #7, !dbg !1261
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !217, metadata !814), !dbg !1262
  %9 = load i32* %7, align 4, !dbg !1264, !tbaa !880
  %10 = sdiv i32 %9, 2, !dbg !1265
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !218, metadata !814), !dbg !1266
  %11 = shl i32 1, %10, !dbg !1267
  %12 = load i32* %8, align 4, !dbg !1268, !tbaa !885
  %13 = add nsw i32 %11, -1, !dbg !1269
  %14 = and i32 %13, %12, !dbg !1270
  %15 = or i32 %14, %11, !dbg !1271
  %16 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1272
  store i32 %15, i32* %16, align 4, !dbg !1273, !tbaa !891
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %this_streamBuffer) #6, !dbg !1274
  %17 = load i32* %7, align 4, !dbg !1275, !tbaa !880
  ret i32 %17, !dbg !1276
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* nocapture readonly %se, %struct.Bitstream* nocapture %this_streamBuffer) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !249, metadata !814), !dbg !1277
  tail call void @llvm.dbg.value(metadata %struct.Bitstream* %this_streamBuffer, i64 0, metadata !250, metadata !814), !dbg !1278
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %this_streamBuffer) #6, !dbg !1279
  %1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1280
  %2 = load i32* %1, align 4, !dbg !1280, !tbaa !880
  ret i32 %2, !dbg !1281
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @symbol2vlc(%struct.syntaxelement* nocapture %sym) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %sym, i64 0, metadata !253, metadata !814), !dbg !1282
  %1 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3, !dbg !1283
  %2 = load i32* %1, align 4, !dbg !1283, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !254, metadata !814), !dbg !1284
  %3 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5, !dbg !1285
  store i32 0, i32* %3, align 4, !dbg !1286, !tbaa !891
  %4 = icmp sgt i32 %2, 0, !dbg !1288
  br i1 %4, label %.lr.ph, label %14, !dbg !1289

.lr.ph:                                           ; preds = %0
  %5 = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 4, !dbg !1290
  %6 = load i32* %5, align 4, !dbg !1290, !tbaa !885
  br label %7, !dbg !1289

; <label>:7                                       ; preds = %.lr.ph, %7
  %.in = phi i32 [ %2, %.lr.ph ], [ %8, %7 ]
  %storemerge1 = phi i32 [ 0, %.lr.ph ], [ %12, %7 ]
  %8 = add nsw i32 %.in, -1, !dbg !1291
  %9 = shl i32 %storemerge1, 1, !dbg !1292
  %10 = lshr i32 %6, %8, !dbg !1293
  %11 = and i32 %10, 1, !dbg !1294
  %12 = or i32 %11, %9, !dbg !1286
  %13 = icmp sgt i32 %.in, 1, !dbg !1288
  br i1 %13, label %7, label %._crit_edge, !dbg !1289

._crit_edge:                                      ; preds = %7
  store i32 %12, i32* %3, align 4, !dbg !1286, !tbaa !891
  br label %14, !dbg !1289

; <label>:14                                      ; preds = %._crit_edge, %0
  ret i32 0, !dbg !1295
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @writeSyntaxElement_VLC(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture readonly %this_dataPart) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !257, metadata !814), !dbg !1296
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %this_dataPart, i64 0, metadata !258, metadata !814), !dbg !1297
  %1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1298
  %2 = load i32* %1, align 4, !dbg !1298, !tbaa !833
  %3 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1299
  store i32 %2, i32* %3, align 4, !dbg !1300, !tbaa !885
  %4 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1301
  %5 = load i32* %4, align 4, !dbg !1301, !tbaa !836
  %6 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1302
  store i32 %5, i32* %6, align 4, !dbg !1303, !tbaa !880
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !253, metadata !814), !dbg !1304
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !254, metadata !814), !dbg !1306
  %7 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1307
  store i32 0, i32* %7, align 4, !dbg !1308, !tbaa !891
  %8 = icmp sgt i32 %5, 0, !dbg !1309
  br i1 %8, label %.lr.ph.i, label %symbol2vlc.exit, !dbg !1310

.lr.ph.i:                                         ; preds = %0, %.lr.ph.i
  %.in.i = phi i32 [ %9, %.lr.ph.i ], [ %5, %0 ], !dbg !1311
  %storemerge1.i = phi i32 [ %13, %.lr.ph.i ], [ 0, %0 ], !dbg !1311
  %9 = add nsw i32 %.in.i, -1, !dbg !1312
  %10 = shl i32 %storemerge1.i, 1, !dbg !1313
  %11 = lshr i32 %2, %9, !dbg !1314
  %12 = and i32 %11, 1, !dbg !1315
  %13 = or i32 %12, %10, !dbg !1308
  %14 = icmp sgt i32 %.in.i, 1, !dbg !1309
  br i1 %14, label %.lr.ph.i, label %._crit_edge.i, !dbg !1310

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store i32 %13, i32* %7, align 4, !dbg !1308, !tbaa !891
  br label %symbol2vlc.exit, !dbg !1310

symbol2vlc.exit:                                  ; preds = %0, %._crit_edge.i
  %15 = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1316
  %16 = load %struct.Bitstream** %15, align 8, !dbg !1316, !tbaa !838
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %16) #6, !dbg !1317
  %17 = load i32* %6, align 4, !dbg !1318, !tbaa !880
  ret i32 %17, !dbg !1319
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @writeSyntaxElement_NumCoeffTrailingOnes(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture readonly %this_dataPart) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !261, metadata !814), !dbg !1320
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %this_dataPart, i64 0, metadata !262, metadata !814), !dbg !1321
  %1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1322
  %2 = load i32* %1, align 4, !dbg !1322, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !263, metadata !814), !dbg !1323
  %3 = icmp eq i32 %2, 3, !dbg !1324
  br i1 %3, label %4, label %18, !dbg !1326

; <label>:4                                       ; preds = %0
  store i32 6, i32* %1, align 4, !dbg !1327, !tbaa !880
  %5 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1329
  %6 = load i32* %5, align 4, !dbg !1329, !tbaa !833
  %7 = icmp sgt i32 %6, 0, !dbg !1331
  br i1 %7, label %8, label %15, !dbg !1332

; <label>:8                                       ; preds = %4
  %9 = shl i32 %6, 2, !dbg !1333
  %10 = add i32 %9, -4, !dbg !1333
  %11 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1335
  %12 = load i32* %11, align 4, !dbg !1335, !tbaa !836
  %13 = or i32 %12, %10, !dbg !1336
  %14 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1337
  store i32 %13, i32* %14, align 4, !dbg !1338, !tbaa !885
  br label %.thread1, !dbg !1339

; <label>:15                                      ; preds = %4
  %16 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1340
  store i32 3, i32* %16, align 4, !dbg !1342, !tbaa !885
  br label %.thread1

.thread1:                                         ; preds = %15, %8
  %.ph = phi i32 [ 3, %15 ], [ %13, %8 ]
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !253, metadata !814), !dbg !1343
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !254, metadata !814), !dbg !1345
  %17 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1346
  store i32 0, i32* %17, align 4, !dbg !1347, !tbaa !891
  br label %.lr.ph.i, !dbg !1348

; <label>:18                                      ; preds = %0
  %19 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1349
  %20 = load i32* %19, align 4, !dbg !1349, !tbaa !833
  %21 = sext i32 %20 to i64, !dbg !1351
  %22 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1352
  %23 = load i32* %22, align 4, !dbg !1352, !tbaa !836
  %24 = sext i32 %23 to i64, !dbg !1351
  %25 = sext i32 %2 to i64, !dbg !1351
  %26 = getelementptr inbounds [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnes.lentab, i64 0, i64 %25, i64 %24, i64 %21, !dbg !1351
  %27 = load i32* %26, align 4, !dbg !1351, !tbaa !863
  store i32 %27, i32* %1, align 4, !dbg !1353, !tbaa !880
  %28 = getelementptr inbounds [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnes.codtab, i64 0, i64 %25, i64 %24, i64 %21, !dbg !1354
  %29 = load i32* %28, align 4, !dbg !1354, !tbaa !863
  %30 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1355
  store i32 %29, i32* %30, align 4, !dbg !1356, !tbaa !885
  %31 = icmp eq i32 %27, 0, !dbg !1357
  br i1 %31, label %32, label %36, !dbg !1359

; <label>:32                                      ; preds = %18
  %33 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1360
  %34 = load i32* %33, align 4, !dbg !1360, !tbaa !836
  %35 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i32 %2, i32 %20, i32 %34) #7, !dbg !1362
  tail call void @exit(i32 -1) #5, !dbg !1363
  unreachable, !dbg !1363

; <label>:36                                      ; preds = %18
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !253, metadata !814), !dbg !1343
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !254, metadata !814), !dbg !1345
  %37 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1346
  store i32 0, i32* %37, align 4, !dbg !1347, !tbaa !891
  %38 = icmp sgt i32 %27, 0, !dbg !1364
  br i1 %38, label %.lr.ph.i, label %symbol2vlc.exit, !dbg !1348

.lr.ph.i:                                         ; preds = %.thread1, %36
  %39 = phi i32* [ %17, %.thread1 ], [ %37, %36 ]
  %40 = phi i32 [ %.ph, %.thread1 ], [ %29, %36 ]
  %41 = phi i32 [ 6, %.thread1 ], [ %27, %36 ]
  br label %42, !dbg !1348

; <label>:42                                      ; preds = %42, %.lr.ph.i
  %.in.i = phi i32 [ %41, %.lr.ph.i ], [ %43, %42 ], !dbg !1365
  %storemerge1.i = phi i32 [ 0, %.lr.ph.i ], [ %47, %42 ], !dbg !1365
  %43 = add nsw i32 %.in.i, -1, !dbg !1366
  %44 = shl i32 %storemerge1.i, 1, !dbg !1367
  %45 = lshr i32 %40, %43, !dbg !1368
  %46 = and i32 %45, 1, !dbg !1369
  %47 = or i32 %46, %44, !dbg !1347
  %48 = icmp sgt i32 %.in.i, 1, !dbg !1364
  br i1 %48, label %42, label %._crit_edge.i, !dbg !1348

._crit_edge.i:                                    ; preds = %42
  store i32 %47, i32* %39, align 4, !dbg !1347, !tbaa !891
  br label %symbol2vlc.exit, !dbg !1348

symbol2vlc.exit:                                  ; preds = %36, %._crit_edge.i
  %49 = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1370
  %50 = load %struct.Bitstream** %49, align 8, !dbg !1370, !tbaa !838
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %50) #6, !dbg !1371
  %51 = load i32* %1, align 4, !dbg !1372, !tbaa !880
  ret i32 %51, !dbg !1373
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @writeSyntaxElement_NumCoeffTrailingOnesChromaDC(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture readonly %this_dataPart) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !266, metadata !814), !dbg !1374
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %this_dataPart, i64 0, metadata !267, metadata !814), !dbg !1375
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1376, !tbaa !1015
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 159, !dbg !1377
  %3 = load i32* %2, align 4, !dbg !1377, !tbaa !1017
  %4 = add nsw i32 %3, -1, !dbg !1378
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !268, metadata !814), !dbg !1379
  %5 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1380
  %6 = load i32* %5, align 4, !dbg !1380, !tbaa !833
  %7 = sext i32 %6 to i64, !dbg !1381
  %8 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1382
  %9 = load i32* %8, align 4, !dbg !1382, !tbaa !836
  %10 = sext i32 %9 to i64, !dbg !1381
  %11 = sext i32 %4 to i64, !dbg !1381
  %12 = getelementptr inbounds [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab, i64 0, i64 %11, i64 %10, i64 %7, !dbg !1381
  %13 = load i32* %12, align 4, !dbg !1381, !tbaa !863
  %14 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1383
  store i32 %13, i32* %14, align 4, !dbg !1384, !tbaa !880
  %15 = getelementptr inbounds [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab, i64 0, i64 %11, i64 %10, i64 %7, !dbg !1385
  %16 = load i32* %15, align 4, !dbg !1385, !tbaa !863
  %17 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1386
  store i32 %16, i32* %17, align 4, !dbg !1387, !tbaa !885
  %18 = icmp eq i32 %13, 0, !dbg !1388
  br i1 %18, label %19, label %21, !dbg !1390

; <label>:19                                      ; preds = %0
  %20 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i32 %6, i32 %9) #7, !dbg !1391
  tail call void @exit(i32 -1) #5, !dbg !1393
  unreachable, !dbg !1393

; <label>:21                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !253, metadata !814), !dbg !1394
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !254, metadata !814), !dbg !1396
  %22 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1397
  store i32 0, i32* %22, align 4, !dbg !1398, !tbaa !891
  %23 = icmp sgt i32 %13, 0, !dbg !1399
  br i1 %23, label %.lr.ph.i, label %symbol2vlc.exit, !dbg !1400

.lr.ph.i:                                         ; preds = %21, %.lr.ph.i
  %.in.i = phi i32 [ %24, %.lr.ph.i ], [ %13, %21 ], !dbg !1401
  %storemerge1.i = phi i32 [ %28, %.lr.ph.i ], [ 0, %21 ], !dbg !1401
  %24 = add nsw i32 %.in.i, -1, !dbg !1402
  %25 = shl i32 %storemerge1.i, 1, !dbg !1403
  %26 = lshr i32 %16, %24, !dbg !1404
  %27 = and i32 %26, 1, !dbg !1405
  %28 = or i32 %27, %25, !dbg !1398
  %29 = icmp sgt i32 %.in.i, 1, !dbg !1399
  br i1 %29, label %.lr.ph.i, label %._crit_edge.i, !dbg !1400

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store i32 %28, i32* %22, align 4, !dbg !1398, !tbaa !891
  br label %symbol2vlc.exit, !dbg !1400

symbol2vlc.exit:                                  ; preds = %21, %._crit_edge.i
  %30 = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1406
  %31 = load %struct.Bitstream** %30, align 8, !dbg !1406, !tbaa !838
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %31) #6, !dbg !1407
  %32 = load i32* %14, align 4, !dbg !1408, !tbaa !880
  ret i32 %32, !dbg !1409
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @writeSyntaxElement_TotalZeros(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture readonly %this_dataPart) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !271, metadata !814), !dbg !1410
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %this_dataPart, i64 0, metadata !272, metadata !814), !dbg !1411
  %1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1412
  %2 = load i32* %1, align 4, !dbg !1412, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !273, metadata !814), !dbg !1413
  %3 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1414
  %4 = load i32* %3, align 4, !dbg !1414, !tbaa !833
  %5 = sext i32 %4 to i64, !dbg !1415
  %6 = sext i32 %2 to i64, !dbg !1415
  %7 = getelementptr inbounds [15 x [16 x i32]]* @writeSyntaxElement_TotalZeros.lentab, i64 0, i64 %6, i64 %5, !dbg !1415
  %8 = load i32* %7, align 4, !dbg !1415, !tbaa !863
  store i32 %8, i32* %1, align 4, !dbg !1416, !tbaa !880
  %9 = getelementptr inbounds [15 x [16 x i32]]* @writeSyntaxElement_TotalZeros.codtab, i64 0, i64 %6, i64 %5, !dbg !1417
  %10 = load i32* %9, align 4, !dbg !1417, !tbaa !863
  %11 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1418
  store i32 %10, i32* %11, align 4, !dbg !1419, !tbaa !885
  %12 = icmp eq i32 %8, 0, !dbg !1420
  br i1 %12, label %13, label %15, !dbg !1422

; <label>:13                                      ; preds = %0
  %14 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str4, i64 0, i64 0), i32 %4) #7, !dbg !1423
  tail call void @exit(i32 -1) #5, !dbg !1425
  unreachable, !dbg !1425

; <label>:15                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !253, metadata !814), !dbg !1426
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !254, metadata !814), !dbg !1428
  %16 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1429
  store i32 0, i32* %16, align 4, !dbg !1430, !tbaa !891
  %17 = icmp sgt i32 %8, 0, !dbg !1431
  br i1 %17, label %.lr.ph.i, label %symbol2vlc.exit, !dbg !1432

.lr.ph.i:                                         ; preds = %15, %.lr.ph.i
  %.in.i = phi i32 [ %18, %.lr.ph.i ], [ %8, %15 ], !dbg !1433
  %storemerge1.i = phi i32 [ %22, %.lr.ph.i ], [ 0, %15 ], !dbg !1433
  %18 = add nsw i32 %.in.i, -1, !dbg !1434
  %19 = shl i32 %storemerge1.i, 1, !dbg !1435
  %20 = lshr i32 %10, %18, !dbg !1436
  %21 = and i32 %20, 1, !dbg !1437
  %22 = or i32 %21, %19, !dbg !1430
  %23 = icmp sgt i32 %.in.i, 1, !dbg !1431
  br i1 %23, label %.lr.ph.i, label %._crit_edge.i, !dbg !1432

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store i32 %22, i32* %16, align 4, !dbg !1430, !tbaa !891
  br label %symbol2vlc.exit, !dbg !1432

symbol2vlc.exit:                                  ; preds = %15, %._crit_edge.i
  %24 = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1438
  %25 = load %struct.Bitstream** %24, align 8, !dbg !1438, !tbaa !838
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %25) #6, !dbg !1439
  %26 = load i32* %1, align 4, !dbg !1440, !tbaa !880
  ret i32 %26, !dbg !1441
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @writeSyntaxElement_TotalZerosChromaDC(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture readonly %this_dataPart) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !276, metadata !814), !dbg !1442
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %this_dataPart, i64 0, metadata !277, metadata !814), !dbg !1443
  %1 = load %struct.ImageParameters** @img, align 8, !dbg !1444, !tbaa !1015
  %2 = getelementptr inbounds %struct.ImageParameters* %1, i64 0, i32 159, !dbg !1445
  %3 = load i32* %2, align 4, !dbg !1445, !tbaa !1017
  %4 = add nsw i32 %3, -1, !dbg !1446
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !279, metadata !814), !dbg !1447
  %5 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1448
  %6 = load i32* %5, align 4, !dbg !1448, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !278, metadata !814), !dbg !1449
  %7 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1450
  %8 = load i32* %7, align 4, !dbg !1450, !tbaa !833
  %9 = sext i32 %8 to i64, !dbg !1451
  %10 = sext i32 %6 to i64, !dbg !1451
  %11 = sext i32 %4 to i64, !dbg !1451
  %12 = getelementptr inbounds [3 x [15 x [16 x i32]]]* @writeSyntaxElement_TotalZerosChromaDC.lentab, i64 0, i64 %11, i64 %10, i64 %9, !dbg !1451
  %13 = load i32* %12, align 4, !dbg !1451, !tbaa !863
  store i32 %13, i32* %5, align 4, !dbg !1452, !tbaa !880
  %14 = getelementptr inbounds [3 x [15 x [16 x i32]]]* @writeSyntaxElement_TotalZerosChromaDC.codtab, i64 0, i64 %11, i64 %10, i64 %9, !dbg !1453
  %15 = load i32* %14, align 4, !dbg !1453, !tbaa !863
  %16 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1454
  store i32 %15, i32* %16, align 4, !dbg !1455, !tbaa !885
  %17 = icmp eq i32 %13, 0, !dbg !1456
  br i1 %17, label %18, label %20, !dbg !1458

; <label>:18                                      ; preds = %0
  %19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str4, i64 0, i64 0), i32 %8) #7, !dbg !1459
  tail call void @exit(i32 -1) #5, !dbg !1461
  unreachable, !dbg !1461

; <label>:20                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !253, metadata !814), !dbg !1462
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !254, metadata !814), !dbg !1464
  %21 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1465
  store i32 0, i32* %21, align 4, !dbg !1466, !tbaa !891
  %22 = icmp sgt i32 %13, 0, !dbg !1467
  br i1 %22, label %.lr.ph.i, label %symbol2vlc.exit, !dbg !1468

.lr.ph.i:                                         ; preds = %20, %.lr.ph.i
  %.in.i = phi i32 [ %23, %.lr.ph.i ], [ %13, %20 ], !dbg !1469
  %storemerge1.i = phi i32 [ %27, %.lr.ph.i ], [ 0, %20 ], !dbg !1469
  %23 = add nsw i32 %.in.i, -1, !dbg !1470
  %24 = shl i32 %storemerge1.i, 1, !dbg !1471
  %25 = lshr i32 %15, %23, !dbg !1472
  %26 = and i32 %25, 1, !dbg !1473
  %27 = or i32 %26, %24, !dbg !1466
  %28 = icmp sgt i32 %.in.i, 1, !dbg !1467
  br i1 %28, label %.lr.ph.i, label %._crit_edge.i, !dbg !1468

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store i32 %27, i32* %21, align 4, !dbg !1466, !tbaa !891
  br label %symbol2vlc.exit, !dbg !1468

symbol2vlc.exit:                                  ; preds = %20, %._crit_edge.i
  %29 = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1474
  %30 = load %struct.Bitstream** %29, align 8, !dbg !1474, !tbaa !838
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %30) #6, !dbg !1475
  %31 = load i32* %5, align 4, !dbg !1476, !tbaa !880
  ret i32 %31, !dbg !1477
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @writeSyntaxElement_Run(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture readonly %this_dataPart) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !282, metadata !814), !dbg !1478
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %this_dataPart, i64 0, metadata !283, metadata !814), !dbg !1479
  %1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1480
  %2 = load i32* %1, align 4, !dbg !1480, !tbaa !880
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !284, metadata !814), !dbg !1481
  %3 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1482
  %4 = load i32* %3, align 4, !dbg !1482, !tbaa !833
  %5 = sext i32 %4 to i64, !dbg !1483
  %6 = sext i32 %2 to i64, !dbg !1483
  %7 = getelementptr inbounds [15 x [16 x i32]]* @writeSyntaxElement_Run.lentab, i64 0, i64 %6, i64 %5, !dbg !1483
  %8 = load i32* %7, align 4, !dbg !1483, !tbaa !863
  store i32 %8, i32* %1, align 4, !dbg !1484, !tbaa !880
  %9 = getelementptr inbounds [15 x [16 x i32]]* @writeSyntaxElement_Run.codtab, i64 0, i64 %6, i64 %5, !dbg !1485
  %10 = load i32* %9, align 4, !dbg !1485, !tbaa !863
  %11 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1486
  store i32 %10, i32* %11, align 4, !dbg !1487, !tbaa !885
  %12 = icmp eq i32 %8, 0, !dbg !1488
  br i1 %12, label %13, label %15, !dbg !1490

; <label>:13                                      ; preds = %0
  %14 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str5, i64 0, i64 0), i32 %4) #7, !dbg !1491
  tail call void @exit(i32 -1) #5, !dbg !1493
  unreachable, !dbg !1493

; <label>:15                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !253, metadata !814), !dbg !1494
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !254, metadata !814), !dbg !1496
  %16 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1497
  store i32 0, i32* %16, align 4, !dbg !1498, !tbaa !891
  %17 = icmp sgt i32 %8, 0, !dbg !1499
  br i1 %17, label %.lr.ph.i, label %symbol2vlc.exit, !dbg !1500

.lr.ph.i:                                         ; preds = %15, %.lr.ph.i
  %.in.i = phi i32 [ %18, %.lr.ph.i ], [ %8, %15 ], !dbg !1501
  %storemerge1.i = phi i32 [ %22, %.lr.ph.i ], [ 0, %15 ], !dbg !1501
  %18 = add nsw i32 %.in.i, -1, !dbg !1502
  %19 = shl i32 %storemerge1.i, 1, !dbg !1503
  %20 = lshr i32 %10, %18, !dbg !1504
  %21 = and i32 %20, 1, !dbg !1505
  %22 = or i32 %21, %19, !dbg !1498
  %23 = icmp sgt i32 %.in.i, 1, !dbg !1499
  br i1 %23, label %.lr.ph.i, label %._crit_edge.i, !dbg !1500

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store i32 %22, i32* %16, align 4, !dbg !1498, !tbaa !891
  br label %symbol2vlc.exit, !dbg !1500

symbol2vlc.exit:                                  ; preds = %15, %._crit_edge.i
  %24 = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1506
  %25 = load %struct.Bitstream** %24, align 8, !dbg !1506, !tbaa !838
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %25) #6, !dbg !1507
  %26 = load i32* %1, align 4, !dbg !1508, !tbaa !880
  ret i32 %26, !dbg !1509
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @writeSyntaxElement_Level_VLC1(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture readonly %this_dataPart) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !287, metadata !814), !dbg !1510
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %this_dataPart, i64 0, metadata !288, metadata !814), !dbg !1511
  %1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1512
  %2 = load i32* %1, align 4, !dbg !1512, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !289, metadata !814), !dbg !1513
  %ispos = icmp sgt i32 %2, -1, !dbg !1514
  %neg = sub i32 0, %2, !dbg !1514
  %3 = select i1 %ispos, i32 %2, i32 %neg, !dbg !1514
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !290, metadata !814), !dbg !1515
  %.lobit = lshr i32 %2, 31, !dbg !1516
  tail call void @llvm.dbg.value(metadata i32 %.lobit, i64 0, metadata !291, metadata !814), !dbg !1517
  %4 = icmp slt i32 %3, 8, !dbg !1518
  br i1 %4, label %21, label %5, !dbg !1520

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %3, 16, !dbg !1521
  %7 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1523
  br i1 %6, label %8, label %14, !dbg !1525

; <label>:8                                       ; preds = %5
  store i32 19, i32* %7, align 4, !dbg !1526, !tbaa !880
  %9 = shl i32 %3, 1, !dbg !1527
  %10 = add i32 %9, -16, !dbg !1527
  %11 = or i32 %.lobit, %10, !dbg !1528
  %12 = or i32 %11, 16, !dbg !1528
  %13 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1529
  store i32 %12, i32* %13, align 4, !dbg !1530, !tbaa !885
  br label %.thread, !dbg !1531

; <label>:14                                      ; preds = %5
  store i32 28, i32* %7, align 4, !dbg !1532, !tbaa !880
  %15 = shl i32 %3, 1, !dbg !1534
  %16 = add i32 %15, -32, !dbg !1534
  %17 = or i32 %.lobit, %16, !dbg !1535
  %18 = or i32 %17, 4096, !dbg !1535
  %19 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1536
  store i32 %18, i32* %19, align 4, !dbg !1537, !tbaa !885
  br label %.thread

.thread:                                          ; preds = %8, %14
  %.ph = phi i32 [ %18, %14 ], [ %12, %8 ]
  %.ph1 = phi i32 [ 28, %14 ], [ 19, %8 ]
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !253, metadata !814), !dbg !1538
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !254, metadata !814), !dbg !1540
  %20 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1541
  store i32 0, i32* %20, align 4, !dbg !1542, !tbaa !891
  br label %.lr.ph.i, !dbg !1543

; <label>:21                                      ; preds = %0
  %22 = shl nsw i32 %3, 1, !dbg !1544
  %23 = or i32 %22, %.lobit, !dbg !1546
  %24 = add nsw i32 %23, -1, !dbg !1547
  %25 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1548
  store i32 %24, i32* %25, align 4, !dbg !1549, !tbaa !880
  %26 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1550
  store i32 1, i32* %26, align 4, !dbg !1551, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !253, metadata !814), !dbg !1538
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !254, metadata !814), !dbg !1540
  %27 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1541
  store i32 0, i32* %27, align 4, !dbg !1542, !tbaa !891
  %28 = icmp sgt i32 %23, 1, !dbg !1552
  br i1 %28, label %.lr.ph.i, label %symbol2vlc.exit, !dbg !1543

.lr.ph.i:                                         ; preds = %.thread, %21
  %29 = phi i32* [ %20, %.thread ], [ %27, %21 ]
  %30 = phi i32 [ %.ph1, %.thread ], [ %24, %21 ]
  %31 = phi i32 [ %.ph, %.thread ], [ 1, %21 ]
  %.pre-phi3 = phi i32* [ %7, %.thread ], [ %25, %21 ]
  br label %32, !dbg !1543

; <label>:32                                      ; preds = %32, %.lr.ph.i
  %.in.i = phi i32 [ %30, %.lr.ph.i ], [ %33, %32 ], !dbg !1553
  %storemerge1.i = phi i32 [ 0, %.lr.ph.i ], [ %37, %32 ], !dbg !1553
  %33 = add nsw i32 %.in.i, -1, !dbg !1554
  %34 = shl i32 %storemerge1.i, 1, !dbg !1555
  %35 = lshr i32 %31, %33, !dbg !1556
  %36 = and i32 %35, 1, !dbg !1557
  %37 = or i32 %36, %34, !dbg !1542
  %38 = icmp sgt i32 %.in.i, 1, !dbg !1552
  br i1 %38, label %32, label %._crit_edge.i, !dbg !1543

._crit_edge.i:                                    ; preds = %32
  store i32 %37, i32* %29, align 4, !dbg !1542, !tbaa !891
  br label %symbol2vlc.exit, !dbg !1543

symbol2vlc.exit:                                  ; preds = %21, %._crit_edge.i
  %.pre-phi2 = phi i32* [ %25, %21 ], [ %.pre-phi3, %._crit_edge.i ]
  %39 = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1558
  %40 = load %struct.Bitstream** %39, align 8, !dbg !1558, !tbaa !838
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %40) #6, !dbg !1559
  %41 = load i32* %.pre-phi2, align 4, !dbg !1560, !tbaa !880
  ret i32 %41, !dbg !1561
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @writeSyntaxElement_Level_VLCN(%struct.syntaxelement* nocapture %se, i32 %vlc, %struct.datapartition* nocapture readonly %this_dataPart) #0 {
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !296, metadata !814), !dbg !1562
  tail call void @llvm.dbg.value(metadata i32 %vlc, i64 0, metadata !297, metadata !814), !dbg !1563
  tail call void @llvm.dbg.value(metadata %struct.datapartition* %this_dataPart, i64 0, metadata !298, metadata !814), !dbg !1564
  %1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1565
  %2 = load i32* %1, align 4, !dbg !1565, !tbaa !833
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !301, metadata !814), !dbg !1566
  %ispos = icmp sgt i32 %2, -1, !dbg !1567
  %neg = sub i32 0, %2, !dbg !1567
  %3 = select i1 %ispos, i32 %2, i32 %neg, !dbg !1567
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !302, metadata !814), !dbg !1568
  %.lobit = lshr i32 %2, 31, !dbg !1569
  tail call void @llvm.dbg.value(metadata i32 %.lobit, i64 0, metadata !303, metadata !814), !dbg !1570
  %4 = add nsw i32 %vlc, -1, !dbg !1571
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !304, metadata !814), !dbg !1572
  %5 = shl i32 15, %4, !dbg !1573
  %6 = add nsw i32 %5, 1, !dbg !1574
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !305, metadata !814), !dbg !1575
  %7 = add nsw i32 %3, -1, !dbg !1576
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !306, metadata !814), !dbg !1577
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !307, metadata !814), !dbg !1578
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !308, metadata !814), !dbg !1579
  %8 = icmp slt i32 %3, %6, !dbg !1580
  br i1 %8, label %9, label %20, !dbg !1582

; <label>:9                                       ; preds = %0
  %10 = shl i32 -1, %4, !dbg !1583
  %11 = xor i32 %10, 2147483647, !dbg !1584
  %12 = and i32 %7, %11, !dbg !1585
  %13 = ashr i32 %7, %4, !dbg !1586
  %14 = add i32 %vlc, 1, !dbg !1587
  %15 = add i32 %14, %13, !dbg !1589
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !300, metadata !814), !dbg !1590
  %16 = shl i32 1, %vlc, !dbg !1591
  %17 = shl i32 %12, 1, !dbg !1592
  %18 = or i32 %.lobit, %16, !dbg !1593
  %19 = or i32 %18, %17, !dbg !1594
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !299, metadata !814), !dbg !1595
  br label %25, !dbg !1596

; <label>:20                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 28, i64 0, metadata !300, metadata !814), !dbg !1590
  %21 = sub nsw i32 %3, %6, !dbg !1597
  %22 = shl i32 %21, 1, !dbg !1599
  %23 = or i32 %.lobit, %22, !dbg !1600
  %24 = or i32 %23, 4096, !dbg !1600
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !299, metadata !814), !dbg !1595
  br label %25

; <label>:25                                      ; preds = %20, %9
  %iLength.0 = phi i32 [ %15, %9 ], [ 28, %20 ]
  %26 = phi i32 [ %19, %9 ], [ %24, %20 ]
  %27 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1601
  store i32 %iLength.0, i32* %27, align 4, !dbg !1602, !tbaa !880
  %28 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1603
  store i32 %26, i32* %28, align 4, !dbg !1604, !tbaa !885
  tail call void @llvm.dbg.value(metadata %struct.syntaxelement* %se, i64 0, metadata !253, metadata !814), !dbg !1605
  tail call void @llvm.dbg.value(metadata i32 %iLength.0, i64 0, metadata !254, metadata !814), !dbg !1607
  %29 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1608
  store i32 0, i32* %29, align 4, !dbg !1609, !tbaa !891
  %30 = icmp sgt i32 %iLength.0, 0, !dbg !1610
  br i1 %30, label %.lr.ph.i, label %symbol2vlc.exit, !dbg !1611

.lr.ph.i:                                         ; preds = %25, %.lr.ph.i
  %.in.i = phi i32 [ %31, %.lr.ph.i ], [ %iLength.0, %25 ], !dbg !1612
  %storemerge1.i = phi i32 [ %35, %.lr.ph.i ], [ 0, %25 ], !dbg !1612
  %31 = add nsw i32 %.in.i, -1, !dbg !1613
  %32 = shl i32 %storemerge1.i, 1, !dbg !1614
  %33 = lshr i32 %26, %31, !dbg !1615
  %34 = and i32 %33, 1, !dbg !1616
  %35 = or i32 %34, %32, !dbg !1609
  %36 = icmp sgt i32 %.in.i, 1, !dbg !1610
  br i1 %36, label %.lr.ph.i, label %._crit_edge.i, !dbg !1611

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store i32 %35, i32* %29, align 4, !dbg !1609, !tbaa !891
  br label %symbol2vlc.exit, !dbg !1611

symbol2vlc.exit:                                  ; preds = %25, %._crit_edge.i
  %37 = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1617
  %38 = load %struct.Bitstream** %37, align 8, !dbg !1617, !tbaa !838
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %38) #6, !dbg !1618
  %39 = load i32* %27, align 4, !dbg !1619, !tbaa !880
  ret i32 %39, !dbg !1620
}

; Function Attrs: nounwind optsize ssp uwtable
define void @writeVlcByteAlign(%struct.Bitstream* nocapture %currStream) #0 {
  tail call void @llvm.dbg.value(metadata %struct.Bitstream* %currStream, i64 0, metadata !313, metadata !814), !dbg !1621
  %1 = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 1, !dbg !1622
  %2 = load i32* %1, align 4, !dbg !1622, !tbaa !1216
  %3 = icmp slt i32 %2, 8, !dbg !1624
  br i1 %3, label %4, label %28, !dbg !1625

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 2, !dbg !1626
  %6 = load i8* %5, align 1, !dbg !1626, !tbaa !1210
  %7 = zext i8 %6 to i32, !dbg !1628
  %8 = shl i32 %7, %2, !dbg !1629
  %9 = sub nsw i32 8, %2, !dbg !1630
  %10 = lshr i32 255, %9, !dbg !1631
  %11 = or i32 %8, %10, !dbg !1632
  %12 = trunc i32 %11 to i8, !dbg !1633
  store i8 %12, i8* %5, align 1, !dbg !1634, !tbaa !1210
  %13 = load %struct.ImageParameters** @img, align 8, !dbg !1635, !tbaa !1015
  %14 = getelementptr inbounds %struct.ImageParameters* %13, i64 0, i32 6, !dbg !1636
  %15 = load i32* %14, align 4, !dbg !1636, !tbaa !1637
  %16 = sext i32 %15 to i64, !dbg !1638
  %17 = load %struct.StatParameters** @stats, align 8, !dbg !1638, !tbaa !1015
  %18 = getelementptr inbounds %struct.StatParameters* %17, i64 0, i32 22, i64 %16, !dbg !1638
  %19 = load i32* %18, align 4, !dbg !1639, !tbaa !863
  %20 = add nsw i32 %19, %2, !dbg !1639
  store i32 %20, i32* %18, align 4, !dbg !1639, !tbaa !863
  %21 = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 0, !dbg !1640
  %22 = load i32* %21, align 4, !dbg !1641, !tbaa !1222
  %23 = add nsw i32 %22, 1, !dbg !1641
  store i32 %23, i32* %21, align 4, !dbg !1641, !tbaa !1222
  %24 = sext i32 %22 to i64, !dbg !1642
  %25 = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 9, !dbg !1643
  %26 = load i8** %25, align 8, !dbg !1643, !tbaa !841
  %27 = getelementptr inbounds i8* %26, i64 %24, !dbg !1642
  store i8 %12, i8* %27, align 1, !dbg !1644, !tbaa !1021
  store i32 8, i32* %1, align 4, !dbg !1645, !tbaa !1216
  br label %28, !dbg !1646

; <label>:28                                      ; preds = %4, %0
  ret void, !dbg !1647
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

declare double @ldexp(double, i32)

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!810, !811, !812}
!llvm.ident = !{!813}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !33, subprograms: !36, globals: !314, imports: !809)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/vlc.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3, !28}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 119, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/global.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!6 = !DIEnumerator(name: "SE_HEADER", value: 0)
!7 = !DIEnumerator(name: "SE_PTYPE", value: 1)
!8 = !DIEnumerator(name: "SE_MBTYPE", value: 2)
!9 = !DIEnumerator(name: "SE_REFFRAME", value: 3)
!10 = !DIEnumerator(name: "SE_INTRAPREDMODE", value: 4)
!11 = !DIEnumerator(name: "SE_MVD", value: 5)
!12 = !DIEnumerator(name: "SE_CBP_INTRA", value: 6)
!13 = !DIEnumerator(name: "SE_LUM_DC_INTRA", value: 7)
!14 = !DIEnumerator(name: "SE_CHR_DC_INTRA", value: 8)
!15 = !DIEnumerator(name: "SE_LUM_AC_INTRA", value: 9)
!16 = !DIEnumerator(name: "SE_CHR_AC_INTRA", value: 10)
!17 = !DIEnumerator(name: "SE_CBP_INTER", value: 11)
!18 = !DIEnumerator(name: "SE_LUM_DC_INTER", value: 12)
!19 = !DIEnumerator(name: "SE_CHR_DC_INTER", value: 13)
!20 = !DIEnumerator(name: "SE_LUM_AC_INTER", value: 14)
!21 = !DIEnumerator(name: "SE_CHR_AC_INTER", value: 15)
!22 = !DIEnumerator(name: "SE_DELTA_QUANT_INTER", value: 16)
!23 = !DIEnumerator(name: "SE_DELTA_QUANT_INTRA", value: 17)
!24 = !DIEnumerator(name: "SE_BFRAME", value: 18)
!25 = !DIEnumerator(name: "SE_EOS", value: 19)
!26 = !DIEnumerator(name: "SE_TRANSFORM_SIZE_FLAG", value: 20)
!27 = !DIEnumerator(name: "SE_MAX_ELEMENTS", value: 21)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 42, size: 32, align: 32, elements: !30)
!29 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!30 = !{!31, !32}
!31 = !DIEnumerator(name: "FALSE", value: 0)
!32 = !DIEnumerator(name: "TRUE", value: 1)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!35 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!36 = !{!37, !126, !133, !140, !150, !158, !168, !174, !180, !191, !202, !213, !219, !225, !229, !233, !239, !247, !251, !255, !259, !264, !269, !274, !280, !285, !292, !309}
!37 = !DISubprogram(name: "ue_v", scope: !1, file: !1, line: 58, type: !38, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, %struct.datapartition*)* @ue_v, variables: !120)
!38 = !DISubroutineType(types: !39)
!39 = !{!35, !40, !35, !42}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "DataPartition", file: !4, line: 440, baseType: !44)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "datapartition", file: !4, line: 430, size: 960, align: 64, elements: !45)
!45 = !{!46, !66, !92}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream", scope: !44, file: !4, line: 433, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bitstream", file: !4, line: 427, baseType: !49)
!49 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 411, size: 384, align: 64, elements: !50)
!50 = !{!51, !52, !53, !57, !58, !59, !60, !61, !62, !63, !65}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos", scope: !49, file: !4, line: 413, baseType: !35, size: 32, align: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go", scope: !49, file: !4, line: 414, baseType: !35, size: 32, align: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf", scope: !49, file: !4, line: 415, baseType: !54, size: 8, align: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !55, line: 30, baseType: !56)
!55 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/464.h264ref/src/defines.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!56 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_pos", scope: !49, file: !4, line: 416, baseType: !35, size: 32, align: 32, offset: 96)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "stored_bits_to_go", scope: !49, file: !4, line: 417, baseType: !35, size: 32, align: 32, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "stored_byte_buf", scope: !49, file: !4, line: 418, baseType: !54, size: 8, align: 8, offset: 160)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "byte_buf_skip", scope: !49, file: !4, line: 420, baseType: !54, size: 8, align: 8, offset: 168)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "byte_pos_skip", scope: !49, file: !4, line: 421, baseType: !35, size: 32, align: 32, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "bits_to_go_skip", scope: !49, file: !4, line: 422, baseType: !35, size: 32, align: 32, offset: 224)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "streamBuffer", scope: !49, file: !4, line: 424, baseType: !64, size: 64, align: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "write_flag", scope: !49, file: !4, line: 425, baseType: !35, size: 32, align: 32, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ee_cabac", scope: !44, file: !4, line: 434, baseType: !67, size: 832, align: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironment", file: !4, line: 226, baseType: !68)
!68 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 207, size: 832, align: 64, elements: !69)
!69 = !{!70, !72, !73, !74, !75, !76, !77, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "Elow", scope: !68, file: !4, line: 209, baseType: !71, size: 32, align: 32)
!71 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "Erange", scope: !68, file: !4, line: 209, baseType: !71, size: 32, align: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "Ebuffer", scope: !68, file: !4, line: 210, baseType: !71, size: 32, align: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_go", scope: !68, file: !4, line: 211, baseType: !71, size: 32, align: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_follow", scope: !68, file: !4, line: 212, baseType: !71, size: 32, align: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm", scope: !68, file: !4, line: 213, baseType: !64, size: 64, align: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_len", scope: !68, file: !4, line: 214, baseType: !78, size: 64, align: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ElowS", scope: !68, file: !4, line: 217, baseType: !71, size: 32, align: 32, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ErangeS", scope: !68, file: !4, line: 217, baseType: !71, size: 32, align: 32, offset: 352)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "EbufferS", scope: !68, file: !4, line: 218, baseType: !71, size: 32, align: 32, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_goS", scope: !68, file: !4, line: 219, baseType: !71, size: 32, align: 32, offset: 416)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "Ebits_to_followS", scope: !68, file: !4, line: 220, baseType: !71, size: 32, align: 32, offset: 448)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "EcodestrmS", scope: !68, file: !4, line: 221, baseType: !64, size: 64, align: 64, offset: 512)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "Ecodestrm_lenS", scope: !68, file: !4, line: 222, baseType: !78, size: 64, align: 64, offset: 576)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !68, file: !4, line: 223, baseType: !35, size: 32, align: 32, offset: 640)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "CS", scope: !68, file: !4, line: 223, baseType: !35, size: 32, align: 32, offset: 672)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "E", scope: !68, file: !4, line: 224, baseType: !35, size: 32, align: 32, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ES", scope: !68, file: !4, line: 224, baseType: !35, size: 32, align: 32, offset: 736)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !68, file: !4, line: 225, baseType: !35, size: 32, align: 32, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "BS", scope: !68, file: !4, line: 225, baseType: !35, size: 32, align: 32, offset: 800)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "writeSyntaxElement", scope: !44, file: !4, line: 436, baseType: !93, size: 64, align: 64, offset: 896)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!35, !96, !119}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "SyntaxElement", file: !4, line: 348, baseType: !98)
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "syntaxelement", file: !4, line: 327, size: 384, align: 64, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !112}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !4, line: 329, baseType: !35, size: 32, align: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "value1", scope: !98, file: !4, line: 330, baseType: !35, size: 32, align: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "value2", scope: !98, file: !4, line: 331, baseType: !35, size: 32, align: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !98, file: !4, line: 332, baseType: !35, size: 32, align: 32, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "inf", scope: !98, file: !4, line: 333, baseType: !35, size: 32, align: 32, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "bitpattern", scope: !98, file: !4, line: 334, baseType: !71, size: 32, align: 32, offset: 160)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !98, file: !4, line: 335, baseType: !35, size: 32, align: 32, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !98, file: !4, line: 336, baseType: !35, size: 32, align: 32, offset: 224)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !98, file: !4, line: 344, baseType: !109, size: 64, align: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !35, !35, !78, !78}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "writing", scope: !98, file: !4, line: 346, baseType: !113, size: 64, align: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !116, !117}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodingEnvironmentPtr", file: !4, line: 228, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!120 = !{!121, !122, !123, !124, !125}
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tracestring", arg: 1, scope: !37, file: !1, line: 58, type: !40)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !37, file: !1, line: 58, type: !35)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "part", arg: 3, scope: !37, file: !1, line: 58, type: !42)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symbol", scope: !37, file: !1, line: 60, type: !97)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sym", scope: !37, file: !1, line: 60, type: !96)
!126 = !DISubprogram(name: "se_v", scope: !1, file: !1, line: 96, type: !38, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, %struct.datapartition*)* @se_v, variables: !127)
!127 = !{!128, !129, !130, !131, !132}
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tracestring", arg: 1, scope: !126, file: !1, line: 96, type: !40)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !126, file: !1, line: 96, type: !35)
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "part", arg: 3, scope: !126, file: !1, line: 96, type: !42)
!131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symbol", scope: !126, file: !1, line: 98, type: !97)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sym", scope: !126, file: !1, line: 98, type: !96)
!133 = !DISubprogram(name: "u_1", scope: !1, file: !1, line: 135, type: !38, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, %struct.datapartition*)* @u_1, variables: !134)
!134 = !{!135, !136, !137, !138, !139}
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tracestring", arg: 1, scope: !133, file: !1, line: 135, type: !40)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 2, scope: !133, file: !1, line: 135, type: !35)
!137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "part", arg: 3, scope: !133, file: !1, line: 135, type: !42)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symbol", scope: !133, file: !1, line: 137, type: !97)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sym", scope: !133, file: !1, line: 137, type: !96)
!140 = !DISubprogram(name: "u_v", scope: !1, file: !1, line: 178, type: !141, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8*, i32, %struct.datapartition*)* @u_v, variables: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{!35, !35, !40, !35, !42}
!143 = !{!144, !145, !146, !147, !148, !149}
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !140, file: !1, line: 178, type: !35)
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tracestring", arg: 2, scope: !140, file: !1, line: 178, type: !40)
!146 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !140, file: !1, line: 178, type: !35)
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "part", arg: 4, scope: !140, file: !1, line: 178, type: !42)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symbol", scope: !140, file: !1, line: 180, type: !97)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sym", scope: !140, file: !1, line: 180, type: !96)
!150 = !DISubprogram(name: "ue_linfo", scope: !1, file: !1, line: 209, type: !110, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32*, i32*)* @ue_linfo, variables: !151)
!151 = !{!152, !153, !154, !155, !156, !157}
!152 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ue", arg: 1, scope: !150, file: !1, line: 209, type: !35)
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dummy", arg: 2, scope: !150, file: !1, line: 209, type: !35)
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !150, file: !1, line: 209, type: !78)
!155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 4, scope: !150, file: !1, line: 209, type: !78)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !150, file: !1, line: 211, type: !35)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nn", scope: !150, file: !1, line: 211, type: !35)
!158 = !DISubprogram(name: "se_linfo", scope: !1, file: !1, line: 238, type: !110, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32*, i32*)* @se_linfo, variables: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167}
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !158, file: !1, line: 238, type: !35)
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dummy", arg: 2, scope: !158, file: !1, line: 238, type: !35)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !158, file: !1, line: 238, type: !78)
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 4, scope: !158, file: !1, line: 238, type: !78)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !158, file: !1, line: 241, type: !35)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !158, file: !1, line: 241, type: !35)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !158, file: !1, line: 241, type: !35)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nn", scope: !158, file: !1, line: 241, type: !35)
!168 = !DISubprogram(name: "cbp_linfo_intra", scope: !1, file: !1, line: 273, type: !110, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32*, i32*)* @cbp_linfo_intra, variables: !169)
!169 = !{!170, !171, !172, !173}
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cbp", arg: 1, scope: !168, file: !1, line: 273, type: !35)
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dummy", arg: 2, scope: !168, file: !1, line: 273, type: !35)
!172 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !168, file: !1, line: 273, type: !78)
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 4, scope: !168, file: !1, line: 273, type: !78)
!174 = !DISubprogram(name: "cbp_linfo_inter", scope: !1, file: !1, line: 288, type: !110, isLocal: false, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32*, i32*)* @cbp_linfo_inter, variables: !175)
!175 = !{!176, !177, !178, !179}
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cbp", arg: 1, scope: !174, file: !1, line: 288, type: !35)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dummy", arg: 2, scope: !174, file: !1, line: 288, type: !35)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !174, file: !1, line: 288, type: !78)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 4, scope: !174, file: !1, line: 288, type: !78)
!180 = !DISubprogram(name: "levrun_linfo_c2x2", scope: !1, file: !1, line: 307, type: !110, isLocal: false, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32*, i32*)* @levrun_linfo_c2x2, variables: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190}
!182 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 1, scope: !180, file: !1, line: 307, type: !35)
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "run", arg: 2, scope: !180, file: !1, line: 307, type: !35)
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !180, file: !1, line: 307, type: !78)
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 4, scope: !180, file: !1, line: 307, type: !78)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "levabs", scope: !180, file: !1, line: 319, type: !35)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !180, file: !1, line: 319, type: !35)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !180, file: !1, line: 319, type: !35)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !180, file: !1, line: 319, type: !35)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nn", scope: !180, file: !1, line: 319, type: !35)
!191 = !DISubprogram(name: "levrun_linfo_inter", scope: !1, file: !1, line: 364, type: !110, isLocal: false, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32*, i32*)* @levrun_linfo_inter, variables: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201}
!193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 1, scope: !191, file: !1, line: 364, type: !35)
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "run", arg: 2, scope: !191, file: !1, line: 364, type: !35)
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !191, file: !1, line: 364, type: !78)
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 4, scope: !191, file: !1, line: 364, type: !78)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "levabs", scope: !191, file: !1, line: 378, type: !35)
!198 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !191, file: !1, line: 378, type: !35)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !191, file: !1, line: 378, type: !35)
!200 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !191, file: !1, line: 378, type: !35)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nn", scope: !191, file: !1, line: 378, type: !35)
!202 = !DISubprogram(name: "levrun_linfo_intra", scope: !1, file: !1, line: 425, type: !110, isLocal: false, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32*, i32*)* @levrun_linfo_intra, variables: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212}
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 1, scope: !202, file: !1, line: 425, type: !35)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "run", arg: 2, scope: !202, file: !1, line: 425, type: !35)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 3, scope: !202, file: !1, line: 425, type: !78)
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "info", arg: 4, scope: !202, file: !1, line: 425, type: !78)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "levabs", scope: !202, file: !1, line: 445, type: !35)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !202, file: !1, line: 445, type: !35)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !202, file: !1, line: 445, type: !35)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !202, file: !1, line: 445, type: !35)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nn", scope: !202, file: !1, line: 445, type: !35)
!213 = !DISubprogram(name: "symbol2uvlc", scope: !1, file: !1, line: 490, type: !214, isLocal: false, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*)* @symbol2uvlc, variables: !216)
!214 = !DISubroutineType(types: !215)
!215 = !{!35, !96}
!216 = !{!217, !218}
!217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sym", arg: 1, scope: !213, file: !1, line: 490, type: !96)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "suffix_len", scope: !213, file: !1, line: 492, type: !35)
!219 = !DISubprogram(name: "writeSyntaxElement_UVLC", scope: !1, file: !1, line: 504, type: !220, isLocal: false, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_UVLC, variables: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!35, !96, !42}
!222 = !{!223, !224}
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !219, file: !1, line: 504, type: !96)
!224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_dataPart", arg: 2, scope: !219, file: !1, line: 504, type: !42)
!225 = !DISubprogram(name: "writeSyntaxElement_fixed", scope: !1, file: !1, line: 529, type: !220, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_fixed, variables: !226)
!226 = !{!227, !228}
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !225, file: !1, line: 529, type: !96)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_dataPart", arg: 2, scope: !225, file: !1, line: 529, type: !42)
!229 = !DISubprogram(name: "writeSyntaxElement_Intra4x4PredictionMode", scope: !1, file: !1, line: 551, type: !220, isLocal: false, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_Intra4x4PredictionMode, variables: !230)
!230 = !{!231, !232}
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !229, file: !1, line: 551, type: !96)
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_dataPart", arg: 2, scope: !229, file: !1, line: 551, type: !42)
!233 = !DISubprogram(name: "writeSyntaxElement2Buf_UVLC", scope: !1, file: !1, line: 588, type: !234, isLocal: false, isDefinition: true, scopeLine: 589, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*, %struct.Bitstream*)* @writeSyntaxElement2Buf_UVLC, variables: !236)
!234 = !DISubroutineType(types: !235)
!235 = !{!35, !96, !47}
!236 = !{!237, !238}
!237 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !233, file: !1, line: 588, type: !96)
!238 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_streamBuffer", arg: 2, scope: !233, file: !1, line: 588, type: !47)
!239 = !DISubprogram(name: "writeUVLC2buffer", scope: !1, file: !1, line: 612, type: !240, isLocal: false, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.syntaxelement*, %struct.Bitstream*)* @writeUVLC2buffer, variables: !242)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !96, !47}
!242 = !{!243, !244, !245, !246}
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !239, file: !1, line: 612, type: !96)
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "currStream", arg: 2, scope: !239, file: !1, line: 612, type: !47)
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !239, file: !1, line: 615, type: !35)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mask", scope: !239, file: !1, line: 616, type: !71)
!247 = !DISubprogram(name: "writeSyntaxElement2Buf_Fixed", scope: !1, file: !1, line: 645, type: !234, isLocal: false, isDefinition: true, scopeLine: 646, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*, %struct.Bitstream*)* @writeSyntaxElement2Buf_Fixed, variables: !248)
!248 = !{!249, !250}
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !247, file: !1, line: 645, type: !96)
!250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_streamBuffer", arg: 2, scope: !247, file: !1, line: 645, type: !47)
!251 = !DISubprogram(name: "symbol2vlc", scope: !1, file: !1, line: 670, type: !214, isLocal: false, isDefinition: true, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*)* @symbol2vlc, variables: !252)
!252 = !{!253, !254}
!253 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sym", arg: 1, scope: !251, file: !1, line: 670, type: !96)
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info_len", scope: !251, file: !1, line: 672, type: !35)
!255 = !DISubprogram(name: "writeSyntaxElement_VLC", scope: !1, file: !1, line: 693, type: !220, isLocal: false, isDefinition: true, scopeLine: 694, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_VLC, variables: !256)
!256 = !{!257, !258}
!257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !255, file: !1, line: 693, type: !96)
!258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_dataPart", arg: 2, scope: !255, file: !1, line: 693, type: !42)
!259 = !DISubprogram(name: "writeSyntaxElement_NumCoeffTrailingOnes", scope: !1, file: !1, line: 717, type: !220, isLocal: false, isDefinition: true, scopeLine: 718, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_NumCoeffTrailingOnes, variables: !260)
!260 = !{!261, !262, !263}
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !259, file: !1, line: 717, type: !96)
!262 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_dataPart", arg: 2, scope: !259, file: !1, line: 717, type: !42)
!263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vlcnum", scope: !259, file: !1, line: 763, type: !35)
!264 = !DISubprogram(name: "writeSyntaxElement_NumCoeffTrailingOnesChromaDC", scope: !1, file: !1, line: 814, type: !220, isLocal: false, isDefinition: true, scopeLine: 815, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_NumCoeffTrailingOnesChromaDC, variables: !265)
!265 = !{!266, !267, !268}
!266 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !264, file: !1, line: 814, type: !96)
!267 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_dataPart", arg: 2, scope: !264, file: !1, line: 814, type: !42)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "yuv", scope: !264, file: !1, line: 854, type: !35)
!269 = !DISubprogram(name: "writeSyntaxElement_TotalZeros", scope: !1, file: !1, line: 886, type: !220, isLocal: false, isDefinition: true, scopeLine: 887, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_TotalZeros, variables: !270)
!270 = !{!271, !272, !273}
!271 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !269, file: !1, line: 886, type: !96)
!272 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_dataPart", arg: 2, scope: !269, file: !1, line: 886, type: !42)
!273 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vlcnum", scope: !269, file: !1, line: 925, type: !35)
!274 = !DISubprogram(name: "writeSyntaxElement_TotalZerosChromaDC", scope: !1, file: !1, line: 957, type: !220, isLocal: false, isDefinition: true, scopeLine: 958, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_TotalZerosChromaDC, variables: !275)
!275 = !{!276, !277, !278, !279}
!276 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !274, file: !1, line: 957, type: !96)
!277 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_dataPart", arg: 2, scope: !274, file: !1, line: 957, type: !42)
!278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vlcnum", scope: !274, file: !1, line: 1022, type: !35)
!279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "yuv", scope: !274, file: !1, line: 1023, type: !35)
!280 = !DISubprogram(name: "writeSyntaxElement_Run", scope: !1, file: !1, line: 1055, type: !220, isLocal: false, isDefinition: true, scopeLine: 1056, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_Run, variables: !281)
!281 = !{!282, !283, !284}
!282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !280, file: !1, line: 1055, type: !96)
!283 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_dataPart", arg: 2, scope: !280, file: !1, line: 1055, type: !42)
!284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vlcnum", scope: !280, file: !1, line: 1078, type: !35)
!285 = !DISubprogram(name: "writeSyntaxElement_Level_VLC1", scope: !1, file: !1, line: 1110, type: !220, isLocal: false, isDefinition: true, scopeLine: 1111, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_Level_VLC1, variables: !286)
!286 = !{!287, !288, !289, !290, !291}
!287 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !285, file: !1, line: 1110, type: !96)
!288 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_dataPart", arg: 2, scope: !285, file: !1, line: 1110, type: !42)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !285, file: !1, line: 1112, type: !35)
!290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "levabs", scope: !285, file: !1, line: 1112, type: !35)
!291 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !285, file: !1, line: 1112, type: !35)
!292 = !DISubprogram(name: "writeSyntaxElement_Level_VLCN", scope: !1, file: !1, line: 1156, type: !293, isLocal: false, isDefinition: true, scopeLine: 1157, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.syntaxelement*, i32, %struct.datapartition*)* @writeSyntaxElement_Level_VLCN, variables: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{!35, !96, !35, !42}
!295 = !{!296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!296 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "se", arg: 1, scope: !292, file: !1, line: 1156, type: !96)
!297 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vlc", arg: 2, scope: !292, file: !1, line: 1156, type: !35)
!298 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "this_dataPart", arg: 3, scope: !292, file: !1, line: 1156, type: !42)
!299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iCodeword", scope: !292, file: !1, line: 1158, type: !35)
!300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iLength", scope: !292, file: !1, line: 1159, type: !35)
!301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !292, file: !1, line: 1161, type: !35)
!302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "levabs", scope: !292, file: !1, line: 1163, type: !35)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !292, file: !1, line: 1164, type: !35)
!304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift", scope: !292, file: !1, line: 1166, type: !35)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "escape", scope: !292, file: !1, line: 1167, type: !35)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numPrefix", scope: !292, file: !1, line: 1169, type: !35)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sufmask", scope: !292, file: !1, line: 1171, type: !35)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "suffix", scope: !292, file: !1, line: 1172, type: !35)
!309 = !DISubprogram(name: "writeVlcByteAlign", scope: !1, file: !1, line: 1256, type: !310, isLocal: false, isDefinition: true, scopeLine: 1257, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.Bitstream*)* @writeVlcByteAlign, variables: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !47}
!312 = !{!313}
!313 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "currStream", arg: 1, scope: !309, file: !1, line: 1256, type: !47)
!314 = !{!315, !320, !324, !329, !333, !337, !342, !347, !348, !349, !350, !354, !355, !358, !359, !360, !361, !471, !472, !473, !474, !475, !478, !480, !482, !483, !484, !485, !486, !523, !618, !619, !620, !622, !623, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !642, !643, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !658, !661, !662, !663, !664, !665, !666, !669, !672, !673, !674, !675, !678, !680, !691, !733, !734, !735, !736, !737, !793, !794, !795, !796, !797, !801, !802, !803, !804, !805, !806, !807, !808}
!315 = !DIGlobalVariable(name: "NTAB", scope: !180, file: !1, line: 309, type: !316, isLocal: true, isDefinition: true, variable: [2 x [2 x i32]]* @levrun_linfo_c2x2.NTAB)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 128, align: 32, elements: !318)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!318 = !{!319, !319}
!319 = !DISubrange(count: 2)
!320 = !DIGlobalVariable(name: "LEVRUN", scope: !180, file: !1, line: 314, type: !321, isLocal: true, isDefinition: true, variable: [4 x i32]* @levrun_linfo_c2x2.LEVRUN)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 128, align: 32, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 4)
!324 = !DIGlobalVariable(name: "LEVRUN", scope: !191, file: !1, line: 366, type: !325, isLocal: true, isDefinition: true, variable: [16 x i8]* @levrun_linfo_inter.LEVRUN)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 128, align: 8, elements: !327)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!327 = !{!328}
!328 = !DISubrange(count: 16)
!329 = !DIGlobalVariable(name: "NTAB", scope: !191, file: !1, line: 370, type: !330, isLocal: true, isDefinition: true, variable: [4 x [10 x i8]]* @levrun_linfo_inter.NTAB)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 320, align: 8, elements: !331)
!331 = !{!323, !332}
!332 = !DISubrange(count: 10)
!333 = !DIGlobalVariable(name: "LEVRUN", scope: !202, file: !1, line: 427, type: !334, isLocal: true, isDefinition: true, variable: [8 x i8]* @levrun_linfo_intra.LEVRUN)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 64, align: 8, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 8)
!337 = !DIGlobalVariable(name: "NTAB", scope: !202, file: !1, line: 432, type: !338, isLocal: true, isDefinition: true, variable: [9 x [5 x i8]]* @levrun_linfo_intra.NTAB)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 360, align: 8, elements: !339)
!339 = !{!340, !341}
!340 = !DISubrange(count: 9)
!341 = !DISubrange(count: 5)
!342 = !DIGlobalVariable(name: "lentab", scope: !259, file: !1, line: 719, type: !343, isLocal: true, isDefinition: true, variable: [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnes.lentab)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 6528, align: 32, elements: !344)
!344 = !{!345, !323, !346}
!345 = !DISubrange(count: 3)
!346 = !DISubrange(count: 17)
!347 = !DIGlobalVariable(name: "codtab", scope: !259, file: !1, line: 742, type: !343, isLocal: true, isDefinition: true, variable: [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnes.codtab)
!348 = !DIGlobalVariable(name: "lentab", scope: !264, file: !1, line: 816, type: !343, isLocal: true, isDefinition: true, variable: [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab)
!349 = !DIGlobalVariable(name: "codtab", scope: !264, file: !1, line: 835, type: !343, isLocal: true, isDefinition: true, variable: [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab)
!350 = !DIGlobalVariable(name: "lentab", scope: !269, file: !1, line: 888, type: !351, isLocal: true, isDefinition: true, variable: [15 x [16 x i32]]* @writeSyntaxElement_TotalZeros.lentab)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 7680, align: 32, elements: !352)
!352 = !{!353, !328}
!353 = !DISubrange(count: 15)
!354 = !DIGlobalVariable(name: "codtab", scope: !269, file: !1, line: 907, type: !351, isLocal: true, isDefinition: true, variable: [15 x [16 x i32]]* @writeSyntaxElement_TotalZeros.codtab)
!355 = !DIGlobalVariable(name: "lentab", scope: !274, file: !1, line: 959, type: !356, isLocal: true, isDefinition: true, variable: [3 x [15 x [16 x i32]]]* @writeSyntaxElement_TotalZerosChromaDC.lentab)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 23040, align: 32, elements: !357)
!357 = !{!345, !353, !328}
!358 = !DIGlobalVariable(name: "codtab", scope: !274, file: !1, line: 991, type: !356, isLocal: true, isDefinition: true, variable: [3 x [15 x [16 x i32]]]* @writeSyntaxElement_TotalZerosChromaDC.codtab)
!359 = !DIGlobalVariable(name: "lentab", scope: !280, file: !1, line: 1057, type: !351, isLocal: true, isDefinition: true, variable: [15 x [16 x i32]]* @writeSyntaxElement_Run.lentab)
!360 = !DIGlobalVariable(name: "codtab", scope: !280, file: !1, line: 1068, type: !351, isLocal: true, isDefinition: true, variable: [15 x [16 x i32]]* @writeSyntaxElement_Run.codtab)
!361 = !DIGlobalVariable(name: "top_pic", scope: !0, file: !4, line: 558, type: !362, isLocal: false, isDefinition: true, variable: %struct.Picture** @top_pic)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "Picture", file: !4, line: 484, baseType: !364)
!364 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 475, size: 6592, align: 64, elements: !365)
!365 = !{!366, !367, !368, !466, !467, !469, !470}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "no_slices", scope: !364, file: !4, line: 477, baseType: !35, size: 32, align: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "idr_flag", scope: !364, file: !4, line: 478, baseType: !35, size: 32, align: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "slices", scope: !364, file: !4, line: 479, baseType: !369, size: 6400, align: 64, offset: 64)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 6400, align: 64, elements: !464)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "Slice", file: !4, line: 471, baseType: !372)
!372 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 443, size: 1216, align: 64, elements: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !381, !414, !439, !448, !449, !450, !451, !452, !453, !454, !455, !456, !461}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "picture_id", scope: !372, file: !4, line: 445, baseType: !35, size: 32, align: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !372, file: !4, line: 446, baseType: !35, size: 32, align: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "picture_type", scope: !372, file: !4, line: 447, baseType: !35, size: 32, align: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "start_mb_nr", scope: !372, file: !4, line: 448, baseType: !35, size: 32, align: 32, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "max_part_nr", scope: !372, file: !4, line: 449, baseType: !35, size: 32, align: 32, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "num_mb", scope: !372, file: !4, line: 450, baseType: !35, size: 32, align: 32, offset: 160)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "partArr", scope: !372, file: !4, line: 451, baseType: !42, size: 64, align: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mot_ctx", scope: !372, file: !4, line: 452, baseType: !382, size: 64, align: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "MotionInfoContexts", file: !4, line: 268, baseType: !384)
!384 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 258, size: 12032, align: 64, elements: !385)
!385 = !{!386, !398, !401, !404, !408, !410, !411}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type_contexts", scope: !384, file: !4, line: 260, baseType: !387, size: 4224, align: 64)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 4224, align: 64, elements: !396)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "BiContextType", file: !4, line: 238, baseType: !389)
!389 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 231, size: 128, align: 64, elements: !390)
!390 = !{!391, !393, !394}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !389, file: !4, line: 233, baseType: !392, size: 16, align: 16)
!392 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "MPS", scope: !389, file: !4, line: 234, baseType: !56, size: 8, align: 8, offset: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !389, file: !4, line: 236, baseType: !395, size: 64, align: 64, offset: 64)
!395 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!396 = !{!345, !397}
!397 = !DISubrange(count: 11)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "b8_type_contexts", scope: !384, file: !4, line: 261, baseType: !399, size: 2304, align: 64, offset: 4224)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 2304, align: 64, elements: !400)
!400 = !{!319, !340}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "mv_res_contexts", scope: !384, file: !4, line: 262, baseType: !402, size: 2560, align: 64, offset: 6528)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 2560, align: 64, elements: !403)
!403 = !{!319, !332}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ref_no_contexts", scope: !384, file: !4, line: 263, baseType: !405, size: 1536, align: 64, offset: 9088)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 1536, align: 64, elements: !406)
!406 = !{!319, !407}
!407 = !DISubrange(count: 6)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "delta_qp_contexts", scope: !384, file: !4, line: 264, baseType: !409, size: 512, align: 64, offset: 10624)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 512, align: 64, elements: !322)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mb_aff_contexts", scope: !384, file: !4, line: 265, baseType: !409, size: 512, align: 64, offset: 11136)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "transform_size_contexts", scope: !384, file: !4, line: 266, baseType: !412, size: 384, align: 64, offset: 11648)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 384, align: 64, elements: !413)
!413 = !{!345}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tex_ctx", scope: !372, file: !4, line: 453, baseType: !415, size: 64, align: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "TextureInfoContexts", file: !4, line: 293, baseType: !417)
!417 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 281, size: 97024, align: 64, elements: !418)
!418 = !{!419, !422, !423, !426, !429, !432, !433, !436, !437, !438}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ipr_contexts", scope: !417, file: !4, line: 283, baseType: !420, size: 256, align: 64)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 256, align: 64, elements: !421)
!421 = !{!319}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "cipr_contexts", scope: !417, file: !4, line: 284, baseType: !409, size: 512, align: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_contexts", scope: !417, file: !4, line: 285, baseType: !424, size: 1536, align: 64, offset: 768)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 1536, align: 64, elements: !425)
!425 = !{!345, !323}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "bcbp_contexts", scope: !417, file: !4, line: 286, baseType: !427, size: 5120, align: 64, offset: 2304)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 5120, align: 64, elements: !428)
!428 = !{!332, !323}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "map_contexts", scope: !417, file: !4, line: 287, baseType: !430, size: 19200, align: 64, offset: 7424)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 19200, align: 64, elements: !431)
!431 = !{!332, !353}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "last_contexts", scope: !417, file: !4, line: 288, baseType: !430, size: 19200, align: 64, offset: 26624)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "one_contexts", scope: !417, file: !4, line: 289, baseType: !434, size: 6400, align: 64, offset: 45824)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 6400, align: 64, elements: !435)
!435 = !{!332, !341}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "abs_contexts", scope: !417, file: !4, line: 290, baseType: !434, size: 6400, align: 64, offset: 52224)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "fld_map_contexts", scope: !417, file: !4, line: 291, baseType: !430, size: 19200, align: 64, offset: 58624)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "fld_last_contexts", scope: !417, file: !4, line: 292, baseType: !430, size: 19200, align: 64, offset: 77824)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rmpni_buffer", scope: !372, file: !4, line: 456, baseType: !440, size: 64, align: 64, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "RMPNIbuffer_t", file: !4, line: 313, baseType: !442)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "RMPNIbuffer_s", file: !4, line: 308, size: 128, align: 64, elements: !443)
!443 = !{!444, !445, !446}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "RMPNI", scope: !442, file: !4, line: 310, baseType: !35, size: 32, align: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "Data", scope: !442, file: !4, line: 311, baseType: !35, size: 32, align: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "Next", scope: !442, file: !4, line: 312, baseType: !447, size: 64, align: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l0", scope: !372, file: !4, line: 458, baseType: !35, size: 32, align: 32, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l0", scope: !372, file: !4, line: 459, baseType: !78, size: 64, align: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l0", scope: !372, file: !4, line: 460, baseType: !78, size: 64, align: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l0", scope: !372, file: !4, line: 461, baseType: !78, size: 64, align: 64, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_reordering_flag_l1", scope: !372, file: !4, line: 462, baseType: !35, size: 32, align: 32, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "remapping_of_pic_nums_idc_l1", scope: !372, file: !4, line: 463, baseType: !78, size: 64, align: 64, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "abs_diff_pic_num_minus1_l1", scope: !372, file: !4, line: 464, baseType: !78, size: 64, align: 64, offset: 832)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "long_term_pic_idx_l1", scope: !372, file: !4, line: 465, baseType: !78, size: 64, align: 64, offset: 896)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "slice_too_big", scope: !372, file: !4, line: 467, baseType: !457, size: 64, align: 64, offset: 960)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!460, !35}
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "Boolean", file: !29, line: 45, baseType: !28)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "field_ctx", scope: !372, file: !4, line: 469, baseType: !462, size: 192, align: 32, offset: 1024)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, align: 32, elements: !463)
!463 = !{!345, !319}
!464 = !{!465}
!465 = !DISubrange(count: 100)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_picture", scope: !364, file: !4, line: 480, baseType: !35, size: 32, align: 32, offset: 6464)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_y", scope: !364, file: !4, line: 481, baseType: !468, size: 32, align: 32, offset: 6496)
!468 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_u", scope: !364, file: !4, line: 482, baseType: !468, size: 32, align: 32, offset: 6528)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "distortion_v", scope: !364, file: !4, line: 483, baseType: !468, size: 32, align: 32, offset: 6560)
!471 = !DIGlobalVariable(name: "bottom_pic", scope: !0, file: !4, line: 559, type: !362, isLocal: false, isDefinition: true, variable: %struct.Picture** @bottom_pic)
!472 = !DIGlobalVariable(name: "frame_pic", scope: !0, file: !4, line: 560, type: !362, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic)
!473 = !DIGlobalVariable(name: "frame_pic2", scope: !0, file: !4, line: 561, type: !362, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic2)
!474 = !DIGlobalVariable(name: "frame_pic3", scope: !0, file: !4, line: 562, type: !362, isLocal: false, isDefinition: true, variable: %struct.Picture** @frame_pic3)
!475 = !DIGlobalVariable(name: "imgY_org", scope: !0, file: !4, line: 565, type: !476, isLocal: false, isDefinition: true, variable: i16*** @imgY_org)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!478 = !DIGlobalVariable(name: "imgUV_org", scope: !0, file: !4, line: 566, type: !479, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!480 = !DIGlobalVariable(name: "img4Y_tmp", scope: !0, file: !4, line: 567, type: !481, isLocal: false, isDefinition: true, variable: i32*** @img4Y_tmp)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!482 = !DIGlobalVariable(name: "log2_max_frame_num_minus4", scope: !0, file: !4, line: 569, type: !71, isLocal: false, isDefinition: true, variable: i32* @log2_max_frame_num_minus4)
!483 = !DIGlobalVariable(name: "log2_max_pic_order_cnt_lsb_minus4", scope: !0, file: !4, line: 570, type: !71, isLocal: false, isDefinition: true, variable: i32* @log2_max_pic_order_cnt_lsb_minus4)
!484 = !DIGlobalVariable(name: "me_tot_time", scope: !0, file: !4, line: 572, type: !35, isLocal: false, isDefinition: true, variable: i32* @me_tot_time)
!485 = !DIGlobalVariable(name: "me_time", scope: !0, file: !4, line: 572, type: !35, isLocal: false, isDefinition: true, variable: i32* @me_time)
!486 = !DIGlobalVariable(name: "active_pps", scope: !0, file: !4, line: 573, type: !487, isLocal: false, isDefinition: true, variable: %struct.pic_parameter_set_rbsp_t** @active_pps)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "pic_parameter_set_rbsp_t", file: !29, line: 145, baseType: !489)
!489 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 103, size: 1920, align: 64, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !499, !500, !501, !502, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !489, file: !29, line: 105, baseType: !460, size: 32, align: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pic_parameter_set_id", scope: !489, file: !29, line: 106, baseType: !71, size: 32, align: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !489, file: !29, line: 107, baseType: !71, size: 32, align: 32, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "entropy_coding_mode_flag", scope: !489, file: !29, line: 108, baseType: !460, size: 32, align: 32, offset: 96)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "transform_8x8_mode_flag", scope: !489, file: !29, line: 110, baseType: !460, size: 32, align: 32, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_matrix_present_flag", scope: !489, file: !29, line: 111, baseType: !460, size: 32, align: 32, offset: 160)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "pic_scaling_list_present_flag", scope: !489, file: !29, line: 112, baseType: !498, size: 256, align: 32, offset: 192)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, align: 32, elements: !335)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_present_flag", scope: !489, file: !29, line: 115, baseType: !460, size: 32, align: 32, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "num_slice_groups_minus1", scope: !489, file: !29, line: 116, baseType: !71, size: 32, align: 32, offset: 480)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_map_type", scope: !489, file: !29, line: 117, baseType: !71, size: 32, align: 32, offset: 512)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "run_length_minus1", scope: !489, file: !29, line: 119, baseType: !503, size: 256, align: 32, offset: 544)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 256, align: 32, elements: !335)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "top_left", scope: !489, file: !29, line: 121, baseType: !503, size: 256, align: 32, offset: 800)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "bottom_right", scope: !489, file: !29, line: 122, baseType: !503, size: 256, align: 32, offset: 1056)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_direction_flag", scope: !489, file: !29, line: 124, baseType: !460, size: 32, align: 32, offset: 1312)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_change_rate_minus1", scope: !489, file: !29, line: 125, baseType: !71, size: 32, align: 32, offset: 1344)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pic_size_in_map_units_minus1", scope: !489, file: !29, line: 127, baseType: !71, size: 32, align: 32, offset: 1376)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "slice_group_id", scope: !489, file: !29, line: 128, baseType: !64, size: 64, align: 64, offset: 1408)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l0_active_minus1", scope: !489, file: !29, line: 130, baseType: !35, size: 32, align: 32, offset: 1472)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_idx_l1_active_minus1", scope: !489, file: !29, line: 131, baseType: !35, size: 32, align: 32, offset: 1504)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_pred_flag", scope: !489, file: !29, line: 132, baseType: !460, size: 32, align: 32, offset: 1536)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "weighted_bipred_idc", scope: !489, file: !29, line: 133, baseType: !71, size: 32, align: 32, offset: 1568)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qp_minus26", scope: !489, file: !29, line: 134, baseType: !35, size: 32, align: 32, offset: 1600)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "pic_init_qs_minus26", scope: !489, file: !29, line: 135, baseType: !35, size: 32, align: 32, offset: 1632)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_index_offset", scope: !489, file: !29, line: 136, baseType: !35, size: 32, align: 32, offset: 1664)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "cb_qp_index_offset", scope: !489, file: !29, line: 138, baseType: !35, size: 32, align: 32, offset: 1696)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "cr_qp_index_offset", scope: !489, file: !29, line: 139, baseType: !35, size: 32, align: 32, offset: 1728)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "deblocking_filter_control_present_flag", scope: !489, file: !29, line: 141, baseType: !460, size: 32, align: 32, offset: 1760)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_intra_pred_flag", scope: !489, file: !29, line: 142, baseType: !460, size: 32, align: 32, offset: 1792)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "redundant_pic_cnt_present_flag", scope: !489, file: !29, line: 143, baseType: !460, size: 32, align: 32, offset: 1824)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "vui_pic_parameters_flag", scope: !489, file: !29, line: 144, baseType: !460, size: 32, align: 32, offset: 1856)
!523 = !DIGlobalVariable(name: "active_sps", scope: !0, file: !4, line: 574, type: !524, isLocal: false, isDefinition: true, variable: %struct.seq_parameter_set_rbsp_t** @active_sps)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_parameter_set_rbsp_t", file: !29, line: 193, baseType: !526)
!526 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 149, size: 17056, align: 32, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "Valid", scope: !526, file: !29, line: 151, baseType: !460, size: 32, align: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "profile_idc", scope: !526, file: !29, line: 153, baseType: !71, size: 32, align: 32, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set0_flag", scope: !526, file: !29, line: 154, baseType: !460, size: 32, align: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set1_flag", scope: !526, file: !29, line: 155, baseType: !460, size: 32, align: 32, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set2_flag", scope: !526, file: !29, line: 156, baseType: !460, size: 32, align: 32, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "constrained_set3_flag", scope: !526, file: !29, line: 157, baseType: !460, size: 32, align: 32, offset: 160)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "level_idc", scope: !526, file: !29, line: 158, baseType: !71, size: 32, align: 32, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "seq_parameter_set_id", scope: !526, file: !29, line: 159, baseType: !71, size: 32, align: 32, offset: 224)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_format_idc", scope: !526, file: !29, line: 160, baseType: !71, size: 32, align: 32, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_matrix_present_flag", scope: !526, file: !29, line: 162, baseType: !460, size: 32, align: 32, offset: 288)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "seq_scaling_list_present_flag", scope: !526, file: !29, line: 163, baseType: !498, size: 256, align: 32, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_luma_minus8", scope: !526, file: !29, line: 165, baseType: !71, size: 32, align: 32, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "bit_depth_chroma_minus8", scope: !526, file: !29, line: 166, baseType: !71, size: 32, align: 32, offset: 608)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_frame_num_minus4", scope: !526, file: !29, line: 167, baseType: !71, size: 32, align: 32, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pic_order_cnt_type", scope: !526, file: !29, line: 168, baseType: !71, size: 32, align: 32, offset: 672)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_pic_order_cnt_lsb_minus4", scope: !526, file: !29, line: 170, baseType: !71, size: 32, align: 32, offset: 704)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "delta_pic_order_always_zero_flag", scope: !526, file: !29, line: 172, baseType: !460, size: 32, align: 32, offset: 736)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_non_ref_pic", scope: !526, file: !29, line: 173, baseType: !35, size: 32, align: 32, offset: 768)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_top_to_bottom_field", scope: !526, file: !29, line: 174, baseType: !35, size: 32, align: 32, offset: 800)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames_in_pic_order_cnt_cycle", scope: !526, file: !29, line: 175, baseType: !71, size: 32, align: 32, offset: 832)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "offset_for_ref_frame", scope: !526, file: !29, line: 177, baseType: !549, size: 8192, align: 32, offset: 864)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8192, align: 32, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "num_ref_frames", scope: !526, file: !29, line: 178, baseType: !71, size: 32, align: 32, offset: 9056)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "gaps_in_frame_num_value_allowed_flag", scope: !526, file: !29, line: 179, baseType: !460, size: 32, align: 32, offset: 9088)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width_in_mbs_minus1", scope: !526, file: !29, line: 180, baseType: !71, size: 32, align: 32, offset: 9120)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height_in_map_units_minus1", scope: !526, file: !29, line: 181, baseType: !71, size: 32, align: 32, offset: 9152)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "frame_mbs_only_flag", scope: !526, file: !29, line: 182, baseType: !460, size: 32, align: 32, offset: 9184)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mb_adaptive_frame_field_flag", scope: !526, file: !29, line: 184, baseType: !460, size: 32, align: 32, offset: 9216)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "direct_8x8_inference_flag", scope: !526, file: !29, line: 185, baseType: !460, size: 32, align: 32, offset: 9248)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_flag", scope: !526, file: !29, line: 186, baseType: !460, size: 32, align: 32, offset: 9280)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_left_offset", scope: !526, file: !29, line: 187, baseType: !71, size: 32, align: 32, offset: 9312)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_right_offset", scope: !526, file: !29, line: 188, baseType: !71, size: 32, align: 32, offset: 9344)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_top_offset", scope: !526, file: !29, line: 189, baseType: !71, size: 32, align: 32, offset: 9376)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "frame_cropping_rect_bottom_offset", scope: !526, file: !29, line: 190, baseType: !71, size: 32, align: 32, offset: 9408)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "vui_parameters_present_flag", scope: !526, file: !29, line: 191, baseType: !460, size: 32, align: 32, offset: 9440)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "vui_seq_parameters", scope: !526, file: !29, line: 192, baseType: !566, size: 7584, align: 32, offset: 9472)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "vui_seq_parameters_t", file: !29, line: 99, baseType: !567)
!567 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 63, size: 7584, align: 32, elements: !568)
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_info_present_flag", scope: !567, file: !29, line: 65, baseType: !460, size: 32, align: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_idc", scope: !567, file: !29, line: 66, baseType: !71, size: 32, align: 32, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !567, file: !29, line: 67, baseType: !71, size: 32, align: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !567, file: !29, line: 68, baseType: !71, size: 32, align: 32, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_info_present_flag", scope: !567, file: !29, line: 69, baseType: !460, size: 32, align: 32, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "overscan_appropriate_flag", scope: !567, file: !29, line: 70, baseType: !460, size: 32, align: 32, offset: 160)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "video_signal_type_present_flag", scope: !567, file: !29, line: 71, baseType: !460, size: 32, align: 32, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "video_format", scope: !567, file: !29, line: 72, baseType: !71, size: 32, align: 32, offset: 224)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "video_full_range_flag", scope: !567, file: !29, line: 73, baseType: !460, size: 32, align: 32, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "colour_description_present_flag", scope: !567, file: !29, line: 74, baseType: !460, size: 32, align: 32, offset: 288)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "colour_primaries", scope: !567, file: !29, line: 75, baseType: !71, size: 32, align: 32, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_characteristics", scope: !567, file: !29, line: 76, baseType: !71, size: 32, align: 32, offset: 352)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "matrix_coefficients", scope: !567, file: !29, line: 77, baseType: !71, size: 32, align: 32, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_info_present_flag", scope: !567, file: !29, line: 78, baseType: !460, size: 32, align: 32, offset: 416)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_frame", scope: !567, file: !29, line: 79, baseType: !71, size: 32, align: 32, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_location_field", scope: !567, file: !29, line: 80, baseType: !71, size: 32, align: 32, offset: 480)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "timing_info_present_flag", scope: !567, file: !29, line: 81, baseType: !460, size: 32, align: 32, offset: 512)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "num_units_in_tick", scope: !567, file: !29, line: 82, baseType: !71, size: 32, align: 32, offset: 544)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "time_scale", scope: !567, file: !29, line: 83, baseType: !71, size: 32, align: 32, offset: 576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_frame_rate_flag", scope: !567, file: !29, line: 84, baseType: !460, size: 32, align: 32, offset: 608)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters_present_flag", scope: !567, file: !29, line: 85, baseType: !460, size: 32, align: 32, offset: 640)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "nal_hrd_parameters", scope: !567, file: !29, line: 86, baseType: !591, size: 3296, align: 32, offset: 672)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "hrd_parameters_t", file: !29, line: 60, baseType: !592)
!592 = !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 48, size: 3296, align: 32, elements: !593)
!593 = !{!594, !595, !596, !597, !601, !602, !603, !604, !605, !606}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_cnt", scope: !592, file: !29, line: 50, baseType: !71, size: 32, align: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_scale", scope: !592, file: !29, line: 51, baseType: !71, size: 32, align: 32, offset: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_scale", scope: !592, file: !29, line: 52, baseType: !71, size: 32, align: 32, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "bit_rate_value", scope: !592, file: !29, line: 53, baseType: !598, size: 1024, align: 32, offset: 96)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1024, align: 32, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_size_value", scope: !592, file: !29, line: 54, baseType: !598, size: 1024, align: 32, offset: 1120)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_cbr_flag", scope: !592, file: !29, line: 55, baseType: !598, size: 1024, align: 32, offset: 2144)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_length_minus1", scope: !592, file: !29, line: 56, baseType: !71, size: 32, align: 32, offset: 3168)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_delay_length_minus1", scope: !592, file: !29, line: 57, baseType: !71, size: 32, align: 32, offset: 3200)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_delay_length_minus1", scope: !592, file: !29, line: 58, baseType: !71, size: 32, align: 32, offset: 3232)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset_length", scope: !592, file: !29, line: 59, baseType: !71, size: 32, align: 32, offset: 3264)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters_present_flag", scope: !567, file: !29, line: 87, baseType: !460, size: 32, align: 32, offset: 3968)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "vcl_hrd_parameters", scope: !567, file: !29, line: 88, baseType: !591, size: 3296, align: 32, offset: 4000)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "low_delay_hrd_flag", scope: !567, file: !29, line: 90, baseType: !460, size: 32, align: 32, offset: 7296)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bitstream_restriction_flag", scope: !567, file: !29, line: 91, baseType: !460, size: 32, align: 32, offset: 7328)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "motion_vectors_over_pic_boundaries_flag", scope: !567, file: !29, line: 92, baseType: !460, size: 32, align: 32, offset: 7360)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "max_bytes_per_pic_denom", scope: !567, file: !29, line: 93, baseType: !71, size: 32, align: 32, offset: 7392)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "max_bits_per_mb_denom", scope: !567, file: !29, line: 94, baseType: !71, size: 32, align: 32, offset: 7424)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_vertical", scope: !567, file: !29, line: 95, baseType: !71, size: 32, align: 32, offset: 7456)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "log2_max_mv_length_horizontal", scope: !567, file: !29, line: 96, baseType: !71, size: 32, align: 32, offset: 7488)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_reordering", scope: !567, file: !29, line: 97, baseType: !71, size: 32, align: 32, offset: 7520)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_frame_buffering", scope: !567, file: !29, line: 98, baseType: !71, size: 32, align: 32, offset: 7552)
!618 = !DIGlobalVariable(name: "mb_adaptive", scope: !0, file: !4, line: 578, type: !35, isLocal: false, isDefinition: true, variable: i32* @mb_adaptive)
!619 = !DIGlobalVariable(name: "MBPairIsField", scope: !0, file: !4, line: 579, type: !35, isLocal: false, isDefinition: true, variable: i32* @MBPairIsField)
!620 = !DIGlobalVariable(name: "wp_weight", scope: !0, file: !4, line: 583, type: !621, isLocal: false, isDefinition: true, variable: i32**** @wp_weight)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!622 = !DIGlobalVariable(name: "wp_offset", scope: !0, file: !4, line: 584, type: !621, isLocal: false, isDefinition: true, variable: i32**** @wp_offset)
!623 = !DIGlobalVariable(name: "wbp_weight", scope: !0, file: !4, line: 585, type: !624, isLocal: false, isDefinition: true, variable: i32***** @wbp_weight)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, align: 64)
!625 = !DIGlobalVariable(name: "luma_log_weight_denom", scope: !0, file: !4, line: 586, type: !35, isLocal: false, isDefinition: true, variable: i32* @luma_log_weight_denom)
!626 = !DIGlobalVariable(name: "chroma_log_weight_denom", scope: !0, file: !4, line: 587, type: !35, isLocal: false, isDefinition: true, variable: i32* @chroma_log_weight_denom)
!627 = !DIGlobalVariable(name: "wp_luma_round", scope: !0, file: !4, line: 588, type: !35, isLocal: false, isDefinition: true, variable: i32* @wp_luma_round)
!628 = !DIGlobalVariable(name: "wp_chroma_round", scope: !0, file: !4, line: 589, type: !35, isLocal: false, isDefinition: true, variable: i32* @wp_chroma_round)
!629 = !DIGlobalVariable(name: "imgY_org_top", scope: !0, file: !4, line: 592, type: !476, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_top)
!630 = !DIGlobalVariable(name: "imgY_org_bot", scope: !0, file: !4, line: 593, type: !476, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_bot)
!631 = !DIGlobalVariable(name: "imgUV_org_top", scope: !0, file: !4, line: 595, type: !479, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_top)
!632 = !DIGlobalVariable(name: "imgUV_org_bot", scope: !0, file: !4, line: 596, type: !479, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_bot)
!633 = !DIGlobalVariable(name: "imgY_org_frm", scope: !0, file: !4, line: 598, type: !476, isLocal: false, isDefinition: true, variable: i16*** @imgY_org_frm)
!634 = !DIGlobalVariable(name: "imgUV_org_frm", scope: !0, file: !4, line: 599, type: !479, isLocal: false, isDefinition: true, variable: i16**** @imgUV_org_frm)
!635 = !DIGlobalVariable(name: "imgY_com", scope: !0, file: !4, line: 601, type: !476, isLocal: false, isDefinition: true, variable: i16*** @imgY_com)
!636 = !DIGlobalVariable(name: "imgUV_com", scope: !0, file: !4, line: 602, type: !479, isLocal: false, isDefinition: true, variable: i16**** @imgUV_com)
!637 = !DIGlobalVariable(name: "direct_ref_idx", scope: !0, file: !4, line: 604, type: !638, isLocal: false, isDefinition: true, variable: i16**** @direct_ref_idx)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64, align: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64, align: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64, align: 64)
!641 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!642 = !DIGlobalVariable(name: "direct_pdir", scope: !0, file: !4, line: 605, type: !639, isLocal: false, isDefinition: true, variable: i16*** @direct_pdir)
!643 = !DIGlobalVariable(name: "pixel_map", scope: !0, file: !4, line: 608, type: !644, isLocal: false, isDefinition: true, variable: i8*** @pixel_map)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!645 = !DIGlobalVariable(name: "refresh_map", scope: !0, file: !4, line: 609, type: !644, isLocal: false, isDefinition: true, variable: i8*** @refresh_map)
!646 = !DIGlobalVariable(name: "intras", scope: !0, file: !4, line: 610, type: !35, isLocal: false, isDefinition: true, variable: i32* @intras)
!647 = !DIGlobalVariable(name: "Iframe_ctr", scope: !0, file: !4, line: 612, type: !35, isLocal: false, isDefinition: true, variable: i32* @Iframe_ctr)
!648 = !DIGlobalVariable(name: "Pframe_ctr", scope: !0, file: !4, line: 612, type: !35, isLocal: false, isDefinition: true, variable: i32* @Pframe_ctr)
!649 = !DIGlobalVariable(name: "Bframe_ctr", scope: !0, file: !4, line: 612, type: !35, isLocal: false, isDefinition: true, variable: i32* @Bframe_ctr)
!650 = !DIGlobalVariable(name: "frame_no", scope: !0, file: !4, line: 613, type: !35, isLocal: false, isDefinition: true, variable: i32* @frame_no)
!651 = !DIGlobalVariable(name: "nextP_tr_fld", scope: !0, file: !4, line: 613, type: !35, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_fld)
!652 = !DIGlobalVariable(name: "nextP_tr_frm", scope: !0, file: !4, line: 613, type: !35, isLocal: false, isDefinition: true, variable: i32* @nextP_tr_frm)
!653 = !DIGlobalVariable(name: "tot_time", scope: !0, file: !4, line: 614, type: !35, isLocal: false, isDefinition: true, variable: i32* @tot_time)
!654 = !DIGlobalVariable(name: "errortext", scope: !0, file: !4, line: 617, type: !655, isLocal: false, isDefinition: true, variable: [300 x i8]* @errortext)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2400, align: 8, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 300)
!658 = !DIGlobalVariable(name: "resTrans_R", scope: !0, file: !4, line: 620, type: !659, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_R)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8192, align: 32, elements: !660)
!660 = !{!328, !328}
!661 = !DIGlobalVariable(name: "resTrans_G", scope: !0, file: !4, line: 620, type: !659, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_G)
!662 = !DIGlobalVariable(name: "resTrans_B", scope: !0, file: !4, line: 620, type: !659, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @resTrans_B)
!663 = !DIGlobalVariable(name: "rec_resR", scope: !0, file: !4, line: 621, type: !659, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resR)
!664 = !DIGlobalVariable(name: "rec_resG", scope: !0, file: !4, line: 621, type: !659, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resG)
!665 = !DIGlobalVariable(name: "rec_resB", scope: !0, file: !4, line: 621, type: !659, isLocal: false, isDefinition: true, variable: [16 x [16 x i32]]* @rec_resB)
!666 = !DIGlobalVariable(name: "mprRGB", scope: !0, file: !4, line: 622, type: !667, isLocal: false, isDefinition: true, variable: [3 x [16 x [16 x i32]]]* @mprRGB)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 24576, align: 32, elements: !668)
!668 = !{!345, !328, !328}
!669 = !DIGlobalVariable(name: "dc_level", scope: !0, file: !4, line: 623, type: !670, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1024, align: 32, elements: !671)
!671 = !{!319, !323, !323}
!672 = !DIGlobalVariable(name: "dc_level_temp", scope: !0, file: !4, line: 623, type: !670, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @dc_level_temp)
!673 = !DIGlobalVariable(name: "cbp_chroma_block", scope: !0, file: !4, line: 624, type: !670, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block)
!674 = !DIGlobalVariable(name: "cbp_chroma_block_temp", scope: !0, file: !4, line: 624, type: !670, isLocal: false, isDefinition: true, variable: [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp)
!675 = !DIGlobalVariable(name: "b8_ipredmode8x8", scope: !0, file: !4, line: 625, type: !676, isLocal: false, isDefinition: true, variable: [4 x [4 x i32]]* @b8_ipredmode8x8)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 512, align: 32, elements: !677)
!677 = !{!323, !323}
!678 = !DIGlobalVariable(name: "b8_intra_pred_modes8x8", scope: !0, file: !4, line: 625, type: !679, isLocal: false, isDefinition: true, variable: [16 x i32]* @b8_intra_pred_modes8x8)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 512, align: 32, elements: !327)
!680 = !DIGlobalVariable(name: "gop_structure", scope: !0, file: !4, line: 1201, type: !681, isLocal: false, isDefinition: true, variable: %struct.GOP_DATA** @gop_structure)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64, align: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOP_DATA", file: !4, line: 1190, baseType: !683)
!683 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 1182, size: 192, align: 32, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "slice_type", scope: !683, file: !4, line: 1184, baseType: !35, size: 32, align: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "display_no", scope: !683, file: !4, line: 1185, baseType: !35, size: 32, align: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "reference_idc", scope: !683, file: !4, line: 1186, baseType: !35, size: 32, align: 32, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "slice_qp", scope: !683, file: !4, line: 1187, baseType: !35, size: 32, align: 32, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "pyramid_layer", scope: !683, file: !4, line: 1188, baseType: !35, size: 32, align: 32, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "pyramidPocDelta", scope: !683, file: !4, line: 1189, baseType: !35, size: 32, align: 32, offset: 160)
!691 = !DIGlobalVariable(name: "rdopt", scope: !0, file: !4, line: 1202, type: !692, isLocal: false, isDefinition: true, variable: %struct.RD_DATA** @rdopt)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64, align: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "RD_DATA", file: !4, line: 1177, baseType: !694)
!694 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 1145, size: 26880, align: 64, elements: !695)
!695 = !{!696, !698, !699, !700, !701, !702, !703, !704, !705, !707, !708, !709, !710, !711, !716, !717, !721, !722, !723, !724, !726, !727, !728, !729, !730, !731, !732}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "min_rdcost", scope: !694, file: !4, line: 1147, baseType: !697, size: 64, align: 64)
!697 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbY", scope: !694, file: !4, line: 1149, baseType: !659, size: 8192, align: 32, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbU", scope: !694, file: !4, line: 1150, baseType: !659, size: 8192, align: 32, offset: 8256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rec_mbV", scope: !694, file: !4, line: 1150, baseType: !659, size: 8192, align: 32, offset: 16448)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "cofAC", scope: !694, file: !4, line: 1151, baseType: !624, size: 64, align: 64, offset: 24640)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "cofDC", scope: !694, file: !4, line: 1152, baseType: !621, size: 64, align: 64, offset: 24704)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !694, file: !4, line: 1153, baseType: !35, size: 32, align: 32, offset: 24768)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pred_me", scope: !694, file: !4, line: 1155, baseType: !35, size: 32, align: 32, offset: 24800)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "b8mode", scope: !694, file: !4, line: 1157, baseType: !706, size: 128, align: 32, offset: 24832)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, align: 32, elements: !322)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "b8pdir", scope: !694, file: !4, line: 1157, baseType: !706, size: 128, align: 32, offset: 24960)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ipredmode", scope: !694, file: !4, line: 1158, baseType: !481, size: 64, align: 64, offset: 25088)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "intra_pred_modes", scope: !694, file: !4, line: 1159, baseType: !679, size: 512, align: 32, offset: 25152)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !694, file: !4, line: 1160, baseType: !35, size: 32, align: 32, offset: 25664)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "cbp_blk", scope: !694, file: !4, line: 1161, baseType: !712, size: 64, align: 64, offset: 25728)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64", file: !4, line: 62, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !714, line: 30, baseType: !715)
!714 = !DIFile(filename: "/usr/include/sys/_types/_int64_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!715 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !694, file: !4, line: 1162, baseType: !35, size: 32, align: 32, offset: 25792)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pred_mv", scope: !694, file: !4, line: 1163, baseType: !718, size: 64, align: 64, offset: 25856)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64, align: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64, align: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64, align: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "all_mv", scope: !694, file: !4, line: 1164, baseType: !718, size: 64, align: 64, offset: 25920)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv1", scope: !694, file: !4, line: 1165, baseType: !718, size: 64, align: 64, offset: 25984)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_mv2", scope: !694, file: !4, line: 1166, baseType: !718, size: 64, align: 64, offset: 26048)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "refar", scope: !694, file: !4, line: 1167, baseType: !725, size: 512, align: 16, offset: 26112)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 512, align: 16, elements: !671)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i16offset", scope: !694, file: !4, line: 1168, baseType: !35, size: 32, align: 32, offset: 26624)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "c_ipred_mode", scope: !694, file: !4, line: 1169, baseType: !35, size: 32, align: 32, offset: 26656)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "luma_transform_size_8x8_flag", scope: !694, file: !4, line: 1171, baseType: !35, size: 32, align: 32, offset: 26688)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "NoMbPartLessThan8x8Flag", scope: !694, file: !4, line: 1172, baseType: !35, size: 32, align: 32, offset: 26720)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !694, file: !4, line: 1174, baseType: !35, size: 32, align: 32, offset: 26752)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "prev_qp", scope: !694, file: !4, line: 1175, baseType: !35, size: 32, align: 32, offset: 26784)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "prev_delta_qp", scope: !694, file: !4, line: 1176, baseType: !35, size: 32, align: 32, offset: 26816)
!733 = !DIGlobalVariable(name: "rddata_top_frame_mb", scope: !0, file: !4, line: 1203, type: !693, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_frame_mb)
!734 = !DIGlobalVariable(name: "rddata_bot_frame_mb", scope: !0, file: !4, line: 1203, type: !693, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_frame_mb)
!735 = !DIGlobalVariable(name: "rddata_top_field_mb", scope: !0, file: !4, line: 1204, type: !693, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_top_field_mb)
!736 = !DIGlobalVariable(name: "rddata_bot_field_mb", scope: !0, file: !4, line: 1204, type: !693, isLocal: false, isDefinition: true, variable: %struct.RD_DATA* @rddata_bot_field_mb)
!737 = !DIGlobalVariable(name: "p_stat", scope: !0, file: !4, line: 1230, type: !738, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_stat)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64, align: 64)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !740, line: 153, baseType: !741)
!740 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!741 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !740, line: 122, size: 1216, align: 64, elements: !742)
!742 = !{!743, !745, !746, !747, !748, !749, !754, !755, !756, !760, !764, !773, !779, !780, !783, !784, !786, !790, !791, !792}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !741, file: !740, line: 123, baseType: !744, size: 64, align: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !741, file: !740, line: 124, baseType: !35, size: 32, align: 32, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !741, file: !740, line: 125, baseType: !35, size: 32, align: 32, offset: 96)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !741, file: !740, line: 126, baseType: !641, size: 16, align: 16, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !741, file: !740, line: 127, baseType: !641, size: 16, align: 16, offset: 144)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !741, file: !740, line: 128, baseType: !750, size: 128, align: 64, offset: 192)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !740, line: 88, size: 128, align: 64, elements: !751)
!751 = !{!752, !753}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !750, file: !740, line: 89, baseType: !744, size: 64, align: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !750, file: !740, line: 90, baseType: !35, size: 32, align: 32, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !741, file: !740, line: 129, baseType: !35, size: 32, align: 32, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !741, file: !740, line: 132, baseType: !34, size: 64, align: 64, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !741, file: !740, line: 133, baseType: !757, size: 64, align: 64, offset: 448)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64, align: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!35, !34}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !741, file: !740, line: 134, baseType: !761, size: 64, align: 64, offset: 512)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64, align: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!35, !34, !40, !35}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !741, file: !740, line: 135, baseType: !765, size: 64, align: 64, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64, align: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!768, !34, !768, !35}
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !740, line: 77, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !770, line: 71, baseType: !771)
!770 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !772, line: 46, baseType: !715)
!772 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !741, file: !740, line: 136, baseType: !774, size: 64, align: 64, offset: 640)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64, align: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!35, !34, !777, !35}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64, align: 64)
!778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !741, file: !740, line: 139, baseType: !750, size: 128, align: 64, offset: 704)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !741, file: !740, line: 140, baseType: !781, size: 64, align: 64, offset: 832)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64, align: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !740, line: 94, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !741, file: !740, line: 141, baseType: !35, size: 32, align: 32, offset: 896)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !741, file: !740, line: 144, baseType: !785, size: 24, align: 8, offset: 928)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 24, align: 8, elements: !413)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !741, file: !740, line: 145, baseType: !787, size: 8, align: 8, offset: 952)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 8, align: 8, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 1)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !741, file: !740, line: 148, baseType: !750, size: 128, align: 64, offset: 960)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !741, file: !740, line: 151, baseType: !35, size: 32, align: 32, offset: 1088)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !741, file: !740, line: 152, baseType: !768, size: 64, align: 64, offset: 1152)
!793 = !DIGlobalVariable(name: "p_log", scope: !0, file: !4, line: 1231, type: !738, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_log)
!794 = !DIGlobalVariable(name: "p_trace", scope: !0, file: !4, line: 1232, type: !738, isLocal: false, isDefinition: true, variable: %struct.__sFILE** @p_trace)
!795 = !DIGlobalVariable(name: "p_in", scope: !0, file: !4, line: 1233, type: !35, isLocal: false, isDefinition: true, variable: i32* @p_in)
!796 = !DIGlobalVariable(name: "p_dec", scope: !0, file: !4, line: 1234, type: !35, isLocal: false, isDefinition: true, variable: i32* @p_dec)
!797 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l0", scope: !0, file: !4, line: 1237, type: !798, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l0)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, align: 32, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 20)
!801 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l0", scope: !0, file: !4, line: 1238, type: !798, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l0)
!802 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l0", scope: !0, file: !4, line: 1239, type: !798, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l0)
!803 = !DIGlobalVariable(name: "glob_remapping_of_pic_nums_idc_l1", scope: !0, file: !4, line: 1240, type: !798, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_remapping_of_pic_nums_idc_l1)
!804 = !DIGlobalVariable(name: "glob_abs_diff_pic_num_minus1_l1", scope: !0, file: !4, line: 1241, type: !798, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_abs_diff_pic_num_minus1_l1)
!805 = !DIGlobalVariable(name: "glob_long_term_pic_idx_l1", scope: !0, file: !4, line: 1242, type: !798, isLocal: false, isDefinition: true, variable: [20 x i32]* @glob_long_term_pic_idx_l1)
!806 = !DIGlobalVariable(name: "Bytes_After_Header", scope: !0, file: !4, line: 1456, type: !35, isLocal: false, isDefinition: true, variable: i32* @Bytes_After_Header)
!807 = !DIGlobalVariable(name: "rpc_bytes_to_go", scope: !0, file: !4, line: 1465, type: !35, isLocal: false, isDefinition: true, variable: i32* @rpc_bytes_to_go)
!808 = !DIGlobalVariable(name: "rpc_bits_to_go", scope: !0, file: !4, line: 1466, type: !35, isLocal: false, isDefinition: true, variable: i32* @rpc_bits_to_go)
!809 = !{}
!810 = !{i32 2, !"Dwarf Version", i32 2}
!811 = !{i32 2, !"Debug Info Version", i32 700000003}
!812 = !{i32 1, !"PIC Level", i32 2}
!813 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!814 = !DIExpression()
!815 = !DILocation(line: 58, column: 17, scope: !37)
!816 = !DILocation(line: 58, column: 34, scope: !37)
!817 = !DILocation(line: 58, column: 56, scope: !37)
!818 = !DILocation(line: 60, column: 3, scope: !37)
!819 = !DILocation(line: 60, column: 26, scope: !37)
!820 = !DILocation(line: 61, column: 8, scope: !37)
!821 = !DILocation(line: 61, column: 13, scope: !37)
!822 = !{!823, !824, i64 0}
!823 = !{!"syntaxelement", !824, i64 0, !824, i64 4, !824, i64 8, !824, i64 12, !824, i64 16, !824, i64 20, !824, i64 24, !824, i64 28, !827, i64 32, !827, i64 40}
!824 = !{!"int", !825, i64 0}
!825 = !{!"omnipotent char", !826, i64 0}
!826 = !{!"Simple C/C++ TBAA"}
!827 = !{!"any pointer", !825, i64 0}
!828 = !DILocation(line: 62, column: 8, scope: !37)
!829 = !DILocation(line: 62, column: 16, scope: !37)
!830 = !{!823, !827, i64 32}
!831 = !DILocation(line: 63, column: 8, scope: !37)
!832 = !DILocation(line: 63, column: 15, scope: !37)
!833 = !{!823, !824, i64 4}
!834 = !DILocation(line: 64, column: 8, scope: !37)
!835 = !DILocation(line: 64, column: 15, scope: !37)
!836 = !{!823, !824, i64 8}
!837 = !DILocation(line: 68, column: 3, scope: !37)
!838 = !{!839, !827, i64 0}
!839 = !{!"datapartition", !827, i64 0, !840, i64 8, !827, i64 112}
!840 = !{!"", !824, i64 0, !824, i64 4, !824, i64 8, !824, i64 12, !824, i64 16, !827, i64 24, !827, i64 32, !824, i64 40, !824, i64 44, !824, i64 48, !824, i64 52, !824, i64 56, !827, i64 64, !827, i64 72, !824, i64 80, !824, i64 84, !824, i64 88, !824, i64 92, !824, i64 96, !824, i64 100}
!841 = !{!842, !827, i64 32}
!842 = !{!"", !824, i64 0, !824, i64 4, !825, i64 8, !824, i64 12, !824, i64 16, !825, i64 20, !825, i64 21, !824, i64 24, !824, i64 28, !827, i64 32, !824, i64 40}
!843 = !{!"branch_weights", i32 4, i32 64}
!844 = !DILocation(line: 60, column: 17, scope: !37)
!845 = !DILocation(line: 69, column: 10, scope: !37)
!846 = !DILocation(line: 70, column: 1, scope: !37)
!847 = !DILocation(line: 209, column: 19, scope: !150)
!848 = !DILocation(line: 209, column: 27, scope: !150)
!849 = !DILocation(line: 209, column: 39, scope: !150)
!850 = !DILocation(line: 209, column: 48, scope: !150)
!851 = !DILocation(line: 213, column: 9, scope: !150)
!852 = !DILocation(line: 211, column: 7, scope: !150)
!853 = !DILocation(line: 215, column: 26, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !1, line: 215, column: 3)
!855 = distinct !DILexicalBlock(scope: !150, file: !1, line: 215, column: 3)
!856 = !DILocation(line: 215, column: 20, scope: !854)
!857 = !DILocation(line: 213, column: 12, scope: !150)
!858 = !DILocation(line: 215, column: 33, scope: !854)
!859 = !DILocation(line: 215, column: 15, scope: !854)
!860 = !DILocation(line: 219, column: 10, scope: !150)
!861 = !DILocation(line: 219, column: 13, scope: !150)
!862 = !DILocation(line: 219, column: 7, scope: !150)
!863 = !{!824, !824, i64 0}
!864 = !DILocation(line: 220, column: 19, scope: !150)
!865 = !DILocation(line: 220, column: 14, scope: !150)
!866 = !DILocation(line: 220, column: 13, scope: !150)
!867 = !DILocation(line: 220, column: 8, scope: !150)
!868 = !DILocation(line: 221, column: 1, scope: !150)
!869 = !DILocation(line: 504, column: 44, scope: !219)
!870 = !DILocation(line: 504, column: 63, scope: !219)
!871 = !DILocation(line: 506, column: 7, scope: !219)
!872 = !DILocation(line: 506, column: 19, scope: !219)
!873 = !DILocation(line: 506, column: 30, scope: !219)
!874 = !DILocation(line: 506, column: 43, scope: !219)
!875 = !DILocation(line: 506, column: 54, scope: !219)
!876 = !DILocation(line: 506, column: 3, scope: !219)
!877 = !DILocation(line: 490, column: 32, scope: !213, inlinedAt: !878)
!878 = distinct !DILocation(line: 507, column: 3, scope: !219)
!879 = !DILocation(line: 492, column: 23, scope: !213, inlinedAt: !878)
!880 = !{!823, !824, i64 12}
!881 = !DILocation(line: 492, column: 26, scope: !213, inlinedAt: !878)
!882 = !DILocation(line: 492, column: 7, scope: !213, inlinedAt: !878)
!883 = !DILocation(line: 493, column: 23, scope: !213, inlinedAt: !878)
!884 = !DILocation(line: 493, column: 43, scope: !213, inlinedAt: !878)
!885 = !{!823, !824, i64 16}
!886 = !DILocation(line: 493, column: 63, scope: !213, inlinedAt: !878)
!887 = !DILocation(line: 493, column: 46, scope: !213, inlinedAt: !878)
!888 = !DILocation(line: 493, column: 36, scope: !213, inlinedAt: !878)
!889 = !DILocation(line: 493, column: 8, scope: !213, inlinedAt: !878)
!890 = !DILocation(line: 493, column: 19, scope: !213, inlinedAt: !878)
!891 = !{!823, !824, i64 20}
!892 = !DILocation(line: 509, column: 39, scope: !219)
!893 = !DILocation(line: 509, column: 3, scope: !219)
!894 = !DILocation(line: 511, column: 10, scope: !895)
!895 = distinct !DILexicalBlock(scope: !219, file: !1, line: 511, column: 6)
!896 = !DILocation(line: 511, column: 15, scope: !895)
!897 = !DILocation(line: 511, column: 6, scope: !219)
!898 = !DILocation(line: 512, column: 20, scope: !895)
!899 = !DILocation(line: 512, column: 31, scope: !895)
!900 = !DILocation(line: 512, column: 42, scope: !895)
!901 = !{!842, !824, i64 40}
!902 = !DILocation(line: 512, column: 5, scope: !895)
!903 = !DILocation(line: 519, column: 15, scope: !219)
!904 = !DILocation(line: 519, column: 3, scope: !219)
!905 = !DILocation(line: 96, column: 17, scope: !126)
!906 = !DILocation(line: 96, column: 34, scope: !126)
!907 = !DILocation(line: 96, column: 56, scope: !126)
!908 = !DILocation(line: 98, column: 3, scope: !126)
!909 = !DILocation(line: 98, column: 26, scope: !126)
!910 = !DILocation(line: 99, column: 8, scope: !126)
!911 = !DILocation(line: 99, column: 13, scope: !126)
!912 = !DILocation(line: 100, column: 8, scope: !126)
!913 = !DILocation(line: 100, column: 16, scope: !126)
!914 = !DILocation(line: 101, column: 8, scope: !126)
!915 = !DILocation(line: 101, column: 15, scope: !126)
!916 = !DILocation(line: 102, column: 8, scope: !126)
!917 = !DILocation(line: 102, column: 15, scope: !126)
!918 = !DILocation(line: 106, column: 3, scope: !126)
!919 = !DILocation(line: 98, column: 17, scope: !126)
!920 = !DILocation(line: 107, column: 10, scope: !126)
!921 = !DILocation(line: 108, column: 1, scope: !126)
!922 = !DILocation(line: 238, column: 19, scope: !158)
!923 = !DILocation(line: 238, column: 27, scope: !158)
!924 = !DILocation(line: 238, column: 39, scope: !158)
!925 = !DILocation(line: 238, column: 48, scope: !158)
!926 = !DILocation(line: 241, column: 11, scope: !158)
!927 = !DILocation(line: 245, column: 10, scope: !928)
!928 = distinct !DILexicalBlock(scope: !158, file: !1, line: 245, column: 7)
!929 = !DILocation(line: 245, column: 7, scope: !158)
!930 = !DILocation(line: 249, column: 5, scope: !158)
!931 = !DILocation(line: 249, column: 13, scope: !158)
!932 = !DILocation(line: 241, column: 9, scope: !158)
!933 = !DILocation(line: 241, column: 7, scope: !158)
!934 = !DILocation(line: 256, column: 26, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !1, line: 256, column: 3)
!936 = distinct !DILexicalBlock(scope: !158, file: !1, line: 256, column: 3)
!937 = !DILocation(line: 256, column: 20, scope: !935)
!938 = !DILocation(line: 255, column: 7, scope: !158)
!939 = !DILocation(line: 256, column: 33, scope: !935)
!940 = !DILocation(line: 256, column: 15, scope: !935)
!941 = !DILocation(line: 260, column: 9, scope: !158)
!942 = !DILocation(line: 260, column: 12, scope: !158)
!943 = !DILocation(line: 260, column: 7, scope: !158)
!944 = !DILocation(line: 261, column: 18, scope: !158)
!945 = !DILocation(line: 261, column: 13, scope: !158)
!946 = !DILocation(line: 261, column: 11, scope: !158)
!947 = !DILocation(line: 261, column: 27, scope: !158)
!948 = !DILocation(line: 261, column: 8, scope: !158)
!949 = !DILocation(line: 262, column: 1, scope: !158)
!950 = !DILocation(line: 135, column: 16, scope: !133)
!951 = !DILocation(line: 135, column: 33, scope: !133)
!952 = !DILocation(line: 135, column: 55, scope: !133)
!953 = !DILocation(line: 137, column: 3, scope: !133)
!954 = !DILocation(line: 137, column: 26, scope: !133)
!955 = !DILocation(line: 139, column: 8, scope: !133)
!956 = !DILocation(line: 139, column: 19, scope: !133)
!957 = !DILocation(line: 140, column: 8, scope: !133)
!958 = !DILocation(line: 140, column: 12, scope: !133)
!959 = !DILocation(line: 141, column: 8, scope: !133)
!960 = !DILocation(line: 141, column: 13, scope: !133)
!961 = !DILocation(line: 142, column: 8, scope: !133)
!962 = !DILocation(line: 142, column: 15, scope: !133)
!963 = !DILocation(line: 143, column: 8, scope: !133)
!964 = !DILocation(line: 143, column: 15, scope: !133)
!965 = !DILocation(line: 147, column: 3, scope: !133)
!966 = !DILocation(line: 137, column: 17, scope: !133)
!967 = !DILocation(line: 529, column: 45, scope: !225, inlinedAt: !968)
!968 = distinct !DILocation(line: 148, column: 10, scope: !133)
!969 = !DILocation(line: 529, column: 64, scope: !225, inlinedAt: !968)
!970 = !DILocation(line: 531, column: 3, scope: !225, inlinedAt: !968)
!971 = !DILocation(line: 149, column: 1, scope: !133)
!972 = !DILocation(line: 529, column: 45, scope: !225)
!973 = !DILocation(line: 529, column: 64, scope: !225)
!974 = !DILocation(line: 531, column: 39, scope: !225)
!975 = !DILocation(line: 531, column: 3, scope: !225)
!976 = !DILocation(line: 533, column: 10, scope: !977)
!977 = distinct !DILexicalBlock(scope: !225, file: !1, line: 533, column: 6)
!978 = !DILocation(line: 533, column: 15, scope: !977)
!979 = !DILocation(line: 533, column: 6, scope: !225)
!980 = !DILocation(line: 534, column: 20, scope: !977)
!981 = !DILocation(line: 534, column: 31, scope: !977)
!982 = !DILocation(line: 534, column: 42, scope: !977)
!983 = !DILocation(line: 534, column: 5, scope: !977)
!984 = !DILocation(line: 541, column: 15, scope: !225)
!985 = !DILocation(line: 541, column: 3, scope: !225)
!986 = !DILocation(line: 178, column: 14, scope: !140)
!987 = !DILocation(line: 178, column: 23, scope: !140)
!988 = !DILocation(line: 178, column: 40, scope: !140)
!989 = !DILocation(line: 178, column: 62, scope: !140)
!990 = !DILocation(line: 180, column: 3, scope: !140)
!991 = !DILocation(line: 180, column: 26, scope: !140)
!992 = !DILocation(line: 182, column: 8, scope: !140)
!993 = !DILocation(line: 182, column: 19, scope: !140)
!994 = !DILocation(line: 183, column: 8, scope: !140)
!995 = !DILocation(line: 183, column: 12, scope: !140)
!996 = !DILocation(line: 184, column: 8, scope: !140)
!997 = !DILocation(line: 184, column: 13, scope: !140)
!998 = !DILocation(line: 185, column: 8, scope: !140)
!999 = !DILocation(line: 185, column: 15, scope: !140)
!1000 = !DILocation(line: 186, column: 8, scope: !140)
!1001 = !DILocation(line: 186, column: 15, scope: !140)
!1002 = !DILocation(line: 190, column: 3, scope: !140)
!1003 = !DILocation(line: 180, column: 17, scope: !140)
!1004 = !DILocation(line: 529, column: 45, scope: !225, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 191, column: 10, scope: !140)
!1006 = !DILocation(line: 529, column: 64, scope: !225, inlinedAt: !1005)
!1007 = !DILocation(line: 531, column: 3, scope: !225, inlinedAt: !1005)
!1008 = !DILocation(line: 192, column: 1, scope: !140)
!1009 = !DILocation(line: 273, column: 26, scope: !168)
!1010 = !DILocation(line: 273, column: 35, scope: !168)
!1011 = !DILocation(line: 273, column: 47, scope: !168)
!1012 = !DILocation(line: 273, column: 56, scope: !168)
!1013 = !DILocation(line: 276, column: 12, scope: !168)
!1014 = !DILocation(line: 276, column: 17, scope: !168)
!1015 = !{!827, !827, i64 0}
!1016 = !DILocation(line: 276, column: 22, scope: !168)
!1017 = !{!1018, !824, i64 72700}
!1018 = !{!"", !824, i64 0, !824, i64 4, !824, i64 8, !824, i64 12, !824, i64 16, !824, i64 20, !824, i64 24, !824, i64 28, !824, i64 32, !824, i64 36, !824, i64 40, !824, i64 44, !1019, i64 48, !824, i64 52, !824, i64 56, !824, i64 60, !824, i64 64, !824, i64 68, !824, i64 72, !824, i64 76, !824, i64 80, !824, i64 84, !824, i64 88, !824, i64 92, !824, i64 96, !827, i64 104, !827, i64 112, !824, i64 120, !827, i64 128, !824, i64 136, !824, i64 140, !824, i64 144, !824, i64 148, !824, i64 152, !824, i64 156, !824, i64 160, !824, i64 164, !824, i64 168, !824, i64 172, !824, i64 176, !824, i64 180, !825, i64 184, !825, i64 4792, !825, i64 7352, !825, i64 8504, !825, i64 12600, !825, i64 13112, !827, i64 14136, !827, i64 14144, !827, i64 14152, !827, i64 14160, !827, i64 14168, !825, i64 14176, !827, i64 71776, !827, i64 71784, !824, i64 71792, !824, i64 71796, !824, i64 71800, !824, i64 71804, !825, i64 71808, !824, i64 71872, !824, i64 71876, !824, i64 71880, !824, i64 71884, !824, i64 71888, !1020, i64 71896, !824, i64 71904, !824, i64 71908, !824, i64 71912, !824, i64 71916, !827, i64 71920, !827, i64 71928, !827, i64 71936, !827, i64 71944, !825, i64 71952, !824, i64 71984, !824, i64 71988, !824, i64 71992, !824, i64 71996, !824, i64 72000, !824, i64 72004, !824, i64 72008, !824, i64 72012, !825, i64 72016, !824, i64 72376, !824, i64 72380, !824, i64 72384, !824, i64 72388, !824, i64 72392, !824, i64 72396, !824, i64 72400, !824, i64 72404, !824, i64 72408, !824, i64 72412, !824, i64 72416, !824, i64 72420, !825, i64 72424, !824, i64 72428, !824, i64 72432, !825, i64 72436, !824, i64 72444, !824, i64 72448, !824, i64 72452, !824, i64 72456, !824, i64 72460, !824, i64 72464, !824, i64 72468, !824, i64 72472, !824, i64 72476, !824, i64 72480, !824, i64 72484, !824, i64 72488, !824, i64 72492, !824, i64 72496, !824, i64 72500, !824, i64 72504, !824, i64 72508, !827, i64 72512, !824, i64 72520, !824, i64 72524, !824, i64 72528, !824, i64 72532, !824, i64 72536, !1020, i64 72544, !824, i64 72552, !824, i64 72556, !824, i64 72560, !824, i64 72564, !824, i64 72568, !824, i64 72572, !824, i64 72576, !827, i64 72584, !824, i64 72592, !824, i64 72596, !824, i64 72600, !824, i64 72604, !824, i64 72608, !824, i64 72612, !824, i64 72616, !824, i64 72620, !824, i64 72624, !824, i64 72628, !824, i64 72632, !824, i64 72636, !824, i64 72640, !824, i64 72644, !824, i64 72648, !824, i64 72652, !824, i64 72656, !824, i64 72660, !824, i64 72664, !824, i64 72668, !824, i64 72672, !824, i64 72676, !824, i64 72680, !824, i64 72684, !824, i64 72688, !824, i64 72692, !824, i64 72696, !824, i64 72700, !824, i64 72704, !824, i64 72708, !824, i64 72712, !825, i64 72716, !824, i64 72724, !824, i64 72728, !824, i64 72732}
!1019 = !{!"float", !825, i64 0}
!1020 = !{!"double", !825, i64 0}
!1021 = !{!825, !825, i64 0}
!1022 = !DILocation(line: 276, column: 3, scope: !168)
!1023 = !DILocation(line: 277, column: 1, scope: !168)
!1024 = !DILocation(line: 288, column: 26, scope: !174)
!1025 = !DILocation(line: 288, column: 35, scope: !174)
!1026 = !DILocation(line: 288, column: 47, scope: !174)
!1027 = !DILocation(line: 288, column: 56, scope: !174)
!1028 = !DILocation(line: 291, column: 12, scope: !174)
!1029 = !DILocation(line: 291, column: 17, scope: !174)
!1030 = !DILocation(line: 291, column: 22, scope: !174)
!1031 = !DILocation(line: 291, column: 3, scope: !174)
!1032 = !DILocation(line: 292, column: 1, scope: !174)
!1033 = !DILocation(line: 307, column: 28, scope: !180)
!1034 = !DILocation(line: 307, column: 38, scope: !180)
!1035 = !DILocation(line: 307, column: 47, scope: !180)
!1036 = !DILocation(line: 307, column: 56, scope: !180)
!1037 = !DILocation(line: 321, column: 13, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !180, file: !1, line: 321, column: 7)
!1039 = !DILocation(line: 321, column: 7, scope: !180)
!1040 = !DILocation(line: 323, column: 9, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 322, column: 3)
!1042 = !DILocation(line: 324, column: 5, scope: !1041)
!1043 = !DILocation(line: 319, column: 18, scope: !180)
!1044 = !DILocation(line: 327, column: 13, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !180, file: !1, line: 327, column: 7)
!1046 = !DILocation(line: 327, column: 7, scope: !180)
!1047 = !DILocation(line: 331, column: 10, scope: !180)
!1048 = !DILocation(line: 319, column: 7, scope: !180)
!1049 = !DILocation(line: 332, column: 17, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !180, file: !1, line: 332, column: 7)
!1051 = !DILocation(line: 332, column: 14, scope: !1050)
!1052 = !DILocation(line: 332, column: 7, scope: !180)
!1053 = !DILocation(line: 334, column: 18, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 333, column: 3)
!1055 = !DILocation(line: 334, column: 7, scope: !1054)
!1056 = !DILocation(line: 334, column: 26, scope: !1054)
!1057 = !DILocation(line: 319, column: 16, scope: !180)
!1058 = !DILocation(line: 335, column: 3, scope: !1054)
!1059 = !DILocation(line: 338, column: 14, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 337, column: 3)
!1061 = !DILocation(line: 338, column: 27, scope: !1060)
!1062 = !DILocation(line: 338, column: 35, scope: !1060)
!1063 = !DILocation(line: 338, column: 30, scope: !1060)
!1064 = !DILocation(line: 319, column: 14, scope: !180)
!1065 = !DILocation(line: 343, column: 26, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 343, column: 3)
!1067 = distinct !DILexicalBlock(scope: !180, file: !1, line: 343, column: 3)
!1068 = !DILocation(line: 343, column: 20, scope: !1066)
!1069 = !DILocation(line: 341, column: 7, scope: !180)
!1070 = !DILocation(line: 343, column: 33, scope: !1066)
!1071 = !DILocation(line: 343, column: 15, scope: !1066)
!1072 = !DILocation(line: 347, column: 10, scope: !180)
!1073 = !DILocation(line: 347, column: 13, scope: !180)
!1074 = !DILocation(line: 347, column: 7, scope: !180)
!1075 = !DILocation(line: 348, column: 16, scope: !180)
!1076 = !DILocation(line: 348, column: 11, scope: !180)
!1077 = !DILocation(line: 348, column: 10, scope: !180)
!1078 = !DILocation(line: 348, column: 24, scope: !180)
!1079 = !DILocation(line: 348, column: 8, scope: !180)
!1080 = !DILocation(line: 349, column: 1, scope: !180)
!1081 = !DILocation(line: 364, column: 29, scope: !191)
!1082 = !DILocation(line: 364, column: 39, scope: !191)
!1083 = !DILocation(line: 364, column: 48, scope: !191)
!1084 = !DILocation(line: 364, column: 57, scope: !191)
!1085 = !DILocation(line: 380, column: 13, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !191, file: !1, line: 380, column: 7)
!1087 = !DILocation(line: 380, column: 7, scope: !191)
!1088 = !DILocation(line: 382, column: 9, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 381, column: 3)
!1090 = !DILocation(line: 383, column: 5, scope: !1089)
!1091 = !DILocation(line: 386, column: 13, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !191, file: !1, line: 386, column: 7)
!1093 = !DILocation(line: 387, column: 5, scope: !1092)
!1094 = !DILocation(line: 391, column: 10, scope: !191)
!1095 = !DILocation(line: 378, column: 7, scope: !191)
!1096 = !DILocation(line: 392, column: 17, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !191, file: !1, line: 392, column: 7)
!1098 = !DILocation(line: 392, column: 14, scope: !1097)
!1099 = !DILocation(line: 392, column: 7, scope: !191)
!1100 = !DILocation(line: 394, column: 18, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 393, column: 3)
!1102 = !DILocation(line: 394, column: 7, scope: !1101)
!1103 = !DILocation(line: 394, column: 26, scope: !1101)
!1104 = !DILocation(line: 378, column: 16, scope: !191)
!1105 = !DILocation(line: 395, column: 3, scope: !1101)
!1106 = !DILocation(line: 398, column: 14, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 397, column: 3)
!1108 = !DILocation(line: 398, column: 27, scope: !1107)
!1109 = !DILocation(line: 398, column: 36, scope: !1107)
!1110 = !DILocation(line: 398, column: 31, scope: !1107)
!1111 = !DILocation(line: 378, column: 14, scope: !191)
!1112 = !DILocation(line: 403, column: 26, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 403, column: 3)
!1114 = distinct !DILexicalBlock(scope: !191, file: !1, line: 403, column: 3)
!1115 = !DILocation(line: 403, column: 20, scope: !1113)
!1116 = !DILocation(line: 401, column: 7, scope: !191)
!1117 = !DILocation(line: 403, column: 33, scope: !1113)
!1118 = !DILocation(line: 403, column: 15, scope: !1113)
!1119 = !DILocation(line: 407, column: 10, scope: !191)
!1120 = !DILocation(line: 407, column: 13, scope: !191)
!1121 = !DILocation(line: 407, column: 7, scope: !191)
!1122 = !DILocation(line: 408, column: 16, scope: !191)
!1123 = !DILocation(line: 408, column: 11, scope: !191)
!1124 = !DILocation(line: 408, column: 10, scope: !191)
!1125 = !DILocation(line: 408, column: 24, scope: !191)
!1126 = !DILocation(line: 408, column: 8, scope: !191)
!1127 = !DILocation(line: 410, column: 1, scope: !191)
!1128 = !DILocation(line: 425, column: 29, scope: !202)
!1129 = !DILocation(line: 425, column: 39, scope: !202)
!1130 = !DILocation(line: 425, column: 48, scope: !202)
!1131 = !DILocation(line: 425, column: 57, scope: !202)
!1132 = !DILocation(line: 447, column: 13, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !202, file: !1, line: 447, column: 7)
!1134 = !DILocation(line: 447, column: 7, scope: !202)
!1135 = !DILocation(line: 449, column: 9, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 448, column: 3)
!1137 = !DILocation(line: 450, column: 5, scope: !1136)
!1138 = !DILocation(line: 452, column: 13, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !202, file: !1, line: 452, column: 7)
!1140 = !DILocation(line: 453, column: 5, scope: !1139)
!1141 = !DILocation(line: 457, column: 10, scope: !202)
!1142 = !DILocation(line: 445, column: 7, scope: !202)
!1143 = !DILocation(line: 458, column: 17, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !202, file: !1, line: 458, column: 7)
!1145 = !DILocation(line: 458, column: 14, scope: !1144)
!1146 = !DILocation(line: 458, column: 7, scope: !202)
!1147 = !DILocation(line: 460, column: 18, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 459, column: 3)
!1149 = !DILocation(line: 460, column: 7, scope: !1148)
!1150 = !DILocation(line: 460, column: 26, scope: !1148)
!1151 = !DILocation(line: 445, column: 16, scope: !202)
!1152 = !DILocation(line: 461, column: 3, scope: !1148)
!1153 = !DILocation(line: 464, column: 14, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 463, column: 3)
!1155 = !DILocation(line: 464, column: 27, scope: !1154)
!1156 = !DILocation(line: 464, column: 41, scope: !1154)
!1157 = !DILocation(line: 464, column: 31, scope: !1154)
!1158 = !DILocation(line: 464, column: 36, scope: !1154)
!1159 = !DILocation(line: 445, column: 14, scope: !202)
!1160 = !DILocation(line: 469, column: 26, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 469, column: 3)
!1162 = distinct !DILexicalBlock(scope: !202, file: !1, line: 469, column: 3)
!1163 = !DILocation(line: 469, column: 20, scope: !1161)
!1164 = !DILocation(line: 467, column: 7, scope: !202)
!1165 = !DILocation(line: 469, column: 33, scope: !1161)
!1166 = !DILocation(line: 469, column: 15, scope: !1161)
!1167 = !DILocation(line: 473, column: 10, scope: !202)
!1168 = !DILocation(line: 473, column: 13, scope: !202)
!1169 = !DILocation(line: 473, column: 7, scope: !202)
!1170 = !DILocation(line: 474, column: 16, scope: !202)
!1171 = !DILocation(line: 474, column: 11, scope: !202)
!1172 = !DILocation(line: 474, column: 10, scope: !202)
!1173 = !DILocation(line: 474, column: 24, scope: !202)
!1174 = !DILocation(line: 474, column: 8, scope: !202)
!1175 = !DILocation(line: 475, column: 1, scope: !202)
!1176 = !DILocation(line: 490, column: 32, scope: !213)
!1177 = !DILocation(line: 492, column: 23, scope: !213)
!1178 = !DILocation(line: 492, column: 26, scope: !213)
!1179 = !DILocation(line: 492, column: 7, scope: !213)
!1180 = !DILocation(line: 493, column: 23, scope: !213)
!1181 = !DILocation(line: 493, column: 43, scope: !213)
!1182 = !DILocation(line: 493, column: 63, scope: !213)
!1183 = !DILocation(line: 493, column: 46, scope: !213)
!1184 = !DILocation(line: 493, column: 36, scope: !213)
!1185 = !DILocation(line: 493, column: 8, scope: !213)
!1186 = !DILocation(line: 493, column: 19, scope: !213)
!1187 = !DILocation(line: 494, column: 3, scope: !213)
!1188 = !DILocation(line: 612, column: 39, scope: !239)
!1189 = !DILocation(line: 612, column: 54, scope: !239)
!1190 = !DILocation(line: 616, column: 33, scope: !239)
!1191 = !DILocation(line: 616, column: 16, scope: !239)
!1192 = !DILocation(line: 615, column: 7, scope: !239)
!1193 = !DILocation(line: 620, column: 19, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !1, line: 620, column: 3)
!1195 = distinct !DILexicalBlock(scope: !239, file: !1, line: 620, column: 3)
!1196 = !DILocation(line: 620, column: 14, scope: !1194)
!1197 = !DILocation(line: 620, column: 3, scope: !1195)
!1198 = !DILocation(line: 616, column: 36, scope: !239)
!1199 = !DILocation(line: 616, column: 25, scope: !239)
!1200 = !DILocation(line: 622, column: 17, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 621, column: 3)
!1202 = !DILocation(line: 623, column: 13, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 623, column: 9)
!1204 = !DILocation(line: 625, column: 17, scope: !1201)
!1205 = !DILocation(line: 630, column: 44, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !1, line: 628, column: 5)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 627, column: 9)
!1208 = !DILocation(line: 630, column: 19, scope: !1206)
!1209 = !DILocation(line: 622, column: 26, scope: !1201)
!1210 = !{!842, !825, i64 8}
!1211 = !DILocation(line: 623, column: 24, scope: !1203)
!1212 = !DILocation(line: 623, column: 9, scope: !1201)
!1213 = !DILocation(line: 624, column: 28, scope: !1203)
!1214 = !DILocation(line: 624, column: 7, scope: !1203)
!1215 = !DILocation(line: 625, column: 27, scope: !1201)
!1216 = !{!842, !824, i64 4}
!1217 = !DILocation(line: 626, column: 10, scope: !1201)
!1218 = !DILocation(line: 627, column: 31, scope: !1207)
!1219 = !DILocation(line: 627, column: 9, scope: !1201)
!1220 = !DILocation(line: 629, column: 30, scope: !1206)
!1221 = !DILocation(line: 630, column: 52, scope: !1206)
!1222 = !{!842, !824, i64 0}
!1223 = !DILocation(line: 630, column: 7, scope: !1206)
!1224 = !DILocation(line: 630, column: 55, scope: !1206)
!1225 = !DILocation(line: 631, column: 28, scope: !1206)
!1226 = !DILocation(line: 632, column: 5, scope: !1206)
!1227 = !DILocation(line: 620, column: 25, scope: !1194)
!1228 = !DILocation(line: 634, column: 1, scope: !239)
!1229 = !DILocation(line: 551, column: 62, scope: !229)
!1230 = !DILocation(line: 551, column: 81, scope: !229)
!1231 = !DILocation(line: 554, column: 11, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !229, file: !1, line: 554, column: 7)
!1233 = !DILocation(line: 554, column: 18, scope: !1232)
!1234 = !DILocation(line: 556, column: 9, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !1, line: 555, column: 3)
!1236 = !DILocation(line: 554, column: 7, scope: !229)
!1237 = !DILocation(line: 556, column: 13, scope: !1235)
!1238 = !DILocation(line: 562, column: 9, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1232, file: !1, line: 560, column: 3)
!1240 = !DILocation(line: 565, column: 7, scope: !229)
!1241 = !DILocation(line: 565, column: 18, scope: !229)
!1242 = !DILocation(line: 566, column: 39, scope: !229)
!1243 = !DILocation(line: 566, column: 3, scope: !229)
!1244 = !DILocation(line: 568, column: 10, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !229, file: !1, line: 568, column: 6)
!1246 = !DILocation(line: 568, column: 15, scope: !1245)
!1247 = !DILocation(line: 568, column: 6, scope: !229)
!1248 = !DILocation(line: 569, column: 20, scope: !1245)
!1249 = !DILocation(line: 569, column: 31, scope: !1245)
!1250 = !DILocation(line: 569, column: 42, scope: !1245)
!1251 = !DILocation(line: 569, column: 5, scope: !1245)
!1252 = !DILocation(line: 576, column: 15, scope: !229)
!1253 = !DILocation(line: 576, column: 3, scope: !229)
!1254 = !DILocation(line: 588, column: 48, scope: !233)
!1255 = !DILocation(line: 588, column: 63, scope: !233)
!1256 = !DILocation(line: 591, column: 7, scope: !233)
!1257 = !DILocation(line: 591, column: 19, scope: !233)
!1258 = !DILocation(line: 591, column: 30, scope: !233)
!1259 = !DILocation(line: 591, column: 43, scope: !233)
!1260 = !DILocation(line: 591, column: 54, scope: !233)
!1261 = !DILocation(line: 591, column: 3, scope: !233)
!1262 = !DILocation(line: 490, column: 32, scope: !213, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 593, column: 3, scope: !233)
!1264 = !DILocation(line: 492, column: 23, scope: !213, inlinedAt: !1263)
!1265 = !DILocation(line: 492, column: 26, scope: !213, inlinedAt: !1263)
!1266 = !DILocation(line: 492, column: 7, scope: !213, inlinedAt: !1263)
!1267 = !DILocation(line: 493, column: 23, scope: !213, inlinedAt: !1263)
!1268 = !DILocation(line: 493, column: 43, scope: !213, inlinedAt: !1263)
!1269 = !DILocation(line: 493, column: 63, scope: !213, inlinedAt: !1263)
!1270 = !DILocation(line: 493, column: 46, scope: !213, inlinedAt: !1263)
!1271 = !DILocation(line: 493, column: 36, scope: !213, inlinedAt: !1263)
!1272 = !DILocation(line: 493, column: 8, scope: !213, inlinedAt: !1263)
!1273 = !DILocation(line: 493, column: 19, scope: !213, inlinedAt: !1263)
!1274 = !DILocation(line: 595, column: 3, scope: !233)
!1275 = !DILocation(line: 602, column: 15, scope: !233)
!1276 = !DILocation(line: 602, column: 3, scope: !233)
!1277 = !DILocation(line: 645, column: 49, scope: !247)
!1278 = !DILocation(line: 645, column: 64, scope: !247)
!1279 = !DILocation(line: 648, column: 3, scope: !247)
!1280 = !DILocation(line: 655, column: 15, scope: !247)
!1281 = !DILocation(line: 655, column: 3, scope: !247)
!1282 = !DILocation(line: 670, column: 31, scope: !251)
!1283 = !DILocation(line: 672, column: 23, scope: !251)
!1284 = !DILocation(line: 672, column: 7, scope: !251)
!1285 = !DILocation(line: 675, column: 8, scope: !251)
!1286 = !DILocation(line: 681, column: 21, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !251, file: !1, line: 679, column: 3)
!1288 = !DILocation(line: 678, column: 20, scope: !251)
!1289 = !DILocation(line: 678, column: 3, scope: !251)
!1290 = !DILocation(line: 681, column: 38, scope: !1287)
!1291 = !DILocation(line: 678, column: 9, scope: !251)
!1292 = !DILocation(line: 680, column: 21, scope: !1287)
!1293 = !DILocation(line: 681, column: 42, scope: !1287)
!1294 = !DILocation(line: 681, column: 30, scope: !1287)
!1295 = !DILocation(line: 683, column: 3, scope: !251)
!1296 = !DILocation(line: 693, column: 43, scope: !255)
!1297 = !DILocation(line: 693, column: 62, scope: !255)
!1298 = !DILocation(line: 696, column: 17, scope: !255)
!1299 = !DILocation(line: 696, column: 7, scope: !255)
!1300 = !DILocation(line: 696, column: 11, scope: !255)
!1301 = !DILocation(line: 697, column: 17, scope: !255)
!1302 = !DILocation(line: 697, column: 7, scope: !255)
!1303 = !DILocation(line: 697, column: 11, scope: !255)
!1304 = !DILocation(line: 670, column: 31, scope: !251, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 698, column: 3, scope: !255)
!1306 = !DILocation(line: 672, column: 7, scope: !251, inlinedAt: !1305)
!1307 = !DILocation(line: 675, column: 8, scope: !251, inlinedAt: !1305)
!1308 = !DILocation(line: 681, column: 21, scope: !1287, inlinedAt: !1305)
!1309 = !DILocation(line: 678, column: 20, scope: !251, inlinedAt: !1305)
!1310 = !DILocation(line: 678, column: 3, scope: !251, inlinedAt: !1305)
!1311 = !DILocation(line: 698, column: 3, scope: !255)
!1312 = !DILocation(line: 678, column: 9, scope: !251, inlinedAt: !1305)
!1313 = !DILocation(line: 680, column: 21, scope: !1287, inlinedAt: !1305)
!1314 = !DILocation(line: 681, column: 42, scope: !1287, inlinedAt: !1305)
!1315 = !DILocation(line: 681, column: 30, scope: !1287, inlinedAt: !1305)
!1316 = !DILocation(line: 700, column: 39, scope: !255)
!1317 = !DILocation(line: 700, column: 3, scope: !255)
!1318 = !DILocation(line: 706, column: 15, scope: !255)
!1319 = !DILocation(line: 706, column: 3, scope: !255)
!1320 = !DILocation(line: 717, column: 60, scope: !259)
!1321 = !DILocation(line: 717, column: 79, scope: !259)
!1322 = !DILocation(line: 765, column: 16, scope: !259)
!1323 = !DILocation(line: 763, column: 7, scope: !259)
!1324 = !DILocation(line: 770, column: 14, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !259, file: !1, line: 770, column: 7)
!1326 = !DILocation(line: 770, column: 7, scope: !259)
!1327 = !DILocation(line: 772, column: 13, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 771, column: 3)
!1329 = !DILocation(line: 773, column: 13, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 773, column: 9)
!1331 = !DILocation(line: 773, column: 20, scope: !1330)
!1332 = !DILocation(line: 773, column: 9, scope: !1328)
!1333 = !DILocation(line: 775, column: 33, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 774, column: 5)
!1335 = !DILocation(line: 775, column: 45, scope: !1334)
!1336 = !DILocation(line: 775, column: 39, scope: !1334)
!1337 = !DILocation(line: 775, column: 11, scope: !1334)
!1338 = !DILocation(line: 775, column: 15, scope: !1334)
!1339 = !DILocation(line: 776, column: 5, scope: !1334)
!1340 = !DILocation(line: 779, column: 11, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 778, column: 5)
!1342 = !DILocation(line: 779, column: 15, scope: !1341)
!1343 = !DILocation(line: 670, column: 31, scope: !251, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 796, column: 3, scope: !259)
!1345 = !DILocation(line: 672, column: 7, scope: !251, inlinedAt: !1344)
!1346 = !DILocation(line: 675, column: 8, scope: !251, inlinedAt: !1344)
!1347 = !DILocation(line: 681, column: 21, scope: !1287, inlinedAt: !1344)
!1348 = !DILocation(line: 678, column: 3, scope: !251, inlinedAt: !1344)
!1349 = !DILocation(line: 784, column: 46, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 783, column: 3)
!1351 = !DILocation(line: 784, column: 15, scope: !1350)
!1352 = !DILocation(line: 784, column: 34, scope: !1350)
!1353 = !DILocation(line: 784, column: 13, scope: !1350)
!1354 = !DILocation(line: 785, column: 15, scope: !1350)
!1355 = !DILocation(line: 785, column: 9, scope: !1350)
!1356 = !DILocation(line: 785, column: 13, scope: !1350)
!1357 = !DILocation(line: 789, column: 15, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !259, file: !1, line: 789, column: 7)
!1359 = !DILocation(line: 789, column: 7, scope: !259)
!1360 = !DILocation(line: 792, column: 31, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 790, column: 3)
!1362 = !DILocation(line: 791, column: 5, scope: !1361)
!1363 = !DILocation(line: 793, column: 5, scope: !1361)
!1364 = !DILocation(line: 678, column: 20, scope: !251, inlinedAt: !1344)
!1365 = !DILocation(line: 796, column: 3, scope: !259)
!1366 = !DILocation(line: 678, column: 9, scope: !251, inlinedAt: !1344)
!1367 = !DILocation(line: 680, column: 21, scope: !1287, inlinedAt: !1344)
!1368 = !DILocation(line: 681, column: 42, scope: !1287, inlinedAt: !1344)
!1369 = !DILocation(line: 681, column: 30, scope: !1287, inlinedAt: !1344)
!1370 = !DILocation(line: 798, column: 39, scope: !259)
!1371 = !DILocation(line: 798, column: 3, scope: !259)
!1372 = !DILocation(line: 804, column: 15, scope: !259)
!1373 = !DILocation(line: 804, column: 3, scope: !259)
!1374 = !DILocation(line: 814, column: 68, scope: !264)
!1375 = !DILocation(line: 814, column: 87, scope: !264)
!1376 = !DILocation(line: 854, column: 13, scope: !264)
!1377 = !DILocation(line: 854, column: 18, scope: !264)
!1378 = !DILocation(line: 854, column: 29, scope: !264)
!1379 = !DILocation(line: 854, column: 7, scope: !264)
!1380 = !DILocation(line: 858, column: 41, scope: !264)
!1381 = !DILocation(line: 858, column: 13, scope: !264)
!1382 = !DILocation(line: 858, column: 29, scope: !264)
!1383 = !DILocation(line: 858, column: 7, scope: !264)
!1384 = !DILocation(line: 858, column: 11, scope: !264)
!1385 = !DILocation(line: 859, column: 13, scope: !264)
!1386 = !DILocation(line: 859, column: 7, scope: !264)
!1387 = !DILocation(line: 859, column: 11, scope: !264)
!1388 = !DILocation(line: 861, column: 15, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !264, file: !1, line: 861, column: 7)
!1390 = !DILocation(line: 861, column: 7, scope: !264)
!1391 = !DILocation(line: 863, column: 5, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1389, file: !1, line: 862, column: 3)
!1393 = !DILocation(line: 865, column: 5, scope: !1392)
!1394 = !DILocation(line: 670, column: 31, scope: !251, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 868, column: 3, scope: !264)
!1396 = !DILocation(line: 672, column: 7, scope: !251, inlinedAt: !1395)
!1397 = !DILocation(line: 675, column: 8, scope: !251, inlinedAt: !1395)
!1398 = !DILocation(line: 681, column: 21, scope: !1287, inlinedAt: !1395)
!1399 = !DILocation(line: 678, column: 20, scope: !251, inlinedAt: !1395)
!1400 = !DILocation(line: 678, column: 3, scope: !251, inlinedAt: !1395)
!1401 = !DILocation(line: 868, column: 3, scope: !264)
!1402 = !DILocation(line: 678, column: 9, scope: !251, inlinedAt: !1395)
!1403 = !DILocation(line: 680, column: 21, scope: !1287, inlinedAt: !1395)
!1404 = !DILocation(line: 681, column: 42, scope: !1287, inlinedAt: !1395)
!1405 = !DILocation(line: 681, column: 30, scope: !1287, inlinedAt: !1395)
!1406 = !DILocation(line: 870, column: 39, scope: !264)
!1407 = !DILocation(line: 870, column: 3, scope: !264)
!1408 = !DILocation(line: 876, column: 15, scope: !264)
!1409 = !DILocation(line: 876, column: 3, scope: !264)
!1410 = !DILocation(line: 886, column: 50, scope: !269)
!1411 = !DILocation(line: 886, column: 69, scope: !269)
!1412 = !DILocation(line: 927, column: 16, scope: !269)
!1413 = !DILocation(line: 925, column: 7, scope: !269)
!1414 = !DILocation(line: 930, column: 32, scope: !269)
!1415 = !DILocation(line: 930, column: 13, scope: !269)
!1416 = !DILocation(line: 930, column: 11, scope: !269)
!1417 = !DILocation(line: 931, column: 13, scope: !269)
!1418 = !DILocation(line: 931, column: 7, scope: !269)
!1419 = !DILocation(line: 931, column: 11, scope: !269)
!1420 = !DILocation(line: 933, column: 15, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !269, file: !1, line: 933, column: 7)
!1422 = !DILocation(line: 933, column: 7, scope: !269)
!1423 = !DILocation(line: 935, column: 5, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !1, line: 934, column: 3)
!1425 = !DILocation(line: 936, column: 5, scope: !1424)
!1426 = !DILocation(line: 670, column: 31, scope: !251, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 939, column: 3, scope: !269)
!1428 = !DILocation(line: 672, column: 7, scope: !251, inlinedAt: !1427)
!1429 = !DILocation(line: 675, column: 8, scope: !251, inlinedAt: !1427)
!1430 = !DILocation(line: 681, column: 21, scope: !1287, inlinedAt: !1427)
!1431 = !DILocation(line: 678, column: 20, scope: !251, inlinedAt: !1427)
!1432 = !DILocation(line: 678, column: 3, scope: !251, inlinedAt: !1427)
!1433 = !DILocation(line: 939, column: 3, scope: !269)
!1434 = !DILocation(line: 678, column: 9, scope: !251, inlinedAt: !1427)
!1435 = !DILocation(line: 680, column: 21, scope: !1287, inlinedAt: !1427)
!1436 = !DILocation(line: 681, column: 42, scope: !1287, inlinedAt: !1427)
!1437 = !DILocation(line: 681, column: 30, scope: !1287, inlinedAt: !1427)
!1438 = !DILocation(line: 941, column: 39, scope: !269)
!1439 = !DILocation(line: 941, column: 3, scope: !269)
!1440 = !DILocation(line: 947, column: 15, scope: !269)
!1441 = !DILocation(line: 947, column: 3, scope: !269)
!1442 = !DILocation(line: 957, column: 58, scope: !274)
!1443 = !DILocation(line: 957, column: 77, scope: !274)
!1444 = !DILocation(line: 1023, column: 13, scope: !274)
!1445 = !DILocation(line: 1023, column: 18, scope: !274)
!1446 = !DILocation(line: 1023, column: 29, scope: !274)
!1447 = !DILocation(line: 1023, column: 7, scope: !274)
!1448 = !DILocation(line: 1025, column: 16, scope: !274)
!1449 = !DILocation(line: 1022, column: 7, scope: !274)
!1450 = !DILocation(line: 1028, column: 37, scope: !274)
!1451 = !DILocation(line: 1028, column: 13, scope: !274)
!1452 = !DILocation(line: 1028, column: 11, scope: !274)
!1453 = !DILocation(line: 1029, column: 13, scope: !274)
!1454 = !DILocation(line: 1029, column: 7, scope: !274)
!1455 = !DILocation(line: 1029, column: 11, scope: !274)
!1456 = !DILocation(line: 1031, column: 15, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !274, file: !1, line: 1031, column: 7)
!1458 = !DILocation(line: 1031, column: 7, scope: !274)
!1459 = !DILocation(line: 1033, column: 5, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1457, file: !1, line: 1032, column: 3)
!1461 = !DILocation(line: 1034, column: 5, scope: !1460)
!1462 = !DILocation(line: 670, column: 31, scope: !251, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 1037, column: 3, scope: !274)
!1464 = !DILocation(line: 672, column: 7, scope: !251, inlinedAt: !1463)
!1465 = !DILocation(line: 675, column: 8, scope: !251, inlinedAt: !1463)
!1466 = !DILocation(line: 681, column: 21, scope: !1287, inlinedAt: !1463)
!1467 = !DILocation(line: 678, column: 20, scope: !251, inlinedAt: !1463)
!1468 = !DILocation(line: 678, column: 3, scope: !251, inlinedAt: !1463)
!1469 = !DILocation(line: 1037, column: 3, scope: !274)
!1470 = !DILocation(line: 678, column: 9, scope: !251, inlinedAt: !1463)
!1471 = !DILocation(line: 680, column: 21, scope: !1287, inlinedAt: !1463)
!1472 = !DILocation(line: 681, column: 42, scope: !1287, inlinedAt: !1463)
!1473 = !DILocation(line: 681, column: 30, scope: !1287, inlinedAt: !1463)
!1474 = !DILocation(line: 1039, column: 39, scope: !274)
!1475 = !DILocation(line: 1039, column: 3, scope: !274)
!1476 = !DILocation(line: 1045, column: 15, scope: !274)
!1477 = !DILocation(line: 1045, column: 3, scope: !274)
!1478 = !DILocation(line: 1055, column: 43, scope: !280)
!1479 = !DILocation(line: 1055, column: 62, scope: !280)
!1480 = !DILocation(line: 1080, column: 16, scope: !280)
!1481 = !DILocation(line: 1078, column: 7, scope: !280)
!1482 = !DILocation(line: 1083, column: 32, scope: !280)
!1483 = !DILocation(line: 1083, column: 13, scope: !280)
!1484 = !DILocation(line: 1083, column: 11, scope: !280)
!1485 = !DILocation(line: 1084, column: 13, scope: !280)
!1486 = !DILocation(line: 1084, column: 7, scope: !280)
!1487 = !DILocation(line: 1084, column: 11, scope: !280)
!1488 = !DILocation(line: 1086, column: 15, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !280, file: !1, line: 1086, column: 7)
!1490 = !DILocation(line: 1086, column: 7, scope: !280)
!1491 = !DILocation(line: 1088, column: 5, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !1, line: 1087, column: 3)
!1493 = !DILocation(line: 1089, column: 5, scope: !1492)
!1494 = !DILocation(line: 670, column: 31, scope: !251, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 1092, column: 3, scope: !280)
!1496 = !DILocation(line: 672, column: 7, scope: !251, inlinedAt: !1495)
!1497 = !DILocation(line: 675, column: 8, scope: !251, inlinedAt: !1495)
!1498 = !DILocation(line: 681, column: 21, scope: !1287, inlinedAt: !1495)
!1499 = !DILocation(line: 678, column: 20, scope: !251, inlinedAt: !1495)
!1500 = !DILocation(line: 678, column: 3, scope: !251, inlinedAt: !1495)
!1501 = !DILocation(line: 1092, column: 3, scope: !280)
!1502 = !DILocation(line: 678, column: 9, scope: !251, inlinedAt: !1495)
!1503 = !DILocation(line: 680, column: 21, scope: !1287, inlinedAt: !1495)
!1504 = !DILocation(line: 681, column: 42, scope: !1287, inlinedAt: !1495)
!1505 = !DILocation(line: 681, column: 30, scope: !1287, inlinedAt: !1495)
!1506 = !DILocation(line: 1094, column: 39, scope: !280)
!1507 = !DILocation(line: 1094, column: 3, scope: !280)
!1508 = !DILocation(line: 1100, column: 15, scope: !280)
!1509 = !DILocation(line: 1100, column: 3, scope: !280)
!1510 = !DILocation(line: 1110, column: 50, scope: !285)
!1511 = !DILocation(line: 1110, column: 69, scope: !285)
!1512 = !DILocation(line: 1114, column: 15, scope: !285)
!1513 = !DILocation(line: 1112, column: 7, scope: !285)
!1514 = !DILocation(line: 1115, column: 12, scope: !285)
!1515 = !DILocation(line: 1112, column: 14, scope: !285)
!1516 = !DILocation(line: 1116, column: 11, scope: !285)
!1517 = !DILocation(line: 1112, column: 22, scope: !285)
!1518 = !DILocation(line: 1119, column: 14, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !285, file: !1, line: 1119, column: 7)
!1520 = !DILocation(line: 1119, column: 7, scope: !285)
!1521 = !DILocation(line: 1124, column: 19, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !1, line: 1124, column: 12)
!1523 = !DILocation(line: 1127, column: 9, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 1125, column: 3)
!1525 = !DILocation(line: 1124, column: 12, scope: !1519)
!1526 = !DILocation(line: 1127, column: 13, scope: !1524)
!1527 = !DILocation(line: 1128, column: 40, scope: !1524)
!1528 = !DILocation(line: 1128, column: 46, scope: !1524)
!1529 = !DILocation(line: 1128, column: 9, scope: !1524)
!1530 = !DILocation(line: 1128, column: 13, scope: !1524)
!1531 = !DILocation(line: 1129, column: 3, scope: !1524)
!1532 = !DILocation(line: 1133, column: 13, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1522, file: !1, line: 1131, column: 3)
!1534 = !DILocation(line: 1134, column: 43, scope: !1533)
!1535 = !DILocation(line: 1134, column: 49, scope: !1533)
!1536 = !DILocation(line: 1134, column: 9, scope: !1533)
!1537 = !DILocation(line: 1134, column: 13, scope: !1533)
!1538 = !DILocation(line: 670, column: 31, scope: !251, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 1138, column: 3, scope: !285)
!1540 = !DILocation(line: 672, column: 7, scope: !251, inlinedAt: !1539)
!1541 = !DILocation(line: 675, column: 8, scope: !251, inlinedAt: !1539)
!1542 = !DILocation(line: 681, column: 21, scope: !1287, inlinedAt: !1539)
!1543 = !DILocation(line: 678, column: 3, scope: !251, inlinedAt: !1539)
!1544 = !DILocation(line: 1121, column: 22, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1519, file: !1, line: 1120, column: 3)
!1546 = !DILocation(line: 1121, column: 26, scope: !1545)
!1547 = !DILocation(line: 1121, column: 33, scope: !1545)
!1548 = !DILocation(line: 1121, column: 9, scope: !1545)
!1549 = !DILocation(line: 1121, column: 13, scope: !1545)
!1550 = !DILocation(line: 1122, column: 9, scope: !1545)
!1551 = !DILocation(line: 1122, column: 13, scope: !1545)
!1552 = !DILocation(line: 678, column: 20, scope: !251, inlinedAt: !1539)
!1553 = !DILocation(line: 1138, column: 3, scope: !285)
!1554 = !DILocation(line: 678, column: 9, scope: !251, inlinedAt: !1539)
!1555 = !DILocation(line: 680, column: 21, scope: !1287, inlinedAt: !1539)
!1556 = !DILocation(line: 681, column: 42, scope: !1287, inlinedAt: !1539)
!1557 = !DILocation(line: 681, column: 30, scope: !1287, inlinedAt: !1539)
!1558 = !DILocation(line: 1140, column: 39, scope: !285)
!1559 = !DILocation(line: 1140, column: 3, scope: !285)
!1560 = !DILocation(line: 1146, column: 15, scope: !285)
!1561 = !DILocation(line: 1146, column: 3, scope: !285)
!1562 = !DILocation(line: 1156, column: 50, scope: !292)
!1563 = !DILocation(line: 1156, column: 58, scope: !292)
!1564 = !DILocation(line: 1156, column: 78, scope: !292)
!1565 = !DILocation(line: 1161, column: 19, scope: !292)
!1566 = !DILocation(line: 1161, column: 7, scope: !292)
!1567 = !DILocation(line: 1163, column: 16, scope: !292)
!1568 = !DILocation(line: 1163, column: 7, scope: !292)
!1569 = !DILocation(line: 1164, column: 15, scope: !292)
!1570 = !DILocation(line: 1164, column: 7, scope: !292)
!1571 = !DILocation(line: 1166, column: 18, scope: !292)
!1572 = !DILocation(line: 1166, column: 7, scope: !292)
!1573 = !DILocation(line: 1167, column: 19, scope: !292)
!1574 = !DILocation(line: 1167, column: 27, scope: !292)
!1575 = !DILocation(line: 1167, column: 7, scope: !292)
!1576 = !DILocation(line: 1169, column: 26, scope: !292)
!1577 = !DILocation(line: 1169, column: 7, scope: !292)
!1578 = !DILocation(line: 1171, column: 7, scope: !292)
!1579 = !DILocation(line: 1172, column: 7, scope: !292)
!1580 = !DILocation(line: 1174, column: 14, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !292, file: !1, line: 1174, column: 7)
!1582 = !DILocation(line: 1174, column: 7, scope: !292)
!1583 = !DILocation(line: 1171, column: 31, scope: !292)
!1584 = !DILocation(line: 1171, column: 17, scope: !292)
!1585 = !DILocation(line: 1172, column: 26, scope: !292)
!1586 = !DILocation(line: 1169, column: 29, scope: !292)
!1587 = !DILocation(line: 1176, column: 25, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1581, file: !1, line: 1175, column: 3)
!1589 = !DILocation(line: 1176, column: 31, scope: !1588)
!1590 = !DILocation(line: 1159, column: 7, scope: !292)
!1591 = !DILocation(line: 1177, column: 19, scope: !1588)
!1592 = !DILocation(line: 1177, column: 39, scope: !1588)
!1593 = !DILocation(line: 1177, column: 31, scope: !1588)
!1594 = !DILocation(line: 1177, column: 43, scope: !1588)
!1595 = !DILocation(line: 1158, column: 7, scope: !292)
!1596 = !DILocation(line: 1178, column: 3, scope: !1588)
!1597 = !DILocation(line: 1182, column: 33, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1581, file: !1, line: 1180, column: 3)
!1599 = !DILocation(line: 1182, column: 41, scope: !1598)
!1600 = !DILocation(line: 1182, column: 45, scope: !1598)
!1601 = !DILocation(line: 1184, column: 7, scope: !292)
!1602 = !DILocation(line: 1184, column: 11, scope: !292)
!1603 = !DILocation(line: 1185, column: 7, scope: !292)
!1604 = !DILocation(line: 1185, column: 11, scope: !292)
!1605 = !DILocation(line: 670, column: 31, scope: !251, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 1187, column: 3, scope: !292)
!1607 = !DILocation(line: 672, column: 7, scope: !251, inlinedAt: !1606)
!1608 = !DILocation(line: 675, column: 8, scope: !251, inlinedAt: !1606)
!1609 = !DILocation(line: 681, column: 21, scope: !1287, inlinedAt: !1606)
!1610 = !DILocation(line: 678, column: 20, scope: !251, inlinedAt: !1606)
!1611 = !DILocation(line: 678, column: 3, scope: !251, inlinedAt: !1606)
!1612 = !DILocation(line: 1187, column: 3, scope: !292)
!1613 = !DILocation(line: 678, column: 9, scope: !251, inlinedAt: !1606)
!1614 = !DILocation(line: 680, column: 21, scope: !1287, inlinedAt: !1606)
!1615 = !DILocation(line: 681, column: 42, scope: !1287, inlinedAt: !1606)
!1616 = !DILocation(line: 681, column: 30, scope: !1287, inlinedAt: !1606)
!1617 = !DILocation(line: 1189, column: 39, scope: !292)
!1618 = !DILocation(line: 1189, column: 3, scope: !292)
!1619 = !DILocation(line: 1195, column: 15, scope: !292)
!1620 = !DILocation(line: 1195, column: 3, scope: !292)
!1621 = !DILocation(line: 1256, column: 35, scope: !309)
!1622 = !DILocation(line: 1258, column: 19, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !309, file: !1, line: 1258, column: 7)
!1624 = !DILocation(line: 1258, column: 30, scope: !1623)
!1625 = !DILocation(line: 1258, column: 7, scope: !309)
!1626 = !DILocation(line: 1260, column: 41, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !1, line: 1259, column: 3)
!1628 = !DILocation(line: 1260, column: 29, scope: !1627)
!1629 = !DILocation(line: 1260, column: 50, scope: !1627)
!1630 = !DILocation(line: 1260, column: 90, scope: !1627)
!1631 = !DILocation(line: 1260, column: 84, scope: !1627)
!1632 = !DILocation(line: 1260, column: 76, scope: !1627)
!1633 = !DILocation(line: 1260, column: 28, scope: !1627)
!1634 = !DILocation(line: 1260, column: 26, scope: !1627)
!1635 = !DILocation(line: 1261, column: 33, scope: !1627)
!1636 = !DILocation(line: 1261, column: 38, scope: !1627)
!1637 = !{!1018, !824, i64 24}
!1638 = !DILocation(line: 1261, column: 5, scope: !1627)
!1639 = !DILocation(line: 1261, column: 43, scope: !1627)
!1640 = !DILocation(line: 1262, column: 42, scope: !1627)
!1641 = !DILocation(line: 1262, column: 50, scope: !1627)
!1642 = !DILocation(line: 1262, column: 5, scope: !1627)
!1643 = !DILocation(line: 1262, column: 17, scope: !1627)
!1644 = !DILocation(line: 1262, column: 53, scope: !1627)
!1645 = !DILocation(line: 1263, column: 28, scope: !1627)
!1646 = !DILocation(line: 1264, column: 3, scope: !1627)
!1647 = !DILocation(line: 1265, column: 1, scope: !309)
