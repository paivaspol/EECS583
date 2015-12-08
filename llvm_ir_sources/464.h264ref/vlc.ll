; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c'
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
%struct.StatParameters = type { i32, i32, float, float, i32, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32*, i32*, i32, i32, i32, float, float, float, [5 x [15 x i32]], [5 x [15 x i32]], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, i32, i32*, i32, i32 }

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
@.str = private unnamed_addr constant [59 x i8] c"ERROR: (numcoeff,trailingones) not valid: vlc=%d (%d, %d)\0A\00", align 1
@writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab = internal unnamed_addr constant [3 x [4 x [17 x i32]]] [[4 x [17 x i32]] [[17 x i32] [i32 2, i32 6, i32 6, i32 6, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 1, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 0, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 7, i32 7, i32 9, i32 9, i32 10, i32 11, i32 12, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 2, i32 7, i32 7, i32 9, i32 10, i32 11, i32 12, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 7, i32 9, i32 10, i32 11, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 7, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 2, i32 6, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 3, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16]]], align 16
@writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab = internal unnamed_addr constant [3 x [4 x [17 x i32]]] [[4 x [17 x i32]] [[17 x i32] [i32 1, i32 7, i32 4, i32 3, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 1, i32 6, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 15, i32 14, i32 7, i32 6, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 1, i32 13, i32 12, i32 5, i32 6, i32 6, i32 6, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 1, i32 11, i32 10, i32 4, i32 5, i32 5, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [17 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 9, i32 8, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], [4 x [17 x i32]] [[17 x i32] [i32 1, i32 5, i32 7, i32 7, i32 7, i32 7, i32 15, i32 11, i32 8, i32 15, i32 11, i32 15, i32 11, i32 15, i32 11, i32 7, i32 4], [17 x i32] [i32 0, i32 1, i32 4, i32 6, i32 6, i32 6, i32 6, i32 14, i32 10, i32 14, i32 10, i32 14, i32 10, i32 1, i32 14, i32 10, i32 6], [17 x i32] [i32 0, i32 0, i32 1, i32 5, i32 5, i32 5, i32 5, i32 5, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 13, i32 9, i32 5], [17 x i32] [i32 0, i32 0, i32 0, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 12, i32 12, i32 8, i32 12, i32 8, i32 12, i32 8]]], align 16
@.str1 = private unnamed_addr constant [52 x i8] c"ERROR: (numcoeff,trailingones) not valid: (%d, %d)\0A\00", align 1
@writeSyntaxElement_TotalZeros.lentab = internal unnamed_addr constant [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9], [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 0], [16 x i32] [i32 4, i32 3, i32 3, i32 3, i32 4, i32 4, i32 3, i32 3, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 0, i32 0], [16 x i32] [i32 5, i32 3, i32 4, i32 4, i32 3, i32 3, i32 3, i32 4, i32 3, i32 4, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 2, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 4, i32 5, i32 3, i32 2, i32 2, i32 3, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 6, i32 4, i32 2, i32 2, i32 3, i32 2, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 5, i32 3, i32 2, i32 2, i32 2, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 3, i32 3, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 3, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], align 16
@writeSyntaxElement_TotalZeros.codtab = internal unnamed_addr constant [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1], [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 5, i32 4, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1, i32 0, i32 0], [16 x i32] [i32 5, i32 7, i32 6, i32 5, i32 4, i32 3, i32 4, i32 3, i32 2, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 7, i32 5, i32 4, i32 6, i32 5, i32 4, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 4, i32 3, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 5, i32 4, i32 3, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], align 16
@.str2 = private unnamed_addr constant [37 x i8] c"ERROR: (TotalZeros) not valid: (%d)\0A\00", align 1
@writeSyntaxElement_TotalZerosChromaDC.lentab = internal unnamed_addr constant [3 x [15 x [16 x i32]]] [[15 x [16 x i32]] [[16 x i32] [i32 1, i32 2, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 3, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 2, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 9], [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 0], [16 x i32] [i32 4, i32 3, i32 3, i32 3, i32 4, i32 4, i32 3, i32 3, i32 4, i32 5, i32 5, i32 6, i32 5, i32 6, i32 0, i32 0], [16 x i32] [i32 5, i32 3, i32 4, i32 4, i32 3, i32 3, i32 3, i32 4, i32 3, i32 4, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 5, i32 3, i32 3, i32 3, i32 2, i32 3, i32 4, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 4, i32 5, i32 3, i32 2, i32 2, i32 3, i32 3, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 6, i32 4, i32 2, i32 2, i32 3, i32 2, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 5, i32 3, i32 2, i32 2, i32 2, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 3, i32 3, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 4, i32 4, i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 3, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]]], align 16
@writeSyntaxElement_TotalZerosChromaDC.codtab = internal unnamed_addr constant [3 x [15 x [16 x i32]]] [[15 x [16 x i32]] [[16 x i32] [i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], [15 x [16 x i32]] [[16 x i32] [i32 1, i32 2, i32 3, i32 2, i32 3, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 2, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 6, i32 0, i32 1, i32 2, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], [15 x [16 x i32]] [[16 x i32] [i32 1, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1], [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 5, i32 4, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 1, i32 0, i32 0], [16 x i32] [i32 5, i32 7, i32 6, i32 5, i32 4, i32 3, i32 4, i32 3, i32 2, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 7, i32 5, i32 4, i32 6, i32 5, i32 4, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 5, i32 4, i32 3, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 5, i32 4, i32 3, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 2, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 0, i32 1, i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]]], align 16
@writeSyntaxElement_Run.lentab = internal unnamed_addr constant [15 x [16 x i32]] [[16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], align 16
@writeSyntaxElement_Run.codtab = internal unnamed_addr constant [15 x [16 x i32]] [[16 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 2, i32 3, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 3, i32 0, i32 1, i32 3, i32 2, i32 5, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [16 x i32] [i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer, [16 x i32] zeroinitializer], align 16
@.str3 = private unnamed_addr constant [30 x i8] c"ERROR: (run) not valid: (%d)\0A\00", align 1
@stats = external global %struct.StatParameters*

; Function Attrs: nounwind optsize uwtable
define i32 @ue_v(i8* nocapture %tracestring, i32 %value, %struct.datapartition* nocapture %part) #0 {
entry:
  %symbol = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %symbol to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %type = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !0
  %mapping = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1
  store i32 %value, i32* %value1, align 4, !tbaa !0
  %value2 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2
  store i32 0, i32* %value2, align 8, !tbaa !0
  %call = call i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %symbol, %struct.datapartition* %part) #4
  call void @llvm.lifetime.end(i64 48, i8* %0) #1
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @ue_linfo(i32 %ue, i32 %dummy, i32* nocapture %len, i32* nocapture %info) #0 {
entry:
  %add = add nsw i32 %ue, 1
  br label %land.rhs

for.cond:                                         ; preds = %land.rhs
  %nn.015 = sdiv i32 %nn.015.in, 2
  %cmp = icmp slt i32 %inc, 16
  br i1 %cmp, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %entry, %for.cond
  %nn.015.in = phi i32 [ %add, %entry ], [ %nn.015, %for.cond ]
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %nn.0.in.off = add i32 %nn.015.in, 1
  %0 = icmp ugt i32 %nn.0.in.off, 2
  %inc = add nsw i32 %i.013, 1
  br i1 %0, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %inc, %for.cond ], [ %i.013, %land.rhs ]
  %mul = shl nsw i32 %i.0.lcssa, 1
  %add311 = or i32 %mul, 1
  store i32 %add311, i32* %len, align 4, !tbaa !0
  %1 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #1
  %conv5 = fptosi double %1 to i32
  %sub = sub nsw i32 %add, %conv5
  store i32 %sub, i32* %info, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  %mapping = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 8
  %0 = load void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %1 = load i32* %value1, align 4, !tbaa !0
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2
  %2 = load i32* %value2, align 4, !tbaa !0
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  tail call void %0(i32 %1, i32 %2, i32* %len, i32* %inf) #5
  %3 = load i32* %len, align 4, !tbaa !0
  %div.i = sdiv i32 %3, 2
  %shl.i = shl i32 1, %div.i
  %4 = load i32* %inf, align 4, !tbaa !0
  %sub.i = add nsw i32 %shl.i, -1
  %and.i = and i32 %sub.i, %4
  %or.i = or i32 %and.i, %shl.i
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5
  store i32 %or.i, i32* %bitpattern.i, align 4, !tbaa !0
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0
  %5 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %5) #4
  %type = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 0
  %6 = load i32* %type, align 4, !tbaa !0
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  %write_flag = getelementptr inbounds %struct.Bitstream* %7, i64 0, i32 10
  store i32 1, i32* %write_flag, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %8 = load i32* %len, align 4, !tbaa !0
  ret i32 %8
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @se_v(i8* nocapture %tracestring, i32 %value, %struct.datapartition* nocapture %part) #0 {
entry:
  %symbol = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %symbol to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %type = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !0
  %mapping = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 8
  store void (i32, i32, i32*, i32*)* @se_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1
  store i32 %value, i32* %value1, align 4, !tbaa !0
  %value2 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2
  store i32 0, i32* %value2, align 8, !tbaa !0
  %call = call i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %symbol, %struct.datapartition* %part) #4
  call void @llvm.lifetime.end(i64 48, i8* %0) #1
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define void @se_linfo(i32 %se, i32 %dummy, i32* nocapture %len, i32* nocapture %info) #0 {
entry:
  %cmp = icmp slt i32 %se, 1
  %. = zext i1 %cmp to i32
  %ispos = icmp sgt i32 %se, -1
  %neg = sub i32 0, %se
  %0 = select i1 %ispos, i32 %se, i32 %neg
  %shl = shl i32 %0, 1
  br label %land.rhs

for.cond:                                         ; preds = %land.rhs
  %nn.017 = sdiv i32 %nn.017.in, 2
  %cmp1 = icmp slt i32 %inc, 16
  br i1 %cmp1, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %entry, %for.cond
  %nn.017.in = phi i32 [ %shl, %entry ], [ %nn.017, %for.cond ]
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %nn.0.in.off = add i32 %nn.017.in, 1
  %1 = icmp ugt i32 %nn.0.in.off, 2
  %inc = add nsw i32 %i.015, 1
  br i1 %1, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %inc, %for.cond ], [ %i.015, %land.rhs ]
  %mul = shl nsw i32 %i.0.lcssa, 1
  %add13 = or i32 %mul, 1
  store i32 %add13, i32* %len, align 4, !tbaa !0
  %2 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #1
  %conv5 = fptosi double %2 to i32
  %sub = or i32 %shl, %.
  %add6 = sub i32 %sub, %conv5
  store i32 %add6, i32* %info, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @u_1(i8* nocapture %tracestring, i32 %value, %struct.datapartition* nocapture %part) #0 {
entry:
  %symbol = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %symbol to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 5
  store i32 %value, i32* %bitpattern, align 4, !tbaa !0
  %len = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 3
  store i32 1, i32* %len, align 4, !tbaa !0
  %type = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !0
  %value1 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1
  store i32 %value, i32* %value1, align 4, !tbaa !0
  %value2 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2
  store i32 0, i32* %value2, align 8, !tbaa !0
  %bitstream.i = getelementptr inbounds %struct.datapartition* %part, i64 0, i32 0
  %1 = load %struct.Bitstream** %bitstream.i, align 8, !tbaa !3
  call void @writeUVLC2buffer(%struct.syntaxelement* %symbol, %struct.Bitstream* %1) #5
  %2 = load i32* %type, align 8, !tbaa !0
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %writeSyntaxElement_fixed.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %3 = load %struct.Bitstream** %bitstream.i, align 8, !tbaa !3
  %write_flag.i = getelementptr inbounds %struct.Bitstream* %3, i64 0, i32 10
  store i32 1, i32* %write_flag.i, align 4, !tbaa !0
  br label %writeSyntaxElement_fixed.exit

writeSyntaxElement_fixed.exit:                    ; preds = %entry, %if.then.i
  %4 = load i32* %len, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 48, i8* %0) #1
  ret i32 %4
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_fixed(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0
  %0 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %0) #4
  %type = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !0
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  %write_flag = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 10
  store i32 1, i32* %write_flag, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  %3 = load i32* %len, align 4, !tbaa !0
  ret i32 %3
}

