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
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], i32****, i32***, i32, i32, [4 x i32], [4 x i32], i32**, [16 x i32], i32, i64, i32, i16******, i16******, i16******, i16******, [2 x [4 x [4 x i16]]], i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"part->bitstream->streamBuffer != ((void*)0)\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c\00", align 1
@__PRETTY_FUNCTION__.ue_v = private unnamed_addr constant [39 x i8] c"int ue_v(char *, int, DataPartition *)\00", align 1
@__PRETTY_FUNCTION__.se_v = private unnamed_addr constant [39 x i8] c"int se_v(char *, int, DataPartition *)\00", align 1
@__PRETTY_FUNCTION__.u_1 = private unnamed_addr constant [38 x i8] c"int u_1(char *, int, DataPartition *)\00", align 1
@__PRETTY_FUNCTION__.u_v = private unnamed_addr constant [43 x i8] c"int u_v(int, char *, int, DataPartition *)\00", align 1
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

; Function Attrs: nounwind optsize uwtable
define i32 @ue_v(i8* nocapture %tracestring, i32 %value, %struct.datapartition* nocapture %part) #0 {
entry:
  %symbol = alloca %struct.syntaxelement, align 8
  call void @llvm.dbg.value(metadata !{i8* %tracestring}, i64 0, metadata !120), !dbg !803
  call void @llvm.dbg.value(metadata !{i32 %value}, i64 0, metadata !121), !dbg !803
  call void @llvm.dbg.value(metadata !{%struct.datapartition* %part}, i64 0, metadata !122), !dbg !803
  %0 = bitcast %struct.syntaxelement* %symbol to i8*, !dbg !804
  call void @llvm.lifetime.start(i64 48, i8* %0) #2, !dbg !804
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %symbol}, metadata !123), !dbg !804
  call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %symbol}, i64 0, metadata !124), !dbg !804
  %type = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0, !dbg !805
  store i32 0, i32* %type, align 8, !dbg !805, !tbaa !806
  %mapping = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 8, !dbg !809
  store void (i32, i32, i32*, i32*)* @ue_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !809, !tbaa !810
  %value1 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1, !dbg !811
  store i32 %value, i32* %value1, align 4, !dbg !811, !tbaa !806
  %value2 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2, !dbg !812
  store i32 0, i32* %value2, align 8, !dbg !812, !tbaa !806
  %bitstream = getelementptr inbounds %struct.datapartition* %part, i64 0, i32 0, !dbg !813
  %1 = load %struct.Bitstream** %bitstream, align 8, !dbg !813, !tbaa !810
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !813
  %2 = load i8** %streamBuffer, align 8, !dbg !813, !tbaa !810
  %cmp = icmp eq i8* %2, null, !dbg !813
  br i1 %cmp, label %cond.false, label %cond.end, !dbg !813

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 68, i8* getelementptr inbounds ([39 x i8]* @__PRETTY_FUNCTION__.ue_v, i64 0, i64 0)) #5, !dbg !813
  unreachable, !dbg !813

cond.end:                                         ; preds = %entry
  %call = call i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %symbol, %struct.datapartition* %part) #6, !dbg !814
  call void @llvm.lifetime.end(i64 48, i8* %0) #2, !dbg !815
  ret i32 %call, !dbg !815
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @ue_linfo(i32 %ue, i32 %dummy, i32* nocapture %len, i32* nocapture %info) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %ue}, i64 0, metadata !151), !dbg !816
  tail call void @llvm.dbg.value(metadata !{i32 %dummy}, i64 0, metadata !152), !dbg !816
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !153), !dbg !816
  tail call void @llvm.dbg.value(metadata !{i32* %info}, i64 0, metadata !154), !dbg !816
  %add = add nsw i32 %ue, 1, !dbg !817
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !155), !dbg !818
  br label %land.rhs, !dbg !818

for.cond:                                         ; preds = %land.rhs
  %nn.015 = sdiv i32 %nn.015.in, 2, !dbg !817
  %cmp = icmp slt i32 %inc, 16, !dbg !818
  br i1 %cmp, label %land.rhs, label %for.end, !dbg !818

land.rhs:                                         ; preds = %entry, %for.cond
  %nn.015.in = phi i32 [ %add, %entry ], [ %nn.015, %for.cond ]
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %nn.0.in.off = add i32 %nn.015.in, 1, !dbg !818
  %0 = icmp ugt i32 %nn.0.in.off, 2, !dbg !818
  %inc = add nsw i32 %i.013, 1, !dbg !818
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !155), !dbg !818
  br i1 %0, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %inc, %for.cond ], [ %i.013, %land.rhs ]
  %mul = shl nsw i32 %i.0.lcssa, 1, !dbg !820
  %add311 = or i32 %mul, 1, !dbg !820
  store i32 %add311, i32* %len, align 4, !dbg !820, !tbaa !806
  %1 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #2, !dbg !821
  %conv5 = fptosi double %1 to i32, !dbg !821
  %sub = sub nsw i32 %add, %conv5, !dbg !821
  store i32 %sub, i32* %info, align 4, !dbg !821, !tbaa !806
  ret void, !dbg !822
}

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !222), !dbg !823
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %this_dataPart}, i64 0, metadata !223), !dbg !823
  %mapping = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 8, !dbg !824
  %0 = load void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !824, !tbaa !810
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !824
  %1 = load i32* %value1, align 4, !dbg !824, !tbaa !806
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !824
  %2 = load i32* %value2, align 4, !dbg !824, !tbaa !806
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !824
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !824
  tail call void %0(i32 %1, i32 %2, i32* %len, i32* %inf) #7, !dbg !824
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !825), !dbg !827
  %3 = load i32* %len, align 4, !dbg !828, !tbaa !806
  %div.i = sdiv i32 %3, 2, !dbg !828
  tail call void @llvm.dbg.value(metadata !{i32 %div.i}, i64 0, metadata !829), !dbg !828
  %shl.i = shl i32 1, %div.i, !dbg !830
  %4 = load i32* %inf, align 4, !dbg !830, !tbaa !806
  %sub.i = add nsw i32 %shl.i, -1, !dbg !830
  %and.i = and i32 %sub.i, %4, !dbg !830
  %or.i = or i32 %and.i, %shl.i, !dbg !830
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !830
  store i32 %or.i, i32* %bitpattern.i, align 4, !dbg !830, !tbaa !806
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !831
  %5 = load %struct.Bitstream** %bitstream, align 8, !dbg !831, !tbaa !810
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %5) #6, !dbg !831
  %type = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 0, !dbg !832
  %6 = load i32* %type, align 4, !dbg !832, !tbaa !806
  %cmp = icmp eq i32 %6, 0, !dbg !832
  br i1 %cmp, label %if.end, label %if.then, !dbg !832

if.then:                                          ; preds = %entry
  %7 = load %struct.Bitstream** %bitstream, align 8, !dbg !833, !tbaa !810
  %write_flag = getelementptr inbounds %struct.Bitstream* %7, i64 0, i32 10, !dbg !833
  store i32 1, i32* %write_flag, align 4, !dbg !833, !tbaa !806
  br label %if.end, !dbg !833

if.end:                                           ; preds = %entry, %if.then
  %8 = load i32* %len, align 4, !dbg !834, !tbaa !806
  ret i32 %8, !dbg !834
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @se_v(i8* nocapture %tracestring, i32 %value, %struct.datapartition* nocapture %part) #0 {
entry:
  %symbol = alloca %struct.syntaxelement, align 8
  call void @llvm.dbg.value(metadata !{i8* %tracestring}, i64 0, metadata !127), !dbg !835
  call void @llvm.dbg.value(metadata !{i32 %value}, i64 0, metadata !128), !dbg !835
  call void @llvm.dbg.value(metadata !{%struct.datapartition* %part}, i64 0, metadata !129), !dbg !835
  %0 = bitcast %struct.syntaxelement* %symbol to i8*, !dbg !836
  call void @llvm.lifetime.start(i64 48, i8* %0) #2, !dbg !836
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %symbol}, metadata !130), !dbg !836
  call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %symbol}, i64 0, metadata !131), !dbg !836
  %type = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0, !dbg !837
  store i32 0, i32* %type, align 8, !dbg !837, !tbaa !806
  %mapping = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 8, !dbg !838
  store void (i32, i32, i32*, i32*)* @se_linfo, void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !838, !tbaa !810
  %value1 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1, !dbg !839
  store i32 %value, i32* %value1, align 4, !dbg !839, !tbaa !806
  %value2 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2, !dbg !840
  store i32 0, i32* %value2, align 8, !dbg !840, !tbaa !806
  %bitstream = getelementptr inbounds %struct.datapartition* %part, i64 0, i32 0, !dbg !841
  %1 = load %struct.Bitstream** %bitstream, align 8, !dbg !841, !tbaa !810
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !841
  %2 = load i8** %streamBuffer, align 8, !dbg !841, !tbaa !810
  %cmp = icmp eq i8* %2, null, !dbg !841
  br i1 %cmp, label %cond.false, label %cond.end, !dbg !841

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 106, i8* getelementptr inbounds ([39 x i8]* @__PRETTY_FUNCTION__.se_v, i64 0, i64 0)) #5, !dbg !841
  unreachable, !dbg !841

cond.end:                                         ; preds = %entry
  %call = call i32 @writeSyntaxElement_UVLC(%struct.syntaxelement* %symbol, %struct.datapartition* %part) #6, !dbg !842
  call void @llvm.lifetime.end(i64 48, i8* %0) #2, !dbg !843
  ret i32 %call, !dbg !843
}

; Function Attrs: nounwind optsize uwtable
define void @se_linfo(i32 %se, i32 %dummy, i32* nocapture %len, i32* nocapture %info) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %se}, i64 0, metadata !159), !dbg !844
  tail call void @llvm.dbg.value(metadata !{i32 %dummy}, i64 0, metadata !160), !dbg !844
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !161), !dbg !844
  tail call void @llvm.dbg.value(metadata !{i32* %info}, i64 0, metadata !162), !dbg !844
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !165), !dbg !845
  %cmp = icmp slt i32 %se, 1, !dbg !846
  %. = zext i1 %cmp to i32, !dbg !846
  tail call void @llvm.dbg.value(metadata !{i32 %.}, i64 0, metadata !165), !dbg !847
  %ispos = icmp sgt i32 %se, -1, !dbg !849
  %neg = sub i32 0, %se, !dbg !849
  %0 = select i1 %ispos, i32 %se, i32 %neg, !dbg !849
  %shl = shl i32 %0, 1, !dbg !849
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !164), !dbg !849
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !163), !dbg !850
  br label %land.rhs, !dbg !850

for.cond:                                         ; preds = %land.rhs
  %nn.017 = sdiv i32 %nn.017.in, 2, !dbg !852
  %cmp1 = icmp slt i32 %inc, 16, !dbg !850
  br i1 %cmp1, label %land.rhs, label %for.end, !dbg !850

land.rhs:                                         ; preds = %entry, %for.cond
  %nn.017.in = phi i32 [ %shl, %entry ], [ %nn.017, %for.cond ]
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %nn.0.in.off = add i32 %nn.017.in, 1, !dbg !850
  %1 = icmp ugt i32 %nn.0.in.off, 2, !dbg !850
  %inc = add nsw i32 %i.015, 1, !dbg !850
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !163), !dbg !850
  br i1 %1, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %inc, %for.cond ], [ %i.015, %land.rhs ]
  %mul = shl nsw i32 %i.0.lcssa, 1, !dbg !853
  %add13 = or i32 %mul, 1, !dbg !853
  store i32 %add13, i32* %len, align 4, !dbg !853, !tbaa !806
  %2 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #2, !dbg !854
  %conv5 = fptosi double %2 to i32, !dbg !854
  %sub = or i32 %shl, %., !dbg !854
  %add6 = sub i32 %sub, %conv5, !dbg !854
  store i32 %add6, i32* %info, align 4, !dbg !854, !tbaa !806
  ret void, !dbg !855
}

; Function Attrs: nounwind optsize uwtable
define i32 @u_1(i8* nocapture %tracestring, i32 %value, %struct.datapartition* nocapture %part) #0 {
entry:
  %symbol = alloca %struct.syntaxelement, align 8
  call void @llvm.dbg.value(metadata !{i8* %tracestring}, i64 0, metadata !134), !dbg !856
  call void @llvm.dbg.value(metadata !{i32 %value}, i64 0, metadata !135), !dbg !856
  call void @llvm.dbg.value(metadata !{%struct.datapartition* %part}, i64 0, metadata !136), !dbg !856
  %0 = bitcast %struct.syntaxelement* %symbol to i8*, !dbg !857
  call void @llvm.lifetime.start(i64 48, i8* %0) #2, !dbg !857
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %symbol}, metadata !137), !dbg !857
  call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %symbol}, i64 0, metadata !138), !dbg !857
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 5, !dbg !858
  store i32 %value, i32* %bitpattern, align 4, !dbg !858, !tbaa !806
  %len = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 3, !dbg !859
  store i32 1, i32* %len, align 4, !dbg !859, !tbaa !806
  %type = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0, !dbg !860
  store i32 0, i32* %type, align 8, !dbg !860, !tbaa !806
  %value1 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1, !dbg !861
  store i32 %value, i32* %value1, align 4, !dbg !861, !tbaa !806
  %value2 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2, !dbg !862
  store i32 0, i32* %value2, align 8, !dbg !862, !tbaa !806
  %bitstream = getelementptr inbounds %struct.datapartition* %part, i64 0, i32 0, !dbg !863
  %1 = load %struct.Bitstream** %bitstream, align 8, !dbg !863, !tbaa !810
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !863
  %2 = load i8** %streamBuffer, align 8, !dbg !863, !tbaa !810
  %cmp = icmp eq i8* %2, null, !dbg !863
  br i1 %cmp, label %cond.false, label %cond.end, !dbg !863

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 147, i8* getelementptr inbounds ([38 x i8]* @__PRETTY_FUNCTION__.u_1, i64 0, i64 0)) #5, !dbg !863
  unreachable, !dbg !863

cond.end:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %symbol}, i64 0, metadata !864) #2, !dbg !866
  call void @llvm.dbg.value(metadata !{%struct.datapartition* %part}, i64 0, metadata !867) #2, !dbg !866
  call void @writeUVLC2buffer(%struct.syntaxelement* %symbol, %struct.Bitstream* %1) #7, !dbg !868
  %3 = load i32* %type, align 8, !dbg !869, !tbaa !806
  %cmp.i = icmp eq i32 %3, 0, !dbg !869
  br i1 %cmp.i, label %writeSyntaxElement_fixed.exit, label %if.then.i, !dbg !869

if.then.i:                                        ; preds = %cond.end
  %4 = load %struct.Bitstream** %bitstream, align 8, !dbg !870, !tbaa !810
  %write_flag.i = getelementptr inbounds %struct.Bitstream* %4, i64 0, i32 10, !dbg !870
  store i32 1, i32* %write_flag.i, align 4, !dbg !870, !tbaa !806
  br label %writeSyntaxElement_fixed.exit, !dbg !870

writeSyntaxElement_fixed.exit:                    ; preds = %cond.end, %if.then.i
  %5 = load i32* %len, align 4, !dbg !871, !tbaa !806
  call void @llvm.lifetime.end(i64 48, i8* %0) #2, !dbg !872
  ret i32 %5, !dbg !872
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_fixed(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !226), !dbg !873
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %this_dataPart}, i64 0, metadata !227), !dbg !873
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !874
  %0 = load %struct.Bitstream** %bitstream, align 8, !dbg !874, !tbaa !810
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %0) #6, !dbg !874
  %type = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 0, !dbg !875
  %1 = load i32* %type, align 4, !dbg !875, !tbaa !806
  %cmp = icmp eq i32 %1, 0, !dbg !875
  br i1 %cmp, label %if.end, label %if.then, !dbg !875

if.then:                                          ; preds = %entry
  %2 = load %struct.Bitstream** %bitstream, align 8, !dbg !876, !tbaa !810
  %write_flag = getelementptr inbounds %struct.Bitstream* %2, i64 0, i32 10, !dbg !876
  store i32 1, i32* %write_flag, align 4, !dbg !876, !tbaa !806
  br label %if.end, !dbg !876

if.end:                                           ; preds = %entry, %if.then
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !877
  %3 = load i32* %len, align 4, !dbg !877, !tbaa !806
  ret i32 %3, !dbg !877
}

; Function Attrs: nounwind optsize uwtable
define i32 @u_v(i32 %n, i8* nocapture %tracestring, i32 %value, %struct.datapartition* nocapture %part) #0 {
entry:
  %symbol = alloca %struct.syntaxelement, align 8
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !143), !dbg !878
  call void @llvm.dbg.value(metadata !{i8* %tracestring}, i64 0, metadata !144), !dbg !878
  call void @llvm.dbg.value(metadata !{i32 %value}, i64 0, metadata !145), !dbg !878
  call void @llvm.dbg.value(metadata !{%struct.datapartition* %part}, i64 0, metadata !146), !dbg !878
  %0 = bitcast %struct.syntaxelement* %symbol to i8*, !dbg !879
  call void @llvm.lifetime.start(i64 48, i8* %0) #2, !dbg !879
  call void @llvm.dbg.declare(metadata !{%struct.syntaxelement* %symbol}, metadata !147), !dbg !879
  call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %symbol}, i64 0, metadata !148), !dbg !879
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 5, !dbg !880
  store i32 %value, i32* %bitpattern, align 4, !dbg !880, !tbaa !806
  %len = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 3, !dbg !881
  store i32 %n, i32* %len, align 4, !dbg !881, !tbaa !806
  %type = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 0, !dbg !882
  store i32 0, i32* %type, align 8, !dbg !882, !tbaa !806
  %value1 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 1, !dbg !883
  store i32 %value, i32* %value1, align 4, !dbg !883, !tbaa !806
  %value2 = getelementptr inbounds %struct.syntaxelement* %symbol, i64 0, i32 2, !dbg !884
  store i32 0, i32* %value2, align 8, !dbg !884, !tbaa !806
  %bitstream = getelementptr inbounds %struct.datapartition* %part, i64 0, i32 0, !dbg !885
  %1 = load %struct.Bitstream** %bitstream, align 8, !dbg !885, !tbaa !810
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %1, i64 0, i32 9, !dbg !885
  %2 = load i8** %streamBuffer, align 8, !dbg !885, !tbaa !810
  %cmp = icmp eq i8* %2, null, !dbg !885
  br i1 %cmp, label %cond.false, label %cond.end, !dbg !885

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([43 x i8]* @__PRETTY_FUNCTION__.u_v, i64 0, i64 0)) #5, !dbg !885
  unreachable, !dbg !885

cond.end:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %symbol}, i64 0, metadata !886) #2, !dbg !888
  call void @llvm.dbg.value(metadata !{%struct.datapartition* %part}, i64 0, metadata !889) #2, !dbg !888
  call void @writeUVLC2buffer(%struct.syntaxelement* %symbol, %struct.Bitstream* %1) #7, !dbg !890
  %3 = load i32* %type, align 8, !dbg !891, !tbaa !806
  %cmp.i = icmp eq i32 %3, 0, !dbg !891
  br i1 %cmp.i, label %writeSyntaxElement_fixed.exit, label %if.then.i, !dbg !891

if.then.i:                                        ; preds = %cond.end
  %4 = load %struct.Bitstream** %bitstream, align 8, !dbg !892, !tbaa !810
  %write_flag.i = getelementptr inbounds %struct.Bitstream* %4, i64 0, i32 10, !dbg !892
  store i32 1, i32* %write_flag.i, align 4, !dbg !892, !tbaa !806
  br label %writeSyntaxElement_fixed.exit, !dbg !892

writeSyntaxElement_fixed.exit:                    ; preds = %cond.end, %if.then.i
  %5 = load i32* %len, align 4, !dbg !893, !tbaa !806
  call void @llvm.lifetime.end(i64 48, i8* %0) #2, !dbg !894
  ret i32 %5, !dbg !894
}

; Function Attrs: nounwind optsize uwtable
define void @cbp_linfo_intra(i32 %cbp, i32 %dummy, i32* nocapture %len, i32* nocapture %info) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %cbp}, i64 0, metadata !169), !dbg !895
  tail call void @llvm.dbg.value(metadata !{i32 %dummy}, i64 0, metadata !170), !dbg !895
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !171), !dbg !895
  tail call void @llvm.dbg.value(metadata !{i32* %info}, i64 0, metadata !172), !dbg !895
  %idxprom = sext i32 %cbp to i64, !dbg !896
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !896, !tbaa !810
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159, !dbg !896
  %1 = load i32* %yuv_format, align 4, !dbg !896, !tbaa !806
  %tobool = icmp ne i32 %1, 0, !dbg !896
  %idxprom1 = zext i1 %tobool to i64, !dbg !896
  %arrayidx3 = getelementptr inbounds [2 x [48 x [2 x i8]]]* @NCBP, i64 0, i64 %idxprom1, i64 %idxprom, i64 0, !dbg !896
  %2 = load i8* %arrayidx3, align 1, !dbg !896, !tbaa !807
  %conv = zext i8 %2 to i32, !dbg !896
  tail call void @ue_linfo(i32 %conv, i32 undef, i32* %len, i32* %info) #6, !dbg !896
  ret void, !dbg !897
}

; Function Attrs: nounwind optsize uwtable
define void @cbp_linfo_inter(i32 %cbp, i32 %dummy, i32* nocapture %len, i32* nocapture %info) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %cbp}, i64 0, metadata !175), !dbg !898
  tail call void @llvm.dbg.value(metadata !{i32 %dummy}, i64 0, metadata !176), !dbg !898
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !177), !dbg !898
  tail call void @llvm.dbg.value(metadata !{i32* %info}, i64 0, metadata !178), !dbg !898
  %idxprom = sext i32 %cbp to i64, !dbg !899
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !899, !tbaa !810
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159, !dbg !899
  %1 = load i32* %yuv_format, align 4, !dbg !899, !tbaa !806
  %tobool = icmp ne i32 %1, 0, !dbg !899
  %idxprom1 = zext i1 %tobool to i64, !dbg !899
  %arrayidx3 = getelementptr inbounds [2 x [48 x [2 x i8]]]* @NCBP, i64 0, i64 %idxprom1, i64 %idxprom, i64 1, !dbg !899
  %2 = load i8* %arrayidx3, align 1, !dbg !899, !tbaa !807
  %conv = zext i8 %2 to i32, !dbg !899
  tail call void @ue_linfo(i32 %conv, i32 undef, i32* %len, i32* %info) #6, !dbg !899
  ret void, !dbg !900
}

; Function Attrs: nounwind optsize uwtable
define void @levrun_linfo_c2x2(i32 %level, i32 %run, i32* nocapture %len, i32* nocapture %info) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !181), !dbg !901
  tail call void @llvm.dbg.value(metadata !{i32 %run}, i64 0, metadata !182), !dbg !901
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !183), !dbg !901
  tail call void @llvm.dbg.value(metadata !{i32* %info}, i64 0, metadata !184), !dbg !901
  %cmp = icmp eq i32 %level, 0, !dbg !902
  br i1 %cmp, label %if.then, label %if.end, !dbg !902

if.then:                                          ; preds = %entry
  store i32 1, i32* %len, align 4, !dbg !903, !tbaa !806
  br label %return, !dbg !905

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !188), !dbg !906
  %cmp1 = icmp slt i32 %level, 1, !dbg !907
  %. = zext i1 %cmp1 to i32, !dbg !907
  tail call void @llvm.dbg.value(metadata !{i32 %.}, i64 0, metadata !188), !dbg !908
  %ispos = icmp sgt i32 %level, -1, !dbg !910
  %neg = sub i32 0, %level, !dbg !910
  %0 = select i1 %ispos, i32 %level, i32 %neg, !dbg !910
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !185), !dbg !910
  %idxprom = sext i32 %run to i64, !dbg !911
  %arrayidx = getelementptr inbounds [4 x i32]* @levrun_linfo_c2x2.LEVRUN, i64 0, i64 %idxprom, !dbg !911
  %1 = load i32* %arrayidx, align 4, !dbg !911, !tbaa !806
  %cmp4 = icmp sgt i32 %0, %1, !dbg !911
  br i1 %cmp4, label %if.else, label %if.then5, !dbg !911

if.then5:                                         ; preds = %if.end
  %sub = add nsw i32 %0, -1, !dbg !912
  %idxprom7 = sext i32 %sub to i64, !dbg !912
  %arrayidx9 = getelementptr inbounds [2 x [2 x i32]]* @levrun_linfo_c2x2.NTAB, i64 0, i64 %idxprom7, i64 %idxprom, !dbg !912
  %2 = load i32* %arrayidx9, align 4, !dbg !912, !tbaa !806
  %add = add nsw i32 %2, 1, !dbg !912
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !187), !dbg !912
  br label %if.end15, !dbg !914

if.else:                                          ; preds = %if.end
  %sub12 = sub nsw i32 %0, %1, !dbg !915
  %mul = shl i32 %sub12, 3, !dbg !915
  %mul13 = shl i32 %run, 1, !dbg !915
  %add14 = add nsw i32 %mul, %mul13, !dbg !915
  tail call void @llvm.dbg.value(metadata !{i32 %add14}, i64 0, metadata !187), !dbg !915
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then5
  %n.0 = phi i32 [ %add, %if.then5 ], [ %add14, %if.else ]
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !186), !dbg !917
  br label %land.rhs, !dbg !917

for.cond:                                         ; preds = %land.rhs
  %nn.042 = sdiv i32 %nn.042.in, 2, !dbg !919
  %cmp16 = icmp slt i32 %inc, 16, !dbg !917
  br i1 %cmp16, label %land.rhs, label %for.end, !dbg !917

land.rhs:                                         ; preds = %if.end15, %for.cond
  %nn.042.in = phi i32 [ %n.0, %if.end15 ], [ %nn.042, %for.cond ]
  %i.040 = phi i32 [ 0, %if.end15 ], [ %inc, %for.cond ]
  %nn.0.in.off = add i32 %nn.042.in, 1, !dbg !917
  %3 = icmp ugt i32 %nn.0.in.off, 2, !dbg !917
  %inc = add nsw i32 %i.040, 1, !dbg !917
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !186), !dbg !917
  br i1 %3, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %inc, %for.cond ], [ %i.040, %land.rhs ]
  %mul19 = shl nsw i32 %i.0.lcssa, 1, !dbg !920
  %add2038 = or i32 %mul19, 1, !dbg !920
  store i32 %add2038, i32* %len, align 4, !dbg !920, !tbaa !806
  %4 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #2, !dbg !921
  %conv22 = fptosi double %4 to i32, !dbg !921
  %sub23 = add i32 %n.0, %., !dbg !921
  %add24 = sub i32 %sub23, %conv22, !dbg !921
  store i32 %add24, i32* %info, align 4, !dbg !921, !tbaa !806
  br label %return, !dbg !921

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !921
}

; Function Attrs: nounwind optsize uwtable
define void @levrun_linfo_inter(i32 %level, i32 %run, i32* nocapture %len, i32* nocapture %info) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !192), !dbg !922
  tail call void @llvm.dbg.value(metadata !{i32 %run}, i64 0, metadata !193), !dbg !922
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !194), !dbg !922
  tail call void @llvm.dbg.value(metadata !{i32* %info}, i64 0, metadata !195), !dbg !922
  %cmp = icmp eq i32 %level, 0, !dbg !923
  br i1 %cmp, label %if.then, label %if.end, !dbg !923

if.then:                                          ; preds = %entry
  store i32 1, i32* %len, align 4, !dbg !924, !tbaa !806
  br label %return, !dbg !926

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %level, 1, !dbg !927
  %. = zext i1 %cmp1 to i32, !dbg !928
  %ispos = icmp sgt i32 %level, -1, !dbg !929
  %neg = sub i32 0, %level, !dbg !929
  %0 = select i1 %ispos, i32 %level, i32 %neg, !dbg !929
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !196), !dbg !929
  %idxprom = sext i32 %run to i64, !dbg !930
  %arrayidx = getelementptr inbounds [16 x i8]* @levrun_linfo_inter.LEVRUN, i64 0, i64 %idxprom, !dbg !930
  %1 = load i8* %arrayidx, align 1, !dbg !930, !tbaa !807
  %conv = zext i8 %1 to i32, !dbg !930
  %cmp4 = icmp sgt i32 %0, %conv, !dbg !930
  br i1 %cmp4, label %if.else12, label %if.then6, !dbg !930

if.then6:                                         ; preds = %if.end
  %sub = add nsw i32 %0, -1, !dbg !931
  %idxprom8 = sext i32 %sub to i64, !dbg !931
  %arrayidx10 = getelementptr inbounds [4 x [10 x i8]]* @levrun_linfo_inter.NTAB, i64 0, i64 %idxprom8, i64 %idxprom, !dbg !931
  %2 = load i8* %arrayidx10, align 1, !dbg !931, !tbaa !807
  %conv11 = zext i8 %2 to i32, !dbg !931
  %add = add nsw i32 %conv11, 1, !dbg !931
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !198), !dbg !931
  br label %if.end19, !dbg !933

if.else12:                                        ; preds = %if.end
  %sub16 = sub nsw i32 %0, %conv, !dbg !934
  %mul = shl i32 %sub16, 5, !dbg !934
  %mul17 = shl i32 %run, 1, !dbg !934
  %add18 = add nsw i32 %mul, %mul17, !dbg !934
  tail call void @llvm.dbg.value(metadata !{i32 %add18}, i64 0, metadata !198), !dbg !934
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.then6
  %n.0 = phi i32 [ %add, %if.then6 ], [ %add18, %if.else12 ]
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !197), !dbg !936
  br label %land.rhs, !dbg !936

for.cond:                                         ; preds = %land.rhs
  %nn.049 = sdiv i32 %nn.049.in, 2, !dbg !938
  %cmp20 = icmp slt i32 %inc, 16, !dbg !936
  br i1 %cmp20, label %land.rhs, label %for.end, !dbg !936

land.rhs:                                         ; preds = %if.end19, %for.cond
  %nn.049.in = phi i32 [ %n.0, %if.end19 ], [ %nn.049, %for.cond ]
  %i.047 = phi i32 [ 0, %if.end19 ], [ %inc, %for.cond ]
  %nn.0.in.off = add i32 %nn.049.in, 1, !dbg !936
  %3 = icmp ugt i32 %nn.0.in.off, 2, !dbg !936
  %inc = add nsw i32 %i.047, 1, !dbg !936
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !197), !dbg !936
  br i1 %3, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %inc, %for.cond ], [ %i.047, %land.rhs ]
  %mul25 = shl nsw i32 %i.0.lcssa, 1, !dbg !939
  %add2645 = or i32 %mul25, 1, !dbg !939
  store i32 %add2645, i32* %len, align 4, !dbg !939, !tbaa !806
  %4 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #2, !dbg !940
  %conv29 = fptosi double %4 to i32, !dbg !940
  %sub30 = add i32 %n.0, %., !dbg !940
  %add31 = sub i32 %sub30, %conv29, !dbg !940
  store i32 %add31, i32* %info, align 4, !dbg !940, !tbaa !806
  br label %return, !dbg !940

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !940
}