; Function Attrs: nounwind optsize uwtable
define i32 @u_v(i32 %n, i8* nocapture %tracestring, i32 %value, %struct.datapartition* nocapture %part) #0 {
entry:
  %symbol = alloca %struct.syntaxelement, align 8
  %0 = bitcast %struct.syntaxelement* %symbol to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #1
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 5
  store i32 %value, i32* %bitpattern, align 4, !tbaa !0
  %len = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 3
  store i32 %n, i32* %len, align 4, !tbaa !0
  %type = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0
  store i32 0, i32* %type, align 8, !tbaa !0
  %value1 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1
  store i32 %value, i32* %value1, align 4, !tbaa !0
  %value2 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2
  store i32 0, i32* %value2, align 8, !tbaa !0
  %bitstream.i = getelementptr inbounds %struct.datapartition* %part, i64 0, i32 0
  %1 = load %struct.Bitstream** %bitstream.i, align 8, !tbaa !3
  call void @writeUVLC2buffer(%struct.syntaxelement* %symbol, %struct.Bitstream* %1) #5
  %2 = load i32* %type, align 8, !tbaa !0
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %writeSyntaxElement_fixed.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %3 = load %struct.Bitstream** %bitstream.i, align 8, !tbaa !3
  %write_flag.i = getelementptr inbounds %struct.Bitstream* %3, i64 0, i32 10
  store i32 1, i32* %write_flag.i, align 4, !tbaa !0
  br label %writeSyntaxElement_fixed.exit

writeSyntaxElement_fixed.exit:                    ; preds = %entry, %if.then.i
  %4 = load i32* %len, align 4, !tbaa !0
  call void @llvm.lifetime.end(i64 48, i8* %0) #1
  ret i32 %4
}

; Function Attrs: nounwind optsize uwtable
define void @cbp_linfo_intra(i32 %cbp, i32 %dummy, i32* nocapture %len, i32* nocapture %info) #0 {
entry:
  %idxprom = sext i32 %cbp to i64
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %1 = load i32* %yuv_format, align 4, !tbaa !0
  %tobool = icmp ne i32 %1, 0
  %idxprom1 = zext i1 %tobool to i64
  %arrayidx3 = getelementptr inbounds [2 x [48 x [2 x i8]]]* @NCBP, i64 0, i64 %idxprom1, i64 %idxprom, i64 0
  %2 = load i8* %arrayidx3, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
  tail call void @ue_linfo(i32 %conv, i32 undef, i32* %len, i32* %info) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @cbp_linfo_inter(i32 %cbp, i32 %dummy, i32* nocapture %len, i32* nocapture %info) #0 {
entry:
  %idxprom = sext i32 %cbp to i64
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %1 = load i32* %yuv_format, align 4, !tbaa !0
  %tobool = icmp ne i32 %1, 0
  %idxprom1 = zext i1 %tobool to i64
  %arrayidx3 = getelementptr inbounds [2 x [48 x [2 x i8]]]* @NCBP, i64 0, i64 %idxprom1, i64 %idxprom, i64 1
  %2 = load i8* %arrayidx3, align 1, !tbaa !1
  %conv = zext i8 %2 to i32
  tail call void @ue_linfo(i32 %conv, i32 undef, i32* %len, i32* %info) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @levrun_linfo_c2x2(i32 %level, i32 %run, i32* nocapture %len, i32* nocapture %info) #0 {
entry:
  %cmp = icmp eq i32 %level, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %len, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %level, 1
  %. = zext i1 %cmp1 to i32
  %ispos = icmp sgt i32 %level, -1
  %neg = sub i32 0, %level
  %0 = select i1 %ispos, i32 %level, i32 %neg
  %idxprom = sext i32 %run to i64
  %arrayidx = getelementptr inbounds [4 x i32]* @levrun_linfo_c2x2.LEVRUN, i64 0, i64 %idxprom
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp4 = icmp sgt i32 %0, %1
  br i1 %cmp4, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %sub = add nsw i32 %0, -1
  %idxprom7 = sext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds [2 x [2 x i32]]* @levrun_linfo_c2x2.NTAB, i64 0, i64 %idxprom7, i64 %idxprom
  %2 = load i32* %arrayidx9, align 4, !tbaa !0
  %add = add nsw i32 %2, 1
  br label %if.end15

if.else:                                          ; preds = %if.end
  %sub12 = sub nsw i32 %0, %1
  %mul = shl i32 %sub12, 3
  %mul13 = shl i32 %run, 1
  %add14 = add nsw i32 %mul, %mul13
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then5
  %n.0 = phi i32 [ %add, %if.then5 ], [ %add14, %if.else ]
  br label %land.rhs

for.cond:                                         ; preds = %land.rhs
  %nn.042 = sdiv i32 %nn.042.in, 2
  %cmp16 = icmp slt i32 %inc, 16
  br i1 %cmp16, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %if.end15, %for.cond
  %nn.042.in = phi i32 [ %n.0, %if.end15 ], [ %nn.042, %for.cond ]
  %i.040 = phi i32 [ 0, %if.end15 ], [ %inc, %for.cond ]
  %nn.0.in.off = add i32 %nn.042.in, 1
  %3 = icmp ugt i32 %nn.0.in.off, 2
  %inc = add nsw i32 %i.040, 1
  br i1 %3, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %inc, %for.cond ], [ %i.040, %land.rhs ]
  %mul19 = shl nsw i32 %i.0.lcssa, 1
  %add2038 = or i32 %mul19, 1
  store i32 %add2038, i32* %len, align 4, !tbaa !0
  %4 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #1
  %conv22 = fptosi double %4 to i32
  %sub23 = add i32 %n.0, %.
  %add24 = sub i32 %sub23, %conv22
  store i32 %add24, i32* %info, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @levrun_linfo_inter(i32 %level, i32 %run, i32* nocapture %len, i32* nocapture %info) #0 {
entry:
  %cmp = icmp eq i32 %level, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %len, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %level, 1
  %. = zext i1 %cmp1 to i32
  %ispos = icmp sgt i32 %level, -1
  %neg = sub i32 0, %level
  %0 = select i1 %ispos, i32 %level, i32 %neg
  %idxprom = sext i32 %run to i64
  %arrayidx = getelementptr inbounds [16 x i8]* @levrun_linfo_inter.LEVRUN, i64 0, i64 %idxprom
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = zext i8 %1 to i32
  %cmp4 = icmp sgt i32 %0, %conv
  br i1 %cmp4, label %if.else12, label %if.then6

if.then6:                                         ; preds = %if.end
  %sub = add nsw i32 %0, -1
  %idxprom8 = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds [4 x [10 x i8]]* @levrun_linfo_inter.NTAB, i64 0, i64 %idxprom8, i64 %idxprom
  %2 = load i8* %arrayidx10, align 1, !tbaa !1
  %conv11 = zext i8 %2 to i32
  %add = add nsw i32 %conv11, 1
  br label %if.end19