; Function Attrs: nounwind optsize uwtable
define void @levrun_linfo_intra(i32 %level, i32 %run, i32* nocapture %len, i32* nocapture %info) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %level}, i64 0, metadata !203), !dbg !941
  tail call void @llvm.dbg.value(metadata !{i32 %run}, i64 0, metadata !204), !dbg !941
  tail call void @llvm.dbg.value(metadata !{i32* %len}, i64 0, metadata !205), !dbg !941
  tail call void @llvm.dbg.value(metadata !{i32* %info}, i64 0, metadata !206), !dbg !941
  %cmp = icmp eq i32 %level, 0, !dbg !942
  br i1 %cmp, label %if.then, label %if.end, !dbg !942

if.then:                                          ; preds = %entry
  store i32 1, i32* %len, align 4, !dbg !943, !tbaa !806
  br label %return, !dbg !945

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %level, 1, !dbg !946
  %. = zext i1 %cmp1 to i32, !dbg !947
  %ispos = icmp sgt i32 %level, -1, !dbg !948
  %neg = sub i32 0, %level, !dbg !948
  %0 = select i1 %ispos, i32 %level, i32 %neg, !dbg !948
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !207), !dbg !948
  %idxprom = sext i32 %run to i64, !dbg !949
  %arrayidx = getelementptr inbounds [8 x i8]* @levrun_linfo_intra.LEVRUN, i64 0, i64 %idxprom, !dbg !949
  %1 = load i8* %arrayidx, align 1, !dbg !949, !tbaa !807
  %conv = zext i8 %1 to i32, !dbg !949
  %cmp4 = icmp sgt i32 %0, %conv, !dbg !949
  br i1 %cmp4, label %if.else12, label %if.then6, !dbg !949

if.then6:                                         ; preds = %if.end
  %sub = add nsw i32 %0, -1, !dbg !950
  %idxprom8 = sext i32 %sub to i64, !dbg !950
  %arrayidx10 = getelementptr inbounds [9 x [5 x i8]]* @levrun_linfo_intra.NTAB, i64 0, i64 %idxprom8, i64 %idxprom, !dbg !950
  %2 = load i8* %arrayidx10, align 1, !dbg !950, !tbaa !807
  %conv11 = zext i8 %2 to i32, !dbg !950
  %add = add nsw i32 %conv11, 1, !dbg !950
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !209), !dbg !950
  br label %if.end20, !dbg !952

if.else12:                                        ; preds = %if.end
  %sub16 = sub nsw i32 %0, %conv, !dbg !953
  %mul = shl i32 %sub16, 4, !dbg !953
  %mul18 = shl i32 %run, 1, !dbg !953
  %add17 = add i32 %mul18, 16, !dbg !953
  %add19 = add i32 %add17, %mul, !dbg !953
  tail call void @llvm.dbg.value(metadata !{i32 %add19}, i64 0, metadata !209), !dbg !953
  br label %if.end20

if.end20:                                         ; preds = %if.else12, %if.then6
  %n.0 = phi i32 [ %add, %if.then6 ], [ %add19, %if.else12 ]
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !208), !dbg !955
  br label %land.rhs, !dbg !955

for.cond:                                         ; preds = %land.rhs
  %nn.050 = sdiv i32 %nn.050.in, 2, !dbg !957
  %cmp21 = icmp slt i32 %inc, 16, !dbg !955
  br i1 %cmp21, label %land.rhs, label %for.end, !dbg !955

land.rhs:                                         ; preds = %if.end20, %for.cond
  %nn.050.in = phi i32 [ %n.0, %if.end20 ], [ %nn.050, %for.cond ]
  %i.048 = phi i32 [ 0, %if.end20 ], [ %inc, %for.cond ]
  %nn.0.in.off = add i32 %nn.050.in, 1, !dbg !955
  %3 = icmp ugt i32 %nn.0.in.off, 2, !dbg !955
  %inc = add nsw i32 %i.048, 1, !dbg !955
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !208), !dbg !955
  br i1 %3, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %land.rhs
  %i.0.lcssa = phi i32 [ %inc, %for.cond ], [ %i.048, %land.rhs ]
  %mul26 = shl nsw i32 %i.0.lcssa, 1, !dbg !958
  %add2746 = or i32 %mul26, 1, !dbg !958
  store i32 %add2746, i32* %len, align 4, !dbg !958, !tbaa !806
  %4 = tail call double @ldexp(double 1.000000e+00, i32 %i.0.lcssa) #2, !dbg !959
  %conv30 = fptosi double %4 to i32, !dbg !959
  %sub31 = add i32 %n.0, %., !dbg !959
  %add32 = sub i32 %sub31, %conv30, !dbg !959
  store i32 %add32, i32* %info, align 4, !dbg !959, !tbaa !806
  br label %return, !dbg !959

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !959
}

; Function Attrs: nounwind optsize uwtable
define i32 @symbol2uvlc(%struct.syntaxelement* nocapture %sym) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %sym}, i64 0, metadata !216), !dbg !960
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3, !dbg !961
  %0 = load i32* %len, align 4, !dbg !961, !tbaa !806
  %div = sdiv i32 %0, 2, !dbg !961
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !217), !dbg !961
  %shl = shl i32 1, %div, !dbg !962
  %inf = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 4, !dbg !962
  %1 = load i32* %inf, align 4, !dbg !962, !tbaa !806
  %sub = add nsw i32 %shl, -1, !dbg !962
  %and = and i32 %sub, %1, !dbg !962
  %or = or i32 %and, %shl, !dbg !962
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5, !dbg !962
  store i32 %or, i32* %bitpattern, align 4, !dbg !962, !tbaa !806
  ret i32 0, !dbg !963
}

; Function Attrs: nounwind optsize uwtable
define void @writeUVLC2buffer(%struct.syntaxelement* nocapture %se, %struct.Bitstream* nocapture %currStream) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !242), !dbg !964
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %currStream}, i64 0, metadata !243), !dbg !964
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !965
  %0 = load i32* %len, align 4, !dbg !965, !tbaa !806
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !245), !dbg !965
  tail call void @llvm.dbg.value(metadata !33, i64 0, metadata !244), !dbg !966
  %cmp28 = icmp sgt i32 %0, 0, !dbg !966
  br i1 %cmp28, label %for.body.lr.ph, label %for.end, !dbg !966

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %0, -1, !dbg !965
  %shl = shl i32 1, %sub, !dbg !965
  %byte_buf = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 2, !dbg !968
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !970
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 1, !dbg !971
  %byte_pos = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 0, !dbg !972
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 9, !dbg !972
  %.pre = load i8* %byte_buf, align 1, !dbg !968, !tbaa !807
  br label %for.body, !dbg !966

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi i8 [ %.pre, %for.body.lr.ph ], [ %7, %for.inc ], !dbg !968
  %mask.030 = phi i32 [ %shl, %for.body.lr.ph ], [ %shr, %for.inc ]
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc15, %for.inc ]
  %shl2 = shl i8 %1, 1, !dbg !968
  store i8 %shl2, i8* %byte_buf, align 1, !dbg !968, !tbaa !807
  %2 = load i32* %bitpattern, align 4, !dbg !970, !tbaa !806
  %and = and i32 %2, %mask.030, !dbg !970
  %tobool = icmp eq i32 %and, 0, !dbg !970
  br i1 %tobool, label %if.end, label %if.then, !dbg !970

if.then:                                          ; preds = %for.body
  %or = or i8 %shl2, 1, !dbg !974
  store i8 %or, i8* %byte_buf, align 1, !dbg !974, !tbaa !807
  br label %if.end, !dbg !974

if.end:                                           ; preds = %for.body, %if.then
  %3 = phi i8 [ %or, %if.then ], [ %shl2, %for.body ]
  %4 = load i32* %bits_to_go, align 4, !dbg !971, !tbaa !806
  %dec = add nsw i32 %4, -1, !dbg !971
  store i32 %dec, i32* %bits_to_go, align 4, !dbg !971, !tbaa !806
  %shr = lshr i32 %mask.030, 1, !dbg !975
  tail call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !245), !dbg !975
  %cmp8 = icmp eq i32 %dec, 0, !dbg !976
  br i1 %cmp8, label %if.then10, label %for.inc, !dbg !976

if.then10:                                        ; preds = %if.end
  store i32 8, i32* %bits_to_go, align 4, !dbg !977, !tbaa !806
  %5 = load i32* %byte_pos, align 4, !dbg !972, !tbaa !806
  %inc = add nsw i32 %5, 1, !dbg !972
  store i32 %inc, i32* %byte_pos, align 4, !dbg !972, !tbaa !806
  %idxprom = sext i32 %5 to i64, !dbg !972
  %6 = load i8** %streamBuffer, align 8, !dbg !972, !tbaa !810
  %arrayidx = getelementptr inbounds i8* %6, i64 %idxprom, !dbg !972
  store i8 %3, i8* %arrayidx, align 1, !dbg !972, !tbaa !807
  store i8 0, i8* %byte_buf, align 1, !dbg !978, !tbaa !807
  br label %for.inc, !dbg !979

for.inc:                                          ; preds = %if.end, %if.then10
  %7 = phi i8 [ %3, %if.end ], [ 0, %if.then10 ]
  %inc15 = add nsw i32 %i.029, 1, !dbg !966
  tail call void @llvm.dbg.value(metadata !{i32 %inc15}, i64 0, metadata !244), !dbg !966
  %8 = load i32* %len, align 4, !dbg !966, !tbaa !806
  %cmp = icmp slt i32 %inc15, %8, !dbg !966
  br i1 %cmp, label %for.body, label %for.end, !dbg !966

for.end:                                          ; preds = %for.inc, %entry
  ret void, !dbg !980
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_Intra4x4PredictionMode(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !230), !dbg !981
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %this_dataPart}, i64 0, metadata !231), !dbg !981
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !982
  %0 = load i32* %value1, align 4, !dbg !982, !tbaa !806
  %cmp = icmp eq i32 %0, -1, !dbg !982
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !983
  br i1 %cmp, label %if.then, label %if.else, !dbg !982

if.then:                                          ; preds = %entry
  store i32 1, i32* %len, align 4, !dbg !983, !tbaa !806
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !985
  store i32 1, i32* %inf, align 4, !dbg !985, !tbaa !806
  br label %if.end, !dbg !986

if.else:                                          ; preds = %entry
  store i32 4, i32* %len, align 4, !dbg !987, !tbaa !806
  %inf3 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !989
  store i32 %0, i32* %inf3, align 4, !dbg !989, !tbaa !806
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = phi i32 [ %0, %if.else ], [ 1, %if.then ]
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !990
  store i32 %1, i32* %bitpattern, align 4, !dbg !990, !tbaa !806
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !991
  %2 = load %struct.Bitstream** %bitstream, align 8, !dbg !991, !tbaa !810
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %2) #6, !dbg !991
  %type = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 0, !dbg !992
  %3 = load i32* %type, align 4, !dbg !992, !tbaa !806
  %cmp5 = icmp eq i32 %3, 0, !dbg !992
  br i1 %cmp5, label %if.end8, label %if.then6, !dbg !992

if.then6:                                         ; preds = %if.end
  %4 = load %struct.Bitstream** %bitstream, align 8, !dbg !993, !tbaa !810
  %write_flag = getelementptr inbounds %struct.Bitstream* %4, i64 0, i32 10, !dbg !993
  store i32 1, i32* %write_flag, align 4, !dbg !993, !tbaa !806
  br label %if.end8, !dbg !993

if.end8:                                          ; preds = %if.end, %if.then6
  %5 = load i32* %len, align 4, !dbg !994, !tbaa !806
  ret i32 %5, !dbg !994
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement2Buf_UVLC(%struct.syntaxelement* %se, %struct.Bitstream* nocapture %this_streamBuffer) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !236), !dbg !995
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %this_streamBuffer}, i64 0, metadata !237), !dbg !995
  %mapping = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 8, !dbg !996
  %0 = load void (i32, i32, i32*, i32*)** %mapping, align 8, !dbg !996, !tbaa !810
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !996
  %1 = load i32* %value1, align 4, !dbg !996, !tbaa !806
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !996
  %2 = load i32* %value2, align 4, !dbg !996, !tbaa !806
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !996
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !996
  tail call void %0(i32 %1, i32 %2, i32* %len, i32* %inf) #7, !dbg !996
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !997), !dbg !999
  %3 = load i32* %len, align 4, !dbg !1000, !tbaa !806
  %div.i = sdiv i32 %3, 2, !dbg !1000
  tail call void @llvm.dbg.value(metadata !{i32 %div.i}, i64 0, metadata !1001), !dbg !1000
  %shl.i = shl i32 1, %div.i, !dbg !1002
  %4 = load i32* %inf, align 4, !dbg !1002, !tbaa !806
  %sub.i = add nsw i32 %shl.i, -1, !dbg !1002
  %and.i = and i32 %sub.i, %4, !dbg !1002
  %or.i = or i32 %and.i, %shl.i, !dbg !1002
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1002
  store i32 %or.i, i32* %bitpattern.i, align 4, !dbg !1002, !tbaa !806
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %this_streamBuffer) #6, !dbg !1003
  %5 = load i32* %len, align 4, !dbg !1004, !tbaa !806
  ret i32 %5, !dbg !1004
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement2Buf_Fixed(%struct.syntaxelement* nocapture %se, %struct.Bitstream* nocapture %this_streamBuffer) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !248), !dbg !1005
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %this_streamBuffer}, i64 0, metadata !249), !dbg !1005
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %this_streamBuffer) #6, !dbg !1006
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1007
  %0 = load i32* %len, align 4, !dbg !1007, !tbaa !806
  ret i32 %0, !dbg !1007
}

; Function Attrs: nounwind optsize uwtable
define i32 @symbol2vlc(%struct.syntaxelement* nocapture %sym) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %sym}, i64 0, metadata !252), !dbg !1008
  %len = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 3, !dbg !1009
  %0 = load i32* %len, align 4, !dbg !1009, !tbaa !806
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !253), !dbg !1009
  %bitpattern = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 5, !dbg !1010
  store i32 0, i32* %bitpattern, align 4, !dbg !1011, !tbaa !806
  %cmp10 = icmp sgt i32 %0, 0, !dbg !1013
  br i1 %cmp10, label %while.body.lr.ph, label %while.end, !dbg !1013

while.body.lr.ph:                                 ; preds = %entry
  %inf = getelementptr inbounds %struct.syntaxelement* %sym, i64 0, i32 4, !dbg !1011
  %1 = load i32* %inf, align 4, !dbg !1011, !tbaa !806
  br label %while.body, !dbg !1013

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %dec12.in = phi i32 [ %0, %while.body.lr.ph ], [ %dec12, %while.body ]
  %storemerge11 = phi i32 [ 0, %while.body.lr.ph ], [ %or, %while.body ]
  %dec12 = add nsw i32 %dec12.in, -1, !dbg !1013
  %shl = shl i32 %storemerge11, 1, !dbg !1014
  %shr8 = lshr i32 %1, %dec12, !dbg !1011
  %and = and i32 %shr8, 1, !dbg !1011
  %or = or i32 %and, %shl, !dbg !1011
  tail call void @llvm.dbg.value(metadata !{i32 %dec12}, i64 0, metadata !253), !dbg !1013
  %cmp = icmp sgt i32 %dec12, 0, !dbg !1013
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge, !dbg !1013

while.cond.while.end_crit_edge:                   ; preds = %while.body
  store i32 %or, i32* %bitpattern, align 4, !dbg !1011, !tbaa !806
  br label %while.end, !dbg !1013

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  ret i32 0, !dbg !1015
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_VLC(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !256), !dbg !1016
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %this_dataPart}, i64 0, metadata !257), !dbg !1016
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1017
  %0 = load i32* %value1, align 4, !dbg !1017, !tbaa !806
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1017
  store i32 %0, i32* %inf, align 4, !dbg !1017, !tbaa !806
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1018
  %1 = load i32* %value2, align 4, !dbg !1018, !tbaa !806
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1018
  store i32 %1, i32* %len, align 4, !dbg !1018, !tbaa !806
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !1019), !dbg !1021
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !1022), !dbg !1023
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1024
  store i32 0, i32* %bitpattern.i, align 4, !dbg !1025, !tbaa !806
  %cmp10.i = icmp sgt i32 %1, 0, !dbg !1026
  br i1 %cmp10.i, label %while.body.i, label %symbol2vlc.exit, !dbg !1026

while.body.i:                                     ; preds = %entry, %while.body.i
  %dec12.in.i = phi i32 [ %dec12.i, %while.body.i ], [ %1, %entry ]
  %storemerge11.i = phi i32 [ %or.i, %while.body.i ], [ 0, %entry ]
  %dec12.i = add nsw i32 %dec12.in.i, -1, !dbg !1026
  %shl.i = shl i32 %storemerge11.i, 1, !dbg !1027
  %shr8.i = lshr i32 %0, %dec12.i, !dbg !1025
  %and.i = and i32 %shr8.i, 1, !dbg !1025
  %or.i = or i32 %and.i, %shl.i, !dbg !1025
  tail call void @llvm.dbg.value(metadata !{i32 %dec12.i}, i64 0, metadata !1022), !dbg !1026
  %cmp.i = icmp sgt i32 %dec12.i, 0, !dbg !1026
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i, !dbg !1026

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i, align 4, !dbg !1025, !tbaa !806
  br label %symbol2vlc.exit, !dbg !1026

symbol2vlc.exit:                                  ; preds = %entry, %while.cond.while.end_crit_edge.i
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1028
  %2 = load %struct.Bitstream** %bitstream, align 8, !dbg !1028, !tbaa !810
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %2) #6, !dbg !1028
  %3 = load i32* %len, align 4, !dbg !1029, !tbaa !806
  ret i32 %3, !dbg !1029
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_NumCoeffTrailingOnes(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !260), !dbg !1030
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %this_dataPart}, i64 0, metadata !261), !dbg !1030
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1031
  %0 = load i32* %len, align 4, !dbg !1031, !tbaa !806
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !262), !dbg !1031
  %cmp = icmp eq i32 %0, 3, !dbg !1032
  br i1 %cmp, label %if.then, label %if.end23, !dbg !1032

if.then:                                          ; preds = %entry
  store i32 6, i32* %len, align 4, !dbg !1033, !tbaa !806
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1035
  %1 = load i32* %value1, align 4, !dbg !1035, !tbaa !806
  %cmp2 = icmp sgt i32 %1, 0, !dbg !1035
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !1035

if.then3:                                         ; preds = %if.then
  %sub = shl i32 %1, 2, !dbg !1036
  %shl = add i32 %sub, -4, !dbg !1036
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1036
  %2 = load i32* %value2, align 4, !dbg !1036, !tbaa !806
  %or = or i32 %2, %shl, !dbg !1036
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1036
  store i32 %or, i32* %inf, align 4, !dbg !1036, !tbaa !806
  br label %if.end29.thread, !dbg !1038

if.else:                                          ; preds = %if.then
  %inf5 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1039
  store i32 3, i32* %inf5, align 4, !dbg !1039, !tbaa !806
  br label %if.end29.thread

if.end29.thread:                                  ; preds = %if.else, %if.then3
  %.ph = phi i32 [ %or, %if.then3 ], [ 3, %if.else ]
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !1041), !dbg !1043
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !1044), !dbg !1045
  %bitpattern.i52 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1046
  store i32 0, i32* %bitpattern.i52, align 4, !dbg !1047, !tbaa !806
  br label %while.body.lr.ph.i, !dbg !1048

if.end23:                                         ; preds = %entry
  %value17 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1049
  %3 = load i32* %value17, align 4, !dbg !1049, !tbaa !806
  %idxprom = sext i32 %3 to i64, !dbg !1049
  %value28 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1049
  %4 = load i32* %value28, align 4, !dbg !1049, !tbaa !806
  %idxprom9 = sext i32 %4 to i64, !dbg !1049
  %idxprom10 = sext i32 %0 to i64, !dbg !1049
  %arrayidx12 = getelementptr inbounds [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnes.lentab, i64 0, i64 %idxprom10, i64 %idxprom9, i64 %idxprom, !dbg !1049
  %5 = load i32* %arrayidx12, align 4, !dbg !1049, !tbaa !806
  store i32 %5, i32* %len, align 4, !dbg !1049, !tbaa !806
  %arrayidx21 = getelementptr inbounds [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnes.codtab, i64 0, i64 %idxprom10, i64 %idxprom9, i64 %idxprom, !dbg !1051
  %6 = load i32* %arrayidx21, align 4, !dbg !1051, !tbaa !806
  %inf22 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1051
  store i32 %6, i32* %inf22, align 4, !dbg !1051, !tbaa !806
  %cmp25 = icmp eq i32 %5, 0, !dbg !1052
  br i1 %cmp25, label %if.then26, label %if.end29, !dbg !1052

if.then26:                                        ; preds = %if.end23
  %value228 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1053
  %7 = load i32* %value228, align 4, !dbg !1053, !tbaa !806
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i32 %0, i32 %3, i32 %7) #7, !dbg !1053
  tail call void @exit(i32 -1) #5, !dbg !1055
  unreachable, !dbg !1055

if.end29:                                         ; preds = %if.end23
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !1041), !dbg !1043
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !1044), !dbg !1045
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1046
  store i32 0, i32* %bitpattern.i, align 4, !dbg !1047, !tbaa !806
  %cmp10.i = icmp sgt i32 %5, 0, !dbg !1048
  br i1 %cmp10.i, label %while.body.lr.ph.i, label %symbol2vlc.exit, !dbg !1048

while.body.lr.ph.i:                               ; preds = %if.end29.thread, %if.end29
  %bitpattern.i54 = phi i32* [ %bitpattern.i52, %if.end29.thread ], [ %bitpattern.i, %if.end29 ]
  %8 = phi i32 [ %.ph, %if.end29.thread ], [ %6, %if.end29 ]
  %9 = phi i32 [ 6, %if.end29.thread ], [ %5, %if.end29 ]
  br label %while.body.i, !dbg !1048

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %dec12.in.i = phi i32 [ %9, %while.body.lr.ph.i ], [ %dec12.i, %while.body.i ]
  %storemerge11.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %or.i, %while.body.i ]
  %dec12.i = add nsw i32 %dec12.in.i, -1, !dbg !1048
  %shl.i = shl i32 %storemerge11.i, 1, !dbg !1056
  %shr8.i = lshr i32 %8, %dec12.i, !dbg !1047
  %and.i = and i32 %shr8.i, 1, !dbg !1047
  %or.i = or i32 %and.i, %shl.i, !dbg !1047
  tail call void @llvm.dbg.value(metadata !{i32 %dec12.i}, i64 0, metadata !1044), !dbg !1048
  %cmp.i = icmp sgt i32 %dec12.i, 0, !dbg !1048
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i, !dbg !1048

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i54, align 4, !dbg !1047, !tbaa !806
  br label %symbol2vlc.exit, !dbg !1048

symbol2vlc.exit:                                  ; preds = %if.end29, %while.cond.while.end_crit_edge.i
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1057
  %10 = load %struct.Bitstream** %bitstream, align 8, !dbg !1057, !tbaa !810
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %10) #6, !dbg !1057
  %11 = load i32* %len, align 4, !dbg !1058, !tbaa !806
  ret i32 %11, !dbg !1058
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_NumCoeffTrailingOnesChromaDC(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !265), !dbg !1059
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %this_dataPart}, i64 0, metadata !266), !dbg !1059
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1060, !tbaa !810
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159, !dbg !1060
  %1 = load i32* %yuv_format, align 4, !dbg !1060, !tbaa !806
  %sub = add nsw i32 %1, -1, !dbg !1060
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !267), !dbg !1060
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1061
  %2 = load i32* %value1, align 4, !dbg !1061, !tbaa !806
  %idxprom = sext i32 %2 to i64, !dbg !1061
  %value2 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 2, !dbg !1061
  %3 = load i32* %value2, align 4, !dbg !1061, !tbaa !806
  %idxprom1 = sext i32 %3 to i64, !dbg !1061
  %idxprom2 = sext i32 %sub to i64, !dbg !1061
  %arrayidx4 = getelementptr inbounds [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab, i64 0, i64 %idxprom2, i64 %idxprom1, i64 %idxprom, !dbg !1061
  %4 = load i32* %arrayidx4, align 4, !dbg !1061, !tbaa !806
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1061
  store i32 %4, i32* %len, align 4, !dbg !1061, !tbaa !806
  %arrayidx12 = getelementptr inbounds [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab, i64 0, i64 %idxprom2, i64 %idxprom1, i64 %idxprom, !dbg !1062
  %5 = load i32* %arrayidx12, align 4, !dbg !1062, !tbaa !806
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1062
  store i32 %5, i32* %inf, align 4, !dbg !1062, !tbaa !806
  %cmp = icmp eq i32 %4, 0, !dbg !1063
  br i1 %cmp, label %if.then, label %if.end, !dbg !1063

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i32 %2, i32 %3) #7, !dbg !1064
  tail call void @exit(i32 -1) #5, !dbg !1066
  unreachable, !dbg !1066

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !1067), !dbg !1069
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !1070), !dbg !1071
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1072
  store i32 0, i32* %bitpattern.i, align 4, !dbg !1073, !tbaa !806
  %cmp10.i = icmp sgt i32 %4, 0, !dbg !1074
  br i1 %cmp10.i, label %while.body.i, label %symbol2vlc.exit, !dbg !1074

while.body.i:                                     ; preds = %if.end, %while.body.i
  %dec12.in.i = phi i32 [ %dec12.i, %while.body.i ], [ %4, %if.end ]
  %storemerge11.i = phi i32 [ %or.i, %while.body.i ], [ 0, %if.end ]
  %dec12.i = add nsw i32 %dec12.in.i, -1, !dbg !1074
  %shl.i = shl i32 %storemerge11.i, 1, !dbg !1075
  %shr8.i = lshr i32 %5, %dec12.i, !dbg !1073
  %and.i = and i32 %shr8.i, 1, !dbg !1073
  %or.i = or i32 %and.i, %shl.i, !dbg !1073
  tail call void @llvm.dbg.value(metadata !{i32 %dec12.i}, i64 0, metadata !1070), !dbg !1074
  %cmp.i = icmp sgt i32 %dec12.i, 0, !dbg !1074
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i, !dbg !1074

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i, align 4, !dbg !1073, !tbaa !806
  br label %symbol2vlc.exit, !dbg !1074

symbol2vlc.exit:                                  ; preds = %if.end, %while.cond.while.end_crit_edge.i
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1076
  %6 = load %struct.Bitstream** %bitstream, align 8, !dbg !1076, !tbaa !810
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %6) #6, !dbg !1076
  %7 = load i32* %len, align 4, !dbg !1077, !tbaa !806
  ret i32 %7, !dbg !1077
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_TotalZeros(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !270), !dbg !1078
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %this_dataPart}, i64 0, metadata !271), !dbg !1078
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1079
  %0 = load i32* %len, align 4, !dbg !1079, !tbaa !806
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !272), !dbg !1079
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1080
  %1 = load i32* %value1, align 4, !dbg !1080, !tbaa !806
  %idxprom = sext i32 %1 to i64, !dbg !1080
  %idxprom1 = sext i32 %0 to i64, !dbg !1080
  %arrayidx2 = getelementptr inbounds [15 x [16 x i32]]* @writeSyntaxElement_TotalZeros.lentab, i64 0, i64 %idxprom1, i64 %idxprom, !dbg !1080
  %2 = load i32* %arrayidx2, align 4, !dbg !1080, !tbaa !806
  store i32 %2, i32* %len, align 4, !dbg !1080, !tbaa !806
  %arrayidx8 = getelementptr inbounds [15 x [16 x i32]]* @writeSyntaxElement_TotalZeros.codtab, i64 0, i64 %idxprom1, i64 %idxprom, !dbg !1081
  %3 = load i32* %arrayidx8, align 4, !dbg !1081, !tbaa !806
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1081
  store i32 %3, i32* %inf, align 4, !dbg !1081, !tbaa !806
  %cmp = icmp eq i32 %2, 0, !dbg !1082
  br i1 %cmp, label %if.then, label %if.end, !dbg !1082

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str4, i64 0, i64 0), i32 %1) #7, !dbg !1083
  tail call void @exit(i32 -1) #5, !dbg !1085
  unreachable, !dbg !1085

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !1086), !dbg !1088
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !1089), !dbg !1090
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1091
  store i32 0, i32* %bitpattern.i, align 4, !dbg !1092, !tbaa !806
  %cmp10.i = icmp sgt i32 %2, 0, !dbg !1093
  br i1 %cmp10.i, label %while.body.i, label %symbol2vlc.exit, !dbg !1093

while.body.i:                                     ; preds = %if.end, %while.body.i
  %dec12.in.i = phi i32 [ %dec12.i, %while.body.i ], [ %2, %if.end ]
  %storemerge11.i = phi i32 [ %or.i, %while.body.i ], [ 0, %if.end ]
  %dec12.i = add nsw i32 %dec12.in.i, -1, !dbg !1093
  %shl.i = shl i32 %storemerge11.i, 1, !dbg !1094
  %shr8.i = lshr i32 %3, %dec12.i, !dbg !1092
  %and.i = and i32 %shr8.i, 1, !dbg !1092
  %or.i = or i32 %and.i, %shl.i, !dbg !1092
  tail call void @llvm.dbg.value(metadata !{i32 %dec12.i}, i64 0, metadata !1089), !dbg !1093
  %cmp.i = icmp sgt i32 %dec12.i, 0, !dbg !1093
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i, !dbg !1093

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i, align 4, !dbg !1092, !tbaa !806
  br label %symbol2vlc.exit, !dbg !1093

symbol2vlc.exit:                                  ; preds = %if.end, %while.cond.while.end_crit_edge.i
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1095
  %4 = load %struct.Bitstream** %bitstream, align 8, !dbg !1095, !tbaa !810
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %4) #6, !dbg !1095
  %5 = load i32* %len, align 4, !dbg !1096, !tbaa !806
  ret i32 %5, !dbg !1096
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_TotalZerosChromaDC(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !275), !dbg !1097
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %this_dataPart}, i64 0, metadata !276), !dbg !1097
  %0 = load %struct.ImageParameters** @img, align 8, !dbg !1098, !tbaa !810
  %yuv_format = getelementptr inbounds %struct.ImageParameters* %0, i64 0, i32 159, !dbg !1098
  %1 = load i32* %yuv_format, align 4, !dbg !1098, !tbaa !806
  %sub = add nsw i32 %1, -1, !dbg !1098
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !278), !dbg !1098
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1099
  %2 = load i32* %len, align 4, !dbg !1099, !tbaa !806
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !277), !dbg !1099
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1100
  %3 = load i32* %value1, align 4, !dbg !1100, !tbaa !806
  %idxprom = sext i32 %3 to i64, !dbg !1100
  %idxprom1 = sext i32 %2 to i64, !dbg !1100
  %idxprom2 = sext i32 %sub to i64, !dbg !1100
  %arrayidx4 = getelementptr inbounds [3 x [15 x [16 x i32]]]* @writeSyntaxElement_TotalZerosChromaDC.lentab, i64 0, i64 %idxprom2, i64 %idxprom1, i64 %idxprom, !dbg !1100
  %4 = load i32* %arrayidx4, align 4, !dbg !1100, !tbaa !806
  store i32 %4, i32* %len, align 4, !dbg !1100, !tbaa !806
  %arrayidx12 = getelementptr inbounds [3 x [15 x [16 x i32]]]* @writeSyntaxElement_TotalZerosChromaDC.codtab, i64 0, i64 %idxprom2, i64 %idxprom1, i64 %idxprom, !dbg !1101
  %5 = load i32* %arrayidx12, align 4, !dbg !1101, !tbaa !806
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1101
  store i32 %5, i32* %inf, align 4, !dbg !1101, !tbaa !806
  %cmp = icmp eq i32 %4, 0, !dbg !1102
  br i1 %cmp, label %if.then, label %if.end, !dbg !1102

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([37 x i8]* @.str4, i64 0, i64 0), i32 %3) #7, !dbg !1103
  tail call void @exit(i32 -1) #5, !dbg !1105
  unreachable, !dbg !1105

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !1106), !dbg !1108
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !1109), !dbg !1110
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1111
  store i32 0, i32* %bitpattern.i, align 4, !dbg !1112, !tbaa !806
  %cmp10.i = icmp sgt i32 %4, 0, !dbg !1113
  br i1 %cmp10.i, label %while.body.i, label %symbol2vlc.exit, !dbg !1113