if.else12:                                        ; preds = %if.end
  %sub16 = sub nsw i32 %0, %conv
  %mul = shl i32 %sub16, 5
  %mul17 = shl i32 %run, 1
  %add18 = add nsw i32 %mul, %mul17
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.then6
  %n.0 = phi i32 [ %add, %if.then6 ], [ %add18, %if.else12 ]
  br label %land.rhs

for.cond:                                         ; preds = %land.rhs
  %nn.049 = sdiv i32 %nn.049.in, 2
  %cmp20 = icmp slt i32 %inc, 16
  br i1 %cmp20, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %if.end19, %for.cond
  %nn.049.in = phi i32 [ %n.0, %if.end19 ], [ %nn.049, %for.cond ]
  %i.047 = phi i32 [ 0, %if.end19 ], [ %inc, %for.cond ]
  %nn.0.in.off = add i32 %nn.049.in, 1
  %3 = icmp ugt i32 %nn.0.in.off, 2
  %inc = add nsw i32 %i.047, 1
  br i1 %3, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %inc, %for.cond ], [ %i.047, %land.rhs ]
  %mul25 = shl nsw i32 %i.0.lcssa, 1
  %add2645 = or i32 %mul25, 1
  store i32 %add2645, i32* %len, align 4, !tbaa !0
  %4 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #1
  %conv29 = fptosi double %4 to i32
  %sub30 = add i32 %n.0, %.
  %add31 = sub i32 %sub30, %conv29
  store i32 %add31, i32* %info, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @levrun_linfo_intra(i32 %level, i32 %run, i32* nocapture %len, i32* nocapture %info) #0 {
entry:
  %cmp = icmp eq i32 %level, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %len, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %level, 1
  %. = zext i1 %cmp1 to i32
  %ispos = icmp sgt i32 %level, -1
  %neg = sub i32 0, %level
  %0 = select i1 %ispos, i32 %level, i32 %neg
  %idxprom = sext i32 %run to i64
  %arrayidx = getelementptr inbounds [8 x i8]* @levrun_linfo_intra.LEVRUN, i64 0, i64 %idxprom
  %1 = load i8* %arrayidx, align 1, !tbaa !1
  %conv = zext i8 %1 to i32
  %cmp4 = icmp sgt i32 %0, %conv
  br i1 %cmp4, label %if.else12, label %if.then6

if.then6:                                         ; preds = %if.end
  %sub = add nsw i32 %0, -1
  %idxprom8 = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds [9 x [5 x i8]]* @levrun_linfo_intra.NTAB, i64 0, i64 %idxprom8, i64 %idxprom
  %2 = load i8* %arrayidx10, align 1, !tbaa !1
  %conv11 = zext i8 %2 to i32
  %add = add nsw i32 %conv11, 1
  br label %if.end20

if.else12:                                        ; preds = %if.end
  %sub16 = sub nsw i32 %0, %conv
  %mul = shl i32 %sub16, 4
  %mul18 = shl i32 %run, 1
  %add17 = add i32 %mul18, 16
  %add19 = add i32 %add17, %mul
  br label %if.end20

if.end20:                                         ; preds = %if.else12, %if.then6
  %n.0 = phi i32 [ %add, %if.then6 ], [ %add19, %if.else12 ]
  br label %land.rhs

for.cond:                                         ; preds = %land.rhs
  %nn.050 = sdiv i32 %nn.050.in, 2
  %cmp21 = icmp slt i32 %inc, 16
  br i1 %cmp21, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %if.end20, %for.cond
  %nn.050.in = phi i32 [ %n.0, %if.end20 ], [ %nn.050, %for.cond ]
  %i.048 = phi i32 [ 0, %if.end20 ], [ %inc, %for.cond ]
  %nn.0.in.off = add i32 %nn.050.in, 1
  %3 = icmp ugt i32 %nn.0.in.off, 2
  %inc = add nsw i32 %i.048, 1
  br i1 %3, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %inc, %for.cond ], [ %i.048, %land.rhs ]
  %mul26 = shl nsw i32 %i.0.lcssa, 1
  %add2746 = or i32 %mul26, 1
  store i32 %add2746, i32* %len, align 4, !tbaa !0
  %4 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #1
  %conv30 = fptosi double %4 to i32
  %sub31 = add i32 %n.0, %.
  %add32 = sub i32 %sub31, %conv30
  store i32 %add32, i32* %info, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @symbol2uvlc(%struct.syntaxelement* nocapture %sym) #0 {
entry:
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3
  %0 = load i32* %len, align 4, !tbaa !0
  %div = sdiv i32 %0, 2
  %shl = shl i32 1, %div
  %inf = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 4
  %1 = load i32* %inf, align 4, !tbaa !0
  %sub = add nsw i32 %shl, -1
  %and = and i32 %sub, %1
  %or = or i32 %and, %shl
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5
  store i32 %or, i32* %bitpattern, align 4, !tbaa !0
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define void @writeUVLC2buffer(%struct.syntaxelement* nocapture %se, %struct.Bitstream* nocapture %currStream) #0 {
entry:
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  %0 = load i32* %len, align 4, !tbaa !0
  %cmp28 = icmp sgt i32 %0, 0
  br i1 %cmp28, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %0, -1
  %shl = shl i32 1, %sub
  %byte_buf = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 2
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 1
  %byte_pos = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 0
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 9
  %.pre = load i8* %byte_buf, align 1, !tbaa !1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi i8 [ %.pre, %for.body.lr.ph ], [ %7, %for.inc ]
  %mask.030 = phi i32 [ %shl, %for.body.lr.ph ], [ %shr, %for.inc ]
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc15, %for.inc ]
  %shl2 = shl i8 %1, 1
  store i8 %shl2, i8* %byte_buf, align 1, !tbaa !1
  %2 = load i32* %bitpattern, align 4, !tbaa !0
  %and = and i32 %2, %mask.030
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %or = or i8 %shl2, 1
  store i8 %or, i8* %byte_buf, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %3 = phi i8 [ %or, %if.then ], [ %shl2, %for.body ]
  %4 = load i32* %bits_to_go, align 4, !tbaa !0
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %bits_to_go, align 4, !tbaa !0
  %shr = lshr i32 %mask.030, 1
  %cmp8 = icmp eq i32 %dec, 0
  br i1 %cmp8, label %if.then10, label %for.inc