while.body.i:                                     ; preds = %if.end, %while.body.i
  %dec12.in.i = phi i32 [ %dec12.i, %while.body.i ], [ %4, %if.end ]
  %storemerge11.i = phi i32 [ %or.i, %while.body.i ], [ 0, %if.end ]
  %dec12.i = add nsw i32 %dec12.in.i, -1, !dbg !1113
  %shl.i = shl i32 %storemerge11.i, 1, !dbg !1114
  %shr8.i = lshr i32 %5, %dec12.i, !dbg !1112
  %and.i = and i32 %shr8.i, 1, !dbg !1112
  %or.i = or i32 %and.i, %shl.i, !dbg !1112
  tail call void @llvm.dbg.value(metadata !{i32 %dec12.i}, i64 0, metadata !1109), !dbg !1113
  %cmp.i = icmp sgt i32 %dec12.i, 0, !dbg !1113
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i, !dbg !1113

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i, align 4, !dbg !1112, !tbaa !806
  br label %symbol2vlc.exit, !dbg !1113

symbol2vlc.exit:                                  ; preds = %if.end, %while.cond.while.end_crit_edge.i
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1115
  %6 = load %struct.Bitstream** %bitstream, align 8, !dbg !1115, !tbaa !810
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %6) #6, !dbg !1115
  %7 = load i32* %len, align 4, !dbg !1116, !tbaa !806
  ret i32 %7, !dbg !1116
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_Run(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !281), !dbg !1117
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %this_dataPart}, i64 0, metadata !282), !dbg !1117
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1118
  %0 = load i32* %len, align 4, !dbg !1118, !tbaa !806
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !283), !dbg !1118
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1119
  %1 = load i32* %value1, align 4, !dbg !1119, !tbaa !806
  %idxprom = sext i32 %1 to i64, !dbg !1119
  %idxprom1 = sext i32 %0 to i64, !dbg !1119
  %arrayidx2 = getelementptr inbounds [15 x [16 x i32]]* @writeSyntaxElement_Run.lentab, i64 0, i64 %idxprom1, i64 %idxprom, !dbg !1119
  %2 = load i32* %arrayidx2, align 4, !dbg !1119, !tbaa !806
  store i32 %2, i32* %len, align 4, !dbg !1119, !tbaa !806
  %arrayidx8 = getelementptr inbounds [15 x [16 x i32]]* @writeSyntaxElement_Run.codtab, i64 0, i64 %idxprom1, i64 %idxprom, !dbg !1120
  %3 = load i32* %arrayidx8, align 4, !dbg !1120, !tbaa !806
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1120
  store i32 %3, i32* %inf, align 4, !dbg !1120, !tbaa !806
  %cmp = icmp eq i32 %2, 0, !dbg !1121
  br i1 %cmp, label %if.then, label %if.end, !dbg !1121

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @.str5, i64 0, i64 0), i32 %1) #7, !dbg !1122
  tail call void @exit(i32 -1) #5, !dbg !1124
  unreachable, !dbg !1124

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !1125), !dbg !1127
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !1128), !dbg !1129
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1130
  store i32 0, i32* %bitpattern.i, align 4, !dbg !1131, !tbaa !806
  %cmp10.i = icmp sgt i32 %2, 0, !dbg !1132
  br i1 %cmp10.i, label %while.body.i, label %symbol2vlc.exit, !dbg !1132

while.body.i:                                     ; preds = %if.end, %while.body.i
  %dec12.in.i = phi i32 [ %dec12.i, %while.body.i ], [ %2, %if.end ]
  %storemerge11.i = phi i32 [ %or.i, %while.body.i ], [ 0, %if.end ]
  %dec12.i = add nsw i32 %dec12.in.i, -1, !dbg !1132
  %shl.i = shl i32 %storemerge11.i, 1, !dbg !1133
  %shr8.i = lshr i32 %3, %dec12.i, !dbg !1131
  %and.i = and i32 %shr8.i, 1, !dbg !1131
  %or.i = or i32 %and.i, %shl.i, !dbg !1131
  tail call void @llvm.dbg.value(metadata !{i32 %dec12.i}, i64 0, metadata !1128), !dbg !1132
  %cmp.i = icmp sgt i32 %dec12.i, 0, !dbg !1132
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i, !dbg !1132

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i, align 4, !dbg !1131, !tbaa !806
  br label %symbol2vlc.exit, !dbg !1132

symbol2vlc.exit:                                  ; preds = %if.end, %while.cond.while.end_crit_edge.i
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1134
  %4 = load %struct.Bitstream** %bitstream, align 8, !dbg !1134, !tbaa !810
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %4) #6, !dbg !1134
  %5 = load i32* %len, align 4, !dbg !1135, !tbaa !806
  ret i32 %5, !dbg !1135
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_Level_VLC1(%struct.syntaxelement* nocapture %se, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !286), !dbg !1136
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %this_dataPart}, i64 0, metadata !287), !dbg !1136
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1137
  %0 = load i32* %value1, align 4, !dbg !1137, !tbaa !806
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !288), !dbg !1137
  %ispos = icmp sgt i32 %0, -1, !dbg !1138
  %neg = sub i32 0, %0, !dbg !1138
  %1 = select i1 %ispos, i32 %0, i32 %neg, !dbg !1138
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !289), !dbg !1138
  %.lobit = lshr i32 %0, 31, !dbg !1139
  tail call void @llvm.dbg.value(metadata !{i32 %.lobit}, i64 0, metadata !290), !dbg !1139
  %cmp1 = icmp slt i32 %1, 8, !dbg !1140
  br i1 %cmp1, label %if.end15, label %if.else, !dbg !1140

if.else:                                          ; preds = %entry
  %cmp2 = icmp slt i32 %1, 16, !dbg !1141
  %len4 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1142
  br i1 %cmp2, label %if.then3, label %if.else8, !dbg !1141

if.then3:                                         ; preds = %if.else
  store i32 19, i32* %len4, align 4, !dbg !1142, !tbaa !806
  %sub5 = shl i32 %1, 1, !dbg !1144
  %shl = add i32 %sub5, -16, !dbg !1144
  %or = or i32 %.lobit, %shl, !dbg !1144
  %or6 = or i32 %or, 16, !dbg !1144
  %inf7 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1144
  store i32 %or6, i32* %inf7, align 4, !dbg !1144, !tbaa !806
  br label %if.end15.thread, !dbg !1145

if.else8:                                         ; preds = %if.else
  store i32 28, i32* %len4, align 4, !dbg !1146, !tbaa !806
  %sub10 = shl i32 %1, 1, !dbg !1148
  %shl11 = add i32 %sub10, -32, !dbg !1148
  %or12 = or i32 %.lobit, %shl11, !dbg !1148
  %or13 = or i32 %or12, 4096, !dbg !1148
  %inf14 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1148
  store i32 %or13, i32* %inf14, align 4, !dbg !1148, !tbaa !806
  br label %if.end15.thread

if.end15.thread:                                  ; preds = %if.then3, %if.else8
  %.ph = phi i32 [ %or6, %if.then3 ], [ %or13, %if.else8 ]
  %.ph32 = phi i32 [ 19, %if.then3 ], [ 28, %if.else8 ]
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !1149), !dbg !1151
  %len.i33 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1152
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !1153), !dbg !1152
  %bitpattern.i34 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1154
  store i32 0, i32* %bitpattern.i34, align 4, !dbg !1155, !tbaa !806
  br label %while.body.lr.ph.i, !dbg !1156

if.end15:                                         ; preds = %entry
  %mul = shl nsw i32 %1, 1, !dbg !1157
  %add = or i32 %mul, %.lobit, !dbg !1157
  %sub = add nsw i32 %add, -1, !dbg !1157
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1157
  store i32 %sub, i32* %len, align 4, !dbg !1157, !tbaa !806
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1159
  store i32 1, i32* %inf, align 4, !dbg !1159, !tbaa !806
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !1149), !dbg !1151
  %len.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1152
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !1153), !dbg !1152
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1154
  store i32 0, i32* %bitpattern.i, align 4, !dbg !1155, !tbaa !806
  %cmp10.i = icmp sgt i32 %sub, 0, !dbg !1156
  br i1 %cmp10.i, label %while.body.lr.ph.i, label %symbol2vlc.exit, !dbg !1156

while.body.lr.ph.i:                               ; preds = %if.end15.thread, %if.end15
  %bitpattern.i38 = phi i32* [ %bitpattern.i34, %if.end15.thread ], [ %bitpattern.i, %if.end15 ]
  %len.i37 = phi i32* [ %len.i33, %if.end15.thread ], [ %len.i, %if.end15 ]
  %2 = phi i32 [ %.ph32, %if.end15.thread ], [ %sub, %if.end15 ]
  %3 = phi i32 [ %.ph, %if.end15.thread ], [ 1, %if.end15 ]
  br label %while.body.i, !dbg !1156

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %dec12.in.i = phi i32 [ %2, %while.body.lr.ph.i ], [ %dec12.i, %while.body.i ]
  %storemerge11.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %or.i, %while.body.i ]
  %dec12.i = add nsw i32 %dec12.in.i, -1, !dbg !1156
  %shl.i = shl i32 %storemerge11.i, 1, !dbg !1160
  %shr8.i = lshr i32 %3, %dec12.i, !dbg !1155
  %and.i = and i32 %shr8.i, 1, !dbg !1155
  %or.i = or i32 %and.i, %shl.i, !dbg !1155
  tail call void @llvm.dbg.value(metadata !{i32 %dec12.i}, i64 0, metadata !1153), !dbg !1156
  %cmp.i = icmp sgt i32 %dec12.i, 0, !dbg !1156
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i, !dbg !1156

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i38, align 4, !dbg !1155, !tbaa !806
  br label %symbol2vlc.exit, !dbg !1156

symbol2vlc.exit:                                  ; preds = %if.end15, %while.cond.while.end_crit_edge.i
  %len.i36 = phi i32* [ %len.i, %if.end15 ], [ %len.i37, %while.cond.while.end_crit_edge.i ]
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1161
  %4 = load %struct.Bitstream** %bitstream, align 8, !dbg !1161, !tbaa !810
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %4) #6, !dbg !1161
  %5 = load i32* %len.i36, align 4, !dbg !1162, !tbaa !806
  ret i32 %5, !dbg !1162
}

; Function Attrs: nounwind optsize uwtable
define i32 @writeSyntaxElement_Level_VLCN(%struct.syntaxelement* nocapture %se, i32 %vlc, %struct.datapartition* nocapture %this_dataPart) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !295), !dbg !1163
  tail call void @llvm.dbg.value(metadata !{i32 %vlc}, i64 0, metadata !296), !dbg !1163
  tail call void @llvm.dbg.value(metadata !{%struct.datapartition* %this_dataPart}, i64 0, metadata !297), !dbg !1163
  %value1 = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 1, !dbg !1164
  %0 = load i32* %value1, align 4, !dbg !1164, !tbaa !806
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !300), !dbg !1164
  %ispos = icmp sgt i32 %0, -1, !dbg !1165
  %neg32 = sub i32 0, %0, !dbg !1165
  %1 = select i1 %ispos, i32 %0, i32 %neg32, !dbg !1165
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !301), !dbg !1165
  %.lobit = lshr i32 %0, 31, !dbg !1166
  tail call void @llvm.dbg.value(metadata !{i32 %.lobit}, i64 0, metadata !302), !dbg !1166
  %sub = add nsw i32 %vlc, -1, !dbg !1167
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !303), !dbg !1167
  %shl = shl i32 15, %sub, !dbg !1168
  %add = add nsw i32 %shl, 1, !dbg !1168
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !304), !dbg !1168
  %sub1 = add nsw i32 %1, -1, !dbg !1169
  tail call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !305), !dbg !1169
  tail call void @llvm.dbg.value(metadata !{i32 %neg}, i64 0, metadata !306), !dbg !1170
  tail call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !307), !dbg !1171
  %cmp4 = icmp slt i32 %1, %add, !dbg !1172
  br i1 %cmp4, label %if.then, label %if.else, !dbg !1172

if.then:                                          ; preds = %entry
  %shl2 = shl i32 -1, %sub, !dbg !1170
  %neg = xor i32 %shl2, 2147483647, !dbg !1170
  %and = and i32 %sub1, %neg, !dbg !1171
  %shr = ashr i32 %sub1, %sub, !dbg !1169
  %add5 = add i32 %vlc, 1, !dbg !1173
  %add6 = add i32 %add5, %shr, !dbg !1173
  tail call void @llvm.dbg.value(metadata !{i32 %add6}, i64 0, metadata !299), !dbg !1173
  %shl8 = shl i32 1, %vlc, !dbg !1175
  %shl9 = shl i32 %and, 1, !dbg !1175
  %or = or i32 %.lobit, %shl8, !dbg !1175
  %or10 = or i32 %or, %shl9, !dbg !1175
  tail call void @llvm.dbg.value(metadata !{i32 %or10}, i64 0, metadata !298), !dbg !1175
  br label %if.end, !dbg !1176

if.else:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !1177, i64 0, metadata !299), !dbg !1178
  %sub11 = sub nsw i32 %1, %add, !dbg !1180
  %shl12 = shl i32 %sub11, 1, !dbg !1180
  %or13 = or i32 %.lobit, %shl12, !dbg !1180
  %or14 = or i32 %or13, 4096, !dbg !1180
  tail call void @llvm.dbg.value(metadata !{i32 %or14}, i64 0, metadata !298), !dbg !1180
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %iLength.0 = phi i32 [ %add6, %if.then ], [ 28, %if.else ]
  %2 = phi i32 [ %or10, %if.then ], [ %or14, %if.else ]
  %len = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 3, !dbg !1181
  store i32 %iLength.0, i32* %len, align 4, !dbg !1181, !tbaa !806
  %inf = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 4, !dbg !1182
  store i32 %2, i32* %inf, align 4, !dbg !1182, !tbaa !806
  tail call void @llvm.dbg.value(metadata !{%struct.syntaxelement* %se}, i64 0, metadata !1183), !dbg !1185
  tail call void @llvm.dbg.value(metadata !{i32 %iLength.0}, i64 0, metadata !1186), !dbg !1187
  %bitpattern.i = getelementptr inbounds %struct.syntaxelement* %se, i64 0, i32 5, !dbg !1188
  store i32 0, i32* %bitpattern.i, align 4, !dbg !1189, !tbaa !806
  %cmp10.i = icmp sgt i32 %iLength.0, 0, !dbg !1190
  br i1 %cmp10.i, label %while.body.i, label %symbol2vlc.exit, !dbg !1190

while.body.i:                                     ; preds = %if.end, %while.body.i
  %dec12.in.i = phi i32 [ %dec12.i, %while.body.i ], [ %iLength.0, %if.end ]
  %storemerge11.i = phi i32 [ %or.i, %while.body.i ], [ 0, %if.end ]
  %dec12.i = add nsw i32 %dec12.in.i, -1, !dbg !1190
  %shl.i = shl i32 %storemerge11.i, 1, !dbg !1191
  %shr8.i = lshr i32 %2, %dec12.i, !dbg !1189
  %and.i = and i32 %shr8.i, 1, !dbg !1189
  %or.i = or i32 %and.i, %shl.i, !dbg !1189
  tail call void @llvm.dbg.value(metadata !{i32 %dec12.i}, i64 0, metadata !1186), !dbg !1190
  %cmp.i = icmp sgt i32 %dec12.i, 0, !dbg !1190
  br i1 %cmp.i, label %while.body.i, label %while.cond.while.end_crit_edge.i, !dbg !1190

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  store i32 %or.i, i32* %bitpattern.i, align 4, !dbg !1189, !tbaa !806
  br label %symbol2vlc.exit, !dbg !1190

symbol2vlc.exit:                                  ; preds = %if.end, %while.cond.while.end_crit_edge.i
  %bitstream = getelementptr inbounds %struct.datapartition* %this_dataPart, i64 0, i32 0, !dbg !1192
  %3 = load %struct.Bitstream** %bitstream, align 8, !dbg !1192, !tbaa !810
  tail call void @writeUVLC2buffer(%struct.syntaxelement* %se, %struct.Bitstream* %3) #6, !dbg !1192
  %4 = load i32* %len, align 4, !dbg !1193, !tbaa !806
  ret i32 %4, !dbg !1193
}

; Function Attrs: nounwind optsize uwtable
define void @writeVlcByteAlign(%struct.Bitstream* nocapture %currStream) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.Bitstream* %currStream}, i64 0, metadata !312), !dbg !1194
  %bits_to_go = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 1, !dbg !1195
  %0 = load i32* %bits_to_go, align 4, !dbg !1195, !tbaa !806
  %cmp = icmp slt i32 %0, 8, !dbg !1195
  br i1 %cmp, label %if.then, label %if.end, !dbg !1195