if.then10:                                        ; preds = %if.end
  store i32 8, i32* %bits_to_go, align 4, !tbaa !0
  %5 = load i32* %byte_pos, align 4, !tbaa !0
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %byte_pos, align 4, !tbaa !0
  %idxprom = sext i32 %5 to i64
  %6 = load i8** %streamBuffer, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %6, i64 %idxprom
  store i8 %3, i8* %arrayidx, align 1, !tbaa !1
  store i8 0, i8* %byte_buf, align 1, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then10
  %7 = phi i8 [ %3, %if.end ], [ 0, %if.then10 ]
  %inc15 = add nsw i32 %i.029, 1
  %8 = load i32* %len, align 4, !tbaa !0
  %cmp = icmp slt i32 %inc15, %8
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_Intra4x4PredictionMode(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %0 = load i32* %value1, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, -1
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %len, align 4, !tbaa !0
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  store i32 1, i32* %inf, align 4, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 4, i32* %len, align 4, !tbaa !0
  %inf3 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  store i32 %0, i32* %inf3, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = phi i32 [ %0, %if.else ], [ 1, %if.then ]
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5
  store i32 %1, i32* %bitpattern, align 4, !tbaa !0
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0
  %2 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %2) #4
  %type = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 0
  %3 = load i32* %type, align 4, !tbaa !0
  %cmp5 = icmp eq i32 %3, 0
  br i1 %cmp5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  %4 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  %write_flag = getelementptr inbounds %struct.Bitstream* %4, i64 0, i32 10
  store i32 1, i32* %write_flag, align 4, !tbaa !0
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then6
  %5 = load i32* %len, align 4, !tbaa !0
  ret i32 %5
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %se, %struct.Bitstream* nocapture %this_streamBuffer) #0 {
entry:
  %mapping = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 8
  %0 = load void (i32, i32, i32*, i32*)** %mapping, align 8, !tbaa !3
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %1 = load i32* %value1, align 4, !tbaa !0
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2
  %2 = load i32* %value2, align 4, !tbaa !0
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  tail call void %0(i32 %1, i32 %2, i32* %len, i32* %inf) #5
  %3 = load i32* %len, align 4, !tbaa !0
  %div.i = sdiv i32 %3, 2
  %shl.i = shl i32 1, %div.i
  %4 = load i32* %inf, align 4, !tbaa !0
  %sub.i = add nsw i32 %shl.i, -1
  %and.i = and i32 %sub.i, %4
  %or.i = or i32 %and.i, %shl.i
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5
  store i32 %or.i, i32* %bitpattern.i, align 4, !tbaa !0
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %this_streamBuffer) #4
  %5 = load i32* %len, align 4, !tbaa !0
  ret i32 %5
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* nocapture %se, %struct.Bitstream* nocapture %this_streamBuffer) #0 {
entry:
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %this_streamBuffer) #4
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  %0 = load i32* %len, align 4, !tbaa !0
  ret i32 %0
}

; Function Attrs: nounwind optsize uwtable
define i32 @symbol2vlc(%struct.syntaxelement* nocapture %sym) #0 {
entry:
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3
  %0 = load i32* %len, align 4, !tbaa !0
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5
  store i32 0, i32* %bitpattern, align 4, !tbaa !0
  %cmp10 = icmp sgt i32 %0, 0
  br i1 %cmp10, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %inf = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 4
  %1 = load i32* %inf, align 4, !tbaa !0
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %dec12.in = phi i32 [ %0, %while.body.lr.ph ], [ %dec12, %while.body ]
  %storemerge11 = phi i32 [ 0, %while.body.lr.ph ], [ %or, %while.body ]
  %dec12 = add nsw i32 %dec12.in, -1
  %shl = shl i32 %storemerge11, 1
  %shr8 = lshr i32 %1, %dec12
  %and = and i32 %shr8, 1
  %or = or i32 %and, %shl
  %cmp = icmp sgt i32 %dec12, 0
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.body
  store i32 %or, i32* %bitpattern, align 4, !tbaa !0
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_VLC(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %0 = load i32* %value1, align 4, !tbaa !0
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  store i32 %0, i32* %inf, align 4, !tbaa !0
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2
  %1 = load i32* %value2, align 4, !tbaa !0
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  store i32 %1, i32* %len, align 4, !tbaa !0
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5
  store i32 0, i32* %bitpattern.i, align 4, !tbaa !0
  %cmp10.i = icmp sgt i32 %1, 0
  br i1 %cmp10.i, label %while.body.i, label %symbol2vlc.exit

while.body.i:                                     ; preds = %entry, %while.body.i
  %dec12.in.i = phi i32 [ %dec12.i, %while.body.i ], [ %1, %entry ]
  %storemerge11.i = phi i32 [ %or.i, %while.body.i ], [ 0, %entry ]
  %dec12.i = add nsw i32 %dec12.in.i, -1
  %shl.i = shl i32 %storemerge11.i, 1
  %shr8.i = lshr i32 %0, %dec12.i
  %and.i = and i32 %shr8.i, 1
  %or.i = or i32 %and.i, %shl.i
  %cmp.i = icmp sgt i32 %dec12.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i, align 4, !tbaa !0
  br label %symbol2vlc.exit

symbol2vlc.exit:                                  ; preds = %entry, %while.cond.while.end_crit_edge.i
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0
  %2 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %2) #4
  %3 = load i32* %len, align 4, !tbaa !0
  ret i32 %3
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_NumCoeffTrailingOnes(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  %0 = load i32* %len, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  store i32 6, i32* %len, align 4, !tbaa !0
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %1 = load i32* %value1, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %sub = shl i32 %1, 2
  %shl = add i32 %sub, -4
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2
  %2 = load i32* %value2, align 4, !tbaa !0
  %or = or i32 %2, %shl
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  store i32 %or, i32* %inf, align 4, !tbaa !0
  br label %if.end29.thread

if.else:                                          ; preds = %if.then
  %inf5 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  store i32 3, i32* %inf5, align 4, !tbaa !0
  br label %if.end29.thread

if.end29.thread:                                  ; preds = %if.else, %if.then3
  %.ph = phi i32 [ %or, %if.then3 ], [ 3, %if.else ]
  %bitpattern.i52 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5
  store i32 0, i32* %bitpattern.i52, align 4, !tbaa !0
  br label %while.body.lr.ph.i

if.end23:                                         ; preds = %entry
  %value17 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %3 = load i32* %value17, align 4, !tbaa !0
  %idxprom = sext i32 %3 to i64
  %value28 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2
  %4 = load i32* %value28, align 4, !tbaa !0
  %idxprom9 = sext i32 %4 to i64
  %idxprom10 = sext i32 %0 to i64
  %arrayidx12 = getelementptr inbounds [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnes.lentab, i64 0, i64 %idxprom10, i64 %idxprom9, i64 %idxprom
  %5 = load i32* %arrayidx12, align 4, !tbaa !0
  store i32 %5, i32* %len, align 4, !tbaa !0
  %arrayidx21 = getelementptr inbounds [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnes.codtab, i64 0, i64 %idxprom10, i64 %idxprom9, i64 %idxprom
  %6 = load i32* %arrayidx21, align 4, !tbaa !0
  %inf22 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  store i32 %6, i32* %inf22, align 4, !tbaa !0
  %cmp25 = icmp eq i32 %5, 0
  br i1 %cmp25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end23
  %value228 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2
  %7 = load i32* %value228, align 4, !tbaa !0
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %3, i32 %7) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end29:                                         ; preds = %if.end23
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5
  store i32 0, i32* %bitpattern.i, align 4, !tbaa !0
  %cmp10.i = icmp sgt i32 %5, 0
  br i1 %cmp10.i, label %while.body.lr.ph.i, label %symbol2vlc.exit

while.body.lr.ph.i:                               ; preds = %if.end29.thread, %if.end29
  %bitpattern.i54 = phi i32* [ %bitpattern.i52, %if.end29.thread ], [ %bitpattern.i, %if.end29 ]
  %8 = phi i32 [ %.ph, %if.end29.thread ], [ %6, %if.end29 ]
  %9 = phi i32 [ 6, %if.end29.thread ], [ %5, %if.end29 ]
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %dec12.in.i = phi i32 [ %9, %while.body.lr.ph.i ], [ %dec12.i, %while.body.i ]
  %storemerge11.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %or.i, %while.body.i ]
  %dec12.i = add nsw i32 %dec12.in.i, -1
  %shl.i = shl i32 %storemerge11.i, 1
  %shr8.i = lshr i32 %8, %dec12.i
  %and.i = and i32 %shr8.i, 1
  %or.i = or i32 %and.i, %shl.i
  %cmp.i = icmp sgt i32 %dec12.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i54, align 4, !tbaa !0
  br label %symbol2vlc.exit

symbol2vlc.exit:                                  ; preds = %if.end29, %while.cond.while.end_crit_edge.i
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0
  %10 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %10) #4
  %11 = load i32* %len, align 4, !tbaa !0
  ret i32 %11
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_NumCoeffTrailingOnesChromaDC(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %1 = load i32* %yuv_format, align 4, !tbaa !0
  %sub = add nsw i32 %1, -1
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %2 = load i32* %value1, align 4, !tbaa !0
  %idxprom = sext i32 %2 to i64
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2
  %3 = load i32* %value2, align 4, !tbaa !0
  %idxprom1 = sext i32 %3 to i64
  %idxprom2 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab, i64 0, i64 %idxprom2, i64 %idxprom1, i64 %idxprom
  %4 = load i32* %arrayidx4, align 4, !tbaa !0
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  store i32 %4, i32* %len, align 4, !tbaa !0
  %arrayidx12 = getelementptr inbounds [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab, i64 0, i64 %idxprom2, i64 %idxprom1, i64 %idxprom
  %5 = load i32* %arrayidx12, align 4, !tbaa !0
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  store i32 %5, i32* %inf, align 4, !tbaa !0
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), i32 %2, i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5
  store i32 0, i32* %bitpattern.i, align 4, !tbaa !0
  %cmp10.i = icmp sgt i32 %4, 0
  br i1 %cmp10.i, label %while.body.i, label %symbol2vlc.exit

while.body.i:                                     ; preds = %if.end, %while.body.i
  %dec12.in.i = phi i32 [ %dec12.i, %while.body.i ], [ %4, %if.end ]
  %storemerge11.i = phi i32 [ %or.i, %while.body.i ], [ 0, %if.end ]
  %dec12.i = add nsw i32 %dec12.in.i, -1
  %shl.i = shl i32 %storemerge11.i, 1
  %shr8.i = lshr i32 %5, %dec12.i
  %and.i = and i32 %shr8.i, 1
  %or.i = or i32 %and.i, %shl.i
  %cmp.i = icmp sgt i32 %dec12.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i, align 4, !tbaa !0
  br label %symbol2vlc.exit

symbol2vlc.exit:                                  ; preds = %if.end, %while.cond.while.end_crit_edge.i
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0
  %6 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %6) #4
  %7 = load i32* %len, align 4, !tbaa !0
  ret i32 %7
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_TotalZeros(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  %0 = load i32* %len, align 4, !tbaa !0
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %1 = load i32* %value1, align 4, !tbaa !0
  %idxprom = sext i32 %1 to i64
  %idxprom1 = sext i32 %0 to i64
  %arrayidx2 = getelementptr inbounds [15 x [16 x i32]]* @writeSyntaxElement_TotalZeros.lentab, i64 0, i64 %idxprom1, i64 %idxprom
  %2 = load i32* %arrayidx2, align 4, !tbaa !0
  store i32 %2, i32* %len, align 4, !tbaa !0
  %arrayidx8 = getelementptr inbounds [15 x [16 x i32]]* @writeSyntaxElement_TotalZeros.codtab, i64 0, i64 %idxprom1, i64 %idxprom
  %3 = load i32* %arrayidx8, align 4, !tbaa !0
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  store i32 %3, i32* %inf, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0), i32 %1) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5
  store i32 0, i32* %bitpattern.i, align 4, !tbaa !0
  %cmp10.i = icmp sgt i32 %2, 0
  br i1 %cmp10.i, label %while.body.i, label %symbol2vlc.exit

while.body.i:                                     ; preds = %if.end, %while.body.i
  %dec12.in.i = phi i32 [ %dec12.i, %while.body.i ], [ %2, %if.end ]
  %storemerge11.i = phi i32 [ %or.i, %while.body.i ], [ 0, %if.end ]
  %dec12.i = add nsw i32 %dec12.in.i, -1
  %shl.i = shl i32 %storemerge11.i, 1
  %shr8.i = lshr i32 %3, %dec12.i
  %and.i = and i32 %shr8.i, 1
  %or.i = or i32 %and.i, %shl.i
  %cmp.i = icmp sgt i32 %dec12.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i, align 4, !tbaa !0
  br label %symbol2vlc.exit