if.then:                                          ; preds = %entry
  %byte_buf = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 2, !dbg !1196
  %1 = load i8* %byte_buf, align 1, !dbg !1196, !tbaa !807
  %conv = zext i8 %1 to i32, !dbg !1196
  %shl = shl i32 %conv, %0, !dbg !1196
  %sub = sub nsw i32 8, %0, !dbg !1196
  %shr = lshr i32 255, %sub, !dbg !1196
  %or = or i32 %shl, %shr, !dbg !1196
  %conv3 = trunc i32 %or to i8, !dbg !1196
  store i8 %conv3, i8* %byte_buf, align 1, !dbg !1196, !tbaa !807
  %2 = load %struct.ImageParameters** @img, align 8, !dbg !1198, !tbaa !810
  %type = getelementptr inbounds %struct.ImageParameters* %2, i64 0, i32 6, !dbg !1198
  %3 = load i32* %type, align 4, !dbg !1198, !tbaa !806
  %idxprom = sext i32 %3 to i64, !dbg !1198
  %4 = load %struct.StatParameters** @stats, align 8, !dbg !1198, !tbaa !810
  %arrayidx = getelementptr inbounds %struct.StatParameters* %4, i64 0, i32 22, i64 %idxprom, !dbg !1198
  %5 = load i32* %arrayidx, align 4, !dbg !1198, !tbaa !806
  %add = add nsw i32 %5, %0, !dbg !1198
  store i32 %add, i32* %arrayidx, align 4, !dbg !1198, !tbaa !806
  %6 = load i8* %byte_buf, align 1, !dbg !1199, !tbaa !807
  %byte_pos = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 0, !dbg !1199
  %7 = load i32* %byte_pos, align 4, !dbg !1199, !tbaa !806
  %inc = add nsw i32 %7, 1, !dbg !1199
  store i32 %inc, i32* %byte_pos, align 4, !dbg !1199, !tbaa !806
  %idxprom7 = sext i32 %7 to i64, !dbg !1199
  %streamBuffer = getelementptr inbounds %struct.Bitstream* %currStream, i64 0, i32 9, !dbg !1199
  %8 = load i8** %streamBuffer, align 8, !dbg !1199, !tbaa !810
  %arrayidx8 = getelementptr inbounds i8* %8, i64 %idxprom7, !dbg !1199
  store i8 %6, i8* %arrayidx8, align 1, !dbg !1199, !tbaa !807
  store i32 8, i32* %bits_to_go, align 4, !dbg !1200, !tbaa !806
  br label %if.end, !dbg !1201

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1202
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare double @ldexp(double, i32)

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !33, metadata !34, metadata !313, metadata !33, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !28}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 119, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 119, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27}
!6 = metadata !{i32 786472, metadata !"SE_HEADER", i64 0} ; [ DW_TAG_enumerator ] [SE_HEADER :: 0]
!7 = metadata !{i32 786472, metadata !"SE_PTYPE", i64 1} ; [ DW_TAG_enumerator ] [SE_PTYPE :: 1]
!8 = metadata !{i32 786472, metadata !"SE_MBTYPE", i64 2} ; [ DW_TAG_enumerator ] [SE_MBTYPE :: 2]
!9 = metadata !{i32 786472, metadata !"SE_REFFRAME", i64 3} ; [ DW_TAG_enumerator ] [SE_REFFRAME :: 3]
!10 = metadata !{i32 786472, metadata !"SE_INTRAPREDMODE", i64 4} ; [ DW_TAG_enumerator ] [SE_INTRAPREDMODE :: 4]
!11 = metadata !{i32 786472, metadata !"SE_MVD", i64 5} ; [ DW_TAG_enumerator ] [SE_MVD :: 5]
!12 = metadata !{i32 786472, metadata !"SE_CBP_INTRA", i64 6} ; [ DW_TAG_enumerator ] [SE_CBP_INTRA :: 6]
!13 = metadata !{i32 786472, metadata !"SE_LUM_DC_INTRA", i64 7} ; [ DW_TAG_enumerator ] [SE_LUM_DC_INTRA :: 7]
!14 = metadata !{i32 786472, metadata !"SE_CHR_DC_INTRA", i64 8} ; [ DW_TAG_enumerator ] [SE_CHR_DC_INTRA :: 8]
!15 = metadata !{i32 786472, metadata !"SE_LUM_AC_INTRA", i64 9} ; [ DW_TAG_enumerator ] [SE_LUM_AC_INTRA :: 9]
!16 = metadata !{i32 786472, metadata !"SE_CHR_AC_INTRA", i64 10} ; [ DW_TAG_enumerator ] [SE_CHR_AC_INTRA :: 10]
!17 = metadata !{i32 786472, metadata !"SE_CBP_INTER", i64 11} ; [ DW_TAG_enumerator ] [SE_CBP_INTER :: 11]
!18 = metadata !{i32 786472, metadata !"SE_LUM_DC_INTER", i64 12} ; [ DW_TAG_enumerator ] [SE_LUM_DC_INTER :: 12]
!19 = metadata !{i32 786472, metadata !"SE_CHR_DC_INTER", i64 13} ; [ DW_TAG_enumerator ] [SE_CHR_DC_INTER :: 13]
!20 = metadata !{i32 786472, metadata !"SE_LUM_AC_INTER", i64 14} ; [ DW_TAG_enumerator ] [SE_LUM_AC_INTER :: 14]
!21 = metadata !{i32 786472, metadata !"SE_CHR_AC_INTER", i64 15} ; [ DW_TAG_enumerator ] [SE_CHR_AC_INTER :: 15]
!22 = metadata !{i32 786472, metadata !"SE_DELTA_QUANT_INTER", i64 16} ; [ DW_TAG_enumerator ] [SE_DELTA_QUANT_INTER :: 16]
!23 = metadata !{i32 786472, metadata !"SE_DELTA_QUANT_INTRA", i64 17} ; [ DW_TAG_enumerator ] [SE_DELTA_QUANT_INTRA :: 17]
!24 = metadata !{i32 786472, metadata !"SE_BFRAME", i64 18} ; [ DW_TAG_enumerator ] [SE_BFRAME :: 18]
!25 = metadata !{i32 786472, metadata !"SE_EOS", i64 19} ; [ DW_TAG_enumerator ] [SE_EOS :: 19]
!26 = metadata !{i32 786472, metadata !"SE_TRANSFORM_SIZE_FLAG", i64 20} ; [ DW_TAG_enumerator ] [SE_TRANSFORM_SIZE_FLAG :: 20]
!27 = metadata !{i32 786472, metadata !"SE_MAX_ELEMENTS", i64 21} ; [ DW_TAG_enumerator ] [SE_MAX_ELEMENTS :: 21]
!28 = metadata !{i32 786436, metadata !29, null, metadata !"", i32 42, i64 32, i64 32, i32 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 42, size 32, align 32, offset 0] [from ]
!29 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/464.h264ref/src/parsetcommon.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !32}
!31 = metadata !{i32 786472, metadata !"FALSE", i64 0} ; [ DW_TAG_enumerator ] [FALSE :: 0]
!32 = metadata !{i32 786472, metadata !"TRUE", i64 1} ; [ DW_TAG_enumerator ] [TRUE :: 1]
!33 = metadata !{i32 0}
!34 = metadata !{metadata !35, metadata !125, metadata !132, metadata !139, metadata !149, metadata !157, metadata !167, metadata !173, metadata !179, metadata !190, metadata !201, metadata !212, metadata !218, metadata !224, metadata !228, metadata !232, metadata !238, metadata !246, metadata !250, metadata !254, metadata !258, metadata !263, metadata !268, metadata !273, metadata !279, metadata !284, metadata !291, metadata !308}
!35 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"ue_v", metadata !"ue_v", metadata !"", i32 58, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, %struct.datapartition*)* @ue_v, null, null, metadata !119, i32 59} ; [ DW_TAG_subprogram ] [line 58] [def] [scope 59] [ue_v]
!36 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!37 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{metadata !39, metadata !40, metadata !39, metadata !42}
!39 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!41 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DataPartition]
!43 = metadata !{i32 786454, metadata !1, null, metadata !"DataPartition", i32 440, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [DataPartition] [line 440, size 0, align 0, offset 0] [from datapartition]
!44 = metadata !{i32 786451, metadata !4, null, metadata !"datapartition", i32 430, i64 960, i64 64, i32 0, i32 0, null, metadata !45, i32 0, null, null} ; [ DW_TAG_structure_type ] [datapartition] [line 430, size 960, align 64, offset 0] [from ]
!45 = metadata !{metadata !46, metadata !65, metadata !91}
!46 = metadata !{i32 786445, metadata !4, metadata !44, metadata !"bitstream", i32 433, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [bitstream] [line 433, size 64, align 64, offset 0] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Bitstream]
!48 = metadata !{i32 786454, metadata !4, null, metadata !"Bitstream", i32 427, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [Bitstream] [line 427, size 0, align 0, offset 0] [from ]
!49 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 411, i64 384, i64 64, i32 0, i32 0, null, metadata !50, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 411, size 384, align 64, offset 0] [from ]
!50 = metadata !{metadata !51, metadata !52, metadata !53, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !64}
!51 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"byte_pos", i32 413, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [byte_pos] [line 413, size 32, align 32, offset 0] [from int]
!52 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"bits_to_go", i32 414, i64 32, i64 32, i64 32, i32 0, metadata !39} ; [ DW_TAG_member ] [bits_to_go] [line 414, size 32, align 32, offset 32] [from int]
!53 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"byte_buf", i32 415, i64 8, i64 8, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [byte_buf] [line 415, size 8, align 8, offset 64] [from byte]
!54 = metadata !{i32 786454, metadata !4, null, metadata !"byte", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [byte] [line 30, size 0, align 0, offset 0] [from unsigned char]
!55 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!56 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"stored_byte_pos", i32 416, i64 32, i64 32, i64 96, i32 0, metadata !39} ; [ DW_TAG_member ] [stored_byte_pos] [line 416, size 32, align 32, offset 96] [from int]
!57 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"stored_bits_to_go", i32 417, i64 32, i64 32, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [stored_bits_to_go] [line 417, size 32, align 32, offset 128] [from int]
!58 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"stored_byte_buf", i32 418, i64 8, i64 8, i64 160, i32 0, metadata !54} ; [ DW_TAG_member ] [stored_byte_buf] [line 418, size 8, align 8, offset 160] [from byte]
!59 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"byte_buf_skip", i32 420, i64 8, i64 8, i64 168, i32 0, metadata !54} ; [ DW_TAG_member ] [byte_buf_skip] [line 420, size 8, align 8, offset 168] [from byte]
!60 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"byte_pos_skip", i32 421, i64 32, i64 32, i64 192, i32 0, metadata !39} ; [ DW_TAG_member ] [byte_pos_skip] [line 421, size 32, align 32, offset 192] [from int]
!61 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"bits_to_go_skip", i32 422, i64 32, i64 32, i64 224, i32 0, metadata !39} ; [ DW_TAG_member ] [bits_to_go_skip] [line 422, size 32, align 32, offset 224] [from int]
!62 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"streamBuffer", i32 424, i64 64, i64 64, i64 256, i32 0, metadata !63} ; [ DW_TAG_member ] [streamBuffer] [line 424, size 64, align 64, offset 256] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from byte]
!64 = metadata !{i32 786445, metadata !4, metadata !49, metadata !"write_flag", i32 425, i64 32, i64 32, i64 320, i32 0, metadata !39} ; [ DW_TAG_member ] [write_flag] [line 425, size 32, align 32, offset 320] [from int]
!65 = metadata !{i32 786445, metadata !4, metadata !44, metadata !"ee_cabac", i32 434, i64 832, i64 64, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [ee_cabac] [line 434, size 832, align 64, offset 64] [from EncodingEnvironment]
!66 = metadata !{i32 786454, metadata !4, null, metadata !"EncodingEnvironment", i32 226, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [EncodingEnvironment] [line 226, size 0, align 0, offset 0] [from ]
!67 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 207, i64 832, i64 64, i32 0, i32 0, null, metadata !68, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 207, size 832, align 64, offset 0] [from ]
!68 = metadata !{metadata !69, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90}
!69 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"Elow", i32 209, i64 32, i64 32, i64 0, i32 0, metadata !70} ; [ DW_TAG_member ] [Elow] [line 209, size 32, align 32, offset 0] [from unsigned int]
!70 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!71 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"Erange", i32 209, i64 32, i64 32, i64 32, i32 0, metadata !70} ; [ DW_TAG_member ] [Erange] [line 209, size 32, align 32, offset 32] [from unsigned int]
!72 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"Ebuffer", i32 210, i64 32, i64 32, i64 64, i32 0, metadata !70} ; [ DW_TAG_member ] [Ebuffer] [line 210, size 32, align 32, offset 64] [from unsigned int]
!73 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"Ebits_to_go", i32 211, i64 32, i64 32, i64 96, i32 0, metadata !70} ; [ DW_TAG_member ] [Ebits_to_go] [line 211, size 32, align 32, offset 96] [from unsigned int]
!74 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"Ebits_to_follow", i32 212, i64 32, i64 32, i64 128, i32 0, metadata !70} ; [ DW_TAG_member ] [Ebits_to_follow] [line 212, size 32, align 32, offset 128] [from unsigned int]
!75 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"Ecodestrm", i32 213, i64 64, i64 64, i64 192, i32 0, metadata !63} ; [ DW_TAG_member ] [Ecodestrm] [line 213, size 64, align 64, offset 192] [from ]
!76 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"Ecodestrm_len", i32 214, i64 64, i64 64, i64 256, i32 0, metadata !77} ; [ DW_TAG_member ] [Ecodestrm_len] [line 214, size 64, align 64, offset 256] [from ]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!78 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"ElowS", i32 217, i64 32, i64 32, i64 320, i32 0, metadata !70} ; [ DW_TAG_member ] [ElowS] [line 217, size 32, align 32, offset 320] [from unsigned int]
!79 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"ErangeS", i32 217, i64 32, i64 32, i64 352, i32 0, metadata !70} ; [ DW_TAG_member ] [ErangeS] [line 217, size 32, align 32, offset 352] [from unsigned int]
!80 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"EbufferS", i32 218, i64 32, i64 32, i64 384, i32 0, metadata !70} ; [ DW_TAG_member ] [EbufferS] [line 218, size 32, align 32, offset 384] [from unsigned int]
!81 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"Ebits_to_goS", i32 219, i64 32, i64 32, i64 416, i32 0, metadata !70} ; [ DW_TAG_member ] [Ebits_to_goS] [line 219, size 32, align 32, offset 416] [from unsigned int]
!82 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"Ebits_to_followS", i32 220, i64 32, i64 32, i64 448, i32 0, metadata !70} ; [ DW_TAG_member ] [Ebits_to_followS] [line 220, size 32, align 32, offset 448] [from unsigned int]
!83 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"EcodestrmS", i32 221, i64 64, i64 64, i64 512, i32 0, metadata !63} ; [ DW_TAG_member ] [EcodestrmS] [line 221, size 64, align 64, offset 512] [from ]
!84 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"Ecodestrm_lenS", i32 222, i64 64, i64 64, i64 576, i32 0, metadata !77} ; [ DW_TAG_member ] [Ecodestrm_lenS] [line 222, size 64, align 64, offset 576] [from ]
!85 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"C", i32 223, i64 32, i64 32, i64 640, i32 0, metadata !39} ; [ DW_TAG_member ] [C] [line 223, size 32, align 32, offset 640] [from int]
!86 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"CS", i32 223, i64 32, i64 32, i64 672, i32 0, metadata !39} ; [ DW_TAG_member ] [CS] [line 223, size 32, align 32, offset 672] [from int]
!87 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"E", i32 224, i64 32, i64 32, i64 704, i32 0, metadata !39} ; [ DW_TAG_member ] [E] [line 224, size 32, align 32, offset 704] [from int]
!88 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"ES", i32 224, i64 32, i64 32, i64 736, i32 0, metadata !39} ; [ DW_TAG_member ] [ES] [line 224, size 32, align 32, offset 736] [from int]
!89 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"B", i32 225, i64 32, i64 32, i64 768, i32 0, metadata !39} ; [ DW_TAG_member ] [B] [line 225, size 32, align 32, offset 768] [from int]
!90 = metadata !{i32 786445, metadata !4, metadata !67, metadata !"BS", i32 225, i64 32, i64 32, i64 800, i32 0, metadata !39} ; [ DW_TAG_member ] [BS] [line 225, size 32, align 32, offset 800] [from int]
!91 = metadata !{i32 786445, metadata !4, metadata !44, metadata !"writeSyntaxElement", i32 436, i64 64, i64 64, i64 896, i32 0, metadata !92} ; [ DW_TAG_member ] [writeSyntaxElement] [line 436, size 64, align 64, offset 896] [from ]
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!93 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!94 = metadata !{metadata !39, metadata !95, metadata !118}
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SyntaxElement]
!96 = metadata !{i32 786454, metadata !4, null, metadata !"SyntaxElement", i32 348, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [SyntaxElement] [line 348, size 0, align 0, offset 0] [from syntaxelement]
!97 = metadata !{i32 786451, metadata !4, null, metadata !"syntaxelement", i32 327, i64 384, i64 64, i32 0, i32 0, null, metadata !98, i32 0, null, null} ; [ DW_TAG_structure_type ] [syntaxelement] [line 327, size 384, align 64, offset 0] [from ]
!98 = metadata !{metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !111}
!99 = metadata !{i32 786445, metadata !4, metadata !97, metadata !"type", i32 329, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [type] [line 329, size 32, align 32, offset 0] [from int]
!100 = metadata !{i32 786445, metadata !4, metadata !97, metadata !"value1", i32 330, i64 32, i64 32, i64 32, i32 0, metadata !39} ; [ DW_TAG_member ] [value1] [line 330, size 32, align 32, offset 32] [from int]
!101 = metadata !{i32 786445, metadata !4, metadata !97, metadata !"value2", i32 331, i64 32, i64 32, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [value2] [line 331, size 32, align 32, offset 64] [from int]
!102 = metadata !{i32 786445, metadata !4, metadata !97, metadata !"len", i32 332, i64 32, i64 32, i64 96, i32 0, metadata !39} ; [ DW_TAG_member ] [len] [line 332, size 32, align 32, offset 96] [from int]
!103 = metadata !{i32 786445, metadata !4, metadata !97, metadata !"inf", i32 333, i64 32, i64 32, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [inf] [line 333, size 32, align 32, offset 128] [from int]
!104 = metadata !{i32 786445, metadata !4, metadata !97, metadata !"bitpattern", i32 334, i64 32, i64 32, i64 160, i32 0, metadata !70} ; [ DW_TAG_member ] [bitpattern] [line 334, size 32, align 32, offset 160] [from unsigned int]
!105 = metadata !{i32 786445, metadata !4, metadata !97, metadata !"context", i32 335, i64 32, i64 32, i64 192, i32 0, metadata !39} ; [ DW_TAG_member ] [context] [line 335, size 32, align 32, offset 192] [from int]
!106 = metadata !{i32 786445, metadata !4, metadata !97, metadata !"k", i32 336, i64 32, i64 32, i64 224, i32 0, metadata !39} ; [ DW_TAG_member ] [k] [line 336, size 32, align 32, offset 224] [from int]
!107 = metadata !{i32 786445, metadata !4, metadata !97, metadata !"mapping", i32 344, i64 64, i64 64, i64 256, i32 0, metadata !108} ; [ DW_TAG_member ] [mapping] [line 344, size 64, align 64, offset 256] [from ]
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!109 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!110 = metadata !{null, metadata !39, metadata !39, metadata !77, metadata !77}
!111 = metadata !{i32 786445, metadata !4, metadata !97, metadata !"writing", i32 346, i64 64, i64 64, i64 320, i32 0, metadata !112} ; [ DW_TAG_member ] [writing] [line 346, size 64, align 64, offset 320] [from ]
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !113} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!113 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!114 = metadata !{null, metadata !115, metadata !116}
!115 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !97} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from syntaxelement]
!116 = metadata !{i32 786454, metadata !4, null, metadata !"EncodingEnvironmentPtr", i32 228, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [EncodingEnvironmentPtr] [line 228, size 0, align 0, offset 0] [from ]
!117 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from EncodingEnvironment]
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from datapartition]
!119 = metadata !{metadata !120, metadata !121, metadata !122, metadata !123, metadata !124}
!120 = metadata !{i32 786689, metadata !35, metadata !"tracestring", metadata !36, i32 16777274, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tracestring] [line 58]
!121 = metadata !{i32 786689, metadata !35, metadata !"value", metadata !36, i32 33554490, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 58]
!122 = metadata !{i32 786689, metadata !35, metadata !"part", metadata !36, i32 50331706, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [part] [line 58]
!123 = metadata !{i32 786688, metadata !35, metadata !"symbol", metadata !36, i32 60, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbol] [line 60]
!124 = metadata !{i32 786688, metadata !35, metadata !"sym", metadata !36, i32 60, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 60]
!125 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"se_v", metadata !"se_v", metadata !"", i32 96, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, %struct.datapartition*)* @se_v, null, null, metadata !126, i32 97} ; [ DW_TAG_subprogram ] [line 96] [def] [scope 97] [se_v]
!126 = metadata !{metadata !127, metadata !128, metadata !129, metadata !130, metadata !131}
!127 = metadata !{i32 786689, metadata !125, metadata !"tracestring", metadata !36, i32 16777312, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tracestring] [line 96]
!128 = metadata !{i32 786689, metadata !125, metadata !"value", metadata !36, i32 33554528, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 96]
!129 = metadata !{i32 786689, metadata !125, metadata !"part", metadata !36, i32 50331744, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [part] [line 96]
!130 = metadata !{i32 786688, metadata !125, metadata !"symbol", metadata !36, i32 98, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbol] [line 98]
!131 = metadata !{i32 786688, metadata !125, metadata !"sym", metadata !36, i32 98, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 98]
!132 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"u_1", metadata !"u_1", metadata !"", i32 135, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, %struct.datapartition*)* @u_1, null, null, metadata !133, i32 136} ; [ DW_TAG_subprogram ] [line 135] [def] [scope 136] [u_1]
!133 = metadata !{metadata !134, metadata !135, metadata !136, metadata !137, metadata !138}
!134 = metadata !{i32 786689, metadata !132, metadata !"tracestring", metadata !36, i32 16777351, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tracestring] [line 135]
!135 = metadata !{i32 786689, metadata !132, metadata !"value", metadata !36, i32 33554567, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 135]
!136 = metadata !{i32 786689, metadata !132, metadata !"part", metadata !36, i32 50331783, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [part] [line 135]
!137 = metadata !{i32 786688, metadata !132, metadata !"symbol", metadata !36, i32 137, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbol] [line 137]
!138 = metadata !{i32 786688, metadata !132, metadata !"sym", metadata !36, i32 137, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 137]
!139 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"u_v", metadata !"u_v", metadata !"", i32 178, metadata !140, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32, %struct.datapartition*)* @u_v, null, null, metadata !142, i32 179} ; [ DW_TAG_subprogram ] [line 178] [def] [scope 179] [u_v]
!140 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!141 = metadata !{metadata !39, metadata !39, metadata !40, metadata !39, metadata !42}
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148}
!143 = metadata !{i32 786689, metadata !139, metadata !"n", metadata !36, i32 16777394, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 178]
!144 = metadata !{i32 786689, metadata !139, metadata !"tracestring", metadata !36, i32 33554610, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tracestring] [line 178]
!145 = metadata !{i32 786689, metadata !139, metadata !"value", metadata !36, i32 50331826, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 178]
!146 = metadata !{i32 786689, metadata !139, metadata !"part", metadata !36, i32 67109042, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [part] [line 178]
!147 = metadata !{i32 786688, metadata !139, metadata !"symbol", metadata !36, i32 180, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [symbol] [line 180]
!148 = metadata !{i32 786688, metadata !139, metadata !"sym", metadata !36, i32 180, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sym] [line 180]
!149 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"ue_linfo", metadata !"ue_linfo", metadata !"", i32 209, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32*, i32*)* @ue_linfo, null, null, metadata !150, i32 210} ; [ DW_TAG_subprogram ] [line 209] [def] [scope 210] [ue_linfo]
!150 = metadata !{metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156}
!151 = metadata !{i32 786689, metadata !149, metadata !"ue", metadata !36, i32 16777425, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ue] [line 209]
!152 = metadata !{i32 786689, metadata !149, metadata !"dummy", metadata !36, i32 33554641, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dummy] [line 209]
!153 = metadata !{i32 786689, metadata !149, metadata !"len", metadata !36, i32 50331857, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 209]
!154 = metadata !{i32 786689, metadata !149, metadata !"info", metadata !36, i32 67109073, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 209]
!155 = metadata !{i32 786688, metadata !149, metadata !"i", metadata !36, i32 211, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 211]
!156 = metadata !{i32 786688, metadata !149, metadata !"nn", metadata !36, i32 211, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nn] [line 211]
!157 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"se_linfo", metadata !"se_linfo", metadata !"", i32 238, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32*, i32*)* @se_linfo, null, null, metadata !158, i32 239} ; [ DW_TAG_subprogram ] [line 238] [def] [scope 239] [se_linfo]
!158 = metadata !{metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166}
!159 = metadata !{i32 786689, metadata !157, metadata !"se", metadata !36, i32 16777454, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 238]
!160 = metadata !{i32 786689, metadata !157, metadata !"dummy", metadata !36, i32 33554670, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dummy] [line 238]
!161 = metadata !{i32 786689, metadata !157, metadata !"len", metadata !36, i32 50331886, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 238]
!162 = metadata !{i32 786689, metadata !157, metadata !"info", metadata !36, i32 67109102, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 238]
!163 = metadata !{i32 786688, metadata !157, metadata !"i", metadata !36, i32 241, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 241]
!164 = metadata !{i32 786688, metadata !157, metadata !"n", metadata !36, i32 241, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 241]
!165 = metadata !{i32 786688, metadata !157, metadata !"sign", metadata !36, i32 241, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sign] [line 241]
!166 = metadata !{i32 786688, metadata !157, metadata !"nn", metadata !36, i32 241, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nn] [line 241]
!167 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cbp_linfo_intra", metadata !"cbp_linfo_intra", metadata !"", i32 273, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32*, i32*)* @cbp_linfo_intra, null, null, metadata !168, i32 274} ; [ DW_TAG_subprogram ] [line 273] [def] [scope 274] [cbp_linfo_intra]
!168 = metadata !{metadata !169, metadata !170, metadata !171, metadata !172}
!169 = metadata !{i32 786689, metadata !167, metadata !"cbp", metadata !36, i32 16777489, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cbp] [line 273]
!170 = metadata !{i32 786689, metadata !167, metadata !"dummy", metadata !36, i32 33554705, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dummy] [line 273]
!171 = metadata !{i32 786689, metadata !167, metadata !"len", metadata !36, i32 50331921, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 273]
!172 = metadata !{i32 786689, metadata !167, metadata !"info", metadata !36, i32 67109137, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 273]
!173 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"cbp_linfo_inter", metadata !"cbp_linfo_inter", metadata !"", i32 288, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32*, i32*)* @cbp_linfo_inter, null, null, metadata !174, i32 289} ; [ DW_TAG_subprogram ] [line 288] [def] [scope 289] [cbp_linfo_inter]
!174 = metadata !{metadata !175, metadata !176, metadata !177, metadata !178}
!175 = metadata !{i32 786689, metadata !173, metadata !"cbp", metadata !36, i32 16777504, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cbp] [line 288]
!176 = metadata !{i32 786689, metadata !173, metadata !"dummy", metadata !36, i32 33554720, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dummy] [line 288]
!177 = metadata !{i32 786689, metadata !173, metadata !"len", metadata !36, i32 50331936, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 288]
!178 = metadata !{i32 786689, metadata !173, metadata !"info", metadata !36, i32 67109152, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 288]
!179 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"levrun_linfo_c2x2", metadata !"levrun_linfo_c2x2", metadata !"", i32 307, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32*, i32*)* @levrun_linfo_c2x2, null, null, metadata !180, i32 308} ; [ DW_TAG_subprogram ] [line 307] [def] [scope 308] [levrun_linfo_c2x2]
!180 = metadata !{metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189}
!181 = metadata !{i32 786689, metadata !179, metadata !"level", metadata !36, i32 16777523, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 307]
!182 = metadata !{i32 786689, metadata !179, metadata !"run", metadata !36, i32 33554739, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [run] [line 307]
!183 = metadata !{i32 786689, metadata !179, metadata !"len", metadata !36, i32 50331955, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 307]
!184 = metadata !{i32 786689, metadata !179, metadata !"info", metadata !36, i32 67109171, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 307]
!185 = metadata !{i32 786688, metadata !179, metadata !"levabs", metadata !36, i32 319, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [levabs] [line 319]
!186 = metadata !{i32 786688, metadata !179, metadata !"i", metadata !36, i32 319, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 319]
!187 = metadata !{i32 786688, metadata !179, metadata !"n", metadata !36, i32 319, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 319]
!188 = metadata !{i32 786688, metadata !179, metadata !"sign", metadata !36, i32 319, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sign] [line 319]
!189 = metadata !{i32 786688, metadata !179, metadata !"nn", metadata !36, i32 319, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nn] [line 319]
!190 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"levrun_linfo_inter", metadata !"levrun_linfo_inter", metadata !"", i32 364, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32*, i32*)* @levrun_linfo_inter, null, null, metadata !191, i32 365} ; [ DW_TAG_subprogram ] [line 364] [def] [scope 365] [levrun_linfo_inter]
!191 = metadata !{metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200}
!192 = metadata !{i32 786689, metadata !190, metadata !"level", metadata !36, i32 16777580, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 364]
!193 = metadata !{i32 786689, metadata !190, metadata !"run", metadata !36, i32 33554796, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [run] [line 364]
!194 = metadata !{i32 786689, metadata !190, metadata !"len", metadata !36, i32 50332012, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 364]
!195 = metadata !{i32 786689, metadata !190, metadata !"info", metadata !36, i32 67109228, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 364]
!196 = metadata !{i32 786688, metadata !190, metadata !"levabs", metadata !36, i32 378, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [levabs] [line 378]
!197 = metadata !{i32 786688, metadata !190, metadata !"i", metadata !36, i32 378, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 378]
!198 = metadata !{i32 786688, metadata !190, metadata !"n", metadata !36, i32 378, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 378]
!199 = metadata !{i32 786688, metadata !190, metadata !"sign", metadata !36, i32 378, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sign] [line 378]
!200 = metadata !{i32 786688, metadata !190, metadata !"nn", metadata !36, i32 378, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nn] [line 378]
!201 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"levrun_linfo_intra", metadata !"levrun_linfo_intra", metadata !"", i32 425, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32, i32*, i32*)* @levrun_linfo_intra, null, null, metadata !202, i32 426} ; [ DW_TAG_subprogram ] [line 425] [def] [scope 426] [levrun_linfo_intra]
!202 = metadata !{metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211}
!203 = metadata !{i32 786689, metadata !201, metadata !"level", metadata !36, i32 16777641, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 425]
!204 = metadata !{i32 786689, metadata !201, metadata !"run", metadata !36, i32 33554857, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [run] [line 425]
!205 = metadata !{i32 786689, metadata !201, metadata !"len", metadata !36, i32 50332073, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 425]
!206 = metadata !{i32 786689, metadata !201, metadata !"info", metadata !36, i32 67109289, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [info] [line 425]
!207 = metadata !{i32 786688, metadata !201, metadata !"levabs", metadata !36, i32 445, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [levabs] [line 445]
!208 = metadata !{i32 786688, metadata !201, metadata !"i", metadata !36, i32 445, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 445]
!209 = metadata !{i32 786688, metadata !201, metadata !"n", metadata !36, i32 445, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 445]
!210 = metadata !{i32 786688, metadata !201, metadata !"sign", metadata !36, i32 445, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sign] [line 445]
!211 = metadata !{i32 786688, metadata !201, metadata !"nn", metadata !36, i32 445, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nn] [line 445]
!212 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"symbol2uvlc", metadata !"symbol2uvlc", metadata !"", i32 490, metadata !213, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*)* @symbol2uvlc, null, null, metadata !215, i32 491} ; [ DW_TAG_subprogram ] [line 490] [def] [scope 491] [symbol2uvlc]
!213 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!214 = metadata !{metadata !39, metadata !95}
!215 = metadata !{metadata !216, metadata !217}
!216 = metadata !{i32 786689, metadata !212, metadata !"sym", metadata !36, i32 16777706, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 490]
!217 = metadata !{i32 786688, metadata !212, metadata !"suffix_len", metadata !36, i32 492, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [suffix_len] [line 492]
!218 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeSyntaxElement_UVLC", metadata !"writeSyntaxElement_UVLC", metadata !"", i32 504, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_UVLC, null, null, metadata !221, i32 505} ; [ DW_TAG_subprogram ] [line 504] [def] [scope 505] [writeSyntaxElement_UVLC]
!219 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!220 = metadata !{metadata !39, metadata !95, metadata !42}
!221 = metadata !{metadata !222, metadata !223}
!222 = metadata !{i32 786689, metadata !218, metadata !"se", metadata !36, i32 16777720, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 504]
!223 = metadata !{i32 786689, metadata !218, metadata !"this_dataPart", metadata !36, i32 33554936, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_dataPart] [line 504]
!224 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeSyntaxElement_fixed", metadata !"writeSyntaxElement_fixed", metadata !"", i32 529, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_fixed, null, null, metadata !225, i32 530} ; [ DW_TAG_subprogram ] [line 529] [def] [scope 530] [writeSyntaxElement_fixed]
!225 = metadata !{metadata !226, metadata !227}
!226 = metadata !{i32 786689, metadata !224, metadata !"se", metadata !36, i32 16777745, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 529]
!227 = metadata !{i32 786689, metadata !224, metadata !"this_dataPart", metadata !36, i32 33554961, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_dataPart] [line 529]
!228 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeSyntaxElement_Intra4x4PredictionMode", metadata !"writeSyntaxElement_Intra4x4PredictionMode", metadata !"", i32 551, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_Intra4x4PredictionMode, null, null, metadata !229, i32 552} ; [ DW_TAG_subprogram ] [line 551] [def] [scope 552] [writeSyntaxElement_Intra4x4PredictionMode]
!229 = metadata !{metadata !230, metadata !231}
!230 = metadata !{i32 786689, metadata !228, metadata !"se", metadata !36, i32 16777767, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 551]
!231 = metadata !{i32 786689, metadata !228, metadata !"this_dataPart", metadata !36, i32 33554983, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_dataPart] [line 551]
!232 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeSyntaxElement2Buf_UVLC", metadata !"writeSyntaxElement2Buf_UVLC", metadata !"", i32 588, metadata !233, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*, %struct.Bitstream*)* @writeSyntaxElement2Buf_UVLC, null, null, metadata !235, i32 589} ; [ DW_TAG_subprogram ] [line 588] [def] [scope 589] [writeSyntaxElement2Buf_UVLC]
!233 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !234, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!234 = metadata !{metadata !39, metadata !95, metadata !47}
!235 = metadata !{metadata !236, metadata !237}
!236 = metadata !{i32 786689, metadata !232, metadata !"se", metadata !36, i32 16777804, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 588]
!237 = metadata !{i32 786689, metadata !232, metadata !"this_streamBuffer", metadata !36, i32 33555020, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_streamBuffer] [line 588]
!238 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeUVLC2buffer", metadata !"writeUVLC2buffer", metadata !"", i32 612, metadata !239, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.syntaxelement*, %struct.Bitstream*)* @writeUVLC2buffer, null, null, metadata !241, i32 613} ; [ DW_TAG_subprogram ] [line 612] [def] [scope 613] [writeUVLC2buffer]
!239 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !240, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!240 = metadata !{null, metadata !95, metadata !47}
!241 = metadata !{metadata !242, metadata !243, metadata !244, metadata !245}
!242 = metadata !{i32 786689, metadata !238, metadata !"se", metadata !36, i32 16777828, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 612]
!243 = metadata !{i32 786689, metadata !238, metadata !"currStream", metadata !36, i32 33555044, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currStream] [line 612]
!244 = metadata !{i32 786688, metadata !238, metadata !"i", metadata !36, i32 615, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 615]
!245 = metadata !{i32 786688, metadata !238, metadata !"mask", metadata !36, i32 616, metadata !70, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mask] [line 616]
!246 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeSyntaxElement2Buf_Fixed", metadata !"writeSyntaxElement2Buf_Fixed", metadata !"", i32 645, metadata !233, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*, %struct.Bitstream*)* @writeSyntaxElement2Buf_Fixed, null, null, metadata !247, i32 646} ; [ DW_TAG_subprogram ] [line 645] [def] [scope 646] [writeSyntaxElement2Buf_Fixed]
!247 = metadata !{metadata !248, metadata !249}
!248 = metadata !{i32 786689, metadata !246, metadata !"se", metadata !36, i32 16777861, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 645]
!249 = metadata !{i32 786689, metadata !246, metadata !"this_streamBuffer", metadata !36, i32 33555077, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_streamBuffer] [line 645]
!250 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"symbol2vlc", metadata !"symbol2vlc", metadata !"", i32 670, metadata !213, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*)* @symbol2vlc, null, null, metadata !251, i32 671} ; [ DW_TAG_subprogram ] [line 670] [def] [scope 671] [symbol2vlc]
!251 = metadata !{metadata !252, metadata !253}
!252 = metadata !{i32 786689, metadata !250, metadata !"sym", metadata !36, i32 16777886, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 670]
!253 = metadata !{i32 786688, metadata !250, metadata !"info_len", metadata !36, i32 672, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info_len] [line 672]
!254 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeSyntaxElement_VLC", metadata !"writeSyntaxElement_VLC", metadata !"", i32 693, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_VLC, null, null, metadata !255, i32 694} ; [ DW_TAG_subprogram ] [line 693] [def] [scope 694] [writeSyntaxElement_VLC]
!255 = metadata !{metadata !256, metadata !257}
!256 = metadata !{i32 786689, metadata !254, metadata !"se", metadata !36, i32 16777909, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 693]
!257 = metadata !{i32 786689, metadata !254, metadata !"this_dataPart", metadata !36, i32 33555125, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_dataPart] [line 693]
!258 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeSyntaxElement_NumCoeffTrailingOnes", metadata !"writeSyntaxElement_NumCoeffTrailingOnes", metadata !"", i32 717, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_NumCoeffTrailingOnes, null, null, metadata !259, i32 718} ; [ DW_TAG_subprogram ] [line 717] [def] [scope 718] [writeSyntaxElement_NumCoeffTrailingOnes]
!259 = metadata !{metadata !260, metadata !261, metadata !262}
!260 = metadata !{i32 786689, metadata !258, metadata !"se", metadata !36, i32 16777933, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 717]
!261 = metadata !{i32 786689, metadata !258, metadata !"this_dataPart", metadata !36, i32 33555149, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_dataPart] [line 717]
!262 = metadata !{i32 786688, metadata !258, metadata !"vlcnum", metadata !36, i32 763, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vlcnum] [line 763]
!263 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeSyntaxElement_NumCoeffTrailingOnesChromaDC", metadata !"writeSyntaxElement_NumCoeffTrailingOnesChromaDC", metadata !"", i32 814, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_NumCoeffTrailingOnesChromaDC, null, null, metadata !264, i32 815} ; [ DW_TAG_subprogram ] [line 814] [def] [scope 815] [writeSyntaxElement_NumCoeffTrailingOnesChromaDC]
!264 = metadata !{metadata !265, metadata !266, metadata !267}
!265 = metadata !{i32 786689, metadata !263, metadata !"se", metadata !36, i32 16778030, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 814]
!266 = metadata !{i32 786689, metadata !263, metadata !"this_dataPart", metadata !36, i32 33555246, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_dataPart] [line 814]
!267 = metadata !{i32 786688, metadata !263, metadata !"yuv", metadata !36, i32 854, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yuv] [line 854]
!268 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeSyntaxElement_TotalZeros", metadata !"writeSyntaxElement_TotalZeros", metadata !"", i32 886, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_TotalZeros, null, null, metadata !269, i32 887} ; [ DW_TAG_subprogram ] [line 886] [def] [scope 887] [writeSyntaxElement_TotalZeros]
!269 = metadata !{metadata !270, metadata !271, metadata !272}
!270 = metadata !{i32 786689, metadata !268, metadata !"se", metadata !36, i32 16778102, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 886]
!271 = metadata !{i32 786689, metadata !268, metadata !"this_dataPart", metadata !36, i32 33555318, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_dataPart] [line 886]
!272 = metadata !{i32 786688, metadata !268, metadata !"vlcnum", metadata !36, i32 925, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vlcnum] [line 925]
!273 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeSyntaxElement_TotalZerosChromaDC", metadata !"writeSyntaxElement_TotalZerosChromaDC", metadata !"", i32 957, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_TotalZerosChromaDC, null, null, metadata !274, i32 958} ; [ DW_TAG_subprogram ] [line 957] [def] [scope 958] [writeSyntaxElement_TotalZerosChromaDC]
!274 = metadata !{metadata !275, metadata !276, metadata !277, metadata !278}
!275 = metadata !{i32 786689, metadata !273, metadata !"se", metadata !36, i32 16778173, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 957]
!276 = metadata !{i32 786689, metadata !273, metadata !"this_dataPart", metadata !36, i32 33555389, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_dataPart] [line 957]
!277 = metadata !{i32 786688, metadata !273, metadata !"vlcnum", metadata !36, i32 1022, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vlcnum] [line 1022]
!278 = metadata !{i32 786688, metadata !273, metadata !"yuv", metadata !36, i32 1023, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [yuv] [line 1023]
!279 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeSyntaxElement_Run", metadata !"writeSyntaxElement_Run", metadata !"", i32 1055, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_Run, null, null, metadata !280, i32 1056} ; [ DW_TAG_subprogram ] [line 1055] [def] [scope 1056] [writeSyntaxElement_Run]
!280 = metadata !{metadata !281, metadata !282, metadata !283}
!281 = metadata !{i32 786689, metadata !279, metadata !"se", metadata !36, i32 16778271, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 1055]
!282 = metadata !{i32 786689, metadata !279, metadata !"this_dataPart", metadata !36, i32 33555487, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_dataPart] [line 1055]
!283 = metadata !{i32 786688, metadata !279, metadata !"vlcnum", metadata !36, i32 1078, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vlcnum] [line 1078]
!284 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeSyntaxElement_Level_VLC1", metadata !"writeSyntaxElement_Level_VLC1", metadata !"", i32 1110, metadata !219, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*, %struct.datapartition*)* @writeSyntaxElement_Level_VLC1, null, null, metadata !285, i32 1111} ; [ DW_TAG_subprogram ] [line 1110] [def] [scope 1111] [writeSyntaxElement_Level_VLC1]
!285 = metadata !{metadata !286, metadata !287, metadata !288, metadata !289, metadata !290}
!286 = metadata !{i32 786689, metadata !284, metadata !"se", metadata !36, i32 16778326, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 1110]
!287 = metadata !{i32 786689, metadata !284, metadata !"this_dataPart", metadata !36, i32 33555542, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_dataPart] [line 1110]
!288 = metadata !{i32 786688, metadata !284, metadata !"level", metadata !36, i32 1112, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 1112]
!289 = metadata !{i32 786688, metadata !284, metadata !"levabs", metadata !36, i32 1112, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [levabs] [line 1112]
!290 = metadata !{i32 786688, metadata !284, metadata !"sign", metadata !36, i32 1112, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sign] [line 1112]
!291 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeSyntaxElement_Level_VLCN", metadata !"writeSyntaxElement_Level_VLCN", metadata !"", i32 1156, metadata !292, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.syntaxelement*, i32, %struct.datapartition*)* @writeSyntaxElement_Level_VLCN, null, null, metadata !294, i32 1157} ; [ DW_TAG_subprogram ] [line 1156] [def] [scope 1157] [writeSyntaxElement_Level_VLCN]
!292 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !293, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!293 = metadata !{metadata !39, metadata !95, metadata !39, metadata !42}
!294 = metadata !{metadata !295, metadata !296, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307}
!295 = metadata !{i32 786689, metadata !291, metadata !"se", metadata !36, i32 16778372, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [se] [line 1156]
!296 = metadata !{i32 786689, metadata !291, metadata !"vlc", metadata !36, i32 33555588, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vlc] [line 1156]
!297 = metadata !{i32 786689, metadata !291, metadata !"this_dataPart", metadata !36, i32 50332804, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [this_dataPart] [line 1156]
!298 = metadata !{i32 786688, metadata !291, metadata !"iCodeword", metadata !36, i32 1158, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iCodeword] [line 1158]
!299 = metadata !{i32 786688, metadata !291, metadata !"iLength", metadata !36, i32 1159, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iLength] [line 1159]
!300 = metadata !{i32 786688, metadata !291, metadata !"level", metadata !36, i32 1161, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 1161]
!301 = metadata !{i32 786688, metadata !291, metadata !"levabs", metadata !36, i32 1163, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [levabs] [line 1163]
!302 = metadata !{i32 786688, metadata !291, metadata !"sign", metadata !36, i32 1164, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sign] [line 1164]
!303 = metadata !{i32 786688, metadata !291, metadata !"shift", metadata !36, i32 1166, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shift] [line 1166]
!304 = metadata !{i32 786688, metadata !291, metadata !"escape", metadata !36, i32 1167, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [escape] [line 1167]
!305 = metadata !{i32 786688, metadata !291, metadata !"numPrefix", metadata !36, i32 1169, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [numPrefix] [line 1169]
!306 = metadata !{i32 786688, metadata !291, metadata !"sufmask", metadata !36, i32 1171, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sufmask] [line 1171]
!307 = metadata !{i32 786688, metadata !291, metadata !"suffix", metadata !36, i32 1172, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [suffix] [line 1172]
!308 = metadata !{i32 786478, metadata !1, metadata !36, metadata !"writeVlcByteAlign", metadata !"writeVlcByteAlign", metadata !"", i32 1256, metadata !309, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.Bitstream*)* @writeVlcByteAlign, null, null, metadata !311, i32 1257} ; [ DW_TAG_subprogram ] [line 1256] [def] [scope 1257] [writeVlcByteAlign]
!309 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !310, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!310 = metadata !{null, metadata !47}
!311 = metadata !{metadata !312}
!312 = metadata !{i32 786689, metadata !308, metadata !"currStream", metadata !36, i32 16778472, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [currStream] [line 1256]
!313 = metadata !{metadata !314, metadata !319, metadata !323, metadata !328, metadata !332, metadata !336, metadata !341, metadata !346, metadata !347, metadata !348, metadata !349, metadata !353, metadata !354, metadata !357, metadata !358, metadata !359, metadata !360, metadata !471, metadata !472, metadata !473, metadata !474, metadata !475, metadata !478, metadata !480, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !523, metadata !618, metadata !619, metadata !620, metadata !622, metadata !623, metadata !625, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !642, metadata !643, metadata !645, metadata !646, metadata !647, metadata !648, metadata !649, metadata !650, metadata !651, metadata !652, metadata !653, metadata !654, metadata !658, metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !669, metadata !672, metadata !673, metadata !674, metadata !675, metadata !678, metadata !680, metadata !691, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !789, metadata !790, metadata !791, metadata !792, metadata !793, metadata !795, metadata !796, metadata !797, metadata !798, metadata !799, metadata !800, metadata !801, metadata !802}
!314 = metadata !{i32 786484, i32 0, metadata !179, metadata !"NTAB", metadata !"NTAB", metadata !"", metadata !36, i32 309, metadata !315, i32 1, i32 1, [2 x [2 x i32]]* @levrun_linfo_c2x2.NTAB, null} ; [ DW_TAG_variable ] [NTAB] [line 309] [local] [def]
!315 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !316, metadata !317, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from ]
!316 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!317 = metadata !{metadata !318, metadata !318}
!318 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!319 = metadata !{i32 786484, i32 0, metadata !179, metadata !"LEVRUN", metadata !"LEVRUN", metadata !"", metadata !36, i32 314, metadata !320, i32 1, i32 1, [4 x i32]* @levrun_linfo_c2x2.LEVRUN, null} ; [ DW_TAG_variable ] [LEVRUN] [line 314] [local] [def]
!320 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !316, metadata !321, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from ]
!321 = metadata !{metadata !322}
!322 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!323 = metadata !{i32 786484, i32 0, metadata !190, metadata !"LEVRUN", metadata !"LEVRUN", metadata !"", metadata !36, i32 366, metadata !324, i32 1, i32 1, [16 x i8]* @levrun_linfo_inter.LEVRUN, null} ; [ DW_TAG_variable ] [LEVRUN] [line 366] [local] [def]
!324 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 8, i32 0, i32 0, metadata !325, metadata !326, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from ]
!325 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from byte]
!326 = metadata !{metadata !327}
!327 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!328 = metadata !{i32 786484, i32 0, metadata !190, metadata !"NTAB", metadata !"NTAB", metadata !"", metadata !36, i32 370, metadata !329, i32 1, i32 1, [4 x [10 x i8]]* @levrun_linfo_inter.NTAB, null} ; [ DW_TAG_variable ] [NTAB] [line 370] [local] [def]
!329 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 8, i32 0, i32 0, metadata !325, metadata !330, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 320, align 8, offset 0] [from ]
!330 = metadata !{metadata !322, metadata !331}
!331 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!332 = metadata !{i32 786484, i32 0, metadata !201, metadata !"LEVRUN", metadata !"LEVRUN", metadata !"", metadata !36, i32 427, metadata !333, i32 1, i32 1, [8 x i8]* @levrun_linfo_intra.LEVRUN, null} ; [ DW_TAG_variable ] [LEVRUN] [line 427] [local] [def]
!333 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !325, metadata !334, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from ]
!334 = metadata !{metadata !335}
!335 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!336 = metadata !{i32 786484, i32 0, metadata !201, metadata !"NTAB", metadata !"NTAB", metadata !"", metadata !36, i32 432, metadata !337, i32 1, i32 1, [9 x [5 x i8]]* @levrun_linfo_intra.NTAB, null} ; [ DW_TAG_variable ] [NTAB] [line 432] [local] [def]
!337 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 360, i64 8, i32 0, i32 0, metadata !325, metadata !338, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 360, align 8, offset 0] [from ]
!338 = metadata !{metadata !339, metadata !340}
!339 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!340 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!341 = metadata !{i32 786484, i32 0, metadata !258, metadata !"lentab", metadata !"lentab", metadata !"", metadata !36, i32 719, metadata !342, i32 1, i32 1, [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnes.lentab, null} ; [ DW_TAG_variable ] [lentab] [line 719] [local] [def]
!342 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6528, i64 32, i32 0, i32 0, metadata !316, metadata !343, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6528, align 32, offset 0] [from ]
!343 = metadata !{metadata !344, metadata !322, metadata !345}
!344 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!345 = metadata !{i32 786465, i64 0, i64 17}      ; [ DW_TAG_subrange_type ] [0, 16]
!346 = metadata !{i32 786484, i32 0, metadata !258, metadata !"codtab", metadata !"codtab", metadata !"", metadata !36, i32 742, metadata !342, i32 1, i32 1, [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnes.codtab, null} ; [ DW_TAG_variable ] [codtab] [line 742] [local] [def]
!347 = metadata !{i32 786484, i32 0, metadata !263, metadata !"lentab", metadata !"lentab", metadata !"", metadata !36, i32 816, metadata !342, i32 1, i32 1, [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab, null} ; [ DW_TAG_variable ] [lentab] [line 816] [local] [def]
!348 = metadata !{i32 786484, i32 0, metadata !263, metadata !"codtab", metadata !"codtab", metadata !"", metadata !36, i32 835, metadata !342, i32 1, i32 1, [3 x [4 x [17 x i32]]]* @writeSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab, null} ; [ DW_TAG_variable ] [codtab] [line 835] [local] [def]
!349 = metadata !{i32 786484, i32 0, metadata !268, metadata !"lentab", metadata !"lentab", metadata !"", metadata !36, i32 888, metadata !350, i32 1, i32 1, [15 x [16 x i32]]* @writeSyntaxElement_TotalZeros.lentab, null} ; [ DW_TAG_variable ] [lentab] [line 888] [local] [def]
!350 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 7680, i64 32, i32 0, i32 0, metadata !316, metadata !351, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 7680, align 32, offset 0] [from ]
!351 = metadata !{metadata !352, metadata !327}
!352 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!353 = metadata !{i32 786484, i32 0, metadata !268, metadata !"codtab", metadata !"codtab", metadata !"", metadata !36, i32 907, metadata !350, i32 1, i32 1, [15 x [16 x i32]]* @writeSyntaxElement_TotalZeros.codtab, null} ; [ DW_TAG_variable ] [codtab] [line 907] [local] [def]
!354 = metadata !{i32 786484, i32 0, metadata !273, metadata !"lentab", metadata !"lentab", metadata !"", metadata !36, i32 959, metadata !355, i32 1, i32 1, [3 x [15 x [16 x i32]]]* @writeSyntaxElement_TotalZerosChromaDC.lentab, null} ; [ DW_TAG_variable ] [lentab] [line 959] [local] [def]
!355 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 23040, i64 32, i32 0, i32 0, metadata !316, metadata !356, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 23040, align 32, offset 0] [from ]
!356 = metadata !{metadata !344, metadata !352, metadata !327}
!357 = metadata !{i32 786484, i32 0, metadata !273, metadata !"codtab", metadata !"codtab", metadata !"", metadata !36, i32 991, metadata !355, i32 1, i32 1, [3 x [15 x [16 x i32]]]* @writeSyntaxElement_TotalZerosChromaDC.codtab, null} ; [ DW_TAG_variable ] [codtab] [line 991] [local] [def]
!358 = metadata !{i32 786484, i32 0, metadata !279, metadata !"lentab", metadata !"lentab", metadata !"", metadata !36, i32 1057, metadata !350, i32 1, i32 1, [15 x [16 x i32]]* @writeSyntaxElement_Run.lentab, null} ; [ DW_TAG_variable ] [lentab] [line 1057] [local] [def]
!359 = metadata !{i32 786484, i32 0, metadata !279, metadata !"codtab", metadata !"codtab", metadata !"", metadata !36, i32 1068, metadata !350, i32 1, i32 1, [15 x [16 x i32]]* @writeSyntaxElement_Run.codtab, null} ; [ DW_TAG_variable ] [codtab] [line 1068] [local] [def]
!360 = metadata !{i32 786484, i32 0, null, metadata !"top_pic", metadata !"top_pic", metadata !"", metadata !361, i32 558, metadata !362, i32 0, i32 1, %struct.Picture** @top_pic, null} ; [ DW_TAG_variable ] [top_pic] [line 558] [def]
!361 = metadata !{i32 786473, metadata !4}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/global.h]
!362 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !363} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Picture]
!363 = metadata !{i32 786454, metadata !4, null, metadata !"Picture", i32 484, i64 0, i64 0, i64 0, i32 0, metadata !364} ; [ DW_TAG_typedef ] [Picture] [line 484, size 0, align 0, offset 0] [from ]
!364 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 475, i64 6592, i64 64, i32 0, i32 0, null, metadata !365, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 475, size 6592, align 64, offset 0] [from ]
!365 = metadata !{metadata !366, metadata !367, metadata !368, metadata !466, metadata !467, metadata !469, metadata !470}
!366 = metadata !{i32 786445, metadata !4, metadata !364, metadata !"no_slices", i32 477, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [no_slices] [line 477, size 32, align 32, offset 0] [from int]
!367 = metadata !{i32 786445, metadata !4, metadata !364, metadata !"idr_flag", i32 478, i64 32, i64 32, i64 32, i32 0, metadata !39} ; [ DW_TAG_member ] [idr_flag] [line 478, size 32, align 32, offset 32] [from int]
!368 = metadata !{i32 786445, metadata !4, metadata !364, metadata !"slices", i32 479, i64 6400, i64 64, i64 64, i32 0, metadata !369} ; [ DW_TAG_member ] [slices] [line 479, size 6400, align 64, offset 64] [from ]
!369 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !370, metadata !464, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from ]
!370 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !371} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Slice]
!371 = metadata !{i32 786454, metadata !4, null, metadata !"Slice", i32 471, i64 0, i64 0, i64 0, i32 0, metadata !372} ; [ DW_TAG_typedef ] [Slice] [line 471, size 0, align 0, offset 0] [from ]
!372 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 443, i64 1216, i64 64, i32 0, i32 0, null, metadata !373, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 443, size 1216, align 64, offset 0] [from ]
!373 = metadata !{metadata !374, metadata !375, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !414, metadata !439, metadata !448, metadata !449, metadata !450, metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !461}
!374 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"picture_id", i32 445, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [picture_id] [line 445, size 32, align 32, offset 0] [from int]
!375 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"qp", i32 446, i64 32, i64 32, i64 32, i32 0, metadata !39} ; [ DW_TAG_member ] [qp] [line 446, size 32, align 32, offset 32] [from int]
!376 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"picture_type", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [picture_type] [line 447, size 32, align 32, offset 64] [from int]
!377 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"start_mb_nr", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !39} ; [ DW_TAG_member ] [start_mb_nr] [line 448, size 32, align 32, offset 96] [from int]
!378 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"max_part_nr", i32 449, i64 32, i64 32, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [max_part_nr] [line 449, size 32, align 32, offset 128] [from int]
!379 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"num_mb", i32 450, i64 32, i64 32, i64 160, i32 0, metadata !39} ; [ DW_TAG_member ] [num_mb] [line 450, size 32, align 32, offset 160] [from int]
!380 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"partArr", i32 451, i64 64, i64 64, i64 192, i32 0, metadata !42} ; [ DW_TAG_member ] [partArr] [line 451, size 64, align 64, offset 192] [from ]
!381 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"mot_ctx", i32 452, i64 64, i64 64, i64 256, i32 0, metadata !382} ; [ DW_TAG_member ] [mot_ctx] [line 452, size 64, align 64, offset 256] [from ]
!382 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !383} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from MotionInfoContexts]
!383 = metadata !{i32 786454, metadata !4, null, metadata !"MotionInfoContexts", i32 268, i64 0, i64 0, i64 0, i32 0, metadata !384} ; [ DW_TAG_typedef ] [MotionInfoContexts] [line 268, size 0, align 0, offset 0] [from ]
!384 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 258, i64 12032, i64 64, i32 0, i32 0, null, metadata !385, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 258, size 12032, align 64, offset 0] [from ]
!385 = metadata !{metadata !386, metadata !398, metadata !401, metadata !404, metadata !408, metadata !410, metadata !411}
!386 = metadata !{i32 786445, metadata !4, metadata !384, metadata !"mb_type_contexts", i32 260, i64 4224, i64 64, i64 0, i32 0, metadata !387} ; [ DW_TAG_member ] [mb_type_contexts] [line 260, size 4224, align 64, offset 0] [from ]
!387 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4224, i64 64, i32 0, i32 0, metadata !388, metadata !396, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4224, align 64, offset 0] [from BiContextType]
!388 = metadata !{i32 786454, metadata !4, null, metadata !"BiContextType", i32 238, i64 0, i64 0, i64 0, i32 0, metadata !389} ; [ DW_TAG_typedef ] [BiContextType] [line 238, size 0, align 0, offset 0] [from ]
!389 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 231, i64 128, i64 64, i32 0, i32 0, null, metadata !390, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 231, size 128, align 64, offset 0] [from ]
!390 = metadata !{metadata !391, metadata !393, metadata !394}
!391 = metadata !{i32 786445, metadata !4, metadata !389, metadata !"state", i32 233, i64 16, i64 16, i64 0, i32 0, metadata !392} ; [ DW_TAG_member ] [state] [line 233, size 16, align 16, offset 0] [from unsigned short]
!392 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!393 = metadata !{i32 786445, metadata !4, metadata !389, metadata !"MPS", i32 234, i64 8, i64 8, i64 16, i32 0, metadata !55} ; [ DW_TAG_member ] [MPS] [line 234, size 8, align 8, offset 16] [from unsigned char]
!394 = metadata !{i32 786445, metadata !4, metadata !389, metadata !"count", i32 236, i64 64, i64 64, i64 64, i32 0, metadata !395} ; [ DW_TAG_member ] [count] [line 236, size 64, align 64, offset 64] [from long unsigned int]
!395 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!396 = metadata !{metadata !344, metadata !397}
!397 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!398 = metadata !{i32 786445, metadata !4, metadata !384, metadata !"b8_type_contexts", i32 261, i64 2304, i64 64, i64 4224, i32 0, metadata !399} ; [ DW_TAG_member ] [b8_type_contexts] [line 261, size 2304, align 64, offset 4224] [from ]
!399 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 64, i32 0, i32 0, metadata !388, metadata !400, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2304, align 64, offset 0] [from BiContextType]
!400 = metadata !{metadata !318, metadata !339}
!401 = metadata !{i32 786445, metadata !4, metadata !384, metadata !"mv_res_contexts", i32 262, i64 2560, i64 64, i64 6528, i32 0, metadata !402} ; [ DW_TAG_member ] [mv_res_contexts] [line 262, size 2560, align 64, offset 6528] [from ]
!402 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2560, i64 64, i32 0, i32 0, metadata !388, metadata !403, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2560, align 64, offset 0] [from BiContextType]
!403 = metadata !{metadata !318, metadata !331}
!404 = metadata !{i32 786445, metadata !4, metadata !384, metadata !"ref_no_contexts", i32 263, i64 1536, i64 64, i64 9088, i32 0, metadata !405} ; [ DW_TAG_member ] [ref_no_contexts] [line 263, size 1536, align 64, offset 9088] [from ]
!405 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !388, metadata !406, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!406 = metadata !{metadata !318, metadata !407}
!407 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!408 = metadata !{i32 786445, metadata !4, metadata !384, metadata !"delta_qp_contexts", i32 264, i64 512, i64 64, i64 10624, i32 0, metadata !409} ; [ DW_TAG_member ] [delta_qp_contexts] [line 264, size 512, align 64, offset 10624] [from ]
!409 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 64, i32 0, i32 0, metadata !388, metadata !321, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 64, offset 0] [from BiContextType]
!410 = metadata !{i32 786445, metadata !4, metadata !384, metadata !"mb_aff_contexts", i32 265, i64 512, i64 64, i64 11136, i32 0, metadata !409} ; [ DW_TAG_member ] [mb_aff_contexts] [line 265, size 512, align 64, offset 11136] [from ]
!411 = metadata !{i32 786445, metadata !4, metadata !384, metadata !"transform_size_contexts", i32 266, i64 384, i64 64, i64 11648, i32 0, metadata !412} ; [ DW_TAG_member ] [transform_size_contexts] [line 266, size 384, align 64, offset 11648] [from ]
!412 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 64, i32 0, i32 0, metadata !388, metadata !413, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 64, offset 0] [from BiContextType]
!413 = metadata !{metadata !344}
!414 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"tex_ctx", i32 453, i64 64, i64 64, i64 320, i32 0, metadata !415} ; [ DW_TAG_member ] [tex_ctx] [line 453, size 64, align 64, offset 320] [from ]
!415 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !416} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from TextureInfoContexts]
!416 = metadata !{i32 786454, metadata !4, null, metadata !"TextureInfoContexts", i32 293, i64 0, i64 0, i64 0, i32 0, metadata !417} ; [ DW_TAG_typedef ] [TextureInfoContexts] [line 293, size 0, align 0, offset 0] [from ]
!417 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 281, i64 97024, i64 64, i32 0, i32 0, null, metadata !418, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 281, size 97024, align 64, offset 0] [from ]
!418 = metadata !{metadata !419, metadata !422, metadata !423, metadata !426, metadata !429, metadata !432, metadata !433, metadata !436, metadata !437, metadata !438}
!419 = metadata !{i32 786445, metadata !4, metadata !417, metadata !"ipr_contexts", i32 283, i64 256, i64 64, i64 0, i32 0, metadata !420} ; [ DW_TAG_member ] [ipr_contexts] [line 283, size 256, align 64, offset 0] [from ]
!420 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 64, i32 0, i32 0, metadata !388, metadata !421, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 64, offset 0] [from BiContextType]
!421 = metadata !{metadata !318}
!422 = metadata !{i32 786445, metadata !4, metadata !417, metadata !"cipr_contexts", i32 284, i64 512, i64 64, i64 256, i32 0, metadata !409} ; [ DW_TAG_member ] [cipr_contexts] [line 284, size 512, align 64, offset 256] [from ]
!423 = metadata !{i32 786445, metadata !4, metadata !417, metadata !"cbp_contexts", i32 285, i64 1536, i64 64, i64 768, i32 0, metadata !424} ; [ DW_TAG_member ] [cbp_contexts] [line 285, size 1536, align 64, offset 768] [from ]
!424 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1536, i64 64, i32 0, i32 0, metadata !388, metadata !425, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1536, align 64, offset 0] [from BiContextType]
!425 = metadata !{metadata !344, metadata !322}
!426 = metadata !{i32 786445, metadata !4, metadata !417, metadata !"bcbp_contexts", i32 286, i64 5120, i64 64, i64 2304, i32 0, metadata !427} ; [ DW_TAG_member ] [bcbp_contexts] [line 286, size 5120, align 64, offset 2304] [from ]
!427 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 5120, i64 64, i32 0, i32 0, metadata !388, metadata !428, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 5120, align 64, offset 0] [from BiContextType]
!428 = metadata !{metadata !331, metadata !322}
!429 = metadata !{i32 786445, metadata !4, metadata !417, metadata !"map_contexts", i32 287, i64 19200, i64 64, i64 7424, i32 0, metadata !430} ; [ DW_TAG_member ] [map_contexts] [line 287, size 19200, align 64, offset 7424] [from ]
!430 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 19200, i64 64, i32 0, i32 0, metadata !388, metadata !431, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 19200, align 64, offset 0] [from BiContextType]
!431 = metadata !{metadata !331, metadata !352}
!432 = metadata !{i32 786445, metadata !4, metadata !417, metadata !"last_contexts", i32 288, i64 19200, i64 64, i64 26624, i32 0, metadata !430} ; [ DW_TAG_member ] [last_contexts] [line 288, size 19200, align 64, offset 26624] [from ]
!433 = metadata !{i32 786445, metadata !4, metadata !417, metadata !"one_contexts", i32 289, i64 6400, i64 64, i64 45824, i32 0, metadata !434} ; [ DW_TAG_member ] [one_contexts] [line 289, size 6400, align 64, offset 45824] [from ]
!434 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400, i64 64, i32 0, i32 0, metadata !388, metadata !435, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 6400, align 64, offset 0] [from BiContextType]
!435 = metadata !{metadata !331, metadata !340}
!436 = metadata !{i32 786445, metadata !4, metadata !417, metadata !"abs_contexts", i32 290, i64 6400, i64 64, i64 52224, i32 0, metadata !434} ; [ DW_TAG_member ] [abs_contexts] [line 290, size 6400, align 64, offset 52224] [from ]
!437 = metadata !{i32 786445, metadata !4, metadata !417, metadata !"fld_map_contexts", i32 291, i64 19200, i64 64, i64 58624, i32 0, metadata !430} ; [ DW_TAG_member ] [fld_map_contexts] [line 291, size 19200, align 64, offset 58624] [from ]
!438 = metadata !{i32 786445, metadata !4, metadata !417, metadata !"fld_last_contexts", i32 292, i64 19200, i64 64, i64 77824, i32 0, metadata !430} ; [ DW_TAG_member ] [fld_last_contexts] [line 292, size 19200, align 64, offset 77824] [from ]
!439 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"rmpni_buffer", i32 456, i64 64, i64 64, i64 384, i32 0, metadata !440} ; [ DW_TAG_member ] [rmpni_buffer] [line 456, size 64, align 64, offset 384] [from ]
!440 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !441} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_t]
!441 = metadata !{i32 786454, metadata !4, null, metadata !"RMPNIbuffer_t", i32 313, i64 0, i64 0, i64 0, i32 0, metadata !442} ; [ DW_TAG_typedef ] [RMPNIbuffer_t] [line 313, size 0, align 0, offset 0] [from RMPNIbuffer_s]
!442 = metadata !{i32 786451, metadata !4, null, metadata !"RMPNIbuffer_s", i32 308, i64 128, i64 64, i32 0, i32 0, null, metadata !443, i32 0, null, null} ; [ DW_TAG_structure_type ] [RMPNIbuffer_s] [line 308, size 128, align 64, offset 0] [from ]
!443 = metadata !{metadata !444, metadata !445, metadata !446}
!444 = metadata !{i32 786445, metadata !4, metadata !442, metadata !"RMPNI", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [RMPNI] [line 310, size 32, align 32, offset 0] [from int]
!445 = metadata !{i32 786445, metadata !4, metadata !442, metadata !"Data", i32 311, i64 32, i64 32, i64 32, i32 0, metadata !39} ; [ DW_TAG_member ] [Data] [line 311, size 32, align 32, offset 32] [from int]
!446 = metadata !{i32 786445, metadata !4, metadata !442, metadata !"Next", i32 312, i64 64, i64 64, i64 64, i32 0, metadata !447} ; [ DW_TAG_member ] [Next] [line 312, size 64, align 64, offset 64] [from ]
!447 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !442} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RMPNIbuffer_s]
!448 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"ref_pic_list_reordering_flag_l0", i32 458, i64 32, i64 32, i64 448, i32 0, metadata !39} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l0] [line 458, size 32, align 32, offset 448] [from int]
!449 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"remapping_of_pic_nums_idc_l0", i32 459, i64 64, i64 64, i64 512, i32 0, metadata !77} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l0] [line 459, size 64, align 64, offset 512] [from ]
!450 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"abs_diff_pic_num_minus1_l0", i32 460, i64 64, i64 64, i64 576, i32 0, metadata !77} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l0] [line 460, size 64, align 64, offset 576] [from ]
!451 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"long_term_pic_idx_l0", i32 461, i64 64, i64 64, i64 640, i32 0, metadata !77} ; [ DW_TAG_member ] [long_term_pic_idx_l0] [line 461, size 64, align 64, offset 640] [from ]
!452 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"ref_pic_list_reordering_flag_l1", i32 462, i64 32, i64 32, i64 704, i32 0, metadata !39} ; [ DW_TAG_member ] [ref_pic_list_reordering_flag_l1] [line 462, size 32, align 32, offset 704] [from int]
!453 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"remapping_of_pic_nums_idc_l1", i32 463, i64 64, i64 64, i64 768, i32 0, metadata !77} ; [ DW_TAG_member ] [remapping_of_pic_nums_idc_l1] [line 463, size 64, align 64, offset 768] [from ]
!454 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"abs_diff_pic_num_minus1_l1", i32 464, i64 64, i64 64, i64 832, i32 0, metadata !77} ; [ DW_TAG_member ] [abs_diff_pic_num_minus1_l1] [line 464, size 64, align 64, offset 832] [from ]
!455 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"long_term_pic_idx_l1", i32 465, i64 64, i64 64, i64 896, i32 0, metadata !77} ; [ DW_TAG_member ] [long_term_pic_idx_l1] [line 465, size 64, align 64, offset 896] [from ]
!456 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"slice_too_big", i32 467, i64 64, i64 64, i64 960, i32 0, metadata !457} ; [ DW_TAG_member ] [slice_too_big] [line 467, size 64, align 64, offset 960] [from ]
!457 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !458} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!458 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !459, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!459 = metadata !{metadata !460, metadata !39}
!460 = metadata !{i32 786454, metadata !4, null, metadata !"Boolean", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [Boolean] [line 45, size 0, align 0, offset 0] [from ]
!461 = metadata !{i32 786445, metadata !4, metadata !372, metadata !"field_ctx", i32 469, i64 192, i64 32, i64 1024, i32 0, metadata !462} ; [ DW_TAG_member ] [field_ctx] [line 469, size 192, align 32, offset 1024] [from ]
!462 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !39, metadata !463, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!463 = metadata !{metadata !344, metadata !318}
!464 = metadata !{metadata !465}
!465 = metadata !{i32 786465, i64 0, i64 100}     ; [ DW_TAG_subrange_type ] [0, 99]
!466 = metadata !{i32 786445, metadata !4, metadata !364, metadata !"bits_per_picture", i32 480, i64 32, i64 32, i64 6464, i32 0, metadata !39} ; [ DW_TAG_member ] [bits_per_picture] [line 480, size 32, align 32, offset 6464] [from int]
!467 = metadata !{i32 786445, metadata !4, metadata !364, metadata !"distortion_y", i32 481, i64 32, i64 32, i64 6496, i32 0, metadata !468} ; [ DW_TAG_member ] [distortion_y] [line 481, size 32, align 32, offset 6496] [from float]
!468 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!469 = metadata !{i32 786445, metadata !4, metadata !364, metadata !"distortion_u", i32 482, i64 32, i64 32, i64 6528, i32 0, metadata !468} ; [ DW_TAG_member ] [distortion_u] [line 482, size 32, align 32, offset 6528] [from float]
!470 = metadata !{i32 786445, metadata !4, metadata !364, metadata !"distortion_v", i32 483, i64 32, i64 32, i64 6560, i32 0, metadata !468} ; [ DW_TAG_member ] [distortion_v] [line 483, size 32, align 32, offset 6560] [from float]
!471 = metadata !{i32 786484, i32 0, null, metadata !"bottom_pic", metadata !"bottom_pic", metadata !"", metadata !361, i32 559, metadata !362, i32 0, i32 1, %struct.Picture** @bottom_pic, null} ; [ DW_TAG_variable ] [bottom_pic] [line 559] [def]
!472 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic", metadata !"frame_pic", metadata !"", metadata !361, i32 560, metadata !362, i32 0, i32 1, %struct.Picture** @frame_pic, null} ; [ DW_TAG_variable ] [frame_pic] [line 560] [def]
!473 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic2", metadata !"frame_pic2", metadata !"", metadata !361, i32 561, metadata !362, i32 0, i32 1, %struct.Picture** @frame_pic2, null} ; [ DW_TAG_variable ] [frame_pic2] [line 561] [def]
!474 = metadata !{i32 786484, i32 0, null, metadata !"frame_pic3", metadata !"frame_pic3", metadata !"", metadata !361, i32 562, metadata !362, i32 0, i32 1, %struct.Picture** @frame_pic3, null} ; [ DW_TAG_variable ] [frame_pic3] [line 562] [def]
!475 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org", metadata !"imgY_org", metadata !"", metadata !361, i32 565, metadata !476, i32 0, i32 1, i16*** @imgY_org, null} ; [ DW_TAG_variable ] [imgY_org] [line 565] [def]
!476 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !477} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!477 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !392} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned short]
!478 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org", metadata !"imgUV_org", metadata !"", metadata !361, i32 566, metadata !479, i32 0, i32 1, i16**** @imgUV_org, null} ; [ DW_TAG_variable ] [imgUV_org] [line 566] [def]
!479 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !476} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!480 = metadata !{i32 786484, i32 0, null, metadata !"img4Y_tmp", metadata !"img4Y_tmp", metadata !"", metadata !361, i32 567, metadata !481, i32 0, i32 1, i32*** @img4Y_tmp, null} ; [ DW_TAG_variable ] [img4Y_tmp] [line 567] [def]
!481 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!482 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_frame_num_minus4", metadata !"log2_max_frame_num_minus4", metadata !"", metadata !361, i32 569, metadata !70, i32 0, i32 1, i32* @log2_max_frame_num_minus4, null} ; [ DW_TAG_variable ] [log2_max_frame_num_minus4] [line 569] [def]
!483 = metadata !{i32 786484, i32 0, null, metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"log2_max_pic_order_cnt_lsb_minus4", metadata !"", metadata !361, i32 570, metadata !70, i32 0, i32 1, i32* @log2_max_pic_order_cnt_lsb_minus4, null} ; [ DW_TAG_variable ] [log2_max_pic_order_cnt_lsb_minus4] [line 570] [def]
!484 = metadata !{i32 786484, i32 0, null, metadata !"me_tot_time", metadata !"me_tot_time", metadata !"", metadata !361, i32 572, metadata !39, i32 0, i32 1, i32* @me_tot_time, null} ; [ DW_TAG_variable ] [me_tot_time] [line 572] [def]
!485 = metadata !{i32 786484, i32 0, null, metadata !"me_time", metadata !"me_time", metadata !"", metadata !361, i32 572, metadata !39, i32 0, i32 1, i32* @me_time, null} ; [ DW_TAG_variable ] [me_time] [line 572] [def]
!486 = metadata !{i32 786484, i32 0, null, metadata !"active_pps", metadata !"active_pps", metadata !"", metadata !361, i32 573, metadata !487, i32 0, i32 1, %struct.pic_parameter_set_rbsp_t** @active_pps, null} ; [ DW_TAG_variable ] [active_pps] [line 573] [def]
!487 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !488} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pic_parameter_set_rbsp_t]
!488 = metadata !{i32 786454, metadata !4, null, metadata !"pic_parameter_set_rbsp_t", i32 145, i64 0, i64 0, i64 0, i32 0, metadata !489} ; [ DW_TAG_typedef ] [pic_parameter_set_rbsp_t] [line 145, size 0, align 0, offset 0] [from ]
!489 = metadata !{i32 786451, metadata !29, null, metadata !"", i32 103, i64 1920, i64 64, i32 0, i32 0, null, metadata !490, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 103, size 1920, align 64, offset 0] [from ]
!490 = metadata !{metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !499, metadata !500, metadata !501, metadata !502, metadata !504, metadata !505, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510, metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522}
!491 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"Valid", i32 105, i64 32, i64 32, i64 0, i32 0, metadata !460} ; [ DW_TAG_member ] [Valid] [line 105, size 32, align 32, offset 0] [from Boolean]
!492 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"pic_parameter_set_id", i32 106, i64 32, i64 32, i64 32, i32 0, metadata !70} ; [ DW_TAG_member ] [pic_parameter_set_id] [line 106, size 32, align 32, offset 32] [from unsigned int]
!493 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"seq_parameter_set_id", i32 107, i64 32, i64 32, i64 64, i32 0, metadata !70} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 107, size 32, align 32, offset 64] [from unsigned int]
!494 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"entropy_coding_mode_flag", i32 108, i64 32, i64 32, i64 96, i32 0, metadata !460} ; [ DW_TAG_member ] [entropy_coding_mode_flag] [line 108, size 32, align 32, offset 96] [from Boolean]
!495 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"transform_8x8_mode_flag", i32 110, i64 32, i64 32, i64 128, i32 0, metadata !460} ; [ DW_TAG_member ] [transform_8x8_mode_flag] [line 110, size 32, align 32, offset 128] [from Boolean]
!496 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"pic_scaling_matrix_present_flag", i32 111, i64 32, i64 32, i64 160, i32 0, metadata !460} ; [ DW_TAG_member ] [pic_scaling_matrix_present_flag] [line 111, size 32, align 32, offset 160] [from Boolean]
!497 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"pic_scaling_list_present_flag", i32 112, i64 256, i64 32, i64 192, i32 0, metadata !498} ; [ DW_TAG_member ] [pic_scaling_list_present_flag] [line 112, size 256, align 32, offset 192] [from ]
!498 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !39, metadata !334, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from int]
!499 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"pic_order_present_flag", i32 115, i64 32, i64 32, i64 448, i32 0, metadata !460} ; [ DW_TAG_member ] [pic_order_present_flag] [line 115, size 32, align 32, offset 448] [from Boolean]
!500 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"num_slice_groups_minus1", i32 116, i64 32, i64 32, i64 480, i32 0, metadata !70} ; [ DW_TAG_member ] [num_slice_groups_minus1] [line 116, size 32, align 32, offset 480] [from unsigned int]
!501 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"slice_group_map_type", i32 117, i64 32, i64 32, i64 512, i32 0, metadata !70} ; [ DW_TAG_member ] [slice_group_map_type] [line 117, size 32, align 32, offset 512] [from unsigned int]
!502 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"run_length_minus1", i32 119, i64 256, i64 32, i64 544, i32 0, metadata !503} ; [ DW_TAG_member ] [run_length_minus1] [line 119, size 256, align 32, offset 544] [from ]
!503 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !70, metadata !334, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from unsigned int]
!504 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"top_left", i32 121, i64 256, i64 32, i64 800, i32 0, metadata !503} ; [ DW_TAG_member ] [top_left] [line 121, size 256, align 32, offset 800] [from ]
!505 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"bottom_right", i32 122, i64 256, i64 32, i64 1056, i32 0, metadata !503} ; [ DW_TAG_member ] [bottom_right] [line 122, size 256, align 32, offset 1056] [from ]
!506 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"slice_group_change_direction_flag", i32 124, i64 32, i64 32, i64 1312, i32 0, metadata !460} ; [ DW_TAG_member ] [slice_group_change_direction_flag] [line 124, size 32, align 32, offset 1312] [from Boolean]
!507 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"slice_group_change_rate_minus1", i32 125, i64 32, i64 32, i64 1344, i32 0, metadata !70} ; [ DW_TAG_member ] [slice_group_change_rate_minus1] [line 125, size 32, align 32, offset 1344] [from unsigned int]
!508 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"pic_size_in_map_units_minus1", i32 127, i64 32, i64 32, i64 1376, i32 0, metadata !70} ; [ DW_TAG_member ] [pic_size_in_map_units_minus1] [line 127, size 32, align 32, offset 1376] [from unsigned int]
!509 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"slice_group_id", i32 128, i64 64, i64 64, i64 1408, i32 0, metadata !63} ; [ DW_TAG_member ] [slice_group_id] [line 128, size 64, align 64, offset 1408] [from ]
!510 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"num_ref_idx_l0_active_minus1", i32 130, i64 32, i64 32, i64 1472, i32 0, metadata !39} ; [ DW_TAG_member ] [num_ref_idx_l0_active_minus1] [line 130, size 32, align 32, offset 1472] [from int]
!511 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"num_ref_idx_l1_active_minus1", i32 131, i64 32, i64 32, i64 1504, i32 0, metadata !39} ; [ DW_TAG_member ] [num_ref_idx_l1_active_minus1] [line 131, size 32, align 32, offset 1504] [from int]
!512 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"weighted_pred_flag", i32 132, i64 32, i64 32, i64 1536, i32 0, metadata !460} ; [ DW_TAG_member ] [weighted_pred_flag] [line 132, size 32, align 32, offset 1536] [from Boolean]
!513 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"weighted_bipred_idc", i32 133, i64 32, i64 32, i64 1568, i32 0, metadata !70} ; [ DW_TAG_member ] [weighted_bipred_idc] [line 133, size 32, align 32, offset 1568] [from unsigned int]
!514 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"pic_init_qp_minus26", i32 134, i64 32, i64 32, i64 1600, i32 0, metadata !39} ; [ DW_TAG_member ] [pic_init_qp_minus26] [line 134, size 32, align 32, offset 1600] [from int]
!515 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"pic_init_qs_minus26", i32 135, i64 32, i64 32, i64 1632, i32 0, metadata !39} ; [ DW_TAG_member ] [pic_init_qs_minus26] [line 135, size 32, align 32, offset 1632] [from int]
!516 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"chroma_qp_index_offset", i32 136, i64 32, i64 32, i64 1664, i32 0, metadata !39} ; [ DW_TAG_member ] [chroma_qp_index_offset] [line 136, size 32, align 32, offset 1664] [from int]
!517 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"cb_qp_index_offset", i32 138, i64 32, i64 32, i64 1696, i32 0, metadata !39} ; [ DW_TAG_member ] [cb_qp_index_offset] [line 138, size 32, align 32, offset 1696] [from int]
!518 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"cr_qp_index_offset", i32 139, i64 32, i64 32, i64 1728, i32 0, metadata !39} ; [ DW_TAG_member ] [cr_qp_index_offset] [line 139, size 32, align 32, offset 1728] [from int]
!519 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"deblocking_filter_control_present_flag", i32 141, i64 32, i64 32, i64 1760, i32 0, metadata !460} ; [ DW_TAG_member ] [deblocking_filter_control_present_flag] [line 141, size 32, align 32, offset 1760] [from Boolean]
!520 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"constrained_intra_pred_flag", i32 142, i64 32, i64 32, i64 1792, i32 0, metadata !460} ; [ DW_TAG_member ] [constrained_intra_pred_flag] [line 142, size 32, align 32, offset 1792] [from Boolean]
!521 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"redundant_pic_cnt_present_flag", i32 143, i64 32, i64 32, i64 1824, i32 0, metadata !460} ; [ DW_TAG_member ] [redundant_pic_cnt_present_flag] [line 143, size 32, align 32, offset 1824] [from Boolean]
!522 = metadata !{i32 786445, metadata !29, metadata !489, metadata !"vui_pic_parameters_flag", i32 144, i64 32, i64 32, i64 1856, i32 0, metadata !460} ; [ DW_TAG_member ] [vui_pic_parameters_flag] [line 144, size 32, align 32, offset 1856] [from Boolean]
!523 = metadata !{i32 786484, i32 0, null, metadata !"active_sps", metadata !"active_sps", metadata !"", metadata !361, i32 574, metadata !524, i32 0, i32 1, %struct.seq_parameter_set_rbsp_t** @active_sps, null} ; [ DW_TAG_variable ] [active_sps] [line 574] [def]
!524 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !525} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from seq_parameter_set_rbsp_t]
!525 = metadata !{i32 786454, metadata !4, null, metadata !"seq_parameter_set_rbsp_t", i32 193, i64 0, i64 0, i64 0, i32 0, metadata !526} ; [ DW_TAG_typedef ] [seq_parameter_set_rbsp_t] [line 193, size 0, align 0, offset 0] [from ]
!526 = metadata !{i32 786451, metadata !29, null, metadata !"", i32 149, i64 17056, i64 32, i32 0, i32 0, null, metadata !527, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 149, size 17056, align 32, offset 0] [from ]
!527 = metadata !{metadata !528, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !552, metadata !553, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565}
!528 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"Valid", i32 151, i64 32, i64 32, i64 0, i32 0, metadata !460} ; [ DW_TAG_member ] [Valid] [line 151, size 32, align 32, offset 0] [from Boolean]
!529 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"profile_idc", i32 153, i64 32, i64 32, i64 32, i32 0, metadata !70} ; [ DW_TAG_member ] [profile_idc] [line 153, size 32, align 32, offset 32] [from unsigned int]
!530 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"constrained_set0_flag", i32 154, i64 32, i64 32, i64 64, i32 0, metadata !460} ; [ DW_TAG_member ] [constrained_set0_flag] [line 154, size 32, align 32, offset 64] [from Boolean]
!531 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"constrained_set1_flag", i32 155, i64 32, i64 32, i64 96, i32 0, metadata !460} ; [ DW_TAG_member ] [constrained_set1_flag] [line 155, size 32, align 32, offset 96] [from Boolean]
!532 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"constrained_set2_flag", i32 156, i64 32, i64 32, i64 128, i32 0, metadata !460} ; [ DW_TAG_member ] [constrained_set2_flag] [line 156, size 32, align 32, offset 128] [from Boolean]
!533 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"constrained_set3_flag", i32 157, i64 32, i64 32, i64 160, i32 0, metadata !460} ; [ DW_TAG_member ] [constrained_set3_flag] [line 157, size 32, align 32, offset 160] [from Boolean]
!534 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"level_idc", i32 158, i64 32, i64 32, i64 192, i32 0, metadata !70} ; [ DW_TAG_member ] [level_idc] [line 158, size 32, align 32, offset 192] [from unsigned int]
!535 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"seq_parameter_set_id", i32 159, i64 32, i64 32, i64 224, i32 0, metadata !70} ; [ DW_TAG_member ] [seq_parameter_set_id] [line 159, size 32, align 32, offset 224] [from unsigned int]
!536 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"chroma_format_idc", i32 160, i64 32, i64 32, i64 256, i32 0, metadata !70} ; [ DW_TAG_member ] [chroma_format_idc] [line 160, size 32, align 32, offset 256] [from unsigned int]
!537 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"seq_scaling_matrix_present_flag", i32 162, i64 32, i64 32, i64 288, i32 0, metadata !460} ; [ DW_TAG_member ] [seq_scaling_matrix_present_flag] [line 162, size 32, align 32, offset 288] [from Boolean]
!538 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"seq_scaling_list_present_flag", i32 163, i64 256, i64 32, i64 320, i32 0, metadata !498} ; [ DW_TAG_member ] [seq_scaling_list_present_flag] [line 163, size 256, align 32, offset 320] [from ]
!539 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"bit_depth_luma_minus8", i32 165, i64 32, i64 32, i64 576, i32 0, metadata !70} ; [ DW_TAG_member ] [bit_depth_luma_minus8] [line 165, size 32, align 32, offset 576] [from unsigned int]
!540 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"bit_depth_chroma_minus8", i32 166, i64 32, i64 32, i64 608, i32 0, metadata !70} ; [ DW_TAG_member ] [bit_depth_chroma_minus8] [line 166, size 32, align 32, offset 608] [from unsigned int]
!541 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"log2_max_frame_num_minus4", i32 167, i64 32, i64 32, i64 640, i32 0, metadata !70} ; [ DW_TAG_member ] [log2_max_frame_num_minus4] [line 167, size 32, align 32, offset 640] [from unsigned int]
!542 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"pic_order_cnt_type", i32 168, i64 32, i64 32, i64 672, i32 0, metadata !70} ; [ DW_TAG_member ] [pic_order_cnt_type] [line 168, size 32, align 32, offset 672] [from unsigned int]
!543 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"log2_max_pic_order_cnt_lsb_minus4", i32 170, i64 32, i64 32, i64 704, i32 0, metadata !70} ; [ DW_TAG_member ] [log2_max_pic_order_cnt_lsb_minus4] [line 170, size 32, align 32, offset 704] [from unsigned int]
!544 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"delta_pic_order_always_zero_flag", i32 172, i64 32, i64 32, i64 736, i32 0, metadata !460} ; [ DW_TAG_member ] [delta_pic_order_always_zero_flag] [line 172, size 32, align 32, offset 736] [from Boolean]
!545 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"offset_for_non_ref_pic", i32 173, i64 32, i64 32, i64 768, i32 0, metadata !39} ; [ DW_TAG_member ] [offset_for_non_ref_pic] [line 173, size 32, align 32, offset 768] [from int]
!546 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"offset_for_top_to_bottom_field", i32 174, i64 32, i64 32, i64 800, i32 0, metadata !39} ; [ DW_TAG_member ] [offset_for_top_to_bottom_field] [line 174, size 32, align 32, offset 800] [from int]
!547 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"num_ref_frames_in_pic_order_cnt_cycle", i32 175, i64 32, i64 32, i64 832, i32 0, metadata !70} ; [ DW_TAG_member ] [num_ref_frames_in_pic_order_cnt_cycle] [line 175, size 32, align 32, offset 832] [from unsigned int]
!548 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"offset_for_ref_frame", i32 177, i64 8192, i64 32, i64 864, i32 0, metadata !549} ; [ DW_TAG_member ] [offset_for_ref_frame] [line 177, size 8192, align 32, offset 864] [from ]
!549 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !39, metadata !550, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!550 = metadata !{metadata !551}
!551 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!552 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"num_ref_frames", i32 178, i64 32, i64 32, i64 9056, i32 0, metadata !70} ; [ DW_TAG_member ] [num_ref_frames] [line 178, size 32, align 32, offset 9056] [from unsigned int]
!553 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"gaps_in_frame_num_value_allowed_flag", i32 179, i64 32, i64 32, i64 9088, i32 0, metadata !460} ; [ DW_TAG_member ] [gaps_in_frame_num_value_allowed_flag] [line 179, size 32, align 32, offset 9088] [from Boolean]
!554 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"pic_width_in_mbs_minus1", i32 180, i64 32, i64 32, i64 9120, i32 0, metadata !70} ; [ DW_TAG_member ] [pic_width_in_mbs_minus1] [line 180, size 32, align 32, offset 9120] [from unsigned int]
!555 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"pic_height_in_map_units_minus1", i32 181, i64 32, i64 32, i64 9152, i32 0, metadata !70} ; [ DW_TAG_member ] [pic_height_in_map_units_minus1] [line 181, size 32, align 32, offset 9152] [from unsigned int]
!556 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"frame_mbs_only_flag", i32 182, i64 32, i64 32, i64 9184, i32 0, metadata !460} ; [ DW_TAG_member ] [frame_mbs_only_flag] [line 182, size 32, align 32, offset 9184] [from Boolean]
!557 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"mb_adaptive_frame_field_flag", i32 184, i64 32, i64 32, i64 9216, i32 0, metadata !460} ; [ DW_TAG_member ] [mb_adaptive_frame_field_flag] [line 184, size 32, align 32, offset 9216] [from Boolean]
!558 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"direct_8x8_inference_flag", i32 185, i64 32, i64 32, i64 9248, i32 0, metadata !460} ; [ DW_TAG_member ] [direct_8x8_inference_flag] [line 185, size 32, align 32, offset 9248] [from Boolean]
!559 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"frame_cropping_flag", i32 186, i64 32, i64 32, i64 9280, i32 0, metadata !460} ; [ DW_TAG_member ] [frame_cropping_flag] [line 186, size 32, align 32, offset 9280] [from Boolean]
!560 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"frame_cropping_rect_left_offset", i32 187, i64 32, i64 32, i64 9312, i32 0, metadata !70} ; [ DW_TAG_member ] [frame_cropping_rect_left_offset] [line 187, size 32, align 32, offset 9312] [from unsigned int]
!561 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"frame_cropping_rect_right_offset", i32 188, i64 32, i64 32, i64 9344, i32 0, metadata !70} ; [ DW_TAG_member ] [frame_cropping_rect_right_offset] [line 188, size 32, align 32, offset 9344] [from unsigned int]
!562 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"frame_cropping_rect_top_offset", i32 189, i64 32, i64 32, i64 9376, i32 0, metadata !70} ; [ DW_TAG_member ] [frame_cropping_rect_top_offset] [line 189, size 32, align 32, offset 9376] [from unsigned int]
!563 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"frame_cropping_rect_bottom_offset", i32 190, i64 32, i64 32, i64 9408, i32 0, metadata !70} ; [ DW_TAG_member ] [frame_cropping_rect_bottom_offset] [line 190, size 32, align 32, offset 9408] [from unsigned int]
!564 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"vui_parameters_present_flag", i32 191, i64 32, i64 32, i64 9440, i32 0, metadata !460} ; [ DW_TAG_member ] [vui_parameters_present_flag] [line 191, size 32, align 32, offset 9440] [from Boolean]
!565 = metadata !{i32 786445, metadata !29, metadata !526, metadata !"vui_seq_parameters", i32 192, i64 7584, i64 32, i64 9472, i32 0, metadata !566} ; [ DW_TAG_member ] [vui_seq_parameters] [line 192, size 7584, align 32, offset 9472] [from vui_seq_parameters_t]
!566 = metadata !{i32 786454, metadata !29, null, metadata !"vui_seq_parameters_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !567} ; [ DW_TAG_typedef ] [vui_seq_parameters_t] [line 99, size 0, align 0, offset 0] [from ]
!567 = metadata !{i32 786451, metadata !29, null, metadata !"", i32 63, i64 7584, i64 32, i32 0, i32 0, null, metadata !568, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 63, size 7584, align 32, offset 0] [from ]
!568 = metadata !{metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !607, metadata !608, metadata !609, metadata !610, metadata !611, metadata !612, metadata !613, metadata !614, metadata !615, metadata !616, metadata !617}
!569 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"aspect_ratio_info_present_flag", i32 65, i64 32, i64 32, i64 0, i32 0, metadata !460} ; [ DW_TAG_member ] [aspect_ratio_info_present_flag] [line 65, size 32, align 32, offset 0] [from Boolean]
!570 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"aspect_ratio_idc", i32 66, i64 32, i64 32, i64 32, i32 0, metadata !70} ; [ DW_TAG_member ] [aspect_ratio_idc] [line 66, size 32, align 32, offset 32] [from unsigned int]
!571 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"sar_width", i32 67, i64 32, i64 32, i64 64, i32 0, metadata !70} ; [ DW_TAG_member ] [sar_width] [line 67, size 32, align 32, offset 64] [from unsigned int]
!572 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"sar_height", i32 68, i64 32, i64 32, i64 96, i32 0, metadata !70} ; [ DW_TAG_member ] [sar_height] [line 68, size 32, align 32, offset 96] [from unsigned int]
!573 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"overscan_info_present_flag", i32 69, i64 32, i64 32, i64 128, i32 0, metadata !460} ; [ DW_TAG_member ] [overscan_info_present_flag] [line 69, size 32, align 32, offset 128] [from Boolean]
!574 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"overscan_appropriate_flag", i32 70, i64 32, i64 32, i64 160, i32 0, metadata !460} ; [ DW_TAG_member ] [overscan_appropriate_flag] [line 70, size 32, align 32, offset 160] [from Boolean]
!575 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"video_signal_type_present_flag", i32 71, i64 32, i64 32, i64 192, i32 0, metadata !460} ; [ DW_TAG_member ] [video_signal_type_present_flag] [line 71, size 32, align 32, offset 192] [from Boolean]
!576 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"video_format", i32 72, i64 32, i64 32, i64 224, i32 0, metadata !70} ; [ DW_TAG_member ] [video_format] [line 72, size 32, align 32, offset 224] [from unsigned int]
!577 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"video_full_range_flag", i32 73, i64 32, i64 32, i64 256, i32 0, metadata !460} ; [ DW_TAG_member ] [video_full_range_flag] [line 73, size 32, align 32, offset 256] [from Boolean]
!578 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"colour_description_present_flag", i32 74, i64 32, i64 32, i64 288, i32 0, metadata !460} ; [ DW_TAG_member ] [colour_description_present_flag] [line 74, size 32, align 32, offset 288] [from Boolean]
!579 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"colour_primaries", i32 75, i64 32, i64 32, i64 320, i32 0, metadata !70} ; [ DW_TAG_member ] [colour_primaries] [line 75, size 32, align 32, offset 320] [from unsigned int]
!580 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"transfer_characteristics", i32 76, i64 32, i64 32, i64 352, i32 0, metadata !70} ; [ DW_TAG_member ] [transfer_characteristics] [line 76, size 32, align 32, offset 352] [from unsigned int]
!581 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"matrix_coefficients", i32 77, i64 32, i64 32, i64 384, i32 0, metadata !70} ; [ DW_TAG_member ] [matrix_coefficients] [line 77, size 32, align 32, offset 384] [from unsigned int]
!582 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"chroma_location_info_present_flag", i32 78, i64 32, i64 32, i64 416, i32 0, metadata !460} ; [ DW_TAG_member ] [chroma_location_info_present_flag] [line 78, size 32, align 32, offset 416] [from Boolean]
!583 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"chroma_location_frame", i32 79, i64 32, i64 32, i64 448, i32 0, metadata !70} ; [ DW_TAG_member ] [chroma_location_frame] [line 79, size 32, align 32, offset 448] [from unsigned int]
!584 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"chroma_location_field", i32 80, i64 32, i64 32, i64 480, i32 0, metadata !70} ; [ DW_TAG_member ] [chroma_location_field] [line 80, size 32, align 32, offset 480] [from unsigned int]
!585 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"timing_info_present_flag", i32 81, i64 32, i64 32, i64 512, i32 0, metadata !460} ; [ DW_TAG_member ] [timing_info_present_flag] [line 81, size 32, align 32, offset 512] [from Boolean]
!586 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"num_units_in_tick", i32 82, i64 32, i64 32, i64 544, i32 0, metadata !70} ; [ DW_TAG_member ] [num_units_in_tick] [line 82, size 32, align 32, offset 544] [from unsigned int]
!587 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"time_scale", i32 83, i64 32, i64 32, i64 576, i32 0, metadata !70} ; [ DW_TAG_member ] [time_scale] [line 83, size 32, align 32, offset 576] [from unsigned int]
!588 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"fixed_frame_rate_flag", i32 84, i64 32, i64 32, i64 608, i32 0, metadata !460} ; [ DW_TAG_member ] [fixed_frame_rate_flag] [line 84, size 32, align 32, offset 608] [from Boolean]
!589 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"nal_hrd_parameters_present_flag", i32 85, i64 32, i64 32, i64 640, i32 0, metadata !460} ; [ DW_TAG_member ] [nal_hrd_parameters_present_flag] [line 85, size 32, align 32, offset 640] [from Boolean]
!590 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"nal_hrd_parameters", i32 86, i64 3296, i64 32, i64 672, i32 0, metadata !591} ; [ DW_TAG_member ] [nal_hrd_parameters] [line 86, size 3296, align 32, offset 672] [from hrd_parameters_t]
!591 = metadata !{i32 786454, metadata !29, null, metadata !"hrd_parameters_t", i32 60, i64 0, i64 0, i64 0, i32 0, metadata !592} ; [ DW_TAG_typedef ] [hrd_parameters_t] [line 60, size 0, align 0, offset 0] [from ]
!592 = metadata !{i32 786451, metadata !29, null, metadata !"", i32 48, i64 3296, i64 32, i32 0, i32 0, null, metadata !593, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 3296, align 32, offset 0] [from ]
!593 = metadata !{metadata !594, metadata !595, metadata !596, metadata !597, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !606}
!594 = metadata !{i32 786445, metadata !29, metadata !592, metadata !"cpb_cnt", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !70} ; [ DW_TAG_member ] [cpb_cnt] [line 50, size 32, align 32, offset 0] [from unsigned int]
!595 = metadata !{i32 786445, metadata !29, metadata !592, metadata !"bit_rate_scale", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !70} ; [ DW_TAG_member ] [bit_rate_scale] [line 51, size 32, align 32, offset 32] [from unsigned int]
!596 = metadata !{i32 786445, metadata !29, metadata !592, metadata !"cpb_size_scale", i32 52, i64 32, i64 32, i64 64, i32 0, metadata !70} ; [ DW_TAG_member ] [cpb_size_scale] [line 52, size 32, align 32, offset 64] [from unsigned int]
!597 = metadata !{i32 786445, metadata !29, metadata !592, metadata !"bit_rate_value", i32 53, i64 1024, i64 32, i64 96, i32 0, metadata !598} ; [ DW_TAG_member ] [bit_rate_value] [line 53, size 1024, align 32, offset 96] [from ]
!598 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !70, metadata !599, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!599 = metadata !{metadata !600}
!600 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!601 = metadata !{i32 786445, metadata !29, metadata !592, metadata !"cpb_size_value", i32 54, i64 1024, i64 32, i64 1120, i32 0, metadata !598} ; [ DW_TAG_member ] [cpb_size_value] [line 54, size 1024, align 32, offset 1120] [from ]
!602 = metadata !{i32 786445, metadata !29, metadata !592, metadata !"vbr_cbr_flag", i32 55, i64 1024, i64 32, i64 2144, i32 0, metadata !598} ; [ DW_TAG_member ] [vbr_cbr_flag] [line 55, size 1024, align 32, offset 2144] [from ]
!603 = metadata !{i32 786445, metadata !29, metadata !592, metadata !"initial_cpb_removal_delay_length_minus1", i32 56, i64 32, i64 32, i64 3168, i32 0, metadata !70} ; [ DW_TAG_member ] [initial_cpb_removal_delay_length_minus1] [line 56, size 32, align 32, offset 3168] [from unsigned int]
!604 = metadata !{i32 786445, metadata !29, metadata !592, metadata !"cpb_removal_delay_length_minus1", i32 57, i64 32, i64 32, i64 3200, i32 0, metadata !70} ; [ DW_TAG_member ] [cpb_removal_delay_length_minus1] [line 57, size 32, align 32, offset 3200] [from unsigned int]
!605 = metadata !{i32 786445, metadata !29, metadata !592, metadata !"dpb_output_delay_length_minus1", i32 58, i64 32, i64 32, i64 3232, i32 0, metadata !70} ; [ DW_TAG_member ] [dpb_output_delay_length_minus1] [line 58, size 32, align 32, offset 3232] [from unsigned int]
!606 = metadata !{i32 786445, metadata !29, metadata !592, metadata !"time_offset_length", i32 59, i64 32, i64 32, i64 3264, i32 0, metadata !70} ; [ DW_TAG_member ] [time_offset_length] [line 59, size 32, align 32, offset 3264] [from unsigned int]
!607 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"vcl_hrd_parameters_present_flag", i32 87, i64 32, i64 32, i64 3968, i32 0, metadata !460} ; [ DW_TAG_member ] [vcl_hrd_parameters_present_flag] [line 87, size 32, align 32, offset 3968] [from Boolean]
!608 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"vcl_hrd_parameters", i32 88, i64 3296, i64 32, i64 4000, i32 0, metadata !591} ; [ DW_TAG_member ] [vcl_hrd_parameters] [line 88, size 3296, align 32, offset 4000] [from hrd_parameters_t]
!609 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"low_delay_hrd_flag", i32 90, i64 32, i64 32, i64 7296, i32 0, metadata !460} ; [ DW_TAG_member ] [low_delay_hrd_flag] [line 90, size 32, align 32, offset 7296] [from Boolean]
!610 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"bitstream_restriction_flag", i32 91, i64 32, i64 32, i64 7328, i32 0, metadata !460} ; [ DW_TAG_member ] [bitstream_restriction_flag] [line 91, size 32, align 32, offset 7328] [from Boolean]
!611 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"motion_vectors_over_pic_boundaries_flag", i32 92, i64 32, i64 32, i64 7360, i32 0, metadata !460} ; [ DW_TAG_member ] [motion_vectors_over_pic_boundaries_flag] [line 92, size 32, align 32, offset 7360] [from Boolean]
!612 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"max_bytes_per_pic_denom", i32 93, i64 32, i64 32, i64 7392, i32 0, metadata !70} ; [ DW_TAG_member ] [max_bytes_per_pic_denom] [line 93, size 32, align 32, offset 7392] [from unsigned int]
!613 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"max_bits_per_mb_denom", i32 94, i64 32, i64 32, i64 7424, i32 0, metadata !70} ; [ DW_TAG_member ] [max_bits_per_mb_denom] [line 94, size 32, align 32, offset 7424] [from unsigned int]
!614 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"log2_max_mv_length_vertical", i32 95, i64 32, i64 32, i64 7456, i32 0, metadata !70} ; [ DW_TAG_member ] [log2_max_mv_length_vertical] [line 95, size 32, align 32, offset 7456] [from unsigned int]
!615 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"log2_max_mv_length_horizontal", i32 96, i64 32, i64 32, i64 7488, i32 0, metadata !70} ; [ DW_TAG_member ] [log2_max_mv_length_horizontal] [line 96, size 32, align 32, offset 7488] [from unsigned int]
!616 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"max_dec_frame_reordering", i32 97, i64 32, i64 32, i64 7520, i32 0, metadata !70} ; [ DW_TAG_member ] [max_dec_frame_reordering] [line 97, size 32, align 32, offset 7520] [from unsigned int]
!617 = metadata !{i32 786445, metadata !29, metadata !567, metadata !"max_dec_frame_buffering", i32 98, i64 32, i64 32, i64 7552, i32 0, metadata !70} ; [ DW_TAG_member ] [max_dec_frame_buffering] [line 98, size 32, align 32, offset 7552] [from unsigned int]
!618 = metadata !{i32 786484, i32 0, null, metadata !"mb_adaptive", metadata !"mb_adaptive", metadata !"", metadata !361, i32 578, metadata !39, i32 0, i32 1, i32* @mb_adaptive, null} ; [ DW_TAG_variable ] [mb_adaptive] [line 578] [def]
!619 = metadata !{i32 786484, i32 0, null, metadata !"MBPairIsField", metadata !"MBPairIsField", metadata !"", metadata !361, i32 579, metadata !39, i32 0, i32 1, i32* @MBPairIsField, null} ; [ DW_TAG_variable ] [MBPairIsField] [line 579] [def]
!620 = metadata !{i32 786484, i32 0, null, metadata !"wp_weight", metadata !"wp_weight", metadata !"", metadata !361, i32 583, metadata !621, i32 0, i32 1, i32**** @wp_weight, null} ; [ DW_TAG_variable ] [wp_weight] [line 583] [def]
!621 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !481} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!622 = metadata !{i32 786484, i32 0, null, metadata !"wp_offset", metadata !"wp_offset", metadata !"", metadata !361, i32 584, metadata !621, i32 0, i32 1, i32**** @wp_offset, null} ; [ DW_TAG_variable ] [wp_offset] [line 584] [def]
!623 = metadata !{i32 786484, i32 0, null, metadata !"wbp_weight", metadata !"wbp_weight", metadata !"", metadata !361, i32 585, metadata !624, i32 0, i32 1, i32***** @wbp_weight, null} ; [ DW_TAG_variable ] [wbp_weight] [line 585] [def]
!624 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !621} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!625 = metadata !{i32 786484, i32 0, null, metadata !"luma_log_weight_denom", metadata !"luma_log_weight_denom", metadata !"", metadata !361, i32 586, metadata !39, i32 0, i32 1, i32* @luma_log_weight_denom, null} ; [ DW_TAG_variable ] [luma_log_weight_denom] [line 586] [def]
!626 = metadata !{i32 786484, i32 0, null, metadata !"chroma_log_weight_denom", metadata !"chroma_log_weight_denom", metadata !"", metadata !361, i32 587, metadata !39, i32 0, i32 1, i32* @chroma_log_weight_denom, null} ; [ DW_TAG_variable ] [chroma_log_weight_denom] [line 587] [def]
!627 = metadata !{i32 786484, i32 0, null, metadata !"wp_luma_round", metadata !"wp_luma_round", metadata !"", metadata !361, i32 588, metadata !39, i32 0, i32 1, i32* @wp_luma_round, null} ; [ DW_TAG_variable ] [wp_luma_round] [line 588] [def]
!628 = metadata !{i32 786484, i32 0, null, metadata !"wp_chroma_round", metadata !"wp_chroma_round", metadata !"", metadata !361, i32 589, metadata !39, i32 0, i32 1, i32* @wp_chroma_round, null} ; [ DW_TAG_variable ] [wp_chroma_round] [line 589] [def]
!629 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_top", metadata !"imgY_org_top", metadata !"", metadata !361, i32 592, metadata !476, i32 0, i32 1, i16*** @imgY_org_top, null} ; [ DW_TAG_variable ] [imgY_org_top] [line 592] [def]
!630 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_bot", metadata !"imgY_org_bot", metadata !"", metadata !361, i32 593, metadata !476, i32 0, i32 1, i16*** @imgY_org_bot, null} ; [ DW_TAG_variable ] [imgY_org_bot] [line 593] [def]
!631 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_top", metadata !"imgUV_org_top", metadata !"", metadata !361, i32 595, metadata !479, i32 0, i32 1, i16**** @imgUV_org_top, null} ; [ DW_TAG_variable ] [imgUV_org_top] [line 595] [def]
!632 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_bot", metadata !"imgUV_org_bot", metadata !"", metadata !361, i32 596, metadata !479, i32 0, i32 1, i16**** @imgUV_org_bot, null} ; [ DW_TAG_variable ] [imgUV_org_bot] [line 596] [def]
!633 = metadata !{i32 786484, i32 0, null, metadata !"imgY_org_frm", metadata !"imgY_org_frm", metadata !"", metadata !361, i32 598, metadata !476, i32 0, i32 1, i16*** @imgY_org_frm, null} ; [ DW_TAG_variable ] [imgY_org_frm] [line 598] [def]
!634 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_org_frm", metadata !"imgUV_org_frm", metadata !"", metadata !361, i32 599, metadata !479, i32 0, i32 1, i16**** @imgUV_org_frm, null} ; [ DW_TAG_variable ] [imgUV_org_frm] [line 599] [def]
!635 = metadata !{i32 786484, i32 0, null, metadata !"imgY_com", metadata !"imgY_com", metadata !"", metadata !361, i32 601, metadata !476, i32 0, i32 1, i16*** @imgY_com, null} ; [ DW_TAG_variable ] [imgY_com] [line 601] [def]
!636 = metadata !{i32 786484, i32 0, null, metadata !"imgUV_com", metadata !"imgUV_com", metadata !"", metadata !361, i32 602, metadata !479, i32 0, i32 1, i16**** @imgUV_com, null} ; [ DW_TAG_variable ] [imgUV_com] [line 602] [def]
!637 = metadata !{i32 786484, i32 0, null, metadata !"direct_ref_idx", metadata !"direct_ref_idx", metadata !"", metadata !361, i32 604, metadata !638, i32 0, i32 1, i16**** @direct_ref_idx, null} ; [ DW_TAG_variable ] [direct_ref_idx] [line 604] [def]
!638 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !639} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!639 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !640} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!640 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !641} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!641 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!642 = metadata !{i32 786484, i32 0, null, metadata !"direct_pdir", metadata !"direct_pdir", metadata !"", metadata !361, i32 605, metadata !639, i32 0, i32 1, i16*** @direct_pdir, null} ; [ DW_TAG_variable ] [direct_pdir] [line 605] [def]
!643 = metadata !{i32 786484, i32 0, null, metadata !"pixel_map", metadata !"pixel_map", metadata !"", metadata !361, i32 608, metadata !644, i32 0, i32 1, i8*** @pixel_map, null} ; [ DW_TAG_variable ] [pixel_map] [line 608] [def]
!644 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!645 = metadata !{i32 786484, i32 0, null, metadata !"refresh_map", metadata !"refresh_map", metadata !"", metadata !361, i32 609, metadata !644, i32 0, i32 1, i8*** @refresh_map, null} ; [ DW_TAG_variable ] [refresh_map] [line 609] [def]
!646 = metadata !{i32 786484, i32 0, null, metadata !"intras", metadata !"intras", metadata !"", metadata !361, i32 610, metadata !39, i32 0, i32 1, i32* @intras, null} ; [ DW_TAG_variable ] [intras] [line 610] [def]
!647 = metadata !{i32 786484, i32 0, null, metadata !"Iframe_ctr", metadata !"Iframe_ctr", metadata !"", metadata !361, i32 612, metadata !39, i32 0, i32 1, i32* @Iframe_ctr, null} ; [ DW_TAG_variable ] [Iframe_ctr] [line 612] [def]
!648 = metadata !{i32 786484, i32 0, null, metadata !"Pframe_ctr", metadata !"Pframe_ctr", metadata !"", metadata !361, i32 612, metadata !39, i32 0, i32 1, i32* @Pframe_ctr, null} ; [ DW_TAG_variable ] [Pframe_ctr] [line 612] [def]
!649 = metadata !{i32 786484, i32 0, null, metadata !"Bframe_ctr", metadata !"Bframe_ctr", metadata !"", metadata !361, i32 612, metadata !39, i32 0, i32 1, i32* @Bframe_ctr, null} ; [ DW_TAG_variable ] [Bframe_ctr] [line 612] [def]
!650 = metadata !{i32 786484, i32 0, null, metadata !"frame_no", metadata !"frame_no", metadata !"", metadata !361, i32 613, metadata !39, i32 0, i32 1, i32* @frame_no, null} ; [ DW_TAG_variable ] [frame_no] [line 613] [def]
!651 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_fld", metadata !"nextP_tr_fld", metadata !"", metadata !361, i32 613, metadata !39, i32 0, i32 1, i32* @nextP_tr_fld, null} ; [ DW_TAG_variable ] [nextP_tr_fld] [line 613] [def]
!652 = metadata !{i32 786484, i32 0, null, metadata !"nextP_tr_frm", metadata !"nextP_tr_frm", metadata !"", metadata !361, i32 613, metadata !39, i32 0, i32 1, i32* @nextP_tr_frm, null} ; [ DW_TAG_variable ] [nextP_tr_frm] [line 613] [def]
!653 = metadata !{i32 786484, i32 0, null, metadata !"tot_time", metadata !"tot_time", metadata !"", metadata !361, i32 614, metadata !39, i32 0, i32 1, i32* @tot_time, null} ; [ DW_TAG_variable ] [tot_time] [line 614] [def]
!654 = metadata !{i32 786484, i32 0, null, metadata !"errortext", metadata !"errortext", metadata !"", metadata !361, i32 617, metadata !655, i32 0, i32 1, [300 x i8]* @errortext, null} ; [ DW_TAG_variable ] [errortext] [line 617] [def]
!655 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2400, i64 8, i32 0, i32 0, metadata !41, metadata !656, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2400, align 8, offset 0] [from char]
!656 = metadata !{metadata !657}
!657 = metadata !{i32 786465, i64 0, i64 300}     ; [ DW_TAG_subrange_type ] [0, 299]
!658 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_R", metadata !"resTrans_R", metadata !"", metadata !361, i32 620, metadata !659, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_R, null} ; [ DW_TAG_variable ] [resTrans_R] [line 620] [def]
!659 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8192, i64 32, i32 0, i32 0, metadata !39, metadata !660, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 32, offset 0] [from int]
!660 = metadata !{metadata !327, metadata !327}
!661 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_G", metadata !"resTrans_G", metadata !"", metadata !361, i32 620, metadata !659, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_G, null} ; [ DW_TAG_variable ] [resTrans_G] [line 620] [def]
!662 = metadata !{i32 786484, i32 0, null, metadata !"resTrans_B", metadata !"resTrans_B", metadata !"", metadata !361, i32 620, metadata !659, i32 0, i32 1, [16 x [16 x i32]]* @resTrans_B, null} ; [ DW_TAG_variable ] [resTrans_B] [line 620] [def]
!663 = metadata !{i32 786484, i32 0, null, metadata !"rec_resR", metadata !"rec_resR", metadata !"", metadata !361, i32 621, metadata !659, i32 0, i32 1, [16 x [16 x i32]]* @rec_resR, null} ; [ DW_TAG_variable ] [rec_resR] [line 621] [def]
!664 = metadata !{i32 786484, i32 0, null, metadata !"rec_resG", metadata !"rec_resG", metadata !"", metadata !361, i32 621, metadata !659, i32 0, i32 1, [16 x [16 x i32]]* @rec_resG, null} ; [ DW_TAG_variable ] [rec_resG] [line 621] [def]
!665 = metadata !{i32 786484, i32 0, null, metadata !"rec_resB", metadata !"rec_resB", metadata !"", metadata !361, i32 621, metadata !659, i32 0, i32 1, [16 x [16 x i32]]* @rec_resB, null} ; [ DW_TAG_variable ] [rec_resB] [line 621] [def]
!666 = metadata !{i32 786484, i32 0, null, metadata !"mprRGB", metadata !"mprRGB", metadata !"", metadata !361, i32 622, metadata !667, i32 0, i32 1, [3 x [16 x [16 x i32]]]* @mprRGB, null} ; [ DW_TAG_variable ] [mprRGB] [line 622] [def]
!667 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24576, i64 32, i32 0, i32 0, metadata !39, metadata !668, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24576, align 32, offset 0] [from int]
!668 = metadata !{metadata !344, metadata !327, metadata !327}
!669 = metadata !{i32 786484, i32 0, null, metadata !"dc_level", metadata !"dc_level", metadata !"", metadata !361, i32 623, metadata !670, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level, null} ; [ DW_TAG_variable ] [dc_level] [line 623] [def]
!670 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !39, metadata !671, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from int]
!671 = metadata !{metadata !318, metadata !322, metadata !322}
!672 = metadata !{i32 786484, i32 0, null, metadata !"dc_level_temp", metadata !"dc_level_temp", metadata !"", metadata !361, i32 623, metadata !670, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @dc_level_temp, null} ; [ DW_TAG_variable ] [dc_level_temp] [line 623] [def]
!673 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block", metadata !"cbp_chroma_block", metadata !"", metadata !361, i32 624, metadata !670, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block, null} ; [ DW_TAG_variable ] [cbp_chroma_block] [line 624] [def]
!674 = metadata !{i32 786484, i32 0, null, metadata !"cbp_chroma_block_temp", metadata !"cbp_chroma_block_temp", metadata !"", metadata !361, i32 624, metadata !670, i32 0, i32 1, [2 x [4 x [4 x i32]]]* @cbp_chroma_block_temp, null} ; [ DW_TAG_variable ] [cbp_chroma_block_temp] [line 624] [def]
!675 = metadata !{i32 786484, i32 0, null, metadata !"b8_ipredmode8x8", metadata !"b8_ipredmode8x8", metadata !"", metadata !361, i32 625, metadata !676, i32 0, i32 1, [4 x [4 x i32]]* @b8_ipredmode8x8, null} ; [ DW_TAG_variable ] [b8_ipredmode8x8] [line 625] [def]
!676 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !39, metadata !677, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!677 = metadata !{metadata !322, metadata !322}
!678 = metadata !{i32 786484, i32 0, null, metadata !"b8_intra_pred_modes8x8", metadata !"b8_intra_pred_modes8x8", metadata !"", metadata !361, i32 625, metadata !679, i32 0, i32 1, [16 x i32]* @b8_intra_pred_modes8x8, null} ; [ DW_TAG_variable ] [b8_intra_pred_modes8x8] [line 625] [def]
!679 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !39, metadata !326, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from int]
!680 = metadata !{i32 786484, i32 0, null, metadata !"gop_structure", metadata !"gop_structure", metadata !"", metadata !361, i32 1201, metadata !681, i32 0, i32 1, %struct.GOP_DATA** @gop_structure, null} ; [ DW_TAG_variable ] [gop_structure] [line 1201] [def]
!681 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !682} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from GOP_DATA]
!682 = metadata !{i32 786454, metadata !4, null, metadata !"GOP_DATA", i32 1190, i64 0, i64 0, i64 0, i32 0, metadata !683} ; [ DW_TAG_typedef ] [GOP_DATA] [line 1190, size 0, align 0, offset 0] [from ]
!683 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 1182, i64 192, i64 32, i32 0, i32 0, null, metadata !684, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1182, size 192, align 32, offset 0] [from ]
!684 = metadata !{metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690}
!685 = metadata !{i32 786445, metadata !4, metadata !683, metadata !"slice_type", i32 1184, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [slice_type] [line 1184, size 32, align 32, offset 0] [from int]
!686 = metadata !{i32 786445, metadata !4, metadata !683, metadata !"display_no", i32 1185, i64 32, i64 32, i64 32, i32 0, metadata !39} ; [ DW_TAG_member ] [display_no] [line 1185, size 32, align 32, offset 32] [from int]
!687 = metadata !{i32 786445, metadata !4, metadata !683, metadata !"reference_idc", i32 1186, i64 32, i64 32, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [reference_idc] [line 1186, size 32, align 32, offset 64] [from int]
!688 = metadata !{i32 786445, metadata !4, metadata !683, metadata !"slice_qp", i32 1187, i64 32, i64 32, i64 96, i32 0, metadata !39} ; [ DW_TAG_member ] [slice_qp] [line 1187, size 32, align 32, offset 96] [from int]
!689 = metadata !{i32 786445, metadata !4, metadata !683, metadata !"pyramid_layer", i32 1188, i64 32, i64 32, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [pyramid_layer] [line 1188, size 32, align 32, offset 128] [from int]
!690 = metadata !{i32 786445, metadata !4, metadata !683, metadata !"pyramidPocDelta", i32 1189, i64 32, i64 32, i64 160, i32 0, metadata !39} ; [ DW_TAG_member ] [pyramidPocDelta] [line 1189, size 32, align 32, offset 160] [from int]
!691 = metadata !{i32 786484, i32 0, null, metadata !"rdopt", metadata !"rdopt", metadata !"", metadata !361, i32 1202, metadata !692, i32 0, i32 1, %struct.RD_DATA** @rdopt, null} ; [ DW_TAG_variable ] [rdopt] [line 1202] [def]
!692 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !693} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from RD_DATA]
!693 = metadata !{i32 786454, metadata !4, null, metadata !"RD_DATA", i32 1177, i64 0, i64 0, i64 0, i32 0, metadata !694} ; [ DW_TAG_typedef ] [RD_DATA] [line 1177, size 0, align 0, offset 0] [from ]
!694 = metadata !{i32 786451, metadata !4, null, metadata !"", i32 1145, i64 26880, i64 64, i32 0, i32 0, null, metadata !695, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 1145, size 26880, align 64, offset 0] [from ]
!695 = metadata !{metadata !696, metadata !698, metadata !699, metadata !700, metadata !701, metadata !702, metadata !703, metadata !704, metadata !705, metadata !707, metadata !708, metadata !709, metadata !710, metadata !711, metadata !715, metadata !716, metadata !720, metadata !721, metadata !722, metadata !723, metadata !725, metadata !726, metadata !727, metadata !728, metadata !729, metadata !730, metadata !731}
!696 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"min_rdcost", i32 1147, i64 64, i64 64, i64 0, i32 0, metadata !697} ; [ DW_TAG_member ] [min_rdcost] [line 1147, size 64, align 64, offset 0] [from double]
!697 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!698 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"rec_mbY", i32 1149, i64 8192, i64 32, i64 64, i32 0, metadata !659} ; [ DW_TAG_member ] [rec_mbY] [line 1149, size 8192, align 32, offset 64] [from ]
!699 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"rec_mbU", i32 1150, i64 8192, i64 32, i64 8256, i32 0, metadata !659} ; [ DW_TAG_member ] [rec_mbU] [line 1150, size 8192, align 32, offset 8256] [from ]
!700 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"rec_mbV", i32 1150, i64 8192, i64 32, i64 16448, i32 0, metadata !659} ; [ DW_TAG_member ] [rec_mbV] [line 1150, size 8192, align 32, offset 16448] [from ]
!701 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"cofAC", i32 1151, i64 64, i64 64, i64 24640, i32 0, metadata !624} ; [ DW_TAG_member ] [cofAC] [line 1151, size 64, align 64, offset 24640] [from ]
!702 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"cofDC", i32 1152, i64 64, i64 64, i64 24704, i32 0, metadata !621} ; [ DW_TAG_member ] [cofDC] [line 1152, size 64, align 64, offset 24704] [from ]
!703 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"mb_type", i32 1153, i64 32, i64 32, i64 24768, i32 0, metadata !39} ; [ DW_TAG_member ] [mb_type] [line 1153, size 32, align 32, offset 24768] [from int]
!704 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"bi_pred_me", i32 1155, i64 32, i64 32, i64 24800, i32 0, metadata !39} ; [ DW_TAG_member ] [bi_pred_me] [line 1155, size 32, align 32, offset 24800] [from int]
!705 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"b8mode", i32 1157, i64 128, i64 32, i64 24832, i32 0, metadata !706} ; [ DW_TAG_member ] [b8mode] [line 1157, size 128, align 32, offset 24832] [from ]
!706 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !39, metadata !321, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from int]
!707 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"b8pdir", i32 1157, i64 128, i64 32, i64 24960, i32 0, metadata !706} ; [ DW_TAG_member ] [b8pdir] [line 1157, size 128, align 32, offset 24960] [from ]
!708 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"ipredmode", i32 1158, i64 64, i64 64, i64 25088, i32 0, metadata !481} ; [ DW_TAG_member ] [ipredmode] [line 1158, size 64, align 64, offset 25088] [from ]
!709 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"intra_pred_modes", i32 1159, i64 512, i64 32, i64 25152, i32 0, metadata !679} ; [ DW_TAG_member ] [intra_pred_modes] [line 1159, size 512, align 32, offset 25152] [from ]
!710 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"cbp", i32 1160, i64 32, i64 32, i64 25664, i32 0, metadata !39} ; [ DW_TAG_member ] [cbp] [line 1160, size 32, align 32, offset 25664] [from int]
!711 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"cbp_blk", i32 1161, i64 64, i64 64, i64 25728, i32 0, metadata !712} ; [ DW_TAG_member ] [cbp_blk] [line 1161, size 64, align 64, offset 25728] [from int64]
!712 = metadata !{i32 786454, metadata !4, null, metadata !"int64", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !713} ; [ DW_TAG_typedef ] [int64] [line 62, size 0, align 0, offset 0] [from int64_t]
!713 = metadata !{i32 786454, metadata !4, null, metadata !"int64_t", i32 197, i64 0, i64 0, i64 0, i32 0, metadata !714} ; [ DW_TAG_typedef ] [int64_t] [line 197, size 0, align 0, offset 0] [from long int]
!714 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!715 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"mode", i32 1162, i64 32, i64 32, i64 25792, i32 0, metadata !39} ; [ DW_TAG_member ] [mode] [line 1162, size 32, align 32, offset 25792] [from int]
!716 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"pred_mv", i32 1163, i64 64, i64 64, i64 25856, i32 0, metadata !717} ; [ DW_TAG_member ] [pred_mv] [line 1163, size 64, align 64, offset 25856] [from ]
!717 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !718} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!718 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !719} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!719 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !638} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!720 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"all_mv", i32 1164, i64 64, i64 64, i64 25920, i32 0, metadata !717} ; [ DW_TAG_member ] [all_mv] [line 1164, size 64, align 64, offset 25920] [from ]
!721 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"bipred_mv1", i32 1165, i64 64, i64 64, i64 25984, i32 0, metadata !717} ; [ DW_TAG_member ] [bipred_mv1] [line 1165, size 64, align 64, offset 25984] [from ]
!722 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"bipred_mv2", i32 1166, i64 64, i64 64, i64 26048, i32 0, metadata !717} ; [ DW_TAG_member ] [bipred_mv2] [line 1166, size 64, align 64, offset 26048] [from ]
!723 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"refar", i32 1167, i64 512, i64 16, i64 26112, i32 0, metadata !724} ; [ DW_TAG_member ] [refar] [line 1167, size 512, align 16, offset 26112] [from ]
!724 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 16, i32 0, i32 0, metadata !641, metadata !671, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 512, align 16, offset 0] [from short]
!725 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"i16offset", i32 1168, i64 32, i64 32, i64 26624, i32 0, metadata !39} ; [ DW_TAG_member ] [i16offset] [line 1168, size 32, align 32, offset 26624] [from int]
!726 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"c_ipred_mode", i32 1169, i64 32, i64 32, i64 26656, i32 0, metadata !39} ; [ DW_TAG_member ] [c_ipred_mode] [line 1169, size 32, align 32, offset 26656] [from int]
!727 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"luma_transform_size_8x8_flag", i32 1171, i64 32, i64 32, i64 26688, i32 0, metadata !39} ; [ DW_TAG_member ] [luma_transform_size_8x8_flag] [line 1171, size 32, align 32, offset 26688] [from int]
!728 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"NoMbPartLessThan8x8Flag", i32 1172, i64 32, i64 32, i64 26720, i32 0, metadata !39} ; [ DW_TAG_member ] [NoMbPartLessThan8x8Flag] [line 1172, size 32, align 32, offset 26720] [from int]
!729 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"qp", i32 1174, i64 32, i64 32, i64 26752, i32 0, metadata !39} ; [ DW_TAG_member ] [qp] [line 1174, size 32, align 32, offset 26752] [from int]
!730 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"prev_qp", i32 1175, i64 32, i64 32, i64 26784, i32 0, metadata !39} ; [ DW_TAG_member ] [prev_qp] [line 1175, size 32, align 32, offset 26784] [from int]
!731 = metadata !{i32 786445, metadata !4, metadata !694, metadata !"prev_delta_qp", i32 1176, i64 32, i64 32, i64 26816, i32 0, metadata !39} ; [ DW_TAG_member ] [prev_delta_qp] [line 1176, size 32, align 32, offset 26816] [from int]
!732 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_frame_mb", metadata !"rddata_top_frame_mb", metadata !"", metadata !361, i32 1203, metadata !693, i32 0, i32 1, %struct.RD_DATA* @rddata_top_frame_mb, null} ; [ DW_TAG_variable ] [rddata_top_frame_mb] [line 1203] [def]
!733 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_frame_mb", metadata !"rddata_bot_frame_mb", metadata !"", metadata !361, i32 1203, metadata !693, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_frame_mb, null} ; [ DW_TAG_variable ] [rddata_bot_frame_mb] [line 1203] [def]
!734 = metadata !{i32 786484, i32 0, null, metadata !"rddata_top_field_mb", metadata !"rddata_top_field_mb", metadata !"", metadata !361, i32 1204, metadata !693, i32 0, i32 1, %struct.RD_DATA* @rddata_top_field_mb, null} ; [ DW_TAG_variable ] [rddata_top_field_mb] [line 1204] [def]
!735 = metadata !{i32 786484, i32 0, null, metadata !"rddata_bot_field_mb", metadata !"rddata_bot_field_mb", metadata !"", metadata !361, i32 1204, metadata !693, i32 0, i32 1, %struct.RD_DATA* @rddata_bot_field_mb, null} ; [ DW_TAG_variable ] [rddata_bot_field_mb] [line 1204] [def]
!736 = metadata !{i32 786484, i32 0, null, metadata !"p_stat", metadata !"p_stat", metadata !"", metadata !361, i32 1230, metadata !737, i32 0, i32 1, %struct._IO_FILE** @p_stat, null} ; [ DW_TAG_variable ] [p_stat] [line 1230] [def]
!737 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !738} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!738 = metadata !{i32 786454, metadata !4, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !739} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!739 = metadata !{i32 786451, metadata !740, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !741, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!740 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!741 = metadata !{metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !762, metadata !763, metadata !764, metadata !765, metadata !767, metadata !768, metadata !770, metadata !774, metadata !776, metadata !778, metadata !779, metadata !780, metadata !781, metadata !782, metadata !784, metadata !785}
!742 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!743 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!744 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!745 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!746 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!747 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!748 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!749 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!750 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!751 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!752 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!753 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !40} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!754 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !755} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!755 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !756} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!756 = metadata !{i32 786451, metadata !740, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !757, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!757 = metadata !{metadata !758, metadata !759, metadata !761}
!758 = metadata !{i32 786445, metadata !740, metadata !756, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !755} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!759 = metadata !{i32 786445, metadata !740, metadata !756, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !760} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!760 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !739} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!761 = metadata !{i32 786445, metadata !740, metadata !756, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!762 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !760} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!763 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !39} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!764 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !39} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!765 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !766} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!766 = metadata !{i32 786454, metadata !740, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !714} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!767 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !392} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!768 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !769} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!769 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!770 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !771} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!771 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !41, metadata !772, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!772 = metadata !{metadata !773}
!773 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!774 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !775} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!775 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!776 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !777} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!777 = metadata !{i32 786454, metadata !740, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !714} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!778 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !775} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!779 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !775} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!780 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !775} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!781 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !775} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!782 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !783} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!783 = metadata !{i32 786454, metadata !740, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !395} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!784 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !39} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!785 = metadata !{i32 786445, metadata !740, metadata !739, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !786} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!786 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !41, metadata !787, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!787 = metadata !{metadata !788}
!788 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!789 = metadata !{i32 786484, i32 0, null, metadata !"p_log", metadata !"p_log", metadata !"", metadata !361, i32 1231, metadata !737, i32 0, i32 1, %struct._IO_FILE** @p_log, null} ; [ DW_TAG_variable ] [p_log] [line 1231] [def]
!790 = metadata !{i32 786484, i32 0, null, metadata !"p_trace", metadata !"p_trace", metadata !"", metadata !361, i32 1232, metadata !737, i32 0, i32 1, %struct._IO_FILE** @p_trace, null} ; [ DW_TAG_variable ] [p_trace] [line 1232] [def]
!791 = metadata !{i32 786484, i32 0, null, metadata !"p_in", metadata !"p_in", metadata !"", metadata !361, i32 1233, metadata !39, i32 0, i32 1, i32* @p_in, null} ; [ DW_TAG_variable ] [p_in] [line 1233] [def]
!792 = metadata !{i32 786484, i32 0, null, metadata !"p_dec", metadata !"p_dec", metadata !"", metadata !361, i32 1234, metadata !39, i32 0, i32 1, i32* @p_dec, null} ; [ DW_TAG_variable ] [p_dec] [line 1234] [def]
!793 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"glob_remapping_of_pic_nums_idc_l0", metadata !"", metadata !361, i32 1237, metadata !794, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l0, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l0] [line 1237] [def]
!794 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !39, metadata !787, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from int]
!795 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"glob_abs_diff_pic_num_minus1_l0", metadata !"", metadata !361, i32 1238, metadata !794, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l0, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l0] [line 1238] [def]
!796 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l0", metadata !"glob_long_term_pic_idx_l0", metadata !"", metadata !361, i32 1239, metadata !794, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l0, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l0] [line 1239] [def]
!797 = metadata !{i32 786484, i32 0, null, metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"glob_remapping_of_pic_nums_idc_l1", metadata !"", metadata !361, i32 1240, metadata !794, i32 0, i32 1, [20 x i32]* @glob_remapping_of_pic_nums_idc_l1, null} ; [ DW_TAG_variable ] [glob_remapping_of_pic_nums_idc_l1] [line 1240] [def]
!798 = metadata !{i32 786484, i32 0, null, metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"glob_abs_diff_pic_num_minus1_l1", metadata !"", metadata !361, i32 1241, metadata !794, i32 0, i32 1, [20 x i32]* @glob_abs_diff_pic_num_minus1_l1, null} ; [ DW_TAG_variable ] [glob_abs_diff_pic_num_minus1_l1] [line 1241] [def]
!799 = metadata !{i32 786484, i32 0, null, metadata !"glob_long_term_pic_idx_l1", metadata !"glob_long_term_pic_idx_l1", metadata !"", metadata !361, i32 1242, metadata !794, i32 0, i32 1, [20 x i32]* @glob_long_term_pic_idx_l1, null} ; [ DW_TAG_variable ] [glob_long_term_pic_idx_l1] [line 1242] [def]
!800 = metadata !{i32 786484, i32 0, null, metadata !"Bytes_After_Header", metadata !"Bytes_After_Header", metadata !"", metadata !361, i32 1456, metadata !39, i32 0, i32 1, i32* @Bytes_After_Header, null} ; [ DW_TAG_variable ] [Bytes_After_Header] [line 1456] [def]
!801 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bytes_to_go", metadata !"rpc_bytes_to_go", metadata !"", metadata !361, i32 1465, metadata !39, i32 0, i32 1, i32* @rpc_bytes_to_go, null} ; [ DW_TAG_variable ] [rpc_bytes_to_go] [line 1465] [def]
!802 = metadata !{i32 786484, i32 0, null, metadata !"rpc_bits_to_go", metadata !"rpc_bits_to_go", metadata !"", metadata !361, i32 1466, metadata !39, i32 0, i32 1, i32* @rpc_bits_to_go, null} ; [ DW_TAG_variable ] [rpc_bits_to_go] [line 1466] [def]
!803 = metadata !{i32 58, i32 0, metadata !35, null} ; [ DW_TAG_imported_module ]
!804 = metadata !{i32 60, i32 0, metadata !35, null}
!805 = metadata !{i32 61, i32 0, metadata !35, null}
!806 = metadata !{metadata !"int", metadata !807}
!807 = metadata !{metadata !"omnipotent char", metadata !808}
!808 = metadata !{metadata !"Simple C/C++ TBAA"}
!809 = metadata !{i32 62, i32 0, metadata !35, null}
!810 = metadata !{metadata !"any pointer", metadata !807}
!811 = metadata !{i32 63, i32 0, metadata !35, null}
!812 = metadata !{i32 64, i32 0, metadata !35, null}
!813 = metadata !{i32 68, i32 0, metadata !35, null}
!814 = metadata !{i32 69, i32 0, metadata !35, null}
!815 = metadata !{i32 70, i32 0, metadata !35, null}
!816 = metadata !{i32 209, i32 0, metadata !149, null}
!817 = metadata !{i32 213, i32 0, metadata !149, null}
!818 = metadata !{i32 215, i32 0, metadata !819, null}
!819 = metadata !{i32 786443, metadata !1, metadata !149, i32 215, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!820 = metadata !{i32 219, i32 0, metadata !149, null}
!821 = metadata !{i32 220, i32 0, metadata !149, null}
!822 = metadata !{i32 221, i32 0, metadata !149, null}
!823 = metadata !{i32 504, i32 0, metadata !218, null}
!824 = metadata !{i32 506, i32 0, metadata !218, null}
!825 = metadata !{i32 786689, metadata !212, metadata !"sym", metadata !36, i32 16777706, metadata !95, i32 0, metadata !826} ; [ DW_TAG_arg_variable ] [sym] [line 490]
!826 = metadata !{i32 507, i32 0, metadata !218, null}
!827 = metadata !{i32 490, i32 0, metadata !212, metadata !826}
!828 = metadata !{i32 492, i32 0, metadata !212, metadata !826}
!829 = metadata !{i32 786688, metadata !212, metadata !"suffix_len", metadata !36, i32 492, metadata !39, i32 0, metadata !826} ; [ DW_TAG_auto_variable ] [suffix_len] [line 492]
!830 = metadata !{i32 493, i32 0, metadata !212, metadata !826}
!831 = metadata !{i32 509, i32 0, metadata !218, null}
!832 = metadata !{i32 511, i32 0, metadata !218, null}
!833 = metadata !{i32 512, i32 0, metadata !218, null}
!834 = metadata !{i32 519, i32 0, metadata !218, null}
!835 = metadata !{i32 96, i32 0, metadata !125, null}
!836 = metadata !{i32 98, i32 0, metadata !125, null}
!837 = metadata !{i32 99, i32 0, metadata !125, null}
!838 = metadata !{i32 100, i32 0, metadata !125, null}
!839 = metadata !{i32 101, i32 0, metadata !125, null}
!840 = metadata !{i32 102, i32 0, metadata !125, null}
!841 = metadata !{i32 106, i32 0, metadata !125, null}
!842 = metadata !{i32 107, i32 0, metadata !125, null}
!843 = metadata !{i32 108, i32 0, metadata !125, null}
!844 = metadata !{i32 238, i32 0, metadata !157, null}
!845 = metadata !{i32 243, i32 0, metadata !157, null}
!846 = metadata !{i32 245, i32 0, metadata !157, null}
!847 = metadata !{i32 247, i32 0, metadata !848, null}
!848 = metadata !{i32 786443, metadata !1, metadata !157, i32 246, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!849 = metadata !{i32 249, i32 0, metadata !157, null}
!850 = metadata !{i32 256, i32 0, metadata !851, null}
!851 = metadata !{i32 786443, metadata !1, metadata !157, i32 256, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!852 = metadata !{i32 255, i32 0, metadata !157, null}
!853 = metadata !{i32 260, i32 0, metadata !157, null}
!854 = metadata !{i32 261, i32 0, metadata !157, null}
!855 = metadata !{i32 262, i32 0, metadata !157, null}
!856 = metadata !{i32 135, i32 0, metadata !132, null}
!857 = metadata !{i32 137, i32 0, metadata !132, null}
!858 = metadata !{i32 139, i32 0, metadata !132, null}
!859 = metadata !{i32 140, i32 0, metadata !132, null}
!860 = metadata !{i32 141, i32 0, metadata !132, null}
!861 = metadata !{i32 142, i32 0, metadata !132, null}
!862 = metadata !{i32 143, i32 0, metadata !132, null}
!863 = metadata !{i32 147, i32 0, metadata !132, null}
!864 = metadata !{i32 786689, metadata !224, metadata !"se", metadata !36, i32 16777745, metadata !95, i32 0, metadata !865} ; [ DW_TAG_arg_variable ] [se] [line 529]
!865 = metadata !{i32 148, i32 0, metadata !132, null}
!866 = metadata !{i32 529, i32 0, metadata !224, metadata !865}
!867 = metadata !{i32 786689, metadata !224, metadata !"this_dataPart", metadata !36, i32 33554961, metadata !42, i32 0, metadata !865} ; [ DW_TAG_arg_variable ] [this_dataPart] [line 529]
!868 = metadata !{i32 531, i32 0, metadata !224, metadata !865}
!869 = metadata !{i32 533, i32 0, metadata !224, metadata !865}
!870 = metadata !{i32 534, i32 0, metadata !224, metadata !865}
!871 = metadata !{i32 541, i32 0, metadata !224, metadata !865}
!872 = metadata !{i32 149, i32 0, metadata !132, null}
!873 = metadata !{i32 529, i32 0, metadata !224, null}
!874 = metadata !{i32 531, i32 0, metadata !224, null}
!875 = metadata !{i32 533, i32 0, metadata !224, null}
!876 = metadata !{i32 534, i32 0, metadata !224, null}
!877 = metadata !{i32 541, i32 0, metadata !224, null}
!878 = metadata !{i32 178, i32 0, metadata !139, null}
!879 = metadata !{i32 180, i32 0, metadata !139, null}
!880 = metadata !{i32 182, i32 0, metadata !139, null}
!881 = metadata !{i32 183, i32 0, metadata !139, null}
!882 = metadata !{i32 184, i32 0, metadata !139, null}
!883 = metadata !{i32 185, i32 0, metadata !139, null}
!884 = metadata !{i32 186, i32 0, metadata !139, null}
!885 = metadata !{i32 190, i32 0, metadata !139, null}
!886 = metadata !{i32 786689, metadata !224, metadata !"se", metadata !36, i32 16777745, metadata !95, i32 0, metadata !887} ; [ DW_TAG_arg_variable ] [se] [line 529]
!887 = metadata !{i32 191, i32 0, metadata !139, null}
!888 = metadata !{i32 529, i32 0, metadata !224, metadata !887}
!889 = metadata !{i32 786689, metadata !224, metadata !"this_dataPart", metadata !36, i32 33554961, metadata !42, i32 0, metadata !887} ; [ DW_TAG_arg_variable ] [this_dataPart] [line 529]
!890 = metadata !{i32 531, i32 0, metadata !224, metadata !887}
!891 = metadata !{i32 533, i32 0, metadata !224, metadata !887}
!892 = metadata !{i32 534, i32 0, metadata !224, metadata !887}
!893 = metadata !{i32 541, i32 0, metadata !224, metadata !887}
!894 = metadata !{i32 192, i32 0, metadata !139, null}
!895 = metadata !{i32 273, i32 0, metadata !167, null}
!896 = metadata !{i32 276, i32 0, metadata !167, null}
!897 = metadata !{i32 277, i32 0, metadata !167, null}
!898 = metadata !{i32 288, i32 0, metadata !173, null}
!899 = metadata !{i32 291, i32 0, metadata !173, null}
!900 = metadata !{i32 292, i32 0, metadata !173, null}
!901 = metadata !{i32 307, i32 0, metadata !179, null}
!902 = metadata !{i32 321, i32 0, metadata !179, null}
!903 = metadata !{i32 323, i32 0, metadata !904, null}
!904 = metadata !{i32 786443, metadata !1, metadata !179, i32 322, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!905 = metadata !{i32 324, i32 0, metadata !904, null}
!906 = metadata !{i32 326, i32 0, metadata !179, null}
!907 = metadata !{i32 327, i32 0, metadata !179, null}
!908 = metadata !{i32 329, i32 0, metadata !909, null}
!909 = metadata !{i32 786443, metadata !1, metadata !179, i32 328, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!910 = metadata !{i32 331, i32 0, metadata !179, null}
!911 = metadata !{i32 332, i32 0, metadata !179, null}
!912 = metadata !{i32 334, i32 0, metadata !913, null}
!913 = metadata !{i32 786443, metadata !1, metadata !179, i32 333, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!914 = metadata !{i32 335, i32 0, metadata !913, null}
!915 = metadata !{i32 338, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !179, i32 337, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!917 = metadata !{i32 343, i32 0, metadata !918, null}
!918 = metadata !{i32 786443, metadata !1, metadata !179, i32 343, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!919 = metadata !{i32 341, i32 0, metadata !179, null}
!920 = metadata !{i32 347, i32 0, metadata !179, null}
!921 = metadata !{i32 348, i32 0, metadata !179, null}
!922 = metadata !{i32 364, i32 0, metadata !190, null}
!923 = metadata !{i32 380, i32 0, metadata !190, null}
!924 = metadata !{i32 382, i32 0, metadata !925, null}
!925 = metadata !{i32 786443, metadata !1, metadata !190, i32 381, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!926 = metadata !{i32 383, i32 0, metadata !925, null}
!927 = metadata !{i32 386, i32 0, metadata !190, null}
!928 = metadata !{i32 387, i32 0, metadata !190, null}
!929 = metadata !{i32 391, i32 0, metadata !190, null}
!930 = metadata !{i32 392, i32 0, metadata !190, null}
!931 = metadata !{i32 394, i32 0, metadata !932, null}
!932 = metadata !{i32 786443, metadata !1, metadata !190, i32 393, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!933 = metadata !{i32 395, i32 0, metadata !932, null}
!934 = metadata !{i32 398, i32 0, metadata !935, null}
!935 = metadata !{i32 786443, metadata !1, metadata !190, i32 397, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!936 = metadata !{i32 403, i32 0, metadata !937, null}
!937 = metadata !{i32 786443, metadata !1, metadata !190, i32 403, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!938 = metadata !{i32 401, i32 0, metadata !190, null}
!939 = metadata !{i32 407, i32 0, metadata !190, null}
!940 = metadata !{i32 408, i32 0, metadata !190, null}
!941 = metadata !{i32 425, i32 0, metadata !201, null}
!942 = metadata !{i32 447, i32 0, metadata !201, null}
!943 = metadata !{i32 449, i32 0, metadata !944, null}
!944 = metadata !{i32 786443, metadata !1, metadata !201, i32 448, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!945 = metadata !{i32 450, i32 0, metadata !944, null}
!946 = metadata !{i32 452, i32 0, metadata !201, null}
!947 = metadata !{i32 453, i32 0, metadata !201, null}
!948 = metadata !{i32 457, i32 0, metadata !201, null}
!949 = metadata !{i32 458, i32 0, metadata !201, null}
!950 = metadata !{i32 460, i32 0, metadata !951, null}
!951 = metadata !{i32 786443, metadata !1, metadata !201, i32 459, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!952 = metadata !{i32 461, i32 0, metadata !951, null}
!953 = metadata !{i32 464, i32 0, metadata !954, null}
!954 = metadata !{i32 786443, metadata !1, metadata !201, i32 463, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!955 = metadata !{i32 469, i32 0, metadata !956, null}
!956 = metadata !{i32 786443, metadata !1, metadata !201, i32 469, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!957 = metadata !{i32 467, i32 0, metadata !201, null}
!958 = metadata !{i32 473, i32 0, metadata !201, null}
!959 = metadata !{i32 474, i32 0, metadata !201, null}
!960 = metadata !{i32 490, i32 0, metadata !212, null}
!961 = metadata !{i32 492, i32 0, metadata !212, null}
!962 = metadata !{i32 493, i32 0, metadata !212, null}
!963 = metadata !{i32 494, i32 0, metadata !212, null}
!964 = metadata !{i32 612, i32 0, metadata !238, null}
!965 = metadata !{i32 616, i32 0, metadata !238, null}
!966 = metadata !{i32 620, i32 0, metadata !967, null}
!967 = metadata !{i32 786443, metadata !1, metadata !238, i32 620, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!968 = metadata !{i32 622, i32 0, metadata !969, null}
!969 = metadata !{i32 786443, metadata !1, metadata !967, i32 621, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!970 = metadata !{i32 623, i32 0, metadata !969, null}
!971 = metadata !{i32 625, i32 0, metadata !969, null}
!972 = metadata !{i32 630, i32 0, metadata !973, null}
!973 = metadata !{i32 786443, metadata !1, metadata !969, i32 628, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!974 = metadata !{i32 624, i32 0, metadata !969, null}
!975 = metadata !{i32 626, i32 0, metadata !969, null}
!976 = metadata !{i32 627, i32 0, metadata !969, null}
!977 = metadata !{i32 629, i32 0, metadata !973, null}
!978 = metadata !{i32 631, i32 0, metadata !973, null}
!979 = metadata !{i32 632, i32 0, metadata !973, null}
!980 = metadata !{i32 634, i32 0, metadata !238, null}
!981 = metadata !{i32 551, i32 0, metadata !228, null}
!982 = metadata !{i32 554, i32 0, metadata !228, null}
!983 = metadata !{i32 556, i32 0, metadata !984, null}
!984 = metadata !{i32 786443, metadata !1, metadata !228, i32 555, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!985 = metadata !{i32 557, i32 0, metadata !984, null}
!986 = metadata !{i32 558, i32 0, metadata !984, null}
!987 = metadata !{i32 561, i32 0, metadata !988, null}
!988 = metadata !{i32 786443, metadata !1, metadata !228, i32 560, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!989 = metadata !{i32 562, i32 0, metadata !988, null}
!990 = metadata !{i32 565, i32 0, metadata !228, null}
!991 = metadata !{i32 566, i32 0, metadata !228, null}
!992 = metadata !{i32 568, i32 0, metadata !228, null}
!993 = metadata !{i32 569, i32 0, metadata !228, null}
!994 = metadata !{i32 576, i32 0, metadata !228, null}
!995 = metadata !{i32 588, i32 0, metadata !232, null}
!996 = metadata !{i32 591, i32 0, metadata !232, null}
!997 = metadata !{i32 786689, metadata !212, metadata !"sym", metadata !36, i32 16777706, metadata !95, i32 0, metadata !998} ; [ DW_TAG_arg_variable ] [sym] [line 490]
!998 = metadata !{i32 593, i32 0, metadata !232, null}
!999 = metadata !{i32 490, i32 0, metadata !212, metadata !998}
!1000 = metadata !{i32 492, i32 0, metadata !212, metadata !998}
!1001 = metadata !{i32 786688, metadata !212, metadata !"suffix_len", metadata !36, i32 492, metadata !39, i32 0, metadata !998} ; [ DW_TAG_auto_variable ] [suffix_len] [line 492]
!1002 = metadata !{i32 493, i32 0, metadata !212, metadata !998}
!1003 = metadata !{i32 595, i32 0, metadata !232, null}
!1004 = metadata !{i32 602, i32 0, metadata !232, null}
!1005 = metadata !{i32 645, i32 0, metadata !246, null}
!1006 = metadata !{i32 648, i32 0, metadata !246, null}
!1007 = metadata !{i32 655, i32 0, metadata !246, null}
!1008 = metadata !{i32 670, i32 0, metadata !250, null}
!1009 = metadata !{i32 672, i32 0, metadata !250, null}
!1010 = metadata !{i32 675, i32 0, metadata !250, null}
!1011 = metadata !{i32 681, i32 0, metadata !1012, null}
!1012 = metadata !{i32 786443, metadata !1, metadata !250, i32 679, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1013 = metadata !{i32 678, i32 0, metadata !250, null}
!1014 = metadata !{i32 680, i32 0, metadata !1012, null}
!1015 = metadata !{i32 683, i32 0, metadata !250, null}
!1016 = metadata !{i32 693, i32 0, metadata !254, null}
!1017 = metadata !{i32 696, i32 0, metadata !254, null}
!1018 = metadata !{i32 697, i32 0, metadata !254, null}
!1019 = metadata !{i32 786689, metadata !250, metadata !"sym", metadata !36, i32 16777886, metadata !95, i32 0, metadata !1020} ; [ DW_TAG_arg_variable ] [sym] [line 670]
!1020 = metadata !{i32 698, i32 0, metadata !254, null}
!1021 = metadata !{i32 670, i32 0, metadata !250, metadata !1020}
!1022 = metadata !{i32 786688, metadata !250, metadata !"info_len", metadata !36, i32 672, metadata !39, i32 0, metadata !1020} ; [ DW_TAG_auto_variable ] [info_len] [line 672]
!1023 = metadata !{i32 672, i32 0, metadata !250, metadata !1020}
!1024 = metadata !{i32 675, i32 0, metadata !250, metadata !1020}
!1025 = metadata !{i32 681, i32 0, metadata !1012, metadata !1020}
!1026 = metadata !{i32 678, i32 0, metadata !250, metadata !1020}
!1027 = metadata !{i32 680, i32 0, metadata !1012, metadata !1020}
!1028 = metadata !{i32 700, i32 0, metadata !254, null}
!1029 = metadata !{i32 706, i32 0, metadata !254, null}
!1030 = metadata !{i32 717, i32 0, metadata !258, null}
!1031 = metadata !{i32 765, i32 0, metadata !258, null}
!1032 = metadata !{i32 770, i32 0, metadata !258, null}
!1033 = metadata !{i32 772, i32 0, metadata !1034, null}
!1034 = metadata !{i32 786443, metadata !1, metadata !258, i32 771, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1035 = metadata !{i32 773, i32 0, metadata !1034, null}
!1036 = metadata !{i32 775, i32 0, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !1, metadata !1034, i32 774, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1038 = metadata !{i32 776, i32 0, metadata !1037, null}
!1039 = metadata !{i32 779, i32 0, metadata !1040, null}
!1040 = metadata !{i32 786443, metadata !1, metadata !1034, i32 778, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1041 = metadata !{i32 786689, metadata !250, metadata !"sym", metadata !36, i32 16777886, metadata !95, i32 0, metadata !1042} ; [ DW_TAG_arg_variable ] [sym] [line 670]
!1042 = metadata !{i32 796, i32 0, metadata !258, null}
!1043 = metadata !{i32 670, i32 0, metadata !250, metadata !1042}
!1044 = metadata !{i32 786688, metadata !250, metadata !"info_len", metadata !36, i32 672, metadata !39, i32 0, metadata !1042} ; [ DW_TAG_auto_variable ] [info_len] [line 672]
!1045 = metadata !{i32 672, i32 0, metadata !250, metadata !1042}
!1046 = metadata !{i32 675, i32 0, metadata !250, metadata !1042}
!1047 = metadata !{i32 681, i32 0, metadata !1012, metadata !1042}
!1048 = metadata !{i32 678, i32 0, metadata !250, metadata !1042}
!1049 = metadata !{i32 784, i32 0, metadata !1050, null}
!1050 = metadata !{i32 786443, metadata !1, metadata !258, i32 783, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1051 = metadata !{i32 785, i32 0, metadata !1050, null}
!1052 = metadata !{i32 789, i32 0, metadata !258, null}
!1053 = metadata !{i32 791, i32 0, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !1, metadata !258, i32 790, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1055 = metadata !{i32 793, i32 0, metadata !1054, null}
!1056 = metadata !{i32 680, i32 0, metadata !1012, metadata !1042}
!1057 = metadata !{i32 798, i32 0, metadata !258, null}
!1058 = metadata !{i32 804, i32 0, metadata !258, null}
!1059 = metadata !{i32 814, i32 0, metadata !263, null}
!1060 = metadata !{i32 854, i32 0, metadata !263, null}
!1061 = metadata !{i32 858, i32 0, metadata !263, null}
!1062 = metadata !{i32 859, i32 0, metadata !263, null}
!1063 = metadata !{i32 861, i32 0, metadata !263, null}
!1064 = metadata !{i32 863, i32 0, metadata !1065, null}
!1065 = metadata !{i32 786443, metadata !1, metadata !263, i32 862, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1066 = metadata !{i32 865, i32 0, metadata !1065, null}
!1067 = metadata !{i32 786689, metadata !250, metadata !"sym", metadata !36, i32 16777886, metadata !95, i32 0, metadata !1068} ; [ DW_TAG_arg_variable ] [sym] [line 670]
!1068 = metadata !{i32 868, i32 0, metadata !263, null}
!1069 = metadata !{i32 670, i32 0, metadata !250, metadata !1068}
!1070 = metadata !{i32 786688, metadata !250, metadata !"info_len", metadata !36, i32 672, metadata !39, i32 0, metadata !1068} ; [ DW_TAG_auto_variable ] [info_len] [line 672]
!1071 = metadata !{i32 672, i32 0, metadata !250, metadata !1068}
!1072 = metadata !{i32 675, i32 0, metadata !250, metadata !1068}
!1073 = metadata !{i32 681, i32 0, metadata !1012, metadata !1068}
!1074 = metadata !{i32 678, i32 0, metadata !250, metadata !1068}
!1075 = metadata !{i32 680, i32 0, metadata !1012, metadata !1068}
!1076 = metadata !{i32 870, i32 0, metadata !263, null}
!1077 = metadata !{i32 876, i32 0, metadata !263, null}
!1078 = metadata !{i32 886, i32 0, metadata !268, null}
!1079 = metadata !{i32 927, i32 0, metadata !268, null}
!1080 = metadata !{i32 930, i32 0, metadata !268, null}
!1081 = metadata !{i32 931, i32 0, metadata !268, null}
!1082 = metadata !{i32 933, i32 0, metadata !268, null}
!1083 = metadata !{i32 935, i32 0, metadata !1084, null}
!1084 = metadata !{i32 786443, metadata !1, metadata !268, i32 934, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1085 = metadata !{i32 936, i32 0, metadata !1084, null}
!1086 = metadata !{i32 786689, metadata !250, metadata !"sym", metadata !36, i32 16777886, metadata !95, i32 0, metadata !1087} ; [ DW_TAG_arg_variable ] [sym] [line 670]
!1087 = metadata !{i32 939, i32 0, metadata !268, null}
!1088 = metadata !{i32 670, i32 0, metadata !250, metadata !1087}
!1089 = metadata !{i32 786688, metadata !250, metadata !"info_len", metadata !36, i32 672, metadata !39, i32 0, metadata !1087} ; [ DW_TAG_auto_variable ] [info_len] [line 672]
!1090 = metadata !{i32 672, i32 0, metadata !250, metadata !1087}
!1091 = metadata !{i32 675, i32 0, metadata !250, metadata !1087}
!1092 = metadata !{i32 681, i32 0, metadata !1012, metadata !1087}
!1093 = metadata !{i32 678, i32 0, metadata !250, metadata !1087}
!1094 = metadata !{i32 680, i32 0, metadata !1012, metadata !1087}
!1095 = metadata !{i32 941, i32 0, metadata !268, null}
!1096 = metadata !{i32 947, i32 0, metadata !268, null}
!1097 = metadata !{i32 957, i32 0, metadata !273, null}
!1098 = metadata !{i32 1023, i32 0, metadata !273, null}
!1099 = metadata !{i32 1025, i32 0, metadata !273, null}
!1100 = metadata !{i32 1028, i32 0, metadata !273, null}
!1101 = metadata !{i32 1029, i32 0, metadata !273, null}
!1102 = metadata !{i32 1031, i32 0, metadata !273, null}
!1103 = metadata !{i32 1033, i32 0, metadata !1104, null}
!1104 = metadata !{i32 786443, metadata !1, metadata !273, i32 1032, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1105 = metadata !{i32 1034, i32 0, metadata !1104, null}
!1106 = metadata !{i32 786689, metadata !250, metadata !"sym", metadata !36, i32 16777886, metadata !95, i32 0, metadata !1107} ; [ DW_TAG_arg_variable ] [sym] [line 670]
!1107 = metadata !{i32 1037, i32 0, metadata !273, null}
!1108 = metadata !{i32 670, i32 0, metadata !250, metadata !1107}
!1109 = metadata !{i32 786688, metadata !250, metadata !"info_len", metadata !36, i32 672, metadata !39, i32 0, metadata !1107} ; [ DW_TAG_auto_variable ] [info_len] [line 672]
!1110 = metadata !{i32 672, i32 0, metadata !250, metadata !1107}
!1111 = metadata !{i32 675, i32 0, metadata !250, metadata !1107}
!1112 = metadata !{i32 681, i32 0, metadata !1012, metadata !1107}
!1113 = metadata !{i32 678, i32 0, metadata !250, metadata !1107}
!1114 = metadata !{i32 680, i32 0, metadata !1012, metadata !1107}
!1115 = metadata !{i32 1039, i32 0, metadata !273, null}
!1116 = metadata !{i32 1045, i32 0, metadata !273, null}
!1117 = metadata !{i32 1055, i32 0, metadata !279, null}
!1118 = metadata !{i32 1080, i32 0, metadata !279, null}
!1119 = metadata !{i32 1083, i32 0, metadata !279, null}
!1120 = metadata !{i32 1084, i32 0, metadata !279, null}
!1121 = metadata !{i32 1086, i32 0, metadata !279, null}
!1122 = metadata !{i32 1088, i32 0, metadata !1123, null}
!1123 = metadata !{i32 786443, metadata !1, metadata !279, i32 1087, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1124 = metadata !{i32 1089, i32 0, metadata !1123, null}
!1125 = metadata !{i32 786689, metadata !250, metadata !"sym", metadata !36, i32 16777886, metadata !95, i32 0, metadata !1126} ; [ DW_TAG_arg_variable ] [sym] [line 670]
!1126 = metadata !{i32 1092, i32 0, metadata !279, null}
!1127 = metadata !{i32 670, i32 0, metadata !250, metadata !1126}
!1128 = metadata !{i32 786688, metadata !250, metadata !"info_len", metadata !36, i32 672, metadata !39, i32 0, metadata !1126} ; [ DW_TAG_auto_variable ] [info_len] [line 672]
!1129 = metadata !{i32 672, i32 0, metadata !250, metadata !1126}
!1130 = metadata !{i32 675, i32 0, metadata !250, metadata !1126}
!1131 = metadata !{i32 681, i32 0, metadata !1012, metadata !1126}
!1132 = metadata !{i32 678, i32 0, metadata !250, metadata !1126}
!1133 = metadata !{i32 680, i32 0, metadata !1012, metadata !1126}
!1134 = metadata !{i32 1094, i32 0, metadata !279, null}
!1135 = metadata !{i32 1100, i32 0, metadata !279, null}
!1136 = metadata !{i32 1110, i32 0, metadata !284, null}
!1137 = metadata !{i32 1114, i32 0, metadata !284, null}
!1138 = metadata !{i32 1115, i32 0, metadata !284, null}
!1139 = metadata !{i32 1116, i32 0, metadata !284, null}
!1140 = metadata !{i32 1119, i32 0, metadata !284, null}
!1141 = metadata !{i32 1124, i32 0, metadata !284, null}
!1142 = metadata !{i32 1127, i32 0, metadata !1143, null}
!1143 = metadata !{i32 786443, metadata !1, metadata !284, i32 1125, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1144 = metadata !{i32 1128, i32 0, metadata !1143, null}
!1145 = metadata !{i32 1129, i32 0, metadata !1143, null}
!1146 = metadata !{i32 1133, i32 0, metadata !1147, null}
!1147 = metadata !{i32 786443, metadata !1, metadata !284, i32 1131, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1148 = metadata !{i32 1134, i32 0, metadata !1147, null}
!1149 = metadata !{i32 786689, metadata !250, metadata !"sym", metadata !36, i32 16777886, metadata !95, i32 0, metadata !1150} ; [ DW_TAG_arg_variable ] [sym] [line 670]
!1150 = metadata !{i32 1138, i32 0, metadata !284, null}
!1151 = metadata !{i32 670, i32 0, metadata !250, metadata !1150}
!1152 = metadata !{i32 672, i32 0, metadata !250, metadata !1150}
!1153 = metadata !{i32 786688, metadata !250, metadata !"info_len", metadata !36, i32 672, metadata !39, i32 0, metadata !1150} ; [ DW_TAG_auto_variable ] [info_len] [line 672]
!1154 = metadata !{i32 675, i32 0, metadata !250, metadata !1150}
!1155 = metadata !{i32 681, i32 0, metadata !1012, metadata !1150}
!1156 = metadata !{i32 678, i32 0, metadata !250, metadata !1150}
!1157 = metadata !{i32 1121, i32 0, metadata !1158, null}
!1158 = metadata !{i32 786443, metadata !1, metadata !284, i32 1120, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1159 = metadata !{i32 1122, i32 0, metadata !1158, null}
!1160 = metadata !{i32 680, i32 0, metadata !1012, metadata !1150}
!1161 = metadata !{i32 1140, i32 0, metadata !284, null}
!1162 = metadata !{i32 1146, i32 0, metadata !284, null}
!1163 = metadata !{i32 1156, i32 0, metadata !291, null}
!1164 = metadata !{i32 1161, i32 0, metadata !291, null}
!1165 = metadata !{i32 1163, i32 0, metadata !291, null}
!1166 = metadata !{i32 1164, i32 0, metadata !291, null}
!1167 = metadata !{i32 1166, i32 0, metadata !291, null}
!1168 = metadata !{i32 1167, i32 0, metadata !291, null}
!1169 = metadata !{i32 1169, i32 0, metadata !291, null}
!1170 = metadata !{i32 1171, i32 0, metadata !291, null}
!1171 = metadata !{i32 1172, i32 0, metadata !291, null}
!1172 = metadata !{i32 1174, i32 0, metadata !291, null}
!1173 = metadata !{i32 1176, i32 0, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !1, metadata !291, i32 1175, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1175 = metadata !{i32 1177, i32 0, metadata !1174, null}
!1176 = metadata !{i32 1178, i32 0, metadata !1174, null}
!1177 = metadata !{i32 28}
!1178 = metadata !{i32 1181, i32 0, metadata !1179, null}
!1179 = metadata !{i32 786443, metadata !1, metadata !291, i32 1180, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1180 = metadata !{i32 1182, i32 0, metadata !1179, null}
!1181 = metadata !{i32 1184, i32 0, metadata !291, null}
!1182 = metadata !{i32 1185, i32 0, metadata !291, null}
!1183 = metadata !{i32 786689, metadata !250, metadata !"sym", metadata !36, i32 16777886, metadata !95, i32 0, metadata !1184} ; [ DW_TAG_arg_variable ] [sym] [line 670]
!1184 = metadata !{i32 1187, i32 0, metadata !291, null}
!1185 = metadata !{i32 670, i32 0, metadata !250, metadata !1184}
!1186 = metadata !{i32 786688, metadata !250, metadata !"info_len", metadata !36, i32 672, metadata !39, i32 0, metadata !1184} ; [ DW_TAG_auto_variable ] [info_len] [line 672]
!1187 = metadata !{i32 672, i32 0, metadata !250, metadata !1184}
!1188 = metadata !{i32 675, i32 0, metadata !250, metadata !1184}
!1189 = metadata !{i32 681, i32 0, metadata !1012, metadata !1184}
!1190 = metadata !{i32 678, i32 0, metadata !250, metadata !1184}
!1191 = metadata !{i32 680, i32 0, metadata !1012, metadata !1184}
!1192 = metadata !{i32 1189, i32 0, metadata !291, null}
!1193 = metadata !{i32 1195, i32 0, metadata !291, null}
!1194 = metadata !{i32 1256, i32 0, metadata !308, null}
!1195 = metadata !{i32 1258, i32 0, metadata !308, null}
!1196 = metadata !{i32 1260, i32 0, metadata !1197, null}
!1197 = metadata !{i32 786443, metadata !1, metadata !308, i32 1259, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/464.h264ref/src/vlc.c]
!1198 = metadata !{i32 1261, i32 0, metadata !1197, null}
!1199 = metadata !{i32 1262, i32 0, metadata !1197, null}
!1200 = metadata !{i32 1263, i32 0, metadata !1197, null}
!1201 = metadata !{i32 1264, i32 0, metadata !1197, null}
!1202 = metadata !{i32 1265, i32 0, metadata !308, null}