symbol2vlc.exit:                                  ; preds = %if.end, %while.cond.while.end_crit_edge.i
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0
  %4 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %4) #4
  %5 = load i32* %len, align 4, !tbaa !0
  ret i32 %5
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_TotalZerosChromaDC(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  %0 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159
  %1 = load i32* %yuv_format, align 4, !tbaa !0
  %sub = add nsw i32 %1, -1
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  %2 = load i32* %len, align 4, !tbaa !0
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %3 = load i32* %value1, align 4, !tbaa !0
  %idxprom = sext i32 %3 to i64
  %idxprom1 = sext i32 %2 to i64
  %idxprom2 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds [3 x [15 x [16 x i32]]]* @writeSyntaxElement_TotalZerosChromaDC.lentab, i64 0, i64 %idxprom2, i64 %idxprom1, i64 %idxprom
  %4 = load i32* %arrayidx4, align 4, !tbaa !0
  store i32 %4, i32* %len, align 4, !tbaa !0
  %arrayidx12 = getelementptr inbounds [3 x [15 x [16 x i32]]]* @writeSyntaxElement_TotalZerosChromaDC.codtab, i64 0, i64 %idxprom2, i64 %idxprom1, i64 %idxprom
  %5 = load i32* %arrayidx12, align 4, !tbaa !0
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  store i32 %5, i32* %inf, align 4, !tbaa !0
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str2, i64 0, i64 0), i32 %3) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5
  store i32 0, i32* %bitpattern.i, align 4, !tbaa !0
  %cmp10.i = icmp sgt i32 %4, 0
  br i1 %cmp10.i, label %while.body.i, label %symbol2vlc.exit

while.body.i:                                     ; preds = %if.end, %while.body.i
  %dec12.in.i = phi i32 [ %dec12.i, %while.body.i ], [ %4, %if.end ]
  %storemerge11.i = phi i32 [ %or.i, %while.body.i ], [ 0, %if.end ]
  %dec12.i = add nsw i32 %dec12.in.i, -1
  %shl.i = shl i32 %storemerge11.i, 1
  %shr8.i = lshr i32 %5, %dec12.i
  %and.i = and i32 %shr8.i, 1
  %or.i = or i32 %and.i, %shl.i
  %cmp.i = icmp sgt i32 %dec12.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i, align 4, !tbaa !0
  br label %symbol2vlc.exit

symbol2vlc.exit:                                  ; preds = %if.end, %while.cond.while.end_crit_edge.i
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0
  %6 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %6) #4
  %7 = load i32* %len, align 4, !tbaa !0
  ret i32 %7
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_Run(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  %0 = load i32* %len, align 4, !tbaa !0
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %1 = load i32* %value1, align 4, !tbaa !0
  %idxprom = sext i32 %1 to i64
  %idxprom1 = sext i32 %0 to i64
  %arrayidx2 = getelementptr inbounds [15 x [16 x i32]]* @writeSyntaxElement_Run.lentab, i64 0, i64 %idxprom1, i64 %idxprom
  %2 = load i32* %arrayidx2, align 4, !tbaa !0
  store i32 %2, i32* %len, align 4, !tbaa !0
  %arrayidx8 = getelementptr inbounds [15 x [16 x i32]]* @writeSyntaxElement_Run.codtab, i64 0, i64 %idxprom1, i64 %idxprom
  %3 = load i32* %arrayidx8, align 4, !tbaa !0
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  store i32 %3, i32* %inf, align 4, !tbaa !0
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str3, i64 0, i64 0), i32 %1) #5
  tail call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5
  store i32 0, i32* %bitpattern.i, align 4, !tbaa !0
  %cmp10.i = icmp sgt i32 %2, 0
  br i1 %cmp10.i, label %while.body.i, label %symbol2vlc.exit

while.body.i:                                     ; preds = %if.end, %while.body.i
  %dec12.in.i = phi i32 [ %dec12.i, %while.body.i ], [ %2, %if.end ]
  %storemerge11.i = phi i32 [ %or.i, %while.body.i ], [ 0, %if.end ]
  %dec12.i = add nsw i32 %dec12.in.i, -1
  %shl.i = shl i32 %storemerge11.i, 1
  %shr8.i = lshr i32 %3, %dec12.i
  %and.i = and i32 %shr8.i, 1
  %or.i = or i32 %and.i, %shl.i
  %cmp.i = icmp sgt i32 %dec12.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i, align 4, !tbaa !0
  br label %symbol2vlc.exit

symbol2vlc.exit:                                  ; preds = %if.end, %while.cond.while.end_crit_edge.i
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0
  %4 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %4) #4
  %5 = load i32* %len, align 4, !tbaa !0
  ret i32 %5
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_Level_VLC1(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %0 = load i32* %value1, align 4, !tbaa !0
  %ispos = icmp sgt i32 %0, -1
  %neg = sub i32 0, %0
  %1 = select i1 %ispos, i32 %0, i32 %neg
  %.lobit = lshr i32 %0, 31
  %cmp1 = icmp slt i32 %1, 8
  br i1 %cmp1, label %if.end15, label %if.else

if.else:                                          ; preds = %entry
  %cmp2 = icmp slt i32 %1, 16
  %len4 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  br i1 %cmp2, label %if.then3, label %if.else8

if.then3:                                         ; preds = %if.else
  store i32 19, i32* %len4, align 4, !tbaa !0
  %sub5 = shl i32 %1, 1
  %shl = add i32 %sub5, -16
  %or = or i32 %.lobit, %shl
  %or6 = or i32 %or, 16
  %inf7 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  store i32 %or6, i32* %inf7, align 4, !tbaa !0
  br label %if.end15.thread

if.else8:                                         ; preds = %if.else
  store i32 28, i32* %len4, align 4, !tbaa !0
  %sub10 = shl i32 %1, 1
  %shl11 = add i32 %sub10, -32
  %or12 = or i32 %.lobit, %shl11
  %or13 = or i32 %or12, 4096
  %inf14 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  store i32 %or13, i32* %inf14, align 4, !tbaa !0
  br label %if.end15.thread

if.end15.thread:                                  ; preds = %if.then3, %if.else8
  %.ph = phi i32 [ %or6, %if.then3 ], [ %or13, %if.else8 ]
  %.ph32 = phi i32 [ 19, %if.then3 ], [ 28, %if.else8 ]
  %len.i33 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  %bitpattern.i34 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5
  store i32 0, i32* %bitpattern.i34, align 4, !tbaa !0
  br label %while.body.lr.ph.i

if.end15:                                         ; preds = %entry
  %mul = shl nsw i32 %1, 1
  %add = or i32 %mul, %.lobit
  %sub = add nsw i32 %add, -1
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  store i32 %sub, i32* %len, align 4, !tbaa !0
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  store i32 1, i32* %inf, align 4, !tbaa !0
  %len.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5
  store i32 0, i32* %bitpattern.i, align 4, !tbaa !0
  %cmp10.i = icmp sgt i32 %sub, 0
  br i1 %cmp10.i, label %while.body.lr.ph.i, label %symbol2vlc.exit

while.body.lr.ph.i:                               ; preds = %if.end15.thread, %if.end15
  %bitpattern.i38 = phi i32* [ %bitpattern.i34, %if.end15.thread ], [ %bitpattern.i, %if.end15 ]
  %len.i37 = phi i32* [ %len.i33, %if.end15.thread ], [ %len.i, %if.end15 ]
  %2 = phi i32 [ %.ph32, %if.end15.thread ], [ %sub, %if.end15 ]
  %3 = phi i32 [ %.ph, %if.end15.thread ], [ 1, %if.end15 ]
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %dec12.in.i = phi i32 [ %2, %while.body.lr.ph.i ], [ %dec12.i, %while.body.i ]
  %storemerge11.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %or.i, %while.body.i ]
  %dec12.i = add nsw i32 %dec12.in.i, -1
  %shl.i = shl i32 %storemerge11.i, 1
  %shr8.i = lshr i32 %3, %dec12.i
  %and.i = and i32 %shr8.i, 1
  %or.i = or i32 %and.i, %shl.i
  %cmp.i = icmp sgt i32 %dec12.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i38, align 4, !tbaa !0
  br label %symbol2vlc.exit

symbol2vlc.exit:                                  ; preds = %if.end15, %while.cond.while.end_crit_edge.i
  %len.i36 = phi i32* [ %len.i, %if.end15 ], [ %len.i37, %while.cond.while.end_crit_edge.i ]
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0
  %4 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %4) #4
  %5 = load i32* %len.i36, align 4, !tbaa !0
  ret i32 %5
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_Level_VLCN(%struct.syntaxelement* nocapture %se, i32 %vlc, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1
  %0 = load i32* %value1, align 4, !tbaa !0
  %ispos = icmp sgt i32 %0, -1
  %neg32 = sub i32 0, %0
  %1 = select i1 %ispos, i32 %0, i32 %neg32
  %.lobit = lshr i32 %0, 31
  %sub = add nsw i32 %vlc, -1
  %shl = shl i32 15, %sub
  %add = add nsw i32 %shl, 1
  %sub1 = add nsw i32 %1, -1
  %cmp4 = icmp slt i32 %1, %add
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %shl2 = shl i32 -1, %sub
  %neg = xor i32 %shl2, 2147483647
  %and = and i32 %sub1, %neg
  %shr = ashr i32 %sub1, %sub
  %add5 = add i32 %vlc, 1
  %add6 = add i32 %add5, %shr
  %shl8 = shl i32 1, %vlc
  %shl9 = shl i32 %and, 1
  %or = or i32 %.lobit, %shl8
  %or10 = or i32 %or, %shl9
  br label %if.end

if.else:                                          ; preds = %entry
  %sub11 = sub nsw i32 %1, %add
  %shl12 = shl i32 %sub11, 1
  %or13 = or i32 %.lobit, %shl12
  %or14 = or i32 %or13, 4096
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %iLength.0 = phi i32 [ %add6, %if.then ], [ 28, %if.else ]
  %2 = phi i32 [ %or10, %if.then ], [ %or14, %if.else ]
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3
  store i32 %iLength.0, i32* %len, align 4, !tbaa !0
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4
  store i32 %2, i32* %inf, align 4, !tbaa !0
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5
  store i32 0, i32* %bitpattern.i, align 4, !tbaa !0
  %cmp10.i = icmp sgt i32 %iLength.0, 0
  br i1 %cmp10.i, label %while.body.i, label %symbol2vlc.exit

while.body.i:                                     ; preds = %if.end, %while.body.i
  %dec12.in.i = phi i32 [ %dec12.i, %while.body.i ], [ %iLength.0, %if.end ]
  %storemerge11.i = phi i32 [ %or.i, %while.body.i ], [ 0, %if.end ]
  %dec12.i = add nsw i32 %dec12.in.i, -1
  %shl.i = shl i32 %storemerge11.i, 1
  %shr8.i = lshr i32 %2, %dec12.i
  %and.i = and i32 %shr8.i, 1
  %or.i = or i32 %and.i, %shl.i
  %cmp.i = icmp sgt i32 %dec12.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i, align 4, !tbaa !0
  br label %symbol2vlc.exit

symbol2vlc.exit:                                  ; preds = %if.end, %while.cond.while.end_crit_edge.i
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0
  %3 = load %struct.Bitstream** %bitstream, align 8, !tbaa !3
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %3) #4
  %4 = load i32* %len, align 4, !tbaa !0
  ret i32 %4
}

; Function Attrs: nounwind optsize uwtable
define void @writeVlcByteAlign(%struct.Bitstream* nocapture %currStream) #0 {
entry:
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 1
  %0 = load i32* %bits_to_go, align 4, !tbaa !0
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %byte_buf = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 2
  %1 = load i8* %byte_buf, align 1, !tbaa !1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, %0
  %sub = sub nsw i32 8, %0
  %shr = lshr i32 255, %sub
  %or = or i32 %shl, %shr
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %byte_buf, align 1, !tbaa !1
  %2 = load %struct.ImageParameters** @img, align 8, !tbaa !3
  %type = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 6
  %3 = load i32* %type, align 4, !tbaa !0
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.StatParameters** @stats, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 22, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !0
  %add = add nsw i32 %5, %0
  store i32 %add, i32* %arrayidx, align 4, !tbaa !0
  %6 = load i8* %byte_buf, align 1, !tbaa !1
  %byte_pos = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 0
  %7 = load i32* %byte_pos, align 4, !tbaa !0
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %byte_pos, align 4, !tbaa !0
  %idxprom7 = sext i32 %7 to i64
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 9
  %8 = load i8** %streamBuffer, align 8, !tbaa !3
  %arrayidx8 = getelementptr inbounds i8* %8, i64 %idxprom7
  store i8 %6, i8* %arrayidx8, align 1, !tbaa !1
  store i32 8, i32* %bits_to_go, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare double @ldexp(double, i32)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
